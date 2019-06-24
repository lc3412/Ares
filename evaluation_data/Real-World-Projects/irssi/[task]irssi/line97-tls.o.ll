; ModuleID = './line97-tls.o.i'
source_filename = "./line97-tls.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._TLS_REC = type { i8*, i8*, i64, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i64, %struct._GSList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._TLS_CERT_REC = type { %struct._GSList*, %struct._GSList* }
%struct._TLS_CERT_ENTRY_REC = type { i8*, i8* }

@__func__.tls_create_rec = private unnamed_addr constant [15 x i8] c"tls_create_rec\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.tls_rec_set_protocol_version = private unnamed_addr constant [29 x i8] c"tls_rec_set_protocol_version\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"tls_rec != NULL\00", align 1
@__func__.tls_rec_set_cipher = private unnamed_addr constant [19 x i8] c"tls_rec_set_cipher\00", align 1
@__func__.tls_rec_set_cipher_size = private unnamed_addr constant [24 x i8] c"tls_rec_set_cipher_size\00", align 1
@__func__.tls_rec_set_public_key_algorithm = private unnamed_addr constant [33 x i8] c"tls_rec_set_public_key_algorithm\00", align 1
@__func__.tls_rec_set_public_key_fingerprint = private unnamed_addr constant [35 x i8] c"tls_rec_set_public_key_fingerprint\00", align 1
@__func__.tls_rec_set_public_key_fingerprint_algorithm = private unnamed_addr constant [45 x i8] c"tls_rec_set_public_key_fingerprint_algorithm\00", align 1
@__func__.tls_rec_set_public_key_size = private unnamed_addr constant [28 x i8] c"tls_rec_set_public_key_size\00", align 1
@__func__.tls_rec_set_certificate_fingerprint = private unnamed_addr constant [36 x i8] c"tls_rec_set_certificate_fingerprint\00", align 1
@__func__.tls_rec_set_certificate_fingerprint_algorithm = private unnamed_addr constant [46 x i8] c"tls_rec_set_certificate_fingerprint_algorithm\00", align 1
@__func__.tls_rec_set_not_after = private unnamed_addr constant [22 x i8] c"tls_rec_set_not_after\00", align 1
@__func__.tls_rec_set_not_before = private unnamed_addr constant [23 x i8] c"tls_rec_set_not_before\00", align 1
@__func__.tls_rec_set_ephemeral_key_algorithm = private unnamed_addr constant [36 x i8] c"tls_rec_set_ephemeral_key_algorithm\00", align 1
@__func__.tls_rec_set_ephemeral_key_size = private unnamed_addr constant [31 x i8] c"tls_rec_set_ephemeral_key_size\00", align 1
@__func__.tls_rec_append_cert = private unnamed_addr constant [20 x i8] c"tls_rec_append_cert\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tls_cert_rec != NULL\00", align 1
@__func__.tls_cert_create_rec = private unnamed_addr constant [20 x i8] c"tls_cert_create_rec\00", align 1
@__func__.tls_cert_rec_append_subject_entry = private unnamed_addr constant [34 x i8] c"tls_cert_rec_append_subject_entry\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"tls_cert_entry_rec != NULL\00", align 1
@__func__.tls_cert_rec_append_issuer_entry = private unnamed_addr constant [33 x i8] c"tls_cert_rec_append_issuer_entry\00", align 1
@__func__.tls_cert_entry_create_rec = private unnamed_addr constant [26 x i8] c"tls_cert_entry_create_rec\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TLS_REC* @tls_create_rec() #0 !dbg !61 {
  %1 = alloca %struct._TLS_REC*, align 8
  %2 = alloca %struct._TLS_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %2, metadata !65, metadata !66), !dbg !67
  %3 = call noalias i8* @g_malloc0_n(i64 1, i64 112), !dbg !68
  %4 = bitcast i8* %3 to %struct._TLS_REC*, !dbg !69
  store %struct._TLS_REC* %4, %struct._TLS_REC** %2, align 8, !dbg !67
  br label %5, !dbg !70, !llvm.loop !71

; <label>:5:                                      ; preds = %0
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !72
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !76
  br i1 %7, label %8, label %9, !dbg !72

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !77

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tls_create_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !80
  store %struct._TLS_REC* null, %struct._TLS_REC** %1, align 8, !dbg !83
  br label %13, !dbg !83

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !84

; <label>:11:                                     ; preds = %10
  %12 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !86
  store %struct._TLS_REC* %12, %struct._TLS_REC** %1, align 8, !dbg !87
  br label %13, !dbg !87

; <label>:13:                                     ; preds = %11, %9
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %1, align 8, !dbg !88
  ret %struct._TLS_REC* %14, !dbg !88
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @tls_rec_free(%struct._TLS_REC*) #0 !dbg !89 {
  %2 = alloca %struct._TLS_REC*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %2, metadata !92, metadata !66), !dbg !93
  %3 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !94
  %4 = icmp eq %struct._TLS_REC* %3, null, !dbg !96
  br i1 %4, label %5, label %6, !dbg !97

; <label>:5:                                      ; preds = %1
  br label %153, !dbg !98

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !99, !llvm.loop !100

; <label>:7:                                      ; preds = %6
  %8 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !101
  %9 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %8, i32 0, i32 0, !dbg !105
  %10 = load i8*, i8** %9, align 8, !dbg !105
  %11 = icmp ne i8* %10, null, !dbg !101
  br i1 %11, label %12, label %18, !dbg !101

; <label>:12:                                     ; preds = %7
  %13 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !106
  %14 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %13, i32 0, i32 0, !dbg !109
  %15 = load i8*, i8** %14, align 8, !dbg !109
  call void @g_free(i8* %15), !dbg !110
  %16 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !111
  %17 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %16, i32 0, i32 0, !dbg !112
  store i8* null, i8** %17, align 8, !dbg !113
  br label %18, !dbg !114

; <label>:18:                                     ; preds = %12, %7
  br label %19, !dbg !115

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !117, !llvm.loop !118

; <label>:20:                                     ; preds = %19
  %21 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !119
  %22 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %21, i32 0, i32 1, !dbg !123
  %23 = load i8*, i8** %22, align 8, !dbg !123
  %24 = icmp ne i8* %23, null, !dbg !119
  br i1 %24, label %25, label %31, !dbg !119

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !124
  %27 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %26, i32 0, i32 1, !dbg !127
  %28 = load i8*, i8** %27, align 8, !dbg !127
  call void @g_free(i8* %28), !dbg !128
  %29 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !129
  %30 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %29, i32 0, i32 1, !dbg !130
  store i8* null, i8** %30, align 8, !dbg !131
  br label %31, !dbg !132

; <label>:31:                                     ; preds = %25, %20
  br label %32, !dbg !133

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !135, !llvm.loop !136

; <label>:33:                                     ; preds = %32
  %34 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !137
  %35 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %34, i32 0, i32 3, !dbg !141
  %36 = load i8*, i8** %35, align 8, !dbg !141
  %37 = icmp ne i8* %36, null, !dbg !137
  br i1 %37, label %38, label %44, !dbg !137

; <label>:38:                                     ; preds = %33
  %39 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !142
  %40 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %39, i32 0, i32 3, !dbg !145
  %41 = load i8*, i8** %40, align 8, !dbg !145
  call void @g_free(i8* %41), !dbg !146
  %42 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !147
  %43 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %42, i32 0, i32 3, !dbg !148
  store i8* null, i8** %43, align 8, !dbg !149
  br label %44, !dbg !150

; <label>:44:                                     ; preds = %38, %33
  br label %45, !dbg !151

; <label>:45:                                     ; preds = %44
  br label %46, !dbg !153, !llvm.loop !154

; <label>:46:                                     ; preds = %45
  %47 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !155
  %48 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %47, i32 0, i32 4, !dbg !159
  %49 = load i8*, i8** %48, align 8, !dbg !159
  %50 = icmp ne i8* %49, null, !dbg !155
  br i1 %50, label %51, label %57, !dbg !155

; <label>:51:                                     ; preds = %46
  %52 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !160
  %53 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %52, i32 0, i32 4, !dbg !163
  %54 = load i8*, i8** %53, align 8, !dbg !163
  call void @g_free(i8* %54), !dbg !164
  %55 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !165
  %56 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %55, i32 0, i32 4, !dbg !166
  store i8* null, i8** %56, align 8, !dbg !167
  br label %57, !dbg !168

; <label>:57:                                     ; preds = %51, %46
  br label %58, !dbg !169

; <label>:58:                                     ; preds = %57
  br label %59, !dbg !171, !llvm.loop !172

; <label>:59:                                     ; preds = %58
  %60 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !173
  %61 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %60, i32 0, i32 5, !dbg !177
  %62 = load i8*, i8** %61, align 8, !dbg !177
  %63 = icmp ne i8* %62, null, !dbg !173
  br i1 %63, label %64, label %70, !dbg !173

; <label>:64:                                     ; preds = %59
  %65 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !178
  %66 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %65, i32 0, i32 5, !dbg !181
  %67 = load i8*, i8** %66, align 8, !dbg !181
  call void @g_free(i8* %67), !dbg !182
  %68 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !183
  %69 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %68, i32 0, i32 5, !dbg !184
  store i8* null, i8** %69, align 8, !dbg !185
  br label %70, !dbg !186

; <label>:70:                                     ; preds = %64, %59
  br label %71, !dbg !187

; <label>:71:                                     ; preds = %70
  br label %72, !dbg !189, !llvm.loop !190

; <label>:72:                                     ; preds = %71
  %73 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !191
  %74 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %73, i32 0, i32 7, !dbg !195
  %75 = load i8*, i8** %74, align 8, !dbg !195
  %76 = icmp ne i8* %75, null, !dbg !191
  br i1 %76, label %77, label %83, !dbg !191

; <label>:77:                                     ; preds = %72
  %78 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !196
  %79 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %78, i32 0, i32 7, !dbg !199
  %80 = load i8*, i8** %79, align 8, !dbg !199
  call void @g_free(i8* %80), !dbg !200
  %81 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !201
  %82 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %81, i32 0, i32 7, !dbg !202
  store i8* null, i8** %82, align 8, !dbg !203
  br label %83, !dbg !204

; <label>:83:                                     ; preds = %77, %72
  br label %84, !dbg !205

; <label>:84:                                     ; preds = %83
  br label %85, !dbg !207, !llvm.loop !208

; <label>:85:                                     ; preds = %84
  %86 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !209
  %87 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %86, i32 0, i32 8, !dbg !213
  %88 = load i8*, i8** %87, align 8, !dbg !213
  %89 = icmp ne i8* %88, null, !dbg !209
  br i1 %89, label %90, label %96, !dbg !209

; <label>:90:                                     ; preds = %85
  %91 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !214
  %92 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %91, i32 0, i32 8, !dbg !217
  %93 = load i8*, i8** %92, align 8, !dbg !217
  call void @g_free(i8* %93), !dbg !218
  %94 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !219
  %95 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %94, i32 0, i32 8, !dbg !220
  store i8* null, i8** %95, align 8, !dbg !221
  br label %96, !dbg !222

; <label>:96:                                     ; preds = %90, %85
  br label %97, !dbg !223

; <label>:97:                                     ; preds = %96
  br label %98, !dbg !225, !llvm.loop !226

; <label>:98:                                     ; preds = %97
  %99 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !227
  %100 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %99, i32 0, i32 9, !dbg !231
  %101 = load i8*, i8** %100, align 8, !dbg !231
  %102 = icmp ne i8* %101, null, !dbg !227
  br i1 %102, label %103, label %109, !dbg !227

; <label>:103:                                    ; preds = %98
  %104 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !232
  %105 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %104, i32 0, i32 9, !dbg !235
  %106 = load i8*, i8** %105, align 8, !dbg !235
  call void @g_free(i8* %106), !dbg !236
  %107 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !237
  %108 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %107, i32 0, i32 9, !dbg !238
  store i8* null, i8** %108, align 8, !dbg !239
  br label %109, !dbg !240

; <label>:109:                                    ; preds = %103, %98
  br label %110, !dbg !241

; <label>:110:                                    ; preds = %109
  br label %111, !dbg !243, !llvm.loop !244

; <label>:111:                                    ; preds = %110
  %112 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !245
  %113 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %112, i32 0, i32 10, !dbg !249
  %114 = load i8*, i8** %113, align 8, !dbg !249
  %115 = icmp ne i8* %114, null, !dbg !245
  br i1 %115, label %116, label %122, !dbg !245

; <label>:116:                                    ; preds = %111
  %117 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !250
  %118 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %117, i32 0, i32 10, !dbg !253
  %119 = load i8*, i8** %118, align 8, !dbg !253
  call void @g_free(i8* %119), !dbg !254
  %120 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !255
  %121 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %120, i32 0, i32 10, !dbg !256
  store i8* null, i8** %121, align 8, !dbg !257
  br label %122, !dbg !258

; <label>:122:                                    ; preds = %116, %111
  br label %123, !dbg !259

; <label>:123:                                    ; preds = %122
  br label %124, !dbg !261, !llvm.loop !262

