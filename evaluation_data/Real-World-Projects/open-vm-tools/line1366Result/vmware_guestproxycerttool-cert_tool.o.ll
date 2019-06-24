; ModuleID = './vmware_guestproxycerttool-cert_tool.o.i'
source_filename = "./vmware_guestproxycerttool-cert_tool.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._options = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GOptionContext = type opaque
%struct._GMappedFile = type opaque

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@gIsLogEnabled = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [77 x i8] c"%s: Please re-run this program as the super user to execute this operation.\0A\00", align 1
@options = internal global %struct._options zeroinitializer, align 8
@cmdOptions = internal global [9 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 104, i32 0, i32 0, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 32), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 118, i32 0, i32 0, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 36), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8 101, i32 0, i32 0, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 44), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8 102, i32 0, i32 0, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 40), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8 103, i32 0, i32 0, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 28), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8 97, i32 0, i32 4, i8* bitcast (%struct._options* @options to i8*), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8 114, i32 0, i32 4, i8* getelementptr (i8, i8* bitcast (%struct._options* @options to i8*), i64 8), i8* null, i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8 100, i32 32, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @ParseDisplayCert to i8*), i8* null, i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"Option parsing failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"erase_proxy_data\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"generate_key_cert\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"add_trust_cert\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"remove_trust_cert\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"display_server_cert\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Guest Proxy Certificate Management Tool.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION] [ARGUMENTS]\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [1037 x i8] c"Options\0A  -h, --help                Prints the usage information.\0A\0A  -v, --verbose             Prints additional log messages.\0A\0A  -f, --force               Forces to regenerate the new server key/cert\0A                            when used with -g.\0A\0A  -g, --generate_key_cert   Generates the server key/cert if they don't\0A                            exist. Use with -f to force the regeneration.\0A\0A  -a, --add_trust_cert      <client_cert_pem_file>\0A                            Adds the client cert to the trusted\0A                            certificates directory.\0A\0A  -r, --remove_trust_cert   <client_cert_pem_file>\0A                            Removes the client cert from the trusted\0A                            certificates directory.\0A\0A  -d, --display_server_cert [<cert_pem_file>]\0A                            Prints the server's certificate to the\0A                            standard output. If the file path is\0A                            specified, then the server's certificate\0A                            is stored in the file.\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"GuestProxyData\00", align 1
@guestProxyDir = internal global i8* null, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@guestProxyServerDir = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"trusted\00", align 1
@guestProxyTrustedDir = internal global i8* null, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"guestproxy-ssl.conf\00", align 1
@guestProxySslConf = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"key.pem\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"cert.pem\00", align 1
@.str.19 = private unnamed_addr constant [145 x i8] c"\0ANOTE: both %s and \0A      %s already exist.\0A      They are not generated again. To regenerate them by force,\0A      use the \22%s -g -f\22 command.\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Generating the key and certificate files.\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Successfully generated the key and certificate files.\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%s: Current user has insufficient privileges.\0A\00", align 1
@initialized = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [55 x i8] c"%s: Couldn't find the GuestProxy Config file at '%s'.\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"%s: Couldn't create the directory '%s'.\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"%s: Couldn't find the server certificate file: %s.\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Copying the server certificate to %s.\0A\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"%s: Failed to copy the certificate file to the file.\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Successfully copied the server certificate.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [31 x i8] c"%s: Failed to display %s: %s.\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"%s: Couldn't open the server certificate file.\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"%s: No certificate file found at %s.\0A\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"%s: The specified certificate file already exists: %s.%d.\0A\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"%s: Unable to add %s to the trusted certificate store.\0A\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"Successfully added the %s to the trusted certificate store.\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"%s: Couldn't find any certificate in the trusted directory.\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"%s: Failed to rename %s to %s with error: %s.\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"%s: Failed to remove %s with error: %s.\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Successfully removed the certificate.\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"%s: Fail to remove the directory '%s'.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CheckRootPriv() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = call i32 @geteuid() #7, !dbg !82
  %3 = icmp ne i32 %2, 0, !dbg !84
  br i1 %3, label %4, label %8, !dbg !85

; <label>:4:                                      ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !86
  %6 = call i8* @g_get_prgname(), !dbg !88
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i32 0, i32 0), i8* %6), !dbg !89
  store i32 0, i32* %1, align 4, !dbg !91
  br label %9, !dbg !91

; <label>:8:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !92
  br label %9, !dbg !92

; <label>:9:                                      ; preds = %8, %4
  %10 = load i32, i32* %1, align 4, !dbg !93
  ret i32 %10, !dbg !93
}

; Function Attrs: nounwind
declare i32 @geteuid() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @g_get_prgname() #2

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !94 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !99, metadata !100), !dbg !101
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !102, metadata !100), !dbg !103
  call void @ParseOptions(i32* %4, i8*** %5), !dbg !104
  %6 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 5), align 8, !dbg !105
  %7 = icmp ne i32 %6, 0, !dbg !107
  br i1 %7, label %8, label %10, !dbg !108

; <label>:8:                                      ; preds = %2
  %9 = call i8* @g_get_prgname(), !dbg !109
  call void @PrintUsage(i8* %9), !dbg !111
  call void @exit(i32 0) #8, !dbg !113
  unreachable, !dbg !113

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 6), align 4, !dbg !114
  %12 = icmp ne i32 %11, 0, !dbg !116
  br i1 %12, label %13, label %14, !dbg !117

; <label>:13:                                     ; preds = %10
  store i32 1, i32* @gIsLogEnabled, align 4, !dbg !118
  br label %14, !dbg !120

; <label>:14:                                     ; preds = %13, %10
  %15 = call i8* @CertUtil_GetToolDir(), !dbg !121
  call void @InitProxyPaths(i8* %15), !dbg !122
  %16 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 4), align 4, !dbg !124
  %17 = icmp ne i32 %16, 0, !dbg !126
  br i1 %17, label %18, label %22, !dbg !127

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 7), align 8, !dbg !128
  %20 = call i32 @CreateKeyCert(i32 %19), !dbg !130
  %21 = icmp ne i32 %20, 0, !dbg !130
  br i1 %21, label %22, label %49, !dbg !131

; <label>:22:                                     ; preds = %18, %14
  %23 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 3), align 8, !dbg !132
  %24 = icmp ne i32 %23, 0, !dbg !133
  br i1 %24, label %25, label %29, !dbg !134

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 2), align 8, !dbg !135
  %27 = call i32 @DisplayServerCert(i8* %26), !dbg !136
  %28 = icmp ne i32 %27, 0, !dbg !136
  br i1 %28, label %29, label %49, !dbg !137

; <label>:29:                                     ; preds = %25, %22
  %30 = load i8*, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 0), align 8, !dbg !138
  %31 = icmp ne i8* %30, null, !dbg !139
  br i1 %31, label %32, label %36, !dbg !140

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 0), align 8, !dbg !141
  %34 = call i32 @AddTrustCert(i8* %33), !dbg !142
  %35 = icmp ne i32 %34, 0, !dbg !142
  br i1 %35, label %36, label %49, !dbg !143

; <label>:36:                                     ; preds = %32, %29
  %37 = load i8*, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 1), align 8, !dbg !144
  %38 = icmp ne i8* %37, null, !dbg !145
  br i1 %38, label %39, label %43, !dbg !146

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 1), align 8, !dbg !147
  %41 = call i32 @RemoveTrustCert(i8* %40), !dbg !148
  %42 = icmp ne i32 %41, 0, !dbg !148
  br i1 %42, label %43, label %49, !dbg !149

; <label>:43:                                     ; preds = %39, %36
  %44 = load i32, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 8), align 4, !dbg !150
  %45 = icmp ne i32 %44, 0, !dbg !151
  br i1 %45, label %46, label %50, !dbg !152

; <label>:46:                                     ; preds = %43
  %47 = call i32 @EraseProxyData(), !dbg !153
  %48 = icmp ne i32 %47, 0, !dbg !153
  br i1 %48, label %50, label %49, !dbg !154

; <label>:49:                                     ; preds = %46, %39, %32, %25, %18
  store i32 1, i32* %3, align 4, !dbg !156
  br label %51, !dbg !156

; <label>:50:                                     ; preds = %46, %43
  store i32 0, i32* %3, align 4, !dbg !158
  br label %51, !dbg !158

; <label>:51:                                     ; preds = %50, %49
  %52 = load i32, i32* %3, align 4, !dbg !160
  ret i32 %52, !dbg !160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nounwind uwtable
define internal void @ParseOptions(i32*, i8***) #0 !dbg !161 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca %struct._GError*, align 8
  %6 = alloca %struct._GOptionContext*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !166, metadata !100), !dbg !167
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !168, metadata !100), !dbg !169
  call void @llvm.dbg.declare(metadata %struct._GError** %5, metadata !170, metadata !100), !dbg !184
  store %struct._GError* null, %struct._GError** %5, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %6, metadata !185, metadata !100), !dbg !189
  %7 = call %struct._GOptionContext* @g_option_context_new(i8* null), !dbg !190
  store %struct._GOptionContext* %7, %struct._GOptionContext** %6, align 8, !dbg !191
  %8 = load %struct._GOptionContext*, %struct._GOptionContext** %6, align 8, !dbg !192
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %8, %struct._GOptionEntry* getelementptr inbounds ([9 x %struct._GOptionEntry], [9 x %struct._GOptionEntry]* @cmdOptions, i32 0, i32 0), i8* null), !dbg !193
  %9 = load %struct._GOptionContext*, %struct._GOptionContext** %6, align 8, !dbg !194
  call void @g_option_context_set_help_enabled(%struct._GOptionContext* %9, i32 0), !dbg !195
  %10 = load %struct._GOptionContext*, %struct._GOptionContext** %6, align 8, !dbg !196
  %11 = load i32*, i32** %3, align 8, !dbg !198
  %12 = load i8***, i8**** %4, align 8, !dbg !199
  %13 = call i32 @g_option_context_parse(%struct._GOptionContext* %10, i32* %11, i8*** %12, %struct._GError** %5), !dbg !200
  %14 = icmp ne i32 %13, 0, !dbg !200
  br i1 %14, label %21, label %15, !dbg !201

; <label>:15:                                     ; preds = %2
  %16 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !202
  %17 = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2, !dbg !204
  %18 = load i8*, i8** %17, align 8, !dbg !204
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* %18), !dbg !205
  %20 = call i8* @g_get_prgname(), !dbg !206
  call void @PrintUsage(i8* %20), !dbg !207
  call void @exit(i32 1) #8, !dbg !209
  unreachable, !dbg !209

; <label>:21:                                     ; preds = %2
  %22 = load %struct._GOptionContext*, %struct._GOptionContext** %6, align 8, !dbg !210
  call void @g_option_context_free(%struct._GOptionContext* %22), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: nounwind uwtable
define internal void @PrintUsage(i8*) #0 !dbg !213 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !216, metadata !100), !dbg !217
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !218
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0)), !dbg !219
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !220
  %6 = load i8*, i8** %2, align 8, !dbg !221
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* %6), !dbg !222
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !223
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([1037 x i8], [1037 x i8]* @.str.12, i32 0, i32 0)), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal void @InitProxyPaths(i8*) #0 !dbg !226 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !227, metadata !100), !dbg !228
  %3 = load i8*, i8** %2, align 8, !dbg !229
  %4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* null), !dbg !230
  store i8* %4, i8** @guestProxyDir, align 8, !dbg !231
  %5 = load i8*, i8** @guestProxyDir, align 8, !dbg !232
  %6 = call noalias i8* (i8*, ...) @g_build_filename(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* null), !dbg !233
  store i8* %6, i8** @guestProxyServerDir, align 8, !dbg !234
  %7 = load i8*, i8** @guestProxyDir, align 8, !dbg !235
  %8 = call noalias i8* (i8*, ...) @g_build_filename(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* null), !dbg !236
  store i8* %8, i8** @guestProxyTrustedDir, align 8, !dbg !237
  %9 = load i8*, i8** %2, align 8, !dbg !238
  %10 = call noalias i8* (i8*, ...) @g_build_filename(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* null), !dbg !239
  store i8* %10, i8** @guestProxySslConf, align 8, !dbg !240
  ret void, !dbg !241
}

