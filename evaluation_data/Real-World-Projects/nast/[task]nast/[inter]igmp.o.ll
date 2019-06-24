; ModuleID = './[inter]igmp.o.i'
source_filename = "./[inter]igmp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_igmp_hdr = type { i8, i8, i16, %struct.in_addr }

@packet = common global i8* null, align 8
@offset = common global i16 0, align 2
@.str = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4
@lg = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"\0A---[ IGMP ]----------------------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"IP Version: %d\09 Lenght: %d\09\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"TTL: %d\09 Code: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Type: \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Membreship Query v1 [get address %s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Membership Report v1  %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Membership Report v2  %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Leave %s (v2)\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Packet Number: %d\00", align 1
@npkt = common global i32 0, align 4
@graph = common global i16 0, align 2
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@buf = common global i8* null, align 8
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@descr = common global %struct.pcap* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@maskp = common global i32 0, align 4
@netp = common global i32 0, align 4
@datalink = common global i32 0, align 4
@fp = common global %struct.bpf_program zeroinitializer, align 8
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@cont = common global i16 0, align 2
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@demonize = common global i16 0, align 2

; Function Attrs: nounwind uwtable
define void @handle_IGMP(%struct._IO_FILE*) #0 !dbg !192 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.libnet_ipv4_hdr*, align 8
  %4 = alloca %struct.libnet_igmp_hdr*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !196, metadata !197), !dbg !198
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %3, metadata !199, metadata !197), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.libnet_igmp_hdr** %4, metadata !201, metadata !197), !dbg !202
  %5 = load i8*, i8** @packet, align 8, !dbg !203
  %6 = load i16, i16* @offset, align 2, !dbg !204
  %7 = sext i16 %6 to i32, !dbg !204
  %8 = sext i32 %7 to i64, !dbg !205
  %9 = getelementptr inbounds i8, i8* %5, i64 %8, !dbg !205
  %10 = bitcast i8* %9 to %struct.libnet_ipv4_hdr*, !dbg !206
  store %struct.libnet_ipv4_hdr* %10, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !207
  %11 = load i8*, i8** @packet, align 8, !dbg !208
  %12 = getelementptr inbounds i8, i8* %11, i64 20, !dbg !209
  %13 = load i16, i16* @offset, align 2, !dbg !210
  %14 = sext i16 %13 to i32, !dbg !210
  %15 = sext i32 %14 to i64, !dbg !211
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !211
  %17 = bitcast i8* %16 to %struct.libnet_igmp_hdr*, !dbg !212
  store %struct.libnet_igmp_hdr* %17, %struct.libnet_igmp_hdr** %4, align 8, !dbg !213
  %18 = load i32, i32* @line_s, align 4, !dbg !214
  %19 = load i32, i32* @row_s, align 4, !dbg !215
  %20 = load i32, i32* @lg, align 4, !dbg !216
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i32 0, i32 0)), !dbg !217
  %21 = load i32, i32* @line_s, align 4, !dbg !218
  %22 = add nsw i32 %21, 2, !dbg !219
  store i32 %22, i32* @line_s, align 4, !dbg !220
  %23 = load i32, i32* @row_s, align 4, !dbg !221
  %24 = load i32, i32* @lg, align 4, !dbg !222
  %25 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !223
  %26 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %25, i32 0, i32 8, !dbg !224
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0, !dbg !225
  %28 = load i32, i32* %27, align 4, !dbg !225
  %29 = call i8* @inet_ntoa(i32 %28) #5, !dbg !225
  %30 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !226
  %31 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %30, i32 0, i32 9, !dbg !227
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0, !dbg !228
  %33 = load i32, i32* %32, align 4, !dbg !228
  %34 = call i8* @inet_ntoa(i32 %33) #5, !dbg !229
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %29, i8* %34), !dbg !231
  %35 = load i32, i32* @line_s, align 4, !dbg !233
  %36 = add nsw i32 %35, 1, !dbg !233
  store i32 %36, i32* @line_s, align 4, !dbg !233
  %37 = load i32, i32* @row_s, align 4, !dbg !234
  %38 = load i32, i32* @lg, align 4, !dbg !235
  %39 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !236
  %40 = bitcast %struct.libnet_ipv4_hdr* %39 to i8*, !dbg !237
  %41 = load i8, i8* %40, align 4, !dbg !237
  %42 = lshr i8 %41, 4, !dbg !237
  %43 = zext i8 %42 to i32, !dbg !236
  %44 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !238
  %45 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %44, i32 0, i32 2, !dbg !239
  %46 = load i16, i16* %45, align 2, !dbg !239
  %47 = call zeroext i16 @ntohs(i16 zeroext %46) #1, !dbg !240
  %48 = zext i16 %47 to i32, !dbg !240
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %43, i32 %48), !dbg !241
  %49 = load i32, i32* @line_s, align 4, !dbg !242
  %50 = load i32, i32* @lg, align 4, !dbg !243
  %51 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %3, align 8, !dbg !244
  %52 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %51, i32 0, i32 5, !dbg !245
  %53 = load i8, i8* %52, align 4, !dbg !245
  %54 = zext i8 %53 to i32, !dbg !244
  %55 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !246
  %56 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %55, i32 0, i32 1, !dbg !247
  %57 = load i8, i8* %56, align 1, !dbg !247
  %58 = zext i8 %57 to i32, !dbg !246
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %49, i32 30, i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %54, i32 %58), !dbg !248
  %59 = load i32, i32* @line_s, align 4, !dbg !249
  %60 = add nsw i32 %59, 1, !dbg !249
  store i32 %60, i32* @line_s, align 4, !dbg !249
  %61 = load i32, i32* @row_s, align 4, !dbg !250
  %62 = load i32, i32* @lg, align 4, !dbg !251
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !252
  %63 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !253
  %64 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %63, i32 0, i32 0, !dbg !254
  %65 = load i8, i8* %64, align 4, !dbg !254
  %66 = zext i8 %65 to i32, !dbg !253
  switch i32 %66, label %99 [
    i32 17, label %67
    i32 18, label %75
    i32 22, label %83
    i32 23, label %91
  ], !dbg !255

