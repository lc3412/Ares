; ModuleID = './line350-gui-readline.o.i'
source_filename = "./line350-gui-readline.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GTimeVal = type { i64, i64 }
%struct.ENTRY_REDIRECT_REC = type { void (i8*, i8*, i8*, i8*, i8*, i8*)*, i32, i8* }
%struct._GArray = type { i8*, i32 }
%struct._KEYBOARD_REC = type opaque
%struct.GUI_ENTRY_REC = type { i32, i32, i32*, i8**, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
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
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct.GUI_ENTRY_CUTBUFFER_REC = type { i32, i32* }

@readtag = internal global i32 0, align 4
@last_keypress = internal global %struct._GTimeVal zeroinitializer, align 8
@gui_readline_init.changekeys = internal global [20 x i8] c"1234567890qwertyuio\00", align 16
@escape_next_key = internal global i32 0, align 4
@redir = internal global %struct.ENTRY_REDIRECT_REC* null, align 8
@paste_entry = internal global i8* null, align 8
@paste_entry_pos = internal global i32 0, align 4
@paste_buffer = internal global %struct._GArray* null, align 8
@paste_buffer_rest = internal global %struct._GArray* null, align 8
@paste_old_prompt = internal global i8* null, align 8
@paste_timeout_id = internal global i32 0, align 4
@paste_bracketed_mode = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"term_appkey_mode\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"scroll_page_count\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"paste_detect_time\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"5msecs\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"paste_use_bracketed_mode\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"paste_verify_line_count\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"paste_join_multiline\00", align 1
@keyboard = internal global %struct._KEYBOARD_REC* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"^M\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"^J\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"^H\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"backspace\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"meta2-Z\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"stab\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"^[\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"meta-[\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"meta2\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"meta-O\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"meta-[O\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"meta2-A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"meta2-B\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"meta2-C\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"meta2-D\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"meta2-1~\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"meta2-7~\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"meta2-H\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"meta2-4~\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"meta2-8~\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"meta2-F\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"meta2-5~\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"prior\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"meta2-I\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"meta2-6~\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"meta2-G\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"meta2-2~\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"meta2-3~\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"meta2-d\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"cleft\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"meta2-c\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"cright\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"meta2-5D\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"meta2-5C\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"meta2-1;5D\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"meta2-1;5C\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"meta2-1;5A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"cup\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"meta2-1;5B\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"cdown\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"meta2-1;3A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"mup\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"meta2-1;3B\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"mdown\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"meta2-1;3D\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"mleft\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"meta2-1;3C\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"mright\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"meta-up\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"meta-down\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"meta-left\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"meta-right\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"meta2-1;5~\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"chome\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"meta2-7;5~\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"meta2-5H\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"meta2-1;5H\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"meta2-4;5~\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"cend\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"meta2-8;5~\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"meta2-5F\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"meta2-1;5F\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"meta-O-M\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"paste_start\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Bracketed paste start\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"meta2-200~\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"backward_character\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"Move the cursor a character backward\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"forward_character\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"Move the cursor a character forward\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"backward_word\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"Move the cursor a word backward\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"meta-b\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"forward_word\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"Move the cursor a word forward\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"meta-f\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"backward_to_space\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"Move the cursor backward to a space\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"forward_to_space\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"Move the cursor forward to a space\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"beginning_of_line\00", align 1
@.str.110 = private unnamed_addr constant [45 x i8] c"Move the cursor to the beginning of the line\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"^A\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"end_of_line\00", align 1
@.str.113 = private unnamed_addr constant [39 x i8] c"Move the cursor to the end of the line\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"backward_history\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"Go back one line in the history\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"forward_history\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"Go forward one line in the history\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"backward_global_history\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"Go back one line in the global history\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"forward_global_history\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"Go forward one line in the global history\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"erase_history_entry\00", align 1
@.str.124 = private unnamed_addr constant [50 x i8] c"Erase the currently active entry from the history\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"Delete the previous character\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"delete_character\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"Delete the current character\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"^D\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"delete_next_word\00", align 1
@.str.130 = private unnamed_addr constant [33 x i8] c"Delete the word after the cursor\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"meta-d\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"delete_previous_word\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"Delete the word before the cursor\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"meta-backspace\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"delete_to_previous_space\00", align 1
@.str.136 = private unnamed_addr constant [32 x i8] c"Delete up to the previous space\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"^W\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"delete_to_next_space\00", align 1
@.str.139 = private unnamed_addr constant [28 x i8] c"Delete up to the next space\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"erase_line\00", align 1
@.str.142 = private unnamed_addr constant [27 x i8] c"Erase the whole input line\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"^U\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"erase_to_beg_of_line\00", align 1
@.str.145 = private unnamed_addr constant [35 x i8] c"Erase everything before the cursor\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"erase_to_end_of_line\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"Erase everything after the cursor\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"^K\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"yank_from_cutbuffer\00", align 1
@.str.150 = private unnamed_addr constant [40 x i8] c"\22Undelete\22, paste the last deleted text\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"^Y\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"yank_next_cutbuffer\00", align 1
@.str.153 = private unnamed_addr constant [41 x i8] c"Revert to the previous last deleted text\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"append_next_kill\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"Append next deletion\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"transpose_characters\00", align 1
@.str.157 = private unnamed_addr constant [36 x i8] c"Swap current and previous character\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"^T\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"transpose_words\00", align 1
@.str.160 = private unnamed_addr constant [31 x i8] c"Swap current and previous word\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"capitalize_word\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"Capitalize the current word\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"downcase_word\00", align 1
@.str.164 = private unnamed_addr constant [26 x i8] c"Downcase the current word\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"upcase_word\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"Upcase the current word\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"send_line\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"Execute the input line\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"word_completion_backward\00", align 1
@.str.170 = private unnamed_addr constant [38 x i8] c"Choose previous completion suggestion\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"word_completion\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"Complete the current word\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"erase_completion\00", align 1
@.str.174 = private unnamed_addr constant [47 x i8] c"Remove the completion added by word_completion\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"meta-k\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"check_replaces\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"Check word replaces\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"previous_window\00", align 1
@.str.179 = private unnamed_addr constant [26 x i8] c"Go to the previous window\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"^P\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"next_window\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"Go to the next window\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"^N\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"upper_window\00", align 1
@.str.185 = private unnamed_addr constant [29 x i8] c"Go to the split window above\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"lower_window\00", align 1
@.str.187 = private unnamed_addr constant [29 x i8] c"Go to the split window below\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"left_window\00", align 1
@.str.189 = private unnamed_addr constant [54 x i8] c"Go to the previous window in the current split window\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"right_window\00", align 1
@.str.191 = private unnamed_addr constant [50 x i8] c"Go to the next window in the current split window\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"active_window\00", align 1
@.str.193 = private unnamed_addr constant [44 x i8] c"Go to next window with the highest activity\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"meta-a\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"next_window_item\00", align 1
@.str.196 = private unnamed_addr constant [73 x i8] c"Go to the next channel/query. In empty windows change to the next server\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"^X\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"previous_window_item\00", align 1
@.str.199 = private unnamed_addr constant [81 x i8] c"Go to the previous channel/query. In empty windows change to the previous server\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"refresh_screen\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"Redraw screen\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"^L\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"scroll_backward\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"Scroll to previous page\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"meta-p\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"scroll_forward\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"Scroll to next page\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"meta-n\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"scroll_start\00", align 1
@.str.210 = private unnamed_addr constant [38 x i8] c"Scroll to the beginning of the window\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"scroll_end\00", align 1
@.str.212 = private unnamed_addr constant [32 x i8] c"Scroll to the end of the window\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"escape_char\00", align 1
@.str.214 = private unnamed_addr constant [54 x i8] c"Insert the next character exactly as-is to input line\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"insert_text\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"Append text to line\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.218 = private unnamed_addr constant [25 x i8] c"check_replaces;send_line\00", align 1
@.str.219 = private unnamed_addr constant [29 x i8] c"check_replaces;insert_text  \00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"meta-%c\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"change_window\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"Change window\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"stop_irc\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"Send SIGSTOP to client\00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c"^Z\00", align 1
@.str.227 = private unnamed_addr constant [25 x i8] c"window changed automatic\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"gui entry redirect\00", align 1
@.str.229 = private unnamed_addr constant [16 x i8] c"gui key pressed\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@active_entry = external global %struct.GUI_ENTRY_REC*, align 8
@paste_prompt = internal global i32 0, align 4
@paste_line_count = internal global i32 0, align 4
@paste_use_bracketed_mode = internal global i32 0, align 4
@paste_detect_time = internal global i32 0, align 4
@paste_join_multiline = internal global i32 0, align 4
@term_type = external global i32, align 4
@paste_was_bracketed_mode = internal global i32 0, align 4
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.231 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@bp_end = internal constant [6 x i32] [i32 27, i32 91, i32 50, i32 48, i32 49, i32 126], align 16
@bp_start = internal constant [6 x i32] [i32 27, i32 91, i32 50, i32 48, i32 48, i32 126], align 16
@paste_verify_line_count = internal global i32 0, align 4
@.str.232 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@previous_yank_preceded = internal global i32 0, align 4
@.str.233 = private unnamed_addr constant [24 x i8] c"command window previous\00", align 1
@.str.234 = private unnamed_addr constant [20 x i8] c"command window next\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"command window up\00", align 1
@.str.236 = private unnamed_addr constant [20 x i8] c"command window down\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"command window left\00", align 1
@.str.238 = private unnamed_addr constant [21 x i8] c"command window right\00", align 1
@.str.239 = private unnamed_addr constant [20 x i8] c"command window goto\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.241 = private unnamed_addr constant [25 x i8] c"command window item next\00", align 1
@servers = external global %struct._GSList*, align 8
@lookup_servers = external global %struct._GSList*, align 8
@.str.242 = private unnamed_addr constant [22 x i8] c"command window server\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"gui-readline.c\00", align 1
@__func__.get_next_server = private unnamed_addr constant [16 x i8] c"get_next_server\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"pos != NULL\00", align 1
@.str.245 = private unnamed_addr constant [25 x i8] c"command window item prev\00", align 1
@__func__.get_prev_server = private unnamed_addr constant [16 x i8] c"get_prev_server\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"pos >= 0\00", align 1
@active_mainwin = external global %struct.MAIN_WINDOW_REC*, align 8
@.str.247 = private unnamed_addr constant [24 x i8] c"command scrollback home\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c"command scrollback end\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@prev_key = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @input_listen_init(i32) #0 !dbg !584 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !587, metadata !588), !dbg !589
  %3 = load i32, i32* %2, align 4, !dbg !590
  %4 = call i32 @g_input_add_poll(i32 %3, i32 -100, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void ()* @sig_input to void (i8*, %struct._GIOChannel*, i32)*), i8* null), !dbg !591
  store i32 %4, i32* @readtag, align 4, !dbg !592
  ret void, !dbg !593
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_input_add_poll(i32, i32, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_input() #0 !dbg !594 {
  %1 = alloca %struct._GArray*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !595
  %7 = icmp ne %struct.GUI_ENTRY_REC* %6, null, !dbg !595
  br i1 %7, label %9, label %8, !dbg !597

; <label>:8:                                      ; preds = %0
  br label %98, !dbg !598

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* @paste_prompt, align 4, !dbg !600
  %11 = icmp ne i32 %10, 0, !dbg !600
  br i1 %11, label %12, label %33, !dbg !602

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._GArray** %1, metadata !603, metadata !588), !dbg !605
  %13 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 4), !dbg !606
  store %struct._GArray* %13, %struct._GArray** %1, align 8, !dbg !605
  call void @llvm.dbg.declare(metadata i32* %2, metadata !607, metadata !588), !dbg !608
  store i32 0, i32* %2, align 4, !dbg !608
  call void @llvm.dbg.declare(metadata i32* %3, metadata !609, metadata !588), !dbg !610
  %14 = load %struct._GArray*, %struct._GArray** %1, align 8, !dbg !611
  call void @term_gets(%struct._GArray* %14, i32* %2), !dbg !612
  %15 = load %struct._GArray*, %struct._GArray** %1, align 8, !dbg !613
  %16 = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 0, !dbg !614
  %17 = load i8*, i8** %16, align 8, !dbg !614
  %18 = bitcast i8* %17 to i32*, !dbg !615
  %19 = getelementptr inbounds i32, i32* %18, i64 0, !dbg !616
  %20 = load i32, i32* %19, align 4, !dbg !616
  store i32 %20, i32* %3, align 4, !dbg !617
  %21 = load i32, i32* %3, align 4, !dbg !618
  %22 = icmp eq i32 %21, 11, !dbg !620
  br i1 %22, label %26, label %23, !dbg !621

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %3, align 4, !dbg !622
  %25 = icmp eq i32 %24, 3, !dbg !624
  br i1 %25, label %26, label %30, !dbg !625

; <label>:26:                                     ; preds = %23, %12
  %27 = load i32, i32* %3, align 4, !dbg !626
  %28 = icmp eq i32 %27, 11, !dbg !627
  %29 = zext i1 %28 to i32, !dbg !627
  call void @paste_flush(i32 %29), !dbg !628
  br label %30, !dbg !628

; <label>:30:                                     ; preds = %26, %23
  %31 = load %struct._GArray*, %struct._GArray** %1, align 8, !dbg !629
  %32 = call i8* @g_array_free(%struct._GArray* %31, i32 1), !dbg !630
  br label %98, !dbg !631

; <label>:33:                                     ; preds = %9
  %34 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !632
  call void @term_gets(%struct._GArray* %34, i32* @paste_line_count), !dbg !634
  %35 = load i32, i32* @paste_bracketed_mode, align 4, !dbg !635
  %36 = icmp ne i32 %35, 0, !dbg !635
  br i1 %36, label %37, label %38, !dbg !637

; <label>:37:                                     ; preds = %33
  call void @paste_bracketed_middle(), !dbg !638
  br label %97, !dbg !640

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* @paste_use_bracketed_mode, align 4, !dbg !641
  %40 = icmp ne i32 %39, 0, !dbg !641
  br i1 %40, label %58, label %41, !dbg !644

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* @paste_detect_time, align 4, !dbg !645
  %43 = icmp sgt i32 %42, 0, !dbg !647
  br i1 %43, label %44, label %58, !dbg !648

; <label>:44:                                     ; preds = %41
  %45 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !649
  %46 = getelementptr inbounds %struct._GArray, %struct._GArray* %45, i32 0, i32 1, !dbg !651
  %47 = load i32, i32* %46, align 8, !dbg !651
  %48 = icmp uge i32 %47, 3, !dbg !652
  br i1 %48, label %49, label %58, !dbg !653

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* @paste_timeout_id, align 4, !dbg !654
  %51 = icmp ne i32 %50, -1, !dbg !657
  br i1 %51, label %52, label %55, !dbg !658

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* @paste_timeout_id, align 4, !dbg !659
  %54 = call i32 @g_source_remove(i32 %53), !dbg !660
  br label %55, !dbg !660

; <label>:55:                                     ; preds = %52, %49
  %56 = load i32, i32* @paste_detect_time, align 4, !dbg !661
  %57 = call i32 @g_timeout_add(i32 %56, i32 (i8*)* @paste_timeout, i8* null), !dbg !662
  store i32 %57, i32* @paste_timeout_id, align 4, !dbg !663
  br label %96, !dbg !664

; <label>:58:                                     ; preds = %44, %41, %38
  %59 = load i32, i32* @paste_bracketed_mode, align 4, !dbg !665
  %60 = icmp ne i32 %59, 0, !dbg !665
  br i1 %60, label %95, label %61, !dbg !668

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %4, metadata !669, metadata !588), !dbg !671
  store i32 0, i32* %4, align 4, !dbg !672
  br label %62, !dbg !674

; <label>:62:                                     ; preds = %89, %61
  %63 = load i32, i32* %4, align 4, !dbg !675
  %64 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !678
  %65 = getelementptr inbounds %struct._GArray, %struct._GArray* %64, i32 0, i32 1, !dbg !679
  %66 = load i32, i32* %65, align 8, !dbg !679
  %67 = icmp ult i32 %63, %66, !dbg !680
  br i1 %67, label %68, label %92, !dbg !681

; <label>:68:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %5, metadata !682, metadata !588), !dbg !684
  %69 = load i32, i32* %4, align 4, !dbg !685
  %70 = sext i32 %69 to i64, !dbg !686
  %71 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !687
  %72 = getelementptr inbounds %struct._GArray, %struct._GArray* %71, i32 0, i32 0, !dbg !688
  %73 = load i8*, i8** %72, align 8, !dbg !688
  %74 = bitcast i8* %73 to i32*, !dbg !689
  %75 = getelementptr inbounds i32, i32* %74, i64 %70, !dbg !686
  %76 = load i32, i32* %75, align 4, !dbg !686
  store i32 %76, i32* %5, align 4, !dbg !684
  %77 = load i32, i32* %5, align 4, !dbg !690
  %78 = zext i32 %77 to i64, !dbg !691
  %79 = inttoptr i64 %78 to i8*, !dbg !692
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0), i32 1, i8* %79), !dbg !693
  %81 = load i32, i32* @paste_bracketed_mode, align 4, !dbg !694
  %82 = icmp ne i32 %81, 0, !dbg !694
  br i1 %82, label %83, label %88, !dbg !696

; <label>:83:                                     ; preds = %68
  %84 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !697
  %85 = load i32, i32* %4, align 4, !dbg !699
  %86 = add nsw i32 %85, 1, !dbg !700
  %87 = call %struct._GArray* @g_array_remove_range(%struct._GArray* %84, i32 0, i32 %86), !dbg !701
  call void @paste_bracketed_middle(), !dbg !702
  br label %98, !dbg !703

; <label>:88:                                     ; preds = %68
  br label %89, !dbg !704

; <label>:89:                                     ; preds = %88
  %90 = load i32, i32* %4, align 4, !dbg !705
  %91 = add nsw i32 %90, 1, !dbg !705
  store i32 %91, i32* %4, align 4, !dbg !705
  br label %62, !dbg !707, !llvm.loop !708

; <label>:92:                                     ; preds = %62
  %93 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !710
  %94 = call %struct._GArray* @g_array_set_size(%struct._GArray* %93, i32 0), !dbg !711
  store i32 0, i32* @paste_line_count, align 4, !dbg !712
  br label %95, !dbg !713

; <label>:95:                                     ; preds = %92, %58
  br label %96

; <label>:96:                                     ; preds = %95, %55
  br label %97

; <label>:97:                                     ; preds = %96, %37
  br label %98

; <label>:98:                                     ; preds = %8, %83, %97, %30
  ret void, !dbg !714
}

; Function Attrs: nounwind uwtable
define void @input_listen_deinit() #0 !dbg !715 {
  %1 = load i32, i32* @readtag, align 4, !dbg !716
  %2 = call i32 @g_source_remove(i32 %1), !dbg !717
  store i32 -1, i32* @readtag, align 4, !dbg !718
  ret void, !dbg !719
}

declare i32 @g_source_remove(i32) #2

; Function Attrs: nounwind uwtable
define i64 @get_idle_time() #0 !dbg !720 {
  %1 = load i64, i64* getelementptr inbounds (%struct._GTimeVal, %struct._GTimeVal* @last_keypress, i32 0, i32 0), align 8, !dbg !723
  ret i64 %1, !dbg !724
}

; Function Attrs: nounwind uwtable
define void @gui_readline_init() #0 !dbg !540 {
  %1 = alloca i8*, align 8
  %2 = alloca [12 x i8], align 1
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !725, metadata !588), !dbg !726
  call void @llvm.dbg.declare(metadata [12 x i8]* %2, metadata !727, metadata !588), !dbg !731
  call void @llvm.dbg.declare(metadata i32* %3, metadata !732, metadata !588), !dbg !733
  store i32 0, i32* @escape_next_key, align 4, !dbg !734
  store %struct.ENTRY_REDIRECT_REC* null, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !735
  store i8* null, i8** @paste_entry, align 8, !dbg !736
  store i32 0, i32* @paste_entry_pos, align 4, !dbg !737
  %4 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 4), !dbg !738
  store %struct._GArray* %4, %struct._GArray** @paste_buffer, align 8, !dbg !739
  %5 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 4), !dbg !740
  store %struct._GArray* %5, %struct._GArray** @paste_buffer_rest, align 8, !dbg !741
  store i8* null, i8** @paste_old_prompt, align 8, !dbg !742
  store i32 -1, i32* @paste_timeout_id, align 4, !dbg !743
  store i32 0, i32* @paste_bracketed_mode, align 4, !dbg !744
  call void @g_get_current_time(%struct._GTimeVal* @last_keypress), !dbg !745
  call void @input_listen_init(i32 0), !dbg !746
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !747
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)), !dbg !748
  call void @settings_add_time_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !749
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 0), !dbg !750
  call void @settings_add_int_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 5), !dbg !751
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !752
  call void @setup_changed(), !dbg !753
  %6 = call %struct._KEYBOARD_REC* @keyboard_create(i8* null), !dbg !754
  store %struct._KEYBOARD_REC* %6, %struct._KEYBOARD_REC** @keyboard, align 8, !dbg !755
  call void @key_configure_freeze(), !dbg !756
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !757
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !758
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !759
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !760
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !761
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !762
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !763
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !764
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !765
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !766
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !767
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !768
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !769
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !770
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !771
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !772
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !773
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !774
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !775
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !776
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !777
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !778
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !779
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !780
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !781
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !782
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !783
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !784
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !785
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !786
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !787
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !788
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !789
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !790
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !791
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !792
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !793
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !794
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !795
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !796
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !797
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !798
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !799
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !800
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !801
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !802
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !803
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !804
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !805
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !806
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !807
  call void @key_bind(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_combo to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !808
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_paste_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !809
  call void @key_bind(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !810
  call void @key_bind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !811
  call void @key_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !812
  call void @key_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !813
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !814
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !815
  call void @key_bind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_to_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !816
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_to_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !817
  call void @key_bind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_beginning_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !818
  call void @key_bind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_beginning_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !819
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_end_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !820
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_end_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !821
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !822
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !823
  call void @key_bind(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_global_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !824
  call void @key_bind(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_global_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !825
  call void @key_bind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_history_entry to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !826
  call void @key_bind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backspace to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !827
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !828
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !829
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_next_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !830
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_previous_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !831
  call void @key_bind(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_to_previous_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !832
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_to_next_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !833
  call void @key_bind(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !834
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.145, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_to_beg_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !835
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_to_end_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !836
  call void @key_bind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_yank_from_cutbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !837
  call void @key_bind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.153, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_yank_next_cutbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !838
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.155, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_append_next_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !839
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_transpose_characters to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !840
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.160, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_transpose_words to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !841
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_capitalize_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !842
  call void @key_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.164, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_downcase_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !843
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.166, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_upcase_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !844
  call void @key_bind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_send_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !845
  call void @key_bind(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_word_completion_backward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !846
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_word_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !847
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !848
  call void @key_bind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_check_replaces to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !849
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_previous_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !850
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_next_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !851
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_upper_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !852
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_lower_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !853
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_left_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !854
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_right_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !855
  call void @key_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_active_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !856
  call void @key_bind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_next_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !857
  call void @key_bind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.199, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_previous_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !858
  call void @key_bind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @irssi_redraw to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !859
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_backward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !860
  call void @key_bind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.205, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_backward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !861
  call void @key_bind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_forward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !862
  call void @key_bind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.206, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_forward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !863
  call void @key_bind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !864
  call void @key_bind(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !865
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.214, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_escape to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !866
  call void @key_bind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), i8* null, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @key_insert_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !867
  call void @key_bind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.218, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* null), !dbg !868
  call void @key_bind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.219, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* null), !dbg !869
  store i32 0, i32* %3, align 4, !dbg !870
  br label %7, !dbg !872

; <label>:7:                                      ; preds = %28, %0
  %8 = load i32, i32* %3, align 4, !dbg !873
  %9 = sext i32 %8 to i64, !dbg !876
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* @gui_readline_init.changekeys, i64 0, i64 %9, !dbg !876
  %11 = load i8, i8* %10, align 1, !dbg !876
  %12 = sext i8 %11 to i32, !dbg !876
  %13 = icmp ne i32 %12, 0, !dbg !877
  br i1 %13, label %14, label %31, !dbg !878

; <label>:14:                                     ; preds = %7
  %15 = load i32, i32* %3, align 4, !dbg !879
  %16 = sext i32 %15 to i64, !dbg !881
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* @gui_readline_init.changekeys, i64 0, i64 %16, !dbg !881
  %18 = load i8, i8* %17, align 1, !dbg !881
  %19 = sext i8 %18 to i32, !dbg !881
  %20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i32 %19), !dbg !882
  store i8* %20, i8** %1, align 8, !dbg !883
  %21 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i32 0, i32 0, !dbg !884
  %22 = load i32, i32* %3, align 4, !dbg !885
  %23 = add nsw i32 %22, 1, !dbg !886
  %24 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %21, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0), i32 %23), !dbg !887
  %25 = load i8*, i8** %1, align 8, !dbg !888
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i32 0, i32 0, !dbg !889
  call void @key_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i32 0, i32 0), i8* %25, i8* %26, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @key_change_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !890
  %27 = load i8*, i8** %1, align 8, !dbg !891
  call void @g_free(i8* %27), !dbg !892
  br label %28, !dbg !893

; <label>:28:                                     ; preds = %14
  %29 = load i32, i32* %3, align 4, !dbg !894
  %30 = add nsw i32 %29, 1, !dbg !894
  store i32 %30, i32* %3, align 4, !dbg !894
  br label %7, !dbg !896, !llvm.loop !897

; <label>:31:                                     ; preds = %7
  call void @key_bind(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.226, i32 0, i32 0), i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !899
  call void @key_configure_thaw(), !dbg !900
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.227, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_window_auto_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !901
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.228, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i8*, i8*)* @sig_gui_entry_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !902
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_gui_key_pressed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !903
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.230, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @setup_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !904
  ret void, !dbg !905
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #2

declare void @g_get_current_time(%struct._GTimeVal*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @setup_changed() #0 !dbg !906 {
  %1 = call i32 @settings_get_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)), !dbg !907
  store i32 %1, i32* @paste_detect_time, align 4, !dbg !908
  %2 = call i32 @settings_get_int(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)), !dbg !909
  store i32 %2, i32* @paste_verify_line_count, align 4, !dbg !910
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)), !dbg !911
  store i32 %3, i32* @paste_join_multiline, align 4, !dbg !912
  %4 = call i32 @settings_get_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)), !dbg !913
  store i32 %4, i32* @paste_use_bracketed_mode, align 4, !dbg !914
  %5 = call i32 @settings_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)), !dbg !915
  call void @term_set_appkey_mode(i32 %5), !dbg !916
  %6 = load i32, i32* @paste_use_bracketed_mode, align 4, !dbg !918
  call void @term_set_bracketed_paste_mode(i32 %6), !dbg !919
  ret void, !dbg !920
}

declare %struct._KEYBOARD_REC* @keyboard_create(i8*) #2

declare void @key_configure_freeze() #2

declare void @key_bind(i8*, i8*, i8*, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @key_combo() #0 !dbg !921 {
  ret void, !dbg !922
}

; Function Attrs: nounwind uwtable
define internal void @key_paste_start() #0 !dbg !923 {
  store i32 1, i32* @paste_bracketed_mode, align 4, !dbg !924
  ret void, !dbg !925
}

; Function Attrs: nounwind uwtable
define internal void @key_backward_character() #0 !dbg !926 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !927
  call void @gui_entry_move_pos(%struct.GUI_ENTRY_REC* %1, i32 -1), !dbg !928
  ret void, !dbg !929
}

; Function Attrs: nounwind uwtable
define internal void @key_forward_character() #0 !dbg !930 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !931
  call void @gui_entry_move_pos(%struct.GUI_ENTRY_REC* %1, i32 1), !dbg !932
  ret void, !dbg !933
}

; Function Attrs: nounwind uwtable
define internal void @key_backward_word() #0 !dbg !934 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !935
  call void @gui_entry_move_words(%struct.GUI_ENTRY_REC* %1, i32 -1, i32 0), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: nounwind uwtable
define internal void @key_forward_word() #0 !dbg !938 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !939
  call void @gui_entry_move_words(%struct.GUI_ENTRY_REC* %1, i32 1, i32 0), !dbg !940
  ret void, !dbg !941
}

; Function Attrs: nounwind uwtable
define internal void @key_backward_to_space() #0 !dbg !942 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !943
  call void @gui_entry_move_words(%struct.GUI_ENTRY_REC* %1, i32 -1, i32 1), !dbg !944
  ret void, !dbg !945
}

; Function Attrs: nounwind uwtable
define internal void @key_forward_to_space() #0 !dbg !946 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !947
  call void @gui_entry_move_words(%struct.GUI_ENTRY_REC* %1, i32 1, i32 1), !dbg !948
  ret void, !dbg !949
}

; Function Attrs: nounwind uwtable
define internal void @key_beginning_of_line() #0 !dbg !950 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !951
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %1, i32 0), !dbg !952
  ret void, !dbg !953
}

; Function Attrs: nounwind uwtable
define internal void @key_end_of_line() #0 !dbg !954 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !955
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !956
  %3 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %2, i32 0, i32 0, !dbg !957
  %4 = load i32, i32* %3, align 8, !dbg !957
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %1, i32 %4), !dbg !958
  ret void, !dbg !959
}

; Function Attrs: nounwind uwtable
define internal void @key_backward_history() #0 !dbg !960 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !961, metadata !588), !dbg !962
  call void @llvm.dbg.declare(metadata i8** %2, metadata !963, metadata !588), !dbg !964
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !965
  %4 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %3), !dbg !966
  store i8* %4, i8** %2, align 8, !dbg !967
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !968
  %6 = load i8*, i8** %2, align 8, !dbg !969
  %7 = call i8* @command_history_prev(%struct._WINDOW_REC* %5, i8* %6), !dbg !970
  store i8* %7, i8** %1, align 8, !dbg !971
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !972
  %9 = load i8*, i8** %1, align 8, !dbg !973
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %8, i8* %9), !dbg !974
  %10 = load i8*, i8** %2, align 8, !dbg !975
  call void @g_free(i8* %10), !dbg !976
  ret void, !dbg !977
}

; Function Attrs: nounwind uwtable
define internal void @key_forward_history() #0 !dbg !978 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !979, metadata !588), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %2, metadata !981, metadata !588), !dbg !982
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !983
  %4 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %3), !dbg !984
  store i8* %4, i8** %2, align 8, !dbg !985
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !986
  %6 = load i8*, i8** %2, align 8, !dbg !987
  %7 = call i8* @command_history_next(%struct._WINDOW_REC* %5, i8* %6), !dbg !988
  store i8* %7, i8** %1, align 8, !dbg !989
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !990
  %9 = load i8*, i8** %1, align 8, !dbg !991
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %8, i8* %9), !dbg !992
  %10 = load i8*, i8** %2, align 8, !dbg !993
  call void @g_free(i8* %10), !dbg !994
  ret void, !dbg !995
}

; Function Attrs: nounwind uwtable
define internal void @key_backward_global_history() #0 !dbg !996 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !997, metadata !588), !dbg !998
  call void @llvm.dbg.declare(metadata i8** %2, metadata !999, metadata !588), !dbg !1000
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1001
  %4 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %3), !dbg !1002
  store i8* %4, i8** %2, align 8, !dbg !1003
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1004
  %6 = load i8*, i8** %2, align 8, !dbg !1005
  %7 = call i8* @command_global_history_prev(%struct._WINDOW_REC* %5, i8* %6), !dbg !1006
  store i8* %7, i8** %1, align 8, !dbg !1007
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1008
  %9 = load i8*, i8** %1, align 8, !dbg !1009
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %8, i8* %9), !dbg !1010
  %10 = load i8*, i8** %2, align 8, !dbg !1011
  call void @g_free(i8* %10), !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal void @key_forward_global_history() #0 !dbg !1014 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1015, metadata !588), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1017, metadata !588), !dbg !1018
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1019
  %4 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %3), !dbg !1020
  store i8* %4, i8** %2, align 8, !dbg !1021
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1022
  %6 = load i8*, i8** %2, align 8, !dbg !1023
  %7 = call i8* @command_global_history_next(%struct._WINDOW_REC* %5, i8* %6), !dbg !1024
  store i8* %7, i8** %1, align 8, !dbg !1025
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1026
  %9 = load i8*, i8** %1, align 8, !dbg !1027
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %8, i8* %9), !dbg !1028
  %10 = load i8*, i8** %2, align 8, !dbg !1029
  call void @g_free(i8* %10), !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: nounwind uwtable
define internal void @key_erase_history_entry() #0 !dbg !1032 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1033, metadata !588), !dbg !1034
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1035, metadata !588), !dbg !1036
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1037
  %4 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %3), !dbg !1038
  store i8* %4, i8** %2, align 8, !dbg !1039
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1040
  %6 = load i8*, i8** %2, align 8, !dbg !1041
  %7 = call i8* @command_history_delete_current(%struct._WINDOW_REC* %5, i8* %6), !dbg !1042
  store i8* %7, i8** %1, align 8, !dbg !1043
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1044
  %9 = load i8*, i8** %1, align 8, !dbg !1045
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %8, i8* %9), !dbg !1046
  %10 = load i8*, i8** %2, align 8, !dbg !1047
  call void @g_free(i8* %10), !dbg !1048
  ret void, !dbg !1049
}

; Function Attrs: nounwind uwtable
define internal void @key_backspace() #0 !dbg !1050 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1051
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %1, i32 1, i32 0), !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal void @key_delete_character() #0 !dbg !1054 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1055
  %2 = call i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC* %1), !dbg !1057
  %3 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1058
  %4 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %3, i32 0, i32 0, !dbg !1059
  %5 = load i32, i32* %4, align 8, !dbg !1059
  %6 = icmp slt i32 %2, %5, !dbg !1060
  br i1 %6, label %7, label %9, !dbg !1061

; <label>:7:                                      ; preds = %0
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1062
  call void @gui_entry_erase_cell(%struct.GUI_ENTRY_REC* %8), !dbg !1064
  br label %9, !dbg !1065

; <label>:9:                                      ; preds = %7, %0
  ret void, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal void @key_delete_next_word() #0 !dbg !1067 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1068
  call void @gui_entry_erase_next_word(%struct.GUI_ENTRY_REC* %1, i32 0, i32 2), !dbg !1069
  ret void, !dbg !1070
}

; Function Attrs: nounwind uwtable
define internal void @key_delete_previous_word() #0 !dbg !1071 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1072
  call void @gui_entry_erase_word(%struct.GUI_ENTRY_REC* %1, i32 0, i32 3), !dbg !1073
  ret void, !dbg !1074
}

; Function Attrs: nounwind uwtable
define internal void @key_delete_to_previous_space() #0 !dbg !1075 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1076
  call void @gui_entry_erase_word(%struct.GUI_ENTRY_REC* %1, i32 1, i32 3), !dbg !1077
  ret void, !dbg !1078
}

; Function Attrs: nounwind uwtable
define internal void @key_delete_to_next_space() #0 !dbg !1079 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1080
  call void @gui_entry_erase_next_word(%struct.GUI_ENTRY_REC* %1, i32 1, i32 2), !dbg !1081
  ret void, !dbg !1082
}

; Function Attrs: nounwind uwtable
define internal void @key_erase_line() #0 !dbg !1083 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1084
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1085
  %3 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %2, i32 0, i32 0, !dbg !1086
  %4 = load i32, i32* %3, align 8, !dbg !1086
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %1, i32 %4), !dbg !1087
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1088
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1089
  %7 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %6, i32 0, i32 0, !dbg !1090
  %8 = load i32, i32* %7, align 8, !dbg !1090
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %5, i32 %8, i32 1), !dbg !1091
  ret void, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal void @key_erase_to_beg_of_line() #0 !dbg !1093 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1094, metadata !588), !dbg !1095
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1096
  %3 = call i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC* %2), !dbg !1097
  store i32 %3, i32* %1, align 4, !dbg !1098
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1099
  %5 = load i32, i32* %1, align 4, !dbg !1100
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %4, i32 %5, i32 3), !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define internal void @key_erase_to_end_of_line() #0 !dbg !1103 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1104, metadata !588), !dbg !1105
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1106
  %3 = call i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC* %2), !dbg !1107
  store i32 %3, i32* %1, align 4, !dbg !1108
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1109
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1110
  %6 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %5, i32 0, i32 0, !dbg !1111
  %7 = load i32, i32* %6, align 8, !dbg !1111
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %4, i32 %7), !dbg !1112
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1113
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1114
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 0, !dbg !1115
  %11 = load i32, i32* %10, align 8, !dbg !1115
  %12 = load i32, i32* %1, align 4, !dbg !1116
  %13 = sub nsw i32 %11, %12, !dbg !1117
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %8, i32 %13, i32 2), !dbg !1118
  ret void, !dbg !1119
}

; Function Attrs: nounwind uwtable
define internal void @key_yank_from_cutbuffer() #0 !dbg !1120 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1121, metadata !588), !dbg !1122
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1123
  %3 = call i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC* %2), !dbg !1124
  store i8* %3, i8** %1, align 8, !dbg !1125
  %4 = load i8*, i8** %1, align 8, !dbg !1126
  %5 = icmp ne i8* %4, null, !dbg !1128
  br i1 %5, label %6, label %15, !dbg !1129

; <label>:6:                                      ; preds = %0
  %7 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1130
  %8 = load i8*, i8** %1, align 8, !dbg !1132
  call void @gui_entry_insert_text(%struct.GUI_ENTRY_REC* %7, i8* %8), !dbg !1133
  %9 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1134
  %10 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %9, i32 0, i32 15, !dbg !1135
  %11 = load i8, i8* %10, align 4, !dbg !1136
  %12 = and i8 %11, -9, !dbg !1136
  %13 = or i8 %12, 8, !dbg !1136
  store i8 %13, i8* %10, align 4, !dbg !1136
  %14 = load i8*, i8** %1, align 8, !dbg !1137
  call void @g_free(i8* %14), !dbg !1138
  br label %15, !dbg !1139

; <label>:15:                                     ; preds = %6, %0
  ret void, !dbg !1140
}

; Function Attrs: nounwind uwtable
define internal void @key_yank_next_cutbuffer() #0 !dbg !1141 {
  %1 = alloca %struct.GUI_ENTRY_CUTBUFFER_REC*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_CUTBUFFER_REC** %1, metadata !1142, metadata !588), !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1150, metadata !588), !dbg !1151
  store i32 0, i32* %2, align 4, !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1152, metadata !588), !dbg !1153
  %4 = load i32, i32* @previous_yank_preceded, align 4, !dbg !1154
  %5 = icmp ne i32 %4, 0, !dbg !1154
  br i1 %5, label %7, label %6, !dbg !1156

; <label>:6:                                      ; preds = %0
  br label %42, !dbg !1157

; <label>:7:                                      ; preds = %0
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1158
  %9 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %8, i32 0, i32 4, !dbg !1160
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1160
  %11 = icmp eq %struct._GSList* %10, null, !dbg !1161
  br i1 %11, label %12, label %13, !dbg !1162

; <label>:12:                                     ; preds = %7
  br label %42, !dbg !1163

; <label>:13:                                     ; preds = %7
  %14 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1164
  %15 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %14, i32 0, i32 4, !dbg !1165
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1165
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1166
  %18 = load i8*, i8** %17, align 8, !dbg !1166
  %19 = bitcast i8* %18 to %struct.GUI_ENTRY_CUTBUFFER_REC*, !dbg !1164
  store %struct.GUI_ENTRY_CUTBUFFER_REC* %19, %struct.GUI_ENTRY_CUTBUFFER_REC** %1, align 8, !dbg !1167
  %20 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %1, align 8, !dbg !1168
  %21 = icmp ne %struct.GUI_ENTRY_CUTBUFFER_REC* %20, null, !dbg !1170
  br i1 %21, label %22, label %26, !dbg !1171

; <label>:22:                                     ; preds = %13
  %23 = load %struct.GUI_ENTRY_CUTBUFFER_REC*, %struct.GUI_ENTRY_CUTBUFFER_REC** %1, align 8, !dbg !1172
  %24 = getelementptr inbounds %struct.GUI_ENTRY_CUTBUFFER_REC, %struct.GUI_ENTRY_CUTBUFFER_REC* %23, i32 0, i32 0, !dbg !1174
  %25 = load i32, i32* %24, align 8, !dbg !1174
  store i32 %25, i32* %2, align 4, !dbg !1175
  br label %26, !dbg !1176

; <label>:26:                                     ; preds = %22, %13
  %27 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1177
  %28 = call i8* @gui_entry_get_next_cutbuffer(%struct.GUI_ENTRY_REC* %27), !dbg !1178
  store i8* %28, i8** %3, align 8, !dbg !1179
  %29 = load i8*, i8** %3, align 8, !dbg !1180
  %30 = icmp ne i8* %29, null, !dbg !1182
  br i1 %30, label %31, label %42, !dbg !1183

; <label>:31:                                     ; preds = %26
  %32 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1184
  %33 = load i32, i32* %2, align 4, !dbg !1186
  call void @gui_entry_erase(%struct.GUI_ENTRY_REC* %32, i32 %33, i32 0), !dbg !1187
  %34 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1188
  %35 = load i8*, i8** %3, align 8, !dbg !1189
  call void @gui_entry_insert_text(%struct.GUI_ENTRY_REC* %34, i8* %35), !dbg !1190
  %36 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1191
  %37 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %36, i32 0, i32 15, !dbg !1192
  %38 = load i8, i8* %37, align 4, !dbg !1193
  %39 = and i8 %38, -9, !dbg !1193
  %40 = or i8 %39, 8, !dbg !1193
  store i8 %40, i8* %37, align 4, !dbg !1193
  %41 = load i8*, i8** %3, align 8, !dbg !1194
  call void @g_free(i8* %41), !dbg !1195
  br label %42, !dbg !1196

; <label>:42:                                     ; preds = %6, %12, %31, %26
  ret void, !dbg !1197
}

; Function Attrs: nounwind uwtable
define internal void @key_append_next_kill() #0 !dbg !1198 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1199
  %2 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %1, i32 0, i32 15, !dbg !1200
  %3 = load i8, i8* %2, align 4, !dbg !1201
  %4 = and i8 %3, -5, !dbg !1201
  %5 = or i8 %4, 4, !dbg !1201
  store i8 %5, i8* %2, align 4, !dbg !1201
  ret void, !dbg !1202
}

; Function Attrs: nounwind uwtable
define internal void @key_transpose_characters() #0 !dbg !1203 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1204
  call void @gui_entry_transpose_chars(%struct.GUI_ENTRY_REC* %1), !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal void @key_transpose_words() #0 !dbg !1207 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1208
  call void @gui_entry_transpose_words(%struct.GUI_ENTRY_REC* %1), !dbg !1209
  ret void, !dbg !1210
}

; Function Attrs: nounwind uwtable
define internal void @key_capitalize_word() #0 !dbg !1211 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1212
  call void @gui_entry_capitalize_word(%struct.GUI_ENTRY_REC* %1), !dbg !1213
  ret void, !dbg !1214
}

; Function Attrs: nounwind uwtable
define internal void @key_downcase_word() #0 !dbg !1215 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1216
  call void @gui_entry_downcase_word(%struct.GUI_ENTRY_REC* %1), !dbg !1217
  ret void, !dbg !1218
}

; Function Attrs: nounwind uwtable
define internal void @key_upcase_word() #0 !dbg !1219 {
  %1 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1220
  call void @gui_entry_upcase_word(%struct.GUI_ENTRY_REC* %1), !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal void @key_send_line() #0 !dbg !1223 {
  %1 = alloca %struct.HISTORY_REC*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.HISTORY_REC** %1, metadata !1224, metadata !588), !dbg !1243
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1244, metadata !588), !dbg !1245
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1246, metadata !588), !dbg !1247
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1248
  %5 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %4), !dbg !1249
  store i8* %5, i8** %2, align 8, !dbg !1250
  %6 = load i8*, i8** %2, align 8, !dbg !1251
  %7 = load i8, i8* %6, align 1, !dbg !1252
  %8 = sext i8 %7 to i32, !dbg !1252
  %9 = icmp ne i32 %8, 0, !dbg !1253
  %10 = zext i1 %9 to i32, !dbg !1253
  store i32 %10, i32* %3, align 4, !dbg !1254
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1255
  %12 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %11), !dbg !1256
  store %struct.HISTORY_REC* %12, %struct.HISTORY_REC** %1, align 8, !dbg !1257
  %13 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1258
  %14 = icmp ne %struct.ENTRY_REDIRECT_REC* %13, null, !dbg !1260
  br i1 %14, label %15, label %22, !dbg !1261

; <label>:15:                                     ; preds = %0
  %16 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1262
  %17 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %16, i32 0, i32 1, !dbg !1264
  %18 = load i32, i32* %17, align 8, !dbg !1264
  %19 = and i32 %18, 2, !dbg !1265
  %20 = icmp ne i32 %19, 0, !dbg !1265
  br i1 %20, label %21, label %22, !dbg !1266

; <label>:21:                                     ; preds = %15
  store i32 0, i32* %3, align 4, !dbg !1267
  br label %22, !dbg !1268

; <label>:22:                                     ; preds = %21, %15, %0
  %23 = load i32, i32* %3, align 4, !dbg !1269
  %24 = icmp ne i32 %23, 0, !dbg !1269
  br i1 %24, label %25, label %31, !dbg !1271

; <label>:25:                                     ; preds = %22
  %26 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %1, align 8, !dbg !1272
  %27 = icmp ne %struct.HISTORY_REC* %26, null, !dbg !1274
  br i1 %27, label %28, label %31, !dbg !1275

; <label>:28:                                     ; preds = %25
  %29 = load %struct.HISTORY_REC*, %struct.HISTORY_REC** %1, align 8, !dbg !1276
  %30 = load i8*, i8** %2, align 8, !dbg !1278
  call void @command_history_add(%struct.HISTORY_REC* %29, i8* %30), !dbg !1279
  br label %31, !dbg !1280

; <label>:31:                                     ; preds = %28, %25, %22
  %32 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1281
  %33 = icmp eq %struct.ENTRY_REDIRECT_REC* %32, null, !dbg !1283
  br i1 %33, label %34, label %43, !dbg !1284

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %2, align 8, !dbg !1285
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1287
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 6, !dbg !1288
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1288
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1289
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 5, !dbg !1290
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %40, align 8, !dbg !1290
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i32 3, i8* %35, %struct._SERVER_REC* %38, %struct._WI_ITEM_REC* %41), !dbg !1291
  br label %45, !dbg !1292

; <label>:43:                                     ; preds = %31
  %44 = load i8*, i8** %2, align 8, !dbg !1293
  call void @handle_entry_redirect(i8* %44), !dbg !1295
  br label %45

; <label>:45:                                     ; preds = %43, %34
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1296
  %47 = icmp ne %struct.GUI_ENTRY_REC* %46, null, !dbg !1298
  br i1 %47, label %48, label %50, !dbg !1299

; <label>:48:                                     ; preds = %45
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1300
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !1301
  br label %50, !dbg !1301

; <label>:50:                                     ; preds = %48, %45
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1302
  call void @command_history_clear_pos(%struct._WINDOW_REC* %51), !dbg !1303
  %52 = load i8*, i8** %2, align 8, !dbg !1304
  call void @g_free(i8* %52), !dbg !1305
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define internal void @key_word_completion_backward() #0 !dbg !1307 {
  call void @key_completion(i32 0, i32 1), !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define internal void @key_word_completion() #0 !dbg !1310 {
  call void @key_completion(i32 0, i32 0), !dbg !1311
  ret void, !dbg !1312
}

; Function Attrs: nounwind uwtable
define internal void @key_erase_completion() #0 !dbg !1313 {
  call void @key_completion(i32 1, i32 0), !dbg !1314
  ret void, !dbg !1315
}

; Function Attrs: nounwind uwtable
define internal void @key_check_replaces() #0 !dbg !1316 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1317, metadata !588), !dbg !1318
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1319, metadata !588), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1321, metadata !588), !dbg !1322
  %4 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1323
  %5 = call i8* @gui_entry_get_text_and_pos(%struct.GUI_ENTRY_REC* %4, i32* %3), !dbg !1324
  store i8* %5, i8** %1, align 8, !dbg !1325
  %6 = load i8*, i8** %1, align 8, !dbg !1326
  %7 = call i8* @auto_word_complete(i8* %6, i32* %3), !dbg !1327
  store i8* %7, i8** %2, align 8, !dbg !1328
  %8 = load i8*, i8** %1, align 8, !dbg !1329
  call void @g_free(i8* %8), !dbg !1330
  %9 = load i8*, i8** %2, align 8, !dbg !1331
  %10 = icmp ne i8* %9, null, !dbg !1333
  br i1 %10, label %11, label %16, !dbg !1334

; <label>:11:                                     ; preds = %0
  %12 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1335
  %13 = load i8*, i8** %2, align 8, !dbg !1337
  %14 = load i32, i32* %3, align 4, !dbg !1338
  call void @gui_entry_set_text_and_pos_bytes(%struct.GUI_ENTRY_REC* %12, i8* %13, i32 %14), !dbg !1339
  %15 = load i8*, i8** %2, align 8, !dbg !1340
  call void @g_free(i8* %15), !dbg !1341
  br label %16, !dbg !1342

; <label>:16:                                     ; preds = %11, %0
  ret void, !dbg !1343
}

; Function Attrs: nounwind uwtable
define internal void @key_previous_window() #0 !dbg !1344 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1345
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1346
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1346
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1347
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1348
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1348
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.233, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1349
  ret void, !dbg !1350
}

; Function Attrs: nounwind uwtable
define internal void @key_next_window() #0 !dbg !1351 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1352
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1353
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1353
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1354
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1355
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1355
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal void @key_upper_window() #0 !dbg !1358 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1359
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1360
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1360
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1361
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1362
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1362
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.235, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1363
  ret void, !dbg !1364
}

; Function Attrs: nounwind uwtable
define internal void @key_lower_window() #0 !dbg !1365 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1366
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1367
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1367
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1368
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1369
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1369
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.236, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: nounwind uwtable
define internal void @key_left_window() #0 !dbg !1372 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1373
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1374
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1374
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1375
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1376
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1376
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1377
  ret void, !dbg !1378
}

; Function Attrs: nounwind uwtable
define internal void @key_right_window() #0 !dbg !1379 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1380
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1381
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1381
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1382
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1383
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1383
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.238, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1384
  ret void, !dbg !1385
}

; Function Attrs: nounwind uwtable
define internal void @key_active_window() #0 !dbg !1386 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1387
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1388
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1388
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1389
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1390
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1390
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.239, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1391
  ret void, !dbg !1392
}

; Function Attrs: nounwind uwtable
define internal void @key_next_window_item() #0 !dbg !1393 {
  %1 = alloca %struct._SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %1, metadata !1394, metadata !588), !dbg !1395
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1396
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 4, !dbg !1398
  %4 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1398
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1399
  br i1 %5, label %6, label %14, !dbg !1400

; <label>:6:                                      ; preds = %0
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1401
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 6, !dbg !1403
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !1403
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1404
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 5, !dbg !1405
  %12 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %11, align 8, !dbg !1405
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.241, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %9, %struct._WI_ITEM_REC* %12), !dbg !1406
  br label %44, !dbg !1407

; <label>:14:                                     ; preds = %0
  %15 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1408
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1411
  br i1 %16, label %20, label %17, !dbg !1412

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !1413
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1415
  br i1 %19, label %20, label %43, !dbg !1416

; <label>:20:                                     ; preds = %17, %14
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1417
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 6, !dbg !1419
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %22, align 8, !dbg !1419
  store %struct._SERVER_REC* %23, %struct._SERVER_REC** %1, align 8, !dbg !1420
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1421
  %25 = icmp eq %struct._SERVER_REC* %24, null, !dbg !1423
  br i1 %25, label %26, label %30, !dbg !1424

; <label>:26:                                     ; preds = %20
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1425
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 7, !dbg !1426
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %28, align 8, !dbg !1426
  store %struct._SERVER_REC* %29, %struct._SERVER_REC** %1, align 8, !dbg !1427
  br label %30, !dbg !1428

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1429
  %32 = call %struct._SERVER_REC* @get_next_server(%struct._SERVER_REC* %31), !dbg !1430
  store %struct._SERVER_REC* %32, %struct._SERVER_REC** %1, align 8, !dbg !1431
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1432
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 6, !dbg !1433
  %35 = load i8*, i8** %34, align 8, !dbg !1433
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1434
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 6, !dbg !1435
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1435
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1436
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 5, !dbg !1437
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %40, align 8, !dbg !1437
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.242, i32 0, i32 0), i32 3, i8* %35, %struct._SERVER_REC* %38, %struct._WI_ITEM_REC* %41), !dbg !1438
  br label %43, !dbg !1439

; <label>:43:                                     ; preds = %30, %17
  br label %44

; <label>:44:                                     ; preds = %43, %6
  ret void, !dbg !1440
}

; Function Attrs: nounwind uwtable
define internal void @key_previous_window_item() #0 !dbg !1441 {
  %1 = alloca %struct._SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %1, metadata !1442, metadata !588), !dbg !1443
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1444
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 4, !dbg !1446
  %4 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1446
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1447
  br i1 %5, label %6, label %14, !dbg !1448

; <label>:6:                                      ; preds = %0
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1449
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 6, !dbg !1451
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !1451
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1452
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 5, !dbg !1453
  %12 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %11, align 8, !dbg !1453
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.245, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %struct._SERVER_REC* %9, %struct._WI_ITEM_REC* %12), !dbg !1454
  br label %44, !dbg !1455

; <label>:14:                                     ; preds = %0
  %15 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1456
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1459
  br i1 %16, label %20, label %17, !dbg !1460

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !1461
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1463
  br i1 %19, label %20, label %43, !dbg !1464

; <label>:20:                                     ; preds = %17, %14
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1465
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 6, !dbg !1467
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %22, align 8, !dbg !1467
  store %struct._SERVER_REC* %23, %struct._SERVER_REC** %1, align 8, !dbg !1468
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1469
  %25 = icmp eq %struct._SERVER_REC* %24, null, !dbg !1471
  br i1 %25, label %26, label %30, !dbg !1472

; <label>:26:                                     ; preds = %20
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1473
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 7, !dbg !1474
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %28, align 8, !dbg !1474
  store %struct._SERVER_REC* %29, %struct._SERVER_REC** %1, align 8, !dbg !1475
  br label %30, !dbg !1476

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1477
  %32 = call %struct._SERVER_REC* @get_prev_server(%struct._SERVER_REC* %31), !dbg !1478
  store %struct._SERVER_REC* %32, %struct._SERVER_REC** %1, align 8, !dbg !1479
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1480
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 6, !dbg !1481
  %35 = load i8*, i8** %34, align 8, !dbg !1481
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1482
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 6, !dbg !1483
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1483
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1484
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 5, !dbg !1485
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %40, align 8, !dbg !1485
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.242, i32 0, i32 0), i32 3, i8* %35, %struct._SERVER_REC* %38, %struct._WI_ITEM_REC* %41), !dbg !1486
  br label %43, !dbg !1487

; <label>:43:                                     ; preds = %30, %17
  br label %44

; <label>:44:                                     ; preds = %43, %6
  ret void, !dbg !1488
}

declare void @irssi_redraw() #2

; Function Attrs: nounwind uwtable
define internal void @key_scroll_backward() #0 !dbg !1489 {
  call void @window_prev_page(), !dbg !1490
  ret void, !dbg !1491
}

; Function Attrs: nounwind uwtable
define internal void @key_scroll_forward() #0 !dbg !1492 {
  call void @window_next_page(), !dbg !1493
  ret void, !dbg !1494
}

; Function Attrs: nounwind uwtable
define internal void @key_scroll_start() #0 !dbg !1495 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1496
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1497
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1497
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1498
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1499
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1499
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.247, i32 0, i32 0), i32 3, i8* null, %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1500
  ret void, !dbg !1501
}

; Function Attrs: nounwind uwtable
define internal void @key_scroll_end() #0 !dbg !1502 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1503
  %2 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %1, i32 0, i32 6, !dbg !1504
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1504
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1505
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 5, !dbg !1506
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1506
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.248, i32 0, i32 0), i32 3, i8* null, %struct._SERVER_REC* %3, %struct._WI_ITEM_REC* %6), !dbg !1507
  ret void, !dbg !1508
}

; Function Attrs: nounwind uwtable
define internal void @key_escape() #0 !dbg !1509 {
  store i32 1, i32* @escape_next_key, align 4, !dbg !1510
  ret void, !dbg !1511
}

; Function Attrs: nounwind uwtable
define internal void @key_insert_text(i8*) #0 !dbg !1512 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1515, metadata !588), !dbg !1516
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1517, metadata !588), !dbg !1518
  %4 = load i8*, i8** %2, align 8, !dbg !1519
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1520
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 6, !dbg !1521
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1521
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1522
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 5, !dbg !1523
  %10 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1523
  %11 = bitcast %struct._WI_ITEM_REC* %10 to i8*, !dbg !1522
  %12 = call i8* @parse_special_string(i8* %4, %struct._SERVER_REC* %7, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), i32* null, i32 0), !dbg !1524
  store i8* %12, i8** %3, align 8, !dbg !1525
  %13 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1526
  %14 = load i8*, i8** %3, align 8, !dbg !1527
  call void @gui_entry_insert_text(%struct.GUI_ENTRY_REC* %13, i8* %14), !dbg !1528
  %15 = load i8*, i8** %3, align 8, !dbg !1529
  call void @g_free(i8* %15), !dbg !1530
  ret void, !dbg !1531
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @key_change_window(i8*) #0 !dbg !1532 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1533, metadata !588), !dbg !1534
  %3 = load i8*, i8** %2, align 8, !dbg !1535
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1536
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 6, !dbg !1537
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1537
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1538
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 5, !dbg !1539
  %9 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1539
  %10 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.239, i32 0, i32 0), i32 3, i8* %3, %struct._SERVER_REC* %6, %struct._WI_ITEM_REC* %9), !dbg !1540
  ret void, !dbg !1541
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @key_sig_stop() #0 !dbg !1542 {
  call void @term_stop(), !dbg !1543
  ret void, !dbg !1544
}

declare void @key_configure_thaw() #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_window_auto_changed() #0 !dbg !1545 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1546, metadata !588), !dbg !1547
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1548
  %3 = icmp eq %struct.GUI_ENTRY_REC* %2, null, !dbg !1550
  br i1 %3, label %4, label %5, !dbg !1551

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !1552

; <label>:5:                                      ; preds = %0
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1553
  %7 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %6), !dbg !1554
  store i8* %7, i8** %1, align 8, !dbg !1555
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1556
  %9 = load i8*, i8** %1, align 8, !dbg !1557
  %10 = call i8* @command_history_next(%struct._WINDOW_REC* %8, i8* %9), !dbg !1558
  %11 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1559
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !1560
  %12 = load i8*, i8** %1, align 8, !dbg !1561
  call void @g_free(i8* %12), !dbg !1562
  br label %13, !dbg !1563

; <label>:13:                                     ; preds = %5, %4
  ret void, !dbg !1564
}

; Function Attrs: nounwind uwtable
define internal void @sig_gui_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i8*, i8*) #0 !dbg !1566 {
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %0, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !1569, metadata !588), !dbg !1570
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1571, metadata !588), !dbg !1572
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1573, metadata !588), !dbg !1574
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1575, metadata !588), !dbg !1576
  %9 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1577
  %10 = bitcast i8* %9 to %struct.ENTRY_REDIRECT_REC*, !dbg !1578
  store %struct.ENTRY_REDIRECT_REC* %10, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1579
  %11 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !1580
  %12 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1581
  %13 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %12, i32 0, i32 0, !dbg !1582
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %11, void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !1583
  %14 = load i8*, i8** %7, align 8, !dbg !1584
  %15 = ptrtoint i8* %14 to i64, !dbg !1585
  %16 = trunc i64 %15 to i32, !dbg !1586
  %17 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1587
  %18 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %17, i32 0, i32 1, !dbg !1588
  store i32 %16, i32* %18, align 8, !dbg !1589
  %19 = load i8*, i8** %8, align 8, !dbg !1590
  %20 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1591
  %21 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %20, i32 0, i32 2, !dbg !1592
  store i8* %19, i8** %21, align 8, !dbg !1593
  %22 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1594
  %23 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %22, i32 0, i32 1, !dbg !1596
  %24 = load i32, i32* %23, align 8, !dbg !1596
  %25 = and i32 %24, 2, !dbg !1597
  %26 = icmp ne i32 %25, 0, !dbg !1597
  br i1 %26, label %27, label %29, !dbg !1598

; <label>:27:                                     ; preds = %4
  %28 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1599
  call void @gui_entry_set_hidden(%struct.GUI_ENTRY_REC* %28, i32 1), !dbg !1600
  br label %29, !dbg !1600

; <label>:29:                                     ; preds = %27, %4
  %30 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1601
  %31 = load i8*, i8** %6, align 8, !dbg !1602
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %30, i8* %31), !dbg !1603
  ret void, !dbg !1604
}

; Function Attrs: nounwind uwtable
define internal void @sig_gui_key_pressed(i8*) #0 !dbg !1605 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GTimeVal, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1606, metadata !588), !dbg !1607
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %3, metadata !1608, metadata !588), !dbg !1609
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1610, metadata !588), !dbg !1611
  call void @llvm.dbg.declare(metadata [20 x i8]* %5, metadata !1612, metadata !588), !dbg !1613
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1614, metadata !588), !dbg !1615
  %7 = load i8*, i8** %2, align 8, !dbg !1616
  %8 = ptrtoint i8* %7 to i64, !dbg !1617
  %9 = trunc i64 %8 to i32, !dbg !1618
  store i32 %9, i32* %4, align 4, !dbg !1619
  %10 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1620
  %11 = icmp ne %struct.ENTRY_REDIRECT_REC* %10, null, !dbg !1622
  br i1 %11, label %12, label %20, !dbg !1623

; <label>:12:                                     ; preds = %1
  %13 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !1624
  %14 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %13, i32 0, i32 1, !dbg !1626
  %15 = load i32, i32* %14, align 8, !dbg !1626
  %16 = and i32 %15, 1, !dbg !1627
  %17 = icmp ne i32 %16, 0, !dbg !1627
  br i1 %17, label %18, label %20, !dbg !1628

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %4, align 4, !dbg !1629
  call void @handle_key_redirect(i32 %19), !dbg !1631
  br label %165, !dbg !1632

; <label>:20:                                     ; preds = %12, %1
  call void @g_get_current_time(%struct._GTimeVal* %3), !dbg !1633
  %21 = load i32, i32* %4, align 4, !dbg !1634
  %22 = icmp ult i32 %21, 32, !dbg !1636
  br i1 %22, label %23, label %32, !dbg !1637

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !1638
  store i8 94, i8* %24, align 16, !dbg !1640
  %25 = load i32, i32* %4, align 4, !dbg !1641
  %26 = trunc i32 %25 to i8, !dbg !1642
  %27 = sext i8 %26 to i32, !dbg !1642
  %28 = add nsw i32 %27, 64, !dbg !1643
  %29 = trunc i32 %28 to i8, !dbg !1642
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 1, !dbg !1644
  store i8 %29, i8* %30, align 1, !dbg !1645
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 2, !dbg !1646
  store i8 0, i8* %31, align 2, !dbg !1647
  br label %73, !dbg !1648

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %4, align 4, !dbg !1649
  %34 = icmp eq i32 %33, 127, !dbg !1652
  br i1 %34, label %35, label %39, !dbg !1649

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !1653
  store i8 94, i8* %36, align 16, !dbg !1655
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 1, !dbg !1656
  store i8 63, i8* %37, align 1, !dbg !1657
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 2, !dbg !1658
  store i8 0, i8* %38, align 2, !dbg !1659
  br label %72, !dbg !1660

; <label>:39:                                     ; preds = %32
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1661
  %41 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %40, i32 0, i32 15, !dbg !1664
  %42 = load i8, i8* %41, align 4, !dbg !1664
  %43 = and i8 %42, 1, !dbg !1664
  %44 = zext i8 %43 to i32, !dbg !1664
  %45 = icmp ne i32 %44, 0, !dbg !1661
  br i1 %45, label %65, label %46, !dbg !1665

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %4, align 4, !dbg !1666
  %48 = icmp ule i32 %47, 255, !dbg !1669
  br i1 %48, label %49, label %54, !dbg !1670

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %4, align 4, !dbg !1671
  %51 = trunc i32 %50 to i8, !dbg !1673
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !1674
  store i8 %51, i8* %52, align 16, !dbg !1675
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 1, !dbg !1676
  store i8 0, i8* %53, align 1, !dbg !1677
  br label %64, !dbg !1678

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %4, align 4, !dbg !1679
  %56 = lshr i32 %55, 8, !dbg !1681
  %57 = trunc i32 %56 to i8, !dbg !1682
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !1683
  store i8 %57, i8* %58, align 16, !dbg !1684
  %59 = load i32, i32* %4, align 4, !dbg !1685
  %60 = and i32 %59, 255, !dbg !1686
  %61 = trunc i32 %60 to i8, !dbg !1687
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 1, !dbg !1688
  store i8 %61, i8* %62, align 1, !dbg !1689
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 2, !dbg !1690
  store i8 0, i8* %63, align 2, !dbg !1691
  br label %64

; <label>:64:                                     ; preds = %54, %49
  br label %71, !dbg !1692

; <label>:65:                                     ; preds = %39
  %66 = load i32, i32* %4, align 4, !dbg !1693
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !1695
  %68 = call i32 @g_unichar_to_utf8(i32 %66, i8* %67), !dbg !1696
  %69 = sext i32 %68 to i64, !dbg !1697
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %69, !dbg !1697
  store i8 0, i8* %70, align 1, !dbg !1698
  br label %71

; <label>:71:                                     ; preds = %65, %64
  br label %72

; <label>:72:                                     ; preds = %71, %35
  br label %73

; <label>:73:                                     ; preds = %72, %23
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !1699
  %75 = call i32 @g_strcmp0(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i32 0, i32 0)), !dbg !1701
  %76 = icmp eq i32 %75, 0, !dbg !1702
  br i1 %76, label %77, label %80, !dbg !1703

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 1, !dbg !1704
  store i8 45, i8* %78, align 1, !dbg !1706
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 2, !dbg !1707
  store i8 0, i8* %79, align 2, !dbg !1708
  br label %80, !dbg !1709

; <label>:80:                                     ; preds = %77, %73
  %81 = load i32, i32* @escape_next_key, align 4, !dbg !1710
  %82 = icmp ne i32 %81, 0, !dbg !1710
  br i1 %82, label %83, label %86, !dbg !1712

; <label>:83:                                     ; preds = %80
  store i32 0, i32* @escape_next_key, align 4, !dbg !1713
  %84 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1715
  %85 = load i32, i32* %4, align 4, !dbg !1716
  call void @gui_entry_insert_char(%struct.GUI_ENTRY_REC* %84, i32 %85), !dbg !1717
  store i32 1, i32* %6, align 4, !dbg !1718
  br label %154, !dbg !1719

; <label>:86:                                     ; preds = %80
  %87 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1720
  %88 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %87, i32 0, i32 15, !dbg !1722
  %89 = load i8, i8* %88, align 4, !dbg !1722
  %90 = lshr i8 %89, 3, !dbg !1722
  %91 = and i8 %90, 1, !dbg !1722
  %92 = zext i8 %91 to i32, !dbg !1722
  store i32 %92, i32* @previous_yank_preceded, align 4, !dbg !1723
  %93 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1724
  %94 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %93, i32 0, i32 15, !dbg !1725
  %95 = load i8, i8* %94, align 4, !dbg !1726
  %96 = and i8 %95, -9, !dbg !1726
  store i8 %96, i8* %94, align 4, !dbg !1726
  %97 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1727
  %98 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %97, i32 0, i32 15, !dbg !1728
  %99 = load i8, i8* %98, align 4, !dbg !1728
  %100 = lshr i8 %99, 2, !dbg !1728
  %101 = and i8 %100, 1, !dbg !1728
  %102 = zext i8 %101 to i32, !dbg !1728
  %103 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1729
  %104 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %103, i32 0, i32 15, !dbg !1730
  %105 = trunc i32 %102 to i8, !dbg !1731
  %106 = load i8, i8* %104, align 4, !dbg !1731
  %107 = and i8 %105, 1, !dbg !1731
  %108 = shl i8 %107, 1, !dbg !1731
  %109 = and i8 %106, -3, !dbg !1731
  %110 = or i8 %109, %108, !dbg !1731
  store i8 %110, i8* %104, align 4, !dbg !1731
  %111 = zext i8 %107 to i32, !dbg !1731
  %112 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1732
  %113 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %112, i32 0, i32 15, !dbg !1733
  %114 = load i8, i8* %113, align 4, !dbg !1734
  %115 = and i8 %114, -5, !dbg !1734
  store i8 %115, i8* %113, align 4, !dbg !1734
  %116 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** @keyboard, align 8, !dbg !1735
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !1736
  %118 = call i32 @key_pressed(%struct._KEYBOARD_REC* %116, i8* %117), !dbg !1737
  store i32 %118, i32* %6, align 4, !dbg !1738
  %119 = load i32, i32* %6, align 4, !dbg !1739
  %120 = icmp slt i32 %119, 0, !dbg !1741
  br i1 %120, label %121, label %124, !dbg !1742

; <label>:121:                                    ; preds = %86
  %122 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1743
  %123 = load i32, i32* %4, align 4, !dbg !1745
  call void @gui_entry_insert_char(%struct.GUI_ENTRY_REC* %122, i32 %123), !dbg !1746
  br label %124, !dbg !1747

; <label>:124:                                    ; preds = %121, %86
  %125 = load i32, i32* %6, align 4, !dbg !1748
  %126 = icmp eq i32 %125, 0, !dbg !1750
  br i1 %126, label %127, label %153, !dbg !1751

; <label>:127:                                    ; preds = %124
  %128 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1752
  %129 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %128, i32 0, i32 15, !dbg !1754
  %130 = load i8, i8* %129, align 4, !dbg !1754
  %131 = lshr i8 %130, 1, !dbg !1754
  %132 = and i8 %131, 1, !dbg !1754
  %133 = zext i8 %132 to i32, !dbg !1754
  %134 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1755
  %135 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %134, i32 0, i32 15, !dbg !1756
  %136 = trunc i32 %133 to i8, !dbg !1757
  %137 = load i8, i8* %135, align 4, !dbg !1757
  %138 = and i8 %136, 1, !dbg !1757
  %139 = shl i8 %138, 2, !dbg !1757
  %140 = and i8 %137, -5, !dbg !1757
  %141 = or i8 %140, %139, !dbg !1757
  store i8 %141, i8* %135, align 4, !dbg !1757
  %142 = zext i8 %138 to i32, !dbg !1757
  %143 = load i32, i32* @previous_yank_preceded, align 4, !dbg !1758
  %144 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1759
  %145 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %144, i32 0, i32 15, !dbg !1760
  %146 = trunc i32 %143 to i8, !dbg !1761
  %147 = load i8, i8* %145, align 4, !dbg !1761
  %148 = and i8 %146, 1, !dbg !1761
  %149 = shl i8 %148, 3, !dbg !1761
  %150 = and i8 %147, -9, !dbg !1761
  %151 = or i8 %150, %149, !dbg !1761
  store i8 %151, i8* %145, align 4, !dbg !1761
  %152 = zext i8 %148 to i32, !dbg !1761
  br label %153, !dbg !1762

; <label>:153:                                    ; preds = %127, %124
  br label %154

; <label>:154:                                    ; preds = %153, %83
  %155 = load i32, i32* %6, align 4, !dbg !1763
  %156 = icmp ne i32 %155, 0, !dbg !1765
  br i1 %156, label %157, label %163, !dbg !1766

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %4, align 4, !dbg !1767
  %159 = load i32, i32* @prev_key, align 4, !dbg !1769
  %160 = icmp ne i32 %158, %159, !dbg !1770
  br i1 %160, label %161, label %163, !dbg !1771

; <label>:161:                                    ; preds = %157
  %162 = bitcast %struct._GTimeVal* %3 to i8*, !dbg !1772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GTimeVal* @last_keypress to i8*), i8* %162, i64 16, i32 8, i1 false), !dbg !1772
  br label %163, !dbg !1774

; <label>:163:                                    ; preds = %161, %157, %154
  %164 = load i32, i32* %4, align 4, !dbg !1775
  store i32 %164, i32* @prev_key, align 4, !dbg !1776
  br label %165, !dbg !1777

; <label>:165:                                    ; preds = %163, %18
  ret void, !dbg !1778
}

; Function Attrs: nounwind uwtable
define void @gui_readline_deinit() #0 !dbg !1780 {
  call void @input_listen_deinit(), !dbg !1781
  call void @key_configure_freeze(), !dbg !1782
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_paste_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1783
  call void @key_unbind(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1784
  call void @key_unbind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1785
  call void @key_unbind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1786
  call void @key_unbind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1787
  call void @key_unbind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_to_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1788
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_to_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1789
  call void @key_unbind(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_beginning_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1790
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_end_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1791
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1792
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1793
  call void @key_unbind(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backward_global_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1794
  call void @key_unbind(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.121, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_forward_global_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1795
  call void @key_unbind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_history_entry to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1796
  call void @key_unbind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_backspace to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1797
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_character to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1798
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_next_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1799
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_previous_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1800
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.138, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_to_next_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1801
  call void @key_unbind(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.135, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_delete_to_previous_space to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1802
  call void @key_unbind(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1803
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.144, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_to_beg_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1804
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_to_end_of_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1805
  call void @key_unbind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.149, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_yank_from_cutbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1806
  call void @key_unbind(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_yank_next_cutbuffer to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1807
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_append_next_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1808
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.156, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_transpose_characters to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1809
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_transpose_words to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1810
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_capitalize_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1811
  call void @key_unbind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.163, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_downcase_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1812
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_upcase_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1813
  call void @key_unbind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_send_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1814
  call void @key_unbind(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_word_completion_backward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1815
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.171, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_word_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1816
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_erase_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1817
  call void @key_unbind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_check_replaces to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1818
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.178, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_previous_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1819
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.181, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_next_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1820
  call void @key_unbind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_upper_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1821
  call void @key_unbind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_lower_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1822
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.188, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_left_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1823
  call void @key_unbind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_right_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1824
  call void @key_unbind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.192, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_active_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1825
  call void @key_unbind(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.195, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_next_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1826
  call void @key_unbind(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_previous_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1827
  call void @key_unbind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.200, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @irssi_redraw to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1828
  call void @key_unbind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_backward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1829
  call void @key_unbind(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.206, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_forward to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1830
  call void @key_unbind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1831
  call void @key_unbind(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.211, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_scroll_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1832
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.213, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_escape to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1833
  call void @key_unbind(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @key_insert_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1834
  call void @key_unbind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.222, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @key_change_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1835
  call void @key_unbind(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @key_sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*)), !dbg !1836
  %1 = load %struct._KEYBOARD_REC*, %struct._KEYBOARD_REC** @keyboard, align 8, !dbg !1837
  call void @keyboard_destroy(%struct._KEYBOARD_REC* %1), !dbg !1838
  %2 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1839
  %3 = call i8* @g_array_free(%struct._GArray* %2, i32 1), !dbg !1840
  %4 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !1841
  %5 = call i8* @g_array_free(%struct._GArray* %4, i32 1), !dbg !1842
  call void @key_configure_thaw(), !dbg !1843
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.227, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_window_auto_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1844
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.228, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i8*, i8*)* @sig_gui_entry_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1845
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_gui_key_pressed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1846
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.230, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @setup_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1847
  ret void, !dbg !1848
}

declare void @key_unbind(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #2

declare void @keyboard_destroy(%struct._KEYBOARD_REC*) #2

declare i8* @g_array_free(%struct._GArray*, i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @term_gets(%struct._GArray*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @paste_flush(i32) #0 !dbg !1849 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1850, metadata !588), !dbg !1851
  %3 = load i32, i32* @paste_prompt, align 4, !dbg !1852
  %4 = icmp ne i32 %3, 0, !dbg !1852
  br i1 %4, label %5, label %17, !dbg !1854

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1855
  %7 = load i8*, i8** @paste_entry, align 8, !dbg !1857
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %6, i8* %7), !dbg !1858
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1859
  %9 = load i32, i32* @paste_entry_pos, align 4, !dbg !1860
  call void @gui_entry_set_pos(%struct.GUI_ENTRY_REC* %8, i32 %9), !dbg !1861
  br label %10, !dbg !1862, !llvm.loop !1863

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** @paste_entry, align 8, !dbg !1864
  %12 = icmp ne i8* %11, null, !dbg !1864
  br i1 %12, label %13, label %15, !dbg !1864

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** @paste_entry, align 8, !dbg !1868
  call void @g_free(i8* %14), !dbg !1871
  store i8* null, i8** @paste_entry, align 8, !dbg !1872
  br label %15, !dbg !1873

; <label>:15:                                     ; preds = %13, %10
  br label %16, !dbg !1874

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1876

; <label>:17:                                     ; preds = %16, %1
  %18 = load i32, i32* %2, align 4, !dbg !1877
  %19 = icmp ne i32 %18, 0, !dbg !1877
  br i1 %19, label %20, label %21, !dbg !1879

; <label>:20:                                     ; preds = %17
  call void @paste_send(), !dbg !1880
  br label %21, !dbg !1880

; <label>:21:                                     ; preds = %20, %17
  %22 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1881
  %23 = call %struct._GArray* @g_array_set_size(%struct._GArray* %22, i32 0), !dbg !1882
  %24 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !1883
  %25 = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 1, !dbg !1885
  %26 = load i32, i32* %25, align 8, !dbg !1885
  %27 = icmp ugt i32 %26, 0, !dbg !1886
  br i1 %27, label %28, label %39, !dbg !1887

; <label>:28:                                     ; preds = %21
  %29 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1888
  %30 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !1890
  %31 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 0, !dbg !1891
  %32 = load i8*, i8** %31, align 8, !dbg !1891
  %33 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !1892
  %34 = getelementptr inbounds %struct._GArray, %struct._GArray* %33, i32 0, i32 1, !dbg !1893
  %35 = load i32, i32* %34, align 8, !dbg !1893
  %36 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %29, i8* %32, i32 %35), !dbg !1894
  %37 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !1895
  %38 = call %struct._GArray* @g_array_set_size(%struct._GArray* %37, i32 0), !dbg !1896
  br label %39, !dbg !1897

; <label>:39:                                     ; preds = %28, %21
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1898
  %41 = load i8*, i8** @paste_old_prompt, align 8, !dbg !1899
  %42 = icmp eq i8* %41, null, !dbg !1900
  br i1 %42, label %43, label %44, !dbg !1899

; <label>:43:                                     ; preds = %39
  br label %46, !dbg !1901

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** @paste_old_prompt, align 8, !dbg !1903
  br label %46, !dbg !1905

; <label>:46:                                     ; preds = %44, %43
  %47 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0), %43 ], [ %45, %44 ], !dbg !1906
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %40, i8* %47), !dbg !1908
  %48 = load i8*, i8** @paste_old_prompt, align 8, !dbg !1909
  call void @g_free(i8* %48), !dbg !1910
  store i8* null, i8** @paste_old_prompt, align 8, !dbg !1911
  store i32 0, i32* @paste_prompt, align 4, !dbg !1912
  store i32 0, i32* @paste_line_count, align 4, !dbg !1913
  %49 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1914
  call void @gui_entry_redraw(%struct.GUI_ENTRY_REC* %49), !dbg !1915
  ret void, !dbg !1916
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @paste_timeout(i8*) #0 !dbg !1917 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1918, metadata !588), !dbg !1919
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1920, metadata !588), !dbg !1921
  %6 = load i32, i32* @paste_bracketed_mode, align 4, !dbg !1922
  store i32 %6, i32* @paste_was_bracketed_mode, align 4, !dbg !1923
  %7 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1924
  %8 = getelementptr inbounds %struct._GArray, %struct._GArray* %7, i32 0, i32 1, !dbg !1925
  %9 = load i32, i32* %8, align 8, !dbg !1925
  %10 = udiv i32 %9, 400, !dbg !1926
  store i32 %10, i32* %3, align 4, !dbg !1927
  %11 = load i32, i32* @paste_line_count, align 4, !dbg !1928
  %12 = icmp eq i32 %11, 0, !dbg !1930
  br i1 %12, label %13, label %43, !dbg !1931

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %3, align 4, !dbg !1932
  %15 = load i32, i32* @paste_verify_line_count, align 4, !dbg !1934
  %16 = icmp sle i32 %14, %15, !dbg !1935
  br i1 %16, label %17, label %43, !dbg !1936

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1937, metadata !588), !dbg !1939
  store i32 0, i32* %4, align 4, !dbg !1940
  br label %18, !dbg !1942

; <label>:18:                                     ; preds = %37, %17
  %19 = load i32, i32* %4, align 4, !dbg !1943
  %20 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1946
  %21 = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 1, !dbg !1947
  %22 = load i32, i32* %21, align 8, !dbg !1947
  %23 = icmp ult i32 %19, %22, !dbg !1948
  br i1 %23, label %24, label %40, !dbg !1949

; <label>:24:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1950, metadata !588), !dbg !1952
  %25 = load i32, i32* %4, align 4, !dbg !1953
  %26 = sext i32 %25 to i64, !dbg !1954
  %27 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1955
  %28 = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 0, !dbg !1956
  %29 = load i8*, i8** %28, align 8, !dbg !1956
  %30 = bitcast i8* %29 to i32*, !dbg !1957
  %31 = getelementptr inbounds i32, i32* %30, i64 %26, !dbg !1954
  %32 = load i32, i32* %31, align 4, !dbg !1954
  store i32 %32, i32* %5, align 4, !dbg !1952
  %33 = load i32, i32* %5, align 4, !dbg !1958
  %34 = zext i32 %33 to i64, !dbg !1959
  %35 = inttoptr i64 %34 to i8*, !dbg !1960
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0), i32 1, i8* %35), !dbg !1961
  br label %37, !dbg !1962

; <label>:37:                                     ; preds = %24
  %38 = load i32, i32* %4, align 4, !dbg !1963
  %39 = add nsw i32 %38, 1, !dbg !1963
  store i32 %39, i32* %4, align 4, !dbg !1963
  br label %18, !dbg !1965, !llvm.loop !1966

; <label>:40:                                     ; preds = %18
  %41 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !1968
  %42 = call %struct._GArray* @g_array_set_size(%struct._GArray* %41, i32 0), !dbg !1969
  br label %62, !dbg !1970

; <label>:43:                                     ; preds = %13, %1
  %44 = load i32, i32* @paste_verify_line_count, align 4, !dbg !1971
  %45 = icmp sgt i32 %44, 0, !dbg !1974
  br i1 %45, label %46, label %60, !dbg !1975

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* @paste_line_count, align 4, !dbg !1976
  %48 = load i32, i32* @paste_verify_line_count, align 4, !dbg !1977
  %49 = icmp sge i32 %47, %48, !dbg !1978
  br i1 %49, label %54, label %50, !dbg !1979

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %3, align 4, !dbg !1980
  %52 = load i32, i32* @paste_verify_line_count, align 4, !dbg !1981
  %53 = icmp sgt i32 %51, %52, !dbg !1982
  br i1 %53, label %54, label %60, !dbg !1983

; <label>:54:                                     ; preds = %50, %46
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1984
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 5, !dbg !1985
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %56, align 8, !dbg !1985
  %58 = icmp ne %struct._WI_ITEM_REC* %57, null, !dbg !1986
  br i1 %58, label %59, label %60, !dbg !1987

; <label>:59:                                     ; preds = %54
  call void @insert_paste_prompt(), !dbg !1989
  br label %61, !dbg !1989

; <label>:60:                                     ; preds = %54, %50, %43
  call void @paste_flush(i32 1), !dbg !1990
  br label %61

; <label>:61:                                     ; preds = %60, %59
  br label %62

; <label>:62:                                     ; preds = %61, %40
  store i32 -1, i32* @paste_timeout_id, align 4, !dbg !1991
  ret i32 0, !dbg !1992
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._GArray* @g_array_remove_range(%struct._GArray*, i32, i32) #2

declare %struct._GArray* @g_array_set_size(%struct._GArray*, i32) #2

declare void @gui_entry_set_text(%struct.GUI_ENTRY_REC*, i8*) #2

declare void @gui_entry_set_pos(%struct.GUI_ENTRY_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @paste_send() #0 !dbg !1993 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct._GString*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %1, metadata !1994, metadata !588), !dbg !1995
  call void @llvm.dbg.declare(metadata %struct._GString** %2, metadata !1996, metadata !588), !dbg !1997
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !1998, metadata !588), !dbg !2002
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2003, metadata !588), !dbg !2004
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2005, metadata !588), !dbg !2006
  %6 = load i32, i32* @paste_join_multiline, align 4, !dbg !2007
  %7 = icmp ne i32 %6, 0, !dbg !2007
  br i1 %7, label %8, label %10, !dbg !2009

; <label>:8:                                      ; preds = %0
  %9 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2010
  call void @paste_buffer_join_lines(%struct._GArray* %9), !dbg !2011
  br label %10, !dbg !2011

; <label>:10:                                     ; preds = %8, %0
  %11 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2012
  %12 = getelementptr inbounds %struct._GArray, %struct._GArray* %11, i32 0, i32 0, !dbg !2013
  %13 = load i8*, i8** %12, align 8, !dbg !2013
  %14 = bitcast i8* %13 to i32*, !dbg !2014
  store i32* %14, i32** %1, align 8, !dbg !2015
  %15 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2016
  %16 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %15, i32 0, i32 0, !dbg !2018
  %17 = load i32, i32* %16, align 8, !dbg !2018
  %18 = icmp eq i32 %17, 0, !dbg !2019
  br i1 %18, label %19, label %20, !dbg !2020

; <label>:19:                                     ; preds = %10
  store i32 0, i32* %5, align 4, !dbg !2021
  br label %59, !dbg !2022

; <label>:20:                                     ; preds = %10
  store i32 0, i32* %5, align 4, !dbg !2023
  br label %21, !dbg !2026

; <label>:21:                                     ; preds = %51, %20
  %22 = load i32, i32* %5, align 4, !dbg !2027
  %23 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2030
  %24 = getelementptr inbounds %struct._GArray, %struct._GArray* %23, i32 0, i32 1, !dbg !2031
  %25 = load i32, i32* %24, align 8, !dbg !2031
  %26 = icmp ult i32 %22, %25, !dbg !2032
  br i1 %26, label %27, label %54, !dbg !2033

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %5, align 4, !dbg !2034
  %29 = zext i32 %28 to i64, !dbg !2037
  %30 = load i32*, i32** %1, align 8, !dbg !2037
  %31 = getelementptr inbounds i32, i32* %30, i64 %29, !dbg !2037
  %32 = load i32, i32* %31, align 4, !dbg !2037
  %33 = icmp eq i32 %32, 13, !dbg !2038
  br i1 %33, label %41, label %34, !dbg !2039

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %5, align 4, !dbg !2040
  %36 = zext i32 %35 to i64, !dbg !2042
  %37 = load i32*, i32** %1, align 8, !dbg !2042
  %38 = getelementptr inbounds i32, i32* %37, i64 %36, !dbg !2042
  %39 = load i32, i32* %38, align 4, !dbg !2042
  %40 = icmp eq i32 %39, 10, !dbg !2043
  br i1 %40, label %41, label %44, !dbg !2044

; <label>:41:                                     ; preds = %34, %27
  %42 = load i32, i32* %5, align 4, !dbg !2045
  %43 = add i32 %42, 1, !dbg !2045
  store i32 %43, i32* %5, align 4, !dbg !2045
  br label %54, !dbg !2047

; <label>:44:                                     ; preds = %34
  %45 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2048
  %46 = load i32, i32* %5, align 4, !dbg !2049
  %47 = zext i32 %46 to i64, !dbg !2050
  %48 = load i32*, i32** %1, align 8, !dbg !2050
  %49 = getelementptr inbounds i32, i32* %48, i64 %47, !dbg !2050
  %50 = load i32, i32* %49, align 4, !dbg !2050
  call void @gui_entry_insert_char(%struct.GUI_ENTRY_REC* %45, i32 %50), !dbg !2051
  br label %51, !dbg !2052

; <label>:51:                                     ; preds = %44
  %52 = load i32, i32* %5, align 4, !dbg !2053
  %53 = add i32 %52, 1, !dbg !2053
  store i32 %53, i32* %5, align 4, !dbg !2053
  br label %21, !dbg !2055, !llvm.loop !2056

; <label>:54:                                     ; preds = %41, %21
  %55 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2058
  %56 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %55), !dbg !2059
  store i8* %56, i8** %4, align 8, !dbg !2060
  %57 = load i8*, i8** %4, align 8, !dbg !2061
  call void @paste_send_line(i8* %57), !dbg !2062
  %58 = load i8*, i8** %4, align 8, !dbg !2063
  call void @g_free(i8* %58), !dbg !2064
  br label %59

; <label>:59:                                     ; preds = %54, %19
  %60 = call %struct._GString* @g_string_new(i8* null), !dbg !2065
  store %struct._GString* %60, %struct._GString** %2, align 8, !dbg !2066
  br label %61, !dbg !2067

; <label>:61:                                     ; preds = %150, %59
  %62 = load i32, i32* %5, align 4, !dbg !2068
  %63 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2072
  %64 = getelementptr inbounds %struct._GArray, %struct._GArray* %63, i32 0, i32 1, !dbg !2073
  %65 = load i32, i32* %64, align 8, !dbg !2073
  %66 = icmp ult i32 %62, %65, !dbg !2074
  br i1 %66, label %67, label %153, !dbg !2075

; <label>:67:                                     ; preds = %61
  %68 = load i32, i32* %5, align 4, !dbg !2076
  %69 = zext i32 %68 to i64, !dbg !2079
  %70 = load i32*, i32** %1, align 8, !dbg !2079
  %71 = getelementptr inbounds i32, i32* %70, i64 %69, !dbg !2079
  %72 = load i32, i32* %71, align 4, !dbg !2079
  %73 = icmp eq i32 %72, 13, !dbg !2080
  br i1 %73, label %81, label %74, !dbg !2081

; <label>:74:                                     ; preds = %67
  %75 = load i32, i32* %5, align 4, !dbg !2082
  %76 = zext i32 %75 to i64, !dbg !2084
  %77 = load i32*, i32** %1, align 8, !dbg !2084
  %78 = getelementptr inbounds i32, i32* %77, i64 %76, !dbg !2084
  %79 = load i32, i32* %78, align 4, !dbg !2084
  %80 = icmp eq i32 %79, 10, !dbg !2085
  br i1 %80, label %81, label %87, !dbg !2086

; <label>:81:                                     ; preds = %74, %67
  %82 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2087
  %83 = getelementptr inbounds %struct._GString, %struct._GString* %82, i32 0, i32 0, !dbg !2089
  %84 = load i8*, i8** %83, align 8, !dbg !2089
  call void @paste_send_line(i8* %84), !dbg !2090
  %85 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2091
  %86 = call %struct._GString* @g_string_truncate(%struct._GString* %85, i64 0), !dbg !2092
  br label %149, !dbg !2093

; <label>:87:                                     ; preds = %74
  %88 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2094
  %89 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %88, i32 0, i32 15, !dbg !2097
  %90 = load i8, i8* %89, align 4, !dbg !2097
  %91 = and i8 %90, 1, !dbg !2097
  %92 = zext i8 %91 to i32, !dbg !2097
  %93 = icmp ne i32 %92, 0, !dbg !2094
  br i1 %93, label %94, label %107, !dbg !2094

; <label>:94:                                     ; preds = %87
  %95 = load i32, i32* %5, align 4, !dbg !2098
  %96 = zext i32 %95 to i64, !dbg !2100
  %97 = load i32*, i32** %1, align 8, !dbg !2100
  %98 = getelementptr inbounds i32, i32* %97, i64 %96, !dbg !2100
  %99 = load i32, i32* %98, align 4, !dbg !2100
  %100 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !2101
  %101 = call i32 @g_unichar_to_utf8(i32 %99, i8* %100), !dbg !2102
  %102 = sext i32 %101 to i64, !dbg !2103
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %102, !dbg !2103
  store i8 0, i8* %103, align 1, !dbg !2104
  %104 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2105
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !2106
  %106 = call %struct._GString* @g_string_append(%struct._GString* %104, i8* %105), !dbg !2107
  br label %148, !dbg !2108

; <label>:107:                                    ; preds = %87
  %108 = load i32, i32* @term_type, align 4, !dbg !2109
  %109 = icmp eq i32 %108, 2, !dbg !2112
  br i1 %109, label %110, label %138, !dbg !2109

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %5, align 4, !dbg !2113
  %112 = zext i32 %111 to i64, !dbg !2116
  %113 = load i32*, i32** %1, align 8, !dbg !2116
  %114 = getelementptr inbounds i32, i32* %113, i64 %112, !dbg !2116
  %115 = load i32, i32* %114, align 4, !dbg !2116
  %116 = icmp ugt i32 %115, 255, !dbg !2117
  br i1 %116, label %117, label %128, !dbg !2118

; <label>:117:                                    ; preds = %110
  %118 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2119
  %119 = load i32, i32* %5, align 4, !dbg !2120
  %120 = zext i32 %119 to i64, !dbg !2121
  %121 = load i32*, i32** %1, align 8, !dbg !2121
  %122 = getelementptr inbounds i32, i32* %121, i64 %120, !dbg !2121
  %123 = load i32, i32* %122, align 4, !dbg !2121
  %124 = lshr i32 %123, 8, !dbg !2122
  %125 = and i32 %124, 255, !dbg !2123
  %126 = trunc i32 %125 to i8, !dbg !2124
  %127 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %118, i8 signext %126), !dbg !2125
  br label %128, !dbg !2125

; <label>:128:                                    ; preds = %117, %110
  %129 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2126
  %130 = load i32, i32* %5, align 4, !dbg !2127
  %131 = zext i32 %130 to i64, !dbg !2128
  %132 = load i32*, i32** %1, align 8, !dbg !2128
  %133 = getelementptr inbounds i32, i32* %132, i64 %131, !dbg !2128
  %134 = load i32, i32* %133, align 4, !dbg !2128
  %135 = and i32 %134, 255, !dbg !2129
  %136 = trunc i32 %135 to i8, !dbg !2128
  %137 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %129, i8 signext %136), !dbg !2130
  br label %147, !dbg !2131

; <label>:138:                                    ; preds = %107
  %139 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2132
  %140 = load i32, i32* %5, align 4, !dbg !2134
  %141 = zext i32 %140 to i64, !dbg !2135
  %142 = load i32*, i32** %1, align 8, !dbg !2135
  %143 = getelementptr inbounds i32, i32* %142, i64 %141, !dbg !2135
  %144 = load i32, i32* %143, align 4, !dbg !2135
  %145 = trunc i32 %144 to i8, !dbg !2135
  %146 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %139, i8 signext %145), !dbg !2136
  br label %147

; <label>:147:                                    ; preds = %138, %128
  br label %148

; <label>:148:                                    ; preds = %147, %94
  br label %149

; <label>:149:                                    ; preds = %148, %81
  br label %150, !dbg !2137

; <label>:150:                                    ; preds = %149
  %151 = load i32, i32* %5, align 4, !dbg !2138
  %152 = add i32 %151, 1, !dbg !2138
  store i32 %152, i32* %5, align 4, !dbg !2138
  br label %61, !dbg !2140, !llvm.loop !2141

; <label>:153:                                    ; preds = %61
  %154 = load i32, i32* @paste_was_bracketed_mode, align 4, !dbg !2142
  %155 = icmp ne i32 %154, 0, !dbg !2142
  br i1 %155, label %156, label %161, !dbg !2144

; <label>:156:                                    ; preds = %153
  %157 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2145
  %158 = getelementptr inbounds %struct._GString, %struct._GString* %157, i32 0, i32 0, !dbg !2147
  %159 = load i8*, i8** %158, align 8, !dbg !2147
  call void @paste_send_line(i8* %159), !dbg !2148
  %160 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2149
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %160, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !2150
  br label %166, !dbg !2151

; <label>:161:                                    ; preds = %153
  %162 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2152
  %163 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2154
  %164 = getelementptr inbounds %struct._GString, %struct._GString* %163, i32 0, i32 0, !dbg !2155
  %165 = load i8*, i8** %164, align 8, !dbg !2155
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %162, i8* %165), !dbg !2156
  br label %166

; <label>:166:                                    ; preds = %161, %156
  %167 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2157
  %168 = call i8* @g_string_free(%struct._GString* %167, i32 1), !dbg !2158
  ret void, !dbg !2159
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #2

declare void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC*, i8*) #2

declare void @gui_entry_redraw(%struct.GUI_ENTRY_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @paste_buffer_join_lines(%struct._GArray*) #0 !dbg !2160 {
  %2 = alloca %struct._GArray*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct._GArray* %0, %struct._GArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GArray** %2, metadata !2163, metadata !588), !dbg !2164
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2165, metadata !588), !dbg !2166
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2167, metadata !588), !dbg !2168
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2169, metadata !588), !dbg !2170
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2171, metadata !588), !dbg !2172
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2173, metadata !588), !dbg !2174
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2175, metadata !588), !dbg !2176
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2177, metadata !588), !dbg !2178
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2179, metadata !588), !dbg !2180
  %11 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2181
  %12 = getelementptr inbounds %struct._GArray, %struct._GArray* %11, i32 0, i32 1, !dbg !2183
  %13 = load i32, i32* %12, align 8, !dbg !2183
  %14 = icmp eq i32 %13, 0, !dbg !2184
  br i1 %14, label %15, label %16, !dbg !2185

; <label>:15:                                     ; preds = %1
  br label %271, !dbg !2186

; <label>:16:                                     ; preds = %1
  %17 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2187
  %18 = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 0, !dbg !2188
  %19 = load i8*, i8** %18, align 8, !dbg !2188
  %20 = bitcast i8* %19 to i32*, !dbg !2189
  store i32* %20, i32** %7, align 8, !dbg !2190
  %21 = load i32*, i32** %7, align 8, !dbg !2191
  %22 = getelementptr inbounds i32, i32* %21, i64 0, !dbg !2191
  %23 = load i32, i32* %22, align 4, !dbg !2191
  %24 = sext i32 %23 to i64, !dbg !2193
  %25 = call i16** @__ctype_b_loc() #1, !dbg !2194
  %26 = load i16*, i16** %25, align 8, !dbg !2195
  %27 = getelementptr inbounds i16, i16* %26, i64 %24, !dbg !2193
  %28 = load i16, i16* %27, align 2, !dbg !2193
  %29 = zext i16 %28 to i32, !dbg !2193
  %30 = and i32 %29, 1, !dbg !2196
  %31 = icmp ne i32 %30, 0, !dbg !2196
  br i1 %31, label %32, label %33, !dbg !2197

; <label>:32:                                     ; preds = %16
  br label %271, !dbg !2198

; <label>:33:                                     ; preds = %16
  store i32 1, i32* %3, align 4, !dbg !2199
  br label %34, !dbg !2201

; <label>:34:                                     ; preds = %64, %33
  %35 = load i32, i32* %3, align 4, !dbg !2202
  %36 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2205
  %37 = getelementptr inbounds %struct._GArray, %struct._GArray* %36, i32 0, i32 1, !dbg !2206
  %38 = load i32, i32* %37, align 8, !dbg !2206
  %39 = icmp ult i32 %35, %38, !dbg !2207
  br i1 %39, label %40, label %67, !dbg !2208

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %3, align 4, !dbg !2209
  %42 = sub i32 %41, 1, !dbg !2212
  %43 = zext i32 %42 to i64, !dbg !2213
  %44 = load i32*, i32** %7, align 8, !dbg !2213
  %45 = getelementptr inbounds i32, i32* %44, i64 %43, !dbg !2213
  %46 = load i32, i32* %45, align 4, !dbg !2213
  %47 = icmp eq i32 %46, 10, !dbg !2214
  br i1 %47, label %48, label %63, !dbg !2215

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %3, align 4, !dbg !2216
  %50 = zext i32 %49 to i64, !dbg !2218
  %51 = load i32*, i32** %7, align 8, !dbg !2218
  %52 = getelementptr inbounds i32, i32* %51, i64 %50, !dbg !2218
  %53 = load i32, i32* %52, align 4, !dbg !2218
  %54 = sext i32 %53 to i64, !dbg !2219
  %55 = call i16** @__ctype_b_loc() #1, !dbg !2220
  %56 = load i16*, i16** %55, align 8, !dbg !2221
  %57 = getelementptr inbounds i16, i16* %56, i64 %54, !dbg !2219
  %58 = load i16, i16* %57, align 2, !dbg !2219
  %59 = zext i16 %58 to i32, !dbg !2219
  %60 = and i32 %59, 1, !dbg !2216
  %61 = icmp ne i32 %60, 0, !dbg !2216
  br i1 %61, label %62, label %63, !dbg !2222

; <label>:62:                                     ; preds = %48
  br label %67, !dbg !2223

; <label>:63:                                     ; preds = %48, %40
  br label %64, !dbg !2224

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %3, align 4, !dbg !2225
  %66 = add i32 %65, 1, !dbg !2225
  store i32 %66, i32* %3, align 4, !dbg !2225
  br label %34, !dbg !2227, !llvm.loop !2228

; <label>:67:                                     ; preds = %62, %34
  %68 = load i32, i32* %3, align 4, !dbg !2230
  %69 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2232
  %70 = getelementptr inbounds %struct._GArray, %struct._GArray* %69, i32 0, i32 1, !dbg !2233
  %71 = load i32, i32* %70, align 8, !dbg !2233
  %72 = icmp eq i32 %68, %71, !dbg !2234
  br i1 %72, label %73, label %74, !dbg !2235

; <label>:73:                                     ; preds = %67
  br label %271, !dbg !2236

; <label>:74:                                     ; preds = %67
  store i32 0, i32* %5, align 4, !dbg !2237
  br label %75, !dbg !2239

; <label>:75:                                     ; preds = %97, %74
  %76 = load i32, i32* %3, align 4, !dbg !2240
  %77 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2243
  %78 = getelementptr inbounds %struct._GArray, %struct._GArray* %77, i32 0, i32 1, !dbg !2244
  %79 = load i32, i32* %78, align 8, !dbg !2244
  %80 = icmp ult i32 %76, %79, !dbg !2245
  br i1 %80, label %81, label %102, !dbg !2246

; <label>:81:                                     ; preds = %75
  %82 = load i32, i32* %3, align 4, !dbg !2247
  %83 = zext i32 %82 to i64, !dbg !2250
  %84 = load i32*, i32** %7, align 8, !dbg !2250
  %85 = getelementptr inbounds i32, i32* %84, i64 %83, !dbg !2250
  %86 = load i32, i32* %85, align 4, !dbg !2250
  %87 = sext i32 %86 to i64, !dbg !2251
  %88 = call i16** @__ctype_b_loc() #1, !dbg !2252
  %89 = load i16*, i16** %88, align 8, !dbg !2253
  %90 = getelementptr inbounds i16, i16* %89, i64 %87, !dbg !2251
  %91 = load i16, i16* %90, align 2, !dbg !2251
  %92 = zext i16 %91 to i32, !dbg !2251
  %93 = and i32 %92, 1, !dbg !2247
  %94 = icmp ne i32 %93, 0, !dbg !2247
  br i1 %94, label %96, label %95, !dbg !2254

; <label>:95:                                     ; preds = %81
  br label %102, !dbg !2255

; <label>:96:                                     ; preds = %81
  br label %97, !dbg !2256

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %3, align 4, !dbg !2257
  %99 = add i32 %98, 1, !dbg !2257
  store i32 %99, i32* %3, align 4, !dbg !2257
  %100 = load i32, i32* %5, align 4, !dbg !2259
  %101 = add i32 %100, 1, !dbg !2259
  store i32 %101, i32* %5, align 4, !dbg !2259
  br label %75, !dbg !2260, !llvm.loop !2261

; <label>:102:                                    ; preds = %95, %75
  %103 = load i32, i32* %3, align 4, !dbg !2263
  %104 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2265
  %105 = getelementptr inbounds %struct._GArray, %struct._GArray* %104, i32 0, i32 1, !dbg !2266
  %106 = load i32, i32* %105, align 8, !dbg !2266
  %107 = icmp eq i32 %103, %106, !dbg !2267
  br i1 %107, label %108, label %109, !dbg !2268

; <label>:108:                                    ; preds = %102
  br label %271, !dbg !2269

; <label>:109:                                    ; preds = %102
  %110 = load i32, i32* %5, align 4, !dbg !2270
  store i32 %110, i32* %4, align 4, !dbg !2271
  store i32 1, i32* %10, align 4, !dbg !2272
  br label %111, !dbg !2273

; <label>:111:                                    ; preds = %156, %109
  %112 = load i32, i32* %3, align 4, !dbg !2274
  %113 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2278
  %114 = getelementptr inbounds %struct._GArray, %struct._GArray* %113, i32 0, i32 1, !dbg !2279
  %115 = load i32, i32* %114, align 8, !dbg !2279
  %116 = icmp ult i32 %112, %115, !dbg !2280
  br i1 %116, label %117, label %159, !dbg !2281

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %10, align 4, !dbg !2282
  %119 = icmp ne i32 %118, 0, !dbg !2282
  br i1 %119, label %120, label %147, !dbg !2285

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %3, align 4, !dbg !2286
  %122 = zext i32 %121 to i64, !dbg !2289
  %123 = load i32*, i32** %7, align 8, !dbg !2289
  %124 = getelementptr inbounds i32, i32* %123, i64 %122, !dbg !2289
  %125 = load i32, i32* %124, align 4, !dbg !2289
  %126 = sext i32 %125 to i64, !dbg !2290
  %127 = call i16** @__ctype_b_loc() #1, !dbg !2291
  %128 = load i16*, i16** %127, align 8, !dbg !2292
  %129 = getelementptr inbounds i16, i16* %128, i64 %126, !dbg !2290
  %130 = load i16, i16* %129, align 2, !dbg !2290
  %131 = zext i16 %130 to i32, !dbg !2290
  %132 = and i32 %131, 1, !dbg !2286
  %133 = icmp ne i32 %132, 0, !dbg !2286
  br i1 %133, label %134, label %137, !dbg !2293

; <label>:134:                                    ; preds = %120
  %135 = load i32, i32* %4, align 4, !dbg !2294
  %136 = add i32 %135, 1, !dbg !2294
  store i32 %136, i32* %4, align 4, !dbg !2294
  br label %146, !dbg !2295

; <label>:137:                                    ; preds = %120
  store i32 0, i32* %10, align 4, !dbg !2296
  %138 = load i32, i32* %4, align 4, !dbg !2298
  %139 = icmp ne i32 %138, 0, !dbg !2300
  br i1 %139, label %140, label %145, !dbg !2301

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* %4, align 4, !dbg !2302
  %142 = load i32, i32* %5, align 4, !dbg !2304
  %143 = icmp ne i32 %141, %142, !dbg !2305
  br i1 %143, label %144, label %145, !dbg !2306

; <label>:144:                                    ; preds = %140
  br label %271, !dbg !2307

; <label>:145:                                    ; preds = %140, %137
  store i32 0, i32* %4, align 4, !dbg !2308
  br label %146

; <label>:146:                                    ; preds = %145, %134
  br label %147, !dbg !2309

; <label>:147:                                    ; preds = %146, %117
  %148 = load i32, i32* %3, align 4, !dbg !2310
  %149 = zext i32 %148 to i64, !dbg !2312
  %150 = load i32*, i32** %7, align 8, !dbg !2312
  %151 = getelementptr inbounds i32, i32* %150, i64 %149, !dbg !2312
  %152 = load i32, i32* %151, align 4, !dbg !2312
  %153 = icmp eq i32 %152, 10, !dbg !2313
  br i1 %153, label %154, label %155, !dbg !2314

; <label>:154:                                    ; preds = %147
  store i32 1, i32* %10, align 4, !dbg !2315
  br label %155, !dbg !2316

; <label>:155:                                    ; preds = %154, %147
  br label %156, !dbg !2317

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %3, align 4, !dbg !2318
  %158 = add i32 %157, 1, !dbg !2318
  store i32 %158, i32* %3, align 4, !dbg !2318
  br label %111, !dbg !2320, !llvm.loop !2321

; <label>:159:                                    ; preds = %111
  %160 = load i32*, i32** %7, align 8, !dbg !2322
  store i32* %160, i32** %8, align 8, !dbg !2323
  store i32 1, i32* %10, align 4, !dbg !2324
  store i32* null, i32** %9, align 8, !dbg !2325
  store i32 0, i32* %6, align 4, !dbg !2326
  store i32 0, i32* %3, align 4, !dbg !2327
  br label %161, !dbg !2329

; <label>:161:                                    ; preds = %258, %159
  %162 = load i32, i32* %3, align 4, !dbg !2330
  %163 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2333
  %164 = getelementptr inbounds %struct._GArray, %struct._GArray* %163, i32 0, i32 1, !dbg !2334
  %165 = load i32, i32* %164, align 8, !dbg !2334
  %166 = icmp ult i32 %162, %165, !dbg !2335
  br i1 %166, label %167, label %261, !dbg !2336

; <label>:167:                                    ; preds = %161
  %168 = load i32, i32* %10, align 4, !dbg !2337
  %169 = icmp ne i32 %168, 0, !dbg !2337
  br i1 %169, label %170, label %185, !dbg !2340

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %3, align 4, !dbg !2341
  %172 = zext i32 %171 to i64, !dbg !2343
  %173 = load i32*, i32** %7, align 8, !dbg !2343
  %174 = getelementptr inbounds i32, i32* %173, i64 %172, !dbg !2343
  %175 = load i32, i32* %174, align 4, !dbg !2343
  %176 = sext i32 %175 to i64, !dbg !2344
  %177 = call i16** @__ctype_b_loc() #1, !dbg !2345
  %178 = load i16*, i16** %177, align 8, !dbg !2346
  %179 = getelementptr inbounds i16, i16* %178, i64 %176, !dbg !2344
  %180 = load i16, i16* %179, align 2, !dbg !2344
  %181 = zext i16 %180 to i32, !dbg !2344
  %182 = and i32 %181, 1, !dbg !2341
  %183 = icmp ne i32 %182, 0, !dbg !2341
  br i1 %183, label %184, label %185, !dbg !2347

; <label>:184:                                    ; preds = %170
  br label %257, !dbg !2348

; <label>:185:                                    ; preds = %170, %167
  %186 = load i32, i32* %3, align 4, !dbg !2350
  %187 = zext i32 %186 to i64, !dbg !2353
  %188 = load i32*, i32** %7, align 8, !dbg !2353
  %189 = getelementptr inbounds i32, i32* %188, i64 %187, !dbg !2353
  %190 = load i32, i32* %189, align 4, !dbg !2353
  %191 = icmp eq i32 %190, 10, !dbg !2354
  br i1 %191, label %192, label %225, !dbg !2353

; <label>:192:                                    ; preds = %185
  %193 = load i32, i32* %10, align 4, !dbg !2355
  %194 = icmp ne i32 %193, 0, !dbg !2355
  br i1 %194, label %221, label %195, !dbg !2358

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %3, align 4, !dbg !2359
  %197 = add i32 %196, 1, !dbg !2361
  %198 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2362
  %199 = getelementptr inbounds %struct._GArray, %struct._GArray* %198, i32 0, i32 1, !dbg !2363
  %200 = load i32, i32* %199, align 8, !dbg !2363
  %201 = icmp ne i32 %197, %200, !dbg !2364
  br i1 %201, label %202, label %221, !dbg !2365

; <label>:202:                                    ; preds = %195
  %203 = load i32, i32* %3, align 4, !dbg !2366
  %204 = add i32 %203, 1, !dbg !2367
  %205 = zext i32 %204 to i64, !dbg !2368
  %206 = load i32*, i32** %7, align 8, !dbg !2368
  %207 = getelementptr inbounds i32, i32* %206, i64 %205, !dbg !2368
  %208 = load i32, i32* %207, align 4, !dbg !2368
  %209 = sext i32 %208 to i64, !dbg !2369
  %210 = call i16** @__ctype_b_loc() #1, !dbg !2370
  %211 = load i16*, i16** %210, align 8, !dbg !2371
  %212 = getelementptr inbounds i16, i16* %211, i64 %209, !dbg !2369
  %213 = load i16, i16* %212, align 2, !dbg !2369
  %214 = zext i16 %213 to i32, !dbg !2369
  %215 = and i32 %214, 1, !dbg !2366
  %216 = icmp ne i32 %215, 0, !dbg !2366
  br i1 %216, label %217, label %221, !dbg !2372

; <label>:217:                                    ; preds = %202
  %218 = load i32*, i32** %8, align 8, !dbg !2374
  store i32* %218, i32** %9, align 8, !dbg !2376
  %219 = load i32*, i32** %8, align 8, !dbg !2377
  %220 = getelementptr inbounds i32, i32* %219, i32 1, !dbg !2377
  store i32* %220, i32** %8, align 8, !dbg !2377
  store i32 32, i32* %219, align 4, !dbg !2378
  br label %224, !dbg !2379

; <label>:221:                                    ; preds = %202, %195, %192
  %222 = load i32*, i32** %8, align 8, !dbg !2380
  %223 = getelementptr inbounds i32, i32* %222, i32 1, !dbg !2380
  store i32* %223, i32** %8, align 8, !dbg !2380
  store i32 10, i32* %222, align 4, !dbg !2382
  store i32 0, i32* %6, align 4, !dbg !2383
  store i32* null, i32** %9, align 8, !dbg !2384
  br label %224

; <label>:224:                                    ; preds = %221, %217
  store i32 1, i32* %10, align 4, !dbg !2385
  br label %256, !dbg !2386

; <label>:225:                                    ; preds = %185
  store i32 0, i32* %10, align 4, !dbg !2387
  %226 = load i32, i32* %6, align 4, !dbg !2389
  %227 = add i32 %226, 1, !dbg !2389
  store i32 %227, i32* %6, align 4, !dbg !2389
  %228 = icmp uge i32 %227, 400, !dbg !2391
  br i1 %228, label %229, label %248, !dbg !2392

; <label>:229:                                    ; preds = %225
  %230 = load i32*, i32** %9, align 8, !dbg !2393
  %231 = icmp ne i32* %230, null, !dbg !2395
  br i1 %231, label %232, label %248, !dbg !2396

; <label>:232:                                    ; preds = %229
  %233 = load i32*, i32** %9, align 8, !dbg !2397
  %234 = getelementptr inbounds i32, i32* %233, i64 1, !dbg !2399
  %235 = bitcast i32* %234 to i8*, !dbg !2400
  %236 = load i32*, i32** %9, align 8, !dbg !2401
  %237 = bitcast i32* %236 to i8*, !dbg !2400
  %238 = load i32*, i32** %8, align 8, !dbg !2402
  %239 = load i32*, i32** %9, align 8, !dbg !2403
  %240 = ptrtoint i32* %238 to i64, !dbg !2404
  %241 = ptrtoint i32* %239 to i64, !dbg !2404
  %242 = sub i64 %240, %241, !dbg !2404
  %243 = sdiv exact i64 %242, 4, !dbg !2404
  %244 = mul i64 %243, 4, !dbg !2405
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %235, i8* %237, i64 %244, i32 4, i1 false), !dbg !2400
  %245 = load i32*, i32** %9, align 8, !dbg !2406
  store i32 10, i32* %245, align 4, !dbg !2407
  store i32* null, i32** %9, align 8, !dbg !2408
  store i32 0, i32* %6, align 4, !dbg !2409
  %246 = load i32*, i32** %8, align 8, !dbg !2410
  %247 = getelementptr inbounds i32, i32* %246, i32 1, !dbg !2410
  store i32* %247, i32** %8, align 8, !dbg !2410
  br label %248, !dbg !2411

; <label>:248:                                    ; preds = %232, %229, %225
  %249 = load i32, i32* %3, align 4, !dbg !2412
  %250 = zext i32 %249 to i64, !dbg !2413
  %251 = load i32*, i32** %7, align 8, !dbg !2413
  %252 = getelementptr inbounds i32, i32* %251, i64 %250, !dbg !2413
  %253 = load i32, i32* %252, align 4, !dbg !2413
  %254 = load i32*, i32** %8, align 8, !dbg !2414
  %255 = getelementptr inbounds i32, i32* %254, i32 1, !dbg !2414
  store i32* %255, i32** %8, align 8, !dbg !2414
  store i32 %253, i32* %254, align 4, !dbg !2415
  br label %256

; <label>:256:                                    ; preds = %248, %224
  br label %257

; <label>:257:                                    ; preds = %256, %184
  br label %258, !dbg !2416

; <label>:258:                                    ; preds = %257
  %259 = load i32, i32* %3, align 4, !dbg !2417
  %260 = add i32 %259, 1, !dbg !2417
  store i32 %260, i32* %3, align 4, !dbg !2417
  br label %161, !dbg !2419, !llvm.loop !2420

; <label>:261:                                    ; preds = %161
  %262 = load %struct._GArray*, %struct._GArray** %2, align 8, !dbg !2422
  %263 = load i32*, i32** %8, align 8, !dbg !2423
  %264 = load i32*, i32** %7, align 8, !dbg !2424
  %265 = ptrtoint i32* %263 to i64, !dbg !2425
  %266 = ptrtoint i32* %264 to i64, !dbg !2425
  %267 = sub i64 %265, %266, !dbg !2425
  %268 = sdiv exact i64 %267, 4, !dbg !2425
  %269 = trunc i64 %268 to i32, !dbg !2423
  %270 = call %struct._GArray* @g_array_set_size(%struct._GArray* %262, i32 %269), !dbg !2426
  br label %271, !dbg !2427

; <label>:271:                                    ; preds = %261, %144, %108, %73, %32, %15
  ret void, !dbg !2428
}

declare void @gui_entry_insert_char(%struct.GUI_ENTRY_REC*, i32) #2

declare i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @paste_send_line(i8*) #0 !dbg !2430 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2433, metadata !588), !dbg !2434
  %3 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2435
  %4 = call %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC* %3), !dbg !2436
  %5 = load i8*, i8** %2, align 8, !dbg !2437
  call void @command_history_add(%struct.HISTORY_REC* %4, i8* %5), !dbg !2438
  %6 = load i8*, i8** %2, align 8, !dbg !2440
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2441
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 6, !dbg !2442
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !2442
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2443
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 5, !dbg !2444
  %12 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %11, align 8, !dbg !2444
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i32 3, i8* %6, %struct._SERVER_REC* %9, %struct._WI_ITEM_REC* %12), !dbg !2445
  ret void, !dbg !2446
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i32 @g_unichar_to_utf8(i32, i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #3 !dbg !2447 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2450, metadata !588), !dbg !2451
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2452, metadata !588), !dbg !2453
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2454
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !2456
  %7 = load i64, i64* %6, align 8, !dbg !2456
  %8 = add i64 %7, 1, !dbg !2457
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2458
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !2459
  %11 = load i64, i64* %10, align 8, !dbg !2459
  %12 = icmp ult i64 %8, %11, !dbg !2460
  br i1 %12, label %13, label %30, !dbg !2461

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !2462
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2464
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !2465
  %17 = load i64, i64* %16, align 8, !dbg !2466
  %18 = add i64 %17, 1, !dbg !2466
  store i64 %18, i64* %16, align 8, !dbg !2466
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2467
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !2468
  %21 = load i8*, i8** %20, align 8, !dbg !2468
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !2467
  store i8 %14, i8* %22, align 1, !dbg !2469
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2470
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !2471
  %25 = load i64, i64* %24, align 8, !dbg !2471
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2472
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !2473
  %28 = load i8*, i8** %27, align 8, !dbg !2473
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !2472
  store i8 0, i8* %29, align 1, !dbg !2474
  br label %34, !dbg !2475

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2476
  %32 = load i8, i8* %4, align 1, !dbg !2477
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !2478
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2479
  ret %struct._GString* %35, !dbg !2480
}

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @command_history_add(%struct.HISTORY_REC*, i8*) #2

declare %struct.HISTORY_REC* @command_history_current(%struct._WINDOW_REC*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

; Function Attrs: nounwind uwtable
define internal void @paste_bracketed_middle() #0 !dbg !2481 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2482, metadata !588), !dbg !2483
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2484, metadata !588), !dbg !2485
  store i32 6, i32* %2, align 4, !dbg !2485
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2486, metadata !588), !dbg !2487
  %5 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2488
  %6 = getelementptr inbounds %struct._GArray, %struct._GArray* %5, i32 0, i32 1, !dbg !2489
  %7 = load i32, i32* %6, align 8, !dbg !2489
  %8 = load i32, i32* %2, align 4, !dbg !2490
  %9 = sub i32 %7, %8, !dbg !2491
  store i32 %9, i32* %3, align 4, !dbg !2487
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2492, metadata !588), !dbg !2493
  %10 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2494
  %11 = getelementptr inbounds %struct._GArray, %struct._GArray* %10, i32 0, i32 0, !dbg !2495
  %12 = load i8*, i8** %11, align 8, !dbg !2495
  %13 = bitcast i8* %12 to i32*, !dbg !2496
  store i32* %13, i32** %4, align 8, !dbg !2493
  %14 = load i32, i32* %3, align 4, !dbg !2497
  %15 = icmp slt i32 %14, 0, !dbg !2499
  br i1 %15, label %16, label %17, !dbg !2500

; <label>:16:                                     ; preds = %0
  br label %73, !dbg !2501

; <label>:17:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !2503
  br label %18, !dbg !2505

; <label>:18:                                     ; preds = %68, %17
  %19 = load i32, i32* %1, align 4, !dbg !2506
  %20 = load i32, i32* %3, align 4, !dbg !2509
  %21 = icmp sle i32 %19, %20, !dbg !2510
  br i1 %21, label %22, label %73, !dbg !2511

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %4, align 8, !dbg !2512
  %24 = getelementptr inbounds i32, i32* %23, i64 0, !dbg !2512
  %25 = load i32, i32* %24, align 4, !dbg !2512
  %26 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @bp_end, i64 0, i64 0), align 16, !dbg !2515
  %27 = icmp eq i32 %25, %26, !dbg !2516
  br i1 %27, label %28, label %67, !dbg !2517

; <label>:28:                                     ; preds = %22
  %29 = load i32*, i32** %4, align 8, !dbg !2518
  %30 = bitcast i32* %29 to i8*, !dbg !2518
  %31 = call i32 @memcmp(i8* %30, i8* bitcast ([6 x i32]* @bp_end to i8*), i64 24) #8, !dbg !2520
  %32 = icmp eq i32 %31, 0, !dbg !2521
  br i1 %32, label %33, label %67, !dbg !2522

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %1, align 4, !dbg !2523
  %35 = load i32, i32* %3, align 4, !dbg !2526
  %36 = load i32, i32* %2, align 4, !dbg !2527
  %37 = sub nsw i32 %35, %36, !dbg !2528
  %38 = icmp sle i32 %34, %37, !dbg !2529
  br i1 %38, label %39, label %61, !dbg !2530

; <label>:39:                                     ; preds = %33
  %40 = load i32*, i32** %4, align 8, !dbg !2531
  %41 = load i32, i32* %2, align 4, !dbg !2532
  %42 = sext i32 %41 to i64, !dbg !2533
  %43 = getelementptr inbounds i32, i32* %40, i64 %42, !dbg !2533
  %44 = bitcast i32* %43 to i8*, !dbg !2531
  %45 = call i32 @memcmp(i8* %44, i8* bitcast ([6 x i32]* @bp_start to i8*), i64 24) #8, !dbg !2534
  %46 = icmp eq i32 %45, 0, !dbg !2535
  br i1 %46, label %47, label %61, !dbg !2536

; <label>:47:                                     ; preds = %39
  %48 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2538
  %49 = load i32, i32* %1, align 4, !dbg !2540
  %50 = load i32, i32* %2, align 4, !dbg !2541
  %51 = mul nsw i32 %50, 2, !dbg !2542
  %52 = call %struct._GArray* @g_array_remove_range(%struct._GArray* %48, i32 %49, i32 %51), !dbg !2543
  %53 = load i32, i32* %2, align 4, !dbg !2544
  %54 = mul nsw i32 %53, 2, !dbg !2545
  %55 = load i32, i32* %3, align 4, !dbg !2546
  %56 = sub nsw i32 %55, %54, !dbg !2546
  store i32 %56, i32* %3, align 4, !dbg !2546
  %57 = load i32, i32* %1, align 4, !dbg !2547
  %58 = add nsw i32 %57, -1, !dbg !2547
  store i32 %58, i32* %1, align 4, !dbg !2547
  %59 = load i32*, i32** %4, align 8, !dbg !2548
  %60 = getelementptr inbounds i32, i32* %59, i32 -1, !dbg !2548
  store i32* %60, i32** %4, align 8, !dbg !2548
  br label %68, !dbg !2549

; <label>:61:                                     ; preds = %39, %33
  %62 = load i32, i32* %1, align 4, !dbg !2550
  %63 = load i32, i32* %1, align 4, !dbg !2551
  %64 = load i32, i32* %3, align 4, !dbg !2552
  %65 = icmp ne i32 %63, %64, !dbg !2553
  %66 = zext i1 %65 to i32, !dbg !2553
  call void @paste_bracketed_end(i32 %62, i32 %66), !dbg !2554
  br label %73, !dbg !2555

; <label>:67:                                     ; preds = %28, %22
  br label %68, !dbg !2556

; <label>:68:                                     ; preds = %67, %47
  %69 = load i32, i32* %1, align 4, !dbg !2557
  %70 = add nsw i32 %69, 1, !dbg !2557
  store i32 %70, i32* %1, align 4, !dbg !2557
  %71 = load i32*, i32** %4, align 8, !dbg !2559
  %72 = getelementptr inbounds i32, i32* %71, i32 1, !dbg !2559
  store i32* %72, i32** %4, align 8, !dbg !2559
  br label %18, !dbg !2560, !llvm.loop !2561

; <label>:73:                                     ; preds = %16, %61, %18
  ret void, !dbg !2563
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal void @paste_bracketed_end(i32, i32) #0 !dbg !2564 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2567, metadata !588), !dbg !2568
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2569, metadata !588), !dbg !2570
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2571, metadata !588), !dbg !2572
  %8 = load i32, i32* %4, align 4, !dbg !2573
  %9 = icmp ne i32 %8, 0, !dbg !2573
  br i1 %9, label %10, label %34, !dbg !2575

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2576, metadata !588), !dbg !2578
  %11 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2579
  %12 = getelementptr inbounds %struct._GArray, %struct._GArray* %11, i32 0, i32 0, !dbg !2580
  %13 = load i8*, i8** %12, align 8, !dbg !2580
  %14 = bitcast i8* %13 to i32*, !dbg !2581
  %15 = load i32, i32* %3, align 4, !dbg !2582
  %16 = sext i32 %15 to i64, !dbg !2583
  %17 = getelementptr inbounds i32, i32* %14, i64 %16, !dbg !2583
  %18 = getelementptr inbounds i32, i32* %17, i64 6, !dbg !2584
  store i32* %18, i32** %6, align 8, !dbg !2578
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2585, metadata !588), !dbg !2586
  %19 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2587
  %20 = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1, !dbg !2588
  %21 = load i32, i32* %20, align 8, !dbg !2588
  %22 = load i32, i32* %3, align 4, !dbg !2589
  %23 = sub i32 %21, %22, !dbg !2590
  %24 = zext i32 %23 to i64, !dbg !2587
  %25 = sub i64 %24, 6, !dbg !2591
  %26 = trunc i64 %25 to i32, !dbg !2587
  store i32 %26, i32* %7, align 4, !dbg !2586
  %27 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !2592
  %28 = call %struct._GArray* @g_array_set_size(%struct._GArray* %27, i32 0), !dbg !2593
  %29 = load %struct._GArray*, %struct._GArray** @paste_buffer_rest, align 8, !dbg !2594
  %30 = load i32*, i32** %6, align 8, !dbg !2595
  %31 = bitcast i32* %30 to i8*, !dbg !2595
  %32 = load i32, i32* %7, align 4, !dbg !2596
  %33 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %29, i8* %31, i32 %32), !dbg !2597
  br label %34, !dbg !2598

; <label>:34:                                     ; preds = %10, %2
  %35 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2599
  %36 = load i32, i32* %3, align 4, !dbg !2600
  %37 = call %struct._GArray* @g_array_set_size(%struct._GArray* %35, i32 %36), !dbg !2601
  %38 = load i32, i32* %3, align 4, !dbg !2602
  %39 = sub nsw i32 %38, 1, !dbg !2603
  %40 = sext i32 %39 to i64, !dbg !2604
  %41 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2605
  %42 = getelementptr inbounds %struct._GArray, %struct._GArray* %41, i32 0, i32 0, !dbg !2606
  %43 = load i8*, i8** %42, align 8, !dbg !2606
  %44 = bitcast i8* %43 to i32*, !dbg !2607
  %45 = getelementptr inbounds i32, i32* %44, i64 %40, !dbg !2604
  %46 = load i32, i32* %45, align 4, !dbg !2604
  store i32 %46, i32* %5, align 4, !dbg !2608
  %47 = load i32, i32* @paste_line_count, align 4, !dbg !2609
  %48 = icmp sgt i32 %47, 0, !dbg !2611
  br i1 %48, label %49, label %58, !dbg !2612

; <label>:49:                                     ; preds = %34
  %50 = load i32, i32* %5, align 4, !dbg !2613
  %51 = icmp ne i32 %50, 10, !dbg !2615
  br i1 %51, label %52, label %58, !dbg !2616

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %5, align 4, !dbg !2617
  %54 = icmp ne i32 %53, 13, !dbg !2619
  br i1 %54, label %55, label %58, !dbg !2620

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* @paste_line_count, align 4, !dbg !2621
  %57 = add nsw i32 %56, 1, !dbg !2621
  store i32 %57, i32* @paste_line_count, align 4, !dbg !2621
  br label %58, !dbg !2623

; <label>:58:                                     ; preds = %55, %52, %49, %34
  %59 = call i32 @paste_timeout(i8* null), !dbg !2624
  store i32 0, i32* @paste_bracketed_mode, align 4, !dbg !2625
  ret void, !dbg !2626
}

; Function Attrs: nounwind uwtable
define internal void @insert_paste_prompt() #0 !dbg !2627 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2628, metadata !588), !dbg !2629
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2630, metadata !588), !dbg !2631
  %4 = load i32, i32* @paste_line_count, align 4, !dbg !2632
  store i32 %4, i32* %2, align 4, !dbg !2631
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2633, metadata !588), !dbg !2634
  %5 = load %struct._GArray*, %struct._GArray** @paste_buffer, align 8, !dbg !2635
  %6 = getelementptr inbounds %struct._GArray, %struct._GArray* %5, i32 0, i32 1, !dbg !2636
  %7 = load i32, i32* %6, align 8, !dbg !2636
  %8 = udiv i32 %7, 400, !dbg !2637
  store i32 %8, i32* %3, align 4, !dbg !2634
  %9 = load i32, i32* %3, align 4, !dbg !2638
  %10 = load i32, i32* @paste_verify_line_count, align 4, !dbg !2640
  %11 = icmp sgt i32 %9, %10, !dbg !2641
  br i1 %11, label %12, label %18, !dbg !2642

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %3, align 4, !dbg !2643
  %14 = load i32, i32* @paste_line_count, align 4, !dbg !2644
  %15 = icmp sgt i32 %13, %14, !dbg !2645
  br i1 %15, label %16, label %18, !dbg !2646

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %3, align 4, !dbg !2648
  store i32 %17, i32* %2, align 4, !dbg !2650
  br label %18, !dbg !2651

; <label>:18:                                     ; preds = %16, %12, %0
  store i32 1, i32* @paste_prompt, align 4, !dbg !2652
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2653
  %20 = getelementptr inbounds %struct.GUI_ENTRY_REC, %struct.GUI_ENTRY_REC* %19, i32 0, i32 13, !dbg !2654
  %21 = load i8*, i8** %20, align 8, !dbg !2654
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !2655
  store i8* %22, i8** @paste_old_prompt, align 8, !dbg !2656
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2657
  %24 = load i32, i32* %2, align 4, !dbg !2658
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2659
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 5, !dbg !2660
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %26, align 8, !dbg !2660
  %28 = icmp eq %struct._WI_ITEM_REC* %27, null, !dbg !2661
  br i1 %28, label %29, label %30, !dbg !2659

; <label>:29:                                     ; preds = %18
  br label %36, !dbg !2662

; <label>:30:                                     ; preds = %18
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2663
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 5, !dbg !2665
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %32, align 8, !dbg !2665
  %34 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %33, i32 0, i32 5, !dbg !2666
  %35 = load i8*, i8** %34, align 8, !dbg !2666
  br label %36, !dbg !2667

; <label>:36:                                     ; preds = %30, %29
  %37 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.232, i32 0, i32 0), %29 ], [ %35, %30 ], !dbg !2668
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* %23, i32 262144, i32 42, i32 %24, i8* %37), !dbg !2670
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2671
  %39 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* %38, i8* null, i8* null, i32 43, i32 0, i32 0), !dbg !2672
  store i8* %39, i8** %1, align 8, !dbg !2673
  %40 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2674
  %41 = load i8*, i8** %1, align 8, !dbg !2675
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %40, i8* %41), !dbg !2676
  %42 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2677
  %43 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %42), !dbg !2678
  store i8* %43, i8** @paste_entry, align 8, !dbg !2679
  %44 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2680
  %45 = call i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC* %44), !dbg !2681
  store i32 %45, i32* @paste_entry_pos, align 4, !dbg !2682
  %46 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2683
  call void @gui_entry_set_text(%struct.GUI_ENTRY_REC* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !2684
  %47 = load i8*, i8** %1, align 8, !dbg !2685
  call void @g_free(i8* %47), !dbg !2686
  ret void, !dbg !2687
}

declare noalias i8* @g_strdup(i8*) #2

declare void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #2

declare i8* @format_get_text(i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) #2

declare i32 @gui_entry_get_pos(%struct.GUI_ENTRY_REC*) #2

declare i32 @settings_get_time(i8*) #2

declare i32 @settings_get_int(i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare void @term_set_appkey_mode(i32) #2

declare void @term_set_bracketed_paste_mode(i32) #2

declare void @gui_entry_move_pos(%struct.GUI_ENTRY_REC*, i32) #2

declare void @gui_entry_move_words(%struct.GUI_ENTRY_REC*, i32, i32) #2

declare i8* @command_history_prev(%struct._WINDOW_REC*, i8*) #2

declare i8* @command_history_next(%struct._WINDOW_REC*, i8*) #2

declare i8* @command_global_history_prev(%struct._WINDOW_REC*, i8*) #2

declare i8* @command_global_history_next(%struct._WINDOW_REC*, i8*) #2

declare i8* @command_history_delete_current(%struct._WINDOW_REC*, i8*) #2

declare void @gui_entry_erase(%struct.GUI_ENTRY_REC*, i32, i32) #2

declare void @gui_entry_erase_cell(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_erase_next_word(%struct.GUI_ENTRY_REC*, i32, i32) #2

declare void @gui_entry_erase_word(%struct.GUI_ENTRY_REC*, i32, i32) #2

declare i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_insert_text(%struct.GUI_ENTRY_REC*, i8*) #2

declare i8* @gui_entry_get_next_cutbuffer(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_transpose_chars(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_transpose_words(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_capitalize_word(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_downcase_word(%struct.GUI_ENTRY_REC*) #2

declare void @gui_entry_upcase_word(%struct.GUI_ENTRY_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @handle_entry_redirect(i8*) #0 !dbg !2688 {
  %2 = alloca i8*, align 8
  %3 = alloca void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2689, metadata !588), !dbg !2690
  call void @llvm.dbg.declare(metadata void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, metadata !2691, metadata !588), !dbg !2692
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2693, metadata !588), !dbg !2694
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2695
  call void @gui_entry_set_hidden(%struct.GUI_ENTRY_REC* %5, i32 0), !dbg !2696
  %6 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !2697
  %7 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %6, i32 0, i32 0, !dbg !2698
  %8 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !2698
  %9 = bitcast void (i8*, i8*, i8*, i8*, i8*, i8*)* %8 to void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, !dbg !2699
  store void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* %9, void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !2700
  %10 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !2701
  %11 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %10, i32 0, i32 2, !dbg !2702
  %12 = load i8*, i8** %11, align 8, !dbg !2702
  store i8* %12, i8** %4, align 8, !dbg !2703
  br label %13, !dbg !2704, !llvm.loop !2705

; <label>:13:                                     ; preds = %1
  %14 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !2706
  %15 = icmp ne %struct.ENTRY_REDIRECT_REC* %14, null, !dbg !2706
  br i1 %15, label %16, label %19, !dbg !2706

; <label>:16:                                     ; preds = %13
  %17 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !2710
  %18 = bitcast %struct.ENTRY_REDIRECT_REC* %17 to i8*, !dbg !2710
  call void @g_free(i8* %18), !dbg !2713
  store %struct.ENTRY_REDIRECT_REC* null, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !2714
  br label %19, !dbg !2715

; <label>:19:                                     ; preds = %16, %13
  br label %20, !dbg !2716

; <label>:20:                                     ; preds = %19
  %21 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2718
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !2719
  %22 = load void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !2720
  %23 = icmp ne void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* %22, null, !dbg !2722
  br i1 %23, label %24, label %34, !dbg !2723

; <label>:24:                                     ; preds = %20
  %25 = load void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, void (i8*, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !2724
  %26 = load i8*, i8** %2, align 8, !dbg !2726
  %27 = load i8*, i8** %4, align 8, !dbg !2727
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2728
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 6, !dbg !2729
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %29, align 8, !dbg !2729
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2730
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 5, !dbg !2731
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %32, align 8, !dbg !2731
  call void %25(i8* %26, i8* %27, %struct._SERVER_REC* %30, %struct._WI_ITEM_REC* %33), !dbg !2724
  br label %34, !dbg !2732

; <label>:34:                                     ; preds = %24, %20
  ret void, !dbg !2733
}

declare void @command_history_clear_pos(%struct._WINDOW_REC*) #2

declare void @gui_entry_set_hidden(%struct.GUI_ENTRY_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @key_completion(i32, i32) #0 !dbg !2734 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2737, metadata !588), !dbg !2738
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2739, metadata !588), !dbg !2740
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2741, metadata !588), !dbg !2742
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2743, metadata !588), !dbg !2744
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2745, metadata !588), !dbg !2746
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2747
  %9 = call i8* @gui_entry_get_text_and_pos(%struct.GUI_ENTRY_REC* %8, i32* %7), !dbg !2748
  store i8* %9, i8** %5, align 8, !dbg !2749
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2750
  %11 = load i8*, i8** %5, align 8, !dbg !2751
  %12 = load i32, i32* %3, align 4, !dbg !2752
  %13 = load i32, i32* %4, align 4, !dbg !2753
  %14 = call i8* @word_complete(%struct._WINDOW_REC* %10, i8* %11, i32* %7, i32 %12, i32 %13), !dbg !2754
  store i8* %14, i8** %6, align 8, !dbg !2755
  %15 = load i8*, i8** %5, align 8, !dbg !2756
  call void @g_free(i8* %15), !dbg !2757
  %16 = load i8*, i8** %6, align 8, !dbg !2758
  %17 = icmp ne i8* %16, null, !dbg !2760
  br i1 %17, label %18, label %23, !dbg !2761

; <label>:18:                                     ; preds = %2
  %19 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !2762
  %20 = load i8*, i8** %6, align 8, !dbg !2764
  %21 = load i32, i32* %7, align 4, !dbg !2765
  call void @gui_entry_set_text_and_pos_bytes(%struct.GUI_ENTRY_REC* %19, i8* %20, i32 %21), !dbg !2766
  %22 = load i8*, i8** %6, align 8, !dbg !2767
  call void @g_free(i8* %22), !dbg !2768
  br label %23, !dbg !2769

; <label>:23:                                     ; preds = %18, %2
  ret void, !dbg !2770
}

declare i8* @gui_entry_get_text_and_pos(%struct.GUI_ENTRY_REC*, i32*) #2

declare i8* @word_complete(%struct._WINDOW_REC*, i8*, i32*, i32, i32) #2

declare void @gui_entry_set_text_and_pos_bytes(%struct.GUI_ENTRY_REC*, i8*, i32) #2

declare i8* @auto_word_complete(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_REC* @get_next_server(%struct._SERVER_REC*) #0 !dbg !2771 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2774, metadata !588), !dbg !2775
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2776, metadata !588), !dbg !2777
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2778
  %6 = icmp eq %struct._SERVER_REC* %5, null, !dbg !2780
  br i1 %6, label %7, label %27, !dbg !2781

; <label>:7:                                      ; preds = %1
  %8 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2782
  %9 = icmp ne %struct._GSList* %8, null, !dbg !2784
  br i1 %9, label %10, label %14, !dbg !2782

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2785
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !2787
  %13 = load i8*, i8** %12, align 8, !dbg !2787
  br label %24, !dbg !2788

; <label>:14:                                     ; preds = %7
  %15 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2789
  %16 = icmp ne %struct._GSList* %15, null, !dbg !2790
  br i1 %16, label %17, label %21, !dbg !2789

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2791
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !2792
  %20 = load i8*, i8** %19, align 8, !dbg !2792
  br label %22, !dbg !2793

; <label>:21:                                     ; preds = %14
  br label %22, !dbg !2794

; <label>:22:                                     ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ null, %21 ], !dbg !2796
  br label %24, !dbg !2798

; <label>:24:                                     ; preds = %22, %10
  %25 = phi i8* [ %13, %10 ], [ %23, %22 ], !dbg !2799
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !2799
  store %struct._SERVER_REC* %26, %struct._SERVER_REC** %2, align 8, !dbg !2800
  br label %95, !dbg !2800

; <label>:27:                                     ; preds = %1
  %28 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2801
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2802
  %30 = bitcast %struct._SERVER_REC* %29 to i8*, !dbg !2802
  %31 = call %struct._GSList* @g_slist_find(%struct._GSList* %28, i8* %30), !dbg !2803
  store %struct._GSList* %31, %struct._GSList** %4, align 8, !dbg !2804
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2805
  %33 = icmp ne %struct._GSList* %32, null, !dbg !2807
  br i1 %33, label %34, label %59, !dbg !2808

; <label>:34:                                     ; preds = %27
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2809
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !2812
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !2812
  %38 = icmp ne %struct._GSList* %37, null, !dbg !2813
  br i1 %38, label %39, label %46, !dbg !2814

; <label>:39:                                     ; preds = %34
  %40 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2815
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 1, !dbg !2816
  %42 = load %struct._GSList*, %struct._GSList** %41, align 8, !dbg !2816
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !2817
  %44 = load i8*, i8** %43, align 8, !dbg !2817
  %45 = bitcast i8* %44 to %struct._SERVER_REC*, !dbg !2815
  store %struct._SERVER_REC* %45, %struct._SERVER_REC** %2, align 8, !dbg !2818
  br label %95, !dbg !2818

; <label>:46:                                     ; preds = %34
  %47 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2819
  %48 = icmp ne %struct._GSList* %47, null, !dbg !2821
  br i1 %48, label %49, label %54, !dbg !2822

; <label>:49:                                     ; preds = %46
  %50 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2823
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 0, !dbg !2824
  %52 = load i8*, i8** %51, align 8, !dbg !2824
  %53 = bitcast i8* %52 to %struct._SERVER_REC*, !dbg !2823
  store %struct._SERVER_REC* %53, %struct._SERVER_REC** %2, align 8, !dbg !2825
  br label %95, !dbg !2825

; <label>:54:                                     ; preds = %46
  %55 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2826
  %56 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 0, !dbg !2827
  %57 = load i8*, i8** %56, align 8, !dbg !2827
  %58 = bitcast i8* %57 to %struct._SERVER_REC*, !dbg !2826
  store %struct._SERVER_REC* %58, %struct._SERVER_REC** %2, align 8, !dbg !2828
  br label %95, !dbg !2828

; <label>:59:                                     ; preds = %27
  %60 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2829
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2830
  %62 = bitcast %struct._SERVER_REC* %61 to i8*, !dbg !2830
  %63 = call %struct._GSList* @g_slist_find(%struct._GSList* %60, i8* %62), !dbg !2831
  store %struct._GSList* %63, %struct._GSList** %4, align 8, !dbg !2832
  br label %64, !dbg !2833, !llvm.loop !2834

; <label>:64:                                     ; preds = %59
  %65 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2835
  %66 = icmp ne %struct._GSList* %65, null, !dbg !2839
  br i1 %66, label %67, label %68, !dbg !2835

; <label>:67:                                     ; preds = %64
  br label %69, !dbg !2840

; <label>:68:                                     ; preds = %64
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.243, i32 0, i32 0), i32 1036, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.get_next_server, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.244, i32 0, i32 0)) #9, !dbg !2842
  unreachable, !dbg !2842

; <label>:69:                                     ; preds = %67
  br label %70, !dbg !2844

; <label>:70:                                     ; preds = %69
  %71 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2846
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !2848
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !2848
  %74 = icmp ne %struct._GSList* %73, null, !dbg !2849
  br i1 %74, label %75, label %82, !dbg !2850

; <label>:75:                                     ; preds = %70
  %76 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2851
  %77 = getelementptr inbounds %struct._GSList, %struct._GSList* %76, i32 0, i32 1, !dbg !2852
  %78 = load %struct._GSList*, %struct._GSList** %77, align 8, !dbg !2852
  %79 = getelementptr inbounds %struct._GSList, %struct._GSList* %78, i32 0, i32 0, !dbg !2853
  %80 = load i8*, i8** %79, align 8, !dbg !2853
  %81 = bitcast i8* %80 to %struct._SERVER_REC*, !dbg !2851
  store %struct._SERVER_REC* %81, %struct._SERVER_REC** %2, align 8, !dbg !2854
  br label %95, !dbg !2854

; <label>:82:                                     ; preds = %70
  %83 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2855
  %84 = icmp ne %struct._GSList* %83, null, !dbg !2857
  br i1 %84, label %85, label %90, !dbg !2858

; <label>:85:                                     ; preds = %82
  %86 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2859
  %87 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 0, !dbg !2860
  %88 = load i8*, i8** %87, align 8, !dbg !2860
  %89 = bitcast i8* %88 to %struct._SERVER_REC*, !dbg !2859
  store %struct._SERVER_REC* %89, %struct._SERVER_REC** %2, align 8, !dbg !2861
  br label %95, !dbg !2861

; <label>:90:                                     ; preds = %82
  %91 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2862
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 0, !dbg !2863
  %93 = load i8*, i8** %92, align 8, !dbg !2863
  %94 = bitcast i8* %93 to %struct._SERVER_REC*, !dbg !2862
  store %struct._SERVER_REC* %94, %struct._SERVER_REC** %2, align 8, !dbg !2864
  br label %95, !dbg !2864

; <label>:95:                                     ; preds = %90, %85, %75, %54, %49, %39, %24
  %96 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2865
  ret %struct._SERVER_REC* %96, !dbg !2865
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_REC* @get_prev_server(%struct._SERVER_REC*) #0 !dbg !2866 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2867, metadata !588), !dbg !2868
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2869, metadata !588), !dbg !2870
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2871
  %6 = icmp eq %struct._SERVER_REC* %5, null, !dbg !2873
  br i1 %6, label %7, label %29, !dbg !2874

; <label>:7:                                      ; preds = %1
  %8 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2875
  %9 = icmp ne %struct._GSList* %8, null, !dbg !2877
  br i1 %9, label %10, label %15, !dbg !2875

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2878
  %12 = call %struct._GSList* @g_slist_last(%struct._GSList* %11), !dbg !2880
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !2881
  %14 = load i8*, i8** %13, align 8, !dbg !2881
  br label %26, !dbg !2882

; <label>:15:                                     ; preds = %7
  %16 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2883
  %17 = icmp ne %struct._GSList* %16, null, !dbg !2884
  br i1 %17, label %18, label %23, !dbg !2883

; <label>:18:                                     ; preds = %15
  %19 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2885
  %20 = call %struct._GSList* @g_slist_last(%struct._GSList* %19), !dbg !2886
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !2887
  %22 = load i8*, i8** %21, align 8, !dbg !2887
  br label %24, !dbg !2888

; <label>:23:                                     ; preds = %15
  br label %24, !dbg !2889

; <label>:24:                                     ; preds = %23, %18
  %25 = phi i8* [ %22, %18 ], [ null, %23 ], !dbg !2891
  br label %26, !dbg !2893

; <label>:26:                                     ; preds = %24, %10
  %27 = phi i8* [ %14, %10 ], [ %25, %24 ], !dbg !2894
  %28 = bitcast i8* %27 to %struct._SERVER_REC*, !dbg !2894
  store %struct._SERVER_REC* %28, %struct._SERVER_REC** %2, align 8, !dbg !2895
  br label %99, !dbg !2895

; <label>:29:                                     ; preds = %1
  %30 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2896
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2897
  %32 = bitcast %struct._SERVER_REC* %31 to i8*, !dbg !2897
  %33 = call i32 @g_slist_index(%struct._GSList* %30, i8* %32), !dbg !2898
  store i32 %33, i32* %4, align 4, !dbg !2899
  %34 = load i32, i32* %4, align 4, !dbg !2900
  %35 = icmp ne i32 %34, -1, !dbg !2902
  br i1 %35, label %36, label %62, !dbg !2903

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %4, align 4, !dbg !2904
  %38 = icmp sgt i32 %37, 0, !dbg !2907
  br i1 %38, label %39, label %47, !dbg !2908

; <label>:39:                                     ; preds = %36
  %40 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2909
  %41 = load i32, i32* %4, align 4, !dbg !2910
  %42 = sub nsw i32 %41, 1, !dbg !2911
  %43 = call %struct._GSList* @g_slist_nth(%struct._GSList* %40, i32 %42), !dbg !2912
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !2913
  %45 = load i8*, i8** %44, align 8, !dbg !2913
  %46 = bitcast i8* %45 to %struct._SERVER_REC*, !dbg !2912
  store %struct._SERVER_REC* %46, %struct._SERVER_REC** %2, align 8, !dbg !2914
  br label %99, !dbg !2914

; <label>:47:                                     ; preds = %36
  %48 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2915
  %49 = icmp ne %struct._GSList* %48, null, !dbg !2917
  br i1 %49, label %50, label %56, !dbg !2918

; <label>:50:                                     ; preds = %47
  %51 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2919
  %52 = call %struct._GSList* @g_slist_last(%struct._GSList* %51), !dbg !2920
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 0, !dbg !2921
  %54 = load i8*, i8** %53, align 8, !dbg !2921
  %55 = bitcast i8* %54 to %struct._SERVER_REC*, !dbg !2920
  store %struct._SERVER_REC* %55, %struct._SERVER_REC** %2, align 8, !dbg !2922
  br label %99, !dbg !2922

; <label>:56:                                     ; preds = %47
  %57 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2923
  %58 = call %struct._GSList* @g_slist_last(%struct._GSList* %57), !dbg !2924
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 0, !dbg !2925
  %60 = load i8*, i8** %59, align 8, !dbg !2925
  %61 = bitcast i8* %60 to %struct._SERVER_REC*, !dbg !2924
  store %struct._SERVER_REC* %61, %struct._SERVER_REC** %2, align 8, !dbg !2926
  br label %99, !dbg !2926

; <label>:62:                                     ; preds = %29
  %63 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2927
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2928
  %65 = bitcast %struct._SERVER_REC* %64 to i8*, !dbg !2928
  %66 = call i32 @g_slist_index(%struct._GSList* %63, i8* %65), !dbg !2929
  store i32 %66, i32* %4, align 4, !dbg !2930
  br label %67, !dbg !2931, !llvm.loop !2932

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %4, align 4, !dbg !2933
  %69 = icmp sge i32 %68, 0, !dbg !2937
  br i1 %69, label %70, label %71, !dbg !2933

; <label>:70:                                     ; preds = %67
  br label %72, !dbg !2938

; <label>:71:                                     ; preds = %67
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.243, i32 0, i32 0), i32 1006, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.get_prev_server, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.246, i32 0, i32 0)) #9, !dbg !2940
  unreachable, !dbg !2940

; <label>:72:                                     ; preds = %70
  br label %73, !dbg !2942

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %4, align 4, !dbg !2944
  %75 = icmp sgt i32 %74, 0, !dbg !2946
  br i1 %75, label %76, label %84, !dbg !2947

; <label>:76:                                     ; preds = %73
  %77 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2948
  %78 = load i32, i32* %4, align 4, !dbg !2949
  %79 = sub nsw i32 %78, 1, !dbg !2950
  %80 = call %struct._GSList* @g_slist_nth(%struct._GSList* %77, i32 %79), !dbg !2951
  %81 = getelementptr inbounds %struct._GSList, %struct._GSList* %80, i32 0, i32 0, !dbg !2952
  %82 = load i8*, i8** %81, align 8, !dbg !2952
  %83 = bitcast i8* %82 to %struct._SERVER_REC*, !dbg !2951
  store %struct._SERVER_REC* %83, %struct._SERVER_REC** %2, align 8, !dbg !2953
  br label %99, !dbg !2953

; <label>:84:                                     ; preds = %73
  %85 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2954
  %86 = icmp ne %struct._GSList* %85, null, !dbg !2956
  br i1 %86, label %87, label %93, !dbg !2957

; <label>:87:                                     ; preds = %84
  %88 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2958
  %89 = call %struct._GSList* @g_slist_last(%struct._GSList* %88), !dbg !2959
  %90 = getelementptr inbounds %struct._GSList, %struct._GSList* %89, i32 0, i32 0, !dbg !2960
  %91 = load i8*, i8** %90, align 8, !dbg !2960
  %92 = bitcast i8* %91 to %struct._SERVER_REC*, !dbg !2959
  store %struct._SERVER_REC* %92, %struct._SERVER_REC** %2, align 8, !dbg !2961
  br label %99, !dbg !2961

; <label>:93:                                     ; preds = %84
  %94 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2962
  %95 = call %struct._GSList* @g_slist_last(%struct._GSList* %94), !dbg !2963
  %96 = getelementptr inbounds %struct._GSList, %struct._GSList* %95, i32 0, i32 0, !dbg !2964
  %97 = load i8*, i8** %96, align 8, !dbg !2964
  %98 = bitcast i8* %97 to %struct._SERVER_REC*, !dbg !2963
  store %struct._SERVER_REC* %98, %struct._SERVER_REC** %2, align 8, !dbg !2965
  br label %99, !dbg !2965

; <label>:99:                                     ; preds = %93, %87, %76, %56, %50, %39, %26
  %100 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2966
  ret %struct._SERVER_REC* %100, !dbg !2966
}

declare %struct._GSList* @g_slist_last(%struct._GSList*) #2

declare i32 @g_slist_index(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @window_prev_page() #0 !dbg !2967 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2968
  %2 = call i32 @get_scroll_count(), !dbg !2969
  %3 = sub nsw i32 0, %2, !dbg !2970
  call void @gui_window_scroll(%struct._WINDOW_REC* %1, i32 %3), !dbg !2971
  ret void, !dbg !2973
}

declare void @gui_window_scroll(%struct._WINDOW_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_scroll_count() #0 !dbg !2974 {
  %1 = alloca i8*, align 8
  %2 = alloca double, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2977, metadata !588), !dbg !2978
  call void @llvm.dbg.declare(metadata double* %2, metadata !2979, metadata !588), !dbg !2981
  %3 = call i8* @settings_get_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)), !dbg !2982
  store i8* %3, i8** %1, align 8, !dbg !2983
  %4 = load i8*, i8** %1, align 8, !dbg !2984
  %5 = load i8*, i8** %1, align 8, !dbg !2985
  %6 = load i8, i8* %5, align 1, !dbg !2986
  %7 = sext i8 %6 to i32, !dbg !2986
  %8 = icmp eq i32 %7, 47, !dbg !2987
  %9 = zext i1 %8 to i32, !dbg !2987
  %10 = sext i32 %9 to i64, !dbg !2988
  %11 = getelementptr inbounds i8, i8* %4, i64 %10, !dbg !2988
  %12 = call double @atof(i8* %11) #8, !dbg !2989
  store double %12, double* %2, align 8, !dbg !2990
  %13 = load double, double* %2, align 8, !dbg !2991
  %14 = fcmp oeq double %13, 0.000000e+00, !dbg !2993
  br i1 %14, label %15, label %16, !dbg !2994

; <label>:15:                                     ; preds = %0
  store double 1.000000e+00, double* %2, align 8, !dbg !2995
  br label %38, !dbg !2996

; <label>:16:                                     ; preds = %0
  %17 = load double, double* %2, align 8, !dbg !2997
  %18 = fcmp olt double %17, 0.000000e+00, !dbg !2999
  br i1 %18, label %19, label %30, !dbg !3000

; <label>:19:                                     ; preds = %16
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3001
  %21 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %20, i32 0, i32 8, !dbg !3002
  %22 = load i32, i32* %21, align 8, !dbg !3002
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3003
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 12, !dbg !3004
  %25 = load i32, i32* %24, align 8, !dbg !3004
  %26 = sub nsw i32 %22, %25, !dbg !3005
  %27 = sitofp i32 %26 to double, !dbg !3001
  %28 = load double, double* %2, align 8, !dbg !3006
  %29 = fadd double %27, %28, !dbg !3007
  store double %29, double* %2, align 8, !dbg !3008
  br label %37, !dbg !3009

; <label>:30:                                     ; preds = %16
  %31 = load double, double* %2, align 8, !dbg !3010
  %32 = fcmp olt double %31, 1.000000e+00, !dbg !3012
  br i1 %32, label %33, label %36, !dbg !3013

; <label>:33:                                     ; preds = %30
  %34 = load double, double* %2, align 8, !dbg !3014
  %35 = fdiv double 1.000000e+00, %34, !dbg !3015
  store double %35, double* %2, align 8, !dbg !3016
  br label %36, !dbg !3017

; <label>:36:                                     ; preds = %33, %30
  br label %37

; <label>:37:                                     ; preds = %36, %19
  br label %38

; <label>:38:                                     ; preds = %37, %15
  %39 = load i8*, i8** %1, align 8, !dbg !3018
  %40 = load i8, i8* %39, align 1, !dbg !3020
  %41 = sext i8 %40 to i32, !dbg !3020
  %42 = icmp eq i32 %41, 47, !dbg !3021
  br i1 %42, label %43, label %54, !dbg !3022

; <label>:43:                                     ; preds = %38
  %44 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3023
  %45 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %44, i32 0, i32 8, !dbg !3025
  %46 = load i32, i32* %45, align 8, !dbg !3025
  %47 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** @active_mainwin, align 8, !dbg !3026
  %48 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %47, i32 0, i32 12, !dbg !3027
  %49 = load i32, i32* %48, align 8, !dbg !3027
  %50 = sub nsw i32 %46, %49, !dbg !3028
  %51 = sitofp i32 %50 to double, !dbg !3029
  %52 = load double, double* %2, align 8, !dbg !3030
  %53 = fdiv double %51, %52, !dbg !3031
  store double %53, double* %2, align 8, !dbg !3032
  br label %54, !dbg !3033

; <label>:54:                                     ; preds = %43, %38
  %55 = load double, double* %2, align 8, !dbg !3034
  %56 = fptosi double %55 to i32, !dbg !3035
  ret i32 %56, !dbg !3036
}

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @window_next_page() #0 !dbg !3037 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3038
  %2 = call i32 @get_scroll_count(), !dbg !3039
  call void @gui_window_scroll(%struct._WINDOW_REC* %1, i32 %2), !dbg !3040
  ret void, !dbg !3042
}

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #2

declare void @term_stop() #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @handle_key_redirect(i32) #0 !dbg !3043 {
  %2 = alloca i32, align 4
  %3 = alloca void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3044, metadata !588), !dbg !3045
  call void @llvm.dbg.declare(metadata void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, metadata !3046, metadata !588), !dbg !3047
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3048, metadata !588), !dbg !3049
  %5 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !3050
  %6 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %5, i32 0, i32 0, !dbg !3051
  %7 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %6, align 8, !dbg !3051
  %8 = bitcast void (i8*, i8*, i8*, i8*, i8*, i8*)* %7 to void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, !dbg !3052
  store void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* %8, void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !3053
  %9 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !3054
  %10 = getelementptr inbounds %struct.ENTRY_REDIRECT_REC, %struct.ENTRY_REDIRECT_REC* %9, i32 0, i32 2, !dbg !3055
  %11 = load i8*, i8** %10, align 8, !dbg !3055
  store i8* %11, i8** %4, align 8, !dbg !3056
  br label %12, !dbg !3057, !llvm.loop !3058

; <label>:12:                                     ; preds = %1
  %13 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !3059
  %14 = icmp ne %struct.ENTRY_REDIRECT_REC* %13, null, !dbg !3059
  br i1 %14, label %15, label %18, !dbg !3059

; <label>:15:                                     ; preds = %12
  %16 = load %struct.ENTRY_REDIRECT_REC*, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !3063
  %17 = bitcast %struct.ENTRY_REDIRECT_REC* %16 to i8*, !dbg !3063
  call void @g_free(i8* %17), !dbg !3066
  store %struct.ENTRY_REDIRECT_REC* null, %struct.ENTRY_REDIRECT_REC** @redir, align 8, !dbg !3067
  br label %18, !dbg !3068

; <label>:18:                                     ; preds = %15, %12
  br label %19, !dbg !3069

; <label>:19:                                     ; preds = %18
  %20 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !3071
  call void @gui_entry_set_prompt(%struct.GUI_ENTRY_REC* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i32 0, i32 0)), !dbg !3072
  %21 = load void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !3073
  %22 = icmp ne void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* %21, null, !dbg !3075
  br i1 %22, label %23, label %33, !dbg !3076

; <label>:23:                                     ; preds = %19
  %24 = load void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)*, void (i32, i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)** %3, align 8, !dbg !3077
  %25 = load i32, i32* %2, align 4, !dbg !3078
  %26 = load i8*, i8** %4, align 8, !dbg !3079
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3080
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 6, !dbg !3081
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %28, align 8, !dbg !3081
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3082
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 5, !dbg !3083
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %31, align 8, !dbg !3083
  call void %24(i32 %25, i8* %26, %struct._SERVER_REC* %29, %struct._WI_ITEM_REC* %32), !dbg !3077
  br label %33, !dbg !3077

; <label>:33:                                     ; preds = %23, %19
  ret void, !dbg !3084
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare i32 @key_pressed(%struct._KEYBOARD_REC*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!581, !582}
!llvm.ident = !{!583}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !140, globals: !538)
!1 = !DIFile(filename: "line350-gui-readline.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !50, !81, !133}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!54 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!55 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!56 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!57 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!58 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!59 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!60 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!61 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!62 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!63 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!64 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!65 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!66 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!67 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!68 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!69 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!70 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!71 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!72 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!73 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!74 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!75 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!76 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!77 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!78 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!79 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!80 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 3, size: 32, align: 32, elements: !83)
!82 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!84 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!85 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!86 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!87 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!88 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!89 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!90 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!91 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!92 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!93 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!94 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!95 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!96 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!97 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!98 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!99 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!100 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!103 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!104 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!105 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!106 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!107 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!108 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!109 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!110 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!111 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!112 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!113 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!114 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!115 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!116 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!117 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!118 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!119 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!120 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!121 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!122 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!123 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!124 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!125 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!126 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!127 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!128 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!129 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!130 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!131 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!132 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 33, size: 32, align: 32, elements: !135)
!134 = !DIFile(filename: "gui-entry.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "CUTBUFFER_UPDATE_NOOP", value: 0)
!137 = !DIEnumerator(name: "CUTBUFFER_UPDATE_REPLACE", value: 1)
!138 = !DIEnumerator(name: "CUTBUFFER_UPDATE_APPEND", value: 2)
!139 = !DIEnumerator(name: "CUTBUFFER_UPDATE_PREPEND", value: 3)
!140 = !{!141, !146, !334, !341, !211, !344, !154, !345, !346, !165, !351, !527, !152, !167, !534}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !142, line: 60, baseType: !143)
!142 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !147, !154}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !150)
!150 = !{!151, !155, !301, !302, !307, !308, !309, !310, !311, !320, !321, !322, !326, !327, !328, !329, !330, !331, !332, !333}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !149, file: !4, line: 100, baseType: !152, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !153, line: 49, baseType: !154)
!153 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!154 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !149, file: !4, line: 101, baseType: !156, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !159)
!159 = !{!160, !185, !191, !198, !202, !288, !292, !297}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !158, file: !4, line: 133, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !147, !165, !168, !171, !172}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !153, line: 46, baseType: !167)
!167 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !169, line: 66, baseType: !170)
!169 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !175, line: 42, baseType: !176)
!175 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !175, line: 44, size: 128, align: 64, elements: !177)
!177 = !{!178, !183, !184}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !176, file: !175, line: 46, baseType: !179, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !180, line: 36, baseType: !181)
!180 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !169, line: 45, baseType: !182)
!182 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !176, file: !175, line: 47, baseType: !152, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !176, file: !175, line: 48, baseType: !165, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !158, file: !4, line: 138, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!164, !147, !189, !168, !171, !172}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !158, file: !4, line: 143, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!164, !147, !195, !197, !172}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !169, line: 51, baseType: !196)
!196 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !158, file: !4, line: 147, baseType: !199, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!164, !147, !172}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !158, file: !4, line: 149, baseType: !203, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !147, !287}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !209)
!209 = !{!210, !212, !233, !262, !264, !268, !269, !270, !271, !279, !280, !281, !283}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !208, file: !16, line: 174, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !153, line: 77, baseType: !146)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !208, file: !16, line: 175, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !216)
!216 = !{!217, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !215, file: !16, line: 198, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !211}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !215, file: !16, line: 199, baseType: !218, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !215, file: !16, line: 200, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !211, !206, !226, !232}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !211}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !153, line: 50, baseType: !152)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !208, file: !16, line: 177, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !238)
!238 = !{!239, !244, !248, !252, !256, !257}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !237, file: !16, line: 216, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!231, !206, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !237, file: !16, line: 218, baseType: !245, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!231, !206}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !237, file: !16, line: 219, baseType: !249, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!231, !206, !227, !211}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !237, file: !16, line: 222, baseType: !253, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !206}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !237, file: !16, line: 226, baseType: !227, size: 64, align: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !237, file: !16, line: 227, baseType: !258, size: 64, align: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !208, file: !16, line: 178, baseType: !263, size: 32, align: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !153, line: 55, baseType: !182)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !208, file: !16, line: 180, baseType: !265, size: 64, align: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !267)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !208, file: !16, line: 182, baseType: !152, size: 32, align: 32, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !16, line: 183, baseType: !263, size: 32, align: 32, offset: 352)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !208, file: !16, line: 184, baseType: !263, size: 32, align: 32, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !208, file: !16, line: 186, baseType: !272, size: 64, align: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !274, line: 37, baseType: !275)
!274 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !274, line: 39, size: 128, align: 64, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !275, file: !274, line: 41, baseType: !211, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !274, line: 42, baseType: !272, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !16, line: 188, baseType: !206, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !16, line: 189, baseType: !206, size: 64, align: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !16, line: 191, baseType: !282, size: 64, align: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !208, file: !16, line: 193, baseType: !284, size: 64, align: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !158, file: !4, line: 151, baseType: !289, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !147}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !158, file: !4, line: 152, baseType: !293, size: 64, align: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!164, !147, !296, !172}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !158, file: !4, line: 155, baseType: !298, size: 64, align: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!296, !147}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !149, file: !4, line: 103, baseType: !165, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !149, file: !4, line: 104, baseType: !303, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !304, line: 77, baseType: !305)
!304 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !304, line: 77, flags: DIFlagFwdDecl)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !149, file: !4, line: 105, baseType: !303, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !149, file: !4, line: 106, baseType: !165, size: 64, align: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !149, file: !4, line: 107, baseType: !263, size: 32, align: 32, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !149, file: !4, line: 109, baseType: !168, size: 64, align: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !149, file: !4, line: 110, baseType: !312, size: 64, align: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !314, line: 39, baseType: !315)
!314 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !314, line: 41, size: 192, align: 64, elements: !316)
!316 = !{!317, !318, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !315, file: !314, line: 43, baseType: !165, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !314, line: 44, baseType: !168, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !315, file: !314, line: 45, baseType: !168, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !149, file: !4, line: 111, baseType: !312, size: 64, align: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !149, file: !4, line: 112, baseType: !312, size: 64, align: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !149, file: !4, line: 113, baseType: !323, size: 48, align: 8, offset: 704)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, align: 8, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 6)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !149, file: !4, line: 117, baseType: !263, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !149, file: !4, line: 118, baseType: !263, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !149, file: !4, line: 119, baseType: !263, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !149, file: !4, line: 120, baseType: !263, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !149, file: !4, line: 121, baseType: !263, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !149, file: !4, line: 122, baseType: !263, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !149, file: !4, line: 124, baseType: !211, size: 64, align: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !149, file: !4, line: 125, baseType: !211, size: 64, align: 64, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !335, line: 9, baseType: !336)
!335 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !339, !339, !339, !339, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !343, line: 12, baseType: !181)
!343 = !DIFile(filename: "../../src/core/utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !153, line: 48, baseType: !196)
!345 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY_REDIRECT_ENTRY_FUNC", file: !347, line: 47, baseType: !348)
!347 = !DIFile(filename: "gui-readline.c", directory: "/home/lichi/Desktop/irssi/task1")
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351, !146, !353, !503}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !142, line: 107, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !356, line: 30, size: 2240, align: 64, elements: !357)
!356 = !DIFile(filename: "../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!357 = !{!358, !360, !361, !362, !409, !414, !415, !416, !417, !418, !419, !420, !421, !422, !426, !427, !431, !432, !433, !437, !442, !443, !444, !445, !446, !447, !448, !449, !455, !456, !457, !458, !459, !463, !467, !471, !475, !479, !484, !491, !498, !502}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !359, line: 3, baseType: !154, size: 32, align: 32)
!359 = !DIFile(filename: "../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !355, file: !359, line: 4, baseType: !154, size: 32, align: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !355, file: !359, line: 6, baseType: !154, size: 32, align: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !355, file: !359, line: 8, baseType: !363, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !142, line: 113, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !356, line: 25, size: 1920, align: 64, elements: !366)
!366 = !{!367, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !368, line: 3, baseType: !154, size: 32, align: 32)
!368 = !DIFile(filename: "../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !365, file: !368, line: 4, baseType: !154, size: 32, align: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !365, file: !368, line: 6, baseType: !154, size: 32, align: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !365, file: !368, line: 9, baseType: !282, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !365, file: !368, line: 10, baseType: !154, size: 32, align: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !365, file: !368, line: 11, baseType: !282, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !365, file: !368, line: 11, baseType: !282, size: 64, align: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !365, file: !368, line: 11, baseType: !282, size: 64, align: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !365, file: !368, line: 13, baseType: !345, size: 16, align: 16, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !365, file: !368, line: 14, baseType: !282, size: 64, align: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !365, file: !368, line: 15, baseType: !282, size: 64, align: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !365, file: !368, line: 16, baseType: !154, size: 32, align: 32, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !365, file: !368, line: 17, baseType: !282, size: 64, align: 64, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !365, file: !368, line: 19, baseType: !382, size: 64, align: 64, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !142, line: 99, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !142, line: 99, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !365, file: !368, line: 19, baseType: !382, size: 64, align: 64, offset: 832)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !365, file: !368, line: 21, baseType: !282, size: 64, align: 64, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !365, file: !368, line: 22, baseType: !282, size: 64, align: 64, offset: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !365, file: !368, line: 23, baseType: !282, size: 64, align: 64, offset: 1024)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !365, file: !368, line: 24, baseType: !282, size: 64, align: 64, offset: 1088)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !365, file: !368, line: 26, baseType: !282, size: 64, align: 64, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !365, file: !368, line: 27, baseType: !282, size: 64, align: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !365, file: !368, line: 28, baseType: !282, size: 64, align: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !365, file: !368, line: 29, baseType: !282, size: 64, align: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !365, file: !368, line: 30, baseType: !282, size: 64, align: 64, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !365, file: !368, line: 31, baseType: !282, size: 64, align: 64, offset: 1472)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !365, file: !368, line: 32, baseType: !282, size: 64, align: 64, offset: 1536)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !365, file: !368, line: 33, baseType: !282, size: 64, align: 64, offset: 1600)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !365, file: !368, line: 35, baseType: !147, size: 64, align: 64, offset: 1664)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !365, file: !368, line: 38, baseType: !182, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !365, file: !368, line: 39, baseType: !182, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !365, file: !368, line: 40, baseType: !182, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !365, file: !368, line: 41, baseType: !182, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !365, file: !368, line: 42, baseType: !182, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !365, file: !368, line: 43, baseType: !182, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !365, file: !368, line: 44, baseType: !182, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !365, file: !368, line: 45, baseType: !182, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !365, file: !368, line: 46, baseType: !282, size: 64, align: 64, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !365, file: !368, line: 47, baseType: !282, size: 64, align: 64, offset: 1856)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !355, file: !359, line: 9, baseType: !410, size: 64, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !411, line: 75, baseType: !412)
!411 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !413, line: 139, baseType: !196)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !355, file: !359, line: 10, baseType: !410, size: 64, align: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !355, file: !359, line: 12, baseType: !282, size: 64, align: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !355, file: !359, line: 13, baseType: !282, size: 64, align: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !355, file: !359, line: 15, baseType: !182, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !355, file: !359, line: 16, baseType: !182, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !355, file: !359, line: 17, baseType: !182, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !355, file: !359, line: 18, baseType: !182, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !355, file: !359, line: 19, baseType: !182, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !355, file: !359, line: 21, baseType: !423, size: 64, align: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !142, line: 102, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !142, line: 102, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !355, file: !359, line: 22, baseType: !154, size: 32, align: 32, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !355, file: !359, line: 25, baseType: !428, size: 128, align: 64, offset: 640)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 64, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 2)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !355, file: !359, line: 26, baseType: !154, size: 32, align: 32, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !355, file: !359, line: 27, baseType: !154, size: 32, align: 32, offset: 800)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !355, file: !359, line: 29, baseType: !434, size: 64, align: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !142, line: 103, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !142, line: 103, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !355, file: !359, line: 30, baseType: !438, size: 64, align: 64, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !440, line: 37, baseType: !441)
!440 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !440, line: 37, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !355, file: !359, line: 32, baseType: !282, size: 64, align: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !355, file: !359, line: 33, baseType: !282, size: 64, align: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !355, file: !359, line: 34, baseType: !282, size: 64, align: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !355, file: !359, line: 35, baseType: !182, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !355, file: !359, line: 36, baseType: !182, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !355, file: !359, line: 37, baseType: !182, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !355, file: !359, line: 38, baseType: !182, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !355, file: !359, line: 40, baseType: !450, size: 128, align: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !153, line: 504, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !153, line: 506, size: 128, align: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !451, file: !153, line: 508, baseType: !344, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !451, file: !153, line: 509, baseType: !344, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !355, file: !359, line: 41, baseType: !410, size: 64, align: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !355, file: !359, line: 42, baseType: !154, size: 32, align: 32, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !355, file: !359, line: 44, baseType: !272, size: 64, align: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !355, file: !359, line: 45, baseType: !272, size: 64, align: 64, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !355, file: !359, line: 53, baseType: !460, size: 64, align: 64, offset: 1600)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !353, !351, !154}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !355, file: !359, line: 55, baseType: !464, size: 64, align: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!154, !353, !167}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !355, file: !359, line: 57, baseType: !468, size: 64, align: 64, offset: 1728)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!154, !353, !351}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !355, file: !359, line: 60, baseType: !472, size: 64, align: 64, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!351, !353}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !355, file: !359, line: 62, baseType: !476, size: 64, align: 64, offset: 1856)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !353, !351, !351, !154}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !355, file: !359, line: 65, baseType: !480, size: 64, align: 64, offset: 1920)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !353, !351, !351}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !355, file: !359, line: 69, baseType: !485, size: 64, align: 64, offset: 1984)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !353, !351}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !142, line: 109, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !142, line: 109, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !355, file: !359, line: 70, baseType: !492, size: 64, align: 64, offset: 2048)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !353, !351}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !142, line: 110, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !142, line: 110, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !355, file: !359, line: 71, baseType: !499, size: 64, align: 64, offset: 2112)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!154, !351, !351}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !355, file: !359, line: 73, baseType: !499, size: 64, align: 64, offset: 2176)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !142, line: 108, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !506, line: 5, size: 704, align: 64, elements: !507)
!506 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!507 = !{!508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !523}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !509, line: 3, baseType: !154, size: 32, align: 32)
!509 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!510 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !505, file: !509, line: 4, baseType: !154, size: 32, align: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !505, file: !509, line: 5, baseType: !438, size: 64, align: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !505, file: !509, line: 7, baseType: !146, size: 64, align: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !505, file: !509, line: 8, baseType: !353, size: 64, align: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !505, file: !509, line: 9, baseType: !282, size: 64, align: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !509, line: 10, baseType: !282, size: 64, align: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !505, file: !509, line: 11, baseType: !410, size: 64, align: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !505, file: !509, line: 12, baseType: !154, size: 32, align: 32, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !505, file: !509, line: 13, baseType: !282, size: 64, align: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !505, file: !509, line: 15, baseType: !520, size: 64, align: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !503}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !505, file: !509, line: 17, baseType: !524, size: 64, align: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!351, !503}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY_REDIRECT_REC", file: !347, line: 53, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 49, size: 192, align: 64, elements: !530)
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !529, file: !347, line: 50, baseType: !334, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !347, line: 51, baseType: !154, size: 32, align: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !529, file: !347, line: 52, baseType: !146, size: 64, align: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY_REDIRECT_KEY_FUNC", file: !347, line: 46, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !154, !146, !353, !503}
!538 = !{!539, !545, !550, !551, !552, !553, !554, !555, !556, !564, !565, !566, !567, !568, !569, !570, !571, !572, !575, !576, !577, !578, !579, !580}
!539 = distinct !DIGlobalVariable(name: "changekeys", scope: !540, file: !347, line: 1142, type: !542, isLocal: true, isDefinition: true, variable: [20 x i8]* @gui_readline_init.changekeys)
!540 = distinct !DISubprogram(name: "gui_readline_init", scope: !347, file: !347, line: 1140, type: !260, isLocal: false, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!541 = !{}
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 160, align: 8, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 20)
!545 = distinct !DIGlobalVariable(name: "keyboard", scope: !0, file: !347, line: 55, type: !546, isLocal: true, isDefinition: true, variable: %struct._KEYBOARD_REC** @keyboard)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEYBOARD_REC", file: !548, line: 6, baseType: !549)
!548 = !DIFile(filename: "../../src/fe-common/core/keyboard.h", directory: "/home/lichi/Desktop/irssi/task1")
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEYBOARD_REC", file: !548, line: 6, flags: DIFlagFwdDecl)
!550 = distinct !DIGlobalVariable(name: "redir", scope: !0, file: !347, line: 56, type: !527, isLocal: true, isDefinition: true, variable: %struct.ENTRY_REDIRECT_REC** @redir)
!551 = distinct !DIGlobalVariable(name: "escape_next_key", scope: !0, file: !347, line: 57, type: !154, isLocal: true, isDefinition: true, variable: i32* @escape_next_key)
!552 = distinct !DIGlobalVariable(name: "readtag", scope: !0, file: !347, line: 59, type: !154, isLocal: true, isDefinition: true, variable: i32* @readtag)
!553 = distinct !DIGlobalVariable(name: "last_keypress", scope: !0, file: !347, line: 61, type: !450, isLocal: true, isDefinition: true, variable: %struct._GTimeVal* @last_keypress)
!554 = distinct !DIGlobalVariable(name: "paste_entry", scope: !0, file: !347, line: 64, type: !282, isLocal: true, isDefinition: true, variable: i8** @paste_entry)
!555 = distinct !DIGlobalVariable(name: "paste_entry_pos", scope: !0, file: !347, line: 65, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_entry_pos)
!556 = distinct !DIGlobalVariable(name: "paste_buffer", scope: !0, file: !347, line: 66, type: !557, isLocal: true, isDefinition: true, variable: %struct._GArray** @paste_buffer)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !559, line: 37, baseType: !560)
!559 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/irssi/task1")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !559, line: 41, size: 128, align: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !560, file: !559, line: 43, baseType: !165, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !560, file: !559, line: 44, baseType: !263, size: 32, align: 32, offset: 64)
!564 = distinct !DIGlobalVariable(name: "paste_buffer_rest", scope: !0, file: !347, line: 67, type: !557, isLocal: true, isDefinition: true, variable: %struct._GArray** @paste_buffer_rest)
!565 = distinct !DIGlobalVariable(name: "paste_old_prompt", scope: !0, file: !347, line: 69, type: !282, isLocal: true, isDefinition: true, variable: i8** @paste_old_prompt)
!566 = distinct !DIGlobalVariable(name: "paste_timeout_id", scope: !0, file: !347, line: 72, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_timeout_id)
!567 = distinct !DIGlobalVariable(name: "paste_bracketed_mode", scope: !0, file: !347, line: 74, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_bracketed_mode)
!568 = distinct !DIGlobalVariable(name: "paste_prompt", scope: !0, file: !347, line: 70, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_prompt)
!569 = distinct !DIGlobalVariable(name: "paste_join_multiline", scope: !0, file: !347, line: 71, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_join_multiline)
!570 = distinct !DIGlobalVariable(name: "paste_was_bracketed_mode", scope: !0, file: !347, line: 75, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_was_bracketed_mode)
!571 = distinct !DIGlobalVariable(name: "paste_line_count", scope: !0, file: !347, line: 70, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_line_count)
!572 = distinct !DIGlobalVariable(name: "bp_end", scope: !0, file: !347, line: 82, type: !573, isLocal: true, isDefinition: true, variable: [6 x i32]* @bp_end)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 192, align: 32, elements: !324)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!575 = distinct !DIGlobalVariable(name: "bp_start", scope: !0, file: !347, line: 81, type: !573, isLocal: true, isDefinition: true, variable: [6 x i32]* @bp_start)
!576 = distinct !DIGlobalVariable(name: "paste_use_bracketed_mode", scope: !0, file: !347, line: 73, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_use_bracketed_mode)
!577 = distinct !DIGlobalVariable(name: "paste_detect_time", scope: !0, file: !347, line: 63, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_detect_time)
!578 = distinct !DIGlobalVariable(name: "paste_verify_line_count", scope: !0, file: !347, line: 63, type: !154, isLocal: true, isDefinition: true, variable: i32* @paste_verify_line_count)
!579 = distinct !DIGlobalVariable(name: "previous_yank_preceded", scope: !0, file: !347, line: 76, type: !154, isLocal: true, isDefinition: true, variable: i32* @previous_yank_preceded)
!580 = distinct !DIGlobalVariable(name: "prev_key", scope: !0, file: !347, line: 60, type: !342, isLocal: true, isDefinition: true, variable: i32* @prev_key)
!581 = !{i32 2, !"Dwarf Version", i32 4}
!582 = !{i32 2, !"Debug Info Version", i32 3}
!583 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!584 = distinct !DISubprogram(name: "input_listen_init", scope: !347, file: !347, line: 86, type: !585, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !154}
!587 = !DILocalVariable(name: "handle", arg: 1, scope: !584, file: !347, line: 86, type: !154)
!588 = !DIExpression()
!589 = !DILocation(line: 86, column: 28, scope: !584)
!590 = !DILocation(line: 88, column: 29, scope: !584)
!591 = !DILocation(line: 88, column: 12, scope: !584)
!592 = !DILocation(line: 88, column: 10, scope: !584)
!593 = !DILocation(line: 91, column: 1, scope: !584)
!594 = distinct !DISubprogram(name: "sig_input", scope: !347, file: !347, line: 818, type: !260, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!595 = !DILocation(line: 820, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !347, line: 820, column: 6)
!597 = !DILocation(line: 820, column: 6, scope: !594)
!598 = !DILocation(line: 822, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !347, line: 820, column: 21)
!600 = !DILocation(line: 825, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !347, line: 825, column: 6)
!602 = !DILocation(line: 825, column: 6, scope: !594)
!603 = !DILocalVariable(name: "buffer", scope: !604, file: !347, line: 826, type: !557)
!604 = distinct !DILexicalBlock(scope: !601, file: !347, line: 825, column: 20)
!605 = !DILocation(line: 826, column: 11, scope: !604)
!606 = !DILocation(line: 826, column: 20, scope: !604)
!607 = !DILocalVariable(name: "line_count", scope: !604, file: !347, line: 827, type: !154)
!608 = !DILocation(line: 827, column: 7, scope: !604)
!609 = !DILocalVariable(name: "key", scope: !604, file: !347, line: 828, type: !342)
!610 = !DILocation(line: 828, column: 11, scope: !604)
!611 = !DILocation(line: 829, column: 13, scope: !604)
!612 = !DILocation(line: 829, column: 3, scope: !604)
!613 = !DILocation(line: 830, column: 32, scope: !604)
!614 = !DILocation(line: 830, column: 41, scope: !604)
!615 = !DILocation(line: 830, column: 11, scope: !604)
!616 = !DILocation(line: 830, column: 10, scope: !604)
!617 = !DILocation(line: 830, column: 7, scope: !604)
!618 = !DILocation(line: 832, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !604, file: !347, line: 832, column: 7)
!620 = !DILocation(line: 832, column: 11, scope: !619)
!621 = !DILocation(line: 832, column: 17, scope: !619)
!622 = !DILocation(line: 832, column: 20, scope: !623)
!623 = !DILexicalBlockFile(scope: !619, file: !347, discriminator: 1)
!624 = !DILocation(line: 832, column: 24, scope: !623)
!625 = !DILocation(line: 832, column: 7, scope: !623)
!626 = !DILocation(line: 833, column: 16, scope: !619)
!627 = !DILocation(line: 833, column: 20, scope: !619)
!628 = !DILocation(line: 833, column: 4, scope: !619)
!629 = !DILocation(line: 834, column: 16, scope: !604)
!630 = !DILocation(line: 834, column: 3, scope: !604)
!631 = !DILocation(line: 835, column: 2, scope: !604)
!632 = !DILocation(line: 836, column: 13, scope: !633)
!633 = distinct !DILexicalBlock(scope: !601, file: !347, line: 835, column: 9)
!634 = !DILocation(line: 836, column: 3, scope: !633)
!635 = !DILocation(line: 840, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !347, line: 840, column: 7)
!637 = !DILocation(line: 840, column: 7, scope: !633)
!638 = !DILocation(line: 841, column: 4, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !347, line: 840, column: 29)
!640 = !DILocation(line: 843, column: 3, scope: !639)
!641 = !DILocation(line: 843, column: 15, scope: !642)
!642 = !DILexicalBlockFile(scope: !643, file: !347, discriminator: 1)
!643 = distinct !DILexicalBlock(scope: !636, file: !347, line: 843, column: 14)
!644 = !DILocation(line: 843, column: 40, scope: !642)
!645 = !DILocation(line: 843, column: 43, scope: !646)
!646 = !DILexicalBlockFile(scope: !643, file: !347, discriminator: 2)
!647 = !DILocation(line: 843, column: 61, scope: !646)
!648 = !DILocation(line: 843, column: 65, scope: !646)
!649 = !DILocation(line: 843, column: 68, scope: !650)
!650 = !DILexicalBlockFile(scope: !643, file: !347, discriminator: 3)
!651 = !DILocation(line: 843, column: 82, scope: !650)
!652 = !DILocation(line: 843, column: 86, scope: !650)
!653 = !DILocation(line: 843, column: 14, scope: !650)
!654 = !DILocation(line: 844, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !347, line: 844, column: 8)
!656 = distinct !DILexicalBlock(scope: !643, file: !347, line: 843, column: 92)
!657 = !DILocation(line: 844, column: 25, scope: !655)
!658 = !DILocation(line: 844, column: 8, scope: !656)
!659 = !DILocation(line: 845, column: 21, scope: !655)
!660 = !DILocation(line: 845, column: 5, scope: !655)
!661 = !DILocation(line: 846, column: 37, scope: !656)
!662 = !DILocation(line: 846, column: 23, scope: !656)
!663 = !DILocation(line: 846, column: 21, scope: !656)
!664 = !DILocation(line: 847, column: 3, scope: !656)
!665 = !DILocation(line: 847, column: 15, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !347, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !643, file: !347, line: 847, column: 14)
!668 = !DILocation(line: 847, column: 14, scope: !666)
!669 = !DILocalVariable(name: "i", scope: !670, file: !347, line: 848, type: !154)
!670 = distinct !DILexicalBlock(scope: !667, file: !347, line: 847, column: 37)
!671 = !DILocation(line: 848, column: 8, scope: !670)
!672 = !DILocation(line: 850, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !347, line: 850, column: 4)
!674 = !DILocation(line: 850, column: 9, scope: !673)
!675 = !DILocation(line: 850, column: 16, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !347, discriminator: 1)
!677 = distinct !DILexicalBlock(scope: !673, file: !347, line: 850, column: 4)
!678 = !DILocation(line: 850, column: 20, scope: !676)
!679 = !DILocation(line: 850, column: 34, scope: !676)
!680 = !DILocation(line: 850, column: 18, scope: !676)
!681 = !DILocation(line: 850, column: 4, scope: !676)
!682 = !DILocalVariable(name: "key", scope: !683, file: !347, line: 851, type: !342)
!683 = distinct !DILexicalBlock(scope: !677, file: !347, line: 850, column: 44)
!684 = !DILocation(line: 851, column: 13, scope: !683)
!685 = !DILocation(line: 851, column: 65, scope: !683)
!686 = !DILocation(line: 851, column: 20, scope: !683)
!687 = !DILocation(line: 851, column: 42, scope: !683)
!688 = !DILocation(line: 851, column: 57, scope: !683)
!689 = !DILocation(line: 851, column: 21, scope: !683)
!690 = !DILocation(line: 852, column: 60, scope: !683)
!691 = !DILocation(line: 852, column: 51, scope: !683)
!692 = !DILocation(line: 852, column: 40, scope: !683)
!693 = !DILocation(line: 852, column: 5, scope: !683)
!694 = !DILocation(line: 854, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !683, file: !347, line: 854, column: 9)
!696 = !DILocation(line: 854, column: 9, scope: !683)
!697 = !DILocation(line: 856, column: 27, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !347, line: 854, column: 31)
!699 = !DILocation(line: 856, column: 44, scope: !698)
!700 = !DILocation(line: 856, column: 46, scope: !698)
!701 = !DILocation(line: 856, column: 6, scope: !698)
!702 = !DILocation(line: 859, column: 6, scope: !698)
!703 = !DILocation(line: 860, column: 6, scope: !698)
!704 = !DILocation(line: 862, column: 4, scope: !683)
!705 = !DILocation(line: 850, column: 40, scope: !706)
!706 = !DILexicalBlockFile(scope: !677, file: !347, discriminator: 2)
!707 = !DILocation(line: 850, column: 4, scope: !706)
!708 = distinct !{!708, !709}
!709 = !DILocation(line: 850, column: 4, scope: !670)
!710 = !DILocation(line: 863, column: 21, scope: !670)
!711 = !DILocation(line: 863, column: 4, scope: !670)
!712 = !DILocation(line: 864, column: 21, scope: !670)
!713 = !DILocation(line: 865, column: 3, scope: !670)
!714 = !DILocation(line: 867, column: 1, scope: !594)
!715 = distinct !DISubprogram(name: "input_listen_deinit", scope: !347, file: !347, line: 93, type: !260, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!716 = !DILocation(line: 95, column: 18, scope: !715)
!717 = !DILocation(line: 95, column: 2, scope: !715)
!718 = !DILocation(line: 96, column: 17, scope: !715)
!719 = !DILocation(line: 97, column: 1, scope: !715)
!720 = distinct !DISubprogram(name: "get_idle_time", scope: !347, file: !347, line: 874, type: !721, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!721 = !DISubroutineType(types: !722)
!722 = !{!410}
!723 = !DILocation(line: 876, column: 23, scope: !720)
!724 = !DILocation(line: 876, column: 2, scope: !720)
!725 = !DILocalVariable(name: "key", scope: !540, file: !347, line: 1143, type: !282)
!726 = !DILocation(line: 1143, column: 8, scope: !540)
!727 = !DILocalVariable(name: "data", scope: !540, file: !347, line: 1143, type: !728)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 96, align: 8, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 12)
!731 = !DILocation(line: 1143, column: 13, scope: !540)
!732 = !DILocalVariable(name: "n", scope: !540, file: !347, line: 1144, type: !154)
!733 = !DILocation(line: 1144, column: 6, scope: !540)
!734 = !DILocation(line: 1146, column: 25, scope: !540)
!735 = !DILocation(line: 1147, column: 8, scope: !540)
!736 = !DILocation(line: 1148, column: 14, scope: !540)
!737 = !DILocation(line: 1149, column: 18, scope: !540)
!738 = !DILocation(line: 1150, column: 17, scope: !540)
!739 = !DILocation(line: 1150, column: 15, scope: !540)
!740 = !DILocation(line: 1151, column: 22, scope: !540)
!741 = !DILocation(line: 1151, column: 20, scope: !540)
!742 = !DILocation(line: 1152, column: 26, scope: !540)
!743 = !DILocation(line: 1153, column: 19, scope: !540)
!744 = !DILocation(line: 1154, column: 23, scope: !540)
!745 = !DILocation(line: 1155, column: 2, scope: !540)
!746 = !DILocation(line: 1156, column: 9, scope: !540)
!747 = !DILocation(line: 1158, column: 2, scope: !540)
!748 = !DILocation(line: 1159, column: 2, scope: !540)
!749 = !DILocation(line: 1160, column: 2, scope: !540)
!750 = !DILocation(line: 1161, column: 2, scope: !540)
!751 = !DILocation(line: 1164, column: 2, scope: !540)
!752 = !DILocation(line: 1165, column: 2, scope: !540)
!753 = !DILocation(line: 1166, column: 9, scope: !540)
!754 = !DILocation(line: 1168, column: 13, scope: !540)
!755 = !DILocation(line: 1168, column: 11, scope: !540)
!756 = !DILocation(line: 1169, column: 9, scope: !540)
!757 = !DILocation(line: 1171, column: 2, scope: !540)
!758 = !DILocation(line: 1172, column: 2, scope: !540)
!759 = !DILocation(line: 1173, column: 2, scope: !540)
!760 = !DILocation(line: 1174, column: 2, scope: !540)
!761 = !DILocation(line: 1175, column: 2, scope: !540)
!762 = !DILocation(line: 1176, column: 2, scope: !540)
!763 = !DILocation(line: 1177, column: 2, scope: !540)
!764 = !DILocation(line: 1180, column: 2, scope: !540)
!765 = !DILocation(line: 1181, column: 2, scope: !540)
!766 = !DILocation(line: 1182, column: 2, scope: !540)
!767 = !DILocation(line: 1183, column: 2, scope: !540)
!768 = !DILocation(line: 1186, column: 2, scope: !540)
!769 = !DILocation(line: 1187, column: 2, scope: !540)
!770 = !DILocation(line: 1188, column: 2, scope: !540)
!771 = !DILocation(line: 1189, column: 2, scope: !540)
!772 = !DILocation(line: 1191, column: 2, scope: !540)
!773 = !DILocation(line: 1192, column: 2, scope: !540)
!774 = !DILocation(line: 1193, column: 2, scope: !540)
!775 = !DILocation(line: 1195, column: 2, scope: !540)
!776 = !DILocation(line: 1196, column: 2, scope: !540)
!777 = !DILocation(line: 1197, column: 2, scope: !540)
!778 = !DILocation(line: 1199, column: 2, scope: !540)
!779 = !DILocation(line: 1200, column: 2, scope: !540)
!780 = !DILocation(line: 1201, column: 2, scope: !540)
!781 = !DILocation(line: 1202, column: 2, scope: !540)
!782 = !DILocation(line: 1204, column: 2, scope: !540)
!783 = !DILocation(line: 1205, column: 2, scope: !540)
!784 = !DILocation(line: 1207, column: 2, scope: !540)
!785 = !DILocation(line: 1208, column: 2, scope: !540)
!786 = !DILocation(line: 1209, column: 2, scope: !540)
!787 = !DILocation(line: 1210, column: 2, scope: !540)
!788 = !DILocation(line: 1211, column: 2, scope: !540)
!789 = !DILocation(line: 1212, column: 2, scope: !540)
!790 = !DILocation(line: 1213, column: 2, scope: !540)
!791 = !DILocation(line: 1214, column: 2, scope: !540)
!792 = !DILocation(line: 1216, column: 2, scope: !540)
!793 = !DILocation(line: 1217, column: 2, scope: !540)
!794 = !DILocation(line: 1218, column: 2, scope: !540)
!795 = !DILocation(line: 1219, column: 2, scope: !540)
!796 = !DILocation(line: 1220, column: 2, scope: !540)
!797 = !DILocation(line: 1221, column: 2, scope: !540)
!798 = !DILocation(line: 1222, column: 2, scope: !540)
!799 = !DILocation(line: 1223, column: 2, scope: !540)
!800 = !DILocation(line: 1225, column: 2, scope: !540)
!801 = !DILocation(line: 1226, column: 2, scope: !540)
!802 = !DILocation(line: 1227, column: 2, scope: !540)
!803 = !DILocation(line: 1228, column: 2, scope: !540)
!804 = !DILocation(line: 1230, column: 2, scope: !540)
!805 = !DILocation(line: 1231, column: 2, scope: !540)
!806 = !DILocation(line: 1232, column: 2, scope: !540)
!807 = !DILocation(line: 1233, column: 2, scope: !540)
!808 = !DILocation(line: 1235, column: 2, scope: !540)
!809 = !DILocation(line: 1237, column: 2, scope: !540)
!810 = !DILocation(line: 1240, column: 2, scope: !540)
!811 = !DILocation(line: 1241, column: 2, scope: !540)
!812 = !DILocation(line: 1242, column: 3, scope: !540)
!813 = !DILocation(line: 1243, column: 3, scope: !540)
!814 = !DILocation(line: 1244, column: 2, scope: !540)
!815 = !DILocation(line: 1245, column: 2, scope: !540)
!816 = !DILocation(line: 1246, column: 3, scope: !540)
!817 = !DILocation(line: 1247, column: 2, scope: !540)
!818 = !DILocation(line: 1248, column: 2, scope: !540)
!819 = !DILocation(line: 1249, column: 2, scope: !540)
!820 = !DILocation(line: 1250, column: 2, scope: !540)
!821 = !DILocation(line: 1251, column: 2, scope: !540)
!822 = !DILocation(line: 1254, column: 2, scope: !540)
!823 = !DILocation(line: 1255, column: 2, scope: !540)
!824 = !DILocation(line: 1256, column: 2, scope: !540)
!825 = !DILocation(line: 1257, column: 2, scope: !540)
!826 = !DILocation(line: 1258, column: 2, scope: !540)
!827 = !DILocation(line: 1261, column: 2, scope: !540)
!828 = !DILocation(line: 1262, column: 2, scope: !540)
!829 = !DILocation(line: 1263, column: 2, scope: !540)
!830 = !DILocation(line: 1264, column: 2, scope: !540)
!831 = !DILocation(line: 1265, column: 2, scope: !540)
!832 = !DILocation(line: 1266, column: 2, scope: !540)
!833 = !DILocation(line: 1267, column: 2, scope: !540)
!834 = !DILocation(line: 1268, column: 2, scope: !540)
!835 = !DILocation(line: 1269, column: 2, scope: !540)
!836 = !DILocation(line: 1270, column: 2, scope: !540)
!837 = !DILocation(line: 1271, column: 2, scope: !540)
!838 = !DILocation(line: 1272, column: 2, scope: !540)
!839 = !DILocation(line: 1273, column: 2, scope: !540)
!840 = !DILocation(line: 1274, column: 2, scope: !540)
!841 = !DILocation(line: 1275, column: 2, scope: !540)
!842 = !DILocation(line: 1276, column: 2, scope: !540)
!843 = !DILocation(line: 1277, column: 2, scope: !540)
!844 = !DILocation(line: 1278, column: 2, scope: !540)
!845 = !DILocation(line: 1281, column: 2, scope: !540)
!846 = !DILocation(line: 1282, column: 2, scope: !540)
!847 = !DILocation(line: 1283, column: 2, scope: !540)
!848 = !DILocation(line: 1284, column: 2, scope: !540)
!849 = !DILocation(line: 1285, column: 2, scope: !540)
!850 = !DILocation(line: 1288, column: 2, scope: !540)
!851 = !DILocation(line: 1289, column: 2, scope: !540)
!852 = !DILocation(line: 1290, column: 2, scope: !540)
!853 = !DILocation(line: 1291, column: 2, scope: !540)
!854 = !DILocation(line: 1292, column: 2, scope: !540)
!855 = !DILocation(line: 1293, column: 2, scope: !540)
!856 = !DILocation(line: 1294, column: 2, scope: !540)
!857 = !DILocation(line: 1295, column: 2, scope: !540)
!858 = !DILocation(line: 1296, column: 2, scope: !540)
!859 = !DILocation(line: 1298, column: 2, scope: !540)
!860 = !DILocation(line: 1299, column: 2, scope: !540)
!861 = !DILocation(line: 1300, column: 2, scope: !540)
!862 = !DILocation(line: 1301, column: 2, scope: !540)
!863 = !DILocation(line: 1302, column: 2, scope: !540)
!864 = !DILocation(line: 1303, column: 2, scope: !540)
!865 = !DILocation(line: 1304, column: 2, scope: !540)
!866 = !DILocation(line: 1307, column: 2, scope: !540)
!867 = !DILocation(line: 1308, column: 2, scope: !540)
!868 = !DILocation(line: 1311, column: 2, scope: !540)
!869 = !DILocation(line: 1312, column: 2, scope: !540)
!870 = !DILocation(line: 1315, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !540, file: !347, line: 1315, column: 2)
!872 = !DILocation(line: 1315, column: 7, scope: !871)
!873 = !DILocation(line: 1315, column: 25, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !347, discriminator: 1)
!875 = distinct !DILexicalBlock(scope: !871, file: !347, line: 1315, column: 2)
!876 = !DILocation(line: 1315, column: 14, scope: !874)
!877 = !DILocation(line: 1315, column: 28, scope: !874)
!878 = !DILocation(line: 1315, column: 2, scope: !874)
!879 = !DILocation(line: 1316, column: 47, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !347, line: 1315, column: 42)
!881 = !DILocation(line: 1316, column: 36, scope: !880)
!882 = !DILocation(line: 1316, column: 9, scope: !880)
!883 = !DILocation(line: 1316, column: 7, scope: !880)
!884 = !DILocation(line: 1317, column: 14, scope: !880)
!885 = !DILocation(line: 1317, column: 40, scope: !880)
!886 = !DILocation(line: 1317, column: 41, scope: !880)
!887 = !DILocation(line: 1317, column: 3, scope: !880)
!888 = !DILocation(line: 1318, column: 46, scope: !880)
!889 = !DILocation(line: 1318, column: 51, scope: !880)
!890 = !DILocation(line: 1318, column: 3, scope: !880)
!891 = !DILocation(line: 1319, column: 10, scope: !880)
!892 = !DILocation(line: 1319, column: 3, scope: !880)
!893 = !DILocation(line: 1320, column: 2, scope: !880)
!894 = !DILocation(line: 1315, column: 38, scope: !895)
!895 = !DILexicalBlockFile(scope: !875, file: !347, discriminator: 2)
!896 = !DILocation(line: 1315, column: 2, scope: !895)
!897 = distinct !{!897, !898}
!898 = !DILocation(line: 1315, column: 2, scope: !540)
!899 = !DILocation(line: 1323, column: 2, scope: !540)
!900 = !DILocation(line: 1325, column: 9, scope: !540)
!901 = !DILocation(line: 1327, column: 2, scope: !540)
!902 = !DILocation(line: 1328, column: 2, scope: !540)
!903 = !DILocation(line: 1329, column: 2, scope: !540)
!904 = !DILocation(line: 1330, column: 2, scope: !540)
!905 = !DILocation(line: 1331, column: 1, scope: !540)
!906 = distinct !DISubprogram(name: "setup_changed", scope: !347, file: !347, line: 1127, type: !260, isLocal: true, isDefinition: true, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!907 = !DILocation(line: 1129, column: 22, scope: !906)
!908 = !DILocation(line: 1129, column: 20, scope: !906)
!909 = !DILocation(line: 1131, column: 28, scope: !906)
!910 = !DILocation(line: 1131, column: 26, scope: !906)
!911 = !DILocation(line: 1132, column: 25, scope: !906)
!912 = !DILocation(line: 1132, column: 23, scope: !906)
!913 = !DILocation(line: 1133, column: 29, scope: !906)
!914 = !DILocation(line: 1133, column: 27, scope: !906)
!915 = !DILocation(line: 1135, column: 23, scope: !906)
!916 = !DILocation(line: 1135, column: 2, scope: !917)
!917 = !DILexicalBlockFile(scope: !906, file: !347, discriminator: 1)
!918 = !DILocation(line: 1137, column: 32, scope: !906)
!919 = !DILocation(line: 1137, column: 2, scope: !906)
!920 = !DILocation(line: 1138, column: 1, scope: !906)
!921 = distinct !DISubprogram(name: "key_combo", scope: !347, file: !347, line: 507, type: !260, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!922 = !DILocation(line: 509, column: 1, scope: !921)
!923 = distinct !DISubprogram(name: "key_paste_start", scope: !347, file: !347, line: 869, type: !260, isLocal: true, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!924 = !DILocation(line: 871, column: 23, scope: !923)
!925 = !DILocation(line: 872, column: 1, scope: !923)
!926 = distinct !DISubprogram(name: "key_backward_character", scope: !347, file: !347, line: 576, type: !260, isLocal: true, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!927 = !DILocation(line: 578, column: 21, scope: !926)
!928 = !DILocation(line: 578, column: 2, scope: !926)
!929 = !DILocation(line: 579, column: 1, scope: !926)
!930 = distinct !DISubprogram(name: "key_forward_character", scope: !347, file: !347, line: 581, type: !260, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!931 = !DILocation(line: 583, column: 21, scope: !930)
!932 = !DILocation(line: 583, column: 2, scope: !930)
!933 = !DILocation(line: 584, column: 1, scope: !930)
!934 = distinct !DISubprogram(name: "key_backward_word", scope: !347, file: !347, line: 586, type: !260, isLocal: true, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!935 = !DILocation(line: 588, column: 23, scope: !934)
!936 = !DILocation(line: 588, column: 2, scope: !934)
!937 = !DILocation(line: 589, column: 1, scope: !934)
!938 = distinct !DISubprogram(name: "key_forward_word", scope: !347, file: !347, line: 591, type: !260, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!939 = !DILocation(line: 593, column: 23, scope: !938)
!940 = !DILocation(line: 593, column: 2, scope: !938)
!941 = !DILocation(line: 594, column: 1, scope: !938)
!942 = distinct !DISubprogram(name: "key_backward_to_space", scope: !347, file: !347, line: 596, type: !260, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!943 = !DILocation(line: 598, column: 23, scope: !942)
!944 = !DILocation(line: 598, column: 2, scope: !942)
!945 = !DILocation(line: 599, column: 1, scope: !942)
!946 = distinct !DISubprogram(name: "key_forward_to_space", scope: !347, file: !347, line: 601, type: !260, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!947 = !DILocation(line: 603, column: 23, scope: !946)
!948 = !DILocation(line: 603, column: 2, scope: !946)
!949 = !DILocation(line: 604, column: 1, scope: !946)
!950 = distinct !DISubprogram(name: "key_beginning_of_line", scope: !347, file: !347, line: 566, type: !260, isLocal: true, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!951 = !DILocation(line: 568, column: 27, scope: !950)
!952 = !DILocation(line: 568, column: 9, scope: !950)
!953 = !DILocation(line: 569, column: 1, scope: !950)
!954 = distinct !DISubprogram(name: "key_end_of_line", scope: !347, file: !347, line: 571, type: !260, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!955 = !DILocation(line: 573, column: 20, scope: !954)
!956 = !DILocation(line: 573, column: 34, scope: !954)
!957 = !DILocation(line: 573, column: 48, scope: !954)
!958 = !DILocation(line: 573, column: 2, scope: !954)
!959 = !DILocation(line: 574, column: 1, scope: !954)
!960 = distinct !DISubprogram(name: "key_backward_history", scope: !347, file: !347, line: 511, type: !260, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!961 = !DILocalVariable(name: "text", scope: !960, file: !347, line: 513, type: !351)
!962 = !DILocation(line: 513, column: 14, scope: !960)
!963 = !DILocalVariable(name: "line", scope: !960, file: !347, line: 514, type: !282)
!964 = !DILocation(line: 514, column: 15, scope: !960)
!965 = !DILocation(line: 516, column: 28, scope: !960)
!966 = !DILocation(line: 516, column: 9, scope: !960)
!967 = !DILocation(line: 516, column: 7, scope: !960)
!968 = !DILocation(line: 517, column: 30, scope: !960)
!969 = !DILocation(line: 517, column: 42, scope: !960)
!970 = !DILocation(line: 517, column: 9, scope: !960)
!971 = !DILocation(line: 517, column: 7, scope: !960)
!972 = !DILocation(line: 518, column: 21, scope: !960)
!973 = !DILocation(line: 518, column: 35, scope: !960)
!974 = !DILocation(line: 518, column: 2, scope: !960)
!975 = !DILocation(line: 519, column: 16, scope: !960)
!976 = !DILocation(line: 519, column: 9, scope: !960)
!977 = !DILocation(line: 520, column: 1, scope: !960)
!978 = distinct !DISubprogram(name: "key_forward_history", scope: !347, file: !347, line: 522, type: !260, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!979 = !DILocalVariable(name: "text", scope: !978, file: !347, line: 524, type: !351)
!980 = !DILocation(line: 524, column: 14, scope: !978)
!981 = !DILocalVariable(name: "line", scope: !978, file: !347, line: 525, type: !282)
!982 = !DILocation(line: 525, column: 8, scope: !978)
!983 = !DILocation(line: 527, column: 28, scope: !978)
!984 = !DILocation(line: 527, column: 9, scope: !978)
!985 = !DILocation(line: 527, column: 7, scope: !978)
!986 = !DILocation(line: 528, column: 30, scope: !978)
!987 = !DILocation(line: 528, column: 42, scope: !978)
!988 = !DILocation(line: 528, column: 9, scope: !978)
!989 = !DILocation(line: 528, column: 7, scope: !978)
!990 = !DILocation(line: 529, column: 21, scope: !978)
!991 = !DILocation(line: 529, column: 35, scope: !978)
!992 = !DILocation(line: 529, column: 2, scope: !978)
!993 = !DILocation(line: 530, column: 16, scope: !978)
!994 = !DILocation(line: 530, column: 9, scope: !978)
!995 = !DILocation(line: 531, column: 1, scope: !978)
!996 = distinct !DISubprogram(name: "key_backward_global_history", scope: !347, file: !347, line: 533, type: !260, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!997 = !DILocalVariable(name: "text", scope: !996, file: !347, line: 535, type: !351)
!998 = !DILocation(line: 535, column: 14, scope: !996)
!999 = !DILocalVariable(name: "line", scope: !996, file: !347, line: 536, type: !282)
!1000 = !DILocation(line: 536, column: 8, scope: !996)
!1001 = !DILocation(line: 538, column: 28, scope: !996)
!1002 = !DILocation(line: 538, column: 9, scope: !996)
!1003 = !DILocation(line: 538, column: 7, scope: !996)
!1004 = !DILocation(line: 539, column: 37, scope: !996)
!1005 = !DILocation(line: 539, column: 49, scope: !996)
!1006 = !DILocation(line: 539, column: 9, scope: !996)
!1007 = !DILocation(line: 539, column: 7, scope: !996)
!1008 = !DILocation(line: 540, column: 21, scope: !996)
!1009 = !DILocation(line: 540, column: 35, scope: !996)
!1010 = !DILocation(line: 540, column: 2, scope: !996)
!1011 = !DILocation(line: 541, column: 9, scope: !996)
!1012 = !DILocation(line: 541, column: 2, scope: !996)
!1013 = !DILocation(line: 542, column: 1, scope: !996)
!1014 = distinct !DISubprogram(name: "key_forward_global_history", scope: !347, file: !347, line: 544, type: !260, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1015 = !DILocalVariable(name: "text", scope: !1014, file: !347, line: 546, type: !351)
!1016 = !DILocation(line: 546, column: 14, scope: !1014)
!1017 = !DILocalVariable(name: "line", scope: !1014, file: !347, line: 547, type: !282)
!1018 = !DILocation(line: 547, column: 8, scope: !1014)
!1019 = !DILocation(line: 549, column: 28, scope: !1014)
!1020 = !DILocation(line: 549, column: 9, scope: !1014)
!1021 = !DILocation(line: 549, column: 7, scope: !1014)
!1022 = !DILocation(line: 550, column: 37, scope: !1014)
!1023 = !DILocation(line: 550, column: 49, scope: !1014)
!1024 = !DILocation(line: 550, column: 9, scope: !1014)
!1025 = !DILocation(line: 550, column: 7, scope: !1014)
!1026 = !DILocation(line: 551, column: 21, scope: !1014)
!1027 = !DILocation(line: 551, column: 35, scope: !1014)
!1028 = !DILocation(line: 551, column: 2, scope: !1014)
!1029 = !DILocation(line: 552, column: 9, scope: !1014)
!1030 = !DILocation(line: 552, column: 2, scope: !1014)
!1031 = !DILocation(line: 553, column: 1, scope: !1014)
!1032 = distinct !DISubprogram(name: "key_erase_history_entry", scope: !347, file: !347, line: 555, type: !260, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1033 = !DILocalVariable(name: "text", scope: !1032, file: !347, line: 557, type: !351)
!1034 = !DILocation(line: 557, column: 14, scope: !1032)
!1035 = !DILocalVariable(name: "line", scope: !1032, file: !347, line: 558, type: !282)
!1036 = !DILocation(line: 558, column: 8, scope: !1032)
!1037 = !DILocation(line: 560, column: 28, scope: !1032)
!1038 = !DILocation(line: 560, column: 9, scope: !1032)
!1039 = !DILocation(line: 560, column: 7, scope: !1032)
!1040 = !DILocation(line: 561, column: 40, scope: !1032)
!1041 = !DILocation(line: 561, column: 52, scope: !1032)
!1042 = !DILocation(line: 561, column: 9, scope: !1032)
!1043 = !DILocation(line: 561, column: 7, scope: !1032)
!1044 = !DILocation(line: 562, column: 21, scope: !1032)
!1045 = !DILocation(line: 562, column: 35, scope: !1032)
!1046 = !DILocation(line: 562, column: 2, scope: !1032)
!1047 = !DILocation(line: 563, column: 9, scope: !1032)
!1048 = !DILocation(line: 563, column: 2, scope: !1032)
!1049 = !DILocation(line: 564, column: 1, scope: !1032)
!1050 = distinct !DISubprogram(name: "key_backspace", scope: !347, file: !347, line: 696, type: !260, isLocal: true, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1051 = !DILocation(line: 698, column: 18, scope: !1050)
!1052 = !DILocation(line: 698, column: 2, scope: !1050)
!1053 = !DILocation(line: 699, column: 1, scope: !1050)
!1054 = distinct !DISubprogram(name: "key_delete_character", scope: !347, file: !347, line: 689, type: !260, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1055 = !DILocation(line: 691, column: 24, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !347, line: 691, column: 6)
!1057 = !DILocation(line: 691, column: 6, scope: !1056)
!1058 = !DILocation(line: 691, column: 40, scope: !1056)
!1059 = !DILocation(line: 691, column: 54, scope: !1056)
!1060 = !DILocation(line: 691, column: 38, scope: !1056)
!1061 = !DILocation(line: 691, column: 6, scope: !1054)
!1062 = !DILocation(line: 692, column: 24, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1056, file: !347, line: 691, column: 64)
!1064 = !DILocation(line: 692, column: 3, scope: !1063)
!1065 = !DILocation(line: 693, column: 2, scope: !1063)
!1066 = !DILocation(line: 694, column: 1, scope: !1054)
!1067 = distinct !DISubprogram(name: "key_delete_next_word", scope: !347, file: !347, line: 706, type: !260, isLocal: true, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1068 = !DILocation(line: 708, column: 28, scope: !1067)
!1069 = !DILocation(line: 708, column: 2, scope: !1067)
!1070 = !DILocation(line: 709, column: 1, scope: !1067)
!1071 = distinct !DISubprogram(name: "key_delete_previous_word", scope: !347, file: !347, line: 701, type: !260, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1072 = !DILocation(line: 703, column: 23, scope: !1071)
!1073 = !DILocation(line: 703, column: 2, scope: !1071)
!1074 = !DILocation(line: 704, column: 1, scope: !1071)
!1075 = distinct !DISubprogram(name: "key_delete_to_previous_space", scope: !347, file: !347, line: 711, type: !260, isLocal: true, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1076 = !DILocation(line: 713, column: 23, scope: !1075)
!1077 = !DILocation(line: 713, column: 2, scope: !1075)
!1078 = !DILocation(line: 714, column: 1, scope: !1075)
!1079 = distinct !DISubprogram(name: "key_delete_to_next_space", scope: !347, file: !347, line: 716, type: !260, isLocal: true, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1080 = !DILocation(line: 718, column: 28, scope: !1079)
!1081 = !DILocation(line: 718, column: 2, scope: !1079)
!1082 = !DILocation(line: 719, column: 1, scope: !1079)
!1083 = distinct !DISubprogram(name: "key_erase_line", scope: !347, file: !347, line: 606, type: !260, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1084 = !DILocation(line: 608, column: 20, scope: !1083)
!1085 = !DILocation(line: 608, column: 34, scope: !1083)
!1086 = !DILocation(line: 608, column: 48, scope: !1083)
!1087 = !DILocation(line: 608, column: 2, scope: !1083)
!1088 = !DILocation(line: 609, column: 18, scope: !1083)
!1089 = !DILocation(line: 609, column: 32, scope: !1083)
!1090 = !DILocation(line: 609, column: 46, scope: !1083)
!1091 = !DILocation(line: 609, column: 2, scope: !1083)
!1092 = !DILocation(line: 610, column: 1, scope: !1083)
!1093 = distinct !DISubprogram(name: "key_erase_to_beg_of_line", scope: !347, file: !347, line: 612, type: !260, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1094 = !DILocalVariable(name: "pos", scope: !1093, file: !347, line: 614, type: !154)
!1095 = !DILocation(line: 614, column: 6, scope: !1093)
!1096 = !DILocation(line: 616, column: 26, scope: !1093)
!1097 = !DILocation(line: 616, column: 8, scope: !1093)
!1098 = !DILocation(line: 616, column: 6, scope: !1093)
!1099 = !DILocation(line: 617, column: 18, scope: !1093)
!1100 = !DILocation(line: 617, column: 32, scope: !1093)
!1101 = !DILocation(line: 617, column: 2, scope: !1093)
!1102 = !DILocation(line: 618, column: 1, scope: !1093)
!1103 = distinct !DISubprogram(name: "key_erase_to_end_of_line", scope: !347, file: !347, line: 620, type: !260, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1104 = !DILocalVariable(name: "pos", scope: !1103, file: !347, line: 622, type: !154)
!1105 = !DILocation(line: 622, column: 6, scope: !1103)
!1106 = !DILocation(line: 624, column: 26, scope: !1103)
!1107 = !DILocation(line: 624, column: 8, scope: !1103)
!1108 = !DILocation(line: 624, column: 6, scope: !1103)
!1109 = !DILocation(line: 625, column: 20, scope: !1103)
!1110 = !DILocation(line: 625, column: 34, scope: !1103)
!1111 = !DILocation(line: 625, column: 48, scope: !1103)
!1112 = !DILocation(line: 625, column: 2, scope: !1103)
!1113 = !DILocation(line: 626, column: 18, scope: !1103)
!1114 = !DILocation(line: 626, column: 32, scope: !1103)
!1115 = !DILocation(line: 626, column: 46, scope: !1103)
!1116 = !DILocation(line: 626, column: 57, scope: !1103)
!1117 = !DILocation(line: 626, column: 55, scope: !1103)
!1118 = !DILocation(line: 626, column: 2, scope: !1103)
!1119 = !DILocation(line: 627, column: 1, scope: !1103)
!1120 = distinct !DISubprogram(name: "key_yank_from_cutbuffer", scope: !347, file: !347, line: 629, type: !260, isLocal: true, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1121 = !DILocalVariable(name: "cutbuffer", scope: !1120, file: !347, line: 631, type: !282)
!1122 = !DILocation(line: 631, column: 8, scope: !1120)
!1123 = !DILocation(line: 633, column: 45, scope: !1120)
!1124 = !DILocation(line: 633, column: 21, scope: !1120)
!1125 = !DILocation(line: 633, column: 19, scope: !1120)
!1126 = !DILocation(line: 634, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !347, line: 634, column: 6)
!1128 = !DILocation(line: 634, column: 16, scope: !1127)
!1129 = !DILocation(line: 634, column: 6, scope: !1120)
!1130 = !DILocation(line: 635, column: 25, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !347, line: 634, column: 24)
!1132 = !DILocation(line: 635, column: 39, scope: !1131)
!1133 = !DILocation(line: 635, column: 3, scope: !1131)
!1134 = !DILocation(line: 636, column: 3, scope: !1131)
!1135 = !DILocation(line: 636, column: 17, scope: !1131)
!1136 = !DILocation(line: 636, column: 31, scope: !1131)
!1137 = !DILocation(line: 637, column: 10, scope: !1131)
!1138 = !DILocation(line: 637, column: 3, scope: !1131)
!1139 = !DILocation(line: 638, column: 2, scope: !1131)
!1140 = !DILocation(line: 639, column: 1, scope: !1120)
!1141 = distinct !DISubprogram(name: "key_yank_next_cutbuffer", scope: !347, file: !347, line: 641, type: !260, isLocal: true, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1142 = !DILocalVariable(name: "rec", scope: !1141, file: !347, line: 643, type: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_ENTRY_CUTBUFFER_REC", file: !134, line: 7, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 4, size: 128, align: 64, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cutbuffer_len", scope: !1145, file: !134, line: 5, baseType: !154, size: 32, align: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cutbuffer", scope: !1145, file: !134, line: 6, baseType: !341, size: 64, align: 64, offset: 64)
!1149 = !DILocation(line: 643, column: 27, scope: !1141)
!1150 = !DILocalVariable(name: "length", scope: !1141, file: !347, line: 644, type: !263)
!1151 = !DILocation(line: 644, column: 8, scope: !1141)
!1152 = !DILocalVariable(name: "cutbuffer", scope: !1141, file: !347, line: 645, type: !282)
!1153 = !DILocation(line: 645, column: 8, scope: !1141)
!1154 = !DILocation(line: 647, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1141, file: !347, line: 647, column: 6)
!1156 = !DILocation(line: 647, column: 6, scope: !1141)
!1157 = !DILocation(line: 648, column: 3, scope: !1155)
!1158 = !DILocation(line: 650, column: 6, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1141, file: !347, line: 650, column: 6)
!1160 = !DILocation(line: 650, column: 20, scope: !1159)
!1161 = !DILocation(line: 650, column: 30, scope: !1159)
!1162 = !DILocation(line: 650, column: 6, scope: !1141)
!1163 = !DILocation(line: 651, column: 3, scope: !1159)
!1164 = !DILocation(line: 653, column: 8, scope: !1141)
!1165 = !DILocation(line: 653, column: 22, scope: !1141)
!1166 = !DILocation(line: 653, column: 33, scope: !1141)
!1167 = !DILocation(line: 653, column: 6, scope: !1141)
!1168 = !DILocation(line: 654, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1141, file: !347, line: 654, column: 6)
!1170 = !DILocation(line: 654, column: 10, scope: !1169)
!1171 = !DILocation(line: 654, column: 6, scope: !1141)
!1172 = !DILocation(line: 654, column: 27, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1169, file: !347, discriminator: 1)
!1174 = !DILocation(line: 654, column: 32, scope: !1173)
!1175 = !DILocation(line: 654, column: 25, scope: !1173)
!1176 = !DILocation(line: 654, column: 18, scope: !1173)
!1177 = !DILocation(line: 656, column: 43, scope: !1141)
!1178 = !DILocation(line: 656, column: 14, scope: !1141)
!1179 = !DILocation(line: 656, column: 12, scope: !1141)
!1180 = !DILocation(line: 657, column: 6, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1141, file: !347, line: 657, column: 6)
!1182 = !DILocation(line: 657, column: 16, scope: !1181)
!1183 = !DILocation(line: 657, column: 6, scope: !1141)
!1184 = !DILocation(line: 658, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !347, line: 657, column: 24)
!1186 = !DILocation(line: 658, column: 33, scope: !1185)
!1187 = !DILocation(line: 658, column: 3, scope: !1185)
!1188 = !DILocation(line: 659, column: 25, scope: !1185)
!1189 = !DILocation(line: 659, column: 39, scope: !1185)
!1190 = !DILocation(line: 659, column: 3, scope: !1185)
!1191 = !DILocation(line: 660, column: 3, scope: !1185)
!1192 = !DILocation(line: 660, column: 17, scope: !1185)
!1193 = !DILocation(line: 660, column: 31, scope: !1185)
!1194 = !DILocation(line: 661, column: 10, scope: !1185)
!1195 = !DILocation(line: 661, column: 3, scope: !1185)
!1196 = !DILocation(line: 662, column: 2, scope: !1185)
!1197 = !DILocation(line: 663, column: 1, scope: !1141)
!1198 = distinct !DISubprogram(name: "key_append_next_kill", scope: !347, file: !347, line: 721, type: !260, isLocal: true, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1199 = !DILocation(line: 723, column: 2, scope: !1198)
!1200 = !DILocation(line: 723, column: 16, scope: !1198)
!1201 = !DILocation(line: 723, column: 33, scope: !1198)
!1202 = !DILocation(line: 724, column: 1, scope: !1198)
!1203 = distinct !DISubprogram(name: "key_transpose_characters", scope: !347, file: !347, line: 665, type: !260, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1204 = !DILocation(line: 667, column: 28, scope: !1203)
!1205 = !DILocation(line: 667, column: 2, scope: !1203)
!1206 = !DILocation(line: 668, column: 1, scope: !1203)
!1207 = distinct !DISubprogram(name: "key_transpose_words", scope: !347, file: !347, line: 670, type: !260, isLocal: true, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1208 = !DILocation(line: 672, column: 28, scope: !1207)
!1209 = !DILocation(line: 672, column: 2, scope: !1207)
!1210 = !DILocation(line: 673, column: 1, scope: !1207)
!1211 = distinct !DISubprogram(name: "key_capitalize_word", scope: !347, file: !347, line: 675, type: !260, isLocal: true, isDefinition: true, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1212 = !DILocation(line: 677, column: 28, scope: !1211)
!1213 = !DILocation(line: 677, column: 2, scope: !1211)
!1214 = !DILocation(line: 678, column: 1, scope: !1211)
!1215 = distinct !DISubprogram(name: "key_downcase_word", scope: !347, file: !347, line: 680, type: !260, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1216 = !DILocation(line: 682, column: 26, scope: !1215)
!1217 = !DILocation(line: 682, column: 2, scope: !1215)
!1218 = !DILocation(line: 683, column: 1, scope: !1215)
!1219 = distinct !DISubprogram(name: "key_upcase_word", scope: !347, file: !347, line: 684, type: !260, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1220 = !DILocation(line: 686, column: 24, scope: !1219)
!1221 = !DILocation(line: 686, column: 2, scope: !1219)
!1222 = !DILocation(line: 687, column: 1, scope: !1219)
!1223 = distinct !DISubprogram(name: "key_send_line", scope: !347, file: !347, line: 472, type: !260, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1224 = !DILocalVariable(name: "history", scope: !1223, file: !347, line: 474, type: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1227, line: 14, baseType: !1228)
!1227 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 6, size: 256, align: 64, elements: !1229)
!1229 = !{!1230, !1231, !1240, !1241, !1242}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1228, file: !1227, line: 7, baseType: !282, size: 64, align: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1228, file: !1227, line: 9, baseType: !1232, size: 64, align: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1234, line: 37, baseType: !1235)
!1234 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1234, line: 39, size: 192, align: 64, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1235, file: !1234, line: 41, baseType: !211, size: 64, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !1234, line: 42, baseType: !1232, size: 64, align: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1235, file: !1234, line: 43, baseType: !1232, size: 64, align: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1228, file: !1227, line: 10, baseType: !154, size: 32, align: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1228, file: !1227, line: 12, baseType: !154, size: 32, align: 32, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1228, file: !1227, line: 13, baseType: !154, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1243 = !DILocation(line: 474, column: 15, scope: !1223)
!1244 = !DILocalVariable(name: "str", scope: !1223, file: !347, line: 475, type: !282)
!1245 = !DILocation(line: 475, column: 8, scope: !1223)
!1246 = !DILocalVariable(name: "add_history", scope: !1223, file: !347, line: 476, type: !154)
!1247 = !DILocation(line: 476, column: 6, scope: !1223)
!1248 = !DILocation(line: 478, column: 27, scope: !1223)
!1249 = !DILocation(line: 478, column: 8, scope: !1223)
!1250 = !DILocation(line: 478, column: 6, scope: !1223)
!1251 = !DILocation(line: 482, column: 17, scope: !1223)
!1252 = !DILocation(line: 482, column: 16, scope: !1223)
!1253 = !DILocation(line: 482, column: 21, scope: !1223)
!1254 = !DILocation(line: 482, column: 14, scope: !1223)
!1255 = !DILocation(line: 483, column: 36, scope: !1223)
!1256 = !DILocation(line: 483, column: 12, scope: !1223)
!1257 = !DILocation(line: 483, column: 10, scope: !1223)
!1258 = !DILocation(line: 485, column: 6, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1223, file: !347, line: 485, column: 6)
!1260 = !DILocation(line: 485, column: 12, scope: !1259)
!1261 = !DILocation(line: 485, column: 19, scope: !1259)
!1262 = !DILocation(line: 485, column: 22, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1259, file: !347, discriminator: 1)
!1264 = !DILocation(line: 485, column: 29, scope: !1263)
!1265 = !DILocation(line: 485, column: 35, scope: !1263)
!1266 = !DILocation(line: 485, column: 6, scope: !1263)
!1267 = !DILocation(line: 486, column: 15, scope: !1259)
!1268 = !DILocation(line: 486, column: 3, scope: !1259)
!1269 = !DILocation(line: 488, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1223, file: !347, line: 488, column: 6)
!1271 = !DILocation(line: 488, column: 18, scope: !1270)
!1272 = !DILocation(line: 488, column: 21, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1270, file: !347, discriminator: 1)
!1274 = !DILocation(line: 488, column: 29, scope: !1273)
!1275 = !DILocation(line: 488, column: 6, scope: !1273)
!1276 = !DILocation(line: 489, column: 23, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1270, file: !347, line: 488, column: 37)
!1278 = !DILocation(line: 489, column: 32, scope: !1277)
!1279 = !DILocation(line: 489, column: 3, scope: !1277)
!1280 = !DILocation(line: 490, column: 2, scope: !1277)
!1281 = !DILocation(line: 492, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1223, file: !347, line: 492, column: 6)
!1283 = !DILocation(line: 492, column: 12, scope: !1282)
!1284 = !DILocation(line: 492, column: 6, scope: !1223)
!1285 = !DILocation(line: 493, column: 34, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !347, line: 492, column: 20)
!1287 = !DILocation(line: 494, column: 8, scope: !1286)
!1288 = !DILocation(line: 494, column: 20, scope: !1286)
!1289 = !DILocation(line: 495, column: 8, scope: !1286)
!1290 = !DILocation(line: 495, column: 20, scope: !1286)
!1291 = !DILocation(line: 493, column: 3, scope: !1286)
!1292 = !DILocation(line: 496, column: 2, scope: !1286)
!1293 = !DILocation(line: 497, column: 25, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1282, file: !347, line: 496, column: 9)
!1295 = !DILocation(line: 497, column: 3, scope: !1294)
!1296 = !DILocation(line: 500, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1223, file: !347, line: 500, column: 6)
!1298 = !DILocation(line: 500, column: 19, scope: !1297)
!1299 = !DILocation(line: 500, column: 6, scope: !1223)
!1300 = !DILocation(line: 501, column: 22, scope: !1297)
!1301 = !DILocation(line: 501, column: 3, scope: !1297)
!1302 = !DILocation(line: 502, column: 28, scope: !1223)
!1303 = !DILocation(line: 502, column: 2, scope: !1223)
!1304 = !DILocation(line: 504, column: 16, scope: !1223)
!1305 = !DILocation(line: 504, column: 9, scope: !1223)
!1306 = !DILocation(line: 505, column: 1, scope: !1223)
!1307 = distinct !DISubprogram(name: "key_word_completion_backward", scope: !347, file: !347, line: 919, type: !260, isLocal: true, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1308 = !DILocation(line: 921, column: 9, scope: !1307)
!1309 = !DILocation(line: 922, column: 1, scope: !1307)
!1310 = distinct !DISubprogram(name: "key_word_completion", scope: !347, file: !347, line: 924, type: !260, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1311 = !DILocation(line: 926, column: 9, scope: !1310)
!1312 = !DILocation(line: 927, column: 1, scope: !1310)
!1313 = distinct !DISubprogram(name: "key_erase_completion", scope: !347, file: !347, line: 929, type: !260, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1314 = !DILocation(line: 931, column: 9, scope: !1313)
!1315 = !DILocation(line: 932, column: 1, scope: !1313)
!1316 = distinct !DISubprogram(name: "key_check_replaces", scope: !347, file: !347, line: 934, type: !260, isLocal: true, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1317 = !DILocalVariable(name: "text", scope: !1316, file: !347, line: 936, type: !282)
!1318 = !DILocation(line: 936, column: 8, scope: !1316)
!1319 = !DILocalVariable(name: "line", scope: !1316, file: !347, line: 936, type: !282)
!1320 = !DILocation(line: 936, column: 15, scope: !1316)
!1321 = !DILocalVariable(name: "pos", scope: !1316, file: !347, line: 937, type: !154)
!1322 = !DILocation(line: 937, column: 6, scope: !1316)
!1323 = !DILocation(line: 939, column: 43, scope: !1316)
!1324 = !DILocation(line: 939, column: 16, scope: !1316)
!1325 = !DILocation(line: 939, column: 14, scope: !1316)
!1326 = !DILocation(line: 940, column: 28, scope: !1316)
!1327 = !DILocation(line: 940, column: 9, scope: !1316)
!1328 = !DILocation(line: 940, column: 7, scope: !1316)
!1329 = !DILocation(line: 941, column: 9, scope: !1316)
!1330 = !DILocation(line: 941, column: 2, scope: !1316)
!1331 = !DILocation(line: 943, column: 6, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1316, file: !347, line: 943, column: 6)
!1333 = !DILocation(line: 943, column: 11, scope: !1332)
!1334 = !DILocation(line: 943, column: 6, scope: !1316)
!1335 = !DILocation(line: 944, column: 36, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !347, line: 943, column: 19)
!1337 = !DILocation(line: 944, column: 50, scope: !1336)
!1338 = !DILocation(line: 944, column: 56, scope: !1336)
!1339 = !DILocation(line: 944, column: 3, scope: !1336)
!1340 = !DILocation(line: 945, column: 10, scope: !1336)
!1341 = !DILocation(line: 945, column: 3, scope: !1336)
!1342 = !DILocation(line: 946, column: 2, scope: !1336)
!1343 = !DILocation(line: 947, column: 1, scope: !1316)
!1344 = distinct !DISubprogram(name: "key_previous_window", scope: !347, file: !347, line: 949, type: !260, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1345 = !DILocation(line: 951, column: 48, scope: !1344)
!1346 = !DILocation(line: 951, column: 60, scope: !1344)
!1347 = !DILocation(line: 951, column: 75, scope: !1344)
!1348 = !DILocation(line: 951, column: 87, scope: !1344)
!1349 = !DILocation(line: 951, column: 2, scope: !1344)
!1350 = !DILocation(line: 952, column: 1, scope: !1344)
!1351 = distinct !DISubprogram(name: "key_next_window", scope: !347, file: !347, line: 954, type: !260, isLocal: true, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1352 = !DILocation(line: 956, column: 44, scope: !1351)
!1353 = !DILocation(line: 956, column: 56, scope: !1351)
!1354 = !DILocation(line: 956, column: 71, scope: !1351)
!1355 = !DILocation(line: 956, column: 83, scope: !1351)
!1356 = !DILocation(line: 956, column: 2, scope: !1351)
!1357 = !DILocation(line: 957, column: 1, scope: !1351)
!1358 = distinct !DISubprogram(name: "key_upper_window", scope: !347, file: !347, line: 969, type: !260, isLocal: true, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1359 = !DILocation(line: 971, column: 42, scope: !1358)
!1360 = !DILocation(line: 971, column: 54, scope: !1358)
!1361 = !DILocation(line: 971, column: 69, scope: !1358)
!1362 = !DILocation(line: 971, column: 81, scope: !1358)
!1363 = !DILocation(line: 971, column: 2, scope: !1358)
!1364 = !DILocation(line: 972, column: 1, scope: !1358)
!1365 = distinct !DISubprogram(name: "key_lower_window", scope: !347, file: !347, line: 974, type: !260, isLocal: true, isDefinition: true, scopeLine: 975, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1366 = !DILocation(line: 976, column: 44, scope: !1365)
!1367 = !DILocation(line: 976, column: 56, scope: !1365)
!1368 = !DILocation(line: 976, column: 71, scope: !1365)
!1369 = !DILocation(line: 976, column: 83, scope: !1365)
!1370 = !DILocation(line: 976, column: 2, scope: !1365)
!1371 = !DILocation(line: 977, column: 1, scope: !1365)
!1372 = distinct !DISubprogram(name: "key_left_window", scope: !347, file: !347, line: 959, type: !260, isLocal: true, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1373 = !DILocation(line: 961, column: 44, scope: !1372)
!1374 = !DILocation(line: 961, column: 56, scope: !1372)
!1375 = !DILocation(line: 961, column: 71, scope: !1372)
!1376 = !DILocation(line: 961, column: 83, scope: !1372)
!1377 = !DILocation(line: 961, column: 2, scope: !1372)
!1378 = !DILocation(line: 962, column: 1, scope: !1372)
!1379 = distinct !DISubprogram(name: "key_right_window", scope: !347, file: !347, line: 964, type: !260, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1380 = !DILocation(line: 966, column: 45, scope: !1379)
!1381 = !DILocation(line: 966, column: 57, scope: !1379)
!1382 = !DILocation(line: 966, column: 72, scope: !1379)
!1383 = !DILocation(line: 966, column: 84, scope: !1379)
!1384 = !DILocation(line: 966, column: 2, scope: !1379)
!1385 = !DILocation(line: 967, column: 1, scope: !1379)
!1386 = distinct !DISubprogram(name: "key_active_window", scope: !347, file: !347, line: 979, type: !260, isLocal: true, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1387 = !DILocation(line: 981, column: 50, scope: !1386)
!1388 = !DILocation(line: 981, column: 62, scope: !1386)
!1389 = !DILocation(line: 981, column: 77, scope: !1386)
!1390 = !DILocation(line: 981, column: 89, scope: !1386)
!1391 = !DILocation(line: 981, column: 2, scope: !1386)
!1392 = !DILocation(line: 982, column: 1, scope: !1386)
!1393 = distinct !DISubprogram(name: "key_next_window_item", scope: !347, file: !347, line: 1063, type: !260, isLocal: true, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1394 = !DILocalVariable(name: "server", scope: !1393, file: !347, line: 1065, type: !353)
!1395 = !DILocation(line: 1065, column: 14, scope: !1393)
!1396 = !DILocation(line: 1067, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !347, line: 1067, column: 6)
!1398 = !DILocation(line: 1067, column: 18, scope: !1397)
!1399 = !DILocation(line: 1067, column: 24, scope: !1397)
!1400 = !DILocation(line: 1067, column: 6, scope: !1393)
!1401 = !DILocation(line: 1069, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !347, line: 1067, column: 32)
!1403 = !DILocation(line: 1069, column: 20, scope: !1402)
!1404 = !DILocation(line: 1069, column: 35, scope: !1402)
!1405 = !DILocation(line: 1069, column: 47, scope: !1402)
!1406 = !DILocation(line: 1068, column: 3, scope: !1402)
!1407 = !DILocation(line: 1070, column: 2, scope: !1402)
!1408 = !DILocation(line: 1070, column: 13, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !347, discriminator: 1)
!1410 = distinct !DILexicalBlock(scope: !1397, file: !347, line: 1070, column: 13)
!1411 = !DILocation(line: 1070, column: 21, scope: !1409)
!1412 = !DILocation(line: 1070, column: 28, scope: !1409)
!1413 = !DILocation(line: 1070, column: 31, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1410, file: !347, discriminator: 2)
!1415 = !DILocation(line: 1070, column: 46, scope: !1414)
!1416 = !DILocation(line: 1070, column: 13, scope: !1414)
!1417 = !DILocation(line: 1072, column: 12, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1410, file: !347, line: 1070, column: 55)
!1419 = !DILocation(line: 1072, column: 24, scope: !1418)
!1420 = !DILocation(line: 1072, column: 10, scope: !1418)
!1421 = !DILocation(line: 1073, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !347, line: 1073, column: 7)
!1423 = !DILocation(line: 1073, column: 14, scope: !1422)
!1424 = !DILocation(line: 1073, column: 7, scope: !1418)
!1425 = !DILocation(line: 1074, column: 13, scope: !1422)
!1426 = !DILocation(line: 1074, column: 25, scope: !1422)
!1427 = !DILocation(line: 1074, column: 11, scope: !1422)
!1428 = !DILocation(line: 1074, column: 4, scope: !1422)
!1429 = !DILocation(line: 1075, column: 28, scope: !1418)
!1430 = !DILocation(line: 1075, column: 12, scope: !1418)
!1431 = !DILocation(line: 1075, column: 10, scope: !1418)
!1432 = !DILocation(line: 1076, column: 43, scope: !1418)
!1433 = !DILocation(line: 1076, column: 51, scope: !1418)
!1434 = !DILocation(line: 1077, column: 8, scope: !1418)
!1435 = !DILocation(line: 1077, column: 20, scope: !1418)
!1436 = !DILocation(line: 1077, column: 35, scope: !1418)
!1437 = !DILocation(line: 1077, column: 47, scope: !1418)
!1438 = !DILocation(line: 1076, column: 3, scope: !1418)
!1439 = !DILocation(line: 1078, column: 2, scope: !1418)
!1440 = !DILocation(line: 1079, column: 1, scope: !1393)
!1441 = distinct !DISubprogram(name: "key_previous_window_item", scope: !347, file: !347, line: 1045, type: !260, isLocal: true, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1442 = !DILocalVariable(name: "server", scope: !1441, file: !347, line: 1047, type: !353)
!1443 = !DILocation(line: 1047, column: 14, scope: !1441)
!1444 = !DILocation(line: 1049, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !347, line: 1049, column: 6)
!1446 = !DILocation(line: 1049, column: 18, scope: !1445)
!1447 = !DILocation(line: 1049, column: 24, scope: !1445)
!1448 = !DILocation(line: 1049, column: 6, scope: !1441)
!1449 = !DILocation(line: 1051, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !347, line: 1049, column: 32)
!1451 = !DILocation(line: 1051, column: 20, scope: !1450)
!1452 = !DILocation(line: 1051, column: 35, scope: !1450)
!1453 = !DILocation(line: 1051, column: 47, scope: !1450)
!1454 = !DILocation(line: 1050, column: 3, scope: !1450)
!1455 = !DILocation(line: 1052, column: 2, scope: !1450)
!1456 = !DILocation(line: 1052, column: 13, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !347, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1445, file: !347, line: 1052, column: 13)
!1459 = !DILocation(line: 1052, column: 21, scope: !1457)
!1460 = !DILocation(line: 1052, column: 28, scope: !1457)
!1461 = !DILocation(line: 1052, column: 31, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1458, file: !347, discriminator: 2)
!1463 = !DILocation(line: 1052, column: 46, scope: !1462)
!1464 = !DILocation(line: 1052, column: 13, scope: !1462)
!1465 = !DILocation(line: 1054, column: 12, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1458, file: !347, line: 1052, column: 55)
!1467 = !DILocation(line: 1054, column: 24, scope: !1466)
!1468 = !DILocation(line: 1054, column: 10, scope: !1466)
!1469 = !DILocation(line: 1055, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !347, line: 1055, column: 7)
!1471 = !DILocation(line: 1055, column: 14, scope: !1470)
!1472 = !DILocation(line: 1055, column: 7, scope: !1466)
!1473 = !DILocation(line: 1056, column: 13, scope: !1470)
!1474 = !DILocation(line: 1056, column: 25, scope: !1470)
!1475 = !DILocation(line: 1056, column: 11, scope: !1470)
!1476 = !DILocation(line: 1056, column: 4, scope: !1470)
!1477 = !DILocation(line: 1057, column: 28, scope: !1466)
!1478 = !DILocation(line: 1057, column: 12, scope: !1466)
!1479 = !DILocation(line: 1057, column: 10, scope: !1466)
!1480 = !DILocation(line: 1058, column: 43, scope: !1466)
!1481 = !DILocation(line: 1058, column: 51, scope: !1466)
!1482 = !DILocation(line: 1059, column: 8, scope: !1466)
!1483 = !DILocation(line: 1059, column: 20, scope: !1466)
!1484 = !DILocation(line: 1059, column: 35, scope: !1466)
!1485 = !DILocation(line: 1059, column: 47, scope: !1466)
!1486 = !DILocation(line: 1058, column: 3, scope: !1466)
!1487 = !DILocation(line: 1060, column: 2, scope: !1466)
!1488 = !DILocation(line: 1061, column: 1, scope: !1441)
!1489 = distinct !DISubprogram(name: "key_scroll_backward", scope: !347, file: !347, line: 879, type: !260, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1490 = !DILocation(line: 881, column: 2, scope: !1489)
!1491 = !DILocation(line: 882, column: 1, scope: !1489)
!1492 = distinct !DISubprogram(name: "key_scroll_forward", scope: !347, file: !347, line: 884, type: !260, isLocal: true, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1493 = !DILocation(line: 886, column: 2, scope: !1492)
!1494 = !DILocation(line: 887, column: 1, scope: !1492)
!1495 = distinct !DISubprogram(name: "key_scroll_start", scope: !347, file: !347, line: 889, type: !260, isLocal: true, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1496 = !DILocation(line: 891, column: 49, scope: !1495)
!1497 = !DILocation(line: 891, column: 61, scope: !1495)
!1498 = !DILocation(line: 891, column: 76, scope: !1495)
!1499 = !DILocation(line: 891, column: 88, scope: !1495)
!1500 = !DILocation(line: 891, column: 2, scope: !1495)
!1501 = !DILocation(line: 892, column: 1, scope: !1495)
!1502 = distinct !DISubprogram(name: "key_scroll_end", scope: !347, file: !347, line: 894, type: !260, isLocal: true, isDefinition: true, scopeLine: 895, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1503 = !DILocation(line: 896, column: 48, scope: !1502)
!1504 = !DILocation(line: 896, column: 60, scope: !1502)
!1505 = !DILocation(line: 896, column: 75, scope: !1502)
!1506 = !DILocation(line: 896, column: 87, scope: !1502)
!1507 = !DILocation(line: 896, column: 2, scope: !1502)
!1508 = !DILocation(line: 897, column: 1, scope: !1502)
!1509 = distinct !DISubprogram(name: "key_escape", scope: !347, file: !347, line: 1081, type: !260, isLocal: true, isDefinition: true, scopeLine: 1082, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1510 = !DILocation(line: 1083, column: 25, scope: !1509)
!1511 = !DILocation(line: 1084, column: 1, scope: !1509)
!1512 = distinct !DISubprogram(name: "key_insert_text", scope: !347, file: !347, line: 1086, type: !1513, isLocal: true, isDefinition: true, scopeLine: 1087, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !351}
!1515 = !DILocalVariable(name: "data", arg: 1, scope: !1512, file: !347, line: 1086, type: !351)
!1516 = !DILocation(line: 1086, column: 41, scope: !1512)
!1517 = !DILocalVariable(name: "str", scope: !1512, file: !347, line: 1088, type: !282)
!1518 = !DILocation(line: 1088, column: 8, scope: !1512)
!1519 = !DILocation(line: 1090, column: 29, scope: !1512)
!1520 = !DILocation(line: 1090, column: 35, scope: !1512)
!1521 = !DILocation(line: 1090, column: 47, scope: !1512)
!1522 = !DILocation(line: 1091, column: 8, scope: !1512)
!1523 = !DILocation(line: 1091, column: 20, scope: !1512)
!1524 = !DILocation(line: 1090, column: 8, scope: !1512)
!1525 = !DILocation(line: 1090, column: 6, scope: !1512)
!1526 = !DILocation(line: 1092, column: 24, scope: !1512)
!1527 = !DILocation(line: 1092, column: 38, scope: !1512)
!1528 = !DILocation(line: 1092, column: 2, scope: !1512)
!1529 = !DILocation(line: 1093, column: 16, scope: !1512)
!1530 = !DILocation(line: 1093, column: 9, scope: !1512)
!1531 = !DILocation(line: 1094, column: 1, scope: !1512)
!1532 = distinct !DISubprogram(name: "key_change_window", scope: !347, file: !347, line: 899, type: !1513, isLocal: true, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1533 = !DILocalVariable(name: "data", arg: 1, scope: !1532, file: !347, line: 899, type: !351)
!1534 = !DILocation(line: 899, column: 43, scope: !1532)
!1535 = !DILocation(line: 901, column: 40, scope: !1532)
!1536 = !DILocation(line: 901, column: 46, scope: !1532)
!1537 = !DILocation(line: 901, column: 58, scope: !1532)
!1538 = !DILocation(line: 901, column: 73, scope: !1532)
!1539 = !DILocation(line: 901, column: 85, scope: !1532)
!1540 = !DILocation(line: 901, column: 2, scope: !1532)
!1541 = !DILocation(line: 902, column: 1, scope: !1532)
!1542 = distinct !DISubprogram(name: "key_sig_stop", scope: !347, file: !347, line: 1096, type: !260, isLocal: true, isDefinition: true, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1543 = !DILocation(line: 1098, column: 9, scope: !1542)
!1544 = !DILocation(line: 1099, column: 1, scope: !1542)
!1545 = distinct !DISubprogram(name: "sig_window_auto_changed", scope: !347, file: !347, line: 1101, type: !260, isLocal: true, isDefinition: true, scopeLine: 1102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1546 = !DILocalVariable(name: "text", scope: !1545, file: !347, line: 1103, type: !282)
!1547 = !DILocation(line: 1103, column: 8, scope: !1545)
!1548 = !DILocation(line: 1105, column: 6, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !347, line: 1105, column: 6)
!1550 = !DILocation(line: 1105, column: 19, scope: !1549)
!1551 = !DILocation(line: 1105, column: 6, scope: !1545)
!1552 = !DILocation(line: 1106, column: 3, scope: !1549)
!1553 = !DILocation(line: 1108, column: 35, scope: !1545)
!1554 = !DILocation(line: 1108, column: 16, scope: !1545)
!1555 = !DILocation(line: 1108, column: 14, scope: !1545)
!1556 = !DILocation(line: 1109, column: 23, scope: !1545)
!1557 = !DILocation(line: 1109, column: 35, scope: !1545)
!1558 = !DILocation(line: 1109, column: 2, scope: !1545)
!1559 = !DILocation(line: 1110, column: 21, scope: !1545)
!1560 = !DILocation(line: 1110, column: 2, scope: !1545)
!1561 = !DILocation(line: 1111, column: 16, scope: !1545)
!1562 = !DILocation(line: 1111, column: 9, scope: !1545)
!1563 = !DILocation(line: 1112, column: 1, scope: !1545)
!1564 = !DILocation(line: 1112, column: 1, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1545, file: !347, discriminator: 1)
!1566 = distinct !DISubprogram(name: "sig_gui_entry_redirect", scope: !347, file: !347, line: 1114, type: !1567, isLocal: true, isDefinition: true, scopeLine: 1116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !334, !351, !146, !146}
!1569 = !DILocalVariable(name: "func", arg: 1, scope: !1566, file: !347, line: 1114, type: !334)
!1570 = !DILocation(line: 1114, column: 48, scope: !1566)
!1571 = !DILocalVariable(name: "entry", arg: 2, scope: !1566, file: !347, line: 1114, type: !351)
!1572 = !DILocation(line: 1114, column: 66, scope: !1566)
!1573 = !DILocalVariable(name: "flags", arg: 3, scope: !1566, file: !347, line: 1115, type: !146)
!1574 = !DILocation(line: 1115, column: 14, scope: !1566)
!1575 = !DILocalVariable(name: "data", arg: 4, scope: !1566, file: !347, line: 1115, type: !146)
!1576 = !DILocation(line: 1115, column: 27, scope: !1566)
!1577 = !DILocation(line: 1117, column: 34, scope: !1566)
!1578 = !DILocation(line: 1117, column: 11, scope: !1566)
!1579 = !DILocation(line: 1117, column: 8, scope: !1566)
!1580 = !DILocation(line: 1118, column: 16, scope: !1566)
!1581 = !DILocation(line: 1118, column: 2, scope: !1566)
!1582 = !DILocation(line: 1118, column: 9, scope: !1566)
!1583 = !DILocation(line: 1118, column: 14, scope: !1566)
!1584 = !DILocation(line: 1119, column: 34, scope: !1566)
!1585 = !DILocation(line: 1119, column: 25, scope: !1566)
!1586 = !DILocation(line: 1119, column: 18, scope: !1566)
!1587 = !DILocation(line: 1119, column: 2, scope: !1566)
!1588 = !DILocation(line: 1119, column: 9, scope: !1566)
!1589 = !DILocation(line: 1119, column: 15, scope: !1566)
!1590 = !DILocation(line: 1120, column: 16, scope: !1566)
!1591 = !DILocation(line: 1120, column: 2, scope: !1566)
!1592 = !DILocation(line: 1120, column: 9, scope: !1566)
!1593 = !DILocation(line: 1120, column: 14, scope: !1566)
!1594 = !DILocation(line: 1122, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1566, file: !347, line: 1122, column: 6)
!1596 = !DILocation(line: 1122, column: 13, scope: !1595)
!1597 = !DILocation(line: 1122, column: 19, scope: !1595)
!1598 = !DILocation(line: 1122, column: 6, scope: !1566)
!1599 = !DILocation(line: 1123, column: 24, scope: !1595)
!1600 = !DILocation(line: 1123, column: 3, scope: !1595)
!1601 = !DILocation(line: 1124, column: 23, scope: !1566)
!1602 = !DILocation(line: 1124, column: 37, scope: !1566)
!1603 = !DILocation(line: 1124, column: 2, scope: !1566)
!1604 = !DILocation(line: 1125, column: 1, scope: !1566)
!1605 = distinct !DISubprogram(name: "sig_gui_key_pressed", scope: !347, file: !347, line: 394, type: !219, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1606 = !DILocalVariable(name: "keyp", arg: 1, scope: !1605, file: !347, line: 394, type: !211)
!1607 = !DILocation(line: 394, column: 42, scope: !1605)
!1608 = !DILocalVariable(name: "now", scope: !1605, file: !347, line: 396, type: !450)
!1609 = !DILocation(line: 396, column: 11, scope: !1605)
!1610 = !DILocalVariable(name: "key", scope: !1605, file: !347, line: 397, type: !342)
!1611 = !DILocation(line: 397, column: 17, scope: !1605)
!1612 = !DILocalVariable(name: "str", scope: !1605, file: !347, line: 398, type: !542)
!1613 = !DILocation(line: 398, column: 7, scope: !1605)
!1614 = !DILocalVariable(name: "ret", scope: !1605, file: !347, line: 399, type: !154)
!1615 = !DILocation(line: 399, column: 6, scope: !1605)
!1616 = !DILocation(line: 401, column: 25, scope: !1605)
!1617 = !DILocation(line: 401, column: 16, scope: !1605)
!1618 = !DILocation(line: 401, column: 9, scope: !1605)
!1619 = !DILocation(line: 401, column: 6, scope: !1605)
!1620 = !DILocation(line: 403, column: 6, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1605, file: !347, line: 403, column: 6)
!1622 = !DILocation(line: 403, column: 12, scope: !1621)
!1623 = !DILocation(line: 403, column: 19, scope: !1621)
!1624 = !DILocation(line: 403, column: 22, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1621, file: !347, discriminator: 1)
!1626 = !DILocation(line: 403, column: 29, scope: !1625)
!1627 = !DILocation(line: 403, column: 35, scope: !1625)
!1628 = !DILocation(line: 403, column: 6, scope: !1625)
!1629 = !DILocation(line: 404, column: 23, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1621, file: !347, line: 403, column: 43)
!1631 = !DILocation(line: 404, column: 3, scope: !1630)
!1632 = !DILocation(line: 405, column: 3, scope: !1630)
!1633 = !DILocation(line: 408, column: 9, scope: !1605)
!1634 = !DILocation(line: 410, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1605, file: !347, line: 410, column: 6)
!1636 = !DILocation(line: 410, column: 10, scope: !1635)
!1637 = !DILocation(line: 410, column: 6, scope: !1605)
!1638 = !DILocation(line: 412, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !347, line: 410, column: 16)
!1640 = !DILocation(line: 412, column: 24, scope: !1639)
!1641 = !DILocation(line: 413, column: 18, scope: !1639)
!1642 = !DILocation(line: 413, column: 12, scope: !1639)
!1643 = !DILocation(line: 413, column: 21, scope: !1639)
!1644 = !DILocation(line: 413, column: 3, scope: !1639)
!1645 = !DILocation(line: 413, column: 10, scope: !1639)
!1646 = !DILocation(line: 414, column: 17, scope: !1639)
!1647 = !DILocation(line: 414, column: 24, scope: !1639)
!1648 = !DILocation(line: 415, column: 2, scope: !1639)
!1649 = !DILocation(line: 415, column: 13, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !347, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1635, file: !347, line: 415, column: 13)
!1652 = !DILocation(line: 415, column: 17, scope: !1650)
!1653 = !DILocation(line: 416, column: 17, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !347, line: 415, column: 25)
!1655 = !DILocation(line: 416, column: 24, scope: !1654)
!1656 = !DILocation(line: 417, column: 3, scope: !1654)
!1657 = !DILocation(line: 417, column: 10, scope: !1654)
!1658 = !DILocation(line: 418, column: 17, scope: !1654)
!1659 = !DILocation(line: 418, column: 24, scope: !1654)
!1660 = !DILocation(line: 419, column: 2, scope: !1654)
!1661 = !DILocation(line: 419, column: 14, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !347, discriminator: 1)
!1663 = distinct !DILexicalBlock(scope: !1651, file: !347, line: 419, column: 13)
!1664 = !DILocation(line: 419, column: 28, scope: !1662)
!1665 = !DILocation(line: 419, column: 13, scope: !1662)
!1666 = !DILocation(line: 420, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !347, line: 420, column: 7)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !347, line: 419, column: 34)
!1669 = !DILocation(line: 420, column: 11, scope: !1667)
!1670 = !DILocation(line: 420, column: 7, scope: !1668)
!1671 = !DILocation(line: 421, column: 19, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !347, line: 420, column: 20)
!1673 = !DILocation(line: 421, column: 13, scope: !1672)
!1674 = !DILocation(line: 421, column: 4, scope: !1672)
!1675 = !DILocation(line: 421, column: 11, scope: !1672)
!1676 = !DILocation(line: 422, column: 4, scope: !1672)
!1677 = !DILocation(line: 422, column: 11, scope: !1672)
!1678 = !DILocation(line: 423, column: 3, scope: !1672)
!1679 = !DILocation(line: 424, column: 21, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1667, file: !347, line: 423, column: 10)
!1681 = !DILocation(line: 424, column: 25, scope: !1680)
!1682 = !DILocation(line: 424, column: 13, scope: !1680)
!1683 = !DILocation(line: 424, column: 4, scope: !1680)
!1684 = !DILocation(line: 424, column: 11, scope: !1680)
!1685 = !DILocation(line: 425, column: 21, scope: !1680)
!1686 = !DILocation(line: 425, column: 25, scope: !1680)
!1687 = !DILocation(line: 425, column: 13, scope: !1680)
!1688 = !DILocation(line: 425, column: 4, scope: !1680)
!1689 = !DILocation(line: 425, column: 11, scope: !1680)
!1690 = !DILocation(line: 426, column: 4, scope: !1680)
!1691 = !DILocation(line: 426, column: 11, scope: !1680)
!1692 = !DILocation(line: 428, column: 2, scope: !1668)
!1693 = !DILocation(line: 430, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1663, file: !347, line: 428, column: 9)
!1695 = !DILocation(line: 430, column: 30, scope: !1694)
!1696 = !DILocation(line: 430, column: 7, scope: !1694)
!1697 = !DILocation(line: 430, column: 3, scope: !1694)
!1698 = !DILocation(line: 430, column: 36, scope: !1694)
!1699 = !DILocation(line: 433, column: 16, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1605, file: !347, line: 433, column: 6)
!1701 = !DILocation(line: 433, column: 6, scope: !1700)
!1702 = !DILocation(line: 433, column: 26, scope: !1700)
!1703 = !DILocation(line: 433, column: 6, scope: !1605)
!1704 = !DILocation(line: 435, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !347, line: 433, column: 32)
!1706 = !DILocation(line: 435, column: 10, scope: !1705)
!1707 = !DILocation(line: 436, column: 3, scope: !1705)
!1708 = !DILocation(line: 436, column: 10, scope: !1705)
!1709 = !DILocation(line: 437, column: 2, scope: !1705)
!1710 = !DILocation(line: 439, column: 6, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1605, file: !347, line: 439, column: 6)
!1712 = !DILocation(line: 439, column: 6, scope: !1605)
!1713 = !DILocation(line: 440, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !347, line: 439, column: 23)
!1715 = !DILocation(line: 441, column: 25, scope: !1714)
!1716 = !DILocation(line: 441, column: 39, scope: !1714)
!1717 = !DILocation(line: 441, column: 3, scope: !1714)
!1718 = !DILocation(line: 442, column: 7, scope: !1714)
!1719 = !DILocation(line: 443, column: 2, scope: !1714)
!1720 = !DILocation(line: 444, column: 28, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1711, file: !347, line: 443, column: 9)
!1722 = !DILocation(line: 444, column: 42, scope: !1721)
!1723 = !DILocation(line: 444, column: 26, scope: !1721)
!1724 = !DILocation(line: 445, column: 3, scope: !1721)
!1725 = !DILocation(line: 445, column: 17, scope: !1721)
!1726 = !DILocation(line: 445, column: 31, scope: !1721)
!1727 = !DILocation(line: 446, column: 45, scope: !1721)
!1728 = !DILocation(line: 446, column: 59, scope: !1721)
!1729 = !DILocation(line: 446, column: 3, scope: !1721)
!1730 = !DILocation(line: 446, column: 17, scope: !1721)
!1731 = !DILocation(line: 446, column: 43, scope: !1721)
!1732 = !DILocation(line: 447, column: 3, scope: !1721)
!1733 = !DILocation(line: 447, column: 17, scope: !1721)
!1734 = !DILocation(line: 447, column: 34, scope: !1721)
!1735 = !DILocation(line: 448, column: 21, scope: !1721)
!1736 = !DILocation(line: 448, column: 31, scope: !1721)
!1737 = !DILocation(line: 448, column: 9, scope: !1721)
!1738 = !DILocation(line: 448, column: 7, scope: !1721)
!1739 = !DILocation(line: 449, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1721, file: !347, line: 449, column: 7)
!1741 = !DILocation(line: 449, column: 11, scope: !1740)
!1742 = !DILocation(line: 449, column: 7, scope: !1721)
!1743 = !DILocation(line: 451, column: 26, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !347, line: 449, column: 16)
!1745 = !DILocation(line: 451, column: 40, scope: !1744)
!1746 = !DILocation(line: 451, column: 4, scope: !1744)
!1747 = !DILocation(line: 452, column: 3, scope: !1744)
!1748 = !DILocation(line: 453, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1721, file: !347, line: 453, column: 7)
!1750 = !DILocation(line: 453, column: 11, scope: !1749)
!1751 = !DILocation(line: 453, column: 7, scope: !1721)
!1752 = !DILocation(line: 455, column: 37, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !347, line: 453, column: 17)
!1754 = !DILocation(line: 455, column: 51, scope: !1753)
!1755 = !DILocation(line: 455, column: 4, scope: !1753)
!1756 = !DILocation(line: 455, column: 18, scope: !1753)
!1757 = !DILocation(line: 455, column: 35, scope: !1753)
!1758 = !DILocation(line: 456, column: 34, scope: !1753)
!1759 = !DILocation(line: 456, column: 4, scope: !1753)
!1760 = !DILocation(line: 456, column: 18, scope: !1753)
!1761 = !DILocation(line: 456, column: 32, scope: !1753)
!1762 = !DILocation(line: 457, column: 3, scope: !1753)
!1763 = !DILocation(line: 466, column: 6, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1605, file: !347, line: 466, column: 6)
!1765 = !DILocation(line: 466, column: 10, scope: !1764)
!1766 = !DILocation(line: 466, column: 15, scope: !1764)
!1767 = !DILocation(line: 466, column: 18, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1764, file: !347, discriminator: 1)
!1769 = !DILocation(line: 466, column: 25, scope: !1768)
!1770 = !DILocation(line: 466, column: 22, scope: !1768)
!1771 = !DILocation(line: 466, column: 6, scope: !1768)
!1772 = !DILocation(line: 467, column: 19, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1764, file: !347, line: 466, column: 35)
!1774 = !DILocation(line: 468, column: 2, scope: !1773)
!1775 = !DILocation(line: 469, column: 13, scope: !1605)
!1776 = !DILocation(line: 469, column: 11, scope: !1605)
!1777 = !DILocation(line: 470, column: 1, scope: !1605)
!1778 = !DILocation(line: 470, column: 1, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1605, file: !347, discriminator: 1)
!1780 = distinct !DISubprogram(name: "gui_readline_deinit", scope: !347, file: !347, line: 1333, type: !260, isLocal: false, isDefinition: true, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1781 = !DILocation(line: 1335, column: 9, scope: !1780)
!1782 = !DILocation(line: 1337, column: 9, scope: !1780)
!1783 = !DILocation(line: 1339, column: 2, scope: !1780)
!1784 = !DILocation(line: 1341, column: 2, scope: !1780)
!1785 = !DILocation(line: 1342, column: 2, scope: !1780)
!1786 = !DILocation(line: 1343, column: 3, scope: !1780)
!1787 = !DILocation(line: 1344, column: 2, scope: !1780)
!1788 = !DILocation(line: 1345, column: 3, scope: !1780)
!1789 = !DILocation(line: 1346, column: 2, scope: !1780)
!1790 = !DILocation(line: 1347, column: 2, scope: !1780)
!1791 = !DILocation(line: 1348, column: 2, scope: !1780)
!1792 = !DILocation(line: 1350, column: 2, scope: !1780)
!1793 = !DILocation(line: 1351, column: 2, scope: !1780)
!1794 = !DILocation(line: 1352, column: 2, scope: !1780)
!1795 = !DILocation(line: 1353, column: 2, scope: !1780)
!1796 = !DILocation(line: 1354, column: 2, scope: !1780)
!1797 = !DILocation(line: 1356, column: 2, scope: !1780)
!1798 = !DILocation(line: 1357, column: 2, scope: !1780)
!1799 = !DILocation(line: 1358, column: 2, scope: !1780)
!1800 = !DILocation(line: 1359, column: 2, scope: !1780)
!1801 = !DILocation(line: 1360, column: 2, scope: !1780)
!1802 = !DILocation(line: 1361, column: 2, scope: !1780)
!1803 = !DILocation(line: 1362, column: 2, scope: !1780)
!1804 = !DILocation(line: 1363, column: 2, scope: !1780)
!1805 = !DILocation(line: 1364, column: 2, scope: !1780)
!1806 = !DILocation(line: 1365, column: 2, scope: !1780)
!1807 = !DILocation(line: 1366, column: 2, scope: !1780)
!1808 = !DILocation(line: 1367, column: 2, scope: !1780)
!1809 = !DILocation(line: 1368, column: 2, scope: !1780)
!1810 = !DILocation(line: 1369, column: 2, scope: !1780)
!1811 = !DILocation(line: 1371, column: 2, scope: !1780)
!1812 = !DILocation(line: 1372, column: 2, scope: !1780)
!1813 = !DILocation(line: 1373, column: 2, scope: !1780)
!1814 = !DILocation(line: 1375, column: 2, scope: !1780)
!1815 = !DILocation(line: 1376, column: 2, scope: !1780)
!1816 = !DILocation(line: 1377, column: 2, scope: !1780)
!1817 = !DILocation(line: 1378, column: 2, scope: !1780)
!1818 = !DILocation(line: 1379, column: 2, scope: !1780)
!1819 = !DILocation(line: 1381, column: 2, scope: !1780)
!1820 = !DILocation(line: 1382, column: 2, scope: !1780)
!1821 = !DILocation(line: 1383, column: 2, scope: !1780)
!1822 = !DILocation(line: 1384, column: 2, scope: !1780)
!1823 = !DILocation(line: 1385, column: 2, scope: !1780)
!1824 = !DILocation(line: 1386, column: 2, scope: !1780)
!1825 = !DILocation(line: 1387, column: 2, scope: !1780)
!1826 = !DILocation(line: 1388, column: 2, scope: !1780)
!1827 = !DILocation(line: 1389, column: 2, scope: !1780)
!1828 = !DILocation(line: 1391, column: 2, scope: !1780)
!1829 = !DILocation(line: 1392, column: 2, scope: !1780)
!1830 = !DILocation(line: 1393, column: 2, scope: !1780)
!1831 = !DILocation(line: 1394, column: 2, scope: !1780)
!1832 = !DILocation(line: 1395, column: 2, scope: !1780)
!1833 = !DILocation(line: 1397, column: 2, scope: !1780)
!1834 = !DILocation(line: 1398, column: 2, scope: !1780)
!1835 = !DILocation(line: 1399, column: 2, scope: !1780)
!1836 = !DILocation(line: 1400, column: 2, scope: !1780)
!1837 = !DILocation(line: 1401, column: 19, scope: !1780)
!1838 = !DILocation(line: 1401, column: 2, scope: !1780)
!1839 = !DILocation(line: 1402, column: 22, scope: !1780)
!1840 = !DILocation(line: 1402, column: 9, scope: !1780)
!1841 = !DILocation(line: 1403, column: 22, scope: !1780)
!1842 = !DILocation(line: 1403, column: 9, scope: !1780)
!1843 = !DILocation(line: 1405, column: 9, scope: !1780)
!1844 = !DILocation(line: 1407, column: 2, scope: !1780)
!1845 = !DILocation(line: 1408, column: 2, scope: !1780)
!1846 = !DILocation(line: 1409, column: 2, scope: !1780)
!1847 = !DILocation(line: 1410, column: 2, scope: !1780)
!1848 = !DILocation(line: 1411, column: 1, scope: !1780)
!1849 = distinct !DISubprogram(name: "paste_flush", scope: !347, file: !347, line: 332, type: !585, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1850 = !DILocalVariable(name: "send", arg: 1, scope: !1849, file: !347, line: 332, type: !154)
!1851 = !DILocation(line: 332, column: 29, scope: !1849)
!1852 = !DILocation(line: 334, column: 6, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !347, line: 334, column: 6)
!1854 = !DILocation(line: 334, column: 6, scope: !1849)
!1855 = !DILocation(line: 335, column: 22, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !347, line: 334, column: 20)
!1857 = !DILocation(line: 335, column: 36, scope: !1856)
!1858 = !DILocation(line: 335, column: 3, scope: !1856)
!1859 = !DILocation(line: 336, column: 21, scope: !1856)
!1860 = !DILocation(line: 336, column: 35, scope: !1856)
!1861 = !DILocation(line: 336, column: 3, scope: !1856)
!1862 = !DILocation(line: 337, column: 3, scope: !1856)
!1863 = distinct !{!1863, !1862}
!1864 = !DILocation(line: 337, column: 12, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !347, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !347, line: 337, column: 12)
!1867 = distinct !DILexicalBlock(scope: !1856, file: !347, line: 337, column: 6)
!1868 = !DILocation(line: 337, column: 34, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !347, discriminator: 2)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !347, line: 337, column: 25)
!1871 = !DILocation(line: 337, column: 27, scope: !1869)
!1872 = !DILocation(line: 337, column: 62, scope: !1869)
!1873 = !DILocation(line: 337, column: 4, scope: !1869)
!1874 = !DILocation(line: 337, column: 6, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1867, file: !347, discriminator: 3)
!1876 = !DILocation(line: 338, column: 2, scope: !1856)
!1877 = !DILocation(line: 340, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1849, file: !347, line: 340, column: 6)
!1879 = !DILocation(line: 340, column: 6, scope: !1849)
!1880 = !DILocation(line: 341, column: 3, scope: !1878)
!1881 = !DILocation(line: 342, column: 19, scope: !1849)
!1882 = !DILocation(line: 342, column: 2, scope: !1849)
!1883 = !DILocation(line: 345, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1849, file: !347, line: 345, column: 6)
!1885 = !DILocation(line: 345, column: 25, scope: !1884)
!1886 = !DILocation(line: 345, column: 29, scope: !1884)
!1887 = !DILocation(line: 345, column: 6, scope: !1849)
!1888 = !DILocation(line: 346, column: 23, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !347, line: 345, column: 34)
!1890 = !DILocation(line: 346, column: 37, scope: !1889)
!1891 = !DILocation(line: 346, column: 56, scope: !1889)
!1892 = !DILocation(line: 346, column: 62, scope: !1889)
!1893 = !DILocation(line: 346, column: 81, scope: !1889)
!1894 = !DILocation(line: 346, column: 3, scope: !1889)
!1895 = !DILocation(line: 347, column: 20, scope: !1889)
!1896 = !DILocation(line: 347, column: 3, scope: !1889)
!1897 = !DILocation(line: 348, column: 2, scope: !1889)
!1898 = !DILocation(line: 350, column: 23, scope: !1849)
!1899 = !DILocation(line: 351, column: 9, scope: !1849)
!1900 = !DILocation(line: 351, column: 26, scope: !1849)
!1901 = !DILocation(line: 351, column: 9, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1849, file: !347, discriminator: 1)
!1903 = !DILocation(line: 351, column: 40, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1849, file: !347, discriminator: 2)
!1905 = !DILocation(line: 351, column: 9, scope: !1904)
!1906 = !DILocation(line: 351, column: 9, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1849, file: !347, discriminator: 3)
!1908 = !DILocation(line: 350, column: 2, scope: !1902)
!1909 = !DILocation(line: 352, column: 9, scope: !1849)
!1910 = !DILocation(line: 352, column: 2, scope: !1849)
!1911 = !DILocation(line: 352, column: 45, scope: !1849)
!1912 = !DILocation(line: 353, column: 15, scope: !1849)
!1913 = !DILocation(line: 355, column: 19, scope: !1849)
!1914 = !DILocation(line: 357, column: 19, scope: !1849)
!1915 = !DILocation(line: 357, column: 2, scope: !1849)
!1916 = !DILocation(line: 358, column: 1, scope: !1849)
!1917 = distinct !DISubprogram(name: "paste_timeout", scope: !347, file: !347, line: 726, type: !229, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1918 = !DILocalVariable(name: "data", arg: 1, scope: !1917, file: !347, line: 726, type: !211)
!1919 = !DILocation(line: 726, column: 40, scope: !1917)
!1920 = !DILocalVariable(name: "split_lines", scope: !1917, file: !347, line: 728, type: !154)
!1921 = !DILocation(line: 728, column: 6, scope: !1917)
!1922 = !DILocation(line: 729, column: 29, scope: !1917)
!1923 = !DILocation(line: 729, column: 27, scope: !1917)
!1924 = !DILocation(line: 732, column: 16, scope: !1917)
!1925 = !DILocation(line: 732, column: 30, scope: !1917)
!1926 = !DILocation(line: 732, column: 34, scope: !1917)
!1927 = !DILocation(line: 732, column: 14, scope: !1917)
!1928 = !DILocation(line: 735, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !347, line: 735, column: 6)
!1930 = !DILocation(line: 735, column: 23, scope: !1929)
!1931 = !DILocation(line: 735, column: 28, scope: !1929)
!1932 = !DILocation(line: 735, column: 31, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1929, file: !347, discriminator: 1)
!1934 = !DILocation(line: 735, column: 46, scope: !1933)
!1935 = !DILocation(line: 735, column: 43, scope: !1933)
!1936 = !DILocation(line: 735, column: 6, scope: !1933)
!1937 = !DILocalVariable(name: "i", scope: !1938, file: !347, line: 736, type: !154)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !347, line: 735, column: 71)
!1939 = !DILocation(line: 736, column: 7, scope: !1938)
!1940 = !DILocation(line: 738, column: 10, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !347, line: 738, column: 3)
!1942 = !DILocation(line: 738, column: 8, scope: !1941)
!1943 = !DILocation(line: 738, column: 15, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !347, discriminator: 1)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !347, line: 738, column: 3)
!1946 = !DILocation(line: 738, column: 19, scope: !1944)
!1947 = !DILocation(line: 738, column: 33, scope: !1944)
!1948 = !DILocation(line: 738, column: 17, scope: !1944)
!1949 = !DILocation(line: 738, column: 3, scope: !1944)
!1950 = !DILocalVariable(name: "key", scope: !1951, file: !347, line: 739, type: !342)
!1951 = distinct !DILexicalBlock(scope: !1945, file: !347, line: 738, column: 43)
!1952 = !DILocation(line: 739, column: 12, scope: !1951)
!1953 = !DILocation(line: 739, column: 64, scope: !1951)
!1954 = !DILocation(line: 739, column: 19, scope: !1951)
!1955 = !DILocation(line: 739, column: 41, scope: !1951)
!1956 = !DILocation(line: 739, column: 56, scope: !1951)
!1957 = !DILocation(line: 739, column: 20, scope: !1951)
!1958 = !DILocation(line: 740, column: 59, scope: !1951)
!1959 = !DILocation(line: 740, column: 50, scope: !1951)
!1960 = !DILocation(line: 740, column: 39, scope: !1951)
!1961 = !DILocation(line: 740, column: 4, scope: !1951)
!1962 = !DILocation(line: 741, column: 3, scope: !1951)
!1963 = !DILocation(line: 738, column: 39, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1945, file: !347, discriminator: 2)
!1965 = !DILocation(line: 738, column: 3, scope: !1964)
!1966 = distinct !{!1966, !1967}
!1967 = !DILocation(line: 738, column: 3, scope: !1938)
!1968 = !DILocation(line: 742, column: 20, scope: !1938)
!1969 = !DILocation(line: 742, column: 3, scope: !1938)
!1970 = !DILocation(line: 743, column: 2, scope: !1938)
!1971 = !DILocation(line: 743, column: 13, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1973, file: !347, discriminator: 1)
!1973 = distinct !DILexicalBlock(scope: !1929, file: !347, line: 743, column: 13)
!1974 = !DILocation(line: 743, column: 37, scope: !1972)
!1975 = !DILocation(line: 743, column: 41, scope: !1972)
!1976 = !DILocation(line: 744, column: 6, scope: !1973)
!1977 = !DILocation(line: 744, column: 26, scope: !1973)
!1978 = !DILocation(line: 744, column: 23, scope: !1973)
!1979 = !DILocation(line: 744, column: 50, scope: !1973)
!1980 = !DILocation(line: 745, column: 5, scope: !1973)
!1981 = !DILocation(line: 745, column: 19, scope: !1973)
!1982 = !DILocation(line: 745, column: 17, scope: !1973)
!1983 = !DILocation(line: 745, column: 44, scope: !1973)
!1984 = !DILocation(line: 746, column: 5, scope: !1973)
!1985 = !DILocation(line: 746, column: 17, scope: !1973)
!1986 = !DILocation(line: 746, column: 24, scope: !1973)
!1987 = !DILocation(line: 743, column: 13, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1929, file: !347, discriminator: 2)
!1989 = !DILocation(line: 747, column: 3, scope: !1973)
!1990 = !DILocation(line: 749, column: 3, scope: !1973)
!1991 = !DILocation(line: 750, column: 19, scope: !1917)
!1992 = !DILocation(line: 751, column: 2, scope: !1917)
!1993 = distinct !DISubprogram(name: "paste_send", scope: !347, file: !347, line: 273, type: !260, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!1994 = !DILocalVariable(name: "arr", scope: !1993, file: !347, line: 275, type: !341)
!1995 = !DILocation(line: 275, column: 11, scope: !1993)
!1996 = !DILocalVariable(name: "str", scope: !1993, file: !347, line: 276, type: !312)
!1997 = !DILocation(line: 276, column: 11, scope: !1993)
!1998 = !DILocalVariable(name: "out", scope: !1993, file: !347, line: 277, type: !1999)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 80, align: 8, elements: !2000)
!2000 = !{!2001}
!2001 = !DISubrange(count: 10)
!2002 = !DILocation(line: 277, column: 7, scope: !1993)
!2003 = !DILocalVariable(name: "text", scope: !1993, file: !347, line: 277, type: !282)
!2004 = !DILocation(line: 277, column: 17, scope: !1993)
!2005 = !DILocalVariable(name: "i", scope: !1993, file: !347, line: 278, type: !182)
!2006 = !DILocation(line: 278, column: 15, scope: !1993)
!2007 = !DILocation(line: 280, column: 6, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1993, file: !347, line: 280, column: 6)
!2009 = !DILocation(line: 280, column: 6, scope: !1993)
!2010 = !DILocation(line: 281, column: 27, scope: !2008)
!2011 = !DILocation(line: 281, column: 3, scope: !2008)
!2012 = !DILocation(line: 283, column: 20, scope: !1993)
!2013 = !DILocation(line: 283, column: 34, scope: !1993)
!2014 = !DILocation(line: 283, column: 8, scope: !1993)
!2015 = !DILocation(line: 283, column: 6, scope: !1993)
!2016 = !DILocation(line: 284, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1993, file: !347, line: 284, column: 6)
!2018 = !DILocation(line: 284, column: 20, scope: !2017)
!2019 = !DILocation(line: 284, column: 29, scope: !2017)
!2020 = !DILocation(line: 284, column: 6, scope: !1993)
!2021 = !DILocation(line: 285, column: 5, scope: !2017)
!2022 = !DILocation(line: 285, column: 3, scope: !2017)
!2023 = !DILocation(line: 289, column: 10, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !347, line: 289, column: 3)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !347, line: 286, column: 7)
!2026 = !DILocation(line: 289, column: 8, scope: !2024)
!2027 = !DILocation(line: 289, column: 15, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2029, file: !347, discriminator: 1)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !347, line: 289, column: 3)
!2030 = !DILocation(line: 289, column: 19, scope: !2028)
!2031 = !DILocation(line: 289, column: 33, scope: !2028)
!2032 = !DILocation(line: 289, column: 17, scope: !2028)
!2033 = !DILocation(line: 289, column: 3, scope: !2028)
!2034 = !DILocation(line: 290, column: 12, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !347, line: 290, column: 8)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !347, line: 289, column: 43)
!2037 = !DILocation(line: 290, column: 8, scope: !2035)
!2038 = !DILocation(line: 290, column: 15, scope: !2035)
!2039 = !DILocation(line: 290, column: 23, scope: !2035)
!2040 = !DILocation(line: 290, column: 30, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2035, file: !347, discriminator: 1)
!2042 = !DILocation(line: 290, column: 26, scope: !2041)
!2043 = !DILocation(line: 290, column: 33, scope: !2041)
!2044 = !DILocation(line: 290, column: 8, scope: !2041)
!2045 = !DILocation(line: 291, column: 6, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !347, line: 290, column: 42)
!2047 = !DILocation(line: 292, column: 5, scope: !2046)
!2048 = !DILocation(line: 295, column: 26, scope: !2036)
!2049 = !DILocation(line: 295, column: 44, scope: !2036)
!2050 = !DILocation(line: 295, column: 40, scope: !2036)
!2051 = !DILocation(line: 295, column: 4, scope: !2036)
!2052 = !DILocation(line: 296, column: 3, scope: !2036)
!2053 = !DILocation(line: 289, column: 39, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2029, file: !347, discriminator: 2)
!2055 = !DILocation(line: 289, column: 3, scope: !2054)
!2056 = distinct !{!2056, !2057}
!2057 = !DILocation(line: 289, column: 3, scope: !2025)
!2058 = !DILocation(line: 298, column: 29, scope: !2025)
!2059 = !DILocation(line: 298, column: 10, scope: !2025)
!2060 = !DILocation(line: 298, column: 8, scope: !2025)
!2061 = !DILocation(line: 299, column: 19, scope: !2025)
!2062 = !DILocation(line: 299, column: 3, scope: !2025)
!2063 = !DILocation(line: 300, column: 10, scope: !2025)
!2064 = !DILocation(line: 300, column: 3, scope: !2025)
!2065 = !DILocation(line: 304, column: 8, scope: !1993)
!2066 = !DILocation(line: 304, column: 6, scope: !1993)
!2067 = !DILocation(line: 305, column: 2, scope: !1993)
!2068 = !DILocation(line: 305, column: 9, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !347, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !347, line: 305, column: 2)
!2071 = distinct !DILexicalBlock(scope: !1993, file: !347, line: 305, column: 2)
!2072 = !DILocation(line: 305, column: 13, scope: !2069)
!2073 = !DILocation(line: 305, column: 27, scope: !2069)
!2074 = !DILocation(line: 305, column: 11, scope: !2069)
!2075 = !DILocation(line: 305, column: 2, scope: !2069)
!2076 = !DILocation(line: 306, column: 11, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !347, line: 306, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2070, file: !347, line: 305, column: 37)
!2079 = !DILocation(line: 306, column: 7, scope: !2077)
!2080 = !DILocation(line: 306, column: 14, scope: !2077)
!2081 = !DILocation(line: 306, column: 22, scope: !2077)
!2082 = !DILocation(line: 306, column: 29, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2077, file: !347, discriminator: 1)
!2084 = !DILocation(line: 306, column: 25, scope: !2083)
!2085 = !DILocation(line: 306, column: 32, scope: !2083)
!2086 = !DILocation(line: 306, column: 7, scope: !2083)
!2087 = !DILocation(line: 307, column: 20, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !347, line: 306, column: 41)
!2089 = !DILocation(line: 307, column: 25, scope: !2088)
!2090 = !DILocation(line: 307, column: 4, scope: !2088)
!2091 = !DILocation(line: 308, column: 22, scope: !2088)
!2092 = !DILocation(line: 308, column: 4, scope: !2088)
!2093 = !DILocation(line: 309, column: 3, scope: !2088)
!2094 = !DILocation(line: 309, column: 14, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2096, file: !347, discriminator: 1)
!2096 = distinct !DILexicalBlock(scope: !2077, file: !347, line: 309, column: 14)
!2097 = !DILocation(line: 309, column: 28, scope: !2095)
!2098 = !DILocation(line: 310, column: 30, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !347, line: 309, column: 34)
!2100 = !DILocation(line: 310, column: 26, scope: !2099)
!2101 = !DILocation(line: 310, column: 34, scope: !2099)
!2102 = !DILocation(line: 310, column: 8, scope: !2099)
!2103 = !DILocation(line: 310, column: 4, scope: !2099)
!2104 = !DILocation(line: 310, column: 40, scope: !2099)
!2105 = !DILocation(line: 311, column: 20, scope: !2099)
!2106 = !DILocation(line: 311, column: 25, scope: !2099)
!2107 = !DILocation(line: 311, column: 4, scope: !2099)
!2108 = !DILocation(line: 312, column: 3, scope: !2099)
!2109 = !DILocation(line: 312, column: 14, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !347, discriminator: 1)
!2111 = distinct !DILexicalBlock(scope: !2096, file: !347, line: 312, column: 14)
!2112 = !DILocation(line: 312, column: 24, scope: !2110)
!2113 = !DILocation(line: 313, column: 12, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !347, line: 313, column: 8)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !347, line: 312, column: 30)
!2116 = !DILocation(line: 313, column: 8, scope: !2114)
!2117 = !DILocation(line: 313, column: 15, scope: !2114)
!2118 = !DILocation(line: 313, column: 8, scope: !2115)
!2119 = !DILocation(line: 314, column: 31, scope: !2114)
!2120 = !DILocation(line: 314, column: 41, scope: !2114)
!2121 = !DILocation(line: 314, column: 37, scope: !2114)
!2122 = !DILocation(line: 314, column: 44, scope: !2114)
!2123 = !DILocation(line: 314, column: 50, scope: !2114)
!2124 = !DILocation(line: 314, column: 36, scope: !2114)
!2125 = !DILocation(line: 314, column: 5, scope: !2114)
!2126 = !DILocation(line: 315, column: 30, scope: !2115)
!2127 = !DILocation(line: 315, column: 39, scope: !2115)
!2128 = !DILocation(line: 315, column: 35, scope: !2115)
!2129 = !DILocation(line: 315, column: 42, scope: !2115)
!2130 = !DILocation(line: 315, column: 4, scope: !2115)
!2131 = !DILocation(line: 316, column: 3, scope: !2115)
!2132 = !DILocation(line: 317, column: 30, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2111, file: !347, line: 316, column: 10)
!2134 = !DILocation(line: 317, column: 39, scope: !2133)
!2135 = !DILocation(line: 317, column: 35, scope: !2133)
!2136 = !DILocation(line: 317, column: 4, scope: !2133)
!2137 = !DILocation(line: 319, column: 2, scope: !2078)
!2138 = !DILocation(line: 305, column: 33, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2070, file: !347, discriminator: 2)
!2140 = !DILocation(line: 305, column: 2, scope: !2139)
!2141 = distinct !{!2141, !2067}
!2142 = !DILocation(line: 321, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1993, file: !347, line: 321, column: 6)
!2144 = !DILocation(line: 321, column: 6, scope: !1993)
!2145 = !DILocation(line: 323, column: 19, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !347, line: 321, column: 32)
!2147 = !DILocation(line: 323, column: 24, scope: !2146)
!2148 = !DILocation(line: 323, column: 3, scope: !2146)
!2149 = !DILocation(line: 324, column: 22, scope: !2146)
!2150 = !DILocation(line: 324, column: 3, scope: !2146)
!2151 = !DILocation(line: 325, column: 2, scope: !2146)
!2152 = !DILocation(line: 326, column: 22, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2143, file: !347, line: 325, column: 9)
!2154 = !DILocation(line: 326, column: 36, scope: !2153)
!2155 = !DILocation(line: 326, column: 41, scope: !2153)
!2156 = !DILocation(line: 326, column: 3, scope: !2153)
!2157 = !DILocation(line: 329, column: 16, scope: !1993)
!2158 = !DILocation(line: 329, column: 2, scope: !1993)
!2159 = !DILocation(line: 330, column: 1, scope: !1993)
!2160 = distinct !DISubprogram(name: "paste_buffer_join_lines", scope: !347, file: !347, line: 163, type: !2161, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !557}
!2163 = !DILocalVariable(name: "buf", arg: 1, scope: !2160, file: !347, line: 163, type: !557)
!2164 = !DILocation(line: 163, column: 45, scope: !2160)
!2165 = !DILocalVariable(name: "i", scope: !2160, file: !347, line: 165, type: !182)
!2166 = !DILocation(line: 165, column: 15, scope: !2160)
!2167 = !DILocalVariable(name: "count", scope: !2160, file: !347, line: 165, type: !182)
!2168 = !DILocation(line: 165, column: 18, scope: !2160)
!2169 = !DILocalVariable(name: "indent", scope: !2160, file: !347, line: 165, type: !182)
!2170 = !DILocation(line: 165, column: 25, scope: !2160)
!2171 = !DILocalVariable(name: "line_len", scope: !2160, file: !347, line: 165, type: !182)
!2172 = !DILocation(line: 165, column: 33, scope: !2160)
!2173 = !DILocalVariable(name: "arr", scope: !2160, file: !347, line: 166, type: !341)
!2174 = !DILocation(line: 166, column: 11, scope: !2160)
!2175 = !DILocalVariable(name: "dest", scope: !2160, file: !347, line: 166, type: !341)
!2176 = !DILocation(line: 166, column: 17, scope: !2160)
!2177 = !DILocalVariable(name: "last_lf_pos", scope: !2160, file: !347, line: 166, type: !341)
!2178 = !DILocation(line: 166, column: 24, scope: !2160)
!2179 = !DILocalVariable(name: "last_lf", scope: !2160, file: !347, line: 167, type: !154)
!2180 = !DILocation(line: 167, column: 6, scope: !2160)
!2181 = !DILocation(line: 191, column: 6, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 191, column: 6)
!2183 = !DILocation(line: 191, column: 11, scope: !2182)
!2184 = !DILocation(line: 191, column: 15, scope: !2182)
!2185 = !DILocation(line: 191, column: 6, scope: !2160)
!2186 = !DILocation(line: 192, column: 3, scope: !2182)
!2187 = !DILocation(line: 194, column: 19, scope: !2160)
!2188 = !DILocation(line: 194, column: 24, scope: !2160)
!2189 = !DILocation(line: 194, column: 8, scope: !2160)
!2190 = !DILocation(line: 194, column: 6, scope: !2160)
!2191 = !DILocation(line: 197, column: 5, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 197, column: 5)
!2193 = !DILocation(line: 197, column: 6, scope: !2192)
!2194 = !DILocation(line: 197, column: 8, scope: !2192)
!2195 = !DILocation(line: 197, column: 7, scope: !2192)
!2196 = !DILocation(line: 197, column: 9, scope: !2192)
!2197 = !DILocation(line: 197, column: 5, scope: !2160)
!2198 = !DILocation(line: 198, column: 3, scope: !2192)
!2199 = !DILocation(line: 201, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 201, column: 2)
!2201 = !DILocation(line: 201, column: 7, scope: !2200)
!2202 = !DILocation(line: 201, column: 14, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !347, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !347, line: 201, column: 2)
!2205 = !DILocation(line: 201, column: 18, scope: !2203)
!2206 = !DILocation(line: 201, column: 23, scope: !2203)
!2207 = !DILocation(line: 201, column: 16, scope: !2203)
!2208 = !DILocation(line: 201, column: 2, scope: !2203)
!2209 = !DILocation(line: 202, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !347, line: 202, column: 7)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !347, line: 201, column: 33)
!2212 = !DILocation(line: 202, column: 12, scope: !2210)
!2213 = !DILocation(line: 202, column: 7, scope: !2210)
!2214 = !DILocation(line: 202, column: 16, scope: !2210)
!2215 = !DILocation(line: 202, column: 24, scope: !2210)
!2216 = !DILocation(line: 202, column: 30, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2210, file: !347, discriminator: 1)
!2218 = !DILocation(line: 202, column: 26, scope: !2217)
!2219 = !DILocation(line: 202, column: 27, scope: !2217)
!2220 = !DILocation(line: 202, column: 29, scope: !2217)
!2221 = !DILocation(line: 202, column: 28, scope: !2217)
!2222 = !DILocation(line: 202, column: 7, scope: !2217)
!2223 = !DILocation(line: 203, column: 4, scope: !2210)
!2224 = !DILocation(line: 204, column: 2, scope: !2211)
!2225 = !DILocation(line: 201, column: 29, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2204, file: !347, discriminator: 2)
!2227 = !DILocation(line: 201, column: 2, scope: !2226)
!2228 = distinct !{!2228, !2229}
!2229 = !DILocation(line: 201, column: 2, scope: !2160)
!2230 = !DILocation(line: 205, column: 6, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 205, column: 6)
!2232 = !DILocation(line: 205, column: 11, scope: !2231)
!2233 = !DILocation(line: 205, column: 16, scope: !2231)
!2234 = !DILocation(line: 205, column: 8, scope: !2231)
!2235 = !DILocation(line: 205, column: 6, scope: !2160)
!2236 = !DILocation(line: 206, column: 3, scope: !2231)
!2237 = !DILocation(line: 209, column: 14, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 209, column: 2)
!2239 = !DILocation(line: 209, column: 7, scope: !2238)
!2240 = !DILocation(line: 209, column: 19, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2242, file: !347, discriminator: 1)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !347, line: 209, column: 2)
!2243 = !DILocation(line: 209, column: 23, scope: !2241)
!2244 = !DILocation(line: 209, column: 28, scope: !2241)
!2245 = !DILocation(line: 209, column: 21, scope: !2241)
!2246 = !DILocation(line: 209, column: 2, scope: !2241)
!2247 = !DILocation(line: 210, column: 11, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !347, line: 210, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2242, file: !347, line: 209, column: 48)
!2250 = !DILocation(line: 210, column: 7, scope: !2248)
!2251 = !DILocation(line: 210, column: 8, scope: !2248)
!2252 = !DILocation(line: 210, column: 10, scope: !2248)
!2253 = !DILocation(line: 210, column: 9, scope: !2248)
!2254 = !DILocation(line: 210, column: 7, scope: !2249)
!2255 = !DILocation(line: 211, column: 4, scope: !2248)
!2256 = !DILocation(line: 212, column: 2, scope: !2249)
!2257 = !DILocation(line: 209, column: 34, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2242, file: !347, discriminator: 2)
!2259 = !DILocation(line: 209, column: 44, scope: !2258)
!2260 = !DILocation(line: 209, column: 2, scope: !2258)
!2261 = distinct !{!2261, !2262}
!2262 = !DILocation(line: 209, column: 2, scope: !2160)
!2263 = !DILocation(line: 213, column: 6, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 213, column: 6)
!2265 = !DILocation(line: 213, column: 11, scope: !2264)
!2266 = !DILocation(line: 213, column: 16, scope: !2264)
!2267 = !DILocation(line: 213, column: 8, scope: !2264)
!2268 = !DILocation(line: 213, column: 6, scope: !2160)
!2269 = !DILocation(line: 214, column: 3, scope: !2264)
!2270 = !DILocation(line: 217, column: 10, scope: !2160)
!2271 = !DILocation(line: 217, column: 8, scope: !2160)
!2272 = !DILocation(line: 217, column: 26, scope: !2160)
!2273 = !DILocation(line: 218, column: 2, scope: !2160)
!2274 = !DILocation(line: 218, column: 9, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !347, discriminator: 1)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !347, line: 218, column: 2)
!2277 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 218, column: 2)
!2278 = !DILocation(line: 218, column: 13, scope: !2275)
!2279 = !DILocation(line: 218, column: 18, scope: !2275)
!2280 = !DILocation(line: 218, column: 11, scope: !2275)
!2281 = !DILocation(line: 218, column: 2, scope: !2275)
!2282 = !DILocation(line: 219, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !347, line: 219, column: 7)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !347, line: 218, column: 28)
!2285 = !DILocation(line: 219, column: 7, scope: !2284)
!2286 = !DILocation(line: 220, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !347, line: 220, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !347, line: 219, column: 16)
!2289 = !DILocation(line: 220, column: 7, scope: !2287)
!2290 = !DILocation(line: 220, column: 8, scope: !2287)
!2291 = !DILocation(line: 220, column: 10, scope: !2287)
!2292 = !DILocation(line: 220, column: 9, scope: !2287)
!2293 = !DILocation(line: 220, column: 7, scope: !2288)
!2294 = !DILocation(line: 221, column: 10, scope: !2287)
!2295 = !DILocation(line: 221, column: 5, scope: !2287)
!2296 = !DILocation(line: 223, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2287, file: !347, line: 222, column: 9)
!2298 = !DILocation(line: 224, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !347, line: 224, column: 9)
!2300 = !DILocation(line: 224, column: 15, scope: !2299)
!2301 = !DILocation(line: 224, column: 20, scope: !2299)
!2302 = !DILocation(line: 224, column: 23, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2299, file: !347, discriminator: 1)
!2304 = !DILocation(line: 224, column: 32, scope: !2303)
!2305 = !DILocation(line: 224, column: 29, scope: !2303)
!2306 = !DILocation(line: 224, column: 9, scope: !2303)
!2307 = !DILocation(line: 225, column: 6, scope: !2299)
!2308 = !DILocation(line: 226, column: 11, scope: !2297)
!2309 = !DILocation(line: 228, column: 3, scope: !2288)
!2310 = !DILocation(line: 229, column: 11, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2284, file: !347, line: 229, column: 7)
!2312 = !DILocation(line: 229, column: 7, scope: !2311)
!2313 = !DILocation(line: 229, column: 14, scope: !2311)
!2314 = !DILocation(line: 229, column: 7, scope: !2284)
!2315 = !DILocation(line: 230, column: 12, scope: !2311)
!2316 = !DILocation(line: 230, column: 4, scope: !2311)
!2317 = !DILocation(line: 231, column: 2, scope: !2284)
!2318 = !DILocation(line: 218, column: 24, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2276, file: !347, discriminator: 2)
!2320 = !DILocation(line: 218, column: 2, scope: !2319)
!2321 = distinct !{!2321, !2273}
!2322 = !DILocation(line: 235, column: 9, scope: !2160)
!2323 = !DILocation(line: 235, column: 7, scope: !2160)
!2324 = !DILocation(line: 235, column: 22, scope: !2160)
!2325 = !DILocation(line: 235, column: 44, scope: !2160)
!2326 = !DILocation(line: 235, column: 58, scope: !2160)
!2327 = !DILocation(line: 236, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2160, file: !347, line: 236, column: 2)
!2329 = !DILocation(line: 236, column: 7, scope: !2328)
!2330 = !DILocation(line: 236, column: 14, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2332, file: !347, discriminator: 1)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !347, line: 236, column: 2)
!2333 = !DILocation(line: 236, column: 18, scope: !2331)
!2334 = !DILocation(line: 236, column: 23, scope: !2331)
!2335 = !DILocation(line: 236, column: 16, scope: !2331)
!2336 = !DILocation(line: 236, column: 2, scope: !2331)
!2337 = !DILocation(line: 237, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !347, line: 237, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !347, line: 236, column: 33)
!2340 = !DILocation(line: 237, column: 15, scope: !2338)
!2341 = !DILocation(line: 237, column: 21, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2338, file: !347, discriminator: 1)
!2343 = !DILocation(line: 237, column: 17, scope: !2342)
!2344 = !DILocation(line: 237, column: 18, scope: !2342)
!2345 = !DILocation(line: 237, column: 20, scope: !2342)
!2346 = !DILocation(line: 237, column: 19, scope: !2342)
!2347 = !DILocation(line: 237, column: 7, scope: !2342)
!2348 = !DILocation(line: 239, column: 3, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !347, line: 237, column: 34)
!2350 = !DILocation(line: 239, column: 18, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2352, file: !347, discriminator: 1)
!2352 = distinct !DILexicalBlock(scope: !2338, file: !347, line: 239, column: 14)
!2353 = !DILocation(line: 239, column: 14, scope: !2351)
!2354 = !DILocation(line: 239, column: 21, scope: !2351)
!2355 = !DILocation(line: 240, column: 9, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !347, line: 240, column: 8)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !347, line: 239, column: 30)
!2358 = !DILocation(line: 240, column: 17, scope: !2356)
!2359 = !DILocation(line: 240, column: 20, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2356, file: !347, discriminator: 1)
!2361 = !DILocation(line: 240, column: 21, scope: !2360)
!2362 = !DILocation(line: 240, column: 27, scope: !2360)
!2363 = !DILocation(line: 240, column: 32, scope: !2360)
!2364 = !DILocation(line: 240, column: 24, scope: !2360)
!2365 = !DILocation(line: 240, column: 36, scope: !2360)
!2366 = !DILocation(line: 241, column: 11, scope: !2356)
!2367 = !DILocation(line: 241, column: 12, scope: !2356)
!2368 = !DILocation(line: 241, column: 7, scope: !2356)
!2369 = !DILocation(line: 241, column: 8, scope: !2356)
!2370 = !DILocation(line: 241, column: 10, scope: !2356)
!2371 = !DILocation(line: 241, column: 9, scope: !2356)
!2372 = !DILocation(line: 240, column: 8, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2357, file: !347, discriminator: 2)
!2374 = !DILocation(line: 242, column: 19, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2356, file: !347, line: 241, column: 26)
!2376 = !DILocation(line: 242, column: 17, scope: !2375)
!2377 = !DILocation(line: 243, column: 10, scope: !2375)
!2378 = !DILocation(line: 243, column: 13, scope: !2375)
!2379 = !DILocation(line: 244, column: 4, scope: !2375)
!2380 = !DILocation(line: 245, column: 10, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2356, file: !347, line: 244, column: 11)
!2382 = !DILocation(line: 245, column: 13, scope: !2381)
!2383 = !DILocation(line: 246, column: 14, scope: !2381)
!2384 = !DILocation(line: 247, column: 17, scope: !2381)
!2385 = !DILocation(line: 249, column: 12, scope: !2357)
!2386 = !DILocation(line: 250, column: 3, scope: !2357)
!2387 = !DILocation(line: 251, column: 12, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2352, file: !347, line: 250, column: 10)
!2389 = !DILocation(line: 252, column: 8, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2388, file: !347, line: 252, column: 8)
!2391 = !DILocation(line: 252, column: 19, scope: !2390)
!2392 = !DILocation(line: 252, column: 26, scope: !2390)
!2393 = !DILocation(line: 252, column: 29, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2390, file: !347, discriminator: 1)
!2395 = !DILocation(line: 252, column: 41, scope: !2394)
!2396 = !DILocation(line: 252, column: 8, scope: !2394)
!2397 = !DILocation(line: 253, column: 13, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !347, line: 252, column: 62)
!2399 = !DILocation(line: 253, column: 24, scope: !2398)
!2400 = !DILocation(line: 253, column: 5, scope: !2398)
!2401 = !DILocation(line: 253, column: 28, scope: !2398)
!2402 = !DILocation(line: 254, column: 7, scope: !2398)
!2403 = !DILocation(line: 254, column: 14, scope: !2398)
!2404 = !DILocation(line: 254, column: 12, scope: !2398)
!2405 = !DILocation(line: 254, column: 27, scope: !2398)
!2406 = !DILocation(line: 255, column: 6, scope: !2398)
!2407 = !DILocation(line: 255, column: 18, scope: !2398)
!2408 = !DILocation(line: 255, column: 38, scope: !2398)
!2409 = !DILocation(line: 256, column: 14, scope: !2398)
!2410 = !DILocation(line: 257, column: 9, scope: !2398)
!2411 = !DILocation(line: 258, column: 4, scope: !2398)
!2412 = !DILocation(line: 259, column: 18, scope: !2388)
!2413 = !DILocation(line: 259, column: 14, scope: !2388)
!2414 = !DILocation(line: 259, column: 9, scope: !2388)
!2415 = !DILocation(line: 259, column: 12, scope: !2388)
!2416 = !DILocation(line: 261, column: 2, scope: !2339)
!2417 = !DILocation(line: 236, column: 29, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2332, file: !347, discriminator: 2)
!2419 = !DILocation(line: 236, column: 2, scope: !2418)
!2420 = distinct !{!2420, !2421}
!2421 = !DILocation(line: 236, column: 2, scope: !2160)
!2422 = !DILocation(line: 262, column: 19, scope: !2160)
!2423 = !DILocation(line: 262, column: 24, scope: !2160)
!2424 = !DILocation(line: 262, column: 31, scope: !2160)
!2425 = !DILocation(line: 262, column: 29, scope: !2160)
!2426 = !DILocation(line: 262, column: 2, scope: !2160)
!2427 = !DILocation(line: 263, column: 1, scope: !2160)
!2428 = !DILocation(line: 263, column: 1, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2160, file: !347, discriminator: 1)
!2430 = distinct !DISubprogram(name: "paste_send_line", scope: !347, file: !347, line: 265, type: !2431, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !282}
!2433 = !DILocalVariable(name: "text", arg: 1, scope: !2430, file: !347, line: 265, type: !282)
!2434 = !DILocation(line: 265, column: 35, scope: !2430)
!2435 = !DILocation(line: 268, column: 46, scope: !2430)
!2436 = !DILocation(line: 268, column: 22, scope: !2430)
!2437 = !DILocation(line: 268, column: 59, scope: !2430)
!2438 = !DILocation(line: 268, column: 2, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2430, file: !347, discriminator: 1)
!2440 = !DILocation(line: 270, column: 33, scope: !2430)
!2441 = !DILocation(line: 270, column: 39, scope: !2430)
!2442 = !DILocation(line: 270, column: 51, scope: !2430)
!2443 = !DILocation(line: 270, column: 66, scope: !2430)
!2444 = !DILocation(line: 270, column: 78, scope: !2430)
!2445 = !DILocation(line: 270, column: 2, scope: !2430)
!2446 = !DILocation(line: 271, column: 1, scope: !2430)
!2447 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !314, file: !314, line: 161, type: !2448, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!312, !312, !166}
!2450 = !DILocalVariable(name: "gstring", arg: 1, scope: !2447, file: !314, line: 161, type: !312)
!2451 = !DILocation(line: 161, column: 36, scope: !2447)
!2452 = !DILocalVariable(name: "c", arg: 2, scope: !2447, file: !314, line: 162, type: !166)
!2453 = !DILocation(line: 162, column: 33, scope: !2447)
!2454 = !DILocation(line: 164, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2447, file: !314, line: 164, column: 7)
!2456 = !DILocation(line: 164, column: 16, scope: !2455)
!2457 = !DILocation(line: 164, column: 20, scope: !2455)
!2458 = !DILocation(line: 164, column: 26, scope: !2455)
!2459 = !DILocation(line: 164, column: 35, scope: !2455)
!2460 = !DILocation(line: 164, column: 24, scope: !2455)
!2461 = !DILocation(line: 164, column: 7, scope: !2447)
!2462 = !DILocation(line: 166, column: 38, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2455, file: !314, line: 165, column: 5)
!2464 = !DILocation(line: 166, column: 20, scope: !2463)
!2465 = !DILocation(line: 166, column: 29, scope: !2463)
!2466 = !DILocation(line: 166, column: 32, scope: !2463)
!2467 = !DILocation(line: 166, column: 7, scope: !2463)
!2468 = !DILocation(line: 166, column: 16, scope: !2463)
!2469 = !DILocation(line: 166, column: 36, scope: !2463)
!2470 = !DILocation(line: 167, column: 20, scope: !2463)
!2471 = !DILocation(line: 167, column: 29, scope: !2463)
!2472 = !DILocation(line: 167, column: 7, scope: !2463)
!2473 = !DILocation(line: 167, column: 16, scope: !2463)
!2474 = !DILocation(line: 167, column: 34, scope: !2463)
!2475 = !DILocation(line: 168, column: 5, scope: !2463)
!2476 = !DILocation(line: 170, column: 24, scope: !2455)
!2477 = !DILocation(line: 170, column: 37, scope: !2455)
!2478 = !DILocation(line: 170, column: 5, scope: !2455)
!2479 = !DILocation(line: 171, column: 10, scope: !2447)
!2480 = !DILocation(line: 171, column: 3, scope: !2447)
!2481 = distinct !DISubprogram(name: "paste_bracketed_middle", scope: !347, file: !347, line: 784, type: !260, isLocal: true, isDefinition: true, scopeLine: 785, isOptimized: false, unit: !0, variables: !541)
!2482 = !DILocalVariable(name: "i", scope: !2481, file: !347, line: 786, type: !154)
!2483 = !DILocation(line: 786, column: 6, scope: !2481)
!2484 = !DILocalVariable(name: "marklen", scope: !2481, file: !347, line: 787, type: !154)
!2485 = !DILocation(line: 787, column: 6, scope: !2481)
!2486 = !DILocalVariable(name: "len", scope: !2481, file: !347, line: 788, type: !154)
!2487 = !DILocation(line: 788, column: 6, scope: !2481)
!2488 = !DILocation(line: 788, column: 12, scope: !2481)
!2489 = !DILocation(line: 788, column: 26, scope: !2481)
!2490 = !DILocation(line: 788, column: 32, scope: !2481)
!2491 = !DILocation(line: 788, column: 30, scope: !2481)
!2492 = !DILocalVariable(name: "ptr", scope: !2481, file: !347, line: 789, type: !341)
!2493 = !DILocation(line: 789, column: 11, scope: !2481)
!2494 = !DILocation(line: 789, column: 29, scope: !2481)
!2495 = !DILocation(line: 789, column: 43, scope: !2481)
!2496 = !DILocation(line: 789, column: 17, scope: !2481)
!2497 = !DILocation(line: 791, column: 6, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2481, file: !347, line: 791, column: 6)
!2499 = !DILocation(line: 791, column: 10, scope: !2498)
!2500 = !DILocation(line: 791, column: 6, scope: !2481)
!2501 = !DILocation(line: 792, column: 3, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !347, line: 791, column: 15)
!2503 = !DILocation(line: 795, column: 9, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2481, file: !347, line: 795, column: 2)
!2505 = !DILocation(line: 795, column: 7, scope: !2504)
!2506 = !DILocation(line: 795, column: 14, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !347, discriminator: 1)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !347, line: 795, column: 2)
!2509 = !DILocation(line: 795, column: 19, scope: !2507)
!2510 = !DILocation(line: 795, column: 16, scope: !2507)
!2511 = !DILocation(line: 795, column: 2, scope: !2507)
!2512 = !DILocation(line: 796, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !347, line: 796, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !347, line: 795, column: 36)
!2515 = !DILocation(line: 796, column: 17, scope: !2513)
!2516 = !DILocation(line: 796, column: 14, scope: !2513)
!2517 = !DILocation(line: 796, column: 27, scope: !2513)
!2518 = !DILocation(line: 796, column: 37, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2513, file: !347, discriminator: 1)
!2520 = !DILocation(line: 796, column: 30, scope: !2519)
!2521 = !DILocation(line: 796, column: 66, scope: !2519)
!2522 = !DILocation(line: 796, column: 7, scope: !2519)
!2523 = !DILocation(line: 800, column: 8, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !347, line: 800, column: 8)
!2525 = distinct !DILexicalBlock(scope: !2513, file: !347, line: 796, column: 72)
!2526 = !DILocation(line: 800, column: 14, scope: !2524)
!2527 = !DILocation(line: 800, column: 20, scope: !2524)
!2528 = !DILocation(line: 800, column: 18, scope: !2524)
!2529 = !DILocation(line: 800, column: 10, scope: !2524)
!2530 = !DILocation(line: 800, column: 29, scope: !2524)
!2531 = !DILocation(line: 801, column: 15, scope: !2524)
!2532 = !DILocation(line: 801, column: 21, scope: !2524)
!2533 = !DILocation(line: 801, column: 19, scope: !2524)
!2534 = !DILocation(line: 801, column: 8, scope: !2524)
!2535 = !DILocation(line: 801, column: 58, scope: !2524)
!2536 = !DILocation(line: 800, column: 8, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2525, file: !347, discriminator: 1)
!2538 = !DILocation(line: 804, column: 26, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2524, file: !347, line: 801, column: 64)
!2540 = !DILocation(line: 804, column: 40, scope: !2539)
!2541 = !DILocation(line: 804, column: 43, scope: !2539)
!2542 = !DILocation(line: 804, column: 51, scope: !2539)
!2543 = !DILocation(line: 804, column: 5, scope: !2539)
!2544 = !DILocation(line: 805, column: 12, scope: !2539)
!2545 = !DILocation(line: 805, column: 20, scope: !2539)
!2546 = !DILocation(line: 805, column: 9, scope: !2539)
!2547 = !DILocation(line: 808, column: 6, scope: !2539)
!2548 = !DILocation(line: 809, column: 8, scope: !2539)
!2549 = !DILocation(line: 810, column: 5, scope: !2539)
!2550 = !DILocation(line: 812, column: 24, scope: !2525)
!2551 = !DILocation(line: 812, column: 27, scope: !2525)
!2552 = !DILocation(line: 812, column: 32, scope: !2525)
!2553 = !DILocation(line: 812, column: 29, scope: !2525)
!2554 = !DILocation(line: 812, column: 4, scope: !2525)
!2555 = !DILocation(line: 813, column: 4, scope: !2525)
!2556 = !DILocation(line: 815, column: 2, scope: !2514)
!2557 = !DILocation(line: 795, column: 25, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2508, file: !347, discriminator: 2)
!2559 = !DILocation(line: 795, column: 32, scope: !2558)
!2560 = !DILocation(line: 795, column: 2, scope: !2558)
!2561 = distinct !{!2561, !2562}
!2562 = !DILocation(line: 795, column: 2, scope: !2481)
!2563 = !DILocation(line: 816, column: 1, scope: !2481)
!2564 = distinct !DISubprogram(name: "paste_bracketed_end", scope: !347, file: !347, line: 754, type: !2565, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !154, !231}
!2567 = !DILocalVariable(name: "i", arg: 1, scope: !2564, file: !347, line: 754, type: !154)
!2568 = !DILocation(line: 754, column: 37, scope: !2564)
!2569 = !DILocalVariable(name: "rest", arg: 2, scope: !2564, file: !347, line: 754, type: !231)
!2570 = !DILocation(line: 754, column: 49, scope: !2564)
!2571 = !DILocalVariable(name: "last_char", scope: !2564, file: !347, line: 756, type: !342)
!2572 = !DILocation(line: 756, column: 10, scope: !2564)
!2573 = !DILocation(line: 759, column: 6, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2564, file: !347, line: 759, column: 6)
!2575 = !DILocation(line: 759, column: 6, scope: !2564)
!2576 = !DILocalVariable(name: "start", scope: !2577, file: !347, line: 760, type: !341)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !347, line: 759, column: 12)
!2578 = !DILocation(line: 760, column: 12, scope: !2577)
!2579 = !DILocation(line: 760, column: 33, scope: !2577)
!2580 = !DILocation(line: 760, column: 47, scope: !2577)
!2581 = !DILocation(line: 760, column: 21, scope: !2577)
!2582 = !DILocation(line: 760, column: 55, scope: !2577)
!2583 = !DILocation(line: 760, column: 53, scope: !2577)
!2584 = !DILocation(line: 760, column: 57, scope: !2577)
!2585 = !DILocalVariable(name: "len", scope: !2577, file: !347, line: 761, type: !154)
!2586 = !DILocation(line: 761, column: 7, scope: !2577)
!2587 = !DILocation(line: 761, column: 13, scope: !2577)
!2588 = !DILocation(line: 761, column: 27, scope: !2577)
!2589 = !DILocation(line: 761, column: 33, scope: !2577)
!2590 = !DILocation(line: 761, column: 31, scope: !2577)
!2591 = !DILocation(line: 761, column: 35, scope: !2577)
!2592 = !DILocation(line: 763, column: 20, scope: !2577)
!2593 = !DILocation(line: 763, column: 3, scope: !2577)
!2594 = !DILocation(line: 764, column: 23, scope: !2577)
!2595 = !DILocation(line: 764, column: 42, scope: !2577)
!2596 = !DILocation(line: 764, column: 49, scope: !2577)
!2597 = !DILocation(line: 764, column: 3, scope: !2577)
!2598 = !DILocation(line: 765, column: 2, scope: !2577)
!2599 = !DILocation(line: 768, column: 19, scope: !2564)
!2600 = !DILocation(line: 768, column: 33, scope: !2564)
!2601 = !DILocation(line: 768, column: 2, scope: !2564)
!2602 = !DILocation(line: 770, column: 60, scope: !2564)
!2603 = !DILocation(line: 770, column: 62, scope: !2564)
!2604 = !DILocation(line: 770, column: 15, scope: !2564)
!2605 = !DILocation(line: 770, column: 37, scope: !2564)
!2606 = !DILocation(line: 770, column: 52, scope: !2564)
!2607 = !DILocation(line: 770, column: 16, scope: !2564)
!2608 = !DILocation(line: 770, column: 12, scope: !2564)
!2609 = !DILocation(line: 772, column: 6, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2564, file: !347, line: 772, column: 6)
!2611 = !DILocation(line: 772, column: 23, scope: !2610)
!2612 = !DILocation(line: 772, column: 27, scope: !2610)
!2613 = !DILocation(line: 772, column: 30, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2610, file: !347, discriminator: 1)
!2615 = !DILocation(line: 772, column: 40, scope: !2614)
!2616 = !DILocation(line: 772, column: 48, scope: !2614)
!2617 = !DILocation(line: 772, column: 51, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2610, file: !347, discriminator: 2)
!2619 = !DILocation(line: 772, column: 61, scope: !2618)
!2620 = !DILocation(line: 772, column: 6, scope: !2618)
!2621 = !DILocation(line: 775, column: 19, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2610, file: !347, line: 772, column: 70)
!2623 = !DILocation(line: 776, column: 2, scope: !2622)
!2624 = !DILocation(line: 779, column: 2, scope: !2564)
!2625 = !DILocation(line: 781, column: 23, scope: !2564)
!2626 = !DILocation(line: 782, column: 1, scope: !2564)
!2627 = distinct !DISubprogram(name: "insert_paste_prompt", scope: !347, file: !347, line: 360, type: !260, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2628 = !DILocalVariable(name: "str", scope: !2627, file: !347, line: 362, type: !282)
!2629 = !DILocation(line: 362, column: 8, scope: !2627)
!2630 = !DILocalVariable(name: "actual_line_count", scope: !2627, file: !347, line: 365, type: !154)
!2631 = !DILocation(line: 365, column: 6, scope: !2627)
!2632 = !DILocation(line: 365, column: 26, scope: !2627)
!2633 = !DILocalVariable(name: "split_lines", scope: !2627, file: !347, line: 366, type: !154)
!2634 = !DILocation(line: 366, column: 6, scope: !2627)
!2635 = !DILocation(line: 366, column: 20, scope: !2627)
!2636 = !DILocation(line: 366, column: 34, scope: !2627)
!2637 = !DILocation(line: 366, column: 38, scope: !2627)
!2638 = !DILocation(line: 372, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2627, file: !347, line: 372, column: 6)
!2640 = !DILocation(line: 372, column: 20, scope: !2639)
!2641 = !DILocation(line: 372, column: 18, scope: !2639)
!2642 = !DILocation(line: 372, column: 44, scope: !2639)
!2643 = !DILocation(line: 373, column: 3, scope: !2639)
!2644 = !DILocation(line: 373, column: 17, scope: !2639)
!2645 = !DILocation(line: 373, column: 15, scope: !2639)
!2646 = !DILocation(line: 372, column: 6, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2627, file: !347, discriminator: 1)
!2648 = !DILocation(line: 374, column: 23, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2639, file: !347, line: 373, column: 35)
!2650 = !DILocation(line: 374, column: 21, scope: !2649)
!2651 = !DILocation(line: 375, column: 2, scope: !2649)
!2652 = !DILocation(line: 377, column: 15, scope: !2627)
!2653 = !DILocation(line: 378, column: 30, scope: !2627)
!2654 = !DILocation(line: 378, column: 44, scope: !2627)
!2655 = !DILocation(line: 378, column: 21, scope: !2627)
!2656 = !DILocation(line: 378, column: 19, scope: !2627)
!2657 = !DILocation(line: 379, column: 39, scope: !2627)
!2658 = !DILocation(line: 379, column: 93, scope: !2627)
!2659 = !DILocation(line: 379, column: 112, scope: !2627)
!2660 = !DILocation(line: 379, column: 124, scope: !2627)
!2661 = !DILocation(line: 379, column: 131, scope: !2627)
!2662 = !DILocation(line: 379, column: 112, scope: !2647)
!2663 = !DILocation(line: 379, column: 14, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2627, file: !347, discriminator: 2)
!2665 = !DILocation(line: 379, column: 26, scope: !2664)
!2666 = !DILocation(line: 379, column: 34, scope: !2664)
!2667 = !DILocation(line: 379, column: 112, scope: !2664)
!2668 = !DILocation(line: 379, column: 112, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2627, file: !347, discriminator: 3)
!2670 = !DILocation(line: 379, column: 2, scope: !2669)
!2671 = !DILocation(line: 385, column: 35, scope: !2627)
!2672 = !DILocation(line: 385, column: 8, scope: !2627)
!2673 = !DILocation(line: 385, column: 6, scope: !2627)
!2674 = !DILocation(line: 387, column: 23, scope: !2627)
!2675 = !DILocation(line: 387, column: 37, scope: !2627)
!2676 = !DILocation(line: 387, column: 2, scope: !2627)
!2677 = !DILocation(line: 388, column: 35, scope: !2627)
!2678 = !DILocation(line: 388, column: 16, scope: !2627)
!2679 = !DILocation(line: 388, column: 14, scope: !2627)
!2680 = !DILocation(line: 389, column: 38, scope: !2627)
!2681 = !DILocation(line: 389, column: 20, scope: !2627)
!2682 = !DILocation(line: 389, column: 18, scope: !2627)
!2683 = !DILocation(line: 390, column: 21, scope: !2627)
!2684 = !DILocation(line: 390, column: 2, scope: !2627)
!2685 = !DILocation(line: 391, column: 9, scope: !2627)
!2686 = !DILocation(line: 391, column: 2, scope: !2627)
!2687 = !DILocation(line: 392, column: 1, scope: !2627)
!2688 = distinct !DISubprogram(name: "handle_entry_redirect", scope: !347, file: !347, line: 114, type: !1513, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2689 = !DILocalVariable(name: "line", arg: 1, scope: !2688, file: !347, line: 114, type: !351)
!2690 = !DILocation(line: 114, column: 47, scope: !2688)
!2691 = !DILocalVariable(name: "func", scope: !2688, file: !347, line: 116, type: !346)
!2692 = !DILocation(line: 116, column: 28, scope: !2688)
!2693 = !DILocalVariable(name: "data", scope: !2688, file: !347, line: 117, type: !146)
!2694 = !DILocation(line: 117, column: 8, scope: !2688)
!2695 = !DILocation(line: 119, column: 30, scope: !2688)
!2696 = !DILocation(line: 119, column: 9, scope: !2688)
!2697 = !DILocation(line: 121, column: 37, scope: !2688)
!2698 = !DILocation(line: 121, column: 44, scope: !2688)
!2699 = !DILocation(line: 121, column: 9, scope: !2688)
!2700 = !DILocation(line: 121, column: 7, scope: !2688)
!2701 = !DILocation(line: 122, column: 9, scope: !2688)
!2702 = !DILocation(line: 122, column: 16, scope: !2688)
!2703 = !DILocation(line: 122, column: 7, scope: !2688)
!2704 = !DILocation(line: 123, column: 2, scope: !2688)
!2705 = distinct !{!2705, !2704}
!2706 = !DILocation(line: 123, column: 11, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2708, file: !347, discriminator: 1)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !347, line: 123, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2688, file: !347, line: 123, column: 5)
!2710 = !DILocation(line: 123, column: 27, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2712, file: !347, discriminator: 2)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !347, line: 123, column: 18)
!2713 = !DILocation(line: 123, column: 20, scope: !2711)
!2714 = !DILocation(line: 123, column: 43, scope: !2711)
!2715 = !DILocation(line: 123, column: 3, scope: !2711)
!2716 = !DILocation(line: 123, column: 5, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2709, file: !347, discriminator: 3)
!2718 = !DILocation(line: 125, column: 23, scope: !2688)
!2719 = !DILocation(line: 125, column: 2, scope: !2688)
!2720 = !DILocation(line: 127, column: 6, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2688, file: !347, line: 127, column: 6)
!2722 = !DILocation(line: 127, column: 11, scope: !2721)
!2723 = !DILocation(line: 127, column: 6, scope: !2688)
!2724 = !DILocation(line: 128, column: 3, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !347, line: 127, column: 19)
!2726 = !DILocation(line: 128, column: 8, scope: !2725)
!2727 = !DILocation(line: 128, column: 14, scope: !2725)
!2728 = !DILocation(line: 128, column: 20, scope: !2725)
!2729 = !DILocation(line: 128, column: 32, scope: !2725)
!2730 = !DILocation(line: 129, column: 8, scope: !2725)
!2731 = !DILocation(line: 129, column: 20, scope: !2725)
!2732 = !DILocation(line: 130, column: 2, scope: !2725)
!2733 = !DILocation(line: 131, column: 1, scope: !2688)
!2734 = distinct !DISubprogram(name: "key_completion", scope: !347, file: !347, line: 904, type: !2735, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !154, !154}
!2737 = !DILocalVariable(name: "erase", arg: 1, scope: !2734, file: !347, line: 904, type: !154)
!2738 = !DILocation(line: 904, column: 32, scope: !2734)
!2739 = !DILocalVariable(name: "backward", arg: 2, scope: !2734, file: !347, line: 904, type: !154)
!2740 = !DILocation(line: 904, column: 43, scope: !2734)
!2741 = !DILocalVariable(name: "text", scope: !2734, file: !347, line: 906, type: !282)
!2742 = !DILocation(line: 906, column: 8, scope: !2734)
!2743 = !DILocalVariable(name: "line", scope: !2734, file: !347, line: 906, type: !282)
!2744 = !DILocation(line: 906, column: 15, scope: !2734)
!2745 = !DILocalVariable(name: "pos", scope: !2734, file: !347, line: 907, type: !154)
!2746 = !DILocation(line: 907, column: 6, scope: !2734)
!2747 = !DILocation(line: 909, column: 43, scope: !2734)
!2748 = !DILocation(line: 909, column: 16, scope: !2734)
!2749 = !DILocation(line: 909, column: 14, scope: !2734)
!2750 = !DILocation(line: 910, column: 23, scope: !2734)
!2751 = !DILocation(line: 910, column: 35, scope: !2734)
!2752 = !DILocation(line: 910, column: 47, scope: !2734)
!2753 = !DILocation(line: 910, column: 54, scope: !2734)
!2754 = !DILocation(line: 910, column: 9, scope: !2734)
!2755 = !DILocation(line: 910, column: 7, scope: !2734)
!2756 = !DILocation(line: 911, column: 9, scope: !2734)
!2757 = !DILocation(line: 911, column: 2, scope: !2734)
!2758 = !DILocation(line: 913, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2734, file: !347, line: 913, column: 6)
!2760 = !DILocation(line: 913, column: 11, scope: !2759)
!2761 = !DILocation(line: 913, column: 6, scope: !2734)
!2762 = !DILocation(line: 914, column: 36, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !347, line: 913, column: 19)
!2764 = !DILocation(line: 914, column: 50, scope: !2763)
!2765 = !DILocation(line: 914, column: 56, scope: !2763)
!2766 = !DILocation(line: 914, column: 3, scope: !2763)
!2767 = !DILocation(line: 915, column: 10, scope: !2763)
!2768 = !DILocation(line: 915, column: 3, scope: !2763)
!2769 = !DILocation(line: 916, column: 2, scope: !2763)
!2770 = !DILocation(line: 917, column: 1, scope: !2734)
!2771 = distinct !DISubprogram(name: "get_next_server", scope: !347, file: !347, line: 1015, type: !2772, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!353, !353}
!2774 = !DILocalVariable(name: "current", arg: 1, scope: !2771, file: !347, line: 1015, type: !353)
!2775 = !DILocation(line: 1015, column: 48, scope: !2771)
!2776 = !DILocalVariable(name: "pos", scope: !2771, file: !347, line: 1017, type: !272)
!2777 = !DILocation(line: 1017, column: 10, scope: !2771)
!2778 = !DILocation(line: 1019, column: 6, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !347, line: 1019, column: 6)
!2780 = !DILocation(line: 1019, column: 14, scope: !2779)
!2781 = !DILocation(line: 1019, column: 6, scope: !2771)
!2782 = !DILocation(line: 1020, column: 10, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !347, line: 1019, column: 22)
!2784 = !DILocation(line: 1020, column: 18, scope: !2783)
!2785 = !DILocation(line: 1020, column: 27, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2783, file: !347, discriminator: 1)
!2787 = !DILocation(line: 1020, column: 36, scope: !2786)
!2788 = !DILocation(line: 1020, column: 10, scope: !2786)
!2789 = !DILocation(line: 1021, column: 4, scope: !2783)
!2790 = !DILocation(line: 1021, column: 19, scope: !2783)
!2791 = !DILocation(line: 1021, column: 28, scope: !2786)
!2792 = !DILocation(line: 1021, column: 44, scope: !2786)
!2793 = !DILocation(line: 1021, column: 4, scope: !2786)
!2794 = !DILocation(line: 1021, column: 4, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2783, file: !347, discriminator: 2)
!2796 = !DILocation(line: 1021, column: 4, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2783, file: !347, discriminator: 3)
!2798 = !DILocation(line: 1020, column: 10, scope: !2795)
!2799 = !DILocation(line: 1020, column: 10, scope: !2797)
!2800 = !DILocation(line: 1020, column: 3, scope: !2797)
!2801 = !DILocation(line: 1026, column: 21, scope: !2771)
!2802 = !DILocation(line: 1026, column: 30, scope: !2771)
!2803 = !DILocation(line: 1026, column: 8, scope: !2771)
!2804 = !DILocation(line: 1026, column: 6, scope: !2771)
!2805 = !DILocation(line: 1027, column: 6, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2771, file: !347, line: 1027, column: 6)
!2807 = !DILocation(line: 1027, column: 10, scope: !2806)
!2808 = !DILocation(line: 1027, column: 6, scope: !2771)
!2809 = !DILocation(line: 1028, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !347, line: 1028, column: 7)
!2811 = distinct !DILexicalBlock(scope: !2806, file: !347, line: 1027, column: 18)
!2812 = !DILocation(line: 1028, column: 12, scope: !2810)
!2813 = !DILocation(line: 1028, column: 17, scope: !2810)
!2814 = !DILocation(line: 1028, column: 7, scope: !2811)
!2815 = !DILocation(line: 1029, column: 11, scope: !2810)
!2816 = !DILocation(line: 1029, column: 16, scope: !2810)
!2817 = !DILocation(line: 1029, column: 22, scope: !2810)
!2818 = !DILocation(line: 1029, column: 4, scope: !2810)
!2819 = !DILocation(line: 1030, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !347, line: 1030, column: 7)
!2821 = !DILocation(line: 1030, column: 22, scope: !2820)
!2822 = !DILocation(line: 1030, column: 7, scope: !2811)
!2823 = !DILocation(line: 1031, column: 11, scope: !2820)
!2824 = !DILocation(line: 1031, column: 27, scope: !2820)
!2825 = !DILocation(line: 1031, column: 4, scope: !2820)
!2826 = !DILocation(line: 1032, column: 10, scope: !2811)
!2827 = !DILocation(line: 1032, column: 19, scope: !2811)
!2828 = !DILocation(line: 1032, column: 3, scope: !2811)
!2829 = !DILocation(line: 1035, column: 21, scope: !2771)
!2830 = !DILocation(line: 1035, column: 37, scope: !2771)
!2831 = !DILocation(line: 1035, column: 8, scope: !2771)
!2832 = !DILocation(line: 1035, column: 6, scope: !2771)
!2833 = !DILocation(line: 1036, column: 2, scope: !2771)
!2834 = distinct !{!2834, !2833}
!2835 = !DILocation(line: 1036, column: 11, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2837, file: !347, discriminator: 1)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !347, line: 1036, column: 11)
!2838 = distinct !DILexicalBlock(scope: !2771, file: !347, line: 1036, column: 5)
!2839 = !DILocation(line: 1036, column: 15, scope: !2836)
!2840 = !DILocation(line: 1036, column: 11, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2838, file: !347, discriminator: 2)
!2842 = !DILocation(line: 1036, column: 10, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2837, file: !347, discriminator: 3)
!2844 = !DILocation(line: 1036, column: 118, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2838, file: !347, discriminator: 4)
!2846 = !DILocation(line: 1038, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2771, file: !347, line: 1038, column: 6)
!2848 = !DILocation(line: 1038, column: 11, scope: !2847)
!2849 = !DILocation(line: 1038, column: 16, scope: !2847)
!2850 = !DILocation(line: 1038, column: 6, scope: !2771)
!2851 = !DILocation(line: 1039, column: 10, scope: !2847)
!2852 = !DILocation(line: 1039, column: 15, scope: !2847)
!2853 = !DILocation(line: 1039, column: 21, scope: !2847)
!2854 = !DILocation(line: 1039, column: 3, scope: !2847)
!2855 = !DILocation(line: 1040, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2771, file: !347, line: 1040, column: 6)
!2857 = !DILocation(line: 1040, column: 14, scope: !2856)
!2858 = !DILocation(line: 1040, column: 6, scope: !2771)
!2859 = !DILocation(line: 1041, column: 10, scope: !2856)
!2860 = !DILocation(line: 1041, column: 19, scope: !2856)
!2861 = !DILocation(line: 1041, column: 3, scope: !2856)
!2862 = !DILocation(line: 1042, column: 9, scope: !2771)
!2863 = !DILocation(line: 1042, column: 25, scope: !2771)
!2864 = !DILocation(line: 1042, column: 2, scope: !2771)
!2865 = !DILocation(line: 1043, column: 1, scope: !2771)
!2866 = distinct !DISubprogram(name: "get_prev_server", scope: !347, file: !347, line: 984, type: !2772, isLocal: true, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2867 = !DILocalVariable(name: "current", arg: 1, scope: !2866, file: !347, line: 984, type: !353)
!2868 = !DILocation(line: 984, column: 48, scope: !2866)
!2869 = !DILocalVariable(name: "pos", scope: !2866, file: !347, line: 986, type: !154)
!2870 = !DILocation(line: 986, column: 6, scope: !2866)
!2871 = !DILocation(line: 988, column: 6, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2866, file: !347, line: 988, column: 6)
!2873 = !DILocation(line: 988, column: 14, scope: !2872)
!2874 = !DILocation(line: 988, column: 6, scope: !2866)
!2875 = !DILocation(line: 989, column: 10, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !347, line: 988, column: 22)
!2877 = !DILocation(line: 989, column: 18, scope: !2876)
!2878 = !DILocation(line: 989, column: 40, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2876, file: !347, discriminator: 1)
!2880 = !DILocation(line: 989, column: 27, scope: !2879)
!2881 = !DILocation(line: 989, column: 50, scope: !2879)
!2882 = !DILocation(line: 989, column: 10, scope: !2879)
!2883 = !DILocation(line: 990, column: 4, scope: !2876)
!2884 = !DILocation(line: 990, column: 19, scope: !2876)
!2885 = !DILocation(line: 991, column: 17, scope: !2876)
!2886 = !DILocation(line: 991, column: 4, scope: !2876)
!2887 = !DILocation(line: 991, column: 34, scope: !2876)
!2888 = !DILocation(line: 990, column: 4, scope: !2879)
!2889 = !DILocation(line: 990, column: 4, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2876, file: !347, discriminator: 2)
!2891 = !DILocation(line: 990, column: 4, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2876, file: !347, discriminator: 3)
!2893 = !DILocation(line: 989, column: 10, scope: !2890)
!2894 = !DILocation(line: 989, column: 10, scope: !2892)
!2895 = !DILocation(line: 989, column: 3, scope: !2892)
!2896 = !DILocation(line: 996, column: 22, scope: !2866)
!2897 = !DILocation(line: 996, column: 31, scope: !2866)
!2898 = !DILocation(line: 996, column: 8, scope: !2866)
!2899 = !DILocation(line: 996, column: 6, scope: !2866)
!2900 = !DILocation(line: 997, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2866, file: !347, line: 997, column: 6)
!2902 = !DILocation(line: 997, column: 10, scope: !2901)
!2903 = !DILocation(line: 997, column: 6, scope: !2866)
!2904 = !DILocation(line: 998, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !347, line: 998, column: 7)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !347, line: 997, column: 17)
!2907 = !DILocation(line: 998, column: 11, scope: !2905)
!2908 = !DILocation(line: 998, column: 7, scope: !2906)
!2909 = !DILocation(line: 999, column: 23, scope: !2905)
!2910 = !DILocation(line: 999, column: 32, scope: !2905)
!2911 = !DILocation(line: 999, column: 35, scope: !2905)
!2912 = !DILocation(line: 999, column: 11, scope: !2905)
!2913 = !DILocation(line: 999, column: 40, scope: !2905)
!2914 = !DILocation(line: 999, column: 4, scope: !2905)
!2915 = !DILocation(line: 1000, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2906, file: !347, line: 1000, column: 7)
!2917 = !DILocation(line: 1000, column: 22, scope: !2916)
!2918 = !DILocation(line: 1000, column: 7, scope: !2906)
!2919 = !DILocation(line: 1001, column: 24, scope: !2916)
!2920 = !DILocation(line: 1001, column: 11, scope: !2916)
!2921 = !DILocation(line: 1001, column: 41, scope: !2916)
!2922 = !DILocation(line: 1001, column: 4, scope: !2916)
!2923 = !DILocation(line: 1002, column: 23, scope: !2906)
!2924 = !DILocation(line: 1002, column: 10, scope: !2906)
!2925 = !DILocation(line: 1002, column: 33, scope: !2906)
!2926 = !DILocation(line: 1002, column: 3, scope: !2906)
!2927 = !DILocation(line: 1005, column: 22, scope: !2866)
!2928 = !DILocation(line: 1005, column: 38, scope: !2866)
!2929 = !DILocation(line: 1005, column: 8, scope: !2866)
!2930 = !DILocation(line: 1005, column: 6, scope: !2866)
!2931 = !DILocation(line: 1006, column: 2, scope: !2866)
!2932 = distinct !{!2932, !2931}
!2933 = !DILocation(line: 1006, column: 11, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2935, file: !347, discriminator: 1)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !347, line: 1006, column: 11)
!2936 = distinct !DILexicalBlock(scope: !2866, file: !347, line: 1006, column: 5)
!2937 = !DILocation(line: 1006, column: 15, scope: !2934)
!2938 = !DILocation(line: 1006, column: 11, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2936, file: !347, discriminator: 2)
!2940 = !DILocation(line: 1006, column: 28, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2935, file: !347, discriminator: 3)
!2942 = !DILocation(line: 1006, column: 133, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2936, file: !347, discriminator: 4)
!2944 = !DILocation(line: 1008, column: 6, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2866, file: !347, line: 1008, column: 6)
!2946 = !DILocation(line: 1008, column: 10, scope: !2945)
!2947 = !DILocation(line: 1008, column: 6, scope: !2866)
!2948 = !DILocation(line: 1009, column: 22, scope: !2945)
!2949 = !DILocation(line: 1009, column: 38, scope: !2945)
!2950 = !DILocation(line: 1009, column: 41, scope: !2945)
!2951 = !DILocation(line: 1009, column: 10, scope: !2945)
!2952 = !DILocation(line: 1009, column: 46, scope: !2945)
!2953 = !DILocation(line: 1009, column: 3, scope: !2945)
!2954 = !DILocation(line: 1010, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2866, file: !347, line: 1010, column: 6)
!2956 = !DILocation(line: 1010, column: 14, scope: !2955)
!2957 = !DILocation(line: 1010, column: 6, scope: !2866)
!2958 = !DILocation(line: 1011, column: 23, scope: !2955)
!2959 = !DILocation(line: 1011, column: 10, scope: !2955)
!2960 = !DILocation(line: 1011, column: 33, scope: !2955)
!2961 = !DILocation(line: 1011, column: 3, scope: !2955)
!2962 = !DILocation(line: 1012, column: 22, scope: !2866)
!2963 = !DILocation(line: 1012, column: 9, scope: !2866)
!2964 = !DILocation(line: 1012, column: 39, scope: !2866)
!2965 = !DILocation(line: 1012, column: 2, scope: !2866)
!2966 = !DILocation(line: 1013, column: 1, scope: !2866)
!2967 = distinct !DISubprogram(name: "window_prev_page", scope: !347, file: !347, line: 153, type: !260, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2968 = !DILocation(line: 155, column: 20, scope: !2967)
!2969 = !DILocation(line: 155, column: 33, scope: !2967)
!2970 = !DILocation(line: 155, column: 32, scope: !2967)
!2971 = !DILocation(line: 155, column: 2, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2967, file: !347, discriminator: 1)
!2973 = !DILocation(line: 156, column: 1, scope: !2967)
!2974 = distinct !DISubprogram(name: "get_scroll_count", scope: !347, file: !347, line: 133, type: !2975, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!154}
!2977 = !DILocalVariable(name: "str", scope: !2974, file: !347, line: 135, type: !351)
!2978 = !DILocation(line: 135, column: 14, scope: !2974)
!2979 = !DILocalVariable(name: "count", scope: !2974, file: !347, line: 136, type: !2980)
!2980 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!2981 = !DILocation(line: 136, column: 9, scope: !2974)
!2982 = !DILocation(line: 138, column: 8, scope: !2974)
!2983 = !DILocation(line: 138, column: 6, scope: !2974)
!2984 = !DILocation(line: 139, column: 15, scope: !2974)
!2985 = !DILocation(line: 139, column: 23, scope: !2974)
!2986 = !DILocation(line: 139, column: 22, scope: !2974)
!2987 = !DILocation(line: 139, column: 27, scope: !2974)
!2988 = !DILocation(line: 139, column: 19, scope: !2974)
!2989 = !DILocation(line: 139, column: 10, scope: !2974)
!2990 = !DILocation(line: 139, column: 8, scope: !2974)
!2991 = !DILocation(line: 140, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2974, file: !347, line: 140, column: 6)
!2993 = !DILocation(line: 140, column: 12, scope: !2992)
!2994 = !DILocation(line: 140, column: 6, scope: !2974)
!2995 = !DILocation(line: 141, column: 9, scope: !2992)
!2996 = !DILocation(line: 141, column: 3, scope: !2992)
!2997 = !DILocation(line: 142, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !347, line: 142, column: 11)
!2999 = !DILocation(line: 142, column: 17, scope: !2998)
!3000 = !DILocation(line: 142, column: 11, scope: !2992)
!3001 = !DILocation(line: 143, column: 11, scope: !2998)
!3002 = !DILocation(line: 143, column: 27, scope: !2998)
!3003 = !DILocation(line: 143, column: 34, scope: !2998)
!3004 = !DILocation(line: 143, column: 50, scope: !2998)
!3005 = !DILocation(line: 143, column: 33, scope: !2998)
!3006 = !DILocation(line: 143, column: 66, scope: !2998)
!3007 = !DILocation(line: 143, column: 65, scope: !2998)
!3008 = !DILocation(line: 143, column: 9, scope: !2998)
!3009 = !DILocation(line: 143, column: 3, scope: !2998)
!3010 = !DILocation(line: 144, column: 11, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2998, file: !347, line: 144, column: 11)
!3012 = !DILocation(line: 144, column: 17, scope: !3011)
!3013 = !DILocation(line: 144, column: 11, scope: !2998)
!3014 = !DILocation(line: 145, column: 29, scope: !3011)
!3015 = !DILocation(line: 145, column: 28, scope: !3011)
!3016 = !DILocation(line: 145, column: 23, scope: !3011)
!3017 = !DILocation(line: 145, column: 17, scope: !3011)
!3018 = !DILocation(line: 147, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2974, file: !347, line: 147, column: 6)
!3020 = !DILocation(line: 147, column: 6, scope: !3019)
!3021 = !DILocation(line: 147, column: 11, scope: !3019)
!3022 = !DILocation(line: 147, column: 6, scope: !2974)
!3023 = !DILocation(line: 148, column: 12, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !347, line: 147, column: 19)
!3025 = !DILocation(line: 148, column: 28, scope: !3024)
!3026 = !DILocation(line: 148, column: 35, scope: !3024)
!3027 = !DILocation(line: 148, column: 51, scope: !3024)
!3028 = !DILocation(line: 148, column: 34, scope: !3024)
!3029 = !DILocation(line: 148, column: 11, scope: !3024)
!3030 = !DILocation(line: 148, column: 68, scope: !3024)
!3031 = !DILocation(line: 148, column: 67, scope: !3024)
!3032 = !DILocation(line: 148, column: 9, scope: !3024)
!3033 = !DILocation(line: 149, column: 2, scope: !3024)
!3034 = !DILocation(line: 150, column: 14, scope: !2974)
!3035 = !DILocation(line: 150, column: 9, scope: !2974)
!3036 = !DILocation(line: 150, column: 2, scope: !2974)
!3037 = distinct !DISubprogram(name: "window_next_page", scope: !347, file: !347, line: 158, type: !260, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!3038 = !DILocation(line: 160, column: 20, scope: !3037)
!3039 = !DILocation(line: 160, column: 32, scope: !3037)
!3040 = !DILocation(line: 160, column: 2, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3037, file: !347, discriminator: 1)
!3042 = !DILocation(line: 161, column: 1, scope: !3037)
!3043 = distinct !DISubprogram(name: "handle_key_redirect", scope: !347, file: !347, line: 99, type: !585, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !541)
!3044 = !DILocalVariable(name: "key", arg: 1, scope: !3043, file: !347, line: 99, type: !154)
!3045 = !DILocation(line: 99, column: 37, scope: !3043)
!3046 = !DILocalVariable(name: "func", scope: !3043, file: !347, line: 101, type: !534)
!3047 = !DILocation(line: 101, column: 26, scope: !3043)
!3048 = !DILocalVariable(name: "data", scope: !3043, file: !347, line: 102, type: !146)
!3049 = !DILocation(line: 102, column: 8, scope: !3043)
!3050 = !DILocation(line: 104, column: 35, scope: !3043)
!3051 = !DILocation(line: 104, column: 42, scope: !3043)
!3052 = !DILocation(line: 104, column: 9, scope: !3043)
!3053 = !DILocation(line: 104, column: 7, scope: !3043)
!3054 = !DILocation(line: 105, column: 9, scope: !3043)
!3055 = !DILocation(line: 105, column: 16, scope: !3043)
!3056 = !DILocation(line: 105, column: 7, scope: !3043)
!3057 = !DILocation(line: 106, column: 2, scope: !3043)
!3058 = distinct !{!3058, !3057}
!3059 = !DILocation(line: 106, column: 11, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3061, file: !347, discriminator: 1)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !347, line: 106, column: 11)
!3062 = distinct !DILexicalBlock(scope: !3043, file: !347, line: 106, column: 5)
!3063 = !DILocation(line: 106, column: 27, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3065, file: !347, discriminator: 2)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !347, line: 106, column: 18)
!3066 = !DILocation(line: 106, column: 20, scope: !3064)
!3067 = !DILocation(line: 106, column: 43, scope: !3064)
!3068 = !DILocation(line: 106, column: 3, scope: !3064)
!3069 = !DILocation(line: 106, column: 5, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !3062, file: !347, discriminator: 3)
!3071 = !DILocation(line: 108, column: 23, scope: !3043)
!3072 = !DILocation(line: 108, column: 2, scope: !3043)
!3073 = !DILocation(line: 110, column: 6, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3043, file: !347, line: 110, column: 6)
!3075 = !DILocation(line: 110, column: 11, scope: !3074)
!3076 = !DILocation(line: 110, column: 6, scope: !3043)
!3077 = !DILocation(line: 111, column: 3, scope: !3074)
!3078 = !DILocation(line: 111, column: 8, scope: !3074)
!3079 = !DILocation(line: 111, column: 13, scope: !3074)
!3080 = !DILocation(line: 111, column: 19, scope: !3074)
!3081 = !DILocation(line: 111, column: 31, scope: !3074)
!3082 = !DILocation(line: 111, column: 46, scope: !3074)
!3083 = !DILocation(line: 111, column: 58, scope: !3074)
!3084 = !DILocation(line: 112, column: 1, scope: !3043)
