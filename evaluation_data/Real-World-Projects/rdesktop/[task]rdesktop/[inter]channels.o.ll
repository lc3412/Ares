; ModuleID = './[inter]channels.o.i'
source_filename = "./[inter]channels.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@g_rdp_version = external global i32, align 4
@g_num_channels = common global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"channel_register(), channel table full, increase MAX_CHANNELS\00", align 1
@g_channels = common global [6 x %struct._VCHANNEL] zeroinitializer, align 16
@g_encryption = external global i32, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"channel_send(), channel = %d, length = %d\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"channel_send(), sending %d bytes with FLAG_FIRST set\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"channel_send(), sending %d bytes with flags 0x%x\00", align 1

; Function Attrs: nounwind uwtable
define %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #0 !dbg !77 {
  %4 = alloca %struct._VCHANNEL*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.stream*)*, align 8
  %8 = alloca %struct._VCHANNEL*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !83, metadata !84), !dbg !85
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !86, metadata !84), !dbg !87
  store void (%struct.stream*)* %2, void (%struct.stream*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (%struct.stream*)** %7, metadata !88, metadata !84), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._VCHANNEL** %8, metadata !90, metadata !84), !dbg !91
  %9 = load i32, i32* @g_rdp_version, align 4, !dbg !92
  %10 = icmp ult i32 %9, 5, !dbg !94
  br i1 %10, label %11, label %12, !dbg !95

; <label>:11:                                     ; preds = %3
  store %struct._VCHANNEL* null, %struct._VCHANNEL** %4, align 8, !dbg !96
  br label %39, !dbg !96

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* @g_num_channels, align 4, !dbg !97
  %14 = icmp uge i32 %13, 6, !dbg !99
  br i1 %14, label %15, label %16, !dbg !100

; <label>:15:                                     ; preds = %12
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0)), !dbg !101
  store %struct._VCHANNEL* null, %struct._VCHANNEL** %4, align 8, !dbg !103
  br label %39, !dbg !103

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* @g_num_channels, align 4, !dbg !104
  %18 = zext i32 %17 to i64, !dbg !105
  %19 = getelementptr inbounds [6 x %struct._VCHANNEL], [6 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %18, !dbg !105
  store %struct._VCHANNEL* %19, %struct._VCHANNEL** %8, align 8, !dbg !106
  %20 = load i32, i32* @g_num_channels, align 4, !dbg !107
  %21 = add i32 1004, %20, !dbg !108
  %22 = trunc i32 %21 to i16, !dbg !109
  %23 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !110
  %24 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %23, i32 0, i32 0, !dbg !111
  store i16 %22, i16* %24, align 8, !dbg !112
  %25 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !113
  %26 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %25, i32 0, i32 1, !dbg !114
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i32 0, i32 0, !dbg !113
  %28 = load i8*, i8** %5, align 8, !dbg !115
  %29 = call i8* @strncpy(i8* %27, i8* %28, i64 8) #5, !dbg !116
  %30 = load i32, i32* %6, align 4, !dbg !117
  %31 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !118
  %32 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %31, i32 0, i32 2, !dbg !119
  store i32 %30, i32* %32, align 4, !dbg !120
  %33 = load void (%struct.stream*)*, void (%struct.stream*)** %7, align 8, !dbg !121
  %34 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !122
  %35 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %34, i32 0, i32 4, !dbg !123
  store void (%struct.stream*)* %33, void (%struct.stream*)** %35, align 8, !dbg !124
  %36 = load i32, i32* @g_num_channels, align 4, !dbg !125
  %37 = add i32 %36, 1, !dbg !125
  store i32 %37, i32* @g_num_channels, align 4, !dbg !125
  %38 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !126
  store %struct._VCHANNEL* %38, %struct._VCHANNEL** %4, align 8, !dbg !127
  br label %39, !dbg !127

; <label>:39:                                     ; preds = %16, %15, %11
  %40 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !128
  ret %struct._VCHANNEL* %40, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #0 !dbg !129 {
  %3 = alloca %struct._VCHANNEL*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  store %struct._VCHANNEL* %0, %struct._VCHANNEL** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VCHANNEL** %3, metadata !132, metadata !84), !dbg !133
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !134, metadata !84), !dbg !135
  %6 = load %struct._VCHANNEL*, %struct._VCHANNEL** %3, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !137, metadata !84), !dbg !138
  %7 = load i32, i32* @g_encryption, align 4, !dbg !139
  %8 = icmp ne i32 %7, 0, !dbg !139
  %9 = select i1 %8, i32 8, i32 0, !dbg !139
  %10 = load i32, i32* %4, align 4, !dbg !140
  %11 = add i32 %10, 8, !dbg !141
  %12 = call %struct.stream* @sec_init(i32 %9, i32 %11), !dbg !142
  store %struct.stream* %12, %struct.stream** %5, align 8, !dbg !143
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !144
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !146
  %15 = load i8*, i8** %14, align 8, !dbg !146
  %16 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !147
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 8, !dbg !148
  store i8* %15, i8** %17, align 8, !dbg !149
  %18 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !150
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !151
  %20 = load i8*, i8** %19, align 8, !dbg !152
  %21 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !152
  store i8* %21, i8** %19, align 8, !dbg !152
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !153
  ret %struct.stream* %22, !dbg !154
}

declare %struct.stream* @sec_init(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @channel_send(%struct.stream*, %struct._VCHANNEL*) #0 !dbg !155 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct._VCHANNEL*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !158, metadata !84), !dbg !159
  store %struct._VCHANNEL* %1, %struct._VCHANNEL** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._VCHANNEL** %4, metadata !160, metadata !84), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %5, metadata !162, metadata !84), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %6, metadata !164, metadata !84), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %7, metadata !166, metadata !84), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %8, metadata !168, metadata !84), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %9, metadata !170, metadata !84), !dbg !171
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !172
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 8, !dbg !173
  %12 = load i8*, i8** %11, align 8, !dbg !173
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !174
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !175
  store i8* %12, i8** %14, align 8, !dbg !176
  %15 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !177
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 1, !dbg !178
  %17 = load i8*, i8** %16, align 8, !dbg !178
  %18 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !179
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !180
  %20 = load i8*, i8** %19, align 8, !dbg !180
  %21 = ptrtoint i8* %17 to i64, !dbg !181
  %22 = ptrtoint i8* %20 to i64, !dbg !181
  %23 = sub i64 %21, %22, !dbg !181
  %24 = sub nsw i64 %23, 8, !dbg !182
  %25 = trunc i64 %24 to i32, !dbg !177
  store i32 %25, i32* %5, align 4, !dbg !183
  %26 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !184
  %27 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %26, i32 0, i32 0, !dbg !185
  %28 = load i16, i16* %27, align 8, !dbg !185
  %29 = zext i16 %28 to i32, !dbg !184
  %30 = load i32, i32* %5, align 4, !dbg !186
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 %29, i32 %30), !dbg !187
  %31 = load i32, i32* %5, align 4, !dbg !188
  %32 = icmp ult i32 %31, 1600, !dbg !189
  br i1 %32, label %33, label %35, !dbg !190

; <label>:33:                                     ; preds = %2
  %34 = load i32, i32* %5, align 4, !dbg !191
  br label %36, !dbg !193

; <label>:35:                                     ; preds = %2
  br label %36, !dbg !194

