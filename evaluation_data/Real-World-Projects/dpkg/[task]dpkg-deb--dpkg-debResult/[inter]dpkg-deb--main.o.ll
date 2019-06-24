; ModuleID = './[inter]dpkg-deb--main.o.i'
source_filename = "./[inter]dpkg-deb--main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deb_version = type { i32, i32 }
%struct.compress_params = type { i32, i32, i32 }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c"${Package}\09${Version}\0A\00", align 1
@showformat = global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), align 8
@debugflag = global i32 0, align 4
@nocheckflag = global i32 0, align 4
@opt_verbose = global i32 0, align 4
@opt_root_owner_group = global i32 0, align 4
@opt_uniform_compression = global i32 1, align 4
@deb_format = global %struct.deb_version { i32 2, i32 0 }, align 4
@compress_params = global %struct.compress_params { i32 2, i32 0, i32 -1 }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dpkg-deb\00", align 1
@cmdinfos = internal constant [25 x %struct.cmdinfo] [%struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 98, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_build }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 99, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_contents }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 101, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_control }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8 73, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_info }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8 102, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_field }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8 120, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_extract }, %struct.cmdinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8 88, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_vextract }, %struct.cmdinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8 82, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_raw_extract }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_ctrltarfile }, %struct.cmdinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_fsystarfile }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8 87, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @setaction, i32 0, i8* null, i32 (i8**)* @do_showinfo }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_deb_format, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8 68, i32 0, i32* @debugflag, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8 118, i32 0, i32* @opt_verbose, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, i32* @nocheckflag, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8 0, i32 0, i32* @opt_root_owner_group, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, i32* @opt_uniform_compression, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 1, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8 0, i32 0, i32* @opt_uniform_compression, i8** null, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* null, i8 122, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_compress_level, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* null, i8 90, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_compress_type, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* null, i8 83, i32 1, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @set_compress_strategy, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 1, i32* null, i8** @showformat, void (%struct.cmdinfo*, i8*)* null, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8 63, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @usage, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, i32* null, i8** null, void (%struct.cmdinfo*, i8*)* @printversion, i32 0, i8* null, i32 (i8**)* null }, %struct.cmdinfo zeroinitializer], align 16
@printforhelp = internal constant [132 x i8] c"Type dpkg-deb --help for help about manipulating *.deb files;\0AType dpkg --help for help about installing and deinstalling packages.\00", align 16
@cipaction = external global %struct.cmdinfo*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"need an action option\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid compressor parameters: %s\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"unsupported compression type '%s' with uniform compression\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"build\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"vextract\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"raw-extract\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ctrl-tarfile\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"fsys-tarfile\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"deb-format\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"nocheck\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"root-owner-group\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"uniform-compression\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"no-uniform-compression\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"showformat\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"invalid deb format version: %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"unknown deb format version: %s\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"invalid compression level for -%c: %ld\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"unknown compression type '%s'!\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"obsolete compression type '%s'; use xz instead\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"obsolete compression type '%s'; use xz or gzip instead\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"unknown compression strategy '%s'!\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Usage: %s [<option> ...] <command>\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [686 x i8] c"Commands:\0A  -b|--build <directory> [<deb>]   Build an archive.\0A  -c|--contents <deb>              List contents.\0A  -I|--info <deb> [<cfile> ...]    Show info to stdout.\0A  -W|--show <deb>                  Show information on package(s)\0A  -f|--field <deb> [<cfield> ...]  Show field(s) to stdout.\0A  -e|--control <deb> [<directory>] Extract control info.\0A  -x|--extract <deb> <directory>   Extract files.\0A  -X|--vextract <deb> <directory>  Extract & list files.\0A  -R|--raw-extract <deb> <directory>\0A                                   Extract control info and files.\0A  --ctrl-tarfile <deb>             Output control tarfile.\0A  --fsys-tarfile <deb>             Output filesystem tarfile.\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [114 x i8] c"  -?, --help                       Show this help message.\0A      --version                    Show the version.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [169 x i8] c"<deb> is the filename of a Debian format archive.\0A<cfile> is the name of an administrative file component.\0A<cfield> is the name of a field in the main 'control' file.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [1058 x i8] c"Options:\0A  -v, --verbose                    Enable verbose output.\0A  -D, --debug                      Enable debugging output.\0A      --showformat=<format>        Use alternative format for --show.\0A      --deb-format=<format>        Select archive format.\0A                                     Allowed values: 0.939000, 2.0 (default).\0A      --nocheck                    Suppress control file check (build bad\0A                                     packages).\0A      --root-owner-group           Forces the owner and groups to root.\0A      --[no-]uniform-compression   Use the compression params on all members.\0A  -z#                              Set the compression level when building.\0A  -Z<type>                         Set the compression type used when building.\0A                                     Allowed types: gzip, xz, none.\0A  -S<strategy>                     Set the compression strategy when building.\0A                                     Allowed values: none; extreme (xz);\0A                                     filtered, huffman, rle, fixed (gzip).\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [421 x i8] c"Format syntax:\0A  A format is a string that will be output for each package. The format\0A  can include the standard escape sequences \5Cn (newline), \5Cr (carriage\0A  return) or \5C\5C (plain backslash). Package information can be included\0A  by inserting variable references to package fields using the ${var[;width]}\0A  syntax. Fields will be right-aligned unless the width is negative in which\0A  case left alignment will be used.\0A\00", align 1
@.str.40 = private unnamed_addr constant [200 x i8] c"\0AUse 'dpkg' to install and remove packages from your system, or\0A'apt' or 'aptitude' for user-friendly package management. Packages\0Aunpacked using 'dpkg-deb --extract' will be incorrectly installed !\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"Debian '%s' package archive backend version %s.\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"1.19.5-19-g1da50 (amd64)\00", align 1
@.str.44 = private unnamed_addr constant [124 x i8] c"This is free software; see the GNU General Public License version 2 or\0Alater for copying conditions. There is NO warranty.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !88 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dpkg_error, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !92, metadata !93), !dbg !94
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !95, metadata !93), !dbg !96
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %6, metadata !97, metadata !93), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %7, metadata !105, metadata !93), !dbg !106
  call void @dpkg_locales_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !107
  call void @dpkg_program_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)), !dbg !108
  call void @dpkg_options_parse(i8*** %5, %struct.cmdinfo* getelementptr inbounds ([25 x %struct.cmdinfo], [25 x %struct.cmdinfo]* @cmdinfos, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @printforhelp, i32 0, i32 0)), !dbg !109
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !110
  %9 = icmp ne %struct.cmdinfo* %8, null, !dbg !110
  br i1 %9, label %12, label %10, !dbg !112

