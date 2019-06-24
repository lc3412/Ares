; ModuleID = './[inter]src--findif_getifaddrs.o.i'
source_filename = "./[inter]src--findif_getifaddrs.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs*, i8*, i32, %struct.sockaddr*, %struct.sockaddr*, %union.anon, i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon = type { %struct.sockaddr* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@arping_lookupdev.ifname = internal global [16 x i8] zeroinitializer, align 16
@verbose = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"arping: getifaddrs(): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"getifaddrs(): %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"arping: Autodetected interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"arping: Failed to find iface using getifaddrs().\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"No matching interface found using getifaddrs().\00", align 1

; Function Attrs: nounwind uwtable
define i8* @arping_lookupdev(i32, i32, i8*) #0 !dbg !49 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !64, metadata !65), !dbg !66
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !65), !dbg !68
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !69, metadata !65), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %7, metadata !71, metadata !65), !dbg !97
  store %struct.ifaddrs* null, %struct.ifaddrs** %7, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %8, metadata !98, metadata !65), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %9, metadata !100, metadata !65), !dbg !101
  store i8* null, i8** %9, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %10, metadata !102, metadata !65), !dbg !104
  store i32 0, i32* %10, align 4, !dbg !104
  %14 = load i32, i32* %4, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %11, metadata !106, metadata !65), !dbg !107
  store i32 0, i32* %11, align 4, !dbg !107
  %15 = load i8*, i8** %6, align 8, !dbg !108
  store i8 0, i8* %15, align 1, !dbg !109
  %16 = call i32 @getifaddrs(%struct.ifaddrs** %7) #6, !dbg !110
  %17 = icmp ne i32 %16, 0, !dbg !110
  br i1 %17, label %18, label %32, !dbg !112

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* @verbose, align 4, !dbg !113
  %20 = icmp ne i32 %19, 0, !dbg !113
  br i1 %20, label %21, label %26, !dbg !116

; <label>:21:                                     ; preds = %18
  %22 = call i32* @__errno_location() #1, !dbg !117
  %23 = load i32, i32* %22, align 4, !dbg !119
  %24 = call i8* @strerror(i32 %23) #6, !dbg !120
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* %24), !dbg !122
  br label %26, !dbg !124

; <label>:26:                                     ; preds = %21, %18
  %27 = load i8*, i8** %6, align 8, !dbg !125
  %28 = call i32* @__errno_location() #1, !dbg !126
  %29 = load i32, i32* %28, align 4, !dbg !127
  %30 = call i8* @strerror(i32 %29) #6, !dbg !128
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %27, i64 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %30) #6, !dbg !130
  br label %137, !dbg !131

; <label>:32:                                     ; preds = %3
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !132
  store %struct.ifaddrs* %33, %struct.ifaddrs** %8, align 8, !dbg !134
  br label %34, !dbg !135

; <label>:34:                                     ; preds = %114, %32
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !136
  %36 = icmp ne %struct.ifaddrs* %35, null, !dbg !139
  br i1 %36, label %37, label %118, !dbg !139

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata i32* %12, metadata !140, metadata !65), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %13, metadata !143, metadata !65), !dbg !144
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !145
  %39 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %38, i32 0, i32 2, !dbg !147
  %40 = load i32, i32* %39, align 8, !dbg !147
  %41 = and i32 %40, 1, !dbg !148
  %42 = icmp ne i32 %41, 0, !dbg !148
  br i1 %42, label %44, label %43, !dbg !149

; <label>:43:                                     ; preds = %37
  br label %114, !dbg !150

; <label>:44:                                     ; preds = %37
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !152
  %46 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %45, i32 0, i32 3, !dbg !154
  %47 = load %struct.sockaddr*, %struct.sockaddr** %46, align 8, !dbg !154
  %48 = icmp ne %struct.sockaddr* %47, null, !dbg !152
  br i1 %48, label %49, label %59, !dbg !155

; <label>:49:                                     ; preds = %44
  %50 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !156
  %51 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %50, i32 0, i32 4, !dbg !158
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8, !dbg !158
  %53 = icmp ne %struct.sockaddr* %52, null, !dbg !156
  br i1 %53, label %54, label %59, !dbg !159

