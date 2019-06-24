; ModuleID = './libGuestRpc_la-nicinfo_xdr.o.i'
source_filename = "./libGuestRpc_la-nicinfo_xdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.VmIpAddress = type { i32, i8, [64 x i8], [64 x i8] }
%struct.GuestNic = type { [18 x i8], %struct.anon }
%struct.anon = type { i32, %struct.VmIpAddress* }
%struct.GuestNicList = type { %struct.anon.0 }
%struct.anon.0 = type { i32, %struct.GuestNic* }
%struct.InetAddress = type { i32, i8* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i32, %struct.TypedIpAddress* }
%struct.anon.2 = type { i32, i8** }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }
%struct.DhcpConfigInfo = type { i32, i8* }
%struct.GuestNicV3 = type { i8*, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.3 = type { i32, %struct.IpAddressEntry* }
%struct.NicInfoV3 = type { %struct.anon.4, %struct.anon.5, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.4 = type { i32, %struct.GuestNicV3* }
%struct.anon.5 = type { i32, %struct.InetCidrRouteEntry* }
%struct.GuestNicProto = type { i32, %union.anon }
%union.anon = type { %struct.GuestNicList* }

; Function Attrs: nounwind uwtable
define i32 @xdr_NicInfoVersion(%struct.XDR*, i32*) #0 !dbg !140 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !147, metadata !148), !dbg !149
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !150, metadata !148), !dbg !151
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !152
  %7 = load i32*, i32** %5, align 8, !dbg !154
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !155
  %9 = icmp ne i32 %8, 0, !dbg !155
  br i1 %9, label %11, label %10, !dbg !156

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !157
  br label %12, !dbg !157

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !158
  br label %12, !dbg !158

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !159
  ret i32 %13, !dbg !159
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @xdr_enum(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_NicInfoAddrType(%struct.XDR*, i32*) #0 !dbg !160 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !165, metadata !148), !dbg !166
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !167, metadata !148), !dbg !168
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !169
  %7 = load i32*, i32** %5, align 8, !dbg !171
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !172
  %9 = icmp ne i32 %8, 0, !dbg !172
  br i1 %9, label %11, label %10, !dbg !173

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !174
  br label %12, !dbg !174

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !175
  br label %12, !dbg !175

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !176
  ret i32 %13, !dbg !176
}

; Function Attrs: nounwind uwtable
define i32 @xdr_VmIpAddress(%struct.XDR*, %struct.VmIpAddress*) #0 !dbg !177 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.VmIpAddress*, align 8
  %6 = alloca i32, align 4
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !193, metadata !148), !dbg !194
  store %struct.VmIpAddress* %1, %struct.VmIpAddress** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VmIpAddress** %5, metadata !195, metadata !148), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %6, metadata !197, metadata !148), !dbg !198
  %7 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !199
  %8 = load %struct.VmIpAddress*, %struct.VmIpAddress** %5, align 8, !dbg !201
  %9 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %8, i32 0, i32 0, !dbg !202
  %10 = call i32 @xdr_NicInfoAddrType(%struct.XDR* %7, i32* %9), !dbg !203
  %11 = icmp ne i32 %10, 0, !dbg !203
  br i1 %11, label %13, label %12, !dbg !204

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !205
  br label %37, !dbg !205

; <label>:13:                                     ; preds = %2
  %14 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !206
  %15 = load %struct.VmIpAddress*, %struct.VmIpAddress** %5, align 8, !dbg !208
  %16 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %15, i32 0, i32 1, !dbg !209
  %17 = call i32 @xdr_Bool(%struct.XDR* %14, i8* %16), !dbg !210
  %18 = icmp ne i32 %17, 0, !dbg !210
  br i1 %18, label %20, label %19, !dbg !211

; <label>:19:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !212
  br label %37, !dbg !212

; <label>:20:                                     ; preds = %13
  %21 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !213
  %22 = load %struct.VmIpAddress*, %struct.VmIpAddress** %5, align 8, !dbg !215
  %23 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %22, i32 0, i32 2, !dbg !216
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i32 0, i32 0, !dbg !215
  %25 = call i32 @xdr_vector(%struct.XDR* %21, i8* %24, i32 64, i32 1, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8*)* @xdr_char to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !217
  %26 = icmp ne i32 %25, 0, !dbg !217
  br i1 %26, label %28, label %27, !dbg !218

; <label>:27:                                     ; preds = %20
  store i32 0, i32* %3, align 4, !dbg !219
  br label %37, !dbg !219

; <label>:28:                                     ; preds = %20
  %29 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !220
  %30 = load %struct.VmIpAddress*, %struct.VmIpAddress** %5, align 8, !dbg !222
  %31 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %30, i32 0, i32 3, !dbg !223
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %31, i32 0, i32 0, !dbg !222
  %33 = call i32 @xdr_vector(%struct.XDR* %29, i8* %32, i32 64, i32 1, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8*)* @xdr_char to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !224
  %34 = icmp ne i32 %33, 0, !dbg !224
  br i1 %34, label %36, label %35, !dbg !225

; <label>:35:                                     ; preds = %28
  store i32 0, i32* %3, align 4, !dbg !226
  br label %37, !dbg !226

; <label>:36:                                     ; preds = %28
  store i32 1, i32* %3, align 4, !dbg !227
  br label %37, !dbg !227

; <label>:37:                                     ; preds = %36, %35, %27, %19, %12
  %38 = load i32, i32* %3, align 4, !dbg !228
  ret i32 %38, !dbg !228
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_Bool(%struct.XDR*, i8*) #3 !dbg !229 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i8*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !234, metadata !148), !dbg !235
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !148), !dbg !237
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !238
  %6 = load i8*, i8** %4, align 8, !dbg !239
  %7 = call i32 @xdr_char(%struct.XDR* %5, i8* %6) #4, !dbg !240
  ret i32 %7, !dbg !241
}

; Function Attrs: nounwind
declare i32 @xdr_vector(%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #2

; Function Attrs: nounwind
declare i32 @xdr_char(%struct.XDR*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestNic(%struct.XDR*, %struct.GuestNic*) #0 !dbg !242 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestNic*, align 8
  %6 = alloca i32, align 4
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !259, metadata !148), !dbg !260
  store %struct.GuestNic* %1, %struct.GuestNic** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNic** %5, metadata !261, metadata !148), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %6, metadata !263, metadata !148), !dbg !264
  %7 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !265
  %8 = load %struct.GuestNic*, %struct.GuestNic** %5, align 8, !dbg !267
  %9 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %8, i32 0, i32 0, !dbg !268
  %10 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i32 0, i32 0, !dbg !267
  %11 = call i32 @xdr_vector(%struct.XDR* %7, i8* %10, i32 18, i32 1, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8*)* @xdr_char to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !269
  %12 = icmp ne i32 %11, 0, !dbg !269
  br i1 %12, label %14, label %13, !dbg !270

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !271
  br label %27, !dbg !271

; <label>:14:                                     ; preds = %2
  %15 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !272
  %16 = load %struct.GuestNic*, %struct.GuestNic** %5, align 8, !dbg !274
  %17 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %16, i32 0, i32 1, !dbg !275
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1, !dbg !276
  %19 = bitcast %struct.VmIpAddress** %18 to i8**, !dbg !277
  %20 = load %struct.GuestNic*, %struct.GuestNic** %5, align 8, !dbg !278
  %21 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %20, i32 0, i32 1, !dbg !279
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0, !dbg !280
  %23 = call i32 @xdr_array(%struct.XDR* %15, i8** %19, i32* %22, i32 2048, i32 136, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.VmIpAddress*)* @xdr_VmIpAddress to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !281
  %24 = icmp ne i32 %23, 0, !dbg !281
  br i1 %24, label %26, label %25, !dbg !282

; <label>:25:                                     ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !283
  br label %27, !dbg !283

; <label>:26:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !284
  br label %27, !dbg !284

; <label>:27:                                     ; preds = %26, %25, %13
  %28 = load i32, i32* %3, align 4, !dbg !285
  ret i32 %28, !dbg !285
}

; Function Attrs: nounwind
declare i32 @xdr_array(%struct.XDR*, i8**, i32*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestNicList(%struct.XDR*, %struct.GuestNicList*) #0 !dbg !286 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestNicList*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !299, metadata !148), !dbg !300
  store %struct.GuestNicList* %1, %struct.GuestNicList** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicList** %5, metadata !301, metadata !148), !dbg !302
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !303
  %7 = load %struct.GuestNicList*, %struct.GuestNicList** %5, align 8, !dbg !305
  %8 = getelementptr inbounds %struct.GuestNicList, %struct.GuestNicList* %7, i32 0, i32 0, !dbg !306
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 1, !dbg !307
  %10 = bitcast %struct.GuestNic** %9 to i8**, !dbg !308
  %11 = load %struct.GuestNicList*, %struct.GuestNicList** %5, align 8, !dbg !309
  %12 = getelementptr inbounds %struct.GuestNicList, %struct.GuestNicList* %11, i32 0, i32 0, !dbg !310
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !311
  %14 = call i32 @xdr_array(%struct.XDR* %6, i8** %10, i32* %13, i32 16, i32 40, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestNic*)* @xdr_GuestNic to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !312
  %15 = icmp ne i32 %14, 0, !dbg !312
  br i1 %15, label %17, label %16, !dbg !313

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !314
  br label %18, !dbg !314

; <label>:17:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !315
  br label %18, !dbg !315

; <label>:18:                                     ; preds = %17, %16
  %19 = load i32, i32* %3, align 4, !dbg !316
  ret i32 %19, !dbg !316
}

; Function Attrs: nounwind uwtable
define i32 @xdr_InetAddress(%struct.XDR*, %struct.InetAddress*) #0 !dbg !317 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.InetAddress*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !326, metadata !148), !dbg !327
  store %struct.InetAddress* %1, %struct.InetAddress** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.InetAddress** %5, metadata !328, metadata !148), !dbg !329
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !330
  %7 = load %struct.InetAddress*, %struct.InetAddress** %5, align 8, !dbg !332
  %8 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %7, i32 0, i32 1, !dbg !333
  %9 = load %struct.InetAddress*, %struct.InetAddress** %5, align 8, !dbg !334
  %10 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %9, i32 0, i32 0, !dbg !335
  %11 = call i32 @xdr_bytes(%struct.XDR* %6, i8** %8, i32* %10, i32 255) #4, !dbg !336
  %12 = icmp ne i32 %11, 0, !dbg !336
  br i1 %12, label %14, label %13, !dbg !337

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !338
  br label %15, !dbg !338

; <label>:14:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !339
  br label %15, !dbg !339

; <label>:15:                                     ; preds = %14, %13
  %16 = load i32, i32* %3, align 4, !dbg !340
  ret i32 %16, !dbg !340
}

; Function Attrs: nounwind
declare i32 @xdr_bytes(%struct.XDR*, i8**, i32*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_InetAddressType(%struct.XDR*, i32*) #0 !dbg !341 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !346, metadata !148), !dbg !347
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !348, metadata !148), !dbg !349
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !350
  %7 = load i32*, i32** %5, align 8, !dbg !352
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !353
  %9 = icmp ne i32 %8, 0, !dbg !353
  br i1 %9, label %11, label %10, !dbg !354

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !355
  br label %12, !dbg !355

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !356
  br label %12, !dbg !356

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !357
  ret i32 %13, !dbg !357
}

; Function Attrs: nounwind uwtable
define i32 @xdr_InetAddressPrefixLength(%struct.XDR*, i32*) #0 !dbg !358 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !363, metadata !148), !dbg !364
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !365, metadata !148), !dbg !366
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !367
  %7 = load i32*, i32** %5, align 8, !dbg !369
  %8 = call i32 @xdr_u_int(%struct.XDR* %6, i32* %7) #4, !dbg !370
  %9 = icmp ne i32 %8, 0, !dbg !370
  br i1 %9, label %11, label %10, !dbg !371

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !372
  br label %12, !dbg !372

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !373
  br label %12, !dbg !373

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !374
  ret i32 %13, !dbg !374
}

