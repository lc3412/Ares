; ModuleID = './line9-socks5.o.i'
source_filename = "./line9-socks5.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"socks5connect: reply with requested authentication method does not say version 5 (%02x)\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"socks5connect: socks5 refuses our authentication methods: %02x\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"socks5connect: socks5 server requests username/password authentication\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%c%s%c%s\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"socks5connect: failed transmitting username/password to socks5 server\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"socks5connect: failed receiving authentication reply\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"socks5connect: password authentication failed\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Cannot resolve %s\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"socks5connect: failed to transmit associate request\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"socks5connect: command reply receive failure\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"socks5connect: bind request replies with version other than 0x05 (%02x)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"socks5connect: failed to connect (%02x)\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"socks5connect: only accepting bind-replies with IPv4 address (%02x)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @socks5connect(i32, %struct.addrinfo*, double, i8*, i8*, i8*, i32, i8 signext) #0 !dbg !11 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i32, align 4
  %20 = alloca [256 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !47, metadata !48), !dbg !49
  store %struct.addrinfo* %1, %struct.addrinfo** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %11, metadata !50, metadata !48), !dbg !51
  store double %2, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !52, metadata !48), !dbg !53
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !54, metadata !48), !dbg !55
  store i8* %4, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !56, metadata !48), !dbg !57
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !58, metadata !48), !dbg !59
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !60, metadata !48), !dbg !61
  store i8 %7, i8* %17, align 1
  call void @llvm.dbg.declare(metadata i8* %17, metadata !62, metadata !48), !dbg !63
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %18, metadata !64, metadata !48), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %19, metadata !85, metadata !48), !dbg !86
  store i32 0, i32* %19, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata [256 x i8]* %20, metadata !87, metadata !48), !dbg !91
  %24 = bitcast [256 x i8]* %20 to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 256, i32 16, i1 false), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %21, metadata !92, metadata !48), !dbg !93
  store i32 0, i32* %21, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %22, metadata !94, metadata !48), !dbg !95
  store i32 -1, i32* %22, align 4, !dbg !95
  %25 = load i32, i32* %10, align 4, !dbg !96
  %26 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !98
  %27 = load double, double* %12, align 8, !dbg !99
  %28 = call i32 @connect_to(i32 %25, %struct.addrinfo* %26, double %27, i8* null, i8* null, i32 0, i8* null), !dbg !100
  store i32 %28, i32* %22, align 4, !dbg !101
  %29 = icmp eq i32 %28, -1, !dbg !102
  br i1 %29, label %30, label %32, !dbg !103

; <label>:30:                                     ; preds = %8
  %31 = load i32, i32* %22, align 4, !dbg !104
  store i32 %31, i32* %9, align 4, !dbg !105
  br label %245, !dbg !105

; <label>:32:                                     ; preds = %8
  %33 = load i8*, i8** %13, align 8, !dbg !106
  %34 = icmp ne i8* %33, null, !dbg !108
  br i1 %34, label %35, label %40, !dbg !109

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !110
  store i8 5, i8* %36, align 16, !dbg !112
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !113
  store i8 2, i8* %37, align 1, !dbg !114
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 2, !dbg !115
  store i8 0, i8* %38, align 2, !dbg !116
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 3, !dbg !117
  store i8 2, i8* %39, align 1, !dbg !118
  store i32 4, i32* %21, align 4, !dbg !119
  br label %44, !dbg !120

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !121
  store i8 5, i8* %41, align 16, !dbg !123
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !124
  store i8 1, i8* %42, align 1, !dbg !125
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 2, !dbg !126
  store i8 0, i8* %43, align 2, !dbg !127
  store i32 3, i32* %21, align 4, !dbg !128
  br label %44

; <label>:44:                                     ; preds = %40, %35
  %45 = load i32, i32* %10, align 4, !dbg !129
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !131
  %47 = load i32, i32* %21, align 4, !dbg !132
  %48 = sext i32 %47 to i64, !dbg !132
  %49 = load double, double* %12, align 8, !dbg !133
  %50 = call i64 @mywrite(i32 %45, i8* %46, i64 %48, double %49), !dbg !134
  %51 = trunc i64 %50 to i32, !dbg !134
  store i32 %51, i32* %22, align 4, !dbg !135
  %52 = icmp slt i32 %51, 0, !dbg !136
  br i1 %52, label %53, label %55, !dbg !137

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* %22, align 4, !dbg !138
  store i32 %54, i32* %9, align 4, !dbg !139
  br label %245, !dbg !139

; <label>:55:                                     ; preds = %44
  %56 = load i32, i32* %10, align 4, !dbg !140
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !142
  %58 = load double, double* %12, align 8, !dbg !143
  %59 = call i64 @myread(i32 %56, i8* %57, i64 2, double %58), !dbg !144
  %60 = trunc i64 %59 to i32, !dbg !144
  store i32 %60, i32* %22, align 4, !dbg !145
  %61 = icmp slt i32 %60, 0, !dbg !146
  br i1 %61, label %62, label %64, !dbg !147

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* %22, align 4, !dbg !148
  store i32 %63, i32* %9, align 4, !dbg !149
  br label %245, !dbg !149

