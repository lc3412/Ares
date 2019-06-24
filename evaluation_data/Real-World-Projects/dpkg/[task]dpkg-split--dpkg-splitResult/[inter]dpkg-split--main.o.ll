; ModuleID = './[inter]dpkg-split--main.o.i'
source_filename = "./[inter]dpkg-split--main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@opt_maxpartsize = global i64 460800, align 8
@opt_outputfile = global i8* null, align 8
@opt_npquiet = global i32 0, align 4
@opt_msdos = global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexpected end of file in %s in %.255s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error reading %s from file %.255s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dpkg-split\00", align 1
@cmdinfos = internal constant [14 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8 115, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_split }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 106, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_join }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8 73, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_info }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8 97, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_auto }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8 108, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_queue }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 100, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_discard }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @opt_depotdir, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8 83, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_part_size, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8 111, i32 1, i32* null, i8** @opt_outputfile, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8 81, i32 0, i32* @opt_npquiet, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, i32* @opt_msdos, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [33 x i8] c"Type dpkg-split --help for help.\00", align 16
@admindir = internal global i8* null, align 8
@opt_depotdir = common global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"parts\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"need an action option\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"<standard error>\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"listq\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"depotdir\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"partsize\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"npquiet\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"msdos\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [360 x i8] c"Commands:\0A  -s|--split <file> [<prefix>]     Split an archive.\0A  -j|--join <part> <part> ...      Join parts together.\0A  -I|--info <part> ...             Display info about a part.\0A  -a|--auto -o <complete> <part>   Auto-accumulate parts.\0A  -l|--listq                       List unmatched pieces.\0A  -d|--discard [<filename> ...]    Discard unmatched pieces.\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [114 x i8] c"  -?, --help                       Show this help message.\0A      --version                    Show the version.\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [408 x i8] c"Options:\0A  --depotdir <directory>           Use <directory> instead of %s/%s.\0A  -S|--partsize <size>             In KiB, for -s (default is 450).\0A  -o|--output <file>               Filename, for -j (default is\0A                                     <package>_<version>_<arch>.deb).\0A  -Q|--npquiet                     Be quiet when -a is not a part.\0A  --msdos                          Generate 8.3 filenames.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"Exit status:\0A  0 = ok\0A  1 = with --auto, file is not a part\0A  2 = trouble\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Debian '%s' package split/join tool; version %s.\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.29 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"invalid integer for --%s: '%.250s'\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"part size is far too large or is not positive\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"part size must be at least %d KiB (to allow for header)\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @read_fail(i32, i8*, i8*) #0 !dbg !58 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !62), !dbg !63
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !64, metadata !62), !dbg !65
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !66, metadata !62), !dbg !67
  %7 = load i32, i32* %4, align 4, !dbg !68
  %8 = icmp sge i32 %7, 0, !dbg !70
  br i1 %8, label %9, label %13, !dbg !71

; <label>:9:                                      ; preds = %3
  %10 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #8, !dbg !72
  %11 = load i8*, i8** %6, align 8, !dbg !73
  %12 = load i8*, i8** %5, align 8, !dbg !74
  call void (i8*, ...) @ohshit(i8* %10, i8* %11, i8* %12) #9, !dbg !75
  unreachable, !dbg !77

; <label>:13:                                     ; preds = %3
  %14 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !78
  %15 = load i8*, i8** %6, align 8, !dbg !79
  %16 = load i8*, i8** %5, align 8, !dbg !80
  call void (i8*, ...) @ohshite(i8* %14, i8* %15, i8* %16) #9, !dbg !81
  unreachable, !dbg !82
                                                  ; No predecessors!
  ret void, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #4 !dbg !84 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !87, metadata !62), !dbg !88
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !89, metadata !62), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %6, metadata !91, metadata !62), !dbg !92
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)), !dbg !93
  call void @dpkg_program_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !94
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([14 x %struct.cmdinfo], [14 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @printforhelp, i32 0, i32 0)), !dbg !95
  %7 = load i8*, i8** @admindir, align 8, !dbg !96
  %8 = call i8* @dpkg_db_set_dir(i8* %7), !dbg !97
  store i8* %8, i8** @admindir, align 8, !dbg !98
  %9 = load i8*, i8** @opt_depotdir, align 8, !dbg !99
  %10 = icmp eq i8* %9, null, !dbg !101
  br i1 %10, label %11, label %13, !dbg !102