; <label>:54:                                     ; preds = %49
  %55 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !160
  %56 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %55, i32 0, i32 1, !dbg !161
  %57 = load i8*, i8** %56, align 8, !dbg !161
  %58 = icmp ne i8* %57, null, !dbg !160
  br i1 %58, label %60, label %59, !dbg !162

; <label>:59:                                     ; preds = %54, %49, %44
  br label %114, !dbg !164

; <label>:60:                                     ; preds = %54
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !166
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 3, !dbg !168
  %63 = load %struct.sockaddr*, %struct.sockaddr** %62, align 8, !dbg !168
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 0, !dbg !169
  %65 = load i16, i16* %64, align 2, !dbg !169
  %66 = zext i16 %65 to i32, !dbg !166
  %67 = icmp ne i32 %66, 2, !dbg !170
  br i1 %67, label %68, label %69, !dbg !171

; <label>:68:                                     ; preds = %60
  br label %114, !dbg !172

; <label>:69:                                     ; preds = %60
  %70 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !174
  %71 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %70, i32 0, i32 2, !dbg !176
  %72 = load i32, i32* %71, align 8, !dbg !176
  %73 = and i32 %72, 24, !dbg !177
  %74 = icmp ne i32 %73, 0, !dbg !177
  br i1 %74, label %75, label %76, !dbg !178

; <label>:75:                                     ; preds = %69
  br label %114, !dbg !179

; <label>:76:                                     ; preds = %69
  %77 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !181
  %78 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %77, i32 0, i32 3, !dbg !182
  %79 = load %struct.sockaddr*, %struct.sockaddr** %78, align 8, !dbg !182
  %80 = bitcast %struct.sockaddr* %79 to %struct.sockaddr_in*, !dbg !183
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 2, !dbg !183
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0, !dbg !184
  %83 = load i32, i32* %82, align 4, !dbg !184
  store i32 %83, i32* %12, align 4, !dbg !185
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !186
  %85 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %84, i32 0, i32 4, !dbg !187
  %86 = load %struct.sockaddr*, %struct.sockaddr** %85, align 8, !dbg !187
  %87 = bitcast %struct.sockaddr* %86 to %struct.sockaddr_in*, !dbg !188
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 2, !dbg !188
  %89 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %88, i32 0, i32 0, !dbg !189
  %90 = load i32, i32* %89, align 4, !dbg !189
  store i32 %90, i32* %13, align 4, !dbg !190
  %91 = load i32, i32* %12, align 4, !dbg !191
  %92 = load i32, i32* %13, align 4, !dbg !193
  %93 = and i32 %91, %92, !dbg !194
  %94 = load i32, i32* %5, align 4, !dbg !195
  %95 = load i32, i32* %13, align 4, !dbg !196
  %96 = and i32 %94, %95, !dbg !197
  %97 = icmp ne i32 %93, %96, !dbg !198
  br i1 %97, label %98, label %99, !dbg !199

; <label>:98:                                     ; preds = %76
  br label %114, !dbg !200

; <label>:99:                                     ; preds = %76
  %100 = load i32, i32* %10, align 4, !dbg !202
  %101 = add nsw i32 %100, 1, !dbg !202
  store i32 %101, i32* %10, align 4, !dbg !202
  %102 = load i32, i32* %13, align 4, !dbg !203
  %103 = call i32 @ntohl(i32 %102) #1, !dbg !205
  %104 = load i32, i32* %11, align 4, !dbg !206
  %105 = call i32 @ntohl(i32 %104) #1, !dbg !207
  %106 = icmp ugt i32 %103, %105, !dbg !209
  br i1 %106, label %107, label %113, !dbg !210

; <label>:107:                                    ; preds = %99
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arping_lookupdev.ifname, i32 0, i32 0), i8 0, i64 16, i32 16, i1 false), !dbg !211
  %108 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !213
  %109 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %108, i32 0, i32 1, !dbg !214
  %110 = load i8*, i8** %109, align 8, !dbg !214
  %111 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arping_lookupdev.ifname, i32 0, i32 0), i8* %110, i64 15) #6, !dbg !215
  %112 = load i32, i32* %13, align 4, !dbg !216
  store i32 %112, i32* %11, align 4, !dbg !217
  br label %113, !dbg !218