; <label>:124:                                    ; preds = %123
  %125 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !263
  %126 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %125, i32 0, i32 11, !dbg !267
  %127 = load i8*, i8** %126, align 8, !dbg !267
  %128 = icmp ne i8* %127, null, !dbg !263
  br i1 %128, label %129, label %135, !dbg !263

; <label>:129:                                    ; preds = %124
  %130 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !268
  %131 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %130, i32 0, i32 11, !dbg !271
  %132 = load i8*, i8** %131, align 8, !dbg !271
  call void @g_free(i8* %132), !dbg !272
  %133 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !273
  %134 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %133, i32 0, i32 11, !dbg !274
  store i8* null, i8** %134, align 8, !dbg !275
  br label %135, !dbg !276

; <label>:135:                                    ; preds = %129, %124
  br label %136, !dbg !277

; <label>:136:                                    ; preds = %135
  %137 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !279
  %138 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %137, i32 0, i32 13, !dbg !281
  %139 = load %struct._GSList*, %struct._GSList** %138, align 8, !dbg !281
  %140 = icmp ne %struct._GSList* %139, null, !dbg !282
  br i1 %140, label %141, label %150, !dbg !283

; <label>:141:                                    ; preds = %136
  %142 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !284
  %143 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %142, i32 0, i32 13, !dbg !286
  %144 = load %struct._GSList*, %struct._GSList** %143, align 8, !dbg !286
  call void @g_slist_foreach(%struct._GSList* %144, void (i8*, i8*)* bitcast (void (%struct._TLS_CERT_REC*)* @tls_cert_rec_free to void (i8*, i8*)*), i8* null), !dbg !287
  %145 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !288
  %146 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %145, i32 0, i32 13, !dbg !289
  %147 = load %struct._GSList*, %struct._GSList** %146, align 8, !dbg !289
  call void @g_slist_free(%struct._GSList* %147), !dbg !290
  %148 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !291
  %149 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %148, i32 0, i32 13, !dbg !292
  store %struct._GSList* null, %struct._GSList** %149, align 8, !dbg !293
  br label %150, !dbg !294

; <label>:150:                                    ; preds = %141, %136
  %151 = load %struct._TLS_REC*, %struct._TLS_REC** %2, align 8, !dbg !295
  %152 = bitcast %struct._TLS_REC* %151 to i8*, !dbg !295
  call void @g_free(i8* %152), !dbg !296
  br label %153, !dbg !297

; <label>:153:                                    ; preds = %150, %5
  ret void, !dbg !298
}

declare void @g_free(i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @tls_cert_rec_free(%struct._TLS_CERT_REC*) #0 !dbg !300 {
  %2 = alloca %struct._TLS_CERT_REC*, align 8
  store %struct._TLS_CERT_REC* %0, %struct._TLS_CERT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %2, metadata !303, metadata !66), !dbg !304
  %3 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !305
  %4 = icmp eq %struct._TLS_CERT_REC* %3, null, !dbg !307
  br i1 %4, label %5, label %6, !dbg !308

; <label>:5:                                      ; preds = %1
  br label %37, !dbg !309

; <label>:6:                                      ; preds = %1
  %7 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !310
  %8 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %7, i32 0, i32 0, !dbg !312
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !312
  %10 = icmp ne %struct._GSList* %9, null, !dbg !313
  br i1 %10, label %11, label %20, !dbg !314

; <label>:11:                                     ; preds = %6
  %12 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !315
  %13 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %12, i32 0, i32 0, !dbg !317
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !317
  call void @g_slist_foreach(%struct._GSList* %14, void (i8*, i8*)* bitcast (void (%struct._TLS_CERT_ENTRY_REC*)* @tls_cert_entry_rec_free to void (i8*, i8*)*), i8* null), !dbg !318
  %15 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !319
  %16 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %15, i32 0, i32 0, !dbg !320
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !320
  call void @g_slist_free(%struct._GSList* %17), !dbg !321
  %18 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !322
  %19 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %18, i32 0, i32 0, !dbg !323
  store %struct._GSList* null, %struct._GSList** %19, align 8, !dbg !324
  br label %20, !dbg !325

; <label>:20:                                     ; preds = %11, %6
  %21 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !326
  %22 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %21, i32 0, i32 1, !dbg !328
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !328
  %24 = icmp ne %struct._GSList* %23, null, !dbg !329
  br i1 %24, label %25, label %34, !dbg !330

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !331
  %27 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %26, i32 0, i32 1, !dbg !333
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !333
  call void @g_slist_foreach(%struct._GSList* %28, void (i8*, i8*)* bitcast (void (%struct._TLS_CERT_ENTRY_REC*)* @tls_cert_entry_rec_free to void (i8*, i8*)*), i8* null), !dbg !334
  %29 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !335
  %30 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %29, i32 0, i32 1, !dbg !336
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !336
  call void @g_slist_free(%struct._GSList* %31), !dbg !337
  %32 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !338
  %33 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %32, i32 0, i32 1, !dbg !339
  store %struct._GSList* null, %struct._GSList** %33, align 8, !dbg !340
  br label %34, !dbg !341

; <label>:34:                                     ; preds = %25, %20
  %35 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !342
  %36 = bitcast %struct._TLS_CERT_REC* %35 to i8*, !dbg !342
  call void @g_free(i8* %36), !dbg !343
  br label %37, !dbg !344

; <label>:37:                                     ; preds = %34, %5
  ret void, !dbg !345
}

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define void @tls_rec_set_protocol_version(%struct._TLS_REC*, i8*) #0 !dbg !347 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !350, metadata !66), !dbg !351
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !352, metadata !66), !dbg !353
  br label %5, !dbg !354, !llvm.loop !355

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !356
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !360
  br i1 %7, label %8, label %9, !dbg !356

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !361

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_rec_set_protocol_version, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !364
  br label %16, !dbg !367

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !368

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !370
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !371
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !372
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 0, !dbg !373
  store i8* %13, i8** %15, align 8, !dbg !374
  br label %16, !dbg !375

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !376
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @tls_rec_set_cipher(%struct._TLS_REC*, i8*) #0 !dbg !378 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !379, metadata !66), !dbg !380
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !381, metadata !66), !dbg !382
  br label %5, !dbg !383, !llvm.loop !384

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !385
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !389
  br i1 %7, label %8, label %9, !dbg !385

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !390

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_rec_set_cipher, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !393
  br label %16, !dbg !396

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !397

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !399
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !400
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !401
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 1, !dbg !402
  store i8* %13, i8** %15, align 8, !dbg !403
  br label %16, !dbg !404

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !405
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_cipher_size(%struct._TLS_REC*, i64) #0 !dbg !407 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i64, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !410, metadata !66), !dbg !411
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !412, metadata !66), !dbg !413
  br label %5, !dbg !414, !llvm.loop !415

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !416
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !420
  br i1 %7, label %8, label %9, !dbg !416

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !421

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_rec_set_cipher_size, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !424
  br label %15, !dbg !427

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !428

; <label>:11:                                     ; preds = %10
  %12 = load i64, i64* %4, align 8, !dbg !430
  %13 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !431
  %14 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %13, i32 0, i32 2, !dbg !432
  store i64 %12, i64* %14, align 8, !dbg !433
  br label %15, !dbg !434

; <label>:15:                                     ; preds = %11, %9
  ret void, !dbg !435
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_public_key_algorithm(%struct._TLS_REC*, i8*) #0 !dbg !437 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !438, metadata !66), !dbg !439
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !440, metadata !66), !dbg !441
  br label %5, !dbg !442, !llvm.loop !443

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !444
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !448
  br i1 %7, label %8, label %9, !dbg !444

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !449

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_rec_set_public_key_algorithm, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !452
  br label %16, !dbg !455

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !456

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !458
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !459
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !460
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 3, !dbg !461
  store i8* %13, i8** %15, align 8, !dbg !462
  br label %16, !dbg !463

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !464
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_public_key_fingerprint(%struct._TLS_REC*, i8*) #0 !dbg !466 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !467, metadata !66), !dbg !468
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !469, metadata !66), !dbg !470
  br label %5, !dbg !471, !llvm.loop !472

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !473
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !477
  br i1 %7, label %8, label %9, !dbg !473

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !478

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.tls_rec_set_public_key_fingerprint, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !481
  br label %16, !dbg !484

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !485

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !487
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !488
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !489
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 4, !dbg !490
  store i8* %13, i8** %15, align 8, !dbg !491
  br label %16, !dbg !492

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !493
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_public_key_fingerprint_algorithm(%struct._TLS_REC*, i8*) #0 !dbg !495 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !496, metadata !66), !dbg !497
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !498, metadata !66), !dbg !499
  br label %5, !dbg !500, !llvm.loop !501

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !502
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !506
  br i1 %7, label %8, label %9, !dbg !502

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !507

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.tls_rec_set_public_key_fingerprint_algorithm, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !510
  br label %16, !dbg !513

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !514

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !516
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !517
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !518
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 5, !dbg !519
  store i8* %13, i8** %15, align 8, !dbg !520
  br label %16, !dbg !521

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !522
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_public_key_size(%struct._TLS_REC*, i64) #0 !dbg !524 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i64, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !525, metadata !66), !dbg !526
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !527, metadata !66), !dbg !528
  br label %5, !dbg !529, !llvm.loop !530

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !531
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !535
  br i1 %7, label %8, label %9, !dbg !531

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !536

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls_rec_set_public_key_size, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !539
  br label %15, !dbg !542

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !543

; <label>:11:                                     ; preds = %10
  %12 = load i64, i64* %4, align 8, !dbg !545
  %13 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !546
  %14 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %13, i32 0, i32 6, !dbg !547
  store i64 %12, i64* %14, align 8, !dbg !548
  br label %15, !dbg !549

; <label>:15:                                     ; preds = %11, %9
  ret void, !dbg !550
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_certificate_fingerprint(%struct._TLS_REC*, i8*) #0 !dbg !552 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !553, metadata !66), !dbg !554
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !555, metadata !66), !dbg !556
  br label %5, !dbg !557, !llvm.loop !558

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !559
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !563
  br i1 %7, label %8, label %9, !dbg !559

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !564

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_rec_set_certificate_fingerprint, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !567
  br label %16, !dbg !570

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !571

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !573
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !574
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !575
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 7, !dbg !576
  store i8* %13, i8** %15, align 8, !dbg !577
  br label %16, !dbg !578

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !579
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_certificate_fingerprint_algorithm(%struct._TLS_REC*, i8*) #0 !dbg !581 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !582, metadata !66), !dbg !583
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !584, metadata !66), !dbg !585
  br label %5, !dbg !586, !llvm.loop !587

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !588
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !592
  br i1 %7, label %8, label %9, !dbg !588

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !593

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.tls_rec_set_certificate_fingerprint_algorithm, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !596
  br label %16, !dbg !599

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !600

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !602
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !603
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !604
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 8, !dbg !605
  store i8* %13, i8** %15, align 8, !dbg !606
  br label %16, !dbg !607

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !608
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_not_after(%struct._TLS_REC*, i8*) #0 !dbg !610 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !611, metadata !66), !dbg !612
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !613, metadata !66), !dbg !614
  br label %5, !dbg !615, !llvm.loop !616

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !617
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !621
  br i1 %7, label %8, label %9, !dbg !617

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !622

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_rec_set_not_after, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !625
  br label %16, !dbg !628

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !629

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !631
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !632
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !633
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 9, !dbg !634
  store i8* %13, i8** %15, align 8, !dbg !635
  br label %16, !dbg !636

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !637
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_not_before(%struct._TLS_REC*, i8*) #0 !dbg !639 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !640, metadata !66), !dbg !641
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !642, metadata !66), !dbg !643
  br label %5, !dbg !644, !llvm.loop !645

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !646
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !650
  br i1 %7, label %8, label %9, !dbg !646

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !651

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_rec_set_not_before, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !654
  br label %16, !dbg !657

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !658

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !660
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !661
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !662
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 10, !dbg !663
  store i8* %13, i8** %15, align 8, !dbg !664
  br label %16, !dbg !665

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !666
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_ephemeral_key_algorithm(%struct._TLS_REC*, i8*) #0 !dbg !668 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !669, metadata !66), !dbg !670
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !671, metadata !66), !dbg !672
  br label %5, !dbg !673, !llvm.loop !674

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !675
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !679
  br i1 %7, label %8, label %9, !dbg !675

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !680

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_rec_set_ephemeral_key_algorithm, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !683
  br label %16, !dbg !686

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !687

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !689
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !690
  %14 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !691
  %15 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %14, i32 0, i32 11, !dbg !692
  store i8* %13, i8** %15, align 8, !dbg !693
  br label %16, !dbg !694

; <label>:16:                                     ; preds = %11, %9
  ret void, !dbg !695
}

; Function Attrs: nounwind uwtable
define void @tls_rec_set_ephemeral_key_size(%struct._TLS_REC*, i64) #0 !dbg !697 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca i64, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !698, metadata !66), !dbg !699
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !700, metadata !66), !dbg !701
  br label %5, !dbg !702, !llvm.loop !703

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !704
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !708
  br i1 %7, label %8, label %9, !dbg !704

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !709

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_rec_set_ephemeral_key_size, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !712
  br label %15, !dbg !715

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !716