; <label>:11:                                     ; preds = %2
  %12 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)), !dbg !103
  store i8* %12, i8** @opt_depotdir, align 8, !dbg !104
  br label %13, !dbg !105

; <label>:13:                                     ; preds = %11, %2
  %14 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !106
  %15 = icmp ne %struct.cmdinfo* %14, null, !dbg !106
  br i1 %15, label %18, label %16, !dbg !108

; <label>:16:                                     ; preds = %13
  %17 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !109
  call void (i8*, ...) @badusage(i8* %17) #9, !dbg !111
  unreachable, !dbg !113

; <label>:18:                                     ; preds = %13
  %19 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !114
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %19, i32 0, i32 8, !dbg !115
  %21 = load i32 (i8**)*, i32 (i8**)** %20, align 8, !dbg !115
  %22 = load i8**, i8*** %5, align 8, !dbg !116
  %23 = call i32 %21(i8** %22), !dbg !114
  store i32 %23, i32* %6, align 4, !dbg !117
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !118
  %25 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !119
  call void @m_output(%struct._IO_FILE* %24, i8* %25), !dbg !120
  call void @dpkg_program_done(), !dbg !122
  %26 = load i32, i32* %6, align 4, !dbg !123
  ret i32 %26, !dbg !124
}

declare void @dpkg_locales_init(i8*) #5

declare void @dpkg_program_init(i8*) #5

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #5

declare i8* @dpkg_db_set_dir(i8*) #5

declare i8* @dpkg_db_get_path(i8*) #5

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #5

declare void @dpkg_program_done() #5

declare void @setaction(%struct.cmdinfo*, i8*) #5

declare i32 @do_split(i8**) #5

declare i32 @do_join(i8**) #5

declare i32 @do_info(i8**) #5

declare i32 @do_auto(i8**) #5

declare i32 @do_queue(i8**) #5

declare i32 @do_discard(i8**) #5

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #0 !dbg !125 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !126, metadata !62), !dbg !127
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !128, metadata !62), !dbg !129
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !130
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !131
  %7 = call i8* @gettext(i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !133
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !134
  %9 = call i8* @gettext(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !135
  %10 = call i32 (i8*, ...) @printf(i8* %9), !dbg !136
  %11 = call i8* @gettext(i8* getelementptr inbounds ([408 x i8], [408 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !137
  %12 = call i32 (i8*, ...) @printf(i8* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)), !dbg !138
  %13 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !139
  %14 = call i32 (i8*, ...) @printf(i8* %13), !dbg !140
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !141
  %16 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !142
  call void @m_output(%struct._IO_FILE* %15, i8* %16), !dbg !143
  call void @exit(i32 0) #10, !dbg !144
  unreachable, !dbg !144
                                                  ; No predecessors!
  ret void, !dbg !145
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #0 !dbg !146 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !147, metadata !62), !dbg !148
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !62), !dbg !150
  %5 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !151
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)), !dbg !152
  %7 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !154
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !155
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !156
  %10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !157
  call void @m_output(%struct._IO_FILE* %9, i8* %10), !dbg !158
  call void @exit(i32 0) #10, !dbg !159
  unreachable, !dbg !159
                                                  ; No predecessors!
  ret void, !dbg !160
}