; <label>:10:                                     ; preds = %2
  %11 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !113
  call void (i8*, ...) @badusage(i8* %11) #8, !dbg !115
  unreachable, !dbg !117

; <label>:12:                                     ; preds = %2
  %13 = call zeroext i1 @compressor_check_params(%struct.compress_params* @compress_params, %struct.dpkg_error* %6), !dbg !118
  br i1 %13, label %18, label %14, !dbg !120

; <label>:14:                                     ; preds = %12
  %15 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !121
  %16 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %6, i32 0, i32 2, !dbg !122
  %17 = load i8*, i8** %16, align 8, !dbg !122
  call void (i8*, ...) @badusage(i8* %15, i8* %17) #8, !dbg !123
  unreachable, !dbg !125

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* @opt_uniform_compression, align 4, !dbg !126
  %20 = icmp ne i32 %19, 0, !dbg !126
  br i1 %20, label %21, label %34, !dbg !128

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !129
  %23 = icmp ne i32 %22, 0, !dbg !130
  br i1 %23, label %24, label %34, !dbg !131

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !132
  %26 = icmp ne i32 %25, 1, !dbg !133
  br i1 %26, label %27, label %34, !dbg !134

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !135
  %29 = icmp ne i32 %28, 2, !dbg !136
  br i1 %29, label %30, label %34, !dbg !137

; <label>:30:                                     ; preds = %27
  %31 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !139
  %32 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !140
  %33 = call i8* @compressor_get_name(i32 %32), !dbg !141
  call void (i8*, ...) @badusage(i8* %31, i8* %33) #8, !dbg !142
  unreachable, !dbg !144

; <label>:34:                                     ; preds = %27, %24, %21, %18
  %35 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !145
  %36 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %35, i32 0, i32 8, !dbg !146
  %37 = load i32 (i8**)*, i32 (i8**)** %36, align 8, !dbg !146
  %38 = load i8**, i8*** %5, align 8, !dbg !147
  %39 = call i32 %37(i8** %38), !dbg !145
  store i32 %39, i32* %7, align 4, !dbg !148
  call void @dpkg_program_done(), !dbg !149
  %40 = load i32, i32* %7, align 4, !dbg !150
  ret i32 %40, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_locales_init(i8*) #2

declare void @dpkg_program_init(i8*) #2

declare void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare zeroext i1 @compressor_check_params(%struct.compress_params*, %struct.dpkg_error*) #2

declare i8* @compressor_get_name(i32) #2

declare void @dpkg_program_done() #2

declare void @setaction(%struct.cmdinfo*, i8*) #2

declare i32 @do_build(i8**) #2

declare i32 @do_contents(i8**) #2

declare i32 @do_control(i8**) #2

declare i32 @do_info(i8**) #2

declare i32 @do_field(i8**) #2

declare i32 @do_extract(i8**) #2

declare i32 @do_vextract(i8**) #2

declare i32 @do_raw_extract(i8**) #2

declare i32 @do_ctrltarfile(i8**) #2

declare i32 @do_fsystarfile(i8**) #2