; <label>:11:                                     ; preds = %10
  %12 = load i64, i64* %4, align 8, !dbg !718
  %13 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !719
  %14 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %13, i32 0, i32 12, !dbg !720
  store i64 %12, i64* %14, align 8, !dbg !721
  br label %15, !dbg !722

; <label>:15:                                     ; preds = %11, %9
  ret void, !dbg !723
}

; Function Attrs: nounwind uwtable
define void @tls_rec_append_cert(%struct._TLS_REC*, %struct._TLS_CERT_REC*) #0 !dbg !725 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca %struct._TLS_CERT_REC*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !728, metadata !66), !dbg !729
  store %struct._TLS_CERT_REC* %1, %struct._TLS_CERT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %4, metadata !730, metadata !66), !dbg !731
  br label %5, !dbg !732, !llvm.loop !733

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !734
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !738
  br i1 %7, label %8, label %9, !dbg !734

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !739

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_rec_append_cert, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !742
  br label %27, !dbg !745

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !746

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !748, !llvm.loop !749

; <label>:12:                                     ; preds = %11
  %13 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %4, align 8, !dbg !750
  %14 = icmp ne %struct._TLS_CERT_REC* %13, null, !dbg !754
  br i1 %14, label %15, label %16, !dbg !750

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !755

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_rec_append_cert, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !758
  br label %27, !dbg !761

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !762

; <label>:18:                                     ; preds = %17
  %19 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !764
  %20 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %19, i32 0, i32 13, !dbg !765
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !765
  %22 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %4, align 8, !dbg !766
  %23 = bitcast %struct._TLS_CERT_REC* %22 to i8*, !dbg !766
  %24 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %23), !dbg !767
  %25 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !768
  %26 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %25, i32 0, i32 13, !dbg !769
  store %struct._GSList* %24, %struct._GSList** %26, align 8, !dbg !770
  br label %27, !dbg !771

; <label>:27:                                     ; preds = %18, %16, %9
  ret void, !dbg !772
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._TLS_CERT_REC* @tls_cert_create_rec() #0 !dbg !774 {
  %1 = alloca %struct._TLS_CERT_REC*, align 8
  %2 = alloca %struct._TLS_CERT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %2, metadata !777, metadata !66), !dbg !778
  %3 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !779
  %4 = bitcast i8* %3 to %struct._TLS_CERT_REC*, !dbg !780
  store %struct._TLS_CERT_REC* %4, %struct._TLS_CERT_REC** %2, align 8, !dbg !778
  br label %5, !dbg !781, !llvm.loop !782

; <label>:5:                                      ; preds = %0
  %6 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !783
  %7 = icmp ne %struct._TLS_CERT_REC* %6, null, !dbg !787
  br i1 %7, label %8, label %9, !dbg !783

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !788

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_cert_create_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !791
  store %struct._TLS_CERT_REC* null, %struct._TLS_CERT_REC** %1, align 8, !dbg !794
  br label %13, !dbg !794

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !795

; <label>:11:                                     ; preds = %10
  %12 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %2, align 8, !dbg !797
  store %struct._TLS_CERT_REC* %12, %struct._TLS_CERT_REC** %1, align 8, !dbg !798
  br label %13, !dbg !798

; <label>:13:                                     ; preds = %11, %9
  %14 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %1, align 8, !dbg !799
  ret %struct._TLS_CERT_REC* %14, !dbg !799
}

; Function Attrs: nounwind uwtable
define void @tls_cert_rec_append_subject_entry(%struct._TLS_CERT_REC*, %struct._TLS_CERT_ENTRY_REC*) #0 !dbg !800 {
  %3 = alloca %struct._TLS_CERT_REC*, align 8
  %4 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  store %struct._TLS_CERT_REC* %0, %struct._TLS_CERT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %3, metadata !803, metadata !66), !dbg !804
  store %struct._TLS_CERT_ENTRY_REC* %1, %struct._TLS_CERT_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %4, metadata !805, metadata !66), !dbg !806
  br label %5, !dbg !807, !llvm.loop !808

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !809
  %7 = icmp ne %struct._TLS_CERT_REC* %6, null, !dbg !813
  br i1 %7, label %8, label %9, !dbg !809

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !814

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_cert_rec_append_subject_entry, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !817
  br label %27, !dbg !820

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !821

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !823, !llvm.loop !824

; <label>:12:                                     ; preds = %11
  %13 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %4, align 8, !dbg !825
  %14 = icmp ne %struct._TLS_CERT_ENTRY_REC* %13, null, !dbg !829
  br i1 %14, label %15, label %16, !dbg !825

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !830

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_cert_rec_append_subject_entry, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !833
  br label %27, !dbg !836

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !837

; <label>:18:                                     ; preds = %17
  %19 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !839
  %20 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %19, i32 0, i32 0, !dbg !840
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !840
  %22 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %4, align 8, !dbg !841
  %23 = bitcast %struct._TLS_CERT_ENTRY_REC* %22 to i8*, !dbg !841
  %24 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %23), !dbg !842
  %25 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !843
  %26 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %25, i32 0, i32 0, !dbg !844
  store %struct._GSList* %24, %struct._GSList** %26, align 8, !dbg !845
  br label %27, !dbg !846

; <label>:27:                                     ; preds = %18, %16, %9
  ret void, !dbg !847
}

; Function Attrs: nounwind uwtable
define void @tls_cert_rec_append_issuer_entry(%struct._TLS_CERT_REC*, %struct._TLS_CERT_ENTRY_REC*) #0 !dbg !849 {
  %3 = alloca %struct._TLS_CERT_REC*, align 8
  %4 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  store %struct._TLS_CERT_REC* %0, %struct._TLS_CERT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %3, metadata !850, metadata !66), !dbg !851
  store %struct._TLS_CERT_ENTRY_REC* %1, %struct._TLS_CERT_ENTRY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %4, metadata !852, metadata !66), !dbg !853
  br label %5, !dbg !854, !llvm.loop !855

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !856
  %7 = icmp ne %struct._TLS_CERT_REC* %6, null, !dbg !860
  br i1 %7, label %8, label %9, !dbg !856

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !861

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_cert_rec_append_issuer_entry, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !864
  br label %27, !dbg !867

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !868

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !870, !llvm.loop !871

; <label>:12:                                     ; preds = %11
  %13 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %4, align 8, !dbg !872
  %14 = icmp ne %struct._TLS_CERT_ENTRY_REC* %13, null, !dbg !876
  br i1 %14, label %15, label %16, !dbg !872

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !877

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_cert_rec_append_issuer_entry, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !880
  br label %27, !dbg !883

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !884

; <label>:18:                                     ; preds = %17
  %19 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !886
  %20 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %19, i32 0, i32 1, !dbg !887
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !887
  %22 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %4, align 8, !dbg !888
  %23 = bitcast %struct._TLS_CERT_ENTRY_REC* %22 to i8*, !dbg !888
  %24 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %23), !dbg !889
  %25 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %3, align 8, !dbg !890
  %26 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %25, i32 0, i32 1, !dbg !891
  store %struct._GSList* %24, %struct._GSList** %26, align 8, !dbg !892
  br label %27, !dbg !893

; <label>:27:                                     ; preds = %18, %16, %9
  ret void, !dbg !894
}

; Function Attrs: nounwind uwtable
define void @tls_cert_entry_rec_free(%struct._TLS_CERT_ENTRY_REC*) #0 !dbg !896 {
  %2 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  store %struct._TLS_CERT_ENTRY_REC* %0, %struct._TLS_CERT_ENTRY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %2, metadata !899, metadata !66), !dbg !900
  %3 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !901
  %4 = icmp eq %struct._TLS_CERT_ENTRY_REC* %3, null, !dbg !903
  br i1 %4, label %5, label %6, !dbg !904

; <label>:5:                                      ; preds = %1
  br label %35, !dbg !905

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !906, !llvm.loop !907

; <label>:7:                                      ; preds = %6
  %8 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !908
  %9 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %8, i32 0, i32 0, !dbg !912
  %10 = load i8*, i8** %9, align 8, !dbg !912
  %11 = icmp ne i8* %10, null, !dbg !908
  br i1 %11, label %12, label %18, !dbg !908

; <label>:12:                                     ; preds = %7
  %13 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !913
  %14 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %13, i32 0, i32 0, !dbg !916
  %15 = load i8*, i8** %14, align 8, !dbg !916
  call void @g_free(i8* %15), !dbg !917
  %16 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !918
  %17 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %16, i32 0, i32 0, !dbg !919
  store i8* null, i8** %17, align 8, !dbg !920
  br label %18, !dbg !921

; <label>:18:                                     ; preds = %12, %7
  br label %19, !dbg !922

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !924, !llvm.loop !925

; <label>:20:                                     ; preds = %19
  %21 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !926
  %22 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %21, i32 0, i32 1, !dbg !930
  %23 = load i8*, i8** %22, align 8, !dbg !930
  %24 = icmp ne i8* %23, null, !dbg !926
  br i1 %24, label %25, label %31, !dbg !926

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !931
  %27 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %26, i32 0, i32 1, !dbg !934
  %28 = load i8*, i8** %27, align 8, !dbg !934
  call void @g_free(i8* %28), !dbg !935
  %29 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !936
  %30 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %29, i32 0, i32 1, !dbg !937
  store i8* null, i8** %30, align 8, !dbg !938
  br label %31, !dbg !939

; <label>:31:                                     ; preds = %25, %20
  br label %32, !dbg !940

; <label>:32:                                     ; preds = %31
  %33 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %2, align 8, !dbg !942
  %34 = bitcast %struct._TLS_CERT_ENTRY_REC* %33 to i8*, !dbg !942
  call void @g_free(i8* %34), !dbg !943
  br label %35, !dbg !944

; <label>:35:                                     ; preds = %32, %5
  ret void, !dbg !945
}

; Function Attrs: nounwind uwtable
define %struct._TLS_CERT_ENTRY_REC* @tls_cert_entry_create_rec(i8*, i8*) #0 !dbg !947 {
  %3 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !950, metadata !66), !dbg !951
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !952, metadata !66), !dbg !953
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %6, metadata !954, metadata !66), !dbg !955
  %7 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !956
  %8 = bitcast i8* %7 to %struct._TLS_CERT_ENTRY_REC*, !dbg !957
  store %struct._TLS_CERT_ENTRY_REC* %8, %struct._TLS_CERT_ENTRY_REC** %6, align 8, !dbg !955
  br label %9, !dbg !958, !llvm.loop !959

; <label>:9:                                      ; preds = %2
  %10 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %6, align 8, !dbg !960
  %11 = icmp ne %struct._TLS_CERT_ENTRY_REC* %10, null, !dbg !964
  br i1 %11, label %12, label %13, !dbg !960

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !965

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_cert_entry_create_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !968
  store %struct._TLS_CERT_ENTRY_REC* null, %struct._TLS_CERT_ENTRY_REC** %3, align 8, !dbg !971
  br label %25, !dbg !971

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !972

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !974
  %17 = call noalias i8* @g_strdup(i8* %16), !dbg !975
  %18 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %6, align 8, !dbg !976
  %19 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %18, i32 0, i32 0, !dbg !977
  store i8* %17, i8** %19, align 8, !dbg !978
  %20 = load i8*, i8** %5, align 8, !dbg !979
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !980
  %22 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %6, align 8, !dbg !981
  %23 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %22, i32 0, i32 1, !dbg !982
  store i8* %21, i8** %23, align 8, !dbg !983
  %24 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %6, align 8, !dbg !984
  store %struct._TLS_CERT_ENTRY_REC* %24, %struct._TLS_CERT_ENTRY_REC** %3, align 8, !dbg !985
  br label %25, !dbg !985