; Function Attrs: nounwind uwtable
define internal void @set_part_size(%struct.cmdinfo*, i8*) #4 !dbg !161 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !162, metadata !62), !dbg !163
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !62), !dbg !165
  call void @llvm.dbg.declare(metadata i64* %5, metadata !166, metadata !62), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %6, metadata !168, metadata !62), !dbg !170
  %7 = call i32* @__errno_location() #1, !dbg !171
  store i32 0, i32* %7, align 4, !dbg !172
  %8 = load i8*, i8** %4, align 8, !dbg !173
  %9 = call i64 @strtoimax(i8* %8, i8** %6, i32 10) #8, !dbg !174
  store i64 %9, i64* %5, align 8, !dbg !175
  %10 = load i8*, i8** %4, align 8, !dbg !176
  %11 = load i8*, i8** %6, align 8, !dbg !178
  %12 = icmp eq i8* %10, %11, !dbg !179
  br i1 %12, label %18, label %13, !dbg !180

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !181
  %15 = load i8, i8* %14, align 1, !dbg !183
  %16 = sext i8 %15 to i32, !dbg !183
  %17 = icmp ne i32 %16, 0, !dbg !183
  br i1 %17, label %18, label %24, !dbg !184

; <label>:18:                                     ; preds = %13, %2
  %19 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !185
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !186
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 0, !dbg !187
  %22 = load i8*, i8** %21, align 8, !dbg !187
  %23 = load i8*, i8** %4, align 8, !dbg !188
  call void (i8*, ...) @badusage(i8* %19, i8* %22, i8* %23) #9, !dbg !189
  unreachable, !dbg !190

; <label>:24:                                     ; preds = %13
  %25 = load i64, i64* %5, align 8, !dbg !191
  %26 = icmp sle i64 %25, 0, !dbg !193
  br i1 %26, label %34, label %27, !dbg !194

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* %5, align 8, !dbg !195
  %29 = icmp sgt i64 %28, 2097151, !dbg !197
  br i1 %29, label %34, label %30, !dbg !198

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno_location() #1, !dbg !199
  %32 = load i32, i32* %31, align 4, !dbg !201
  %33 = icmp eq i32 %32, 34, !dbg !202
  br i1 %33, label %34, label %36, !dbg !203

; <label>:34:                                     ; preds = %30, %27, %24
  %35 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !204
  call void (i8*, ...) @badusage(i8* %35) #9, !dbg !205
  unreachable, !dbg !206

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %5, align 8, !dbg !207
  %38 = shl i64 %37, 10, !dbg !208
  store i64 %38, i64* @opt_maxpartsize, align 8, !dbg !209
  %39 = load i64, i64* @opt_maxpartsize, align 8, !dbg !210
  %40 = icmp sle i64 %39, 1024, !dbg !212
  br i1 %40, label %41, label %43, !dbg !213

; <label>:41:                                     ; preds = %36
  %42 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !214
  call void (i8*, ...) @badusage(i8* %42, i32 2) #9, !dbg !215
  unreachable, !dbg !217