declare i32 @do_showinfo(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @set_deb_format(%struct.cmdinfo*, i8*) #0 !dbg !152 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !153, metadata !93), !dbg !154
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !93), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %5, metadata !157, metadata !93), !dbg !158
  %6 = load i8*, i8** %4, align 8, !dbg !159
  %7 = call i8* @deb_version_parse(%struct.deb_version* @deb_format, i8* %6), !dbg !160
  store i8* %7, i8** %5, align 8, !dbg !161
  %8 = load i8*, i8** %5, align 8, !dbg !162
  %9 = icmp ne i8* %8, null, !dbg !162
  br i1 %9, label %10, label %13, !dbg !164

; <label>:10:                                     ; preds = %2
  %11 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !165
  %12 = load i8*, i8** %5, align 8, !dbg !166
  call void (i8*, ...) @badusage(i8* %11, i8* %12) #8, !dbg !167
  unreachable, !dbg !169

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !170
  %15 = icmp eq i32 %14, 2, !dbg !172
  br i1 %15, label %16, label %19, !dbg !173

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 1), align 4, !dbg !174
  %18 = icmp eq i32 %17, 0, !dbg !176
  br i1 %18, label %25, label %19, !dbg !177

; <label>:19:                                     ; preds = %16, %13
  %20 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 0), align 4, !dbg !178
  %21 = icmp eq i32 %20, 0, !dbg !179
  br i1 %21, label %22, label %26, !dbg !180

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.deb_version, %struct.deb_version* @deb_format, i32 0, i32 1), align 4, !dbg !181
  %24 = icmp eq i32 %23, 939000, !dbg !182
  br i1 %24, label %25, label %26, !dbg !183

; <label>:25:                                     ; preds = %22, %16
  ret void, !dbg !185

; <label>:26:                                     ; preds = %22, %19
  %27 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !186
  %28 = load i8*, i8** %4, align 8, !dbg !187
  call void (i8*, ...) @badusage(i8* %27, i8* %28) #8, !dbg !188
  unreachable, !dbg !189
}

; Function Attrs: nounwind uwtable
define internal void @set_compress_level(%struct.cmdinfo*, i8*) #0 !dbg !190 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !191, metadata !93), !dbg !192
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !93), !dbg !194
  call void @llvm.dbg.declare(metadata i64* %5, metadata !195, metadata !93), !dbg !197
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !198
  %7 = load i8*, i8** %4, align 8, !dbg !199
  %8 = call i64 @dpkg_options_parse_arg_int(%struct.cmdinfo* %6, i8* %7), !dbg !200
  store i64 %8, i64* %5, align 8, !dbg !201
  %9 = load i64, i64* %5, align 8, !dbg !202
  %10 = icmp slt i64 %9, 0, !dbg !204
  br i1 %10, label %14, label %11, !dbg !205

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !206
  %13 = icmp sgt i64 %12, 9, !dbg !208
  br i1 %13, label %14, label %21, !dbg !209

; <label>:14:                                     ; preds = %11, %2
  %15 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !210
  %16 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !211
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %16, i32 0, i32 1, !dbg !212
  %18 = load i8, i8* %17, align 8, !dbg !212
  %19 = sext i8 %18 to i32, !dbg !211
  %20 = load i64, i64* %5, align 8, !dbg !213
  call void (i8*, ...) @badusage(i8* %15, i32 %19, i64 %20) #8, !dbg !214
  unreachable, !dbg !215

; <label>:21:                                     ; preds = %11
  %22 = load i64, i64* %5, align 8, !dbg !216
  %23 = trunc i64 %22 to i32, !dbg !216
  store i32 %23, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 2), align 4, !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind uwtable
define internal void @set_compress_type(%struct.cmdinfo*, i8*) #0 !dbg !219 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !220, metadata !93), !dbg !221
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !222, metadata !93), !dbg !223
  %5 = load i8*, i8** %4, align 8, !dbg !224
  %6 = call i32 @compressor_find_by_name(i8* %5), !dbg !225
  store i32 %6, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !226
  %7 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !227
  %8 = icmp eq i32 %7, -1, !dbg !229
  br i1 %8, label %9, label %12, !dbg !230

; <label>:9:                                      ; preds = %2
  %10 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !231
  %11 = load i8*, i8** %4, align 8, !dbg !232
  call void (i8*, ...) @badusage(i8* %10, i8* %11) #8, !dbg !233
  unreachable, !dbg !235

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !236
  %14 = icmp eq i32 %13, 4, !dbg !238
  br i1 %14, label %15, label %18, !dbg !239

; <label>:15:                                     ; preds = %12
  %16 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !240
  %17 = load i8*, i8** %4, align 8, !dbg !241
  call void (i8*, ...) @badusage(i8* %16, i8* %17) #8, !dbg !242
  unreachable, !dbg !244

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 0), align 4, !dbg !245
  %20 = icmp eq i32 %19, 3, !dbg !247
  br i1 %20, label %21, label %24, !dbg !248