; <label>:25:                                     ; preds = %15, %13
  %26 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %3, align 8, !dbg !986
  ret %struct._TLS_CERT_ENTRY_REC* %26, !dbg !986
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line97-tls.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !36, !38, !40, !42, !46, !52}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_REC", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "tls.h", directory: "/home/lichi/Desktop/irssi/task1")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_REC", file: !6, line: 30, size: 896, align: 64, elements: !8)
!8 = !{!9, !12, !13, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !7, file: !6, line: 31, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !7, file: !6, line: 32, baseType: !10, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_size", scope: !7, file: !6, line: 33, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 216, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_algorithm", scope: !7, file: !6, line: 35, baseType: !10, size: 64, align: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint", scope: !7, file: !6, line: 36, baseType: !10, size: 64, align: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint_algorithm", scope: !7, file: !6, line: 37, baseType: !10, size: 64, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_size", scope: !7, file: !6, line: 38, baseType: !14, size: 64, align: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint", scope: !7, file: !6, line: 40, baseType: !10, size: 64, align: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint_algorithm", scope: !7, file: !6, line: 41, baseType: !10, size: 64, align: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "not_after", scope: !7, file: !6, line: 43, baseType: !10, size: 64, align: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "not_before", scope: !7, file: !6, line: 44, baseType: !10, size: 64, align: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_algorithm", scope: !7, file: !6, line: 46, baseType: !10, size: 64, align: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_size", scope: !7, file: !6, line: 47, baseType: !14, size: 64, align: 64, offset: 768)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !7, file: !6, line: 49, baseType: !28, size: 64, align: 64, offset: 832)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !30, line: 37, baseType: !31)
!30 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !30, line: 39, size: 128, align: 64, elements: !32)
!32 = !{!33, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !30, line: 41, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !35, line: 77, baseType: !36)
!35 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !30, line: 42, baseType: !28, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !35, line: 46, baseType: !11)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !35, line: 88, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !34, !34}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_REC", file: !6, line: 27, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_REC", file: !6, line: 52, size: 128, align: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !48, file: !6, line: 53, baseType: !28, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !48, file: !6, line: 54, baseType: !28, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_ENTRY_REC", file: !6, line: 28, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_ENTRY_REC", file: !6, line: 57, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !6, line: 58, baseType: !10, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !54, file: !6, line: 59, baseType: !10, size: 64, align: 64, offset: 64)
!58 = !{i32 2, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!61 = distinct !DISubprogram(name: "tls_create_rec", scope: !62, file: !62, line: 23, type: !63, isLocal: false, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !0, variables: !2)
!62 = !DIFile(filename: "tls.c", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DISubroutineType(types: !64)
!64 = !{!4}
!65 = !DILocalVariable(name: "rec", scope: !61, file: !62, line: 25, type: !4)
!66 = !DIExpression()
!67 = !DILocation(line: 25, column: 11, scope: !61)
!68 = !DILocation(line: 25, column: 30, scope: !61)
!69 = !DILocation(line: 25, column: 18, scope: !61)
!70 = !DILocation(line: 26, column: 2, scope: !61)
!71 = distinct !{!71, !70}
!72 = !DILocation(line: 26, column: 10, scope: !73)
!73 = !DILexicalBlockFile(scope: !74, file: !62, discriminator: 1)
!74 = distinct !DILexicalBlock(scope: !75, file: !62, line: 26, column: 10)
!75 = distinct !DILexicalBlock(scope: !61, file: !62, line: 26, column: 4)
!76 = !DILocation(line: 26, column: 14, scope: !73)
!77 = !DILocation(line: 26, column: 5, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !62, discriminator: 2)
!79 = distinct !DILexicalBlock(scope: !74, file: !62, line: 26, column: 3)
!80 = !DILocation(line: 26, column: 14, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !62, discriminator: 3)
!82 = distinct !DILexicalBlock(scope: !74, file: !62, line: 26, column: 12)
!83 = !DILocation(line: 26, column: 98, scope: !81)
!84 = !DILocation(line: 26, column: 7, scope: !85)
!85 = !DILexicalBlockFile(scope: !75, file: !62, discriminator: 4)
!86 = !DILocation(line: 28, column: 9, scope: !61)
!87 = !DILocation(line: 28, column: 2, scope: !61)
!88 = !DILocation(line: 29, column: 1, scope: !61)
!89 = distinct !DISubprogram(name: "tls_rec_free", scope: !62, file: !62, line: 31, type: !90, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !4}
!92 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !89, file: !62, line: 31, type: !4)
!93 = !DILocation(line: 31, column: 28, scope: !89)
!94 = !DILocation(line: 33, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !62, line: 33, column: 6)
!96 = !DILocation(line: 33, column: 14, scope: !95)
!97 = !DILocation(line: 33, column: 6, scope: !89)
!98 = !DILocation(line: 34, column: 3, scope: !95)
!99 = !DILocation(line: 36, column: 2, scope: !89)
!100 = distinct !{!100, !99}
!101 = !DILocation(line: 36, column: 11, scope: !102)
!102 = !DILexicalBlockFile(scope: !103, file: !62, discriminator: 1)
!103 = distinct !DILexicalBlock(scope: !104, file: !62, line: 36, column: 11)
!104 = distinct !DILexicalBlock(scope: !89, file: !62, line: 36, column: 5)
!105 = !DILocation(line: 36, column: 20, scope: !102)
!106 = !DILocation(line: 36, column: 47, scope: !107)
!107 = !DILexicalBlockFile(scope: !108, file: !62, discriminator: 2)
!108 = distinct !DILexicalBlock(scope: !103, file: !62, line: 36, column: 38)
!109 = !DILocation(line: 36, column: 56, scope: !107)
!110 = !DILocation(line: 36, column: 40, scope: !107)
!111 = !DILocation(line: 36, column: 76, scope: !107)
!112 = !DILocation(line: 36, column: 85, scope: !107)
!113 = !DILocation(line: 36, column: 103, scope: !107)
!114 = !DILocation(line: 36, column: 3, scope: !107)
!115 = !DILocation(line: 36, column: 5, scope: !116)
!116 = !DILexicalBlockFile(scope: !104, file: !62, discriminator: 3)
!117 = !DILocation(line: 37, column: 2, scope: !89)
!118 = distinct !{!118, !117}
!119 = !DILocation(line: 37, column: 11, scope: !120)
!120 = !DILexicalBlockFile(scope: !121, file: !62, discriminator: 1)
!121 = distinct !DILexicalBlock(scope: !122, file: !62, line: 37, column: 11)
!122 = distinct !DILexicalBlock(scope: !89, file: !62, line: 37, column: 5)
!123 = !DILocation(line: 37, column: 20, scope: !120)
!124 = !DILocation(line: 37, column: 37, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !62, discriminator: 2)
!126 = distinct !DILexicalBlock(scope: !121, file: !62, line: 37, column: 28)
!127 = !DILocation(line: 37, column: 46, scope: !125)
!128 = !DILocation(line: 37, column: 30, scope: !125)
!129 = !DILocation(line: 37, column: 56, scope: !125)
!130 = !DILocation(line: 37, column: 65, scope: !125)
!131 = !DILocation(line: 37, column: 73, scope: !125)
!132 = !DILocation(line: 37, column: 3, scope: !125)
!133 = !DILocation(line: 37, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !122, file: !62, discriminator: 3)
!135 = !DILocation(line: 38, column: 2, scope: !89)
!136 = distinct !{!136, !135}
!137 = !DILocation(line: 38, column: 11, scope: !138)
!138 = !DILexicalBlockFile(scope: !139, file: !62, discriminator: 1)
!139 = distinct !DILexicalBlock(scope: !140, file: !62, line: 38, column: 11)
!140 = distinct !DILexicalBlock(scope: !89, file: !62, line: 38, column: 5)
!141 = !DILocation(line: 38, column: 20, scope: !138)
!142 = !DILocation(line: 38, column: 51, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !62, discriminator: 2)
!144 = distinct !DILexicalBlock(scope: !139, file: !62, line: 38, column: 42)
!145 = !DILocation(line: 38, column: 60, scope: !143)
!146 = !DILocation(line: 38, column: 44, scope: !143)
!147 = !DILocation(line: 38, column: 84, scope: !143)
!148 = !DILocation(line: 38, column: 93, scope: !143)
!149 = !DILocation(line: 38, column: 115, scope: !143)
!150 = !DILocation(line: 38, column: 3, scope: !143)
!151 = !DILocation(line: 38, column: 5, scope: !152)
!152 = !DILexicalBlockFile(scope: !140, file: !62, discriminator: 3)
!153 = !DILocation(line: 39, column: 2, scope: !89)
!154 = distinct !{!154, !153}
!155 = !DILocation(line: 39, column: 11, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !62, discriminator: 1)
!157 = distinct !DILexicalBlock(scope: !158, file: !62, line: 39, column: 11)
!158 = distinct !DILexicalBlock(scope: !89, file: !62, line: 39, column: 5)
!159 = !DILocation(line: 39, column: 20, scope: !156)
!160 = !DILocation(line: 39, column: 53, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !62, discriminator: 2)
!162 = distinct !DILexicalBlock(scope: !157, file: !62, line: 39, column: 44)
!163 = !DILocation(line: 39, column: 62, scope: !161)
!164 = !DILocation(line: 39, column: 46, scope: !161)
!165 = !DILocation(line: 39, column: 88, scope: !161)
!166 = !DILocation(line: 39, column: 97, scope: !161)
!167 = !DILocation(line: 39, column: 121, scope: !161)
!168 = !DILocation(line: 39, column: 3, scope: !161)
!169 = !DILocation(line: 39, column: 5, scope: !170)
!170 = !DILexicalBlockFile(scope: !158, file: !62, discriminator: 3)
!171 = !DILocation(line: 40, column: 2, scope: !89)
!172 = distinct !{!172, !171}
!173 = !DILocation(line: 40, column: 11, scope: !174)
!174 = !DILexicalBlockFile(scope: !175, file: !62, discriminator: 1)
!175 = distinct !DILexicalBlock(scope: !176, file: !62, line: 40, column: 11)
!176 = distinct !DILexicalBlock(scope: !89, file: !62, line: 40, column: 5)
!177 = !DILocation(line: 40, column: 20, scope: !174)
!178 = !DILocation(line: 40, column: 63, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !62, discriminator: 2)
!180 = distinct !DILexicalBlock(scope: !175, file: !62, line: 40, column: 54)
!181 = !DILocation(line: 40, column: 72, scope: !179)
!182 = !DILocation(line: 40, column: 56, scope: !179)
!183 = !DILocation(line: 40, column: 108, scope: !179)
!184 = !DILocation(line: 40, column: 117, scope: !179)
!185 = !DILocation(line: 40, column: 151, scope: !179)
!186 = !DILocation(line: 40, column: 3, scope: !179)
!187 = !DILocation(line: 40, column: 5, scope: !188)
!188 = !DILexicalBlockFile(scope: !176, file: !62, discriminator: 3)
!189 = !DILocation(line: 41, column: 2, scope: !89)
!190 = distinct !{!190, !189}
!191 = !DILocation(line: 41, column: 11, scope: !192)
!192 = !DILexicalBlockFile(scope: !193, file: !62, discriminator: 1)
!193 = distinct !DILexicalBlock(scope: !194, file: !62, line: 41, column: 11)
!194 = distinct !DILexicalBlock(scope: !89, file: !62, line: 41, column: 5)
!195 = !DILocation(line: 41, column: 20, scope: !192)
!196 = !DILocation(line: 41, column: 54, scope: !197)
!197 = !DILexicalBlockFile(scope: !198, file: !62, discriminator: 2)
!198 = distinct !DILexicalBlock(scope: !193, file: !62, line: 41, column: 45)
!199 = !DILocation(line: 41, column: 63, scope: !197)
!200 = !DILocation(line: 41, column: 47, scope: !197)
!201 = !DILocation(line: 41, column: 90, scope: !197)
!202 = !DILocation(line: 41, column: 99, scope: !197)
!203 = !DILocation(line: 41, column: 124, scope: !197)
!204 = !DILocation(line: 41, column: 3, scope: !197)
!205 = !DILocation(line: 41, column: 5, scope: !206)
!206 = !DILexicalBlockFile(scope: !194, file: !62, discriminator: 3)
!207 = !DILocation(line: 42, column: 2, scope: !89)
!208 = distinct !{!208, !207}
!209 = !DILocation(line: 42, column: 11, scope: !210)
!210 = !DILexicalBlockFile(scope: !211, file: !62, discriminator: 1)
!211 = distinct !DILexicalBlock(scope: !212, file: !62, line: 42, column: 11)
!212 = distinct !DILexicalBlock(scope: !89, file: !62, line: 42, column: 5)
!213 = !DILocation(line: 42, column: 20, scope: !210)
!214 = !DILocation(line: 42, column: 64, scope: !215)
!215 = !DILexicalBlockFile(scope: !216, file: !62, discriminator: 2)
!216 = distinct !DILexicalBlock(scope: !211, file: !62, line: 42, column: 55)
!217 = !DILocation(line: 42, column: 73, scope: !215)
!218 = !DILocation(line: 42, column: 57, scope: !215)
!219 = !DILocation(line: 42, column: 110, scope: !215)
!220 = !DILocation(line: 42, column: 119, scope: !215)
!221 = !DILocation(line: 42, column: 154, scope: !215)
!222 = !DILocation(line: 42, column: 3, scope: !215)
!223 = !DILocation(line: 42, column: 5, scope: !224)
!224 = !DILexicalBlockFile(scope: !212, file: !62, discriminator: 3)
!225 = !DILocation(line: 43, column: 2, scope: !89)
!226 = distinct !{!226, !225}
!227 = !DILocation(line: 43, column: 11, scope: !228)
!228 = !DILexicalBlockFile(scope: !229, file: !62, discriminator: 1)
!229 = distinct !DILexicalBlock(scope: !230, file: !62, line: 43, column: 11)
!230 = distinct !DILexicalBlock(scope: !89, file: !62, line: 43, column: 5)
!231 = !DILocation(line: 43, column: 20, scope: !228)
!232 = !DILocation(line: 43, column: 40, scope: !233)
!233 = !DILexicalBlockFile(scope: !234, file: !62, discriminator: 2)
!234 = distinct !DILexicalBlock(scope: !229, file: !62, line: 43, column: 31)
!235 = !DILocation(line: 43, column: 49, scope: !233)
!236 = !DILocation(line: 43, column: 33, scope: !233)
!237 = !DILocation(line: 43, column: 62, scope: !233)
!238 = !DILocation(line: 43, column: 71, scope: !233)
!239 = !DILocation(line: 43, column: 82, scope: !233)
!240 = !DILocation(line: 43, column: 3, scope: !233)
!241 = !DILocation(line: 43, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !230, file: !62, discriminator: 3)
!243 = !DILocation(line: 44, column: 2, scope: !89)
!244 = distinct !{!244, !243}
!245 = !DILocation(line: 44, column: 11, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !62, discriminator: 1)
!247 = distinct !DILexicalBlock(scope: !248, file: !62, line: 44, column: 11)
!248 = distinct !DILexicalBlock(scope: !89, file: !62, line: 44, column: 5)
!249 = !DILocation(line: 44, column: 20, scope: !246)
!250 = !DILocation(line: 44, column: 41, scope: !251)
!251 = !DILexicalBlockFile(scope: !252, file: !62, discriminator: 2)
!252 = distinct !DILexicalBlock(scope: !247, file: !62, line: 44, column: 32)
!253 = !DILocation(line: 44, column: 50, scope: !251)
!254 = !DILocation(line: 44, column: 34, scope: !251)
!255 = !DILocation(line: 44, column: 64, scope: !251)
!256 = !DILocation(line: 44, column: 73, scope: !251)
!257 = !DILocation(line: 44, column: 85, scope: !251)
!258 = !DILocation(line: 44, column: 3, scope: !251)
!259 = !DILocation(line: 44, column: 5, scope: !260)
!260 = !DILexicalBlockFile(scope: !248, file: !62, discriminator: 3)
!261 = !DILocation(line: 45, column: 2, scope: !89)
!262 = distinct !{!262, !261}
!263 = !DILocation(line: 45, column: 11, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !62, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !266, file: !62, line: 45, column: 11)
!266 = distinct !DILexicalBlock(scope: !89, file: !62, line: 45, column: 5)
!267 = !DILocation(line: 45, column: 20, scope: !264)
!268 = !DILocation(line: 45, column: 54, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !62, discriminator: 2)
!270 = distinct !DILexicalBlock(scope: !265, file: !62, line: 45, column: 45)
!271 = !DILocation(line: 45, column: 63, scope: !269)
!272 = !DILocation(line: 45, column: 47, scope: !269)
!273 = !DILocation(line: 45, column: 90, scope: !269)
!274 = !DILocation(line: 45, column: 99, scope: !269)
!275 = !DILocation(line: 45, column: 124, scope: !269)
!276 = !DILocation(line: 45, column: 3, scope: !269)
!277 = !DILocation(line: 45, column: 5, scope: !278)
!278 = !DILexicalBlockFile(scope: !266, file: !62, discriminator: 3)
!279 = !DILocation(line: 47, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !89, file: !62, line: 47, column: 6)
!281 = !DILocation(line: 47, column: 15, scope: !280)
!282 = !DILocation(line: 47, column: 21, scope: !280)
!283 = !DILocation(line: 47, column: 6, scope: !89)
!284 = !DILocation(line: 48, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !62, line: 47, column: 29)
!286 = !DILocation(line: 48, column: 28, scope: !285)
!287 = !DILocation(line: 48, column: 3, scope: !285)
!288 = !DILocation(line: 49, column: 16, scope: !285)
!289 = !DILocation(line: 49, column: 25, scope: !285)
!290 = !DILocation(line: 49, column: 3, scope: !285)
!291 = !DILocation(line: 50, column: 3, scope: !285)
!292 = !DILocation(line: 50, column: 12, scope: !285)
!293 = !DILocation(line: 50, column: 18, scope: !285)
!294 = !DILocation(line: 51, column: 2, scope: !285)
!295 = !DILocation(line: 53, column: 9, scope: !89)
!296 = !DILocation(line: 53, column: 2, scope: !89)
!297 = !DILocation(line: 54, column: 1, scope: !89)
!298 = !DILocation(line: 54, column: 1, scope: !299)
!299 = !DILexicalBlockFile(scope: !89, file: !62, discriminator: 1)
!300 = distinct !DISubprogram(name: "tls_cert_rec_free", scope: !62, file: !62, line: 174, type: !301, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !46}
!303 = !DILocalVariable(name: "tls_cert_rec", arg: 1, scope: !300, file: !62, line: 174, type: !46)
!304 = !DILocation(line: 174, column: 38, scope: !300)
!305 = !DILocation(line: 176, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !62, line: 176, column: 6)
!307 = !DILocation(line: 176, column: 19, scope: !306)
!308 = !DILocation(line: 176, column: 6, scope: !300)
!309 = !DILocation(line: 177, column: 3, scope: !306)
!310 = !DILocation(line: 179, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !62, line: 179, column: 6)
!312 = !DILocation(line: 179, column: 20, scope: !311)
!313 = !DILocation(line: 179, column: 28, scope: !311)
!314 = !DILocation(line: 179, column: 6, scope: !300)
!315 = !DILocation(line: 180, column: 19, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !62, line: 179, column: 36)
!317 = !DILocation(line: 180, column: 33, scope: !316)
!318 = !DILocation(line: 180, column: 3, scope: !316)
!319 = !DILocation(line: 181, column: 16, scope: !316)
!320 = !DILocation(line: 181, column: 30, scope: !316)
!321 = !DILocation(line: 181, column: 3, scope: !316)
!322 = !DILocation(line: 182, column: 3, scope: !316)
!323 = !DILocation(line: 182, column: 17, scope: !316)
!324 = !DILocation(line: 182, column: 25, scope: !316)
!325 = !DILocation(line: 183, column: 2, scope: !316)
!326 = !DILocation(line: 185, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !300, file: !62, line: 185, column: 6)
!328 = !DILocation(line: 185, column: 20, scope: !327)
!329 = !DILocation(line: 185, column: 27, scope: !327)
!330 = !DILocation(line: 185, column: 6, scope: !300)
!331 = !DILocation(line: 186, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !62, line: 185, column: 35)
!333 = !DILocation(line: 186, column: 33, scope: !332)
!334 = !DILocation(line: 186, column: 3, scope: !332)
!335 = !DILocation(line: 187, column: 16, scope: !332)
!336 = !DILocation(line: 187, column: 30, scope: !332)
!337 = !DILocation(line: 187, column: 3, scope: !332)
!338 = !DILocation(line: 188, column: 3, scope: !332)
!339 = !DILocation(line: 188, column: 17, scope: !332)
!340 = !DILocation(line: 188, column: 24, scope: !332)
!341 = !DILocation(line: 189, column: 2, scope: !332)
!342 = !DILocation(line: 191, column: 9, scope: !300)
!343 = !DILocation(line: 191, column: 2, scope: !300)
!344 = !DILocation(line: 192, column: 1, scope: !300)
!345 = !DILocation(line: 192, column: 1, scope: !346)
!346 = !DILexicalBlockFile(scope: !300, file: !62, discriminator: 1)
!347 = distinct !DISubprogram(name: "tls_rec_set_protocol_version", scope: !62, file: !62, line: 56, type: !348, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !4, !40}
!350 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !347, file: !62, line: 56, type: !4)
!351 = !DILocation(line: 56, column: 44, scope: !347)
!352 = !DILocalVariable(name: "protocol_version", arg: 2, scope: !347, file: !62, line: 56, type: !40)
!353 = !DILocation(line: 56, column: 65, scope: !347)
!354 = !DILocation(line: 58, column: 2, scope: !347)
!355 = distinct !{!355, !354}
!356 = !DILocation(line: 58, column: 10, scope: !357)
!357 = !DILexicalBlockFile(scope: !358, file: !62, discriminator: 1)
!358 = distinct !DILexicalBlock(scope: !359, file: !62, line: 58, column: 10)
!359 = distinct !DILexicalBlock(scope: !347, file: !62, line: 58, column: 4)
!360 = !DILocation(line: 58, column: 18, scope: !357)
!361 = !DILocation(line: 58, column: 5, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !62, discriminator: 2)
!363 = distinct !DILexicalBlock(scope: !358, file: !62, line: 58, column: 3)
!364 = !DILocation(line: 58, column: 14, scope: !365)
!365 = !DILexicalBlockFile(scope: !366, file: !62, discriminator: 3)
!366 = distinct !DILexicalBlock(scope: !358, file: !62, line: 58, column: 12)
!367 = !DILocation(line: 58, column: 102, scope: !365)
!368 = !DILocation(line: 58, column: 113, scope: !369)
!369 = !DILexicalBlockFile(scope: !359, file: !62, discriminator: 4)
!370 = !DILocation(line: 60, column: 39, scope: !347)
!371 = !DILocation(line: 60, column: 30, scope: !347)
!372 = !DILocation(line: 60, column: 2, scope: !347)
!373 = !DILocation(line: 60, column: 11, scope: !347)
!374 = !DILocation(line: 60, column: 28, scope: !347)
!375 = !DILocation(line: 61, column: 1, scope: !347)
!376 = !DILocation(line: 61, column: 1, scope: !377)
!377 = !DILexicalBlockFile(scope: !347, file: !62, discriminator: 1)
!378 = distinct !DISubprogram(name: "tls_rec_set_cipher", scope: !62, file: !62, line: 63, type: !348, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!379 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !378, file: !62, line: 63, type: !4)
!380 = !DILocation(line: 63, column: 34, scope: !378)
!381 = !DILocalVariable(name: "cipher", arg: 2, scope: !378, file: !62, line: 63, type: !40)
!382 = !DILocation(line: 63, column: 55, scope: !378)
!383 = !DILocation(line: 65, column: 2, scope: !378)
!384 = distinct !{!384, !383}
!385 = !DILocation(line: 65, column: 10, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !62, discriminator: 1)
!387 = distinct !DILexicalBlock(scope: !388, file: !62, line: 65, column: 10)
!388 = distinct !DILexicalBlock(scope: !378, file: !62, line: 65, column: 4)
!389 = !DILocation(line: 65, column: 18, scope: !386)
!390 = !DILocation(line: 65, column: 5, scope: !391)
!391 = !DILexicalBlockFile(scope: !392, file: !62, discriminator: 2)
!392 = distinct !DILexicalBlock(scope: !387, file: !62, line: 65, column: 3)
!393 = !DILocation(line: 65, column: 14, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !62, discriminator: 3)
!395 = distinct !DILexicalBlock(scope: !387, file: !62, line: 65, column: 12)
!396 = !DILocation(line: 65, column: 102, scope: !394)
!397 = !DILocation(line: 65, column: 113, scope: !398)
!398 = !DILexicalBlockFile(scope: !388, file: !62, discriminator: 4)
!399 = !DILocation(line: 67, column: 29, scope: !378)
!400 = !DILocation(line: 67, column: 20, scope: !378)
!401 = !DILocation(line: 67, column: 2, scope: !378)
!402 = !DILocation(line: 67, column: 11, scope: !378)
!403 = !DILocation(line: 67, column: 18, scope: !378)
!404 = !DILocation(line: 68, column: 1, scope: !378)
!405 = !DILocation(line: 68, column: 1, scope: !406)
!406 = !DILexicalBlockFile(scope: !378, file: !62, discriminator: 1)
!407 = distinct !DISubprogram(name: "tls_rec_set_cipher_size", scope: !62, file: !62, line: 70, type: !408, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !4, !14}
!410 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !407, file: !62, line: 70, type: !4)
!411 = !DILocation(line: 70, column: 39, scope: !407)
!412 = !DILocalVariable(name: "size", arg: 2, scope: !407, file: !62, line: 70, type: !14)
!413 = !DILocation(line: 70, column: 55, scope: !407)
!414 = !DILocation(line: 72, column: 2, scope: !407)
!415 = distinct !{!415, !414}
!416 = !DILocation(line: 72, column: 10, scope: !417)
!417 = !DILexicalBlockFile(scope: !418, file: !62, discriminator: 1)
!418 = distinct !DILexicalBlock(scope: !419, file: !62, line: 72, column: 10)
!419 = distinct !DILexicalBlock(scope: !407, file: !62, line: 72, column: 4)
!420 = !DILocation(line: 72, column: 18, scope: !417)
!421 = !DILocation(line: 72, column: 5, scope: !422)
!422 = !DILexicalBlockFile(scope: !423, file: !62, discriminator: 2)
!423 = distinct !DILexicalBlock(scope: !418, file: !62, line: 72, column: 3)
!424 = !DILocation(line: 72, column: 14, scope: !425)
!425 = !DILexicalBlockFile(scope: !426, file: !62, discriminator: 3)
!426 = distinct !DILexicalBlock(scope: !418, file: !62, line: 72, column: 12)
!427 = !DILocation(line: 72, column: 102, scope: !425)
!428 = !DILocation(line: 72, column: 113, scope: !429)
!429 = !DILexicalBlockFile(scope: !419, file: !62, discriminator: 4)
!430 = !DILocation(line: 74, column: 25, scope: !407)
!431 = !DILocation(line: 74, column: 2, scope: !407)
!432 = !DILocation(line: 74, column: 11, scope: !407)
!433 = !DILocation(line: 74, column: 23, scope: !407)
!434 = !DILocation(line: 75, column: 1, scope: !407)
!435 = !DILocation(line: 75, column: 1, scope: !436)
!436 = !DILexicalBlockFile(scope: !407, file: !62, discriminator: 1)
!437 = distinct !DISubprogram(name: "tls_rec_set_public_key_algorithm", scope: !62, file: !62, line: 77, type: !348, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!438 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !437, file: !62, line: 77, type: !4)
!439 = !DILocation(line: 77, column: 48, scope: !437)
!440 = !DILocalVariable(name: "algorithm", arg: 2, scope: !437, file: !62, line: 77, type: !40)
!441 = !DILocation(line: 77, column: 69, scope: !437)
!442 = !DILocation(line: 79, column: 2, scope: !437)
!443 = distinct !{!443, !442}
!444 = !DILocation(line: 79, column: 10, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !62, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !447, file: !62, line: 79, column: 10)
!447 = distinct !DILexicalBlock(scope: !437, file: !62, line: 79, column: 4)
!448 = !DILocation(line: 79, column: 18, scope: !445)
!449 = !DILocation(line: 79, column: 5, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !62, discriminator: 2)
!451 = distinct !DILexicalBlock(scope: !446, file: !62, line: 79, column: 3)
!452 = !DILocation(line: 79, column: 14, scope: !453)
!453 = !DILexicalBlockFile(scope: !454, file: !62, discriminator: 3)
!454 = distinct !DILexicalBlock(scope: !446, file: !62, line: 79, column: 12)
!455 = !DILocation(line: 79, column: 102, scope: !453)
!456 = !DILocation(line: 79, column: 113, scope: !457)
!457 = !DILexicalBlockFile(scope: !447, file: !62, discriminator: 4)
!458 = !DILocation(line: 81, column: 43, scope: !437)
!459 = !DILocation(line: 81, column: 34, scope: !437)
!460 = !DILocation(line: 81, column: 2, scope: !437)
!461 = !DILocation(line: 81, column: 11, scope: !437)
!462 = !DILocation(line: 81, column: 32, scope: !437)
!463 = !DILocation(line: 82, column: 1, scope: !437)
!464 = !DILocation(line: 82, column: 1, scope: !465)
!465 = !DILexicalBlockFile(scope: !437, file: !62, discriminator: 1)
!466 = distinct !DISubprogram(name: "tls_rec_set_public_key_fingerprint", scope: !62, file: !62, line: 84, type: !348, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!467 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !466, file: !62, line: 84, type: !4)
!468 = !DILocation(line: 84, column: 50, scope: !466)
!469 = !DILocalVariable(name: "fingerprint", arg: 2, scope: !466, file: !62, line: 84, type: !40)
!470 = !DILocation(line: 84, column: 71, scope: !466)
!471 = !DILocation(line: 86, column: 2, scope: !466)
!472 = distinct !{!472, !471}
!473 = !DILocation(line: 86, column: 10, scope: !474)
!474 = !DILexicalBlockFile(scope: !475, file: !62, discriminator: 1)
!475 = distinct !DILexicalBlock(scope: !476, file: !62, line: 86, column: 10)
!476 = distinct !DILexicalBlock(scope: !466, file: !62, line: 86, column: 4)
!477 = !DILocation(line: 86, column: 18, scope: !474)
!478 = !DILocation(line: 86, column: 5, scope: !479)
!479 = !DILexicalBlockFile(scope: !480, file: !62, discriminator: 2)
!480 = distinct !DILexicalBlock(scope: !475, file: !62, line: 86, column: 3)
!481 = !DILocation(line: 86, column: 14, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !62, discriminator: 3)
!483 = distinct !DILexicalBlock(scope: !475, file: !62, line: 86, column: 12)
!484 = !DILocation(line: 86, column: 102, scope: !482)
!485 = !DILocation(line: 86, column: 113, scope: !486)
!486 = !DILexicalBlockFile(scope: !476, file: !62, discriminator: 4)
!487 = !DILocation(line: 88, column: 45, scope: !466)
!488 = !DILocation(line: 88, column: 36, scope: !466)
!489 = !DILocation(line: 88, column: 2, scope: !466)
!490 = !DILocation(line: 88, column: 11, scope: !466)
!491 = !DILocation(line: 88, column: 34, scope: !466)
!492 = !DILocation(line: 89, column: 1, scope: !466)
!493 = !DILocation(line: 89, column: 1, scope: !494)
!494 = !DILexicalBlockFile(scope: !466, file: !62, discriminator: 1)
!495 = distinct !DISubprogram(name: "tls_rec_set_public_key_fingerprint_algorithm", scope: !62, file: !62, line: 91, type: !348, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!496 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !495, file: !62, line: 91, type: !4)
!497 = !DILocation(line: 91, column: 60, scope: !495)
!498 = !DILocalVariable(name: "algorithm", arg: 2, scope: !495, file: !62, line: 91, type: !40)
!499 = !DILocation(line: 91, column: 81, scope: !495)
!500 = !DILocation(line: 93, column: 2, scope: !495)
!501 = distinct !{!501, !500}
!502 = !DILocation(line: 93, column: 10, scope: !503)
!503 = !DILexicalBlockFile(scope: !504, file: !62, discriminator: 1)
!504 = distinct !DILexicalBlock(scope: !505, file: !62, line: 93, column: 10)
!505 = distinct !DILexicalBlock(scope: !495, file: !62, line: 93, column: 4)
!506 = !DILocation(line: 93, column: 18, scope: !503)
!507 = !DILocation(line: 93, column: 5, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !62, discriminator: 2)
!509 = distinct !DILexicalBlock(scope: !504, file: !62, line: 93, column: 3)
!510 = !DILocation(line: 93, column: 14, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !62, discriminator: 3)
!512 = distinct !DILexicalBlock(scope: !504, file: !62, line: 93, column: 12)
!513 = !DILocation(line: 93, column: 102, scope: !511)
!514 = !DILocation(line: 93, column: 113, scope: !515)
!515 = !DILexicalBlockFile(scope: !505, file: !62, discriminator: 4)
!516 = !DILocation(line: 95, column: 55, scope: !495)
!517 = !DILocation(line: 95, column: 46, scope: !495)
!518 = !DILocation(line: 95, column: 2, scope: !495)
!519 = !DILocation(line: 95, column: 11, scope: !495)
!520 = !DILocation(line: 95, column: 44, scope: !495)
!521 = !DILocation(line: 96, column: 1, scope: !495)
!522 = !DILocation(line: 96, column: 1, scope: !523)
!523 = !DILexicalBlockFile(scope: !495, file: !62, discriminator: 1)
!524 = distinct !DISubprogram(name: "tls_rec_set_public_key_size", scope: !62, file: !62, line: 98, type: !408, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!525 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !524, file: !62, line: 98, type: !4)
!526 = !DILocation(line: 98, column: 43, scope: !524)
!527 = !DILocalVariable(name: "size", arg: 2, scope: !524, file: !62, line: 98, type: !14)
!528 = !DILocation(line: 98, column: 59, scope: !524)
!529 = !DILocation(line: 100, column: 2, scope: !524)
!530 = distinct !{!530, !529}
!531 = !DILocation(line: 100, column: 10, scope: !532)
!532 = !DILexicalBlockFile(scope: !533, file: !62, discriminator: 1)
!533 = distinct !DILexicalBlock(scope: !534, file: !62, line: 100, column: 10)
!534 = distinct !DILexicalBlock(scope: !524, file: !62, line: 100, column: 4)
!535 = !DILocation(line: 100, column: 18, scope: !532)
!536 = !DILocation(line: 100, column: 5, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !62, discriminator: 2)
!538 = distinct !DILexicalBlock(scope: !533, file: !62, line: 100, column: 3)
!539 = !DILocation(line: 100, column: 14, scope: !540)
!540 = !DILexicalBlockFile(scope: !541, file: !62, discriminator: 3)
!541 = distinct !DILexicalBlock(scope: !533, file: !62, line: 100, column: 12)
!542 = !DILocation(line: 100, column: 102, scope: !540)
!543 = !DILocation(line: 100, column: 113, scope: !544)
!544 = !DILexicalBlockFile(scope: !534, file: !62, discriminator: 4)
!545 = !DILocation(line: 101, column: 29, scope: !524)
!546 = !DILocation(line: 101, column: 2, scope: !524)
!547 = !DILocation(line: 101, column: 11, scope: !524)
!548 = !DILocation(line: 101, column: 27, scope: !524)
!549 = !DILocation(line: 102, column: 1, scope: !524)
!550 = !DILocation(line: 102, column: 1, scope: !551)
!551 = !DILexicalBlockFile(scope: !524, file: !62, discriminator: 1)
!552 = distinct !DISubprogram(name: "tls_rec_set_certificate_fingerprint", scope: !62, file: !62, line: 104, type: !348, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!553 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !552, file: !62, line: 104, type: !4)
!554 = !DILocation(line: 104, column: 51, scope: !552)
!555 = !DILocalVariable(name: "fingerprint", arg: 2, scope: !552, file: !62, line: 104, type: !40)
!556 = !DILocation(line: 104, column: 72, scope: !552)
!557 = !DILocation(line: 106, column: 2, scope: !552)
!558 = distinct !{!558, !557}
!559 = !DILocation(line: 106, column: 10, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !62, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !562, file: !62, line: 106, column: 10)
!562 = distinct !DILexicalBlock(scope: !552, file: !62, line: 106, column: 4)
!563 = !DILocation(line: 106, column: 18, scope: !560)
!564 = !DILocation(line: 106, column: 5, scope: !565)
!565 = !DILexicalBlockFile(scope: !566, file: !62, discriminator: 2)
!566 = distinct !DILexicalBlock(scope: !561, file: !62, line: 106, column: 3)
!567 = !DILocation(line: 106, column: 14, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !62, discriminator: 3)
!569 = distinct !DILexicalBlock(scope: !561, file: !62, line: 106, column: 12)
!570 = !DILocation(line: 106, column: 102, scope: !568)
!571 = !DILocation(line: 106, column: 113, scope: !572)
!572 = !DILexicalBlockFile(scope: !562, file: !62, discriminator: 4)
!573 = !DILocation(line: 108, column: 46, scope: !552)
!574 = !DILocation(line: 108, column: 37, scope: !552)
!575 = !DILocation(line: 108, column: 2, scope: !552)
!576 = !DILocation(line: 108, column: 11, scope: !552)
!577 = !DILocation(line: 108, column: 35, scope: !552)
!578 = !DILocation(line: 109, column: 1, scope: !552)
!579 = !DILocation(line: 109, column: 1, scope: !580)
!580 = !DILexicalBlockFile(scope: !552, file: !62, discriminator: 1)
!581 = distinct !DISubprogram(name: "tls_rec_set_certificate_fingerprint_algorithm", scope: !62, file: !62, line: 111, type: !348, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!582 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !581, file: !62, line: 111, type: !4)
!583 = !DILocation(line: 111, column: 61, scope: !581)
!584 = !DILocalVariable(name: "algorithm", arg: 2, scope: !581, file: !62, line: 111, type: !40)
!585 = !DILocation(line: 111, column: 82, scope: !581)
!586 = !DILocation(line: 113, column: 2, scope: !581)
!587 = distinct !{!587, !586}
!588 = !DILocation(line: 113, column: 10, scope: !589)
!589 = !DILexicalBlockFile(scope: !590, file: !62, discriminator: 1)
!590 = distinct !DILexicalBlock(scope: !591, file: !62, line: 113, column: 10)
!591 = distinct !DILexicalBlock(scope: !581, file: !62, line: 113, column: 4)
!592 = !DILocation(line: 113, column: 18, scope: !589)
!593 = !DILocation(line: 113, column: 5, scope: !594)
!594 = !DILexicalBlockFile(scope: !595, file: !62, discriminator: 2)
!595 = distinct !DILexicalBlock(scope: !590, file: !62, line: 113, column: 3)
!596 = !DILocation(line: 113, column: 14, scope: !597)
!597 = !DILexicalBlockFile(scope: !598, file: !62, discriminator: 3)
!598 = distinct !DILexicalBlock(scope: !590, file: !62, line: 113, column: 12)
!599 = !DILocation(line: 113, column: 102, scope: !597)
!600 = !DILocation(line: 113, column: 113, scope: !601)
!601 = !DILexicalBlockFile(scope: !591, file: !62, discriminator: 4)
!602 = !DILocation(line: 115, column: 56, scope: !581)
!603 = !DILocation(line: 115, column: 47, scope: !581)
!604 = !DILocation(line: 115, column: 2, scope: !581)
!605 = !DILocation(line: 115, column: 11, scope: !581)
!606 = !DILocation(line: 115, column: 45, scope: !581)
!607 = !DILocation(line: 116, column: 1, scope: !581)
!608 = !DILocation(line: 116, column: 1, scope: !609)
!609 = !DILexicalBlockFile(scope: !581, file: !62, discriminator: 1)
!610 = distinct !DISubprogram(name: "tls_rec_set_not_after", scope: !62, file: !62, line: 118, type: !348, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!611 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !610, file: !62, line: 118, type: !4)
!612 = !DILocation(line: 118, column: 37, scope: !610)
!613 = !DILocalVariable(name: "not_after", arg: 2, scope: !610, file: !62, line: 118, type: !40)
!614 = !DILocation(line: 118, column: 58, scope: !610)
!615 = !DILocation(line: 120, column: 2, scope: !610)
!616 = distinct !{!616, !615}
!617 = !DILocation(line: 120, column: 10, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !62, discriminator: 1)
!619 = distinct !DILexicalBlock(scope: !620, file: !62, line: 120, column: 10)
!620 = distinct !DILexicalBlock(scope: !610, file: !62, line: 120, column: 4)
!621 = !DILocation(line: 120, column: 18, scope: !618)
!622 = !DILocation(line: 120, column: 5, scope: !623)
!623 = !DILexicalBlockFile(scope: !624, file: !62, discriminator: 2)
!624 = distinct !DILexicalBlock(scope: !619, file: !62, line: 120, column: 3)
!625 = !DILocation(line: 120, column: 14, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !62, discriminator: 3)
!627 = distinct !DILexicalBlock(scope: !619, file: !62, line: 120, column: 12)
!628 = !DILocation(line: 120, column: 102, scope: !626)
!629 = !DILocation(line: 120, column: 113, scope: !630)
!630 = !DILexicalBlockFile(scope: !620, file: !62, discriminator: 4)
!631 = !DILocation(line: 121, column: 32, scope: !610)
!632 = !DILocation(line: 121, column: 23, scope: !610)
!633 = !DILocation(line: 121, column: 2, scope: !610)
!634 = !DILocation(line: 121, column: 11, scope: !610)
!635 = !DILocation(line: 121, column: 21, scope: !610)
!636 = !DILocation(line: 122, column: 1, scope: !610)
!637 = !DILocation(line: 122, column: 1, scope: !638)
!638 = !DILexicalBlockFile(scope: !610, file: !62, discriminator: 1)
!639 = distinct !DISubprogram(name: "tls_rec_set_not_before", scope: !62, file: !62, line: 124, type: !348, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!640 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !639, file: !62, line: 124, type: !4)
!641 = !DILocation(line: 124, column: 38, scope: !639)
!642 = !DILocalVariable(name: "not_before", arg: 2, scope: !639, file: !62, line: 124, type: !40)
!643 = !DILocation(line: 124, column: 59, scope: !639)
!644 = !DILocation(line: 126, column: 2, scope: !639)
!645 = distinct !{!645, !644}
!646 = !DILocation(line: 126, column: 10, scope: !647)
!647 = !DILexicalBlockFile(scope: !648, file: !62, discriminator: 1)
!648 = distinct !DILexicalBlock(scope: !649, file: !62, line: 126, column: 10)
!649 = distinct !DILexicalBlock(scope: !639, file: !62, line: 126, column: 4)
!650 = !DILocation(line: 126, column: 18, scope: !647)
!651 = !DILocation(line: 126, column: 5, scope: !652)
!652 = !DILexicalBlockFile(scope: !653, file: !62, discriminator: 2)
!653 = distinct !DILexicalBlock(scope: !648, file: !62, line: 126, column: 3)
!654 = !DILocation(line: 126, column: 14, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !62, discriminator: 3)
!656 = distinct !DILexicalBlock(scope: !648, file: !62, line: 126, column: 12)
!657 = !DILocation(line: 126, column: 102, scope: !655)
!658 = !DILocation(line: 126, column: 113, scope: !659)
!659 = !DILexicalBlockFile(scope: !649, file: !62, discriminator: 4)
!660 = !DILocation(line: 127, column: 33, scope: !639)
!661 = !DILocation(line: 127, column: 24, scope: !639)
!662 = !DILocation(line: 127, column: 2, scope: !639)
!663 = !DILocation(line: 127, column: 11, scope: !639)
!664 = !DILocation(line: 127, column: 22, scope: !639)
!665 = !DILocation(line: 128, column: 1, scope: !639)
!666 = !DILocation(line: 128, column: 1, scope: !667)
!667 = !DILexicalBlockFile(scope: !639, file: !62, discriminator: 1)
!668 = distinct !DISubprogram(name: "tls_rec_set_ephemeral_key_algorithm", scope: !62, file: !62, line: 130, type: !348, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!669 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !668, file: !62, line: 130, type: !4)
!670 = !DILocation(line: 130, column: 51, scope: !668)
!671 = !DILocalVariable(name: "algorithm", arg: 2, scope: !668, file: !62, line: 130, type: !40)
!672 = !DILocation(line: 130, column: 72, scope: !668)
!673 = !DILocation(line: 132, column: 2, scope: !668)
!674 = distinct !{!674, !673}
!675 = !DILocation(line: 132, column: 10, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !62, discriminator: 1)
!677 = distinct !DILexicalBlock(scope: !678, file: !62, line: 132, column: 10)
!678 = distinct !DILexicalBlock(scope: !668, file: !62, line: 132, column: 4)
!679 = !DILocation(line: 132, column: 18, scope: !676)
!680 = !DILocation(line: 132, column: 5, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !62, discriminator: 2)
!682 = distinct !DILexicalBlock(scope: !677, file: !62, line: 132, column: 3)
!683 = !DILocation(line: 132, column: 14, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !62, discriminator: 3)
!685 = distinct !DILexicalBlock(scope: !677, file: !62, line: 132, column: 12)
!686 = !DILocation(line: 132, column: 102, scope: !684)
!687 = !DILocation(line: 132, column: 113, scope: !688)
!688 = !DILexicalBlockFile(scope: !678, file: !62, discriminator: 4)
!689 = !DILocation(line: 133, column: 46, scope: !668)
!690 = !DILocation(line: 133, column: 37, scope: !668)
!691 = !DILocation(line: 133, column: 2, scope: !668)
!692 = !DILocation(line: 133, column: 11, scope: !668)
!693 = !DILocation(line: 133, column: 35, scope: !668)
!694 = !DILocation(line: 134, column: 1, scope: !668)
!695 = !DILocation(line: 134, column: 1, scope: !696)
!696 = !DILexicalBlockFile(scope: !668, file: !62, discriminator: 1)
!697 = distinct !DISubprogram(name: "tls_rec_set_ephemeral_key_size", scope: !62, file: !62, line: 136, type: !408, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!698 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !697, file: !62, line: 136, type: !4)
!699 = !DILocation(line: 136, column: 46, scope: !697)
!700 = !DILocalVariable(name: "size", arg: 2, scope: !697, file: !62, line: 136, type: !14)
!701 = !DILocation(line: 136, column: 62, scope: !697)
!702 = !DILocation(line: 138, column: 2, scope: !697)
!703 = distinct !{!703, !702}
!704 = !DILocation(line: 138, column: 10, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !62, discriminator: 1)
!706 = distinct !DILexicalBlock(scope: !707, file: !62, line: 138, column: 10)
!707 = distinct !DILexicalBlock(scope: !697, file: !62, line: 138, column: 4)
!708 = !DILocation(line: 138, column: 18, scope: !705)
!709 = !DILocation(line: 138, column: 5, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !62, discriminator: 2)
!711 = distinct !DILexicalBlock(scope: !706, file: !62, line: 138, column: 3)
!712 = !DILocation(line: 138, column: 14, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !62, discriminator: 3)
!714 = distinct !DILexicalBlock(scope: !706, file: !62, line: 138, column: 12)
!715 = !DILocation(line: 138, column: 102, scope: !713)
!716 = !DILocation(line: 138, column: 113, scope: !717)
!717 = !DILexicalBlockFile(scope: !707, file: !62, discriminator: 4)
!718 = !DILocation(line: 139, column: 32, scope: !697)
!719 = !DILocation(line: 139, column: 2, scope: !697)
!720 = !DILocation(line: 139, column: 11, scope: !697)
!721 = !DILocation(line: 139, column: 30, scope: !697)
!722 = !DILocation(line: 140, column: 1, scope: !697)
!723 = !DILocation(line: 140, column: 1, scope: !724)
!724 = !DILexicalBlockFile(scope: !697, file: !62, discriminator: 1)
!725 = distinct !DISubprogram(name: "tls_rec_append_cert", scope: !62, file: !62, line: 142, type: !726, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !4, !46}
!728 = !DILocalVariable(name: "tls_rec", arg: 1, scope: !725, file: !62, line: 142, type: !4)
!729 = !DILocation(line: 142, column: 35, scope: !725)
!730 = !DILocalVariable(name: "tls_cert_rec", arg: 2, scope: !725, file: !62, line: 142, type: !46)
!731 = !DILocation(line: 142, column: 58, scope: !725)
!732 = !DILocation(line: 144, column: 2, scope: !725)
!733 = distinct !{!733, !732}
!734 = !DILocation(line: 144, column: 10, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !62, discriminator: 1)
!736 = distinct !DILexicalBlock(scope: !737, file: !62, line: 144, column: 10)
!737 = distinct !DILexicalBlock(scope: !725, file: !62, line: 144, column: 4)
!738 = !DILocation(line: 144, column: 18, scope: !735)
!739 = !DILocation(line: 144, column: 5, scope: !740)
!740 = !DILexicalBlockFile(scope: !741, file: !62, discriminator: 2)
!741 = distinct !DILexicalBlock(scope: !736, file: !62, line: 144, column: 3)
!742 = !DILocation(line: 144, column: 14, scope: !743)
!743 = !DILexicalBlockFile(scope: !744, file: !62, discriminator: 3)
!744 = distinct !DILexicalBlock(scope: !736, file: !62, line: 144, column: 12)
!745 = !DILocation(line: 144, column: 102, scope: !743)
!746 = !DILocation(line: 144, column: 113, scope: !747)
!747 = !DILexicalBlockFile(scope: !737, file: !62, discriminator: 4)
!748 = !DILocation(line: 145, column: 2, scope: !725)
!749 = distinct !{!749, !748}
!750 = !DILocation(line: 145, column: 10, scope: !751)
!751 = !DILexicalBlockFile(scope: !752, file: !62, discriminator: 1)
!752 = distinct !DILexicalBlock(scope: !753, file: !62, line: 145, column: 10)
!753 = distinct !DILexicalBlock(scope: !725, file: !62, line: 145, column: 4)
!754 = !DILocation(line: 145, column: 23, scope: !751)
!755 = !DILocation(line: 145, column: 5, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !62, discriminator: 2)
!757 = distinct !DILexicalBlock(scope: !752, file: !62, line: 145, column: 3)
!758 = !DILocation(line: 145, column: 14, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !62, discriminator: 3)
!760 = distinct !DILexicalBlock(scope: !752, file: !62, line: 145, column: 12)
!761 = !DILocation(line: 145, column: 107, scope: !759)
!762 = !DILocation(line: 145, column: 118, scope: !763)
!763 = !DILexicalBlockFile(scope: !753, file: !62, discriminator: 4)
!764 = !DILocation(line: 147, column: 34, scope: !725)
!765 = !DILocation(line: 147, column: 43, scope: !725)
!766 = !DILocation(line: 147, column: 50, scope: !725)
!767 = !DILocation(line: 147, column: 19, scope: !725)
!768 = !DILocation(line: 147, column: 2, scope: !725)
!769 = !DILocation(line: 147, column: 11, scope: !725)
!770 = !DILocation(line: 147, column: 17, scope: !725)
!771 = !DILocation(line: 148, column: 1, scope: !725)
!772 = !DILocation(line: 148, column: 1, scope: !773)
!773 = !DILexicalBlockFile(scope: !725, file: !62, discriminator: 1)
!774 = distinct !DISubprogram(name: "tls_cert_create_rec", scope: !62, file: !62, line: 150, type: !775, isLocal: false, isDefinition: true, scopeLine: 151, isOptimized: false, unit: !0, variables: !2)
!775 = !DISubroutineType(types: !776)
!776 = !{!46}
!777 = !DILocalVariable(name: "rec", scope: !774, file: !62, line: 152, type: !46)
!778 = !DILocation(line: 152, column: 16, scope: !774)
!779 = !DILocation(line: 152, column: 40, scope: !774)
!780 = !DILocation(line: 152, column: 23, scope: !774)
!781 = !DILocation(line: 153, column: 2, scope: !774)
!782 = distinct !{!782, !781}
!783 = !DILocation(line: 153, column: 10, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !62, discriminator: 1)
!785 = distinct !DILexicalBlock(scope: !786, file: !62, line: 153, column: 10)
!786 = distinct !DILexicalBlock(scope: !774, file: !62, line: 153, column: 4)
!787 = !DILocation(line: 153, column: 14, scope: !784)
!788 = !DILocation(line: 153, column: 5, scope: !789)
!789 = !DILexicalBlockFile(scope: !790, file: !62, discriminator: 2)
!790 = distinct !DILexicalBlock(scope: !785, file: !62, line: 153, column: 3)
!791 = !DILocation(line: 153, column: 14, scope: !792)
!792 = !DILexicalBlockFile(scope: !793, file: !62, discriminator: 3)
!793 = distinct !DILexicalBlock(scope: !785, file: !62, line: 153, column: 12)
!794 = !DILocation(line: 153, column: 98, scope: !792)
!795 = !DILocation(line: 153, column: 7, scope: !796)
!796 = !DILexicalBlockFile(scope: !786, file: !62, discriminator: 4)
!797 = !DILocation(line: 155, column: 9, scope: !774)
!798 = !DILocation(line: 155, column: 2, scope: !774)
!799 = !DILocation(line: 156, column: 1, scope: !774)
!800 = distinct !DISubprogram(name: "tls_cert_rec_append_subject_entry", scope: !62, file: !62, line: 158, type: !801, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !46, !52}
!803 = !DILocalVariable(name: "tls_cert_rec", arg: 1, scope: !800, file: !62, line: 158, type: !46)
!804 = !DILocation(line: 158, column: 54, scope: !800)
!805 = !DILocalVariable(name: "tls_cert_entry_rec", arg: 2, scope: !800, file: !62, line: 158, type: !52)
!806 = !DILocation(line: 158, column: 88, scope: !800)
!807 = !DILocation(line: 160, column: 2, scope: !800)
!808 = distinct !{!808, !807}
!809 = !DILocation(line: 160, column: 10, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !62, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !812, file: !62, line: 160, column: 10)
!812 = distinct !DILexicalBlock(scope: !800, file: !62, line: 160, column: 4)
!813 = !DILocation(line: 160, column: 23, scope: !810)
!814 = !DILocation(line: 160, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !62, discriminator: 2)
!816 = distinct !DILexicalBlock(scope: !811, file: !62, line: 160, column: 3)
!817 = !DILocation(line: 160, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !62, discriminator: 3)
!819 = distinct !DILexicalBlock(scope: !811, file: !62, line: 160, column: 12)
!820 = !DILocation(line: 160, column: 107, scope: !818)
!821 = !DILocation(line: 160, column: 118, scope: !822)
!822 = !DILexicalBlockFile(scope: !812, file: !62, discriminator: 4)
!823 = !DILocation(line: 161, column: 2, scope: !800)
!824 = distinct !{!824, !823}
!825 = !DILocation(line: 161, column: 10, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !62, discriminator: 1)
!827 = distinct !DILexicalBlock(scope: !828, file: !62, line: 161, column: 10)
!828 = distinct !DILexicalBlock(scope: !800, file: !62, line: 161, column: 4)
!829 = !DILocation(line: 161, column: 29, scope: !826)
!830 = !DILocation(line: 161, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !62, discriminator: 2)
!832 = distinct !DILexicalBlock(scope: !827, file: !62, line: 161, column: 3)
!833 = !DILocation(line: 161, column: 14, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !62, discriminator: 3)
!835 = distinct !DILexicalBlock(scope: !827, file: !62, line: 161, column: 12)
!836 = !DILocation(line: 161, column: 113, scope: !834)
!837 = !DILocation(line: 161, column: 124, scope: !838)
!838 = !DILexicalBlockFile(scope: !828, file: !62, discriminator: 4)
!839 = !DILocation(line: 163, column: 41, scope: !800)
!840 = !DILocation(line: 163, column: 55, scope: !800)
!841 = !DILocation(line: 163, column: 64, scope: !800)
!842 = !DILocation(line: 163, column: 26, scope: !800)
!843 = !DILocation(line: 163, column: 2, scope: !800)
!844 = !DILocation(line: 163, column: 16, scope: !800)
!845 = !DILocation(line: 163, column: 24, scope: !800)
!846 = !DILocation(line: 164, column: 1, scope: !800)
!847 = !DILocation(line: 164, column: 1, scope: !848)
!848 = !DILexicalBlockFile(scope: !800, file: !62, discriminator: 1)
!849 = distinct !DISubprogram(name: "tls_cert_rec_append_issuer_entry", scope: !62, file: !62, line: 166, type: !801, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!850 = !DILocalVariable(name: "tls_cert_rec", arg: 1, scope: !849, file: !62, line: 166, type: !46)
!851 = !DILocation(line: 166, column: 53, scope: !849)
!852 = !DILocalVariable(name: "tls_cert_entry_rec", arg: 2, scope: !849, file: !62, line: 166, type: !52)
!853 = !DILocation(line: 166, column: 87, scope: !849)
!854 = !DILocation(line: 168, column: 2, scope: !849)
!855 = distinct !{!855, !854}
!856 = !DILocation(line: 168, column: 10, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !62, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !859, file: !62, line: 168, column: 10)
!859 = distinct !DILexicalBlock(scope: !849, file: !62, line: 168, column: 4)
!860 = !DILocation(line: 168, column: 23, scope: !857)
!861 = !DILocation(line: 168, column: 5, scope: !862)
!862 = !DILexicalBlockFile(scope: !863, file: !62, discriminator: 2)
!863 = distinct !DILexicalBlock(scope: !858, file: !62, line: 168, column: 3)
!864 = !DILocation(line: 168, column: 14, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !62, discriminator: 3)
!866 = distinct !DILexicalBlock(scope: !858, file: !62, line: 168, column: 12)
!867 = !DILocation(line: 168, column: 107, scope: !865)
!868 = !DILocation(line: 168, column: 118, scope: !869)
!869 = !DILexicalBlockFile(scope: !859, file: !62, discriminator: 4)
!870 = !DILocation(line: 169, column: 2, scope: !849)
!871 = distinct !{!871, !870}
!872 = !DILocation(line: 169, column: 10, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !62, discriminator: 1)
!874 = distinct !DILexicalBlock(scope: !875, file: !62, line: 169, column: 10)
!875 = distinct !DILexicalBlock(scope: !849, file: !62, line: 169, column: 4)
!876 = !DILocation(line: 169, column: 29, scope: !873)
!877 = !DILocation(line: 169, column: 5, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !62, discriminator: 2)
!879 = distinct !DILexicalBlock(scope: !874, file: !62, line: 169, column: 3)
!880 = !DILocation(line: 169, column: 14, scope: !881)
!881 = !DILexicalBlockFile(scope: !882, file: !62, discriminator: 3)
!882 = distinct !DILexicalBlock(scope: !874, file: !62, line: 169, column: 12)
!883 = !DILocation(line: 169, column: 113, scope: !881)
!884 = !DILocation(line: 169, column: 124, scope: !885)
!885 = !DILexicalBlockFile(scope: !875, file: !62, discriminator: 4)
!886 = !DILocation(line: 171, column: 40, scope: !849)
!887 = !DILocation(line: 171, column: 54, scope: !849)
!888 = !DILocation(line: 171, column: 62, scope: !849)
!889 = !DILocation(line: 171, column: 25, scope: !849)
!890 = !DILocation(line: 171, column: 2, scope: !849)
!891 = !DILocation(line: 171, column: 16, scope: !849)
!892 = !DILocation(line: 171, column: 23, scope: !849)
!893 = !DILocation(line: 172, column: 1, scope: !849)
!894 = !DILocation(line: 172, column: 1, scope: !895)
!895 = !DILexicalBlockFile(scope: !849, file: !62, discriminator: 1)
!896 = distinct !DISubprogram(name: "tls_cert_entry_rec_free", scope: !62, file: !62, line: 205, type: !897, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !52}
!899 = !DILocalVariable(name: "tls_cert_entry", arg: 1, scope: !896, file: !62, line: 205, type: !52)
!900 = !DILocation(line: 205, column: 50, scope: !896)
!901 = !DILocation(line: 207, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !896, file: !62, line: 207, column: 6)
!903 = !DILocation(line: 207, column: 21, scope: !902)
!904 = !DILocation(line: 207, column: 6, scope: !896)
!905 = !DILocation(line: 208, column: 3, scope: !902)
!906 = !DILocation(line: 210, column: 2, scope: !896)
!907 = distinct !{!907, !906}
!908 = !DILocation(line: 210, column: 11, scope: !909)
!909 = !DILexicalBlockFile(scope: !910, file: !62, discriminator: 1)
!910 = distinct !DILexicalBlock(scope: !911, file: !62, line: 210, column: 11)
!911 = distinct !DILexicalBlock(scope: !896, file: !62, line: 210, column: 5)
!912 = !DILocation(line: 210, column: 27, scope: !909)
!913 = !DILocation(line: 210, column: 42, scope: !914)
!914 = !DILexicalBlockFile(scope: !915, file: !62, discriminator: 2)
!915 = distinct !DILexicalBlock(scope: !910, file: !62, line: 210, column: 33)
!916 = !DILocation(line: 210, column: 58, scope: !914)
!917 = !DILocation(line: 210, column: 35, scope: !914)
!918 = !DILocation(line: 210, column: 66, scope: !914)
!919 = !DILocation(line: 210, column: 82, scope: !914)
!920 = !DILocation(line: 210, column: 88, scope: !914)
!921 = !DILocation(line: 210, column: 3, scope: !914)
!922 = !DILocation(line: 210, column: 5, scope: !923)
!923 = !DILexicalBlockFile(scope: !911, file: !62, discriminator: 3)
!924 = !DILocation(line: 211, column: 2, scope: !896)
!925 = distinct !{!925, !924}
!926 = !DILocation(line: 211, column: 11, scope: !927)
!927 = !DILexicalBlockFile(scope: !928, file: !62, discriminator: 1)
!928 = distinct !DILexicalBlock(scope: !929, file: !62, line: 211, column: 11)
!929 = distinct !DILexicalBlock(scope: !896, file: !62, line: 211, column: 5)
!930 = !DILocation(line: 211, column: 27, scope: !927)
!931 = !DILocation(line: 211, column: 43, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !62, discriminator: 2)
!933 = distinct !DILexicalBlock(scope: !928, file: !62, line: 211, column: 34)
!934 = !DILocation(line: 211, column: 59, scope: !932)
!935 = !DILocation(line: 211, column: 36, scope: !932)
!936 = !DILocation(line: 211, column: 68, scope: !932)
!937 = !DILocation(line: 211, column: 84, scope: !932)
!938 = !DILocation(line: 211, column: 91, scope: !932)
!939 = !DILocation(line: 211, column: 3, scope: !932)
!940 = !DILocation(line: 211, column: 5, scope: !941)
!941 = !DILexicalBlockFile(scope: !929, file: !62, discriminator: 3)
!942 = !DILocation(line: 213, column: 9, scope: !896)
!943 = !DILocation(line: 213, column: 2, scope: !896)
!944 = !DILocation(line: 214, column: 1, scope: !896)
!945 = !DILocation(line: 214, column: 1, scope: !946)
!946 = !DILexicalBlockFile(scope: !896, file: !62, discriminator: 1)
!947 = distinct !DISubprogram(name: "tls_cert_entry_create_rec", scope: !62, file: !62, line: 194, type: !948, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!948 = !DISubroutineType(types: !949)
!949 = !{!52, !40, !40}
!950 = !DILocalVariable(name: "name", arg: 1, scope: !947, file: !62, line: 194, type: !40)
!951 = !DILocation(line: 194, column: 59, scope: !947)
!952 = !DILocalVariable(name: "value", arg: 2, scope: !947, file: !62, line: 194, type: !40)
!953 = !DILocation(line: 194, column: 77, scope: !947)
!954 = !DILocalVariable(name: "rec", scope: !947, file: !62, line: 196, type: !52)
!955 = !DILocation(line: 196, column: 22, scope: !947)
!956 = !DILocation(line: 196, column: 52, scope: !947)
!957 = !DILocation(line: 196, column: 29, scope: !947)
!958 = !DILocation(line: 197, column: 2, scope: !947)
!959 = distinct !{!959, !958}
!960 = !DILocation(line: 197, column: 10, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !62, discriminator: 1)
!962 = distinct !DILexicalBlock(scope: !963, file: !62, line: 197, column: 10)
!963 = distinct !DILexicalBlock(scope: !947, file: !62, line: 197, column: 4)
!964 = !DILocation(line: 197, column: 14, scope: !961)
!965 = !DILocation(line: 197, column: 5, scope: !966)
!966 = !DILexicalBlockFile(scope: !967, file: !62, discriminator: 2)
!967 = distinct !DILexicalBlock(scope: !962, file: !62, line: 197, column: 3)
!968 = !DILocation(line: 197, column: 14, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !62, discriminator: 3)
!970 = distinct !DILexicalBlock(scope: !962, file: !62, line: 197, column: 12)
!971 = !DILocation(line: 197, column: 98, scope: !969)
!972 = !DILocation(line: 197, column: 7, scope: !973)
!973 = !DILexicalBlockFile(scope: !963, file: !62, discriminator: 4)
!974 = !DILocation(line: 199, column: 23, scope: !947)
!975 = !DILocation(line: 199, column: 14, scope: !947)
!976 = !DILocation(line: 199, column: 2, scope: !947)
!977 = !DILocation(line: 199, column: 7, scope: !947)
!978 = !DILocation(line: 199, column: 12, scope: !947)
!979 = !DILocation(line: 200, column: 24, scope: !947)
!980 = !DILocation(line: 200, column: 15, scope: !947)
!981 = !DILocation(line: 200, column: 2, scope: !947)
!982 = !DILocation(line: 200, column: 7, scope: !947)
!983 = !DILocation(line: 200, column: 13, scope: !947)
!984 = !DILocation(line: 202, column: 9, scope: !947)
!985 = !DILocation(line: 202, column: 2, scope: !947)
!986 = !DILocation(line: 203, column: 1, scope: !947)