; <label>:43:                                     ; preds = %36
  ret void, !dbg !218
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @strtoimax(i8*, i8**, i32) #3

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]dpkg-split--main.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !13, !17, !19, !20, !21, !22, !51}
!6 = distinct !DIGlobalVariable(name: "opt_maxpartsize", scope: !0, file: !7, line: 105, type: !8, isLocal: false, isDefinition: true, variable: i64* @opt_maxpartsize)
!7 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !9, line: 86, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !11, line: 131, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!12 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!13 = distinct !DIGlobalVariable(name: "opt_outputfile", scope: !0, file: !7, line: 108, type: !14, isLocal: false, isDefinition: true, variable: i8** @opt_outputfile)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = distinct !DIGlobalVariable(name: "opt_npquiet", scope: !0, file: !7, line: 109, type: !18, isLocal: false, isDefinition: true, variable: i32* @opt_npquiet)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = distinct !DIGlobalVariable(name: "opt_msdos", scope: !0, file: !7, line: 110, type: !18, isLocal: false, isDefinition: true, variable: i32* @opt_msdos)
!20 = distinct !DIGlobalVariable(name: "admindir", scope: !0, file: !7, line: 106, type: !14, isLocal: true, isDefinition: true, variable: i8** @admindir)
!21 = distinct !DIGlobalVariable(name: "opt_depotdir", scope: !0, file: !7, line: 107, type: !14, isLocal: false, isDefinition: true, variable: i8** @opt_depotdir)
!22 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !7, line: 140, type: !23, isLocal: true, isDefinition: true, variable: [14 x %struct.cmdinfo]* @cmdinfos)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 7168, align: 64, elements: !49)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !26, line: 38, size: 512, align: 64, elements: !27)
!26 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-split--dpkg-split")
!27 = !{!28, !29, !30, !31, !33, !35, !40, !41, !42}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !25, file: !26, line: 39, baseType: !14, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !25, file: !26, line: 40, baseType: !16, size: 8, align: 8, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !25, file: !26, line: 48, baseType: !18, size: 32, align: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !25, file: !26, line: 49, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !25, file: !26, line: 50, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !25, file: !26, line: 51, baseType: !36, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !14}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !25, file: !26, line: 53, baseType: !18, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !25, file: !26, line: 54, baseType: !4, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !25, file: !26, line: 56, baseType: !43, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !26, line: 36, baseType: !45)
!45 = !DISubroutineType(types: !46)
!46 = !{!18, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!49 = !{!50}
!50 = !DISubrange(count: 14)
!51 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !7, line: 103, type: !52, isLocal: true, isDefinition: true, variable: [33 x i8]* @printforhelp)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 264, align: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 33)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!58 = distinct !DISubprogram(name: "read_fail", scope: !7, file: !7, line: 113, type: !59, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !18, !14, !14}
!61 = !DILocalVariable(name: "rc", arg: 1, scope: !58, file: !7, line: 113, type: !18)
!62 = !DIExpression()
!63 = !DILocation(line: 113, column: 15, scope: !58)
!64 = !DILocalVariable(name: "filename", arg: 2, scope: !58, file: !7, line: 113, type: !14)
!65 = !DILocation(line: 113, column: 31, scope: !58)
!66 = !DILocalVariable(name: "what", arg: 3, scope: !58, file: !7, line: 113, type: !14)
!67 = !DILocation(line: 113, column: 53, scope: !58)
!68 = !DILocation(line: 115, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !7, line: 115, column: 7)
!70 = !DILocation(line: 115, column: 10, scope: !69)
!71 = !DILocation(line: 115, column: 7, scope: !58)
!72 = !DILocation(line: 116, column: 12, scope: !69)
!73 = !DILocation(line: 116, column: 63, scope: !69)
!74 = !DILocation(line: 116, column: 69, scope: !69)
!75 = !DILocation(line: 116, column: 5, scope: !76)
!76 = !DILexicalBlockFile(scope: !69, file: !7, discriminator: 1)
!77 = !DILocation(line: 116, column: 5, scope: !69)
!78 = !DILocation(line: 118, column: 13, scope: !69)
!79 = !DILocation(line: 118, column: 59, scope: !69)
!80 = !DILocation(line: 118, column: 65, scope: !69)
!81 = !DILocation(line: 118, column: 5, scope: !76)
!82 = !DILocation(line: 118, column: 5, scope: !69)
!83 = !DILocation(line: 119, column: 1, scope: !58)
!84 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 158, type: !85, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!85 = !DISubroutineType(types: !86)
!86 = !{!18, !18, !47}
!87 = !DILocalVariable(name: "argc", arg: 1, scope: !84, file: !7, line: 158, type: !18)
!88 = !DILocation(line: 158, column: 14, scope: !84)
!89 = !DILocalVariable(name: "argv", arg: 2, scope: !84, file: !7, line: 158, type: !47)
!90 = !DILocation(line: 158, column: 39, scope: !84)
!91 = !DILocalVariable(name: "ret", scope: !84, file: !7, line: 159, type: !18)
!92 = !DILocation(line: 159, column: 7, scope: !84)
!93 = !DILocation(line: 161, column: 3, scope: !84)
!94 = !DILocation(line: 162, column: 3, scope: !84)
!95 = !DILocation(line: 163, column: 3, scope: !84)
!96 = !DILocation(line: 165, column: 30, scope: !84)
!97 = !DILocation(line: 165, column: 14, scope: !84)
!98 = !DILocation(line: 165, column: 12, scope: !84)
!99 = !DILocation(line: 166, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !84, file: !7, line: 166, column: 7)
!101 = !DILocation(line: 166, column: 20, scope: !100)
!102 = !DILocation(line: 166, column: 7, scope: !84)
!103 = !DILocation(line: 167, column: 20, scope: !100)
!104 = !DILocation(line: 167, column: 18, scope: !100)
!105 = !DILocation(line: 167, column: 5, scope: !100)
!106 = !DILocation(line: 169, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !84, file: !7, line: 169, column: 7)
!108 = !DILocation(line: 169, column: 7, scope: !84)
!109 = !DILocation(line: 169, column: 28, scope: !110)
!110 = !DILexicalBlockFile(scope: !107, file: !7, discriminator: 1)
!111 = !DILocation(line: 169, column: 19, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !7, discriminator: 2)
!113 = !DILocation(line: 169, column: 19, scope: !110)
!114 = !DILocation(line: 171, column: 9, scope: !84)
!115 = !DILocation(line: 171, column: 20, scope: !84)
!116 = !DILocation(line: 171, column: 27, scope: !84)
!117 = !DILocation(line: 171, column: 7, scope: !84)
!118 = !DILocation(line: 173, column: 11, scope: !84)
!119 = !DILocation(line: 173, column: 19, scope: !84)
!120 = !DILocation(line: 173, column: 3, scope: !121)
!121 = !DILexicalBlockFile(scope: !84, file: !7, discriminator: 1)
!122 = !DILocation(line: 175, column: 3, scope: !84)
!123 = !DILocation(line: 177, column: 10, scope: !84)
!124 = !DILocation(line: 177, column: 3, scope: !84)
!125 = distinct !DISubprogram(name: "usage", scope: !7, file: !7, line: 60, type: !37, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!126 = !DILocalVariable(name: "cip", arg: 1, scope: !125, file: !7, line: 60, type: !39)
!127 = !DILocation(line: 60, column: 29, scope: !125)
!128 = !DILocalVariable(name: "value", arg: 2, scope: !125, file: !7, line: 60, type: !14)
!129 = !DILocation(line: 60, column: 46, scope: !125)
!130 = !DILocation(line: 62, column: 10, scope: !125)
!131 = !DILocation(line: 62, column: 3, scope: !132)
!132 = !DILexicalBlockFile(scope: !125, file: !7, discriminator: 1)
!133 = !DILocation(line: 66, column: 10, scope: !125)
!134 = !DILocation(line: 66, column: 3, scope: !132)
!135 = !DILocation(line: 76, column: 10, scope: !125)
!136 = !DILocation(line: 76, column: 3, scope: !132)
!137 = !DILocation(line: 81, column: 10, scope: !125)
!138 = !DILocation(line: 81, column: 3, scope: !132)
!139 = !DILocation(line: 91, column: 10, scope: !125)
!140 = !DILocation(line: 91, column: 3, scope: !132)
!141 = !DILocation(line: 98, column: 11, scope: !125)
!142 = !DILocation(line: 98, column: 19, scope: !125)
!143 = !DILocation(line: 98, column: 3, scope: !132)
!144 = !DILocation(line: 100, column: 3, scope: !125)
!145 = !DILocation(line: 101, column: 1, scope: !125)
!146 = distinct !DISubprogram(name: "printversion", scope: !7, file: !7, line: 45, type: !37, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!147 = !DILocalVariable(name: "cip", arg: 1, scope: !146, file: !7, line: 45, type: !39)
!148 = !DILocation(line: 45, column: 36, scope: !146)
!149 = !DILocalVariable(name: "value", arg: 2, scope: !146, file: !7, line: 45, type: !14)
!150 = !DILocation(line: 45, column: 53, scope: !146)
!151 = !DILocation(line: 47, column: 10, scope: !146)
!152 = !DILocation(line: 47, column: 3, scope: !153)
!153 = !DILexicalBlockFile(scope: !146, file: !7, discriminator: 1)
!154 = !DILocation(line: 50, column: 10, scope: !146)
!155 = !DILocation(line: 50, column: 3, scope: !153)
!156 = !DILocation(line: 54, column: 11, scope: !146)
!157 = !DILocation(line: 54, column: 19, scope: !146)
!158 = !DILocation(line: 54, column: 3, scope: !153)
!159 = !DILocation(line: 56, column: 3, scope: !146)
!160 = !DILocation(line: 57, column: 1, scope: !146)
!161 = distinct !DISubprogram(name: "set_part_size", scope: !7, file: !7, line: 122, type: !37, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!162 = !DILocalVariable(name: "cip", arg: 1, scope: !161, file: !7, line: 122, type: !39)
!163 = !DILocation(line: 122, column: 37, scope: !161)
!164 = !DILocalVariable(name: "value", arg: 2, scope: !161, file: !7, line: 122, type: !14)
!165 = !DILocation(line: 122, column: 54, scope: !161)
!166 = !DILocalVariable(name: "newpartsize", scope: !161, file: !7, line: 124, type: !8)
!167 = !DILocation(line: 124, column: 9, scope: !161)
!168 = !DILocalVariable(name: "endp", scope: !161, file: !7, line: 125, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!170 = !DILocation(line: 125, column: 9, scope: !161)
!171 = !DILocation(line: 127, column: 4, scope: !161)
!172 = !DILocation(line: 127, column: 8, scope: !161)
!173 = !DILocation(line: 128, column: 27, scope: !161)
!174 = !DILocation(line: 128, column: 17, scope: !161)
!175 = !DILocation(line: 128, column: 15, scope: !161)
!176 = !DILocation(line: 129, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !161, file: !7, line: 129, column: 7)
!178 = !DILocation(line: 129, column: 16, scope: !177)
!179 = !DILocation(line: 129, column: 13, scope: !177)
!180 = !DILocation(line: 129, column: 21, scope: !177)
!181 = !DILocation(line: 129, column: 25, scope: !182)
!182 = !DILexicalBlockFile(scope: !177, file: !7, discriminator: 1)
!183 = !DILocation(line: 129, column: 24, scope: !182)
!184 = !DILocation(line: 129, column: 7, scope: !182)
!185 = !DILocation(line: 130, column: 14, scope: !177)
!186 = !DILocation(line: 130, column: 61, scope: !177)
!187 = !DILocation(line: 130, column: 66, scope: !177)
!188 = !DILocation(line: 130, column: 73, scope: !177)
!189 = !DILocation(line: 130, column: 5, scope: !182)
!190 = !DILocation(line: 130, column: 5, scope: !177)
!191 = !DILocation(line: 131, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !161, file: !7, line: 131, column: 7)
!193 = !DILocation(line: 131, column: 19, scope: !192)
!194 = !DILocation(line: 131, column: 24, scope: !192)
!195 = !DILocation(line: 131, column: 27, scope: !196)
!196 = !DILexicalBlockFile(scope: !192, file: !7, discriminator: 1)
!197 = !DILocation(line: 131, column: 39, scope: !196)
!198 = !DILocation(line: 131, column: 60, scope: !196)
!199 = !DILocation(line: 131, column: 61, scope: !200)
!200 = !DILexicalBlockFile(scope: !192, file: !7, discriminator: 2)
!201 = !DILocation(line: 131, column: 60, scope: !200)
!202 = !DILocation(line: 131, column: 65, scope: !200)
!203 = !DILocation(line: 131, column: 7, scope: !200)
!204 = !DILocation(line: 132, column: 14, scope: !192)
!205 = !DILocation(line: 132, column: 5, scope: !196)
!206 = !DILocation(line: 132, column: 5, scope: !192)
!207 = !DILocation(line: 134, column: 21, scope: !161)
!208 = !DILocation(line: 134, column: 33, scope: !161)
!209 = !DILocation(line: 134, column: 19, scope: !161)
!210 = !DILocation(line: 135, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !161, file: !7, line: 135, column: 7)
!212 = !DILocation(line: 135, column: 23, scope: !211)
!213 = !DILocation(line: 135, column: 7, scope: !161)
!214 = !DILocation(line: 136, column: 14, scope: !211)
!215 = !DILocation(line: 136, column: 5, scope: !216)
!216 = !DILexicalBlockFile(scope: !211, file: !7, discriminator: 1)
!217 = !DILocation(line: 136, column: 5, scope: !211)
!218 = !DILocation(line: 138, column: 1, scope: !161)