; <label>:113:                                    ; preds = %107, %99
  br label %114, !dbg !219

; <label>:114:                                    ; preds = %113, %98, %75, %68, %59, %43
  %115 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !220
  %116 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %115, i32 0, i32 0, !dbg !222
  %117 = load %struct.ifaddrs*, %struct.ifaddrs** %116, align 8, !dbg !222
  store %struct.ifaddrs* %117, %struct.ifaddrs** %8, align 8, !dbg !223
  br label %34, !dbg !224, !llvm.loop !225

; <label>:118:                                    ; preds = %34
  %119 = load i32, i32* %10, align 4, !dbg !227
  %120 = icmp ne i32 %119, 0, !dbg !227
  br i1 %120, label %121, label %128, !dbg !229

; <label>:121:                                    ; preds = %118
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arping_lookupdev.ifname, i32 0, i32 0), i8** %9, align 8, !dbg !230
  %122 = load i32, i32* @verbose, align 4, !dbg !232
  %123 = icmp ne i32 %122, 0, !dbg !232
  br i1 %123, label %124, label %127, !dbg !234

; <label>:124:                                    ; preds = %121
  %125 = load i8*, i8** %9, align 8, !dbg !235
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* %125), !dbg !237
  br label %127, !dbg !238

; <label>:127:                                    ; preds = %124, %121
  br label %136, !dbg !239

; <label>:128:                                    ; preds = %118
  %129 = load i32, i32* @verbose, align 4, !dbg !240
  %130 = icmp sgt i32 %129, 1, !dbg !243
  br i1 %130, label %131, label %133, !dbg !244

; <label>:131:                                    ; preds = %128
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0)), !dbg !245
  br label %133, !dbg !247

; <label>:133:                                    ; preds = %131, %128
  %134 = load i8*, i8** %6, align 8, !dbg !248
  %135 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %134, i64 256, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !249
  br label %136

; <label>:136:                                    ; preds = %133, %127
  br label %137, !dbg !250

; <label>:137:                                    ; preds = %136, %26
  %138 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !252
  %139 = icmp ne %struct.ifaddrs* %138, null, !dbg !252
  br i1 %139, label %140, label %142, !dbg !254

; <label>:140:                                    ; preds = %137
  %141 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !255
  call void @freeifaddrs(%struct.ifaddrs* %141) #6, !dbg !257
  br label %142, !dbg !258

; <label>:142:                                    ; preds = %140, %137
  %143 = load i8*, i8** %9, align 8, !dbg !259
  ret i8* %143, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getifaddrs(%struct.ifaddrs**) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @freeifaddrs(%struct.ifaddrs*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !47)
