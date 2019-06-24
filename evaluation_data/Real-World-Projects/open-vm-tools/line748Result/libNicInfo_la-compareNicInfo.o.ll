; ModuleID = './libNicInfo_la-compareNicInfo.o.i'
source_filename = "./libNicInfo_la-compareNicInfo.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DhcpConfigInfo = type { i32, i8* }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon, %struct.anon.0 }
%struct.anon = type { i32, %struct.TypedIpAddress* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.InetAddress = type { i32, i8* }
%struct.anon.0 = type { i32, i8** }
%struct.GuestNicV3 = type { i8*, %struct.anon.1, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.1 = type { i32, %struct.IpAddressEntry* }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }
%struct.NicInfoV3 = type { %struct.anon.2, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.2 = type { i32, %struct.GuestNicV3* }
%struct.anon.3 = type { i32, %struct.InetCidrRouteEntry* }

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_DhcpConfigInfo(%struct.DhcpConfigInfo*, %struct.DhcpConfigInfo*) #0 !dbg !40 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DhcpConfigInfo*, align 8
  %5 = alloca %struct.DhcpConfigInfo*, align 8
  store %struct.DhcpConfigInfo* %0, %struct.DhcpConfigInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DhcpConfigInfo** %4, metadata !59, metadata !60), !dbg !61
  store %struct.DhcpConfigInfo* %1, %struct.DhcpConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DhcpConfigInfo** %5, metadata !62, metadata !60), !dbg !63
  br label %6, !dbg !64, !llvm.loop !65

; <label>:6:                                      ; preds = %2
  %7 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %4, align 8, !dbg !66
  %8 = icmp ne %struct.DhcpConfigInfo* %7, null, !dbg !70
  br i1 %8, label %13, label %9, !dbg !71

; <label>:9:                                      ; preds = %6
  %10 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !72
  %11 = icmp ne %struct.DhcpConfigInfo* %10, null, !dbg !74
  br i1 %11, label %13, label %12, !dbg !75

; <label>:12:                                     ; preds = %9
  store i8 1, i8* %3, align 1, !dbg !76
  br label %49, !dbg !76

; <label>:13:                                     ; preds = %9, %6
  %14 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %4, align 8, !dbg !79
  %15 = icmp ne %struct.DhcpConfigInfo* %14, null, !dbg !82
  br i1 %15, label %19, label %16, !dbg !83

; <label>:16:                                     ; preds = %13
  %17 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !84
  %18 = icmp ne %struct.DhcpConfigInfo* %17, null, !dbg !86
  br i1 %18, label %25, label %19, !dbg !87

; <label>:19:                                     ; preds = %16, %13
  %20 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %4, align 8, !dbg !88
  %21 = icmp ne %struct.DhcpConfigInfo* %20, null, !dbg !90
  br i1 %21, label %22, label %26, !dbg !91

; <label>:22:                                     ; preds = %19
  %23 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !92
  %24 = icmp ne %struct.DhcpConfigInfo* %23, null, !dbg !94
  br i1 %24, label %26, label %25, !dbg !95

; <label>:25:                                     ; preds = %22, %16
  store i8 0, i8* %3, align 1, !dbg !96
  br label %49, !dbg !96

; <label>:26:                                     ; preds = %22, %19
  br label %27

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !99

; <label>:28:                                     ; preds = %27
  %29 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %4, align 8, !dbg !101
  %30 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %29, i32 0, i32 0, !dbg !102
  %31 = load i32, i32* %30, align 8, !dbg !102
  %32 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !103
  %33 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %32, i32 0, i32 0, !dbg !104
  %34 = load i32, i32* %33, align 8, !dbg !104
  %35 = icmp eq i32 %31, %34, !dbg !105
  br i1 %35, label %36, label %45, !dbg !106

; <label>:36:                                     ; preds = %28
  %37 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %4, align 8, !dbg !107
  %38 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %37, i32 0, i32 1, !dbg !108
  %39 = load i8*, i8** %38, align 8, !dbg !108
  %40 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !109
  %41 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %40, i32 0, i32 1, !dbg !110
  %42 = load i8*, i8** %41, align 8, !dbg !110
  %43 = call i32 @strcmp(i8* %39, i8* %42) #4, !dbg !111
  %44 = icmp eq i32 %43, 0, !dbg !112
  br label %45

; <label>:45:                                     ; preds = %36, %28
  %46 = phi i1 [ false, %28 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32, !dbg !113
  %48 = trunc i32 %47 to i8, !dbg !115
  store i8 %48, i8* %3, align 1, !dbg !116
  br label %49, !dbg !116

; <label>:49:                                     ; preds = %45, %25, %12
  %50 = load i8, i8* %3, align 1, !dbg !117
  ret i8 %50, !dbg !117
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_DnsConfigInfo(%struct.DnsConfigInfo*, %struct.DnsConfigInfo*) #0 !dbg !118 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DnsConfigInfo*, align 8
  %5 = alloca %struct.DnsConfigInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TypedIpAddress*, align 8
  %9 = alloca %struct.TypedIpAddress*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store %struct.DnsConfigInfo* %0, %struct.DnsConfigInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %4, metadata !157, metadata !60), !dbg !158
  store %struct.DnsConfigInfo* %1, %struct.DnsConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %5, metadata !159, metadata !60), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %6, metadata !161, metadata !60), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %7, metadata !163, metadata !60), !dbg !164
  br label %12, !dbg !165, !llvm.loop !166

; <label>:12:                                     ; preds = %2
  %13 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !167
  %14 = icmp ne %struct.DnsConfigInfo* %13, null, !dbg !171
  br i1 %14, label %19, label %15, !dbg !172

; <label>:15:                                     ; preds = %12
  %16 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !173
  %17 = icmp ne %struct.DnsConfigInfo* %16, null, !dbg !175
  br i1 %17, label %19, label %18, !dbg !176

; <label>:18:                                     ; preds = %15
  store i8 1, i8* %3, align 1, !dbg !177
  br label %178, !dbg !177

; <label>:19:                                     ; preds = %15, %12
  %20 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !180
  %21 = icmp ne %struct.DnsConfigInfo* %20, null, !dbg !183
  br i1 %21, label %25, label %22, !dbg !184

; <label>:22:                                     ; preds = %19
  %23 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !185
  %24 = icmp ne %struct.DnsConfigInfo* %23, null, !dbg !187
  br i1 %24, label %31, label %25, !dbg !188

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !189
  %27 = icmp ne %struct.DnsConfigInfo* %26, null, !dbg !191
  br i1 %27, label %28, label %32, !dbg !192

; <label>:28:                                     ; preds = %25
  %29 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !193
  %30 = icmp ne %struct.DnsConfigInfo* %29, null, !dbg !195
  br i1 %30, label %32, label %31, !dbg !196

; <label>:31:                                     ; preds = %28, %22
  store i8 0, i8* %3, align 1, !dbg !197
  br label %178, !dbg !197

; <label>:32:                                     ; preds = %28, %25
  br label %33

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !200

; <label>:34:                                     ; preds = %33
  %35 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !202
  %36 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %35, i32 0, i32 0, !dbg !204
  %37 = load i8**, i8*** %36, align 8, !dbg !204
  %38 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !205
  %39 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %38, i32 0, i32 0, !dbg !206
  %40 = load i8**, i8*** %39, align 8, !dbg !206
  %41 = call signext i8 @GuestInfo_IsEqual_DnsHostname(i8** %37, i8** %40), !dbg !207
  %42 = icmp ne i8 %41, 0, !dbg !207
  br i1 %42, label %43, label %72, !dbg !208

; <label>:43:                                     ; preds = %34
  %44 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !209
  %45 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %44, i32 0, i32 1, !dbg !210
  %46 = load i8**, i8*** %45, align 8, !dbg !210
  %47 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !211
  %48 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %47, i32 0, i32 1, !dbg !212
  %49 = load i8**, i8*** %48, align 8, !dbg !212
  %50 = call signext i8 @GuestInfo_IsEqual_DnsHostname(i8** %46, i8** %49), !dbg !213
  %51 = icmp ne i8 %50, 0, !dbg !213
  br i1 %51, label %52, label %72, !dbg !214

; <label>:52:                                     ; preds = %43
  %53 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !215
  %54 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %53, i32 0, i32 2, !dbg !216
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0, !dbg !217
  %56 = load i32, i32* %55, align 8, !dbg !217
  %57 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !218
  %58 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %57, i32 0, i32 2, !dbg !219
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0, !dbg !220
  %60 = load i32, i32* %59, align 8, !dbg !220
  %61 = icmp ne i32 %56, %60, !dbg !221
  br i1 %61, label %72, label %62, !dbg !222

; <label>:62:                                     ; preds = %52
  %63 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !223
  %64 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %63, i32 0, i32 3, !dbg !224
  %65 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %64, i32 0, i32 0, !dbg !225
  %66 = load i32, i32* %65, align 8, !dbg !225
  %67 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !226
  %68 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %67, i32 0, i32 3, !dbg !227
  %69 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %68, i32 0, i32 0, !dbg !228
  %70 = load i32, i32* %69, align 8, !dbg !228
  %71 = icmp ne i32 %66, %70, !dbg !229
  br i1 %71, label %72, label %73, !dbg !230

; <label>:72:                                     ; preds = %62, %52, %43, %34
  store i8 0, i8* %3, align 1, !dbg !232
  br label %178, !dbg !232

; <label>:73:                                     ; preds = %62
  store i32 0, i32* %6, align 4, !dbg !234
  br label %74, !dbg !236

; <label>:74:                                     ; preds = %122, %73
  %75 = load i32, i32* %6, align 4, !dbg !237
  %76 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !240
  %77 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %76, i32 0, i32 2, !dbg !241
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 0, !dbg !242
  %79 = load i32, i32* %78, align 8, !dbg !242
  %80 = icmp ult i32 %75, %79, !dbg !243
  br i1 %80, label %81, label %125, !dbg !244

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %8, metadata !245, metadata !60), !dbg !247
  %82 = load i32, i32* %6, align 4, !dbg !248
  %83 = zext i32 %82 to i64, !dbg !249
  %84 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !250
  %85 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %84, i32 0, i32 2, !dbg !251
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 1, !dbg !252
  %87 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %86, align 8, !dbg !252
  %88 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %87, i64 %83, !dbg !249
  store %struct.TypedIpAddress* %88, %struct.TypedIpAddress** %8, align 8, !dbg !247
  store i32 0, i32* %7, align 4, !dbg !253
  br label %89, !dbg !255

; <label>:89:                                     ; preds = %110, %81
  %90 = load i32, i32* %7, align 4, !dbg !256
  %91 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !259
  %92 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %91, i32 0, i32 2, !dbg !260
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0, !dbg !261
  %94 = load i32, i32* %93, align 8, !dbg !261
  %95 = icmp ult i32 %90, %94, !dbg !262
  br i1 %95, label %96, label %113, !dbg !263

; <label>:96:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %9, metadata !264, metadata !60), !dbg !266
  %97 = load i32, i32* %7, align 4, !dbg !267
  %98 = zext i32 %97 to i64, !dbg !268
  %99 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !269
  %100 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %99, i32 0, i32 2, !dbg !270
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 1, !dbg !271
  %102 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %101, align 8, !dbg !271
  %103 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %102, i64 %98, !dbg !268
  store %struct.TypedIpAddress* %103, %struct.TypedIpAddress** %9, align 8, !dbg !266
  %104 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %8, align 8, !dbg !272
  %105 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %9, align 8, !dbg !274
  %106 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %104, %struct.TypedIpAddress* %105), !dbg !275
  %107 = icmp ne i8 %106, 0, !dbg !275
  br i1 %107, label %108, label %109, !dbg !276

; <label>:108:                                    ; preds = %96
  br label %113, !dbg !277

; <label>:109:                                    ; preds = %96
  br label %110, !dbg !279

; <label>:110:                                    ; preds = %109
  %111 = load i32, i32* %7, align 4, !dbg !280
  %112 = add i32 %111, 1, !dbg !280
  store i32 %112, i32* %7, align 4, !dbg !280
  br label %89, !dbg !282, !llvm.loop !283

; <label>:113:                                    ; preds = %108, %89
  %114 = load i32, i32* %7, align 4, !dbg !285
  %115 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !287
  %116 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %115, i32 0, i32 2, !dbg !288
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 0, !dbg !289
  %118 = load i32, i32* %117, align 8, !dbg !289
  %119 = icmp eq i32 %114, %118, !dbg !290
  br i1 %119, label %120, label %121, !dbg !291

; <label>:120:                                    ; preds = %113
  store i8 0, i8* %3, align 1, !dbg !292
  br label %178, !dbg !292

; <label>:121:                                    ; preds = %113
  br label %122, !dbg !294

; <label>:122:                                    ; preds = %121
  %123 = load i32, i32* %6, align 4, !dbg !295
  %124 = add i32 %123, 1, !dbg !295
  store i32 %124, i32* %6, align 4, !dbg !295
  br label %74, !dbg !297, !llvm.loop !298

; <label>:125:                                    ; preds = %74
  store i32 0, i32* %6, align 4, !dbg !300
  br label %126, !dbg !302

; <label>:126:                                    ; preds = %174, %125
  %127 = load i32, i32* %6, align 4, !dbg !303
  %128 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !306
  %129 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %128, i32 0, i32 3, !dbg !307
  %130 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %129, i32 0, i32 0, !dbg !308
  %131 = load i32, i32* %130, align 8, !dbg !308
  %132 = icmp ult i32 %127, %131, !dbg !309
  br i1 %132, label %133, label %177, !dbg !310

; <label>:133:                                    ; preds = %126
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !311, metadata !60), !dbg !313
  %134 = load i32, i32* %6, align 4, !dbg !314
  %135 = zext i32 %134 to i64, !dbg !315
  %136 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !316
  %137 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %136, i32 0, i32 3, !dbg !317
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 1, !dbg !318
  %139 = load i8**, i8*** %138, align 8, !dbg !318
  %140 = getelementptr inbounds i8*, i8** %139, i64 %135, !dbg !315
  store i8** %140, i8*** %10, align 8, !dbg !313
  store i32 0, i32* %7, align 4, !dbg !319
  br label %141, !dbg !321

; <label>:141:                                    ; preds = %162, %133
  %142 = load i32, i32* %7, align 4, !dbg !322
  %143 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !325
  %144 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %143, i32 0, i32 3, !dbg !326
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %144, i32 0, i32 0, !dbg !327
  %146 = load i32, i32* %145, align 8, !dbg !327
  %147 = icmp ult i32 %142, %146, !dbg !328
  br i1 %147, label %148, label %165, !dbg !329

; <label>:148:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !330, metadata !60), !dbg !332
  %149 = load i32, i32* %7, align 4, !dbg !333
  %150 = zext i32 %149 to i64, !dbg !334
  %151 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !335
  %152 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %151, i32 0, i32 3, !dbg !336
  %153 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %152, i32 0, i32 1, !dbg !337
  %154 = load i8**, i8*** %153, align 8, !dbg !337
  %155 = getelementptr inbounds i8*, i8** %154, i64 %150, !dbg !334
  store i8** %155, i8*** %11, align 8, !dbg !332
  %156 = load i8**, i8*** %10, align 8, !dbg !338
  %157 = load i8**, i8*** %11, align 8, !dbg !340
  %158 = call signext i8 @GuestInfo_IsEqual_DnsHostname(i8** %156, i8** %157), !dbg !341
  %159 = icmp ne i8 %158, 0, !dbg !341
  br i1 %159, label %160, label %161, !dbg !342

; <label>:160:                                    ; preds = %148
  br label %165, !dbg !343

; <label>:161:                                    ; preds = %148
  br label %162, !dbg !345

; <label>:162:                                    ; preds = %161
  %163 = load i32, i32* %7, align 4, !dbg !346
  %164 = add i32 %163, 1, !dbg !346
  store i32 %164, i32* %7, align 4, !dbg !346
  br label %141, !dbg !348, !llvm.loop !349

; <label>:165:                                    ; preds = %160, %141
  %166 = load i32, i32* %7, align 4, !dbg !351
  %167 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !353
  %168 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %167, i32 0, i32 3, !dbg !354
  %169 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %168, i32 0, i32 0, !dbg !355
  %170 = load i32, i32* %169, align 8, !dbg !355
  %171 = icmp eq i32 %166, %170, !dbg !356
  br i1 %171, label %172, label %173, !dbg !357

; <label>:172:                                    ; preds = %165
  store i8 0, i8* %3, align 1, !dbg !358
  br label %178, !dbg !358

; <label>:173:                                    ; preds = %165
  br label %174, !dbg !360

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %6, align 4, !dbg !361
  %176 = add i32 %175, 1, !dbg !361
  store i32 %176, i32* %6, align 4, !dbg !361
  br label %126, !dbg !363, !llvm.loop !364

; <label>:177:                                    ; preds = %126
  store i8 1, i8* %3, align 1, !dbg !366
  br label %178, !dbg !366

; <label>:178:                                    ; preds = %177, %172, %120, %72, %31, %18
  %179 = load i8, i8* %3, align 1, !dbg !367
  ret i8 %179, !dbg !367
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_DnsHostname(i8**, i8**) #0 !dbg !368 {
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !373, metadata !60), !dbg !374
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !375, metadata !60), !dbg !376
  br label %6, !dbg !377, !llvm.loop !378

; <label>:6:                                      ; preds = %2
  %7 = load i8**, i8*** %4, align 8, !dbg !379
  %8 = icmp ne i8** %7, null, !dbg !383
  br i1 %8, label %13, label %9, !dbg !384

; <label>:9:                                      ; preds = %6
  %10 = load i8**, i8*** %5, align 8, !dbg !385
  %11 = icmp ne i8** %10, null, !dbg !387
  br i1 %11, label %13, label %12, !dbg !388

; <label>:12:                                     ; preds = %9
  store i8 1, i8* %3, align 1, !dbg !389
  br label %37, !dbg !389