; <label>:67:                                     ; preds = %1
  %68 = load i32, i32* @line_s, align 4, !dbg !256
  %69 = load i32, i32* @lg, align 4, !dbg !258
  %70 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !259
  %71 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %70, i32 0, i32 3, !dbg !260
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %71, i32 0, i32 0, !dbg !261
  %73 = load i32, i32* %72, align 4, !dbg !261
  %74 = call i8* @inet_ntoa(i32 %73) #5, !dbg !261
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %68, i32 10, i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* %74), !dbg !262
  br label %106, !dbg !264

; <label>:75:                                     ; preds = %1
  %76 = load i32, i32* @line_s, align 4, !dbg !265
  %77 = load i32, i32* @lg, align 4, !dbg !266
  %78 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !267
  %79 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %78, i32 0, i32 3, !dbg !268
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0, !dbg !269
  %81 = load i32, i32* %80, align 4, !dbg !269
  %82 = call i8* @inet_ntoa(i32 %81) #5, !dbg !269
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %76, i32 10, i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %82), !dbg !270
  br label %106, !dbg !271

; <label>:83:                                     ; preds = %1
  %84 = load i32, i32* @line_s, align 4, !dbg !272
  %85 = load i32, i32* @lg, align 4, !dbg !273
  %86 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !274
  %87 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %86, i32 0, i32 3, !dbg !275
  %88 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %87, i32 0, i32 0, !dbg !276
  %89 = load i32, i32* %88, align 4, !dbg !276
  %90 = call i8* @inet_ntoa(i32 %89) #5, !dbg !276
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %84, i32 10, i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %90), !dbg !277
  br label %106, !dbg !278

; <label>:91:                                     ; preds = %1
  %92 = load i32, i32* @line_s, align 4, !dbg !279
  %93 = load i32, i32* @lg, align 4, !dbg !280
  %94 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !281
  %95 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %94, i32 0, i32 3, !dbg !282
  %96 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %95, i32 0, i32 0, !dbg !283
  %97 = load i32, i32* %96, align 4, !dbg !283
  %98 = call i8* @inet_ntoa(i32 %97) #5, !dbg !283
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %92, i32 10, i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %98), !dbg !284
  br label %106, !dbg !285