!1 = !DIFile(filename: "[inter]src--findif_getifaddrs.o.i", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!6 = !DIEnumerator(name: "IFF_UP", value: 1)
!7 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!8 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!9 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!10 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!11 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!12 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!13 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!14 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!15 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!16 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!17 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!18 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!19 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!20 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!21 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !25, line: 239, size: 128, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!26 = !{!27, !31, !35, !42}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !24, file: !25, line: 241, baseType: !28, size: 16, align: 16)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !29, line: 28, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!30 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !24, file: !25, line: 242, baseType: !32, size: 16, align: 16, offset: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !25, line: 119, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !34, line: 49, baseType: !30)
!34 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !24, file: !25, line: 243, baseType: !36, size: 32, align: 32, offset: 32)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !25, line: 31, size: 32, align: 32, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !36, file: !25, line: 33, baseType: !39, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !25, line: 30, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 51, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !24, file: !25, line: 246, baseType: !43, size: 64, align: 8, offset: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 8, elements: !45)
!44 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = !{!48}
!48 = distinct !DIGlobalVariable(name: "ifname", scope: !49, file: !50, line: 59, type: !58, isLocal: true, isDefinition: true, variable: [16 x i8]* @arping_lookupdev.ifname)
!49 = distinct !DISubprogram(name: "arping_lookupdev", scope: !50, file: !50, line: 45, type: !51, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!50 = !DIFile(filename: "findif_getifaddrs.c", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !40, !40, !56}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!57 = !{}
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, align: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 16)
!61 = !{i32 2, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!64 = !DILocalVariable(name: "srcip", arg: 1, scope: !49, file: !50, line: 45, type: !40)
!65 = !DIExpression()
!66 = !DILocation(line: 45, column: 27, scope: !49)
!67 = !DILocalVariable(name: "dstip", arg: 2, scope: !49, file: !50, line: 46, type: !40)
!68 = !DILocation(line: 46, column: 27, scope: !49)
!69 = !DILocalVariable(name: "ebuf", arg: 3, scope: !49, file: !50, line: 47, type: !56)
!70 = !DILocation(line: 47, column: 24, scope: !49)
!71 = !DILocalVariable(name: "ifa", scope: !49, file: !50, line: 49, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrs", file: !74, line: 29, size: 448, align: 64, elements: !75)
!74 = !DIFile(filename: "/usr/include/ifaddrs.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!75 = !{!76, !77, !78, !79, !89, !90, !95}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_next", scope: !73, file: !74, line: 31, baseType: !72, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_name", scope: !73, file: !74, line: 33, baseType: !56, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !73, file: !74, line: 34, baseType: !41, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_addr", scope: !73, file: !74, line: 36, baseType: !80, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !82, line: 153, size: 128, align: 16, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/arping/[task]src--arping")
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !81, file: !82, line: 155, baseType: !28, size: 16, align: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !81, file: !82, line: 156, baseType: !86, size: 112, align: 8, offset: 16)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 112, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 14)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_netmask", scope: !73, file: !74, line: 37, baseType: !80, size: 64, align: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_ifu", scope: !73, file: !74, line: 46, baseType: !91, size: 64, align: 64, offset: 320)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !74, line: 38, size: 64, align: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_broadaddr", scope: !91, file: !74, line: 44, baseType: !80, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_dstaddr", scope: !91, file: !74, line: 45, baseType: !80, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_data", scope: !73, file: !74, line: 56, baseType: !96, size: 64, align: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!97 = !DILocation(line: 49, column: 25, scope: !49)
!98 = !DILocalVariable(name: "cur", scope: !49, file: !50, line: 50, type: !72)
!99 = !DILocation(line: 50, column: 25, scope: !49)
!100 = !DILocalVariable(name: "ret", scope: !49, file: !50, line: 51, type: !53)
!101 = !DILocation(line: 51, column: 21, scope: !49)
!102 = !DILocalVariable(name: "match_count", scope: !49, file: !50, line: 52, type: !103)
!103 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!104 = !DILocation(line: 52, column: 13, scope: !49)
!105 = !DILocation(line: 53, column: 16, scope: !49)
!106 = !DILocalVariable(name: "best_mask", scope: !49, file: !50, line: 56, type: !39)
!107 = !DILocation(line: 56, column: 19, scope: !49)
!108 = !DILocation(line: 61, column: 10, scope: !49)
!109 = !DILocation(line: 61, column: 15, scope: !49)
!110 = !DILocation(line: 63, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !49, file: !50, line: 63, column: 13)
!112 = !DILocation(line: 63, column: 13, scope: !49)
!113 = !DILocation(line: 64, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !50, line: 64, column: 21)
!115 = distinct !DILexicalBlock(scope: !111, file: !50, line: 63, column: 31)
!116 = !DILocation(line: 64, column: 21, scope: !115)
!117 = !DILocation(line: 65, column: 72, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !50, line: 64, column: 30)
!119 = !DILocation(line: 65, column: 71, scope: !118)
!120 = !DILocation(line: 65, column: 62, scope: !121)
!121 = !DILexicalBlockFile(scope: !118, file: !50, discriminator: 1)
!122 = !DILocation(line: 65, column: 25, scope: !123)
!123 = !DILexicalBlockFile(scope: !118, file: !50, discriminator: 2)
!124 = !DILocation(line: 66, column: 17, scope: !118)
!125 = !DILocation(line: 67, column: 26, scope: !115)
!126 = !DILocation(line: 68, column: 56, scope: !115)
!127 = !DILocation(line: 68, column: 55, scope: !115)
!128 = !DILocation(line: 68, column: 46, scope: !129)
!129 = !DILexicalBlockFile(scope: !115, file: !50, discriminator: 1)
!130 = !DILocation(line: 67, column: 17, scope: !115)
!131 = !DILocation(line: 69, column: 17, scope: !115)
!132 = !DILocation(line: 71, column: 20, scope: !133)
!133 = distinct !DILexicalBlock(scope: !49, file: !50, line: 71, column: 9)
!134 = !DILocation(line: 71, column: 18, scope: !133)
!135 = !DILocation(line: 71, column: 14, scope: !133)
!136 = !DILocation(line: 71, column: 25, scope: !137)
!137 = !DILexicalBlockFile(scope: !138, file: !50, discriminator: 1)
!138 = distinct !DILexicalBlock(scope: !133, file: !50, line: 71, column: 9)
!139 = !DILocation(line: 71, column: 9, scope: !137)
!140 = !DILocalVariable(name: "addr", scope: !141, file: !50, line: 72, type: !39)
!141 = distinct !DILexicalBlock(scope: !138, file: !50, line: 71, column: 51)
!142 = !DILocation(line: 72, column: 27, scope: !141)
!143 = !DILocalVariable(name: "mask", scope: !141, file: !50, line: 72, type: !39)
!144 = !DILocation(line: 72, column: 33, scope: !141)
!145 = !DILocation(line: 74, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !50, line: 74, column: 21)
!147 = !DILocation(line: 74, column: 28, scope: !146)
!148 = !DILocation(line: 74, column: 38, scope: !146)
!149 = !DILocation(line: 74, column: 21, scope: !141)
!150 = !DILocation(line: 75, column: 25, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !50, line: 74, column: 48)
!152 = !DILocation(line: 77, column: 22, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !50, line: 77, column: 21)
!154 = !DILocation(line: 77, column: 27, scope: !153)
!155 = !DILocation(line: 78, column: 21, scope: !153)
!156 = !DILocation(line: 78, column: 25, scope: !157)
!157 = !DILexicalBlockFile(scope: !153, file: !50, discriminator: 1)
!158 = !DILocation(line: 78, column: 30, scope: !157)
!159 = !DILocation(line: 79, column: 21, scope: !153)
!160 = !DILocation(line: 79, column: 25, scope: !157)
!161 = !DILocation(line: 79, column: 30, scope: !157)
!162 = !DILocation(line: 77, column: 21, scope: !163)
!163 = !DILexicalBlockFile(scope: !141, file: !50, discriminator: 1)
!164 = !DILocation(line: 80, column: 25, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !50, line: 79, column: 40)
!166 = !DILocation(line: 82, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !141, file: !50, line: 82, column: 21)
!168 = !DILocation(line: 82, column: 26, scope: !167)
!169 = !DILocation(line: 82, column: 36, scope: !167)
!170 = !DILocation(line: 82, column: 46, scope: !167)
!171 = !DILocation(line: 82, column: 21, scope: !141)
!172 = !DILocation(line: 83, column: 25, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !50, line: 82, column: 57)
!174 = !DILocation(line: 85, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !141, file: !50, line: 85, column: 21)
!176 = !DILocation(line: 85, column: 26, scope: !175)
!177 = !DILocation(line: 85, column: 36, scope: !175)
!178 = !DILocation(line: 85, column: 21, scope: !141)
!179 = !DILocation(line: 86, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !50, line: 85, column: 69)
!181 = !DILocation(line: 88, column: 45, scope: !141)
!182 = !DILocation(line: 88, column: 50, scope: !141)
!183 = !DILocation(line: 88, column: 61, scope: !141)
!184 = !DILocation(line: 88, column: 70, scope: !141)
!185 = !DILocation(line: 88, column: 22, scope: !141)
!186 = !DILocation(line: 89, column: 45, scope: !141)
!187 = !DILocation(line: 89, column: 50, scope: !141)
!188 = !DILocation(line: 89, column: 64, scope: !141)
!189 = !DILocation(line: 89, column: 73, scope: !141)
!190 = !DILocation(line: 89, column: 22, scope: !141)
!191 = !DILocation(line: 90, column: 22, scope: !192)
!192 = distinct !DILexicalBlock(scope: !141, file: !50, line: 90, column: 21)
!193 = !DILocation(line: 90, column: 29, scope: !192)
!194 = !DILocation(line: 90, column: 27, scope: !192)
!195 = !DILocation(line: 90, column: 39, scope: !192)
!196 = !DILocation(line: 90, column: 47, scope: !192)
!197 = !DILocation(line: 90, column: 45, scope: !192)
!198 = !DILocation(line: 90, column: 35, scope: !192)
!199 = !DILocation(line: 90, column: 21, scope: !141)
!200 = !DILocation(line: 91, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !192, file: !50, line: 90, column: 54)
!202 = !DILocation(line: 93, column: 28, scope: !141)
!203 = !DILocation(line: 94, column: 27, scope: !204)
!204 = distinct !DILexicalBlock(scope: !141, file: !50, line: 94, column: 21)
!205 = !DILocation(line: 94, column: 21, scope: !204)
!206 = !DILocation(line: 94, column: 41, scope: !204)
!207 = !DILocation(line: 94, column: 35, scope: !208)
!208 = !DILexicalBlockFile(scope: !204, file: !50, discriminator: 1)
!209 = !DILocation(line: 94, column: 33, scope: !204)
!210 = !DILocation(line: 94, column: 21, scope: !141)
!211 = !DILocation(line: 95, column: 25, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !50, line: 94, column: 53)
!213 = !DILocation(line: 96, column: 41, scope: !212)
!214 = !DILocation(line: 96, column: 46, scope: !212)
!215 = !DILocation(line: 96, column: 25, scope: !212)
!216 = !DILocation(line: 97, column: 37, scope: !212)
!217 = !DILocation(line: 97, column: 35, scope: !212)
!218 = !DILocation(line: 98, column: 17, scope: !212)
!219 = !DILocation(line: 99, column: 9, scope: !141)
!220 = !DILocation(line: 71, column: 36, scope: !221)
!221 = !DILexicalBlockFile(scope: !138, file: !50, discriminator: 2)
!222 = !DILocation(line: 71, column: 41, scope: !221)
!223 = !DILocation(line: 71, column: 34, scope: !221)
!224 = !DILocation(line: 71, column: 9, scope: !221)
!225 = distinct !{!225, !226}
!226 = !DILocation(line: 71, column: 9, scope: !49)
!227 = !DILocation(line: 100, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !49, file: !50, line: 100, column: 13)
!229 = !DILocation(line: 100, column: 13, scope: !49)
!230 = !DILocation(line: 101, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !50, line: 100, column: 26)
!232 = !DILocation(line: 102, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !50, line: 102, column: 21)
!234 = !DILocation(line: 102, column: 21, scope: !231)
!235 = !DILocation(line: 103, column: 71, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !50, line: 102, column: 30)
!237 = !DILocation(line: 103, column: 25, scope: !236)
!238 = !DILocation(line: 104, column: 17, scope: !236)
!239 = !DILocation(line: 105, column: 9, scope: !231)
!240 = !DILocation(line: 106, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !50, line: 106, column: 21)
!242 = distinct !DILexicalBlock(scope: !228, file: !50, line: 105, column: 16)
!243 = !DILocation(line: 106, column: 29, scope: !241)
!244 = !DILocation(line: 106, column: 21, scope: !242)
!245 = !DILocation(line: 107, column: 25, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !50, line: 106, column: 34)
!247 = !DILocation(line: 109, column: 17, scope: !246)
!248 = !DILocation(line: 110, column: 26, scope: !242)
!249 = !DILocation(line: 110, column: 17, scope: !242)
!250 = !DILocation(line: 100, column: 13, scope: !251)
!251 = !DILexicalBlockFile(scope: !228, file: !50, discriminator: 1)
!252 = !DILocation(line: 114, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !49, file: !50, line: 114, column: 13)
!254 = !DILocation(line: 114, column: 13, scope: !49)
!255 = !DILocation(line: 115, column: 29, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !50, line: 114, column: 18)
!257 = !DILocation(line: 115, column: 17, scope: !256)
!258 = !DILocation(line: 116, column: 9, scope: !256)
!259 = !DILocation(line: 117, column: 16, scope: !49)
!260 = !DILocation(line: 117, column: 9, scope: !49)