; <label>:36:                                     ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 1600, %35 ], !dbg !196
  store i32 %37, i32* %7, align 4, !dbg !198
  %38 = load i32, i32* %5, align 4, !dbg !199
  %39 = load i32, i32* %7, align 4, !dbg !200
  %40 = sub i32 %38, %39, !dbg !201
  store i32 %40, i32* %8, align 4, !dbg !202
  %41 = load i32, i32* %8, align 4, !dbg !203
  %42 = icmp eq i32 %41, 0, !dbg !204
  %43 = select i1 %42, i32 3, i32 1, !dbg !205
  store i32 %43, i32* %6, align 4, !dbg !206
  %44 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !207
  %45 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %44, i32 0, i32 2, !dbg !209
  %46 = load i32, i32* %45, align 4, !dbg !209
  %47 = and i32 %46, 2097152, !dbg !210
  %48 = icmp ne i32 %47, 0, !dbg !210
  br i1 %48, label %49, label %52, !dbg !211

; <label>:49:                                     ; preds = %36
  %50 = load i32, i32* %6, align 4, !dbg !212
  %51 = or i32 %50, 16, !dbg !212
  store i32 %51, i32* %6, align 4, !dbg !212
  br label %52, !dbg !213

; <label>:52:                                     ; preds = %49, %36
  %53 = load i32, i32* %5, align 4, !dbg !214
  %54 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !216
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !217
  %56 = load i8*, i8** %55, align 8, !dbg !217
  %57 = bitcast i8* %56 to i32*, !dbg !218
  store i32 %53, i32* %57, align 4, !dbg !219
  %58 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !220
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !221
  %60 = load i8*, i8** %59, align 8, !dbg !222
  %61 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !222
  store i8* %61, i8** %59, align 8, !dbg !222
  %62 = load i32, i32* %6, align 4, !dbg !223
  %63 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !225
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !226
  %65 = load i8*, i8** %64, align 8, !dbg !226
  %66 = bitcast i8* %65 to i32*, !dbg !227
  store i32 %62, i32* %66, align 4, !dbg !228
  %67 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !229
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !230
  %69 = load i8*, i8** %68, align 8, !dbg !231
  %70 = getelementptr inbounds i8, i8* %69, i64 4, !dbg !231
  store i8* %70, i8** %68, align 8, !dbg !231
  %71 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !232
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !233
  %73 = load i8*, i8** %72, align 8, !dbg !233
  %74 = load i32, i32* %7, align 4, !dbg !234
  %75 = zext i32 %74 to i64, !dbg !235
  %76 = getelementptr inbounds i8, i8* %73, i64 %75, !dbg !235
  %77 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !236
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 1, !dbg !237
  store i8* %76, i8** %78, align 8, !dbg !238
  store i8* %76, i8** %9, align 8, !dbg !239
  %79 = load i32, i32* %7, align 4, !dbg !240
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i32 %79), !dbg !241
  %80 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !242
  %81 = load i32, i32* @g_encryption, align 4, !dbg !243
  %82 = icmp ne i32 %81, 0, !dbg !243
  %83 = select i1 %82, i32 8, i32 0, !dbg !243
  %84 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !244
  %85 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %84, i32 0, i32 0, !dbg !245
  %86 = load i16, i16* %85, align 8, !dbg !245
  call void @sec_send_to_channel(%struct.stream* %80, i32 %83, i16 zeroext %86), !dbg !246
  br label %87, !dbg !247

; <label>:87:                                     ; preds = %112, %52
  %88 = load i32, i32* %8, align 4, !dbg !248
  %89 = icmp ugt i32 %88, 0, !dbg !249
  br i1 %89, label %90, label %167, !dbg !250

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %8, align 4, !dbg !251
  %92 = icmp ult i32 %91, 1600, !dbg !253
  br i1 %92, label %93, label %95, !dbg !254

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %8, align 4, !dbg !255
  br label %96, !dbg !257

; <label>:95:                                     ; preds = %90
  br label %96, !dbg !258

; <label>:96:                                     ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 1600, %95 ], !dbg !260
  store i32 %97, i32* %7, align 4, !dbg !262
  %98 = load i32, i32* %7, align 4, !dbg !263
  %99 = load i32, i32* %8, align 4, !dbg !264
  %100 = sub i32 %99, %98, !dbg !264
  store i32 %100, i32* %8, align 4, !dbg !264
  %101 = load i32, i32* %8, align 4, !dbg !265
  %102 = icmp eq i32 %101, 0, !dbg !266
  %103 = select i1 %102, i32 2, i32 0, !dbg !267
  store i32 %103, i32* %6, align 4, !dbg !268
  %104 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !269
  %105 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %104, i32 0, i32 2, !dbg !271
  %106 = load i32, i32* %105, align 4, !dbg !271
  %107 = and i32 %106, 2097152, !dbg !272
  %108 = icmp ne i32 %107, 0, !dbg !272
  br i1 %108, label %109, label %112, !dbg !273

; <label>:109:                                    ; preds = %96
  %110 = load i32, i32* %6, align 4, !dbg !274
  %111 = or i32 %110, 16, !dbg !274
  store i32 %111, i32* %6, align 4, !dbg !274
  br label %112, !dbg !275

; <label>:112:                                    ; preds = %109, %96
  %113 = load i32, i32* %7, align 4, !dbg !276
  %114 = load i32, i32* %6, align 4, !dbg !277
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 %113, i32 %114), !dbg !278
  %115 = load i32, i32* @g_encryption, align 4, !dbg !279
  %116 = icmp ne i32 %115, 0, !dbg !279
  %117 = select i1 %116, i32 8, i32 0, !dbg !279
  %118 = load i32, i32* %7, align 4, !dbg !280
  %119 = add i32 %118, 8, !dbg !281
  %120 = call %struct.stream* @sec_init(i32 %117, i32 %119), !dbg !282
  store %struct.stream* %120, %struct.stream** %3, align 8, !dbg !283
  %121 = load i32, i32* %5, align 4, !dbg !284
  %122 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !286
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !287
  %124 = load i8*, i8** %123, align 8, !dbg !287
  %125 = bitcast i8* %124 to i32*, !dbg !288
  store i32 %121, i32* %125, align 4, !dbg !289
  %126 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !290
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !291
  %128 = load i8*, i8** %127, align 8, !dbg !292
  %129 = getelementptr inbounds i8, i8* %128, i64 4, !dbg !292
  store i8* %129, i8** %127, align 8, !dbg !292
  %130 = load i32, i32* %6, align 4, !dbg !293
  %131 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !295
  %132 = getelementptr inbounds %struct.stream, %struct.stream* %131, i32 0, i32 0, !dbg !296
  %133 = load i8*, i8** %132, align 8, !dbg !296
  %134 = bitcast i8* %133 to i32*, !dbg !297
  store i32 %130, i32* %134, align 4, !dbg !298
  %135 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !299
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !300
  %137 = load i8*, i8** %136, align 8, !dbg !301
  %138 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !301
  store i8* %138, i8** %136, align 8, !dbg !301
  %139 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !302
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 0, !dbg !304
  %141 = load i8*, i8** %140, align 8, !dbg !304
  %142 = load i8*, i8** %9, align 8, !dbg !305
  %143 = load i32, i32* %7, align 4, !dbg !306
  %144 = zext i32 %143 to i64, !dbg !306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %144, i32 1, i1 false), !dbg !307
  %145 = load i32, i32* %7, align 4, !dbg !308
  %146 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !309
  %147 = getelementptr inbounds %struct.stream, %struct.stream* %146, i32 0, i32 0, !dbg !310
  %148 = load i8*, i8** %147, align 8, !dbg !311
  %149 = zext i32 %145 to i64, !dbg !311
  %150 = getelementptr inbounds i8, i8* %148, i64 %149, !dbg !311
  store i8* %150, i8** %147, align 8, !dbg !311
  %151 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !312
  %152 = getelementptr inbounds %struct.stream, %struct.stream* %151, i32 0, i32 0, !dbg !313
  %153 = load i8*, i8** %152, align 8, !dbg !313
  %154 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !314
  %155 = getelementptr inbounds %struct.stream, %struct.stream* %154, i32 0, i32 1, !dbg !315
  store i8* %153, i8** %155, align 8, !dbg !316
  %156 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !317
  %157 = load i32, i32* @g_encryption, align 4, !dbg !318
  %158 = icmp ne i32 %157, 0, !dbg !318
  %159 = select i1 %158, i32 8, i32 0, !dbg !318
  %160 = load %struct._VCHANNEL*, %struct._VCHANNEL** %4, align 8, !dbg !319
  %161 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %160, i32 0, i32 0, !dbg !320
  %162 = load i16, i16* %161, align 8, !dbg !320
  call void @sec_send_to_channel(%struct.stream* %156, i32 %159, i16 zeroext %162), !dbg !321
  %163 = load i32, i32* %7, align 4, !dbg !322
  %164 = load i8*, i8** %9, align 8, !dbg !323
  %165 = zext i32 %163 to i64, !dbg !323
  %166 = getelementptr inbounds i8, i8* %164, i64 %165, !dbg !323
  store i8* %166, i8** %9, align 8, !dbg !323
  br label %87, !dbg !324, !llvm.loop !325