; Function Attrs: nounwind
declare i32 @xdr_u_int(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_IpAddressOrigin(%struct.XDR*, i32*) #0 !dbg !375 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !380, metadata !148), !dbg !381
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !382, metadata !148), !dbg !383
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !384
  %7 = load i32*, i32** %5, align 8, !dbg !386
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !387
  %9 = icmp ne i32 %8, 0, !dbg !387
  br i1 %9, label %11, label %10, !dbg !388

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !389
  br label %12, !dbg !389

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !390
  br label %12, !dbg !390

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !391
  ret i32 %13, !dbg !391
}

; Function Attrs: nounwind uwtable
define i32 @xdr_IpAddressStatus(%struct.XDR*, i32*) #0 !dbg !392 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !397, metadata !148), !dbg !398
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !399, metadata !148), !dbg !400
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !401
  %7 = load i32*, i32** %5, align 8, !dbg !403
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !404
  %9 = icmp ne i32 %8, 0, !dbg !404
  br i1 %9, label %11, label %10, !dbg !405

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !406
  br label %12, !dbg !406

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !407
  br label %12, !dbg !407

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !408
  ret i32 %13, !dbg !408
}

; Function Attrs: nounwind uwtable
define i32 @xdr_TypedIpAddress(%struct.XDR*, %struct.TypedIpAddress*) #0 !dbg !409 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.TypedIpAddress*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !418, metadata !148), !dbg !419
  store %struct.TypedIpAddress* %1, %struct.TypedIpAddress** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %5, metadata !420, metadata !148), !dbg !421
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !422
  %7 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !424
  %8 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %7, i32 0, i32 0, !dbg !425
  %9 = call i32 @xdr_InetAddressType(%struct.XDR* %6, i32* %8), !dbg !426
  %10 = icmp ne i32 %9, 0, !dbg !426
  br i1 %10, label %12, label %11, !dbg !427

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !428
  br label %20, !dbg !428

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !429
  %14 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !431
  %15 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %14, i32 0, i32 1, !dbg !432
  %16 = call i32 @xdr_InetAddress(%struct.XDR* %13, %struct.InetAddress* %15), !dbg !433
  %17 = icmp ne i32 %16, 0, !dbg !433
  br i1 %17, label %19, label %18, !dbg !434

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !435
  br label %20, !dbg !435

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !436
  br label %20, !dbg !436

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !437
  ret i32 %21, !dbg !437
}

; Function Attrs: nounwind uwtable
define i32 @xdr_IpAddressEntry(%struct.XDR*, %struct.IpAddressEntry*) #0 !dbg !438 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.IpAddressEntry*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !449, metadata !148), !dbg !450
  store %struct.IpAddressEntry* %1, %struct.IpAddressEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %5, metadata !451, metadata !148), !dbg !452
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !453
  %7 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !455
  %8 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %7, i32 0, i32 0, !dbg !456
  %9 = call i32 @xdr_TypedIpAddress(%struct.XDR* %6, %struct.TypedIpAddress* %8), !dbg !457
  %10 = icmp ne i32 %9, 0, !dbg !457
  br i1 %10, label %12, label %11, !dbg !458

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !459
  br label %36, !dbg !459

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !460
  %14 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !462
  %15 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %14, i32 0, i32 1, !dbg !463
  %16 = call i32 @xdr_InetAddressPrefixLength(%struct.XDR* %13, i32* %15), !dbg !464
  %17 = icmp ne i32 %16, 0, !dbg !464
  br i1 %17, label %19, label %18, !dbg !465

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !466
  br label %36, !dbg !466

; <label>:19:                                     ; preds = %12
  %20 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !467
  %21 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !469
  %22 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %21, i32 0, i32 2, !dbg !470
  %23 = bitcast i32** %22 to i8**, !dbg !471
  %24 = call i32 @xdr_pointer(%struct.XDR* %20, i8** %23, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i32*)* @xdr_IpAddressOrigin to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !472
  %25 = icmp ne i32 %24, 0, !dbg !472
  br i1 %25, label %27, label %26, !dbg !473

; <label>:26:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !474
  br label %36, !dbg !474

; <label>:27:                                     ; preds = %19
  %28 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !475
  %29 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %5, align 8, !dbg !477
  %30 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %29, i32 0, i32 3, !dbg !478
  %31 = bitcast i32** %30 to i8**, !dbg !479
  %32 = call i32 @xdr_pointer(%struct.XDR* %28, i8** %31, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i32*)* @xdr_IpAddressStatus to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !480
  %33 = icmp ne i32 %32, 0, !dbg !480
  br i1 %33, label %35, label %34, !dbg !481

; <label>:34:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !482
  br label %36, !dbg !482

; <label>:35:                                     ; preds = %27
  store i32 1, i32* %3, align 4, !dbg !483
  br label %36, !dbg !483

; <label>:36:                                     ; preds = %35, %34, %26, %18, %11
  %37 = load i32, i32* %3, align 4, !dbg !484
  ret i32 %37, !dbg !484
}

; Function Attrs: nounwind
declare i32 @xdr_pointer(%struct.XDR*, i8**, i32, i32 (%struct.XDR*, i8*, ...)*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_DnsHostname(%struct.XDR*, i8**) #0 !dbg !485 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i8**, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !490, metadata !148), !dbg !491
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !492, metadata !148), !dbg !493
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !494
  %7 = load i8**, i8*** %5, align 8, !dbg !496
  %8 = call i32 @xdr_string(%struct.XDR* %6, i8** %7, i32 255) #4, !dbg !497
  %9 = icmp ne i32 %8, 0, !dbg !497
  br i1 %9, label %11, label %10, !dbg !498

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !499
  br label %12, !dbg !499

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !500
  br label %12, !dbg !500

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !501
  ret i32 %13, !dbg !501
}

; Function Attrs: nounwind
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_DnsConfigInfo(%struct.XDR*, %struct.DnsConfigInfo*) #0 !dbg !502 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.DnsConfigInfo*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !521, metadata !148), !dbg !522
  store %struct.DnsConfigInfo* %1, %struct.DnsConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %5, metadata !523, metadata !148), !dbg !524
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !525
  %7 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !527
  %8 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %7, i32 0, i32 0, !dbg !528
  %9 = bitcast i8*** %8 to i8**, !dbg !529
  %10 = call i32 @xdr_pointer(%struct.XDR* %6, i8** %9, i32 8, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8**)* @xdr_DnsHostname to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !530
  %11 = icmp ne i32 %10, 0, !dbg !530
  br i1 %11, label %13, label %12, !dbg !531

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !532
  br label %46, !dbg !532

; <label>:13:                                     ; preds = %2
  %14 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !533
  %15 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !535
  %16 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %15, i32 0, i32 1, !dbg !536
  %17 = bitcast i8*** %16 to i8**, !dbg !537
  %18 = call i32 @xdr_pointer(%struct.XDR* %14, i8** %17, i32 8, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8**)* @xdr_DnsHostname to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !538
  %19 = icmp ne i32 %18, 0, !dbg !538
  br i1 %19, label %21, label %20, !dbg !539

; <label>:20:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !540
  br label %46, !dbg !540

; <label>:21:                                     ; preds = %13
  %22 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !541
  %23 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !543
  %24 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %23, i32 0, i32 2, !dbg !544
  %25 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %24, i32 0, i32 1, !dbg !545
  %26 = bitcast %struct.TypedIpAddress** %25 to i8**, !dbg !546
  %27 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !547
  %28 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %27, i32 0, i32 2, !dbg !548
  %29 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %28, i32 0, i32 0, !dbg !549
  %30 = call i32 @xdr_array(%struct.XDR* %22, i8** %26, i32* %29, i32 16, i32 24, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.TypedIpAddress*)* @xdr_TypedIpAddress to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !550
  %31 = icmp ne i32 %30, 0, !dbg !550
  br i1 %31, label %33, label %32, !dbg !551

; <label>:32:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !552
  br label %46, !dbg !552

; <label>:33:                                     ; preds = %21
  %34 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !553
  %35 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !555
  %36 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %35, i32 0, i32 3, !dbg !556
  %37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %36, i32 0, i32 1, !dbg !557
  %38 = bitcast i8*** %37 to i8**, !dbg !558
  %39 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %5, align 8, !dbg !559
  %40 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %39, i32 0, i32 3, !dbg !560
  %41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %40, i32 0, i32 0, !dbg !561
  %42 = call i32 @xdr_array(%struct.XDR* %34, i8** %38, i32* %41, i32 10, i32 8, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8**)* @xdr_DnsHostname to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !562
  %43 = icmp ne i32 %42, 0, !dbg !562
  br i1 %43, label %45, label %44, !dbg !563

; <label>:44:                                     ; preds = %33
  store i32 0, i32* %3, align 4, !dbg !564
  br label %46, !dbg !564

; <label>:45:                                     ; preds = %33
  store i32 1, i32* %3, align 4, !dbg !565
  br label %46, !dbg !565

; <label>:46:                                     ; preds = %45, %44, %32, %20, %12
  %47 = load i32, i32* %3, align 4, !dbg !566
  ret i32 %47, !dbg !566
}

; Function Attrs: nounwind uwtable
define i32 @xdr_WinsConfigInfo(%struct.XDR*, %struct.WinsConfigInfo*) #0 !dbg !567 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.WinsConfigInfo*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !576, metadata !148), !dbg !577
  store %struct.WinsConfigInfo* %1, %struct.WinsConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.WinsConfigInfo** %5, metadata !578, metadata !148), !dbg !579
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !580
  %7 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !582
  %8 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %7, i32 0, i32 0, !dbg !583
  %9 = call i32 @xdr_TypedIpAddress(%struct.XDR* %6, %struct.TypedIpAddress* %8), !dbg !584
  %10 = icmp ne i32 %9, 0, !dbg !584
  br i1 %10, label %12, label %11, !dbg !585

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !586
  br label %20, !dbg !586

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !587
  %14 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %5, align 8, !dbg !589
  %15 = getelementptr inbounds %struct.WinsConfigInfo, %struct.WinsConfigInfo* %14, i32 0, i32 1, !dbg !590
  %16 = call i32 @xdr_TypedIpAddress(%struct.XDR* %13, %struct.TypedIpAddress* %15), !dbg !591
  %17 = icmp ne i32 %16, 0, !dbg !591
  br i1 %17, label %19, label %18, !dbg !592

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !593
  br label %20, !dbg !593

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !594
  br label %20, !dbg !594

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !595
  ret i32 %21, !dbg !595
}

; Function Attrs: nounwind uwtable
define i32 @xdr_InetCidrRouteType(%struct.XDR*, i32*) #0 !dbg !596 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !601, metadata !148), !dbg !602
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !603, metadata !148), !dbg !604
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !605
  %7 = load i32*, i32** %5, align 8, !dbg !607
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #4, !dbg !608
  %9 = icmp ne i32 %8, 0, !dbg !608
  br i1 %9, label %11, label %10, !dbg !609

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !610
  br label %12, !dbg !610

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !611
  br label %12, !dbg !611

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !612
  ret i32 %13, !dbg !612
}

; Function Attrs: nounwind uwtable
define i32 @xdr_InetCidrRouteEntry(%struct.XDR*, %struct.InetCidrRouteEntry*) #0 !dbg !613 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.InetCidrRouteEntry*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !629, metadata !148), !dbg !630
  store %struct.InetCidrRouteEntry* %1, %struct.InetCidrRouteEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %5, metadata !631, metadata !148), !dbg !632
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !633
  %7 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !635
  %8 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %7, i32 0, i32 0, !dbg !636
  %9 = call i32 @xdr_TypedIpAddress(%struct.XDR* %6, %struct.TypedIpAddress* %8), !dbg !637
  %10 = icmp ne i32 %9, 0, !dbg !637
  br i1 %10, label %12, label %11, !dbg !638

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !639
  br label %49, !dbg !639

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !640
  %14 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !642
  %15 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %14, i32 0, i32 1, !dbg !643
  %16 = call i32 @xdr_InetAddressPrefixLength(%struct.XDR* %13, i32* %15), !dbg !644
  %17 = icmp ne i32 %16, 0, !dbg !644
  br i1 %17, label %19, label %18, !dbg !645

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !646
  br label %49, !dbg !646

