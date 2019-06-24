; ModuleID = './line8-res.o.i'
source_filename = "./line8-res.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Resolving %s %sfailed: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(IPv6) \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Problem resolving %s (IPv4): %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @resolve_host(i8*, %struct.addrinfo**, i8 signext, i32) #0 !dbg !57 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  %11 = alloca %struct.addrinfo, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !95, metadata !96), !dbg !97
  store %struct.addrinfo** %1, %struct.addrinfo*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo*** %6, metadata !98, metadata !96), !dbg !99
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !100, metadata !96), !dbg !101
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !102, metadata !96), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %9, metadata !104, metadata !96), !dbg !105
  store i32 -1, i32* %9, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !106, metadata !96), !dbg !110
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %11, metadata !111, metadata !96), !dbg !112
  %12 = bitcast %struct.addrinfo* %11 to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 48, i32 8, i1 false), !dbg !113
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2, !dbg !114
  store i32 1, i32* %13, align 8, !dbg !115
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3, !dbg !116
  store i32 6, i32* %14, align 4, !dbg !117
  %15 = load i8, i8* %7, align 1, !dbg !118
  %16 = sext i8 %15 to i32, !dbg !118
  %17 = icmp ne i32 %16, 0, !dbg !118
  %18 = select i1 %17, i32 10, i32 2, !dbg !118
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1, !dbg !119
  store i32 %18, i32* %19, align 4, !dbg !120
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i32 0, i32 0, !dbg !121
  %21 = load i32, i32* %8, align 4, !dbg !122
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %21) #6, !dbg !123
  %23 = load i8*, i8** %5, align 8, !dbg !124
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i32 0, i32 0, !dbg !125
  %25 = load %struct.addrinfo**, %struct.addrinfo*** %6, align 8, !dbg !126
  %26 = call i32 @getaddrinfo(i8* %23, i8* %24, %struct.addrinfo* %11, %struct.addrinfo** %25), !dbg !127
  store i32 %26, i32* %9, align 4, !dbg !128
  %27 = load i32, i32* %9, align 4, !dbg !129
  %28 = icmp ne i32 %27, 0, !dbg !131
  br i1 %28, label %29, label %42, !dbg !132

; <label>:29:                                     ; preds = %4
  %30 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !133
  %31 = load i8*, i8** %5, align 8, !dbg !134
  %32 = load i8, i8* %7, align 1, !dbg !135
  %33 = sext i8 %32 to i32, !dbg !135
  %34 = icmp ne i32 %33, 0, !dbg !135
  br i1 %34, label %35, label %37, !dbg !135

; <label>:35:                                     ; preds = %29
  %36 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !136
  br label %38, !dbg !138

; <label>:37:                                     ; preds = %29
  br label %38, !dbg !139

; <label>:38:                                     ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %37 ], !dbg !141
  %40 = load i32, i32* %9, align 4, !dbg !143
  %41 = call i8* @gai_strerror(i32 %40) #6, !dbg !144
  call void (i8*, ...) @set_error(i8* %30, i8* %31, i8* %39, i8* %41), !dbg !145
  br label %42, !dbg !147

; <label>:42:                                     ; preds = %38, %4
  %43 = load i32, i32* %9, align 4, !dbg !148
  ret i32 %43, !dbg !149
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #4

declare void @set_error(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind uwtable
define %struct.addrinfo* @select_resolved_host(%struct.addrinfo*, i8 signext) #0 !dbg !150 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %4, metadata !153, metadata !96), !dbg !154
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !155, metadata !96), !dbg !156
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %6, metadata !157, metadata !96), !dbg !158
  %7 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !159
  store %struct.addrinfo* %7, %struct.addrinfo** %6, align 8, !dbg !158
  br label %8, !dbg !160

; <label>:8:                                      ; preds = %29, %2
  %9 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !161
  %10 = icmp ne %struct.addrinfo* %9, null, !dbg !163
  br i1 %10, label %11, label %33, !dbg !163