; <label>:21:                                     ; preds = %18
  %22 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !249
  %23 = load i8*, i8** %4, align 8, !dbg !250
  call void (i8*, ...) @badusage(i8* %22, i8* %23) #8, !dbg !251
  unreachable, !dbg !253

; <label>:24:                                     ; preds = %18
  ret void, !dbg !254
}

; Function Attrs: nounwind uwtable
define internal void @set_compress_strategy(%struct.cmdinfo*, i8*) #0 !dbg !255 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !256, metadata !93), !dbg !257
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !258, metadata !93), !dbg !259
  %5 = load i8*, i8** %4, align 8, !dbg !260
  %6 = call i32 @compressor_get_strategy(i8* %5), !dbg !261
  store i32 %6, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 1), align 4, !dbg !262
  %7 = load i32, i32* getelementptr inbounds (%struct.compress_params, %struct.compress_params* @compress_params, i32 0, i32 1), align 4, !dbg !263
  %8 = icmp eq i32 %7, -1, !dbg !265
  br i1 %8, label %9, label %12, !dbg !266

; <label>:9:                                      ; preds = %2
  %10 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !267
  %11 = load i8*, i8** %4, align 8, !dbg !268
  call void (i8*, ...) @badusage(i8* %10, i8* %11) #8, !dbg !269
  unreachable, !dbg !271