; <label>:13:                                     ; preds = %9, %6
  %14 = load i8**, i8*** %4, align 8, !dbg !392
  %15 = icmp ne i8** %14, null, !dbg !395
  br i1 %15, label %19, label %16, !dbg !396

; <label>:16:                                     ; preds = %13
  %17 = load i8**, i8*** %5, align 8, !dbg !397
  %18 = icmp ne i8** %17, null, !dbg !399
  br i1 %18, label %25, label %19, !dbg !400

; <label>:19:                                     ; preds = %16, %13
  %20 = load i8**, i8*** %4, align 8, !dbg !401
  %21 = icmp ne i8** %20, null, !dbg !403
  br i1 %21, label %22, label %26, !dbg !404

; <label>:22:                                     ; preds = %19
  %23 = load i8**, i8*** %5, align 8, !dbg !405
  %24 = icmp ne i8** %23, null, !dbg !407
  br i1 %24, label %26, label %25, !dbg !408

; <label>:25:                                     ; preds = %22, %16
  store i8 0, i8* %3, align 1, !dbg !409
  br label %37, !dbg !409

; <label>:26:                                     ; preds = %22, %19
  br label %27

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !412

; <label>:28:                                     ; preds = %27
  %29 = load i8**, i8*** %4, align 8, !dbg !414
  %30 = load i8*, i8** %29, align 8, !dbg !415
  %31 = load i8**, i8*** %5, align 8, !dbg !416
  %32 = load i8*, i8** %31, align 8, !dbg !417
  %33 = call i32 @strcasecmp(i8* %30, i8* %32) #4, !dbg !418
  %34 = icmp eq i32 %33, 0, !dbg !419
  %35 = select i1 %34, i32 1, i32 0, !dbg !418
  %36 = trunc i32 %35 to i8, !dbg !418
  store i8 %36, i8* %3, align 1, !dbg !420
  br label %37, !dbg !420

; <label>:37:                                     ; preds = %28, %25, %12
  %38 = load i8, i8* %3, align 1, !dbg !421
  ret i8 %38, !dbg !421
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress*, %struct.TypedIpAddress*) #0 !dbg !422 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TypedIpAddress*, align 8
  %5 = alloca %struct.TypedIpAddress*, align 8
  store %struct.TypedIpAddress* %0, %struct.TypedIpAddress** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %4, metadata !427, metadata !60), !dbg !428
  store %struct.TypedIpAddress* %1, %struct.TypedIpAddress** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %5, metadata !429, metadata !60), !dbg !430
  br label %6, !dbg !431, !llvm.loop !432

; <label>:6:                                      ; preds = %2
  %7 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !433
  %8 = icmp ne %struct.TypedIpAddress* %7, null, !dbg !437
  br i1 %8, label %13, label %9, !dbg !438

; <label>:9:                                      ; preds = %6
  %10 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !439
  %11 = icmp ne %struct.TypedIpAddress* %10, null, !dbg !441
  br i1 %11, label %13, label %12, !dbg !442

; <label>:12:                                     ; preds = %9
  store i8 1, i8* %3, align 1, !dbg !443
  br label %54, !dbg !443

; <label>:13:                                     ; preds = %9, %6
  %14 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !446
  %15 = icmp ne %struct.TypedIpAddress* %14, null, !dbg !449
  br i1 %15, label %19, label %16, !dbg !450

; <label>:16:                                     ; preds = %13
  %17 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !451
  %18 = icmp ne %struct.TypedIpAddress* %17, null, !dbg !453
  br i1 %18, label %25, label %19, !dbg !454

; <label>:19:                                     ; preds = %16, %13
  %20 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !455
  %21 = icmp ne %struct.TypedIpAddress* %20, null, !dbg !457
  br i1 %21, label %22, label %26, !dbg !458

; <label>:22:                                     ; preds = %19
  %23 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !459
  %24 = icmp ne %struct.TypedIpAddress* %23, null, !dbg !461
  br i1 %24, label %26, label %25, !dbg !462

; <label>:25:                                     ; preds = %22, %16
  store i8 0, i8* %3, align 1, !dbg !463
  br label %54, !dbg !463

; <label>:26:                                     ; preds = %22, %19
  br label %27

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !466

; <label>:28:                                     ; preds = %27
  %29 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !468
  %30 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %29, i32 0, i32 0, !dbg !470
  %31 = load i32, i32* %30, align 8, !dbg !470
  %32 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !471
  %33 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %32, i32 0, i32 0, !dbg !472
  %34 = load i32, i32* %33, align 8, !dbg !472
  %35 = icmp ne i32 %31, %34, !dbg !473
  br i1 %35, label %52, label %36, !dbg !474

; <label>:36:                                     ; preds = %28
  %37 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !475
  %38 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %37, i32 0, i32 1, !dbg !476
  %39 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %38, i32 0, i32 1, !dbg !477
  %40 = load i8*, i8** %39, align 8, !dbg !477
  %41 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !478
  %42 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %41, i32 0, i32 1, !dbg !479
  %43 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %42, i32 0, i32 1, !dbg !480
  %44 = load i8*, i8** %43, align 8, !dbg !480
  %45 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !481
  %46 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %45, i32 0, i32 1, !dbg !482
  %47 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %46, i32 0, i32 0, !dbg !483
  %48 = load i32, i32* %47, align 8, !dbg !483
  %49 = zext i32 %48 to i64, !dbg !481
  %50 = call i32 @memcmp(i8* %40, i8* %44, i64 %49) #4, !dbg !484
  %51 = icmp ne i32 %50, 0, !dbg !484
  br i1 %51, label %52, label %53, !dbg !485

; <label>:52:                                     ; preds = %36, %28
  store i8 0, i8* %3, align 1, !dbg !487
  br label %54, !dbg !487

; <label>:53:                                     ; preds = %36
  store i8 1, i8* %3, align 1, !dbg !489
  br label %54, !dbg !489

; <label>:54:                                     ; preds = %53, %52, %25, %12
  %55 = load i8, i8* %3, align 1, !dbg !490
  ret i8 %55, !dbg !490
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_GuestNicV3(%struct.GuestNicV3*, %struct.GuestNicV3*) #0 !dbg !491 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.GuestNicV3*, align 8
  %5 = alloca %struct.GuestNicV3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.IpAddressEntry*, align 8
  %9 = alloca %struct.IpAddressEntry*, align 8
  store %struct.GuestNicV3* %0, %struct.GuestNicV3** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %4, metadata !530, metadata !60), !dbg !531
  store %struct.GuestNicV3* %1, %struct.GuestNicV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %5, metadata !532, metadata !60), !dbg !533
  call void @llvm.dbg.declare(metadata i32* %6, metadata !534, metadata !60), !dbg !535
  call void @llvm.dbg.declare(metadata i32* %7, metadata !536, metadata !60), !dbg !537
  br label %10, !dbg !538, !llvm.loop !539

; <label>:10:                                     ; preds = %2
  %11 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !540
  %12 = icmp ne %struct.GuestNicV3* %11, null, !dbg !544
  br i1 %12, label %17, label %13, !dbg !545

; <label>:13:                                     ; preds = %10
  %14 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !546
  %15 = icmp ne %struct.GuestNicV3* %14, null, !dbg !548
  br i1 %15, label %17, label %16, !dbg !549

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %3, align 1, !dbg !550
  br label %149, !dbg !550

; <label>:17:                                     ; preds = %13, %10
  %18 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !553
  %19 = icmp ne %struct.GuestNicV3* %18, null, !dbg !556
  br i1 %19, label %23, label %20, !dbg !557

; <label>:20:                                     ; preds = %17
  %21 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !558
  %22 = icmp ne %struct.GuestNicV3* %21, null, !dbg !560
  br i1 %22, label %29, label %23, !dbg !561

; <label>:23:                                     ; preds = %20, %17
  %24 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !562
  %25 = icmp ne %struct.GuestNicV3* %24, null, !dbg !564
  br i1 %25, label %26, label %30, !dbg !565

; <label>:26:                                     ; preds = %23
  %27 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !566
  %28 = icmp ne %struct.GuestNicV3* %27, null, !dbg !568
  br i1 %28, label %30, label %29, !dbg !569

; <label>:29:                                     ; preds = %26, %20
  store i8 0, i8* %3, align 1, !dbg !570
  br label %149, !dbg !570

; <label>:30:                                     ; preds = %26, %23
  br label %31

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !573

; <label>:32:                                     ; preds = %31
  %33 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !575
  %34 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %33, i32 0, i32 0, !dbg !577
  %35 = load i8*, i8** %34, align 8, !dbg !577
  %36 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !578
  %37 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %36, i32 0, i32 0, !dbg !579
  %38 = load i8*, i8** %37, align 8, !dbg !579
  %39 = call i32 @strcasecmp(i8* %35, i8* %38) #4, !dbg !580
  %40 = icmp ne i32 %39, 0, !dbg !581
  br i1 %40, label %41, label %42, !dbg !582

; <label>:41:                                     ; preds = %32
  store i8 0, i8* %3, align 1, !dbg !583
  br label %149, !dbg !583

; <label>:42:                                     ; preds = %32
  %43 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !585
  %44 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %43, i32 0, i32 1, !dbg !587
  %45 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %44, i32 0, i32 0, !dbg !588
  %46 = load i32, i32* %45, align 8, !dbg !588
  %47 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !589
  %48 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %47, i32 0, i32 1, !dbg !590
  %49 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %48, i32 0, i32 0, !dbg !591
  %50 = load i32, i32* %49, align 8, !dbg !591
  %51 = icmp ne i32 %46, %50, !dbg !592
  br i1 %51, label %52, label %53, !dbg !593

; <label>:52:                                     ; preds = %42
  store i8 0, i8* %3, align 1, !dbg !594
  br label %149, !dbg !594

; <label>:53:                                     ; preds = %42
  store i32 0, i32* %6, align 4, !dbg !596
  br label %54, !dbg !598

; <label>:54:                                     ; preds = %102, %53
  %55 = load i32, i32* %6, align 4, !dbg !599
  %56 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !602
  %57 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %56, i32 0, i32 1, !dbg !603
  %58 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %57, i32 0, i32 0, !dbg !604
  %59 = load i32, i32* %58, align 8, !dbg !604
  %60 = icmp ult i32 %55, %59, !dbg !605
  br i1 %60, label %61, label %105, !dbg !606

; <label>:61:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %8, metadata !607, metadata !60), !dbg !609
  %62 = load i32, i32* %6, align 4, !dbg !610
  %63 = zext i32 %62 to i64, !dbg !611
  %64 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !612
  %65 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %64, i32 0, i32 1, !dbg !613
  %66 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %65, i32 0, i32 1, !dbg !614
  %67 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %66, align 8, !dbg !614
  %68 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %67, i64 %63, !dbg !611
  store %struct.IpAddressEntry* %68, %struct.IpAddressEntry** %8, align 8, !dbg !609
  store i32 0, i32* %7, align 4, !dbg !615
  br label %69, !dbg !617

; <label>:69:                                     ; preds = %90, %61
  %70 = load i32, i32* %7, align 4, !dbg !618
  %71 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !621
  %72 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %71, i32 0, i32 1, !dbg !622
  %73 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %72, i32 0, i32 0, !dbg !623
  %74 = load i32, i32* %73, align 8, !dbg !623
  %75 = icmp ult i32 %70, %74, !dbg !624
  br i1 %75, label %76, label %93, !dbg !625

; <label>:76:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %9, metadata !626, metadata !60), !dbg !628
  %77 = load i32, i32* %7, align 4, !dbg !629
  %78 = zext i32 %77 to i64, !dbg !630
  %79 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !631
  %80 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %79, i32 0, i32 1, !dbg !632
  %81 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %80, i32 0, i32 1, !dbg !633
  %82 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %81, align 8, !dbg !633
  %83 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %82, i64 %78, !dbg !630
  store %struct.IpAddressEntry* %83, %struct.IpAddressEntry** %9, align 8, !dbg !628
  %84 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %8, align 8, !dbg !634
  %85 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %9, align 8, !dbg !636
  %86 = call signext i8 @GuestInfo_IsEqual_IpAddressEntry(%struct.IpAddressEntry* %84, %struct.IpAddressEntry* %85), !dbg !637
  %87 = icmp ne i8 %86, 0, !dbg !637
  br i1 %87, label %88, label %89, !dbg !638

; <label>:88:                                     ; preds = %76
  br label %93, !dbg !639

; <label>:89:                                     ; preds = %76
  br label %90, !dbg !641

; <label>:90:                                     ; preds = %89
  %91 = load i32, i32* %7, align 4, !dbg !642
  %92 = add i32 %91, 1, !dbg !642
  store i32 %92, i32* %7, align 4, !dbg !642
  br label %69, !dbg !644, !llvm.loop !645

; <label>:93:                                     ; preds = %88, %69
  %94 = load i32, i32* %7, align 4, !dbg !647
  %95 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !649
  %96 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %95, i32 0, i32 1, !dbg !650
  %97 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %96, i32 0, i32 0, !dbg !651
  %98 = load i32, i32* %97, align 8, !dbg !651
  %99 = icmp eq i32 %94, %98, !dbg !652
  br i1 %99, label %100, label %101, !dbg !653

; <label>:100:                                    ; preds = %93
  store i8 0, i8* %3, align 1, !dbg !654
  br label %149, !dbg !654

; <label>:101:                                    ; preds = %93
  br label %102, !dbg !656

; <label>:102:                                    ; preds = %101
  %103 = load i32, i32* %6, align 4, !dbg !657
  %104 = add i32 %103, 1, !dbg !657
  store i32 %104, i32* %6, align 4, !dbg !657
  br label %54, !dbg !659, !llvm.loop !660

; <label>:105:                                    ; preds = %54
  %106 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !662
  %107 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %106, i32 0, i32 2, !dbg !663
  %108 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %107, align 8, !dbg !663
  %109 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !664
  %110 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %109, i32 0, i32 2, !dbg !665
  %111 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %110, align 8, !dbg !665
  %112 = call signext i8 @GuestInfo_IsEqual_DnsConfigInfo(%struct.DnsConfigInfo* %108, %struct.DnsConfigInfo* %111), !dbg !666
  %113 = sext i8 %112 to i32, !dbg !666
  %114 = icmp ne i32 %113, 0, !dbg !666
  br i1 %114, label %115, label %145, !dbg !667

; <label>:115:                                    ; preds = %105
  %116 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !668
  %117 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %116, i32 0, i32 3, !dbg !669
  %118 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %117, align 8, !dbg !669
  %119 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !670
  %120 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %119, i32 0, i32 3, !dbg !671
  %121 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %120, align 8, !dbg !671
  %122 = call signext i8 @GuestInfo_IsEqual_WinsConfigInfo(%struct.WinsConfigInfo* %118, %struct.WinsConfigInfo* %121), !dbg !672
  %123 = sext i8 %122 to i32, !dbg !672
  %124 = icmp ne i32 %123, 0, !dbg !672
  br i1 %124, label %125, label %145, !dbg !673

; <label>:125:                                    ; preds = %115
  %126 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !674
  %127 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %126, i32 0, i32 4, !dbg !675
  %128 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %127, align 8, !dbg !675
  %129 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !676
  %130 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %129, i32 0, i32 4, !dbg !677
  %131 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %130, align 8, !dbg !677
  %132 = call signext i8 @GuestInfo_IsEqual_DhcpConfigInfo(%struct.DhcpConfigInfo* %128, %struct.DhcpConfigInfo* %131), !dbg !678
  %133 = sext i8 %132 to i32, !dbg !678
  %134 = icmp ne i32 %133, 0, !dbg !678
  br i1 %134, label %135, label %145, !dbg !679

; <label>:135:                                    ; preds = %125
  %136 = load %struct.GuestNicV3*, %struct.GuestNicV3** %4, align 8, !dbg !680
  %137 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %136, i32 0, i32 5, !dbg !681
  %138 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %137, align 8, !dbg !681
  %139 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !682
  %140 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %139, i32 0, i32 5, !dbg !683
  %141 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %140, align 8, !dbg !683
  %142 = call signext i8 @GuestInfo_IsEqual_DhcpConfigInfo(%struct.DhcpConfigInfo* %138, %struct.DhcpConfigInfo* %141), !dbg !684
  %143 = sext i8 %142 to i32, !dbg !684
  %144 = icmp ne i32 %143, 0, !dbg !685
  br label %145

; <label>:145:                                    ; preds = %135, %125, %115, %105
  %146 = phi i1 [ false, %125 ], [ false, %115 ], [ false, %105 ], [ %144, %135 ]
  %147 = zext i1 %146 to i32, !dbg !687
  %148 = trunc i32 %147 to i8, !dbg !689
  store i8 %148, i8* %3, align 1, !dbg !690
  br label %149, !dbg !690

; <label>:149:                                    ; preds = %145, %100, %52, %41, %29, %16
  %150 = load i8, i8* %3, align 1, !dbg !691
  ret i8 %150, !dbg !691
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_IpAddressEntry(%struct.IpAddressEntry*, %struct.IpAddressEntry*) #0 !dbg !692 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.IpAddressEntry*, align 8
  %5 = alloca %struct.IpAddressEntry*, align 8
  store %struct.IpAddressEntry* %0, %struct.IpAddressEntry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %4, metadata !697, metadata !60), !dbg !698
  store %struct.IpAddressEntry* %1, %struct.IpAddressEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %5, metadata !699, metadata !60), !dbg !700
  br label %6, !dbg !701, !llvm.loop !702

; <label>:6:                                      ; preds = %2
  %7 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !703
  %8 = icmp ne %struct.IpAddressEntry* %7, null, !dbg !707
  br i1 %8, label %13, label %9, !dbg !708

; <label>:9:                                      ; preds = %6
  %10 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !709
  %11 = icmp ne %struct.IpAddressEntry* %10, null, !dbg !711
  br i1 %11, label %13, label %12, !dbg !712