; <label>:167:                                    ; preds = %87
  ret void, !dbg !326
}

declare void @sec_send_to_channel(%struct.stream*, i32, i16 zeroext) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @channel_process(%struct.stream*, i16 zeroext) #0 !dbg !327 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._VCHANNEL*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !330, metadata !84), !dbg !331
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !332, metadata !84), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %5, metadata !334, metadata !84), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %6, metadata !336, metadata !84), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %7, metadata !338, metadata !84), !dbg !339
  call void @llvm.dbg.declare(metadata %struct._VCHANNEL** %8, metadata !340, metadata !84), !dbg !341
  store %struct._VCHANNEL* null, %struct._VCHANNEL** %8, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %9, metadata !342, metadata !84), !dbg !343
  call void @llvm.dbg.declare(metadata %struct.stream** %10, metadata !344, metadata !84), !dbg !345
  store i32 0, i32* %9, align 4, !dbg !346
  br label %11, !dbg !348

; <label>:11:                                     ; preds = %28, %2
  %12 = load i32, i32* %9, align 4, !dbg !349
  %13 = load i32, i32* @g_num_channels, align 4, !dbg !352
  %14 = icmp ult i32 %12, %13, !dbg !353
  br i1 %14, label %15, label %31, !dbg !354

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %9, align 4, !dbg !355
  %17 = zext i32 %16 to i64, !dbg !357
  %18 = getelementptr inbounds [6 x %struct._VCHANNEL], [6 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %17, !dbg !357
  store %struct._VCHANNEL* %18, %struct._VCHANNEL** %8, align 8, !dbg !358
  %19 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !359
  %20 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %19, i32 0, i32 0, !dbg !361
  %21 = load i16, i16* %20, align 8, !dbg !361
  %22 = zext i16 %21 to i32, !dbg !359
  %23 = load i16, i16* %4, align 2, !dbg !362
  %24 = zext i16 %23 to i32, !dbg !362
  %25 = icmp eq i32 %22, %24, !dbg !363
  br i1 %25, label %26, label %27, !dbg !364

; <label>:26:                                     ; preds = %15
  br label %31, !dbg !365

; <label>:27:                                     ; preds = %15
  br label %28, !dbg !366

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %9, align 4, !dbg !367
  %30 = add i32 %29, 1, !dbg !367
  store i32 %30, i32* %9, align 4, !dbg !367
  br label %11, !dbg !369, !llvm.loop !370

; <label>:31:                                     ; preds = %26, %11
  %32 = load i32, i32* %9, align 4, !dbg !372
  %33 = load i32, i32* @g_num_channels, align 4, !dbg !374
  %34 = icmp uge i32 %32, %33, !dbg !375
  br i1 %34, label %35, label %36, !dbg !376

; <label>:35:                                     ; preds = %31
  br label %183, !dbg !377

; <label>:36:                                     ; preds = %31
  %37 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !378
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !380
  %39 = load i8*, i8** %38, align 8, !dbg !380
  %40 = bitcast i8* %39 to i32*, !dbg !381
  %41 = load i32, i32* %40, align 4, !dbg !381
  store i32 %41, i32* %5, align 4, !dbg !382
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !383
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !384
  %44 = load i8*, i8** %43, align 8, !dbg !385
  %45 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !385
  store i8* %45, i8** %43, align 8, !dbg !385
  %46 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !386
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !388
  %48 = load i8*, i8** %47, align 8, !dbg !388
  %49 = bitcast i8* %48 to i32*, !dbg !389
  %50 = load i32, i32* %49, align 4, !dbg !389
  store i32 %50, i32* %6, align 4, !dbg !390
  %51 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !391
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !392
  %53 = load i8*, i8** %52, align 8, !dbg !393
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !393
  store i8* %54, i8** %52, align 8, !dbg !393
  %55 = load i32, i32* %6, align 4, !dbg !394
  %56 = and i32 %55, 1, !dbg !396
  %57 = icmp ne i32 %56, 0, !dbg !396
  br i1 %57, label %58, label %67, !dbg !397

; <label>:58:                                     ; preds = %36
  %59 = load i32, i32* %6, align 4, !dbg !398
  %60 = and i32 %59, 2, !dbg !400
  %61 = icmp ne i32 %60, 0, !dbg !400
  br i1 %61, label %62, label %67, !dbg !401

; <label>:62:                                     ; preds = %58
  %63 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !402
  %64 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %63, i32 0, i32 4, !dbg !404
  %65 = load void (%struct.stream*)*, void (%struct.stream*)** %64, align 8, !dbg !404
  %66 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !405
  call void %65(%struct.stream* %66), !dbg !402
  br label %183, !dbg !406

; <label>:67:                                     ; preds = %58, %36
  %68 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !407
  %69 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %68, i32 0, i32 3, !dbg !409
  store %struct.stream* %69, %struct.stream** %10, align 8, !dbg !410
  %70 = load i32, i32* %6, align 4, !dbg !411
  %71 = and i32 %70, 1, !dbg !413
  %72 = icmp ne i32 %71, 0, !dbg !413
  br i1 %72, label %73, label %97, !dbg !414

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %5, align 4, !dbg !415
  %75 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !418
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 3, !dbg !419
  %77 = load i32, i32* %76, align 8, !dbg !419
  %78 = icmp ugt i32 %74, %77, !dbg !420
  br i1 %78, label %79, label %91, !dbg !421

; <label>:79:                                     ; preds = %73
  %80 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !422
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 2, !dbg !424
  %82 = load i8*, i8** %81, align 8, !dbg !424
  %83 = load i32, i32* %5, align 4, !dbg !425
  %84 = zext i32 %83 to i64, !dbg !425
  %85 = call i8* @xrealloc(i8* %82, i64 %84), !dbg !426
  %86 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !427
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 2, !dbg !428
  store i8* %85, i8** %87, align 8, !dbg !429
  %88 = load i32, i32* %5, align 4, !dbg !430
  %89 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !431
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 3, !dbg !432
  store i32 %88, i32* %90, align 8, !dbg !433
  br label %91, !dbg !434

; <label>:91:                                     ; preds = %79, %73
  %92 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !435
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 2, !dbg !436
  %94 = load i8*, i8** %93, align 8, !dbg !436
  %95 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !437
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !438
  store i8* %94, i8** %96, align 8, !dbg !439
  br label %97, !dbg !440

; <label>:97:                                     ; preds = %91, %67
  %98 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !441
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 1, !dbg !442
  %100 = load i8*, i8** %99, align 8, !dbg !442
  %101 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !443
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !444
  %103 = load i8*, i8** %102, align 8, !dbg !444
  %104 = ptrtoint i8* %100 to i64, !dbg !445
  %105 = ptrtoint i8* %103 to i64, !dbg !445
  %106 = sub i64 %104, %105, !dbg !445
  %107 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !446
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 2, !dbg !447
  %109 = load i8*, i8** %108, align 8, !dbg !447
  %110 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !448
  %111 = getelementptr inbounds %struct.stream, %struct.stream* %110, i32 0, i32 3, !dbg !449
  %112 = load i32, i32* %111, align 8, !dbg !449
  %113 = zext i32 %112 to i64, !dbg !450
  %114 = getelementptr inbounds i8, i8* %109, i64 %113, !dbg !450
  %115 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !451
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !452
  %117 = load i8*, i8** %116, align 8, !dbg !452
  %118 = ptrtoint i8* %114 to i64, !dbg !453
  %119 = ptrtoint i8* %117 to i64, !dbg !453
  %120 = sub i64 %118, %119, !dbg !453
  %121 = icmp slt i64 %106, %120, !dbg !454
  br i1 %121, label %122, label %132, !dbg !455

; <label>:122:                                    ; preds = %97
  %123 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !456
  %124 = getelementptr inbounds %struct.stream, %struct.stream* %123, i32 0, i32 1, !dbg !458
  %125 = load i8*, i8** %124, align 8, !dbg !458
  %126 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !459
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !460
  %128 = load i8*, i8** %127, align 8, !dbg !460
  %129 = ptrtoint i8* %125 to i64, !dbg !461
  %130 = ptrtoint i8* %128 to i64, !dbg !461
  %131 = sub i64 %129, %130, !dbg !461
  br label %147, !dbg !462

; <label>:132:                                    ; preds = %97
  %133 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !463
  %134 = getelementptr inbounds %struct.stream, %struct.stream* %133, i32 0, i32 2, !dbg !465
  %135 = load i8*, i8** %134, align 8, !dbg !465
  %136 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !466
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 3, !dbg !467
  %138 = load i32, i32* %137, align 8, !dbg !467
  %139 = zext i32 %138 to i64, !dbg !468
  %140 = getelementptr inbounds i8, i8* %135, i64 %139, !dbg !468
  %141 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !469
  %142 = getelementptr inbounds %struct.stream, %struct.stream* %141, i32 0, i32 0, !dbg !470
  %143 = load i8*, i8** %142, align 8, !dbg !470
  %144 = ptrtoint i8* %140 to i64, !dbg !471
  %145 = ptrtoint i8* %143 to i64, !dbg !471
  %146 = sub i64 %144, %145, !dbg !471
  br label %147, !dbg !472

; <label>:147:                                    ; preds = %132, %122
  %148 = phi i64 [ %131, %122 ], [ %146, %132 ], !dbg !473
  %149 = trunc i64 %148 to i32, !dbg !475
  store i32 %149, i32* %7, align 4, !dbg !476
  %150 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !477
  %151 = getelementptr inbounds %struct.stream, %struct.stream* %150, i32 0, i32 0, !dbg !478
  %152 = load i8*, i8** %151, align 8, !dbg !478
  %153 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !479
  %154 = getelementptr inbounds %struct.stream, %struct.stream* %153, i32 0, i32 0, !dbg !480
  %155 = load i8*, i8** %154, align 8, !dbg !480
  %156 = load i32, i32* %7, align 4, !dbg !481
  %157 = zext i32 %156 to i64, !dbg !481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %155, i64 %157, i32 1, i1 false), !dbg !482
  %158 = load i32, i32* %7, align 4, !dbg !483
  %159 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !484
  %160 = getelementptr inbounds %struct.stream, %struct.stream* %159, i32 0, i32 0, !dbg !485
  %161 = load i8*, i8** %160, align 8, !dbg !486
  %162 = zext i32 %158 to i64, !dbg !486
  %163 = getelementptr inbounds i8, i8* %161, i64 %162, !dbg !486
  store i8* %163, i8** %160, align 8, !dbg !486
  %164 = load i32, i32* %6, align 4, !dbg !487
  %165 = and i32 %164, 2, !dbg !489
  %166 = icmp ne i32 %165, 0, !dbg !489
  br i1 %166, label %167, label %182, !dbg !490