; <label>:12:                                     ; preds = %2
  ret void, !dbg !272
}

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(%struct.cmdinfo*, i8*) #5 !dbg !273 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !274, metadata !93), !dbg !275
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !276, metadata !93), !dbg !277
  %5 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !278
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)), !dbg !279
  %7 = call i8* @gettext(i8* getelementptr inbounds ([686 x i8], [686 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !281
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !282
  %9 = call i8* @gettext(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !283
  %10 = call i32 (i8*, ...) @printf(i8* %9), !dbg !284
  %11 = call i8* @gettext(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !285
  %12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !286
  %13 = call i8* @gettext(i8* getelementptr inbounds ([1058 x i8], [1058 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !287
  %14 = call i32 (i8*, ...) @printf(i8* %13), !dbg !288
  %15 = call i8* @gettext(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !289
  %16 = call i32 (i8*, ...) @printf(i8* %15), !dbg !290
  %17 = call i8* @gettext(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !291
  %18 = call i32 (i8*, ...) @printf(i8* %17), !dbg !292
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !293
  %20 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !294
  call void @m_output(%struct._IO_FILE* %19, i8* %20), !dbg !295
  call void @exit(i32 0) #9, !dbg !296
  unreachable, !dbg !296
                                                  ; No predecessors!
  ret void, !dbg !297
}

; Function Attrs: noreturn nounwind uwtable
define internal void @printversion(%struct.cmdinfo*, i8*) #5 !dbg !298 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !299, metadata !93), !dbg !300
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !301, metadata !93), !dbg !302
  %5 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !303
  %6 = call i32 (i8*, ...) @printf(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0)), !dbg !304
  %7 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !306
  %8 = call i32 (i8*, ...) @printf(i8* %7), !dbg !307
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !308
  %10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !309
  call void @m_output(%struct._IO_FILE* %9, i8* %10), !dbg !310
  call void @exit(i32 0) #9, !dbg !311
  unreachable, !dbg !311
                                                  ; No predecessors!
  ret void, !dbg !312
}

declare i8* @deb_version_parse(%struct.deb_version*, i8*) #2

declare i64 @dpkg_options_parse_arg_int(%struct.cmdinfo*, i8*) #2

declare i32 @compressor_find_by_name(i8*) #2

declare i32 @compressor_get_strategy(i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @m_output(%struct._IO_FILE*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86}
!llvm.ident = !{!87}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !27)
!1 = !DIFile(filename: "[inter]dpkg-deb--main.o.i", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!2 = !{!3, !12, !21}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_type", file: !4, line: 38, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/compress.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "COMPRESSOR_TYPE_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "COMPRESSOR_TYPE_NONE", value: 0)
!8 = !DIEnumerator(name: "COMPRESSOR_TYPE_GZIP", value: 1)
!9 = !DIEnumerator(name: "COMPRESSOR_TYPE_XZ", value: 2)
!10 = !DIEnumerator(name: "COMPRESSOR_TYPE_BZIP2", value: 3)
!11 = !DIEnumerator(name: "COMPRESSOR_TYPE_LZMA", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_strategy", file: !4, line: 47, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_UNKNOWN", value: -1)
!15 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_NONE", value: 0)
!16 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FILTERED", value: 1)
!17 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_HUFFMAN", value: 2)
!18 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_RLE", value: 3)
!19 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FIXED", value: 4)
!20 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_EXTREME", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !22, line: 36, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!25 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!26 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!27 = !{!28, !33, !35, !36, !37, !38, !39, !45, !51, !81}
!28 = distinct !DIGlobalVariable(name: "showformat", scope: !0, file: !29, line: 48, type: !30, isLocal: false, isDefinition: true, variable: i8** @showformat)
!29 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = distinct !DIGlobalVariable(name: "debugflag", scope: !0, file: !29, line: 141, type: !34, isLocal: false, isDefinition: true, variable: i32* @debugflag)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = distinct !DIGlobalVariable(name: "nocheckflag", scope: !0, file: !29, line: 142, type: !34, isLocal: false, isDefinition: true, variable: i32* @nocheckflag)
!36 = distinct !DIGlobalVariable(name: "opt_verbose", scope: !0, file: !29, line: 143, type: !34, isLocal: false, isDefinition: true, variable: i32* @opt_verbose)
!37 = distinct !DIGlobalVariable(name: "opt_root_owner_group", scope: !0, file: !29, line: 144, type: !34, isLocal: false, isDefinition: true, variable: i32* @opt_root_owner_group)
!38 = distinct !DIGlobalVariable(name: "opt_uniform_compression", scope: !0, file: !29, line: 145, type: !34, isLocal: false, isDefinition: true, variable: i32* @opt_uniform_compression)
!39 = distinct !DIGlobalVariable(name: "deb_format", scope: !0, file: !29, line: 147, type: !40, isLocal: false, isDefinition: true, variable: %struct.deb_version* @deb_format)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !41, line: 37, size: 64, align: 32, elements: !42)
!41 = !DIFile(filename: "../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !40, file: !41, line: 38, baseType: !34, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !40, file: !41, line: 39, baseType: !34, size: 32, align: 32, offset: 32)
!45 = distinct !DIGlobalVariable(name: "compress_params", scope: !0, file: !29, line: 165, type: !46, isLocal: false, isDefinition: true, variable: %struct.compress_params* @compress_params)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_params", file: !4, line: 57, size: 96, align: 32, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !4, line: 58, baseType: !3, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !46, file: !4, line: 59, baseType: !12, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !46, file: !4, line: 60, baseType: !34, size: 32, align: 32, offset: 64)
!51 = distinct !DIGlobalVariable(name: "cmdinfos", scope: !0, file: !29, line: 203, type: !52, isLocal: true, isDefinition: true, variable: [25 x %struct.cmdinfo]* @cmdinfos)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 12800, align: 64, elements: !79)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !55, line: 38, size: 512, align: 64, elements: !56)
!55 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]dpkg-deb--dpkg-deb")
!56 = !{!57, !58, !59, !60, !62, !64, !69, !70, !72}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !54, file: !55, line: 39, baseType: !30, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !54, file: !55, line: 40, baseType: !32, size: 8, align: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !54, file: !55, line: 48, baseType: !34, size: 32, align: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !54, file: !55, line: 49, baseType: !61, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !54, file: !55, line: 50, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !54, file: !55, line: 51, baseType: !65, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !30}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !54, file: !55, line: 53, baseType: !34, size: 32, align: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !54, file: !55, line: 54, baseType: !71, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !54, file: !55, line: 56, baseType: !73, size: 64, align: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !55, line: 36, baseType: !75)
!75 = !DISubroutineType(types: !76)
!76 = !{!34, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!79 = !{!80}
!80 = !DISubrange(count: 25)
!81 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !29, line: 137, type: !82, isLocal: true, isDefinition: true, variable: [132 x i8]* @printforhelp)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1056, align: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 132)
!85 = !{i32 2, !"Dwarf Version", i32 4}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!88 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 232, type: !89, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!34, !34, !77}
!91 = !{}
!92 = !DILocalVariable(name: "argc", arg: 1, scope: !88, file: !29, line: 232, type: !34)
!93 = !DIExpression()
!94 = !DILocation(line: 232, column: 14, scope: !88)
!95 = !DILocalVariable(name: "argv", arg: 2, scope: !88, file: !29, line: 232, type: !77)
!96 = !DILocation(line: 232, column: 39, scope: !88)
!97 = !DILocalVariable(name: "err", scope: !88, file: !29, line: 233, type: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !22, line: 42, size: 128, align: 64, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !22, line: 43, baseType: !21, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !98, file: !22, line: 45, baseType: !34, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !98, file: !22, line: 46, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!104 = !DILocation(line: 233, column: 21, scope: !88)
!105 = !DILocalVariable(name: "ret", scope: !88, file: !29, line: 234, type: !34)
!106 = !DILocation(line: 234, column: 7, scope: !88)
!107 = !DILocation(line: 236, column: 3, scope: !88)
!108 = !DILocation(line: 237, column: 3, scope: !88)
!109 = !DILocation(line: 238, column: 3, scope: !88)
!110 = !DILocation(line: 240, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !88, file: !29, line: 240, column: 7)
!112 = !DILocation(line: 240, column: 7, scope: !88)
!113 = !DILocation(line: 240, column: 28, scope: !114)
!114 = !DILexicalBlockFile(scope: !111, file: !29, discriminator: 1)
!115 = !DILocation(line: 240, column: 19, scope: !116)
!116 = !DILexicalBlockFile(scope: !114, file: !29, discriminator: 2)
!117 = !DILocation(line: 240, column: 19, scope: !114)
!118 = !DILocation(line: 242, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !88, file: !29, line: 242, column: 7)
!120 = !DILocation(line: 242, column: 7, scope: !88)
!121 = !DILocation(line: 243, column: 14, scope: !119)
!122 = !DILocation(line: 243, column: 64, scope: !119)
!123 = !DILocation(line: 243, column: 5, scope: !124)
!124 = !DILexicalBlockFile(scope: !119, file: !29, discriminator: 1)
!125 = !DILocation(line: 243, column: 5, scope: !119)
!126 = !DILocation(line: 245, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !29, line: 245, column: 7)
!128 = !DILocation(line: 245, column: 31, scope: !127)
!129 = !DILocation(line: 246, column: 24, scope: !127)
!130 = !DILocation(line: 246, column: 29, scope: !127)
!131 = !DILocation(line: 246, column: 53, scope: !127)
!132 = !DILocation(line: 247, column: 24, scope: !127)
!133 = !DILocation(line: 247, column: 29, scope: !127)
!134 = !DILocation(line: 247, column: 53, scope: !127)
!135 = !DILocation(line: 248, column: 24, scope: !127)
!136 = !DILocation(line: 248, column: 29, scope: !127)
!137 = !DILocation(line: 245, column: 7, scope: !138)
!138 = !DILexicalBlockFile(scope: !88, file: !29, discriminator: 1)
!139 = !DILocation(line: 249, column: 14, scope: !127)
!140 = !DILocation(line: 250, column: 50, scope: !127)
!141 = !DILocation(line: 250, column: 14, scope: !127)
!142 = !DILocation(line: 249, column: 5, scope: !143)
!143 = !DILexicalBlockFile(scope: !127, file: !29, discriminator: 1)
!144 = !DILocation(line: 249, column: 5, scope: !127)
!145 = !DILocation(line: 252, column: 9, scope: !88)
!146 = !DILocation(line: 252, column: 20, scope: !88)
!147 = !DILocation(line: 252, column: 27, scope: !88)
!148 = !DILocation(line: 252, column: 7, scope: !88)
!149 = !DILocation(line: 254, column: 3, scope: !88)
!150 = !DILocation(line: 256, column: 10, scope: !88)
!151 = !DILocation(line: 256, column: 3, scope: !88)
!152 = distinct !DISubprogram(name: "set_deb_format", scope: !29, file: !29, line: 150, type: !66, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!153 = !DILocalVariable(name: "cip", arg: 1, scope: !152, file: !29, line: 150, type: !68)
!154 = !DILocation(line: 150, column: 38, scope: !152)
!155 = !DILocalVariable(name: "value", arg: 2, scope: !152, file: !29, line: 150, type: !30)
!156 = !DILocation(line: 150, column: 55, scope: !152)
!157 = !DILocalVariable(name: "err", scope: !152, file: !29, line: 152, type: !30)
!158 = !DILocation(line: 152, column: 15, scope: !152)
!159 = !DILocation(line: 154, column: 40, scope: !152)
!160 = !DILocation(line: 154, column: 9, scope: !152)
!161 = !DILocation(line: 154, column: 7, scope: !152)
!162 = !DILocation(line: 155, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !29, line: 155, column: 7)
!164 = !DILocation(line: 155, column: 7, scope: !152)
!165 = !DILocation(line: 156, column: 14, scope: !163)
!166 = !DILocation(line: 156, column: 57, scope: !163)
!167 = !DILocation(line: 156, column: 5, scope: !168)
!168 = !DILexicalBlockFile(scope: !163, file: !29, discriminator: 1)
!169 = !DILocation(line: 156, column: 5, scope: !163)
!170 = !DILocation(line: 158, column: 19, scope: !171)
!171 = distinct !DILexicalBlock(scope: !152, file: !29, line: 158, column: 7)
!172 = !DILocation(line: 158, column: 25, scope: !171)
!173 = !DILocation(line: 158, column: 30, scope: !171)
!174 = !DILocation(line: 158, column: 44, scope: !175)
!175 = !DILexicalBlockFile(scope: !171, file: !29, discriminator: 1)
!176 = !DILocation(line: 158, column: 50, scope: !175)
!177 = !DILocation(line: 158, column: 56, scope: !175)
!178 = !DILocation(line: 159, column: 19, scope: !171)
!179 = !DILocation(line: 159, column: 25, scope: !171)
!180 = !DILocation(line: 159, column: 30, scope: !171)
!181 = !DILocation(line: 159, column: 44, scope: !175)
!182 = !DILocation(line: 159, column: 50, scope: !175)
!183 = !DILocation(line: 158, column: 7, scope: !184)
!184 = !DILexicalBlockFile(scope: !152, file: !29, discriminator: 2)
!185 = !DILocation(line: 160, column: 5, scope: !171)
!186 = !DILocation(line: 162, column: 14, scope: !171)
!187 = !DILocation(line: 162, column: 57, scope: !171)
!188 = !DILocation(line: 162, column: 5, scope: !175)
!189 = !DILocation(line: 162, column: 5, scope: !171)
!190 = distinct !DISubprogram(name: "set_compress_level", scope: !29, file: !29, line: 172, type: !66, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!191 = !DILocalVariable(name: "cip", arg: 1, scope: !190, file: !29, line: 172, type: !68)
!192 = !DILocation(line: 172, column: 42, scope: !190)
!193 = !DILocalVariable(name: "value", arg: 2, scope: !190, file: !29, line: 172, type: !30)
!194 = !DILocation(line: 172, column: 59, scope: !190)
!195 = !DILocalVariable(name: "level", scope: !190, file: !29, line: 174, type: !196)
!196 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!197 = !DILocation(line: 174, column: 8, scope: !190)
!198 = !DILocation(line: 176, column: 38, scope: !190)
!199 = !DILocation(line: 176, column: 43, scope: !190)
!200 = !DILocation(line: 176, column: 11, scope: !190)
!201 = !DILocation(line: 176, column: 9, scope: !190)
!202 = !DILocation(line: 177, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !190, file: !29, line: 177, column: 7)
!204 = !DILocation(line: 177, column: 13, scope: !203)
!205 = !DILocation(line: 177, column: 17, scope: !203)
!206 = !DILocation(line: 177, column: 20, scope: !207)
!207 = !DILexicalBlockFile(scope: !203, file: !29, discriminator: 1)
!208 = !DILocation(line: 177, column: 26, scope: !207)
!209 = !DILocation(line: 177, column: 7, scope: !207)
!210 = !DILocation(line: 178, column: 14, scope: !203)
!211 = !DILocation(line: 178, column: 65, scope: !203)
!212 = !DILocation(line: 178, column: 70, scope: !203)
!213 = !DILocation(line: 178, column: 78, scope: !203)
!214 = !DILocation(line: 178, column: 5, scope: !207)
!215 = !DILocation(line: 178, column: 5, scope: !203)
!216 = !DILocation(line: 180, column: 27, scope: !190)
!217 = !DILocation(line: 180, column: 25, scope: !190)
!218 = !DILocation(line: 181, column: 1, scope: !190)
!219 = distinct !DISubprogram(name: "set_compress_type", scope: !29, file: !29, line: 192, type: !66, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!220 = !DILocalVariable(name: "cip", arg: 1, scope: !219, file: !29, line: 192, type: !68)
!221 = !DILocation(line: 192, column: 41, scope: !219)
!222 = !DILocalVariable(name: "value", arg: 2, scope: !219, file: !29, line: 192, type: !30)
!223 = !DILocation(line: 192, column: 58, scope: !219)
!224 = !DILocation(line: 194, column: 50, scope: !219)
!225 = !DILocation(line: 194, column: 26, scope: !219)
!226 = !DILocation(line: 194, column: 24, scope: !219)
!227 = !DILocation(line: 195, column: 23, scope: !228)
!228 = distinct !DILexicalBlock(scope: !219, file: !29, line: 195, column: 7)
!229 = !DILocation(line: 195, column: 28, scope: !228)
!230 = !DILocation(line: 195, column: 7, scope: !219)
!231 = !DILocation(line: 196, column: 14, scope: !228)
!232 = !DILocation(line: 196, column: 57, scope: !228)
!233 = !DILocation(line: 196, column: 5, scope: !234)
!234 = !DILexicalBlockFile(scope: !228, file: !29, discriminator: 1)
!235 = !DILocation(line: 196, column: 5, scope: !228)
!236 = !DILocation(line: 197, column: 23, scope: !237)
!237 = distinct !DILexicalBlock(scope: !219, file: !29, line: 197, column: 7)
!238 = !DILocation(line: 197, column: 28, scope: !237)
!239 = !DILocation(line: 197, column: 7, scope: !219)
!240 = !DILocation(line: 198, column: 14, scope: !237)
!241 = !DILocation(line: 198, column: 73, scope: !237)
!242 = !DILocation(line: 198, column: 5, scope: !243)
!243 = !DILexicalBlockFile(scope: !237, file: !29, discriminator: 1)
!244 = !DILocation(line: 198, column: 5, scope: !237)
!245 = !DILocation(line: 199, column: 23, scope: !246)
!246 = distinct !DILexicalBlock(scope: !219, file: !29, line: 199, column: 7)
!247 = !DILocation(line: 199, column: 28, scope: !246)
!248 = !DILocation(line: 199, column: 7, scope: !219)
!249 = !DILocation(line: 200, column: 14, scope: !246)
!250 = !DILocation(line: 200, column: 81, scope: !246)
!251 = !DILocation(line: 200, column: 5, scope: !252)
!252 = !DILexicalBlockFile(scope: !246, file: !29, discriminator: 1)
!253 = !DILocation(line: 200, column: 5, scope: !246)
!254 = !DILocation(line: 201, column: 1, scope: !219)
!255 = distinct !DISubprogram(name: "set_compress_strategy", scope: !29, file: !29, line: 184, type: !66, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!256 = !DILocalVariable(name: "cip", arg: 1, scope: !255, file: !29, line: 184, type: !68)
!257 = !DILocation(line: 184, column: 45, scope: !255)
!258 = !DILocalVariable(name: "value", arg: 2, scope: !255, file: !29, line: 184, type: !30)
!259 = !DILocation(line: 184, column: 62, scope: !255)
!260 = !DILocation(line: 186, column: 54, scope: !255)
!261 = !DILocation(line: 186, column: 30, scope: !255)
!262 = !DILocation(line: 186, column: 28, scope: !255)
!263 = !DILocation(line: 187, column: 23, scope: !264)
!264 = distinct !DILexicalBlock(scope: !255, file: !29, line: 187, column: 7)
!265 = !DILocation(line: 187, column: 32, scope: !264)
!266 = !DILocation(line: 187, column: 7, scope: !255)
!267 = !DILocation(line: 188, column: 14, scope: !264)
!268 = !DILocation(line: 188, column: 61, scope: !264)
!269 = !DILocation(line: 188, column: 5, scope: !270)
!270 = !DILexicalBlockFile(scope: !264, file: !29, discriminator: 1)
!271 = !DILocation(line: 188, column: 5, scope: !264)
!272 = !DILocation(line: 189, column: 1, scope: !255)
!273 = distinct !DISubprogram(name: "usage", scope: !29, file: !29, line: 65, type: !66, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!274 = !DILocalVariable(name: "cip", arg: 1, scope: !273, file: !29, line: 65, type: !68)
!275 = !DILocation(line: 65, column: 29, scope: !273)
!276 = !DILocalVariable(name: "value", arg: 2, scope: !273, file: !29, line: 65, type: !30)
!277 = !DILocation(line: 65, column: 46, scope: !273)
!278 = !DILocation(line: 67, column: 10, scope: !273)
!279 = !DILocation(line: 67, column: 3, scope: !280)
!280 = !DILexicalBlockFile(scope: !273, file: !29, discriminator: 1)
!281 = !DILocation(line: 71, column: 10, scope: !273)
!282 = !DILocation(line: 71, column: 3, scope: !280)
!283 = !DILocation(line: 87, column: 10, scope: !273)
!284 = !DILocation(line: 87, column: 3, scope: !280)
!285 = !DILocation(line: 92, column: 10, scope: !273)
!286 = !DILocation(line: 92, column: 3, scope: !280)
!287 = !DILocation(line: 98, column: 10, scope: !273)
!288 = !DILocation(line: 98, column: 3, scope: !280)
!289 = !DILocation(line: 117, column: 10, scope: !273)
!290 = !DILocation(line: 117, column: 3, scope: !280)
!291 = !DILocation(line: 126, column: 10, scope: !273)
!292 = !DILocation(line: 126, column: 3, scope: !280)
!293 = !DILocation(line: 132, column: 11, scope: !273)
!294 = !DILocation(line: 132, column: 19, scope: !273)
!295 = !DILocation(line: 132, column: 3, scope: !280)
!296 = !DILocation(line: 134, column: 3, scope: !273)
!297 = !DILocation(line: 135, column: 1, scope: !273)
!298 = distinct !DISubprogram(name: "printversion", scope: !29, file: !29, line: 51, type: !66, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!299 = !DILocalVariable(name: "cip", arg: 1, scope: !298, file: !29, line: 51, type: !68)
!300 = !DILocation(line: 51, column: 36, scope: !298)
!301 = !DILocalVariable(name: "value", arg: 2, scope: !298, file: !29, line: 51, type: !30)
!302 = !DILocation(line: 51, column: 53, scope: !298)
!303 = !DILocation(line: 53, column: 10, scope: !298)
!304 = !DILocation(line: 53, column: 3, scope: !305)
!305 = !DILexicalBlockFile(scope: !298, file: !29, discriminator: 1)
!306 = !DILocation(line: 55, column: 10, scope: !298)
!307 = !DILocation(line: 55, column: 3, scope: !305)
!308 = !DILocation(line: 59, column: 11, scope: !298)
!309 = !DILocation(line: 59, column: 19, scope: !298)
!310 = !DILocation(line: 59, column: 3, scope: !305)
!311 = !DILocation(line: 61, column: 3, scope: !298)
!312 = !DILocation(line: 62, column: 1, scope: !298)