; <label>:12:                                     ; preds = %9
  store i8 1, i8* %3, align 1, !dbg !713
  br label %112, !dbg !713

; <label>:13:                                     ; preds = %9, %6
  %14 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !716
  %15 = icmp ne %struct.IpAddressEntry* %14, null, !dbg !719
  br i1 %15, label %19, label %16, !dbg !720

; <label>:16:                                     ; preds = %13
  %17 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !721
  %18 = icmp ne %struct.IpAddressEntry* %17, null, !dbg !723
  br i1 %18, label %25, label %19, !dbg !724

; <label>:19:                                     ; preds = %16, %13
  %20 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !725
  %21 = icmp ne %struct.IpAddressEntry* %20, null, !dbg !727
  br i1 %21, label %22, label %26, !dbg !728

; <label>:22:                                     ; preds = %19
  %23 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !729
  %24 = icmp ne %struct.IpAddressEntry* %23, null, !dbg !731
  br i1 %24, label %26, label %25, !dbg !732

; <label>:25:                                     ; preds = %22, %16
  store i8 0, i8* %3, align 1, !dbg !733
  br label %112, !dbg !733

; <label>:26:                                     ; preds = %22, %19
  br label %27

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !736

; <label>:28:                                     ; preds = %27
  %29 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !738
  %30 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %29, i32 0, i32 0, !dbg !739
  %31 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !740
  %32 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %31, i32 0, i32 0, !dbg !741
  %33 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %30, %struct.TypedIpAddress* %32), !dbg !742
  %34 = sext i8 %33 to i32, !dbg !742
  %35 = icmp ne i32 %34, 0, !dbg !742
  br i1 %35, label %36, label %108, !dbg !743

; <label>:36:                                     ; preds = %28
  %37 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !744
  %38 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %37, i32 0, i32 1, !dbg !745
  %39 = load i32, i32* %38, align 8, !dbg !745
  %40 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !746
  %41 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %40, i32 0, i32 1, !dbg !747
  %42 = load i32, i32* %41, align 8, !dbg !747
  %43 = icmp eq i32 %39, %42, !dbg !748
  br i1 %43, label %44, label %108, !dbg !749

; <label>:44:                                     ; preds = %36
  %45 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !750
  %46 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %45, i32 0, i32 2, !dbg !751
  %47 = load i32*, i32** %46, align 8, !dbg !751
  %48 = icmp eq i32* %47, null, !dbg !752
  br i1 %48, label %49, label %54, !dbg !753

; <label>:49:                                     ; preds = %44
  %50 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !754
  %51 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %50, i32 0, i32 2, !dbg !756
  %52 = load i32*, i32** %51, align 8, !dbg !756
  %53 = icmp eq i32* %52, null, !dbg !757
  br i1 %53, label %74, label %54, !dbg !758

; <label>:54:                                     ; preds = %49, %44
  %55 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !759
  %56 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %55, i32 0, i32 2, !dbg !760
  %57 = load i32*, i32** %56, align 8, !dbg !760
  %58 = icmp ne i32* %57, null, !dbg !761
  br i1 %58, label %59, label %108, !dbg !762

; <label>:59:                                     ; preds = %54
  %60 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !763
  %61 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %60, i32 0, i32 2, !dbg !764
  %62 = load i32*, i32** %61, align 8, !dbg !764
  %63 = icmp ne i32* %62, null, !dbg !765
  br i1 %63, label %64, label %108, !dbg !766

; <label>:64:                                     ; preds = %59
  %65 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !767
  %66 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %65, i32 0, i32 2, !dbg !768
  %67 = load i32*, i32** %66, align 8, !dbg !768
  %68 = load i32, i32* %67, align 4, !dbg !769
  %69 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !770
  %70 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %69, i32 0, i32 2, !dbg !771
  %71 = load i32*, i32** %70, align 8, !dbg !771
  %72 = load i32, i32* %71, align 4, !dbg !772
  %73 = icmp eq i32 %68, %72, !dbg !773
  br i1 %73, label %74, label %108, !dbg !774

; <label>:74:                                     ; preds = %64, %49
  %75 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !775
  %76 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %75, i32 0, i32 3, !dbg !776
  %77 = load i32*, i32** %76, align 8, !dbg !776
  %78 = icmp eq i32* %77, null, !dbg !777
  br i1 %78, label %79, label %84, !dbg !778

; <label>:79:                                     ; preds = %74
  %80 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !779
  %81 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %80, i32 0, i32 3, !dbg !780
  %82 = load i32*, i32** %81, align 8, !dbg !780
  %83 = icmp eq i32* %82, null, !dbg !781
  br i1 %83, label %106, label %84, !dbg !782

; <label>:84:                                     ; preds = %79, %74
  %85 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !783
  %86 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %85, i32 0, i32 3, !dbg !784
  %87 = load i32*, i32** %86, align 8, !dbg !784
  %88 = icmp ne i32* %87, null, !dbg !785
  br i1 %88, label %89, label %104, !dbg !786

; <label>:89:                                     ; preds = %84
  %90 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !787
  %91 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %90, i32 0, i32 3, !dbg !788
  %92 = load i32*, i32** %91, align 8, !dbg !788
  %93 = icmp ne i32* %92, null, !dbg !789
  br i1 %93, label %94, label %104, !dbg !790

; <label>:94:                                     ; preds = %89
  %95 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %4, align 8, !dbg !791
  %96 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %95, i32 0, i32 3, !dbg !792
  %97 = load i32*, i32** %96, align 8, !dbg !792
  %98 = load i32, i32* %97, align 4, !dbg !793
  %99 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !794
  %100 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %99, i32 0, i32 3, !dbg !795
  %101 = load i32*, i32** %100, align 8, !dbg !795
  %102 = load i32, i32* %101, align 4, !dbg !796
  %103 = icmp eq i32 %98, %102, !dbg !797
  br label %104

; <label>:104:                                    ; preds = %94, %89, %84
  %105 = phi i1 [ false, %89 ], [ false, %84 ], [ %103, %94 ]
  br label %106, !dbg !798

; <label>:106:                                    ; preds = %104, %79
  %107 = phi i1 [ true, %79 ], [ %105, %104 ]
  br label %108

; <label>:108:                                    ; preds = %106, %64, %59, %54, %36, %28
  %109 = phi i1 [ false, %64 ], [ false, %59 ], [ false, %54 ], [ false, %36 ], [ false, %28 ], [ %107, %106 ]
  %110 = zext i1 %109 to i32, !dbg !800
  %111 = trunc i32 %110 to i8, !dbg !801
  store i8 %111, i8* %3, align 1, !dbg !802
  br label %112, !dbg !802

; <label>:112:                                    ; preds = %108, %25, %12
  %113 = load i8, i8* %3, align 1, !dbg !803
  ret i8 %113, !dbg !803
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_WinsConfigInfo(%struct.WinsConfigInfo*, %struct.WinsConfigInfo*) #0 !dbg !804 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.WinsConfigInfo*, align 8
  %5 = alloca %struct.WinsConfigInfo*, align 8
  store %struct.WinsConfigInfo* %0, %struct.WinsConfigInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WinsConfigInfo** %4, metadata !809, metadata !60), !dbg !810
  store %struct.WinsConfigInfo* %1, %struct.WinsConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.WinsConfigInfo** %5, metadata !811, metadata !60), !dbg !812
  br label %6, !dbg !813, !llvm.loop !814

; <label>:6:                                      ; preds = %2
  %7 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %4, align 8, !dbg !815
  %8 = icmp ne %struct.WinsConfigInfo* %7, null, !dbg !819
  br i1 %8, label %13, label %9, !dbg !820

; <label>:9:                                      ; preds = %6
  %10 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !821
  %11 = icmp ne %struct.WinsConfigInfo* %10, null, !dbg !823
  br i1 %11, label %13, label %12, !dbg !824

; <label>:12:                                     ; preds = %9
  store i8 1, i8* %3, align 1, !dbg !825
  br label %48, !dbg !825

; <label>:13:                                     ; preds = %9, %6
  %14 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %4, align 8, !dbg !828
  %15 = icmp ne %struct.WinsConfigInfo* %14, null, !dbg !831
  br i1 %15, label %19, label %16, !dbg !832

; <label>:16:                                     ; preds = %13
  %17 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !833
  %18 = icmp ne %struct.WinsConfigInfo* %17, null, !dbg !835
  br i1 %18, label %25, label %19, !dbg !836

; <label>:19:                                     ; preds = %16, %13
  %20 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %4, align 8, !dbg !837
  %21 = icmp ne %struct.WinsConfigInfo* %20, null, !dbg !839
  br i1 %21, label %22, label %26, !dbg !840

; <label>:22:                                     ; preds = %19
  %23 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !841
  %24 = icmp ne %struct.WinsConfigInfo* %23, null, !dbg !843
  br i1 %24, label %26, label %25, !dbg !844

; <label>:25:                                     ; preds = %22, %16
  store i8 0, i8* %3, align 1, !dbg !845
  br label %48, !dbg !845

; <label>:26:                                     ; preds = %22, %19
  br label %27

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !848

; <label>:28:                                     ; preds = %27
  %29 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %4, align 8, !dbg !850
  %30 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %29, i32 0, i32 0, !dbg !851
  %31 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !852
  %32 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %31, i32 0, i32 0, !dbg !853
  %33 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %30, %struct.TypedIpAddress* %32), !dbg !854
  %34 = sext i8 %33 to i32, !dbg !854
  %35 = icmp ne i32 %34, 0, !dbg !854
  br i1 %35, label %36, label %44, !dbg !855

; <label>:36:                                     ; preds = %28
  %37 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %4, align 8, !dbg !856
  %38 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %37, i32 0, i32 1, !dbg !857
  %39 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !858
  %40 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %39, i32 0, i32 1, !dbg !859
  %41 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %38, %struct.TypedIpAddress* %40), !dbg !860
  %42 = sext i8 %41 to i32, !dbg !860
  %43 = icmp ne i32 %42, 0, !dbg !861
  br label %44

; <label>:44:                                     ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32, !dbg !863
  %47 = trunc i32 %46 to i8, !dbg !865
  store i8 %47, i8* %3, align 1, !dbg !866
  br label %48, !dbg !866

; <label>:48:                                     ; preds = %44, %25, %12
  %49 = load i8, i8* %3, align 1, !dbg !867
  ret i8 %49, !dbg !867
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_InetCidrRouteEntry(%struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry*, %struct.NicInfoV3*, %struct.NicInfoV3*) #0 !dbg !868 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.InetCidrRouteEntry*, align 8
  %7 = alloca %struct.InetCidrRouteEntry*, align 8
  %8 = alloca %struct.NicInfoV3*, align 8
  %9 = alloca %struct.NicInfoV3*, align 8
  store %struct.InetCidrRouteEntry* %0, %struct.InetCidrRouteEntry** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %6, metadata !907, metadata !60), !dbg !908
  store %struct.InetCidrRouteEntry* %1, %struct.InetCidrRouteEntry** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %7, metadata !909, metadata !60), !dbg !910
  store %struct.NicInfoV3* %2, %struct.NicInfoV3** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %8, metadata !911, metadata !60), !dbg !912
  store %struct.NicInfoV3* %3, %struct.NicInfoV3** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %9, metadata !913, metadata !60), !dbg !914
  br label %10, !dbg !915, !llvm.loop !916

; <label>:10:                                     ; preds = %4
  %11 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !917
  %12 = icmp ne %struct.InetCidrRouteEntry* %11, null, !dbg !921
  br i1 %12, label %17, label %13, !dbg !922

; <label>:13:                                     ; preds = %10
  %14 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !923
  %15 = icmp ne %struct.InetCidrRouteEntry* %14, null, !dbg !925
  br i1 %15, label %17, label %16, !dbg !926

; <label>:16:                                     ; preds = %13
  store i8 1, i8* %5, align 1, !dbg !927
  br label %103, !dbg !927

; <label>:17:                                     ; preds = %13, %10
  %18 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !930
  %19 = icmp ne %struct.InetCidrRouteEntry* %18, null, !dbg !933
  br i1 %19, label %23, label %20, !dbg !934

; <label>:20:                                     ; preds = %17
  %21 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !935
  %22 = icmp ne %struct.InetCidrRouteEntry* %21, null, !dbg !937
  br i1 %22, label %29, label %23, !dbg !938

; <label>:23:                                     ; preds = %20, %17
  %24 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !939
  %25 = icmp ne %struct.InetCidrRouteEntry* %24, null, !dbg !941
  br i1 %25, label %26, label %30, !dbg !942

; <label>:26:                                     ; preds = %23
  %27 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !943
  %28 = icmp ne %struct.InetCidrRouteEntry* %27, null, !dbg !945
  br i1 %28, label %30, label %29, !dbg !946

; <label>:29:                                     ; preds = %26, %20
  store i8 0, i8* %5, align 1, !dbg !947
  br label %103, !dbg !947

; <label>:30:                                     ; preds = %26, %23
  br label %31

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !950

; <label>:32:                                     ; preds = %31
  %33 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !952
  %34 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %33, i32 0, i32 0, !dbg !953
  %35 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !954
  %36 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %35, i32 0, i32 0, !dbg !955
  %37 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %34, %struct.TypedIpAddress* %36), !dbg !956
  %38 = sext i8 %37 to i32, !dbg !956
  %39 = icmp ne i32 %38, 0, !dbg !956
  br i1 %39, label %40, label %99, !dbg !957

; <label>:40:                                     ; preds = %32
  %41 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !958
  %42 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %41, i32 0, i32 1, !dbg !959
  %43 = load i32, i32* %42, align 8, !dbg !959
  %44 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !960
  %45 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %44, i32 0, i32 1, !dbg !961
  %46 = load i32, i32* %45, align 8, !dbg !961
  %47 = icmp eq i32 %43, %46, !dbg !962
  br i1 %47, label %48, label %99, !dbg !963

; <label>:48:                                     ; preds = %40
  %49 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !964
  %50 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %49, i32 0, i32 2, !dbg !965
  %51 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %50, align 8, !dbg !965
  %52 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !966
  %53 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %52, i32 0, i32 2, !dbg !967
  %54 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %53, align 8, !dbg !967
  %55 = call signext i8 @GuestInfo_IsEqual_TypedIpAddress(%struct.TypedIpAddress* %51, %struct.TypedIpAddress* %54), !dbg !968
  %56 = sext i8 %55 to i32, !dbg !968
  %57 = icmp ne i32 %56, 0, !dbg !968
  br i1 %57, label %58, label %99, !dbg !969

; <label>:58:                                     ; preds = %48
  %59 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !970
  %60 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %59, i32 0, i32 3, !dbg !971
  %61 = load i32, i32* %60, align 8, !dbg !971
  %62 = zext i32 %61 to i64, !dbg !972
  %63 = load %struct.NicInfoV3*, %struct.NicInfoV3** %8, align 8, !dbg !972
  %64 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %63, i32 0, i32 0, !dbg !973
  %65 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %64, i32 0, i32 1, !dbg !974
  %66 = load %struct.GuestNicV3*, %struct.GuestNicV3** %65, align 8, !dbg !974
  %67 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %66, i64 %62, !dbg !972
  %68 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %67, i32 0, i32 0, !dbg !975
  %69 = load i8*, i8** %68, align 8, !dbg !975
  %70 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !976
  %71 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %70, i32 0, i32 3, !dbg !977
  %72 = load i32, i32* %71, align 8, !dbg !977
  %73 = zext i32 %72 to i64, !dbg !978
  %74 = load %struct.NicInfoV3*, %struct.NicInfoV3** %9, align 8, !dbg !978
  %75 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %74, i32 0, i32 0, !dbg !979
  %76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %75, i32 0, i32 1, !dbg !980
  %77 = load %struct.GuestNicV3*, %struct.GuestNicV3** %76, align 8, !dbg !980
  %78 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %77, i64 %73, !dbg !978
  %79 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %78, i32 0, i32 0, !dbg !981
  %80 = load i8*, i8** %79, align 8, !dbg !981
  %81 = call i32 @strcasecmp(i8* %69, i8* %80) #4, !dbg !982
  %82 = icmp eq i32 %81, 0, !dbg !983
  br i1 %82, label %83, label %99, !dbg !984

; <label>:83:                                     ; preds = %58
  %84 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !985
  %85 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %84, i32 0, i32 4, !dbg !986
  %86 = load i32, i32* %85, align 4, !dbg !986
  %87 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !987
  %88 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %87, i32 0, i32 4, !dbg !988
  %89 = load i32, i32* %88, align 4, !dbg !988
  %90 = icmp eq i32 %86, %89, !dbg !989
  br i1 %90, label %91, label %99, !dbg !990

; <label>:91:                                     ; preds = %83
  %92 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %6, align 8, !dbg !991
  %93 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %92, i32 0, i32 5, !dbg !992
  %94 = load i32, i32* %93, align 8, !dbg !992
  %95 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %7, align 8, !dbg !993
  %96 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %95, i32 0, i32 5, !dbg !994
  %97 = load i32, i32* %96, align 8, !dbg !994
  %98 = icmp eq i32 %94, %97, !dbg !995
  br label %99

; <label>:99:                                     ; preds = %91, %83, %58, %48, %40, %32
  %100 = phi i1 [ false, %83 ], [ false, %58 ], [ false, %48 ], [ false, %40 ], [ false, %32 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32, !dbg !996
  %102 = trunc i32 %101 to i8, !dbg !998
  store i8 %102, i8* %5, align 1, !dbg !999
  br label %103, !dbg !999

; <label>:103:                                    ; preds = %99, %29, %16
  %104 = load i8, i8* %5, align 1, !dbg !1000
  ret i8 %104, !dbg !1000
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IsEqual_NicInfoV3(%struct.NicInfoV3*, %struct.NicInfoV3*) #0 !dbg !1001 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.NicInfoV3*, align 8
  %5 = alloca %struct.NicInfoV3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.GuestNicV3*, align 8
  %9 = alloca %struct.GuestNicV3*, align 8
  %10 = alloca %struct.InetCidrRouteEntry*, align 8
  %11 = alloca %struct.InetCidrRouteEntry*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %4, metadata !1004, metadata !60), !dbg !1005
  store %struct.NicInfoV3* %1, %struct.NicInfoV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %5, metadata !1006, metadata !60), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1008, metadata !60), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1010, metadata !60), !dbg !1011
  br label %12, !dbg !1012, !llvm.loop !1013