; <label>:11:                                     ; preds = %8
  %12 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !164
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1, !dbg !167
  %14 = load i32, i32* %13, align 4, !dbg !167
  %15 = icmp eq i32 %14, 10, !dbg !168
  br i1 %15, label %16, label %22, !dbg !169

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %5, align 1, !dbg !170
  %18 = sext i8 %17 to i32, !dbg !170
  %19 = icmp ne i32 %18, 0, !dbg !170
  br i1 %19, label %20, label %22, !dbg !172

; <label>:20:                                     ; preds = %16
  %21 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !173
  store %struct.addrinfo* %21, %struct.addrinfo** %3, align 8, !dbg !174
  br label %34, !dbg !174

; <label>:22:                                     ; preds = %16, %11
  %23 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !175
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 1, !dbg !177
  %25 = load i32, i32* %24, align 4, !dbg !177
  %26 = icmp eq i32 %25, 2, !dbg !178
  br i1 %26, label %27, label %29, !dbg !179

; <label>:27:                                     ; preds = %22
  %28 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !180
  store %struct.addrinfo* %28, %struct.addrinfo** %3, align 8, !dbg !181
  br label %34, !dbg !181

; <label>:29:                                     ; preds = %22
  %30 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8, !dbg !182
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 7, !dbg !183
  %32 = load %struct.addrinfo*, %struct.addrinfo** %31, align 8, !dbg !183
  store %struct.addrinfo* %32, %struct.addrinfo** %6, align 8, !dbg !184
  br label %8, !dbg !185, !llvm.loop !187

; <label>:33:                                     ; preds = %8
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !188
  br label %34, !dbg !188

; <label>:34:                                     ; preds = %33, %27, %20
  %35 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !189
  ret %struct.addrinfo* %35, !dbg !189
}

; Function Attrs: nounwind uwtable
define void @get_addr(%struct.addrinfo*, %struct.sockaddr_in6*) #0 !dbg !190 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %3, metadata !222, metadata !96), !dbg !223
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %4, metadata !224, metadata !96), !dbg !225
  %5 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8, !dbg !226
  %6 = bitcast %struct.sockaddr_in6* %5 to i8*, !dbg !227
  %7 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !228
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 5, !dbg !229
  %9 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8, !dbg !229
  %10 = bitcast %struct.sockaddr* %9 to i8*, !dbg !227
  %11 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !230
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4, !dbg !231
  %13 = load i32, i32* %12, align 8, !dbg !231
  %14 = zext i32 %13 to i64, !dbg !230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %10, i64 %14, i32 2, i1 false), !dbg !227
  ret void, !dbg !232
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @resolve_host_ipv4(i8*, %struct.sockaddr_in*) #0 !dbg !233 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !244, metadata !96), !dbg !245
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %5, metadata !246, metadata !96), !dbg !247
  call void @llvm.dbg.declare(metadata %struct.hostent** %6, metadata !248, metadata !96), !dbg !258
  %7 = load i8*, i8** %4, align 8, !dbg !259
  %8 = call %struct.hostent* @gethostbyname(i8* %7), !dbg !260
  store %struct.hostent* %8, %struct.hostent** %6, align 8, !dbg !258
  %9 = load %struct.hostent*, %struct.hostent** %6, align 8, !dbg !261
  %10 = icmp eq %struct.hostent* %9, null, !dbg !263
  br i1 %10, label %11, label %17, !dbg !264

; <label>:11:                                     ; preds = %2
  %12 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !265
  %13 = load i8*, i8** %4, align 8, !dbg !267
  %14 = call i32* @__h_errno_location() #1, !dbg !268
  %15 = load i32, i32* %14, align 4, !dbg !270
  %16 = call i8* @hstrerror(i32 %15) #6, !dbg !271
  call void (i8*, ...) @set_error(i8* %12, i8* %13, i8* %16), !dbg !273
  store i32 -1, i32* %3, align 4, !dbg !275
  br label %34, !dbg !275