declare i8* @CertUtil_GetToolDir() #2

; Function Attrs: nounwind uwtable
define internal i32 @CreateKeyCert(i32) #0 !dbg !242 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !245, metadata !100), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %3, metadata !247, metadata !100), !dbg !248
  store i32 0, i32* %3, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i8** %4, metadata !249, metadata !100), !dbg !250
  store i8* null, i8** %4, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata i8** %5, metadata !251, metadata !100), !dbg !252
  store i8* null, i8** %5, align 8, !dbg !252
  %6 = call i32 @ValidateEnvironment(i32 1), !dbg !253
  %7 = icmp ne i32 %6, 0, !dbg !253
  br i1 %7, label %9, label %8, !dbg !255

; <label>:8:                                      ; preds = %1
  br label %39, !dbg !256

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !258
  %11 = call noalias i8* (i8*, ...) @g_build_filename(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !259
  store i8* %11, i8** %5, align 8, !dbg !260
  %12 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !261
  %13 = call noalias i8* (i8*, ...) @g_build_filename(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null), !dbg !262
  store i8* %13, i8** %4, align 8, !dbg !263
  %14 = load i8*, i8** %5, align 8, !dbg !264
  %15 = call i32 @g_file_test(i8* %14, i32 1), !dbg !266
  %16 = icmp ne i32 %15, 0, !dbg !266
  br i1 %16, label %17, label %29, !dbg !267

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %4, align 8, !dbg !268
  %19 = call i32 @g_file_test(i8* %18, i32 1), !dbg !269
  %20 = icmp ne i32 %19, 0, !dbg !269
  br i1 %20, label %21, label %29, !dbg !270

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %2, align 4, !dbg !271
  %23 = icmp ne i32 %22, 0, !dbg !271
  br i1 %23, label %29, label %24, !dbg !273

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %5, align 8, !dbg !275
  %26 = load i8*, i8** %4, align 8, !dbg !277
  %27 = call i8* @g_get_prgname(), !dbg !278
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.19, i32 0, i32 0), i8* %25, i8* %26, i8* %27), !dbg !279
  store i32 1, i32* %3, align 4, !dbg !280
  br label %39, !dbg !281

; <label>:29:                                     ; preds = %21, %17, %9
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0)), !dbg !282
  %31 = load i8*, i8** @guestProxySslConf, align 8, !dbg !283
  %32 = load i8*, i8** %5, align 8, !dbg !285
  %33 = load i8*, i8** %4, align 8, !dbg !286
  %34 = call i32 @CertKey_GenerateKeyCert(i32 2048, i32 3650, i8* %31, i8* %32, i8* %33), !dbg !287
  %35 = icmp ne i32 %34, 0, !dbg !287
  br i1 %35, label %37, label %36, !dbg !288

; <label>:36:                                     ; preds = %29
  br label %39, !dbg !289

; <label>:37:                                     ; preds = %29
  store i32 1, i32* %3, align 4, !dbg !291
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0)), !dbg !292
  br label %39, !dbg !292

; <label>:39:                                     ; preds = %37, %36, %24, %8
  %40 = load i8*, i8** %5, align 8, !dbg !293
  call void @g_free(i8* %40), !dbg !294
  %41 = load i8*, i8** %4, align 8, !dbg !295
  call void @g_free(i8* %41), !dbg !296
  %42 = load i32, i32* %3, align 4, !dbg !297
  ret i32 %42, !dbg !298
}

; Function Attrs: nounwind uwtable
define internal i32 @DisplayServerCert(i8*) #0 !dbg !299 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._GMappedFile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !302, metadata !100), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %3, metadata !304, metadata !100), !dbg !305
  store i32 0, i32* %3, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata i8** %4, metadata !306, metadata !100), !dbg !307
  store i8* null, i8** %4, align 8, !dbg !307
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !308, metadata !100), !dbg !366
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata %struct._GMappedFile** %6, metadata !367, metadata !100), !dbg !372
  store %struct._GMappedFile* null, %struct._GMappedFile** %6, align 8, !dbg !372
  %9 = call i32 @ValidateEnvironment(i32 0), !dbg !373
  %10 = icmp ne i32 %9, 0, !dbg !373
  br i1 %10, label %12, label %11, !dbg !375

; <label>:11:                                     ; preds = %1
  br label %74, !dbg !376

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !378
  %14 = call noalias i8* (i8*, ...) @g_build_filename(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null), !dbg !379
  store i8* %14, i8** %4, align 8, !dbg !380
  %15 = load i8*, i8** %4, align 8, !dbg !381
  %16 = call i32 @g_file_test(i8* %15, i32 1), !dbg !383
  %17 = icmp ne i32 %16, 0, !dbg !383
  br i1 %17, label %23, label %18, !dbg !384

; <label>:18:                                     ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !385
  %20 = call i8* @g_get_prgname(), !dbg !387
  %21 = load i8*, i8** %4, align 8, !dbg !388
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0), i8* %20, i8* %21), !dbg !389
  br label %74, !dbg !391

; <label>:23:                                     ; preds = %12
  %24 = load i8*, i8** %2, align 8, !dbg !392
  %25 = icmp ne i8* %24, null, !dbg !392
  br i1 %25, label %26, label %43, !dbg !394

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %2, align 8, !dbg !395
  %28 = call i64 @strlen(i8* %27) #9, !dbg !397
  %29 = icmp ne i64 %28, 0, !dbg !397
  br i1 %29, label %30, label %43, !dbg !398

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %2, align 8, !dbg !399
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i8* %31), !dbg !401
  %33 = load i8*, i8** %4, align 8, !dbg !402
  %34 = load i8*, i8** %2, align 8, !dbg !404
  %35 = call i32 @CertUtil_CopyFile(i8* %33, i8* %34), !dbg !405
  %36 = icmp ne i32 %35, 0, !dbg !405
  br i1 %36, label %41, label %37, !dbg !406

; <label>:37:                                     ; preds = %30
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !407
  %39 = call i8* @g_get_prgname(), !dbg !409
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* %39), !dbg !410
  br label %74, !dbg !412

; <label>:41:                                     ; preds = %30
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0)), !dbg !413
  br label %73, !dbg !414

; <label>:43:                                     ; preds = %26, %23
  %44 = load i8*, i8** %4, align 8, !dbg !415
  %45 = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %44, i32 0, %struct._GError** null), !dbg !417
  store %struct._GMappedFile* %45, %struct._GMappedFile** %6, align 8, !dbg !418
  %46 = load %struct._GMappedFile*, %struct._GMappedFile** %6, align 8, !dbg !419
  %47 = icmp ne %struct._GMappedFile* %46, null, !dbg !419
  br i1 %47, label %48, label %68, !dbg !421

; <label>:48:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %7, metadata !422, metadata !100), !dbg !424
  %49 = load %struct._GMappedFile*, %struct._GMappedFile** %6, align 8, !dbg !425
  %50 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %49), !dbg !426
  store i8* %50, i8** %7, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i64* %8, metadata !427, metadata !100), !dbg !429
  %51 = load %struct._GMappedFile*, %struct._GMappedFile** %6, align 8, !dbg !430
  %52 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %51), !dbg !431
  store i64 %52, i64* %8, align 8, !dbg !429
  %53 = load i8*, i8** %7, align 8, !dbg !432
  %54 = load i64, i64* %8, align 8, !dbg !434
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !435
  %56 = call i64 @fwrite(i8* %53, i64 1, i64 %54, %struct._IO_FILE* %55), !dbg !436
  %57 = load i64, i64* %8, align 8, !dbg !437
  %58 = icmp ult i64 %56, %57, !dbg !438
  br i1 %58, label %59, label %67, !dbg !439

; <label>:59:                                     ; preds = %48
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !440
  %61 = call i8* @g_get_prgname(), !dbg !442
  %62 = load i8*, i8** %4, align 8, !dbg !443
  %63 = call i32* @__errno_location() #3, !dbg !444
  %64 = load i32, i32* %63, align 4, !dbg !446
  %65 = call i8* @strerror(i32 %64) #7, !dbg !447
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8* %61, i8* %62, i8* %65), !dbg !449
  br label %74, !dbg !451

; <label>:67:                                     ; preds = %48
  br label %72, !dbg !452

; <label>:68:                                     ; preds = %43
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !453
  %70 = call i8* @g_get_prgname(), !dbg !455
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i8* %70), !dbg !456
  br label %74, !dbg !458

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %41
  store i32 1, i32* %3, align 4, !dbg !459
  br label %74, !dbg !460

; <label>:74:                                     ; preds = %73, %68, %59, %37, %18, %11
  %75 = load i8*, i8** %4, align 8, !dbg !461
  call void @g_free(i8* %75), !dbg !462
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !463
  %77 = icmp ne %struct._IO_FILE* %76, null, !dbg !463
  br i1 %77, label %78, label %81, !dbg !465

; <label>:78:                                     ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !466
  %80 = call i32 @fclose(%struct._IO_FILE* %79), !dbg !468
  br label %81, !dbg !469

; <label>:81:                                     ; preds = %78, %74
  %82 = load %struct._GMappedFile*, %struct._GMappedFile** %6, align 8, !dbg !470
  %83 = icmp ne %struct._GMappedFile* %82, null, !dbg !470
  br i1 %83, label %84, label %86, !dbg !472

; <label>:84:                                     ; preds = %81
  %85 = load %struct._GMappedFile*, %struct._GMappedFile** %6, align 8, !dbg !473
  call void @g_mapped_file_unref(%struct._GMappedFile* %85), !dbg !475
  br label %86, !dbg !476

; <label>:86:                                     ; preds = %84, %81
  %87 = load i32, i32* %3, align 4, !dbg !477
  ret i32 %87, !dbg !478
}

; Function Attrs: nounwind uwtable
define internal i32 @AddTrustCert(i8*) #0 !dbg !479 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !480, metadata !100), !dbg !481
  call void @llvm.dbg.declare(metadata i32* %3, metadata !482, metadata !100), !dbg !483
  store i32 0, i32* %3, align 4, !dbg !483
  call void @llvm.dbg.declare(metadata i32* %4, metadata !484, metadata !100), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %5, metadata !486, metadata !100), !dbg !487
  call void @llvm.dbg.declare(metadata i8** %6, metadata !488, metadata !100), !dbg !489
  store i8* null, i8** %6, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata i8** %7, metadata !490, metadata !100), !dbg !491
  store i8* null, i8** %7, align 8, !dbg !491
  %8 = call i32 @ValidateEnvironment(i32 1), !dbg !492
  %9 = icmp ne i32 %8, 0, !dbg !492
  br i1 %9, label %11, label %10, !dbg !494

; <label>:10:                                     ; preds = %1
  br label %59, !dbg !495

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !497
  %13 = call i32 @g_file_test(i8* %12, i32 1), !dbg !499
  %14 = icmp ne i32 %13, 0, !dbg !499
  br i1 %14, label %20, label %15, !dbg !500

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !501
  %17 = call i8* @g_get_prgname(), !dbg !503
  %18 = load i8*, i8** %2, align 8, !dbg !504
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %17, i8* %18), !dbg !505
  br label %59, !dbg !507

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %2, align 8, !dbg !508
  %22 = call i8* @CertKey_ComputeCertPemFileHash(i8* %21), !dbg !509
  store i8* %22, i8** %6, align 8, !dbg !510
  %23 = load i8*, i8** %6, align 8, !dbg !511
  %24 = icmp ne i8* %23, null, !dbg !511
  br i1 %24, label %26, label %25, !dbg !513