; <label>:64:                                     ; preds = %55
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !150
  %66 = load i8, i8* %65, align 16, !dbg !150
  %67 = zext i8 %66 to i32, !dbg !150
  %68 = icmp ne i32 %67, 5, !dbg !152
  br i1 %68, label %69, label %74, !dbg !153

; <label>:69:                                     ; preds = %64
  %70 = call i8* @gettext(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i32 0, i32 0)) #7, !dbg !154
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !156
  %72 = load i8, i8* %71, align 16, !dbg !156
  %73 = zext i8 %72 to i32, !dbg !156
  call void (i8*, ...) @set_error(i8* %70, i32 %73), !dbg !157
  store i32 -4, i32* %9, align 4, !dbg !159
  br label %245, !dbg !159

; <label>:74:                                     ; preds = %64
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !160
  %76 = load i8, i8* %75, align 1, !dbg !160
  %77 = zext i8 %76 to i32, !dbg !160
  %78 = icmp eq i32 %77, 0, !dbg !162
  br i1 %78, label %79, label %80, !dbg !163

; <label>:79:                                     ; preds = %74
  br label %92, !dbg !164

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !166
  %82 = load i8, i8* %81, align 1, !dbg !166
  %83 = zext i8 %82 to i32, !dbg !166
  %84 = icmp eq i32 %83, 2, !dbg !168
  br i1 %84, label %85, label %86, !dbg !169

; <label>:85:                                     ; preds = %80
  br label %91, !dbg !170

; <label>:86:                                     ; preds = %80
  %87 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !172
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !174
  %89 = load i8, i8* %88, align 1, !dbg !174
  %90 = zext i8 %89 to i32, !dbg !174
  call void (i8*, ...) @set_error(i8* %87, i32 %90), !dbg !175
  store i32 -4, i32* %9, align 4, !dbg !177
  br label %245, !dbg !177

; <label>:91:                                     ; preds = %85
  br label %92

; <label>:92:                                     ; preds = %91, %79
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !178
  %94 = load i8, i8* %93, align 1, !dbg !178
  %95 = zext i8 %94 to i32, !dbg !178
  %96 = icmp eq i32 %95, 2, !dbg !180
  br i1 %96, label %97, label %147, !dbg !181

; <label>:97:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata i32* %23, metadata !182, metadata !48), !dbg !184
  store i32 0, i32* %23, align 4, !dbg !184
  %98 = load i8*, i8** %13, align 8, !dbg !185
  %99 = icmp eq i8* %98, null, !dbg !187
  br i1 %99, label %103, label %100, !dbg !188

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %14, align 8, !dbg !189
  %102 = icmp eq i8* %101, null, !dbg !191
  br i1 %102, label %103, label %105, !dbg !192

; <label>:103:                                    ; preds = %100, %97
  %104 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !193
  call void (i8*, ...) @set_error(i8* %104), !dbg !195
  store i32 -4, i32* %9, align 4, !dbg !197
  br label %245, !dbg !197

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !198
  store i8 1, i8* %106, align 16, !dbg !199
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !200
  %108 = load i8*, i8** %13, align 8, !dbg !201
  %109 = call i64 @strlen(i8* %108) #8, !dbg !202
  %110 = trunc i64 %109 to i32, !dbg !203
  %111 = load i8*, i8** %13, align 8, !dbg !204
  %112 = load i8*, i8** %14, align 8, !dbg !205
  %113 = call i64 @strlen(i8* %112) #8, !dbg !206
  %114 = trunc i64 %113 to i32, !dbg !208
  %115 = load i8*, i8** %14, align 8, !dbg !209
  %116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %107, i64 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 %110, i8* %111, i32 %114, i8* %115) #7, !dbg !210
  store i32 %116, i32* %23, align 4, !dbg !212
  %117 = load i32, i32* %10, align 4, !dbg !213
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !215
  %119 = load i32, i32* %23, align 4, !dbg !216
  %120 = add nsw i32 %119, 1, !dbg !217
  %121 = sext i32 %120 to i64, !dbg !216
  %122 = load double, double* %12, align 8, !dbg !218
  %123 = call i64 @mywrite(i32 %117, i8* %118, i64 %121, double %122), !dbg !219
  %124 = trunc i64 %123 to i32, !dbg !219
  store i32 %124, i32* %22, align 4, !dbg !220
  %125 = icmp slt i32 %124, 0, !dbg !221
  br i1 %125, label %126, label %129, !dbg !222

; <label>:126:                                    ; preds = %105
  %127 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !223
  call void (i8*, ...) @set_error(i8* %127), !dbg !225
  %128 = load i32, i32* %22, align 4, !dbg !227
  store i32 %128, i32* %9, align 4, !dbg !228
  br label %245, !dbg !228

; <label>:129:                                    ; preds = %105
  %130 = load i32, i32* %10, align 4, !dbg !229
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !231
  %132 = load double, double* %12, align 8, !dbg !232
  %133 = call i64 @myread(i32 %130, i8* %131, i64 2, double %132), !dbg !233
  %134 = trunc i64 %133 to i32, !dbg !233
  store i32 %134, i32* %22, align 4, !dbg !234
  %135 = icmp slt i32 %134, 0, !dbg !235
  br i1 %135, label %136, label %139, !dbg !236