; <label>:17:                                     ; preds = %2
  %18 = load %struct.hostent*, %struct.hostent** %6, align 8, !dbg !276
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 2, !dbg !277
  %20 = load i32, i32* %19, align 8, !dbg !277
  %21 = trunc i32 %20 to i16, !dbg !276
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !278
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0, !dbg !279
  store i16 %21, i16* %23, align 4, !dbg !280
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !281
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 2, !dbg !282
  %26 = load %struct.hostent*, %struct.hostent** %6, align 8, !dbg !283
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 4, !dbg !284
  %28 = load i8**, i8*** %27, align 8, !dbg !284
  %29 = getelementptr inbounds i8*, i8** %28, i64 0, !dbg !283
  %30 = load i8*, i8** %29, align 8, !dbg !283
  %31 = bitcast i8* %30 to %struct.in_addr*, !dbg !285
  %32 = bitcast %struct.in_addr* %25 to i8*, !dbg !285
  %33 = bitcast %struct.in_addr* %31 to i8*, !dbg !285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 4, i32 4, i1 false), !dbg !285
  store i32 0, i32* %3, align 4, !dbg !286
  br label %34, !dbg !286

; <label>:34:                                     ; preds = %17, %11
  %35 = load i32, i32* %3, align 4, !dbg !287
  ret i32 %35, !dbg !287
}

declare %struct.hostent* @gethostbyname(i8*) #4