; <label>:25:                                     ; preds = %20
  br label %59, !dbg !514

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %2, align 8, !dbg !516
  %28 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !518
  %29 = load i8*, i8** %6, align 8, !dbg !519
  %30 = call i32 @CertUtil_FindCert(i8* %27, i8* %28, i8* %29, i32* %5, i32* %4), !dbg !520
  %31 = icmp ne i32 %30, 0, !dbg !520
  br i1 %31, label %32, label %41, !dbg !521

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %5, align 4, !dbg !522
  %34 = icmp sge i32 %33, 0, !dbg !524
  br i1 %34, label %35, label %41, !dbg !525

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !527
  %37 = call i8* @g_get_prgname(), !dbg !529
  %38 = load i8*, i8** %6, align 8, !dbg !530
  %39 = load i32, i32* %5, align 4, !dbg !531
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.32, i32 0, i32 0), i8* %37, i8* %38, i32 %39), !dbg !532
  br label %59, !dbg !534

; <label>:41:                                     ; preds = %32, %26
  %42 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !535
  %43 = load i8*, i8** %6, align 8, !dbg !536
  %44 = load i32, i32* %4, align 4, !dbg !537
  %45 = add nsw i32 %44, 1, !dbg !538
  %46 = call i8* @CertUtil_CreateCertFileName(i8* %42, i8* %43, i32 %45), !dbg !539
  store i8* %46, i8** %7, align 8, !dbg !540
  %47 = load i8*, i8** %2, align 8, !dbg !541
  %48 = load i8*, i8** %7, align 8, !dbg !543
  %49 = call i32 @CertUtil_CopyFile(i8* %47, i8* %48), !dbg !544
  %50 = icmp ne i32 %49, 0, !dbg !544
  br i1 %50, label %56, label %51, !dbg !545

; <label>:51:                                     ; preds = %41
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !546
  %53 = call i8* @g_get_prgname(), !dbg !548
  %54 = load i8*, i8** %2, align 8, !dbg !549
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i32 0, i32 0), i8* %53, i8* %54), !dbg !550
  br label %59, !dbg !552

; <label>:56:                                     ; preds = %41
  %57 = load i8*, i8** %2, align 8, !dbg !553
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i32 0, i32 0), i8* %57), !dbg !554
  store i32 1, i32* %3, align 4, !dbg !555
  br label %59, !dbg !556

; <label>:59:                                     ; preds = %56, %51, %35, %25, %15, %10
  %60 = load i8*, i8** %6, align 8, !dbg !557
  call void @g_free(i8* %60), !dbg !558
  %61 = load i8*, i8** %7, align 8, !dbg !559
  call void @g_free(i8* %61), !dbg !560
  %62 = load i32, i32* %3, align 4, !dbg !561
  ret i32 %62, !dbg !562
}

; Function Attrs: nounwind uwtable
define internal i32 @RemoveTrustCert(i8*) #0 !dbg !563 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !564, metadata !100), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %3, metadata !566, metadata !100), !dbg !567
  store i32 0, i32* %3, align 4, !dbg !567
  call void @llvm.dbg.declare(metadata i32* %4, metadata !568, metadata !100), !dbg !569
  call void @llvm.dbg.declare(metadata i32* %5, metadata !570, metadata !100), !dbg !571
  call void @llvm.dbg.declare(metadata i8** %6, metadata !572, metadata !100), !dbg !573
  store i8* null, i8** %6, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata i8** %7, metadata !574, metadata !100), !dbg !575
  store i8* null, i8** %7, align 8, !dbg !575
  call void @llvm.dbg.declare(metadata i8** %8, metadata !576, metadata !100), !dbg !577
  store i8* null, i8** %8, align 8, !dbg !577
  %9 = call i32 @ValidateEnvironment(i32 1), !dbg !578
  %10 = icmp ne i32 %9, 0, !dbg !578
  br i1 %10, label %12, label %11, !dbg !580

; <label>:11:                                     ; preds = %1
  br label %82, !dbg !581

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !583
  %14 = call i32 @g_file_test(i8* %13, i32 1), !dbg !585
  %15 = icmp ne i32 %14, 0, !dbg !585
  br i1 %15, label %21, label %16, !dbg !586

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !587
  %18 = call i8* @g_get_prgname(), !dbg !589
  %19 = load i8*, i8** %2, align 8, !dbg !590
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %18, i8* %19), !dbg !591
  br label %82, !dbg !593

; <label>:21:                                     ; preds = %12
  %22 = load i8*, i8** %2, align 8, !dbg !594
  %23 = call i8* @CertKey_ComputeCertPemFileHash(i8* %22), !dbg !595
  store i8* %23, i8** %6, align 8, !dbg !596
  %24 = load i8*, i8** %6, align 8, !dbg !597
  %25 = icmp ne i8* %24, null, !dbg !597
  br i1 %25, label %27, label %26, !dbg !599

; <label>:26:                                     ; preds = %21
  br label %82, !dbg !600

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %2, align 8, !dbg !602
  %29 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !604
  %30 = load i8*, i8** %6, align 8, !dbg !605
  %31 = call i32 @CertUtil_FindCert(i8* %28, i8* %29, i8* %30, i32* %5, i32* %4), !dbg !606
  %32 = icmp ne i32 %31, 0, !dbg !606
  br i1 %32, label %33, label %36, !dbg !607

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %5, align 4, !dbg !608
  %35 = icmp slt i32 %34, 0, !dbg !610
  br i1 %35, label %36, label %40, !dbg !611

; <label>:36:                                     ; preds = %33, %27
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !613
  %38 = call i8* @g_get_prgname(), !dbg !615
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i32 0, i32 0), i8* %38), !dbg !616
  br label %82, !dbg !618

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !619
  %42 = load i8*, i8** %6, align 8, !dbg !620
  %43 = load i32, i32* %5, align 4, !dbg !621
  %44 = call i8* @CertUtil_CreateCertFileName(i8* %41, i8* %42, i32 %43), !dbg !622
  store i8* %44, i8** %8, align 8, !dbg !623
  %45 = load i32, i32* %4, align 4, !dbg !624
  %46 = load i32, i32* %5, align 4, !dbg !626
  %47 = icmp ne i32 %45, %46, !dbg !627
  br i1 %47, label %48, label %67, !dbg !628

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !629
  %50 = load i8*, i8** %6, align 8, !dbg !631
  %51 = load i32, i32* %4, align 4, !dbg !632
  %52 = call i8* @CertUtil_CreateCertFileName(i8* %49, i8* %50, i32 %51), !dbg !633
  store i8* %52, i8** %7, align 8, !dbg !634
  %53 = load i8*, i8** %7, align 8, !dbg !635
  %54 = load i8*, i8** %8, align 8, !dbg !637
  %55 = call i32 @rename(i8* %53, i8* %54) #7, !dbg !638
  %56 = icmp ne i32 %55, 0, !dbg !639
  br i1 %56, label %57, label %66, !dbg !640

; <label>:57:                                     ; preds = %48
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !641
  %59 = call i8* @g_get_prgname(), !dbg !643
  %60 = load i8*, i8** %7, align 8, !dbg !644
  %61 = load i8*, i8** %8, align 8, !dbg !645
  %62 = call i32* @__errno_location() #3, !dbg !646
  %63 = load i32, i32* %62, align 4, !dbg !648
  %64 = call i8* @strerror(i32 %63) #7, !dbg !649
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i32 0, i32 0), i8* %59, i8* %60, i8* %61, i8* %64), !dbg !651
  br label %82, !dbg !653

; <label>:66:                                     ; preds = %48
  br label %80, !dbg !654

; <label>:67:                                     ; preds = %40
  %68 = load i8*, i8** %8, align 8, !dbg !655
  %69 = call i32 @unlink(i8* %68) #7, !dbg !658
  %70 = icmp ne i32 %69, 0, !dbg !659
  br i1 %70, label %71, label %79, !dbg !660

; <label>:71:                                     ; preds = %67
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661
  %73 = call i8* @g_get_prgname(), !dbg !663
  %74 = load i8*, i8** %8, align 8, !dbg !664
  %75 = call i32* @__errno_location() #3, !dbg !665
  %76 = load i32, i32* %75, align 4, !dbg !667
  %77 = call i8* @strerror(i32 %76) #7, !dbg !668
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i8* %73, i8* %74, i8* %77), !dbg !670
  br label %82, !dbg !672

; <label>:79:                                     ; preds = %67
  br label %80

; <label>:80:                                     ; preds = %79, %66
  store i32 1, i32* %3, align 4, !dbg !673
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0)), !dbg !674
  br label %82, !dbg !674

; <label>:82:                                     ; preds = %80, %71, %57, %36, %26, %16, %11
  %83 = load i8*, i8** %6, align 8, !dbg !675
  call void @g_free(i8* %83), !dbg !676
  %84 = load i8*, i8** %7, align 8, !dbg !677
  call void @g_free(i8* %84), !dbg !678
  %85 = load i8*, i8** %8, align 8, !dbg !679
  call void @g_free(i8* %85), !dbg !680
  %86 = load i32, i32* %3, align 4, !dbg !681
  ret i32 %86, !dbg !682
}

; Function Attrs: nounwind uwtable
define internal i32 @EraseProxyData() #0 !dbg !683 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !684, metadata !100), !dbg !685
  store i32 0, i32* %1, align 4, !dbg !685
  %2 = call i32 @CheckRootPriv(), !dbg !686
  %3 = icmp ne i32 %2, 0, !dbg !686
  br i1 %3, label %5, label %4, !dbg !688

; <label>:4:                                      ; preds = %0
  br label %20, !dbg !689

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** @guestProxyDir, align 8, !dbg !691
  %7 = call i32 @g_file_test(i8* %6, i32 4), !dbg !693
  %8 = icmp ne i32 %7, 0, !dbg !693
  br i1 %8, label %9, label %19, !dbg !694

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** @guestProxyDir, align 8, !dbg !695
  %11 = call i32 @CertUtil_RemoveDir(i8* %10), !dbg !698
  %12 = icmp ne i32 %11, 0, !dbg !698
  br i1 %12, label %18, label %13, !dbg !699

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !700
  %15 = call i8* @g_get_prgname(), !dbg !702
  %16 = load i8*, i8** @guestProxyDir, align 8, !dbg !703
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), i8* %15, i8* %16), !dbg !704
  br label %20, !dbg !706

; <label>:18:                                     ; preds = %9
  br label %19, !dbg !707

; <label>:19:                                     ; preds = %18, %5
  store i32 1, i32* %1, align 4, !dbg !708
  br label %20, !dbg !709

; <label>:20:                                     ; preds = %19, %13, %4
  %21 = load i32, i32* %1, align 4, !dbg !710
  ret i32 %21, !dbg !711
}

declare %struct._GOptionContext* @g_option_context_new(i8*) #2

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #2

declare void @g_option_context_set_help_enabled(%struct._GOptionContext*, i32) #2

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #2

declare i32 @printf(i8*, ...) #2

