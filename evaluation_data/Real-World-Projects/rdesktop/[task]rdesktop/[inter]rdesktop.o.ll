; ModuleID = './[inter]rdesktop.o.i'
source_filename = "./[inter]rdesktop.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tms = type { i64, i64, i64, i64 }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.timezone = type { i32, i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.flock = type { i16, i16, i64, i64, i32 }

@g_static_rdesktop_salt_16 = global [16 x i8] c"\B8\82)1\C59\D9DT\15^\14q8\D5M", align 16
@g_title = global [64 x i8] zeroinitializer, align 16
@g_password = global [64 x i8] zeroinitializer, align 16
@g_hostname = global [16 x i8] zeroinitializer, align 16
@g_keymapname = global [4096 x i8] zeroinitializer, align 16
@g_keylayout = global i32 1033, align 4
@g_keyboard_type = global i32 4, align 4
@g_keyboard_subtype = global i32 0, align 4
@g_keyboard_functionkeys = global i32 12, align 4
@g_dpi = global i32 0, align 4
@g_requested_session_width = global i32 1024, align 4
@g_requested_session_height = global i32 768, align 4
@g_window_size_type = global i32 0, align 4
@g_xpos = global i32 0, align 4
@g_ypos = global i32 0, align 4
@g_pos = global i32 0, align 4
@g_server_depth = global i32 -1, align 4
@g_win_button_size = global i32 0, align 4
@g_network_error = global i32 0, align 4
@g_sendmotion = global i32 1, align 4
@g_bitmap_cache = global i32 1, align 4
@g_bitmap_cache_persist_enable = global i32 0, align 4
@g_bitmap_cache_precache = global i32 1, align 4
@g_use_ctrl = global i32 1, align 4
@g_encryption = global i32 1, align 4
@g_encryption_initial = global i32 1, align 4
@g_packet_encryption = global i32 1, align 4
@g_desktop_save = global i32 1, align 4
@g_polygon_ellipse_orders = global i32 1, align 4
@g_fullscreen = global i32 0, align 4
@g_grab_keyboard = global i32 1, align 4
@g_local_cursor = global i32 0, align 4
@g_hide_decorations = global i32 0, align 4
@g_rdp_version = global i32 5, align 4
@g_rdpclip = global i32 1, align 4
@g_console_session = global i32 0, align 4
@g_numlock_sync = global i32 0, align 4
@g_lspci_enabled = global i32 0, align 4
@g_owncolmap = global i32 0, align 4
@g_ownbackstore = global i32 1, align 4
@g_seamless_rdp = global i32 0, align 4
@g_use_password_as_pin = global i32 0, align 4
@g_seamless_persistent_mode = global i32 1, align 4
@g_user_quit = global i32 0, align 4
@g_rdp5_performanceflags = global i32 134, align 4
@g_redirect = global i32 0, align 4
@g_redirect_flags = global i32 0, align 4
@g_redirect_session_id = global i32 0, align 4
@g_reconnect_logonid = global i32 0, align 4
@g_has_reconnect_random = global i32 0, align 4
@g_reconnect_loop = global i32 0, align 4
@g_pending_resize = global i32 0, align 4
@g_pending_resize_defer = global i32 1, align 4
@g_pending_resize_defer_timer = global %struct.timeval zeroinitializer, align 8
@g_rdpsnd = global i32 0, align 4
@g_codepage = global [16 x i8] zeroinitializer, align 16
@g_sc_csp_name = global i8* null, align 8
@g_sc_reader_name = global i8* null, align 8
@g_sc_card_name = global i8* null, align 8
@g_sc_container_name = global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"workarea\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"invalid geometry, expected positive integer for width\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"invalid geometry, expected '%%' or 'x' after width\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"invalid geometry, expected positive integer for height\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"invalid geometry, unexpected '%%' after height\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"invalid geometry, expected '%%' after height\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"invalid geometry, missing height (WxH)\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"invalid geometry, expected positive integer for DPI\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"invalid geometry, expected an integer for X position\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"invalid geometry, expected an integer for Y position\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"invalid geometry, unexpected characters at end of string\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"RDESKTOP_DEBUG\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_seamless_spawn_cmd = common global [512 x i8] zeroinitializer, align 16
@g_embed_wnd = common global i32 0, align 4
@g_num_devices = external global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"A:u:L:d:s:c:p:n:k:g:o:fbBeEitmMzCDKS:T:NX:a:x:Pr:045vh?\00", align 1
@g_seamless_shell = common global [512 x i8] zeroinitializer, align 16
@optarg = external global i8*, align 8
@g_username = common global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"invalid button size\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Invalid server colour depth specified\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"rdp compression enabled\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"comport\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"lspci\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"lptport\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"printer\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"clientname\00", align 1
@g_rdpdr_clientname = external global i8*, align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"clipboard\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"scard\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Not compiled with smartcard support\0A\00", align 1
@.str.34 = private unnamed_addr constant [107 x i8] c"Unknown -r argument '%s'. Possible arguments are: comport, disk, lptport, printer, sound, clipboard, scard\00", align 1
@optind = external global i32, align 4
@.str.35 = private unnamed_addr constant [42 x i8] c"You cannot use -S and -A at the same time\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"You cannot use -g and -A at the same time\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"You cannot use -f and -A at the same time\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"You cannot use -D and -A at the same time\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"You cannot use -X and -A at the same time\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"You cannot use -4 and -A at the same time\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"could not determine username, use -u <username> to set one\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"could not determine local hostname, use -n\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Autoselecting keyboard map '%s' from locale\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"en-us\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"Failed to read password or pin from stdin\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"rdesktop - \00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Failed to initialize ctrl mode\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"rdesktop in slave mode sending command to master process\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"seamless.spawn\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"No command specified to be spawned in seamless mode\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"Initializing sound-support failed\00", align 1
@g_redirect_domain = common global i8* null, align 8
@g_redirect_username = common global i8* null, align 8
@g_redirect_server = common global i8* null, align 8
@.str.53 = private unnamed_addr constant [32 x i8] c"Redirected to %s@%s session %d.\00", align 1
@g_reconnect_random_ts = common global i64 0, align 8
@.str.54 = private unnamed_addr constant [46 x i8] c"Tried to reconnect for %d minutes, giving up.\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Connection successful\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Disconnecting...\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"Redirect reconnect loop triggered.\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"Disconnected due to network error, exiting...\00", align 1
@.str.59 = private unnamed_addr constant [73 x i8] c"Disconnected due to network error, retrying to reconnect for %d minutes.\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Resize reconnect loop triggered, new size %dx%d\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"Unhandled reconnect reason, exiting...\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"xmalloc, failed to allocate %d bytes\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"unexpected null pointer. Out of memory?\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"xstrdup(), strdup() failed: %s\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"xrealloc, failed to reallocate %ld bytes\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%04x \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"subprocess(), pipe() failed: %s\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"subprocess(), fork() failed: %s\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"subprocess(), execvp() failed: %s\00", align 1
@l_to_a.ret = internal global [65 x i8] zeroinitializer, align 16
@.str.77 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"%s/.local/share/rdesktop/licenses/%s.cal\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"%s/.rdesktop/license.%s\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"%s/.local/share/rdesktop/licenses\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"save_license(), utils_mkdir_p() failed: %s\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"%s.new\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"save_license(), open() failed: %s\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"save_license(), write() failed: %s\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"save_license(), rename() failed: %s\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c".rdesktop\00", align 1
@.str.89 = private unnamed_addr constant [40 x i8] c"rd_pstcache_mkdir(), mkdir() failed: %s\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c".rdesktop/cache\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"%s/.rdesktop/%s\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"rd_open_file(), open() failed: %s\00", align 1
@g_redirect_server_len = common global i32 0, align 4
@g_redirect_domain_len = common global i32 0, align 4
@g_redirect_username_len = common global i32 0, align 4
@g_redirect_lb_info = common global i8* null, align 8
@g_redirect_lb_info_len = common global i32 0, align 4
@g_redirect_cookie = common global i8* null, align 8
@g_redirect_cookie_len = common global i32 0, align 4
@g_reconnect_random = common global [16 x i8] zeroinitializer, align 16
@g_client_random = common global [32 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.93 = private unnamed_addr constant [45 x i8] c"rdesktop: A Remote Desktop Protocol client.\0A\00", align 1
@.str.94 = private unnamed_addr constant [67 x i8] c"Version 1.8.3post. Copyright (C) 1999-2016 Matthew Chapman et al.\0A\00", align 1
@.str.95 = private unnamed_addr constant [53 x i8] c"See http://www.rdesktop.org/ for more information.\0A\0A\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"Usage: %s [options] server[:port]\0A\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"   -u: user name\0A\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"   -d: domain\0A\00", align 1
@.str.99 = private unnamed_addr constant [55 x i8] c"   -s: shell / seamless application to start remotely\0A\00", align 1
@.str.100 = private unnamed_addr constant [26 x i8] c"   -c: working directory\0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"   -p: password (- to prompt)\0A\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"   -n: client hostname\0A\00", align 1
@.str.103 = private unnamed_addr constant [56 x i8] c"   -k: keyboard layout on server (en-us, de, sv, etc.)\0A\00", align 1
@.str.104 = private unnamed_addr constant [45 x i8] c"   -g: desktop geometry (WxH[@DPI][+X[+Y]])\0A\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"   -f: full-screen mode\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"   -b: force bitmap updates\0A\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"   -L: local codepage\0A\00", align 1
@.str.108 = private unnamed_addr constant [65 x i8] c"   -A: path to SeamlessRDP shell, this enables SeamlessRDP mode\0A\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c"   -B: use BackingStore of X-server (if available)\0A\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"   -e: disable encryption (French TS)\0A\00", align 1
@.str.111 = private unnamed_addr constant [49 x i8] c"   -E: disable encryption from client to server\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"   -m: do not send motion events\0A\00", align 1
@.str.113 = private unnamed_addr constant [31 x i8] c"   -M: use local mouse cursor\0A\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"   -C: use private colour map\0A\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"   -D: hide window manager decorations\0A\00", align 1
@.str.116 = private unnamed_addr constant [41 x i8] c"   -K: keep window manager key bindings\0A\00", align 1
@.str.117 = private unnamed_addr constant [54 x i8] c"   -S: caption button size (single application mode)\0A\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"   -T: window title\0A\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"   -t: disable use of remote ctrl\0A\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"   -N: enable numlock synchronization\0A\00", align 1
@.str.121 = private unnamed_addr constant [51 x i8] c"   -X: embed into another window with a given id.\0A\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"   -a: connection colour depth\0A\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"   -z: enable rdp compression\0A\00", align 1
@.str.124 = private unnamed_addr constant [70 x i8] c"   -x: RDP5 experience (m[odem 28.8], b[roadband], l[an] or hex nr.)\0A\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"   -P: use persistent bitmap caching\0A\00", align 1
@.str.126 = private unnamed_addr constant [72 x i8] c"   -r: enable specified device redirection (this flag can be repeated)\0A\00", align 1
@.str.127 = private unnamed_addr constant [88 x i8] c"         '-r comport:COM1=/dev/ttyS0': enable serial redirection of /dev/ttyS0 to COM1\0A\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c"             or      COM1=/dev/ttyS0,COM2=/dev/ttyS1\0A\00", align 1
@.str.129 = private unnamed_addr constant [92 x i8] c"         '-r disk:floppy=/mnt/floppy': enable redirection of /mnt/floppy to 'floppy' share\0A\00", align 1
@.str.130 = private unnamed_addr constant [57 x i8] c"             or   'floppy=/mnt/floppy,cdrom=/mnt/cdrom'\0A\00", align 1
@.str.131 = private unnamed_addr constant [71 x i8] c"         '-r clientname=<client name>': Set the client name displayed\0A\00", align 1
@.str.132 = private unnamed_addr constant [35 x i8] c"             for redirected disks\0A\00", align 1
@.str.133 = private unnamed_addr constant [86 x i8] c"         '-r lptport:LPT1=/dev/lp0': enable parallel redirection of /dev/lp0 to LPT1\0A\00", align 1
@.str.134 = private unnamed_addr constant [50 x i8] c"             or      LPT1=/dev/lp0,LPT2=/dev/lp1\0A\00", align 1
@.str.135 = private unnamed_addr constant [61 x i8] c"         '-r printer:mydeskjet': enable printer redirection\0A\00", align 1
@.str.136 = private unnamed_addr constant [82 x i8] c"             or      mydeskjet=\22HP LaserJet IIIP\22 to enter server driver as well\0A\00", align 1
@.str.137 = private unnamed_addr constant [84 x i8] c"         '-r sound:[local[:driver[:device]]|off|remote]': enable sound redirection\0A\00", align 1
@.str.138 = private unnamed_addr constant [57 x i8] c"                     remote would leave sound on server\0A\00", align 1
@.str.139 = private unnamed_addr constant [53 x i8] c"                     available drivers for 'local':\0A\00", align 1
@.str.140 = private unnamed_addr constant [76 x i8] c"         '-r clipboard:[off|PRIMARYCLIPBOARD|CLIPBOARD]': enable clipboard\0A\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"                      redirection.\0A\00", align 1
@.str.142 = private unnamed_addr constant [78 x i8] c"                      'PRIMARYCLIPBOARD' looks at both PRIMARY and CLIPBOARD\0A\00", align 1
@.str.143 = private unnamed_addr constant [52 x i8] c"                      when sending data to server.\0A\00", align 1
@.str.144 = private unnamed_addr constant [60 x i8] c"                      'CLIPBOARD' looks at only CLIPBOARD.\0A\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"   -0: attach to console\0A\00", align 1
@.str.146 = private unnamed_addr constant [26 x i8] c"   -4: use RDP version 4\0A\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"   -5: use RDP version 5 (default)\0A\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"   -v: enable verbose logging\0A\00", align 1
@g_tcp_port_rdp = external global i32, align 4
@.str.149 = private unnamed_addr constant [17 x i8] c"Smart card PIN: \00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.151 = private unnamed_addr constant [25 x i8] c"No information available\00", align 1
@.str.152 = private unnamed_addr constant [35 x i8] c"Administrator initiated disconnect\00", align 1
@.str.153 = private unnamed_addr constant [31 x i8] c"Administrator initiated logout\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"Server idle session time limit reached\00", align 1
@.str.155 = private unnamed_addr constant [41 x i8] c"Server active session time limit reached\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"The session was replaced\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"The server is out of memory\00", align 1
@.str.158 = private unnamed_addr constant [33 x i8] c"The server denied the connection\00", align 1
@.str.159 = private unnamed_addr constant [54 x i8] c"The server denied the connection for security reasons\00", align 1
@.str.160 = private unnamed_addr constant [77 x i8] c"The user cannot connect to the server due to insufficient access privileges.\00", align 1
@.str.161 = private unnamed_addr constant [122 x i8] c"The server does not accept saved user credentials and requires that the user enter their credentials for each connection.\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"Disconnect initiated by user\00", align 1
@.str.163 = private unnamed_addr constant [25 x i8] c"Logout initiated by user\00", align 1
@.str.164 = private unnamed_addr constant [25 x i8] c"Internal licensing error\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"No license server available\00", align 1
@.str.166 = private unnamed_addr constant [27 x i8] c"No valid license available\00", align 1
@.str.167 = private unnamed_addr constant [38 x i8] c"Invalid licensing message from client\00", align 1
@.str.168 = private unnamed_addr constant [78 x i8] c"The client license has been modified and does no longer match the hardware ID\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"The client license is in an invalid format\00", align 1
@.str.170 = private unnamed_addr constant [40 x i8] c"Network error during licensing protocol\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"Licensing protocol was not completed\00", align 1
@.str.172 = private unnamed_addr constant [36 x i8] c"Incorrect client license encryption\00", align 1
@.str.173 = private unnamed_addr constant [31 x i8] c"Can't upgrade or renew license\00", align 1
@.str.174 = private unnamed_addr constant [56 x i8] c"The server is not licensed to accept remote connections\00", align 1
@.str.175 = private unnamed_addr constant [60 x i8] c"The target endpoint chosen by the broker could not be found\00", align 1
@.str.176 = private unnamed_addr constant [53 x i8] c"The target endpoint is disconnecting from the broker\00", align 1
@.str.177 = private unnamed_addr constant [48 x i8] c"Error occurred while being redirected by broker\00", align 1
@.str.178 = private unnamed_addr constant [61 x i8] c"Error while the endpoint VM was being awakened by the broker\00", align 1
@.str.179 = private unnamed_addr constant [60 x i8] c"Error while the endpoint VM was being started by the broker\00", align 1
@.str.180 = private unnamed_addr constant [72 x i8] c"The IP address of the endpoint VM could not be determined by the broker\00", align 1
@.str.181 = private unnamed_addr constant [53 x i8] c"No available endpoints in the connection broker pool\00", align 1
@.str.182 = private unnamed_addr constant [46 x i8] c"Connection processing cancelled by the broker\00", align 1
@.str.183 = private unnamed_addr constant [61 x i8] c"The connection settings could not be validated by the broker\00", align 1
@.str.184 = private unnamed_addr constant [62 x i8] c"Timeout while the endpoint VM was being started by the broker\00", align 1
@.str.185 = private unnamed_addr constant [79 x i8] c"Session monitoring error while the endpoint VM was being started by the broker\00", align 1
@.str.186 = private unnamed_addr constant [45 x i8] c"The server can only host Remote Applications\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"Update of session keys failed\00", align 1
@.str.188 = private unnamed_addr constant [42 x i8] c"Decryption or session key creation failed\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"Encryption failed\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"Unknown reason\00", align 1
@.str.191 = private unnamed_addr constant [28 x i8] c"Internal protocol error: %x\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"disconnect: %s.\0A\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"/var/run/egd-pool\00", align 1

; Function Attrs: nounwind uwtable
define i32 @parse_geometry_string(i8*) #0 !dbg !533 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !538, metadata !539), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %4, metadata !541, metadata !539), !dbg !543
  call void @llvm.dbg.declare(metadata i8** %5, metadata !544, metadata !539), !dbg !545
  call void @llvm.dbg.declare(metadata i8** %6, metadata !546, metadata !539), !dbg !547
  %7 = load i8*, i8** %3, align 8, !dbg !548
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #9, !dbg !550
  %9 = icmp eq i32 %8, 0, !dbg !551
  br i1 %9, label %10, label %11, !dbg !552

; <label>:10:                                     ; preds = %1
  store i32 2, i32* @g_window_size_type, align 4, !dbg !553
  store i32 0, i32* %2, align 4, !dbg !555
  br label %179, !dbg !555

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !556
  store i8* %12, i8** %5, align 8, !dbg !557
  %13 = load i8*, i8** %5, align 8, !dbg !558
  %14 = call i64 @strtol(i8* %13, i8** %6, i32 10) #10, !dbg !559
  %15 = trunc i64 %14 to i32, !dbg !559
  store i32 %15, i32* %4, align 4, !dbg !560
  %16 = load i8*, i8** %5, align 8, !dbg !561
  %17 = load i8*, i8** %6, align 8, !dbg !563
  %18 = icmp eq i8* %16, %17, !dbg !564
  br i1 %18, label %22, label %19, !dbg !565

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !dbg !566
  %21 = icmp sle i32 %20, 0, !dbg !568
  br i1 %21, label %22, label %23, !dbg !569

; <label>:22:                                     ; preds = %19, %11
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0)), !dbg !570
  store i32 -1, i32* %2, align 4, !dbg !572
  br label %179, !dbg !572

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !573
  store i32 %24, i32* @g_requested_session_width, align 4, !dbg !574
  %25 = load i8*, i8** %6, align 8, !dbg !575
  store i8* %25, i8** %5, align 8, !dbg !576
  %26 = load i8*, i8** %5, align 8, !dbg !577
  %27 = load i8, i8* %26, align 1, !dbg !579
  %28 = sext i8 %27 to i32, !dbg !579
  %29 = icmp ne i32 %28, 37, !dbg !580
  br i1 %29, label %30, label %36, !dbg !581

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %5, align 8, !dbg !582
  %32 = load i8, i8* %31, align 1, !dbg !584
  %33 = sext i8 %32 to i32, !dbg !584
  %34 = icmp ne i32 %33, 120, !dbg !585
  br i1 %34, label %35, label %36, !dbg !586

; <label>:35:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)), !dbg !587
  store i32 -1, i32* %2, align 4, !dbg !589
  br label %179, !dbg !589

; <label>:36:                                     ; preds = %30, %23
  %37 = load i8*, i8** %5, align 8, !dbg !590
  %38 = load i8, i8* %37, align 1, !dbg !592
  %39 = sext i8 %38 to i32, !dbg !592
  %40 = icmp eq i32 %39, 37, !dbg !593
  br i1 %40, label %41, label %46, !dbg !594

; <label>:41:                                     ; preds = %36
  store i32 1, i32* @g_window_size_type, align 4, !dbg !595
  %42 = load i8*, i8** %5, align 8, !dbg !597
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !597
  store i8* %43, i8** %5, align 8, !dbg !597
  %44 = load i8*, i8** %6, align 8, !dbg !598
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !598
  store i8* %45, i8** %6, align 8, !dbg !598
  br label %46, !dbg !599

; <label>:46:                                     ; preds = %41, %36
  %47 = load i8*, i8** %5, align 8, !dbg !600
  %48 = load i8, i8* %47, align 1, !dbg !602
  %49 = sext i8 %48 to i32, !dbg !602
  %50 = icmp eq i32 %49, 120, !dbg !603
  br i1 %50, label %51, label %90, !dbg !604

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %5, align 8, !dbg !605
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !605
  store i8* %53, i8** %5, align 8, !dbg !605
  %54 = load i8*, i8** %5, align 8, !dbg !607
  %55 = call i64 @strtol(i8* %54, i8** %6, i32 10) #10, !dbg !608
  %56 = trunc i64 %55 to i32, !dbg !608
  store i32 %56, i32* %4, align 4, !dbg !609
  %57 = load i8*, i8** %5, align 8, !dbg !610
  %58 = load i8*, i8** %6, align 8, !dbg !612
  %59 = icmp eq i8* %57, %58, !dbg !613
  br i1 %59, label %63, label %60, !dbg !614

; <label>:60:                                     ; preds = %51
  %61 = load i32, i32* %4, align 4, !dbg !615
  %62 = icmp sle i32 %61, 0, !dbg !617
  br i1 %62, label %63, label %64, !dbg !618

; <label>:63:                                     ; preds = %60, %51
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0)), !dbg !619
  store i32 -1, i32* %2, align 4, !dbg !621
  br label %179, !dbg !621

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %4, align 4, !dbg !622
  store i32 %65, i32* @g_requested_session_height, align 4, !dbg !623
  %66 = load i8*, i8** %6, align 8, !dbg !624
  store i8* %66, i8** %5, align 8, !dbg !625
  %67 = load i8*, i8** %5, align 8, !dbg !626
  %68 = load i8, i8* %67, align 1, !dbg !628
  %69 = sext i8 %68 to i32, !dbg !628
  %70 = icmp eq i32 %69, 37, !dbg !629
  br i1 %70, label %71, label %75, !dbg !630

; <label>:71:                                     ; preds = %64
  %72 = load i32, i32* @g_window_size_type, align 4, !dbg !631
  %73 = icmp eq i32 %72, 0, !dbg !633
  br i1 %73, label %74, label %75, !dbg !634

; <label>:74:                                     ; preds = %71
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0)), !dbg !635
  store i32 -1, i32* %2, align 4, !dbg !637
  br label %179, !dbg !637

; <label>:75:                                     ; preds = %71, %64
  %76 = load i32, i32* @g_window_size_type, align 4, !dbg !638
  %77 = icmp eq i32 %76, 1, !dbg !640
  br i1 %77, label %78, label %89, !dbg !641

; <label>:78:                                     ; preds = %75
  %79 = load i8*, i8** %5, align 8, !dbg !642
  %80 = load i8, i8* %79, align 1, !dbg !645
  %81 = sext i8 %80 to i32, !dbg !645
  %82 = icmp ne i32 %81, 37, !dbg !646
  br i1 %82, label %83, label %84, !dbg !647

; <label>:83:                                     ; preds = %78
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0)), !dbg !648
  store i32 -1, i32* %2, align 4, !dbg !650
  br label %179, !dbg !650

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %5, align 8, !dbg !651
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !651
  store i8* %86, i8** %5, align 8, !dbg !651
  %87 = load i8*, i8** %6, align 8, !dbg !652
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !652
  store i8* %88, i8** %6, align 8, !dbg !652
  br label %89, !dbg !653

; <label>:89:                                     ; preds = %84, %75
  br label %97, !dbg !654

; <label>:90:                                     ; preds = %46
  %91 = load i32, i32* @g_window_size_type, align 4, !dbg !655
  %92 = icmp eq i32 %91, 1, !dbg !658
  br i1 %92, label %93, label %95, !dbg !659

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* @g_requested_session_width, align 4, !dbg !660
  store i32 %94, i32* @g_requested_session_height, align 4, !dbg !662
  br label %96, !dbg !663

; <label>:95:                                     ; preds = %90
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)), !dbg !664
  store i32 -1, i32* %2, align 4, !dbg !666
  br label %179, !dbg !666

; <label>:96:                                     ; preds = %93
  br label %97

; <label>:97:                                     ; preds = %96, %89
  %98 = load i8*, i8** %5, align 8, !dbg !667
  %99 = load i8, i8* %98, align 1, !dbg !669
  %100 = sext i8 %99 to i32, !dbg !669
  %101 = icmp eq i32 %100, 64, !dbg !670
  br i1 %101, label %102, label %120, !dbg !671

; <label>:102:                                    ; preds = %97
  %103 = load i8*, i8** %5, align 8, !dbg !672
  %104 = getelementptr inbounds i8, i8* %103, i32 1, !dbg !672
  store i8* %104, i8** %5, align 8, !dbg !672
  %105 = load i8*, i8** %6, align 8, !dbg !674
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !674
  store i8* %106, i8** %6, align 8, !dbg !674
  %107 = load i8*, i8** %5, align 8, !dbg !675
  %108 = call i64 @strtol(i8* %107, i8** %6, i32 10) #10, !dbg !676
  %109 = trunc i64 %108 to i32, !dbg !676
  store i32 %109, i32* %4, align 4, !dbg !677
  %110 = load i8*, i8** %5, align 8, !dbg !678
  %111 = load i8*, i8** %6, align 8, !dbg !680
  %112 = icmp eq i8* %110, %111, !dbg !681
  br i1 %112, label %116, label %113, !dbg !682

; <label>:113:                                    ; preds = %102
  %114 = load i32, i32* %4, align 4, !dbg !683
  %115 = icmp sle i32 %114, 0, !dbg !685
  br i1 %115, label %116, label %117, !dbg !686

; <label>:116:                                    ; preds = %113, %102
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0)), !dbg !687
  store i32 -1, i32* %2, align 4, !dbg !689
  br label %179, !dbg !689

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %4, align 4, !dbg !690
  store i32 %118, i32* @g_dpi, align 4, !dbg !691
  %119 = load i8*, i8** %6, align 8, !dbg !692
  store i8* %119, i8** %5, align 8, !dbg !693
  br label %120, !dbg !694

; <label>:120:                                    ; preds = %117, %97
  %121 = load i8*, i8** %5, align 8, !dbg !695
  %122 = load i8, i8* %121, align 1, !dbg !697
  %123 = sext i8 %122 to i32, !dbg !697
  %124 = icmp eq i32 %123, 43, !dbg !698
  br i1 %124, label %130, label %125, !dbg !699

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %5, align 8, !dbg !700
  %127 = load i8, i8* %126, align 1, !dbg !702
  %128 = sext i8 %127 to i32, !dbg !702
  %129 = icmp eq i32 %128, 45, !dbg !703
  br i1 %129, label %130, label %146, !dbg !704

; <label>:130:                                    ; preds = %125, %120
  %131 = load i8*, i8** %5, align 8, !dbg !705
  %132 = call i64 @strtol(i8* %131, i8** %6, i32 10) #10, !dbg !707
  %133 = trunc i64 %132 to i32, !dbg !707
  store i32 %133, i32* %4, align 4, !dbg !708
  %134 = load i8*, i8** %5, align 8, !dbg !709
  %135 = load i8*, i8** %6, align 8, !dbg !711
  %136 = icmp eq i8* %134, %135, !dbg !712
  br i1 %136, label %137, label %138, !dbg !713

; <label>:137:                                    ; preds = %130
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0)), !dbg !714
  store i32 -1, i32* %2, align 4, !dbg !716
  br label %179, !dbg !716

; <label>:138:                                    ; preds = %130
  %139 = load i32, i32* %4, align 4, !dbg !717
  %140 = icmp slt i32 %139, 0, !dbg !718
  %141 = select i1 %140, i32 2, i32 1, !dbg !719
  %142 = load i32, i32* @g_pos, align 4, !dbg !720
  %143 = or i32 %142, %141, !dbg !720
  store i32 %143, i32* @g_pos, align 4, !dbg !720
  %144 = load i32, i32* %4, align 4, !dbg !721
  store i32 %144, i32* @g_xpos, align 4, !dbg !722
  %145 = load i8*, i8** %6, align 8, !dbg !723
  store i8* %145, i8** %5, align 8, !dbg !724
  br label %146, !dbg !725

; <label>:146:                                    ; preds = %138, %125
  %147 = load i8*, i8** %5, align 8, !dbg !726
  %148 = load i8, i8* %147, align 1, !dbg !728
  %149 = sext i8 %148 to i32, !dbg !728
  %150 = icmp eq i32 %149, 43, !dbg !729
  br i1 %150, label %156, label %151, !dbg !730

; <label>:151:                                    ; preds = %146
  %152 = load i8*, i8** %5, align 8, !dbg !731
  %153 = load i8, i8* %152, align 1, !dbg !733
  %154 = sext i8 %153 to i32, !dbg !733
  %155 = icmp eq i32 %154, 45, !dbg !734
  br i1 %155, label %156, label %172, !dbg !735

; <label>:156:                                    ; preds = %151, %146
  %157 = load i8*, i8** %5, align 8, !dbg !736
  %158 = call i64 @strtol(i8* %157, i8** %6, i32 10) #10, !dbg !738
  %159 = trunc i64 %158 to i32, !dbg !738
  store i32 %159, i32* %4, align 4, !dbg !739
  %160 = load i8*, i8** %5, align 8, !dbg !740
  %161 = load i8*, i8** %6, align 8, !dbg !742
  %162 = icmp eq i8* %160, %161, !dbg !743
  br i1 %162, label %163, label %164, !dbg !744

; <label>:163:                                    ; preds = %156
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0)), !dbg !745
  store i32 -1, i32* %2, align 4, !dbg !747
  br label %179, !dbg !747

; <label>:164:                                    ; preds = %156
  %165 = load i32, i32* %4, align 4, !dbg !748
  %166 = icmp slt i32 %165, 0, !dbg !749
  %167 = select i1 %166, i32 4, i32 1, !dbg !750
  %168 = load i32, i32* @g_pos, align 4, !dbg !751
  %169 = or i32 %168, %167, !dbg !751
  store i32 %169, i32* @g_pos, align 4, !dbg !751
  %170 = load i32, i32* %4, align 4, !dbg !752
  store i32 %170, i32* @g_ypos, align 4, !dbg !753
  %171 = load i8*, i8** %6, align 8, !dbg !754
  store i8* %171, i8** %5, align 8, !dbg !755
  br label %172, !dbg !756

; <label>:172:                                    ; preds = %164, %151
  %173 = load i8*, i8** %6, align 8, !dbg !757
  %174 = load i8, i8* %173, align 1, !dbg !759
  %175 = sext i8 %174 to i32, !dbg !759
  %176 = icmp ne i32 %175, 0, !dbg !760
  br i1 %176, label %177, label %178, !dbg !761

; <label>:177:                                    ; preds = %172
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0)), !dbg !762
  store i32 -1, i32* %2, align 4, !dbg !764
  br label %179, !dbg !764

; <label>:178:                                    ; preds = %172
  store i32 0, i32* %2, align 4, !dbg !765
  br label %179, !dbg !765

; <label>:179:                                    ; preds = %178, %177, %163, %137, %116, %95, %83, %74, %63, %35, %22, %10
  %180 = load i32, i32* %2, align 4, !dbg !766
  ret i32 %180, !dbg !766
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare void @logger(i32, i32, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !767 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.sigaction, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !771, metadata !539), !dbg !772
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !773, metadata !539), !dbg !774
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !775, metadata !539), !dbg !779
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !780, metadata !539), !dbg !781
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !782, metadata !539), !dbg !783
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !784, metadata !539), !dbg !785
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !786, metadata !539), !dbg !787
  call void @llvm.dbg.declare(metadata i32* %11, metadata !788, metadata !539), !dbg !789
  call void @llvm.dbg.declare(metadata %struct.passwd** %12, metadata !790, metadata !539), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %13, metadata !805, metadata !539), !dbg !806
  call void @llvm.dbg.declare(metadata i32* %14, metadata !807, metadata !539), !dbg !808
  store i32 0, i32* %14, align 4, !dbg !808
  call void @llvm.dbg.declare(metadata i8** %15, metadata !809, metadata !539), !dbg !810
  call void @llvm.dbg.declare(metadata i32* %16, metadata !811, metadata !539), !dbg !812
  call void @llvm.dbg.declare(metadata i8** %17, metadata !813, metadata !539), !dbg !814
  store i8* null, i8** %17, align 8, !dbg !814
  call void @llvm.dbg.declare(metadata i32* %18, metadata !815, metadata !539), !dbg !816
  store i32 0, i32* %18, align 4, !dbg !816
  call void @llvm.dbg.declare(metadata i32* %19, metadata !817, metadata !539), !dbg !818
  store i32 0, i32* %19, align 4, !dbg !818
  call void @llvm.dbg.declare(metadata i8** %20, metadata !819, metadata !539), !dbg !820
  store i8* null, i8** %20, align 8, !dbg !820
  %23 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #10, !dbg !821
  call void @logger_set_subjects(i8* %23), !dbg !822
  %24 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !824
  store i8* %24, i8** %17, align 8, !dbg !825
  %25 = load i8*, i8** %17, align 8, !dbg !826
  %26 = icmp ne i8* %25, null, !dbg !826
  br i1 %26, label %27, label %30, !dbg !828

; <label>:27:                                     ; preds = %2
  %28 = load i8*, i8** %17, align 8, !dbg !829
  %29 = call i8* @xstrdup(i8* %28), !dbg !831
  store i8* %29, i8** %17, align 8, !dbg !832
  br label %30, !dbg !833

; <label>:30:                                     ; preds = %27, %2
  call void @llvm.dbg.declare(metadata %struct.sigaction* %21, metadata !834, metadata !539), !dbg !929
  %31 = bitcast %struct.sigaction* %21 to i8*, !dbg !930
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 152, i32 8, i1 false), !dbg !930
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0, !dbg !931
  %33 = bitcast %union.anon* %32 to void (i32)**, !dbg !932
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %33, align 8, !dbg !933
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 1, !dbg !934
  %35 = call i32 @sigemptyset(%struct.__sigset_t* %34) #10, !dbg !935
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 2, !dbg !936
  store i32 0, i32* %36, align 8, !dbg !937
  %37 = call i32 @sigaction(i32 13, %struct.sigaction* %21, %struct.sigaction* null) #10, !dbg !938
  store i32 307, i32* %13, align 4, !dbg !939
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0, !dbg !940
  store i8 0, i8* %38, align 16, !dbg !941
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !942
  store i8 0, i8* %39, align 16, !dbg !943
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i64 0, i64 0), align 16, !dbg !944
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !945
  store i8 0, i8* %40, align 16, !dbg !946
  store i8 0, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_spawn_cmd, i64 0, i64 0), align 16, !dbg !947
  store i32 0, i32* @g_embed_wnd, align 4, !dbg !948
  store i32 0, i32* @g_num_devices, align 4, !dbg !949
  br label %41, !dbg !950

; <label>:41:                                     ; preds = %348, %30
  %42 = load i32, i32* %4, align 4, !dbg !951
  %43 = load i8**, i8*** %5, align 8, !dbg !952
  %44 = call i32 @getopt(i32 %42, i8** %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !953
  store i32 %44, i32* %16, align 4, !dbg !954
  %45 = icmp ne i32 %44, -1, !dbg !955
  br i1 %45, label %46, label %349, !dbg !956

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %16, align 4, !dbg !957
  switch i32 %47, label %344 [
    i32 65, label %48
    i32 117, label %51
    i32 76, label %70
    i32 100, label %73
    i32 115, label %78
    i32 99, label %83
    i32 112, label %88
    i32 116, label %115
    i32 110, label %116
    i32 107, label %119
    i32 103, label %122
    i32 102, label %128
    i32 98, label %129
    i32 66, label %130
    i32 101, label %131
    i32 69, label %132
    i32 109, label %133
    i32 77, label %134
    i32 67, label %135
    i32 68, label %136
    i32 75, label %137
    i32 83, label %138
    i32 84, label %152
    i32 78, label %155
    i32 88, label %156
    i32 97, label %160
    i32 122, label %180
    i32 120, label %183
    i32 80, label %205
    i32 114, label %206
    i32 48, label %339
    i32 52, label %340
    i32 53, label %341
    i32 118, label %342
    i32 104, label %343
    i32 63, label %343
  ], !dbg !959

; <label>:48:                                     ; preds = %46
  store i32 1, i32* @g_seamless_rdp, align 4, !dbg !960
  %49 = load i8*, i8** @optarg, align 8, !dbg !962
  %50 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_shell, i32 0, i32 0), i8* %49, i64 511) #10, !dbg !964
  store i8 0, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_shell, i64 0, i64 511), align 1, !dbg !965
  br label %348, !dbg !966

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** @optarg, align 8, !dbg !967
  %53 = call i64 @strlen(i8* %52) #9, !dbg !968
  %54 = add i64 %53, 1, !dbg !969
  %55 = trunc i64 %54 to i32, !dbg !968
  %56 = call i8* @xmalloc(i32 %55), !dbg !970
  store i8* %56, i8** @g_username, align 8, !dbg !972
  %57 = load i8*, i8** @g_username, align 8, !dbg !973
  %58 = load i8*, i8** @optarg, align 8, !dbg !975
  %59 = load i8*, i8** @optarg, align 8, !dbg !976
  %60 = call i64 @strlen(i8* %59) #9, !dbg !977
  %61 = add i64 %60, 1, !dbg !978
  %62 = sub i64 %61, 1, !dbg !979
  %63 = call i8* @strncpy(i8* %57, i8* %58, i64 %62) #10, !dbg !980
  %64 = load i8*, i8** @optarg, align 8, !dbg !982
  %65 = call i64 @strlen(i8* %64) #9, !dbg !983
  %66 = add i64 %65, 1, !dbg !985
  %67 = sub i64 %66, 1, !dbg !986
  %68 = load i8*, i8** @g_username, align 8, !dbg !987
  %69 = getelementptr inbounds i8, i8* %68, i64 %67, !dbg !987
  store i8 0, i8* %69, align 1, !dbg !988
  store i32 1, i32* %18, align 4, !dbg !989
  br label %348, !dbg !990

; <label>:70:                                     ; preds = %46
  %71 = load i8*, i8** @optarg, align 8, !dbg !991
  %72 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* %71, i64 15) #10, !dbg !993
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i64 0, i64 15), align 1, !dbg !994
  br label %348, !dbg !995

; <label>:73:                                     ; preds = %46
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !996
  %75 = load i8*, i8** @optarg, align 8, !dbg !998
  %76 = call i8* @strncpy(i8* %74, i8* %75, i64 255) #10, !dbg !999
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255, !dbg !1000
  store i8 0, i8* %77, align 1, !dbg !1001
  br label %348, !dbg !1002

; <label>:78:                                     ; preds = %46
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !1003
  %80 = load i8*, i8** @optarg, align 8, !dbg !1005
  %81 = call i8* @strncpy(i8* %79, i8* %80, i64 255) #10, !dbg !1006
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 255, !dbg !1007
  store i8 0, i8* %82, align 1, !dbg !1008
  store i32 0, i32* @g_seamless_persistent_mode, align 4, !dbg !1009
  br label %348, !dbg !1010

; <label>:83:                                     ; preds = %46
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !1011
  %85 = load i8*, i8** @optarg, align 8, !dbg !1013
  %86 = call i8* @strncpy(i8* %84, i8* %85, i64 255) #10, !dbg !1014
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 255, !dbg !1015
  store i8 0, i8* %87, align 1, !dbg !1016
  br label %348, !dbg !1017

; <label>:88:                                     ; preds = %46
  %89 = load i8*, i8** @optarg, align 8, !dbg !1018
  %90 = getelementptr inbounds i8, i8* %89, i64 0, !dbg !1018
  %91 = load i8, i8* %90, align 1, !dbg !1018
  %92 = sext i8 %91 to i32, !dbg !1018
  %93 = icmp eq i32 %92, 45, !dbg !1020
  br i1 %93, label %94, label %100, !dbg !1021

; <label>:94:                                     ; preds = %88
  %95 = load i8*, i8** @optarg, align 8, !dbg !1022
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1022
  %97 = load i8, i8* %96, align 1, !dbg !1022
  %98 = sext i8 %97 to i32, !dbg !1022
  %99 = icmp eq i32 %98, 0, !dbg !1024
  br i1 %99, label %114, label %100, !dbg !1025

; <label>:100:                                    ; preds = %94, %88
  %101 = load i8*, i8** @optarg, align 8, !dbg !1026
  %102 = call i8* @strncpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i32 0, i32 0), i8* %101, i64 63) #10, !dbg !1029
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i64 0, i64 63), align 1, !dbg !1030
  %103 = load i32, i32* %13, align 4, !dbg !1031
  %104 = or i32 %103, 8, !dbg !1031
  store i32 %104, i32* %13, align 4, !dbg !1031
  %105 = load i8*, i8** @optarg, align 8, !dbg !1032
  store i8* %105, i8** %15, align 8, !dbg !1033
  br label %106, !dbg !1034

; <label>:106:                                    ; preds = %110, %100
  %107 = load i8*, i8** %15, align 8, !dbg !1035
  %108 = load i8, i8* %107, align 1, !dbg !1037
  %109 = icmp ne i8 %108, 0, !dbg !1038
  br i1 %109, label %110, label %113, !dbg !1038

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %15, align 8, !dbg !1039
  %112 = getelementptr inbounds i8, i8* %111, i32 1, !dbg !1039
  store i8* %112, i8** %15, align 8, !dbg !1039
  store i8 88, i8* %111, align 1, !dbg !1040
  br label %106, !dbg !1041, !llvm.loop !1043

; <label>:113:                                    ; preds = %106
  br label %114, !dbg !1044

; <label>:114:                                    ; preds = %113, %94
  br label %348, !dbg !1045

; <label>:115:                                    ; preds = %46
  store i32 0, i32* @g_use_ctrl, align 4, !dbg !1046
  br label %348, !dbg !1047

; <label>:116:                                    ; preds = %46
  %117 = load i8*, i8** @optarg, align 8, !dbg !1048
  %118 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0), i8* %117, i64 15) #10, !dbg !1050
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i64 0, i64 15), align 1, !dbg !1051
  br label %348, !dbg !1052

; <label>:119:                                    ; preds = %46
  %120 = load i8*, i8** @optarg, align 8, !dbg !1053
  %121 = call i8* @strncpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i32 0, i32 0), i8* %120, i64 4095) #10, !dbg !1055
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i64 0, i64 4095), align 1, !dbg !1056
  br label %348, !dbg !1057

; <label>:122:                                    ; preds = %46
  store i32 1, i32* %19, align 4, !dbg !1058
  store i32 0, i32* @g_fullscreen, align 4, !dbg !1059
  %123 = load i8*, i8** @optarg, align 8, !dbg !1060
  %124 = call i32 @parse_geometry_string(i8* %123), !dbg !1062
  %125 = icmp ne i32 %124, 0, !dbg !1063
  br i1 %125, label %126, label %127, !dbg !1064

; <label>:126:                                    ; preds = %122
  store i32 64, i32* %3, align 4, !dbg !1065
  br label %679, !dbg !1065

; <label>:127:                                    ; preds = %122
  br label %348, !dbg !1067

; <label>:128:                                    ; preds = %46
  store i32 3, i32* @g_window_size_type, align 4, !dbg !1068
  store i32 1, i32* @g_fullscreen, align 4, !dbg !1069
  br label %348, !dbg !1070

; <label>:129:                                    ; preds = %46
  store i32 0, i32* @g_bitmap_cache, align 4, !dbg !1071
  br label %348, !dbg !1072

; <label>:130:                                    ; preds = %46
  store i32 0, i32* @g_ownbackstore, align 4, !dbg !1073
  br label %348, !dbg !1074

; <label>:131:                                    ; preds = %46
  store i32 0, i32* @g_encryption, align 4, !dbg !1075
  store i32 0, i32* @g_encryption_initial, align 4, !dbg !1076
  br label %348, !dbg !1077

; <label>:132:                                    ; preds = %46
  store i32 0, i32* @g_packet_encryption, align 4, !dbg !1078
  br label %348, !dbg !1079

; <label>:133:                                    ; preds = %46
  store i32 0, i32* @g_sendmotion, align 4, !dbg !1080
  br label %348, !dbg !1081

; <label>:134:                                    ; preds = %46
  store i32 1, i32* @g_local_cursor, align 4, !dbg !1082
  br label %348, !dbg !1083

; <label>:135:                                    ; preds = %46
  store i32 1, i32* @g_owncolmap, align 4, !dbg !1084
  br label %348, !dbg !1085

; <label>:136:                                    ; preds = %46
  store i32 1, i32* @g_hide_decorations, align 4, !dbg !1086
  br label %348, !dbg !1087

; <label>:137:                                    ; preds = %46
  store i32 0, i32* @g_grab_keyboard, align 4, !dbg !1088
  br label %348, !dbg !1089

; <label>:138:                                    ; preds = %46
  %139 = load i8*, i8** @optarg, align 8, !dbg !1090
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !1092
  %141 = icmp ne i32 %140, 0, !dbg !1092
  br i1 %141, label %143, label %142, !dbg !1093

; <label>:142:                                    ; preds = %138
  store i32 18, i32* @g_win_button_size, align 4, !dbg !1094
  br label %348, !dbg !1096

; <label>:143:                                    ; preds = %138
  %144 = load i8*, i8** @optarg, align 8, !dbg !1097
  %145 = call i64 @strtol(i8* %144, i8** %15, i32 10) #10, !dbg !1098
  %146 = trunc i64 %145 to i32, !dbg !1098
  store i32 %146, i32* @g_win_button_size, align 4, !dbg !1099
  %147 = load i8*, i8** %15, align 8, !dbg !1100
  %148 = load i8, i8* %147, align 1, !dbg !1102
  %149 = icmp ne i8 %148, 0, !dbg !1102
  br i1 %149, label %150, label %151, !dbg !1103

; <label>:150:                                    ; preds = %143
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)), !dbg !1104
  store i32 64, i32* %3, align 4, !dbg !1106
  br label %679, !dbg !1106

; <label>:151:                                    ; preds = %143
  br label %348, !dbg !1107

; <label>:152:                                    ; preds = %46
  %153 = load i8*, i8** @optarg, align 8, !dbg !1108
  %154 = call i8* @strncpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_title, i32 0, i32 0), i8* %153, i64 63) #10, !dbg !1110
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_title, i64 0, i64 63), align 1, !dbg !1111
  br label %348, !dbg !1112

; <label>:155:                                    ; preds = %46
  store i32 1, i32* @g_numlock_sync, align 4, !dbg !1113
  br label %348, !dbg !1114

; <label>:156:                                    ; preds = %46
  %157 = load i8*, i8** @optarg, align 8, !dbg !1115
  %158 = call i64 @strtol(i8* %157, i8** null, i32 0) #10, !dbg !1116
  %159 = trunc i64 %158 to i32, !dbg !1116
  store i32 %159, i32* @g_embed_wnd, align 4, !dbg !1117
  br label %348, !dbg !1118

; <label>:160:                                    ; preds = %46
  %161 = load i8*, i8** @optarg, align 8, !dbg !1119
  %162 = call i64 @strtol(i8* %161, i8** null, i32 10) #10, !dbg !1120
  %163 = trunc i64 %162 to i32, !dbg !1120
  store i32 %163, i32* @g_server_depth, align 4, !dbg !1121
  %164 = load i32, i32* @g_server_depth, align 4, !dbg !1122
  %165 = icmp ne i32 %164, 8, !dbg !1124
  br i1 %165, label %166, label %179, !dbg !1125

; <label>:166:                                    ; preds = %160
  %167 = load i32, i32* @g_server_depth, align 4, !dbg !1126
  %168 = icmp ne i32 %167, 16, !dbg !1127
  br i1 %168, label %169, label %179, !dbg !1128

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* @g_server_depth, align 4, !dbg !1129
  %171 = icmp ne i32 %170, 15, !dbg !1130
  br i1 %171, label %172, label %179, !dbg !1131

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* @g_server_depth, align 4, !dbg !1132
  %174 = icmp ne i32 %173, 24, !dbg !1134
  br i1 %174, label %175, label %179, !dbg !1135

; <label>:175:                                    ; preds = %172
  %176 = load i32, i32* @g_server_depth, align 4, !dbg !1136
  %177 = icmp ne i32 %176, 32, !dbg !1137
  br i1 %177, label %178, label %179, !dbg !1138

; <label>:178:                                    ; preds = %175
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)), !dbg !1139
  store i32 64, i32* %3, align 4, !dbg !1141
  br label %679, !dbg !1141

; <label>:179:                                    ; preds = %175, %172, %169, %166, %160
  br label %348, !dbg !1142

; <label>:180:                                    ; preds = %46
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0)), !dbg !1143
  %181 = load i32, i32* %13, align 4, !dbg !1144
  %182 = or i32 %181, 640, !dbg !1144
  store i32 %182, i32* %13, align 4, !dbg !1144
  br label %348, !dbg !1145

; <label>:183:                                    ; preds = %46
  %184 = load i8*, i8** @optarg, align 8, !dbg !1146
  %185 = call i32 @str_startswith(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)), !dbg !1148
  %186 = icmp ne i32 %185, 0, !dbg !1148
  br i1 %186, label %187, label %188, !dbg !1149

; <label>:187:                                    ; preds = %183
  store i32 47, i32* @g_rdp5_performanceflags, align 4, !dbg !1150
  br label %204, !dbg !1152

; <label>:188:                                    ; preds = %183
  %189 = load i8*, i8** @optarg, align 8, !dbg !1153
  %190 = call i32 @str_startswith(i8* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !1155
  %191 = icmp ne i32 %190, 0, !dbg !1155
  br i1 %191, label %192, label %193, !dbg !1156

; <label>:192:                                    ; preds = %188
  store i32 129, i32* @g_rdp5_performanceflags, align 4, !dbg !1157
  br label %203, !dbg !1159

; <label>:193:                                    ; preds = %188
  %194 = load i8*, i8** @optarg, align 8, !dbg !1160
  %195 = call i32 @str_startswith(i8* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1162
  %196 = icmp ne i32 %195, 0, !dbg !1162
  br i1 %196, label %197, label %198, !dbg !1163

; <label>:197:                                    ; preds = %193
  store i32 128, i32* @g_rdp5_performanceflags, align 4, !dbg !1164
  br label %202, !dbg !1166

; <label>:198:                                    ; preds = %193
  %199 = load i8*, i8** @optarg, align 8, !dbg !1167
  %200 = call i64 @strtol(i8* %199, i8** null, i32 16) #10, !dbg !1169
  %201 = trunc i64 %200 to i32, !dbg !1169
  store i32 %201, i32* @g_rdp5_performanceflags, align 4, !dbg !1170
  br label %202

; <label>:202:                                    ; preds = %198, %197
  br label %203

; <label>:203:                                    ; preds = %202, %192
  br label %204

; <label>:204:                                    ; preds = %203, %187
  br label %348, !dbg !1171

; <label>:205:                                    ; preds = %46
  store i32 1, i32* @g_bitmap_cache_persist_enable, align 4, !dbg !1172
  br label %348, !dbg !1173

; <label>:206:                                    ; preds = %46
  %207 = load i8*, i8** @optarg, align 8, !dbg !1174
  %208 = call i32 @str_startswith(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)), !dbg !1176
  %209 = icmp ne i32 %208, 0, !dbg !1176
  br i1 %209, label %210, label %248, !dbg !1177

; <label>:210:                                    ; preds = %206
  %211 = load i8*, i8** @optarg, align 8, !dbg !1178
  %212 = getelementptr inbounds i8, i8* %211, i64 5, !dbg !1178
  store i8* %212, i8** @optarg, align 8, !dbg !1178
  %213 = load i8*, i8** @optarg, align 8, !dbg !1180
  %214 = load i8, i8* %213, align 1, !dbg !1182
  %215 = sext i8 %214 to i32, !dbg !1182
  %216 = icmp eq i32 %215, 58, !dbg !1183
  br i1 %216, label %217, label %246, !dbg !1184

; <label>:217:                                    ; preds = %210
  %218 = load i8*, i8** @optarg, align 8, !dbg !1185
  %219 = getelementptr inbounds i8, i8* %218, i32 1, !dbg !1185
  store i8* %219, i8** @optarg, align 8, !dbg !1185
  br label %220, !dbg !1187

; <label>:220:                                    ; preds = %243, %217
  %221 = load i8*, i8** @optarg, align 8, !dbg !1188
  %222 = call i8* @next_arg(i8* %221, i8 signext 44), !dbg !1190
  store i8* %222, i8** %15, align 8, !dbg !1191
  %223 = icmp ne i8* %222, null, !dbg !1192
  br i1 %223, label %224, label %245, !dbg !1192

; <label>:224:                                    ; preds = %220
  %225 = load i8*, i8** @optarg, align 8, !dbg !1193
  %226 = call i32 @str_startswith(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !1196
  %227 = icmp ne i32 %226, 0, !dbg !1196
  br i1 %227, label %228, label %231, !dbg !1197

; <label>:228:                                    ; preds = %224
  %229 = load i32, i32* %13, align 4, !dbg !1198
  %230 = or i32 %229, 8192, !dbg !1198
  store i32 %230, i32* %13, align 4, !dbg !1198
  br label %231, !dbg !1199

; <label>:231:                                    ; preds = %228, %224
  %232 = load i8*, i8** @optarg, align 8, !dbg !1200
  %233 = call i32 @str_startswith(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)), !dbg !1202
  %234 = icmp ne i32 %233, 0, !dbg !1202
  br i1 %234, label %235, label %238, !dbg !1203

; <label>:235:                                    ; preds = %231
  %236 = load i8*, i8** @optarg, align 8, !dbg !1204
  %237 = call i8* @next_arg(i8* %236, i8 signext 58), !dbg !1206
  store i8* %237, i8** %20, align 8, !dbg !1207
  store i32 1, i32* @g_rdpsnd, align 4, !dbg !1208
  br label %238, !dbg !1209

; <label>:238:                                    ; preds = %235, %231
  %239 = load i8*, i8** @optarg, align 8, !dbg !1210
  %240 = call i32 @str_startswith(i8* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)), !dbg !1212
  %241 = icmp ne i32 %240, 0, !dbg !1212
  br i1 %241, label %242, label %243, !dbg !1213

; <label>:242:                                    ; preds = %238
  store i32 0, i32* @g_rdpsnd, align 4, !dbg !1214
  br label %243, !dbg !1215

; <label>:243:                                    ; preds = %242, %238
  %244 = load i8*, i8** %15, align 8, !dbg !1216
  store i8* %244, i8** @optarg, align 8, !dbg !1217
  br label %220, !dbg !1218, !llvm.loop !1220

; <label>:245:                                    ; preds = %220
  br label %247, !dbg !1221

; <label>:246:                                    ; preds = %210
  store i32 1, i32* @g_rdpsnd, align 4, !dbg !1222
  br label %247

; <label>:247:                                    ; preds = %246, %245
  br label %338, !dbg !1224

; <label>:248:                                    ; preds = %206
  %249 = load i8*, i8** @optarg, align 8, !dbg !1225
  %250 = call i32 @str_startswith(i8* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1227
  %251 = icmp ne i32 %250, 0, !dbg !1227
  br i1 %251, label %252, label %256, !dbg !1228

; <label>:252:                                    ; preds = %248
  %253 = load i8*, i8** @optarg, align 8, !dbg !1229
  %254 = getelementptr inbounds i8, i8* %253, i64 4, !dbg !1231
  %255 = call i32 @disk_enum_devices(i32* @g_num_devices, i8* %254), !dbg !1232
  br label %337, !dbg !1233

; <label>:256:                                    ; preds = %248
  %257 = load i8*, i8** @optarg, align 8, !dbg !1234
  %258 = call i32 @str_startswith(i8* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !1236
  %259 = icmp ne i32 %258, 0, !dbg !1236
  br i1 %259, label %260, label %264, !dbg !1237

; <label>:260:                                    ; preds = %256
  %261 = load i8*, i8** @optarg, align 8, !dbg !1238
  %262 = getelementptr inbounds i8, i8* %261, i64 7, !dbg !1240
  %263 = call i32 @serial_enum_devices(i32* @g_num_devices, i8* %262), !dbg !1241
  br label %336, !dbg !1242

; <label>:264:                                    ; preds = %256
  %265 = load i8*, i8** @optarg, align 8, !dbg !1243
  %266 = call i32 @str_startswith(i8* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)), !dbg !1245
  %267 = icmp ne i32 %266, 0, !dbg !1245
  br i1 %267, label %268, label %269, !dbg !1246

; <label>:268:                                    ; preds = %264
  store i32 1, i32* @g_lspci_enabled, align 4, !dbg !1247
  br label %335, !dbg !1249

; <label>:269:                                    ; preds = %264
  %270 = load i8*, i8** @optarg, align 8, !dbg !1250
  %271 = call i32 @str_startswith(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !1252
  %272 = icmp ne i32 %271, 0, !dbg !1252
  br i1 %272, label %273, label %277, !dbg !1253

; <label>:273:                                    ; preds = %269
  %274 = load i8*, i8** @optarg, align 8, !dbg !1254
  %275 = getelementptr inbounds i8, i8* %274, i64 7, !dbg !1256
  %276 = call i32 @parallel_enum_devices(i32* @g_num_devices, i8* %275), !dbg !1257
  br label %334, !dbg !1258

; <label>:277:                                    ; preds = %269
  %278 = load i8*, i8** @optarg, align 8, !dbg !1259
  %279 = call i32 @str_startswith(i8* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)), !dbg !1261
  %280 = icmp ne i32 %279, 0, !dbg !1261
  br i1 %280, label %281, label %285, !dbg !1262

; <label>:281:                                    ; preds = %277
  %282 = load i8*, i8** @optarg, align 8, !dbg !1263
  %283 = getelementptr inbounds i8, i8* %282, i64 7, !dbg !1265
  %284 = call i32 @printer_enum_devices(i32* @g_num_devices, i8* %283), !dbg !1266
  br label %333, !dbg !1267

; <label>:285:                                    ; preds = %277
  %286 = load i8*, i8** @optarg, align 8, !dbg !1268
  %287 = call i32 @str_startswith(i8* %286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)), !dbg !1270
  %288 = icmp ne i32 %287, 0, !dbg !1270
  br i1 %288, label %289, label %300, !dbg !1271

; <label>:289:                                    ; preds = %285
  %290 = load i8*, i8** @optarg, align 8, !dbg !1272
  %291 = getelementptr inbounds i8, i8* %290, i64 11, !dbg !1274
  %292 = call i64 @strlen(i8* %291) #9, !dbg !1275
  %293 = add i64 %292, 1, !dbg !1276
  %294 = trunc i64 %293 to i32, !dbg !1275
  %295 = call i8* @xmalloc(i32 %294), !dbg !1277
  store i8* %295, i8** @g_rdpdr_clientname, align 8, !dbg !1279
  %296 = load i8*, i8** @g_rdpdr_clientname, align 8, !dbg !1280
  %297 = load i8*, i8** @optarg, align 8, !dbg !1281
  %298 = getelementptr inbounds i8, i8* %297, i64 11, !dbg !1282
  %299 = call i8* @strcpy(i8* %296, i8* %298) #10, !dbg !1283
  br label %332, !dbg !1284

; <label>:300:                                    ; preds = %285
  %301 = load i8*, i8** @optarg, align 8, !dbg !1285
  %302 = call i32 @str_startswith(i8* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0)), !dbg !1287
  %303 = icmp ne i32 %302, 0, !dbg !1287
  br i1 %303, label %304, label %323, !dbg !1288

; <label>:304:                                    ; preds = %300
  %305 = load i8*, i8** @optarg, align 8, !dbg !1289
  %306 = getelementptr inbounds i8, i8* %305, i64 9, !dbg !1289
  store i8* %306, i8** @optarg, align 8, !dbg !1289
  %307 = load i8*, i8** @optarg, align 8, !dbg !1291
  %308 = load i8, i8* %307, align 1, !dbg !1293
  %309 = sext i8 %308 to i32, !dbg !1293
  %310 = icmp eq i32 %309, 58, !dbg !1294
  br i1 %310, label %311, label %321, !dbg !1295

; <label>:311:                                    ; preds = %304
  %312 = load i8*, i8** @optarg, align 8, !dbg !1296
  %313 = getelementptr inbounds i8, i8* %312, i32 1, !dbg !1296
  store i8* %313, i8** @optarg, align 8, !dbg !1296
  %314 = load i8*, i8** @optarg, align 8, !dbg !1298
  %315 = call i32 @str_startswith(i8* %314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)), !dbg !1300
  %316 = icmp ne i32 %315, 0, !dbg !1300
  br i1 %316, label %317, label %318, !dbg !1301

; <label>:317:                                    ; preds = %311
  store i32 0, i32* @g_rdpclip, align 4, !dbg !1302
  br label %320, !dbg !1303

; <label>:318:                                    ; preds = %311
  %319 = load i8*, i8** @optarg, align 8, !dbg !1304
  call void @cliprdr_set_mode(i8* %319), !dbg !1305
  br label %320

; <label>:320:                                    ; preds = %318, %317
  br label %322, !dbg !1306

; <label>:321:                                    ; preds = %304
  store i32 1, i32* @g_rdpclip, align 4, !dbg !1307
  br label %322

; <label>:322:                                    ; preds = %321, %320
  br label %331, !dbg !1308

; <label>:323:                                    ; preds = %300
  %324 = load i8*, i8** @optarg, align 8, !dbg !1309
  %325 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %324, i64 5) #9, !dbg !1311
  %326 = icmp eq i32 %325, 0, !dbg !1312
  br i1 %326, label %327, label %328, !dbg !1313

; <label>:327:                                    ; preds = %323
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0)), !dbg !1314
  br label %330, !dbg !1316

; <label>:328:                                    ; preds = %323
  %329 = load i8*, i8** @optarg, align 8, !dbg !1317
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.34, i32 0, i32 0), i8* %329), !dbg !1319
  br label %330

; <label>:330:                                    ; preds = %328, %327
  br label %331

; <label>:331:                                    ; preds = %330, %322
  br label %332

; <label>:332:                                    ; preds = %331, %289
  br label %333

; <label>:333:                                    ; preds = %332, %281
  br label %334

; <label>:334:                                    ; preds = %333, %273
  br label %335

; <label>:335:                                    ; preds = %334, %268
  br label %336

; <label>:336:                                    ; preds = %335, %260
  br label %337

; <label>:337:                                    ; preds = %336, %252
  br label %338

; <label>:338:                                    ; preds = %337, %247
  br label %348, !dbg !1320

; <label>:339:                                    ; preds = %46
  store i32 1, i32* @g_console_session, align 4, !dbg !1321
  br label %348, !dbg !1322

; <label>:340:                                    ; preds = %46
  store i32 4, i32* @g_rdp_version, align 4, !dbg !1323
  br label %348, !dbg !1324

; <label>:341:                                    ; preds = %46
  store i32 5, i32* @g_rdp_version, align 4, !dbg !1325
  br label %348, !dbg !1326

; <label>:342:                                    ; preds = %46
  call void @logger_set_verbose(i32 1), !dbg !1327
  br label %348, !dbg !1328

; <label>:343:                                    ; preds = %46, %46
  br label %344, !dbg !1329

; <label>:344:                                    ; preds = %46, %343
  %345 = load i8**, i8*** %5, align 8, !dbg !1330
  %346 = getelementptr inbounds i8*, i8** %345, i64 0, !dbg !1330
  %347 = load i8*, i8** %346, align 8, !dbg !1330
  call void @usage(i8* %347), !dbg !1331
  store i32 64, i32* %3, align 4, !dbg !1332
  br label %679, !dbg !1332

; <label>:348:                                    ; preds = %342, %341, %340, %339, %338, %205, %204, %180, %179, %156, %155, %152, %151, %142, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %119, %116, %115, %114, %83, %78, %73, %70, %51, %48
  br label %41, !dbg !1333, !llvm.loop !1335

; <label>:349:                                    ; preds = %41
  %350 = load i32, i32* %4, align 4, !dbg !1336
  %351 = load i32, i32* @optind, align 4, !dbg !1338
  %352 = sub nsw i32 %350, %351, !dbg !1339
  %353 = icmp ne i32 %352, 1, !dbg !1340
  br i1 %353, label %354, label %358, !dbg !1341

; <label>:354:                                    ; preds = %349
  %355 = load i8**, i8*** %5, align 8, !dbg !1342
  %356 = getelementptr inbounds i8*, i8** %355, i64 0, !dbg !1342
  %357 = load i8*, i8** %356, align 8, !dbg !1342
  call void @usage(i8* %357), !dbg !1344
  store i32 64, i32* %3, align 4, !dbg !1345
  br label %679, !dbg !1345

; <label>:358:                                    ; preds = %349
  %359 = load i32, i32* @g_local_cursor, align 4, !dbg !1346
  %360 = icmp ne i32 %359, 0, !dbg !1346
  br i1 %360, label %361, label %364, !dbg !1348

; <label>:361:                                    ; preds = %358
  %362 = load i32, i32* @g_rdp5_performanceflags, align 4, !dbg !1349
  %363 = or i32 %362, 32, !dbg !1349
  store i32 %363, i32* @g_rdp5_performanceflags, align 4, !dbg !1349
  br label %364, !dbg !1351

; <label>:364:                                    ; preds = %361, %358
  %365 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1352
  %366 = load i32, i32* @optind, align 4, !dbg !1354
  %367 = sext i32 %366 to i64, !dbg !1355
  %368 = load i8**, i8*** %5, align 8, !dbg !1355
  %369 = getelementptr inbounds i8*, i8** %368, i64 %367, !dbg !1355
  %370 = load i8*, i8** %369, align 8, !dbg !1355
  %371 = call i8* @strncpy(i8* %365, i8* %370, i64 255) #10, !dbg !1356
  %372 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255, !dbg !1357
  store i8 0, i8* %372, align 1, !dbg !1358
  %373 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1359
  call void @parse_server_and_port(i8* %373), !dbg !1360
  %374 = load i32, i32* @g_seamless_rdp, align 4, !dbg !1361
  %375 = icmp ne i32 %374, 0, !dbg !1361
  br i1 %375, label %376, label %413, !dbg !1363

; <label>:376:                                    ; preds = %364
  %377 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !1364
  %378 = load i8, i8* %377, align 16, !dbg !1364
  %379 = icmp ne i8 %378, 0, !dbg !1364
  br i1 %379, label %380, label %383, !dbg !1367

; <label>:380:                                    ; preds = %376
  %381 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !1368
  %382 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_spawn_cmd, i32 0, i32 0), i8* %381, i64 511) #10, !dbg !1370
  store i8 0, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_spawn_cmd, i64 0, i64 511), align 1, !dbg !1371
  br label %383, !dbg !1372

; <label>:383:                                    ; preds = %380, %376
  %384 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !1373
  %385 = call i8* @strncpy(i8* %384, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_shell, i32 0, i32 0), i64 255) #10, !dbg !1375
  %386 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 255, !dbg !1376
  store i8 0, i8* %386, align 1, !dbg !1377
  %387 = load i32, i32* @g_win_button_size, align 4, !dbg !1378
  %388 = icmp ne i32 %387, 0, !dbg !1378
  br i1 %388, label %389, label %390, !dbg !1380

; <label>:389:                                    ; preds = %383
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)), !dbg !1381
  store i32 64, i32* %3, align 4, !dbg !1383
  br label %679, !dbg !1383

; <label>:390:                                    ; preds = %383
  %391 = load i32, i32* @g_rdp5_performanceflags, align 4, !dbg !1384
  %392 = and i32 %391, -3, !dbg !1384
  store i32 %392, i32* @g_rdp5_performanceflags, align 4, !dbg !1384
  %393 = load i32, i32* %19, align 4, !dbg !1385
  %394 = icmp ne i32 %393, 0, !dbg !1385
  br i1 %394, label %395, label %396, !dbg !1387

; <label>:395:                                    ; preds = %390
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0)), !dbg !1388
  store i32 64, i32* %3, align 4, !dbg !1390
  br label %679, !dbg !1390

; <label>:396:                                    ; preds = %390
  %397 = load i32, i32* @g_fullscreen, align 4, !dbg !1391
  %398 = icmp ne i32 %397, 0, !dbg !1391
  br i1 %398, label %399, label %400, !dbg !1393

; <label>:399:                                    ; preds = %396
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0)), !dbg !1394
  store i32 64, i32* %3, align 4, !dbg !1396
  br label %679, !dbg !1396

; <label>:400:                                    ; preds = %396
  %401 = load i32, i32* @g_hide_decorations, align 4, !dbg !1397
  %402 = icmp ne i32 %401, 0, !dbg !1397
  br i1 %402, label %403, label %404, !dbg !1399

; <label>:403:                                    ; preds = %400
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0)), !dbg !1400
  store i32 64, i32* %3, align 4, !dbg !1402
  br label %679, !dbg !1402

; <label>:404:                                    ; preds = %400
  %405 = load i32, i32* @g_embed_wnd, align 4, !dbg !1403
  %406 = icmp ne i32 %405, 0, !dbg !1403
  br i1 %406, label %407, label %408, !dbg !1405

; <label>:407:                                    ; preds = %404
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0)), !dbg !1406
  store i32 64, i32* %3, align 4, !dbg !1408
  br label %679, !dbg !1408

; <label>:408:                                    ; preds = %404
  %409 = load i32, i32* @g_rdp_version, align 4, !dbg !1409
  %410 = icmp ult i32 %409, 5, !dbg !1411
  br i1 %410, label %411, label %412, !dbg !1412

; <label>:411:                                    ; preds = %408
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0)), !dbg !1413
  store i32 64, i32* %3, align 4, !dbg !1415
  br label %679, !dbg !1415

; <label>:412:                                    ; preds = %408
  store i32 3, i32* @g_window_size_type, align 4, !dbg !1416
  store i32 0, i32* @g_grab_keyboard, align 4, !dbg !1417
  br label %413, !dbg !1418

; <label>:413:                                    ; preds = %412, %364
  %414 = load i32, i32* %18, align 4, !dbg !1419
  %415 = icmp ne i32 %414, 0, !dbg !1419
  br i1 %415, label %449, label %416, !dbg !1421

; <label>:416:                                    ; preds = %413
  %417 = call i32 @getuid() #10, !dbg !1422
  %418 = call %struct.passwd* @getpwuid(i32 %417), !dbg !1424
  store %struct.passwd* %418, %struct.passwd** %12, align 8, !dbg !1426
  %419 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !1427
  %420 = icmp eq %struct.passwd* %419, null, !dbg !1429
  br i1 %420, label %426, label %421, !dbg !1430

; <label>:421:                                    ; preds = %416
  %422 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !1431
  %423 = getelementptr inbounds %struct.passwd, %struct.passwd* %422, i32 0, i32 0, !dbg !1433
  %424 = load i8*, i8** %423, align 8, !dbg !1433
  %425 = icmp eq i8* %424, null, !dbg !1434
  br i1 %425, label %426, label %427, !dbg !1435

; <label>:426:                                    ; preds = %421, %416
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i32 0, i32 0)), !dbg !1436
  store i32 71, i32* %3, align 4, !dbg !1438
  br label %679, !dbg !1438

; <label>:427:                                    ; preds = %421
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1439, metadata !539), !dbg !1440
  %428 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !1441
  %429 = getelementptr inbounds %struct.passwd, %struct.passwd* %428, i32 0, i32 0, !dbg !1442
  %430 = load i8*, i8** %429, align 8, !dbg !1442
  %431 = call i64 @strlen(i8* %430) #9, !dbg !1443
  %432 = add i64 %431, 1, !dbg !1444
  %433 = trunc i64 %432 to i32, !dbg !1443
  store i32 %433, i32* %22, align 4, !dbg !1440
  %434 = load i32, i32* %22, align 4, !dbg !1445
  %435 = call i8* @xmalloc(i32 %434), !dbg !1446
  store i8* %435, i8** @g_username, align 8, !dbg !1447
  %436 = load i8*, i8** @g_username, align 8, !dbg !1448
  %437 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !1450
  %438 = getelementptr inbounds %struct.passwd, %struct.passwd* %437, i32 0, i32 0, !dbg !1451
  %439 = load i8*, i8** %438, align 8, !dbg !1451
  %440 = load i32, i32* %22, align 4, !dbg !1452
  %441 = sub nsw i32 %440, 1, !dbg !1453
  %442 = sext i32 %441 to i64, !dbg !1452
  %443 = call i8* @strncpy(i8* %436, i8* %439, i64 %442) #10, !dbg !1454
  %444 = load i32, i32* %22, align 4, !dbg !1455
  %445 = sub nsw i32 %444, 1, !dbg !1456
  %446 = sext i32 %445 to i64, !dbg !1457
  %447 = load i8*, i8** @g_username, align 8, !dbg !1457
  %448 = getelementptr inbounds i8, i8* %447, i64 %446, !dbg !1457
  store i8 0, i8* %448, align 1, !dbg !1458
  br label %449, !dbg !1459

; <label>:449:                                    ; preds = %427, %413
  %450 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i64 0, i64 0), align 16, !dbg !1460
  %451 = sext i8 %450 to i32, !dbg !1460
  %452 = icmp eq i32 %451, 0, !dbg !1462
  br i1 %452, label %453, label %462, !dbg !1463

; <label>:453:                                    ; preds = %449
  %454 = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !1464
  %455 = icmp ne i8* %454, null, !dbg !1464
  br i1 %455, label %456, label %459, !dbg !1467

; <label>:456:                                    ; preds = %453
  %457 = call i8* @nl_langinfo(i32 14) #10, !dbg !1468
  %458 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* %457, i64 15) #10, !dbg !1471
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i64 0, i64 15), align 1, !dbg !1473
  br label %461, !dbg !1474

; <label>:459:                                    ; preds = %453
  %460 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i64 15) #10, !dbg !1475
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i64 0, i64 15), align 1, !dbg !1478
  br label %461

; <label>:461:                                    ; preds = %459, %456
  br label %462, !dbg !1479

; <label>:462:                                    ; preds = %461, %449
  %463 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i64 0, i64 0), align 16, !dbg !1480
  %464 = sext i8 %463 to i32, !dbg !1480
  %465 = icmp eq i32 %464, 0, !dbg !1482
  br i1 %465, label %466, label %481, !dbg !1483

; <label>:466:                                    ; preds = %462
  %467 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !1484
  %468 = call i32 @gethostname(i8* %467, i64 64) #10, !dbg !1487
  %469 = icmp eq i32 %468, -1, !dbg !1488
  br i1 %469, label %470, label %471, !dbg !1489

; <label>:470:                                    ; preds = %466
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i32 0, i32 0)), !dbg !1490
  store i32 71, i32* %3, align 4, !dbg !1492
  br label %679, !dbg !1492

; <label>:471:                                    ; preds = %466
  %472 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !1493
  %473 = call i8* @strchr(i8* %472, i32 46) #9, !dbg !1494
  store i8* %473, i8** %15, align 8, !dbg !1495
  %474 = load i8*, i8** %15, align 8, !dbg !1496
  %475 = icmp ne i8* %474, null, !dbg !1498
  br i1 %475, label %476, label %478, !dbg !1499

; <label>:476:                                    ; preds = %471
  %477 = load i8*, i8** %15, align 8, !dbg !1500
  store i8 0, i8* %477, align 1, !dbg !1501
  br label %478, !dbg !1502

; <label>:478:                                    ; preds = %476, %471
  %479 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !1503
  %480 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0), i8* %479, i64 15) #10, !dbg !1505
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i64 0, i64 15), align 1, !dbg !1506
  br label %481, !dbg !1507

; <label>:481:                                    ; preds = %478, %462
  %482 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i64 0, i64 0), align 16, !dbg !1508
  %483 = sext i8 %482 to i32, !dbg !1508
  %484 = icmp eq i32 %483, 0, !dbg !1510
  br i1 %484, label %485, label %496, !dbg !1511

; <label>:485:                                    ; preds = %481
  %486 = load i8*, i8** %17, align 8, !dbg !1512
  %487 = icmp ne i8* %486, null, !dbg !1512
  br i1 %487, label %488, label %493, !dbg !1515

; <label>:488:                                    ; preds = %485
  %489 = load i8*, i8** %17, align 8, !dbg !1516
  %490 = call i32 @xkeymap_from_locale(i8* %489), !dbg !1518
  %491 = icmp ne i32 %490, 0, !dbg !1518
  br i1 %491, label %492, label %493, !dbg !1519

; <label>:492:                                    ; preds = %488
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i32 0, i32 0)), !dbg !1520
  br label %495, !dbg !1522

; <label>:493:                                    ; preds = %488, %485
  %494 = call i8* @strncpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i64 4095) #10, !dbg !1523
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @g_keymapname, i64 0, i64 4095), align 1, !dbg !1526
  br label %495

; <label>:495:                                    ; preds = %493, %492
  br label %496, !dbg !1527

; <label>:496:                                    ; preds = %495, %481
  %497 = load i8*, i8** %17, align 8, !dbg !1528
  %498 = icmp ne i8* %497, null, !dbg !1528
  br i1 %498, label %499, label %501, !dbg !1530

; <label>:499:                                    ; preds = %496
  %500 = load i8*, i8** %17, align 8, !dbg !1531
  call void @xfree(i8* %500), !dbg !1532
  br label %501, !dbg !1532

; <label>:501:                                    ; preds = %499, %496
  %502 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i64 0, i64 0), align 16, !dbg !1533
  %503 = icmp ne i8 %502, 0, !dbg !1533
  br i1 %503, label %512, label %504, !dbg !1535

; <label>:504:                                    ; preds = %501
  %505 = call i32 @read_password(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i32 0, i32 0), i32 64), !dbg !1536
  %506 = icmp ne i32 %505, 0, !dbg !1536
  br i1 %506, label %507, label %510, !dbg !1539

; <label>:507:                                    ; preds = %504
  %508 = load i32, i32* %13, align 4, !dbg !1540
  %509 = or i32 %508, 8, !dbg !1540
  store i32 %509, i32* %13, align 4, !dbg !1540
  br label %511, !dbg !1542

; <label>:510:                                    ; preds = %504
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0)), !dbg !1543
  store i32 71, i32* %3, align 4, !dbg !1545
  br label %679, !dbg !1545

; <label>:511:                                    ; preds = %507
  br label %512, !dbg !1546

; <label>:512:                                    ; preds = %511, %501
  %513 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_title, i64 0, i64 0), align 16, !dbg !1547
  %514 = sext i8 %513 to i32, !dbg !1547
  %515 = icmp eq i32 %514, 0, !dbg !1549
  br i1 %515, label %516, label %520, !dbg !1550

; <label>:516:                                    ; preds = %512
  %517 = call i8* @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_title, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)) #10, !dbg !1551
  %518 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1553
  %519 = call i8* @strncat(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_title, i32 0, i32 0), i8* %518, i64 52) #10, !dbg !1554
  br label %520, !dbg !1555

; <label>:520:                                    ; preds = %516, %512
  %521 = load i32, i32* @g_use_ctrl, align 4, !dbg !1556
  %522 = icmp ne i32 %521, 0, !dbg !1556
  br i1 %522, label %523, label %543, !dbg !1558

; <label>:523:                                    ; preds = %520
  %524 = load i32, i32* @g_seamless_rdp, align 4, !dbg !1559
  %525 = icmp ne i32 %524, 0, !dbg !1559
  br i1 %525, label %526, label %543, !dbg !1561

; <label>:526:                                    ; preds = %523
  %527 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1562
  %528 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !1565
  %529 = load i8*, i8** @g_username, align 8, !dbg !1566
  %530 = call i32 @ctrl_init(i8* %527, i8* %528, i8* %529), !dbg !1567
  %531 = icmp slt i32 %530, 0, !dbg !1568
  br i1 %531, label %532, label %533, !dbg !1569

; <label>:532:                                    ; preds = %526
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0)), !dbg !1570
  call void @exit(i32 1) #11, !dbg !1572
  unreachable, !dbg !1572

; <label>:533:                                    ; preds = %526
  %534 = call i32 (...) @ctrl_is_slave(), !dbg !1573
  %535 = icmp ne i32 %534, 0, !dbg !1573
  br i1 %535, label %536, label %542, !dbg !1575

; <label>:536:                                    ; preds = %533
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i32 0, i32 0)), !dbg !1576
  %537 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_spawn_cmd, i64 0, i64 0), align 16, !dbg !1578
  %538 = icmp ne i8 %537, 0, !dbg !1578
  br i1 %538, label %539, label %541, !dbg !1580

; <label>:539:                                    ; preds = %536
  %540 = call i32 @ctrl_send_command(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_seamless_spawn_cmd, i32 0, i32 0)), !dbg !1581
  store i32 %540, i32* %3, align 4, !dbg !1582
  br label %679, !dbg !1582

; <label>:541:                                    ; preds = %536
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.51, i32 0, i32 0)), !dbg !1583
  store i32 64, i32* %3, align 4, !dbg !1584
  br label %679, !dbg !1584

; <label>:542:                                    ; preds = %533
  br label %543, !dbg !1585

; <label>:543:                                    ; preds = %542, %523, %520
  %544 = call i32 @ui_init(), !dbg !1586
  %545 = icmp ne i32 %544, 0, !dbg !1586
  br i1 %545, label %547, label %546, !dbg !1588

; <label>:546:                                    ; preds = %543
  store i32 71, i32* %3, align 4, !dbg !1589
  br label %679, !dbg !1589

; <label>:547:                                    ; preds = %543
  %548 = load i8*, i8** %20, align 8, !dbg !1590
  %549 = call i32 @rdpsnd_init(i8* %548), !dbg !1592
  %550 = icmp ne i32 %549, 0, !dbg !1592
  br i1 %550, label %552, label %551, !dbg !1593

; <label>:551:                                    ; preds = %547
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i32 0, i32 0)), !dbg !1594
  br label %552, !dbg !1594

; <label>:552:                                    ; preds = %551, %547
  %553 = load i32, i32* @g_lspci_enabled, align 4, !dbg !1595
  %554 = icmp ne i32 %553, 0, !dbg !1595
  br i1 %554, label %555, label %557, !dbg !1597

; <label>:555:                                    ; preds = %552
  %556 = call i32 @lspci_init(), !dbg !1598
  br label %557, !dbg !1598

; <label>:557:                                    ; preds = %555, %552
  %558 = call i32 (...) @rdpdr_init(), !dbg !1599
  %559 = call i32 @dvc_init(), !dbg !1600
  call void @rdpedisp_init(), !dbg !1601
  call void @setup_user_requested_session_size(), !dbg !1602
  store i32 0, i32* @g_reconnect_loop, align 4, !dbg !1603
  br label %560, !dbg !1604

; <label>:560:                                    ; preds = %557, %615, %620, %669
  call void @rdesktop_reset_state(), !dbg !1605
  %561 = load i32, i32* @g_redirect, align 4, !dbg !1607
  %562 = icmp ne i32 %561, 0, !dbg !1607
  br i1 %562, label %563, label %596, !dbg !1609

; <label>:563:                                    ; preds = %560
  %564 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !1610
  %565 = load i8*, i8** @g_redirect_domain, align 8, !dbg !1613
  %566 = call i8* @strncpy(i8* %564, i8* %565, i64 255) #10, !dbg !1614
  %567 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255, !dbg !1615
  store i8 0, i8* %567, align 1, !dbg !1616
  %568 = load i8*, i8** @g_username, align 8, !dbg !1617
  call void @xfree(i8* %568), !dbg !1618
  %569 = load i8*, i8** @g_redirect_username, align 8, !dbg !1619
  %570 = call i64 @strlen(i8* %569) #9, !dbg !1620
  %571 = add i64 %570, 1, !dbg !1621
  %572 = trunc i64 %571 to i32, !dbg !1620
  %573 = call i8* @xmalloc(i32 %572), !dbg !1622
  store i8* %573, i8** @g_username, align 8, !dbg !1624
  %574 = load i8*, i8** @g_username, align 8, !dbg !1625
  %575 = load i8*, i8** @g_redirect_username, align 8, !dbg !1627
  %576 = load i8*, i8** @g_redirect_username, align 8, !dbg !1628
  %577 = call i64 @strlen(i8* %576) #9, !dbg !1629
  %578 = add i64 %577, 1, !dbg !1630
  %579 = sub i64 %578, 1, !dbg !1631
  %580 = call i8* @strncpy(i8* %574, i8* %575, i64 %579) #10, !dbg !1632
  %581 = load i8*, i8** @g_redirect_username, align 8, !dbg !1634
  %582 = call i64 @strlen(i8* %581) #9, !dbg !1635
  %583 = add i64 %582, 1, !dbg !1637
  %584 = sub i64 %583, 1, !dbg !1638
  %585 = load i8*, i8** @g_username, align 8, !dbg !1639
  %586 = getelementptr inbounds i8, i8* %585, i64 %584, !dbg !1639
  store i8 0, i8* %586, align 1, !dbg !1640
  %587 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1641
  %588 = load i8*, i8** @g_redirect_server, align 8, !dbg !1643
  %589 = call i8* @strncpy(i8* %587, i8* %588, i64 255) #10, !dbg !1644
  %590 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255, !dbg !1645
  store i8 0, i8* %590, align 1, !dbg !1646
  %591 = load i32, i32* %13, align 4, !dbg !1647
  %592 = or i32 %591, 8, !dbg !1647
  store i32 %592, i32* %13, align 4, !dbg !1647
  %593 = load i8*, i8** @g_redirect_username, align 8, !dbg !1648
  %594 = load i8*, i8** @g_redirect_server, align 8, !dbg !1649
  %595 = load i32, i32* @g_redirect_session_id, align 4, !dbg !1650
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0), i8* %593, i8* %594, i32 %595), !dbg !1651
  store i32 0, i32* @g_network_error, align 4, !dbg !1652
  br label %596, !dbg !1653

; <label>:596:                                    ; preds = %563, %560
  call void @utils_apply_session_size_limitations(i32* @g_requested_session_width, i32* @g_requested_session_height), !dbg !1654
  %597 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !1655
  %598 = load i32, i32* %13, align 4, !dbg !1657
  %599 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !1658
  %600 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !1659
  %601 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !1660
  %602 = load i32, i32* @g_reconnect_loop, align 4, !dbg !1661
  %603 = call i32 @rdp_connect(i8* %597, i32 %598, i8* %599, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i32 0, i32 0), i8* %600, i8* %601, i32 %602), !dbg !1662
  %604 = icmp ne i32 %603, 0, !dbg !1662
  br i1 %604, label %617, label %605, !dbg !1663

; <label>:605:                                    ; preds = %596
  store i32 0, i32* @g_network_error, align 4, !dbg !1664
  %606 = load i32, i32* @g_reconnect_loop, align 4, !dbg !1666
  %607 = icmp eq i32 %606, 0, !dbg !1668
  br i1 %607, label %608, label %609, !dbg !1669

; <label>:608:                                    ; preds = %605
  store i32 76, i32* %3, align 4, !dbg !1670
  br label %679, !dbg !1670

; <label>:609:                                    ; preds = %605
  %610 = call i64 @time(i64* null) #10, !dbg !1671
  %611 = load i64, i64* @g_reconnect_random_ts, align 8, !dbg !1673
  %612 = sub nsw i64 %610, %611, !dbg !1674
  %613 = icmp sgt i64 %612, 4200, !dbg !1675
  br i1 %613, label %614, label %615, !dbg !1676

; <label>:614:                                    ; preds = %609
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), i32 70), !dbg !1677
  store i32 76, i32* %3, align 4, !dbg !1679
  br label %679, !dbg !1679

; <label>:615:                                    ; preds = %609
  %616 = call i32 @sleep(i32 4), !dbg !1680
  br label %560, !dbg !1681, !llvm.loop !1682

; <label>:617:                                    ; preds = %596
  %618 = load i32, i32* @g_redirect, align 4, !dbg !1683
  %619 = icmp ne i32 %618, 0, !dbg !1683
  br i1 %619, label %620, label %621, !dbg !1685

; <label>:620:                                    ; preds = %617
  call void @rdp_disconnect(), !dbg !1686
  br label %560, !dbg !1688, !llvm.loop !1682

; <label>:621:                                    ; preds = %617
  %622 = load i32, i32* @g_packet_encryption, align 4, !dbg !1689
  %623 = icmp ne i32 %622, 0, !dbg !1689
  br i1 %623, label %625, label %624, !dbg !1691

; <label>:624:                                    ; preds = %621
  store i32 0, i32* @g_encryption, align 4, !dbg !1692
  store i32 0, i32* @g_encryption_initial, align 4, !dbg !1693
  br label %625, !dbg !1694

; <label>:625:                                    ; preds = %624, %621
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0)), !dbg !1695
  call void @rd_create_ui(), !dbg !1696
  call void @tcp_run_ui(i32 1), !dbg !1697
  store i32 0, i32* %11, align 4, !dbg !1698
  store i32 0, i32* @g_reconnect_loop, align 4, !dbg !1699
  store i32 -1, i32* %14, align 4, !dbg !1700
  call void @rdp_main_loop(i32* %11, i32* %14), !dbg !1701
  call void @tcp_run_ui(i32 0), !dbg !1702
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0)), !dbg !1703
  call void @rdp_disconnect(), !dbg !1704
  %626 = load i32, i32* %11, align 4, !dbg !1705
  %627 = icmp eq i32 %626, 1, !dbg !1707
  br i1 %627, label %628, label %632, !dbg !1708

; <label>:628:                                    ; preds = %625
  %629 = load i32, i32* %14, align 4, !dbg !1709
  %630 = icmp eq i32 %629, 0, !dbg !1711
  br i1 %630, label %631, label %632, !dbg !1712

; <label>:631:                                    ; preds = %628
  store i32 0, i32* %11, align 4, !dbg !1713
  store i32 12, i32* %14, align 4, !dbg !1715
  br label %637, !dbg !1716

; <label>:632:                                    ; preds = %628, %625
  %633 = load i32, i32* %14, align 4, !dbg !1717
  %634 = icmp eq i32 %633, 0, !dbg !1719
  br i1 %634, label %635, label %636, !dbg !1720

; <label>:635:                                    ; preds = %632
  store i32 -1, i32* %14, align 4, !dbg !1721
  br label %636, !dbg !1723

; <label>:636:                                    ; preds = %635, %632
  br label %637

; <label>:637:                                    ; preds = %636, %631
  %638 = load i32, i32* @g_user_quit, align 4, !dbg !1724
  %639 = icmp ne i32 %638, 0, !dbg !1724
  br i1 %639, label %646, label %640, !dbg !1726

; <label>:640:                                    ; preds = %637
  %641 = load i32, i32* %11, align 4, !dbg !1727
  %642 = icmp eq i32 %641, 1, !dbg !1729
  br i1 %642, label %646, label %643, !dbg !1730

; <label>:643:                                    ; preds = %640
  %644 = load i32, i32* %14, align 4, !dbg !1731
  %645 = icmp ne i32 %644, -1, !dbg !1733
  br i1 %645, label %646, label %647, !dbg !1734

; <label>:646:                                    ; preds = %643, %640, %637
  br label %670, !dbg !1735

; <label>:647:                                    ; preds = %643
  %648 = load i32, i32* @g_redirect, align 4, !dbg !1737
  %649 = icmp ne i32 %648, 0, !dbg !1737
  br i1 %649, label %650, label %651, !dbg !1740

; <label>:650:                                    ; preds = %647
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0)), !dbg !1741
  br label %668, !dbg !1743

; <label>:651:                                    ; preds = %647
  %652 = load i32, i32* @g_network_error, align 4, !dbg !1744
  %653 = icmp ne i32 %652, 0, !dbg !1744
  br i1 %653, label %654, label %659, !dbg !1746

; <label>:654:                                    ; preds = %651
  %655 = load i64, i64* @g_reconnect_random_ts, align 8, !dbg !1747
  %656 = icmp eq i64 %655, 0, !dbg !1750
  br i1 %656, label %657, label %658, !dbg !1751

; <label>:657:                                    ; preds = %654
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i32 0, i32 0)), !dbg !1752
  br label %670, !dbg !1754

; <label>:658:                                    ; preds = %654
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.59, i32 0, i32 0), i32 70), !dbg !1755
  store i32 0, i32* @g_network_error, align 4, !dbg !1756
  store i32 1, i32* @g_reconnect_loop, align 4, !dbg !1757
  br label %667, !dbg !1758

; <label>:659:                                    ; preds = %651
  %660 = load i32, i32* @g_pending_resize, align 4, !dbg !1759
  %661 = icmp ne i32 %660, 0, !dbg !1759
  br i1 %661, label %662, label %665, !dbg !1761

; <label>:662:                                    ; preds = %659
  %663 = load i32, i32* @g_requested_session_width, align 4, !dbg !1762
  %664 = load i32, i32* @g_requested_session_height, align 4, !dbg !1764
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i32 0, i32 0), i32 %663, i32 %664), !dbg !1765
  store i32 0, i32* @g_pending_resize, align 4, !dbg !1766
  store i32 1, i32* @g_reconnect_loop, align 4, !dbg !1767
  call void (...) @ui_seamless_end(), !dbg !1768
  call void @ui_destroy_window(), !dbg !1769
  br label %666, !dbg !1770

; <label>:665:                                    ; preds = %659
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0)), !dbg !1771
  br label %670, !dbg !1773

; <label>:666:                                    ; preds = %662
  br label %667

; <label>:667:                                    ; preds = %666, %658
  br label %668

; <label>:668:                                    ; preds = %667, %650
  br label %669

; <label>:669:                                    ; preds = %668
  br label %560, !dbg !1774, !llvm.loop !1682

; <label>:670:                                    ; preds = %665, %657, %646
  call void (...) @ui_seamless_end(), !dbg !1775
  call void @ui_destroy_window(), !dbg !1776
  call void @cache_save_state(), !dbg !1777
  call void @ui_deinit(), !dbg !1778
  %671 = load i32, i32* @g_user_quit, align 4, !dbg !1779
  %672 = icmp ne i32 %671, 0, !dbg !1779
  br i1 %672, label %673, label %674, !dbg !1781

; <label>:673:                                    ; preds = %670
  store i32 62, i32* %3, align 4, !dbg !1782
  br label %679, !dbg !1782

; <label>:674:                                    ; preds = %670
  %675 = load i32, i32* %11, align 4, !dbg !1783
  %676 = load i32, i32* %14, align 4, !dbg !1784
  %677 = trunc i32 %676 to i16, !dbg !1784
  %678 = call i32 @handle_disconnect_reason(i32 %675, i16 zeroext %677), !dbg !1785
  store i32 %678, i32* %3, align 4, !dbg !1786
  br label %679, !dbg !1786

; <label>:679:                                    ; preds = %674, %673, %614, %608, %546, %541, %539, %510, %470, %426, %411, %407, %403, %399, %395, %389, %354, %344, %178, %150, %126
  %680 = load i32, i32* %3, align 4, !dbg !1787
  ret i32 %680, !dbg !1787
}

declare void @logger_set_subjects(i8*) #4

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8*) #0 !dbg !1788 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1791, metadata !539), !dbg !1792
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1793, metadata !539), !dbg !1794
  %4 = load i8*, i8** %2, align 8, !dbg !1795
  %5 = call noalias i8* @strdup(i8* %4) #10, !dbg !1796
  store i8* %5, i8** %3, align 8, !dbg !1794
  %6 = load i8*, i8** %3, align 8, !dbg !1797
  %7 = icmp eq i8* %6, null, !dbg !1799
  br i1 %7, label %8, label %12, !dbg !1800

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !1801
  %10 = load i32, i32* %9, align 4, !dbg !1803
  %11 = call i8* @strerror(i32 %10) #10, !dbg !1804
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* %11), !dbg !1806
  call void @exit(i32 69) #11, !dbg !1808
  unreachable, !dbg !1808

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %3, align 8, !dbg !1809
  ret i8* %13, !dbg !1810
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i32) #0 !dbg !1811 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1814, metadata !539), !dbg !1815
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1816, metadata !539), !dbg !1817
  %4 = load i32, i32* %2, align 4, !dbg !1818
  %5 = sext i32 %4 to i64, !dbg !1818
  %6 = call noalias i8* @malloc(i64 %5) #10, !dbg !1819
  store i8* %6, i8** %3, align 8, !dbg !1817
  %7 = load i8*, i8** %3, align 8, !dbg !1820
  %8 = icmp eq i8* %7, null, !dbg !1822
  br i1 %8, label %9, label %11, !dbg !1823

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !1824
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0), i32 %10), !dbg !1826
  call void @exit(i32 69) #11, !dbg !1827
  unreachable, !dbg !1827

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !1828
  ret i8* %12, !dbg !1829
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @str_startswith(i8*, i8*) #0 !dbg !1830 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1833, metadata !539), !dbg !1834
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1835, metadata !539), !dbg !1836
  %5 = load i8*, i8** %3, align 8, !dbg !1837
  %6 = load i8*, i8** %4, align 8, !dbg !1838
  %7 = load i8*, i8** %4, align 8, !dbg !1839
  %8 = call i64 @strlen(i8* %7) #9, !dbg !1840
  %9 = call i32 @strncmp(i8* %5, i8* %6, i64 %8) #9, !dbg !1841
  %10 = icmp eq i32 %9, 0, !dbg !1843
  %11 = zext i1 %10 to i32, !dbg !1843
  ret i32 %11, !dbg !1844
}

; Function Attrs: nounwind uwtable
define i8* @next_arg(i8*, i8 signext) #0 !dbg !1845 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1848, metadata !539), !dbg !1849
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1850, metadata !539), !dbg !1851
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1852, metadata !539), !dbg !1853
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1854, metadata !539), !dbg !1855
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1856, metadata !539), !dbg !1857
  store i8* null, i8** %8, align 8, !dbg !1857
  %9 = load i8*, i8** %4, align 8, !dbg !1858
  %10 = load i8, i8* %9, align 1, !dbg !1860
  %11 = sext i8 %10 to i32, !dbg !1860
  %12 = icmp eq i32 %11, 0, !dbg !1861
  br i1 %12, label %13, label %14, !dbg !1862

; <label>:13:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1863
  br label %67, !dbg !1863

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !1864
  store i8* %15, i8** %7, align 8, !dbg !1865
  br label %16, !dbg !1866

; <label>:16:                                     ; preds = %53, %14
  %17 = load i8*, i8** %7, align 8, !dbg !1867
  %18 = load i8, i8* %5, align 1, !dbg !1869
  %19 = sext i8 %18 to i32, !dbg !1869
  %20 = call i8* @strchr(i8* %17, i32 %19) #9, !dbg !1870
  store i8* %20, i8** %6, align 8, !dbg !1871
  %21 = icmp ne i8* %20, null, !dbg !1872
  br i1 %21, label %22, label %54, !dbg !1872

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %6, align 8, !dbg !1873
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !1875
  store i8* %24, i8** %8, align 8, !dbg !1876
  %25 = load i8*, i8** %8, align 8, !dbg !1877
  %26 = load i8, i8* %25, align 1, !dbg !1879
  %27 = sext i8 %26 to i32, !dbg !1879
  %28 = icmp eq i32 %27, 92, !dbg !1880
  br i1 %28, label %29, label %50, !dbg !1881

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %8, align 8, !dbg !1882
  %31 = load i8*, i8** %4, align 8, !dbg !1884
  %32 = icmp ugt i8* %30, %31, !dbg !1885
  br i1 %32, label %33, label %50, !dbg !1886

; <label>:33:                                     ; preds = %29
  br label %34, !dbg !1887

; <label>:34:                                     ; preds = %40, %33
  %35 = load i8*, i8** %8, align 8, !dbg !1889
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1891
  %37 = load i8, i8* %36, align 1, !dbg !1892
  %38 = sext i8 %37 to i32, !dbg !1892
  %39 = icmp ne i32 %38, 0, !dbg !1893
  br i1 %39, label %40, label %47, !dbg !1894

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %8, align 8, !dbg !1895
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1897
  %43 = load i8, i8* %42, align 1, !dbg !1898
  %44 = load i8*, i8** %8, align 8, !dbg !1899
  store i8 %43, i8* %44, align 1, !dbg !1900
  %45 = load i8*, i8** %8, align 8, !dbg !1901
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !1901
  store i8* %46, i8** %8, align 8, !dbg !1901
  br label %34, !dbg !1902, !llvm.loop !1904

; <label>:47:                                     ; preds = %34
  %48 = load i8*, i8** %8, align 8, !dbg !1905
  store i8 0, i8* %48, align 1, !dbg !1906
  %49 = load i8*, i8** %6, align 8, !dbg !1907
  store i8* %49, i8** %7, align 8, !dbg !1908
  br label %53, !dbg !1909

; <label>:50:                                     ; preds = %29, %22
  %51 = load i8*, i8** %6, align 8, !dbg !1910
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1912
  store i8* %52, i8** %7, align 8, !dbg !1913
  br label %54, !dbg !1914

; <label>:53:                                     ; preds = %47
  br label %16, !dbg !1915, !llvm.loop !1917

; <label>:54:                                     ; preds = %50, %16
  %55 = load i8*, i8** %6, align 8, !dbg !1918
  %56 = icmp ne i8* %55, null, !dbg !1918
  br i1 %56, label %57, label %61, !dbg !1920

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %6, align 8, !dbg !1921
  store i8 0, i8* %58, align 1, !dbg !1923
  %59 = load i8*, i8** %6, align 8, !dbg !1924
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1924
  store i8* %60, i8** %6, align 8, !dbg !1924
  store i8* %60, i8** %3, align 8, !dbg !1925
  br label %67, !dbg !1925

; <label>:61:                                     ; preds = %54
  %62 = load i8*, i8** %4, align 8, !dbg !1926
  %63 = load i8*, i8** %4, align 8, !dbg !1927
  %64 = call i64 @strlen(i8* %63) #9, !dbg !1928
  %65 = getelementptr inbounds i8, i8* %62, i64 %64, !dbg !1929
  store i8* %65, i8** %6, align 8, !dbg !1930
  %66 = load i8*, i8** %6, align 8, !dbg !1931
  store i8* %66, i8** %3, align 8, !dbg !1932
  br label %67, !dbg !1932

; <label>:67:                                     ; preds = %61, %57, %13
  %68 = load i8*, i8** %3, align 8, !dbg !1933
  ret i8* %68, !dbg !1933
}

declare i32 @disk_enum_devices(i32*, i8*) #4

declare i32 @serial_enum_devices(i32*, i8*) #4

declare i32 @parallel_enum_devices(i32*, i8*) #4

declare i32 @printer_enum_devices(i32*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @cliprdr_set_mode(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare void @logger_set_verbose(i32) #4

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !1934 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1937, metadata !539), !dbg !1938
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1939
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.93, i32 0, i32 0)), !dbg !1940
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1941
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.94, i32 0, i32 0)), !dbg !1942
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1943
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i32 0, i32 0)), !dbg !1944
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1945
  %10 = load i8*, i8** %2, align 8, !dbg !1946
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.96, i32 0, i32 0), i8* %10), !dbg !1947
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1948
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0)), !dbg !1949
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1950
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0)), !dbg !1951
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1952
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.99, i32 0, i32 0)), !dbg !1953
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1954
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i32 0, i32 0)), !dbg !1955
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1956
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0)), !dbg !1957
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1958
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)), !dbg !1959
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1960
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.103, i32 0, i32 0)), !dbg !1961
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1962
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.104, i32 0, i32 0)), !dbg !1963
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1964
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0)), !dbg !1965
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1966
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0)), !dbg !1967
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1968
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.107, i32 0, i32 0)), !dbg !1969
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1970
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.108, i32 0, i32 0)), !dbg !1971
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1972
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.109, i32 0, i32 0)), !dbg !1973
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1974
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i32 0, i32 0)), !dbg !1975
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1976
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.111, i32 0, i32 0)), !dbg !1977
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1978
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0)), !dbg !1979
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1980
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.113, i32 0, i32 0)), !dbg !1981
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1982
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.114, i32 0, i32 0)), !dbg !1983
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1984
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i32 0, i32 0)), !dbg !1985
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1986
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.116, i32 0, i32 0)), !dbg !1987
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1988
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.117, i32 0, i32 0)), !dbg !1989
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1990
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0)), !dbg !1991
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1992
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i32 0, i32 0)), !dbg !1993
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1994
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.120, i32 0, i32 0)), !dbg !1995
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1996
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.121, i32 0, i32 0)), !dbg !1997
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1998
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.122, i32 0, i32 0)), !dbg !1999
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2000
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0)), !dbg !2001
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2002
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.124, i32 0, i32 0)), !dbg !2003
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2004
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i32 0, i32 0)), !dbg !2005
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2006
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.126, i32 0, i32 0)), !dbg !2007
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2008
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.127, i32 0, i32 0)), !dbg !2009
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2010
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i32 0, i32 0)), !dbg !2011
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2012
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.129, i32 0, i32 0)), !dbg !2013
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2014
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.130, i32 0, i32 0)), !dbg !2015
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2016
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.131, i32 0, i32 0)), !dbg !2017
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2018
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.132, i32 0, i32 0)), !dbg !2019
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2020
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.133, i32 0, i32 0)), !dbg !2021
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2022
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.134, i32 0, i32 0)), !dbg !2023
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2024
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.135, i32 0, i32 0)), !dbg !2025
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2026
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.136, i32 0, i32 0)), !dbg !2027
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2028
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.137, i32 0, i32 0)), !dbg !2029
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2030
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.138, i32 0, i32 0)), !dbg !2031
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2032
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.139, i32 0, i32 0)), !dbg !2033
  call void @rdpsnd_show_help(), !dbg !2034
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2035
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.140, i32 0, i32 0)), !dbg !2036
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2037
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.141, i32 0, i32 0)), !dbg !2038
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2039
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.142, i32 0, i32 0)), !dbg !2040
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2041
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.143, i32 0, i32 0)), !dbg !2042
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2043
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.144, i32 0, i32 0)), !dbg !2044
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2045
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0)), !dbg !2046
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2047
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.146, i32 0, i32 0)), !dbg !2048
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2049
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i32 0, i32 0)), !dbg !2050
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2051
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.148, i32 0, i32 0)), !dbg !2052
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2053
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0)), !dbg !2054
  ret void, !dbg !2055
}

; Function Attrs: nounwind uwtable
define internal void @parse_server_and_port(i8*) #0 !dbg !2056 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2057, metadata !539), !dbg !2058
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2059, metadata !539), !dbg !2060
  %4 = load i8*, i8** %2, align 8, !dbg !2061
  %5 = call i8* @strchr(i8* %4, i32 58) #9, !dbg !2062
  store i8* %5, i8** %3, align 8, !dbg !2063
  %6 = load i8*, i8** %3, align 8, !dbg !2064
  %7 = icmp ne i8* %6, null, !dbg !2066
  br i1 %7, label %8, label %14, !dbg !2067

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !2068
  %10 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2070
  %11 = call i64 @strtol(i8* %10, i8** null, i32 10) #10, !dbg !2071
  %12 = trunc i64 %11 to i32, !dbg !2071
  store i32 %12, i32* @g_tcp_port_rdp, align 4, !dbg !2072
  %13 = load i8*, i8** %3, align 8, !dbg !2073
  store i8 0, i8* %13, align 1, !dbg !2074
  br label %14, !dbg !2075

; <label>:14:                                     ; preds = %8, %1
  ret void, !dbg !2076
}

declare %struct.passwd* @getpwuid(i32) #4

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #3

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i32 @xkeymap_from_locale(i8*) #4

; Function Attrs: nounwind uwtable
define void @xfree(i8*) #0 !dbg !2077 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2080, metadata !539), !dbg !2081
  %3 = load i8*, i8** %2, align 8, !dbg !2082
  call void @free(i8* %3) #10, !dbg !2083
  ret void, !dbg !2084
}

; Function Attrs: nounwind uwtable
define internal i32 @read_password(i8*, i32) #0 !dbg !2085 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.termios, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2088, metadata !539), !dbg !2089
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2090, metadata !539), !dbg !2091
  call void @llvm.dbg.declare(metadata %struct.termios* %5, metadata !2092, metadata !539), !dbg !2108
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2109, metadata !539), !dbg !2110
  store i32 0, i32* %6, align 4, !dbg !2110
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2111, metadata !539), !dbg !2112
  store i32 0, i32* %7, align 4, !dbg !2112
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2113, metadata !539), !dbg !2114
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2115, metadata !539), !dbg !2116
  %10 = load i32, i32* @g_use_password_as_pin, align 4, !dbg !2117
  %11 = icmp ne i32 %10, 0, !dbg !2117
  br i1 %11, label %12, label %13, !dbg !2119

; <label>:12:                                     ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), i8** %8, align 8, !dbg !2120
  br label %14, !dbg !2122

; <label>:13:                                     ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), i8** %8, align 8, !dbg !2123
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = call i32 @tcgetattr(i32 0, %struct.termios* %5) #10, !dbg !2125
  %16 = icmp eq i32 %15, 0, !dbg !2127
  br i1 %16, label %17, label %25, !dbg !2128

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %8, align 8, !dbg !2129
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2131
  %20 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19), !dbg !2132
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 3, !dbg !2133
  %22 = load i32, i32* %21, align 4, !dbg !2134
  %23 = and i32 %22, -9, !dbg !2134
  store i32 %23, i32* %21, align 4, !dbg !2134
  %24 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* %5) #10, !dbg !2135
  store i32 1, i32* %7, align 4, !dbg !2136
  br label %25, !dbg !2137

; <label>:25:                                     ; preds = %17, %14
  %26 = load i8*, i8** %3, align 8, !dbg !2138
  %27 = load i32, i32* %4, align 4, !dbg !2140
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2141
  %29 = call i8* @fgets(i8* %26, i32 %27, %struct._IO_FILE* %28), !dbg !2142
  %30 = icmp ne i8* %29, null, !dbg !2143
  br i1 %30, label %31, label %39, !dbg !2144

; <label>:31:                                     ; preds = %25
  store i32 1, i32* %6, align 4, !dbg !2145
  %32 = load i8*, i8** %3, align 8, !dbg !2147
  %33 = call i8* @strchr(i8* %32, i32 10) #9, !dbg !2148
  store i8* %33, i8** %9, align 8, !dbg !2149
  %34 = load i8*, i8** %9, align 8, !dbg !2150
  %35 = icmp ne i8* %34, null, !dbg !2152
  br i1 %35, label %36, label %38, !dbg !2153

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %9, align 8, !dbg !2154
  store i8 0, i8* %37, align 1, !dbg !2155
  br label %38, !dbg !2156

; <label>:38:                                     ; preds = %36, %31
  br label %39, !dbg !2157

; <label>:39:                                     ; preds = %38, %25
  %40 = load i32, i32* %7, align 4, !dbg !2158
  %41 = icmp ne i32 %40, 0, !dbg !2158
  br i1 %41, label %42, label %49, !dbg !2160

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 3, !dbg !2161
  %44 = load i32, i32* %43, align 4, !dbg !2163
  %45 = or i32 %44, 8, !dbg !2163
  store i32 %45, i32* %43, align 4, !dbg !2163
  %46 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* %5) #10, !dbg !2164
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2165
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0)), !dbg !2166
  br label %49, !dbg !2167

; <label>:49:                                     ; preds = %42, %39
  %50 = load i32, i32* %6, align 4, !dbg !2168
  ret i32 %50, !dbg !2169
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

declare i32 @ctrl_init(i8*, i8*, i8*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i32 @ctrl_is_slave(...) #4

declare i32 @ctrl_send_command(i8*, i8*) #4

declare i32 @ui_init() #4

declare i32 @rdpsnd_init(i8*) #4

declare i32 @lspci_init() #4

declare i32 @rdpdr_init(...) #4

declare i32 @dvc_init() #4

declare void @rdpedisp_init() #4

; Function Attrs: nounwind uwtable
define internal void @rdesktop_reset_state() #0 !dbg !2170 {
  store i32 1, i32* @g_pending_resize_defer, align 4, !dbg !2171
  call void @rdp_reset_state(), !dbg !2172
  call void @rdpsnd_reset_state(), !dbg !2173
  ret void, !dbg !2174
}

declare void @utils_apply_session_size_limitations(i32*, i32*) #4

declare i32 @rdp_connect(i8*, i32, i8*, i8*, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @sleep(i32) #4

declare void @rdp_disconnect() #4

; Function Attrs: nounwind uwtable
define void @rd_create_ui() #0 !dbg !2175 {
  %1 = call i32 @ui_have_window(), !dbg !2176
  %2 = icmp ne i32 %1, 0, !dbg !2176
  br i1 %2, label %10, label %3, !dbg !2178

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @g_requested_session_width, align 4, !dbg !2179
  %5 = load i32, i32* @g_requested_session_height, align 4, !dbg !2182
  %6 = call i32 @ui_create_window(i32 %4, i32 %5), !dbg !2183
  %7 = icmp ne i32 %6, 0, !dbg !2183
  br i1 %7, label %9, label %8, !dbg !2184

; <label>:8:                                      ; preds = %3
  call void @exit(i32 71) #11, !dbg !2185
  unreachable, !dbg !2185

; <label>:9:                                      ; preds = %3
  br label %11, !dbg !2186

; <label>:10:                                     ; preds = %0
  call void @ui_reset_clip(), !dbg !2187
  br label %11

; <label>:11:                                     ; preds = %10, %9
  ret void, !dbg !2189
}

declare void @tcp_run_ui(i32) #4

declare void @rdp_main_loop(i32*, i32*) #4

declare void @ui_seamless_end(...) #4

declare void @ui_destroy_window() #4

declare void @cache_save_state() #4

declare void @ui_deinit() #4

; Function Attrs: nounwind uwtable
define internal i32 @handle_disconnect_reason(i32, i16 zeroext) #0 !dbg !2190 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2194, metadata !539), !dbg !2195
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2196, metadata !539), !dbg !2197
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2198, metadata !539), !dbg !2199
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2200, metadata !539), !dbg !2201
  %7 = load i16, i16* %4, align 2, !dbg !2202
  %8 = zext i16 %7 to i32, !dbg !2202
  switch i32 %8, label %53 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
    i32 5, label %19
    i32 6, label %20
    i32 7, label %21
    i32 8, label %22
    i32 9, label %23
    i32 10, label %24
    i32 11, label %25
    i32 12, label %26
    i32 256, label %27
    i32 257, label %28
    i32 258, label %29
    i32 259, label %30
    i32 260, label %31
    i32 261, label %32
    i32 262, label %33
    i32 263, label %34
    i32 264, label %35
    i32 265, label %36
    i32 266, label %37
    i32 1024, label %38
    i32 1026, label %39
    i32 1028, label %40
    i32 1029, label %41
    i32 1030, label %42
    i32 1031, label %43
    i32 1032, label %44
    i32 1033, label %45
    i32 1040, label %46
    i32 1041, label %47
    i32 1042, label %48
    i32 4339, label %49
    i32 4497, label %50
    i32 4498, label %51
    i32 4499, label %52
  ], !dbg !2203

; <label>:9:                                      ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.151, i32 0, i32 0), i8** %5, align 8, !dbg !2204
  %10 = load i32, i32* %3, align 4, !dbg !2206
  %11 = icmp ne i32 %10, 0, !dbg !2206
  br i1 %11, label %12, label %13, !dbg !2208

; <label>:12:                                     ; preds = %9
  store i32 0, i32* %6, align 4, !dbg !2209
  br label %14, !dbg !2210

; <label>:13:                                     ; preds = %9
  store i32 63, i32* %6, align 4, !dbg !2211
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %54, !dbg !2212

; <label>:15:                                     ; preds = %2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.152, i32 0, i32 0), i8** %5, align 8, !dbg !2213
  store i32 1, i32* %6, align 4, !dbg !2214
  br label %54, !dbg !2215

; <label>:16:                                     ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.153, i32 0, i32 0), i8** %5, align 8, !dbg !2216
  store i32 2, i32* %6, align 4, !dbg !2217
  br label %54, !dbg !2218

; <label>:17:                                     ; preds = %2
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.154, i32 0, i32 0), i8** %5, align 8, !dbg !2219
  store i32 3, i32* %6, align 4, !dbg !2220
  br label %54, !dbg !2221

; <label>:18:                                     ; preds = %2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.155, i32 0, i32 0), i8** %5, align 8, !dbg !2222
  store i32 4, i32* %6, align 4, !dbg !2223
  br label %54, !dbg !2224

; <label>:19:                                     ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i32 0, i32 0), i8** %5, align 8, !dbg !2225
  store i32 5, i32* %6, align 4, !dbg !2226
  br label %54, !dbg !2227

; <label>:20:                                     ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i32 0, i32 0), i8** %5, align 8, !dbg !2228
  store i32 6, i32* %6, align 4, !dbg !2229
  br label %54, !dbg !2230

; <label>:21:                                     ; preds = %2
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.158, i32 0, i32 0), i8** %5, align 8, !dbg !2231
  store i32 7, i32* %6, align 4, !dbg !2232
  br label %54, !dbg !2233

; <label>:22:                                     ; preds = %2
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.159, i32 0, i32 0), i8** %5, align 8, !dbg !2234
  store i32 8, i32* %6, align 4, !dbg !2235
  br label %54, !dbg !2236

; <label>:23:                                     ; preds = %2
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.160, i32 0, i32 0), i8** %5, align 8, !dbg !2237
  store i32 9, i32* %6, align 4, !dbg !2238
  br label %54, !dbg !2239

; <label>:24:                                     ; preds = %2
  store i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.161, i32 0, i32 0), i8** %5, align 8, !dbg !2240
  store i32 10, i32* %6, align 4, !dbg !2241
  br label %54, !dbg !2242

; <label>:25:                                     ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.162, i32 0, i32 0), i8** %5, align 8, !dbg !2243
  store i32 11, i32* %6, align 4, !dbg !2244
  br label %54, !dbg !2245

; <label>:26:                                     ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.163, i32 0, i32 0), i8** %5, align 8, !dbg !2246
  store i32 12, i32* %6, align 4, !dbg !2247
  br label %54, !dbg !2248

; <label>:27:                                     ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.164, i32 0, i32 0), i8** %5, align 8, !dbg !2249
  store i32 16, i32* %6, align 4, !dbg !2250
  br label %54, !dbg !2251

; <label>:28:                                     ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0), i8** %5, align 8, !dbg !2252
  store i32 17, i32* %6, align 4, !dbg !2253
  br label %54, !dbg !2254

; <label>:29:                                     ; preds = %2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.166, i32 0, i32 0), i8** %5, align 8, !dbg !2255
  store i32 18, i32* %6, align 4, !dbg !2256
  br label %54, !dbg !2257

; <label>:30:                                     ; preds = %2
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.167, i32 0, i32 0), i8** %5, align 8, !dbg !2258
  store i32 19, i32* %6, align 4, !dbg !2259
  br label %54, !dbg !2260

; <label>:31:                                     ; preds = %2
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.168, i32 0, i32 0), i8** %5, align 8, !dbg !2261
  store i32 20, i32* %6, align 4, !dbg !2262
  br label %54, !dbg !2263

; <label>:32:                                     ; preds = %2
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.169, i32 0, i32 0), i8** %5, align 8, !dbg !2264
  store i32 21, i32* %6, align 4, !dbg !2265
  br label %54, !dbg !2266

; <label>:33:                                     ; preds = %2
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.170, i32 0, i32 0), i8** %5, align 8, !dbg !2267
  store i32 22, i32* %6, align 4, !dbg !2268
  br label %54, !dbg !2269

; <label>:34:                                     ; preds = %2
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.171, i32 0, i32 0), i8** %5, align 8, !dbg !2270
  store i32 23, i32* %6, align 4, !dbg !2271
  br label %54, !dbg !2272

; <label>:35:                                     ; preds = %2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.172, i32 0, i32 0), i8** %5, align 8, !dbg !2273
  store i32 24, i32* %6, align 4, !dbg !2274
  br label %54, !dbg !2275

; <label>:36:                                     ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.173, i32 0, i32 0), i8** %5, align 8, !dbg !2276
  store i32 25, i32* %6, align 4, !dbg !2277
  br label %54, !dbg !2278

; <label>:37:                                     ; preds = %2
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.174, i32 0, i32 0), i8** %5, align 8, !dbg !2279
  store i32 26, i32* %6, align 4, !dbg !2280
  br label %54, !dbg !2281

; <label>:38:                                     ; preds = %2
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.175, i32 0, i32 0), i8** %5, align 8, !dbg !2282
  store i32 30, i32* %6, align 4, !dbg !2283
  br label %54, !dbg !2284

; <label>:39:                                     ; preds = %2
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.176, i32 0, i32 0), i8** %5, align 8, !dbg !2285
  store i32 32, i32* %6, align 4, !dbg !2286
  br label %54, !dbg !2287

; <label>:40:                                     ; preds = %2
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.177, i32 0, i32 0), i8** %5, align 8, !dbg !2288
  store i32 34, i32* %6, align 4, !dbg !2289
  br label %54, !dbg !2290

; <label>:41:                                     ; preds = %2
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.178, i32 0, i32 0), i8** %5, align 8, !dbg !2291
  store i32 35, i32* %6, align 4, !dbg !2292
  br label %54, !dbg !2293

; <label>:42:                                     ; preds = %2
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.179, i32 0, i32 0), i8** %5, align 8, !dbg !2294
  store i32 36, i32* %6, align 4, !dbg !2295
  br label %54, !dbg !2296

; <label>:43:                                     ; preds = %2
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.180, i32 0, i32 0), i8** %5, align 8, !dbg !2297
  store i32 37, i32* %6, align 4, !dbg !2298
  br label %54, !dbg !2299

; <label>:44:                                     ; preds = %2
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.181, i32 0, i32 0), i8** %5, align 8, !dbg !2300
  store i32 38, i32* %6, align 4, !dbg !2301
  br label %54, !dbg !2302

; <label>:45:                                     ; preds = %2
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.182, i32 0, i32 0), i8** %5, align 8, !dbg !2303
  store i32 39, i32* %6, align 4, !dbg !2304
  br label %54, !dbg !2305

; <label>:46:                                     ; preds = %2
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.183, i32 0, i32 0), i8** %5, align 8, !dbg !2306
  store i32 40, i32* %6, align 4, !dbg !2307
  br label %54, !dbg !2308

; <label>:47:                                     ; preds = %2
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.184, i32 0, i32 0), i8** %5, align 8, !dbg !2309
  store i32 41, i32* %6, align 4, !dbg !2310
  br label %54, !dbg !2311

; <label>:48:                                     ; preds = %2
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.185, i32 0, i32 0), i8** %5, align 8, !dbg !2312
  store i32 42, i32* %6, align 4, !dbg !2313
  br label %54, !dbg !2314

; <label>:49:                                     ; preds = %2
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.186, i32 0, i32 0), i8** %5, align 8, !dbg !2315
  store i32 50, i32* %6, align 4, !dbg !2316
  br label %54, !dbg !2317

; <label>:50:                                     ; preds = %2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0), i8** %5, align 8, !dbg !2318
  store i32 51, i32* %6, align 4, !dbg !2319
  br label %54, !dbg !2320

; <label>:51:                                     ; preds = %2
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.188, i32 0, i32 0), i8** %5, align 8, !dbg !2321
  store i32 52, i32* %6, align 4, !dbg !2322
  br label %54, !dbg !2323

; <label>:52:                                     ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.189, i32 0, i32 0), i8** %5, align 8, !dbg !2324
  store i32 53, i32* %6, align 4, !dbg !2325
  br label %54, !dbg !2326

; <label>:53:                                     ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.190, i32 0, i32 0), i8** %5, align 8, !dbg !2327
  store i32 63, i32* %6, align 4, !dbg !2328
  br label %54, !dbg !2329

; <label>:54:                                     ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14
  %55 = load i16, i16* %4, align 2, !dbg !2330
  %56 = zext i16 %55 to i32, !dbg !2330
  %57 = icmp sgt i32 %56, 4096, !dbg !2332
  br i1 %57, label %58, label %70, !dbg !2333

; <label>:58:                                     ; preds = %54
  %59 = load i16, i16* %4, align 2, !dbg !2334
  %60 = zext i16 %59 to i32, !dbg !2334
  %61 = icmp slt i32 %60, 32767, !dbg !2336
  br i1 %61, label %62, label %70, !dbg !2337

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %6, align 4, !dbg !2338
  %64 = icmp eq i32 %63, 63, !dbg !2340
  br i1 %64, label %65, label %70, !dbg !2341

; <label>:65:                                     ; preds = %62
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2342
  %67 = load i16, i16* %4, align 2, !dbg !2344
  %68 = zext i16 %67 to i32, !dbg !2344
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.191, i32 0, i32 0), i32 %68), !dbg !2345
  br label %79, !dbg !2346

; <label>:70:                                     ; preds = %62, %58, %54
  %71 = load i16, i16* %4, align 2, !dbg !2347
  %72 = zext i16 %71 to i32, !dbg !2347
  %73 = icmp ne i32 %72, 0, !dbg !2350
  br i1 %73, label %74, label %78, !dbg !2347

; <label>:74:                                     ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2351
  %76 = load i8*, i8** %5, align 8, !dbg !2353
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.192, i32 0, i32 0), i8* %76), !dbg !2354
  br label %78, !dbg !2355

; <label>:78:                                     ; preds = %74, %70
  br label %79

; <label>:79:                                     ; preds = %78, %65
  %80 = load i32, i32* %6, align 4, !dbg !2356
  ret i32 %80, !dbg !2357
}

; Function Attrs: nounwind uwtable
define void @generate_random(i8*) #0 !dbg !2358 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.tms, align 8
  %5 = alloca %struct.MD5state_st, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2361, metadata !539), !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !2363, metadata !539), !dbg !2397
  call void @llvm.dbg.declare(metadata %struct.tms* %4, metadata !2398, metadata !539), !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %5, metadata !2408, metadata !539), !dbg !2422
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2423, metadata !539), !dbg !2424
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2425, metadata !539), !dbg !2426
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2427, metadata !539), !dbg !2428
  %9 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 0), !dbg !2429
  store i32 %9, i32* %7, align 4, !dbg !2431
  %10 = icmp ne i32 %9, -1, !dbg !2432
  br i1 %10, label %14, label %11, !dbg !2433

; <label>:11:                                     ; preds = %1
  %12 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 0), !dbg !2434
  store i32 %12, i32* %7, align 4, !dbg !2436
  %13 = icmp ne i32 %12, -1, !dbg !2437
  br i1 %13, label %14, label %25, !dbg !2438

; <label>:14:                                     ; preds = %11, %1
  %15 = load i32, i32* %7, align 4, !dbg !2440
  %16 = load i8*, i8** %2, align 8, !dbg !2442
  %17 = call i64 @read(i32 %15, i8* %16, i64 32), !dbg !2443
  %18 = trunc i64 %17 to i32, !dbg !2443
  store i32 %18, i32* %8, align 4, !dbg !2444
  %19 = load i32, i32* %7, align 4, !dbg !2445
  %20 = call i32 @close(i32 %19), !dbg !2446
  %21 = load i32, i32* %8, align 4, !dbg !2447
  %22 = icmp eq i32 %21, 32, !dbg !2449
  br i1 %22, label %23, label %24, !dbg !2450

; <label>:23:                                     ; preds = %14
  br label %78, !dbg !2451

; <label>:24:                                     ; preds = %14
  br label %25, !dbg !2452

; <label>:25:                                     ; preds = %24, %11
  %26 = load i8*, i8** %2, align 8, !dbg !2453
  %27 = call i32 @generate_random_egd(i8* %26), !dbg !2455
  %28 = icmp ne i32 %27, 0, !dbg !2455
  br i1 %28, label %29, label %30, !dbg !2456

; <label>:29:                                     ; preds = %25
  br label %78, !dbg !2457

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %2, align 8, !dbg !2458
  %32 = bitcast i8* %31 to i32*, !dbg !2459
  store i32* %32, i32** %6, align 8, !dbg !2460
  %33 = call i32 @getpid() #10, !dbg !2461
  %34 = call i32 @getppid() #10, !dbg !2462
  %35 = shl i32 %34, 16, !dbg !2463
  %36 = or i32 %33, %35, !dbg !2464
  %37 = load i32*, i32** %6, align 8, !dbg !2465
  %38 = getelementptr inbounds i32, i32* %37, i64 0, !dbg !2465
  store i32 %36, i32* %38, align 4, !dbg !2466
  %39 = call i32 @getuid() #10, !dbg !2467
  %40 = call i32 @getgid() #10, !dbg !2468
  %41 = shl i32 %40, 16, !dbg !2469
  %42 = or i32 %39, %41, !dbg !2470
  %43 = load i32*, i32** %6, align 8, !dbg !2471
  %44 = getelementptr inbounds i32, i32* %43, i64 1, !dbg !2471
  store i32 %42, i32* %44, align 4, !dbg !2472
  %45 = call i64 @times(%struct.tms* %4) #10, !dbg !2473
  %46 = trunc i64 %45 to i32, !dbg !2473
  %47 = load i32*, i32** %6, align 8, !dbg !2474
  %48 = getelementptr inbounds i32, i32* %47, i64 2, !dbg !2474
  store i32 %46, i32* %48, align 4, !dbg !2475
  %49 = load i32*, i32** %6, align 8, !dbg !2476
  %50 = getelementptr inbounds i32, i32* %49, i64 3, !dbg !2476
  %51 = bitcast i32* %50 to %struct.timeval*, !dbg !2477
  %52 = call i32 @gettimeofday(%struct.timeval* %51, %struct.timezone* null) #10, !dbg !2478
  %53 = call i32 @stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %struct.stat* %3) #10, !dbg !2479
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 11, !dbg !2480
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %54, i32 0, i32 0, !dbg !2481
  %56 = load i64, i64* %55, align 8, !dbg !2481
  %57 = trunc i64 %56 to i32, !dbg !2482
  %58 = load i32*, i32** %6, align 8, !dbg !2483
  %59 = getelementptr inbounds i32, i32* %58, i64 5, !dbg !2483
  store i32 %57, i32* %59, align 4, !dbg !2484
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12, !dbg !2485
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %60, i32 0, i32 0, !dbg !2486
  %62 = load i64, i64* %61, align 8, !dbg !2486
  %63 = trunc i64 %62 to i32, !dbg !2487
  %64 = load i32*, i32** %6, align 8, !dbg !2488
  %65 = getelementptr inbounds i32, i32* %64, i64 6, !dbg !2488
  store i32 %63, i32* %65, align 4, !dbg !2489
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 13, !dbg !2490
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %66, i32 0, i32 0, !dbg !2491
  %68 = load i64, i64* %67, align 8, !dbg !2491
  %69 = trunc i64 %68 to i32, !dbg !2492
  %70 = load i32*, i32** %6, align 8, !dbg !2493
  %71 = getelementptr inbounds i32, i32* %70, i64 7, !dbg !2493
  store i32 %69, i32* %71, align 4, !dbg !2494
  call void @rdssl_md5_init(%struct.MD5state_st* %5), !dbg !2495
  %72 = load i8*, i8** %2, align 8, !dbg !2496
  call void @rdssl_md5_update(%struct.MD5state_st* %5, i8* %72, i32 16), !dbg !2497
  %73 = load i8*, i8** %2, align 8, !dbg !2498
  call void @rdssl_md5_final(%struct.MD5state_st* %5, i8* %73), !dbg !2499
  %74 = load i8*, i8** %2, align 8, !dbg !2500
  %75 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !2501
  call void @rdssl_md5_update(%struct.MD5state_st* %5, i8* %75, i32 16), !dbg !2502
  %76 = load i8*, i8** %2, align 8, !dbg !2503
  %77 = getelementptr inbounds i8, i8* %76, i64 16, !dbg !2504
  call void @rdssl_md5_final(%struct.MD5state_st* %5, i8* %77), !dbg !2505
  br label %78, !dbg !2506

; <label>:78:                                     ; preds = %30, %29, %23
  ret void, !dbg !2507
}

declare i32 @open(i8*, i32, ...) #4

declare i64 @read(i32, i8*, i64) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @generate_random_egd(i8*) #0 !dbg !2508 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_un, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2511, metadata !539), !dbg !2512
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %4, metadata !2513, metadata !539), !dbg !2522
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2523, metadata !539), !dbg !2524
  store i32 0, i32* %5, align 4, !dbg !2524
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2525, metadata !539), !dbg !2526
  %7 = call i32 @socket(i32 1, i32 1, i32 0) #10, !dbg !2527
  store i32 %7, i32* %6, align 4, !dbg !2528
  %8 = load i32, i32* %6, align 4, !dbg !2529
  %9 = icmp eq i32 %8, -1, !dbg !2531
  br i1 %9, label %10, label %11, !dbg !2532

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !2533
  br label %53, !dbg !2533

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0, !dbg !2534
  store i16 1, i16* %12, align 2, !dbg !2535
  %13 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1, !dbg !2536
  %14 = getelementptr inbounds [108 x i8], [108 x i8]* %13, i32 0, i32 0, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.193, i32 0, i32 0), i64 18, i32 1, i1 false), !dbg !2537
  %15 = load i32, i32* %6, align 4, !dbg !2538
  %16 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !2540
  %17 = call i32 @connect(i32 %15, %struct.sockaddr* %16, i32 110), !dbg !2541
  %18 = icmp eq i32 %17, -1, !dbg !2542
  br i1 %18, label %19, label %20, !dbg !2543

; <label>:19:                                     ; preds = %11
  br label %49, !dbg !2544

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %3, align 8, !dbg !2545
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !2545
  store i8 1, i8* %22, align 1, !dbg !2546
  %23 = load i8*, i8** %3, align 8, !dbg !2547
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !2547
  store i8 32, i8* %24, align 1, !dbg !2548
  %25 = load i32, i32* %6, align 4, !dbg !2549
  %26 = load i8*, i8** %3, align 8, !dbg !2551
  %27 = call i64 @write(i32 %25, i8* %26, i64 2), !dbg !2552
  %28 = icmp ne i64 %27, 2, !dbg !2553
  br i1 %28, label %29, label %30, !dbg !2554

; <label>:29:                                     ; preds = %20
  br label %49, !dbg !2555

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %6, align 4, !dbg !2556
  %32 = load i8*, i8** %3, align 8, !dbg !2558
  %33 = call i64 @read(i32 %31, i8* %32, i64 1), !dbg !2559
  %34 = icmp ne i64 %33, 1, !dbg !2560
  br i1 %34, label %41, label %35, !dbg !2561

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %3, align 8, !dbg !2562
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !2562
  %38 = load i8, i8* %37, align 1, !dbg !2562
  %39 = zext i8 %38 to i32, !dbg !2562
  %40 = icmp eq i32 %39, 0, !dbg !2564
  br i1 %40, label %41, label %42, !dbg !2565

; <label>:41:                                     ; preds = %35, %30
  br label %49, !dbg !2566

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %6, align 4, !dbg !2567
  %44 = load i8*, i8** %3, align 8, !dbg !2569
  %45 = call i64 @read(i32 %43, i8* %44, i64 32), !dbg !2570
  %46 = icmp ne i64 %45, 32, !dbg !2571
  br i1 %46, label %47, label %48, !dbg !2572

; <label>:47:                                     ; preds = %42
  br label %49, !dbg !2573

; <label>:48:                                     ; preds = %42
  store i32 1, i32* %5, align 4, !dbg !2574
  br label %49, !dbg !2575

; <label>:49:                                     ; preds = %48, %47, %41, %29, %19
  %50 = load i32, i32* %6, align 4, !dbg !2576
  %51 = call i32 @close(i32 %50), !dbg !2577
  %52 = load i32, i32* %5, align 4, !dbg !2578
  store i32 %52, i32* %2, align 4, !dbg !2579
  br label %53, !dbg !2579

; <label>:53:                                     ; preds = %49, %10
  %54 = load i32, i32* %2, align 4, !dbg !2580
  ret i32 %54, !dbg !2580
}

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i32 @getppid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare void @rdssl_md5_init(%struct.MD5state_st*) #4

declare void @rdssl_md5_update(%struct.MD5state_st*, i8*, i32) #4

declare void @rdssl_md5_final(%struct.MD5state_st*, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @exit_if_null(i8*) #0 !dbg !2581 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2582, metadata !539), !dbg !2583
  %3 = load i8*, i8** %2, align 8, !dbg !2584
  %4 = icmp eq i8* %3, null, !dbg !2586
  br i1 %4, label %5, label %6, !dbg !2587

; <label>:5:                                      ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i32 0, i32 0)), !dbg !2588
  call void @exit(i32 69) #11, !dbg !2590
  unreachable, !dbg !2590

; <label>:6:                                      ; preds = %1
  ret void, !dbg !2591
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8*, i64) #0 !dbg !2592 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2597, metadata !539), !dbg !2598
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2599, metadata !539), !dbg !2600
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2601, metadata !539), !dbg !2602
  %6 = load i64, i64* %4, align 8, !dbg !2603
  %7 = icmp eq i64 %6, 0, !dbg !2605
  br i1 %7, label %8, label %9, !dbg !2606

; <label>:8:                                      ; preds = %2
  store i64 1, i64* %4, align 8, !dbg !2607
  br label %9, !dbg !2608

; <label>:9:                                      ; preds = %8, %2
  %10 = load i8*, i8** %3, align 8, !dbg !2609
  %11 = load i64, i64* %4, align 8, !dbg !2610
  %12 = call i8* @realloc(i8* %10, i64 %11) #10, !dbg !2611
  store i8* %12, i8** %5, align 8, !dbg !2612
  %13 = load i8*, i8** %5, align 8, !dbg !2613
  %14 = icmp eq i8* %13, null, !dbg !2615
  br i1 %14, label %15, label %17, !dbg !2616

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %4, align 8, !dbg !2617
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i64 %16), !dbg !2619
  call void @exit(i32 69) #11, !dbg !2620
  unreachable, !dbg !2620

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !2621
  ret i8* %18, !dbg !2622
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @hexdump(i8*, i32) #0 !dbg !2623 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2627, metadata !539), !dbg !2628
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2629, metadata !539), !dbg !2630
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2631, metadata !539), !dbg !2632
  %9 = load i8*, i8** %3, align 8, !dbg !2633
  store i8* %9, i8** %5, align 8, !dbg !2632
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2634, metadata !539), !dbg !2635
  store i32 0, i32* %6, align 4, !dbg !2635
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2636, metadata !539), !dbg !2637
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2638, metadata !539), !dbg !2639
  br label %10, !dbg !2640

; <label>:10:                                     ; preds = %83, %2
  %11 = load i32, i32* %6, align 4, !dbg !2641
  %12 = load i32, i32* %4, align 4, !dbg !2643
  %13 = icmp ult i32 %11, %12, !dbg !2644
  br i1 %13, label %14, label %92, !dbg !2645

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %6, align 4, !dbg !2646
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 %15), !dbg !2648
  %17 = load i32, i32* %4, align 4, !dbg !2649
  %18 = load i32, i32* %6, align 4, !dbg !2650
  %19 = sub i32 %17, %18, !dbg !2651
  store i32 %19, i32* %8, align 4, !dbg !2652
  %20 = load i32, i32* %8, align 4, !dbg !2653
  %21 = icmp sgt i32 %20, 16, !dbg !2655
  br i1 %21, label %22, label %23, !dbg !2656

; <label>:22:                                     ; preds = %14
  store i32 16, i32* %8, align 4, !dbg !2657
  br label %23, !dbg !2658

; <label>:23:                                     ; preds = %22, %14
  store i32 0, i32* %7, align 4, !dbg !2659
  br label %24, !dbg !2661

; <label>:24:                                     ; preds = %36, %23
  %25 = load i32, i32* %7, align 4, !dbg !2662
  %26 = load i32, i32* %8, align 4, !dbg !2665
  %27 = icmp slt i32 %25, %26, !dbg !2666
  br i1 %27, label %28, label %39, !dbg !2667

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %7, align 4, !dbg !2668
  %30 = sext i32 %29 to i64, !dbg !2669
  %31 = load i8*, i8** %5, align 8, !dbg !2669
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !2669
  %33 = load i8, i8* %32, align 1, !dbg !2669
  %34 = zext i8 %33 to i32, !dbg !2669
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 %34), !dbg !2670
  br label %36, !dbg !2670

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %7, align 4, !dbg !2671
  %38 = add nsw i32 %37, 1, !dbg !2671
  store i32 %38, i32* %7, align 4, !dbg !2671
  br label %24, !dbg !2673, !llvm.loop !2674

; <label>:39:                                     ; preds = %24
  br label %40, !dbg !2676

; <label>:40:                                     ; preds = %45, %39
  %41 = load i32, i32* %7, align 4, !dbg !2677
  %42 = icmp slt i32 %41, 16, !dbg !2681
  br i1 %42, label %43, label %48, !dbg !2682

; <label>:43:                                     ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0)), !dbg !2683
  br label %45, !dbg !2683

; <label>:45:                                     ; preds = %43
  %46 = load i32, i32* %7, align 4, !dbg !2684
  %47 = add nsw i32 %46, 1, !dbg !2684
  store i32 %47, i32* %7, align 4, !dbg !2684
  br label %40, !dbg !2686, !llvm.loop !2687

; <label>:48:                                     ; preds = %40
  store i32 0, i32* %7, align 4, !dbg !2688
  br label %49, !dbg !2690

; <label>:49:                                     ; preds = %80, %48
  %50 = load i32, i32* %7, align 4, !dbg !2691
  %51 = load i32, i32* %8, align 4, !dbg !2694
  %52 = icmp slt i32 %50, %51, !dbg !2695
  br i1 %52, label %53, label %83, !dbg !2696

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %7, align 4, !dbg !2697
  %55 = sext i32 %54 to i64, !dbg !2698
  %56 = load i8*, i8** %5, align 8, !dbg !2698
  %57 = getelementptr inbounds i8, i8* %56, i64 %55, !dbg !2698
  %58 = load i8, i8* %57, align 1, !dbg !2698
  %59 = zext i8 %58 to i32, !dbg !2698
  %60 = icmp sge i32 %59, 32, !dbg !2699
  br i1 %60, label %61, label %76, !dbg !2700

; <label>:61:                                     ; preds = %53
  %62 = load i32, i32* %7, align 4, !dbg !2701
  %63 = sext i32 %62 to i64, !dbg !2702
  %64 = load i8*, i8** %5, align 8, !dbg !2702
  %65 = getelementptr inbounds i8, i8* %64, i64 %63, !dbg !2702
  %66 = load i8, i8* %65, align 1, !dbg !2702
  %67 = zext i8 %66 to i32, !dbg !2702
  %68 = icmp slt i32 %67, 127, !dbg !2703
  br i1 %68, label %69, label %76, !dbg !2704

; <label>:69:                                     ; preds = %61
  %70 = load i32, i32* %7, align 4, !dbg !2705
  %71 = sext i32 %70 to i64, !dbg !2707
  %72 = load i8*, i8** %5, align 8, !dbg !2707
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !2707
  %74 = load i8, i8* %73, align 1, !dbg !2707
  %75 = zext i8 %74 to i32, !dbg !2707
  br label %77, !dbg !2708

; <label>:76:                                     ; preds = %61, %53
  br label %77, !dbg !2709

; <label>:77:                                     ; preds = %76, %69
  %78 = phi i32 [ %75, %69 ], [ 46, %76 ], !dbg !2711
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 %78), !dbg !2713
  br label %80, !dbg !2713

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %7, align 4, !dbg !2714
  %82 = add nsw i32 %81, 1, !dbg !2714
  store i32 %82, i32* %7, align 4, !dbg !2714
  br label %49, !dbg !2715, !llvm.loop !2716

; <label>:83:                                     ; preds = %49
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0)), !dbg !2718
  %85 = load i32, i32* %8, align 4, !dbg !2719
  %86 = load i32, i32* %6, align 4, !dbg !2720
  %87 = add i32 %86, %85, !dbg !2720
  store i32 %87, i32* %6, align 4, !dbg !2720
  %88 = load i32, i32* %8, align 4, !dbg !2721
  %89 = load i8*, i8** %5, align 8, !dbg !2722
  %90 = sext i32 %88 to i64, !dbg !2722
  %91 = getelementptr inbounds i8, i8* %89, i64 %90, !dbg !2722
  store i8* %91, i8** %5, align 8, !dbg !2722
  br label %10, !dbg !2723, !llvm.loop !2725

; <label>:92:                                     ; preds = %10
  ret void, !dbg !2726
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @toupper_str(i8*) #0 !dbg !2727 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2728, metadata !539), !dbg !2729
  br label %3, !dbg !2730

; <label>:3:                                      ; preds = %24, %1
  %4 = load i8*, i8** %2, align 8, !dbg !2731
  %5 = load i8, i8* %4, align 1, !dbg !2733
  %6 = icmp ne i8 %5, 0, !dbg !2734
  br i1 %6, label %7, label %27, !dbg !2734

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8, !dbg !2735
  %9 = load i8, i8* %8, align 1, !dbg !2738
  %10 = sext i8 %9 to i32, !dbg !2738
  %11 = icmp sge i32 %10, 97, !dbg !2739
  br i1 %11, label %12, label %24, !dbg !2740

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %2, align 8, !dbg !2741
  %14 = load i8, i8* %13, align 1, !dbg !2743
  %15 = sext i8 %14 to i32, !dbg !2743
  %16 = icmp sle i32 %15, 122, !dbg !2744
  br i1 %16, label %17, label %24, !dbg !2745

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %2, align 8, !dbg !2746
  %19 = load i8, i8* %18, align 1, !dbg !2747
  %20 = sext i8 %19 to i32, !dbg !2748
  %21 = call i32 @toupper(i32 %20) #9, !dbg !2749
  %22 = trunc i32 %21 to i8, !dbg !2749
  %23 = load i8*, i8** %2, align 8, !dbg !2750
  store i8 %22, i8* %23, align 1, !dbg !2751
  br label %24, !dbg !2752

; <label>:24:                                     ; preds = %17, %12, %7
  %25 = load i8*, i8** %2, align 8, !dbg !2753
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !2753
  store i8* %26, i8** %2, align 8, !dbg !2753
  br label %3, !dbg !2754, !llvm.loop !2756

; <label>:27:                                     ; preds = %3
  ret void, !dbg !2757
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i32 @str_handle_lines(i8*, i8**, i32 (i8*, i8*)*, i8*) #0 !dbg !2758 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2765, metadata !539), !dbg !2766
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2767, metadata !539), !dbg !2768
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %7, metadata !2769, metadata !539), !dbg !2770
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2771, metadata !539), !dbg !2772
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2773, metadata !539), !dbg !2774
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2775, metadata !539), !dbg !2776
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2777, metadata !539), !dbg !2778
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2779, metadata !539), !dbg !2780
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2781, metadata !539), !dbg !2782
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2783, metadata !539), !dbg !2784
  store i64 0, i64* %14, align 8, !dbg !2784
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2785, metadata !539), !dbg !2786
  store i32 1, i32* %15, align 4, !dbg !2786
  %17 = load i8*, i8** %5, align 8, !dbg !2787
  %18 = call i64 @strlen(i8* %17) #9, !dbg !2788
  store i64 %18, i64* %12, align 8, !dbg !2789
  %19 = load i8**, i8*** %6, align 8, !dbg !2790
  %20 = load i8*, i8** %19, align 8, !dbg !2792
  %21 = icmp ne i8* %20, null, !dbg !2792
  br i1 %21, label %22, label %26, !dbg !2793

; <label>:22:                                     ; preds = %4
  %23 = load i8**, i8*** %6, align 8, !dbg !2794
  %24 = load i8*, i8** %23, align 8, !dbg !2795
  %25 = call i64 @strlen(i8* %24) #9, !dbg !2796
  store i64 %25, i64* %14, align 8, !dbg !2797
  br label %26, !dbg !2798

; <label>:26:                                     ; preds = %22, %4
  %27 = load i64, i64* %14, align 8, !dbg !2799
  %28 = load i64, i64* %12, align 8, !dbg !2800
  %29 = add i64 %27, %28, !dbg !2801
  %30 = add i64 %29, 1, !dbg !2802
  store i64 %30, i64* %13, align 8, !dbg !2803
  %31 = load i64, i64* %13, align 8, !dbg !2804
  %32 = trunc i64 %31 to i32, !dbg !2804
  %33 = call i8* @xmalloc(i32 %32), !dbg !2805
  store i8* %33, i8** %9, align 8, !dbg !2806
  %34 = load i8*, i8** %9, align 8, !dbg !2807
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !2807
  store i8 0, i8* %35, align 1, !dbg !2808
  %36 = load i8**, i8*** %6, align 8, !dbg !2809
  %37 = load i8*, i8** %36, align 8, !dbg !2811
  %38 = icmp ne i8* %37, null, !dbg !2811
  br i1 %38, label %39, label %50, !dbg !2812

; <label>:39:                                     ; preds = %26
  %40 = load i8*, i8** %9, align 8, !dbg !2813
  %41 = load i8**, i8*** %6, align 8, !dbg !2815
  %42 = load i8*, i8** %41, align 8, !dbg !2816
  %43 = load i64, i64* %13, align 8, !dbg !2817
  %44 = sub i64 %43, 1, !dbg !2818
  %45 = call i8* @strncpy(i8* %40, i8* %42, i64 %44) #10, !dbg !2819
  %46 = load i64, i64* %13, align 8, !dbg !2820
  %47 = sub i64 %46, 1, !dbg !2821
  %48 = load i8*, i8** %9, align 8, !dbg !2822
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !2822
  store i8 0, i8* %49, align 1, !dbg !2823
  br label %50, !dbg !2824

; <label>:50:                                     ; preds = %39, %26
  %51 = load i8*, i8** %9, align 8, !dbg !2825
  %52 = load i8*, i8** %5, align 8, !dbg !2826
  %53 = load i64, i64* %12, align 8, !dbg !2827
  %54 = call i8* @strncat(i8* %51, i8* %52, i64 %53) #10, !dbg !2828
  %55 = load i8*, i8** %9, align 8, !dbg !2829
  store i8* %55, i8** %10, align 8, !dbg !2830
  br label %56, !dbg !2831

; <label>:56:                                     ; preds = %50, %75
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2832, metadata !539), !dbg !2834
  %57 = load i8*, i8** %10, align 8, !dbg !2835
  %58 = call i8* @strchr(i8* %57, i32 10) #9, !dbg !2836
  store i8* %58, i8** %16, align 8, !dbg !2834
  %59 = load i8*, i8** %16, align 8, !dbg !2837
  %60 = icmp ne i8* %59, null, !dbg !2837
  br i1 %60, label %61, label %74, !dbg !2839

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %16, align 8, !dbg !2840
  store i8 0, i8* %62, align 1, !dbg !2842
  %63 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8, !dbg !2843
  %64 = load i8*, i8** %10, align 8, !dbg !2845
  %65 = load i8*, i8** %8, align 8, !dbg !2846
  %66 = call i32 %63(i8* %64, i8* %65), !dbg !2843
  %67 = icmp ne i32 %66, 0, !dbg !2843
  br i1 %67, label %71, label %68, !dbg !2847

; <label>:68:                                     ; preds = %61
  %69 = load i8*, i8** %16, align 8, !dbg !2848
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !2850
  store i8* %70, i8** %10, align 8, !dbg !2851
  store i32 0, i32* %15, align 4, !dbg !2852
  br label %76, !dbg !2853

; <label>:71:                                     ; preds = %61
  %72 = load i8*, i8** %16, align 8, !dbg !2854
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !2855
  store i8* %73, i8** %10, align 8, !dbg !2856
  br label %75, !dbg !2857

; <label>:74:                                     ; preds = %56
  br label %76, !dbg !2858

; <label>:75:                                     ; preds = %71
  br label %56, !dbg !2860, !llvm.loop !2862

; <label>:76:                                     ; preds = %74, %68
  %77 = load i8**, i8*** %6, align 8, !dbg !2863
  %78 = load i8*, i8** %77, align 8, !dbg !2864
  store i8* %78, i8** %11, align 8, !dbg !2865
  %79 = load i8*, i8** %9, align 8, !dbg !2866
  %80 = load i64, i64* %13, align 8, !dbg !2867
  %81 = getelementptr inbounds i8, i8* %79, i64 %80, !dbg !2868
  %82 = load i8*, i8** %10, align 8, !dbg !2869
  %83 = ptrtoint i8* %81 to i64, !dbg !2870
  %84 = ptrtoint i8* %82 to i64, !dbg !2870
  %85 = sub i64 %83, %84, !dbg !2870
  store i64 %85, i64* %14, align 8, !dbg !2871
  %86 = load i64, i64* %14, align 8, !dbg !2872
  %87 = trunc i64 %86 to i32, !dbg !2872
  %88 = call i8* @xmalloc(i32 %87), !dbg !2873
  %89 = load i8**, i8*** %6, align 8, !dbg !2874
  store i8* %88, i8** %89, align 8, !dbg !2875
  %90 = load i8**, i8*** %6, align 8, !dbg !2876
  %91 = load i8*, i8** %90, align 8, !dbg !2878
  %92 = load i8*, i8** %10, align 8, !dbg !2879
  %93 = load i64, i64* %14, align 8, !dbg !2880
  %94 = sub i64 %93, 1, !dbg !2881
  %95 = call i8* @strncpy(i8* %91, i8* %92, i64 %94) #10, !dbg !2882
  %96 = load i64, i64* %14, align 8, !dbg !2883
  %97 = sub i64 %96, 1, !dbg !2884
  %98 = load i8**, i8*** %6, align 8, !dbg !2885
  %99 = load i8*, i8** %98, align 8, !dbg !2886
  %100 = getelementptr inbounds i8, i8* %99, i64 %97, !dbg !2887
  store i8 0, i8* %100, align 1, !dbg !2888
  %101 = load i8*, i8** %11, align 8, !dbg !2889
  call void @xfree(i8* %101), !dbg !2890
  %102 = load i8*, i8** %9, align 8, !dbg !2891
  call void @xfree(i8* %102), !dbg !2892
  %103 = load i32, i32* %15, align 4, !dbg !2893
  ret i32 %103, !dbg !2894
}

; Function Attrs: nounwind uwtable
define i32 @subprocess(i8**, i32 (i8*, i8*)*, i8*) #0 !dbg !2895 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2900, metadata !539), !dbg !2901
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %6, metadata !2902, metadata !539), !dbg !2903
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2904, metadata !539), !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2906, metadata !539), !dbg !2909
  call void @llvm.dbg.declare(metadata [2 x i32]* %9, metadata !2910, metadata !539), !dbg !2914
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2915, metadata !539), !dbg !2916
  store i32 1, i32* %10, align 4, !dbg !2916
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !2917, metadata !539), !dbg !2918
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2919, metadata !539), !dbg !2920
  store i8* null, i8** %12, align 8, !dbg !2920
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i32 0, i32 0, !dbg !2921
  %14 = call i32 @pipe(i32* %13) #10, !dbg !2923
  %15 = icmp slt i32 %14, 0, !dbg !2924
  br i1 %15, label %16, label %20, !dbg !2925

; <label>:16:                                     ; preds = %3
  %17 = call i32* @__errno_location() #1, !dbg !2926
  %18 = load i32, i32* %17, align 4, !dbg !2928
  %19 = call i8* @strerror(i32 %18) #10, !dbg !2929
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0), i8* %19), !dbg !2931
  store i32 0, i32* %4, align 4, !dbg !2933
  br label %70, !dbg !2933

; <label>:20:                                     ; preds = %3
  %21 = call i32 @fork() #10, !dbg !2934
  store i32 %21, i32* %8, align 4, !dbg !2936
  %22 = icmp slt i32 %21, 0, !dbg !2937
  br i1 %22, label %23, label %27, !dbg !2938

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno_location() #1, !dbg !2939
  %25 = load i32, i32* %24, align 4, !dbg !2941
  %26 = call i8* @strerror(i32 %25) #10, !dbg !2942
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i32 0, i32 0), i8* %26), !dbg !2944
  store i32 0, i32* %4, align 4, !dbg !2946
  br label %70, !dbg !2946

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %8, align 4, !dbg !2947
  %29 = icmp eq i32 %28, 0, !dbg !2949
  br i1 %29, label %30, label %48, !dbg !2950

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2951
  %32 = load i32, i32* %31, align 4, !dbg !2951
  %33 = call i32 @close(i32 %32), !dbg !2953
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2954
  %35 = load i32, i32* %34, align 4, !dbg !2954
  %36 = call i32 @dup2(i32 %35, i32 1) #10, !dbg !2955
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2956
  %38 = load i32, i32* %37, align 4, !dbg !2956
  %39 = call i32 @dup2(i32 %38, i32 2) #10, !dbg !2957
  %40 = load i8**, i8*** %5, align 8, !dbg !2958
  %41 = getelementptr inbounds i8*, i8** %40, i64 0, !dbg !2958
  %42 = load i8*, i8** %41, align 8, !dbg !2958
  %43 = load i8**, i8*** %5, align 8, !dbg !2959
  %44 = call i32 @execvp(i8* %42, i8** %43) #10, !dbg !2960
  %45 = call i32* @__errno_location() #1, !dbg !2961
  %46 = load i32, i32* %45, align 4, !dbg !2962
  %47 = call i8* @strerror(i32 %46) #10, !dbg !2963
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i32 0, i32 0), i8* %47), !dbg !2965
  call void @_exit(i32 128) #12, !dbg !2967
  unreachable, !dbg !2967

; <label>:48:                                     ; preds = %27
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2968
  %50 = load i32, i32* %49, align 4, !dbg !2968
  %51 = call i32 @close(i32 %50), !dbg !2969
  br label %52, !dbg !2970

; <label>:52:                                     ; preds = %55, %48
  %53 = load i32, i32* %10, align 4, !dbg !2971
  %54 = icmp sgt i32 %53, 0, !dbg !2973
  br i1 %54, label %55, label %68, !dbg !2974

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2975
  %57 = load i32, i32* %56, align 4, !dbg !2975
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !2977
  %59 = call i64 @read(i32 %57, i8* %58, i64 255), !dbg !2978
  %60 = trunc i64 %59 to i32, !dbg !2978
  store i32 %60, i32* %10, align 4, !dbg !2979
  %61 = load i32, i32* %10, align 4, !dbg !2980
  %62 = sext i32 %61 to i64, !dbg !2981
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %62, !dbg !2981
  store i8 0, i8* %63, align 1, !dbg !2982
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !2983
  %65 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8, !dbg !2984
  %66 = load i8*, i8** %7, align 8, !dbg !2985
  %67 = call i32 @str_handle_lines(i8* %64, i8** %12, i32 (i8*, i8*)* %65, i8* %66), !dbg !2986
  br label %52, !dbg !2987, !llvm.loop !2989

; <label>:68:                                     ; preds = %52
  %69 = load i8*, i8** %12, align 8, !dbg !2990
  call void @xfree(i8* %69), !dbg !2991
  store i32 1, i32* %4, align 4, !dbg !2992
  br label %70, !dbg !2992

; <label>:70:                                     ; preds = %68, %23, %16
  %71 = load i32, i32* %4, align 4, !dbg !2993
  ret i32 %71, !dbg !2993
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #3

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: nounwind uwtable
define i8* @l_to_a(i64, i32) #0 !dbg !498 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [65 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2994, metadata !539), !dbg !2995
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2996, metadata !539), !dbg !2997
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2998, metadata !539), !dbg !2999
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @l_to_a.ret, i32 0, i32 0), i8** %5, align 8, !dbg !2999
  call void @llvm.dbg.declare(metadata [65 x i8]* %6, metadata !3000, metadata !539), !dbg !3001
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3002, metadata !539), !dbg !3003
  %9 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i32 0, i32 0, !dbg !3004
  %10 = getelementptr inbounds i8, i8* %9, i64 65, !dbg !3005
  store i8* %10, i8** %7, align 8, !dbg !3003
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3006, metadata !539), !dbg !3007
  %11 = load i32, i32* %4, align 4, !dbg !3008
  %12 = icmp slt i32 %11, 36, !dbg !3010
  br i1 %12, label %16, label %13, !dbg !3011

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %4, align 4, !dbg !3012
  %15 = icmp sgt i32 2, %14, !dbg !3014
  br i1 %15, label %16, label %17, !dbg !3015

; <label>:16:                                     ; preds = %13, %2
  store i32 10, i32* %4, align 4, !dbg !3016
  br label %17, !dbg !3017

; <label>:17:                                     ; preds = %16, %13
  %18 = load i64, i64* %3, align 8, !dbg !3018
  %19 = icmp slt i64 %18, 0, !dbg !3020
  br i1 %19, label %20, label %25, !dbg !3021

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %5, align 8, !dbg !3022
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !3022
  store i8* %22, i8** %5, align 8, !dbg !3022
  store i8 45, i8* %21, align 1, !dbg !3024
  %23 = load i64, i64* %3, align 8, !dbg !3025
  %24 = sub nsw i64 0, %23, !dbg !3026
  store i64 %24, i64* %3, align 8, !dbg !3027
  br label %25, !dbg !3028

; <label>:25:                                     ; preds = %20, %17
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i32 0, i32 0, !dbg !3029
  %27 = getelementptr inbounds i8, i8* %26, i64 65, !dbg !3030
  store i8* %27, i8** %7, align 8, !dbg !3031
  %28 = load i8*, i8** %7, align 8, !dbg !3032
  %29 = getelementptr inbounds i8, i8* %28, i32 -1, !dbg !3032
  store i8* %29, i8** %7, align 8, !dbg !3032
  store i8 0, i8* %29, align 1, !dbg !3033
  br label %30, !dbg !3034, !llvm.loop !3035

; <label>:30:                                     ; preds = %54, %25
  %31 = load i64, i64* %3, align 8, !dbg !3036
  %32 = load i32, i32* %4, align 4, !dbg !3038
  %33 = sext i32 %32 to i64, !dbg !3038
  %34 = srem i64 %31, %33, !dbg !3039
  %35 = trunc i64 %34 to i32, !dbg !3036
  store i32 %35, i32* %8, align 4, !dbg !3040
  %36 = load i32, i32* %8, align 4, !dbg !3041
  %37 = icmp sle i32 %36, 9, !dbg !3042
  br i1 %37, label %38, label %41, !dbg !3043

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %8, align 4, !dbg !3044
  %40 = add nsw i32 %39, 48, !dbg !3046
  br label %45, !dbg !3047

; <label>:41:                                     ; preds = %30
  %42 = load i32, i32* %8, align 4, !dbg !3048
  %43 = add nsw i32 %42, 97, !dbg !3050
  %44 = sub nsw i32 %43, 10, !dbg !3051
  br label %45, !dbg !3052

; <label>:45:                                     ; preds = %41, %38
  %46 = phi i32 [ %40, %38 ], [ %44, %41 ], !dbg !3053
  %47 = trunc i32 %46 to i8, !dbg !3053
  %48 = load i8*, i8** %7, align 8, !dbg !3055
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !3055
  store i8* %49, i8** %7, align 8, !dbg !3055
  store i8 %47, i8* %49, align 1, !dbg !3056
  %50 = load i32, i32* %4, align 4, !dbg !3057
  %51 = sext i32 %50 to i64, !dbg !3057
  %52 = load i64, i64* %3, align 8, !dbg !3058
  %53 = sdiv i64 %52, %51, !dbg !3058
  store i64 %53, i64* %3, align 8, !dbg !3058
  br label %54, !dbg !3059

; <label>:54:                                     ; preds = %45
  %55 = load i64, i64* %3, align 8, !dbg !3060
  %56 = icmp ne i64 %55, 0, !dbg !3061
  br i1 %56, label %30, label %57, !dbg !3061, !llvm.loop !3035

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %5, align 8, !dbg !3062
  %59 = load i8*, i8** %7, align 8, !dbg !3063
  %60 = call i8* @strcpy(i8* %58, i8* %59) #10, !dbg !3064
  ret i8* getelementptr inbounds ([65 x i8], [65 x i8]* @l_to_a.ret, i32 0, i32 0), !dbg !3065
}

; Function Attrs: nounwind uwtable
define i32 @load_licence(i8**) #0 !dbg !3066 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [41 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !3070, metadata !539), !dbg !3071
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !3072, metadata !539), !dbg !3076
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !3077, metadata !539), !dbg !3078
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3079, metadata !539), !dbg !3080
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !3081, metadata !539), !dbg !3082
  call void @llvm.dbg.declare(metadata [41 x i8]* %8, metadata !3083, metadata !539), !dbg !3087
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !3088, metadata !539), !dbg !3089
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3090, metadata !539), !dbg !3091
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3092, metadata !539), !dbg !3093
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #10, !dbg !3094
  store i8* %12, i8** %6, align 8, !dbg !3095
  %13 = load i8*, i8** %6, align 8, !dbg !3096
  %14 = icmp eq i8* %13, null, !dbg !3098
  br i1 %14, label %15, label %16, !dbg !3099

; <label>:15:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !3100
  br label %66, !dbg !3100

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !3101
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 16, i32 16, i1 false), !dbg !3101
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !3102
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0)) #10, !dbg !3103
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !3104
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !3105
  call void @sec_hash_sha1_16(i8* %20, i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_static_rdesktop_salt_16, i32 0, i32 0)), !dbg !3106
  %22 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i32 0, i32 0, !dbg !3107
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !3108
  call void @sec_hash_to_string(i8* %22, i32 41, i8* %23, i32 20), !dbg !3109
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3110
  %25 = load i8*, i8** %6, align 8, !dbg !3111
  %26 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i32 0, i32 0, !dbg !3112
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %24, i64 4096, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.79, i32 0, i32 0), i8* %25, i8* %26) #10, !dbg !3113
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 4095, !dbg !3114
  store i8 0, i8* %28, align 1, !dbg !3115
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3116
  %30 = call i32 (i8*, i32, ...) @open(i8* %29, i32 0), !dbg !3117
  store i32 %30, i32* %10, align 4, !dbg !3118
  %31 = load i32, i32* %10, align 4, !dbg !3119
  %32 = icmp eq i32 %31, -1, !dbg !3121
  br i1 %32, label %33, label %43, !dbg !3122

; <label>:33:                                     ; preds = %16
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3123
  %35 = load i8*, i8** %6, align 8, !dbg !3125
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %34, i64 4096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0)) #10, !dbg !3126
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 4095, !dbg !3127
  store i8 0, i8* %37, align 1, !dbg !3128
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !3129
  %39 = call i32 (i8*, i32, ...) @open(i8* %38, i32 0), !dbg !3131
  store i32 %39, i32* %10, align 4, !dbg !3132
  %40 = icmp eq i32 %39, -1, !dbg !3133
  br i1 %40, label %41, label %42, !dbg !3134

; <label>:41:                                     ; preds = %33
  store i32 -1, i32* %2, align 4, !dbg !3135
  br label %66, !dbg !3135

; <label>:42:                                     ; preds = %33
  br label %43, !dbg !3136

; <label>:43:                                     ; preds = %42, %16
  %44 = load i32, i32* %10, align 4, !dbg !3137
  %45 = call i32 @fstat(i32 %44, %struct.stat* %9) #10, !dbg !3139
  %46 = icmp ne i32 %45, 0, !dbg !3139
  br i1 %46, label %47, label %50, !dbg !3140

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %10, align 4, !dbg !3141
  %49 = call i32 @close(i32 %48), !dbg !3143
  store i32 -1, i32* %2, align 4, !dbg !3144
  br label %66, !dbg !3144

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !3145
  %52 = load i64, i64* %51, align 8, !dbg !3145
  %53 = trunc i64 %52 to i32, !dbg !3146
  %54 = call i8* @xmalloc(i32 %53), !dbg !3147
  %55 = load i8**, i8*** %3, align 8, !dbg !3148
  store i8* %54, i8** %55, align 8, !dbg !3149
  %56 = load i32, i32* %10, align 4, !dbg !3150
  %57 = load i8**, i8*** %3, align 8, !dbg !3151
  %58 = load i8*, i8** %57, align 8, !dbg !3152
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !3153
  %60 = load i64, i64* %59, align 8, !dbg !3153
  %61 = call i64 @read(i32 %56, i8* %58, i64 %60), !dbg !3154
  %62 = trunc i64 %61 to i32, !dbg !3154
  store i32 %62, i32* %11, align 4, !dbg !3155
  %63 = load i32, i32* %10, align 4, !dbg !3156
  %64 = call i32 @close(i32 %63), !dbg !3157
  %65 = load i32, i32* %11, align 4, !dbg !3158
  store i32 %65, i32* %2, align 4, !dbg !3159
  br label %66, !dbg !3159

; <label>:66:                                     ; preds = %50, %47, %41, %15
  %67 = load i32, i32* %2, align 4, !dbg !3160
  ret i32 %67, !dbg !3160
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @sec_hash_sha1_16(i8*, i8*, i8*) #4

declare void @sec_hash_to_string(i8*, i32, i8*, i32) #4

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define void @save_licence(i8*, i32) #0 !dbg !3161 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [41 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3164, metadata !539), !dbg !3165
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3166, metadata !539), !dbg !3167
  call void @llvm.dbg.declare(metadata [20 x i8]* %5, metadata !3168, metadata !539), !dbg !3169
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !3170, metadata !539), !dbg !3171
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3172, metadata !539), !dbg !3173
  call void @llvm.dbg.declare(metadata [4096 x i8]* %8, metadata !3174, metadata !539), !dbg !3175
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !3176, metadata !539), !dbg !3177
  call void @llvm.dbg.declare(metadata [41 x i8]* %10, metadata !3178, metadata !539), !dbg !3179
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3180, metadata !539), !dbg !3181
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #10, !dbg !3182
  store i8* %12, i8** %7, align 8, !dbg !3183
  %13 = load i8*, i8** %7, align 8, !dbg !3184
  %14 = icmp eq i8* %13, null, !dbg !3186
  br i1 %14, label %15, label %16, !dbg !3187

; <label>:15:                                     ; preds = %2
  br label %83, !dbg !3188

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !3189
  %18 = load i8*, i8** %7, align 8, !dbg !3190
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 4096, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0), i8* %18) #10, !dbg !3191
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 4095, !dbg !3192
  store i8 0, i8* %20, align 1, !dbg !3193
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !3194
  %22 = call i32 @utils_mkdir_p(i8* %21, i32 448), !dbg !3196
  %23 = icmp eq i32 %22, -1, !dbg !3197
  br i1 %23, label %24, label %28, !dbg !3198

; <label>:24:                                     ; preds = %16
  %25 = call i32* @__errno_location() #1, !dbg !3199
  %26 = load i32, i32* %25, align 4, !dbg !3201
  %27 = call i8* @strerror(i32 %26) #10, !dbg !3202
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i8* %27), !dbg !3204
  br label %83, !dbg !3206

; <label>:28:                                     ; preds = %16
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3207
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 16, i32 16, i1 false), !dbg !3207
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3208
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %30, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0)) #10, !dbg !3209
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !3210
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3211
  call void @sec_hash_sha1_16(i8* %32, i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_static_rdesktop_salt_16, i32 0, i32 0)), !dbg !3212
  %34 = getelementptr inbounds [41 x i8], [41 x i8]* %10, i32 0, i32 0, !dbg !3213
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !3214
  call void @sec_hash_to_string(i8* %34, i32 41, i8* %35, i32 20), !dbg !3215
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !3216
  %37 = load i8*, i8** %7, align 8, !dbg !3217
  %38 = getelementptr inbounds [41 x i8], [41 x i8]* %10, i32 0, i32 0, !dbg !3218
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 4096, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.79, i32 0, i32 0), i8* %37, i8* %38) #10, !dbg !3219
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 4095, !dbg !3220
  store i8 0, i8* %40, align 1, !dbg !3221
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !3222
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !3223
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* %42) #10, !dbg !3224
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 4095, !dbg !3225
  store i8 0, i8* %44, align 1, !dbg !3226
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !3227
  %46 = call i32 (i8*, i32, ...) @open(i8* %45, i32 577, i32 384), !dbg !3228
  store i32 %46, i32* %11, align 4, !dbg !3229
  %47 = load i32, i32* %11, align 4, !dbg !3230
  %48 = icmp eq i32 %47, -1, !dbg !3232
  br i1 %48, label %49, label %53, !dbg !3233

; <label>:49:                                     ; preds = %28
  %50 = call i32* @__errno_location() #1, !dbg !3234
  %51 = load i32, i32* %50, align 4, !dbg !3236
  %52 = call i8* @strerror(i32 %51) #10, !dbg !3237
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %52), !dbg !3239
  br label %83, !dbg !3241

; <label>:53:                                     ; preds = %28
  %54 = load i32, i32* %11, align 4, !dbg !3242
  %55 = load i8*, i8** %3, align 8, !dbg !3244
  %56 = load i32, i32* %4, align 4, !dbg !3245
  %57 = sext i32 %56 to i64, !dbg !3245
  %58 = call i64 @write(i32 %54, i8* %55, i64 %57), !dbg !3246
  %59 = load i32, i32* %4, align 4, !dbg !3247
  %60 = sext i32 %59 to i64, !dbg !3247
  %61 = icmp ne i64 %58, %60, !dbg !3248
  br i1 %61, label %62, label %68, !dbg !3249

; <label>:62:                                     ; preds = %53
  %63 = call i32* @__errno_location() #1, !dbg !3250
  %64 = load i32, i32* %63, align 4, !dbg !3252
  %65 = call i8* @strerror(i32 %64) #10, !dbg !3253
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i32 0, i32 0), i8* %65), !dbg !3255
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !3257
  %67 = call i32 @unlink(i8* %66) #10, !dbg !3258
  br label %80, !dbg !3259

; <label>:68:                                     ; preds = %53
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !3260
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !3262
  %71 = call i32 @rename(i8* %69, i8* %70) #10, !dbg !3263
  %72 = icmp eq i32 %71, -1, !dbg !3264
  br i1 %72, label %73, label %79, !dbg !3265

; <label>:73:                                     ; preds = %68
  %74 = call i32* @__errno_location() #1, !dbg !3266
  %75 = load i32, i32* %74, align 4, !dbg !3268
  %76 = call i8* @strerror(i32 %75) #10, !dbg !3269
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* %76), !dbg !3271
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !3273
  %78 = call i32 @unlink(i8* %77) #10, !dbg !3274
  br label %79, !dbg !3275

; <label>:79:                                     ; preds = %73, %68
  br label %80

; <label>:80:                                     ; preds = %79, %62
  %81 = load i32, i32* %11, align 4, !dbg !3276
  %82 = call i32 @close(i32 %81), !dbg !3277
  br label %83, !dbg !3278

; <label>:83:                                     ; preds = %80, %49, %24, %15
  ret void, !dbg !3279
}

declare i32 @utils_mkdir_p(i8*, i32) #4

declare i64 @write(i32, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare i32 @ui_have_window() #4

declare i32 @ui_create_window(i32, i32) #4

declare void @ui_reset_clip() #4

; Function Attrs: nounwind uwtable
define i32 @rd_pstcache_mkdir() #0 !dbg !3281 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3284, metadata !539), !dbg !3285
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !3286, metadata !539), !dbg !3287
  %4 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #10, !dbg !3288
  store i8* %4, i8** %2, align 8, !dbg !3289
  %5 = load i8*, i8** %2, align 8, !dbg !3290
  %6 = icmp eq i8* %5, null, !dbg !3292
  br i1 %6, label %7, label %8, !dbg !3293

; <label>:7:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !3294
  br label %39, !dbg !3294

; <label>:8:                                      ; preds = %0
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !3295
  %10 = load i8*, i8** %2, align 8, !dbg !3296
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0)) #10, !dbg !3297
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !3298
  %13 = call i32 @mkdir(i8* %12, i32 448) #10, !dbg !3300
  %14 = icmp eq i32 %13, -1, !dbg !3301
  br i1 %14, label %15, label %23, !dbg !3302

; <label>:15:                                     ; preds = %8
  %16 = call i32* @__errno_location() #1, !dbg !3303
  %17 = load i32, i32* %16, align 4, !dbg !3305
  %18 = icmp ne i32 %17, 17, !dbg !3306
  br i1 %18, label %19, label %23, !dbg !3307

; <label>:19:                                     ; preds = %15
  %20 = call i32* @__errno_location() #1, !dbg !3308
  %21 = load i32, i32* %20, align 4, !dbg !3310
  %22 = call i8* @strerror(i32 %21) #10, !dbg !3311
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.89, i32 0, i32 0), i8* %22), !dbg !3313
  store i32 0, i32* %1, align 4, !dbg !3315
  br label %39, !dbg !3315

; <label>:23:                                     ; preds = %15, %8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !3316
  %25 = load i8*, i8** %2, align 8, !dbg !3317
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0)) #10, !dbg !3318
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !3319
  %28 = call i32 @mkdir(i8* %27, i32 448) #10, !dbg !3321
  %29 = icmp eq i32 %28, -1, !dbg !3322
  br i1 %29, label %30, label %38, !dbg !3323

; <label>:30:                                     ; preds = %23
  %31 = call i32* @__errno_location() #1, !dbg !3324
  %32 = load i32, i32* %31, align 4, !dbg !3326
  %33 = icmp ne i32 %32, 17, !dbg !3327
  br i1 %33, label %34, label %38, !dbg !3328

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno_location() #1, !dbg !3329
  %36 = load i32, i32* %35, align 4, !dbg !3331
  %37 = call i8* @strerror(i32 %36) #10, !dbg !3332
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.89, i32 0, i32 0), i8* %37), !dbg !3334
  store i32 0, i32* %1, align 4, !dbg !3336
  br label %39, !dbg !3336

; <label>:38:                                     ; preds = %30, %23
  store i32 1, i32* %1, align 4, !dbg !3337
  br label %39, !dbg !3337

; <label>:39:                                     ; preds = %38, %34, %19, %7
  %40 = load i32, i32* %1, align 4, !dbg !3338
  ret i32 %40, !dbg !3338
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @rd_open_file(i8*) #0 !dbg !3339 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3342, metadata !539), !dbg !3343
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3344, metadata !539), !dbg !3345
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !3346, metadata !539), !dbg !3347
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3348, metadata !539), !dbg !3349
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #10, !dbg !3350
  store i8* %7, i8** %4, align 8, !dbg !3351
  %8 = load i8*, i8** %4, align 8, !dbg !3352
  %9 = icmp eq i8* %8, null, !dbg !3354
  br i1 %9, label %10, label %11, !dbg !3355

; <label>:10:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !3356
  br label %26, !dbg !3356

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !3357
  %13 = load i8*, i8** %4, align 8, !dbg !3358
  %14 = load i8*, i8** %3, align 8, !dbg !3359
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0), i8* %13, i8* %14) #10, !dbg !3360
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !3361
  %17 = call i32 (i8*, i32, ...) @open(i8* %16, i32 66, i32 384), !dbg !3362
  store i32 %17, i32* %6, align 4, !dbg !3363
  %18 = load i32, i32* %6, align 4, !dbg !3364
  %19 = icmp eq i32 %18, -1, !dbg !3366
  br i1 %19, label %20, label %24, !dbg !3367

; <label>:20:                                     ; preds = %11
  %21 = call i32* @__errno_location() #1, !dbg !3368
  %22 = load i32, i32* %21, align 4, !dbg !3369
  %23 = call i8* @strerror(i32 %22) #10, !dbg !3370
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i32 0, i32 0), i8* %23), !dbg !3372
  br label %24, !dbg !3374

; <label>:24:                                     ; preds = %20, %11
  %25 = load i32, i32* %6, align 4, !dbg !3375
  store i32 %25, i32* %2, align 4, !dbg !3376
  br label %26, !dbg !3376

; <label>:26:                                     ; preds = %24, %10
  %27 = load i32, i32* %2, align 4, !dbg !3377
  ret i32 %27, !dbg !3377
}

; Function Attrs: nounwind uwtable
define void @rd_close_file(i32) #0 !dbg !3378 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3379, metadata !539), !dbg !3380
  %3 = load i32, i32* %2, align 4, !dbg !3381
  %4 = call i32 @close(i32 %3), !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: nounwind uwtable
define i32 @rd_read_file(i32, i8*, i32) #0 !dbg !3384 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3387, metadata !539), !dbg !3388
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3389, metadata !539), !dbg !3390
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3391, metadata !539), !dbg !3392
  %7 = load i32, i32* %4, align 4, !dbg !3393
  %8 = load i8*, i8** %5, align 8, !dbg !3394
  %9 = load i32, i32* %6, align 4, !dbg !3395
  %10 = sext i32 %9 to i64, !dbg !3395
  %11 = call i64 @read(i32 %7, i8* %8, i64 %10), !dbg !3396
  %12 = trunc i64 %11 to i32, !dbg !3396
  ret i32 %12, !dbg !3397
}

; Function Attrs: nounwind uwtable
define i32 @rd_write_file(i32, i8*, i32) #0 !dbg !3398 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3399, metadata !539), !dbg !3400
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3401, metadata !539), !dbg !3402
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3403, metadata !539), !dbg !3404
  %7 = load i32, i32* %4, align 4, !dbg !3405
  %8 = load i8*, i8** %5, align 8, !dbg !3406
  %9 = load i32, i32* %6, align 4, !dbg !3407
  %10 = sext i32 %9 to i64, !dbg !3407
  %11 = call i64 @write(i32 %7, i8* %8, i64 %10), !dbg !3408
  %12 = trunc i64 %11 to i32, !dbg !3408
  ret i32 %12, !dbg !3409
}

; Function Attrs: nounwind uwtable
define i32 @rd_lseek_file(i32, i32) #0 !dbg !3410 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3413, metadata !539), !dbg !3414
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3415, metadata !539), !dbg !3416
  %5 = load i32, i32* %3, align 4, !dbg !3417
  %6 = load i32, i32* %4, align 4, !dbg !3418
  %7 = sext i32 %6 to i64, !dbg !3418
  %8 = call i64 @lseek(i32 %5, i64 %7, i32 0) #10, !dbg !3419
  %9 = trunc i64 %8 to i32, !dbg !3419
  ret i32 %9, !dbg !3420
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define i32 @rd_lock_file(i32, i32, i32) #0 !dbg !3421 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.flock, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3424, metadata !539), !dbg !3425
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3426, metadata !539), !dbg !3427
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3428, metadata !539), !dbg !3429
  call void @llvm.dbg.declare(metadata %struct.flock* %8, metadata !3430, metadata !539), !dbg !3439
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0, !dbg !3440
  store i16 1, i16* %9, align 8, !dbg !3441
  %10 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1, !dbg !3442
  store i16 0, i16* %10, align 2, !dbg !3443
  %11 = load i32, i32* %6, align 4, !dbg !3444
  %12 = sext i32 %11 to i64, !dbg !3444
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 2, !dbg !3445
  store i64 %12, i64* %13, align 8, !dbg !3446
  %14 = load i32, i32* %7, align 4, !dbg !3447
  %15 = sext i32 %14 to i64, !dbg !3447
  %16 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 3, !dbg !3448
  store i64 %15, i64* %16, align 8, !dbg !3449
  %17 = load i32, i32* %5, align 4, !dbg !3450
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %17, i32 6, %struct.flock* %8), !dbg !3452
  %19 = icmp eq i32 %18, -1, !dbg !3453
  br i1 %19, label %20, label %21, !dbg !3454

; <label>:20:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !3455
  br label %22, !dbg !3455

; <label>:21:                                     ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !3456
  br label %22, !dbg !3456

; <label>:22:                                     ; preds = %21, %20
  %23 = load i32, i32* %4, align 4, !dbg !3457
  ret i32 %23, !dbg !3457
}

declare i32 @fcntl(i32, i32, ...) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare void @rdpsnd_show_help() #4

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal void @setup_user_requested_session_size() #0 !dbg !3458 {
  %1 = load i32, i32* @g_window_size_type, align 4, !dbg !3459
  switch i32 %1, label %8 [
    i32 3, label %2
    i32 2, label %3
    i32 0, label %4
    i32 1, label %5
  ], !dbg !3460

; <label>:2:                                      ; preds = %0
  call void @ui_get_screen_size(i32* @g_requested_session_width, i32* @g_requested_session_height), !dbg !3461
  br label %8, !dbg !3463

; <label>:3:                                      ; preds = %0
  call void @ui_get_workarea_size(i32* @g_requested_session_width, i32* @g_requested_session_height), !dbg !3464
  br label %8, !dbg !3465

; <label>:4:                                      ; preds = %0
  br label %8, !dbg !3466

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @g_requested_session_width, align 4, !dbg !3467
  %7 = load i32, i32* @g_requested_session_height, align 4, !dbg !3468
  call void @ui_get_screen_size_from_percentage(i32 %6, i32 %7, i32* @g_requested_session_width, i32* @g_requested_session_height), !dbg !3469
  br label %8, !dbg !3470

; <label>:8:                                      ; preds = %0, %5, %4, %3, %2
  ret void, !dbg !3471
}

declare void @ui_get_screen_size(i32*, i32*) #4

declare void @ui_get_workarea_size(i32*, i32*) #4

declare void @ui_get_screen_size_from_percentage(i32, i32, i32*, i32*) #4

declare void @rdp_reset_state() #4

declare void @rdpsnd_reset_state() #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @connect(i32, %struct.sockaddr*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!530, !531}
!llvm.ident = !{!532}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !384, globals: !422)
!1 = !DIFile(filename: "[inter]rdesktop.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !10, !15, !27, !34, !372}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 311, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "Fixed", value: 0)
!7 = !DIEnumerator(name: "PercentageOfScreen", value: 1)
!8 = !DIEnumerator(name: "Workarea", value: 2)
!9 = !DIEnumerator(name: "Fullscreen", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !4, line: 52, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "RDP_V4", value: 4)
!13 = !DIEnumerator(name: "RDP_V5", value: 5)
!14 = !DIEnumerator(name: "RDP_V6", value: 6)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !16, line: 46, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DIEnumerator(name: "GUI", value: 0)
!19 = !DIEnumerator(name: "Keyboard", value: 1)
!20 = !DIEnumerator(name: "Clipboard", value: 2)
!21 = !DIEnumerator(name: "Sound", value: 3)
!22 = !DIEnumerator(name: "Protocol", value: 4)
!23 = !DIEnumerator(name: "Graphics", value: 5)
!24 = !DIEnumerator(name: "Core", value: 6)
!25 = !DIEnumerator(name: "SmartCard", value: 7)
!26 = !DIEnumerator(name: "Disk", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !16, line: 37, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "Debug", value: 0)
!30 = !DIEnumerator(name: "Verbose", value: 1)
!31 = !DIEnumerator(name: "Warning", value: 2)
!32 = !DIEnumerator(name: "Error", value: 3)
!33 = !DIEnumerator(name: "Notice", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 41, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!37 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!38 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!39 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!40 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!41 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!42 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!43 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!44 = !DIEnumerator(name: "DAY_1", value: 131079)
!45 = !DIEnumerator(name: "DAY_2", value: 131080)
!46 = !DIEnumerator(name: "DAY_3", value: 131081)
!47 = !DIEnumerator(name: "DAY_4", value: 131082)
!48 = !DIEnumerator(name: "DAY_5", value: 131083)
!49 = !DIEnumerator(name: "DAY_6", value: 131084)
!50 = !DIEnumerator(name: "DAY_7", value: 131085)
!51 = !DIEnumerator(name: "ABMON_1", value: 131086)
!52 = !DIEnumerator(name: "ABMON_2", value: 131087)
!53 = !DIEnumerator(name: "ABMON_3", value: 131088)
!54 = !DIEnumerator(name: "ABMON_4", value: 131089)
!55 = !DIEnumerator(name: "ABMON_5", value: 131090)
!56 = !DIEnumerator(name: "ABMON_6", value: 131091)
!57 = !DIEnumerator(name: "ABMON_7", value: 131092)
!58 = !DIEnumerator(name: "ABMON_8", value: 131093)
!59 = !DIEnumerator(name: "ABMON_9", value: 131094)
!60 = !DIEnumerator(name: "ABMON_10", value: 131095)
!61 = !DIEnumerator(name: "ABMON_11", value: 131096)
!62 = !DIEnumerator(name: "ABMON_12", value: 131097)
!63 = !DIEnumerator(name: "MON_1", value: 131098)
!64 = !DIEnumerator(name: "MON_2", value: 131099)
!65 = !DIEnumerator(name: "MON_3", value: 131100)
!66 = !DIEnumerator(name: "MON_4", value: 131101)
!67 = !DIEnumerator(name: "MON_5", value: 131102)
!68 = !DIEnumerator(name: "MON_6", value: 131103)
!69 = !DIEnumerator(name: "MON_7", value: 131104)
!70 = !DIEnumerator(name: "MON_8", value: 131105)
!71 = !DIEnumerator(name: "MON_9", value: 131106)
!72 = !DIEnumerator(name: "MON_10", value: 131107)
!73 = !DIEnumerator(name: "MON_11", value: 131108)
!74 = !DIEnumerator(name: "MON_12", value: 131109)
!75 = !DIEnumerator(name: "AM_STR", value: 131110)
!76 = !DIEnumerator(name: "PM_STR", value: 131111)
!77 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!78 = !DIEnumerator(name: "D_FMT", value: 131113)
!79 = !DIEnumerator(name: "T_FMT", value: 131114)
!80 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!81 = !DIEnumerator(name: "ERA", value: 131116)
!82 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!83 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!84 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!85 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!86 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!87 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!88 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!89 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!90 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!91 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!92 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!93 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!94 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!95 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!96 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!97 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!98 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!99 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!100 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!101 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!102 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!103 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!104 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!105 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!106 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!107 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!108 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!109 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!110 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!111 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!112 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!113 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!114 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!115 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!116 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!117 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!118 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!119 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!120 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!121 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!122 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!123 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!124 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!125 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!126 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!127 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!128 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!129 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!130 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!131 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!132 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!133 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!134 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!135 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!136 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!137 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!138 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!139 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!140 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!141 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!142 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!143 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!144 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!145 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!146 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!147 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!148 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!149 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!150 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!151 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!152 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!153 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!154 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!155 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!156 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!157 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!158 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!159 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!160 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!161 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!162 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!163 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!164 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!165 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!166 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!167 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!168 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!169 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!170 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!171 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!172 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!173 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!174 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!175 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!176 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!177 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!178 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!179 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!180 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!181 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!182 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!183 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!184 = !DIEnumerator(name: "CODESET", value: 14)
!185 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!186 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!187 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!188 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!189 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!190 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!191 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!192 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!193 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!194 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!195 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!196 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!197 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!198 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!199 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!200 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!201 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!202 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!203 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!204 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!205 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!206 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!207 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!208 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!209 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!210 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!211 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!212 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!213 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!214 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!215 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!216 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!217 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!218 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!219 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!220 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!221 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!222 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!223 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!224 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!225 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!226 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!227 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!228 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!229 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!230 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!231 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!232 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!233 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!234 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!235 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!236 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!237 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!238 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!239 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!240 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!241 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!242 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!243 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!244 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!245 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!246 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!247 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!248 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!249 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!250 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!251 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!252 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!253 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!254 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!255 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!256 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!257 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!258 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!259 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!260 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!261 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!262 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!263 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!264 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!265 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!266 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!267 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!268 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!269 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!270 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!271 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!272 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!273 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!274 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!275 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!276 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!277 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!278 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!279 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!280 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!281 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!282 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!283 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!284 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!285 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!286 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!287 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!288 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!289 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!290 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!291 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!292 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!293 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!294 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!295 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!296 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!297 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!298 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!299 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!300 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!301 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!302 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!303 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!304 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!305 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!306 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!307 = !DIEnumerator(name: "THOUSEP", value: 65537)
!308 = !DIEnumerator(name: "__GROUPING", value: 65538)
!309 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!310 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!311 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!312 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!313 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!314 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!315 = !DIEnumerator(name: "__YESSTR", value: 327682)
!316 = !DIEnumerator(name: "__NOSTR", value: 327683)
!317 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!318 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!319 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!320 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!321 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!322 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!323 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!324 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!325 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!326 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!327 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!328 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!329 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!330 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!331 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!332 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!333 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!334 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!335 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!336 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!337 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!338 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!339 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!340 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!341 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!342 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!343 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!344 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!345 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!346 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!347 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!348 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!349 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!350 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!351 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!352 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!353 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!354 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!355 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!356 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!357 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!358 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!359 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!360 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!361 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!362 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!363 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!364 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!365 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!366 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!367 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!368 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!369 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!370 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!371 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !373, line: 24, size: 32, align: 32, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!376 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!377 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!378 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!379 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!380 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!381 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!382 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!383 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!384 = !{!385, !391, !393, !394, !395, !397, !392, !390, !407, !410}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !386, line: 85, baseType: !387)
!386 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!394 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !4, line: 43, baseType: !394)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !399, line: 30, size: 128, align: 64, elements: !400)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!400 = !{!401, !405}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !398, file: !399, line: 32, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !403, line: 139, baseType: !404)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!404 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !398, file: !399, line: 33, baseType: !406, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !403, line: 141, baseType: !404)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !4, line: 39, baseType: !409)
!409 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !412, line: 153, size: 128, align: 16, elements: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!413 = !{!414, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !411, file: !412, line: 155, baseType: !415, size: 16, align: 16)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !416, line: 28, baseType: !417)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!417 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !411, file: !412, line: 156, baseType: !419, size: 112, align: 8, offset: 16)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 112, align: 8, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 14)
!422 = !{!423, !428, !432, !433, !435, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !452, !453, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !505, !506, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !526}
!423 = distinct !DIGlobalVariable(name: "g_static_rdesktop_salt_16", scope: !0, file: !424, line: 56, type: !425, isLocal: false, isDefinition: true, variable: [16 x i8]* @g_static_rdesktop_salt_16)
!424 = !DIFile(filename: "rdesktop.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 128, align: 8, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 16)
!428 = distinct !DIGlobalVariable(name: "g_title", scope: !0, file: !424, line: 61, type: !429, isLocal: false, isDefinition: true, variable: [64 x i8]* @g_title)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, align: 8, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 64)
!432 = distinct !DIGlobalVariable(name: "g_password", scope: !0, file: !424, line: 63, type: !429, isLocal: false, isDefinition: true, variable: [64 x i8]* @g_password)
!433 = distinct !DIGlobalVariable(name: "g_hostname", scope: !0, file: !424, line: 64, type: !434, isLocal: false, isDefinition: true, variable: [16 x i8]* @g_hostname)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, align: 8, elements: !426)
!435 = distinct !DIGlobalVariable(name: "g_keymapname", scope: !0, file: !424, line: 65, type: !436, isLocal: false, isDefinition: true, variable: [4096 x i8]* @g_keymapname)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 32768, align: 8, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 4096)
!439 = distinct !DIGlobalVariable(name: "g_keylayout", scope: !0, file: !424, line: 66, type: !394, isLocal: false, isDefinition: true, variable: i32* @g_keylayout)
!440 = distinct !DIGlobalVariable(name: "g_keyboard_type", scope: !0, file: !424, line: 67, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_keyboard_type)
!441 = distinct !DIGlobalVariable(name: "g_keyboard_subtype", scope: !0, file: !424, line: 68, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_keyboard_subtype)
!442 = distinct !DIGlobalVariable(name: "g_keyboard_functionkeys", scope: !0, file: !424, line: 69, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_keyboard_functionkeys)
!443 = distinct !DIGlobalVariable(name: "g_dpi", scope: !0, file: !424, line: 70, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_dpi)
!444 = distinct !DIGlobalVariable(name: "g_requested_session_width", scope: !0, file: !424, line: 75, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_requested_session_width)
!445 = distinct !DIGlobalVariable(name: "g_requested_session_height", scope: !0, file: !424, line: 76, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_requested_session_height)
!446 = distinct !DIGlobalVariable(name: "g_window_size_type", scope: !0, file: !424, line: 78, type: !447, isLocal: false, isDefinition: true, variable: i32* @g_window_size_type)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "window_size_type_t", file: !4, line: 316, baseType: !3)
!448 = distinct !DIGlobalVariable(name: "g_xpos", scope: !0, file: !424, line: 81, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_xpos)
!449 = distinct !DIGlobalVariable(name: "g_ypos", scope: !0, file: !424, line: 82, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_ypos)
!450 = distinct !DIGlobalVariable(name: "g_pos", scope: !0, file: !424, line: 83, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_pos)
!451 = distinct !DIGlobalVariable(name: "g_server_depth", scope: !0, file: !424, line: 88, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_server_depth)
!452 = distinct !DIGlobalVariable(name: "g_win_button_size", scope: !0, file: !424, line: 89, type: !390, isLocal: false, isDefinition: true, variable: i32* @g_win_button_size)
!453 = distinct !DIGlobalVariable(name: "g_network_error", scope: !0, file: !424, line: 90, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_network_error)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !4, line: 28, baseType: !390)
!455 = distinct !DIGlobalVariable(name: "g_sendmotion", scope: !0, file: !424, line: 91, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_sendmotion)
!456 = distinct !DIGlobalVariable(name: "g_bitmap_cache", scope: !0, file: !424, line: 92, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_bitmap_cache)
!457 = distinct !DIGlobalVariable(name: "g_bitmap_cache_persist_enable", scope: !0, file: !424, line: 93, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_bitmap_cache_persist_enable)
!458 = distinct !DIGlobalVariable(name: "g_bitmap_cache_precache", scope: !0, file: !424, line: 94, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_bitmap_cache_precache)
!459 = distinct !DIGlobalVariable(name: "g_use_ctrl", scope: !0, file: !424, line: 95, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_use_ctrl)
!460 = distinct !DIGlobalVariable(name: "g_encryption", scope: !0, file: !424, line: 96, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_encryption)
!461 = distinct !DIGlobalVariable(name: "g_encryption_initial", scope: !0, file: !424, line: 97, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_encryption_initial)
!462 = distinct !DIGlobalVariable(name: "g_packet_encryption", scope: !0, file: !424, line: 98, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_packet_encryption)
!463 = distinct !DIGlobalVariable(name: "g_desktop_save", scope: !0, file: !424, line: 99, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_desktop_save)
!464 = distinct !DIGlobalVariable(name: "g_polygon_ellipse_orders", scope: !0, file: !424, line: 100, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_polygon_ellipse_orders)
!465 = distinct !DIGlobalVariable(name: "g_fullscreen", scope: !0, file: !424, line: 101, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_fullscreen)
!466 = distinct !DIGlobalVariable(name: "g_grab_keyboard", scope: !0, file: !424, line: 102, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_grab_keyboard)
!467 = distinct !DIGlobalVariable(name: "g_local_cursor", scope: !0, file: !424, line: 103, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_local_cursor)
!468 = distinct !DIGlobalVariable(name: "g_hide_decorations", scope: !0, file: !424, line: 104, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_hide_decorations)
!469 = distinct !DIGlobalVariable(name: "g_rdp_version", scope: !0, file: !424, line: 105, type: !470, isLocal: false, isDefinition: true, variable: i32* @g_rdp_version)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "RDP_VERSION", file: !4, line: 57, baseType: !10)
!471 = distinct !DIGlobalVariable(name: "g_rdpclip", scope: !0, file: !424, line: 106, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_rdpclip)
!472 = distinct !DIGlobalVariable(name: "g_console_session", scope: !0, file: !424, line: 107, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_console_session)
!473 = distinct !DIGlobalVariable(name: "g_numlock_sync", scope: !0, file: !424, line: 108, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_numlock_sync)
!474 = distinct !DIGlobalVariable(name: "g_lspci_enabled", scope: !0, file: !424, line: 109, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_lspci_enabled)
!475 = distinct !DIGlobalVariable(name: "g_owncolmap", scope: !0, file: !424, line: 110, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_owncolmap)
!476 = distinct !DIGlobalVariable(name: "g_ownbackstore", scope: !0, file: !424, line: 111, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_ownbackstore)
!477 = distinct !DIGlobalVariable(name: "g_seamless_rdp", scope: !0, file: !424, line: 112, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_seamless_rdp)
!478 = distinct !DIGlobalVariable(name: "g_use_password_as_pin", scope: !0, file: !424, line: 113, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_use_password_as_pin)
!479 = distinct !DIGlobalVariable(name: "g_seamless_persistent_mode", scope: !0, file: !424, line: 116, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_seamless_persistent_mode)
!480 = distinct !DIGlobalVariable(name: "g_user_quit", scope: !0, file: !424, line: 117, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_user_quit)
!481 = distinct !DIGlobalVariable(name: "g_rdp5_performanceflags", scope: !0, file: !424, line: 119, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_rdp5_performanceflags)
!482 = distinct !DIGlobalVariable(name: "g_redirect", scope: !0, file: !424, line: 123, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_redirect)
!483 = distinct !DIGlobalVariable(name: "g_redirect_flags", scope: !0, file: !424, line: 134, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_flags)
!484 = distinct !DIGlobalVariable(name: "g_redirect_session_id", scope: !0, file: !424, line: 135, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_session_id)
!485 = distinct !DIGlobalVariable(name: "g_reconnect_logonid", scope: !0, file: !424, line: 137, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_reconnect_logonid)
!486 = distinct !DIGlobalVariable(name: "g_has_reconnect_random", scope: !0, file: !424, line: 140, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_has_reconnect_random)
!487 = distinct !DIGlobalVariable(name: "g_reconnect_loop", scope: !0, file: !424, line: 141, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_reconnect_loop)
!488 = distinct !DIGlobalVariable(name: "g_pending_resize", scope: !0, file: !424, line: 143, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_pending_resize)
!489 = distinct !DIGlobalVariable(name: "g_pending_resize_defer", scope: !0, file: !424, line: 144, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_pending_resize_defer)
!490 = distinct !DIGlobalVariable(name: "g_pending_resize_defer_timer", scope: !0, file: !424, line: 145, type: !398, isLocal: false, isDefinition: true, variable: %struct.timeval* @g_pending_resize_defer_timer)
!491 = distinct !DIGlobalVariable(name: "g_rdpsnd", scope: !0, file: !424, line: 148, type: !454, isLocal: false, isDefinition: true, variable: i32* @g_rdpsnd)
!492 = distinct !DIGlobalVariable(name: "g_codepage", scope: !0, file: !424, line: 151, type: !434, isLocal: false, isDefinition: true, variable: [16 x i8]* @g_codepage)
!493 = distinct !DIGlobalVariable(name: "g_sc_csp_name", scope: !0, file: !424, line: 153, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_sc_csp_name)
!494 = distinct !DIGlobalVariable(name: "g_sc_reader_name", scope: !0, file: !424, line: 154, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_sc_reader_name)
!495 = distinct !DIGlobalVariable(name: "g_sc_card_name", scope: !0, file: !424, line: 155, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_sc_card_name)
!496 = distinct !DIGlobalVariable(name: "g_sc_container_name", scope: !0, file: !424, line: 156, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_sc_container_name)
!497 = distinct !DIGlobalVariable(name: "ret", scope: !498, file: !424, line: 1870, type: !502, isLocal: true, isDefinition: true, variable: [65 x i8]* @l_to_a.ret)
!498 = distinct !DISubprogram(name: "l_to_a", scope: !424, file: !424, line: 1868, type: !499, isLocal: false, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!391, !404, !390}
!501 = !{}
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 520, align: 8, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 65)
!505 = distinct !DIGlobalVariable(name: "g_username", scope: !0, file: !424, line: 62, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_username)
!506 = distinct !DIGlobalVariable(name: "g_seamless_shell", scope: !0, file: !424, line: 114, type: !507, isLocal: false, isDefinition: true, variable: [512 x i8]* @g_seamless_shell)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 4096, align: 8, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 512)
!510 = distinct !DIGlobalVariable(name: "g_seamless_spawn_cmd", scope: !0, file: !424, line: 115, type: !507, isLocal: false, isDefinition: true, variable: [512 x i8]* @g_seamless_spawn_cmd)
!511 = distinct !DIGlobalVariable(name: "g_embed_wnd", scope: !0, file: !424, line: 118, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_embed_wnd)
!512 = distinct !DIGlobalVariable(name: "g_redirect_server", scope: !0, file: !424, line: 124, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_redirect_server)
!513 = distinct !DIGlobalVariable(name: "g_redirect_server_len", scope: !0, file: !424, line: 125, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_server_len)
!514 = distinct !DIGlobalVariable(name: "g_redirect_domain", scope: !0, file: !424, line: 126, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_redirect_domain)
!515 = distinct !DIGlobalVariable(name: "g_redirect_domain_len", scope: !0, file: !424, line: 127, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_domain_len)
!516 = distinct !DIGlobalVariable(name: "g_redirect_username", scope: !0, file: !424, line: 128, type: !391, isLocal: false, isDefinition: true, variable: i8** @g_redirect_username)
!517 = distinct !DIGlobalVariable(name: "g_redirect_username_len", scope: !0, file: !424, line: 129, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_username_len)
!518 = distinct !DIGlobalVariable(name: "g_redirect_lb_info", scope: !0, file: !424, line: 130, type: !407, isLocal: false, isDefinition: true, variable: i8** @g_redirect_lb_info)
!519 = distinct !DIGlobalVariable(name: "g_redirect_lb_info_len", scope: !0, file: !424, line: 131, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_lb_info_len)
!520 = distinct !DIGlobalVariable(name: "g_redirect_cookie", scope: !0, file: !424, line: 132, type: !407, isLocal: false, isDefinition: true, variable: i8** @g_redirect_cookie)
!521 = distinct !DIGlobalVariable(name: "g_redirect_cookie_len", scope: !0, file: !424, line: 133, type: !396, isLocal: false, isDefinition: true, variable: i32* @g_redirect_cookie_len)
!522 = distinct !DIGlobalVariable(name: "g_reconnect_random", scope: !0, file: !424, line: 138, type: !434, isLocal: false, isDefinition: true, variable: [16 x i8]* @g_reconnect_random)
!523 = distinct !DIGlobalVariable(name: "g_reconnect_random_ts", scope: !0, file: !424, line: 139, type: !524, isLocal: false, isDefinition: true, variable: i64* @g_reconnect_random_ts)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !525, line: 75, baseType: !402)
!525 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!526 = distinct !DIGlobalVariable(name: "g_client_random", scope: !0, file: !424, line: 142, type: !527, isLocal: false, isDefinition: true, variable: [32 x i8]* @g_client_random)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 256, align: 8, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 32)
!530 = !{i32 2, !"Dwarf Version", i32 4}
!531 = !{i32 2, !"Debug Info Version", i32 3}
!532 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!533 = distinct !DISubprogram(name: "parse_geometry_string", scope: !424, file: !424, line: 599, type: !534, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!534 = !DISubroutineType(types: !535)
!535 = !{!390, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!538 = !DILocalVariable(name: "optarg", arg: 1, scope: !533, file: !424, line: 599, type: !536)
!539 = !DIExpression()
!540 = !DILocation(line: 599, column: 39, scope: !533)
!541 = !DILocalVariable(name: "value", scope: !533, file: !424, line: 601, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint32", file: !4, line: 44, baseType: !390)
!543 = !DILocation(line: 601, column: 9, scope: !533)
!544 = !DILocalVariable(name: "ps", scope: !533, file: !424, line: 602, type: !536)
!545 = !DILocation(line: 602, column: 14, scope: !533)
!546 = !DILocalVariable(name: "pe", scope: !533, file: !424, line: 603, type: !391)
!547 = !DILocation(line: 603, column: 8, scope: !533)
!548 = !DILocation(line: 606, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !533, file: !424, line: 606, column: 6)
!550 = !DILocation(line: 606, column: 6, scope: !549)
!551 = !DILocation(line: 606, column: 33, scope: !549)
!552 = !DILocation(line: 606, column: 6, scope: !533)
!553 = !DILocation(line: 608, column: 22, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !424, line: 607, column: 2)
!555 = !DILocation(line: 609, column: 3, scope: !554)
!556 = !DILocation(line: 613, column: 7, scope: !533)
!557 = !DILocation(line: 613, column: 5, scope: !533)
!558 = !DILocation(line: 614, column: 17, scope: !533)
!559 = !DILocation(line: 614, column: 10, scope: !533)
!560 = !DILocation(line: 614, column: 8, scope: !533)
!561 = !DILocation(line: 615, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !533, file: !424, line: 615, column: 6)
!563 = !DILocation(line: 615, column: 12, scope: !562)
!564 = !DILocation(line: 615, column: 9, scope: !562)
!565 = !DILocation(line: 615, column: 15, scope: !562)
!566 = !DILocation(line: 615, column: 18, scope: !567)
!567 = !DILexicalBlockFile(scope: !562, file: !424, discriminator: 1)
!568 = !DILocation(line: 615, column: 24, scope: !567)
!569 = !DILocation(line: 615, column: 6, scope: !567)
!570 = !DILocation(line: 617, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !562, file: !424, line: 616, column: 2)
!572 = !DILocation(line: 618, column: 3, scope: !571)
!573 = !DILocation(line: 621, column: 30, scope: !533)
!574 = !DILocation(line: 621, column: 28, scope: !533)
!575 = !DILocation(line: 622, column: 7, scope: !533)
!576 = !DILocation(line: 622, column: 5, scope: !533)
!577 = !DILocation(line: 625, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !533, file: !424, line: 625, column: 6)
!579 = !DILocation(line: 625, column: 6, scope: !578)
!580 = !DILocation(line: 625, column: 10, scope: !578)
!581 = !DILocation(line: 625, column: 17, scope: !578)
!582 = !DILocation(line: 625, column: 21, scope: !583)
!583 = !DILexicalBlockFile(scope: !578, file: !424, discriminator: 1)
!584 = !DILocation(line: 625, column: 20, scope: !583)
!585 = !DILocation(line: 625, column: 24, scope: !583)
!586 = !DILocation(line: 625, column: 6, scope: !583)
!587 = !DILocation(line: 627, column: 3, scope: !588)
!588 = distinct !DILexicalBlock(scope: !578, file: !424, line: 626, column: 2)
!589 = !DILocation(line: 628, column: 3, scope: !588)
!590 = !DILocation(line: 631, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !533, file: !424, line: 631, column: 6)
!592 = !DILocation(line: 631, column: 6, scope: !591)
!593 = !DILocation(line: 631, column: 10, scope: !591)
!594 = !DILocation(line: 631, column: 6, scope: !533)
!595 = !DILocation(line: 633, column: 22, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !424, line: 632, column: 2)
!597 = !DILocation(line: 634, column: 5, scope: !596)
!598 = !DILocation(line: 635, column: 5, scope: !596)
!599 = !DILocation(line: 636, column: 2, scope: !596)
!600 = !DILocation(line: 638, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !533, file: !424, line: 638, column: 6)
!602 = !DILocation(line: 638, column: 6, scope: !601)
!603 = !DILocation(line: 638, column: 10, scope: !601)
!604 = !DILocation(line: 638, column: 6, scope: !533)
!605 = !DILocation(line: 640, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !601, file: !424, line: 639, column: 2)
!607 = !DILocation(line: 641, column: 18, scope: !606)
!608 = !DILocation(line: 641, column: 11, scope: !606)
!609 = !DILocation(line: 641, column: 9, scope: !606)
!610 = !DILocation(line: 642, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !424, line: 642, column: 7)
!612 = !DILocation(line: 642, column: 13, scope: !611)
!613 = !DILocation(line: 642, column: 10, scope: !611)
!614 = !DILocation(line: 642, column: 16, scope: !611)
!615 = !DILocation(line: 642, column: 19, scope: !616)
!616 = !DILexicalBlockFile(scope: !611, file: !424, discriminator: 1)
!617 = !DILocation(line: 642, column: 25, scope: !616)
!618 = !DILocation(line: 642, column: 7, scope: !616)
!619 = !DILocation(line: 644, column: 4, scope: !620)
!620 = distinct !DILexicalBlock(scope: !611, file: !424, line: 643, column: 3)
!621 = !DILocation(line: 645, column: 4, scope: !620)
!622 = !DILocation(line: 648, column: 32, scope: !606)
!623 = !DILocation(line: 648, column: 30, scope: !606)
!624 = !DILocation(line: 649, column: 8, scope: !606)
!625 = !DILocation(line: 649, column: 6, scope: !606)
!626 = !DILocation(line: 651, column: 8, scope: !627)
!627 = distinct !DILexicalBlock(scope: !606, file: !424, line: 651, column: 7)
!628 = !DILocation(line: 651, column: 7, scope: !627)
!629 = !DILocation(line: 651, column: 11, scope: !627)
!630 = !DILocation(line: 651, column: 18, scope: !627)
!631 = !DILocation(line: 651, column: 21, scope: !632)
!632 = !DILexicalBlockFile(scope: !627, file: !424, discriminator: 1)
!633 = !DILocation(line: 651, column: 40, scope: !632)
!634 = !DILocation(line: 651, column: 7, scope: !632)
!635 = !DILocation(line: 653, column: 4, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !424, line: 652, column: 3)
!637 = !DILocation(line: 654, column: 4, scope: !636)
!638 = !DILocation(line: 657, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !606, file: !424, line: 657, column: 7)
!640 = !DILocation(line: 657, column: 26, scope: !639)
!641 = !DILocation(line: 657, column: 7, scope: !606)
!642 = !DILocation(line: 659, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !424, line: 659, column: 8)
!644 = distinct !DILexicalBlock(scope: !639, file: !424, line: 658, column: 3)
!645 = !DILocation(line: 659, column: 8, scope: !643)
!646 = !DILocation(line: 659, column: 12, scope: !643)
!647 = !DILocation(line: 659, column: 8, scope: !644)
!648 = !DILocation(line: 661, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !643, file: !424, line: 660, column: 4)
!650 = !DILocation(line: 662, column: 5, scope: !649)
!651 = !DILocation(line: 664, column: 6, scope: !644)
!652 = !DILocation(line: 665, column: 6, scope: !644)
!653 = !DILocation(line: 666, column: 3, scope: !644)
!654 = !DILocation(line: 667, column: 2, scope: !606)
!655 = !DILocation(line: 670, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !424, line: 670, column: 7)
!657 = distinct !DILexicalBlock(scope: !601, file: !424, line: 669, column: 9)
!658 = !DILocation(line: 670, column: 26, scope: !656)
!659 = !DILocation(line: 670, column: 7, scope: !657)
!660 = !DILocation(line: 673, column: 33, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !424, line: 671, column: 3)
!662 = !DILocation(line: 673, column: 31, scope: !661)
!663 = !DILocation(line: 674, column: 3, scope: !661)
!664 = !DILocation(line: 677, column: 4, scope: !665)
!665 = distinct !DILexicalBlock(scope: !656, file: !424, line: 676, column: 3)
!666 = !DILocation(line: 678, column: 4, scope: !665)
!667 = !DILocation(line: 683, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !533, file: !424, line: 683, column: 6)
!669 = !DILocation(line: 683, column: 6, scope: !668)
!670 = !DILocation(line: 683, column: 10, scope: !668)
!671 = !DILocation(line: 683, column: 6, scope: !533)
!672 = !DILocation(line: 685, column: 5, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !424, line: 684, column: 2)
!674 = !DILocation(line: 686, column: 5, scope: !673)
!675 = !DILocation(line: 687, column: 18, scope: !673)
!676 = !DILocation(line: 687, column: 11, scope: !673)
!677 = !DILocation(line: 687, column: 9, scope: !673)
!678 = !DILocation(line: 688, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !424, line: 688, column: 7)
!680 = !DILocation(line: 688, column: 13, scope: !679)
!681 = !DILocation(line: 688, column: 10, scope: !679)
!682 = !DILocation(line: 688, column: 16, scope: !679)
!683 = !DILocation(line: 688, column: 19, scope: !684)
!684 = !DILexicalBlockFile(scope: !679, file: !424, discriminator: 1)
!685 = !DILocation(line: 688, column: 25, scope: !684)
!686 = !DILocation(line: 688, column: 7, scope: !684)
!687 = !DILocation(line: 690, column: 4, scope: !688)
!688 = distinct !DILexicalBlock(scope: !679, file: !424, line: 689, column: 3)
!689 = !DILocation(line: 691, column: 4, scope: !688)
!690 = !DILocation(line: 694, column: 11, scope: !673)
!691 = !DILocation(line: 694, column: 9, scope: !673)
!692 = !DILocation(line: 695, column: 8, scope: !673)
!693 = !DILocation(line: 695, column: 6, scope: !673)
!694 = !DILocation(line: 696, column: 2, scope: !673)
!695 = !DILocation(line: 699, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !533, file: !424, line: 699, column: 6)
!697 = !DILocation(line: 699, column: 6, scope: !696)
!698 = !DILocation(line: 699, column: 10, scope: !696)
!699 = !DILocation(line: 699, column: 17, scope: !696)
!700 = !DILocation(line: 699, column: 21, scope: !701)
!701 = !DILexicalBlockFile(scope: !696, file: !424, discriminator: 1)
!702 = !DILocation(line: 699, column: 20, scope: !701)
!703 = !DILocation(line: 699, column: 24, scope: !701)
!704 = !DILocation(line: 699, column: 6, scope: !701)
!705 = !DILocation(line: 702, column: 18, scope: !706)
!706 = distinct !DILexicalBlock(scope: !696, file: !424, line: 700, column: 2)
!707 = !DILocation(line: 702, column: 11, scope: !706)
!708 = !DILocation(line: 702, column: 9, scope: !706)
!709 = !DILocation(line: 703, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !424, line: 703, column: 7)
!711 = !DILocation(line: 703, column: 13, scope: !710)
!712 = !DILocation(line: 703, column: 10, scope: !710)
!713 = !DILocation(line: 703, column: 7, scope: !706)
!714 = !DILocation(line: 705, column: 4, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !424, line: 704, column: 3)
!716 = !DILocation(line: 706, column: 4, scope: !715)
!717 = !DILocation(line: 709, column: 13, scope: !706)
!718 = !DILocation(line: 709, column: 19, scope: !706)
!719 = !DILocation(line: 709, column: 12, scope: !706)
!720 = !DILocation(line: 709, column: 9, scope: !706)
!721 = !DILocation(line: 710, column: 12, scope: !706)
!722 = !DILocation(line: 710, column: 10, scope: !706)
!723 = !DILocation(line: 711, column: 8, scope: !706)
!724 = !DILocation(line: 711, column: 6, scope: !706)
!725 = !DILocation(line: 712, column: 2, scope: !706)
!726 = !DILocation(line: 714, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !533, file: !424, line: 714, column: 6)
!728 = !DILocation(line: 714, column: 6, scope: !727)
!729 = !DILocation(line: 714, column: 10, scope: !727)
!730 = !DILocation(line: 714, column: 17, scope: !727)
!731 = !DILocation(line: 714, column: 21, scope: !732)
!732 = !DILexicalBlockFile(scope: !727, file: !424, discriminator: 1)
!733 = !DILocation(line: 714, column: 20, scope: !732)
!734 = !DILocation(line: 714, column: 24, scope: !732)
!735 = !DILocation(line: 714, column: 6, scope: !732)
!736 = !DILocation(line: 717, column: 18, scope: !737)
!737 = distinct !DILexicalBlock(scope: !727, file: !424, line: 715, column: 2)
!738 = !DILocation(line: 717, column: 11, scope: !737)
!739 = !DILocation(line: 717, column: 9, scope: !737)
!740 = !DILocation(line: 718, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !424, line: 718, column: 7)
!742 = !DILocation(line: 718, column: 13, scope: !741)
!743 = !DILocation(line: 718, column: 10, scope: !741)
!744 = !DILocation(line: 718, column: 7, scope: !737)
!745 = !DILocation(line: 720, column: 4, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !424, line: 719, column: 3)
!747 = !DILocation(line: 721, column: 4, scope: !746)
!748 = !DILocation(line: 723, column: 13, scope: !737)
!749 = !DILocation(line: 723, column: 19, scope: !737)
!750 = !DILocation(line: 723, column: 12, scope: !737)
!751 = !DILocation(line: 723, column: 9, scope: !737)
!752 = !DILocation(line: 724, column: 12, scope: !737)
!753 = !DILocation(line: 724, column: 10, scope: !737)
!754 = !DILocation(line: 725, column: 8, scope: !737)
!755 = !DILocation(line: 725, column: 6, scope: !737)
!756 = !DILocation(line: 726, column: 2, scope: !737)
!757 = !DILocation(line: 728, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !533, file: !424, line: 728, column: 6)
!759 = !DILocation(line: 728, column: 6, scope: !758)
!760 = !DILocation(line: 728, column: 10, scope: !758)
!761 = !DILocation(line: 728, column: 6, scope: !533)
!762 = !DILocation(line: 730, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !424, line: 729, column: 2)
!764 = !DILocation(line: 731, column: 3, scope: !763)
!765 = !DILocation(line: 733, column: 2, scope: !533)
!766 = !DILocation(line: 734, column: 1, scope: !533)
!767 = distinct !DISubprogram(name: "main", scope: !424, file: !424, line: 764, type: !768, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!768 = !DISubroutineType(types: !769)
!769 = !{!390, !390, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!771 = !DILocalVariable(name: "argc", arg: 1, scope: !767, file: !424, line: 764, type: !390)
!772 = !DILocation(line: 764, column: 10, scope: !767)
!773 = !DILocalVariable(name: "argv", arg: 2, scope: !767, file: !424, line: 764, type: !770)
!774 = !DILocation(line: 764, column: 22, scope: !767)
!775 = !DILocalVariable(name: "server", scope: !767, file: !424, line: 766, type: !776)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 2048, align: 8, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 256)
!779 = !DILocation(line: 766, column: 7, scope: !767)
!780 = !DILocalVariable(name: "fullhostname", scope: !767, file: !424, line: 767, type: !429)
!781 = !DILocation(line: 767, column: 7, scope: !767)
!782 = !DILocalVariable(name: "domain", scope: !767, file: !424, line: 768, type: !776)
!783 = !DILocation(line: 768, column: 7, scope: !767)
!784 = !DILocalVariable(name: "shell", scope: !767, file: !424, line: 769, type: !776)
!785 = !DILocation(line: 769, column: 7, scope: !767)
!786 = !DILocalVariable(name: "directory", scope: !767, file: !424, line: 770, type: !776)
!787 = !DILocation(line: 770, column: 7, scope: !767)
!788 = !DILocalVariable(name: "deactivated", scope: !767, file: !424, line: 771, type: !454)
!789 = !DILocation(line: 771, column: 10, scope: !767)
!790 = !DILocalVariable(name: "pw", scope: !767, file: !424, line: 772, type: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !793, line: 49, size: 384, align: 64, elements: !794)
!793 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!794 = !{!795, !796, !797, !799, !801, !802, !803}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !792, file: !793, line: 51, baseType: !391, size: 64, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !792, file: !793, line: 52, baseType: !391, size: 64, align: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !792, file: !793, line: 53, baseType: !798, size: 32, align: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !403, line: 125, baseType: !394)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !792, file: !793, line: 54, baseType: !800, size: 32, align: 32, offset: 160)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !403, line: 126, baseType: !394)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !792, file: !793, line: 55, baseType: !391, size: 64, align: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !792, file: !793, line: 56, baseType: !391, size: 64, align: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !792, file: !793, line: 57, baseType: !391, size: 64, align: 64, offset: 320)
!804 = !DILocation(line: 772, column: 17, scope: !767)
!805 = !DILocalVariable(name: "flags", scope: !767, file: !424, line: 773, type: !396)
!806 = !DILocation(line: 773, column: 9, scope: !767)
!807 = !DILocalVariable(name: "ext_disc_reason", scope: !767, file: !424, line: 773, type: !396)
!808 = !DILocation(line: 773, column: 16, scope: !767)
!809 = !DILocalVariable(name: "p", scope: !767, file: !424, line: 774, type: !391)
!810 = !DILocation(line: 774, column: 8, scope: !767)
!811 = !DILocalVariable(name: "c", scope: !767, file: !424, line: 775, type: !390)
!812 = !DILocation(line: 775, column: 6, scope: !767)
!813 = !DILocalVariable(name: "locale", scope: !767, file: !424, line: 776, type: !391)
!814 = !DILocation(line: 776, column: 8, scope: !767)
!815 = !DILocalVariable(name: "username_option", scope: !767, file: !424, line: 777, type: !390)
!816 = !DILocation(line: 777, column: 6, scope: !767)
!817 = !DILocalVariable(name: "geometry_option", scope: !767, file: !424, line: 778, type: !454)
!818 = !DILocation(line: 778, column: 10, scope: !767)
!819 = !DILocalVariable(name: "rdpsnd_optarg", scope: !767, file: !424, line: 780, type: !391)
!820 = !DILocation(line: 780, column: 8, scope: !767)
!821 = !DILocation(line: 784, column: 22, scope: !767)
!822 = !DILocation(line: 784, column: 2, scope: !823)
!823 = !DILexicalBlockFile(scope: !767, file: !424, discriminator: 1)
!824 = !DILocation(line: 788, column: 11, scope: !767)
!825 = !DILocation(line: 788, column: 9, scope: !767)
!826 = !DILocation(line: 789, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !767, file: !424, line: 789, column: 6)
!828 = !DILocation(line: 789, column: 6, scope: !767)
!829 = !DILocation(line: 791, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !424, line: 790, column: 2)
!831 = !DILocation(line: 791, column: 12, scope: !830)
!832 = !DILocation(line: 791, column: 10, scope: !830)
!833 = !DILocation(line: 792, column: 2, scope: !830)
!834 = !DILocalVariable(name: "act", scope: !767, file: !424, line: 797, type: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !836, line: 24, size: 1216, align: 64, elements: !837)
!836 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!837 = !{!838, !916, !924, !925}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !835, file: !836, line: 35, baseType: !839, size: 64, align: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 28, size: 64, align: 64, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !839, file: !836, line: 31, baseType: !385, size: 64, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !839, file: !836, line: 33, baseType: !843, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, align: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !390, !846, !393}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !848, line: 133, baseType: !849)
!848 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 62, size: 1024, align: 64, elements: !850)
!850 = !{!851, !852, !853, !854}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !849, file: !848, line: 64, baseType: !390, size: 32, align: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !849, file: !848, line: 65, baseType: !390, size: 32, align: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !849, file: !848, line: 67, baseType: !390, size: 32, align: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !849, file: !848, line: 132, baseType: !855, size: 896, align: 64, offset: 128)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !848, line: 69, size: 896, align: 64, elements: !856)
!856 = !{!857, !861, !867, !878, !884, !894, !905, !910}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !855, file: !848, line: 71, baseType: !858, size: 896, align: 32)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 896, align: 32, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 28)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !855, file: !848, line: 78, baseType: !862, size: 64, align: 32)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 74, size: 64, align: 32, elements: !863)
!863 = !{!864, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !862, file: !848, line: 76, baseType: !865, size: 32, align: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !403, line: 133, baseType: !390)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !862, file: !848, line: 77, baseType: !798, size: 32, align: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !855, file: !848, line: 86, baseType: !868, size: 128, align: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 81, size: 128, align: 64, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !868, file: !848, line: 83, baseType: !390, size: 32, align: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !868, file: !848, line: 84, baseType: !390, size: 32, align: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !868, file: !848, line: 85, baseType: !873, size: 64, align: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !848, line: 36, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !848, line: 32, size: 64, align: 64, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !874, file: !848, line: 34, baseType: !390, size: 32, align: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !874, file: !848, line: 35, baseType: !393, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !855, file: !848, line: 94, baseType: !879, size: 128, align: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 89, size: 128, align: 64, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !879, file: !848, line: 91, baseType: !865, size: 32, align: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !879, file: !848, line: 92, baseType: !798, size: 32, align: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !879, file: !848, line: 93, baseType: !873, size: 64, align: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !855, file: !848, line: 104, baseType: !885, size: 256, align: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 97, size: 256, align: 64, elements: !886)
!886 = !{!887, !888, !889, !890, !893}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !885, file: !848, line: 99, baseType: !865, size: 32, align: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !885, file: !848, line: 100, baseType: !798, size: 32, align: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !885, file: !848, line: 101, baseType: !390, size: 32, align: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !885, file: !848, line: 102, baseType: !891, size: 64, align: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !848, line: 58, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !403, line: 135, baseType: !404)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !885, file: !848, line: 103, baseType: !891, size: 64, align: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !855, file: !848, line: 116, baseType: !895, size: 256, align: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 107, size: 256, align: 64, elements: !896)
!896 = !{!897, !898, !900}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !895, file: !848, line: 109, baseType: !393, size: 64, align: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !895, file: !848, line: 110, baseType: !899, size: 16, align: 16, offset: 64)
!899 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !895, file: !848, line: 115, baseType: !901, size: 128, align: 64, offset: 128)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !848, line: 111, size: 128, align: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !901, file: !848, line: 113, baseType: !393, size: 64, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !901, file: !848, line: 114, baseType: !393, size: 64, align: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !855, file: !848, line: 123, baseType: !906, size: 128, align: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 119, size: 128, align: 64, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !906, file: !848, line: 121, baseType: !404, size: 64, align: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !906, file: !848, line: 122, baseType: !390, size: 32, align: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !855, file: !848, line: 131, baseType: !911, size: 128, align: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !855, file: !848, line: 126, size: 128, align: 64, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !911, file: !848, line: 128, baseType: !393, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !911, file: !848, line: 129, baseType: !390, size: 32, align: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !911, file: !848, line: 130, baseType: !394, size: 32, align: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !835, file: !836, line: 43, baseType: !917, size: 1024, align: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !918, line: 30, baseType: !919)
!918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 27, size: 1024, align: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !919, file: !918, line: 29, baseType: !922, size: 1024, align: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 1024, align: 64, elements: !426)
!923 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !835, file: !836, line: 46, baseType: !390, size: 32, align: 32, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !835, file: !836, line: 49, baseType: !926, size: 64, align: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null}
!929 = !DILocation(line: 797, column: 19, scope: !767)
!930 = !DILocation(line: 798, column: 2, scope: !767)
!931 = !DILocation(line: 799, column: 5, scope: !767)
!932 = !DILocation(line: 799, column: 25, scope: !767)
!933 = !DILocation(line: 799, column: 16, scope: !767)
!934 = !DILocation(line: 800, column: 19, scope: !767)
!935 = !DILocation(line: 800, column: 2, scope: !767)
!936 = !DILocation(line: 801, column: 6, scope: !767)
!937 = !DILocation(line: 801, column: 15, scope: !767)
!938 = !DILocation(line: 802, column: 2, scope: !767)
!939 = !DILocation(line: 805, column: 8, scope: !767)
!940 = !DILocation(line: 808, column: 67, scope: !767)
!941 = !DILocation(line: 808, column: 80, scope: !767)
!942 = !DILocation(line: 808, column: 56, scope: !767)
!943 = !DILocation(line: 808, column: 65, scope: !767)
!944 = !DILocation(line: 808, column: 54, scope: !767)
!945 = !DILocation(line: 808, column: 28, scope: !767)
!946 = !DILocation(line: 808, column: 38, scope: !767)
!947 = !DILocation(line: 808, column: 26, scope: !767)
!948 = !DILocation(line: 809, column: 14, scope: !767)
!949 = !DILocation(line: 811, column: 16, scope: !767)
!950 = !DILocation(line: 813, column: 2, scope: !767)
!951 = !DILocation(line: 813, column: 21, scope: !823)
!952 = !DILocation(line: 813, column: 27, scope: !823)
!953 = !DILocation(line: 813, column: 14, scope: !823)
!954 = !DILocation(line: 813, column: 12, scope: !823)
!955 = !DILocation(line: 814, column: 67, scope: !767)
!956 = !DILocation(line: 813, column: 2, scope: !823)
!957 = !DILocation(line: 816, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !767, file: !424, line: 815, column: 2)
!959 = !DILocation(line: 816, column: 3, scope: !958)
!960 = !DILocation(line: 819, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !424, line: 817, column: 3)
!962 = !DILocation(line: 820, column: 32, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !424, line: 820, column: 5)
!964 = !DILocation(line: 820, column: 7, scope: !963)
!965 = !DILocation(line: 820, column: 113, scope: !963)
!966 = !DILocation(line: 821, column: 5, scope: !961)
!967 = !DILocation(line: 824, column: 42, scope: !961)
!968 = !DILocation(line: 824, column: 35, scope: !961)
!969 = !DILocation(line: 824, column: 50, scope: !961)
!970 = !DILocation(line: 824, column: 27, scope: !971)
!971 = !DILexicalBlockFile(scope: !961, file: !424, discriminator: 1)
!972 = !DILocation(line: 824, column: 16, scope: !961)
!973 = !DILocation(line: 825, column: 15, scope: !974)
!974 = distinct !DILexicalBlock(scope: !961, file: !424, line: 825, column: 5)
!975 = !DILocation(line: 825, column: 26, scope: !974)
!976 = !DILocation(line: 825, column: 40, scope: !974)
!977 = !DILocation(line: 825, column: 33, scope: !974)
!978 = !DILocation(line: 825, column: 48, scope: !974)
!979 = !DILocation(line: 825, column: 52, scope: !974)
!980 = !DILocation(line: 825, column: 7, scope: !981)
!981 = !DILexicalBlockFile(scope: !974, file: !424, discriminator: 1)
!982 = !DILocation(line: 825, column: 75, scope: !974)
!983 = !DILocation(line: 825, column: 68, scope: !984)
!984 = !DILexicalBlockFile(scope: !974, file: !424, discriminator: 2)
!985 = !DILocation(line: 825, column: 83, scope: !974)
!986 = !DILocation(line: 825, column: 87, scope: !974)
!987 = !DILocation(line: 825, column: 57, scope: !974)
!988 = !DILocation(line: 825, column: 91, scope: !974)
!989 = !DILocation(line: 826, column: 21, scope: !961)
!990 = !DILocation(line: 827, column: 5, scope: !961)
!991 = !DILocation(line: 830, column: 26, scope: !992)
!992 = distinct !DILexicalBlock(scope: !961, file: !424, line: 830, column: 5)
!993 = !DILocation(line: 830, column: 7, scope: !992)
!994 = !DILocation(line: 830, column: 89, scope: !992)
!995 = !DILocation(line: 831, column: 5, scope: !961)
!996 = !DILocation(line: 834, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !961, file: !424, line: 834, column: 5)
!998 = !DILocation(line: 834, column: 22, scope: !997)
!999 = !DILocation(line: 834, column: 7, scope: !997)
!1000 = !DILocation(line: 834, column: 48, scope: !997)
!1001 = !DILocation(line: 834, column: 73, scope: !997)
!1002 = !DILocation(line: 835, column: 5, scope: !961)
!1003 = !DILocation(line: 838, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !961, file: !424, line: 838, column: 5)
!1005 = !DILocation(line: 838, column: 21, scope: !1004)
!1006 = !DILocation(line: 838, column: 7, scope: !1004)
!1007 = !DILocation(line: 838, column: 46, scope: !1004)
!1008 = !DILocation(line: 838, column: 69, scope: !1004)
!1009 = !DILocation(line: 839, column: 32, scope: !961)
!1010 = !DILocation(line: 840, column: 5, scope: !961)
!1011 = !DILocation(line: 843, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !961, file: !424, line: 843, column: 5)
!1013 = !DILocation(line: 843, column: 25, scope: !1012)
!1014 = !DILocation(line: 843, column: 7, scope: !1012)
!1015 = !DILocation(line: 843, column: 54, scope: !1012)
!1016 = !DILocation(line: 843, column: 85, scope: !1012)
!1017 = !DILocation(line: 844, column: 5, scope: !961)
!1018 = !DILocation(line: 847, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !961, file: !424, line: 847, column: 9)
!1020 = !DILocation(line: 847, column: 22, scope: !1019)
!1021 = !DILocation(line: 847, column: 30, scope: !1019)
!1022 = !DILocation(line: 847, column: 34, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1019, file: !424, discriminator: 1)
!1024 = !DILocation(line: 847, column: 44, scope: !1023)
!1025 = !DILocation(line: 847, column: 9, scope: !1023)
!1026 = !DILocation(line: 849, column: 27, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !424, line: 849, column: 6)
!1028 = distinct !DILexicalBlock(scope: !1019, file: !424, line: 848, column: 5)
!1029 = !DILocation(line: 849, column: 8, scope: !1027)
!1030 = !DILocation(line: 849, column: 90, scope: !1027)
!1031 = !DILocation(line: 850, column: 12, scope: !1028)
!1032 = !DILocation(line: 853, column: 10, scope: !1028)
!1033 = !DILocation(line: 853, column: 8, scope: !1028)
!1034 = !DILocation(line: 854, column: 6, scope: !1028)
!1035 = !DILocation(line: 854, column: 14, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1028, file: !424, discriminator: 1)
!1037 = !DILocation(line: 854, column: 13, scope: !1036)
!1038 = !DILocation(line: 854, column: 6, scope: !1036)
!1039 = !DILocation(line: 855, column: 10, scope: !1028)
!1040 = !DILocation(line: 855, column: 14, scope: !1028)
!1041 = !DILocation(line: 854, column: 6, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1028, file: !424, discriminator: 2)
!1043 = distinct !{!1043, !1034}
!1044 = !DILocation(line: 856, column: 5, scope: !1028)
!1045 = !DILocation(line: 857, column: 5, scope: !961)
!1046 = !DILocation(line: 865, column: 16, scope: !961)
!1047 = !DILocation(line: 866, column: 5, scope: !961)
!1048 = !DILocation(line: 869, column: 26, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !961, file: !424, line: 869, column: 5)
!1050 = !DILocation(line: 869, column: 7, scope: !1049)
!1051 = !DILocation(line: 869, column: 89, scope: !1049)
!1052 = !DILocation(line: 870, column: 5, scope: !961)
!1053 = !DILocation(line: 873, column: 28, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !961, file: !424, line: 873, column: 5)
!1055 = !DILocation(line: 873, column: 7, scope: !1054)
!1056 = !DILocation(line: 873, column: 97, scope: !1054)
!1057 = !DILocation(line: 874, column: 5, scope: !961)
!1058 = !DILocation(line: 877, column: 21, scope: !961)
!1059 = !DILocation(line: 878, column: 18, scope: !961)
!1060 = !DILocation(line: 879, column: 31, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !961, file: !424, line: 879, column: 9)
!1062 = !DILocation(line: 879, column: 9, scope: !1061)
!1063 = !DILocation(line: 879, column: 39, scope: !1061)
!1064 = !DILocation(line: 879, column: 9, scope: !961)
!1065 = !DILocation(line: 881, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !424, line: 880, column: 5)
!1067 = !DILocation(line: 883, column: 5, scope: !961)
!1068 = !DILocation(line: 886, column: 24, scope: !961)
!1069 = !DILocation(line: 887, column: 18, scope: !961)
!1070 = !DILocation(line: 888, column: 5, scope: !961)
!1071 = !DILocation(line: 891, column: 20, scope: !961)
!1072 = !DILocation(line: 892, column: 5, scope: !961)
!1073 = !DILocation(line: 895, column: 20, scope: !961)
!1074 = !DILocation(line: 896, column: 5, scope: !961)
!1075 = !DILocation(line: 899, column: 41, scope: !961)
!1076 = !DILocation(line: 899, column: 26, scope: !961)
!1077 = !DILocation(line: 900, column: 5, scope: !961)
!1078 = !DILocation(line: 902, column: 25, scope: !961)
!1079 = !DILocation(line: 903, column: 5, scope: !961)
!1080 = !DILocation(line: 905, column: 18, scope: !961)
!1081 = !DILocation(line: 906, column: 5, scope: !961)
!1082 = !DILocation(line: 908, column: 20, scope: !961)
!1083 = !DILocation(line: 909, column: 5, scope: !961)
!1084 = !DILocation(line: 912, column: 17, scope: !961)
!1085 = !DILocation(line: 913, column: 5, scope: !961)
!1086 = !DILocation(line: 916, column: 24, scope: !961)
!1087 = !DILocation(line: 917, column: 5, scope: !961)
!1088 = !DILocation(line: 920, column: 21, scope: !961)
!1089 = !DILocation(line: 921, column: 5, scope: !961)
!1090 = !DILocation(line: 924, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !961, file: !424, line: 924, column: 9)
!1092 = !DILocation(line: 924, column: 10, scope: !1091)
!1093 = !DILocation(line: 924, column: 9, scope: !961)
!1094 = !DILocation(line: 926, column: 24, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !424, line: 925, column: 5)
!1096 = !DILocation(line: 927, column: 6, scope: !1095)
!1097 = !DILocation(line: 930, column: 32, scope: !961)
!1098 = !DILocation(line: 930, column: 25, scope: !961)
!1099 = !DILocation(line: 930, column: 23, scope: !961)
!1100 = !DILocation(line: 932, column: 10, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !961, file: !424, line: 932, column: 9)
!1102 = !DILocation(line: 932, column: 9, scope: !1101)
!1103 = !DILocation(line: 932, column: 9, scope: !961)
!1104 = !DILocation(line: 934, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !424, line: 933, column: 5)
!1106 = !DILocation(line: 935, column: 6, scope: !1105)
!1107 = !DILocation(line: 938, column: 5, scope: !961)
!1108 = !DILocation(line: 941, column: 23, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !961, file: !424, line: 941, column: 5)
!1110 = !DILocation(line: 941, column: 7, scope: !1109)
!1111 = !DILocation(line: 941, column: 77, scope: !1109)
!1112 = !DILocation(line: 942, column: 5, scope: !961)
!1113 = !DILocation(line: 945, column: 20, scope: !961)
!1114 = !DILocation(line: 946, column: 5, scope: !961)
!1115 = !DILocation(line: 949, column: 26, scope: !961)
!1116 = !DILocation(line: 949, column: 19, scope: !961)
!1117 = !DILocation(line: 949, column: 17, scope: !961)
!1118 = !DILocation(line: 950, column: 5, scope: !961)
!1119 = !DILocation(line: 953, column: 29, scope: !961)
!1120 = !DILocation(line: 953, column: 22, scope: !961)
!1121 = !DILocation(line: 953, column: 20, scope: !961)
!1122 = !DILocation(line: 954, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !961, file: !424, line: 954, column: 9)
!1124 = !DILocation(line: 954, column: 24, scope: !1123)
!1125 = !DILocation(line: 954, column: 29, scope: !1123)
!1126 = !DILocation(line: 955, column: 9, scope: !1123)
!1127 = !DILocation(line: 955, column: 24, scope: !1123)
!1128 = !DILocation(line: 955, column: 30, scope: !1123)
!1129 = !DILocation(line: 956, column: 9, scope: !1123)
!1130 = !DILocation(line: 956, column: 24, scope: !1123)
!1131 = !DILocation(line: 956, column: 30, scope: !1123)
!1132 = !DILocation(line: 956, column: 33, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1123, file: !424, discriminator: 1)
!1134 = !DILocation(line: 956, column: 48, scope: !1133)
!1135 = !DILocation(line: 957, column: 9, scope: !1123)
!1136 = !DILocation(line: 957, column: 12, scope: !1133)
!1137 = !DILocation(line: 957, column: 27, scope: !1133)
!1138 = !DILocation(line: 954, column: 9, scope: !971)
!1139 = !DILocation(line: 959, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1123, file: !424, line: 958, column: 5)
!1141 = !DILocation(line: 961, column: 6, scope: !1140)
!1142 = !DILocation(line: 963, column: 5, scope: !961)
!1143 = !DILocation(line: 966, column: 5, scope: !961)
!1144 = !DILocation(line: 967, column: 11, scope: !961)
!1145 = !DILocation(line: 968, column: 5, scope: !961)
!1146 = !DILocation(line: 971, column: 24, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !961, file: !424, line: 971, column: 9)
!1148 = !DILocation(line: 971, column: 9, scope: !1147)
!1149 = !DILocation(line: 971, column: 9, scope: !961)
!1150 = !DILocation(line: 973, column: 30, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !424, line: 972, column: 5)
!1152 = !DILocation(line: 978, column: 5, scope: !1151)
!1153 = !DILocation(line: 979, column: 29, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1147, file: !424, line: 979, column: 14)
!1155 = !DILocation(line: 979, column: 14, scope: !1154)
!1156 = !DILocation(line: 979, column: 14, scope: !1147)
!1157 = !DILocation(line: 981, column: 30, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !424, line: 980, column: 5)
!1159 = !DILocation(line: 983, column: 5, scope: !1158)
!1160 = !DILocation(line: 984, column: 29, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1154, file: !424, line: 984, column: 14)
!1162 = !DILocation(line: 984, column: 14, scope: !1161)
!1163 = !DILocation(line: 984, column: 14, scope: !1154)
!1164 = !DILocation(line: 986, column: 30, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !424, line: 985, column: 5)
!1166 = !DILocation(line: 987, column: 5, scope: !1165)
!1167 = !DILocation(line: 990, column: 39, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !424, line: 989, column: 5)
!1169 = !DILocation(line: 990, column: 32, scope: !1168)
!1170 = !DILocation(line: 990, column: 30, scope: !1168)
!1171 = !DILocation(line: 992, column: 5, scope: !961)
!1172 = !DILocation(line: 995, column: 35, scope: !961)
!1173 = !DILocation(line: 996, column: 5, scope: !961)
!1174 = !DILocation(line: 1000, column: 24, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !961, file: !424, line: 1000, column: 9)
!1176 = !DILocation(line: 1000, column: 9, scope: !1175)
!1177 = !DILocation(line: 1000, column: 9, scope: !961)
!1178 = !DILocation(line: 1002, column: 13, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !424, line: 1001, column: 5)
!1180 = !DILocation(line: 1004, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !424, line: 1004, column: 10)
!1182 = !DILocation(line: 1004, column: 10, scope: !1181)
!1183 = !DILocation(line: 1004, column: 18, scope: !1181)
!1184 = !DILocation(line: 1004, column: 10, scope: !1179)
!1185 = !DILocation(line: 1006, column: 13, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !424, line: 1005, column: 6)
!1187 = !DILocation(line: 1007, column: 7, scope: !1186)
!1188 = !DILocation(line: 1007, column: 28, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1186, file: !424, discriminator: 1)
!1190 = !DILocation(line: 1007, column: 19, scope: !1189)
!1191 = !DILocation(line: 1007, column: 17, scope: !1189)
!1192 = !DILocation(line: 1007, column: 7, scope: !1189)
!1193 = !DILocation(line: 1009, column: 27, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !424, line: 1009, column: 12)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !424, line: 1008, column: 7)
!1196 = !DILocation(line: 1009, column: 12, scope: !1194)
!1197 = !DILocation(line: 1009, column: 12, scope: !1195)
!1198 = !DILocation(line: 1010, column: 15, scope: !1194)
!1199 = !DILocation(line: 1010, column: 9, scope: !1194)
!1200 = !DILocation(line: 1012, column: 27, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !424, line: 1012, column: 12)
!1202 = !DILocation(line: 1012, column: 12, scope: !1201)
!1203 = !DILocation(line: 1012, column: 12, scope: !1195)
!1204 = !DILocation(line: 1016, column: 19, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !424, line: 1014, column: 8)
!1206 = !DILocation(line: 1016, column: 10, scope: !1205)
!1207 = !DILocation(line: 1015, column: 23, scope: !1205)
!1208 = !DILocation(line: 1017, column: 18, scope: !1205)
!1209 = !DILocation(line: 1018, column: 8, scope: !1205)
!1210 = !DILocation(line: 1025, column: 27, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1195, file: !424, line: 1025, column: 12)
!1212 = !DILocation(line: 1025, column: 12, scope: !1211)
!1213 = !DILocation(line: 1025, column: 12, scope: !1195)
!1214 = !DILocation(line: 1027, column: 18, scope: !1211)
!1215 = !DILocation(line: 1027, column: 9, scope: !1211)
!1216 = !DILocation(line: 1033, column: 17, scope: !1195)
!1217 = !DILocation(line: 1033, column: 15, scope: !1195)
!1218 = !DILocation(line: 1007, column: 7, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1186, file: !424, discriminator: 2)
!1220 = distinct !{!1220, !1187}
!1221 = !DILocation(line: 1035, column: 6, scope: !1186)
!1222 = !DILocation(line: 1039, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1181, file: !424, line: 1037, column: 6)
!1224 = !DILocation(line: 1045, column: 5, scope: !1179)
!1225 = !DILocation(line: 1046, column: 29, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1175, file: !424, line: 1046, column: 14)
!1227 = !DILocation(line: 1046, column: 14, scope: !1226)
!1228 = !DILocation(line: 1046, column: 14, scope: !1175)
!1229 = !DILocation(line: 1049, column: 40, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !424, line: 1047, column: 5)
!1231 = !DILocation(line: 1049, column: 47, scope: !1230)
!1232 = !DILocation(line: 1049, column: 6, scope: !1230)
!1233 = !DILocation(line: 1050, column: 5, scope: !1230)
!1234 = !DILocation(line: 1051, column: 29, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1226, file: !424, line: 1051, column: 14)
!1236 = !DILocation(line: 1051, column: 14, scope: !1235)
!1237 = !DILocation(line: 1051, column: 14, scope: !1226)
!1238 = !DILocation(line: 1053, column: 42, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !424, line: 1052, column: 5)
!1240 = !DILocation(line: 1053, column: 49, scope: !1239)
!1241 = !DILocation(line: 1053, column: 6, scope: !1239)
!1242 = !DILocation(line: 1054, column: 5, scope: !1239)
!1243 = !DILocation(line: 1055, column: 29, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1235, file: !424, line: 1055, column: 14)
!1245 = !DILocation(line: 1055, column: 14, scope: !1244)
!1246 = !DILocation(line: 1055, column: 14, scope: !1235)
!1247 = !DILocation(line: 1057, column: 22, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !424, line: 1056, column: 5)
!1249 = !DILocation(line: 1058, column: 5, scope: !1248)
!1250 = !DILocation(line: 1059, column: 29, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1244, file: !424, line: 1059, column: 14)
!1252 = !DILocation(line: 1059, column: 14, scope: !1251)
!1253 = !DILocation(line: 1059, column: 14, scope: !1244)
!1254 = !DILocation(line: 1061, column: 44, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !424, line: 1060, column: 5)
!1256 = !DILocation(line: 1061, column: 51, scope: !1255)
!1257 = !DILocation(line: 1061, column: 6, scope: !1255)
!1258 = !DILocation(line: 1062, column: 5, scope: !1255)
!1259 = !DILocation(line: 1063, column: 29, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !424, line: 1063, column: 14)
!1261 = !DILocation(line: 1063, column: 14, scope: !1260)
!1262 = !DILocation(line: 1063, column: 14, scope: !1251)
!1263 = !DILocation(line: 1065, column: 43, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !424, line: 1064, column: 5)
!1265 = !DILocation(line: 1065, column: 50, scope: !1264)
!1266 = !DILocation(line: 1065, column: 6, scope: !1264)
!1267 = !DILocation(line: 1066, column: 5, scope: !1264)
!1268 = !DILocation(line: 1067, column: 29, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !424, line: 1067, column: 14)
!1270 = !DILocation(line: 1067, column: 14, scope: !1269)
!1271 = !DILocation(line: 1067, column: 14, scope: !1260)
!1272 = !DILocation(line: 1069, column: 42, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !424, line: 1068, column: 5)
!1274 = !DILocation(line: 1069, column: 49, scope: !1273)
!1275 = !DILocation(line: 1069, column: 35, scope: !1273)
!1276 = !DILocation(line: 1069, column: 55, scope: !1273)
!1277 = !DILocation(line: 1069, column: 27, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1273, file: !424, discriminator: 1)
!1279 = !DILocation(line: 1069, column: 25, scope: !1273)
!1280 = !DILocation(line: 1070, column: 13, scope: !1273)
!1281 = !DILocation(line: 1070, column: 33, scope: !1273)
!1282 = !DILocation(line: 1070, column: 40, scope: !1273)
!1283 = !DILocation(line: 1070, column: 6, scope: !1273)
!1284 = !DILocation(line: 1071, column: 5, scope: !1273)
!1285 = !DILocation(line: 1072, column: 29, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1269, file: !424, line: 1072, column: 14)
!1287 = !DILocation(line: 1072, column: 14, scope: !1286)
!1288 = !DILocation(line: 1072, column: 14, scope: !1269)
!1289 = !DILocation(line: 1074, column: 13, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !424, line: 1073, column: 5)
!1291 = !DILocation(line: 1076, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !424, line: 1076, column: 10)
!1293 = !DILocation(line: 1076, column: 10, scope: !1292)
!1294 = !DILocation(line: 1076, column: 18, scope: !1292)
!1295 = !DILocation(line: 1076, column: 10, scope: !1290)
!1296 = !DILocation(line: 1078, column: 13, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !424, line: 1077, column: 6)
!1298 = !DILocation(line: 1080, column: 26, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !424, line: 1080, column: 11)
!1300 = !DILocation(line: 1080, column: 11, scope: !1299)
!1301 = !DILocation(line: 1080, column: 11, scope: !1297)
!1302 = !DILocation(line: 1081, column: 18, scope: !1299)
!1303 = !DILocation(line: 1081, column: 8, scope: !1299)
!1304 = !DILocation(line: 1083, column: 25, scope: !1299)
!1305 = !DILocation(line: 1083, column: 8, scope: !1299)
!1306 = !DILocation(line: 1084, column: 6, scope: !1297)
!1307 = !DILocation(line: 1086, column: 17, scope: !1292)
!1308 = !DILocation(line: 1087, column: 5, scope: !1290)
!1309 = !DILocation(line: 1088, column: 31, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1286, file: !424, line: 1088, column: 14)
!1311 = !DILocation(line: 1088, column: 14, scope: !1310)
!1312 = !DILocation(line: 1088, column: 42, scope: !1310)
!1313 = !DILocation(line: 1088, column: 14, scope: !1286)
!1314 = !DILocation(line: 1093, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !424, line: 1089, column: 5)
!1316 = !DILocation(line: 1096, column: 5, scope: !1315)
!1317 = !DILocation(line: 1101, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1310, file: !424, line: 1098, column: 5)
!1319 = !DILocation(line: 1099, column: 6, scope: !1318)
!1320 = !DILocation(line: 1103, column: 5, scope: !961)
!1321 = !DILocation(line: 1106, column: 23, scope: !961)
!1322 = !DILocation(line: 1107, column: 5, scope: !961)
!1323 = !DILocation(line: 1110, column: 19, scope: !961)
!1324 = !DILocation(line: 1111, column: 5, scope: !961)
!1325 = !DILocation(line: 1114, column: 19, scope: !961)
!1326 = !DILocation(line: 1115, column: 5, scope: !961)
!1327 = !DILocation(line: 1148, column: 5, scope: !961)
!1328 = !DILocation(line: 1149, column: 5, scope: !961)
!1329 = !DILocation(line: 1149, column: 5, scope: !971)
!1330 = !DILocation(line: 1153, column: 11, scope: !961)
!1331 = !DILocation(line: 1153, column: 5, scope: !961)
!1332 = !DILocation(line: 1154, column: 5, scope: !961)
!1333 = !DILocation(line: 813, column: 2, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !767, file: !424, discriminator: 2)
!1335 = distinct !{!1335, !950}
!1336 = !DILocation(line: 1158, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1158, column: 6)
!1338 = !DILocation(line: 1158, column: 13, scope: !1337)
!1339 = !DILocation(line: 1158, column: 11, scope: !1337)
!1340 = !DILocation(line: 1158, column: 20, scope: !1337)
!1341 = !DILocation(line: 1158, column: 6, scope: !767)
!1342 = !DILocation(line: 1160, column: 9, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1337, file: !424, line: 1159, column: 2)
!1344 = !DILocation(line: 1160, column: 3, scope: !1343)
!1345 = !DILocation(line: 1161, column: 3, scope: !1343)
!1346 = !DILocation(line: 1163, column: 6, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1163, column: 6)
!1348 = !DILocation(line: 1163, column: 6, scope: !767)
!1349 = !DILocation(line: 1167, column: 27, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !424, line: 1164, column: 2)
!1351 = !DILocation(line: 1168, column: 2, scope: !1350)
!1352 = !DILocation(line: 1170, column: 12, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1170, column: 2)
!1354 = !DILocation(line: 1170, column: 24, scope: !1353)
!1355 = !DILocation(line: 1170, column: 19, scope: !1353)
!1356 = !DILocation(line: 1170, column: 4, scope: !1353)
!1357 = !DILocation(line: 1170, column: 51, scope: !1353)
!1358 = !DILocation(line: 1170, column: 76, scope: !1353)
!1359 = !DILocation(line: 1171, column: 24, scope: !767)
!1360 = !DILocation(line: 1171, column: 2, scope: !767)
!1361 = !DILocation(line: 1173, column: 6, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1173, column: 6)
!1363 = !DILocation(line: 1173, column: 6, scope: !767)
!1364 = !DILocation(line: 1175, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1175, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !424, line: 1174, column: 2)
!1367 = !DILocation(line: 1175, column: 7, scope: !1366)
!1368 = !DILocation(line: 1176, column: 35, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !424, line: 1176, column: 4)
!1370 = !DILocation(line: 1176, column: 6, scope: !1369)
!1371 = !DILocation(line: 1176, column: 127, scope: !1369)
!1372 = !DILocation(line: 1176, column: 132, scope: !1369)
!1373 = !DILocation(line: 1178, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1178, column: 3)
!1375 = !DILocation(line: 1178, column: 5, scope: !1374)
!1376 = !DILocation(line: 1178, column: 54, scope: !1374)
!1377 = !DILocation(line: 1178, column: 77, scope: !1374)
!1378 = !DILocation(line: 1180, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1180, column: 7)
!1380 = !DILocation(line: 1180, column: 7, scope: !1366)
!1381 = !DILocation(line: 1182, column: 4, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !424, line: 1181, column: 3)
!1383 = !DILocation(line: 1183, column: 4, scope: !1382)
!1384 = !DILocation(line: 1185, column: 27, scope: !1366)
!1385 = !DILocation(line: 1186, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1186, column: 7)
!1387 = !DILocation(line: 1186, column: 7, scope: !1366)
!1388 = !DILocation(line: 1188, column: 4, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !424, line: 1187, column: 3)
!1390 = !DILocation(line: 1189, column: 4, scope: !1389)
!1391 = !DILocation(line: 1191, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1191, column: 7)
!1393 = !DILocation(line: 1191, column: 7, scope: !1366)
!1394 = !DILocation(line: 1193, column: 4, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !424, line: 1192, column: 3)
!1396 = !DILocation(line: 1194, column: 4, scope: !1395)
!1397 = !DILocation(line: 1196, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1196, column: 7)
!1399 = !DILocation(line: 1196, column: 7, scope: !1366)
!1400 = !DILocation(line: 1198, column: 4, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !424, line: 1197, column: 3)
!1402 = !DILocation(line: 1199, column: 4, scope: !1401)
!1403 = !DILocation(line: 1201, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1201, column: 7)
!1405 = !DILocation(line: 1201, column: 7, scope: !1366)
!1406 = !DILocation(line: 1203, column: 4, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !424, line: 1202, column: 3)
!1408 = !DILocation(line: 1204, column: 4, scope: !1407)
!1409 = !DILocation(line: 1206, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1366, file: !424, line: 1206, column: 7)
!1411 = !DILocation(line: 1206, column: 21, scope: !1410)
!1412 = !DILocation(line: 1206, column: 7, scope: !1366)
!1413 = !DILocation(line: 1208, column: 4, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !424, line: 1207, column: 3)
!1415 = !DILocation(line: 1209, column: 4, scope: !1414)
!1416 = !DILocation(line: 1212, column: 22, scope: !1366)
!1417 = !DILocation(line: 1213, column: 19, scope: !1366)
!1418 = !DILocation(line: 1214, column: 2, scope: !1366)
!1419 = !DILocation(line: 1216, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1216, column: 6)
!1421 = !DILocation(line: 1216, column: 6, scope: !767)
!1422 = !DILocation(line: 1218, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !424, line: 1217, column: 2)
!1424 = !DILocation(line: 1218, column: 8, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1423, file: !424, discriminator: 1)
!1426 = !DILocation(line: 1218, column: 6, scope: !1423)
!1427 = !DILocation(line: 1219, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !424, line: 1219, column: 7)
!1429 = !DILocation(line: 1219, column: 11, scope: !1428)
!1430 = !DILocation(line: 1219, column: 19, scope: !1428)
!1431 = !DILocation(line: 1219, column: 23, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1428, file: !424, discriminator: 1)
!1433 = !DILocation(line: 1219, column: 27, scope: !1432)
!1434 = !DILocation(line: 1219, column: 35, scope: !1432)
!1435 = !DILocation(line: 1219, column: 7, scope: !1432)
!1436 = !DILocation(line: 1221, column: 4, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !424, line: 1220, column: 3)
!1438 = !DILocation(line: 1223, column: 4, scope: !1437)
!1439 = !DILocalVariable(name: "pwlen", scope: !1423, file: !424, line: 1226, type: !390)
!1440 = !DILocation(line: 1226, column: 7, scope: !1423)
!1441 = !DILocation(line: 1226, column: 22, scope: !1423)
!1442 = !DILocation(line: 1226, column: 26, scope: !1423)
!1443 = !DILocation(line: 1226, column: 15, scope: !1423)
!1444 = !DILocation(line: 1226, column: 35, scope: !1423)
!1445 = !DILocation(line: 1227, column: 33, scope: !1423)
!1446 = !DILocation(line: 1227, column: 25, scope: !1423)
!1447 = !DILocation(line: 1227, column: 14, scope: !1423)
!1448 = !DILocation(line: 1228, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1423, file: !424, line: 1228, column: 3)
!1450 = !DILocation(line: 1228, column: 24, scope: !1449)
!1451 = !DILocation(line: 1228, column: 28, scope: !1449)
!1452 = !DILocation(line: 1228, column: 36, scope: !1449)
!1453 = !DILocation(line: 1228, column: 41, scope: !1449)
!1454 = !DILocation(line: 1228, column: 5, scope: !1449)
!1455 = !DILocation(line: 1228, column: 57, scope: !1449)
!1456 = !DILocation(line: 1228, column: 62, scope: !1449)
!1457 = !DILocation(line: 1228, column: 46, scope: !1449)
!1458 = !DILocation(line: 1228, column: 66, scope: !1449)
!1459 = !DILocation(line: 1229, column: 2, scope: !1423)
!1460 = !DILocation(line: 1231, column: 6, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1231, column: 6)
!1462 = !DILocation(line: 1231, column: 20, scope: !1461)
!1463 = !DILocation(line: 1231, column: 6, scope: !767)
!1464 = !DILocation(line: 1233, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !424, line: 1233, column: 7)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !424, line: 1232, column: 2)
!1467 = !DILocation(line: 1233, column: 7, scope: !1466)
!1468 = !DILocation(line: 1235, column: 25, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !424, line: 1235, column: 4)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !424, line: 1234, column: 3)
!1471 = !DILocation(line: 1235, column: 6, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1469, file: !424, discriminator: 1)
!1473 = !DILocation(line: 1235, column: 61, scope: !1469)
!1474 = !DILocation(line: 1236, column: 3, scope: !1470)
!1475 = !DILocation(line: 1239, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !424, line: 1239, column: 4)
!1477 = distinct !DILexicalBlock(scope: !1465, file: !424, line: 1238, column: 3)
!1478 = !DILocation(line: 1239, column: 89, scope: !1476)
!1479 = !DILocation(line: 1241, column: 2, scope: !1466)
!1480 = !DILocation(line: 1243, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1243, column: 6)
!1482 = !DILocation(line: 1243, column: 20, scope: !1481)
!1483 = !DILocation(line: 1243, column: 6, scope: !767)
!1484 = !DILocation(line: 1245, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !424, line: 1245, column: 7)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !424, line: 1244, column: 2)
!1487 = !DILocation(line: 1245, column: 7, scope: !1485)
!1488 = !DILocation(line: 1245, column: 55, scope: !1485)
!1489 = !DILocation(line: 1245, column: 7, scope: !1486)
!1490 = !DILocation(line: 1247, column: 4, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !424, line: 1246, column: 3)
!1492 = !DILocation(line: 1248, column: 4, scope: !1491)
!1493 = !DILocation(line: 1251, column: 14, scope: !1486)
!1494 = !DILocation(line: 1251, column: 7, scope: !1486)
!1495 = !DILocation(line: 1251, column: 5, scope: !1486)
!1496 = !DILocation(line: 1252, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !424, line: 1252, column: 7)
!1498 = !DILocation(line: 1252, column: 9, scope: !1497)
!1499 = !DILocation(line: 1252, column: 7, scope: !1486)
!1500 = !DILocation(line: 1253, column: 5, scope: !1497)
!1501 = !DILocation(line: 1253, column: 7, scope: !1497)
!1502 = !DILocation(line: 1253, column: 4, scope: !1497)
!1503 = !DILocation(line: 1255, column: 24, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1486, file: !424, line: 1255, column: 3)
!1505 = !DILocation(line: 1255, column: 5, scope: !1504)
!1506 = !DILocation(line: 1255, column: 93, scope: !1504)
!1507 = !DILocation(line: 1256, column: 2, scope: !1486)
!1508 = !DILocation(line: 1258, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1258, column: 6)
!1510 = !DILocation(line: 1258, column: 22, scope: !1509)
!1511 = !DILocation(line: 1258, column: 6, scope: !767)
!1512 = !DILocation(line: 1260, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !424, line: 1260, column: 7)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !424, line: 1259, column: 2)
!1515 = !DILocation(line: 1260, column: 14, scope: !1513)
!1516 = !DILocation(line: 1260, column: 37, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !424, discriminator: 1)
!1518 = !DILocation(line: 1260, column: 17, scope: !1517)
!1519 = !DILocation(line: 1260, column: 7, scope: !1517)
!1520 = !DILocation(line: 1262, column: 4, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1513, file: !424, line: 1261, column: 3)
!1522 = !DILocation(line: 1264, column: 3, scope: !1521)
!1523 = !DILocation(line: 1267, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !424, line: 1267, column: 4)
!1525 = distinct !DILexicalBlock(scope: !1513, file: !424, line: 1266, column: 3)
!1526 = !DILocation(line: 1267, column: 97, scope: !1524)
!1527 = !DILocation(line: 1269, column: 2, scope: !1514)
!1528 = !DILocation(line: 1270, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1270, column: 6)
!1530 = !DILocation(line: 1270, column: 6, scope: !767)
!1531 = !DILocation(line: 1271, column: 9, scope: !1529)
!1532 = !DILocation(line: 1271, column: 3, scope: !1529)
!1533 = !DILocation(line: 1274, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1274, column: 6)
!1535 = !DILocation(line: 1274, column: 6, scope: !767)
!1536 = !DILocation(line: 1276, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !424, line: 1276, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !424, line: 1275, column: 2)
!1539 = !DILocation(line: 1276, column: 7, scope: !1538)
!1540 = !DILocation(line: 1278, column: 10, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !424, line: 1277, column: 3)
!1542 = !DILocation(line: 1279, column: 3, scope: !1541)
!1543 = !DILocation(line: 1282, column: 4, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !424, line: 1281, column: 3)
!1545 = !DILocation(line: 1283, column: 4, scope: !1544)
!1546 = !DILocation(line: 1285, column: 2, scope: !1538)
!1547 = !DILocation(line: 1287, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1287, column: 6)
!1549 = !DILocation(line: 1287, column: 17, scope: !1548)
!1550 = !DILocation(line: 1287, column: 6, scope: !767)
!1551 = !DILocation(line: 1289, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !424, line: 1288, column: 2)
!1553 = !DILocation(line: 1290, column: 20, scope: !1552)
!1554 = !DILocation(line: 1290, column: 3, scope: !1552)
!1555 = !DILocation(line: 1291, column: 2, scope: !1552)
!1556 = !DILocation(line: 1294, column: 6, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1294, column: 6)
!1558 = !DILocation(line: 1294, column: 17, scope: !1557)
!1559 = !DILocation(line: 1294, column: 20, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !424, discriminator: 1)
!1561 = !DILocation(line: 1294, column: 6, scope: !1560)
!1562 = !DILocation(line: 1296, column: 17, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !424, line: 1296, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !424, line: 1295, column: 2)
!1565 = !DILocation(line: 1296, column: 25, scope: !1563)
!1566 = !DILocation(line: 1296, column: 33, scope: !1563)
!1567 = !DILocation(line: 1296, column: 7, scope: !1563)
!1568 = !DILocation(line: 1296, column: 45, scope: !1563)
!1569 = !DILocation(line: 1296, column: 7, scope: !1564)
!1570 = !DILocation(line: 1298, column: 4, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !424, line: 1297, column: 3)
!1572 = !DILocation(line: 1299, column: 4, scope: !1571)
!1573 = !DILocation(line: 1302, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1564, file: !424, line: 1302, column: 7)
!1575 = !DILocation(line: 1302, column: 7, scope: !1564)
!1576 = !DILocation(line: 1304, column: 4, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !424, line: 1303, column: 3)
!1578 = !DILocation(line: 1307, column: 8, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !424, line: 1307, column: 8)
!1580 = !DILocation(line: 1307, column: 8, scope: !1577)
!1581 = !DILocation(line: 1308, column: 12, scope: !1579)
!1582 = !DILocation(line: 1308, column: 5, scope: !1579)
!1583 = !DILocation(line: 1310, column: 4, scope: !1577)
!1584 = !DILocation(line: 1311, column: 4, scope: !1577)
!1585 = !DILocation(line: 1313, column: 2, scope: !1564)
!1586 = !DILocation(line: 1315, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1315, column: 6)
!1588 = !DILocation(line: 1315, column: 6, scope: !767)
!1589 = !DILocation(line: 1316, column: 3, scope: !1587)
!1590 = !DILocation(line: 1319, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1319, column: 6)
!1592 = !DILocation(line: 1319, column: 7, scope: !1591)
!1593 = !DILocation(line: 1319, column: 6, scope: !767)
!1594 = !DILocation(line: 1320, column: 3, scope: !1591)
!1595 = !DILocation(line: 1323, column: 6, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1323, column: 6)
!1597 = !DILocation(line: 1323, column: 6, scope: !767)
!1598 = !DILocation(line: 1324, column: 3, scope: !1596)
!1599 = !DILocation(line: 1326, column: 2, scope: !767)
!1600 = !DILocation(line: 1328, column: 2, scope: !767)
!1601 = !DILocation(line: 1329, column: 2, scope: !767)
!1602 = !DILocation(line: 1331, column: 2, scope: !767)
!1603 = !DILocation(line: 1333, column: 19, scope: !767)
!1604 = !DILocation(line: 1334, column: 2, scope: !767)
!1605 = !DILocation(line: 1336, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1335, column: 2)
!1607 = !DILocation(line: 1338, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1338, column: 7)
!1609 = !DILocation(line: 1338, column: 7, scope: !1606)
!1610 = !DILocation(line: 1340, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !424, line: 1340, column: 4)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !424, line: 1339, column: 3)
!1613 = !DILocation(line: 1340, column: 21, scope: !1611)
!1614 = !DILocation(line: 1340, column: 6, scope: !1611)
!1615 = !DILocation(line: 1340, column: 58, scope: !1611)
!1616 = !DILocation(line: 1340, column: 83, scope: !1611)
!1617 = !DILocation(line: 1341, column: 10, scope: !1612)
!1618 = !DILocation(line: 1341, column: 4, scope: !1612)
!1619 = !DILocation(line: 1342, column: 41, scope: !1612)
!1620 = !DILocation(line: 1342, column: 34, scope: !1612)
!1621 = !DILocation(line: 1342, column: 62, scope: !1612)
!1622 = !DILocation(line: 1342, column: 26, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1612, file: !424, discriminator: 1)
!1624 = !DILocation(line: 1342, column: 15, scope: !1612)
!1625 = !DILocation(line: 1343, column: 14, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1612, file: !424, line: 1343, column: 4)
!1627 = !DILocation(line: 1343, column: 25, scope: !1626)
!1628 = !DILocation(line: 1343, column: 52, scope: !1626)
!1629 = !DILocation(line: 1343, column: 45, scope: !1626)
!1630 = !DILocation(line: 1343, column: 73, scope: !1626)
!1631 = !DILocation(line: 1343, column: 77, scope: !1626)
!1632 = !DILocation(line: 1343, column: 6, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1626, file: !424, discriminator: 1)
!1634 = !DILocation(line: 1343, column: 100, scope: !1626)
!1635 = !DILocation(line: 1343, column: 93, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1626, file: !424, discriminator: 2)
!1637 = !DILocation(line: 1343, column: 121, scope: !1626)
!1638 = !DILocation(line: 1343, column: 125, scope: !1626)
!1639 = !DILocation(line: 1343, column: 82, scope: !1626)
!1640 = !DILocation(line: 1343, column: 129, scope: !1626)
!1641 = !DILocation(line: 1344, column: 14, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1612, file: !424, line: 1344, column: 4)
!1643 = !DILocation(line: 1344, column: 21, scope: !1642)
!1644 = !DILocation(line: 1344, column: 6, scope: !1642)
!1645 = !DILocation(line: 1344, column: 58, scope: !1642)
!1646 = !DILocation(line: 1344, column: 83, scope: !1642)
!1647 = !DILocation(line: 1345, column: 10, scope: !1612)
!1648 = !DILocation(line: 1348, column: 11, scope: !1612)
!1649 = !DILocation(line: 1348, column: 32, scope: !1612)
!1650 = !DILocation(line: 1348, column: 51, scope: !1612)
!1651 = !DILocation(line: 1347, column: 4, scope: !1612)
!1652 = !DILocation(line: 1353, column: 20, scope: !1612)
!1653 = !DILocation(line: 1354, column: 3, scope: !1612)
!1654 = !DILocation(line: 1356, column: 3, scope: !1606)
!1655 = !DILocation(line: 1359, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1358, column: 7)
!1657 = !DILocation(line: 1359, column: 16, scope: !1656)
!1658 = !DILocation(line: 1359, column: 23, scope: !1656)
!1659 = !DILocation(line: 1359, column: 43, scope: !1656)
!1660 = !DILocation(line: 1359, column: 50, scope: !1656)
!1661 = !DILocation(line: 1359, column: 61, scope: !1656)
!1662 = !DILocation(line: 1358, column: 8, scope: !1656)
!1663 = !DILocation(line: 1358, column: 7, scope: !1606)
!1664 = !DILocation(line: 1362, column: 20, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1656, file: !424, line: 1360, column: 3)
!1666 = !DILocation(line: 1364, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !424, line: 1364, column: 8)
!1668 = !DILocation(line: 1364, column: 25, scope: !1667)
!1669 = !DILocation(line: 1364, column: 8, scope: !1665)
!1670 = !DILocation(line: 1365, column: 5, scope: !1667)
!1671 = !DILocation(line: 1368, column: 8, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !424, line: 1368, column: 8)
!1673 = !DILocation(line: 1368, column: 20, scope: !1672)
!1674 = !DILocation(line: 1368, column: 18, scope: !1672)
!1675 = !DILocation(line: 1368, column: 42, scope: !1672)
!1676 = !DILocation(line: 1368, column: 8, scope: !1665)
!1677 = !DILocation(line: 1370, column: 5, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !424, line: 1369, column: 4)
!1679 = !DILocation(line: 1373, column: 5, scope: !1678)
!1680 = !DILocation(line: 1376, column: 4, scope: !1665)
!1681 = !DILocation(line: 1377, column: 4, scope: !1665)
!1682 = distinct !{!1682, !1604}
!1683 = !DILocation(line: 1380, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1380, column: 7)
!1685 = !DILocation(line: 1380, column: 7, scope: !1606)
!1686 = !DILocation(line: 1382, column: 4, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !424, line: 1381, column: 3)
!1688 = !DILocation(line: 1383, column: 4, scope: !1687)
!1689 = !DILocation(line: 1388, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1388, column: 7)
!1691 = !DILocation(line: 1388, column: 7, scope: !1606)
!1692 = !DILocation(line: 1389, column: 40, scope: !1690)
!1693 = !DILocation(line: 1389, column: 25, scope: !1690)
!1694 = !DILocation(line: 1389, column: 4, scope: !1690)
!1695 = !DILocation(line: 1391, column: 3, scope: !1606)
!1696 = !DILocation(line: 1393, column: 3, scope: !1606)
!1697 = !DILocation(line: 1394, column: 3, scope: !1606)
!1698 = !DILocation(line: 1396, column: 15, scope: !1606)
!1699 = !DILocation(line: 1397, column: 20, scope: !1606)
!1700 = !DILocation(line: 1398, column: 19, scope: !1606)
!1701 = !DILocation(line: 1399, column: 3, scope: !1606)
!1702 = !DILocation(line: 1401, column: 3, scope: !1606)
!1703 = !DILocation(line: 1403, column: 3, scope: !1606)
!1704 = !DILocation(line: 1404, column: 3, scope: !1606)
!1705 = !DILocation(line: 1411, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1411, column: 7)
!1707 = !DILocation(line: 1411, column: 19, scope: !1706)
!1708 = !DILocation(line: 1411, column: 26, scope: !1706)
!1709 = !DILocation(line: 1411, column: 29, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1706, file: !424, discriminator: 1)
!1711 = !DILocation(line: 1411, column: 45, scope: !1710)
!1712 = !DILocation(line: 1411, column: 7, scope: !1710)
!1713 = !DILocation(line: 1413, column: 16, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !424, line: 1412, column: 3)
!1715 = !DILocation(line: 1414, column: 20, scope: !1714)
!1716 = !DILocation(line: 1415, column: 3, scope: !1714)
!1717 = !DILocation(line: 1416, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1706, file: !424, line: 1416, column: 12)
!1719 = !DILocation(line: 1416, column: 28, scope: !1718)
!1720 = !DILocation(line: 1416, column: 12, scope: !1706)
!1721 = !DILocation(line: 1419, column: 20, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !424, line: 1417, column: 3)
!1723 = !DILocation(line: 1420, column: 3, scope: !1722)
!1724 = !DILocation(line: 1423, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1606, file: !424, line: 1423, column: 7)
!1726 = !DILocation(line: 1423, column: 19, scope: !1725)
!1727 = !DILocation(line: 1423, column: 22, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1725, file: !424, discriminator: 1)
!1729 = !DILocation(line: 1423, column: 34, scope: !1728)
!1730 = !DILocation(line: 1423, column: 41, scope: !1728)
!1731 = !DILocation(line: 1423, column: 44, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1725, file: !424, discriminator: 2)
!1733 = !DILocation(line: 1423, column: 60, scope: !1732)
!1734 = !DILocation(line: 1423, column: 7, scope: !1732)
!1735 = !DILocation(line: 1426, column: 4, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !424, line: 1424, column: 3)
!1737 = !DILocation(line: 1431, column: 8, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !424, line: 1431, column: 8)
!1739 = distinct !DILexicalBlock(scope: !1725, file: !424, line: 1429, column: 3)
!1740 = !DILocation(line: 1431, column: 8, scope: !1739)
!1741 = !DILocation(line: 1433, column: 5, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !424, line: 1432, column: 4)
!1743 = !DILocation(line: 1434, column: 4, scope: !1742)
!1744 = !DILocation(line: 1435, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1738, file: !424, line: 1435, column: 13)
!1746 = !DILocation(line: 1435, column: 13, scope: !1738)
!1747 = !DILocation(line: 1437, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !424, line: 1437, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !424, line: 1436, column: 4)
!1750 = !DILocation(line: 1437, column: 31, scope: !1748)
!1751 = !DILocation(line: 1437, column: 9, scope: !1749)
!1752 = !DILocation(line: 1443, column: 6, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !424, line: 1438, column: 5)
!1754 = !DILocation(line: 1445, column: 6, scope: !1753)
!1755 = !DILocation(line: 1449, column: 5, scope: !1749)
!1756 = !DILocation(line: 1452, column: 21, scope: !1749)
!1757 = !DILocation(line: 1453, column: 22, scope: !1749)
!1758 = !DILocation(line: 1454, column: 4, scope: !1749)
!1759 = !DILocation(line: 1455, column: 13, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1745, file: !424, line: 1455, column: 13)
!1761 = !DILocation(line: 1455, column: 13, scope: !1745)
!1762 = !DILocation(line: 1459, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !424, line: 1456, column: 4)
!1764 = !DILocation(line: 1459, column: 39, scope: !1763)
!1765 = !DILocation(line: 1458, column: 5, scope: !1763)
!1766 = !DILocation(line: 1460, column: 22, scope: !1763)
!1767 = !DILocation(line: 1461, column: 22, scope: !1763)
!1768 = !DILocation(line: 1463, column: 5, scope: !1763)
!1769 = !DILocation(line: 1464, column: 5, scope: !1763)
!1770 = !DILocation(line: 1465, column: 4, scope: !1763)
!1771 = !DILocation(line: 1468, column: 5, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1760, file: !424, line: 1467, column: 4)
!1773 = !DILocation(line: 1469, column: 5, scope: !1772)
!1774 = !DILocation(line: 1334, column: 2, scope: !823)
!1775 = !DILocation(line: 1474, column: 2, scope: !767)
!1776 = !DILocation(line: 1475, column: 2, scope: !767)
!1777 = !DILocation(line: 1477, column: 2, scope: !767)
!1778 = !DILocation(line: 1478, column: 2, scope: !767)
!1779 = !DILocation(line: 1480, column: 6, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !767, file: !424, line: 1480, column: 6)
!1781 = !DILocation(line: 1480, column: 6, scope: !767)
!1782 = !DILocation(line: 1481, column: 3, scope: !1780)
!1783 = !DILocation(line: 1483, column: 34, scope: !767)
!1784 = !DILocation(line: 1483, column: 47, scope: !767)
!1785 = !DILocation(line: 1483, column: 9, scope: !767)
!1786 = !DILocation(line: 1483, column: 2, scope: !767)
!1787 = !DILocation(line: 1489, column: 1, scope: !767)
!1788 = distinct !DISubprogram(name: "xstrdup", scope: !424, file: !424, line: 1600, type: !1789, isLocal: false, isDefinition: true, scopeLine: 1601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!391, !536}
!1791 = !DILocalVariable(name: "s", arg: 1, scope: !1788, file: !424, line: 1600, type: !536)
!1792 = !DILocation(line: 1600, column: 21, scope: !1788)
!1793 = !DILocalVariable(name: "mem", scope: !1788, file: !424, line: 1602, type: !391)
!1794 = !DILocation(line: 1602, column: 8, scope: !1788)
!1795 = !DILocation(line: 1602, column: 21, scope: !1788)
!1796 = !DILocation(line: 1602, column: 14, scope: !1788)
!1797 = !DILocation(line: 1603, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1788, file: !424, line: 1603, column: 6)
!1799 = !DILocation(line: 1603, column: 10, scope: !1798)
!1800 = !DILocation(line: 1603, column: 6, scope: !1788)
!1801 = !DILocation(line: 1605, column: 67, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !424, line: 1604, column: 2)
!1803 = !DILocation(line: 1605, column: 66, scope: !1802)
!1804 = !DILocation(line: 1605, column: 57, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1802, file: !424, discriminator: 1)
!1806 = !DILocation(line: 1605, column: 3, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1802, file: !424, discriminator: 2)
!1808 = !DILocation(line: 1606, column: 3, scope: !1802)
!1809 = !DILocation(line: 1608, column: 9, scope: !1788)
!1810 = !DILocation(line: 1608, column: 2, scope: !1788)
!1811 = distinct !DISubprogram(name: "xmalloc", scope: !424, file: !424, line: 1576, type: !1812, isLocal: false, isDefinition: true, scopeLine: 1577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!393, !390}
!1814 = !DILocalVariable(name: "size", arg: 1, scope: !1811, file: !424, line: 1576, type: !390)
!1815 = !DILocation(line: 1576, column: 13, scope: !1811)
!1816 = !DILocalVariable(name: "mem", scope: !1811, file: !424, line: 1578, type: !393)
!1817 = !DILocation(line: 1578, column: 8, scope: !1811)
!1818 = !DILocation(line: 1578, column: 21, scope: !1811)
!1819 = !DILocation(line: 1578, column: 14, scope: !1811)
!1820 = !DILocation(line: 1579, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !424, line: 1579, column: 6)
!1822 = !DILocation(line: 1579, column: 10, scope: !1821)
!1823 = !DILocation(line: 1579, column: 6, scope: !1811)
!1824 = !DILocation(line: 1581, column: 63, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !424, line: 1580, column: 2)
!1826 = !DILocation(line: 1581, column: 3, scope: !1825)
!1827 = !DILocation(line: 1582, column: 3, scope: !1825)
!1828 = !DILocation(line: 1584, column: 9, scope: !1811)
!1829 = !DILocation(line: 1584, column: 2, scope: !1811)
!1830 = distinct !DISubprogram(name: "str_startswith", scope: !424, file: !424, line: 1747, type: !1831, isLocal: false, isDefinition: true, scopeLine: 1748, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!454, !536, !536}
!1833 = !DILocalVariable(name: "s", arg: 1, scope: !1830, file: !424, line: 1747, type: !536)
!1834 = !DILocation(line: 1747, column: 28, scope: !1830)
!1835 = !DILocalVariable(name: "prefix", arg: 2, scope: !1830, file: !424, line: 1747, type: !536)
!1836 = !DILocation(line: 1747, column: 43, scope: !1830)
!1837 = !DILocation(line: 1749, column: 18, scope: !1830)
!1838 = !DILocation(line: 1749, column: 21, scope: !1830)
!1839 = !DILocation(line: 1749, column: 36, scope: !1830)
!1840 = !DILocation(line: 1749, column: 29, scope: !1830)
!1841 = !DILocation(line: 1749, column: 10, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1830, file: !424, discriminator: 1)
!1843 = !DILocation(line: 1749, column: 45, scope: !1830)
!1844 = !DILocation(line: 1749, column: 2, scope: !1830)
!1845 = distinct !DISubprogram(name: "next_arg", scope: !424, file: !424, line: 1686, type: !1846, isLocal: false, isDefinition: true, scopeLine: 1687, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!391, !391, !392}
!1848 = !DILocalVariable(name: "src", arg: 1, scope: !1845, file: !424, line: 1686, type: !391)
!1849 = !DILocation(line: 1686, column: 16, scope: !1845)
!1850 = !DILocalVariable(name: "needle", arg: 2, scope: !1845, file: !424, line: 1686, type: !392)
!1851 = !DILocation(line: 1686, column: 26, scope: !1845)
!1852 = !DILocalVariable(name: "nextval", scope: !1845, file: !424, line: 1688, type: !391)
!1853 = !DILocation(line: 1688, column: 8, scope: !1845)
!1854 = !DILocalVariable(name: "p", scope: !1845, file: !424, line: 1689, type: !391)
!1855 = !DILocation(line: 1689, column: 8, scope: !1845)
!1856 = !DILocalVariable(name: "mvp", scope: !1845, file: !424, line: 1690, type: !391)
!1857 = !DILocation(line: 1690, column: 8, scope: !1845)
!1858 = !DILocation(line: 1693, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1845, file: !424, line: 1693, column: 6)
!1860 = !DILocation(line: 1693, column: 6, scope: !1859)
!1861 = !DILocation(line: 1693, column: 11, scope: !1859)
!1862 = !DILocation(line: 1693, column: 6, scope: !1845)
!1863 = !DILocation(line: 1694, column: 3, scope: !1859)
!1864 = !DILocation(line: 1696, column: 6, scope: !1845)
!1865 = !DILocation(line: 1696, column: 4, scope: !1845)
!1866 = !DILocation(line: 1698, column: 2, scope: !1845)
!1867 = !DILocation(line: 1698, column: 27, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1845, file: !424, discriminator: 1)
!1869 = !DILocation(line: 1698, column: 30, scope: !1868)
!1870 = !DILocation(line: 1698, column: 20, scope: !1868)
!1871 = !DILocation(line: 1698, column: 18, scope: !1868)
!1872 = !DILocation(line: 1698, column: 2, scope: !1868)
!1873 = !DILocation(line: 1700, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1845, file: !424, line: 1699, column: 2)
!1875 = !DILocation(line: 1700, column: 17, scope: !1874)
!1876 = !DILocation(line: 1700, column: 7, scope: !1874)
!1877 = !DILocation(line: 1702, column: 8, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !424, line: 1702, column: 7)
!1879 = !DILocation(line: 1702, column: 7, scope: !1878)
!1880 = !DILocation(line: 1702, column: 12, scope: !1878)
!1881 = !DILocation(line: 1702, column: 20, scope: !1878)
!1882 = !DILocation(line: 1702, column: 24, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1878, file: !424, discriminator: 1)
!1884 = !DILocation(line: 1702, column: 30, scope: !1883)
!1885 = !DILocation(line: 1702, column: 28, scope: !1883)
!1886 = !DILocation(line: 1702, column: 7, scope: !1883)
!1887 = !DILocation(line: 1705, column: 4, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !424, line: 1703, column: 3)
!1889 = !DILocation(line: 1705, column: 13, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1888, file: !424, discriminator: 1)
!1891 = !DILocation(line: 1705, column: 17, scope: !1890)
!1892 = !DILocation(line: 1705, column: 11, scope: !1890)
!1893 = !DILocation(line: 1705, column: 22, scope: !1890)
!1894 = !DILocation(line: 1705, column: 4, scope: !1890)
!1895 = !DILocation(line: 1707, column: 14, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !424, line: 1706, column: 4)
!1897 = !DILocation(line: 1707, column: 18, scope: !1896)
!1898 = !DILocation(line: 1707, column: 12, scope: !1896)
!1899 = !DILocation(line: 1707, column: 6, scope: !1896)
!1900 = !DILocation(line: 1707, column: 10, scope: !1896)
!1901 = !DILocation(line: 1708, column: 8, scope: !1896)
!1902 = !DILocation(line: 1705, column: 4, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1888, file: !424, discriminator: 2)
!1904 = distinct !{!1904, !1887}
!1905 = !DILocation(line: 1710, column: 5, scope: !1888)
!1906 = !DILocation(line: 1710, column: 9, scope: !1888)
!1907 = !DILocation(line: 1711, column: 8, scope: !1888)
!1908 = !DILocation(line: 1711, column: 6, scope: !1888)
!1909 = !DILocation(line: 1712, column: 3, scope: !1888)
!1910 = !DILocation(line: 1715, column: 8, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1878, file: !424, line: 1714, column: 3)
!1912 = !DILocation(line: 1715, column: 16, scope: !1911)
!1913 = !DILocation(line: 1715, column: 6, scope: !1911)
!1914 = !DILocation(line: 1716, column: 4, scope: !1911)
!1915 = !DILocation(line: 1698, column: 2, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1845, file: !424, discriminator: 2)
!1917 = distinct !{!1917, !1866}
!1918 = !DILocation(line: 1722, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1845, file: !424, line: 1722, column: 6)
!1920 = !DILocation(line: 1722, column: 6, scope: !1845)
!1921 = !DILocation(line: 1724, column: 4, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !424, line: 1723, column: 2)
!1923 = !DILocation(line: 1724, column: 12, scope: !1922)
!1924 = !DILocation(line: 1725, column: 10, scope: !1922)
!1925 = !DILocation(line: 1725, column: 3, scope: !1922)
!1926 = !DILocation(line: 1729, column: 12, scope: !1845)
!1927 = !DILocation(line: 1729, column: 25, scope: !1845)
!1928 = !DILocation(line: 1729, column: 18, scope: !1845)
!1929 = !DILocation(line: 1729, column: 16, scope: !1845)
!1930 = !DILocation(line: 1729, column: 10, scope: !1845)
!1931 = !DILocation(line: 1730, column: 9, scope: !1845)
!1932 = !DILocation(line: 1730, column: 2, scope: !1845)
!1933 = !DILocation(line: 1731, column: 1, scope: !1845)
!1934 = distinct !DISubprogram(name: "usage", scope: !424, file: !424, line: 164, type: !1935, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !391}
!1937 = !DILocalVariable(name: "program", arg: 1, scope: !1934, file: !424, line: 164, type: !391)
!1938 = !DILocation(line: 164, column: 13, scope: !1934)
!1939 = !DILocation(line: 166, column: 9, scope: !1934)
!1940 = !DILocation(line: 166, column: 2, scope: !1934)
!1941 = !DILocation(line: 167, column: 9, scope: !1934)
!1942 = !DILocation(line: 167, column: 2, scope: !1934)
!1943 = !DILocation(line: 169, column: 9, scope: !1934)
!1944 = !DILocation(line: 169, column: 2, scope: !1934)
!1945 = !DILocation(line: 171, column: 9, scope: !1934)
!1946 = !DILocation(line: 171, column: 56, scope: !1934)
!1947 = !DILocation(line: 171, column: 2, scope: !1934)
!1948 = !DILocation(line: 172, column: 9, scope: !1934)
!1949 = !DILocation(line: 172, column: 2, scope: !1934)
!1950 = !DILocation(line: 173, column: 9, scope: !1934)
!1951 = !DILocation(line: 173, column: 2, scope: !1934)
!1952 = !DILocation(line: 174, column: 9, scope: !1934)
!1953 = !DILocation(line: 174, column: 2, scope: !1934)
!1954 = !DILocation(line: 175, column: 9, scope: !1934)
!1955 = !DILocation(line: 175, column: 2, scope: !1934)
!1956 = !DILocation(line: 176, column: 9, scope: !1934)
!1957 = !DILocation(line: 176, column: 2, scope: !1934)
!1958 = !DILocation(line: 177, column: 9, scope: !1934)
!1959 = !DILocation(line: 177, column: 2, scope: !1934)
!1960 = !DILocation(line: 178, column: 9, scope: !1934)
!1961 = !DILocation(line: 178, column: 2, scope: !1934)
!1962 = !DILocation(line: 179, column: 9, scope: !1934)
!1963 = !DILocation(line: 179, column: 2, scope: !1934)
!1964 = !DILocation(line: 183, column: 9, scope: !1934)
!1965 = !DILocation(line: 183, column: 2, scope: !1934)
!1966 = !DILocation(line: 184, column: 9, scope: !1934)
!1967 = !DILocation(line: 184, column: 2, scope: !1934)
!1968 = !DILocation(line: 185, column: 9, scope: !1934)
!1969 = !DILocation(line: 185, column: 2, scope: !1934)
!1970 = !DILocation(line: 186, column: 9, scope: !1934)
!1971 = !DILocation(line: 186, column: 2, scope: !1934)
!1972 = !DILocation(line: 187, column: 9, scope: !1934)
!1973 = !DILocation(line: 187, column: 2, scope: !1934)
!1974 = !DILocation(line: 188, column: 9, scope: !1934)
!1975 = !DILocation(line: 188, column: 2, scope: !1934)
!1976 = !DILocation(line: 189, column: 9, scope: !1934)
!1977 = !DILocation(line: 189, column: 2, scope: !1934)
!1978 = !DILocation(line: 190, column: 9, scope: !1934)
!1979 = !DILocation(line: 190, column: 2, scope: !1934)
!1980 = !DILocation(line: 191, column: 9, scope: !1934)
!1981 = !DILocation(line: 191, column: 2, scope: !1934)
!1982 = !DILocation(line: 192, column: 9, scope: !1934)
!1983 = !DILocation(line: 192, column: 2, scope: !1934)
!1984 = !DILocation(line: 193, column: 9, scope: !1934)
!1985 = !DILocation(line: 193, column: 2, scope: !1934)
!1986 = !DILocation(line: 194, column: 9, scope: !1934)
!1987 = !DILocation(line: 194, column: 2, scope: !1934)
!1988 = !DILocation(line: 195, column: 9, scope: !1934)
!1989 = !DILocation(line: 195, column: 2, scope: !1934)
!1990 = !DILocation(line: 196, column: 9, scope: !1934)
!1991 = !DILocation(line: 196, column: 2, scope: !1934)
!1992 = !DILocation(line: 197, column: 9, scope: !1934)
!1993 = !DILocation(line: 197, column: 2, scope: !1934)
!1994 = !DILocation(line: 198, column: 9, scope: !1934)
!1995 = !DILocation(line: 198, column: 2, scope: !1934)
!1996 = !DILocation(line: 199, column: 9, scope: !1934)
!1997 = !DILocation(line: 199, column: 2, scope: !1934)
!1998 = !DILocation(line: 200, column: 9, scope: !1934)
!1999 = !DILocation(line: 200, column: 2, scope: !1934)
!2000 = !DILocation(line: 201, column: 9, scope: !1934)
!2001 = !DILocation(line: 201, column: 2, scope: !1934)
!2002 = !DILocation(line: 202, column: 9, scope: !1934)
!2003 = !DILocation(line: 202, column: 2, scope: !1934)
!2004 = !DILocation(line: 203, column: 9, scope: !1934)
!2005 = !DILocation(line: 203, column: 2, scope: !1934)
!2006 = !DILocation(line: 204, column: 9, scope: !1934)
!2007 = !DILocation(line: 204, column: 2, scope: !1934)
!2008 = !DILocation(line: 205, column: 9, scope: !1934)
!2009 = !DILocation(line: 205, column: 2, scope: !1934)
!2010 = !DILocation(line: 207, column: 9, scope: !1934)
!2011 = !DILocation(line: 207, column: 2, scope: !1934)
!2012 = !DILocation(line: 208, column: 9, scope: !1934)
!2013 = !DILocation(line: 208, column: 2, scope: !1934)
!2014 = !DILocation(line: 210, column: 9, scope: !1934)
!2015 = !DILocation(line: 210, column: 2, scope: !1934)
!2016 = !DILocation(line: 211, column: 9, scope: !1934)
!2017 = !DILocation(line: 211, column: 2, scope: !1934)
!2018 = !DILocation(line: 212, column: 9, scope: !1934)
!2019 = !DILocation(line: 212, column: 2, scope: !1934)
!2020 = !DILocation(line: 213, column: 9, scope: !1934)
!2021 = !DILocation(line: 213, column: 2, scope: !1934)
!2022 = !DILocation(line: 215, column: 9, scope: !1934)
!2023 = !DILocation(line: 215, column: 2, scope: !1934)
!2024 = !DILocation(line: 216, column: 9, scope: !1934)
!2025 = !DILocation(line: 216, column: 2, scope: !1934)
!2026 = !DILocation(line: 217, column: 9, scope: !1934)
!2027 = !DILocation(line: 217, column: 2, scope: !1934)
!2028 = !DILocation(line: 220, column: 9, scope: !1934)
!2029 = !DILocation(line: 220, column: 2, scope: !1934)
!2030 = !DILocation(line: 222, column: 9, scope: !1934)
!2031 = !DILocation(line: 222, column: 2, scope: !1934)
!2032 = !DILocation(line: 223, column: 9, scope: !1934)
!2033 = !DILocation(line: 223, column: 2, scope: !1934)
!2034 = !DILocation(line: 224, column: 2, scope: !1934)
!2035 = !DILocation(line: 226, column: 9, scope: !1934)
!2036 = !DILocation(line: 226, column: 2, scope: !1934)
!2037 = !DILocation(line: 228, column: 9, scope: !1934)
!2038 = !DILocation(line: 228, column: 2, scope: !1934)
!2039 = !DILocation(line: 229, column: 9, scope: !1934)
!2040 = !DILocation(line: 229, column: 2, scope: !1934)
!2041 = !DILocation(line: 231, column: 9, scope: !1934)
!2042 = !DILocation(line: 231, column: 2, scope: !1934)
!2043 = !DILocation(line: 232, column: 9, scope: !1934)
!2044 = !DILocation(line: 232, column: 2, scope: !1934)
!2045 = !DILocation(line: 248, column: 9, scope: !1934)
!2046 = !DILocation(line: 248, column: 2, scope: !1934)
!2047 = !DILocation(line: 249, column: 9, scope: !1934)
!2048 = !DILocation(line: 249, column: 2, scope: !1934)
!2049 = !DILocation(line: 250, column: 9, scope: !1934)
!2050 = !DILocation(line: 250, column: 2, scope: !1934)
!2051 = !DILocation(line: 263, column: 9, scope: !1934)
!2052 = !DILocation(line: 263, column: 2, scope: !1934)
!2053 = !DILocation(line: 265, column: 9, scope: !1934)
!2054 = !DILocation(line: 265, column: 2, scope: !1934)
!2055 = !DILocation(line: 267, column: 1, scope: !1934)
!2056 = distinct !DISubprogram(name: "parse_server_and_port", scope: !424, file: !424, line: 551, type: !1935, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2057 = !DILocalVariable(name: "server", arg: 1, scope: !2056, file: !424, line: 551, type: !391)
!2058 = !DILocation(line: 551, column: 29, scope: !2056)
!2059 = !DILocalVariable(name: "p", scope: !2056, file: !424, line: 553, type: !391)
!2060 = !DILocation(line: 553, column: 8, scope: !2056)
!2061 = !DILocation(line: 588, column: 13, scope: !2056)
!2062 = !DILocation(line: 588, column: 6, scope: !2056)
!2063 = !DILocation(line: 588, column: 4, scope: !2056)
!2064 = !DILocation(line: 589, column: 6, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !424, line: 589, column: 6)
!2066 = !DILocation(line: 589, column: 8, scope: !2065)
!2067 = !DILocation(line: 589, column: 6, scope: !2056)
!2068 = !DILocation(line: 591, column: 27, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !424, line: 590, column: 2)
!2070 = !DILocation(line: 591, column: 29, scope: !2069)
!2071 = !DILocation(line: 591, column: 20, scope: !2069)
!2072 = !DILocation(line: 591, column: 18, scope: !2069)
!2073 = !DILocation(line: 592, column: 4, scope: !2069)
!2074 = !DILocation(line: 592, column: 6, scope: !2069)
!2075 = !DILocation(line: 593, column: 2, scope: !2069)
!2076 = !DILocation(line: 596, column: 1, scope: !2056)
!2077 = distinct !DISubprogram(name: "xfree", scope: !424, file: !424, line: 1630, type: !2078, isLocal: false, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !393}
!2080 = !DILocalVariable(name: "mem", arg: 1, scope: !2077, file: !424, line: 1630, type: !393)
!2081 = !DILocation(line: 1630, column: 13, scope: !2077)
!2082 = !DILocation(line: 1632, column: 7, scope: !2077)
!2083 = !DILocation(line: 1632, column: 2, scope: !2077)
!2084 = !DILocation(line: 1633, column: 1, scope: !2077)
!2085 = distinct !DISubprogram(name: "read_password", scope: !424, file: !424, line: 504, type: !2086, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!454, !391, !390}
!2088 = !DILocalVariable(name: "password", arg: 1, scope: !2085, file: !424, line: 504, type: !391)
!2089 = !DILocation(line: 504, column: 21, scope: !2085)
!2090 = !DILocalVariable(name: "size", arg: 2, scope: !2085, file: !424, line: 504, type: !390)
!2091 = !DILocation(line: 504, column: 35, scope: !2085)
!2092 = !DILocalVariable(name: "tios", scope: !2085, file: !424, line: 506, type: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !2094, line: 28, size: 480, align: 32, elements: !2095)
!2094 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2095 = !{!2096, !2098, !2099, !2100, !2101, !2103, !2105, !2107}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2093, file: !2094, line: 30, baseType: !2097, size: 32, align: 32)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2094, line: 25, baseType: !394)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2093, file: !2094, line: 31, baseType: !2097, size: 32, align: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2093, file: !2094, line: 32, baseType: !2097, size: 32, align: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2093, file: !2094, line: 33, baseType: !2097, size: 32, align: 32, offset: 96)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2093, file: !2094, line: 34, baseType: !2102, size: 8, align: 8, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2094, line: 23, baseType: !409)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2093, file: !2094, line: 35, baseType: !2104, size: 256, align: 8, offset: 136)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 256, align: 8, elements: !528)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2093, file: !2094, line: 36, baseType: !2106, size: 32, align: 32, offset: 416)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2094, line: 24, baseType: !394)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2093, file: !2094, line: 37, baseType: !2106, size: 32, align: 32, offset: 448)
!2108 = !DILocation(line: 506, column: 17, scope: !2085)
!2109 = !DILocalVariable(name: "ret", scope: !2085, file: !424, line: 507, type: !454)
!2110 = !DILocation(line: 507, column: 10, scope: !2085)
!2111 = !DILocalVariable(name: "istty", scope: !2085, file: !424, line: 508, type: !390)
!2112 = !DILocation(line: 508, column: 6, scope: !2085)
!2113 = !DILocalVariable(name: "prompt", scope: !2085, file: !424, line: 509, type: !536)
!2114 = !DILocation(line: 509, column: 14, scope: !2085)
!2115 = !DILocalVariable(name: "p", scope: !2085, file: !424, line: 510, type: !391)
!2116 = !DILocation(line: 510, column: 8, scope: !2085)
!2117 = !DILocation(line: 513, column: 6, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2085, file: !424, line: 513, column: 6)
!2119 = !DILocation(line: 513, column: 6, scope: !2085)
!2120 = !DILocation(line: 515, column: 10, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !424, line: 514, column: 2)
!2122 = !DILocation(line: 516, column: 2, scope: !2121)
!2123 = !DILocation(line: 519, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2118, file: !424, line: 518, column: 2)
!2125 = !DILocation(line: 522, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2085, file: !424, line: 522, column: 6)
!2127 = !DILocation(line: 522, column: 36, scope: !2126)
!2128 = !DILocation(line: 522, column: 6, scope: !2085)
!2129 = !DILocation(line: 524, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !424, line: 523, column: 2)
!2131 = !DILocation(line: 524, column: 16, scope: !2130)
!2132 = !DILocation(line: 524, column: 3, scope: !2130)
!2133 = !DILocation(line: 525, column: 8, scope: !2130)
!2134 = !DILocation(line: 525, column: 16, scope: !2130)
!2135 = !DILocation(line: 526, column: 3, scope: !2130)
!2136 = !DILocation(line: 527, column: 9, scope: !2130)
!2137 = !DILocation(line: 528, column: 2, scope: !2130)
!2138 = !DILocation(line: 530, column: 12, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2085, file: !424, line: 530, column: 6)
!2140 = !DILocation(line: 530, column: 22, scope: !2139)
!2141 = !DILocation(line: 530, column: 27, scope: !2139)
!2142 = !DILocation(line: 530, column: 6, scope: !2139)
!2143 = !DILocation(line: 530, column: 34, scope: !2139)
!2144 = !DILocation(line: 530, column: 6, scope: !2085)
!2145 = !DILocation(line: 532, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2139, file: !424, line: 531, column: 2)
!2147 = !DILocation(line: 535, column: 14, scope: !2146)
!2148 = !DILocation(line: 535, column: 7, scope: !2146)
!2149 = !DILocation(line: 535, column: 5, scope: !2146)
!2150 = !DILocation(line: 536, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !424, line: 536, column: 7)
!2152 = !DILocation(line: 536, column: 9, scope: !2151)
!2153 = !DILocation(line: 536, column: 7, scope: !2146)
!2154 = !DILocation(line: 537, column: 5, scope: !2151)
!2155 = !DILocation(line: 537, column: 7, scope: !2151)
!2156 = !DILocation(line: 537, column: 4, scope: !2151)
!2157 = !DILocation(line: 538, column: 2, scope: !2146)
!2158 = !DILocation(line: 540, column: 6, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2085, file: !424, line: 540, column: 6)
!2160 = !DILocation(line: 540, column: 6, scope: !2085)
!2161 = !DILocation(line: 542, column: 8, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !424, line: 541, column: 2)
!2163 = !DILocation(line: 542, column: 16, scope: !2162)
!2164 = !DILocation(line: 543, column: 3, scope: !2162)
!2165 = !DILocation(line: 544, column: 10, scope: !2162)
!2166 = !DILocation(line: 544, column: 3, scope: !2162)
!2167 = !DILocation(line: 545, column: 2, scope: !2162)
!2168 = !DILocation(line: 547, column: 9, scope: !2085)
!2169 = !DILocation(line: 547, column: 2, scope: !2085)
!2170 = distinct !DISubprogram(name: "rdesktop_reset_state", scope: !424, file: !424, line: 490, type: !927, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2171 = !DILocation(line: 492, column: 25, scope: !2170)
!2172 = !DILocation(line: 494, column: 2, scope: !2170)
!2173 = !DILocation(line: 499, column: 2, scope: !2170)
!2174 = !DILocation(line: 501, column: 1, scope: !2170)
!2175 = distinct !DISubprogram(name: "rd_create_ui", scope: !424, file: !424, line: 1997, type: !927, isLocal: false, isDefinition: true, scopeLine: 1998, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2176 = !DILocation(line: 1999, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2175, file: !424, line: 1999, column: 6)
!2178 = !DILocation(line: 1999, column: 6, scope: !2175)
!2179 = !DILocation(line: 2002, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !424, line: 2002, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !424, line: 2000, column: 2)
!2182 = !DILocation(line: 2002, column: 52, scope: !2180)
!2183 = !DILocation(line: 2002, column: 8, scope: !2180)
!2184 = !DILocation(line: 2002, column: 7, scope: !2181)
!2185 = !DILocation(line: 2003, column: 4, scope: !2180)
!2186 = !DILocation(line: 2004, column: 2, scope: !2181)
!2187 = !DILocation(line: 2008, column: 3, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2177, file: !424, line: 2006, column: 2)
!2189 = !DILocation(line: 2010, column: 1, scope: !2175)
!2190 = distinct !DISubprogram(name: "handle_disconnect_reason", scope: !424, file: !424, line: 270, type: !2191, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!390, !454, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !4, line: 41, baseType: !417)
!2194 = !DILocalVariable(name: "deactivated", arg: 1, scope: !2190, file: !424, line: 270, type: !454)
!2195 = !DILocation(line: 270, column: 34, scope: !2190)
!2196 = !DILocalVariable(name: "reason", arg: 2, scope: !2190, file: !424, line: 270, type: !2193)
!2197 = !DILocation(line: 270, column: 54, scope: !2190)
!2198 = !DILocalVariable(name: "text", scope: !2190, file: !424, line: 272, type: !391)
!2199 = !DILocation(line: 272, column: 8, scope: !2190)
!2200 = !DILocalVariable(name: "retval", scope: !2190, file: !424, line: 273, type: !390)
!2201 = !DILocation(line: 273, column: 6, scope: !2190)
!2202 = !DILocation(line: 275, column: 10, scope: !2190)
!2203 = !DILocation(line: 275, column: 2, scope: !2190)
!2204 = !DILocation(line: 278, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2190, file: !424, line: 276, column: 2)
!2206 = !DILocation(line: 279, column: 8, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !424, line: 279, column: 8)
!2208 = !DILocation(line: 279, column: 8, scope: !2205)
!2209 = !DILocation(line: 280, column: 12, scope: !2207)
!2210 = !DILocation(line: 280, column: 5, scope: !2207)
!2211 = !DILocation(line: 282, column: 12, scope: !2207)
!2212 = !DILocation(line: 283, column: 4, scope: !2205)
!2213 = !DILocation(line: 286, column: 9, scope: !2205)
!2214 = !DILocation(line: 287, column: 11, scope: !2205)
!2215 = !DILocation(line: 288, column: 4, scope: !2205)
!2216 = !DILocation(line: 291, column: 9, scope: !2205)
!2217 = !DILocation(line: 292, column: 11, scope: !2205)
!2218 = !DILocation(line: 293, column: 4, scope: !2205)
!2219 = !DILocation(line: 296, column: 9, scope: !2205)
!2220 = !DILocation(line: 297, column: 11, scope: !2205)
!2221 = !DILocation(line: 298, column: 4, scope: !2205)
!2222 = !DILocation(line: 301, column: 9, scope: !2205)
!2223 = !DILocation(line: 302, column: 11, scope: !2205)
!2224 = !DILocation(line: 303, column: 4, scope: !2205)
!2225 = !DILocation(line: 306, column: 9, scope: !2205)
!2226 = !DILocation(line: 307, column: 11, scope: !2205)
!2227 = !DILocation(line: 308, column: 4, scope: !2205)
!2228 = !DILocation(line: 311, column: 9, scope: !2205)
!2229 = !DILocation(line: 312, column: 11, scope: !2205)
!2230 = !DILocation(line: 313, column: 4, scope: !2205)
!2231 = !DILocation(line: 316, column: 9, scope: !2205)
!2232 = !DILocation(line: 317, column: 11, scope: !2205)
!2233 = !DILocation(line: 318, column: 4, scope: !2205)
!2234 = !DILocation(line: 321, column: 9, scope: !2205)
!2235 = !DILocation(line: 322, column: 11, scope: !2205)
!2236 = !DILocation(line: 323, column: 4, scope: !2205)
!2237 = !DILocation(line: 326, column: 9, scope: !2205)
!2238 = !DILocation(line: 327, column: 11, scope: !2205)
!2239 = !DILocation(line: 328, column: 4, scope: !2205)
!2240 = !DILocation(line: 331, column: 9, scope: !2205)
!2241 = !DILocation(line: 332, column: 11, scope: !2205)
!2242 = !DILocation(line: 333, column: 4, scope: !2205)
!2243 = !DILocation(line: 336, column: 9, scope: !2205)
!2244 = !DILocation(line: 337, column: 11, scope: !2205)
!2245 = !DILocation(line: 338, column: 4, scope: !2205)
!2246 = !DILocation(line: 341, column: 9, scope: !2205)
!2247 = !DILocation(line: 342, column: 11, scope: !2205)
!2248 = !DILocation(line: 343, column: 4, scope: !2205)
!2249 = !DILocation(line: 346, column: 9, scope: !2205)
!2250 = !DILocation(line: 347, column: 11, scope: !2205)
!2251 = !DILocation(line: 348, column: 4, scope: !2205)
!2252 = !DILocation(line: 351, column: 9, scope: !2205)
!2253 = !DILocation(line: 352, column: 11, scope: !2205)
!2254 = !DILocation(line: 353, column: 4, scope: !2205)
!2255 = !DILocation(line: 356, column: 9, scope: !2205)
!2256 = !DILocation(line: 357, column: 11, scope: !2205)
!2257 = !DILocation(line: 358, column: 4, scope: !2205)
!2258 = !DILocation(line: 361, column: 9, scope: !2205)
!2259 = !DILocation(line: 362, column: 11, scope: !2205)
!2260 = !DILocation(line: 363, column: 4, scope: !2205)
!2261 = !DILocation(line: 366, column: 9, scope: !2205)
!2262 = !DILocation(line: 367, column: 11, scope: !2205)
!2263 = !DILocation(line: 368, column: 4, scope: !2205)
!2264 = !DILocation(line: 371, column: 9, scope: !2205)
!2265 = !DILocation(line: 372, column: 11, scope: !2205)
!2266 = !DILocation(line: 373, column: 4, scope: !2205)
!2267 = !DILocation(line: 376, column: 9, scope: !2205)
!2268 = !DILocation(line: 377, column: 11, scope: !2205)
!2269 = !DILocation(line: 378, column: 4, scope: !2205)
!2270 = !DILocation(line: 381, column: 9, scope: !2205)
!2271 = !DILocation(line: 382, column: 11, scope: !2205)
!2272 = !DILocation(line: 383, column: 4, scope: !2205)
!2273 = !DILocation(line: 386, column: 9, scope: !2205)
!2274 = !DILocation(line: 387, column: 11, scope: !2205)
!2275 = !DILocation(line: 388, column: 4, scope: !2205)
!2276 = !DILocation(line: 391, column: 9, scope: !2205)
!2277 = !DILocation(line: 392, column: 11, scope: !2205)
!2278 = !DILocation(line: 393, column: 4, scope: !2205)
!2279 = !DILocation(line: 396, column: 9, scope: !2205)
!2280 = !DILocation(line: 397, column: 11, scope: !2205)
!2281 = !DILocation(line: 398, column: 4, scope: !2205)
!2282 = !DILocation(line: 401, column: 9, scope: !2205)
!2283 = !DILocation(line: 402, column: 11, scope: !2205)
!2284 = !DILocation(line: 403, column: 4, scope: !2205)
!2285 = !DILocation(line: 406, column: 9, scope: !2205)
!2286 = !DILocation(line: 407, column: 11, scope: !2205)
!2287 = !DILocation(line: 408, column: 4, scope: !2205)
!2288 = !DILocation(line: 411, column: 9, scope: !2205)
!2289 = !DILocation(line: 412, column: 11, scope: !2205)
!2290 = !DILocation(line: 413, column: 4, scope: !2205)
!2291 = !DILocation(line: 416, column: 9, scope: !2205)
!2292 = !DILocation(line: 417, column: 11, scope: !2205)
!2293 = !DILocation(line: 418, column: 4, scope: !2205)
!2294 = !DILocation(line: 421, column: 9, scope: !2205)
!2295 = !DILocation(line: 422, column: 11, scope: !2205)
!2296 = !DILocation(line: 423, column: 4, scope: !2205)
!2297 = !DILocation(line: 426, column: 9, scope: !2205)
!2298 = !DILocation(line: 427, column: 11, scope: !2205)
!2299 = !DILocation(line: 428, column: 4, scope: !2205)
!2300 = !DILocation(line: 431, column: 9, scope: !2205)
!2301 = !DILocation(line: 432, column: 11, scope: !2205)
!2302 = !DILocation(line: 433, column: 4, scope: !2205)
!2303 = !DILocation(line: 436, column: 9, scope: !2205)
!2304 = !DILocation(line: 437, column: 11, scope: !2205)
!2305 = !DILocation(line: 438, column: 4, scope: !2205)
!2306 = !DILocation(line: 441, column: 9, scope: !2205)
!2307 = !DILocation(line: 442, column: 11, scope: !2205)
!2308 = !DILocation(line: 443, column: 4, scope: !2205)
!2309 = !DILocation(line: 446, column: 9, scope: !2205)
!2310 = !DILocation(line: 447, column: 11, scope: !2205)
!2311 = !DILocation(line: 448, column: 4, scope: !2205)
!2312 = !DILocation(line: 451, column: 9, scope: !2205)
!2313 = !DILocation(line: 452, column: 11, scope: !2205)
!2314 = !DILocation(line: 453, column: 4, scope: !2205)
!2315 = !DILocation(line: 456, column: 9, scope: !2205)
!2316 = !DILocation(line: 457, column: 11, scope: !2205)
!2317 = !DILocation(line: 458, column: 4, scope: !2205)
!2318 = !DILocation(line: 461, column: 9, scope: !2205)
!2319 = !DILocation(line: 462, column: 11, scope: !2205)
!2320 = !DILocation(line: 463, column: 4, scope: !2205)
!2321 = !DILocation(line: 466, column: 9, scope: !2205)
!2322 = !DILocation(line: 467, column: 11, scope: !2205)
!2323 = !DILocation(line: 468, column: 4, scope: !2205)
!2324 = !DILocation(line: 471, column: 9, scope: !2205)
!2325 = !DILocation(line: 472, column: 11, scope: !2205)
!2326 = !DILocation(line: 473, column: 4, scope: !2205)
!2327 = !DILocation(line: 476, column: 9, scope: !2205)
!2328 = !DILocation(line: 477, column: 11, scope: !2205)
!2329 = !DILocation(line: 478, column: 2, scope: !2205)
!2330 = !DILocation(line: 480, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2190, file: !424, line: 480, column: 6)
!2332 = !DILocation(line: 480, column: 13, scope: !2331)
!2333 = !DILocation(line: 480, column: 22, scope: !2331)
!2334 = !DILocation(line: 480, column: 25, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2331, file: !424, discriminator: 1)
!2336 = !DILocation(line: 480, column: 32, scope: !2335)
!2337 = !DILocation(line: 480, column: 41, scope: !2335)
!2338 = !DILocation(line: 480, column: 44, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2331, file: !424, discriminator: 2)
!2340 = !DILocation(line: 480, column: 51, scope: !2339)
!2341 = !DILocation(line: 480, column: 6, scope: !2339)
!2342 = !DILocation(line: 481, column: 10, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2331, file: !424, line: 480, column: 58)
!2344 = !DILocation(line: 481, column: 49, scope: !2343)
!2345 = !DILocation(line: 481, column: 3, scope: !2343)
!2346 = !DILocation(line: 482, column: 2, scope: !2343)
!2347 = !DILocation(line: 482, column: 13, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !424, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2331, file: !424, line: 482, column: 13)
!2350 = !DILocation(line: 482, column: 20, scope: !2348)
!2351 = !DILocation(line: 483, column: 10, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !424, line: 482, column: 31)
!2353 = !DILocation(line: 483, column: 39, scope: !2352)
!2354 = !DILocation(line: 483, column: 3, scope: !2352)
!2355 = !DILocation(line: 484, column: 2, scope: !2352)
!2356 = !DILocation(line: 486, column: 9, scope: !2190)
!2357 = !DILocation(line: 486, column: 2, scope: !2190)
!2358 = distinct !DISubprogram(name: "generate_random", scope: !424, file: !424, line: 1531, type: !2359, isLocal: false, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !407}
!2361 = !DILocalVariable(name: "random", arg: 1, scope: !2358, file: !424, line: 1531, type: !407)
!2362 = !DILocation(line: 1531, column: 25, scope: !2358)
!2363 = !DILocalVariable(name: "st", scope: !2358, file: !424, line: 1533, type: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2365, line: 46, size: 1152, align: 64, elements: !2366)
!2365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2366 = !{!2367, !2369, !2371, !2373, !2375, !2376, !2377, !2378, !2379, !2381, !2383, !2385, !2391, !2392, !2393}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2364, file: !2365, line: 48, baseType: !2368, size: 64, align: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !403, line: 124, baseType: !923)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2364, file: !2365, line: 53, baseType: !2370, size: 64, align: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !403, line: 127, baseType: !923)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2364, file: !2365, line: 61, baseType: !2372, size: 64, align: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !403, line: 130, baseType: !923)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2364, file: !2365, line: 62, baseType: !2374, size: 32, align: 32, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !403, line: 129, baseType: !394)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2364, file: !2365, line: 64, baseType: !798, size: 32, align: 32, offset: 224)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2364, file: !2365, line: 65, baseType: !800, size: 32, align: 32, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2364, file: !2365, line: 67, baseType: !390, size: 32, align: 32, offset: 288)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2364, file: !2365, line: 69, baseType: !2368, size: 64, align: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2364, file: !2365, line: 74, baseType: !2380, size: 64, align: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !403, line: 131, baseType: !404)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2364, file: !2365, line: 78, baseType: !2382, size: 64, align: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !403, line: 153, baseType: !404)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2364, file: !2365, line: 80, baseType: !2384, size: 64, align: 64, offset: 512)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !403, line: 158, baseType: !404)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2364, file: !2365, line: 91, baseType: !2386, size: 128, align: 64, offset: 576)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !525, line: 120, size: 128, align: 64, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2386, file: !525, line: 122, baseType: !402, size: 64, align: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2386, file: !525, line: 123, baseType: !2390, size: 64, align: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !403, line: 175, baseType: !404)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2364, file: !2365, line: 92, baseType: !2386, size: 128, align: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2364, file: !2365, line: 93, baseType: !2386, size: 128, align: 64, offset: 832)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2364, file: !2365, line: 106, baseType: !2394, size: 192, align: 64, offset: 960)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, size: 192, align: 64, elements: !2395)
!2395 = !{!2396}
!2396 = !DISubrange(count: 3)
!2397 = !DILocation(line: 1533, column: 14, scope: !2358)
!2398 = !DILocalVariable(name: "tmsbuf", scope: !2358, file: !424, line: 1534, type: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !2400, line: 34, size: 256, align: 64, elements: !2401)
!2400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/times.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2401 = !{!2402, !2404, !2405, !2406}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !2399, file: !2400, line: 36, baseType: !2403, size: 64, align: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !525, line: 59, baseType: !892)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !2399, file: !2400, line: 37, baseType: !2403, size: 64, align: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !2399, file: !2400, line: 39, baseType: !2403, size: 64, align: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !2399, file: !2400, line: 40, baseType: !2403, size: 64, align: 64, offset: 192)
!2407 = !DILocation(line: 1534, column: 13, scope: !2358)
!2408 = !DILocalVariable(name: "md5", scope: !2358, file: !424, line: 1535, type: !2409)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !2410, line: 105, baseType: !2411)
!2410 = !DIFile(filename: "/usr/include/openssl/md5.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5state_st", file: !2410, line: 100, size: 736, align: 32, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2419, !2421}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !2411, file: !2410, line: 101, baseType: !394, size: 32, align: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !2411, file: !2410, line: 101, baseType: !394, size: 32, align: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !2411, file: !2410, line: 101, baseType: !394, size: 32, align: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !2411, file: !2410, line: 101, baseType: !394, size: 32, align: 32, offset: 96)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !2411, file: !2410, line: 102, baseType: !394, size: 32, align: 32, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !2411, file: !2410, line: 102, baseType: !394, size: 32, align: 32, offset: 160)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2411, file: !2410, line: 103, baseType: !2420, size: 512, align: 32, offset: 192)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 512, align: 32, elements: !426)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2411, file: !2410, line: 104, baseType: !394, size: 32, align: 32, offset: 704)
!2422 = !DILocation(line: 1535, column: 10, scope: !2358)
!2423 = !DILocalVariable(name: "r", scope: !2358, file: !424, line: 1536, type: !395)
!2424 = !DILocation(line: 1536, column: 10, scope: !2358)
!2425 = !DILocalVariable(name: "fd", scope: !2358, file: !424, line: 1537, type: !390)
!2426 = !DILocation(line: 1537, column: 6, scope: !2358)
!2427 = !DILocalVariable(name: "n", scope: !2358, file: !424, line: 1537, type: !390)
!2428 = !DILocation(line: 1537, column: 10, scope: !2358)
!2429 = !DILocation(line: 1540, column: 13, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2358, file: !424, line: 1540, column: 6)
!2431 = !DILocation(line: 1540, column: 11, scope: !2430)
!2432 = !DILocation(line: 1540, column: 44, scope: !2430)
!2433 = !DILocation(line: 1541, column: 6, scope: !2430)
!2434 = !DILocation(line: 1541, column: 16, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2430, file: !424, discriminator: 1)
!2436 = !DILocation(line: 1541, column: 14, scope: !2435)
!2437 = !DILocation(line: 1541, column: 46, scope: !2435)
!2438 = !DILocation(line: 1540, column: 6, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2358, file: !424, discriminator: 1)
!2440 = !DILocation(line: 1543, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2430, file: !424, line: 1542, column: 2)
!2442 = !DILocation(line: 1543, column: 16, scope: !2441)
!2443 = !DILocation(line: 1543, column: 7, scope: !2441)
!2444 = !DILocation(line: 1543, column: 5, scope: !2441)
!2445 = !DILocation(line: 1544, column: 9, scope: !2441)
!2446 = !DILocation(line: 1544, column: 3, scope: !2441)
!2447 = !DILocation(line: 1545, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2441, file: !424, line: 1545, column: 7)
!2449 = !DILocation(line: 1545, column: 9, scope: !2448)
!2450 = !DILocation(line: 1545, column: 7, scope: !2441)
!2451 = !DILocation(line: 1546, column: 4, scope: !2448)
!2452 = !DILocation(line: 1547, column: 2, scope: !2441)
!2453 = !DILocation(line: 1551, column: 26, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2358, file: !424, line: 1551, column: 6)
!2455 = !DILocation(line: 1551, column: 6, scope: !2454)
!2456 = !DILocation(line: 1551, column: 6, scope: !2358)
!2457 = !DILocation(line: 1552, column: 3, scope: !2454)
!2458 = !DILocation(line: 1556, column: 17, scope: !2358)
!2459 = !DILocation(line: 1556, column: 6, scope: !2358)
!2460 = !DILocation(line: 1556, column: 4, scope: !2358)
!2461 = !DILocation(line: 1557, column: 10, scope: !2358)
!2462 = !DILocation(line: 1557, column: 23, scope: !2439)
!2463 = !DILocation(line: 1557, column: 33, scope: !2358)
!2464 = !DILocation(line: 1557, column: 20, scope: !2358)
!2465 = !DILocation(line: 1557, column: 2, scope: !2358)
!2466 = !DILocation(line: 1557, column: 7, scope: !2358)
!2467 = !DILocation(line: 1558, column: 10, scope: !2358)
!2468 = !DILocation(line: 1558, column: 23, scope: !2439)
!2469 = !DILocation(line: 1558, column: 32, scope: !2358)
!2470 = !DILocation(line: 1558, column: 20, scope: !2358)
!2471 = !DILocation(line: 1558, column: 2, scope: !2358)
!2472 = !DILocation(line: 1558, column: 7, scope: !2358)
!2473 = !DILocation(line: 1559, column: 9, scope: !2358)
!2474 = !DILocation(line: 1559, column: 2, scope: !2358)
!2475 = !DILocation(line: 1559, column: 7, scope: !2358)
!2476 = !DILocation(line: 1560, column: 35, scope: !2358)
!2477 = !DILocation(line: 1560, column: 15, scope: !2358)
!2478 = !DILocation(line: 1560, column: 2, scope: !2358)
!2479 = !DILocation(line: 1561, column: 2, scope: !2358)
!2480 = !DILocation(line: 1562, column: 11, scope: !2358)
!2481 = !DILocation(line: 1562, column: 19, scope: !2358)
!2482 = !DILocation(line: 1562, column: 9, scope: !2358)
!2483 = !DILocation(line: 1562, column: 2, scope: !2358)
!2484 = !DILocation(line: 1562, column: 7, scope: !2358)
!2485 = !DILocation(line: 1563, column: 11, scope: !2358)
!2486 = !DILocation(line: 1563, column: 19, scope: !2358)
!2487 = !DILocation(line: 1563, column: 9, scope: !2358)
!2488 = !DILocation(line: 1563, column: 2, scope: !2358)
!2489 = !DILocation(line: 1563, column: 7, scope: !2358)
!2490 = !DILocation(line: 1564, column: 11, scope: !2358)
!2491 = !DILocation(line: 1564, column: 19, scope: !2358)
!2492 = !DILocation(line: 1564, column: 9, scope: !2358)
!2493 = !DILocation(line: 1564, column: 2, scope: !2358)
!2494 = !DILocation(line: 1564, column: 7, scope: !2358)
!2495 = !DILocation(line: 1567, column: 2, scope: !2358)
!2496 = !DILocation(line: 1568, column: 25, scope: !2358)
!2497 = !DILocation(line: 1568, column: 2, scope: !2358)
!2498 = !DILocation(line: 1569, column: 24, scope: !2358)
!2499 = !DILocation(line: 1569, column: 2, scope: !2358)
!2500 = !DILocation(line: 1570, column: 25, scope: !2358)
!2501 = !DILocation(line: 1570, column: 32, scope: !2358)
!2502 = !DILocation(line: 1570, column: 2, scope: !2358)
!2503 = !DILocation(line: 1571, column: 24, scope: !2358)
!2504 = !DILocation(line: 1571, column: 31, scope: !2358)
!2505 = !DILocation(line: 1571, column: 2, scope: !2358)
!2506 = !DILocation(line: 1572, column: 1, scope: !2358)
!2507 = !DILocation(line: 1572, column: 1, scope: !2439)
!2508 = distinct !DISubprogram(name: "generate_random_egd", scope: !424, file: !424, line: 1494, type: !2509, isLocal: true, isDefinition: true, scopeLine: 1495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!454, !407}
!2511 = !DILocalVariable(name: "buf", arg: 1, scope: !2508, file: !424, line: 1494, type: !407)
!2512 = !DILocation(line: 1494, column: 29, scope: !2508)
!2513 = !DILocalVariable(name: "addr", scope: !2508, file: !424, line: 1496, type: !2514)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !2515, line: 29, size: 880, align: 16, elements: !2516)
!2515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !2514, file: !2515, line: 31, baseType: !415, size: 16, align: 16)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !2514, file: !2515, line: 32, baseType: !2519, size: 864, align: 8, offset: 16)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 864, align: 8, elements: !2520)
!2520 = !{!2521}
!2521 = !DISubrange(count: 108)
!2522 = !DILocation(line: 1496, column: 21, scope: !2508)
!2523 = !DILocalVariable(name: "ret", scope: !2508, file: !424, line: 1497, type: !454)
!2524 = !DILocation(line: 1497, column: 10, scope: !2508)
!2525 = !DILocalVariable(name: "fd", scope: !2508, file: !424, line: 1498, type: !390)
!2526 = !DILocation(line: 1498, column: 6, scope: !2508)
!2527 = !DILocation(line: 1500, column: 7, scope: !2508)
!2528 = !DILocation(line: 1500, column: 5, scope: !2508)
!2529 = !DILocation(line: 1501, column: 6, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2508, file: !424, line: 1501, column: 6)
!2531 = !DILocation(line: 1501, column: 9, scope: !2530)
!2532 = !DILocation(line: 1501, column: 6, scope: !2508)
!2533 = !DILocation(line: 1502, column: 3, scope: !2530)
!2534 = !DILocation(line: 1504, column: 7, scope: !2508)
!2535 = !DILocation(line: 1504, column: 18, scope: !2508)
!2536 = !DILocation(line: 1505, column: 14, scope: !2508)
!2537 = !DILocation(line: 1505, column: 2, scope: !2508)
!2538 = !DILocation(line: 1506, column: 14, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2508, file: !424, line: 1506, column: 6)
!2540 = !DILocation(line: 1506, column: 18, scope: !2539)
!2541 = !DILocation(line: 1506, column: 6, scope: !2539)
!2542 = !DILocation(line: 1506, column: 59, scope: !2539)
!2543 = !DILocation(line: 1506, column: 6, scope: !2508)
!2544 = !DILocation(line: 1507, column: 3, scope: !2539)
!2545 = !DILocation(line: 1510, column: 2, scope: !2508)
!2546 = !DILocation(line: 1510, column: 9, scope: !2508)
!2547 = !DILocation(line: 1511, column: 2, scope: !2508)
!2548 = !DILocation(line: 1511, column: 9, scope: !2508)
!2549 = !DILocation(line: 1512, column: 12, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2508, file: !424, line: 1512, column: 6)
!2551 = !DILocation(line: 1512, column: 16, scope: !2550)
!2552 = !DILocation(line: 1512, column: 6, scope: !2550)
!2553 = !DILocation(line: 1512, column: 24, scope: !2550)
!2554 = !DILocation(line: 1512, column: 6, scope: !2508)
!2555 = !DILocation(line: 1513, column: 3, scope: !2550)
!2556 = !DILocation(line: 1515, column: 12, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2508, file: !424, line: 1515, column: 6)
!2558 = !DILocation(line: 1515, column: 16, scope: !2557)
!2559 = !DILocation(line: 1515, column: 7, scope: !2557)
!2560 = !DILocation(line: 1515, column: 24, scope: !2557)
!2561 = !DILocation(line: 1515, column: 30, scope: !2557)
!2562 = !DILocation(line: 1515, column: 34, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2557, file: !424, discriminator: 1)
!2564 = !DILocation(line: 1515, column: 41, scope: !2563)
!2565 = !DILocation(line: 1515, column: 6, scope: !2563)
!2566 = !DILocation(line: 1516, column: 3, scope: !2557)
!2567 = !DILocation(line: 1518, column: 11, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2508, file: !424, line: 1518, column: 6)
!2569 = !DILocation(line: 1518, column: 15, scope: !2568)
!2570 = !DILocation(line: 1518, column: 6, scope: !2568)
!2571 = !DILocation(line: 1518, column: 24, scope: !2568)
!2572 = !DILocation(line: 1518, column: 6, scope: !2508)
!2573 = !DILocation(line: 1519, column: 3, scope: !2568)
!2574 = !DILocation(line: 1521, column: 6, scope: !2508)
!2575 = !DILocation(line: 1521, column: 2, scope: !2508)
!2576 = !DILocation(line: 1524, column: 8, scope: !2508)
!2577 = !DILocation(line: 1524, column: 2, scope: !2508)
!2578 = !DILocation(line: 1525, column: 9, scope: !2508)
!2579 = !DILocation(line: 1525, column: 2, scope: !2508)
!2580 = !DILocation(line: 1526, column: 1, scope: !2508)
!2581 = distinct !DISubprogram(name: "exit_if_null", scope: !424, file: !424, line: 1589, type: !2078, isLocal: false, isDefinition: true, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2582 = !DILocalVariable(name: "ptr", arg: 1, scope: !2581, file: !424, line: 1589, type: !393)
!2583 = !DILocation(line: 1589, column: 20, scope: !2581)
!2584 = !DILocation(line: 1591, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !424, line: 1591, column: 6)
!2586 = !DILocation(line: 1591, column: 10, scope: !2585)
!2587 = !DILocation(line: 1591, column: 6, scope: !2581)
!2588 = !DILocation(line: 1593, column: 3, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !424, line: 1592, column: 2)
!2590 = !DILocation(line: 1594, column: 3, scope: !2589)
!2591 = !DILocation(line: 1596, column: 1, scope: !2581)
!2592 = distinct !DISubprogram(name: "xrealloc", scope: !424, file: !424, line: 1613, type: !2593, isLocal: false, isDefinition: true, scopeLine: 1614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!393, !393, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2596, line: 216, baseType: !923)
!2596 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2597 = !DILocalVariable(name: "oldmem", arg: 1, scope: !2592, file: !424, line: 1613, type: !393)
!2598 = !DILocation(line: 1613, column: 16, scope: !2592)
!2599 = !DILocalVariable(name: "size", arg: 2, scope: !2592, file: !424, line: 1613, type: !2595)
!2600 = !DILocation(line: 1613, column: 31, scope: !2592)
!2601 = !DILocalVariable(name: "mem", scope: !2592, file: !424, line: 1615, type: !393)
!2602 = !DILocation(line: 1615, column: 8, scope: !2592)
!2603 = !DILocation(line: 1617, column: 6, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2592, file: !424, line: 1617, column: 6)
!2605 = !DILocation(line: 1617, column: 11, scope: !2604)
!2606 = !DILocation(line: 1617, column: 6, scope: !2592)
!2607 = !DILocation(line: 1618, column: 8, scope: !2604)
!2608 = !DILocation(line: 1618, column: 3, scope: !2604)
!2609 = !DILocation(line: 1619, column: 16, scope: !2592)
!2610 = !DILocation(line: 1619, column: 24, scope: !2592)
!2611 = !DILocation(line: 1619, column: 8, scope: !2592)
!2612 = !DILocation(line: 1619, column: 6, scope: !2592)
!2613 = !DILocation(line: 1620, column: 6, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2592, file: !424, line: 1620, column: 6)
!2615 = !DILocation(line: 1620, column: 10, scope: !2614)
!2616 = !DILocation(line: 1620, column: 6, scope: !2592)
!2617 = !DILocation(line: 1622, column: 67, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !424, line: 1621, column: 2)
!2619 = !DILocation(line: 1622, column: 3, scope: !2618)
!2620 = !DILocation(line: 1623, column: 3, scope: !2618)
!2621 = !DILocation(line: 1625, column: 9, scope: !2592)
!2622 = !DILocation(line: 1625, column: 2, scope: !2592)
!2623 = distinct !DISubprogram(name: "hexdump", scope: !424, file: !424, line: 1637, type: !2624, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !2626, !394}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!2627 = !DILocalVariable(name: "p", arg: 1, scope: !2623, file: !424, line: 1637, type: !2626)
!2628 = !DILocation(line: 1637, column: 24, scope: !2623)
!2629 = !DILocalVariable(name: "len", arg: 2, scope: !2623, file: !424, line: 1637, type: !394)
!2630 = !DILocation(line: 1637, column: 40, scope: !2623)
!2631 = !DILocalVariable(name: "line", scope: !2623, file: !424, line: 1639, type: !2626)
!2632 = !DILocation(line: 1639, column: 17, scope: !2623)
!2633 = !DILocation(line: 1639, column: 24, scope: !2623)
!2634 = !DILocalVariable(name: "offset", scope: !2623, file: !424, line: 1640, type: !394)
!2635 = !DILocation(line: 1640, column: 11, scope: !2623)
!2636 = !DILocalVariable(name: "i", scope: !2623, file: !424, line: 1641, type: !390)
!2637 = !DILocation(line: 1641, column: 6, scope: !2623)
!2638 = !DILocalVariable(name: "thisline", scope: !2623, file: !424, line: 1641, type: !390)
!2639 = !DILocation(line: 1641, column: 9, scope: !2623)
!2640 = !DILocation(line: 1643, column: 2, scope: !2623)
!2641 = !DILocation(line: 1643, column: 9, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2623, file: !424, discriminator: 1)
!2643 = !DILocation(line: 1643, column: 18, scope: !2642)
!2644 = !DILocation(line: 1643, column: 16, scope: !2642)
!2645 = !DILocation(line: 1643, column: 2, scope: !2642)
!2646 = !DILocation(line: 1645, column: 19, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2623, file: !424, line: 1644, column: 2)
!2648 = !DILocation(line: 1645, column: 3, scope: !2647)
!2649 = !DILocation(line: 1646, column: 14, scope: !2647)
!2650 = !DILocation(line: 1646, column: 20, scope: !2647)
!2651 = !DILocation(line: 1646, column: 18, scope: !2647)
!2652 = !DILocation(line: 1646, column: 12, scope: !2647)
!2653 = !DILocation(line: 1647, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !424, line: 1647, column: 7)
!2655 = !DILocation(line: 1647, column: 16, scope: !2654)
!2656 = !DILocation(line: 1647, column: 7, scope: !2647)
!2657 = !DILocation(line: 1648, column: 13, scope: !2654)
!2658 = !DILocation(line: 1648, column: 4, scope: !2654)
!2659 = !DILocation(line: 1650, column: 10, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2647, file: !424, line: 1650, column: 3)
!2661 = !DILocation(line: 1650, column: 8, scope: !2660)
!2662 = !DILocation(line: 1650, column: 15, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2664, file: !424, discriminator: 1)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !424, line: 1650, column: 3)
!2665 = !DILocation(line: 1650, column: 19, scope: !2663)
!2666 = !DILocation(line: 1650, column: 17, scope: !2663)
!2667 = !DILocation(line: 1650, column: 3, scope: !2663)
!2668 = !DILocation(line: 1651, column: 25, scope: !2664)
!2669 = !DILocation(line: 1651, column: 20, scope: !2664)
!2670 = !DILocation(line: 1651, column: 4, scope: !2664)
!2671 = !DILocation(line: 1650, column: 30, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2664, file: !424, discriminator: 2)
!2673 = !DILocation(line: 1650, column: 3, scope: !2672)
!2674 = distinct !{!2674, !2675}
!2675 = !DILocation(line: 1650, column: 3, scope: !2647)
!2676 = !DILocation(line: 1653, column: 3, scope: !2647)
!2677 = !DILocation(line: 1653, column: 10, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !424, discriminator: 1)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !424, line: 1653, column: 3)
!2680 = distinct !DILexicalBlock(scope: !2647, file: !424, line: 1653, column: 3)
!2681 = !DILocation(line: 1653, column: 12, scope: !2678)
!2682 = !DILocation(line: 1653, column: 3, scope: !2678)
!2683 = !DILocation(line: 1654, column: 4, scope: !2679)
!2684 = !DILocation(line: 1653, column: 19, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2679, file: !424, discriminator: 2)
!2686 = !DILocation(line: 1653, column: 3, scope: !2685)
!2687 = distinct !{!2687, !2676}
!2688 = !DILocation(line: 1656, column: 10, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2647, file: !424, line: 1656, column: 3)
!2690 = !DILocation(line: 1656, column: 8, scope: !2689)
!2691 = !DILocation(line: 1656, column: 15, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2693, file: !424, discriminator: 1)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !424, line: 1656, column: 3)
!2694 = !DILocation(line: 1656, column: 19, scope: !2692)
!2695 = !DILocation(line: 1656, column: 17, scope: !2692)
!2696 = !DILocation(line: 1656, column: 3, scope: !2692)
!2697 = !DILocation(line: 1657, column: 23, scope: !2693)
!2698 = !DILocation(line: 1657, column: 18, scope: !2693)
!2699 = !DILocation(line: 1657, column: 26, scope: !2693)
!2700 = !DILocation(line: 1657, column: 34, scope: !2693)
!2701 = !DILocation(line: 1657, column: 42, scope: !2692)
!2702 = !DILocation(line: 1657, column: 37, scope: !2692)
!2703 = !DILocation(line: 1657, column: 45, scope: !2692)
!2704 = !DILocation(line: 1657, column: 17, scope: !2692)
!2705 = !DILocation(line: 1657, column: 60, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2693, file: !424, discriminator: 2)
!2707 = !DILocation(line: 1657, column: 55, scope: !2706)
!2708 = !DILocation(line: 1657, column: 17, scope: !2706)
!2709 = !DILocation(line: 1657, column: 17, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2693, file: !424, discriminator: 3)
!2711 = !DILocation(line: 1657, column: 17, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2693, file: !424, discriminator: 4)
!2713 = !DILocation(line: 1657, column: 4, scope: !2712)
!2714 = !DILocation(line: 1656, column: 30, scope: !2706)
!2715 = !DILocation(line: 1656, column: 3, scope: !2706)
!2716 = distinct !{!2716, !2717}
!2717 = !DILocation(line: 1656, column: 3, scope: !2647)
!2718 = !DILocation(line: 1659, column: 3, scope: !2647)
!2719 = !DILocation(line: 1660, column: 13, scope: !2647)
!2720 = !DILocation(line: 1660, column: 10, scope: !2647)
!2721 = !DILocation(line: 1661, column: 11, scope: !2647)
!2722 = !DILocation(line: 1661, column: 8, scope: !2647)
!2723 = !DILocation(line: 1643, column: 2, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2623, file: !424, discriminator: 2)
!2725 = distinct !{!2725, !2640}
!2726 = !DILocation(line: 1663, column: 1, scope: !2623)
!2727 = distinct !DISubprogram(name: "toupper_str", scope: !424, file: !424, line: 1735, type: !1935, isLocal: false, isDefinition: true, scopeLine: 1736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2728 = !DILocalVariable(name: "p", arg: 1, scope: !2727, file: !424, line: 1735, type: !391)
!2729 = !DILocation(line: 1735, column: 19, scope: !2727)
!2730 = !DILocation(line: 1737, column: 2, scope: !2727)
!2731 = !DILocation(line: 1737, column: 10, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2727, file: !424, discriminator: 1)
!2733 = !DILocation(line: 1737, column: 9, scope: !2732)
!2734 = !DILocation(line: 1737, column: 2, scope: !2732)
!2735 = !DILocation(line: 1739, column: 9, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !424, line: 1739, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2727, file: !424, line: 1738, column: 2)
!2738 = !DILocation(line: 1739, column: 8, scope: !2736)
!2739 = !DILocation(line: 1739, column: 11, scope: !2736)
!2740 = !DILocation(line: 1739, column: 19, scope: !2736)
!2741 = !DILocation(line: 1739, column: 24, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2736, file: !424, discriminator: 1)
!2743 = !DILocation(line: 1739, column: 23, scope: !2742)
!2744 = !DILocation(line: 1739, column: 26, scope: !2742)
!2745 = !DILocation(line: 1739, column: 7, scope: !2742)
!2746 = !DILocation(line: 1740, column: 24, scope: !2736)
!2747 = !DILocation(line: 1740, column: 23, scope: !2736)
!2748 = !DILocation(line: 1740, column: 17, scope: !2736)
!2749 = !DILocation(line: 1740, column: 9, scope: !2736)
!2750 = !DILocation(line: 1740, column: 5, scope: !2736)
!2751 = !DILocation(line: 1740, column: 7, scope: !2736)
!2752 = !DILocation(line: 1740, column: 4, scope: !2736)
!2753 = !DILocation(line: 1741, column: 4, scope: !2737)
!2754 = !DILocation(line: 1737, column: 2, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2727, file: !424, discriminator: 2)
!2756 = distinct !{!2756, !2730}
!2757 = !DILocation(line: 1743, column: 1, scope: !2727)
!2758 = distinct !DISubprogram(name: "str_handle_lines", scope: !424, file: !424, line: 1758, type: !2759, isLocal: false, isDefinition: true, scopeLine: 1759, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!454, !536, !770, !2761, !393}
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "str_handle_lines_t", file: !4, line: 309, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64, align: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!454, !536, !393}
!2765 = !DILocalVariable(name: "input", arg: 1, scope: !2758, file: !424, line: 1758, type: !536)
!2766 = !DILocation(line: 1758, column: 30, scope: !2758)
!2767 = !DILocalVariable(name: "rest", arg: 2, scope: !2758, file: !424, line: 1758, type: !770)
!2768 = !DILocation(line: 1758, column: 44, scope: !2758)
!2769 = !DILocalVariable(name: "linehandler", arg: 3, scope: !2758, file: !424, line: 1758, type: !2761)
!2770 = !DILocation(line: 1758, column: 69, scope: !2758)
!2771 = !DILocalVariable(name: "data", arg: 4, scope: !2758, file: !424, line: 1758, type: !393)
!2772 = !DILocation(line: 1758, column: 88, scope: !2758)
!2773 = !DILocalVariable(name: "buf", scope: !2758, file: !424, line: 1760, type: !391)
!2774 = !DILocation(line: 1760, column: 8, scope: !2758)
!2775 = !DILocalVariable(name: "p", scope: !2758, file: !424, line: 1760, type: !391)
!2776 = !DILocation(line: 1760, column: 14, scope: !2758)
!2777 = !DILocalVariable(name: "oldrest", scope: !2758, file: !424, line: 1761, type: !391)
!2778 = !DILocation(line: 1761, column: 8, scope: !2758)
!2779 = !DILocalVariable(name: "inputlen", scope: !2758, file: !424, line: 1762, type: !2595)
!2780 = !DILocation(line: 1762, column: 9, scope: !2758)
!2781 = !DILocalVariable(name: "buflen", scope: !2758, file: !424, line: 1763, type: !2595)
!2782 = !DILocation(line: 1763, column: 9, scope: !2758)
!2783 = !DILocalVariable(name: "restlen", scope: !2758, file: !424, line: 1764, type: !2595)
!2784 = !DILocation(line: 1764, column: 9, scope: !2758)
!2785 = !DILocalVariable(name: "ret", scope: !2758, file: !424, line: 1765, type: !454)
!2786 = !DILocation(line: 1765, column: 10, scope: !2758)
!2787 = !DILocation(line: 1768, column: 20, scope: !2758)
!2788 = !DILocation(line: 1768, column: 13, scope: !2758)
!2789 = !DILocation(line: 1768, column: 11, scope: !2758)
!2790 = !DILocation(line: 1769, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2758, file: !424, line: 1769, column: 6)
!2792 = !DILocation(line: 1769, column: 6, scope: !2791)
!2793 = !DILocation(line: 1769, column: 6, scope: !2758)
!2794 = !DILocation(line: 1770, column: 21, scope: !2791)
!2795 = !DILocation(line: 1770, column: 20, scope: !2791)
!2796 = !DILocation(line: 1770, column: 13, scope: !2791)
!2797 = !DILocation(line: 1770, column: 11, scope: !2791)
!2798 = !DILocation(line: 1770, column: 3, scope: !2791)
!2799 = !DILocation(line: 1771, column: 11, scope: !2758)
!2800 = !DILocation(line: 1771, column: 21, scope: !2758)
!2801 = !DILocation(line: 1771, column: 19, scope: !2758)
!2802 = !DILocation(line: 1771, column: 30, scope: !2758)
!2803 = !DILocation(line: 1771, column: 9, scope: !2758)
!2804 = !DILocation(line: 1772, column: 25, scope: !2758)
!2805 = !DILocation(line: 1772, column: 17, scope: !2758)
!2806 = !DILocation(line: 1772, column: 6, scope: !2758)
!2807 = !DILocation(line: 1773, column: 2, scope: !2758)
!2808 = !DILocation(line: 1773, column: 9, scope: !2758)
!2809 = !DILocation(line: 1774, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2758, file: !424, line: 1774, column: 6)
!2811 = !DILocation(line: 1774, column: 6, scope: !2810)
!2812 = !DILocation(line: 1774, column: 6, scope: !2758)
!2813 = !DILocation(line: 1775, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !424, line: 1775, column: 3)
!2815 = !DILocation(line: 1775, column: 18, scope: !2814)
!2816 = !DILocation(line: 1775, column: 17, scope: !2814)
!2817 = !DILocation(line: 1775, column: 23, scope: !2814)
!2818 = !DILocation(line: 1775, column: 29, scope: !2814)
!2819 = !DILocation(line: 1775, column: 5, scope: !2814)
!2820 = !DILocation(line: 1775, column: 38, scope: !2814)
!2821 = !DILocation(line: 1775, column: 44, scope: !2814)
!2822 = !DILocation(line: 1775, column: 34, scope: !2814)
!2823 = !DILocation(line: 1775, column: 48, scope: !2814)
!2824 = !DILocation(line: 1775, column: 53, scope: !2814)
!2825 = !DILocation(line: 1776, column: 10, scope: !2758)
!2826 = !DILocation(line: 1776, column: 15, scope: !2758)
!2827 = !DILocation(line: 1776, column: 22, scope: !2758)
!2828 = !DILocation(line: 1776, column: 2, scope: !2758)
!2829 = !DILocation(line: 1777, column: 6, scope: !2758)
!2830 = !DILocation(line: 1777, column: 4, scope: !2758)
!2831 = !DILocation(line: 1779, column: 2, scope: !2758)
!2832 = !DILocalVariable(name: "newline", scope: !2833, file: !424, line: 1781, type: !391)
!2833 = distinct !DILexicalBlock(scope: !2758, file: !424, line: 1780, column: 2)
!2834 = !DILocation(line: 1781, column: 9, scope: !2833)
!2835 = !DILocation(line: 1781, column: 26, scope: !2833)
!2836 = !DILocation(line: 1781, column: 19, scope: !2833)
!2837 = !DILocation(line: 1782, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !424, line: 1782, column: 7)
!2839 = !DILocation(line: 1782, column: 7, scope: !2833)
!2840 = !DILocation(line: 1784, column: 5, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2838, file: !424, line: 1783, column: 3)
!2842 = !DILocation(line: 1784, column: 13, scope: !2841)
!2843 = !DILocation(line: 1785, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !424, line: 1785, column: 8)
!2845 = !DILocation(line: 1785, column: 21, scope: !2844)
!2846 = !DILocation(line: 1785, column: 24, scope: !2844)
!2847 = !DILocation(line: 1785, column: 8, scope: !2841)
!2848 = !DILocation(line: 1787, column: 9, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !424, line: 1786, column: 4)
!2850 = !DILocation(line: 1787, column: 17, scope: !2849)
!2851 = !DILocation(line: 1787, column: 7, scope: !2849)
!2852 = !DILocation(line: 1788, column: 9, scope: !2849)
!2853 = !DILocation(line: 1789, column: 5, scope: !2849)
!2854 = !DILocation(line: 1791, column: 8, scope: !2841)
!2855 = !DILocation(line: 1791, column: 16, scope: !2841)
!2856 = !DILocation(line: 1791, column: 6, scope: !2841)
!2857 = !DILocation(line: 1792, column: 3, scope: !2841)
!2858 = !DILocation(line: 1795, column: 4, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2838, file: !424, line: 1794, column: 3)
!2860 = !DILocation(line: 1779, column: 2, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2758, file: !424, discriminator: 1)
!2862 = distinct !{!2862, !2831}
!2863 = !DILocation(line: 1801, column: 13, scope: !2758)
!2864 = !DILocation(line: 1801, column: 12, scope: !2758)
!2865 = !DILocation(line: 1801, column: 10, scope: !2758)
!2866 = !DILocation(line: 1802, column: 12, scope: !2758)
!2867 = !DILocation(line: 1802, column: 18, scope: !2758)
!2868 = !DILocation(line: 1802, column: 16, scope: !2758)
!2869 = !DILocation(line: 1802, column: 27, scope: !2758)
!2870 = !DILocation(line: 1802, column: 25, scope: !2758)
!2871 = !DILocation(line: 1802, column: 10, scope: !2758)
!2872 = !DILocation(line: 1803, column: 27, scope: !2758)
!2873 = !DILocation(line: 1803, column: 19, scope: !2758)
!2874 = !DILocation(line: 1803, column: 3, scope: !2758)
!2875 = !DILocation(line: 1803, column: 8, scope: !2758)
!2876 = !DILocation(line: 1804, column: 14, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2758, file: !424, line: 1804, column: 2)
!2878 = !DILocation(line: 1804, column: 13, scope: !2877)
!2879 = !DILocation(line: 1804, column: 20, scope: !2877)
!2880 = !DILocation(line: 1804, column: 22, scope: !2877)
!2881 = !DILocation(line: 1804, column: 29, scope: !2877)
!2882 = !DILocation(line: 1804, column: 4, scope: !2877)
!2883 = !DILocation(line: 1804, column: 42, scope: !2877)
!2884 = !DILocation(line: 1804, column: 49, scope: !2877)
!2885 = !DILocation(line: 1804, column: 36, scope: !2877)
!2886 = !DILocation(line: 1804, column: 35, scope: !2877)
!2887 = !DILocation(line: 1804, column: 34, scope: !2877)
!2888 = !DILocation(line: 1804, column: 53, scope: !2877)
!2889 = !DILocation(line: 1805, column: 8, scope: !2758)
!2890 = !DILocation(line: 1805, column: 2, scope: !2758)
!2891 = !DILocation(line: 1807, column: 8, scope: !2758)
!2892 = !DILocation(line: 1807, column: 2, scope: !2758)
!2893 = !DILocation(line: 1808, column: 9, scope: !2758)
!2894 = !DILocation(line: 1808, column: 2, scope: !2758)
!2895 = distinct !DISubprogram(name: "subprocess", scope: !424, file: !424, line: 1814, type: !2896, isLocal: false, isDefinition: true, scopeLine: 1815, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!454, !2898, !2761, !393}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64, align: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2900 = !DILocalVariable(name: "argv", arg: 1, scope: !2895, file: !424, line: 1814, type: !2898)
!2901 = !DILocation(line: 1814, column: 24, scope: !2895)
!2902 = !DILocalVariable(name: "linehandler", arg: 2, scope: !2895, file: !424, line: 1814, type: !2761)
!2903 = !DILocation(line: 1814, column: 51, scope: !2895)
!2904 = !DILocalVariable(name: "data", arg: 3, scope: !2895, file: !424, line: 1814, type: !393)
!2905 = !DILocation(line: 1814, column: 70, scope: !2895)
!2906 = !DILocalVariable(name: "child", scope: !2895, file: !424, line: 1816, type: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !2908, line: 263, baseType: !865)
!2908 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2909 = !DILocation(line: 1816, column: 8, scope: !2895)
!2910 = !DILocalVariable(name: "fd", scope: !2895, file: !424, line: 1817, type: !2911)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 64, align: 32, elements: !2912)
!2912 = !{!2913}
!2913 = !DISubrange(count: 2)
!2914 = !DILocation(line: 1817, column: 6, scope: !2895)
!2915 = !DILocalVariable(name: "n", scope: !2895, file: !424, line: 1818, type: !390)
!2916 = !DILocation(line: 1818, column: 6, scope: !2895)
!2917 = !DILocalVariable(name: "output", scope: !2895, file: !424, line: 1819, type: !776)
!2918 = !DILocation(line: 1819, column: 7, scope: !2895)
!2919 = !DILocalVariable(name: "rest", scope: !2895, file: !424, line: 1820, type: !391)
!2920 = !DILocation(line: 1820, column: 8, scope: !2895)
!2921 = !DILocation(line: 1822, column: 11, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2895, file: !424, line: 1822, column: 6)
!2923 = !DILocation(line: 1822, column: 6, scope: !2922)
!2924 = !DILocation(line: 1822, column: 15, scope: !2922)
!2925 = !DILocation(line: 1822, column: 6, scope: !2895)
!2926 = !DILocation(line: 1824, column: 68, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !424, line: 1823, column: 2)
!2928 = !DILocation(line: 1824, column: 67, scope: !2927)
!2929 = !DILocation(line: 1824, column: 58, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2927, file: !424, discriminator: 1)
!2931 = !DILocation(line: 1824, column: 3, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !2927, file: !424, discriminator: 2)
!2933 = !DILocation(line: 1825, column: 3, scope: !2927)
!2934 = !DILocation(line: 1828, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2895, file: !424, line: 1828, column: 6)
!2936 = !DILocation(line: 1828, column: 13, scope: !2935)
!2937 = !DILocation(line: 1828, column: 23, scope: !2935)
!2938 = !DILocation(line: 1828, column: 6, scope: !2895)
!2939 = !DILocation(line: 1830, column: 68, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !424, line: 1829, column: 2)
!2941 = !DILocation(line: 1830, column: 67, scope: !2940)
!2942 = !DILocation(line: 1830, column: 58, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2940, file: !424, discriminator: 1)
!2944 = !DILocation(line: 1830, column: 3, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !2940, file: !424, discriminator: 2)
!2946 = !DILocation(line: 1831, column: 3, scope: !2940)
!2947 = !DILocation(line: 1835, column: 6, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2895, file: !424, line: 1835, column: 6)
!2949 = !DILocation(line: 1835, column: 12, scope: !2948)
!2950 = !DILocation(line: 1835, column: 6, scope: !2895)
!2951 = !DILocation(line: 1838, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !424, line: 1836, column: 2)
!2953 = !DILocation(line: 1838, column: 3, scope: !2952)
!2954 = !DILocation(line: 1841, column: 8, scope: !2952)
!2955 = !DILocation(line: 1841, column: 3, scope: !2952)
!2956 = !DILocation(line: 1842, column: 8, scope: !2952)
!2957 = !DILocation(line: 1842, column: 3, scope: !2952)
!2958 = !DILocation(line: 1845, column: 10, scope: !2952)
!2959 = !DILocation(line: 1845, column: 19, scope: !2952)
!2960 = !DILocation(line: 1845, column: 3, scope: !2952)
!2961 = !DILocation(line: 1846, column: 70, scope: !2952)
!2962 = !DILocation(line: 1846, column: 69, scope: !2952)
!2963 = !DILocation(line: 1846, column: 60, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2952, file: !424, discriminator: 1)
!2965 = !DILocation(line: 1846, column: 3, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2952, file: !424, discriminator: 2)
!2967 = !DILocation(line: 1847, column: 3, scope: !2952)
!2968 = !DILocation(line: 1851, column: 8, scope: !2895)
!2969 = !DILocation(line: 1851, column: 2, scope: !2895)
!2970 = !DILocation(line: 1852, column: 2, scope: !2895)
!2971 = !DILocation(line: 1852, column: 9, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2895, file: !424, discriminator: 1)
!2973 = !DILocation(line: 1852, column: 11, scope: !2972)
!2974 = !DILocation(line: 1852, column: 2, scope: !2972)
!2975 = !DILocation(line: 1854, column: 12, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2895, file: !424, line: 1853, column: 2)
!2977 = !DILocation(line: 1854, column: 19, scope: !2976)
!2978 = !DILocation(line: 1854, column: 7, scope: !2976)
!2979 = !DILocation(line: 1854, column: 5, scope: !2976)
!2980 = !DILocation(line: 1855, column: 10, scope: !2976)
!2981 = !DILocation(line: 1855, column: 3, scope: !2976)
!2982 = !DILocation(line: 1855, column: 13, scope: !2976)
!2983 = !DILocation(line: 1856, column: 20, scope: !2976)
!2984 = !DILocation(line: 1856, column: 35, scope: !2976)
!2985 = !DILocation(line: 1856, column: 48, scope: !2976)
!2986 = !DILocation(line: 1856, column: 3, scope: !2976)
!2987 = !DILocation(line: 1852, column: 2, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2895, file: !424, discriminator: 2)
!2989 = distinct !{!2989, !2970}
!2990 = !DILocation(line: 1858, column: 8, scope: !2895)
!2991 = !DILocation(line: 1858, column: 2, scope: !2895)
!2992 = !DILocation(line: 1860, column: 2, scope: !2895)
!2993 = !DILocation(line: 1861, column: 1, scope: !2895)
!2994 = !DILocalVariable(name: "N", arg: 1, scope: !498, file: !424, line: 1868, type: !404)
!2995 = !DILocation(line: 1868, column: 13, scope: !498)
!2996 = !DILocalVariable(name: "base", arg: 2, scope: !498, file: !424, line: 1868, type: !390)
!2997 = !DILocation(line: 1868, column: 20, scope: !498)
!2998 = !DILocalVariable(name: "head", scope: !498, file: !424, line: 1872, type: !391)
!2999 = !DILocation(line: 1872, column: 8, scope: !498)
!3000 = !DILocalVariable(name: "buf", scope: !498, file: !424, line: 1872, type: !502)
!3001 = !DILocation(line: 1872, column: 20, scope: !498)
!3002 = !DILocalVariable(name: "tail", scope: !498, file: !424, line: 1872, type: !391)
!3003 = !DILocation(line: 1872, column: 50, scope: !498)
!3004 = !DILocation(line: 1872, column: 57, scope: !498)
!3005 = !DILocation(line: 1872, column: 61, scope: !498)
!3006 = !DILocalVariable(name: "divrem", scope: !498, file: !424, line: 1874, type: !390)
!3007 = !DILocation(line: 1874, column: 15, scope: !498)
!3008 = !DILocation(line: 1876, column: 6, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !498, file: !424, line: 1876, column: 6)
!3010 = !DILocation(line: 1876, column: 11, scope: !3009)
!3011 = !DILocation(line: 1876, column: 16, scope: !3009)
!3012 = !DILocation(line: 1876, column: 23, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3009, file: !424, discriminator: 1)
!3014 = !DILocation(line: 1876, column: 21, scope: !3013)
!3015 = !DILocation(line: 1876, column: 6, scope: !3013)
!3016 = !DILocation(line: 1877, column: 8, scope: !3009)
!3017 = !DILocation(line: 1877, column: 3, scope: !3009)
!3018 = !DILocation(line: 1879, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !498, file: !424, line: 1879, column: 6)
!3020 = !DILocation(line: 1879, column: 8, scope: !3019)
!3021 = !DILocation(line: 1879, column: 6, scope: !498)
!3022 = !DILocation(line: 1881, column: 8, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !424, line: 1880, column: 2)
!3024 = !DILocation(line: 1881, column: 11, scope: !3023)
!3025 = !DILocation(line: 1882, column: 8, scope: !3023)
!3026 = !DILocation(line: 1882, column: 7, scope: !3023)
!3027 = !DILocation(line: 1882, column: 5, scope: !3023)
!3028 = !DILocation(line: 1883, column: 2, scope: !3023)
!3029 = !DILocation(line: 1885, column: 9, scope: !498)
!3030 = !DILocation(line: 1885, column: 13, scope: !498)
!3031 = !DILocation(line: 1885, column: 7, scope: !498)
!3032 = !DILocation(line: 1886, column: 3, scope: !498)
!3033 = !DILocation(line: 1886, column: 10, scope: !498)
!3034 = !DILocation(line: 1888, column: 2, scope: !498)
!3035 = distinct !{!3035, !3034}
!3036 = !DILocation(line: 1890, column: 12, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !498, file: !424, line: 1889, column: 2)
!3038 = !DILocation(line: 1890, column: 16, scope: !3037)
!3039 = !DILocation(line: 1890, column: 14, scope: !3037)
!3040 = !DILocation(line: 1890, column: 10, scope: !3037)
!3041 = !DILocation(line: 1891, column: 14, scope: !3037)
!3042 = !DILocation(line: 1891, column: 21, scope: !3037)
!3043 = !DILocation(line: 1891, column: 13, scope: !3037)
!3044 = !DILocation(line: 1891, column: 29, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3037, file: !424, discriminator: 1)
!3046 = !DILocation(line: 1891, column: 36, scope: !3045)
!3047 = !DILocation(line: 1891, column: 13, scope: !3045)
!3048 = !DILocation(line: 1891, column: 44, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3037, file: !424, discriminator: 2)
!3050 = !DILocation(line: 1891, column: 51, scope: !3049)
!3051 = !DILocation(line: 1891, column: 57, scope: !3049)
!3052 = !DILocation(line: 1891, column: 13, scope: !3049)
!3053 = !DILocation(line: 1891, column: 13, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3037, file: !424, discriminator: 3)
!3055 = !DILocation(line: 1891, column: 4, scope: !3054)
!3056 = !DILocation(line: 1891, column: 11, scope: !3054)
!3057 = !DILocation(line: 1892, column: 8, scope: !3037)
!3058 = !DILocation(line: 1892, column: 5, scope: !3037)
!3059 = !DILocation(line: 1893, column: 2, scope: !3037)
!3060 = !DILocation(line: 1894, column: 9, scope: !498)
!3061 = !DILocation(line: 1893, column: 2, scope: !3045)
!3062 = !DILocation(line: 1896, column: 9, scope: !498)
!3063 = !DILocation(line: 1896, column: 15, scope: !498)
!3064 = !DILocation(line: 1896, column: 2, scope: !498)
!3065 = !DILocation(line: 1897, column: 2, scope: !498)
!3066 = distinct !DISubprogram(name: "load_licence", scope: !424, file: !424, line: 1901, type: !3067, isLocal: false, isDefinition: true, scopeLine: 1902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!390, !3069}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64, align: 64)
!3070 = !DILocalVariable(name: "data", arg: 1, scope: !3066, file: !424, line: 1901, type: !3069)
!3071 = !DILocation(line: 1901, column: 30, scope: !3066)
!3072 = !DILocalVariable(name: "ho", scope: !3066, file: !424, line: 1903, type: !3073)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 160, align: 8, elements: !3074)
!3074 = !{!3075}
!3075 = !DISubrange(count: 20)
!3076 = !DILocation(line: 1903, column: 8, scope: !3066)
!3077 = !DILocalVariable(name: "hi", scope: !3066, file: !424, line: 1903, type: !425)
!3078 = !DILocation(line: 1903, column: 16, scope: !3066)
!3079 = !DILocalVariable(name: "home", scope: !3066, file: !424, line: 1904, type: !391)
!3080 = !DILocation(line: 1904, column: 8, scope: !3066)
!3081 = !DILocalVariable(name: "path", scope: !3066, file: !424, line: 1904, type: !436)
!3082 = !DILocation(line: 1904, column: 14, scope: !3066)
!3083 = !DILocalVariable(name: "hash", scope: !3066, file: !424, line: 1904, type: !3084)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 328, align: 8, elements: !3085)
!3085 = !{!3086}
!3086 = !DISubrange(count: 41)
!3087 = !DILocation(line: 1904, column: 29, scope: !3066)
!3088 = !DILocalVariable(name: "st", scope: !3066, file: !424, line: 1905, type: !2364)
!3089 = !DILocation(line: 1905, column: 14, scope: !3066)
!3090 = !DILocalVariable(name: "fd", scope: !3066, file: !424, line: 1906, type: !390)
!3091 = !DILocation(line: 1906, column: 6, scope: !3066)
!3092 = !DILocalVariable(name: "length", scope: !3066, file: !424, line: 1906, type: !390)
!3093 = !DILocation(line: 1906, column: 10, scope: !3066)
!3094 = !DILocation(line: 1908, column: 9, scope: !3066)
!3095 = !DILocation(line: 1908, column: 7, scope: !3066)
!3096 = !DILocation(line: 1909, column: 6, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3066, file: !424, line: 1909, column: 6)
!3098 = !DILocation(line: 1909, column: 11, scope: !3097)
!3099 = !DILocation(line: 1909, column: 6, scope: !3066)
!3100 = !DILocation(line: 1910, column: 3, scope: !3097)
!3101 = !DILocation(line: 1912, column: 2, scope: !3066)
!3102 = !DILocation(line: 1913, column: 20, scope: !3066)
!3103 = !DILocation(line: 1913, column: 2, scope: !3066)
!3104 = !DILocation(line: 1914, column: 19, scope: !3066)
!3105 = !DILocation(line: 1914, column: 23, scope: !3066)
!3106 = !DILocation(line: 1914, column: 2, scope: !3066)
!3107 = !DILocation(line: 1915, column: 21, scope: !3066)
!3108 = !DILocation(line: 1915, column: 41, scope: !3066)
!3109 = !DILocation(line: 1915, column: 2, scope: !3066)
!3110 = !DILocation(line: 1917, column: 11, scope: !3066)
!3111 = !DILocation(line: 1917, column: 76, scope: !3066)
!3112 = !DILocation(line: 1917, column: 82, scope: !3066)
!3113 = !DILocation(line: 1917, column: 2, scope: !3066)
!3114 = !DILocation(line: 1918, column: 2, scope: !3066)
!3115 = !DILocation(line: 1918, column: 25, scope: !3066)
!3116 = !DILocation(line: 1920, column: 12, scope: !3066)
!3117 = !DILocation(line: 1920, column: 7, scope: !3066)
!3118 = !DILocation(line: 1920, column: 5, scope: !3066)
!3119 = !DILocation(line: 1921, column: 6, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3066, file: !424, line: 1921, column: 6)
!3121 = !DILocation(line: 1921, column: 9, scope: !3120)
!3122 = !DILocation(line: 1921, column: 6, scope: !3066)
!3123 = !DILocation(line: 1924, column: 12, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !424, line: 1922, column: 2)
!3125 = !DILocation(line: 1924, column: 54, scope: !3124)
!3126 = !DILocation(line: 1924, column: 3, scope: !3124)
!3127 = !DILocation(line: 1925, column: 3, scope: !3124)
!3128 = !DILocation(line: 1925, column: 26, scope: !3124)
!3129 = !DILocation(line: 1926, column: 18, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3124, file: !424, line: 1926, column: 7)
!3131 = !DILocation(line: 1926, column: 13, scope: !3130)
!3132 = !DILocation(line: 1926, column: 11, scope: !3130)
!3133 = !DILocation(line: 1926, column: 34, scope: !3130)
!3134 = !DILocation(line: 1926, column: 7, scope: !3124)
!3135 = !DILocation(line: 1927, column: 4, scope: !3130)
!3136 = !DILocation(line: 1928, column: 2, scope: !3124)
!3137 = !DILocation(line: 1930, column: 12, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3066, file: !424, line: 1930, column: 6)
!3139 = !DILocation(line: 1930, column: 6, scope: !3138)
!3140 = !DILocation(line: 1930, column: 6, scope: !3066)
!3141 = !DILocation(line: 1932, column: 9, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !424, line: 1931, column: 2)
!3143 = !DILocation(line: 1932, column: 3, scope: !3142)
!3144 = !DILocation(line: 1933, column: 3, scope: !3142)
!3145 = !DILocation(line: 1936, column: 31, scope: !3066)
!3146 = !DILocation(line: 1936, column: 28, scope: !3066)
!3147 = !DILocation(line: 1936, column: 20, scope: !3066)
!3148 = !DILocation(line: 1936, column: 3, scope: !3066)
!3149 = !DILocation(line: 1936, column: 8, scope: !3066)
!3150 = !DILocation(line: 1937, column: 16, scope: !3066)
!3151 = !DILocation(line: 1937, column: 21, scope: !3066)
!3152 = !DILocation(line: 1937, column: 20, scope: !3066)
!3153 = !DILocation(line: 1937, column: 30, scope: !3066)
!3154 = !DILocation(line: 1937, column: 11, scope: !3066)
!3155 = !DILocation(line: 1937, column: 9, scope: !3066)
!3156 = !DILocation(line: 1938, column: 8, scope: !3066)
!3157 = !DILocation(line: 1938, column: 2, scope: !3066)
!3158 = !DILocation(line: 1939, column: 9, scope: !3066)
!3159 = !DILocation(line: 1939, column: 2, scope: !3066)
!3160 = !DILocation(line: 1940, column: 1, scope: !3066)
!3161 = distinct !DISubprogram(name: "save_licence", scope: !424, file: !424, line: 1943, type: !3162, isLocal: false, isDefinition: true, scopeLine: 1944, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !2626, !390}
!3164 = !DILocalVariable(name: "data", arg: 1, scope: !3161, file: !424, line: 1943, type: !2626)
!3165 = !DILocation(line: 1943, column: 29, scope: !3161)
!3166 = !DILocalVariable(name: "length", arg: 2, scope: !3161, file: !424, line: 1943, type: !390)
!3167 = !DILocation(line: 1943, column: 39, scope: !3161)
!3168 = !DILocalVariable(name: "ho", scope: !3161, file: !424, line: 1945, type: !3073)
!3169 = !DILocation(line: 1945, column: 8, scope: !3161)
!3170 = !DILocalVariable(name: "hi", scope: !3161, file: !424, line: 1945, type: !425)
!3171 = !DILocation(line: 1945, column: 16, scope: !3161)
!3172 = !DILocalVariable(name: "home", scope: !3161, file: !424, line: 1946, type: !391)
!3173 = !DILocation(line: 1946, column: 8, scope: !3161)
!3174 = !DILocalVariable(name: "path", scope: !3161, file: !424, line: 1946, type: !436)
!3175 = !DILocation(line: 1946, column: 14, scope: !3161)
!3176 = !DILocalVariable(name: "tmppath", scope: !3161, file: !424, line: 1946, type: !436)
!3177 = !DILocation(line: 1946, column: 29, scope: !3161)
!3178 = !DILocalVariable(name: "hash", scope: !3161, file: !424, line: 1946, type: !3084)
!3179 = !DILocation(line: 1946, column: 48, scope: !3161)
!3180 = !DILocalVariable(name: "fd", scope: !3161, file: !424, line: 1947, type: !390)
!3181 = !DILocation(line: 1947, column: 6, scope: !3161)
!3182 = !DILocation(line: 1949, column: 9, scope: !3161)
!3183 = !DILocation(line: 1949, column: 7, scope: !3161)
!3184 = !DILocation(line: 1950, column: 6, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3161, file: !424, line: 1950, column: 6)
!3186 = !DILocation(line: 1950, column: 11, scope: !3185)
!3187 = !DILocation(line: 1950, column: 6, scope: !3161)
!3188 = !DILocation(line: 1951, column: 3, scope: !3185)
!3189 = !DILocation(line: 1953, column: 11, scope: !3161)
!3190 = !DILocation(line: 1953, column: 66, scope: !3161)
!3191 = !DILocation(line: 1953, column: 2, scope: !3161)
!3192 = !DILocation(line: 1954, column: 2, scope: !3161)
!3193 = !DILocation(line: 1954, column: 25, scope: !3161)
!3194 = !DILocation(line: 1955, column: 20, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3161, file: !424, line: 1955, column: 6)
!3196 = !DILocation(line: 1955, column: 6, scope: !3195)
!3197 = !DILocation(line: 1955, column: 32, scope: !3195)
!3198 = !DILocation(line: 1955, column: 6, scope: !3161)
!3199 = !DILocation(line: 1957, column: 79, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !424, line: 1956, column: 2)
!3201 = !DILocation(line: 1957, column: 78, scope: !3200)
!3202 = !DILocation(line: 1957, column: 69, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3200, file: !424, discriminator: 1)
!3204 = !DILocation(line: 1957, column: 3, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3200, file: !424, discriminator: 2)
!3206 = !DILocation(line: 1958, column: 3, scope: !3200)
!3207 = !DILocation(line: 1961, column: 2, scope: !3161)
!3208 = !DILocation(line: 1962, column: 20, scope: !3161)
!3209 = !DILocation(line: 1962, column: 2, scope: !3161)
!3210 = !DILocation(line: 1963, column: 19, scope: !3161)
!3211 = !DILocation(line: 1963, column: 23, scope: !3161)
!3212 = !DILocation(line: 1963, column: 2, scope: !3161)
!3213 = !DILocation(line: 1964, column: 21, scope: !3161)
!3214 = !DILocation(line: 1964, column: 41, scope: !3161)
!3215 = !DILocation(line: 1964, column: 2, scope: !3161)
!3216 = !DILocation(line: 1968, column: 11, scope: !3161)
!3217 = !DILocation(line: 1968, column: 76, scope: !3161)
!3218 = !DILocation(line: 1968, column: 82, scope: !3161)
!3219 = !DILocation(line: 1968, column: 2, scope: !3161)
!3220 = !DILocation(line: 1969, column: 2, scope: !3161)
!3221 = !DILocation(line: 1969, column: 25, scope: !3161)
!3222 = !DILocation(line: 1971, column: 11, scope: !3161)
!3223 = !DILocation(line: 1971, column: 39, scope: !3161)
!3224 = !DILocation(line: 1971, column: 2, scope: !3161)
!3225 = !DILocation(line: 1972, column: 2, scope: !3161)
!3226 = !DILocation(line: 1972, column: 25, scope: !3161)
!3227 = !DILocation(line: 1974, column: 12, scope: !3161)
!3228 = !DILocation(line: 1974, column: 7, scope: !3161)
!3229 = !DILocation(line: 1974, column: 5, scope: !3161)
!3230 = !DILocation(line: 1975, column: 6, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3161, file: !424, line: 1975, column: 6)
!3232 = !DILocation(line: 1975, column: 9, scope: !3231)
!3233 = !DILocation(line: 1975, column: 6, scope: !3161)
!3234 = !DILocation(line: 1977, column: 70, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !424, line: 1976, column: 2)
!3236 = !DILocation(line: 1977, column: 69, scope: !3235)
!3237 = !DILocation(line: 1977, column: 60, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3235, file: !424, discriminator: 1)
!3239 = !DILocation(line: 1977, column: 3, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3235, file: !424, discriminator: 2)
!3241 = !DILocation(line: 1978, column: 3, scope: !3235)
!3242 = !DILocation(line: 1981, column: 12, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3161, file: !424, line: 1981, column: 6)
!3244 = !DILocation(line: 1981, column: 16, scope: !3243)
!3245 = !DILocation(line: 1981, column: 22, scope: !3243)
!3246 = !DILocation(line: 1981, column: 6, scope: !3243)
!3247 = !DILocation(line: 1981, column: 33, scope: !3243)
!3248 = !DILocation(line: 1981, column: 30, scope: !3243)
!3249 = !DILocation(line: 1981, column: 6, scope: !3161)
!3250 = !DILocation(line: 1983, column: 71, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !424, line: 1982, column: 2)
!3252 = !DILocation(line: 1983, column: 70, scope: !3251)
!3253 = !DILocation(line: 1983, column: 61, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3251, file: !424, discriminator: 1)
!3255 = !DILocation(line: 1983, column: 3, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3251, file: !424, discriminator: 2)
!3257 = !DILocation(line: 1984, column: 10, scope: !3251)
!3258 = !DILocation(line: 1984, column: 3, scope: !3251)
!3259 = !DILocation(line: 1985, column: 2, scope: !3251)
!3260 = !DILocation(line: 1986, column: 18, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3243, file: !424, line: 1986, column: 11)
!3262 = !DILocation(line: 1986, column: 27, scope: !3261)
!3263 = !DILocation(line: 1986, column: 11, scope: !3261)
!3264 = !DILocation(line: 1986, column: 33, scope: !3261)
!3265 = !DILocation(line: 1986, column: 11, scope: !3243)
!3266 = !DILocation(line: 1988, column: 72, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3261, file: !424, line: 1987, column: 2)
!3268 = !DILocation(line: 1988, column: 71, scope: !3267)
!3269 = !DILocation(line: 1988, column: 62, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3267, file: !424, discriminator: 1)
!3271 = !DILocation(line: 1988, column: 3, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3267, file: !424, discriminator: 2)
!3273 = !DILocation(line: 1989, column: 10, scope: !3267)
!3274 = !DILocation(line: 1989, column: 3, scope: !3267)
!3275 = !DILocation(line: 1990, column: 2, scope: !3267)
!3276 = !DILocation(line: 1992, column: 8, scope: !3161)
!3277 = !DILocation(line: 1992, column: 2, scope: !3161)
!3278 = !DILocation(line: 1993, column: 1, scope: !3161)
!3279 = !DILocation(line: 1993, column: 1, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3161, file: !424, discriminator: 1)
!3281 = distinct !DISubprogram(name: "rd_pstcache_mkdir", scope: !424, file: !424, line: 2014, type: !3282, isLocal: false, isDefinition: true, scopeLine: 2015, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!454}
!3284 = !DILocalVariable(name: "home", scope: !3281, file: !424, line: 2016, type: !391)
!3285 = !DILocation(line: 2016, column: 8, scope: !3281)
!3286 = !DILocalVariable(name: "bmpcache_dir", scope: !3281, file: !424, line: 2017, type: !776)
!3287 = !DILocation(line: 2017, column: 7, scope: !3281)
!3288 = !DILocation(line: 2019, column: 9, scope: !3281)
!3289 = !DILocation(line: 2019, column: 7, scope: !3281)
!3290 = !DILocation(line: 2021, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3281, file: !424, line: 2021, column: 6)
!3292 = !DILocation(line: 2021, column: 11, scope: !3291)
!3293 = !DILocation(line: 2021, column: 6, scope: !3281)
!3294 = !DILocation(line: 2022, column: 3, scope: !3291)
!3295 = !DILocation(line: 2024, column: 10, scope: !3281)
!3296 = !DILocation(line: 2024, column: 33, scope: !3281)
!3297 = !DILocation(line: 2024, column: 2, scope: !3281)
!3298 = !DILocation(line: 2026, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3281, file: !424, line: 2026, column: 6)
!3300 = !DILocation(line: 2026, column: 7, scope: !3299)
!3301 = !DILocation(line: 2026, column: 35, scope: !3299)
!3302 = !DILocation(line: 2026, column: 42, scope: !3299)
!3303 = !DILocation(line: 2026, column: 47, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3299, file: !424, discriminator: 1)
!3305 = !DILocation(line: 2026, column: 46, scope: !3304)
!3306 = !DILocation(line: 2026, column: 51, scope: !3304)
!3307 = !DILocation(line: 2026, column: 6, scope: !3304)
!3308 = !DILocation(line: 2028, column: 76, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3299, file: !424, line: 2027, column: 2)
!3310 = !DILocation(line: 2028, column: 75, scope: !3309)
!3311 = !DILocation(line: 2028, column: 66, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3309, file: !424, discriminator: 1)
!3313 = !DILocation(line: 2028, column: 3, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3309, file: !424, discriminator: 2)
!3315 = !DILocation(line: 2029, column: 3, scope: !3309)
!3316 = !DILocation(line: 2032, column: 10, scope: !3281)
!3317 = !DILocation(line: 2032, column: 33, scope: !3281)
!3318 = !DILocation(line: 2032, column: 2, scope: !3281)
!3319 = !DILocation(line: 2034, column: 13, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3281, file: !424, line: 2034, column: 6)
!3321 = !DILocation(line: 2034, column: 7, scope: !3320)
!3322 = !DILocation(line: 2034, column: 35, scope: !3320)
!3323 = !DILocation(line: 2034, column: 42, scope: !3320)
!3324 = !DILocation(line: 2034, column: 47, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3320, file: !424, discriminator: 1)
!3326 = !DILocation(line: 2034, column: 46, scope: !3325)
!3327 = !DILocation(line: 2034, column: 51, scope: !3325)
!3328 = !DILocation(line: 2034, column: 6, scope: !3325)
!3329 = !DILocation(line: 2036, column: 76, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3320, file: !424, line: 2035, column: 2)
!3331 = !DILocation(line: 2036, column: 75, scope: !3330)
!3332 = !DILocation(line: 2036, column: 66, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3330, file: !424, discriminator: 1)
!3334 = !DILocation(line: 2036, column: 3, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3330, file: !424, discriminator: 2)
!3336 = !DILocation(line: 2037, column: 3, scope: !3330)
!3337 = !DILocation(line: 2040, column: 2, scope: !3281)
!3338 = !DILocation(line: 2041, column: 1, scope: !3281)
!3339 = distinct !DISubprogram(name: "rd_open_file", scope: !424, file: !424, line: 2045, type: !3340, isLocal: false, isDefinition: true, scopeLine: 2046, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!390, !391}
!3342 = !DILocalVariable(name: "filename", arg: 1, scope: !3339, file: !424, line: 2045, type: !391)
!3343 = !DILocation(line: 2045, column: 20, scope: !3339)
!3344 = !DILocalVariable(name: "home", scope: !3339, file: !424, line: 2047, type: !391)
!3345 = !DILocation(line: 2047, column: 8, scope: !3339)
!3346 = !DILocalVariable(name: "fn", scope: !3339, file: !424, line: 2048, type: !776)
!3347 = !DILocation(line: 2048, column: 7, scope: !3339)
!3348 = !DILocalVariable(name: "fd", scope: !3339, file: !424, line: 2049, type: !390)
!3349 = !DILocation(line: 2049, column: 6, scope: !3339)
!3350 = !DILocation(line: 2051, column: 9, scope: !3339)
!3351 = !DILocation(line: 2051, column: 7, scope: !3339)
!3352 = !DILocation(line: 2052, column: 6, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3339, file: !424, line: 2052, column: 6)
!3354 = !DILocation(line: 2052, column: 11, scope: !3353)
!3355 = !DILocation(line: 2052, column: 6, scope: !3339)
!3356 = !DILocation(line: 2053, column: 3, scope: !3353)
!3357 = !DILocation(line: 2054, column: 10, scope: !3339)
!3358 = !DILocation(line: 2054, column: 33, scope: !3339)
!3359 = !DILocation(line: 2054, column: 39, scope: !3339)
!3360 = !DILocation(line: 2054, column: 2, scope: !3339)
!3361 = !DILocation(line: 2055, column: 12, scope: !3339)
!3362 = !DILocation(line: 2055, column: 7, scope: !3339)
!3363 = !DILocation(line: 2055, column: 5, scope: !3339)
!3364 = !DILocation(line: 2056, column: 6, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3339, file: !424, line: 2056, column: 6)
!3366 = !DILocation(line: 2056, column: 9, scope: !3365)
!3367 = !DILocation(line: 2056, column: 6, scope: !3339)
!3368 = !DILocation(line: 2057, column: 70, scope: !3365)
!3369 = !DILocation(line: 2057, column: 69, scope: !3365)
!3370 = !DILocation(line: 2057, column: 60, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3365, file: !424, discriminator: 1)
!3372 = !DILocation(line: 2057, column: 3, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3365, file: !424, discriminator: 2)
!3374 = !DILocation(line: 2057, column: 3, scope: !3365)
!3375 = !DILocation(line: 2059, column: 9, scope: !3339)
!3376 = !DILocation(line: 2059, column: 2, scope: !3339)
!3377 = !DILocation(line: 2060, column: 1, scope: !3339)
!3378 = distinct !DISubprogram(name: "rd_close_file", scope: !424, file: !424, line: 2064, type: !388, isLocal: false, isDefinition: true, scopeLine: 2065, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3379 = !DILocalVariable(name: "fd", arg: 1, scope: !3378, file: !424, line: 2064, type: !390)
!3380 = !DILocation(line: 2064, column: 19, scope: !3378)
!3381 = !DILocation(line: 2066, column: 8, scope: !3378)
!3382 = !DILocation(line: 2066, column: 2, scope: !3378)
!3383 = !DILocation(line: 2067, column: 1, scope: !3378)
!3384 = distinct !DISubprogram(name: "rd_read_file", scope: !424, file: !424, line: 2071, type: !3385, isLocal: false, isDefinition: true, scopeLine: 2072, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!390, !390, !393, !390}
!3387 = !DILocalVariable(name: "fd", arg: 1, scope: !3384, file: !424, line: 2071, type: !390)
!3388 = !DILocation(line: 2071, column: 18, scope: !3384)
!3389 = !DILocalVariable(name: "ptr", arg: 2, scope: !3384, file: !424, line: 2071, type: !393)
!3390 = !DILocation(line: 2071, column: 28, scope: !3384)
!3391 = !DILocalVariable(name: "len", arg: 3, scope: !3384, file: !424, line: 2071, type: !390)
!3392 = !DILocation(line: 2071, column: 37, scope: !3384)
!3393 = !DILocation(line: 2073, column: 14, scope: !3384)
!3394 = !DILocation(line: 2073, column: 18, scope: !3384)
!3395 = !DILocation(line: 2073, column: 23, scope: !3384)
!3396 = !DILocation(line: 2073, column: 9, scope: !3384)
!3397 = !DILocation(line: 2073, column: 2, scope: !3384)
!3398 = distinct !DISubprogram(name: "rd_write_file", scope: !424, file: !424, line: 2078, type: !3385, isLocal: false, isDefinition: true, scopeLine: 2079, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3399 = !DILocalVariable(name: "fd", arg: 1, scope: !3398, file: !424, line: 2078, type: !390)
!3400 = !DILocation(line: 2078, column: 19, scope: !3398)
!3401 = !DILocalVariable(name: "ptr", arg: 2, scope: !3398, file: !424, line: 2078, type: !393)
!3402 = !DILocation(line: 2078, column: 29, scope: !3398)
!3403 = !DILocalVariable(name: "len", arg: 3, scope: !3398, file: !424, line: 2078, type: !390)
!3404 = !DILocation(line: 2078, column: 38, scope: !3398)
!3405 = !DILocation(line: 2080, column: 15, scope: !3398)
!3406 = !DILocation(line: 2080, column: 19, scope: !3398)
!3407 = !DILocation(line: 2080, column: 24, scope: !3398)
!3408 = !DILocation(line: 2080, column: 9, scope: !3398)
!3409 = !DILocation(line: 2080, column: 2, scope: !3398)
!3410 = distinct !DISubprogram(name: "rd_lseek_file", scope: !424, file: !424, line: 2085, type: !3411, isLocal: false, isDefinition: true, scopeLine: 2086, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!390, !390, !390}
!3413 = !DILocalVariable(name: "fd", arg: 1, scope: !3410, file: !424, line: 2085, type: !390)
!3414 = !DILocation(line: 2085, column: 19, scope: !3410)
!3415 = !DILocalVariable(name: "offset", arg: 2, scope: !3410, file: !424, line: 2085, type: !390)
!3416 = !DILocation(line: 2085, column: 27, scope: !3410)
!3417 = !DILocation(line: 2087, column: 15, scope: !3410)
!3418 = !DILocation(line: 2087, column: 19, scope: !3410)
!3419 = !DILocation(line: 2087, column: 9, scope: !3410)
!3420 = !DILocation(line: 2087, column: 2, scope: !3410)
!3421 = distinct !DISubprogram(name: "rd_lock_file", scope: !424, file: !424, line: 2092, type: !3422, isLocal: false, isDefinition: true, scopeLine: 2093, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !501)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!454, !390, !390, !390}
!3424 = !DILocalVariable(name: "fd", arg: 1, scope: !3421, file: !424, line: 2092, type: !390)
!3425 = !DILocation(line: 2092, column: 18, scope: !3421)
!3426 = !DILocalVariable(name: "start", arg: 2, scope: !3421, file: !424, line: 2092, type: !390)
!3427 = !DILocation(line: 2092, column: 26, scope: !3421)
!3428 = !DILocalVariable(name: "len", arg: 3, scope: !3421, file: !424, line: 2092, type: !390)
!3429 = !DILocation(line: 2092, column: 37, scope: !3421)
!3430 = !DILocalVariable(name: "lock", scope: !3421, file: !424, line: 2094, type: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !3432, line: 35, size: 256, align: 64, elements: !3433)
!3432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!3433 = !{!3434, !3435, !3436, !3437, !3438}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !3431, file: !3432, line: 37, baseType: !899, size: 16, align: 16)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !3431, file: !3432, line: 38, baseType: !899, size: 16, align: 16, offset: 16)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !3431, file: !3432, line: 40, baseType: !2380, size: 64, align: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !3431, file: !3432, line: 41, baseType: !2380, size: 64, align: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !3431, file: !3432, line: 46, baseType: !865, size: 32, align: 32, offset: 192)
!3439 = !DILocation(line: 2094, column: 15, scope: !3421)
!3440 = !DILocation(line: 2096, column: 7, scope: !3421)
!3441 = !DILocation(line: 2096, column: 14, scope: !3421)
!3442 = !DILocation(line: 2097, column: 7, scope: !3421)
!3443 = !DILocation(line: 2097, column: 16, scope: !3421)
!3444 = !DILocation(line: 2098, column: 17, scope: !3421)
!3445 = !DILocation(line: 2098, column: 7, scope: !3421)
!3446 = !DILocation(line: 2098, column: 15, scope: !3421)
!3447 = !DILocation(line: 2099, column: 15, scope: !3421)
!3448 = !DILocation(line: 2099, column: 7, scope: !3421)
!3449 = !DILocation(line: 2099, column: 13, scope: !3421)
!3450 = !DILocation(line: 2100, column: 12, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3421, file: !424, line: 2100, column: 6)
!3452 = !DILocation(line: 2100, column: 6, scope: !3451)
!3453 = !DILocation(line: 2100, column: 31, scope: !3451)
!3454 = !DILocation(line: 2100, column: 6, scope: !3421)
!3455 = !DILocation(line: 2101, column: 3, scope: !3451)
!3456 = !DILocation(line: 2102, column: 2, scope: !3421)
!3457 = !DILocation(line: 2103, column: 1, scope: !3421)
!3458 = distinct !DISubprogram(name: "setup_user_requested_session_size", scope: !424, file: !424, line: 737, type: !927, isLocal: true, isDefinition: true, scopeLine: 738, isOptimized: false, unit: !0, variables: !501)
!3459 = !DILocation(line: 739, column: 9, scope: !3458)
!3460 = !DILocation(line: 739, column: 2, scope: !3458)
!3461 = !DILocation(line: 742, column: 3, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !424, line: 740, column: 2)
!3463 = !DILocation(line: 743, column: 3, scope: !3462)
!3464 = !DILocation(line: 746, column: 3, scope: !3462)
!3465 = !DILocation(line: 747, column: 3, scope: !3462)
!3466 = !DILocation(line: 750, column: 3, scope: !3462)
!3467 = !DILocation(line: 753, column: 38, scope: !3462)
!3468 = !DILocation(line: 754, column: 10, scope: !3462)
!3469 = !DILocation(line: 753, column: 3, scope: !3462)
!3470 = !DILocation(line: 757, column: 3, scope: !3462)
!3471 = !DILocation(line: 759, column: 1, scope: !3458)