; <label>:136:                                    ; preds = %129
  %137 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !237
  call void (i8*, ...) @set_error(i8* %137), !dbg !239
  %138 = load i32, i32* %22, align 4, !dbg !241
  store i32 %138, i32* %9, align 4, !dbg !242
  br label %245, !dbg !242

; <label>:139:                                    ; preds = %129
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !243
  %141 = load i8, i8* %140, align 1, !dbg !243
  %142 = zext i8 %141 to i32, !dbg !243
  %143 = icmp ne i32 %142, 0, !dbg !245
  br i1 %143, label %144, label %146, !dbg !246

; <label>:144:                                    ; preds = %139
  %145 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !247
  call void (i8*, ...) @set_error(i8* %145), !dbg !249
  store i32 -4, i32* %9, align 4, !dbg !251
  br label %245, !dbg !251

; <label>:146:                                    ; preds = %139
  br label %147, !dbg !252

; <label>:147:                                    ; preds = %146, %92
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !253
  store i8 5, i8* %148, align 16, !dbg !254
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !255
  store i8 1, i8* %149, align 1, !dbg !256
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 2, !dbg !257
  store i8 0, i8* %150, align 2, !dbg !258
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 3, !dbg !259
  store i8 1, i8* %151, align 1, !dbg !260
  %152 = load i8*, i8** %15, align 8, !dbg !261
  %153 = call i32 @resolve_host_ipv4(i8* %152, %struct.sockaddr_in* %18), !dbg !263
  %154 = icmp eq i32 %153, -1, !dbg !264
  br i1 %154, label %155, label %162, !dbg !265

; <label>:155:                                    ; preds = %147
  %156 = load i8, i8* %17, align 1, !dbg !266
  %157 = icmp ne i8 %156, 0, !dbg !266
  br i1 %157, label %158, label %161, !dbg !269

; <label>:158:                                    ; preds = %155
  %159 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !270
  %160 = load i8*, i8** %15, align 8, !dbg !271
  call void (i8*, ...) @error_exit(i8* %159, i8* %160), !dbg !272
  br label %161, !dbg !274

; <label>:161:                                    ; preds = %158, %155
  store i32 -4, i32* %9, align 4, !dbg !275
  br label %245, !dbg !275

; <label>:162:                                    ; preds = %147
  %163 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2, !dbg !276
  %164 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %163, i32 0, i32 0, !dbg !277
  %165 = load i32, i32* %164, align 4, !dbg !277
  %166 = call i32 @ntohl(i32 %165) #1, !dbg !278
  store i32 %166, i32* %19, align 4, !dbg !279
  %167 = load i32, i32* %19, align 4, !dbg !280
  %168 = lshr i32 %167, 24, !dbg !281
  %169 = and i32 %168, 255, !dbg !282
  %170 = trunc i32 %169 to i8, !dbg !283
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 4, !dbg !284
  store i8 %170, i8* %171, align 4, !dbg !285
  %172 = load i32, i32* %19, align 4, !dbg !286
  %173 = lshr i32 %172, 16, !dbg !287
  %174 = and i32 %173, 255, !dbg !288
  %175 = trunc i32 %174 to i8, !dbg !289
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 5, !dbg !290
  store i8 %175, i8* %176, align 1, !dbg !291
  %177 = load i32, i32* %19, align 4, !dbg !292
  %178 = lshr i32 %177, 8, !dbg !293
  %179 = and i32 %178, 255, !dbg !294
  %180 = trunc i32 %179 to i8, !dbg !295
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 6, !dbg !296
  store i8 %180, i8* %181, align 2, !dbg !297
  %182 = load i32, i32* %19, align 4, !dbg !298
  %183 = and i32 %182, 255, !dbg !299
  %184 = trunc i32 %183 to i8, !dbg !300
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 7, !dbg !301
  store i8 %184, i8* %185, align 1, !dbg !302
  %186 = load i32, i32* %16, align 4, !dbg !303
  %187 = ashr i32 %186, 8, !dbg !304
  %188 = and i32 %187, 255, !dbg !305
  %189 = trunc i32 %188 to i8, !dbg !306
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 8, !dbg !307
  store i8 %189, i8* %190, align 8, !dbg !308
  %191 = load i32, i32* %16, align 4, !dbg !309
  %192 = and i32 %191, 255, !dbg !310
  %193 = trunc i32 %192 to i8, !dbg !311
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 9, !dbg !312
  store i8 %193, i8* %194, align 1, !dbg !313
  %195 = load i32, i32* %10, align 4, !dbg !314
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !316
  %197 = load double, double* %12, align 8, !dbg !317
  %198 = call i64 @mywrite(i32 %195, i8* %196, i64 10, double %197), !dbg !318
  %199 = trunc i64 %198 to i32, !dbg !318
  store i32 %199, i32* %22, align 4, !dbg !319
  %200 = icmp slt i32 %199, 0, !dbg !320
  br i1 %200, label %201, label %204, !dbg !321

; <label>:201:                                    ; preds = %162
  %202 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !322
  call void (i8*, ...) @set_error(i8* %202), !dbg !324
  %203 = load i32, i32* %22, align 4, !dbg !326
  store i32 %203, i32* %9, align 4, !dbg !327
  br label %245, !dbg !327