; Function Attrs: nounwind
declare i8* @hstrerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !44)
!1 = !DIFile(filename: "line8-res.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/httping/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!7 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!8 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!9 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!10 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!11 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!12 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!13 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!14 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 40, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/httping/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!18 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!19 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!20 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!21 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!22 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!23 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!24 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!25 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!26 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!27 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!28 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!29 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!30 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!31 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!32 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!33 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!34 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!35 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!36 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!37 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!38 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!39 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!40 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!41 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!42 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!43 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !16, line: 31, size: 32, align: 32, elements: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !47, file: !16, line: 33, baseType: !50, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !16, line: 30, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !52, line: 51, baseType: !53)
!52 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/httping/task1")
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !{i32 2, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!57 = distinct !DISubprogram(name: "resolve_host", scope: !58, file: !58, line: 18, type: !59, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!58 = !DIFile(filename: "res.c", directory: "/home/lichi/Desktop/httping/task1")
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !65, !64, !61}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !68, line: 567, size: 384, align: 64, elements: !69)
!68 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/httping/task1")
!69 = !{!70, !71, !72, !73, !74, !79, !91, !93}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !67, file: !68, line: 569, baseType: !61, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !67, file: !68, line: 570, baseType: !61, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !67, file: !68, line: 571, baseType: !61, size: 32, align: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !67, file: !68, line: 572, baseType: !61, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !67, file: !68, line: 573, baseType: !75, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !76, line: 33, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/httping/task1")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !78, line: 189, baseType: !53)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !67, file: !68, line: 574, baseType: !80, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !76, line: 153, size: 128, align: 16, elements: !82)
!82 = !{!83, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !81, file: !76, line: 155, baseType: !84, size: 16, align: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !85, line: 28, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/httping/task1")
!86 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !81, file: !76, line: 156, baseType: !88, size: 112, align: 8, offset: 16)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 112, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 14)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !67, file: !68, line: 575, baseType: !92, size: 64, align: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !67, file: !68, line: 576, baseType: !66, size: 64, align: 64, offset: 320)
!94 = !{}
!95 = !DILocalVariable(name: "host", arg: 1, scope: !57, file: !58, line: 18, type: !62)
!96 = !DIExpression()
!97 = !DILocation(line: 18, column: 30, scope: !57)
!98 = !DILocalVariable(name: "ai", arg: 2, scope: !57, file: !58, line: 18, type: !65)
!99 = !DILocation(line: 18, column: 54, scope: !57)
!100 = !DILocalVariable(name: "use_ipv6", arg: 3, scope: !57, file: !58, line: 18, type: !64)
!101 = !DILocation(line: 18, column: 63, scope: !57)
!102 = !DILocalVariable(name: "portnr", arg: 4, scope: !57, file: !58, line: 18, type: !61)
!103 = !DILocation(line: 18, column: 77, scope: !57)
!104 = !DILocalVariable(name: "rc", scope: !57, file: !58, line: 20, type: !61)
!105 = !DILocation(line: 20, column: 6, scope: !57)
!106 = !DILocalVariable(name: "servname", scope: !57, file: !58, line: 21, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 80, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = !DILocation(line: 21, column: 7, scope: !57)
!111 = !DILocalVariable(name: "myaddr", scope: !57, file: !58, line: 22, type: !67)
!112 = !DILocation(line: 22, column: 18, scope: !57)
!113 = !DILocation(line: 24, column: 2, scope: !57)
!114 = !DILocation(line: 27, column: 9, scope: !57)
!115 = !DILocation(line: 27, column: 21, scope: !57)
!116 = !DILocation(line: 28, column: 9, scope: !57)
!117 = !DILocation(line: 28, column: 21, scope: !57)
!118 = !DILocation(line: 29, column: 21, scope: !57)
!119 = !DILocation(line: 29, column: 9, scope: !57)
!120 = !DILocation(line: 29, column: 19, scope: !57)
!121 = !DILocation(line: 30, column: 11, scope: !57)
!122 = !DILocation(line: 30, column: 44, scope: !57)
!123 = !DILocation(line: 30, column: 2, scope: !57)
!124 = !DILocation(line: 32, column: 19, scope: !57)
!125 = !DILocation(line: 32, column: 25, scope: !57)
!126 = !DILocation(line: 32, column: 44, scope: !57)
!127 = !DILocation(line: 32, column: 7, scope: !57)
!128 = !DILocation(line: 32, column: 5, scope: !57)
!129 = !DILocation(line: 34, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !57, file: !58, line: 34, column: 6)
!131 = !DILocation(line: 34, column: 9, scope: !130)
!132 = !DILocation(line: 34, column: 6, scope: !57)
!133 = !DILocation(line: 35, column: 13, scope: !130)
!134 = !DILocation(line: 35, column: 51, scope: !130)
!135 = !DILocation(line: 35, column: 57, scope: !130)
!136 = !DILocation(line: 35, column: 68, scope: !137)
!137 = !DILexicalBlockFile(scope: !130, file: !58, discriminator: 1)
!138 = !DILocation(line: 35, column: 57, scope: !137)
!139 = !DILocation(line: 35, column: 57, scope: !140)
!140 = !DILexicalBlockFile(scope: !130, file: !58, discriminator: 2)
!141 = !DILocation(line: 35, column: 57, scope: !142)
!142 = !DILexicalBlockFile(scope: !130, file: !58, discriminator: 3)
!143 = !DILocation(line: 35, column: 106, scope: !142)
!144 = !DILocation(line: 35, column: 93, scope: !142)
!145 = !DILocation(line: 35, column: 3, scope: !146)
!146 = !DILexicalBlockFile(scope: !142, file: !58, discriminator: 4)
!147 = !DILocation(line: 35, column: 3, scope: !142)
!148 = !DILocation(line: 37, column: 9, scope: !57)
!149 = !DILocation(line: 37, column: 2, scope: !57)
!150 = distinct !DISubprogram(name: "select_resolved_host", scope: !58, file: !58, line: 40, type: !151, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!151 = !DISubroutineType(types: !152)
!152 = !{!66, !66, !64}
!153 = !DILocalVariable(name: "ai", arg: 1, scope: !150, file: !58, line: 40, type: !66)
!154 = !DILocation(line: 40, column: 57, scope: !150)
!155 = !DILocalVariable(name: "use_ipv6", arg: 2, scope: !150, file: !58, line: 40, type: !64)
!156 = !DILocation(line: 40, column: 66, scope: !150)
!157 = !DILocalVariable(name: "p", scope: !150, file: !58, line: 42, type: !66)
!158 = !DILocation(line: 42, column: 19, scope: !150)
!159 = !DILocation(line: 42, column: 23, scope: !150)
!160 = !DILocation(line: 43, column: 2, scope: !150)
!161 = !DILocation(line: 43, column: 8, scope: !162)
!162 = !DILexicalBlockFile(scope: !150, file: !58, discriminator: 1)
!163 = !DILocation(line: 43, column: 2, scope: !162)
!164 = !DILocation(line: 45, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !58, line: 45, column: 7)
!166 = distinct !DILexicalBlock(scope: !150, file: !58, line: 44, column: 2)
!167 = !DILocation(line: 45, column: 12, scope: !165)
!168 = !DILocation(line: 45, column: 22, scope: !165)
!169 = !DILocation(line: 45, column: 33, scope: !165)
!170 = !DILocation(line: 45, column: 36, scope: !171)
!171 = !DILexicalBlockFile(scope: !165, file: !58, discriminator: 1)
!172 = !DILocation(line: 45, column: 7, scope: !171)
!173 = !DILocation(line: 46, column: 11, scope: !165)
!174 = !DILocation(line: 46, column: 4, scope: !165)
!175 = !DILocation(line: 48, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !58, line: 48, column: 7)
!177 = !DILocation(line: 48, column: 12, scope: !176)
!178 = !DILocation(line: 48, column: 22, scope: !176)
!179 = !DILocation(line: 48, column: 7, scope: !166)
!180 = !DILocation(line: 49, column: 11, scope: !176)
!181 = !DILocation(line: 49, column: 4, scope: !176)
!182 = !DILocation(line: 51, column: 7, scope: !166)
!183 = !DILocation(line: 51, column: 12, scope: !166)
!184 = !DILocation(line: 51, column: 5, scope: !166)
!185 = !DILocation(line: 43, column: 2, scope: !186)
!186 = !DILexicalBlockFile(scope: !150, file: !58, discriminator: 2)
!187 = distinct !{!187, !160}
!188 = !DILocation(line: 54, column: 2, scope: !150)
!189 = !DILocation(line: 55, column: 1, scope: !150)
!190 = distinct !DISubprogram(name: "get_addr", scope: !58, file: !58, line: 57, type: !191, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !66, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !16, line: 254, size: 224, align: 32, elements: !195)
!195 = !{!196, !197, !200, !201, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !194, file: !16, line: 256, baseType: !84, size: 16, align: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !194, file: !16, line: 257, baseType: !198, size: 16, align: 16, offset: 16)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !16, line: 119, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !52, line: 49, baseType: !86)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !194, file: !16, line: 258, baseType: !51, size: 32, align: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !194, file: !16, line: 259, baseType: !202, size: 128, align: 32, offset: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !16, line: 211, size: 128, align: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !202, file: !16, line: 220, baseType: !205, size: 128, align: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !16, line: 213, size: 128, align: 32, elements: !206)
!206 = !{!207, !213, !217}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !205, file: !16, line: 215, baseType: !208, size: 128, align: 8)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, align: 8, elements: !211)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !52, line: 48, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!211 = !{!212}
!212 = !DISubrange(count: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !205, file: !16, line: 217, baseType: !214, size: 128, align: 16)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, align: 16, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !205, file: !16, line: 218, baseType: !218, size: 128, align: 32)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !194, file: !16, line: 260, baseType: !51, size: 32, align: 32, offset: 192)
!222 = !DILocalVariable(name: "ai_use", arg: 1, scope: !190, file: !58, line: 57, type: !66)
!223 = !DILocation(line: 57, column: 32, scope: !190)
!224 = !DILocalVariable(name: "addr", arg: 2, scope: !190, file: !58, line: 57, type: !193)
!225 = !DILocation(line: 57, column: 61, scope: !190)
!226 = !DILocation(line: 59, column: 9, scope: !190)
!227 = !DILocation(line: 59, column: 2, scope: !190)
!228 = !DILocation(line: 59, column: 15, scope: !190)
!229 = !DILocation(line: 59, column: 23, scope: !190)
!230 = !DILocation(line: 59, column: 32, scope: !190)
!231 = !DILocation(line: 59, column: 40, scope: !190)
!232 = !DILocation(line: 60, column: 1, scope: !190)
!233 = distinct !DISubprogram(name: "resolve_host_ipv4", scope: !58, file: !58, line: 64, type: !234, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!234 = !DISubroutineType(types: !235)
!235 = !{!61, !62, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !16, line: 239, size: 128, align: 32, elements: !238)
!238 = !{!239, !240, !241, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !237, file: !16, line: 241, baseType: !84, size: 16, align: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !237, file: !16, line: 242, baseType: !198, size: 16, align: 16, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !237, file: !16, line: 243, baseType: !47, size: 32, align: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !237, file: !16, line: 246, baseType: !243, size: 64, align: 8, offset: 64)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, align: 8, elements: !215)
!244 = !DILocalVariable(name: "host", arg: 1, scope: !233, file: !58, line: 64, type: !62)
!245 = !DILocation(line: 64, column: 35, scope: !233)
!246 = !DILocalVariable(name: "addr", arg: 2, scope: !233, file: !58, line: 64, type: !236)
!247 = !DILocation(line: 64, column: 61, scope: !233)
!248 = !DILocalVariable(name: "hostdnsentries", scope: !233, file: !58, line: 66, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !68, line: 100, size: 256, align: 64, elements: !251)
!251 = !{!252, !253, !255, !256, !257}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !250, file: !68, line: 102, baseType: !92, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !250, file: !68, line: 103, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !250, file: !68, line: 104, baseType: !61, size: 32, align: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !250, file: !68, line: 105, baseType: !61, size: 32, align: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !250, file: !68, line: 106, baseType: !254, size: 64, align: 64, offset: 192)
!258 = !DILocation(line: 66, column: 18, scope: !233)
!259 = !DILocation(line: 66, column: 49, scope: !233)
!260 = !DILocation(line: 66, column: 35, scope: !233)
!261 = !DILocation(line: 68, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !233, file: !58, line: 68, column: 6)
!263 = !DILocation(line: 68, column: 21, scope: !262)
!264 = !DILocation(line: 68, column: 6, scope: !233)
!265 = !DILocation(line: 70, column: 13, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !58, line: 69, column: 2)
!267 = !DILocation(line: 70, column: 57, scope: !266)
!268 = !DILocation(line: 70, column: 74, scope: !269)
!269 = !DILexicalBlockFile(scope: !266, file: !58, discriminator: 1)
!270 = !DILocation(line: 70, column: 73, scope: !266)
!271 = !DILocation(line: 70, column: 63, scope: !272)
!272 = !DILexicalBlockFile(scope: !266, file: !58, discriminator: 2)
!273 = !DILocation(line: 70, column: 3, scope: !274)
!274 = !DILexicalBlockFile(scope: !266, file: !58, discriminator: 3)
!275 = !DILocation(line: 72, column: 3, scope: !266)
!276 = !DILocation(line: 76, column: 23, scope: !233)
!277 = !DILocation(line: 76, column: 41, scope: !233)
!278 = !DILocation(line: 76, column: 2, scope: !233)
!279 = !DILocation(line: 76, column: 10, scope: !233)
!280 = !DILocation(line: 76, column: 21, scope: !233)
!281 = !DILocation(line: 77, column: 2, scope: !233)
!282 = !DILocation(line: 77, column: 10, scope: !233)
!283 = !DILocation(line: 77, column: 41, scope: !233)
!284 = !DILocation(line: 77, column: 59, scope: !233)
!285 = !DILocation(line: 77, column: 21, scope: !233)
!286 = !DILocation(line: 79, column: 2, scope: !233)
!287 = !DILocation(line: 80, column: 1, scope: !233)