; <label>:12:                                     ; preds = %2
  %13 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1014
  %14 = icmp ne %struct.NicInfoV3* %13, null, !dbg !1018
  br i1 %14, label %19, label %15, !dbg !1019

; <label>:15:                                     ; preds = %12
  %16 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1020
  %17 = icmp ne %struct.NicInfoV3* %16, null, !dbg !1022
  br i1 %17, label %19, label %18, !dbg !1023

; <label>:18:                                     ; preds = %15
  store i8 1, i8* %3, align 1, !dbg !1024
  br label %187, !dbg !1024

; <label>:19:                                     ; preds = %15, %12
  %20 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1027
  %21 = icmp ne %struct.NicInfoV3* %20, null, !dbg !1030
  br i1 %21, label %25, label %22, !dbg !1031

; <label>:22:                                     ; preds = %19
  %23 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1032
  %24 = icmp ne %struct.NicInfoV3* %23, null, !dbg !1034
  br i1 %24, label %31, label %25, !dbg !1035

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1036
  %27 = icmp ne %struct.NicInfoV3* %26, null, !dbg !1038
  br i1 %27, label %28, label %32, !dbg !1039

; <label>:28:                                     ; preds = %25
  %29 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1040
  %30 = icmp ne %struct.NicInfoV3* %29, null, !dbg !1042
  br i1 %30, label %32, label %31, !dbg !1043

; <label>:31:                                     ; preds = %28, %22
  store i8 0, i8* %3, align 1, !dbg !1044
  br label %187, !dbg !1044

; <label>:32:                                     ; preds = %28, %25
  br label %33

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !1047

; <label>:34:                                     ; preds = %33
  %35 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1049
  %36 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %35, i32 0, i32 0, !dbg !1051
  %37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %36, i32 0, i32 0, !dbg !1052
  %38 = load i32, i32* %37, align 8, !dbg !1052
  %39 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1053
  %40 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %39, i32 0, i32 0, !dbg !1054
  %41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %40, i32 0, i32 0, !dbg !1055
  %42 = load i32, i32* %41, align 8, !dbg !1055
  %43 = icmp ne i32 %38, %42, !dbg !1056
  br i1 %43, label %44, label %45, !dbg !1057

; <label>:44:                                     ; preds = %34
  store i8 0, i8* %3, align 1, !dbg !1058
  br label %187, !dbg !1058

; <label>:45:                                     ; preds = %34
  store i32 0, i32* %6, align 4, !dbg !1060
  br label %46, !dbg !1062

; <label>:46:                                     ; preds = %75, %45
  %47 = load i32, i32* %6, align 4, !dbg !1063
  %48 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1066
  %49 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %48, i32 0, i32 0, !dbg !1067
  %50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %49, i32 0, i32 0, !dbg !1068
  %51 = load i32, i32* %50, align 8, !dbg !1068
  %52 = icmp ult i32 %47, %51, !dbg !1069
  br i1 %52, label %53, label %78, !dbg !1070

; <label>:53:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %8, metadata !1071, metadata !60), !dbg !1073
  %54 = load i32, i32* %6, align 4, !dbg !1074
  %55 = zext i32 %54 to i64, !dbg !1075
  %56 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1076
  %57 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %56, i32 0, i32 0, !dbg !1077
  %58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %57, i32 0, i32 1, !dbg !1078
  %59 = load %struct.GuestNicV3*, %struct.GuestNicV3** %58, align 8, !dbg !1078
  %60 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %59, i64 %55, !dbg !1075
  store %struct.GuestNicV3* %60, %struct.GuestNicV3** %8, align 8, !dbg !1073
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %9, metadata !1079, metadata !60), !dbg !1080
  %61 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1081
  %62 = load %struct.GuestNicV3*, %struct.GuestNicV3** %8, align 8, !dbg !1082
  %63 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %62, i32 0, i32 0, !dbg !1083
  %64 = load i8*, i8** %63, align 8, !dbg !1083
  %65 = call %struct.GuestNicV3* @GuestInfoUtilFindNicByMac(%struct.NicInfoV3* %61, i8* %64), !dbg !1084
  store %struct.GuestNicV3* %65, %struct.GuestNicV3** %9, align 8, !dbg !1080
  %66 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !1085
  %67 = icmp eq %struct.GuestNicV3* %66, null, !dbg !1087
  br i1 %67, label %73, label %68, !dbg !1088

; <label>:68:                                     ; preds = %53
  %69 = load %struct.GuestNicV3*, %struct.GuestNicV3** %8, align 8, !dbg !1089
  %70 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !1090
  %71 = call signext i8 @GuestInfo_IsEqual_GuestNicV3(%struct.GuestNicV3* %69, %struct.GuestNicV3* %70), !dbg !1091
  %72 = icmp ne i8 %71, 0, !dbg !1091
  br i1 %72, label %74, label %73, !dbg !1092

; <label>:73:                                     ; preds = %68, %53
  store i8 0, i8* %3, align 1, !dbg !1094
  br label %187, !dbg !1094

; <label>:74:                                     ; preds = %68
  br label %75, !dbg !1096

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %6, align 4, !dbg !1097
  %77 = add i32 %76, 1, !dbg !1097
  store i32 %77, i32* %6, align 4, !dbg !1097
  br label %46, !dbg !1099, !llvm.loop !1100

; <label>:78:                                     ; preds = %46
  %79 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1102
  %80 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %79, i32 0, i32 1, !dbg !1104
  %81 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %80, i32 0, i32 0, !dbg !1105
  %82 = load i32, i32* %81, align 8, !dbg !1105
  %83 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1106
  %84 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %83, i32 0, i32 1, !dbg !1107
  %85 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %84, i32 0, i32 0, !dbg !1108
  %86 = load i32, i32* %85, align 8, !dbg !1108
  %87 = icmp ne i32 %82, %86, !dbg !1109
  br i1 %87, label %88, label %89, !dbg !1110

; <label>:88:                                     ; preds = %78
  store i8 0, i8* %3, align 1, !dbg !1111
  br label %187, !dbg !1111

; <label>:89:                                     ; preds = %78
  store i32 0, i32* %6, align 4, !dbg !1113
  br label %90, !dbg !1115

; <label>:90:                                     ; preds = %140, %89
  %91 = load i32, i32* %6, align 4, !dbg !1116
  %92 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1119
  %93 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %92, i32 0, i32 1, !dbg !1120
  %94 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %93, i32 0, i32 0, !dbg !1121
  %95 = load i32, i32* %94, align 8, !dbg !1121
  %96 = icmp ult i32 %91, %95, !dbg !1122
  br i1 %96, label %97, label %143, !dbg !1123

; <label>:97:                                     ; preds = %90
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %10, metadata !1124, metadata !60), !dbg !1126
  %98 = load i32, i32* %6, align 4, !dbg !1127
  %99 = zext i32 %98 to i64, !dbg !1128
  %100 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1129
  %101 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %100, i32 0, i32 1, !dbg !1130
  %102 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %101, i32 0, i32 1, !dbg !1131
  %103 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %102, align 8, !dbg !1131
  %104 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %103, i64 %99, !dbg !1128
  store %struct.InetCidrRouteEntry* %104, %struct.InetCidrRouteEntry** %10, align 8, !dbg !1126
  store i32 0, i32* %7, align 4, !dbg !1132
  br label %105, !dbg !1134

; <label>:105:                                    ; preds = %128, %97
  %106 = load i32, i32* %7, align 4, !dbg !1135
  %107 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1138
  %108 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %107, i32 0, i32 1, !dbg !1139
  %109 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %108, i32 0, i32 0, !dbg !1140
  %110 = load i32, i32* %109, align 8, !dbg !1140
  %111 = icmp ult i32 %106, %110, !dbg !1141
  br i1 %111, label %112, label %131, !dbg !1142

; <label>:112:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %11, metadata !1143, metadata !60), !dbg !1145
  %113 = load i32, i32* %7, align 4, !dbg !1146
  %114 = zext i32 %113 to i64, !dbg !1147
  %115 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1148
  %116 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %115, i32 0, i32 1, !dbg !1149
  %117 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %116, i32 0, i32 1, !dbg !1150
  %118 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %117, align 8, !dbg !1150
  %119 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %118, i64 %114, !dbg !1147
  store %struct.InetCidrRouteEntry* %119, %struct.InetCidrRouteEntry** %11, align 8, !dbg !1145
  %120 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %10, align 8, !dbg !1151
  %121 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %11, align 8, !dbg !1153
  %122 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1154
  %123 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1155
  %124 = call signext i8 @GuestInfo_IsEqual_InetCidrRouteEntry(%struct.InetCidrRouteEntry* %120, %struct.InetCidrRouteEntry* %121, %struct.NicInfoV3* %122, %struct.NicInfoV3* %123), !dbg !1156
  %125 = icmp ne i8 %124, 0, !dbg !1156
  br i1 %125, label %126, label %127, !dbg !1157

; <label>:126:                                    ; preds = %112
  br label %131, !dbg !1158

; <label>:127:                                    ; preds = %112
  br label %128, !dbg !1160

; <label>:128:                                    ; preds = %127
  %129 = load i32, i32* %7, align 4, !dbg !1161
  %130 = add i32 %129, 1, !dbg !1161
  store i32 %130, i32* %7, align 4, !dbg !1161
  br label %105, !dbg !1163, !llvm.loop !1164

; <label>:131:                                    ; preds = %126, %105
  %132 = load i32, i32* %7, align 4, !dbg !1166
  %133 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1168
  %134 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %133, i32 0, i32 1, !dbg !1169
  %135 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %134, i32 0, i32 0, !dbg !1170
  %136 = load i32, i32* %135, align 8, !dbg !1170
  %137 = icmp eq i32 %132, %136, !dbg !1171
  br i1 %137, label %138, label %139, !dbg !1172

; <label>:138:                                    ; preds = %131
  store i8 0, i8* %3, align 1, !dbg !1173
  br label %187, !dbg !1173

; <label>:139:                                    ; preds = %131
  br label %140, !dbg !1175

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %6, align 4, !dbg !1176
  %142 = add i32 %141, 1, !dbg !1176
  store i32 %142, i32* %6, align 4, !dbg !1176
  br label %90, !dbg !1178, !llvm.loop !1179

; <label>:143:                                    ; preds = %90
  %144 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1181
  %145 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %144, i32 0, i32 2, !dbg !1182
  %146 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %145, align 8, !dbg !1182
  %147 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1183
  %148 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %147, i32 0, i32 2, !dbg !1184
  %149 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %148, align 8, !dbg !1184
  %150 = call signext i8 @GuestInfo_IsEqual_DnsConfigInfo(%struct.DnsConfigInfo* %146, %struct.DnsConfigInfo* %149), !dbg !1185
  %151 = sext i8 %150 to i32, !dbg !1185
  %152 = icmp ne i32 %151, 0, !dbg !1185
  br i1 %152, label %153, label %183, !dbg !1186

; <label>:153:                                    ; preds = %143
  %154 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1187
  %155 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %154, i32 0, i32 3, !dbg !1188
  %156 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %155, align 8, !dbg !1188
  %157 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1189
  %158 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %157, i32 0, i32 3, !dbg !1190
  %159 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %158, align 8, !dbg !1190
  %160 = call signext i8 @GuestInfo_IsEqual_WinsConfigInfo(%struct.WinsConfigInfo* %156, %struct.WinsConfigInfo* %159), !dbg !1191
  %161 = sext i8 %160 to i32, !dbg !1191
  %162 = icmp ne i32 %161, 0, !dbg !1191
  br i1 %162, label %163, label %183, !dbg !1192

; <label>:163:                                    ; preds = %153
  %164 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1193
  %165 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %164, i32 0, i32 4, !dbg !1194
  %166 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %165, align 8, !dbg !1194
  %167 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1195
  %168 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %167, i32 0, i32 4, !dbg !1196
  %169 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %168, align 8, !dbg !1196
  %170 = call signext i8 @GuestInfo_IsEqual_DhcpConfigInfo(%struct.DhcpConfigInfo* %166, %struct.DhcpConfigInfo* %169), !dbg !1197
  %171 = sext i8 %170 to i32, !dbg !1197
  %172 = icmp ne i32 %171, 0, !dbg !1197
  br i1 %172, label %173, label %183, !dbg !1198

; <label>:173:                                    ; preds = %163
  %174 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1199
  %175 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %174, i32 0, i32 5, !dbg !1200
  %176 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %175, align 8, !dbg !1200
  %177 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1201
  %178 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %177, i32 0, i32 5, !dbg !1202
  %179 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %178, align 8, !dbg !1202
  %180 = call signext i8 @GuestInfo_IsEqual_DhcpConfigInfo(%struct.DhcpConfigInfo* %176, %struct.DhcpConfigInfo* %179), !dbg !1203
  %181 = sext i8 %180 to i32, !dbg !1203
  %182 = icmp ne i32 %181, 0, !dbg !1204
  br label %183

; <label>:183:                                    ; preds = %173, %163, %153, %143
  %184 = phi i1 [ false, %163 ], [ false, %153 ], [ false, %143 ], [ %182, %173 ]
  %185 = zext i1 %184 to i32, !dbg !1206
  %186 = trunc i32 %185 to i8, !dbg !1208
  store i8 %186, i8* %3, align 1, !dbg !1209
  br label %187, !dbg !1209

; <label>:187:                                    ; preds = %183, %138, %88, %73, %44, %31, %18
  %188 = load i8, i8* %3, align 1, !dbg !1210
  ret i8 %188, !dbg !1210
}