; <label>:204:                                    ; preds = %162
  %205 = load i32, i32* %10, align 4, !dbg !328
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i32 0, i32 0, !dbg !330
  %207 = load double, double* %12, align 8, !dbg !331
  %208 = call i64 @myread(i32 %205, i8* %206, i64 10, double %207), !dbg !332
  %209 = trunc i64 %208 to i32, !dbg !332
  store i32 %209, i32* %22, align 4, !dbg !333
  %210 = icmp slt i32 %209, 0, !dbg !334
  br i1 %210, label %211, label %214, !dbg !335

; <label>:211:                                    ; preds = %204
  %212 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !336
  call void (i8*, ...) @set_error(i8* %212), !dbg !338
  %213 = load i32, i32* %22, align 4, !dbg !340
  store i32 %213, i32* %9, align 4, !dbg !341
  br label %245, !dbg !341

; <label>:214:                                    ; preds = %204
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !342
  %216 = load i8, i8* %215, align 16, !dbg !342
  %217 = zext i8 %216 to i32, !dbg !342
  %218 = icmp ne i32 %217, 5, !dbg !344
  br i1 %218, label %219, label %224, !dbg !345

; <label>:219:                                    ; preds = %214
  %220 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !346
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !348
  %222 = load i8, i8* %221, align 16, !dbg !348
  %223 = zext i8 %222 to i32, !dbg !348
  call void (i8*, ...) @set_error(i8* %220, i32 %223), !dbg !349
  store i32 -4, i32* %9, align 4, !dbg !351
  br label %245, !dbg !351

; <label>:224:                                    ; preds = %214
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !352
  %226 = load i8, i8* %225, align 1, !dbg !352
  %227 = zext i8 %226 to i32, !dbg !352
  %228 = icmp ne i32 %227, 0, !dbg !354
  br i1 %228, label %229, label %234, !dbg !355

; <label>:229:                                    ; preds = %224
  %230 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !356
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 1, !dbg !358
  %232 = load i8, i8* %231, align 1, !dbg !358
  %233 = zext i8 %232 to i32, !dbg !358
  call void (i8*, ...) @set_error(i8* %230, i32 %233), !dbg !359
  store i32 -4, i32* %9, align 4, !dbg !361
  br label %245, !dbg !361

; <label>:234:                                    ; preds = %224
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 3, !dbg !362
  %236 = load i8, i8* %235, align 1, !dbg !362
  %237 = zext i8 %236 to i32, !dbg !362
  %238 = icmp ne i32 %237, 1, !dbg !364
  br i1 %238, label %239, label %244, !dbg !365

; <label>:239:                                    ; preds = %234
  %240 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !366
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 3, !dbg !368
  %242 = load i8, i8* %241, align 1, !dbg !368
  %243 = zext i8 %242 to i32, !dbg !368
  call void (i8*, ...) @set_error(i8* %240, i32 %243), !dbg !369
  store i32 -4, i32* %9, align 4, !dbg !371
  br label %245, !dbg !371

; <label>:244:                                    ; preds = %234
  store i32 0, i32* %9, align 4, !dbg !372
  br label %245, !dbg !372

; <label>:245:                                    ; preds = %244, %239, %229, %219, %211, %201, %161, %144, %136, %126, %103, %86, %69, %62, %53, %30
  %246 = load i32, i32* %9, align 4, !dbg !373
  ret i32 %246, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i32 @connect_to(i32, %struct.addrinfo*, double, i8*, i8*, i32, i8*) #3

declare i64 @mywrite(i32, i8*, i64, double) #3

declare i64 @myread(i32, i8*, i64, double) #3