; <label>:99:                                     ; preds = %1
  %100 = load i32, i32* @line_s, align 4, !dbg !286
  %101 = load i32, i32* @lg, align 4, !dbg !287
  %102 = load %struct.libnet_igmp_hdr*, %struct.libnet_igmp_hdr** %4, align 8, !dbg !288
  %103 = getelementptr inbounds %struct.libnet_igmp_hdr, %struct.libnet_igmp_hdr* %102, i32 0, i32 0, !dbg !289
  %104 = load i8, i8* %103, align 4, !dbg !289
  %105 = zext i8 %104 to i32, !dbg !288
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %100, i32 10, i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %105), !dbg !290
  br label %106, !dbg !291

; <label>:106:                                    ; preds = %99, %91, %83, %75, %67
  %107 = load i32, i32* @line_s, align 4, !dbg !292
  %108 = add nsw i32 %107, 1, !dbg !292
  store i32 %108, i32* @line_s, align 4, !dbg !292
  %109 = load i32, i32* @lg, align 4, !dbg !293
  %110 = load i32, i32* @npkt, align 4, !dbg !294
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %108, i32 0, i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %110), !dbg !295
  %111 = load i16, i16* @graph, align 2, !dbg !296
  %112 = icmp ne i16 %111, 0, !dbg !296
  br i1 %112, label %115, label %113, !dbg !298

; <label>:113:                                    ; preds = %106
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)), !dbg !299
  br label %115, !dbg !299