declare %struct.GuestNicV3* @GuestInfoUtilFindNicByMac(%struct.NicInfoV3*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "libNicInfo_la-compareNicInfo.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!2 = !{!3, !12, !19, !29}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!8 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!9 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!10 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!11 = !DIEnumerator(name: "IAT_DNS", value: 16)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !4, line: 77, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!15 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!16 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!17 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!18 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !4, line: 86, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!22 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!23 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!24 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!25 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!26 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!27 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!28 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !4, line: 138, size: 32, align: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!32 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!33 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!34 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!40 = distinct !DISubprogram(name: "GuestInfo_IsEqual_DhcpConfigInfo", scope: !41, file: !41, line: 65, type: !42, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!41 = !DIFile(filename: "compareNicInfo.c", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !47, !47}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !45, line: 230, baseType: !46)
!45 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !4, line: 161, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !4, line: 157, size: 128, align: 64, elements: !51)
!51 = !{!52, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !50, file: !4, line: 158, baseType: !53, size: 32, align: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !54, line: 37, baseType: !55)
!54 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !50, file: !4, line: 159, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!58 = !{}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !40, file: !41, line: 65, type: !47)
!60 = !DIExpression()
!61 = !DILocation(line: 65, column: 56, scope: !40)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !40, file: !41, line: 66, type: !47)
!63 = !DILocation(line: 66, column: 56, scope: !40)
!64 = !DILocation(line: 68, column: 4, scope: !40)
!65 = distinct !{!65, !64}
!66 = !DILocation(line: 68, column: 15, scope: !67)
!67 = !DILexicalBlockFile(scope: !68, file: !41, discriminator: 1)
!68 = distinct !DILexicalBlock(scope: !69, file: !41, line: 68, column: 13)
!69 = distinct !DILexicalBlock(scope: !40, file: !41, line: 68, column: 7)
!70 = !DILocation(line: 68, column: 14, scope: !67)
!71 = !DILocation(line: 68, column: 18, scope: !67)
!72 = !DILocation(line: 68, column: 23, scope: !73)
!73 = !DILexicalBlockFile(scope: !68, file: !41, discriminator: 2)
!74 = !DILocation(line: 68, column: 22, scope: !73)
!75 = !DILocation(line: 68, column: 13, scope: !73)
!76 = !DILocation(line: 68, column: 29, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !41, discriminator: 3)
!78 = distinct !DILexicalBlock(scope: !68, file: !41, line: 68, column: 27)
!79 = !DILocation(line: 68, column: 53, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !41, discriminator: 4)
!81 = distinct !DILexicalBlock(scope: !68, file: !41, line: 68, column: 50)
!82 = !DILocation(line: 68, column: 52, scope: !80)
!83 = !DILocation(line: 68, column: 56, scope: !80)
!84 = !DILocation(line: 68, column: 60, scope: !85)
!85 = !DILexicalBlockFile(scope: !81, file: !41, discriminator: 5)
!86 = !DILocation(line: 68, column: 59, scope: !85)
!87 = !DILocation(line: 68, column: 64, scope: !85)
!88 = !DILocation(line: 68, column: 69, scope: !89)
!89 = !DILexicalBlockFile(scope: !81, file: !41, discriminator: 6)
!90 = !DILocation(line: 68, column: 68, scope: !89)
!91 = !DILocation(line: 68, column: 72, scope: !89)
!92 = !DILocation(line: 68, column: 77, scope: !93)
!93 = !DILexicalBlockFile(scope: !81, file: !41, discriminator: 7)
!94 = !DILocation(line: 68, column: 76, scope: !93)
!95 = !DILocation(line: 68, column: 50, scope: !93)
!96 = !DILocation(line: 68, column: 84, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !41, discriminator: 8)
!98 = distinct !DILexicalBlock(scope: !81, file: !41, line: 68, column: 82)
!99 = !DILocation(line: 68, column: 96, scope: !100)
!100 = !DILexicalBlockFile(scope: !69, file: !41, discriminator: 9)
!101 = !DILocation(line: 70, column: 11, scope: !40)
!102 = !DILocation(line: 70, column: 14, scope: !40)
!103 = !DILocation(line: 70, column: 25, scope: !40)
!104 = !DILocation(line: 70, column: 28, scope: !40)
!105 = !DILocation(line: 70, column: 22, scope: !40)
!106 = !DILocation(line: 70, column: 36, scope: !40)
!107 = !DILocation(line: 71, column: 18, scope: !40)
!108 = !DILocation(line: 71, column: 21, scope: !40)
!109 = !DILocation(line: 71, column: 35, scope: !40)
!110 = !DILocation(line: 71, column: 38, scope: !40)
!111 = !DILocation(line: 71, column: 11, scope: !40)
!112 = !DILocation(line: 71, column: 52, scope: !40)
!113 = !DILocation(line: 70, column: 36, scope: !114)
!114 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 1)
!115 = !DILocation(line: 70, column: 11, scope: !114)
!116 = !DILocation(line: 70, column: 4, scope: !114)
!117 = !DILocation(line: 72, column: 1, scope: !40)
!118 = distinct !DISubprogram(name: "GuestInfo_IsEqual_DnsConfigInfo", scope: !41, file: !41, line: 91, type: !119, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!119 = !DISubroutineType(types: !120)
!120 = !{!44, !121, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !4, line: 129, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !4, line: 117, size: 384, align: 64, elements: !125)
!125 = !{!126, !129, !130, !152}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !124, file: !4, line: 118, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !4, line: 113, baseType: !57)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !124, file: !4, line: 119, baseType: !127, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !124, file: !4, line: 123, baseType: !131, size: 128, align: 64, offset: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !4, line: 120, size: 128, align: 64, elements: !132)
!132 = !{!133, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !131, file: !4, line: 121, baseType: !134, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !135, line: 35, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !137, line: 32, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !131, file: !4, line: 122, baseType: !140, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !4, line: 102, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !4, line: 98, size: 192, align: 64, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !142, file: !4, line: 99, baseType: !145, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !4, line: 73, baseType: !3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !142, file: !4, line: 100, baseType: !147, size: 128, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !4, line: 63, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 128, align: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !148, file: !4, line: 61, baseType: !134, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !148, file: !4, line: 62, baseType: !57, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !124, file: !4, line: 127, baseType: !153, size: 128, align: 64, offset: 256)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !4, line: 124, size: 128, align: 64, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !153, file: !4, line: 125, baseType: !134, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !153, file: !4, line: 126, baseType: !127, size: 64, align: 64, offset: 64)
!157 = !DILocalVariable(name: "a", arg: 1, scope: !118, file: !41, line: 91, type: !121)
!158 = !DILocation(line: 91, column: 54, scope: !118)
!159 = !DILocalVariable(name: "b", arg: 2, scope: !118, file: !41, line: 92, type: !121)
!160 = !DILocation(line: 92, column: 54, scope: !118)
!161 = !DILocalVariable(name: "ai", scope: !118, file: !41, line: 94, type: !134)
!162 = !DILocation(line: 94, column: 10, scope: !118)
!163 = !DILocalVariable(name: "bi", scope: !118, file: !41, line: 95, type: !134)
!164 = !DILocation(line: 95, column: 10, scope: !118)
!165 = !DILocation(line: 97, column: 4, scope: !118)
!166 = distinct !{!166, !165}
!167 = !DILocation(line: 97, column: 15, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !41, discriminator: 1)
!169 = distinct !DILexicalBlock(scope: !170, file: !41, line: 97, column: 13)
!170 = distinct !DILexicalBlock(scope: !118, file: !41, line: 97, column: 7)
!171 = !DILocation(line: 97, column: 14, scope: !168)
!172 = !DILocation(line: 97, column: 18, scope: !168)
!173 = !DILocation(line: 97, column: 23, scope: !174)
!174 = !DILexicalBlockFile(scope: !169, file: !41, discriminator: 2)
!175 = !DILocation(line: 97, column: 22, scope: !174)
!176 = !DILocation(line: 97, column: 13, scope: !174)
!177 = !DILocation(line: 97, column: 29, scope: !178)
!178 = !DILexicalBlockFile(scope: !179, file: !41, discriminator: 3)
!179 = distinct !DILexicalBlock(scope: !169, file: !41, line: 97, column: 27)
!180 = !DILocation(line: 97, column: 53, scope: !181)
!181 = !DILexicalBlockFile(scope: !182, file: !41, discriminator: 4)
!182 = distinct !DILexicalBlock(scope: !169, file: !41, line: 97, column: 50)
!183 = !DILocation(line: 97, column: 52, scope: !181)
!184 = !DILocation(line: 97, column: 56, scope: !181)
!185 = !DILocation(line: 97, column: 60, scope: !186)
!186 = !DILexicalBlockFile(scope: !182, file: !41, discriminator: 5)
!187 = !DILocation(line: 97, column: 59, scope: !186)
!188 = !DILocation(line: 97, column: 64, scope: !186)
!189 = !DILocation(line: 97, column: 69, scope: !190)
!190 = !DILexicalBlockFile(scope: !182, file: !41, discriminator: 6)
!191 = !DILocation(line: 97, column: 68, scope: !190)
!192 = !DILocation(line: 97, column: 72, scope: !190)
!193 = !DILocation(line: 97, column: 77, scope: !194)
!194 = !DILexicalBlockFile(scope: !182, file: !41, discriminator: 7)
!195 = !DILocation(line: 97, column: 76, scope: !194)
!196 = !DILocation(line: 97, column: 50, scope: !194)
!197 = !DILocation(line: 97, column: 84, scope: !198)
!198 = !DILexicalBlockFile(scope: !199, file: !41, discriminator: 8)
!199 = distinct !DILexicalBlock(scope: !182, file: !41, line: 97, column: 82)
!200 = !DILocation(line: 97, column: 96, scope: !201)
!201 = !DILexicalBlockFile(scope: !170, file: !41, discriminator: 9)
!202 = !DILocation(line: 99, column: 39, scope: !203)
!203 = distinct !DILexicalBlock(scope: !118, file: !41, line: 99, column: 8)
!204 = !DILocation(line: 99, column: 42, scope: !203)
!205 = !DILocation(line: 99, column: 52, scope: !203)
!206 = !DILocation(line: 99, column: 55, scope: !203)
!207 = !DILocation(line: 99, column: 9, scope: !203)
!208 = !DILocation(line: 99, column: 65, scope: !203)
!209 = !DILocation(line: 100, column: 39, scope: !203)
!210 = !DILocation(line: 100, column: 42, scope: !203)
!211 = !DILocation(line: 100, column: 54, scope: !203)
!212 = !DILocation(line: 100, column: 57, scope: !203)
!213 = !DILocation(line: 100, column: 9, scope: !203)
!214 = !DILocation(line: 100, column: 69, scope: !203)
!215 = !DILocation(line: 101, column: 8, scope: !203)
!216 = !DILocation(line: 101, column: 11, scope: !203)
!217 = !DILocation(line: 101, column: 22, scope: !203)
!218 = !DILocation(line: 101, column: 40, scope: !203)
!219 = !DILocation(line: 101, column: 43, scope: !203)
!220 = !DILocation(line: 101, column: 54, scope: !203)
!221 = !DILocation(line: 101, column: 37, scope: !203)
!222 = !DILocation(line: 101, column: 69, scope: !203)
!223 = !DILocation(line: 102, column: 8, scope: !203)
!224 = !DILocation(line: 102, column: 11, scope: !203)
!225 = !DILocation(line: 102, column: 26, scope: !203)
!226 = !DILocation(line: 102, column: 48, scope: !203)
!227 = !DILocation(line: 102, column: 51, scope: !203)
!228 = !DILocation(line: 102, column: 66, scope: !203)
!229 = !DILocation(line: 102, column: 45, scope: !203)
!230 = !DILocation(line: 99, column: 8, scope: !231)
!231 = !DILexicalBlockFile(scope: !118, file: !41, discriminator: 1)
!232 = !DILocation(line: 103, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !203, file: !41, line: 102, column: 86)
!234 = !DILocation(line: 114, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !118, file: !41, line: 114, column: 4)
!236 = !DILocation(line: 114, column: 9, scope: !235)
!237 = !DILocation(line: 114, column: 20, scope: !238)
!238 = !DILexicalBlockFile(scope: !239, file: !41, discriminator: 1)
!239 = distinct !DILexicalBlock(scope: !235, file: !41, line: 114, column: 4)
!240 = !DILocation(line: 114, column: 28, scope: !238)
!241 = !DILocation(line: 114, column: 32, scope: !238)
!242 = !DILocation(line: 114, column: 43, scope: !238)
!243 = !DILocation(line: 114, column: 24, scope: !238)
!244 = !DILocation(line: 114, column: 4, scope: !238)
!245 = !DILocalVariable(name: "aServer", scope: !246, file: !41, line: 115, type: !140)
!246 = distinct !DILexicalBlock(scope: !239, file: !41, line: 114, column: 68)
!247 = !DILocation(line: 115, column: 23, scope: !246)
!248 = !DILocation(line: 115, column: 66, scope: !246)
!249 = !DILocation(line: 115, column: 35, scope: !246)
!250 = !DILocation(line: 115, column: 36, scope: !246)
!251 = !DILocation(line: 115, column: 40, scope: !246)
!252 = !DILocation(line: 115, column: 51, scope: !246)
!253 = !DILocation(line: 117, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !41, line: 117, column: 7)
!255 = !DILocation(line: 117, column: 12, scope: !254)
!256 = !DILocation(line: 117, column: 23, scope: !257)
!257 = !DILexicalBlockFile(scope: !258, file: !41, discriminator: 1)
!258 = distinct !DILexicalBlock(scope: !254, file: !41, line: 117, column: 7)
!259 = !DILocation(line: 117, column: 31, scope: !257)
!260 = !DILocation(line: 117, column: 35, scope: !257)
!261 = !DILocation(line: 117, column: 46, scope: !257)
!262 = !DILocation(line: 117, column: 27, scope: !257)
!263 = !DILocation(line: 117, column: 7, scope: !257)
!264 = !DILocalVariable(name: "bServer", scope: !265, file: !41, line: 118, type: !140)
!265 = distinct !DILexicalBlock(scope: !258, file: !41, line: 117, column: 71)
!266 = !DILocation(line: 118, column: 26, scope: !265)
!267 = !DILocation(line: 118, column: 69, scope: !265)
!268 = !DILocation(line: 118, column: 38, scope: !265)
!269 = !DILocation(line: 118, column: 39, scope: !265)
!270 = !DILocation(line: 118, column: 43, scope: !265)
!271 = !DILocation(line: 118, column: 54, scope: !265)
!272 = !DILocation(line: 120, column: 47, scope: !273)
!273 = distinct !DILexicalBlock(scope: !265, file: !41, line: 120, column: 14)
!274 = !DILocation(line: 120, column: 56, scope: !273)
!275 = !DILocation(line: 120, column: 14, scope: !273)
!276 = !DILocation(line: 120, column: 14, scope: !265)
!277 = !DILocation(line: 121, column: 13, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !41, line: 120, column: 66)
!279 = !DILocation(line: 123, column: 7, scope: !265)
!280 = !DILocation(line: 117, column: 67, scope: !281)
!281 = !DILexicalBlockFile(scope: !258, file: !41, discriminator: 2)
!282 = !DILocation(line: 117, column: 7, scope: !281)
!283 = distinct !{!283, !284}
!284 = !DILocation(line: 117, column: 7, scope: !246)
!285 = !DILocation(line: 125, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !246, file: !41, line: 125, column: 11)
!287 = !DILocation(line: 125, column: 17, scope: !286)
!288 = !DILocation(line: 125, column: 20, scope: !286)
!289 = !DILocation(line: 125, column: 31, scope: !286)
!290 = !DILocation(line: 125, column: 14, scope: !286)
!291 = !DILocation(line: 125, column: 11, scope: !246)
!292 = !DILocation(line: 127, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !41, line: 125, column: 47)
!294 = !DILocation(line: 129, column: 4, scope: !246)
!295 = !DILocation(line: 114, column: 64, scope: !296)
!296 = !DILexicalBlockFile(scope: !239, file: !41, discriminator: 2)
!297 = !DILocation(line: 114, column: 4, scope: !296)
!298 = distinct !{!298, !299}
!299 = !DILocation(line: 114, column: 4, scope: !118)
!300 = !DILocation(line: 131, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !118, file: !41, line: 131, column: 4)
!302 = !DILocation(line: 131, column: 9, scope: !301)
!303 = !DILocation(line: 131, column: 20, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !41, discriminator: 1)
!305 = distinct !DILexicalBlock(scope: !301, file: !41, line: 131, column: 4)
!306 = !DILocation(line: 131, column: 28, scope: !304)
!307 = !DILocation(line: 131, column: 32, scope: !304)
!308 = !DILocation(line: 131, column: 47, scope: !304)
!309 = !DILocation(line: 131, column: 24, scope: !304)
!310 = !DILocation(line: 131, column: 4, scope: !304)
!311 = !DILocalVariable(name: "aSuffix", scope: !312, file: !41, line: 132, type: !127)
!312 = distinct !DILexicalBlock(scope: !305, file: !41, line: 131, column: 76)
!313 = !DILocation(line: 132, column: 20, scope: !312)
!314 = !DILocation(line: 132, column: 71, scope: !312)
!315 = !DILocation(line: 132, column: 32, scope: !312)
!316 = !DILocation(line: 132, column: 33, scope: !312)
!317 = !DILocation(line: 132, column: 37, scope: !312)
!318 = !DILocation(line: 132, column: 52, scope: !312)
!319 = !DILocation(line: 134, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !41, line: 134, column: 7)
!321 = !DILocation(line: 134, column: 12, scope: !320)
!322 = !DILocation(line: 134, column: 23, scope: !323)
!323 = !DILexicalBlockFile(scope: !324, file: !41, discriminator: 1)
!324 = distinct !DILexicalBlock(scope: !320, file: !41, line: 134, column: 7)
!325 = !DILocation(line: 134, column: 31, scope: !323)
!326 = !DILocation(line: 134, column: 35, scope: !323)
!327 = !DILocation(line: 134, column: 50, scope: !323)
!328 = !DILocation(line: 134, column: 27, scope: !323)
!329 = !DILocation(line: 134, column: 7, scope: !323)
!330 = !DILocalVariable(name: "bSuffix", scope: !331, file: !41, line: 135, type: !127)
!331 = distinct !DILexicalBlock(scope: !324, file: !41, line: 134, column: 79)
!332 = !DILocation(line: 135, column: 23, scope: !331)
!333 = !DILocation(line: 135, column: 74, scope: !331)
!334 = !DILocation(line: 135, column: 35, scope: !331)
!335 = !DILocation(line: 135, column: 36, scope: !331)
!336 = !DILocation(line: 135, column: 40, scope: !331)
!337 = !DILocation(line: 135, column: 55, scope: !331)
!338 = !DILocation(line: 137, column: 44, scope: !339)
!339 = distinct !DILexicalBlock(scope: !331, file: !41, line: 137, column: 14)
!340 = !DILocation(line: 137, column: 53, scope: !339)
!341 = !DILocation(line: 137, column: 14, scope: !339)
!342 = !DILocation(line: 137, column: 14, scope: !331)
!343 = !DILocation(line: 138, column: 13, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !41, line: 137, column: 63)
!345 = !DILocation(line: 140, column: 7, scope: !331)
!346 = !DILocation(line: 134, column: 75, scope: !347)
!347 = !DILexicalBlockFile(scope: !324, file: !41, discriminator: 2)
!348 = !DILocation(line: 134, column: 7, scope: !347)
!349 = distinct !{!349, !350}
!350 = !DILocation(line: 134, column: 7, scope: !312)
!351 = !DILocation(line: 142, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !312, file: !41, line: 142, column: 11)
!353 = !DILocation(line: 142, column: 17, scope: !352)
!354 = !DILocation(line: 142, column: 20, scope: !352)
!355 = !DILocation(line: 142, column: 35, scope: !352)
!356 = !DILocation(line: 142, column: 14, scope: !352)
!357 = !DILocation(line: 142, column: 11, scope: !312)
!358 = !DILocation(line: 144, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !41, line: 142, column: 55)
!360 = !DILocation(line: 146, column: 4, scope: !312)
!361 = !DILocation(line: 131, column: 72, scope: !362)
!362 = !DILexicalBlockFile(scope: !305, file: !41, discriminator: 2)
!363 = !DILocation(line: 131, column: 4, scope: !362)
!364 = distinct !{!364, !365}
!365 = !DILocation(line: 131, column: 4, scope: !118)
!366 = !DILocation(line: 148, column: 4, scope: !118)
!367 = !DILocation(line: 149, column: 1, scope: !118)
!368 = distinct !DISubprogram(name: "GuestInfo_IsEqual_DnsHostname", scope: !41, file: !41, line: 168, type: !369, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!369 = !DISubroutineType(types: !370)
!370 = !{!44, !371, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!373 = !DILocalVariable(name: "a", arg: 1, scope: !368, file: !41, line: 168, type: !371)
!374 = !DILocation(line: 168, column: 50, scope: !368)
!375 = !DILocalVariable(name: "b", arg: 2, scope: !368, file: !41, line: 169, type: !371)
!376 = !DILocation(line: 169, column: 50, scope: !368)
!377 = !DILocation(line: 171, column: 4, scope: !368)
!378 = distinct !{!378, !377}
!379 = !DILocation(line: 171, column: 15, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !41, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !382, file: !41, line: 171, column: 13)
!382 = distinct !DILexicalBlock(scope: !368, file: !41, line: 171, column: 7)
!383 = !DILocation(line: 171, column: 14, scope: !380)
!384 = !DILocation(line: 171, column: 18, scope: !380)
!385 = !DILocation(line: 171, column: 23, scope: !386)
!386 = !DILexicalBlockFile(scope: !381, file: !41, discriminator: 2)
!387 = !DILocation(line: 171, column: 22, scope: !386)
!388 = !DILocation(line: 171, column: 13, scope: !386)
!389 = !DILocation(line: 171, column: 29, scope: !390)
!390 = !DILexicalBlockFile(scope: !391, file: !41, discriminator: 3)
!391 = distinct !DILexicalBlock(scope: !381, file: !41, line: 171, column: 27)
!392 = !DILocation(line: 171, column: 53, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !41, discriminator: 4)
!394 = distinct !DILexicalBlock(scope: !381, file: !41, line: 171, column: 50)
!395 = !DILocation(line: 171, column: 52, scope: !393)
!396 = !DILocation(line: 171, column: 56, scope: !393)
!397 = !DILocation(line: 171, column: 60, scope: !398)
!398 = !DILexicalBlockFile(scope: !394, file: !41, discriminator: 5)
!399 = !DILocation(line: 171, column: 59, scope: !398)
!400 = !DILocation(line: 171, column: 64, scope: !398)
!401 = !DILocation(line: 171, column: 69, scope: !402)
!402 = !DILexicalBlockFile(scope: !394, file: !41, discriminator: 6)
!403 = !DILocation(line: 171, column: 68, scope: !402)
!404 = !DILocation(line: 171, column: 72, scope: !402)
!405 = !DILocation(line: 171, column: 77, scope: !406)
!406 = !DILexicalBlockFile(scope: !394, file: !41, discriminator: 7)
!407 = !DILocation(line: 171, column: 76, scope: !406)
!408 = !DILocation(line: 171, column: 50, scope: !406)
!409 = !DILocation(line: 171, column: 84, scope: !410)
!410 = !DILexicalBlockFile(scope: !411, file: !41, discriminator: 8)
!411 = distinct !DILexicalBlock(scope: !394, file: !41, line: 171, column: 82)
!412 = !DILocation(line: 171, column: 96, scope: !413)
!413 = !DILexicalBlockFile(scope: !382, file: !41, discriminator: 9)
!414 = !DILocation(line: 172, column: 23, scope: !368)
!415 = !DILocation(line: 172, column: 22, scope: !368)
!416 = !DILocation(line: 172, column: 27, scope: !368)
!417 = !DILocation(line: 172, column: 26, scope: !368)
!418 = !DILocation(line: 172, column: 11, scope: !368)
!419 = !DILocation(line: 172, column: 30, scope: !368)
!420 = !DILocation(line: 172, column: 4, scope: !368)
!421 = !DILocation(line: 173, column: 1, scope: !368)
!422 = distinct !DISubprogram(name: "GuestInfo_IsEqual_TypedIpAddress", scope: !41, file: !41, line: 414, type: !423, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!423 = !DISubroutineType(types: !424)
!424 = !{!44, !425, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!427 = !DILocalVariable(name: "a", arg: 1, scope: !422, file: !41, line: 414, type: !425)
!428 = !DILocation(line: 414, column: 56, scope: !422)
!429 = !DILocalVariable(name: "b", arg: 2, scope: !422, file: !41, line: 415, type: !425)
!430 = !DILocation(line: 415, column: 56, scope: !422)
!431 = !DILocation(line: 417, column: 4, scope: !422)
!432 = distinct !{!432, !431}
!433 = !DILocation(line: 417, column: 15, scope: !434)
!434 = !DILexicalBlockFile(scope: !435, file: !41, discriminator: 1)
!435 = distinct !DILexicalBlock(scope: !436, file: !41, line: 417, column: 13)
!436 = distinct !DILexicalBlock(scope: !422, file: !41, line: 417, column: 7)
!437 = !DILocation(line: 417, column: 14, scope: !434)
!438 = !DILocation(line: 417, column: 18, scope: !434)
!439 = !DILocation(line: 417, column: 23, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !41, discriminator: 2)
!441 = !DILocation(line: 417, column: 22, scope: !440)
!442 = !DILocation(line: 417, column: 13, scope: !440)
!443 = !DILocation(line: 417, column: 29, scope: !444)
!444 = !DILexicalBlockFile(scope: !445, file: !41, discriminator: 3)
!445 = distinct !DILexicalBlock(scope: !435, file: !41, line: 417, column: 27)
!446 = !DILocation(line: 417, column: 53, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !41, discriminator: 4)
!448 = distinct !DILexicalBlock(scope: !435, file: !41, line: 417, column: 50)
!449 = !DILocation(line: 417, column: 52, scope: !447)
!450 = !DILocation(line: 417, column: 56, scope: !447)
!451 = !DILocation(line: 417, column: 60, scope: !452)
!452 = !DILexicalBlockFile(scope: !448, file: !41, discriminator: 5)
!453 = !DILocation(line: 417, column: 59, scope: !452)
!454 = !DILocation(line: 417, column: 64, scope: !452)
!455 = !DILocation(line: 417, column: 69, scope: !456)
!456 = !DILexicalBlockFile(scope: !448, file: !41, discriminator: 6)
!457 = !DILocation(line: 417, column: 68, scope: !456)
!458 = !DILocation(line: 417, column: 72, scope: !456)
!459 = !DILocation(line: 417, column: 77, scope: !460)
!460 = !DILexicalBlockFile(scope: !448, file: !41, discriminator: 7)
!461 = !DILocation(line: 417, column: 76, scope: !460)
!462 = !DILocation(line: 417, column: 50, scope: !460)
!463 = !DILocation(line: 417, column: 84, scope: !464)
!464 = !DILexicalBlockFile(scope: !465, file: !41, discriminator: 8)
!465 = distinct !DILexicalBlock(scope: !448, file: !41, line: 417, column: 82)
!466 = !DILocation(line: 417, column: 96, scope: !467)
!467 = !DILexicalBlockFile(scope: !436, file: !41, discriminator: 9)
!468 = !DILocation(line: 419, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !422, file: !41, line: 419, column: 8)
!470 = !DILocation(line: 419, column: 11, scope: !469)
!471 = !DILocation(line: 419, column: 32, scope: !469)
!472 = !DILocation(line: 419, column: 35, scope: !469)
!473 = !DILocation(line: 419, column: 29, scope: !469)
!474 = !DILocation(line: 419, column: 53, scope: !469)
!475 = !DILocation(line: 420, column: 15, scope: !469)
!476 = !DILocation(line: 420, column: 18, scope: !469)
!477 = !DILocation(line: 420, column: 32, scope: !469)
!478 = !DILocation(line: 421, column: 15, scope: !469)
!479 = !DILocation(line: 421, column: 18, scope: !469)
!480 = !DILocation(line: 421, column: 32, scope: !469)
!481 = !DILocation(line: 422, column: 15, scope: !469)
!482 = !DILocation(line: 422, column: 18, scope: !469)
!483 = !DILocation(line: 422, column: 32, scope: !469)
!484 = !DILocation(line: 420, column: 8, scope: !469)
!485 = !DILocation(line: 419, column: 8, scope: !486)
!486 = !DILexicalBlockFile(scope: !422, file: !41, discriminator: 1)
!487 = !DILocation(line: 423, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !469, file: !41, line: 422, column: 50)
!489 = !DILocation(line: 426, column: 4, scope: !422)
!490 = !DILocation(line: 427, column: 1, scope: !422)
!491 = distinct !DISubprogram(name: "GuestInfo_IsEqual_GuestNicV3", scope: !41, file: !41, line: 192, type: !492, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!492 = !DISubroutineType(types: !493)
!493 = !{!44, !494, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !4, line: 174, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !4, line: 163, size: 448, align: 64, elements: !498)
!498 = !{!499, !500, !518, !520, !527, !529}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !497, file: !4, line: 164, baseType: !57, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !497, file: !4, line: 168, baseType: !501, size: 128, align: 64, offset: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !4, line: 165, size: 128, align: 64, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !501, file: !4, line: 166, baseType: !134, size: 32, align: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !501, file: !4, line: 167, baseType: !505, size: 64, align: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !4, line: 110, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !4, line: 104, size: 384, align: 64, elements: !508)
!508 = !{!509, !510, !512, !515}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !507, file: !4, line: 105, baseType: !141, size: 192, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !507, file: !4, line: 106, baseType: !511, size: 32, align: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !4, line: 75, baseType: !134)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !507, file: !4, line: 107, baseType: !513, size: 64, align: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !4, line: 84, baseType: !12)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !507, file: !4, line: 108, baseType: !516, size: 64, align: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !4, line: 96, baseType: !19)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !497, file: !4, line: 169, baseType: !519, size: 64, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !497, file: !4, line: 170, baseType: !521, size: 64, align: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !4, line: 135, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !4, line: 131, size: 384, align: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !523, file: !4, line: 132, baseType: !141, size: 192, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !523, file: !4, line: 133, baseType: !141, size: 192, align: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !497, file: !4, line: 171, baseType: !528, size: 64, align: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !497, file: !4, line: 172, baseType: !528, size: 64, align: 64, offset: 384)
!530 = !DILocalVariable(name: "a", arg: 1, scope: !491, file: !41, line: 192, type: !494)
!531 = !DILocation(line: 192, column: 48, scope: !491)
!532 = !DILocalVariable(name: "b", arg: 2, scope: !491, file: !41, line: 193, type: !494)
!533 = !DILocation(line: 193, column: 48, scope: !491)
!534 = !DILocalVariable(name: "ai", scope: !491, file: !41, line: 195, type: !134)
!535 = !DILocation(line: 195, column: 10, scope: !491)
!536 = !DILocalVariable(name: "bi", scope: !491, file: !41, line: 196, type: !134)
!537 = !DILocation(line: 196, column: 10, scope: !491)
!538 = !DILocation(line: 198, column: 4, scope: !491)
!539 = distinct !{!539, !538}
!540 = !DILocation(line: 198, column: 15, scope: !541)
!541 = !DILexicalBlockFile(scope: !542, file: !41, discriminator: 1)
!542 = distinct !DILexicalBlock(scope: !543, file: !41, line: 198, column: 13)
!543 = distinct !DILexicalBlock(scope: !491, file: !41, line: 198, column: 7)
!544 = !DILocation(line: 198, column: 14, scope: !541)
!545 = !DILocation(line: 198, column: 18, scope: !541)
!546 = !DILocation(line: 198, column: 23, scope: !547)
!547 = !DILexicalBlockFile(scope: !542, file: !41, discriminator: 2)
!548 = !DILocation(line: 198, column: 22, scope: !547)
!549 = !DILocation(line: 198, column: 13, scope: !547)
!550 = !DILocation(line: 198, column: 29, scope: !551)
!551 = !DILexicalBlockFile(scope: !552, file: !41, discriminator: 3)
!552 = distinct !DILexicalBlock(scope: !542, file: !41, line: 198, column: 27)
!553 = !DILocation(line: 198, column: 53, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !41, discriminator: 4)
!555 = distinct !DILexicalBlock(scope: !542, file: !41, line: 198, column: 50)
!556 = !DILocation(line: 198, column: 52, scope: !554)
!557 = !DILocation(line: 198, column: 56, scope: !554)
!558 = !DILocation(line: 198, column: 60, scope: !559)
!559 = !DILexicalBlockFile(scope: !555, file: !41, discriminator: 5)
!560 = !DILocation(line: 198, column: 59, scope: !559)
!561 = !DILocation(line: 198, column: 64, scope: !559)
!562 = !DILocation(line: 198, column: 69, scope: !563)
!563 = !DILexicalBlockFile(scope: !555, file: !41, discriminator: 6)
!564 = !DILocation(line: 198, column: 68, scope: !563)
!565 = !DILocation(line: 198, column: 72, scope: !563)
!566 = !DILocation(line: 198, column: 77, scope: !567)
!567 = !DILexicalBlockFile(scope: !555, file: !41, discriminator: 7)
!568 = !DILocation(line: 198, column: 76, scope: !567)
!569 = !DILocation(line: 198, column: 50, scope: !567)
!570 = !DILocation(line: 198, column: 84, scope: !571)
!571 = !DILexicalBlockFile(scope: !572, file: !41, discriminator: 8)
!572 = distinct !DILexicalBlock(scope: !555, file: !41, line: 198, column: 82)
!573 = !DILocation(line: 198, column: 96, scope: !574)
!574 = !DILexicalBlockFile(scope: !543, file: !41, discriminator: 9)
!575 = !DILocation(line: 204, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !491, file: !41, line: 204, column: 8)
!577 = !DILocation(line: 204, column: 22, scope: !576)
!578 = !DILocation(line: 204, column: 34, scope: !576)
!579 = !DILocation(line: 204, column: 37, scope: !576)
!580 = !DILocation(line: 204, column: 8, scope: !576)
!581 = !DILocation(line: 204, column: 49, scope: !576)
!582 = !DILocation(line: 204, column: 8, scope: !491)
!583 = !DILocation(line: 205, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !576, file: !41, line: 204, column: 55)
!585 = !DILocation(line: 212, column: 8, scope: !586)
!586 = distinct !DILexicalBlock(scope: !491, file: !41, line: 212, column: 8)
!587 = !DILocation(line: 212, column: 11, scope: !586)
!588 = !DILocation(line: 212, column: 15, scope: !586)
!589 = !DILocation(line: 212, column: 26, scope: !586)
!590 = !DILocation(line: 212, column: 29, scope: !586)
!591 = !DILocation(line: 212, column: 33, scope: !586)
!592 = !DILocation(line: 212, column: 23, scope: !586)
!593 = !DILocation(line: 212, column: 8, scope: !491)
!594 = !DILocation(line: 213, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !586, file: !41, line: 212, column: 42)
!596 = !DILocation(line: 216, column: 14, scope: !597)
!597 = distinct !DILexicalBlock(scope: !491, file: !41, line: 216, column: 4)
!598 = !DILocation(line: 216, column: 9, scope: !597)
!599 = !DILocation(line: 216, column: 20, scope: !600)
!600 = !DILexicalBlockFile(scope: !601, file: !41, discriminator: 1)
!601 = distinct !DILexicalBlock(scope: !597, file: !41, line: 216, column: 4)
!602 = !DILocation(line: 216, column: 28, scope: !600)
!603 = !DILocation(line: 216, column: 32, scope: !600)
!604 = !DILocation(line: 216, column: 36, scope: !600)
!605 = !DILocation(line: 216, column: 24, scope: !600)
!606 = !DILocation(line: 216, column: 4, scope: !600)
!607 = !DILocalVariable(name: "aEntry", scope: !608, file: !41, line: 217, type: !505)
!608 = distinct !DILexicalBlock(scope: !601, file: !41, line: 216, column: 54)
!609 = !DILocation(line: 217, column: 23, scope: !608)
!610 = !DILocation(line: 217, column: 51, scope: !608)
!611 = !DILocation(line: 217, column: 34, scope: !608)
!612 = !DILocation(line: 217, column: 35, scope: !608)
!613 = !DILocation(line: 217, column: 39, scope: !608)
!614 = !DILocation(line: 217, column: 43, scope: !608)
!615 = !DILocation(line: 219, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !41, line: 219, column: 7)
!617 = !DILocation(line: 219, column: 12, scope: !616)
!618 = !DILocation(line: 219, column: 23, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !41, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !616, file: !41, line: 219, column: 7)
!621 = !DILocation(line: 219, column: 31, scope: !619)
!622 = !DILocation(line: 219, column: 35, scope: !619)
!623 = !DILocation(line: 219, column: 39, scope: !619)
!624 = !DILocation(line: 219, column: 27, scope: !619)
!625 = !DILocation(line: 219, column: 7, scope: !619)
!626 = !DILocalVariable(name: "bEntry", scope: !627, file: !41, line: 220, type: !505)
!627 = distinct !DILexicalBlock(scope: !620, file: !41, line: 219, column: 57)
!628 = !DILocation(line: 220, column: 26, scope: !627)
!629 = !DILocation(line: 220, column: 54, scope: !627)
!630 = !DILocation(line: 220, column: 37, scope: !627)
!631 = !DILocation(line: 220, column: 38, scope: !627)
!632 = !DILocation(line: 220, column: 42, scope: !627)
!633 = !DILocation(line: 220, column: 46, scope: !627)
!634 = !DILocation(line: 222, column: 47, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !41, line: 222, column: 14)
!636 = !DILocation(line: 222, column: 55, scope: !635)
!637 = !DILocation(line: 222, column: 14, scope: !635)
!638 = !DILocation(line: 222, column: 14, scope: !627)
!639 = !DILocation(line: 223, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !41, line: 222, column: 64)
!641 = !DILocation(line: 225, column: 7, scope: !627)
!642 = !DILocation(line: 219, column: 53, scope: !643)
!643 = !DILexicalBlockFile(scope: !620, file: !41, discriminator: 2)
!644 = !DILocation(line: 219, column: 7, scope: !643)
!645 = distinct !{!645, !646}
!646 = !DILocation(line: 219, column: 7, scope: !608)
!647 = !DILocation(line: 227, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !608, file: !41, line: 227, column: 11)
!649 = !DILocation(line: 227, column: 17, scope: !648)
!650 = !DILocation(line: 227, column: 20, scope: !648)
!651 = !DILocation(line: 227, column: 24, scope: !648)
!652 = !DILocation(line: 227, column: 14, scope: !648)
!653 = !DILocation(line: 227, column: 11, scope: !608)
!654 = !DILocation(line: 229, column: 10, scope: !655)
!655 = distinct !DILexicalBlock(scope: !648, file: !41, line: 227, column: 33)
!656 = !DILocation(line: 231, column: 4, scope: !608)
!657 = !DILocation(line: 216, column: 50, scope: !658)
!658 = !DILexicalBlockFile(scope: !601, file: !41, discriminator: 2)
!659 = !DILocation(line: 216, column: 4, scope: !658)
!660 = distinct !{!660, !661}
!661 = !DILocation(line: 216, column: 4, scope: !491)
!662 = !DILocation(line: 234, column: 39, scope: !491)
!663 = !DILocation(line: 234, column: 42, scope: !491)
!664 = !DILocation(line: 234, column: 57, scope: !491)
!665 = !DILocation(line: 234, column: 60, scope: !491)
!666 = !DILocation(line: 234, column: 7, scope: !491)
!667 = !DILocation(line: 234, column: 75, scope: !491)
!668 = !DILocation(line: 235, column: 40, scope: !491)
!669 = !DILocation(line: 235, column: 43, scope: !491)
!670 = !DILocation(line: 235, column: 59, scope: !491)
!671 = !DILocation(line: 235, column: 62, scope: !491)
!672 = !DILocation(line: 235, column: 7, scope: !491)
!673 = !DILocation(line: 235, column: 78, scope: !491)
!674 = !DILocation(line: 236, column: 40, scope: !491)
!675 = !DILocation(line: 236, column: 43, scope: !491)
!676 = !DILocation(line: 236, column: 61, scope: !491)
!677 = !DILocation(line: 236, column: 64, scope: !491)
!678 = !DILocation(line: 236, column: 7, scope: !491)
!679 = !DILocation(line: 236, column: 82, scope: !491)
!680 = !DILocation(line: 237, column: 40, scope: !491)
!681 = !DILocation(line: 237, column: 43, scope: !491)
!682 = !DILocation(line: 237, column: 61, scope: !491)
!683 = !DILocation(line: 237, column: 64, scope: !491)
!684 = !DILocation(line: 237, column: 7, scope: !491)
!685 = !DILocation(line: 236, column: 82, scope: !686)
!686 = !DILexicalBlockFile(scope: !491, file: !41, discriminator: 1)
!687 = !DILocation(line: 236, column: 82, scope: !688)
!688 = !DILexicalBlockFile(scope: !491, file: !41, discriminator: 2)
!689 = !DILocation(line: 234, column: 7, scope: !686)
!690 = !DILocation(line: 233, column: 4, scope: !491)
!691 = !DILocation(line: 238, column: 1, scope: !491)
!692 = distinct !DISubprogram(name: "GuestInfo_IsEqual_IpAddressEntry", scope: !41, file: !41, line: 298, type: !693, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!693 = !DISubroutineType(types: !694)
!694 = !{!44, !695, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!697 = !DILocalVariable(name: "a", arg: 1, scope: !692, file: !41, line: 298, type: !695)
!698 = !DILocation(line: 298, column: 56, scope: !692)
!699 = !DILocalVariable(name: "b", arg: 2, scope: !692, file: !41, line: 299, type: !695)
!700 = !DILocation(line: 299, column: 56, scope: !692)
!701 = !DILocation(line: 301, column: 4, scope: !692)
!702 = distinct !{!702, !701}
!703 = !DILocation(line: 301, column: 15, scope: !704)
!704 = !DILexicalBlockFile(scope: !705, file: !41, discriminator: 1)
!705 = distinct !DILexicalBlock(scope: !706, file: !41, line: 301, column: 13)
!706 = distinct !DILexicalBlock(scope: !692, file: !41, line: 301, column: 7)
!707 = !DILocation(line: 301, column: 14, scope: !704)
!708 = !DILocation(line: 301, column: 18, scope: !704)
!709 = !DILocation(line: 301, column: 23, scope: !710)
!710 = !DILexicalBlockFile(scope: !705, file: !41, discriminator: 2)
!711 = !DILocation(line: 301, column: 22, scope: !710)
!712 = !DILocation(line: 301, column: 13, scope: !710)
!713 = !DILocation(line: 301, column: 29, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !41, discriminator: 3)
!715 = distinct !DILexicalBlock(scope: !705, file: !41, line: 301, column: 27)
!716 = !DILocation(line: 301, column: 53, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !41, discriminator: 4)
!718 = distinct !DILexicalBlock(scope: !705, file: !41, line: 301, column: 50)
!719 = !DILocation(line: 301, column: 52, scope: !717)
!720 = !DILocation(line: 301, column: 56, scope: !717)
!721 = !DILocation(line: 301, column: 60, scope: !722)
!722 = !DILexicalBlockFile(scope: !718, file: !41, discriminator: 5)
!723 = !DILocation(line: 301, column: 59, scope: !722)
!724 = !DILocation(line: 301, column: 64, scope: !722)
!725 = !DILocation(line: 301, column: 69, scope: !726)
!726 = !DILexicalBlockFile(scope: !718, file: !41, discriminator: 6)
!727 = !DILocation(line: 301, column: 68, scope: !726)
!728 = !DILocation(line: 301, column: 72, scope: !726)
!729 = !DILocation(line: 301, column: 77, scope: !730)
!730 = !DILexicalBlockFile(scope: !718, file: !41, discriminator: 7)
!731 = !DILocation(line: 301, column: 76, scope: !730)
!732 = !DILocation(line: 301, column: 50, scope: !730)
!733 = !DILocation(line: 301, column: 84, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !41, discriminator: 8)
!735 = distinct !DILexicalBlock(scope: !718, file: !41, line: 301, column: 82)
!736 = !DILocation(line: 301, column: 96, scope: !737)
!737 = !DILexicalBlockFile(scope: !706, file: !41, discriminator: 9)
!738 = !DILocation(line: 304, column: 41, scope: !692)
!739 = !DILocation(line: 304, column: 44, scope: !692)
!740 = !DILocation(line: 304, column: 60, scope: !692)
!741 = !DILocation(line: 304, column: 63, scope: !692)
!742 = !DILocation(line: 304, column: 7, scope: !692)
!743 = !DILocation(line: 304, column: 78, scope: !692)
!744 = !DILocation(line: 305, column: 7, scope: !692)
!745 = !DILocation(line: 305, column: 10, scope: !692)
!746 = !DILocation(line: 305, column: 35, scope: !692)
!747 = !DILocation(line: 305, column: 38, scope: !692)
!748 = !DILocation(line: 305, column: 32, scope: !692)
!749 = !DILocation(line: 305, column: 60, scope: !692)
!750 = !DILocation(line: 306, column: 9, scope: !692)
!751 = !DILocation(line: 306, column: 12, scope: !692)
!752 = !DILocation(line: 306, column: 28, scope: !692)
!753 = !DILocation(line: 306, column: 35, scope: !692)
!754 = !DILocation(line: 306, column: 38, scope: !755)
!755 = !DILexicalBlockFile(scope: !692, file: !41, discriminator: 1)
!756 = !DILocation(line: 306, column: 41, scope: !755)
!757 = !DILocation(line: 306, column: 57, scope: !755)
!758 = !DILocation(line: 306, column: 66, scope: !755)
!759 = !DILocation(line: 307, column: 9, scope: !692)
!760 = !DILocation(line: 307, column: 12, scope: !692)
!761 = !DILocation(line: 307, column: 28, scope: !692)
!762 = !DILocation(line: 307, column: 35, scope: !692)
!763 = !DILocation(line: 307, column: 38, scope: !755)
!764 = !DILocation(line: 307, column: 41, scope: !755)
!765 = !DILocation(line: 307, column: 57, scope: !755)
!766 = !DILocation(line: 307, column: 65, scope: !755)
!767 = !DILocation(line: 308, column: 10, scope: !692)
!768 = !DILocation(line: 308, column: 13, scope: !692)
!769 = !DILocation(line: 308, column: 9, scope: !692)
!770 = !DILocation(line: 308, column: 33, scope: !692)
!771 = !DILocation(line: 308, column: 36, scope: !692)
!772 = !DILocation(line: 308, column: 32, scope: !692)
!773 = !DILocation(line: 308, column: 29, scope: !692)
!774 = !DILocation(line: 308, column: 54, scope: !692)
!775 = !DILocation(line: 309, column: 9, scope: !692)
!776 = !DILocation(line: 309, column: 12, scope: !692)
!777 = !DILocation(line: 309, column: 28, scope: !692)
!778 = !DILocation(line: 309, column: 35, scope: !692)
!779 = !DILocation(line: 309, column: 38, scope: !755)
!780 = !DILocation(line: 309, column: 41, scope: !755)
!781 = !DILocation(line: 309, column: 57, scope: !755)
!782 = !DILocation(line: 309, column: 66, scope: !755)
!783 = !DILocation(line: 310, column: 9, scope: !692)
!784 = !DILocation(line: 310, column: 12, scope: !692)
!785 = !DILocation(line: 310, column: 28, scope: !692)
!786 = !DILocation(line: 310, column: 35, scope: !692)
!787 = !DILocation(line: 310, column: 38, scope: !755)
!788 = !DILocation(line: 310, column: 41, scope: !755)
!789 = !DILocation(line: 310, column: 57, scope: !755)
!790 = !DILocation(line: 310, column: 65, scope: !755)
!791 = !DILocation(line: 311, column: 10, scope: !692)
!792 = !DILocation(line: 311, column: 13, scope: !692)
!793 = !DILocation(line: 311, column: 9, scope: !692)
!794 = !DILocation(line: 311, column: 33, scope: !692)
!795 = !DILocation(line: 311, column: 36, scope: !692)
!796 = !DILocation(line: 311, column: 32, scope: !692)
!797 = !DILocation(line: 311, column: 29, scope: !692)
!798 = !DILocation(line: 309, column: 66, scope: !799)
!799 = !DILexicalBlockFile(scope: !692, file: !41, discriminator: 2)
!800 = !DILocation(line: 308, column: 54, scope: !755)
!801 = !DILocation(line: 304, column: 7, scope: !755)
!802 = !DILocation(line: 303, column: 4, scope: !692)
!803 = !DILocation(line: 312, column: 1, scope: !692)
!804 = distinct !DISubprogram(name: "GuestInfo_IsEqual_WinsConfigInfo", scope: !41, file: !41, line: 446, type: !805, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!805 = !DISubroutineType(types: !806)
!806 = !{!44, !807, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!809 = !DILocalVariable(name: "a", arg: 1, scope: !804, file: !41, line: 446, type: !807)
!810 = !DILocation(line: 446, column: 56, scope: !804)
!811 = !DILocalVariable(name: "b", arg: 2, scope: !804, file: !41, line: 447, type: !807)
!812 = !DILocation(line: 447, column: 56, scope: !804)
!813 = !DILocation(line: 449, column: 4, scope: !804)
!814 = distinct !{!814, !813}
!815 = !DILocation(line: 449, column: 15, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !41, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !818, file: !41, line: 449, column: 13)
!818 = distinct !DILexicalBlock(scope: !804, file: !41, line: 449, column: 7)
!819 = !DILocation(line: 449, column: 14, scope: !816)
!820 = !DILocation(line: 449, column: 18, scope: !816)
!821 = !DILocation(line: 449, column: 23, scope: !822)
!822 = !DILexicalBlockFile(scope: !817, file: !41, discriminator: 2)
!823 = !DILocation(line: 449, column: 22, scope: !822)
!824 = !DILocation(line: 449, column: 13, scope: !822)
!825 = !DILocation(line: 449, column: 29, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !41, discriminator: 3)
!827 = distinct !DILexicalBlock(scope: !817, file: !41, line: 449, column: 27)
!828 = !DILocation(line: 449, column: 53, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !41, discriminator: 4)
!830 = distinct !DILexicalBlock(scope: !817, file: !41, line: 449, column: 50)
!831 = !DILocation(line: 449, column: 52, scope: !829)
!832 = !DILocation(line: 449, column: 56, scope: !829)
!833 = !DILocation(line: 449, column: 60, scope: !834)
!834 = !DILexicalBlockFile(scope: !830, file: !41, discriminator: 5)
!835 = !DILocation(line: 449, column: 59, scope: !834)
!836 = !DILocation(line: 449, column: 64, scope: !834)
!837 = !DILocation(line: 449, column: 69, scope: !838)
!838 = !DILexicalBlockFile(scope: !830, file: !41, discriminator: 6)
!839 = !DILocation(line: 449, column: 68, scope: !838)
!840 = !DILocation(line: 449, column: 72, scope: !838)
!841 = !DILocation(line: 449, column: 77, scope: !842)
!842 = !DILexicalBlockFile(scope: !830, file: !41, discriminator: 7)
!843 = !DILocation(line: 449, column: 76, scope: !842)
!844 = !DILocation(line: 449, column: 50, scope: !842)
!845 = !DILocation(line: 449, column: 84, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !41, discriminator: 8)
!847 = distinct !DILexicalBlock(scope: !830, file: !41, line: 449, column: 82)
!848 = !DILocation(line: 449, column: 96, scope: !849)
!849 = !DILexicalBlockFile(scope: !818, file: !41, discriminator: 9)
!850 = !DILocation(line: 451, column: 45, scope: !804)
!851 = !DILocation(line: 451, column: 48, scope: !804)
!852 = !DILocation(line: 451, column: 58, scope: !804)
!853 = !DILocation(line: 451, column: 61, scope: !804)
!854 = !DILocation(line: 451, column: 11, scope: !804)
!855 = !DILocation(line: 451, column: 70, scope: !804)
!856 = !DILocation(line: 452, column: 45, scope: !804)
!857 = !DILocation(line: 452, column: 48, scope: !804)
!858 = !DILocation(line: 452, column: 60, scope: !804)
!859 = !DILocation(line: 452, column: 63, scope: !804)
!860 = !DILocation(line: 452, column: 11, scope: !804)
!861 = !DILocation(line: 451, column: 70, scope: !862)
!862 = !DILexicalBlockFile(scope: !804, file: !41, discriminator: 1)
!863 = !DILocation(line: 451, column: 70, scope: !864)
!864 = !DILexicalBlockFile(scope: !804, file: !41, discriminator: 2)
!865 = !DILocation(line: 451, column: 11, scope: !864)
!866 = !DILocation(line: 451, column: 4, scope: !864)
!867 = !DILocation(line: 453, column: 1, scope: !804)
!868 = distinct !DISubprogram(name: "GuestInfo_IsEqual_InetCidrRouteEntry", scope: !41, file: !41, line: 259, type: !869, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!869 = !DISubroutineType(types: !870)
!870 = !{!44, !871, !871, !886, !886}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !4, line: 154, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !4, line: 146, size: 448, align: 64, elements: !875)
!875 = !{!876, !877, !878, !879, !883, !885}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !874, file: !4, line: 147, baseType: !141, size: 192, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !874, file: !4, line: 148, baseType: !511, size: 32, align: 32, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !874, file: !4, line: 149, baseType: !140, size: 64, align: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !874, file: !4, line: 150, baseType: !880, size: 32, align: 32, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !45, line: 173, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !882, line: 51, baseType: !138)
!882 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line748")
!883 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !874, file: !4, line: 151, baseType: !884, size: 32, align: 32, offset: 352)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !4, line: 144, baseType: !29)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !874, file: !4, line: 152, baseType: !880, size: 32, align: 32, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !4, line: 190, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !4, line: 176, size: 512, align: 64, elements: !890)
!890 = !{!891, !897, !903, !904, !905, !906}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !889, file: !4, line: 180, baseType: !892, size: 128, align: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !4, line: 177, size: 128, align: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !892, file: !4, line: 178, baseType: !134, size: 32, align: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !892, file: !4, line: 179, baseType: !896, size: 64, align: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !889, file: !4, line: 184, baseType: !898, size: 128, align: 64, offset: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !4, line: 181, size: 128, align: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !898, file: !4, line: 182, baseType: !134, size: 32, align: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !898, file: !4, line: 183, baseType: !902, size: 64, align: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !889, file: !4, line: 185, baseType: !519, size: 64, align: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !889, file: !4, line: 186, baseType: !521, size: 64, align: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !889, file: !4, line: 187, baseType: !528, size: 64, align: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !889, file: !4, line: 188, baseType: !528, size: 64, align: 64, offset: 448)
!907 = !DILocalVariable(name: "a", arg: 1, scope: !868, file: !41, line: 259, type: !871)
!908 = !DILocation(line: 259, column: 64, scope: !868)
!909 = !DILocalVariable(name: "b", arg: 2, scope: !868, file: !41, line: 260, type: !871)
!910 = !DILocation(line: 260, column: 64, scope: !868)
!911 = !DILocalVariable(name: "aInfo", arg: 3, scope: !868, file: !41, line: 261, type: !886)
!912 = !DILocation(line: 261, column: 55, scope: !868)
!913 = !DILocalVariable(name: "bInfo", arg: 4, scope: !868, file: !41, line: 262, type: !886)
!914 = !DILocation(line: 262, column: 55, scope: !868)
!915 = !DILocation(line: 264, column: 4, scope: !868)
!916 = distinct !{!916, !915}
!917 = !DILocation(line: 264, column: 15, scope: !918)
!918 = !DILexicalBlockFile(scope: !919, file: !41, discriminator: 1)
!919 = distinct !DILexicalBlock(scope: !920, file: !41, line: 264, column: 13)
!920 = distinct !DILexicalBlock(scope: !868, file: !41, line: 264, column: 7)
!921 = !DILocation(line: 264, column: 14, scope: !918)
!922 = !DILocation(line: 264, column: 18, scope: !918)
!923 = !DILocation(line: 264, column: 23, scope: !924)
!924 = !DILexicalBlockFile(scope: !919, file: !41, discriminator: 2)
!925 = !DILocation(line: 264, column: 22, scope: !924)
!926 = !DILocation(line: 264, column: 13, scope: !924)
!927 = !DILocation(line: 264, column: 29, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !41, discriminator: 3)
!929 = distinct !DILexicalBlock(scope: !919, file: !41, line: 264, column: 27)
!930 = !DILocation(line: 264, column: 53, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !41, discriminator: 4)
!932 = distinct !DILexicalBlock(scope: !919, file: !41, line: 264, column: 50)
!933 = !DILocation(line: 264, column: 52, scope: !931)
!934 = !DILocation(line: 264, column: 56, scope: !931)
!935 = !DILocation(line: 264, column: 60, scope: !936)
!936 = !DILexicalBlockFile(scope: !932, file: !41, discriminator: 5)
!937 = !DILocation(line: 264, column: 59, scope: !936)
!938 = !DILocation(line: 264, column: 64, scope: !936)
!939 = !DILocation(line: 264, column: 69, scope: !940)
!940 = !DILexicalBlockFile(scope: !932, file: !41, discriminator: 6)
!941 = !DILocation(line: 264, column: 68, scope: !940)
!942 = !DILocation(line: 264, column: 72, scope: !940)
!943 = !DILocation(line: 264, column: 77, scope: !944)
!944 = !DILexicalBlockFile(scope: !932, file: !41, discriminator: 7)
!945 = !DILocation(line: 264, column: 76, scope: !944)
!946 = !DILocation(line: 264, column: 50, scope: !944)
!947 = !DILocation(line: 264, column: 84, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !41, discriminator: 8)
!949 = distinct !DILexicalBlock(scope: !932, file: !41, line: 264, column: 82)
!950 = !DILocation(line: 264, column: 96, scope: !951)
!951 = !DILexicalBlockFile(scope: !920, file: !41, discriminator: 9)
!952 = !DILocation(line: 270, column: 41, scope: !868)
!953 = !DILocation(line: 270, column: 44, scope: !868)
!954 = !DILocation(line: 271, column: 41, scope: !868)
!955 = !DILocation(line: 271, column: 44, scope: !868)
!956 = !DILocation(line: 270, column: 7, scope: !868)
!957 = !DILocation(line: 271, column: 63, scope: !868)
!958 = !DILocation(line: 272, column: 7, scope: !868)
!959 = !DILocation(line: 272, column: 10, scope: !868)
!960 = !DILocation(line: 272, column: 33, scope: !868)
!961 = !DILocation(line: 272, column: 36, scope: !868)
!962 = !DILocation(line: 272, column: 30, scope: !868)
!963 = !DILocation(line: 272, column: 56, scope: !868)
!964 = !DILocation(line: 273, column: 40, scope: !868)
!965 = !DILocation(line: 273, column: 43, scope: !868)
!966 = !DILocation(line: 274, column: 40, scope: !868)
!967 = !DILocation(line: 274, column: 43, scope: !868)
!968 = !DILocation(line: 273, column: 7, scope: !868)
!969 = !DILocation(line: 274, column: 65, scope: !868)
!970 = !DILocation(line: 275, column: 39, scope: !868)
!971 = !DILocation(line: 275, column: 42, scope: !868)
!972 = !DILocation(line: 275, column: 18, scope: !868)
!973 = !DILocation(line: 275, column: 25, scope: !868)
!974 = !DILocation(line: 275, column: 30, scope: !868)
!975 = !DILocation(line: 275, column: 64, scope: !868)
!976 = !DILocation(line: 276, column: 39, scope: !868)
!977 = !DILocation(line: 276, column: 42, scope: !868)
!978 = !DILocation(line: 276, column: 18, scope: !868)
!979 = !DILocation(line: 276, column: 25, scope: !868)
!980 = !DILocation(line: 276, column: 30, scope: !868)
!981 = !DILocation(line: 276, column: 64, scope: !868)
!982 = !DILocation(line: 275, column: 7, scope: !868)
!983 = !DILocation(line: 276, column: 76, scope: !868)
!984 = !DILocation(line: 276, column: 81, scope: !868)
!985 = !DILocation(line: 277, column: 7, scope: !868)
!986 = !DILocation(line: 277, column: 10, scope: !868)
!987 = !DILocation(line: 277, column: 31, scope: !868)
!988 = !DILocation(line: 277, column: 34, scope: !868)
!989 = !DILocation(line: 277, column: 28, scope: !868)
!990 = !DILocation(line: 277, column: 52, scope: !868)
!991 = !DILocation(line: 278, column: 7, scope: !868)
!992 = !DILocation(line: 278, column: 10, scope: !868)
!993 = !DILocation(line: 278, column: 33, scope: !868)
!994 = !DILocation(line: 278, column: 36, scope: !868)
!995 = !DILocation(line: 278, column: 30, scope: !868)
!996 = !DILocation(line: 277, column: 52, scope: !997)
!997 = !DILexicalBlockFile(scope: !868, file: !41, discriminator: 1)
!998 = !DILocation(line: 270, column: 7, scope: !997)
!999 = !DILocation(line: 269, column: 4, scope: !868)
!1000 = !DILocation(line: 279, column: 1, scope: !868)
!1001 = distinct !DISubprogram(name: "GuestInfo_IsEqual_NicInfoV3", scope: !41, file: !41, line: 331, type: !1002, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!44, !886, !886}
!1004 = !DILocalVariable(name: "a", arg: 1, scope: !1001, file: !41, line: 331, type: !886)
!1005 = !DILocation(line: 331, column: 46, scope: !1001)
!1006 = !DILocalVariable(name: "b", arg: 2, scope: !1001, file: !41, line: 332, type: !886)
!1007 = !DILocation(line: 332, column: 46, scope: !1001)
!1008 = !DILocalVariable(name: "ai", scope: !1001, file: !41, line: 334, type: !134)
!1009 = !DILocation(line: 334, column: 10, scope: !1001)
!1010 = !DILocalVariable(name: "bi", scope: !1001, file: !41, line: 335, type: !134)
!1011 = !DILocation(line: 335, column: 10, scope: !1001)
!1012 = !DILocation(line: 337, column: 4, scope: !1001)
!1013 = distinct !{!1013, !1012}
!1014 = !DILocation(line: 337, column: 15, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1016, file: !41, discriminator: 1)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !41, line: 337, column: 13)
!1017 = distinct !DILexicalBlock(scope: !1001, file: !41, line: 337, column: 7)
!1018 = !DILocation(line: 337, column: 14, scope: !1015)
!1019 = !DILocation(line: 337, column: 18, scope: !1015)
!1020 = !DILocation(line: 337, column: 23, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1016, file: !41, discriminator: 2)
!1022 = !DILocation(line: 337, column: 22, scope: !1021)
!1023 = !DILocation(line: 337, column: 13, scope: !1021)
!1024 = !DILocation(line: 337, column: 29, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !41, discriminator: 3)
!1026 = distinct !DILexicalBlock(scope: !1016, file: !41, line: 337, column: 27)
!1027 = !DILocation(line: 337, column: 53, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !41, discriminator: 4)
!1029 = distinct !DILexicalBlock(scope: !1016, file: !41, line: 337, column: 50)
!1030 = !DILocation(line: 337, column: 52, scope: !1028)
!1031 = !DILocation(line: 337, column: 56, scope: !1028)
!1032 = !DILocation(line: 337, column: 60, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1029, file: !41, discriminator: 5)
!1034 = !DILocation(line: 337, column: 59, scope: !1033)
!1035 = !DILocation(line: 337, column: 64, scope: !1033)
!1036 = !DILocation(line: 337, column: 69, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1029, file: !41, discriminator: 6)
!1038 = !DILocation(line: 337, column: 68, scope: !1037)
!1039 = !DILocation(line: 337, column: 72, scope: !1037)
!1040 = !DILocation(line: 337, column: 77, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1029, file: !41, discriminator: 7)
!1042 = !DILocation(line: 337, column: 76, scope: !1041)
!1043 = !DILocation(line: 337, column: 50, scope: !1041)
!1044 = !DILocation(line: 337, column: 84, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1046, file: !41, discriminator: 8)
!1046 = distinct !DILexicalBlock(scope: !1029, file: !41, line: 337, column: 82)
!1047 = !DILocation(line: 337, column: 96, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1017, file: !41, discriminator: 9)
!1049 = !DILocation(line: 343, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1001, file: !41, line: 343, column: 8)
!1051 = !DILocation(line: 343, column: 11, scope: !1050)
!1052 = !DILocation(line: 343, column: 16, scope: !1050)
!1053 = !DILocation(line: 343, column: 28, scope: !1050)
!1054 = !DILocation(line: 343, column: 31, scope: !1050)
!1055 = !DILocation(line: 343, column: 36, scope: !1050)
!1056 = !DILocation(line: 343, column: 25, scope: !1050)
!1057 = !DILocation(line: 343, column: 8, scope: !1001)
!1058 = !DILocation(line: 344, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !41, line: 343, column: 46)
!1060 = !DILocation(line: 347, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1001, file: !41, line: 347, column: 4)
!1062 = !DILocation(line: 347, column: 9, scope: !1061)
!1063 = !DILocation(line: 347, column: 20, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !41, discriminator: 1)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !41, line: 347, column: 4)
!1066 = !DILocation(line: 347, column: 28, scope: !1064)
!1067 = !DILocation(line: 347, column: 32, scope: !1064)
!1068 = !DILocation(line: 347, column: 37, scope: !1064)
!1069 = !DILocation(line: 347, column: 24, scope: !1064)
!1070 = !DILocation(line: 347, column: 4, scope: !1064)
!1071 = !DILocalVariable(name: "eachNic", scope: !1072, file: !41, line: 348, type: !896)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !41, line: 347, column: 56)
!1073 = !DILocation(line: 348, column: 19, scope: !1072)
!1074 = !DILocation(line: 348, column: 50, scope: !1072)
!1075 = !DILocation(line: 348, column: 31, scope: !1072)
!1076 = !DILocation(line: 348, column: 32, scope: !1072)
!1077 = !DILocation(line: 348, column: 36, scope: !1072)
!1078 = !DILocation(line: 348, column: 41, scope: !1072)
!1079 = !DILocalVariable(name: "cmpNic", scope: !1072, file: !41, line: 349, type: !896)
!1080 = !DILocation(line: 349, column: 19, scope: !1072)
!1081 = !DILocation(line: 349, column: 54, scope: !1072)
!1082 = !DILocation(line: 349, column: 57, scope: !1072)
!1083 = !DILocation(line: 349, column: 66, scope: !1072)
!1084 = !DILocation(line: 349, column: 28, scope: !1072)
!1085 = !DILocation(line: 351, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1072, file: !41, line: 351, column: 11)
!1087 = !DILocation(line: 351, column: 18, scope: !1086)
!1088 = !DILocation(line: 351, column: 25, scope: !1086)
!1089 = !DILocation(line: 352, column: 41, scope: !1086)
!1090 = !DILocation(line: 352, column: 50, scope: !1086)
!1091 = !DILocation(line: 352, column: 12, scope: !1086)
!1092 = !DILocation(line: 351, column: 11, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1072, file: !41, discriminator: 1)
!1094 = !DILocation(line: 353, column: 10, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1086, file: !41, line: 352, column: 59)
!1096 = !DILocation(line: 355, column: 4, scope: !1072)
!1097 = !DILocation(line: 347, column: 52, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1065, file: !41, discriminator: 2)
!1099 = !DILocation(line: 347, column: 4, scope: !1098)
!1100 = distinct !{!1100, !1101}
!1101 = !DILocation(line: 347, column: 4, scope: !1001)
!1102 = !DILocation(line: 361, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1001, file: !41, line: 361, column: 8)
!1104 = !DILocation(line: 361, column: 11, scope: !1103)
!1105 = !DILocation(line: 361, column: 18, scope: !1103)
!1106 = !DILocation(line: 361, column: 32, scope: !1103)
!1107 = !DILocation(line: 361, column: 35, scope: !1103)
!1108 = !DILocation(line: 361, column: 42, scope: !1103)
!1109 = !DILocation(line: 361, column: 29, scope: !1103)
!1110 = !DILocation(line: 361, column: 8, scope: !1001)
!1111 = !DILocation(line: 362, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !41, line: 361, column: 54)
!1113 = !DILocation(line: 365, column: 14, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1001, file: !41, line: 365, column: 4)
!1115 = !DILocation(line: 365, column: 9, scope: !1114)
!1116 = !DILocation(line: 365, column: 20, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1118, file: !41, discriminator: 1)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !41, line: 365, column: 4)
!1119 = !DILocation(line: 365, column: 28, scope: !1117)
!1120 = !DILocation(line: 365, column: 32, scope: !1117)
!1121 = !DILocation(line: 365, column: 39, scope: !1117)
!1122 = !DILocation(line: 365, column: 24, scope: !1117)
!1123 = !DILocation(line: 365, column: 4, scope: !1117)
!1124 = !DILocalVariable(name: "aRoute", scope: !1125, file: !41, line: 366, type: !902)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !41, line: 365, column: 60)
!1126 = !DILocation(line: 366, column: 27, scope: !1125)
!1127 = !DILocation(line: 366, column: 61, scope: !1125)
!1128 = !DILocation(line: 366, column: 38, scope: !1125)
!1129 = !DILocation(line: 366, column: 39, scope: !1125)
!1130 = !DILocation(line: 366, column: 43, scope: !1125)
!1131 = !DILocation(line: 366, column: 50, scope: !1125)
!1132 = !DILocation(line: 368, column: 17, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !41, line: 368, column: 7)
!1134 = !DILocation(line: 368, column: 12, scope: !1133)
!1135 = !DILocation(line: 368, column: 23, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !41, discriminator: 1)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !41, line: 368, column: 7)
!1138 = !DILocation(line: 368, column: 31, scope: !1136)
!1139 = !DILocation(line: 368, column: 35, scope: !1136)
!1140 = !DILocation(line: 368, column: 42, scope: !1136)
!1141 = !DILocation(line: 368, column: 27, scope: !1136)
!1142 = !DILocation(line: 368, column: 7, scope: !1136)
!1143 = !DILocalVariable(name: "bRoute", scope: !1144, file: !41, line: 369, type: !902)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !41, line: 368, column: 63)
!1145 = !DILocation(line: 369, column: 30, scope: !1144)
!1146 = !DILocation(line: 369, column: 64, scope: !1144)
!1147 = !DILocation(line: 369, column: 41, scope: !1144)
!1148 = !DILocation(line: 369, column: 42, scope: !1144)
!1149 = !DILocation(line: 369, column: 46, scope: !1144)
!1150 = !DILocation(line: 369, column: 53, scope: !1144)
!1151 = !DILocation(line: 371, column: 51, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !41, line: 371, column: 14)
!1153 = !DILocation(line: 371, column: 59, scope: !1152)
!1154 = !DILocation(line: 371, column: 67, scope: !1152)
!1155 = !DILocation(line: 371, column: 70, scope: !1152)
!1156 = !DILocation(line: 371, column: 14, scope: !1152)
!1157 = !DILocation(line: 371, column: 14, scope: !1144)
!1158 = !DILocation(line: 372, column: 13, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !41, line: 371, column: 74)
!1160 = !DILocation(line: 374, column: 7, scope: !1144)
!1161 = !DILocation(line: 368, column: 59, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1137, file: !41, discriminator: 2)
!1163 = !DILocation(line: 368, column: 7, scope: !1162)
!1164 = distinct !{!1164, !1165}
!1165 = !DILocation(line: 368, column: 7, scope: !1125)
!1166 = !DILocation(line: 376, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1125, file: !41, line: 376, column: 11)
!1168 = !DILocation(line: 376, column: 17, scope: !1167)
!1169 = !DILocation(line: 376, column: 20, scope: !1167)
!1170 = !DILocation(line: 376, column: 27, scope: !1167)
!1171 = !DILocation(line: 376, column: 14, scope: !1167)
!1172 = !DILocation(line: 376, column: 11, scope: !1125)
!1173 = !DILocation(line: 378, column: 10, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !41, line: 376, column: 39)
!1175 = !DILocation(line: 380, column: 4, scope: !1125)
!1176 = !DILocation(line: 365, column: 56, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1118, file: !41, discriminator: 2)
!1178 = !DILocation(line: 365, column: 4, scope: !1177)
!1179 = distinct !{!1179, !1180}
!1180 = !DILocation(line: 365, column: 4, scope: !1001)
!1181 = !DILocation(line: 391, column: 39, scope: !1001)
!1182 = !DILocation(line: 391, column: 42, scope: !1001)
!1183 = !DILocation(line: 391, column: 57, scope: !1001)
!1184 = !DILocation(line: 391, column: 60, scope: !1001)
!1185 = !DILocation(line: 391, column: 7, scope: !1001)
!1186 = !DILocation(line: 391, column: 75, scope: !1001)
!1187 = !DILocation(line: 392, column: 40, scope: !1001)
!1188 = !DILocation(line: 392, column: 43, scope: !1001)
!1189 = !DILocation(line: 392, column: 59, scope: !1001)
!1190 = !DILocation(line: 392, column: 62, scope: !1001)
!1191 = !DILocation(line: 392, column: 7, scope: !1001)
!1192 = !DILocation(line: 392, column: 78, scope: !1001)
!1193 = !DILocation(line: 393, column: 40, scope: !1001)
!1194 = !DILocation(line: 393, column: 43, scope: !1001)
!1195 = !DILocation(line: 393, column: 61, scope: !1001)
!1196 = !DILocation(line: 393, column: 64, scope: !1001)
!1197 = !DILocation(line: 393, column: 7, scope: !1001)
!1198 = !DILocation(line: 393, column: 82, scope: !1001)
!1199 = !DILocation(line: 394, column: 40, scope: !1001)
!1200 = !DILocation(line: 394, column: 43, scope: !1001)
!1201 = !DILocation(line: 394, column: 61, scope: !1001)
!1202 = !DILocation(line: 394, column: 64, scope: !1001)
!1203 = !DILocation(line: 394, column: 7, scope: !1001)
!1204 = !DILocation(line: 393, column: 82, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1001, file: !41, discriminator: 1)
!1206 = !DILocation(line: 393, column: 82, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1001, file: !41, discriminator: 2)
!1208 = !DILocation(line: 391, column: 7, scope: !1205)
!1209 = !DILocation(line: 390, column: 4, scope: !1001)
!1210 = !DILocation(line: 395, column: 1, scope: !1001)