declare void @g_option_context_free(%struct._GOptionContext*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ParseDisplayCert(i8*, i8*, i8*, %struct._GError**) #0 !dbg !712 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GError**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !716, metadata !100), !dbg !717
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !718, metadata !100), !dbg !719
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !720, metadata !100), !dbg !721
  store %struct._GError** %3, %struct._GError*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %8, metadata !722, metadata !100), !dbg !723
  store i32 1, i32* getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 3), align 8, !dbg !724
  %9 = load i8*, i8** %6, align 8, !dbg !725
  %10 = icmp ne i8* %9, null, !dbg !725
  br i1 %10, label %11, label %14, !dbg !727

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !728
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !730
  store i8* %13, i8** getelementptr inbounds (%struct._options, %struct._options* @options, i32 0, i32 2), align 8, !dbg !731
  br label %14, !dbg !732

; <label>:14:                                     ; preds = %11, %4
  ret i32 1, !dbg !733
}

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_build_filename(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @ValidateEnvironment(i32) #0 !dbg !734 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !735, metadata !100), !dbg !736
  call void @llvm.dbg.declare(metadata i32* %3, metadata !737, metadata !100), !dbg !738
  store i32 0, i32* %3, align 4, !dbg !738
  %4 = load i32, i32* %2, align 4, !dbg !739
  %5 = icmp ne i32 %4, 0, !dbg !739
  br i1 %5, label %6, label %13, !dbg !741

; <label>:6:                                      ; preds = %1
  %7 = call i32 @CheckRootPriv(), !dbg !742
  %8 = icmp ne i32 %7, 0, !dbg !742
  br i1 %8, label %13, label %9, !dbg !744

; <label>:9:                                      ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !745
  %11 = call i8* @g_get_prgname(), !dbg !747
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0), i8* %11), !dbg !748
  br label %69, !dbg !750

; <label>:13:                                     ; preds = %6, %1
  %14 = load i32, i32* @initialized, align 4, !dbg !751
  %15 = icmp ne i32 %14, 0, !dbg !751
  br i1 %15, label %17, label %16, !dbg !753

; <label>:16:                                     ; preds = %13
  call void @CertKey_InitOpenSSLLib(), !dbg !754
  store i32 1, i32* @initialized, align 4, !dbg !756
  br label %17, !dbg !757

; <label>:17:                                     ; preds = %16, %13
  %18 = load i8*, i8** @guestProxySslConf, align 8, !dbg !758
  %19 = call i32 @g_file_test(i8* %18, i32 1), !dbg !760
  %20 = icmp ne i32 %19, 0, !dbg !760
  br i1 %20, label %26, label %21, !dbg !761

; <label>:21:                                     ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !762
  %23 = call i8* @g_get_prgname(), !dbg !764
  %24 = load i8*, i8** @guestProxySslConf, align 8, !dbg !765
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i32 0, i32 0), i8* %23, i8* %24), !dbg !766
  br label %69, !dbg !768

; <label>:26:                                     ; preds = %17
  %27 = load i8*, i8** @guestProxyDir, align 8, !dbg !769
  %28 = call i32 @g_file_test(i8* %27, i32 4), !dbg !771
  %29 = icmp ne i32 %28, 0, !dbg !771
  br i1 %29, label %40, label %30, !dbg !772

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** @guestProxyDir, align 8, !dbg !773
  %32 = call i32 @mkdir(i8* %31, i32 493) #7, !dbg !776
  %33 = icmp slt i32 %32, 0, !dbg !777
  br i1 %33, label %34, label %39, !dbg !778

; <label>:34:                                     ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !779
  %36 = call i8* @g_get_prgname(), !dbg !781
  %37 = load i8*, i8** @guestProxyDir, align 8, !dbg !782
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* %36, i8* %37), !dbg !783
  br label %69, !dbg !785

; <label>:39:                                     ; preds = %30
  br label %40, !dbg !786

; <label>:40:                                     ; preds = %39, %26
  %41 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !787
  %42 = call i32 @g_file_test(i8* %41, i32 4), !dbg !789
  %43 = icmp ne i32 %42, 0, !dbg !789
  br i1 %43, label %54, label %44, !dbg !790

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !791
  %46 = call i32 @mkdir(i8* %45, i32 493) #7, !dbg !794
  %47 = icmp slt i32 %46, 0, !dbg !795
  br i1 %47, label %48, label %53, !dbg !796

; <label>:48:                                     ; preds = %44
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !797
  %50 = call i8* @g_get_prgname(), !dbg !799
  %51 = load i8*, i8** @guestProxyServerDir, align 8, !dbg !800
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* %50, i8* %51), !dbg !801
  br label %69, !dbg !803

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !804

; <label>:54:                                     ; preds = %53, %40
  %55 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !805
  %56 = call i32 @g_file_test(i8* %55, i32 4), !dbg !807
  %57 = icmp ne i32 %56, 0, !dbg !807
  br i1 %57, label %68, label %58, !dbg !808

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !809
  %60 = call i32 @mkdir(i8* %59, i32 448) #7, !dbg !812
  %61 = icmp slt i32 %60, 0, !dbg !813
  br i1 %61, label %62, label %67, !dbg !814

; <label>:62:                                     ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !815
  %64 = call i8* @g_get_prgname(), !dbg !817
  %65 = load i8*, i8** @guestProxyTrustedDir, align 8, !dbg !818
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* %64, i8* %65), !dbg !819
  br label %69, !dbg !821

; <label>:67:                                     ; preds = %58
  br label %68, !dbg !822

; <label>:68:                                     ; preds = %67, %54
  store i32 1, i32* %3, align 4, !dbg !823
  br label %69, !dbg !824

; <label>:69:                                     ; preds = %68, %62, %48, %34, %21, %9
  %70 = load i32, i32* %3, align 4, !dbg !825
  ret i32 %70, !dbg !826
}

declare i32 @g_file_test(i8*, i32) #2

declare i32 @CertKey_GenerateKeyCert(i32, i32, i8*, i8*, i8*) #2

declare void @g_free(i8*) #2

declare void @CertKey_InitOpenSSLLib() #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @CertUtil_CopyFile(i8*, i8*) #2

declare noalias %struct._GMappedFile* @g_mapped_file_new(i8*, i32, %struct._GError**) #2

declare i8* @g_mapped_file_get_contents(%struct._GMappedFile*) #2