; <label>:19:                                     ; preds = %12
  %20 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !647
  %21 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !649
  %22 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %21, i32 0, i32 2, !dbg !650
  %23 = bitcast %struct.TypedIpAddress** %22 to i8**, !dbg !651
  %24 = call i32 @xdr_pointer(%struct.XDR* %20, i8** %23, i32 24, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.TypedIpAddress*)* @xdr_TypedIpAddress to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !652
  %25 = icmp ne i32 %24, 0, !dbg !652
  br i1 %25, label %27, label %26, !dbg !653

; <label>:26:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !654
  br label %49, !dbg !654

; <label>:27:                                     ; preds = %19
  %28 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !655
  %29 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !657
  %30 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %29, i32 0, i32 3, !dbg !658
  %31 = call i32 @xdr_uint32(%struct.XDR* %28, i32* %30), !dbg !659
  %32 = icmp ne i32 %31, 0, !dbg !659
  br i1 %32, label %34, label %33, !dbg !660

; <label>:33:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !661
  br label %49, !dbg !661

; <label>:34:                                     ; preds = %27
  %35 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !662
  %36 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !664
  %37 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %36, i32 0, i32 4, !dbg !665
  %38 = call i32 @xdr_InetCidrRouteType(%struct.XDR* %35, i32* %37), !dbg !666
  %39 = icmp ne i32 %38, 0, !dbg !666
  br i1 %39, label %41, label %40, !dbg !667

; <label>:40:                                     ; preds = %34
  store i32 0, i32* %3, align 4, !dbg !668
  br label %49, !dbg !668

; <label>:41:                                     ; preds = %34
  %42 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !669
  %43 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %5, align 8, !dbg !671
  %44 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %43, i32 0, i32 5, !dbg !672
  %45 = call i32 @xdr_uint32(%struct.XDR* %42, i32* %44), !dbg !673
  %46 = icmp ne i32 %45, 0, !dbg !673
  br i1 %46, label %48, label %47, !dbg !674

; <label>:47:                                     ; preds = %41
  store i32 0, i32* %3, align 4, !dbg !675
  br label %49, !dbg !675

; <label>:48:                                     ; preds = %41
  store i32 1, i32* %3, align 4, !dbg !676
  br label %49, !dbg !676

; <label>:49:                                     ; preds = %48, %47, %40, %33, %26, %18, %11
  %50 = load i32, i32* %3, align 4, !dbg !677
  ret i32 %50, !dbg !677
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @xdr_uint32(%struct.XDR*, i32*) #3 !dbg !678 {
  %3 = alloca %struct.XDR*, align 8
  %4 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %3, metadata !682, metadata !148), !dbg !683
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !684, metadata !148), !dbg !685
  %5 = load %struct.XDR*, %struct.XDR** %3, align 8, !dbg !686
  %6 = load i32*, i32** %4, align 8, !dbg !687
  %7 = call i32 @xdr_uint32_t(%struct.XDR* %5, i32* %6) #4, !dbg !688
  ret i32 %7, !dbg !689
}

; Function Attrs: nounwind uwtable
define i32 @xdr_DhcpConfigInfo(%struct.XDR*, %struct.DhcpConfigInfo*) #0 !dbg !690 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.DhcpConfigInfo*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !699, metadata !148), !dbg !700
  store %struct.DhcpConfigInfo* %1, %struct.DhcpConfigInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DhcpConfigInfo** %5, metadata !701, metadata !148), !dbg !702
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !703
  %7 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !705
  %8 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %7, i32 0, i32 0, !dbg !706
  %9 = call i32 @xdr_bool(%struct.XDR* %6, i32* %8) #4, !dbg !707
  %10 = icmp ne i32 %9, 0, !dbg !707
  br i1 %10, label %12, label %11, !dbg !708

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !709
  br label %20, !dbg !709

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !710
  %14 = load %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo** %5, align 8, !dbg !712
  %15 = getelementptr inbounds %struct.DhcpConfigInfo, %struct.DhcpConfigInfo* %14, i32 0, i32 1, !dbg !713
  %16 = call i32 @xdr_string(%struct.XDR* %13, i8** %15, i32 16384) #4, !dbg !714
  %17 = icmp ne i32 %16, 0, !dbg !714
  br i1 %17, label %19, label %18, !dbg !715

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !716
  br label %20, !dbg !716

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !717
  br label %20, !dbg !717

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !718
  ret i32 %21, !dbg !718
}

; Function Attrs: nounwind
declare i32 @xdr_bool(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestNicV3(%struct.XDR*, %struct.GuestNicV3*) #0 !dbg !719 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestNicV3*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !736, metadata !148), !dbg !737
  store %struct.GuestNicV3* %1, %struct.GuestNicV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %5, metadata !738, metadata !148), !dbg !739
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !740
  %7 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !742
  %8 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %7, i32 0, i32 0, !dbg !743
  %9 = call i32 @xdr_string(%struct.XDR* %6, i8** %8, i32 18) #4, !dbg !744
  %10 = icmp ne i32 %9, 0, !dbg !744
  br i1 %10, label %12, label %11, !dbg !745

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !746
  br label %57, !dbg !746

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !747
  %14 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !749
  %15 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %14, i32 0, i32 1, !dbg !750
  %16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %15, i32 0, i32 1, !dbg !751
  %17 = bitcast %struct.IpAddressEntry** %16 to i8**, !dbg !752
  %18 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !753
  %19 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %18, i32 0, i32 1, !dbg !754
  %20 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %19, i32 0, i32 0, !dbg !755
  %21 = call i32 @xdr_array(%struct.XDR* %13, i8** %17, i32* %20, i32 2048, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.IpAddressEntry*)* @xdr_IpAddressEntry to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !756
  %22 = icmp ne i32 %21, 0, !dbg !756
  br i1 %22, label %24, label %23, !dbg !757

; <label>:23:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !758
  br label %57, !dbg !758

; <label>:24:                                     ; preds = %12
  %25 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !759
  %26 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !761
  %27 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %26, i32 0, i32 2, !dbg !762
  %28 = bitcast %struct.DnsConfigInfo** %27 to i8**, !dbg !763
  %29 = call i32 @xdr_pointer(%struct.XDR* %25, i8** %28, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DnsConfigInfo*)* @xdr_DnsConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !764
  %30 = icmp ne i32 %29, 0, !dbg !764
  br i1 %30, label %32, label %31, !dbg !765

; <label>:31:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !766
  br label %57, !dbg !766

; <label>:32:                                     ; preds = %24
  %33 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !767
  %34 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !769
  %35 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %34, i32 0, i32 3, !dbg !770
  %36 = bitcast %struct.WinsConfigInfo** %35 to i8**, !dbg !771
  %37 = call i32 @xdr_pointer(%struct.XDR* %33, i8** %36, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.WinsConfigInfo*)* @xdr_WinsConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !772
  %38 = icmp ne i32 %37, 0, !dbg !772
  br i1 %38, label %40, label %39, !dbg !773

; <label>:39:                                     ; preds = %32
  store i32 0, i32* %3, align 4, !dbg !774
  br label %57, !dbg !774

; <label>:40:                                     ; preds = %32
  %41 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !775
  %42 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !777
  %43 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %42, i32 0, i32 4, !dbg !778
  %44 = bitcast %struct.DhcpConfigInfo** %43 to i8**, !dbg !779
  %45 = call i32 @xdr_pointer(%struct.XDR* %41, i8** %44, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DhcpConfigInfo*)* @xdr_DhcpConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !780
  %46 = icmp ne i32 %45, 0, !dbg !780
  br i1 %46, label %48, label %47, !dbg !781

; <label>:47:                                     ; preds = %40
  store i32 0, i32* %3, align 4, !dbg !782
  br label %57, !dbg !782

; <label>:48:                                     ; preds = %40
  %49 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !783
  %50 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !785
  %51 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %50, i32 0, i32 5, !dbg !786
  %52 = bitcast %struct.DhcpConfigInfo** %51 to i8**, !dbg !787
  %53 = call i32 @xdr_pointer(%struct.XDR* %49, i8** %52, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DhcpConfigInfo*)* @xdr_DhcpConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !788
  %54 = icmp ne i32 %53, 0, !dbg !788
  br i1 %54, label %56, label %55, !dbg !789

; <label>:55:                                     ; preds = %48
  store i32 0, i32* %3, align 4, !dbg !790
  br label %57, !dbg !790

; <label>:56:                                     ; preds = %48
  store i32 1, i32* %3, align 4, !dbg !791
  br label %57, !dbg !791

; <label>:57:                                     ; preds = %56, %55, %47, %39, %31, %23, %11
  %58 = load i32, i32* %3, align 4, !dbg !792
  ret i32 %58, !dbg !792
}

; Function Attrs: nounwind uwtable
define i32 @xdr_NicInfoV3(%struct.XDR*, %struct.NicInfoV3*) #0 !dbg !793 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.NicInfoV3*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !814, metadata !148), !dbg !815
  store %struct.NicInfoV3* %1, %struct.NicInfoV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %5, metadata !816, metadata !148), !dbg !817
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !818
  %7 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !820
  %8 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %7, i32 0, i32 0, !dbg !821
  %9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %8, i32 0, i32 1, !dbg !822
  %10 = bitcast %struct.GuestNicV3** %9 to i8**, !dbg !823
  %11 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !824
  %12 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %11, i32 0, i32 0, !dbg !825
  %13 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %12, i32 0, i32 0, !dbg !826
  %14 = call i32 @xdr_array(%struct.XDR* %6, i8** %10, i32* %13, i32 16, i32 56, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestNicV3*)* @xdr_GuestNicV3 to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !827
  %15 = icmp ne i32 %14, 0, !dbg !827
  br i1 %15, label %17, label %16, !dbg !828

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !829
  br label %62, !dbg !829

; <label>:17:                                     ; preds = %2
  %18 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !830
  %19 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !832
  %20 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %19, i32 0, i32 1, !dbg !833
  %21 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %20, i32 0, i32 1, !dbg !834
  %22 = bitcast %struct.InetCidrRouteEntry** %21 to i8**, !dbg !835
  %23 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !836
  %24 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %23, i32 0, i32 1, !dbg !837
  %25 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %24, i32 0, i32 0, !dbg !838
  %26 = call i32 @xdr_array(%struct.XDR* %18, i8** %22, i32* %25, i32 100, i32 56, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.InetCidrRouteEntry*)* @xdr_InetCidrRouteEntry to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !839
  %27 = icmp ne i32 %26, 0, !dbg !839
  br i1 %27, label %29, label %28, !dbg !840

; <label>:28:                                     ; preds = %17
  store i32 0, i32* %3, align 4, !dbg !841
  br label %62, !dbg !841

; <label>:29:                                     ; preds = %17
  %30 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !842
  %31 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !844
  %32 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %31, i32 0, i32 2, !dbg !845
  %33 = bitcast %struct.DnsConfigInfo** %32 to i8**, !dbg !846
  %34 = call i32 @xdr_pointer(%struct.XDR* %30, i8** %33, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DnsConfigInfo*)* @xdr_DnsConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !847
  %35 = icmp ne i32 %34, 0, !dbg !847
  br i1 %35, label %37, label %36, !dbg !848

; <label>:36:                                     ; preds = %29
  store i32 0, i32* %3, align 4, !dbg !849
  br label %62, !dbg !849