; <label>:115:                                    ; preds = %113, %106
  store i32 0, i32* @row_s, align 4, !dbg !300
  %116 = load i32, i32* @line_s, align 4, !dbg !301
  %117 = add nsw i32 %116, 1, !dbg !301
  store i32 %117, i32* @line_s, align 4, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @n_print(i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #4

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!189, !190}
!llvm.ident = !{!191}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !38)
!1 = !DIFile(filename: "[inter]igmp.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !31}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !6, line: 666, size: 160, align: 32, elements: !7)
!6 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!7 = !{!8, !12, !13, !14, !17, !18, !19, !20, !21, !22, !30}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !5, file: !6, line: 669, baseType: !9, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 48, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !5, file: !6, line: 670, baseType: !9, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !5, file: !6, line: 676, baseType: !9, size: 8, align: 8, offset: 8)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !5, file: !6, line: 689, baseType: !15, size: 16, align: 16, offset: 16)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !10, line: 49, baseType: !16)
!16 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !5, file: !6, line: 690, baseType: !15, size: 16, align: 16, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !5, file: !6, line: 691, baseType: !15, size: 16, align: 16, offset: 48)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !5, file: !6, line: 704, baseType: !9, size: 8, align: 8, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !5, file: !6, line: 705, baseType: !9, size: 8, align: 8, offset: 72)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !5, file: !6, line: 706, baseType: !15, size: 16, align: 16, offset: 80)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !5, file: !6, line: 707, baseType: !23, size: 32, align: 32, offset: 96)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !24, line: 31, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !23, file: !24, line: 33, baseType: !27, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !24, line: 30, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 51, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !5, file: !6, line: 707, baseType: !23, size: 32, align: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_igmp_hdr", file: !6, line: 1151, size: 64, align: 32, elements: !33)
!33 = !{!34, !35, !36, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_type", scope: !32, file: !6, line: 1153, baseType: !9, size: 8, align: 8)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_code", scope: !32, file: !6, line: 1166, baseType: !9, size: 8, align: 8, offset: 8)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_sum", scope: !32, file: !6, line: 1167, baseType: !15, size: 16, align: 16, offset: 16)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_group", scope: !32, file: !6, line: 1168, baseType: !23, size: 32, align: 32, offset: 32)
!38 = !{!39, !103, !105, !106, !111, !112, !130, !134, !138, !144, !145, !146, !147, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !178, !179, !182, !186, !187, !188}
!39 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !40, line: 98, type: !41, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!40 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 48, baseType: !44)
!43 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 241, size: 1728, align: 64, elements: !46)
!45 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!46 = !{!47, !49, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !77, !78, !80, !84, !87, !89, !91, !92, !93, !94, !98, !99}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 242, baseType: !48, size: 32, align: 32)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 247, baseType: !50, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 248, baseType: !50, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 249, baseType: !50, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 250, baseType: !50, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 251, baseType: !50, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 252, baseType: !50, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 253, baseType: !50, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 254, baseType: !50, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 256, baseType: !50, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 257, baseType: !50, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 258, baseType: !50, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 260, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 156, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !45, line: 157, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !45, line: 158, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !45, line: 162, baseType: !48, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 262, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 264, baseType: !48, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 268, baseType: !48, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 270, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 131, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!76 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 274, baseType: !16, size: 16, align: 16, offset: 1024)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 275, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 276, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 280, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 150, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 289, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !75, line: 132, baseType: !76)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !44, file: !45, line: 297, baseType: !90, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !44, file: !45, line: 298, baseType: !90, size: 64, align: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !44, file: !45, line: 299, baseType: !90, size: 64, align: 64, offset: 1344)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !44, file: !45, line: 300, baseType: !90, size: 64, align: 64, offset: 1408)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 302, baseType: !95, size: 64, align: 64, offset: 1472)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 216, baseType: !97)
!96 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!97 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 303, baseType: !48, size: 32, align: 32, offset: 1536)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 305, baseType: !100, size: 160, align: 8, offset: 1568)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, align: 8, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 20)
!103 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !40, line: 99, type: !104, isLocal: false, isDefinition: true, variable: i16* @offset)
!104 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!105 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !40, line: 100, type: !48, isLocal: false, isDefinition: true, variable: i32* @npkt)
!106 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !40, line: 101, type: !107, isLocal: false, isDefinition: true, variable: i8** @packet)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !109, line: 33, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !75, line: 30, baseType: !11)
!111 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !40, line: 102, type: !107, isLocal: false, isDefinition: true, variable: i8** @buf)
!112 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !40, line: 103, type: !113, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !114, line: 199, size: 192, align: 64, elements: !115)
!114 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!115 = !{!116, !124, !129}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !113, file: !114, line: 200, baseType: !117, size: 128, align: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !118, line: 30, size: 128, align: 64, elements: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !117, file: !118, line: 32, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !75, line: 139, baseType: !76)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !117, file: !118, line: 33, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !75, line: 141, baseType: !76)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !113, file: !114, line: 201, baseType: !125, size: 32, align: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !126, line: 85, baseType: !127)
!126 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !109, line: 35, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !75, line: 32, baseType: !29)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !113, file: !114, line: 202, baseType: !125, size: 32, align: 32, offset: 160)
!130 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !40, line: 104, type: !131, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !114, line: 118, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !114, line: 118, flags: DIFlagFwdDecl)
!134 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !40, line: 105, type: !135, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !114, line: 119, baseType: !137)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !114, line: 119, flags: DIFlagFwdDecl)
!138 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !40, line: 106, type: !139, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !114, line: 208, size: 96, align: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !139, file: !114, line: 209, baseType: !127, size: 32, align: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !139, file: !114, line: 210, baseType: !127, size: 32, align: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !139, file: !114, line: 211, baseType: !127, size: 32, align: 32, offset: 64)
!144 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !40, line: 107, type: !125, isLocal: false, isDefinition: true, variable: i32* @maskp)
!145 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !40, line: 108, type: !125, isLocal: false, isDefinition: true, variable: i32* @netp)
!146 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !40, line: 109, type: !48, isLocal: false, isDefinition: true, variable: i32* @datalink)
!147 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !40, line: 110, type: !148, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !126, line: 104, size: 128, align: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !148, file: !126, line: 105, baseType: !127, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !148, file: !126, line: 106, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !126, line: 234, size: 64, align: 32, elements: !154)
!154 = !{!155, !158, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !153, file: !126, line: 235, baseType: !156, size: 16, align: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !109, line: 34, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !75, line: 31, baseType: !16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !153, file: !126, line: 236, baseType: !108, size: 8, align: 8, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !153, file: !126, line: 237, baseType: !108, size: 8, align: 8, offset: 24)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !153, file: !126, line: 238, baseType: !125, size: 32, align: 32, offset: 32)
!161 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !40, line: 111, type: !50, isLocal: false, isDefinition: true, variable: i8** @logname)
!162 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !40, line: 112, type: !50, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!163 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !40, line: 113, type: !156, isLocal: false, isDefinition: true, variable: i16* @tr)
!164 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !40, line: 113, type: !156, isLocal: false, isDefinition: true, variable: i16* @tl)
!165 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !40, line: 114, type: !156, isLocal: false, isDefinition: true, variable: i16* @graph)
!166 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !40, line: 115, type: !156, isLocal: false, isDefinition: true, variable: i16* @cont)
!167 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !40, line: 117, type: !48, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!168 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !40, line: 118, type: !48, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!169 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !40, line: 119, type: !48, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!170 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !40, line: 120, type: !48, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!171 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !40, line: 121, type: !48, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!172 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !40, line: 122, type: !173, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, align: 64, elements: !176)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !175, line: 60, baseType: !97)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!176 = !{!177}
!177 = !DISubrange(count: 2)
!178 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !40, line: 123, type: !48, isLocal: false, isDefinition: true, variable: i32* @lg)
!179 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !40, line: 132, type: !180, isLocal: false, isDefinition: true, variable: i64* @tm)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !181, line: 75, baseType: !121)
!181 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!182 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !40, line: 133, type: !183, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 480, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 60)
!186 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !40, line: 136, type: !156, isLocal: false, isDefinition: true, variable: i16* @demonize)
!187 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !40, line: 138, type: !48, isLocal: false, isDefinition: true, variable: i32* @line_s)
!188 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !40, line: 139, type: !48, isLocal: false, isDefinition: true, variable: i32* @row_s)
!189 = !{i32 2, !"Dwarf Version", i32 4}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!192 = distinct !DISubprogram(name: "handle_IGMP", scope: !193, file: !193, line: 22, type: !194, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!193 = !DIFile(filename: "igmp.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!194 = !DISubroutineType(types: !195)
!195 = !{null, !41}
!196 = !DILocalVariable(name: "output", arg: 1, scope: !192, file: !193, line: 22, type: !41)
!197 = !DIExpression()
!198 = !DILocation(line: 22, column: 25, scope: !192)
!199 = !DILocalVariable(name: "ip", scope: !192, file: !193, line: 24, type: !4)
!200 = !DILocation(line: 24, column: 28, scope: !192)
!201 = !DILocalVariable(name: "igmp", scope: !192, file: !193, line: 25, type: !31)
!202 = !DILocation(line: 25, column: 28, scope: !192)
!203 = !DILocation(line: 27, column: 37, scope: !192)
!204 = !DILocation(line: 27, column: 46, scope: !192)
!205 = !DILocation(line: 27, column: 44, scope: !192)
!206 = !DILocation(line: 27, column: 9, scope: !192)
!207 = !DILocation(line: 27, column: 7, scope: !192)
!208 = !DILocation(line: 28, column: 39, scope: !192)
!209 = !DILocation(line: 28, column: 46, scope: !192)
!210 = !DILocation(line: 28, column: 63, scope: !192)
!211 = !DILocation(line: 28, column: 61, scope: !192)
!212 = !DILocation(line: 28, column: 11, scope: !192)
!213 = !DILocation(line: 28, column: 9, scope: !192)
!214 = !DILocation(line: 30, column: 20, scope: !192)
!215 = !DILocation(line: 30, column: 27, scope: !192)
!216 = !DILocation(line: 30, column: 33, scope: !192)
!217 = !DILocation(line: 30, column: 4, scope: !192)
!218 = !DILocation(line: 31, column: 27, scope: !192)
!219 = !DILocation(line: 31, column: 33, scope: !192)
!220 = !DILocation(line: 31, column: 26, scope: !192)
!221 = !DILocation(line: 31, column: 36, scope: !192)
!222 = !DILocation(line: 31, column: 42, scope: !192)
!223 = !DILocation(line: 31, column: 69, scope: !192)
!224 = !DILocation(line: 31, column: 73, scope: !192)
!225 = !DILocation(line: 31, column: 59, scope: !192)
!226 = !DILocation(line: 31, column: 92, scope: !192)
!227 = !DILocation(line: 31, column: 96, scope: !192)
!228 = !DILocation(line: 31, column: 82, scope: !192)
!229 = !DILocation(line: 31, column: 82, scope: !230)
!230 = !DILexicalBlockFile(scope: !192, file: !193, discriminator: 1)
!231 = !DILocation(line: 31, column: 4, scope: !232)
!232 = !DILexicalBlockFile(scope: !192, file: !193, discriminator: 2)
!233 = !DILocation(line: 32, column: 20, scope: !192)
!234 = !DILocation(line: 32, column: 29, scope: !192)
!235 = !DILocation(line: 32, column: 35, scope: !192)
!236 = !DILocation(line: 32, column: 71, scope: !192)
!237 = !DILocation(line: 32, column: 75, scope: !192)
!238 = !DILocation(line: 32, column: 87, scope: !192)
!239 = !DILocation(line: 32, column: 91, scope: !192)
!240 = !DILocation(line: 32, column: 81, scope: !192)
!241 = !DILocation(line: 32, column: 4, scope: !230)
!242 = !DILocation(line: 33, column: 20, scope: !192)
!243 = !DILocation(line: 33, column: 30, scope: !192)
!244 = !DILocation(line: 33, column: 57, scope: !192)
!245 = !DILocation(line: 33, column: 61, scope: !192)
!246 = !DILocation(line: 33, column: 69, scope: !192)
!247 = !DILocation(line: 33, column: 75, scope: !192)
!248 = !DILocation(line: 33, column: 4, scope: !192)
!249 = !DILocation(line: 34, column: 20, scope: !192)
!250 = !DILocation(line: 34, column: 29, scope: !192)
!251 = !DILocation(line: 34, column: 35, scope: !192)
!252 = !DILocation(line: 34, column: 4, scope: !192)
!253 = !DILocation(line: 36, column: 11, scope: !192)
!254 = !DILocation(line: 36, column: 17, scope: !192)
!255 = !DILocation(line: 36, column: 4, scope: !192)
!256 = !DILocation(line: 39, column: 18, scope: !257)
!257 = distinct !DILexicalBlock(scope: !192, file: !193, line: 37, column: 6)
!258 = !DILocation(line: 39, column: 28, scope: !257)
!259 = !DILocation(line: 39, column: 83, scope: !257)
!260 = !DILocation(line: 39, column: 89, scope: !257)
!261 = !DILocation(line: 39, column: 73, scope: !257)
!262 = !DILocation(line: 39, column: 2, scope: !263)
!263 = !DILexicalBlockFile(scope: !257, file: !193, discriminator: 1)
!264 = !DILocation(line: 40, column: 2, scope: !257)
!265 = !DILocation(line: 42, column: 18, scope: !257)
!266 = !DILocation(line: 42, column: 28, scope: !257)
!267 = !DILocation(line: 42, column: 71, scope: !257)
!268 = !DILocation(line: 42, column: 77, scope: !257)
!269 = !DILocation(line: 42, column: 61, scope: !257)
!270 = !DILocation(line: 42, column: 2, scope: !263)
!271 = !DILocation(line: 43, column: 2, scope: !257)
!272 = !DILocation(line: 45, column: 18, scope: !257)
!273 = !DILocation(line: 45, column: 28, scope: !257)
!274 = !DILocation(line: 45, column: 71, scope: !257)
!275 = !DILocation(line: 45, column: 77, scope: !257)
!276 = !DILocation(line: 45, column: 61, scope: !257)
!277 = !DILocation(line: 45, column: 2, scope: !263)
!278 = !DILocation(line: 46, column: 2, scope: !257)
!279 = !DILocation(line: 48, column: 18, scope: !257)
!280 = !DILocation(line: 48, column: 28, scope: !257)
!281 = !DILocation(line: 48, column: 60, scope: !257)
!282 = !DILocation(line: 48, column: 66, scope: !257)
!283 = !DILocation(line: 48, column: 50, scope: !257)
!284 = !DILocation(line: 48, column: 2, scope: !263)
!285 = !DILocation(line: 49, column: 2, scope: !257)
!286 = !DILocation(line: 51, column: 18, scope: !257)
!287 = !DILocation(line: 51, column: 28, scope: !257)
!288 = !DILocation(line: 51, column: 39, scope: !257)
!289 = !DILocation(line: 51, column: 45, scope: !257)
!290 = !DILocation(line: 51, column: 2, scope: !257)
!291 = !DILocation(line: 52, column: 2, scope: !257)
!292 = !DILocation(line: 54, column: 20, scope: !192)
!293 = !DILocation(line: 54, column: 31, scope: !192)
!294 = !DILocation(line: 54, column: 54, scope: !192)
!295 = !DILocation(line: 54, column: 4, scope: !192)
!296 = !DILocation(line: 56, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !192, file: !193, line: 56, column: 7)
!298 = !DILocation(line: 56, column: 7, scope: !192)
!299 = !DILocation(line: 57, column: 5, scope: !297)
!300 = !DILocation(line: 59, column: 9, scope: !192)
!301 = !DILocation(line: 60, column: 4, scope: !192)
!302 = !DILocation(line: 61, column: 1, scope: !192)