declare i64 @g_mapped_file_get_length(%struct._GMappedFile*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @g_mapped_file_unref(%struct._GMappedFile*) #2

declare i8* @CertKey_ComputeCertPemFileHash(i8*) #2

declare i32 @CertUtil_FindCert(i8*, i8*, i8*, i32*, i32*) #2

declare i8* @CertUtil_CreateCertFileName(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare i32 @CertUtil_RemoveDir(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !23, globals: !25)
!1 = !DIFile(filename: "vmware_guestproxycerttool-cert_tool.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/goption.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_OPTION_ARG_NONE", value: 0)
!7 = !DIEnumerator(name: "G_OPTION_ARG_STRING", value: 1)
!8 = !DIEnumerator(name: "G_OPTION_ARG_INT", value: 2)
!9 = !DIEnumerator(name: "G_OPTION_ARG_CALLBACK", value: 3)
!10 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME", value: 4)
!11 = !DIEnumerator(name: "G_OPTION_ARG_STRING_ARRAY", value: 5)
!12 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME_ARRAY", value: 6)
!13 = !DIEnumerator(name: "G_OPTION_ARG_DOUBLE", value: 7)
!14 = !DIEnumerator(name: "G_OPTION_ARG_INT64", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 66, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gfileutils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "G_FILE_TEST_IS_REGULAR", value: 1)
!19 = !DIEnumerator(name: "G_FILE_TEST_IS_SYMLINK", value: 2)
!20 = !DIEnumerator(name: "G_FILE_TEST_IS_DIR", value: 4)
!21 = !DIEnumerator(name: "G_FILE_TEST_IS_EXECUTABLE", value: 8)
!22 = !DIEnumerator(name: "G_FILE_TEST_EXISTS", value: 16)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!25 = !{!26, !33, !38, !57, !70, !71, !72, !73, !74}
!26 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !27, line: 43, type: !28, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!27 = !DIFile(filename: "cert_tool.c", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, align: 8, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 20)
!33 = distinct !DIGlobalVariable(name: "gIsLogEnabled", scope: !0, file: !27, line: 60, type: !34, isLocal: false, isDefinition: true, variable: i32* @gIsLogEnabled)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !35, line: 50, baseType: !36)
!35 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !35, line: 49, baseType: !37)
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = distinct !DIGlobalVariable(name: "cmdOptions", scope: !0, file: !27, line: 565, type: !39, isLocal: true, isDefinition: true, variable: [9 x %struct._GOptionEntry]* @cmdOptions)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3456, align: 64, elements: !55)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !42)
!42 = !{!43, !47, !48, !49, !51, !53, !54}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !41, file: !4, line: 259, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !35, line: 46, baseType: !30)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !41, file: !4, line: 260, baseType: !46, size: 8, align: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !4, line: 261, baseType: !36, size: 32, align: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !41, file: !4, line: 263, baseType: !50, size: 32, align: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !41, file: !4, line: 264, baseType: !52, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !35, line: 77, baseType: !24)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !41, file: !4, line: 266, baseType: !44, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !41, file: !4, line: 267, baseType: !44, size: 64, align: 64, offset: 320)
!55 = !{!56}
!56 = !DISubrange(count: 9)
!57 = distinct !DIGlobalVariable(name: "options", scope: !0, file: !27, line: 547, type: !58, isLocal: true, isDefinition: true, variable: %struct._options* @options)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_options", file: !27, line: 537, size: 384, align: 64, elements: !59)
!59 = !{!60, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "addCert", scope: !58, file: !27, line: 538, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "deleteCert", scope: !58, file: !27, line: 539, baseType: !61, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "outputCert", scope: !58, file: !27, line: 540, baseType: !61, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "displayCert", scope: !58, file: !27, line: 541, baseType: !34, size: 32, align: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "generateCert", scope: !58, file: !27, line: 542, baseType: !34, size: 32, align: 32, offset: 224)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !58, file: !27, line: 543, baseType: !34, size: 32, align: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !58, file: !27, line: 544, baseType: !34, size: 32, align: 32, offset: 288)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !58, file: !27, line: 545, baseType: !34, size: 32, align: 32, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !58, file: !27, line: 546, baseType: !34, size: 32, align: 32, offset: 352)
!70 = distinct !DIGlobalVariable(name: "guestProxyDir", scope: !0, file: !27, line: 51, type: !61, isLocal: true, isDefinition: true, variable: i8** @guestProxyDir)
!71 = distinct !DIGlobalVariable(name: "guestProxyServerDir", scope: !0, file: !27, line: 52, type: !61, isLocal: true, isDefinition: true, variable: i8** @guestProxyServerDir)
!72 = distinct !DIGlobalVariable(name: "guestProxyTrustedDir", scope: !0, file: !27, line: 53, type: !61, isLocal: true, isDefinition: true, variable: i8** @guestProxyTrustedDir)
!73 = distinct !DIGlobalVariable(name: "guestProxySslConf", scope: !0, file: !27, line: 54, type: !61, isLocal: true, isDefinition: true, variable: i8** @guestProxySslConf)
!74 = distinct !DIGlobalVariable(name: "initialized", scope: !0, file: !27, line: 50, type: !34, isLocal: true, isDefinition: true, variable: i32* @initialized)
!75 = !{i32 2, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!78 = distinct !DISubprogram(name: "CheckRootPriv", scope: !27, file: !27, line: 132, type: !79, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!34}
!81 = !{}
!82 = !DILocation(line: 134, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !27, line: 134, column: 8)
!84 = !DILocation(line: 134, column: 18, scope: !83)
!85 = !DILocation(line: 134, column: 8, scope: !78)
!86 = !DILocation(line: 135, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !27, line: 134, column: 24)
!88 = !DILocation(line: 135, column: 95, scope: !87)
!89 = !DILocation(line: 135, column: 7, scope: !90)
!90 = !DILexicalBlockFile(scope: !87, file: !27, discriminator: 1)
!91 = !DILocation(line: 137, column: 7, scope: !87)
!92 = !DILocation(line: 139, column: 4, scope: !78)
!93 = !DILocation(line: 140, column: 1, scope: !78)
!94 = distinct !DISubprogram(name: "main", scope: !27, file: !27, line: 629, type: !95, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!95 = !DISubroutineType(types: !96)
!96 = !{!37, !37, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!99 = !DILocalVariable(name: "argc", arg: 1, scope: !94, file: !27, line: 629, type: !37)
!100 = !DIExpression()
!101 = !DILocation(line: 629, column: 10, scope: !94)
!102 = !DILocalVariable(name: "argv", arg: 2, scope: !94, file: !27, line: 629, type: !97)
!103 = !DILocation(line: 629, column: 23, scope: !94)
!104 = !DILocation(line: 631, column: 4, scope: !94)
!105 = !DILocation(line: 632, column: 16, scope: !106)
!106 = distinct !DILexicalBlock(scope: !94, file: !27, line: 632, column: 8)
!107 = !DILocation(line: 632, column: 8, scope: !106)
!108 = !DILocation(line: 632, column: 8, scope: !94)
!109 = !DILocation(line: 633, column: 18, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !27, line: 632, column: 23)
!111 = !DILocation(line: 633, column: 7, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !27, discriminator: 1)
!113 = !DILocation(line: 634, column: 7, scope: !110)
!114 = !DILocation(line: 637, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !94, file: !27, line: 637, column: 8)
!116 = !DILocation(line: 637, column: 8, scope: !115)
!117 = !DILocation(line: 637, column: 8, scope: !94)
!118 = !DILocation(line: 638, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !27, line: 637, column: 25)
!120 = !DILocation(line: 639, column: 4, scope: !119)
!121 = !DILocation(line: 641, column: 19, scope: !94)
!122 = !DILocation(line: 641, column: 4, scope: !123)
!123 = !DILexicalBlockFile(scope: !94, file: !27, discriminator: 1)
!124 = !DILocation(line: 663, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !94, file: !27, line: 663, column: 8)
!126 = !DILocation(line: 663, column: 9, scope: !125)
!127 = !DILocation(line: 663, column: 30, scope: !125)
!128 = !DILocation(line: 663, column: 56, scope: !129)
!129 = !DILexicalBlockFile(scope: !125, file: !27, discriminator: 1)
!130 = !DILocation(line: 663, column: 34, scope: !129)
!131 = !DILocation(line: 663, column: 64, scope: !129)
!132 = !DILocation(line: 664, column: 17, scope: !125)
!133 = !DILocation(line: 664, column: 9, scope: !125)
!134 = !DILocation(line: 664, column: 29, scope: !125)
!135 = !DILocation(line: 664, column: 59, scope: !129)
!136 = !DILocation(line: 664, column: 33, scope: !129)
!137 = !DILocation(line: 664, column: 72, scope: !129)
!138 = !DILocation(line: 665, column: 17, scope: !125)
!139 = !DILocation(line: 665, column: 9, scope: !125)
!140 = !DILocation(line: 665, column: 25, scope: !125)
!141 = !DILocation(line: 665, column: 50, scope: !129)
!142 = !DILocation(line: 665, column: 29, scope: !129)
!143 = !DILocation(line: 665, column: 60, scope: !129)
!144 = !DILocation(line: 666, column: 17, scope: !125)
!145 = !DILocation(line: 666, column: 9, scope: !125)
!146 = !DILocation(line: 666, column: 28, scope: !125)
!147 = !DILocation(line: 666, column: 56, scope: !129)
!148 = !DILocation(line: 666, column: 32, scope: !129)
!149 = !DILocation(line: 666, column: 69, scope: !129)
!150 = !DILocation(line: 667, column: 17, scope: !125)
!151 = !DILocation(line: 667, column: 9, scope: !125)
!152 = !DILocation(line: 667, column: 23, scope: !125)
!153 = !DILocation(line: 667, column: 27, scope: !129)
!154 = !DILocation(line: 663, column: 8, scope: !155)
!155 = !DILexicalBlockFile(scope: !94, file: !27, discriminator: 2)
!156 = !DILocation(line: 668, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !125, file: !27, line: 667, column: 46)
!158 = !DILocation(line: 670, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !125, file: !27, line: 669, column: 11)
!160 = !DILocation(line: 672, column: 1, scope: !94)
!161 = distinct !DISubprogram(name: "ParseOptions", scope: !27, file: !27, line: 604, type: !162, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164, !165}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!166 = !DILocalVariable(name: "argc", arg: 1, scope: !161, file: !27, line: 604, type: !164)
!167 = !DILocation(line: 604, column: 19, scope: !161)
!168 = !DILocalVariable(name: "argv", arg: 2, scope: !161, file: !27, line: 605, type: !165)
!169 = !DILocation(line: 605, column: 22, scope: !161)
!170 = !DILocalVariable(name: "error", scope: !161, file: !27, line: 607, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !173, line: 42, baseType: !174)
!173 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !173, line: 44, size: 128, align: 64, elements: !175)
!175 = !{!176, !182, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !174, file: !173, line: 46, baseType: !177, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !178, line: 36, baseType: !179)
!178 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !180, line: 45, baseType: !181)
!180 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!181 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !174, file: !173, line: 47, baseType: !36, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !174, file: !173, line: 48, baseType: !61, size: 64, align: 64, offset: 64)
!184 = !DILocation(line: 607, column: 12, scope: !161)
!185 = !DILocalVariable(name: "context", scope: !161, file: !27, line: 608, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionContext", file: !4, line: 38, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionContext", file: !4, line: 38, flags: DIFlagFwdDecl)
!189 = !DILocation(line: 608, column: 20, scope: !161)
!190 = !DILocation(line: 610, column: 14, scope: !161)
!191 = !DILocation(line: 610, column: 12, scope: !161)
!192 = !DILocation(line: 611, column: 38, scope: !161)
!193 = !DILocation(line: 611, column: 4, scope: !161)
!194 = !DILocation(line: 617, column: 38, scope: !161)
!195 = !DILocation(line: 617, column: 4, scope: !161)
!196 = !DILocation(line: 619, column: 32, scope: !197)
!197 = distinct !DILexicalBlock(scope: !161, file: !27, line: 619, column: 8)
!198 = !DILocation(line: 619, column: 41, scope: !197)
!199 = !DILocation(line: 619, column: 47, scope: !197)
!200 = !DILocation(line: 619, column: 9, scope: !197)
!201 = !DILocation(line: 619, column: 8, scope: !161)
!202 = !DILocation(line: 620, column: 45, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !27, line: 619, column: 62)
!204 = !DILocation(line: 620, column: 52, scope: !203)
!205 = !DILocation(line: 620, column: 7, scope: !203)
!206 = !DILocation(line: 621, column: 18, scope: !203)
!207 = !DILocation(line: 621, column: 7, scope: !208)
!208 = !DILexicalBlockFile(scope: !203, file: !27, discriminator: 1)
!209 = !DILocation(line: 622, column: 7, scope: !203)
!210 = !DILocation(line: 625, column: 26, scope: !161)
!211 = !DILocation(line: 625, column: 4, scope: !161)
!212 = !DILocation(line: 626, column: 1, scope: !161)
!213 = distinct !DISubprogram(name: "PrintUsage", scope: !27, file: !27, line: 79, type: !214, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !44}
!216 = !DILocalVariable(name: "cmd", arg: 1, scope: !213, file: !27, line: 79, type: !44)
!217 = !DILocation(line: 79, column: 25, scope: !213)
!218 = !DILocation(line: 81, column: 11, scope: !213)
!219 = !DILocation(line: 81, column: 4, scope: !213)
!220 = !DILocation(line: 82, column: 11, scope: !213)
!221 = !DILocation(line: 82, column: 57, scope: !213)
!222 = !DILocation(line: 82, column: 4, scope: !213)
!223 = !DILocation(line: 83, column: 11, scope: !213)
!224 = !DILocation(line: 83, column: 4, scope: !213)
!225 = !DILocation(line: 101, column: 1, scope: !213)
!226 = distinct !DISubprogram(name: "InitProxyPaths", scope: !27, file: !27, line: 105, type: !214, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!227 = !DILocalVariable(name: "toolDir", arg: 1, scope: !226, file: !27, line: 105, type: !44)
!228 = !DILocation(line: 105, column: 29, scope: !226)
!229 = !DILocation(line: 107, column: 37, scope: !226)
!230 = !DILocation(line: 107, column: 20, scope: !226)
!231 = !DILocation(line: 107, column: 18, scope: !226)
!232 = !DILocation(line: 108, column: 43, scope: !226)
!233 = !DILocation(line: 108, column: 26, scope: !226)
!234 = !DILocation(line: 108, column: 24, scope: !226)
!235 = !DILocation(line: 109, column: 44, scope: !226)
!236 = !DILocation(line: 109, column: 27, scope: !226)
!237 = !DILocation(line: 109, column: 25, scope: !226)
!238 = !DILocation(line: 110, column: 41, scope: !226)
!239 = !DILocation(line: 110, column: 24, scope: !226)
!240 = !DILocation(line: 110, column: 22, scope: !226)
!241 = !DILocation(line: 111, column: 1, scope: !226)
!242 = distinct !DISubprogram(name: "CreateKeyCert", scope: !27, file: !27, line: 371, type: !243, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!243 = !DISubroutineType(types: !244)
!244 = !{!34, !34}
!245 = !DILocalVariable(name: "force", arg: 1, scope: !242, file: !27, line: 371, type: !34)
!246 = !DILocation(line: 371, column: 24, scope: !242)
!247 = !DILocalVariable(name: "ret", scope: !242, file: !27, line: 373, type: !34)
!248 = !DILocation(line: 373, column: 13, scope: !242)
!249 = !DILocalVariable(name: "cert", scope: !242, file: !27, line: 374, type: !61)
!250 = !DILocation(line: 374, column: 11, scope: !242)
!251 = !DILocalVariable(name: "key", scope: !242, file: !27, line: 375, type: !61)
!252 = !DILocation(line: 375, column: 11, scope: !242)
!253 = !DILocation(line: 377, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !242, file: !27, line: 377, column: 8)
!255 = !DILocation(line: 377, column: 8, scope: !242)
!256 = !DILocation(line: 378, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !27, line: 377, column: 38)
!258 = !DILocation(line: 381, column: 27, scope: !242)
!259 = !DILocation(line: 381, column: 10, scope: !242)
!260 = !DILocation(line: 381, column: 8, scope: !242)
!261 = !DILocation(line: 382, column: 28, scope: !242)
!262 = !DILocation(line: 382, column: 11, scope: !242)
!263 = !DILocation(line: 382, column: 9, scope: !242)
!264 = !DILocation(line: 389, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !242, file: !27, line: 389, column: 8)
!266 = !DILocation(line: 389, column: 8, scope: !265)
!267 = !DILocation(line: 389, column: 49, scope: !265)
!268 = !DILocation(line: 390, column: 20, scope: !265)
!269 = !DILocation(line: 390, column: 8, scope: !265)
!270 = !DILocation(line: 390, column: 50, scope: !265)
!271 = !DILocation(line: 390, column: 54, scope: !272)
!272 = !DILexicalBlockFile(scope: !265, file: !27, discriminator: 1)
!273 = !DILocation(line: 389, column: 8, scope: !274)
!274 = !DILexicalBlockFile(scope: !242, file: !27, discriminator: 1)
!275 = !DILocation(line: 394, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !265, file: !27, line: 390, column: 61)
!277 = !DILocation(line: 394, column: 19, scope: !276)
!278 = !DILocation(line: 394, column: 25, scope: !276)
!279 = !DILocation(line: 391, column: 7, scope: !276)
!280 = !DILocation(line: 395, column: 11, scope: !276)
!281 = !DILocation(line: 396, column: 7, scope: !276)
!282 = !DILocation(line: 399, column: 4, scope: !242)
!283 = !DILocation(line: 402, column: 33, scope: !284)
!284 = distinct !DILexicalBlock(scope: !242, file: !27, line: 401, column: 8)
!285 = !DILocation(line: 402, column: 52, scope: !284)
!286 = !DILocation(line: 402, column: 57, scope: !284)
!287 = !DILocation(line: 401, column: 9, scope: !284)
!288 = !DILocation(line: 401, column: 8, scope: !242)
!289 = !DILocation(line: 403, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !27, line: 402, column: 64)
!291 = !DILocation(line: 406, column: 8, scope: !242)
!292 = !DILocation(line: 407, column: 4, scope: !242)
!293 = !DILocation(line: 410, column: 11, scope: !242)
!294 = !DILocation(line: 410, column: 4, scope: !242)
!295 = !DILocation(line: 411, column: 11, scope: !242)
!296 = !DILocation(line: 411, column: 4, scope: !242)
!297 = !DILocation(line: 413, column: 11, scope: !242)
!298 = !DILocation(line: 413, column: 4, scope: !242)
!299 = distinct !DISubprogram(name: "DisplayServerCert", scope: !27, file: !27, line: 295, type: !300, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!300 = !DISubroutineType(types: !301)
!301 = !{!34, !44}
!302 = !DILocalVariable(name: "serverCertPemFile", arg: 1, scope: !299, file: !27, line: 295, type: !44)
!303 = !DILocation(line: 295, column: 32, scope: !299)
!304 = !DILocalVariable(name: "ret", scope: !299, file: !27, line: 297, type: !34)
!305 = !DILocation(line: 297, column: 13, scope: !299)
!306 = !DILocalVariable(name: "cert", scope: !299, file: !27, line: 298, type: !61)
!307 = !DILocation(line: 298, column: 11, scope: !299)
!308 = !DILocalVariable(name: "file", scope: !299, file: !27, line: 299, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 48, baseType: !312)
!311 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 241, size: 1728, align: 64, elements: !314)
!313 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !335, !336, !337, !338, !342, !344, !346, !350, !353, !355, !356, !357, !358, !359, !363, !364}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !312, file: !313, line: 242, baseType: !37, size: 32, align: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !312, file: !313, line: 247, baseType: !98, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !312, file: !313, line: 248, baseType: !98, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !312, file: !313, line: 249, baseType: !98, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !312, file: !313, line: 250, baseType: !98, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !312, file: !313, line: 251, baseType: !98, size: 64, align: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !312, file: !313, line: 252, baseType: !98, size: 64, align: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !312, file: !313, line: 253, baseType: !98, size: 64, align: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !312, file: !313, line: 254, baseType: !98, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !312, file: !313, line: 256, baseType: !98, size: 64, align: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !312, file: !313, line: 257, baseType: !98, size: 64, align: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !312, file: !313, line: 258, baseType: !98, size: 64, align: 64, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !312, file: !313, line: 260, baseType: !328, size: 64, align: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !313, line: 156, size: 192, align: 64, elements: !330)
!330 = !{!331, !332, !334}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !329, file: !313, line: 157, baseType: !328, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !329, file: !313, line: 158, baseType: !333, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !329, file: !313, line: 162, baseType: !37, size: 32, align: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !312, file: !313, line: 262, baseType: !333, size: 64, align: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !312, file: !313, line: 264, baseType: !37, size: 32, align: 32, offset: 896)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !312, file: !313, line: 268, baseType: !37, size: 32, align: 32, offset: 928)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !312, file: !313, line: 270, baseType: !339, size: 64, align: 64, offset: 960)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !340, line: 131, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!341 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !312, file: !313, line: 274, baseType: !343, size: 16, align: 16, offset: 1024)
!343 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !312, file: !313, line: 275, baseType: !345, size: 8, align: 8, offset: 1040)
!345 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !312, file: !313, line: 276, baseType: !347, size: 8, align: 8, offset: 1048)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 1)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !312, file: !313, line: 280, baseType: !351, size: 64, align: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !313, line: 150, baseType: null)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !312, file: !313, line: 289, baseType: !354, size: 64, align: 64, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !340, line: 132, baseType: !341)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !312, file: !313, line: 297, baseType: !24, size: 64, align: 64, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !312, file: !313, line: 298, baseType: !24, size: 64, align: 64, offset: 1280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !312, file: !313, line: 299, baseType: !24, size: 64, align: 64, offset: 1344)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !312, file: !313, line: 300, baseType: !24, size: 64, align: 64, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !312, file: !313, line: 302, baseType: !360, size: 64, align: 64, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !361, line: 216, baseType: !362)
!361 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!362 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !312, file: !313, line: 303, baseType: !37, size: 32, align: 32, offset: 1536)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !312, file: !313, line: 305, baseType: !365, size: 160, align: 8, offset: 1568)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !31)
!366 = !DILocation(line: 299, column: 10, scope: !299)
!367 = !DILocalVariable(name: "fmap", scope: !299, file: !27, line: 300, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMappedFile", file: !370, line: 32, baseType: !371)
!370 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmappedfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1366")
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMappedFile", file: !370, line: 32, flags: DIFlagFwdDecl)
!372 = !DILocation(line: 300, column: 17, scope: !299)
!373 = !DILocation(line: 302, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !299, file: !27, line: 302, column: 8)
!375 = !DILocation(line: 302, column: 8, scope: !299)
!376 = !DILocation(line: 303, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !27, line: 302, column: 35)
!378 = !DILocation(line: 306, column: 28, scope: !299)
!379 = !DILocation(line: 306, column: 11, scope: !299)
!380 = !DILocation(line: 306, column: 9, scope: !299)
!381 = !DILocation(line: 307, column: 21, scope: !382)
!382 = distinct !DILexicalBlock(scope: !299, file: !27, line: 307, column: 8)
!383 = !DILocation(line: 307, column: 9, scope: !382)
!384 = !DILocation(line: 307, column: 8, scope: !299)
!385 = !DILocation(line: 308, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !27, line: 307, column: 52)
!387 = !DILocation(line: 308, column: 67, scope: !386)
!388 = !DILocation(line: 308, column: 84, scope: !386)
!389 = !DILocation(line: 308, column: 7, scope: !390)
!390 = !DILexicalBlockFile(scope: !386, file: !27, discriminator: 1)
!391 = !DILocation(line: 309, column: 7, scope: !386)
!392 = !DILocation(line: 312, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !299, file: !27, line: 312, column: 8)
!394 = !DILocation(line: 312, column: 26, scope: !393)
!395 = !DILocation(line: 312, column: 36, scope: !396)
!396 = !DILexicalBlockFile(scope: !393, file: !27, discriminator: 1)
!397 = !DILocation(line: 312, column: 29, scope: !396)
!398 = !DILocation(line: 312, column: 8, scope: !396)
!399 = !DILocation(line: 313, column: 57, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !27, line: 312, column: 56)
!401 = !DILocation(line: 313, column: 7, scope: !400)
!402 = !DILocation(line: 315, column: 30, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !27, line: 315, column: 11)
!404 = !DILocation(line: 315, column: 36, scope: !403)
!405 = !DILocation(line: 315, column: 12, scope: !403)
!406 = !DILocation(line: 315, column: 11, scope: !400)
!407 = !DILocation(line: 316, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !27, line: 315, column: 56)
!409 = !DILocation(line: 316, column: 72, scope: !408)
!410 = !DILocation(line: 316, column: 10, scope: !411)
!411 = !DILexicalBlockFile(scope: !408, file: !27, discriminator: 1)
!412 = !DILocation(line: 317, column: 10, scope: !408)
!413 = !DILocation(line: 319, column: 7, scope: !400)
!414 = !DILocation(line: 321, column: 4, scope: !400)
!415 = !DILocation(line: 323, column: 32, scope: !416)
!416 = distinct !DILexicalBlock(scope: !393, file: !27, line: 321, column: 11)
!417 = !DILocation(line: 323, column: 14, scope: !416)
!418 = !DILocation(line: 323, column: 12, scope: !416)
!419 = !DILocation(line: 324, column: 11, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !27, line: 324, column: 11)
!421 = !DILocation(line: 324, column: 11, scope: !416)
!422 = !DILocalVariable(name: "content", scope: !423, file: !27, line: 326, type: !44)
!423 = distinct !DILexicalBlock(scope: !420, file: !27, line: 324, column: 17)
!424 = !DILocation(line: 326, column: 23, scope: !423)
!425 = !DILocation(line: 326, column: 60, scope: !423)
!426 = !DILocation(line: 326, column: 33, scope: !423)
!427 = !DILocalVariable(name: "length", scope: !423, file: !27, line: 327, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !180, line: 66, baseType: !362)
!429 = !DILocation(line: 327, column: 16, scope: !423)
!430 = !DILocation(line: 327, column: 50, scope: !423)
!431 = !DILocation(line: 327, column: 25, scope: !423)
!432 = !DILocation(line: 329, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !27, line: 329, column: 14)
!434 = !DILocation(line: 329, column: 33, scope: !433)
!435 = !DILocation(line: 329, column: 40, scope: !433)
!436 = !DILocation(line: 329, column: 14, scope: !433)
!437 = !DILocation(line: 329, column: 50, scope: !433)
!438 = !DILocation(line: 329, column: 48, scope: !433)
!439 = !DILocation(line: 329, column: 14, scope: !423)
!440 = !DILocation(line: 330, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !433, file: !27, line: 329, column: 58)
!442 = !DILocation(line: 330, column: 52, scope: !441)
!443 = !DILocation(line: 330, column: 69, scope: !441)
!444 = !DILocation(line: 330, column: 14, scope: !445)
!445 = !DILexicalBlockFile(scope: !441, file: !27, discriminator: 1)
!446 = !DILocation(line: 330, column: 13, scope: !441)
!447 = !DILocation(line: 330, column: 75, scope: !448)
!448 = !DILexicalBlockFile(scope: !441, file: !27, discriminator: 2)
!449 = !DILocation(line: 330, column: 13, scope: !450)
!450 = !DILexicalBlockFile(scope: !441, file: !27, discriminator: 3)
!451 = !DILocation(line: 331, column: 13, scope: !441)
!452 = !DILocation(line: 333, column: 7, scope: !423)
!453 = !DILocation(line: 334, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !420, file: !27, line: 333, column: 14)
!455 = !DILocation(line: 334, column: 66, scope: !454)
!456 = !DILocation(line: 334, column: 10, scope: !457)
!457 = !DILexicalBlockFile(scope: !454, file: !27, discriminator: 1)
!458 = !DILocation(line: 335, column: 10, scope: !454)
!459 = !DILocation(line: 339, column: 8, scope: !299)
!460 = !DILocation(line: 339, column: 4, scope: !299)
!461 = !DILocation(line: 342, column: 11, scope: !299)
!462 = !DILocation(line: 342, column: 4, scope: !299)
!463 = !DILocation(line: 343, column: 8, scope: !464)
!464 = distinct !DILexicalBlock(scope: !299, file: !27, line: 343, column: 8)
!465 = !DILocation(line: 343, column: 8, scope: !299)
!466 = !DILocation(line: 344, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !27, line: 343, column: 14)
!468 = !DILocation(line: 344, column: 7, scope: !467)
!469 = !DILocation(line: 345, column: 4, scope: !467)
!470 = !DILocation(line: 346, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !299, file: !27, line: 346, column: 8)
!472 = !DILocation(line: 346, column: 8, scope: !299)
!473 = !DILocation(line: 347, column: 27, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !27, line: 346, column: 14)
!475 = !DILocation(line: 347, column: 7, scope: !474)
!476 = !DILocation(line: 348, column: 4, scope: !474)
!477 = !DILocation(line: 350, column: 11, scope: !299)
!478 = !DILocation(line: 350, column: 4, scope: !299)
!479 = distinct !DISubprogram(name: "AddTrustCert", scope: !27, file: !27, line: 230, type: !300, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!480 = !DILocalVariable(name: "clientCertPemFile", arg: 1, scope: !479, file: !27, line: 230, type: !44)
!481 = !DILocation(line: 230, column: 27, scope: !479)
!482 = !DILocalVariable(name: "ret", scope: !479, file: !27, line: 232, type: !34)
!483 = !DILocation(line: 232, column: 13, scope: !479)
!484 = !DILocalVariable(name: "last", scope: !479, file: !27, line: 233, type: !37)
!485 = !DILocation(line: 233, column: 8, scope: !479)
!486 = !DILocalVariable(name: "num", scope: !479, file: !27, line: 233, type: !37)
!487 = !DILocation(line: 233, column: 14, scope: !479)
!488 = !DILocalVariable(name: "hash", scope: !479, file: !27, line: 234, type: !61)
!489 = !DILocation(line: 234, column: 11, scope: !479)
!490 = !DILocalVariable(name: "path", scope: !479, file: !27, line: 235, type: !61)
!491 = !DILocation(line: 235, column: 11, scope: !479)
!492 = !DILocation(line: 237, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !479, file: !27, line: 237, column: 8)
!494 = !DILocation(line: 237, column: 8, scope: !479)
!495 = !DILocation(line: 238, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !27, line: 237, column: 38)
!497 = !DILocation(line: 241, column: 21, scope: !498)
!498 = distinct !DILexicalBlock(scope: !479, file: !27, line: 241, column: 8)
!499 = !DILocation(line: 241, column: 9, scope: !498)
!500 = !DILocation(line: 241, column: 8, scope: !479)
!501 = !DILocation(line: 242, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !27, line: 241, column: 65)
!503 = !DILocation(line: 242, column: 53, scope: !502)
!504 = !DILocation(line: 242, column: 70, scope: !502)
!505 = !DILocation(line: 242, column: 7, scope: !506)
!506 = !DILexicalBlockFile(scope: !502, file: !27, discriminator: 1)
!507 = !DILocation(line: 243, column: 7, scope: !502)
!508 = !DILocation(line: 246, column: 42, scope: !479)
!509 = !DILocation(line: 246, column: 11, scope: !479)
!510 = !DILocation(line: 246, column: 9, scope: !479)
!511 = !DILocation(line: 247, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !479, file: !27, line: 247, column: 8)
!513 = !DILocation(line: 247, column: 8, scope: !479)
!514 = !DILocation(line: 248, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !27, line: 247, column: 15)
!516 = !DILocation(line: 251, column: 26, scope: !517)
!517 = distinct !DILexicalBlock(scope: !479, file: !27, line: 251, column: 8)
!518 = !DILocation(line: 251, column: 45, scope: !517)
!519 = !DILocation(line: 251, column: 67, scope: !517)
!520 = !DILocation(line: 251, column: 8, scope: !517)
!521 = !DILocation(line: 252, column: 38, scope: !517)
!522 = !DILocation(line: 252, column: 41, scope: !523)
!523 = !DILexicalBlockFile(scope: !517, file: !27, discriminator: 1)
!524 = !DILocation(line: 252, column: 45, scope: !523)
!525 = !DILocation(line: 251, column: 8, scope: !526)
!526 = !DILexicalBlockFile(scope: !479, file: !27, discriminator: 1)
!527 = !DILocation(line: 253, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !27, line: 252, column: 51)
!529 = !DILocation(line: 253, column: 74, scope: !528)
!530 = !DILocation(line: 253, column: 91, scope: !528)
!531 = !DILocation(line: 253, column: 97, scope: !528)
!532 = !DILocation(line: 253, column: 7, scope: !533)
!533 = !DILexicalBlockFile(scope: !528, file: !27, discriminator: 1)
!534 = !DILocation(line: 255, column: 7, scope: !528)
!535 = !DILocation(line: 258, column: 39, scope: !479)
!536 = !DILocation(line: 258, column: 61, scope: !479)
!537 = !DILocation(line: 258, column: 67, scope: !479)
!538 = !DILocation(line: 258, column: 72, scope: !479)
!539 = !DILocation(line: 258, column: 11, scope: !479)
!540 = !DILocation(line: 258, column: 9, scope: !479)
!541 = !DILocation(line: 259, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !479, file: !27, line: 259, column: 8)
!543 = !DILocation(line: 259, column: 46, scope: !542)
!544 = !DILocation(line: 259, column: 9, scope: !542)
!545 = !DILocation(line: 259, column: 8, scope: !479)
!546 = !DILocation(line: 260, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !27, line: 259, column: 53)
!548 = !DILocation(line: 260, column: 71, scope: !547)
!549 = !DILocation(line: 260, column: 88, scope: !547)
!550 = !DILocation(line: 260, column: 7, scope: !551)
!551 = !DILexicalBlockFile(scope: !547, file: !27, discriminator: 1)
!552 = !DILocation(line: 262, column: 7, scope: !547)
!553 = !DILocation(line: 266, column: 11, scope: !479)
!554 = !DILocation(line: 265, column: 4, scope: !479)
!555 = !DILocation(line: 267, column: 8, scope: !479)
!556 = !DILocation(line: 267, column: 4, scope: !479)
!557 = !DILocation(line: 270, column: 11, scope: !479)
!558 = !DILocation(line: 270, column: 4, scope: !479)
!559 = !DILocation(line: 271, column: 11, scope: !479)
!560 = !DILocation(line: 271, column: 4, scope: !479)
!561 = !DILocation(line: 273, column: 11, scope: !479)
!562 = !DILocation(line: 273, column: 4, scope: !479)
!563 = distinct !DISubprogram(name: "RemoveTrustCert", scope: !27, file: !27, line: 435, type: !300, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!564 = !DILocalVariable(name: "clientCertPemFile", arg: 1, scope: !563, file: !27, line: 435, type: !44)
!565 = !DILocation(line: 435, column: 30, scope: !563)
!566 = !DILocalVariable(name: "ret", scope: !563, file: !27, line: 437, type: !34)
!567 = !DILocation(line: 437, column: 13, scope: !563)
!568 = !DILocalVariable(name: "last", scope: !563, file: !27, line: 438, type: !37)
!569 = !DILocation(line: 438, column: 8, scope: !563)
!570 = !DILocalVariable(name: "num", scope: !563, file: !27, line: 438, type: !37)
!571 = !DILocation(line: 438, column: 14, scope: !563)
!572 = !DILocalVariable(name: "hash", scope: !563, file: !27, line: 439, type: !61)
!573 = !DILocation(line: 439, column: 11, scope: !563)
!574 = !DILocalVariable(name: "src", scope: !563, file: !27, line: 440, type: !61)
!575 = !DILocation(line: 440, column: 11, scope: !563)
!576 = !DILocalVariable(name: "dst", scope: !563, file: !27, line: 441, type: !61)
!577 = !DILocation(line: 441, column: 11, scope: !563)
!578 = !DILocation(line: 443, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !563, file: !27, line: 443, column: 8)
!580 = !DILocation(line: 443, column: 8, scope: !563)
!581 = !DILocation(line: 444, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !27, line: 443, column: 38)
!583 = !DILocation(line: 447, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !563, file: !27, line: 447, column: 8)
!585 = !DILocation(line: 447, column: 9, scope: !584)
!586 = !DILocation(line: 447, column: 8, scope: !563)
!587 = !DILocation(line: 448, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !27, line: 447, column: 65)
!589 = !DILocation(line: 448, column: 53, scope: !588)
!590 = !DILocation(line: 448, column: 70, scope: !588)
!591 = !DILocation(line: 448, column: 7, scope: !592)
!592 = !DILexicalBlockFile(scope: !588, file: !27, discriminator: 1)
!593 = !DILocation(line: 449, column: 7, scope: !588)
!594 = !DILocation(line: 452, column: 42, scope: !563)
!595 = !DILocation(line: 452, column: 11, scope: !563)
!596 = !DILocation(line: 452, column: 9, scope: !563)
!597 = !DILocation(line: 453, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !563, file: !27, line: 453, column: 8)
!599 = !DILocation(line: 453, column: 8, scope: !563)
!600 = !DILocation(line: 454, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !27, line: 453, column: 15)
!602 = !DILocation(line: 457, column: 27, scope: !603)
!603 = distinct !DILexicalBlock(scope: !563, file: !27, line: 457, column: 8)
!604 = !DILocation(line: 457, column: 46, scope: !603)
!605 = !DILocation(line: 457, column: 68, scope: !603)
!606 = !DILocation(line: 457, column: 9, scope: !603)
!607 = !DILocation(line: 458, column: 39, scope: !603)
!608 = !DILocation(line: 458, column: 42, scope: !609)
!609 = !DILexicalBlockFile(scope: !603, file: !27, discriminator: 1)
!610 = !DILocation(line: 458, column: 46, scope: !609)
!611 = !DILocation(line: 457, column: 8, scope: !612)
!612 = !DILexicalBlockFile(scope: !563, file: !27, discriminator: 1)
!613 = !DILocation(line: 459, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !603, file: !27, line: 458, column: 51)
!615 = !DILocation(line: 459, column: 76, scope: !614)
!616 = !DILocation(line: 459, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !614, file: !27, discriminator: 1)
!618 = !DILocation(line: 460, column: 7, scope: !614)
!619 = !DILocation(line: 463, column: 38, scope: !563)
!620 = !DILocation(line: 463, column: 60, scope: !563)
!621 = !DILocation(line: 463, column: 66, scope: !563)
!622 = !DILocation(line: 463, column: 10, scope: !563)
!623 = !DILocation(line: 463, column: 8, scope: !563)
!624 = !DILocation(line: 464, column: 8, scope: !625)
!625 = distinct !DILexicalBlock(scope: !563, file: !27, line: 464, column: 8)
!626 = !DILocation(line: 464, column: 16, scope: !625)
!627 = !DILocation(line: 464, column: 13, scope: !625)
!628 = !DILocation(line: 464, column: 8, scope: !563)
!629 = !DILocation(line: 465, column: 41, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !27, line: 464, column: 21)
!631 = !DILocation(line: 465, column: 63, scope: !630)
!632 = !DILocation(line: 465, column: 69, scope: !630)
!633 = !DILocation(line: 465, column: 13, scope: !630)
!634 = !DILocation(line: 465, column: 11, scope: !630)
!635 = !DILocation(line: 466, column: 18, scope: !636)
!636 = distinct !DILexicalBlock(scope: !630, file: !27, line: 466, column: 11)
!637 = !DILocation(line: 466, column: 23, scope: !636)
!638 = !DILocation(line: 466, column: 11, scope: !636)
!639 = !DILocation(line: 466, column: 28, scope: !636)
!640 = !DILocation(line: 466, column: 11, scope: !630)
!641 = !DILocation(line: 467, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !27, line: 466, column: 34)
!643 = !DILocation(line: 467, column: 63, scope: !642)
!644 = !DILocation(line: 467, column: 80, scope: !642)
!645 = !DILocation(line: 467, column: 85, scope: !642)
!646 = !DILocation(line: 467, column: 11, scope: !647)
!647 = !DILexicalBlockFile(scope: !642, file: !27, discriminator: 1)
!648 = !DILocation(line: 467, column: 10, scope: !642)
!649 = !DILocation(line: 467, column: 90, scope: !650)
!650 = !DILexicalBlockFile(scope: !642, file: !27, discriminator: 2)
!651 = !DILocation(line: 467, column: 10, scope: !652)
!652 = !DILexicalBlockFile(scope: !642, file: !27, discriminator: 3)
!653 = !DILocation(line: 469, column: 10, scope: !642)
!654 = !DILocation(line: 471, column: 4, scope: !630)
!655 = !DILocation(line: 472, column: 18, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !27, line: 472, column: 11)
!657 = distinct !DILexicalBlock(scope: !625, file: !27, line: 471, column: 11)
!658 = !DILocation(line: 472, column: 11, scope: !656)
!659 = !DILocation(line: 472, column: 23, scope: !656)
!660 = !DILocation(line: 472, column: 11, scope: !657)
!661 = !DILocation(line: 473, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !27, line: 472, column: 29)
!663 = !DILocation(line: 473, column: 57, scope: !662)
!664 = !DILocation(line: 473, column: 74, scope: !662)
!665 = !DILocation(line: 473, column: 11, scope: !666)
!666 = !DILexicalBlockFile(scope: !662, file: !27, discriminator: 1)
!667 = !DILocation(line: 473, column: 10, scope: !662)
!668 = !DILocation(line: 473, column: 79, scope: !669)
!669 = !DILexicalBlockFile(scope: !662, file: !27, discriminator: 2)
!670 = !DILocation(line: 473, column: 10, scope: !671)
!671 = !DILexicalBlockFile(scope: !662, file: !27, discriminator: 3)
!672 = !DILocation(line: 474, column: 10, scope: !662)
!673 = !DILocation(line: 478, column: 8, scope: !563)
!674 = !DILocation(line: 479, column: 4, scope: !563)
!675 = !DILocation(line: 482, column: 11, scope: !563)
!676 = !DILocation(line: 482, column: 4, scope: !563)
!677 = !DILocation(line: 483, column: 11, scope: !563)
!678 = !DILocation(line: 483, column: 4, scope: !563)
!679 = !DILocation(line: 484, column: 11, scope: !563)
!680 = !DILocation(line: 484, column: 4, scope: !563)
!681 = !DILocation(line: 486, column: 11, scope: !563)
!682 = !DILocation(line: 486, column: 4, scope: !563)
!683 = distinct !DISubprogram(name: "EraseProxyData", scope: !27, file: !27, line: 512, type: !79, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!684 = !DILocalVariable(name: "ret", scope: !683, file: !27, line: 514, type: !34)
!685 = !DILocation(line: 514, column: 13, scope: !683)
!686 = !DILocation(line: 516, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !27, line: 516, column: 8)
!688 = !DILocation(line: 516, column: 8, scope: !683)
!689 = !DILocation(line: 517, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !27, line: 516, column: 26)
!691 = !DILocation(line: 520, column: 20, scope: !692)
!692 = distinct !DILexicalBlock(scope: !683, file: !27, line: 520, column: 8)
!693 = !DILocation(line: 520, column: 8, scope: !692)
!694 = !DILocation(line: 520, column: 8, scope: !683)
!695 = !DILocation(line: 521, column: 31, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !27, line: 521, column: 11)
!697 = distinct !DILexicalBlock(scope: !692, file: !27, line: 520, column: 56)
!698 = !DILocation(line: 521, column: 12, scope: !696)
!699 = !DILocation(line: 521, column: 11, scope: !697)
!700 = !DILocation(line: 522, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !27, line: 521, column: 47)
!702 = !DILocation(line: 522, column: 58, scope: !701)
!703 = !DILocation(line: 522, column: 75, scope: !701)
!704 = !DILocation(line: 522, column: 10, scope: !705)
!705 = !DILexicalBlockFile(scope: !701, file: !27, discriminator: 1)
!706 = !DILocation(line: 523, column: 10, scope: !701)
!707 = !DILocation(line: 525, column: 4, scope: !697)
!708 = !DILocation(line: 527, column: 8, scope: !683)
!709 = !DILocation(line: 527, column: 4, scope: !683)
!710 = !DILocation(line: 530, column: 11, scope: !683)
!711 = !DILocation(line: 530, column: 4, scope: !683)
!712 = distinct !DISubprogram(name: "ParseDisplayCert", scope: !27, file: !27, line: 551, type: !713, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!713 = !DISubroutineType(types: !714)
!714 = !{!34, !44, !44, !52, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!716 = !DILocalVariable(name: "name", arg: 1, scope: !712, file: !27, line: 551, type: !44)
!717 = !DILocation(line: 551, column: 31, scope: !712)
!718 = !DILocalVariable(name: "value", arg: 2, scope: !712, file: !27, line: 552, type: !44)
!719 = !DILocation(line: 552, column: 31, scope: !712)
!720 = !DILocalVariable(name: "data", arg: 3, scope: !712, file: !27, line: 553, type: !52)
!721 = !DILocation(line: 553, column: 27, scope: !712)
!722 = !DILocalVariable(name: "error", arg: 4, scope: !712, file: !27, line: 554, type: !715)
!723 = !DILocation(line: 554, column: 27, scope: !712)
!724 = !DILocation(line: 556, column: 24, scope: !712)
!725 = !DILocation(line: 557, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !712, file: !27, line: 557, column: 8)
!727 = !DILocation(line: 557, column: 8, scope: !712)
!728 = !DILocation(line: 558, column: 37, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !27, line: 557, column: 15)
!730 = !DILocation(line: 558, column: 28, scope: !729)
!731 = !DILocation(line: 558, column: 26, scope: !729)
!732 = !DILocation(line: 559, column: 4, scope: !729)
!733 = !DILocation(line: 561, column: 4, scope: !712)
!734 = distinct !DISubprogram(name: "ValidateEnvironment", scope: !27, file: !27, line: 163, type: !243, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!735 = !DILocalVariable(name: "requireRootPriv", arg: 1, scope: !734, file: !27, line: 163, type: !34)
!736 = !DILocation(line: 163, column: 30, scope: !734)
!737 = !DILocalVariable(name: "ret", scope: !734, file: !27, line: 165, type: !34)
!738 = !DILocation(line: 165, column: 13, scope: !734)
!739 = !DILocation(line: 167, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !27, line: 167, column: 8)
!741 = !DILocation(line: 167, column: 24, scope: !740)
!742 = !DILocation(line: 167, column: 28, scope: !743)
!743 = !DILexicalBlockFile(scope: !740, file: !27, discriminator: 1)
!744 = !DILocation(line: 167, column: 8, scope: !743)
!745 = !DILocation(line: 168, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !27, line: 167, column: 45)
!747 = !DILocation(line: 168, column: 62, scope: !746)
!748 = !DILocation(line: 168, column: 7, scope: !749)
!749 = !DILexicalBlockFile(scope: !746, file: !27, discriminator: 1)
!750 = !DILocation(line: 169, column: 7, scope: !746)
!751 = !DILocation(line: 172, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !734, file: !27, line: 172, column: 8)
!753 = !DILocation(line: 172, column: 8, scope: !734)
!754 = !DILocation(line: 173, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !27, line: 172, column: 22)
!756 = !DILocation(line: 174, column: 19, scope: !755)
!757 = !DILocation(line: 175, column: 4, scope: !755)
!758 = !DILocation(line: 177, column: 21, scope: !759)
!759 = distinct !DILexicalBlock(scope: !734, file: !27, line: 177, column: 8)
!760 = !DILocation(line: 177, column: 9, scope: !759)
!761 = !DILocation(line: 177, column: 8, scope: !734)
!762 = !DILocation(line: 178, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !27, line: 177, column: 65)
!764 = !DILocation(line: 178, column: 70, scope: !763)
!765 = !DILocation(line: 178, column: 87, scope: !763)
!766 = !DILocation(line: 178, column: 7, scope: !767)
!767 = !DILexicalBlockFile(scope: !763, file: !27, discriminator: 1)
!768 = !DILocation(line: 180, column: 7, scope: !763)
!769 = !DILocation(line: 184, column: 21, scope: !770)
!770 = distinct !DILexicalBlock(scope: !734, file: !27, line: 184, column: 8)
!771 = !DILocation(line: 184, column: 9, scope: !770)
!772 = !DILocation(line: 184, column: 8, scope: !734)
!773 = !DILocation(line: 185, column: 17, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !27, line: 185, column: 11)
!775 = distinct !DILexicalBlock(scope: !770, file: !27, line: 184, column: 57)
!776 = !DILocation(line: 185, column: 11, scope: !774)
!777 = !DILocation(line: 185, column: 38, scope: !774)
!778 = !DILocation(line: 185, column: 11, scope: !775)
!779 = !DILocation(line: 186, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !774, file: !27, line: 185, column: 43)
!781 = !DILocation(line: 186, column: 59, scope: !780)
!782 = !DILocation(line: 186, column: 76, scope: !780)
!783 = !DILocation(line: 186, column: 10, scope: !784)
!784 = !DILexicalBlockFile(scope: !780, file: !27, discriminator: 1)
!785 = !DILocation(line: 187, column: 10, scope: !780)
!786 = !DILocation(line: 189, column: 4, scope: !775)
!787 = !DILocation(line: 191, column: 21, scope: !788)
!788 = distinct !DILexicalBlock(scope: !734, file: !27, line: 191, column: 8)
!789 = !DILocation(line: 191, column: 9, scope: !788)
!790 = !DILocation(line: 191, column: 8, scope: !734)
!791 = !DILocation(line: 192, column: 17, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !27, line: 192, column: 11)
!793 = distinct !DILexicalBlock(scope: !788, file: !27, line: 191, column: 63)
!794 = !DILocation(line: 192, column: 11, scope: !792)
!795 = !DILocation(line: 192, column: 44, scope: !792)
!796 = !DILocation(line: 192, column: 11, scope: !793)
!797 = !DILocation(line: 193, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !792, file: !27, line: 192, column: 49)
!799 = !DILocation(line: 193, column: 59, scope: !798)
!800 = !DILocation(line: 193, column: 76, scope: !798)
!801 = !DILocation(line: 193, column: 10, scope: !802)
!802 = !DILexicalBlockFile(scope: !798, file: !27, discriminator: 1)
!803 = !DILocation(line: 194, column: 10, scope: !798)
!804 = !DILocation(line: 196, column: 4, scope: !793)
!805 = !DILocation(line: 198, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !734, file: !27, line: 198, column: 8)
!807 = !DILocation(line: 198, column: 9, scope: !806)
!808 = !DILocation(line: 198, column: 8, scope: !734)
!809 = !DILocation(line: 199, column: 17, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !27, line: 199, column: 11)
!811 = distinct !DILexicalBlock(scope: !806, file: !27, line: 198, column: 64)
!812 = !DILocation(line: 199, column: 11, scope: !810)
!813 = !DILocation(line: 199, column: 45, scope: !810)
!814 = !DILocation(line: 199, column: 11, scope: !811)
!815 = !DILocation(line: 200, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !27, line: 199, column: 50)
!817 = !DILocation(line: 200, column: 59, scope: !816)
!818 = !DILocation(line: 200, column: 76, scope: !816)
!819 = !DILocation(line: 200, column: 10, scope: !820)
!820 = !DILexicalBlockFile(scope: !816, file: !27, discriminator: 1)
!821 = !DILocation(line: 201, column: 10, scope: !816)
!822 = !DILocation(line: 203, column: 4, scope: !811)
!823 = !DILocation(line: 205, column: 8, scope: !734)
!824 = !DILocation(line: 205, column: 4, scope: !734)
!825 = !DILocation(line: 208, column: 11, scope: !734)
!826 = !DILocation(line: 208, column: 4, scope: !734)