; <label>:167:                                    ; preds = %147
  %168 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !491
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !493
  %170 = load i8*, i8** %169, align 8, !dbg !493
  %171 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !494
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 1, !dbg !495
  store i8* %170, i8** %172, align 8, !dbg !496
  %173 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !497
  %174 = getelementptr inbounds %struct.stream, %struct.stream* %173, i32 0, i32 2, !dbg !498
  %175 = load i8*, i8** %174, align 8, !dbg !498
  %176 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !499
  %177 = getelementptr inbounds %struct.stream, %struct.stream* %176, i32 0, i32 0, !dbg !500
  store i8* %175, i8** %177, align 8, !dbg !501
  %178 = load %struct._VCHANNEL*, %struct._VCHANNEL** %8, align 8, !dbg !502
  %179 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %178, i32 0, i32 4, !dbg !503
  %180 = load void (%struct.stream*)*, void (%struct.stream*)** %179, align 8, !dbg !503
  %181 = load %struct.stream*, %struct.stream** %10, align 8, !dbg !504
  call void %180(%struct.stream* %181), !dbg !502
  br label %182, !dbg !505

; <label>:182:                                    ; preds = %167, %147
  br label %183

; <label>:183:                                    ; preds = %35, %182, %62
  ret void, !dbg !506
}