declare void @set_error(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @resolve_host_ipv4(i8*, %struct.sockaddr_in*) #3

declare void @error_exit(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line9-socks5.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "socks5connect", scope: !12, file: !12, line: 19, type: !13, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "socks5.c", directory: "/home/lichi/Desktop/httping/task1")
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !15, !44, !45, !45, !45, !7, !6}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !17, line: 567, size: 384, align: 64, elements: !18)
!17 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/httping/task1")
!18 = !{!19, !20, !21, !22, !23, !29, !42, !43}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !16, file: !17, line: 569, baseType: !7, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !16, file: !17, line: 570, baseType: !7, size: 32, align: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !16, file: !17, line: 571, baseType: !7, size: 32, align: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !16, file: !17, line: 572, baseType: !7, size: 32, align: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !16, file: !17, line: 573, baseType: !24, size: 32, align: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !25, line: 277, baseType: !26)
!25 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/httping/task1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !27, line: 189, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!28 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !16, file: !17, line: 574, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !32, line: 153, size: 128, align: 16, elements: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/httping/task1")
!33 = !{!34, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !31, file: !32, line: 155, baseType: !35, size: 16, align: 16)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !36, line: 28, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/httping/task1")
!37 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !31, file: !32, line: 156, baseType: !39, size: 112, align: 8, offset: 16)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 112, align: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !16, file: !17, line: 575, baseType: !5, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !16, file: !17, line: 576, baseType: !15, size: 64, align: 64, offset: 320)
!44 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!47 = !DILocalVariable(name: "fd", arg: 1, scope: !11, file: !12, line: 19, type: !7)
!48 = !DIExpression()
!49 = !DILocation(line: 19, column: 23, scope: !11)
!50 = !DILocalVariable(name: "ai", arg: 2, scope: !11, file: !12, line: 19, type: !15)
!51 = !DILocation(line: 19, column: 44, scope: !11)
!52 = !DILocalVariable(name: "timeout", arg: 3, scope: !11, file: !12, line: 19, type: !44)
!53 = !DILocation(line: 19, column: 55, scope: !11)
!54 = !DILocalVariable(name: "socks5_username", arg: 4, scope: !11, file: !12, line: 19, type: !45)
!55 = !DILocation(line: 19, column: 76, scope: !11)
!56 = !DILocalVariable(name: "socks5_password", arg: 5, scope: !11, file: !12, line: 19, type: !45)
!57 = !DILocation(line: 19, column: 105, scope: !11)
!58 = !DILocalVariable(name: "host", arg: 6, scope: !11, file: !12, line: 19, type: !45)
!59 = !DILocation(line: 19, column: 134, scope: !11)
!60 = !DILocalVariable(name: "port", arg: 7, scope: !11, file: !12, line: 19, type: !7)
!61 = !DILocation(line: 19, column: 144, scope: !11)
!62 = !DILocalVariable(name: "abort_on_resolve_failure", arg: 8, scope: !11, file: !12, line: 19, type: !6)
!63 = !DILocation(line: 19, column: 155, scope: !11)
!64 = !DILocalVariable(name: "sai", scope: !11, file: !12, line: 21, type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !66, line: 239, size: 128, align: 32, elements: !67)
!66 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/httping/task1")
!67 = !{!68, !69, !73, !79}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !65, file: !66, line: 241, baseType: !35, size: 16, align: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !65, file: !66, line: 242, baseType: !70, size: 16, align: 16, offset: 16)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !66, line: 119, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !72, line: 49, baseType: !37)
!72 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/httping/task1")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !65, file: !66, line: 243, baseType: !74, size: 32, align: 32, offset: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !66, line: 31, size: 32, align: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !74, file: !66, line: 33, baseType: !77, size: 32, align: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !66, line: 30, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 51, baseType: !28)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !65, file: !66, line: 246, baseType: !80, size: 64, align: 8, offset: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, align: 8, elements: !82)
!81 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 8)
!84 = !DILocation(line: 21, column: 21, scope: !11)
!85 = !DILocalVariable(name: "addr", scope: !11, file: !12, line: 22, type: !78)
!86 = !DILocation(line: 22, column: 11, scope: !11)
!87 = !DILocalVariable(name: "io_buffer", scope: !11, file: !12, line: 23, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 256)
!91 = !DILocation(line: 23, column: 16, scope: !11)
!92 = !DILocalVariable(name: "io_len", scope: !11, file: !12, line: 24, type: !7)
!93 = !DILocation(line: 24, column: 6, scope: !11)
!94 = !DILocalVariable(name: "rc", scope: !11, file: !12, line: 24, type: !7)
!95 = !DILocation(line: 24, column: 18, scope: !11)
!96 = !DILocation(line: 26, column: 23, scope: !97)
!97 = distinct !DILexicalBlock(scope: !11, file: !12, line: 26, column: 6)
!98 = !DILocation(line: 26, column: 27, scope: !97)
!99 = !DILocation(line: 26, column: 31, scope: !97)
!100 = !DILocation(line: 26, column: 12, scope: !97)
!101 = !DILocation(line: 26, column: 10, scope: !97)
!102 = !DILocation(line: 26, column: 61, scope: !97)
!103 = !DILocation(line: 26, column: 6, scope: !11)
!104 = !DILocation(line: 27, column: 10, scope: !97)
!105 = !DILocation(line: 27, column: 3, scope: !97)
!106 = !DILocation(line: 30, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !11, file: !12, line: 30, column: 6)
!108 = !DILocation(line: 30, column: 22, scope: !107)
!109 = !DILocation(line: 30, column: 6, scope: !11)
!110 = !DILocation(line: 32, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !12, line: 31, column: 2)
!112 = !DILocation(line: 32, column: 16, scope: !111)
!113 = !DILocation(line: 33, column: 3, scope: !111)
!114 = !DILocation(line: 33, column: 16, scope: !111)
!115 = !DILocation(line: 34, column: 3, scope: !111)
!116 = !DILocation(line: 34, column: 16, scope: !111)
!117 = !DILocation(line: 35, column: 3, scope: !111)
!118 = !DILocation(line: 35, column: 16, scope: !111)
!119 = !DILocation(line: 36, column: 10, scope: !111)
!120 = !DILocation(line: 37, column: 2, scope: !111)
!121 = !DILocation(line: 40, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !12, line: 39, column: 2)
!123 = !DILocation(line: 40, column: 16, scope: !122)
!124 = !DILocation(line: 41, column: 3, scope: !122)
!125 = !DILocation(line: 41, column: 16, scope: !122)
!126 = !DILocation(line: 42, column: 3, scope: !122)
!127 = !DILocation(line: 42, column: 16, scope: !122)
!128 = !DILocation(line: 43, column: 10, scope: !122)
!129 = !DILocation(line: 46, column: 20, scope: !130)
!130 = distinct !DILexicalBlock(scope: !11, file: !12, line: 46, column: 6)
!131 = !DILocation(line: 46, column: 32, scope: !130)
!132 = !DILocation(line: 46, column: 43, scope: !130)
!133 = !DILocation(line: 46, column: 51, scope: !130)
!134 = !DILocation(line: 46, column: 12, scope: !130)
!135 = !DILocation(line: 46, column: 10, scope: !130)
!136 = !DILocation(line: 46, column: 61, scope: !130)
!137 = !DILocation(line: 46, column: 6, scope: !11)
!138 = !DILocation(line: 47, column: 10, scope: !130)
!139 = !DILocation(line: 47, column: 3, scope: !130)
!140 = !DILocation(line: 50, column: 19, scope: !141)
!141 = distinct !DILexicalBlock(scope: !11, file: !12, line: 50, column: 6)
!142 = !DILocation(line: 50, column: 31, scope: !141)
!143 = !DILocation(line: 50, column: 45, scope: !141)
!144 = !DILocation(line: 50, column: 12, scope: !141)
!145 = !DILocation(line: 50, column: 10, scope: !141)
!146 = !DILocation(line: 50, column: 55, scope: !141)
!147 = !DILocation(line: 50, column: 6, scope: !11)
!148 = !DILocation(line: 51, column: 10, scope: !141)
!149 = !DILocation(line: 51, column: 3, scope: !141)
!150 = !DILocation(line: 53, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !11, file: !12, line: 53, column: 6)
!152 = !DILocation(line: 53, column: 19, scope: !151)
!153 = !DILocation(line: 53, column: 6, scope: !11)
!154 = !DILocation(line: 55, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !12, line: 54, column: 2)
!156 = !DILocation(line: 55, column: 113, scope: !155)
!157 = !DILocation(line: 55, column: 3, scope: !158)
!158 = !DILexicalBlockFile(scope: !155, file: !12, discriminator: 1)
!159 = !DILocation(line: 56, column: 3, scope: !155)
!160 = !DILocation(line: 59, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !11, file: !12, line: 59, column: 6)
!162 = !DILocation(line: 59, column: 19, scope: !161)
!163 = !DILocation(line: 59, column: 6, scope: !11)
!164 = !DILocation(line: 62, column: 2, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !12, line: 60, column: 2)
!166 = !DILocation(line: 63, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !12, line: 63, column: 11)
!168 = !DILocation(line: 63, column: 24, scope: !167)
!169 = !DILocation(line: 63, column: 11, scope: !161)
!170 = !DILocation(line: 66, column: 2, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !12, line: 64, column: 2)
!172 = !DILocation(line: 69, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !12, line: 68, column: 2)
!174 = !DILocation(line: 69, column: 88, scope: !173)
!175 = !DILocation(line: 69, column: 3, scope: !176)
!176 = !DILexicalBlockFile(scope: !173, file: !12, discriminator: 1)
!177 = !DILocation(line: 70, column: 3, scope: !173)
!178 = !DILocation(line: 74, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !11, file: !12, line: 74, column: 6)
!180 = !DILocation(line: 74, column: 19, scope: !179)
!181 = !DILocation(line: 74, column: 6, scope: !11)
!182 = !DILocalVariable(name: "io_len", scope: !183, file: !12, line: 76, type: !7)
!183 = distinct !DILexicalBlock(scope: !179, file: !12, line: 75, column: 2)
!184 = !DILocation(line: 76, column: 7, scope: !183)
!185 = !DILocation(line: 78, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !12, line: 78, column: 7)
!187 = !DILocation(line: 78, column: 23, scope: !186)
!188 = !DILocation(line: 78, column: 30, scope: !186)
!189 = !DILocation(line: 78, column: 33, scope: !190)
!190 = !DILexicalBlockFile(scope: !186, file: !12, discriminator: 1)
!191 = !DILocation(line: 78, column: 49, scope: !190)
!192 = !DILocation(line: 78, column: 7, scope: !190)
!193 = !DILocation(line: 80, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !12, line: 79, column: 3)
!195 = !DILocation(line: 80, column: 4, scope: !196)
!196 = !DILexicalBlockFile(scope: !194, file: !12, discriminator: 1)
!197 = !DILocation(line: 81, column: 4, scope: !194)
!198 = !DILocation(line: 84, column: 3, scope: !183)
!199 = !DILocation(line: 84, column: 16, scope: !183)
!200 = !DILocation(line: 85, column: 30, scope: !183)
!201 = !DILocation(line: 85, column: 90, scope: !183)
!202 = !DILocation(line: 85, column: 83, scope: !183)
!203 = !DILocation(line: 85, column: 78, scope: !183)
!204 = !DILocation(line: 85, column: 108, scope: !183)
!205 = !DILocation(line: 85, column: 137, scope: !183)
!206 = !DILocation(line: 85, column: 130, scope: !207)
!207 = !DILexicalBlockFile(scope: !183, file: !12, discriminator: 1)
!208 = !DILocation(line: 85, column: 125, scope: !183)
!209 = !DILocation(line: 85, column: 155, scope: !183)
!210 = !DILocation(line: 85, column: 12, scope: !211)
!211 = !DILexicalBlockFile(scope: !183, file: !12, discriminator: 2)
!212 = !DILocation(line: 85, column: 10, scope: !183)
!213 = !DILocation(line: 87, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !183, file: !12, line: 87, column: 7)
!215 = !DILocation(line: 87, column: 33, scope: !214)
!216 = !DILocation(line: 87, column: 44, scope: !214)
!217 = !DILocation(line: 87, column: 51, scope: !214)
!218 = !DILocation(line: 87, column: 56, scope: !214)
!219 = !DILocation(line: 87, column: 13, scope: !214)
!220 = !DILocation(line: 87, column: 11, scope: !214)
!221 = !DILocation(line: 87, column: 66, scope: !214)
!222 = !DILocation(line: 87, column: 7, scope: !183)
!223 = !DILocation(line: 89, column: 14, scope: !224)
!224 = distinct !DILexicalBlock(scope: !214, file: !12, line: 88, column: 3)
!225 = !DILocation(line: 89, column: 4, scope: !226)
!226 = !DILexicalBlockFile(scope: !224, file: !12, discriminator: 1)
!227 = !DILocation(line: 90, column: 11, scope: !224)
!228 = !DILocation(line: 90, column: 4, scope: !224)
!229 = !DILocation(line: 93, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !183, file: !12, line: 93, column: 7)
!231 = !DILocation(line: 93, column: 32, scope: !230)
!232 = !DILocation(line: 93, column: 46, scope: !230)
!233 = !DILocation(line: 93, column: 13, scope: !230)
!234 = !DILocation(line: 93, column: 11, scope: !230)
!235 = !DILocation(line: 93, column: 56, scope: !230)
!236 = !DILocation(line: 93, column: 7, scope: !183)
!237 = !DILocation(line: 95, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !12, line: 94, column: 3)
!239 = !DILocation(line: 95, column: 4, scope: !240)
!240 = !DILexicalBlockFile(scope: !238, file: !12, discriminator: 1)
!241 = !DILocation(line: 96, column: 11, scope: !238)
!242 = !DILocation(line: 96, column: 4, scope: !238)
!243 = !DILocation(line: 99, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !183, file: !12, line: 99, column: 7)
!245 = !DILocation(line: 99, column: 20, scope: !244)
!246 = !DILocation(line: 99, column: 7, scope: !183)
!247 = !DILocation(line: 101, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !12, line: 100, column: 3)
!249 = !DILocation(line: 101, column: 4, scope: !250)
!250 = !DILexicalBlockFile(scope: !248, file: !12, discriminator: 1)
!251 = !DILocation(line: 102, column: 4, scope: !248)
!252 = !DILocation(line: 104, column: 2, scope: !183)
!253 = !DILocation(line: 107, column: 2, scope: !11)
!254 = !DILocation(line: 107, column: 15, scope: !11)
!255 = !DILocation(line: 108, column: 2, scope: !11)
!256 = !DILocation(line: 108, column: 15, scope: !11)
!257 = !DILocation(line: 109, column: 2, scope: !11)
!258 = !DILocation(line: 109, column: 15, scope: !11)
!259 = !DILocation(line: 110, column: 2, scope: !11)
!260 = !DILocation(line: 110, column: 15, scope: !11)
!261 = !DILocation(line: 112, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !11, file: !12, line: 112, column: 6)
!263 = !DILocation(line: 112, column: 6, scope: !262)
!264 = !DILocation(line: 112, column: 36, scope: !262)
!265 = !DILocation(line: 112, column: 6, scope: !11)
!266 = !DILocation(line: 114, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !12, line: 114, column: 7)
!268 = distinct !DILexicalBlock(scope: !262, file: !12, line: 113, column: 2)
!269 = !DILocation(line: 114, column: 7, scope: !268)
!270 = !DILocation(line: 115, column: 15, scope: !267)
!271 = !DILocation(line: 115, column: 45, scope: !267)
!272 = !DILocation(line: 115, column: 4, scope: !273)
!273 = !DILexicalBlockFile(scope: !267, file: !12, discriminator: 1)
!274 = !DILocation(line: 115, column: 4, scope: !267)
!275 = !DILocation(line: 117, column: 3, scope: !268)
!276 = !DILocation(line: 120, column: 19, scope: !11)
!277 = !DILocation(line: 120, column: 28, scope: !11)
!278 = !DILocation(line: 120, column: 9, scope: !11)
!279 = !DILocation(line: 120, column: 7, scope: !11)
!280 = !DILocation(line: 122, column: 18, scope: !11)
!281 = !DILocation(line: 122, column: 23, scope: !11)
!282 = !DILocation(line: 122, column: 30, scope: !11)
!283 = !DILocation(line: 122, column: 17, scope: !11)
!284 = !DILocation(line: 122, column: 2, scope: !11)
!285 = !DILocation(line: 122, column: 15, scope: !11)
!286 = !DILocation(line: 123, column: 18, scope: !11)
!287 = !DILocation(line: 123, column: 23, scope: !11)
!288 = !DILocation(line: 123, column: 30, scope: !11)
!289 = !DILocation(line: 123, column: 17, scope: !11)
!290 = !DILocation(line: 123, column: 2, scope: !11)
!291 = !DILocation(line: 123, column: 15, scope: !11)
!292 = !DILocation(line: 124, column: 18, scope: !11)
!293 = !DILocation(line: 124, column: 23, scope: !11)
!294 = !DILocation(line: 124, column: 29, scope: !11)
!295 = !DILocation(line: 124, column: 17, scope: !11)
!296 = !DILocation(line: 124, column: 2, scope: !11)
!297 = !DILocation(line: 124, column: 15, scope: !11)
!298 = !DILocation(line: 125, column: 18, scope: !11)
!299 = !DILocation(line: 125, column: 25, scope: !11)
!300 = !DILocation(line: 125, column: 17, scope: !11)
!301 = !DILocation(line: 125, column: 2, scope: !11)
!302 = !DILocation(line: 125, column: 15, scope: !11)
!303 = !DILocation(line: 127, column: 18, scope: !11)
!304 = !DILocation(line: 127, column: 23, scope: !11)
!305 = !DILocation(line: 127, column: 29, scope: !11)
!306 = !DILocation(line: 127, column: 17, scope: !11)
!307 = !DILocation(line: 127, column: 2, scope: !11)
!308 = !DILocation(line: 127, column: 15, scope: !11)
!309 = !DILocation(line: 128, column: 18, scope: !11)
!310 = !DILocation(line: 128, column: 25, scope: !11)
!311 = !DILocation(line: 128, column: 17, scope: !11)
!312 = !DILocation(line: 128, column: 2, scope: !11)
!313 = !DILocation(line: 128, column: 15, scope: !11)
!314 = !DILocation(line: 130, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !11, file: !12, line: 130, column: 6)
!316 = !DILocation(line: 130, column: 32, scope: !315)
!317 = !DILocation(line: 130, column: 47, scope: !315)
!318 = !DILocation(line: 130, column: 12, scope: !315)
!319 = !DILocation(line: 130, column: 10, scope: !315)
!320 = !DILocation(line: 130, column: 57, scope: !315)
!321 = !DILocation(line: 130, column: 6, scope: !11)
!322 = !DILocation(line: 132, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !12, line: 131, column: 2)
!324 = !DILocation(line: 132, column: 3, scope: !325)
!325 = !DILexicalBlockFile(scope: !323, file: !12, discriminator: 1)
!326 = !DILocation(line: 133, column: 10, scope: !323)
!327 = !DILocation(line: 133, column: 3, scope: !323)
!328 = !DILocation(line: 136, column: 19, scope: !329)
!329 = distinct !DILexicalBlock(scope: !11, file: !12, line: 136, column: 6)
!330 = !DILocation(line: 136, column: 31, scope: !329)
!331 = !DILocation(line: 136, column: 46, scope: !329)
!332 = !DILocation(line: 136, column: 12, scope: !329)
!333 = !DILocation(line: 136, column: 10, scope: !329)
!334 = !DILocation(line: 136, column: 56, scope: !329)
!335 = !DILocation(line: 136, column: 6, scope: !11)
!336 = !DILocation(line: 138, column: 13, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !12, line: 137, column: 2)
!338 = !DILocation(line: 138, column: 3, scope: !339)
!339 = !DILexicalBlockFile(scope: !337, file: !12, discriminator: 1)
!340 = !DILocation(line: 139, column: 10, scope: !337)
!341 = !DILocation(line: 139, column: 3, scope: !337)
!342 = !DILocation(line: 143, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !11, file: !12, line: 143, column: 6)
!344 = !DILocation(line: 143, column: 19, scope: !343)
!345 = !DILocation(line: 143, column: 6, scope: !11)
!346 = !DILocation(line: 145, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !12, line: 144, column: 2)
!348 = !DILocation(line: 145, column: 97, scope: !347)
!349 = !DILocation(line: 145, column: 3, scope: !350)
!350 = !DILexicalBlockFile(scope: !347, file: !12, discriminator: 1)
!351 = !DILocation(line: 146, column: 3, scope: !347)
!352 = !DILocation(line: 149, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !11, file: !12, line: 149, column: 6)
!354 = !DILocation(line: 149, column: 19, scope: !353)
!355 = !DILocation(line: 149, column: 6, scope: !11)
!356 = !DILocation(line: 151, column: 13, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !12, line: 150, column: 2)
!358 = !DILocation(line: 151, column: 65, scope: !357)
!359 = !DILocation(line: 151, column: 3, scope: !360)
!360 = !DILexicalBlockFile(scope: !357, file: !12, discriminator: 1)
!361 = !DILocation(line: 152, column: 3, scope: !357)
!362 = !DILocation(line: 155, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !11, file: !12, line: 155, column: 6)
!364 = !DILocation(line: 155, column: 19, scope: !363)
!365 = !DILocation(line: 155, column: 6, scope: !11)
!366 = !DILocation(line: 157, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !12, line: 156, column: 2)
!368 = !DILocation(line: 157, column: 93, scope: !367)
!369 = !DILocation(line: 157, column: 3, scope: !370)
!370 = !DILexicalBlockFile(scope: !367, file: !12, discriminator: 1)
!371 = !DILocation(line: 158, column: 3, scope: !367)
!372 = !DILocation(line: 161, column: 2, scope: !11)
!373 = !DILocation(line: 162, column: 1, scope: !11)