; <label>:37:                                     ; preds = %29
  %38 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !850
  %39 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !852
  %40 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %39, i32 0, i32 3, !dbg !853
  %41 = bitcast %struct.WinsConfigInfo** %40 to i8**, !dbg !854
  %42 = call i32 @xdr_pointer(%struct.XDR* %38, i8** %41, i32 48, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.WinsConfigInfo*)* @xdr_WinsConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !855
  %43 = icmp ne i32 %42, 0, !dbg !855
  br i1 %43, label %45, label %44, !dbg !856

; <label>:44:                                     ; preds = %37
  store i32 0, i32* %3, align 4, !dbg !857
  br label %62, !dbg !857

; <label>:45:                                     ; preds = %37
  %46 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !858
  %47 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !860
  %48 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %47, i32 0, i32 4, !dbg !861
  %49 = bitcast %struct.DhcpConfigInfo** %48 to i8**, !dbg !862
  %50 = call i32 @xdr_pointer(%struct.XDR* %46, i8** %49, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DhcpConfigInfo*)* @xdr_DhcpConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !863
  %51 = icmp ne i32 %50, 0, !dbg !863
  br i1 %51, label %53, label %52, !dbg !864

; <label>:52:                                     ; preds = %45
  store i32 0, i32* %3, align 4, !dbg !865
  br label %62, !dbg !865

; <label>:53:                                     ; preds = %45
  %54 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !866
  %55 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !868
  %56 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %55, i32 0, i32 5, !dbg !869
  %57 = bitcast %struct.DhcpConfigInfo** %56 to i8**, !dbg !870
  %58 = call i32 @xdr_pointer(%struct.XDR* %54, i8** %57, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DhcpConfigInfo*)* @xdr_DhcpConfigInfo to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !871
  %59 = icmp ne i32 %58, 0, !dbg !871
  br i1 %59, label %61, label %60, !dbg !872

; <label>:60:                                     ; preds = %53
  store i32 0, i32* %3, align 4, !dbg !873
  br label %62, !dbg !873

; <label>:61:                                     ; preds = %53
  store i32 1, i32* %3, align 4, !dbg !874
  br label %62, !dbg !874

; <label>:62:                                     ; preds = %61, %60, %52, %44, %36, %28, %16
  %63 = load i32, i32* %3, align 4, !dbg !875
  ret i32 %63, !dbg !875
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestNicProto(%struct.XDR*, %struct.GuestNicProto*) #0 !dbg !876 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestNicProto*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !891, metadata !148), !dbg !892
  store %struct.GuestNicProto* %1, %struct.GuestNicProto** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicProto** %5, metadata !893, metadata !148), !dbg !894
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !895
  %7 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !897
  %8 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %7, i32 0, i32 0, !dbg !898
  %9 = call i32 @xdr_NicInfoVersion(%struct.XDR* %6, i32* %8), !dbg !899
  %10 = icmp ne i32 %9, 0, !dbg !899
  br i1 %10, label %12, label %11, !dbg !900

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !901
  br label %38, !dbg !901

; <label>:12:                                     ; preds = %2
  %13 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !902
  %14 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %13, i32 0, i32 0, !dbg !903
  %15 = load i32, i32* %14, align 8, !dbg !903
  switch i32 %15, label %36 [
    i32 2, label %16
    i32 3, label %26
  ], !dbg !904

; <label>:16:                                     ; preds = %12
  %17 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !905
  %18 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !908
  %19 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %18, i32 0, i32 1, !dbg !909
  %20 = bitcast %union.anon* %19 to %struct.GuestNicList**, !dbg !910
  %21 = bitcast %struct.GuestNicList** %20 to i8**, !dbg !911
  %22 = call i32 @xdr_pointer(%struct.XDR* %17, i8** %21, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestNicList*)* @xdr_GuestNicList to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !912
  %23 = icmp ne i32 %22, 0, !dbg !912
  br i1 %23, label %25, label %24, !dbg !913

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !914
  br label %38, !dbg !914

; <label>:25:                                     ; preds = %16
  br label %37, !dbg !915

; <label>:26:                                     ; preds = %12
  %27 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !916
  %28 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !918
  %29 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %28, i32 0, i32 1, !dbg !919
  %30 = bitcast %union.anon* %29 to %struct.NicInfoV3**, !dbg !920
  %31 = bitcast %struct.NicInfoV3** %30 to i8**, !dbg !921
  %32 = call i32 @xdr_pointer(%struct.XDR* %27, i8** %31, i32 64, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.NicInfoV3*)* @xdr_NicInfoV3 to i32 (%struct.XDR*, i8*, ...)*)) #4, !dbg !922
  %33 = icmp ne i32 %32, 0, !dbg !922
  br i1 %33, label %35, label %34, !dbg !923

; <label>:34:                                     ; preds = %26
  store i32 0, i32* %3, align 4, !dbg !924
  br label %38, !dbg !924

; <label>:35:                                     ; preds = %26
  br label %37, !dbg !925

; <label>:36:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !926
  br label %38, !dbg !926

; <label>:37:                                     ; preds = %35, %25
  store i32 1, i32* %3, align 4, !dbg !927
  br label %38, !dbg !927

; <label>:38:                                     ; preds = %37, %36, %34, %24, %11
  %39 = load i32, i32* %3, align 4, !dbg !928
  ret i32 %39, !dbg !928
}