declare i8* @xrealloc(i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28, globals: !35)
!1 = !DIFile(filename: "[inter]channels.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !9, !21}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !4, line: 52, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "RDP_V4", value: 4)
!7 = !DIEnumerator(name: "RDP_V5", value: 5)
!8 = !DIEnumerator(name: "RDP_V6", value: 6)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !10, line: 46, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !DIEnumerator(name: "GUI", value: 0)
!13 = !DIEnumerator(name: "Keyboard", value: 1)
!14 = !DIEnumerator(name: "Clipboard", value: 2)
!15 = !DIEnumerator(name: "Sound", value: 3)
!16 = !DIEnumerator(name: "Protocol", value: 4)
!17 = !DIEnumerator(name: "Graphics", value: 5)
!18 = !DIEnumerator(name: "Core", value: 6)
!19 = !DIEnumerator(name: "SmartCard", value: 7)
!20 = !DIEnumerator(name: "Disk", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !10, line: 37, size: 32, align: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "Debug", value: 0)
!24 = !DIEnumerator(name: "Verbose", value: 1)
!25 = !DIEnumerator(name: "Warning", value: 2)
!26 = !DIEnumerator(name: "Error", value: 3)
!27 = !DIEnumerator(name: "Notice", value: 4)
!28 = !{!29, !32}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !4, line: 43, baseType: !31)
!31 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !4, line: 39, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36, !73}
!36 = distinct !DIGlobalVariable(name: "g_channels", scope: !0, file: !37, line: 32, type: !38, isLocal: false, isDefinition: true, variable: [6 x %struct._VCHANNEL]* @g_channels)
!37 = !DIFile(filename: "channels.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4608, align: 64, elements: !71)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !4, line: 169, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !4, line: 161, size: 768, align: 64, elements: !41)
!41 = !{!42, !45, !50, !51, !65}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !40, file: !4, line: 163, baseType: !43, size: 16, align: 16)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !4, line: 41, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !4, line: 164, baseType: !46, size: 64, align: 8, offset: 16)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, align: 8, elements: !48)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !4, line: 165, baseType: !30, size: 32, align: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !40, file: !4, line: 166, baseType: !52, size: 576, align: 64, offset: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !53, line: 25, size: 576, align: 64, elements: !54)
!53 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!54 = !{!55, !57, !58, !59, !60, !61, !62, !63, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !52, file: !53, line: 27, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !52, file: !53, line: 28, baseType: !56, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !53, line: 29, baseType: !56, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !52, file: !53, line: 30, baseType: !31, size: 32, align: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !52, file: !53, line: 33, baseType: !56, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !52, file: !53, line: 34, baseType: !56, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !52, file: !53, line: 35, baseType: !56, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !52, file: !53, line: 36, baseType: !56, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !52, file: !53, line: 37, baseType: !56, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !40, file: !4, line: 167, baseType: !66, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !53, line: 40, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!71 = !{!72}
!72 = !DISubrange(count: 6)
!73 = distinct !DIGlobalVariable(name: "g_num_channels", scope: !0, file: !37, line: 33, type: !31, isLocal: false, isDefinition: true, variable: i32* @g_num_channels)
!74 = !{i32 2, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!77 = distinct !DISubprogram(name: "channel_register", scope: !37, file: !37, line: 46, type: !78, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !81, !30, !66}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!82 = !{}
!83 = !DILocalVariable(name: "name", arg: 1, scope: !77, file: !37, line: 46, type: !81)
!84 = !DIExpression()
!85 = !DILocation(line: 46, column: 24, scope: !77)
!86 = !DILocalVariable(name: "flags", arg: 2, scope: !77, file: !37, line: 46, type: !30)
!87 = !DILocation(line: 46, column: 37, scope: !77)
!88 = !DILocalVariable(name: "callback", arg: 3, scope: !77, file: !37, line: 46, type: !66)
!89 = !DILocation(line: 46, column: 51, scope: !77)
!90 = !DILocalVariable(name: "channel", scope: !77, file: !37, line: 48, type: !80)
!91 = !DILocation(line: 48, column: 12, scope: !77)
!92 = !DILocation(line: 50, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !77, file: !37, line: 50, column: 6)
!94 = !DILocation(line: 50, column: 20, scope: !93)
!95 = !DILocation(line: 50, column: 6, scope: !77)
!96 = !DILocation(line: 51, column: 3, scope: !93)
!97 = !DILocation(line: 53, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !77, file: !37, line: 53, column: 6)
!99 = !DILocation(line: 53, column: 21, scope: !98)
!100 = !DILocation(line: 53, column: 6, scope: !77)
!101 = !DILocation(line: 55, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !37, line: 54, column: 2)
!103 = !DILocation(line: 57, column: 3, scope: !102)
!104 = !DILocation(line: 60, column: 24, scope: !77)
!105 = !DILocation(line: 60, column: 13, scope: !77)
!106 = !DILocation(line: 60, column: 10, scope: !77)
!107 = !DILocation(line: 61, column: 31, scope: !77)
!108 = !DILocation(line: 61, column: 29, scope: !77)
!109 = !DILocation(line: 61, column: 20, scope: !77)
!110 = !DILocation(line: 61, column: 2, scope: !77)
!111 = !DILocation(line: 61, column: 11, scope: !77)
!112 = !DILocation(line: 61, column: 18, scope: !77)
!113 = !DILocation(line: 62, column: 10, scope: !77)
!114 = !DILocation(line: 62, column: 19, scope: !77)
!115 = !DILocation(line: 62, column: 25, scope: !77)
!116 = !DILocation(line: 62, column: 2, scope: !77)
!117 = !DILocation(line: 63, column: 19, scope: !77)
!118 = !DILocation(line: 63, column: 2, scope: !77)
!119 = !DILocation(line: 63, column: 11, scope: !77)
!120 = !DILocation(line: 63, column: 17, scope: !77)
!121 = !DILocation(line: 64, column: 21, scope: !77)
!122 = !DILocation(line: 64, column: 2, scope: !77)
!123 = !DILocation(line: 64, column: 11, scope: !77)
!124 = !DILocation(line: 64, column: 19, scope: !77)
!125 = !DILocation(line: 65, column: 16, scope: !77)
!126 = !DILocation(line: 66, column: 9, scope: !77)
!127 = !DILocation(line: 66, column: 2, scope: !77)
!128 = !DILocation(line: 67, column: 1, scope: !77)
!129 = distinct !DISubprogram(name: "channel_init", scope: !37, file: !37, line: 70, type: !130, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!130 = !DISubroutineType(types: !131)
!131 = !{!69, !80, !30}
!132 = !DILocalVariable(name: "channel", arg: 1, scope: !129, file: !37, line: 70, type: !80)
!133 = !DILocation(line: 70, column: 25, scope: !129)
!134 = !DILocalVariable(name: "length", arg: 2, scope: !129, file: !37, line: 70, type: !30)
!135 = !DILocation(line: 70, column: 41, scope: !129)
!136 = !DILocation(line: 72, column: 9, scope: !129)
!137 = !DILocalVariable(name: "s", scope: !129, file: !37, line: 73, type: !69)
!138 = !DILocation(line: 73, column: 9, scope: !129)
!139 = !DILocation(line: 75, column: 15, scope: !129)
!140 = !DILocation(line: 75, column: 42, scope: !129)
!141 = !DILocation(line: 75, column: 49, scope: !129)
!142 = !DILocation(line: 75, column: 6, scope: !129)
!143 = !DILocation(line: 75, column: 4, scope: !129)
!144 = !DILocation(line: 76, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !129, file: !37, line: 76, column: 2)
!146 = !DILocation(line: 76, column: 28, scope: !145)
!147 = !DILocation(line: 76, column: 5, scope: !145)
!148 = !DILocation(line: 76, column: 9, scope: !145)
!149 = !DILocation(line: 76, column: 21, scope: !145)
!150 = !DILocation(line: 76, column: 32, scope: !145)
!151 = !DILocation(line: 76, column: 36, scope: !145)
!152 = !DILocation(line: 76, column: 38, scope: !145)
!153 = !DILocation(line: 77, column: 9, scope: !129)
!154 = !DILocation(line: 77, column: 2, scope: !129)
!155 = distinct !DISubprogram(name: "channel_send", scope: !37, file: !37, line: 81, type: !156, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !69, !80}
!158 = !DILocalVariable(name: "s", arg: 1, scope: !155, file: !37, line: 81, type: !69)
!159 = !DILocation(line: 81, column: 21, scope: !155)
!160 = !DILocalVariable(name: "channel", arg: 2, scope: !155, file: !37, line: 81, type: !80)
!161 = !DILocation(line: 81, column: 35, scope: !155)
!162 = !DILocalVariable(name: "length", scope: !155, file: !37, line: 83, type: !30)
!163 = !DILocation(line: 83, column: 9, scope: !155)
!164 = !DILocalVariable(name: "flags", scope: !155, file: !37, line: 83, type: !30)
!165 = !DILocation(line: 83, column: 17, scope: !155)
!166 = !DILocalVariable(name: "thislength", scope: !155, file: !37, line: 84, type: !30)
!167 = !DILocation(line: 84, column: 9, scope: !155)
!168 = !DILocalVariable(name: "remaining", scope: !155, file: !37, line: 84, type: !30)
!169 = !DILocation(line: 84, column: 21, scope: !155)
!170 = !DILocalVariable(name: "data", scope: !155, file: !37, line: 85, type: !32)
!171 = !DILocation(line: 85, column: 9, scope: !155)
!172 = !DILocation(line: 92, column: 12, scope: !155)
!173 = !DILocation(line: 92, column: 16, scope: !155)
!174 = !DILocation(line: 92, column: 3, scope: !155)
!175 = !DILocation(line: 92, column: 7, scope: !155)
!176 = !DILocation(line: 92, column: 9, scope: !155)
!177 = !DILocation(line: 93, column: 11, scope: !155)
!178 = !DILocation(line: 93, column: 14, scope: !155)
!179 = !DILocation(line: 93, column: 20, scope: !155)
!180 = !DILocation(line: 93, column: 23, scope: !155)
!181 = !DILocation(line: 93, column: 18, scope: !155)
!182 = !DILocation(line: 93, column: 25, scope: !155)
!183 = !DILocation(line: 93, column: 9, scope: !155)
!184 = !DILocation(line: 95, column: 71, scope: !155)
!185 = !DILocation(line: 95, column: 80, scope: !155)
!186 = !DILocation(line: 95, column: 88, scope: !155)
!187 = !DILocation(line: 95, column: 2, scope: !155)
!188 = !DILocation(line: 97, column: 18, scope: !155)
!189 = !DILocation(line: 97, column: 26, scope: !155)
!190 = !DILocation(line: 97, column: 16, scope: !155)
!191 = !DILocation(line: 97, column: 39, scope: !192)
!192 = !DILexicalBlockFile(scope: !155, file: !37, discriminator: 1)
!193 = !DILocation(line: 97, column: 16, scope: !192)
!194 = !DILocation(line: 97, column: 16, scope: !195)
!195 = !DILexicalBlockFile(scope: !155, file: !37, discriminator: 2)
!196 = !DILocation(line: 97, column: 16, scope: !197)
!197 = !DILexicalBlockFile(scope: !155, file: !37, discriminator: 3)
!198 = !DILocation(line: 97, column: 13, scope: !197)
!199 = !DILocation(line: 102, column: 14, scope: !155)
!200 = !DILocation(line: 102, column: 23, scope: !155)
!201 = !DILocation(line: 102, column: 21, scope: !155)
!202 = !DILocation(line: 102, column: 12, scope: !155)
!203 = !DILocation(line: 103, column: 11, scope: !155)
!204 = !DILocation(line: 103, column: 21, scope: !155)
!205 = !DILocation(line: 103, column: 10, scope: !155)
!206 = !DILocation(line: 103, column: 8, scope: !155)
!207 = !DILocation(line: 104, column: 6, scope: !208)
!208 = distinct !DILexicalBlock(scope: !155, file: !37, line: 104, column: 6)
!209 = !DILocation(line: 104, column: 15, scope: !208)
!210 = !DILocation(line: 104, column: 21, scope: !208)
!211 = !DILocation(line: 104, column: 6, scope: !155)
!212 = !DILocation(line: 105, column: 9, scope: !208)
!213 = !DILocation(line: 105, column: 3, scope: !208)
!214 = !DILocation(line: 107, column: 26, scope: !215)
!215 = distinct !DILexicalBlock(scope: !155, file: !37, line: 107, column: 2)
!216 = !DILocation(line: 107, column: 17, scope: !215)
!217 = !DILocation(line: 107, column: 21, scope: !215)
!218 = !DILocation(line: 107, column: 4, scope: !215)
!219 = !DILocation(line: 107, column: 24, scope: !215)
!220 = !DILocation(line: 107, column: 35, scope: !215)
!221 = !DILocation(line: 107, column: 39, scope: !215)
!222 = !DILocation(line: 107, column: 41, scope: !215)
!223 = !DILocation(line: 108, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !155, file: !37, line: 108, column: 2)
!225 = !DILocation(line: 108, column: 17, scope: !224)
!226 = !DILocation(line: 108, column: 21, scope: !224)
!227 = !DILocation(line: 108, column: 4, scope: !224)
!228 = !DILocation(line: 108, column: 24, scope: !224)
!229 = !DILocation(line: 108, column: 34, scope: !224)
!230 = !DILocation(line: 108, column: 38, scope: !224)
!231 = !DILocation(line: 108, column: 40, scope: !224)
!232 = !DILocation(line: 109, column: 18, scope: !155)
!233 = !DILocation(line: 109, column: 21, scope: !155)
!234 = !DILocation(line: 109, column: 25, scope: !155)
!235 = !DILocation(line: 109, column: 23, scope: !155)
!236 = !DILocation(line: 109, column: 9, scope: !155)
!237 = !DILocation(line: 109, column: 12, scope: !155)
!238 = !DILocation(line: 109, column: 16, scope: !155)
!239 = !DILocation(line: 109, column: 7, scope: !155)
!240 = !DILocation(line: 110, column: 82, scope: !155)
!241 = !DILocation(line: 110, column: 2, scope: !155)
!242 = !DILocation(line: 111, column: 22, scope: !155)
!243 = !DILocation(line: 111, column: 25, scope: !155)
!244 = !DILocation(line: 111, column: 52, scope: !155)
!245 = !DILocation(line: 111, column: 61, scope: !155)
!246 = !DILocation(line: 111, column: 2, scope: !155)
!247 = !DILocation(line: 114, column: 2, scope: !155)
!248 = !DILocation(line: 114, column: 9, scope: !192)
!249 = !DILocation(line: 114, column: 19, scope: !192)
!250 = !DILocation(line: 114, column: 2, scope: !192)
!251 = !DILocation(line: 116, column: 19, scope: !252)
!252 = distinct !DILexicalBlock(scope: !155, file: !37, line: 115, column: 2)
!253 = !DILocation(line: 116, column: 30, scope: !252)
!254 = !DILocation(line: 116, column: 17, scope: !252)
!255 = !DILocation(line: 116, column: 43, scope: !256)
!256 = !DILexicalBlockFile(scope: !252, file: !37, discriminator: 1)
!257 = !DILocation(line: 116, column: 17, scope: !256)
!258 = !DILocation(line: 116, column: 17, scope: !259)
!259 = !DILexicalBlockFile(scope: !252, file: !37, discriminator: 2)
!260 = !DILocation(line: 116, column: 17, scope: !261)
!261 = !DILexicalBlockFile(scope: !252, file: !37, discriminator: 3)
!262 = !DILocation(line: 116, column: 14, scope: !261)
!263 = !DILocation(line: 117, column: 16, scope: !252)
!264 = !DILocation(line: 117, column: 13, scope: !252)
!265 = !DILocation(line: 118, column: 12, scope: !252)
!266 = !DILocation(line: 118, column: 22, scope: !252)
!267 = !DILocation(line: 118, column: 11, scope: !252)
!268 = !DILocation(line: 118, column: 9, scope: !252)
!269 = !DILocation(line: 119, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !252, file: !37, line: 119, column: 7)
!271 = !DILocation(line: 119, column: 16, scope: !270)
!272 = !DILocation(line: 119, column: 22, scope: !270)
!273 = !DILocation(line: 119, column: 7, scope: !252)
!274 = !DILocation(line: 120, column: 10, scope: !270)
!275 = !DILocation(line: 120, column: 4, scope: !270)
!276 = !DILocation(line: 123, column: 10, scope: !252)
!277 = !DILocation(line: 123, column: 22, scope: !252)
!278 = !DILocation(line: 122, column: 3, scope: !252)
!279 = !DILocation(line: 125, column: 16, scope: !252)
!280 = !DILocation(line: 125, column: 43, scope: !252)
!281 = !DILocation(line: 125, column: 54, scope: !252)
!282 = !DILocation(line: 125, column: 7, scope: !252)
!283 = !DILocation(line: 125, column: 5, scope: !252)
!284 = !DILocation(line: 126, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !252, file: !37, line: 126, column: 3)
!286 = !DILocation(line: 126, column: 18, scope: !285)
!287 = !DILocation(line: 126, column: 22, scope: !285)
!288 = !DILocation(line: 126, column: 5, scope: !285)
!289 = !DILocation(line: 126, column: 25, scope: !285)
!290 = !DILocation(line: 126, column: 36, scope: !285)
!291 = !DILocation(line: 126, column: 40, scope: !285)
!292 = !DILocation(line: 126, column: 42, scope: !285)
!293 = !DILocation(line: 127, column: 27, scope: !294)
!294 = distinct !DILexicalBlock(scope: !252, file: !37, line: 127, column: 3)
!295 = !DILocation(line: 127, column: 18, scope: !294)
!296 = !DILocation(line: 127, column: 22, scope: !294)
!297 = !DILocation(line: 127, column: 5, scope: !294)
!298 = !DILocation(line: 127, column: 25, scope: !294)
!299 = !DILocation(line: 127, column: 35, scope: !294)
!300 = !DILocation(line: 127, column: 39, scope: !294)
!301 = !DILocation(line: 127, column: 41, scope: !294)
!302 = !DILocation(line: 128, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !252, file: !37, line: 128, column: 3)
!304 = !DILocation(line: 128, column: 17, scope: !303)
!305 = !DILocation(line: 128, column: 19, scope: !303)
!306 = !DILocation(line: 128, column: 24, scope: !303)
!307 = !DILocation(line: 128, column: 5, scope: !303)
!308 = !DILocation(line: 128, column: 47, scope: !303)
!309 = !DILocation(line: 128, column: 38, scope: !303)
!310 = !DILocation(line: 128, column: 42, scope: !303)
!311 = !DILocation(line: 128, column: 44, scope: !303)
!312 = !DILocation(line: 129, column: 15, scope: !252)
!313 = !DILocation(line: 129, column: 19, scope: !252)
!314 = !DILocation(line: 129, column: 4, scope: !252)
!315 = !DILocation(line: 129, column: 8, scope: !252)
!316 = !DILocation(line: 129, column: 12, scope: !252)
!317 = !DILocation(line: 130, column: 23, scope: !252)
!318 = !DILocation(line: 130, column: 26, scope: !252)
!319 = !DILocation(line: 130, column: 53, scope: !252)
!320 = !DILocation(line: 130, column: 62, scope: !252)
!321 = !DILocation(line: 130, column: 3, scope: !252)
!322 = !DILocation(line: 132, column: 11, scope: !252)
!323 = !DILocation(line: 132, column: 8, scope: !252)
!324 = !DILocation(line: 114, column: 2, scope: !195)
!325 = distinct !{!325, !247}
!326 = !DILocation(line: 138, column: 1, scope: !155)
!327 = distinct !DISubprogram(name: "channel_process", scope: !37, file: !37, line: 141, type: !328, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !69, !43}
!330 = !DILocalVariable(name: "s", arg: 1, scope: !327, file: !37, line: 141, type: !69)
!331 = !DILocation(line: 141, column: 24, scope: !327)
!332 = !DILocalVariable(name: "mcs_channel", arg: 2, scope: !327, file: !37, line: 141, type: !43)
!333 = !DILocation(line: 141, column: 34, scope: !327)
!334 = !DILocalVariable(name: "length", scope: !327, file: !37, line: 143, type: !30)
!335 = !DILocation(line: 143, column: 9, scope: !327)
!336 = !DILocalVariable(name: "flags", scope: !327, file: !37, line: 143, type: !30)
!337 = !DILocation(line: 143, column: 17, scope: !327)
!338 = !DILocalVariable(name: "thislength", scope: !327, file: !37, line: 144, type: !30)
!339 = !DILocation(line: 144, column: 9, scope: !327)
!340 = !DILocalVariable(name: "channel", scope: !327, file: !37, line: 145, type: !80)
!341 = !DILocation(line: 145, column: 12, scope: !327)
!342 = !DILocalVariable(name: "i", scope: !327, file: !37, line: 146, type: !31)
!343 = !DILocation(line: 146, column: 15, scope: !327)
!344 = !DILocalVariable(name: "in", scope: !327, file: !37, line: 147, type: !69)
!345 = !DILocation(line: 147, column: 9, scope: !327)
!346 = !DILocation(line: 149, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !327, file: !37, line: 149, column: 2)
!348 = !DILocation(line: 149, column: 7, scope: !347)
!349 = !DILocation(line: 149, column: 14, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !37, discriminator: 1)
!351 = distinct !DILexicalBlock(scope: !347, file: !37, line: 149, column: 2)
!352 = !DILocation(line: 149, column: 18, scope: !350)
!353 = !DILocation(line: 149, column: 16, scope: !350)
!354 = !DILocation(line: 149, column: 2, scope: !350)
!355 = !DILocation(line: 151, column: 25, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !37, line: 150, column: 2)
!357 = !DILocation(line: 151, column: 14, scope: !356)
!358 = !DILocation(line: 151, column: 11, scope: !356)
!359 = !DILocation(line: 152, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !37, line: 152, column: 7)
!361 = !DILocation(line: 152, column: 16, scope: !360)
!362 = !DILocation(line: 152, column: 26, scope: !360)
!363 = !DILocation(line: 152, column: 23, scope: !360)
!364 = !DILocation(line: 152, column: 7, scope: !356)
!365 = !DILocation(line: 153, column: 4, scope: !360)
!366 = !DILocation(line: 154, column: 2, scope: !356)
!367 = !DILocation(line: 149, column: 35, scope: !368)
!368 = !DILexicalBlockFile(scope: !351, file: !37, discriminator: 2)
!369 = !DILocation(line: 149, column: 2, scope: !368)
!370 = distinct !{!370, !371}
!371 = !DILocation(line: 149, column: 2, scope: !327)
!372 = !DILocation(line: 156, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !327, file: !37, line: 156, column: 6)
!374 = !DILocation(line: 156, column: 11, scope: !373)
!375 = !DILocation(line: 156, column: 8, scope: !373)
!376 = !DILocation(line: 156, column: 6, scope: !327)
!377 = !DILocation(line: 157, column: 3, scope: !373)
!378 = !DILocation(line: 159, column: 26, scope: !379)
!379 = distinct !DILexicalBlock(scope: !327, file: !37, line: 159, column: 2)
!380 = !DILocation(line: 159, column: 30, scope: !379)
!381 = !DILocation(line: 159, column: 13, scope: !379)
!382 = !DILocation(line: 159, column: 11, scope: !379)
!383 = !DILocation(line: 159, column: 35, scope: !379)
!384 = !DILocation(line: 159, column: 39, scope: !379)
!385 = !DILocation(line: 159, column: 41, scope: !379)
!386 = !DILocation(line: 160, column: 25, scope: !387)
!387 = distinct !DILexicalBlock(scope: !327, file: !37, line: 160, column: 2)
!388 = !DILocation(line: 160, column: 29, scope: !387)
!389 = !DILocation(line: 160, column: 12, scope: !387)
!390 = !DILocation(line: 160, column: 10, scope: !387)
!391 = !DILocation(line: 160, column: 34, scope: !387)
!392 = !DILocation(line: 160, column: 38, scope: !387)
!393 = !DILocation(line: 160, column: 40, scope: !387)
!394 = !DILocation(line: 161, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !327, file: !37, line: 161, column: 6)
!396 = !DILocation(line: 161, column: 13, scope: !395)
!397 = !DILocation(line: 161, column: 21, scope: !395)
!398 = !DILocation(line: 161, column: 25, scope: !399)
!399 = !DILexicalBlockFile(scope: !395, file: !37, discriminator: 1)
!400 = !DILocation(line: 161, column: 31, scope: !399)
!401 = !DILocation(line: 161, column: 6, scope: !399)
!402 = !DILocation(line: 164, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !37, line: 162, column: 2)
!404 = !DILocation(line: 164, column: 12, scope: !403)
!405 = !DILocation(line: 164, column: 20, scope: !403)
!406 = !DILocation(line: 165, column: 2, scope: !403)
!407 = !DILocation(line: 169, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !37, line: 167, column: 2)
!409 = !DILocation(line: 169, column: 18, scope: !408)
!410 = !DILocation(line: 169, column: 6, scope: !408)
!411 = !DILocation(line: 170, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !37, line: 170, column: 7)
!413 = !DILocation(line: 170, column: 13, scope: !412)
!414 = !DILocation(line: 170, column: 7, scope: !408)
!415 = !DILocation(line: 172, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !37, line: 172, column: 8)
!417 = distinct !DILexicalBlock(scope: !412, file: !37, line: 171, column: 3)
!418 = !DILocation(line: 172, column: 17, scope: !416)
!419 = !DILocation(line: 172, column: 21, scope: !416)
!420 = !DILocation(line: 172, column: 15, scope: !416)
!421 = !DILocation(line: 172, column: 8, scope: !417)
!422 = !DILocation(line: 174, column: 35, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !37, line: 173, column: 4)
!424 = !DILocation(line: 174, column: 39, scope: !423)
!425 = !DILocation(line: 174, column: 45, scope: !423)
!426 = !DILocation(line: 174, column: 26, scope: !423)
!427 = !DILocation(line: 174, column: 5, scope: !423)
!428 = !DILocation(line: 174, column: 9, scope: !423)
!429 = !DILocation(line: 174, column: 14, scope: !423)
!430 = !DILocation(line: 175, column: 16, scope: !423)
!431 = !DILocation(line: 175, column: 5, scope: !423)
!432 = !DILocation(line: 175, column: 9, scope: !423)
!433 = !DILocation(line: 175, column: 14, scope: !423)
!434 = !DILocation(line: 176, column: 4, scope: !423)
!435 = !DILocation(line: 177, column: 12, scope: !417)
!436 = !DILocation(line: 177, column: 16, scope: !417)
!437 = !DILocation(line: 177, column: 4, scope: !417)
!438 = !DILocation(line: 177, column: 8, scope: !417)
!439 = !DILocation(line: 177, column: 10, scope: !417)
!440 = !DILocation(line: 178, column: 3, scope: !417)
!441 = !DILocation(line: 180, column: 19, scope: !408)
!442 = !DILocation(line: 180, column: 22, scope: !408)
!443 = !DILocation(line: 180, column: 28, scope: !408)
!444 = !DILocation(line: 180, column: 31, scope: !408)
!445 = !DILocation(line: 180, column: 26, scope: !408)
!446 = !DILocation(line: 180, column: 37, scope: !408)
!447 = !DILocation(line: 180, column: 41, scope: !408)
!448 = !DILocation(line: 180, column: 48, scope: !408)
!449 = !DILocation(line: 180, column: 52, scope: !408)
!450 = !DILocation(line: 180, column: 46, scope: !408)
!451 = !DILocation(line: 180, column: 59, scope: !408)
!452 = !DILocation(line: 180, column: 63, scope: !408)
!453 = !DILocation(line: 180, column: 57, scope: !408)
!454 = !DILocation(line: 180, column: 34, scope: !408)
!455 = !DILocation(line: 180, column: 17, scope: !408)
!456 = !DILocation(line: 180, column: 70, scope: !457)
!457 = !DILexicalBlockFile(scope: !408, file: !37, discriminator: 1)
!458 = !DILocation(line: 180, column: 73, scope: !457)
!459 = !DILocation(line: 180, column: 79, scope: !457)
!460 = !DILocation(line: 180, column: 82, scope: !457)
!461 = !DILocation(line: 180, column: 77, scope: !457)
!462 = !DILocation(line: 180, column: 17, scope: !457)
!463 = !DILocation(line: 180, column: 88, scope: !464)
!464 = !DILexicalBlockFile(scope: !408, file: !37, discriminator: 2)
!465 = !DILocation(line: 180, column: 92, scope: !464)
!466 = !DILocation(line: 180, column: 99, scope: !464)
!467 = !DILocation(line: 180, column: 103, scope: !464)
!468 = !DILocation(line: 180, column: 97, scope: !464)
!469 = !DILocation(line: 180, column: 110, scope: !464)
!470 = !DILocation(line: 180, column: 114, scope: !464)
!471 = !DILocation(line: 180, column: 108, scope: !464)
!472 = !DILocation(line: 180, column: 17, scope: !464)
!473 = !DILocation(line: 180, column: 17, scope: !474)
!474 = !DILexicalBlockFile(scope: !408, file: !37, discriminator: 3)
!475 = !DILocation(line: 180, column: 16, scope: !474)
!476 = !DILocation(line: 180, column: 14, scope: !474)
!477 = !DILocation(line: 181, column: 10, scope: !408)
!478 = !DILocation(line: 181, column: 14, scope: !408)
!479 = !DILocation(line: 181, column: 17, scope: !408)
!480 = !DILocation(line: 181, column: 20, scope: !408)
!481 = !DILocation(line: 181, column: 23, scope: !408)
!482 = !DILocation(line: 181, column: 3, scope: !408)
!483 = !DILocation(line: 182, column: 12, scope: !408)
!484 = !DILocation(line: 182, column: 3, scope: !408)
!485 = !DILocation(line: 182, column: 7, scope: !408)
!486 = !DILocation(line: 182, column: 9, scope: !408)
!487 = !DILocation(line: 184, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !408, file: !37, line: 184, column: 7)
!489 = !DILocation(line: 184, column: 13, scope: !488)
!490 = !DILocation(line: 184, column: 7, scope: !408)
!491 = !DILocation(line: 186, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !37, line: 185, column: 3)
!493 = !DILocation(line: 186, column: 18, scope: !492)
!494 = !DILocation(line: 186, column: 4, scope: !492)
!495 = !DILocation(line: 186, column: 8, scope: !492)
!496 = !DILocation(line: 186, column: 12, scope: !492)
!497 = !DILocation(line: 187, column: 12, scope: !492)
!498 = !DILocation(line: 187, column: 16, scope: !492)
!499 = !DILocation(line: 187, column: 4, scope: !492)
!500 = !DILocation(line: 187, column: 8, scope: !492)
!501 = !DILocation(line: 187, column: 10, scope: !492)
!502 = !DILocation(line: 188, column: 4, scope: !492)
!503 = !DILocation(line: 188, column: 13, scope: !492)
!504 = !DILocation(line: 188, column: 21, scope: !492)
!505 = !DILocation(line: 189, column: 3, scope: !492)
!506 = !DILocation(line: 191, column: 1, scope: !327)