; Function Attrs: nounwind
declare i32 @xdr_uint32_t(%struct.XDR*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138}
!llvm.ident = !{!139}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50)
!1 = !DIFile(filename: "libGuestRpc_la-nicinfo_xdr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!2 = !{!3, !9, !15, !19, !27, !34, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoVersion", file: !10, line: 17, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "NIC_INFO_V1", value: 1)
!13 = !DIEnumerator(name: "NIC_INFO_V2", value: 2)
!14 = !DIEnumerator(name: "NIC_INFO_V3", value: 3)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoAddrType", file: !10, line: 28, size: 32, align: 32, elements: !16)
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "NICINFO_ADDR_IPV4", value: 0)
!18 = !DIEnumerator(name: "NICINFO_ADDR_IPV6", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !10, line: 65, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!22 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!23 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!24 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!25 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!26 = !DIEnumerator(name: "IAT_DNS", value: 16)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !10, line: 77, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!30 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!31 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!32 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!33 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !10, line: 86, size: 32, align: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!37 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!38 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!39 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!40 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!41 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!42 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!43 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !10, line: 138, size: 32, align: 32, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!47 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!48 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!49 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!50 = !{!51, !55, !57, !135, !136}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "enum_t", file: !53, line: 38, baseType: !54)
!53 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!54 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 152, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !134, null}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !53, line: 37, baseType: !54)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !65)
!65 = !{!66, !67, !130, !131, !132, !133}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !64, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !64, file: !4, line: 136, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !70)
!70 = !{!71, !77, !83, !94, !100, !106, !110, !116, !120, !124}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !69, file: !4, line: 115, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!61, !62, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !69, file: !4, line: 117, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!61, !62, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !69, file: !4, line: 119, baseType: !84, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!61, !62, !87, !91}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !88, line: 116, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !90, line: 183, baseType: !55)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !88, line: 35, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !90, line: 32, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !69, file: !4, line: 121, baseType: !95, size: 64, align: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!61, !62, !98, !91}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !69, file: !4, line: 123, baseType: !101, size: 64, align: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!91, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !69, file: !4, line: 125, baseType: !107, size: 64, align: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!61, !62, !91}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !69, file: !4, line: 127, baseType: !111, size: 64, align: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !62, !91}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !88, line: 196, baseType: !54)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !69, file: !4, line: 129, baseType: !117, size: 64, align: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !62}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !69, file: !4, line: 131, baseType: !121, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!61, !62, !114}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !69, file: !4, line: 133, baseType: !125, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!61, !62, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !64, file: !4, line: 137, baseType: !87, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !64, file: !4, line: 138, baseType: !87, size: 64, align: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !64, file: !4, line: 139, baseType: !87, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !64, file: !4, line: 140, baseType: !91, size: 32, align: 32, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!137 = !{i32 2, !"Dwarf Version", i32 4}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!140 = distinct !DISubprogram(name: "xdr_NicInfoVersion", scope: !141, file: !141, line: 9, type: !142, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!141 = !DIFile(filename: "nicinfo_xdr.c", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!142 = !DISubroutineType(types: !143)
!143 = !{!61, !62, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoVersion", file: !10, line: 22, baseType: !9)
!146 = !{}
!147 = !DILocalVariable(name: "xdrs", arg: 1, scope: !140, file: !141, line: 9, type: !62)
!148 = !DIExpression()
!149 = !DILocation(line: 9, column: 26, scope: !140)
!150 = !DILocalVariable(name: "objp", arg: 2, scope: !140, file: !141, line: 9, type: !144)
!151 = !DILocation(line: 9, column: 48, scope: !140)
!152 = !DILocation(line: 12, column: 18, scope: !153)
!153 = distinct !DILexicalBlock(scope: !140, file: !141, line: 12, column: 7)
!154 = !DILocation(line: 12, column: 35, scope: !153)
!155 = !DILocation(line: 12, column: 8, scope: !153)
!156 = !DILocation(line: 12, column: 7, scope: !140)
!157 = !DILocation(line: 13, column: 4, scope: !153)
!158 = !DILocation(line: 14, column: 2, scope: !140)
!159 = !DILocation(line: 15, column: 1, scope: !140)
!160 = distinct !DISubprogram(name: "xdr_NicInfoAddrType", scope: !141, file: !141, line: 18, type: !161, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!161 = !DISubroutineType(types: !162)
!162 = !{!61, !62, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoAddrType", file: !10, line: 32, baseType: !15)
!165 = !DILocalVariable(name: "xdrs", arg: 1, scope: !160, file: !141, line: 18, type: !62)
!166 = !DILocation(line: 18, column: 27, scope: !160)
!167 = !DILocalVariable(name: "objp", arg: 2, scope: !160, file: !141, line: 18, type: !163)
!168 = !DILocation(line: 18, column: 50, scope: !160)
!169 = !DILocation(line: 21, column: 18, scope: !170)
!170 = distinct !DILexicalBlock(scope: !160, file: !141, line: 21, column: 7)
!171 = !DILocation(line: 21, column: 35, scope: !170)
!172 = !DILocation(line: 21, column: 8, scope: !170)
!173 = !DILocation(line: 21, column: 7, scope: !160)
!174 = !DILocation(line: 22, column: 4, scope: !170)
!175 = !DILocation(line: 23, column: 2, scope: !160)
!176 = !DILocation(line: 24, column: 1, scope: !160)
!177 = distinct !DISubprogram(name: "xdr_VmIpAddress", scope: !141, file: !141, line: 27, type: !178, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!178 = !DISubroutineType(types: !179)
!179 = !{!61, !62, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmIpAddress", file: !10, line: 40, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmIpAddress", file: !10, line: 34, size: 1088, align: 32, elements: !183)
!183 = !{!184, !185, !188, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "addressFamily", scope: !182, file: !10, line: 35, baseType: !164, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpEnabled", scope: !182, file: !10, line: 36, baseType: !186, size: 8, align: 8, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !187, line: 230, baseType: !56)
!187 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddress", scope: !182, file: !10, line: 37, baseType: !189, size: 512, align: 8, offset: 40)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, align: 8, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "subnetMask", scope: !182, file: !10, line: 38, baseType: !189, size: 512, align: 8, offset: 552)
!193 = !DILocalVariable(name: "xdrs", arg: 1, scope: !177, file: !141, line: 27, type: !62)
!194 = !DILocation(line: 27, column: 23, scope: !177)
!195 = !DILocalVariable(name: "objp", arg: 2, scope: !177, file: !141, line: 27, type: !180)
!196 = !DILocation(line: 27, column: 42, scope: !177)
!197 = !DILocalVariable(name: "i", scope: !177, file: !141, line: 30, type: !54)
!198 = !DILocation(line: 30, column: 6, scope: !177)
!199 = !DILocation(line: 31, column: 29, scope: !200)
!200 = distinct !DILexicalBlock(scope: !177, file: !141, line: 31, column: 7)
!201 = !DILocation(line: 31, column: 36, scope: !200)
!202 = !DILocation(line: 31, column: 42, scope: !200)
!203 = !DILocation(line: 31, column: 8, scope: !200)
!204 = !DILocation(line: 31, column: 7, scope: !177)
!205 = !DILocation(line: 32, column: 4, scope: !200)
!206 = !DILocation(line: 33, column: 18, scope: !207)
!207 = distinct !DILexicalBlock(scope: !177, file: !141, line: 33, column: 7)
!208 = !DILocation(line: 33, column: 25, scope: !207)
!209 = !DILocation(line: 33, column: 31, scope: !207)
!210 = !DILocation(line: 33, column: 8, scope: !207)
!211 = !DILocation(line: 33, column: 7, scope: !177)
!212 = !DILocation(line: 34, column: 4, scope: !207)
!213 = !DILocation(line: 35, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !177, file: !141, line: 35, column: 7)
!215 = !DILocation(line: 35, column: 34, scope: !214)
!216 = !DILocation(line: 35, column: 40, scope: !214)
!217 = !DILocation(line: 35, column: 8, scope: !214)
!218 = !DILocation(line: 35, column: 7, scope: !177)
!219 = !DILocation(line: 37, column: 4, scope: !214)
!220 = !DILocation(line: 38, column: 20, scope: !221)
!221 = distinct !DILexicalBlock(scope: !177, file: !141, line: 38, column: 7)
!222 = !DILocation(line: 38, column: 34, scope: !221)
!223 = !DILocation(line: 38, column: 40, scope: !221)
!224 = !DILocation(line: 38, column: 8, scope: !221)
!225 = !DILocation(line: 38, column: 7, scope: !177)
!226 = !DILocation(line: 40, column: 4, scope: !221)
!227 = !DILocation(line: 41, column: 2, scope: !177)
!228 = !DILocation(line: 42, column: 1, scope: !177)
!229 = distinct !DISubprogram(name: "xdr_Bool", scope: !230, file: !230, line: 264, type: !231, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!230 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmxrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!231 = !DISubroutineType(types: !232)
!232 = !{!61, !62, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!234 = !DILocalVariable(name: "xdrs", arg: 1, scope: !229, file: !230, line: 264, type: !62)
!235 = !DILocation(line: 264, column: 15, scope: !229)
!236 = !DILocalVariable(name: "ip", arg: 2, scope: !229, file: !230, line: 265, type: !233)
!237 = !DILocation(line: 265, column: 16, scope: !229)
!238 = !DILocation(line: 267, column: 20, scope: !229)
!239 = !DILocation(line: 267, column: 26, scope: !229)
!240 = !DILocation(line: 267, column: 11, scope: !229)
!241 = !DILocation(line: 267, column: 4, scope: !229)
!242 = distinct !DISubprogram(name: "xdr_GuestNic", scope: !141, file: !141, line: 45, type: !243, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!243 = !DISubroutineType(types: !244)
!244 = !{!61, !62, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNic", file: !10, line: 49, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNic", file: !10, line: 42, size: 320, align: 64, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !247, file: !10, line: 43, baseType: !250, size: 144, align: 8)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 144, align: 8, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 18)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !247, file: !10, line: 47, baseType: !254, size: 128, align: 64, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !10, line: 44, size: 128, align: 64, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !254, file: !10, line: 45, baseType: !91, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !254, file: !10, line: 46, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!259 = !DILocalVariable(name: "xdrs", arg: 1, scope: !242, file: !141, line: 45, type: !62)
!260 = !DILocation(line: 45, column: 20, scope: !242)
!261 = !DILocalVariable(name: "objp", arg: 2, scope: !242, file: !141, line: 45, type: !245)
!262 = !DILocation(line: 45, column: 36, scope: !242)
!263 = !DILocalVariable(name: "i", scope: !242, file: !141, line: 48, type: !54)
!264 = !DILocation(line: 48, column: 6, scope: !242)
!265 = !DILocation(line: 49, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !242, file: !141, line: 49, column: 7)
!267 = !DILocation(line: 49, column: 34, scope: !266)
!268 = !DILocation(line: 49, column: 40, scope: !266)
!269 = !DILocation(line: 49, column: 8, scope: !266)
!270 = !DILocation(line: 49, column: 7, scope: !242)
!271 = !DILocation(line: 51, column: 4, scope: !266)
!272 = !DILocation(line: 52, column: 19, scope: !273)
!273 = distinct !DILexicalBlock(scope: !242, file: !141, line: 52, column: 7)
!274 = !DILocation(line: 52, column: 35, scope: !273)
!275 = !DILocation(line: 52, column: 41, scope: !273)
!276 = !DILocation(line: 52, column: 45, scope: !273)
!277 = !DILocation(line: 52, column: 25, scope: !273)
!278 = !DILocation(line: 52, column: 65, scope: !273)
!279 = !DILocation(line: 52, column: 71, scope: !273)
!280 = !DILocation(line: 52, column: 75, scope: !273)
!281 = !DILocation(line: 52, column: 8, scope: !273)
!282 = !DILocation(line: 52, column: 7, scope: !242)
!283 = !DILocation(line: 54, column: 4, scope: !273)
!284 = !DILocation(line: 55, column: 2, scope: !242)
!285 = !DILocation(line: 56, column: 1, scope: !242)
!286 = distinct !DISubprogram(name: "xdr_GuestNicList", scope: !141, file: !141, line: 59, type: !287, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!287 = !DISubroutineType(types: !288)
!288 = !{!61, !62, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicList", file: !10, line: 57, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicList", file: !10, line: 51, size: 128, align: 64, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !291, file: !10, line: 55, baseType: !294, size: 128, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !10, line: 52, size: 128, align: 64, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !294, file: !10, line: 53, baseType: !91, size: 32, align: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !294, file: !10, line: 54, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!299 = !DILocalVariable(name: "xdrs", arg: 1, scope: !286, file: !141, line: 59, type: !62)
!300 = !DILocation(line: 59, column: 24, scope: !286)
!301 = !DILocalVariable(name: "objp", arg: 2, scope: !286, file: !141, line: 59, type: !289)
!302 = !DILocation(line: 59, column: 44, scope: !286)
!303 = !DILocation(line: 62, column: 19, scope: !304)
!304 = distinct !DILexicalBlock(scope: !286, file: !141, line: 62, column: 7)
!305 = !DILocation(line: 62, column: 35, scope: !304)
!306 = !DILocation(line: 62, column: 41, scope: !304)
!307 = !DILocation(line: 62, column: 46, scope: !304)
!308 = !DILocation(line: 62, column: 25, scope: !304)
!309 = !DILocation(line: 62, column: 67, scope: !304)
!310 = !DILocation(line: 62, column: 73, scope: !304)
!311 = !DILocation(line: 62, column: 78, scope: !304)
!312 = !DILocation(line: 62, column: 8, scope: !304)
!313 = !DILocation(line: 62, column: 7, scope: !286)
!314 = !DILocation(line: 64, column: 4, scope: !304)
!315 = !DILocation(line: 65, column: 2, scope: !286)
!316 = !DILocation(line: 66, column: 1, scope: !286)
!317 = distinct !DISubprogram(name: "xdr_InetAddress", scope: !141, file: !141, line: 69, type: !318, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!318 = !DISubroutineType(types: !319)
!319 = !{!61, !62, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !10, line: 63, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 60, size: 128, align: 64, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !322, file: !10, line: 61, baseType: !91, size: 32, align: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !322, file: !10, line: 62, baseType: !55, size: 64, align: 64, offset: 64)
!326 = !DILocalVariable(name: "xdrs", arg: 1, scope: !317, file: !141, line: 69, type: !62)
!327 = !DILocation(line: 69, column: 23, scope: !317)
!328 = !DILocalVariable(name: "objp", arg: 2, scope: !317, file: !141, line: 69, type: !320)
!329 = !DILocation(line: 69, column: 42, scope: !317)
!330 = !DILocation(line: 72, column: 19, scope: !331)
!331 = distinct !DILexicalBlock(scope: !317, file: !141, line: 72, column: 7)
!332 = !DILocation(line: 72, column: 35, scope: !331)
!333 = !DILocation(line: 72, column: 41, scope: !331)
!334 = !DILocation(line: 72, column: 69, scope: !331)
!335 = !DILocation(line: 72, column: 75, scope: !331)
!336 = !DILocation(line: 72, column: 8, scope: !331)
!337 = !DILocation(line: 72, column: 7, scope: !317)
!338 = !DILocation(line: 73, column: 4, scope: !331)
!339 = !DILocation(line: 74, column: 2, scope: !317)
!340 = !DILocation(line: 75, column: 1, scope: !317)
!341 = distinct !DISubprogram(name: "xdr_InetAddressType", scope: !141, file: !141, line: 78, type: !342, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!342 = !DISubroutineType(types: !343)
!343 = !{!61, !62, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !10, line: 73, baseType: !19)
!346 = !DILocalVariable(name: "xdrs", arg: 1, scope: !341, file: !141, line: 78, type: !62)
!347 = !DILocation(line: 78, column: 27, scope: !341)
!348 = !DILocalVariable(name: "objp", arg: 2, scope: !341, file: !141, line: 78, type: !344)
!349 = !DILocation(line: 78, column: 50, scope: !341)
!350 = !DILocation(line: 81, column: 18, scope: !351)
!351 = distinct !DILexicalBlock(scope: !341, file: !141, line: 81, column: 7)
!352 = !DILocation(line: 81, column: 35, scope: !351)
!353 = !DILocation(line: 81, column: 8, scope: !351)
!354 = !DILocation(line: 81, column: 7, scope: !341)
!355 = !DILocation(line: 82, column: 4, scope: !351)
!356 = !DILocation(line: 83, column: 2, scope: !341)
!357 = !DILocation(line: 84, column: 1, scope: !341)
!358 = distinct !DISubprogram(name: "xdr_InetAddressPrefixLength", scope: !141, file: !141, line: 87, type: !359, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!359 = !DISubroutineType(types: !360)
!360 = !{!61, !62, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !10, line: 75, baseType: !91)
!363 = !DILocalVariable(name: "xdrs", arg: 1, scope: !358, file: !141, line: 87, type: !62)
!364 = !DILocation(line: 87, column: 35, scope: !358)
!365 = !DILocalVariable(name: "objp", arg: 2, scope: !358, file: !141, line: 87, type: !361)
!366 = !DILocation(line: 87, column: 66, scope: !358)
!367 = !DILocation(line: 90, column: 19, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !141, line: 90, column: 7)
!369 = !DILocation(line: 90, column: 25, scope: !368)
!370 = !DILocation(line: 90, column: 8, scope: !368)
!371 = !DILocation(line: 90, column: 7, scope: !358)
!372 = !DILocation(line: 91, column: 4, scope: !368)
!373 = !DILocation(line: 92, column: 2, scope: !358)
!374 = !DILocation(line: 93, column: 1, scope: !358)
!375 = distinct !DISubprogram(name: "xdr_IpAddressOrigin", scope: !141, file: !141, line: 96, type: !376, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!376 = !DISubroutineType(types: !377)
!377 = !{!61, !62, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !10, line: 84, baseType: !27)
!380 = !DILocalVariable(name: "xdrs", arg: 1, scope: !375, file: !141, line: 96, type: !62)
!381 = !DILocation(line: 96, column: 27, scope: !375)
!382 = !DILocalVariable(name: "objp", arg: 2, scope: !375, file: !141, line: 96, type: !378)
!383 = !DILocation(line: 96, column: 50, scope: !375)
!384 = !DILocation(line: 99, column: 18, scope: !385)
!385 = distinct !DILexicalBlock(scope: !375, file: !141, line: 99, column: 7)
!386 = !DILocation(line: 99, column: 35, scope: !385)
!387 = !DILocation(line: 99, column: 8, scope: !385)
!388 = !DILocation(line: 99, column: 7, scope: !375)
!389 = !DILocation(line: 100, column: 4, scope: !385)
!390 = !DILocation(line: 101, column: 2, scope: !375)
!391 = !DILocation(line: 102, column: 1, scope: !375)
!392 = distinct !DISubprogram(name: "xdr_IpAddressStatus", scope: !141, file: !141, line: 105, type: !393, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!393 = !DISubroutineType(types: !394)
!394 = !{!61, !62, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !10, line: 96, baseType: !34)
!397 = !DILocalVariable(name: "xdrs", arg: 1, scope: !392, file: !141, line: 105, type: !62)
!398 = !DILocation(line: 105, column: 27, scope: !392)
!399 = !DILocalVariable(name: "objp", arg: 2, scope: !392, file: !141, line: 105, type: !395)
!400 = !DILocation(line: 105, column: 50, scope: !392)
!401 = !DILocation(line: 108, column: 18, scope: !402)
!402 = distinct !DILexicalBlock(scope: !392, file: !141, line: 108, column: 7)
!403 = !DILocation(line: 108, column: 35, scope: !402)
!404 = !DILocation(line: 108, column: 8, scope: !402)
!405 = !DILocation(line: 108, column: 7, scope: !392)
!406 = !DILocation(line: 109, column: 4, scope: !402)
!407 = !DILocation(line: 110, column: 2, scope: !392)
!408 = !DILocation(line: 111, column: 1, scope: !392)
!409 = distinct !DISubprogram(name: "xdr_TypedIpAddress", scope: !141, file: !141, line: 114, type: !410, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!410 = !DISubroutineType(types: !411)
!411 = !{!61, !62, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !10, line: 102, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !10, line: 98, size: 192, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !414, file: !10, line: 99, baseType: !345, size: 32, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !414, file: !10, line: 100, baseType: !321, size: 128, align: 64, offset: 64)
!418 = !DILocalVariable(name: "xdrs", arg: 1, scope: !409, file: !141, line: 114, type: !62)
!419 = !DILocation(line: 114, column: 26, scope: !409)
!420 = !DILocalVariable(name: "objp", arg: 2, scope: !409, file: !141, line: 114, type: !412)
!421 = !DILocation(line: 114, column: 48, scope: !409)
!422 = !DILocation(line: 117, column: 29, scope: !423)
!423 = distinct !DILexicalBlock(scope: !409, file: !141, line: 117, column: 7)
!424 = !DILocation(line: 117, column: 36, scope: !423)
!425 = !DILocation(line: 117, column: 42, scope: !423)
!426 = !DILocation(line: 117, column: 8, scope: !423)
!427 = !DILocation(line: 117, column: 7, scope: !409)
!428 = !DILocation(line: 118, column: 4, scope: !423)
!429 = !DILocation(line: 119, column: 25, scope: !430)
!430 = distinct !DILexicalBlock(scope: !409, file: !141, line: 119, column: 7)
!431 = !DILocation(line: 119, column: 32, scope: !430)
!432 = !DILocation(line: 119, column: 38, scope: !430)
!433 = !DILocation(line: 119, column: 8, scope: !430)
!434 = !DILocation(line: 119, column: 7, scope: !409)
!435 = !DILocation(line: 120, column: 4, scope: !430)
!436 = !DILocation(line: 121, column: 2, scope: !409)
!437 = !DILocation(line: 122, column: 1, scope: !409)
!438 = distinct !DISubprogram(name: "xdr_IpAddressEntry", scope: !141, file: !141, line: 125, type: !439, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!439 = !DISubroutineType(types: !440)
!440 = !{!61, !62, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !10, line: 110, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !10, line: 104, size: 384, align: 64, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !443, file: !10, line: 105, baseType: !413, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !443, file: !10, line: 106, baseType: !362, size: 32, align: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !443, file: !10, line: 107, baseType: !378, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !443, file: !10, line: 108, baseType: !395, size: 64, align: 64, offset: 320)
!449 = !DILocalVariable(name: "xdrs", arg: 1, scope: !438, file: !141, line: 125, type: !62)
!450 = !DILocation(line: 125, column: 26, scope: !438)
!451 = !DILocalVariable(name: "objp", arg: 2, scope: !438, file: !141, line: 125, type: !441)
!452 = !DILocation(line: 125, column: 48, scope: !438)
!453 = !DILocation(line: 128, column: 28, scope: !454)
!454 = distinct !DILexicalBlock(scope: !438, file: !141, line: 128, column: 7)
!455 = !DILocation(line: 128, column: 35, scope: !454)
!456 = !DILocation(line: 128, column: 41, scope: !454)
!457 = !DILocation(line: 128, column: 8, scope: !454)
!458 = !DILocation(line: 128, column: 7, scope: !438)
!459 = !DILocation(line: 129, column: 4, scope: !454)
!460 = !DILocation(line: 130, column: 37, scope: !461)
!461 = distinct !DILexicalBlock(scope: !438, file: !141, line: 130, column: 7)
!462 = !DILocation(line: 130, column: 44, scope: !461)
!463 = !DILocation(line: 130, column: 50, scope: !461)
!464 = !DILocation(line: 130, column: 8, scope: !461)
!465 = !DILocation(line: 130, column: 7, scope: !438)
!466 = !DILocation(line: 131, column: 4, scope: !461)
!467 = !DILocation(line: 132, column: 21, scope: !468)
!468 = distinct !DILexicalBlock(scope: !438, file: !141, line: 132, column: 7)
!469 = !DILocation(line: 132, column: 37, scope: !468)
!470 = !DILocation(line: 132, column: 43, scope: !468)
!471 = !DILocation(line: 132, column: 27, scope: !468)
!472 = !DILocation(line: 132, column: 8, scope: !468)
!473 = !DILocation(line: 132, column: 7, scope: !438)
!474 = !DILocation(line: 133, column: 4, scope: !468)
!475 = !DILocation(line: 134, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !438, file: !141, line: 134, column: 7)
!477 = !DILocation(line: 134, column: 37, scope: !476)
!478 = !DILocation(line: 134, column: 43, scope: !476)
!479 = !DILocation(line: 134, column: 27, scope: !476)
!480 = !DILocation(line: 134, column: 8, scope: !476)
!481 = !DILocation(line: 134, column: 7, scope: !438)
!482 = !DILocation(line: 135, column: 4, scope: !476)
!483 = !DILocation(line: 136, column: 2, scope: !438)
!484 = !DILocation(line: 137, column: 1, scope: !438)
!485 = distinct !DISubprogram(name: "xdr_DnsHostname", scope: !141, file: !141, line: 140, type: !486, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!486 = !DISubroutineType(types: !487)
!487 = !{!61, !62, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !10, line: 113, baseType: !55)
!490 = !DILocalVariable(name: "xdrs", arg: 1, scope: !485, file: !141, line: 140, type: !62)
!491 = !DILocation(line: 140, column: 23, scope: !485)
!492 = !DILocalVariable(name: "objp", arg: 2, scope: !485, file: !141, line: 140, type: !488)
!493 = !DILocation(line: 140, column: 42, scope: !485)
!494 = !DILocation(line: 143, column: 20, scope: !495)
!495 = distinct !DILexicalBlock(scope: !485, file: !141, line: 143, column: 7)
!496 = !DILocation(line: 143, column: 26, scope: !495)
!497 = !DILocation(line: 143, column: 8, scope: !495)
!498 = !DILocation(line: 143, column: 7, scope: !485)
!499 = !DILocation(line: 144, column: 4, scope: !495)
!500 = !DILocation(line: 145, column: 2, scope: !485)
!501 = !DILocation(line: 146, column: 1, scope: !485)
!502 = distinct !DISubprogram(name: "xdr_DnsConfigInfo", scope: !141, file: !141, line: 149, type: !503, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!503 = !DISubroutineType(types: !504)
!504 = !{!61, !62, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !10, line: 129, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !10, line: 117, size: 384, align: 64, elements: !508)
!508 = !{!509, !510, !511, !516}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !507, file: !10, line: 118, baseType: !488, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !507, file: !10, line: 119, baseType: !488, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !507, file: !10, line: 123, baseType: !512, size: 128, align: 64, offset: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !10, line: 120, size: 128, align: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !512, file: !10, line: 121, baseType: !91, size: 32, align: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !512, file: !10, line: 122, baseType: !412, size: 64, align: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !507, file: !10, line: 127, baseType: !517, size: 128, align: 64, offset: 256)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !10, line: 124, size: 128, align: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !517, file: !10, line: 125, baseType: !91, size: 32, align: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !517, file: !10, line: 126, baseType: !488, size: 64, align: 64, offset: 64)
!521 = !DILocalVariable(name: "xdrs", arg: 1, scope: !502, file: !141, line: 149, type: !62)
!522 = !DILocation(line: 149, column: 25, scope: !502)
!523 = !DILocalVariable(name: "objp", arg: 2, scope: !502, file: !141, line: 149, type: !505)
!524 = !DILocation(line: 149, column: 46, scope: !502)
!525 = !DILocation(line: 152, column: 21, scope: !526)
!526 = distinct !DILexicalBlock(scope: !502, file: !141, line: 152, column: 7)
!527 = !DILocation(line: 152, column: 37, scope: !526)
!528 = !DILocation(line: 152, column: 43, scope: !526)
!529 = !DILocation(line: 152, column: 27, scope: !526)
!530 = !DILocation(line: 152, column: 8, scope: !526)
!531 = !DILocation(line: 152, column: 7, scope: !502)
!532 = !DILocation(line: 153, column: 4, scope: !526)
!533 = !DILocation(line: 154, column: 21, scope: !534)
!534 = distinct !DILexicalBlock(scope: !502, file: !141, line: 154, column: 7)
!535 = !DILocation(line: 154, column: 37, scope: !534)
!536 = !DILocation(line: 154, column: 43, scope: !534)
!537 = !DILocation(line: 154, column: 27, scope: !534)
!538 = !DILocation(line: 154, column: 8, scope: !534)
!539 = !DILocation(line: 154, column: 7, scope: !502)
!540 = !DILocation(line: 155, column: 4, scope: !534)
!541 = !DILocation(line: 156, column: 19, scope: !542)
!542 = distinct !DILexicalBlock(scope: !502, file: !141, line: 156, column: 7)
!543 = !DILocation(line: 156, column: 35, scope: !542)
!544 = !DILocation(line: 156, column: 41, scope: !542)
!545 = !DILocation(line: 156, column: 52, scope: !542)
!546 = !DILocation(line: 156, column: 25, scope: !542)
!547 = !DILocation(line: 156, column: 79, scope: !542)
!548 = !DILocation(line: 156, column: 85, scope: !542)
!549 = !DILocation(line: 156, column: 96, scope: !542)
!550 = !DILocation(line: 156, column: 8, scope: !542)
!551 = !DILocation(line: 156, column: 7, scope: !502)
!552 = !DILocation(line: 158, column: 4, scope: !542)
!553 = !DILocation(line: 159, column: 19, scope: !554)
!554 = distinct !DILexicalBlock(scope: !502, file: !141, line: 159, column: 7)
!555 = !DILocation(line: 159, column: 35, scope: !554)
!556 = !DILocation(line: 159, column: 41, scope: !554)
!557 = !DILocation(line: 159, column: 56, scope: !554)
!558 = !DILocation(line: 159, column: 25, scope: !554)
!559 = !DILocation(line: 159, column: 87, scope: !554)
!560 = !DILocation(line: 159, column: 93, scope: !554)
!561 = !DILocation(line: 159, column: 108, scope: !554)
!562 = !DILocation(line: 159, column: 8, scope: !554)
!563 = !DILocation(line: 159, column: 7, scope: !502)
!564 = !DILocation(line: 161, column: 4, scope: !554)
!565 = !DILocation(line: 162, column: 2, scope: !502)
!566 = !DILocation(line: 163, column: 1, scope: !502)
!567 = distinct !DISubprogram(name: "xdr_WinsConfigInfo", scope: !141, file: !141, line: 166, type: !568, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!568 = !DISubroutineType(types: !569)
!569 = !{!61, !62, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !10, line: 135, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !10, line: 131, size: 384, align: 64, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !572, file: !10, line: 132, baseType: !413, size: 192, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !572, file: !10, line: 133, baseType: !413, size: 192, align: 64, offset: 192)
!576 = !DILocalVariable(name: "xdrs", arg: 1, scope: !567, file: !141, line: 166, type: !62)
!577 = !DILocation(line: 166, column: 26, scope: !567)
!578 = !DILocalVariable(name: "objp", arg: 2, scope: !567, file: !141, line: 166, type: !570)
!579 = !DILocation(line: 166, column: 48, scope: !567)
!580 = !DILocation(line: 169, column: 28, scope: !581)
!581 = distinct !DILexicalBlock(scope: !567, file: !141, line: 169, column: 7)
!582 = !DILocation(line: 169, column: 35, scope: !581)
!583 = !DILocation(line: 169, column: 41, scope: !581)
!584 = !DILocation(line: 169, column: 8, scope: !581)
!585 = !DILocation(line: 169, column: 7, scope: !567)
!586 = !DILocation(line: 170, column: 4, scope: !581)
!587 = !DILocation(line: 171, column: 28, scope: !588)
!588 = distinct !DILexicalBlock(scope: !567, file: !141, line: 171, column: 7)
!589 = !DILocation(line: 171, column: 35, scope: !588)
!590 = !DILocation(line: 171, column: 41, scope: !588)
!591 = !DILocation(line: 171, column: 8, scope: !588)
!592 = !DILocation(line: 171, column: 7, scope: !567)
!593 = !DILocation(line: 172, column: 4, scope: !588)
!594 = !DILocation(line: 173, column: 2, scope: !567)
!595 = !DILocation(line: 174, column: 1, scope: !567)
!596 = distinct !DISubprogram(name: "xdr_InetCidrRouteType", scope: !141, file: !141, line: 177, type: !597, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!597 = !DISubroutineType(types: !598)
!598 = !{!61, !62, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !10, line: 144, baseType: !44)
!601 = !DILocalVariable(name: "xdrs", arg: 1, scope: !596, file: !141, line: 177, type: !62)
!602 = !DILocation(line: 177, column: 29, scope: !596)
!603 = !DILocalVariable(name: "objp", arg: 2, scope: !596, file: !141, line: 177, type: !599)
!604 = !DILocation(line: 177, column: 54, scope: !596)
!605 = !DILocation(line: 180, column: 18, scope: !606)
!606 = distinct !DILexicalBlock(scope: !596, file: !141, line: 180, column: 7)
!607 = !DILocation(line: 180, column: 35, scope: !606)
!608 = !DILocation(line: 180, column: 8, scope: !606)
!609 = !DILocation(line: 180, column: 7, scope: !596)
!610 = !DILocation(line: 181, column: 4, scope: !606)
!611 = !DILocation(line: 182, column: 2, scope: !596)
!612 = !DILocation(line: 183, column: 1, scope: !596)
!613 = distinct !DISubprogram(name: "xdr_InetCidrRouteEntry", scope: !141, file: !141, line: 186, type: !614, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!614 = !DISubroutineType(types: !615)
!615 = !{!61, !62, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !10, line: 154, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !10, line: 146, size: 448, align: 64, elements: !619)
!619 = !{!620, !621, !622, !623, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !618, file: !10, line: 147, baseType: !413, size: 192, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !618, file: !10, line: 148, baseType: !362, size: 32, align: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !618, file: !10, line: 149, baseType: !412, size: 64, align: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !618, file: !10, line: 150, baseType: !624, size: 32, align: 32, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !187, line: 173, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !626, line: 51, baseType: !93)
!626 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line10")
!627 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !618, file: !10, line: 151, baseType: !600, size: 32, align: 32, offset: 352)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !618, file: !10, line: 152, baseType: !624, size: 32, align: 32, offset: 384)
!629 = !DILocalVariable(name: "xdrs", arg: 1, scope: !613, file: !141, line: 186, type: !62)
!630 = !DILocation(line: 186, column: 30, scope: !613)
!631 = !DILocalVariable(name: "objp", arg: 2, scope: !613, file: !141, line: 186, type: !616)
!632 = !DILocation(line: 186, column: 56, scope: !613)
!633 = !DILocation(line: 189, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !613, file: !141, line: 189, column: 7)
!635 = !DILocation(line: 189, column: 35, scope: !634)
!636 = !DILocation(line: 189, column: 41, scope: !634)
!637 = !DILocation(line: 189, column: 8, scope: !634)
!638 = !DILocation(line: 189, column: 7, scope: !613)
!639 = !DILocation(line: 190, column: 4, scope: !634)
!640 = !DILocation(line: 191, column: 37, scope: !641)
!641 = distinct !DILexicalBlock(scope: !613, file: !141, line: 191, column: 7)
!642 = !DILocation(line: 191, column: 44, scope: !641)
!643 = !DILocation(line: 191, column: 50, scope: !641)
!644 = !DILocation(line: 191, column: 8, scope: !641)
!645 = !DILocation(line: 191, column: 7, scope: !613)
!646 = !DILocation(line: 192, column: 4, scope: !641)
!647 = !DILocation(line: 193, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !613, file: !141, line: 193, column: 7)
!649 = !DILocation(line: 193, column: 37, scope: !648)
!650 = !DILocation(line: 193, column: 43, scope: !648)
!651 = !DILocation(line: 193, column: 27, scope: !648)
!652 = !DILocation(line: 193, column: 8, scope: !648)
!653 = !DILocation(line: 193, column: 7, scope: !613)
!654 = !DILocation(line: 194, column: 4, scope: !648)
!655 = !DILocation(line: 195, column: 20, scope: !656)
!656 = distinct !DILexicalBlock(scope: !613, file: !141, line: 195, column: 7)
!657 = !DILocation(line: 195, column: 27, scope: !656)
!658 = !DILocation(line: 195, column: 33, scope: !656)
!659 = !DILocation(line: 195, column: 8, scope: !656)
!660 = !DILocation(line: 195, column: 7, scope: !613)
!661 = !DILocation(line: 196, column: 4, scope: !656)
!662 = !DILocation(line: 197, column: 31, scope: !663)
!663 = distinct !DILexicalBlock(scope: !613, file: !141, line: 197, column: 7)
!664 = !DILocation(line: 197, column: 38, scope: !663)
!665 = !DILocation(line: 197, column: 44, scope: !663)
!666 = !DILocation(line: 197, column: 8, scope: !663)
!667 = !DILocation(line: 197, column: 7, scope: !613)
!668 = !DILocation(line: 198, column: 4, scope: !663)
!669 = !DILocation(line: 199, column: 20, scope: !670)
!670 = distinct !DILexicalBlock(scope: !613, file: !141, line: 199, column: 7)
!671 = !DILocation(line: 199, column: 27, scope: !670)
!672 = !DILocation(line: 199, column: 33, scope: !670)
!673 = !DILocation(line: 199, column: 8, scope: !670)
!674 = !DILocation(line: 199, column: 7, scope: !613)
!675 = !DILocation(line: 200, column: 4, scope: !670)
!676 = !DILocation(line: 201, column: 2, scope: !613)
!677 = !DILocation(line: 202, column: 1, scope: !613)
!678 = distinct !DISubprogram(name: "xdr_uint32", scope: !230, file: !230, line: 191, type: !679, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!679 = !DISubroutineType(types: !680)
!680 = !{!61, !62, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!682 = !DILocalVariable(name: "xdrs", arg: 1, scope: !678, file: !230, line: 191, type: !62)
!683 = !DILocation(line: 191, column: 17, scope: !678)
!684 = !DILocalVariable(name: "ip", arg: 2, scope: !678, file: !230, line: 192, type: !681)
!685 = !DILocation(line: 192, column: 20, scope: !678)
!686 = !DILocation(line: 194, column: 24, scope: !678)
!687 = !DILocation(line: 194, column: 30, scope: !678)
!688 = !DILocation(line: 194, column: 11, scope: !678)
!689 = !DILocation(line: 194, column: 4, scope: !678)
!690 = distinct !DISubprogram(name: "xdr_DhcpConfigInfo", scope: !141, file: !141, line: 205, type: !691, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!691 = !DISubroutineType(types: !692)
!692 = !{!61, !62, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !10, line: 161, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !10, line: 157, size: 128, align: 64, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !695, file: !10, line: 158, baseType: !61, size: 32, align: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !695, file: !10, line: 159, baseType: !55, size: 64, align: 64, offset: 64)
!699 = !DILocalVariable(name: "xdrs", arg: 1, scope: !690, file: !141, line: 205, type: !62)
!700 = !DILocation(line: 205, column: 26, scope: !690)
!701 = !DILocalVariable(name: "objp", arg: 2, scope: !690, file: !141, line: 205, type: !693)
!702 = !DILocation(line: 205, column: 48, scope: !690)
!703 = !DILocation(line: 208, column: 18, scope: !704)
!704 = distinct !DILexicalBlock(scope: !690, file: !141, line: 208, column: 7)
!705 = !DILocation(line: 208, column: 25, scope: !704)
!706 = !DILocation(line: 208, column: 31, scope: !704)
!707 = !DILocation(line: 208, column: 8, scope: !704)
!708 = !DILocation(line: 208, column: 7, scope: !690)
!709 = !DILocation(line: 209, column: 4, scope: !704)
!710 = !DILocation(line: 210, column: 20, scope: !711)
!711 = distinct !DILexicalBlock(scope: !690, file: !141, line: 210, column: 7)
!712 = !DILocation(line: 210, column: 27, scope: !711)
!713 = !DILocation(line: 210, column: 33, scope: !711)
!714 = !DILocation(line: 210, column: 8, scope: !711)
!715 = !DILocation(line: 210, column: 7, scope: !690)
!716 = !DILocation(line: 211, column: 4, scope: !711)
!717 = !DILocation(line: 212, column: 2, scope: !690)
!718 = !DILocation(line: 213, column: 1, scope: !690)
!719 = distinct !DISubprogram(name: "xdr_GuestNicV3", scope: !141, file: !141, line: 216, type: !720, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!720 = !DISubroutineType(types: !721)
!721 = !{!61, !62, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !10, line: 174, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !10, line: 163, size: 448, align: 64, elements: !725)
!725 = !{!726, !727, !732, !733, !734, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !724, file: !10, line: 164, baseType: !55, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !724, file: !10, line: 168, baseType: !728, size: 128, align: 64, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !10, line: 165, size: 128, align: 64, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !728, file: !10, line: 166, baseType: !91, size: 32, align: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !728, file: !10, line: 167, baseType: !441, size: 64, align: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !724, file: !10, line: 169, baseType: !505, size: 64, align: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !724, file: !10, line: 170, baseType: !570, size: 64, align: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !724, file: !10, line: 171, baseType: !693, size: 64, align: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !724, file: !10, line: 172, baseType: !693, size: 64, align: 64, offset: 384)
!736 = !DILocalVariable(name: "xdrs", arg: 1, scope: !719, file: !141, line: 216, type: !62)
!737 = !DILocation(line: 216, column: 22, scope: !719)
!738 = !DILocalVariable(name: "objp", arg: 2, scope: !719, file: !141, line: 216, type: !722)
!739 = !DILocation(line: 216, column: 40, scope: !719)
!740 = !DILocation(line: 219, column: 20, scope: !741)
!741 = distinct !DILexicalBlock(scope: !719, file: !141, line: 219, column: 7)
!742 = !DILocation(line: 219, column: 27, scope: !741)
!743 = !DILocation(line: 219, column: 33, scope: !741)
!744 = !DILocation(line: 219, column: 8, scope: !741)
!745 = !DILocation(line: 219, column: 7, scope: !719)
!746 = !DILocation(line: 220, column: 4, scope: !741)
!747 = !DILocation(line: 221, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !719, file: !141, line: 221, column: 7)
!749 = !DILocation(line: 221, column: 35, scope: !748)
!750 = !DILocation(line: 221, column: 41, scope: !748)
!751 = !DILocation(line: 221, column: 45, scope: !748)
!752 = !DILocation(line: 221, column: 25, scope: !748)
!753 = !DILocation(line: 221, column: 65, scope: !748)
!754 = !DILocation(line: 221, column: 71, scope: !748)
!755 = !DILocation(line: 221, column: 75, scope: !748)
!756 = !DILocation(line: 221, column: 8, scope: !748)
!757 = !DILocation(line: 221, column: 7, scope: !719)
!758 = !DILocation(line: 223, column: 4, scope: !748)
!759 = !DILocation(line: 224, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !719, file: !141, line: 224, column: 7)
!761 = !DILocation(line: 224, column: 37, scope: !760)
!762 = !DILocation(line: 224, column: 43, scope: !760)
!763 = !DILocation(line: 224, column: 27, scope: !760)
!764 = !DILocation(line: 224, column: 8, scope: !760)
!765 = !DILocation(line: 224, column: 7, scope: !719)
!766 = !DILocation(line: 225, column: 4, scope: !760)
!767 = !DILocation(line: 226, column: 21, scope: !768)
!768 = distinct !DILexicalBlock(scope: !719, file: !141, line: 226, column: 7)
!769 = !DILocation(line: 226, column: 37, scope: !768)
!770 = !DILocation(line: 226, column: 43, scope: !768)
!771 = !DILocation(line: 226, column: 27, scope: !768)
!772 = !DILocation(line: 226, column: 8, scope: !768)
!773 = !DILocation(line: 226, column: 7, scope: !719)
!774 = !DILocation(line: 227, column: 4, scope: !768)
!775 = !DILocation(line: 228, column: 21, scope: !776)
!776 = distinct !DILexicalBlock(scope: !719, file: !141, line: 228, column: 7)
!777 = !DILocation(line: 228, column: 37, scope: !776)
!778 = !DILocation(line: 228, column: 43, scope: !776)
!779 = !DILocation(line: 228, column: 27, scope: !776)
!780 = !DILocation(line: 228, column: 8, scope: !776)
!781 = !DILocation(line: 228, column: 7, scope: !719)
!782 = !DILocation(line: 229, column: 4, scope: !776)
!783 = !DILocation(line: 230, column: 21, scope: !784)
!784 = distinct !DILexicalBlock(scope: !719, file: !141, line: 230, column: 7)
!785 = !DILocation(line: 230, column: 37, scope: !784)
!786 = !DILocation(line: 230, column: 43, scope: !784)
!787 = !DILocation(line: 230, column: 27, scope: !784)
!788 = !DILocation(line: 230, column: 8, scope: !784)
!789 = !DILocation(line: 230, column: 7, scope: !719)
!790 = !DILocation(line: 231, column: 4, scope: !784)
!791 = !DILocation(line: 232, column: 2, scope: !719)
!792 = !DILocation(line: 233, column: 1, scope: !719)
!793 = distinct !DISubprogram(name: "xdr_NicInfoV3", scope: !141, file: !141, line: 236, type: !794, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!794 = !DISubroutineType(types: !795)
!795 = !{!61, !62, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !10, line: 190, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !10, line: 176, size: 512, align: 64, elements: !799)
!799 = !{!800, !805, !810, !811, !812, !813}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !798, file: !10, line: 180, baseType: !801, size: 128, align: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !10, line: 177, size: 128, align: 64, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !801, file: !10, line: 178, baseType: !91, size: 32, align: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !801, file: !10, line: 179, baseType: !722, size: 64, align: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !798, file: !10, line: 184, baseType: !806, size: 128, align: 64, offset: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !10, line: 181, size: 128, align: 64, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !806, file: !10, line: 182, baseType: !91, size: 32, align: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !806, file: !10, line: 183, baseType: !616, size: 64, align: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !798, file: !10, line: 185, baseType: !505, size: 64, align: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !798, file: !10, line: 186, baseType: !570, size: 64, align: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !798, file: !10, line: 187, baseType: !693, size: 64, align: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !798, file: !10, line: 188, baseType: !693, size: 64, align: 64, offset: 448)
!814 = !DILocalVariable(name: "xdrs", arg: 1, scope: !793, file: !141, line: 236, type: !62)
!815 = !DILocation(line: 236, column: 21, scope: !793)
!816 = !DILocalVariable(name: "objp", arg: 2, scope: !793, file: !141, line: 236, type: !796)
!817 = !DILocation(line: 236, column: 38, scope: !793)
!818 = !DILocation(line: 239, column: 19, scope: !819)
!819 = distinct !DILexicalBlock(scope: !793, file: !141, line: 239, column: 7)
!820 = !DILocation(line: 239, column: 35, scope: !819)
!821 = !DILocation(line: 239, column: 41, scope: !819)
!822 = !DILocation(line: 239, column: 46, scope: !819)
!823 = !DILocation(line: 239, column: 25, scope: !819)
!824 = !DILocation(line: 239, column: 67, scope: !819)
!825 = !DILocation(line: 239, column: 73, scope: !819)
!826 = !DILocation(line: 239, column: 78, scope: !819)
!827 = !DILocation(line: 239, column: 8, scope: !819)
!828 = !DILocation(line: 239, column: 7, scope: !793)
!829 = !DILocation(line: 241, column: 4, scope: !819)
!830 = !DILocation(line: 242, column: 19, scope: !831)
!831 = distinct !DILexicalBlock(scope: !793, file: !141, line: 242, column: 7)
!832 = !DILocation(line: 242, column: 35, scope: !831)
!833 = !DILocation(line: 242, column: 41, scope: !831)
!834 = !DILocation(line: 242, column: 48, scope: !831)
!835 = !DILocation(line: 242, column: 25, scope: !831)
!836 = !DILocation(line: 242, column: 71, scope: !831)
!837 = !DILocation(line: 242, column: 77, scope: !831)
!838 = !DILocation(line: 242, column: 84, scope: !831)
!839 = !DILocation(line: 242, column: 8, scope: !831)
!840 = !DILocation(line: 242, column: 7, scope: !793)
!841 = !DILocation(line: 244, column: 4, scope: !831)
!842 = !DILocation(line: 245, column: 21, scope: !843)
!843 = distinct !DILexicalBlock(scope: !793, file: !141, line: 245, column: 7)
!844 = !DILocation(line: 245, column: 37, scope: !843)
!845 = !DILocation(line: 245, column: 43, scope: !843)
!846 = !DILocation(line: 245, column: 27, scope: !843)
!847 = !DILocation(line: 245, column: 8, scope: !843)
!848 = !DILocation(line: 245, column: 7, scope: !793)
!849 = !DILocation(line: 246, column: 4, scope: !843)
!850 = !DILocation(line: 247, column: 21, scope: !851)
!851 = distinct !DILexicalBlock(scope: !793, file: !141, line: 247, column: 7)
!852 = !DILocation(line: 247, column: 37, scope: !851)
!853 = !DILocation(line: 247, column: 43, scope: !851)
!854 = !DILocation(line: 247, column: 27, scope: !851)
!855 = !DILocation(line: 247, column: 8, scope: !851)
!856 = !DILocation(line: 247, column: 7, scope: !793)
!857 = !DILocation(line: 248, column: 4, scope: !851)
!858 = !DILocation(line: 249, column: 21, scope: !859)
!859 = distinct !DILexicalBlock(scope: !793, file: !141, line: 249, column: 7)
!860 = !DILocation(line: 249, column: 37, scope: !859)
!861 = !DILocation(line: 249, column: 43, scope: !859)
!862 = !DILocation(line: 249, column: 27, scope: !859)
!863 = !DILocation(line: 249, column: 8, scope: !859)
!864 = !DILocation(line: 249, column: 7, scope: !793)
!865 = !DILocation(line: 250, column: 4, scope: !859)
!866 = !DILocation(line: 251, column: 21, scope: !867)
!867 = distinct !DILexicalBlock(scope: !793, file: !141, line: 251, column: 7)
!868 = !DILocation(line: 251, column: 37, scope: !867)
!869 = !DILocation(line: 251, column: 43, scope: !867)
!870 = !DILocation(line: 251, column: 27, scope: !867)
!871 = !DILocation(line: 251, column: 8, scope: !867)
!872 = !DILocation(line: 251, column: 7, scope: !793)
!873 = !DILocation(line: 252, column: 4, scope: !867)
!874 = !DILocation(line: 253, column: 2, scope: !793)
!875 = !DILocation(line: 254, column: 1, scope: !793)
!876 = distinct !DISubprogram(name: "xdr_GuestNicProto", scope: !141, file: !141, line: 257, type: !877, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!877 = !DISubroutineType(types: !878)
!878 = !{!61, !62, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicProto", file: !10, line: 199, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicProto", file: !10, line: 192, size: 128, align: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !881, file: !10, line: 193, baseType: !145, size: 32, align: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "GuestNicProto_u", scope: !881, file: !10, line: 197, baseType: !885, size: 64, align: 64, offset: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !881, file: !10, line: 194, size: 64, align: 64, elements: !886)
!886 = !{!887, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nicsV2", scope: !885, file: !10, line: 195, baseType: !888, size: 64, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nicInfoV3", scope: !885, file: !10, line: 196, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!891 = !DILocalVariable(name: "xdrs", arg: 1, scope: !876, file: !141, line: 257, type: !62)
!892 = !DILocation(line: 257, column: 25, scope: !876)
!893 = !DILocalVariable(name: "objp", arg: 2, scope: !876, file: !141, line: 257, type: !879)
!894 = !DILocation(line: 257, column: 46, scope: !876)
!895 = !DILocation(line: 260, column: 28, scope: !896)
!896 = distinct !DILexicalBlock(scope: !876, file: !141, line: 260, column: 7)
!897 = !DILocation(line: 260, column: 35, scope: !896)
!898 = !DILocation(line: 260, column: 41, scope: !896)
!899 = !DILocation(line: 260, column: 8, scope: !896)
!900 = !DILocation(line: 260, column: 7, scope: !876)
!901 = !DILocation(line: 261, column: 4, scope: !896)
!902 = !DILocation(line: 262, column: 10, scope: !876)
!903 = !DILocation(line: 262, column: 16, scope: !876)
!904 = !DILocation(line: 262, column: 2, scope: !876)
!905 = !DILocation(line: 264, column: 22, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !141, line: 264, column: 8)
!907 = distinct !DILexicalBlock(scope: !876, file: !141, line: 262, column: 21)
!908 = !DILocation(line: 264, column: 38, scope: !906)
!909 = !DILocation(line: 264, column: 44, scope: !906)
!910 = !DILocation(line: 264, column: 60, scope: !906)
!911 = !DILocation(line: 264, column: 28, scope: !906)
!912 = !DILocation(line: 264, column: 9, scope: !906)
!913 = !DILocation(line: 264, column: 8, scope: !907)
!914 = !DILocation(line: 265, column: 5, scope: !906)
!915 = !DILocation(line: 266, column: 3, scope: !907)
!916 = !DILocation(line: 268, column: 22, scope: !917)
!917 = distinct !DILexicalBlock(scope: !907, file: !141, line: 268, column: 8)
!918 = !DILocation(line: 268, column: 38, scope: !917)
!919 = !DILocation(line: 268, column: 44, scope: !917)
!920 = !DILocation(line: 268, column: 60, scope: !917)
!921 = !DILocation(line: 268, column: 28, scope: !917)
!922 = !DILocation(line: 268, column: 9, scope: !917)
!923 = !DILocation(line: 268, column: 8, scope: !907)
!924 = !DILocation(line: 269, column: 5, scope: !917)
!925 = !DILocation(line: 270, column: 3, scope: !907)
!926 = !DILocation(line: 272, column: 3, scope: !907)
!927 = !DILocation(line: 274, column: 2, scope: !876)
!928 = !DILocation(line: 275, column: 1, scope: !876)
