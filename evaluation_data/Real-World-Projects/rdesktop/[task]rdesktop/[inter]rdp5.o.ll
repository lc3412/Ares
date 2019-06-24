; ModuleID = './[inter]rdp5.o.i'
source_filename = "./[inter]rdp5.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RDPCOMP = type { i32, [65536 x i8], %struct.stream }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@g_mppc_dict = external global %struct._RDPCOMP, align 8
@process_ts_fp_updates.assembled = internal global [15 x %struct.stream*] zeroinitializer, align 16
@g_next_packet = external global i8*, align 8
@.str = private unnamed_addr constant [61 x i8] c"process_ts_fp_update_pdu(), error while decompressing packet\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"process_ts_fp_updates_by_code(), unhandled opcode %d\00", align 1

; Function Attrs: nounwind uwtable
define void @process_ts_fp_updates(%struct.stream*) #0 !dbg !39 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stream*, align 8
  %13 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !65, metadata !66), !dbg !67
  call void @llvm.dbg.declare(metadata i16* %3, metadata !68, metadata !66), !dbg !69
  call void @llvm.dbg.declare(metadata i8* %4, metadata !70, metadata !66), !dbg !71
  call void @llvm.dbg.declare(metadata i8* %5, metadata !72, metadata !66), !dbg !73
  call void @llvm.dbg.declare(metadata i8* %6, metadata !74, metadata !66), !dbg !75
  call void @llvm.dbg.declare(metadata i8* %7, metadata !76, metadata !66), !dbg !77
  call void @llvm.dbg.declare(metadata i8* %8, metadata !78, metadata !66), !dbg !79
  store i8 0, i8* %8, align 1, !dbg !79
  call void @llvm.dbg.declare(metadata i8** %9, metadata !80, metadata !66), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %10, metadata !82, metadata !66), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %11, metadata !85, metadata !66), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.stream** %12, metadata !87, metadata !66), !dbg !88
  store %struct.stream* getelementptr inbounds (%struct._RDPCOMP, %struct._RDPCOMP* @g_mppc_dict, i32 0, i32 2), %struct.stream** %12, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata %struct.stream** %13, metadata !89, metadata !66), !dbg !90
  call void @ui_begin_update(), !dbg !91
  br label %14, !dbg !92

; <label>:14:                                     ; preds = %221, %1
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !93
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !95
  %17 = load i8*, i8** %16, align 8, !dbg !95
  %18 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !96
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 1, !dbg !97
  %20 = load i8*, i8** %19, align 8, !dbg !97
  %21 = icmp ult i8* %17, %20, !dbg !98
  br i1 %21, label %22, label %225, !dbg !99

; <label>:22:                                     ; preds = %14
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !100
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !102
  %25 = load i8*, i8** %24, align 8, !dbg !103
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !103
  store i8* %26, i8** %24, align 8, !dbg !103
  %27 = load i8, i8* %25, align 1, !dbg !104
  store i8 %27, i8* %4, align 1, !dbg !105
  %28 = load i8, i8* %4, align 1, !dbg !106
  %29 = zext i8 %28 to i32, !dbg !106
  %30 = and i32 %29, 15, !dbg !107
  %31 = trunc i32 %30 to i8, !dbg !106
  store i8 %31, i8* %5, align 1, !dbg !108
  %32 = load i8, i8* %4, align 1, !dbg !109
  %33 = zext i8 %32 to i32, !dbg !109
  %34 = and i32 %33, 48, !dbg !110
  %35 = trunc i32 %34 to i8, !dbg !109
  store i8 %35, i8* %6, align 1, !dbg !111
  %36 = load i8, i8* %4, align 1, !dbg !112
  %37 = zext i8 %36 to i32, !dbg !112
  %38 = and i32 %37, 192, !dbg !113
  %39 = trunc i32 %38 to i8, !dbg !112
  store i8 %39, i8* %7, align 1, !dbg !114
  %40 = load i8, i8* %7, align 1, !dbg !115
  %41 = zext i8 %40 to i32, !dbg !115
  %42 = and i32 %41, 128, !dbg !117
  %43 = icmp ne i32 %42, 0, !dbg !117
  br i1 %43, label %44, label %50, !dbg !118

; <label>:44:                                     ; preds = %22
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !119
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !120
  %47 = load i8*, i8** %46, align 8, !dbg !121
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !121
  store i8* %48, i8** %46, align 8, !dbg !121
  %49 = load i8, i8* %47, align 1, !dbg !122
  store i8 %49, i8* %8, align 1, !dbg !123
  br label %50, !dbg !124

; <label>:50:                                     ; preds = %44, %22
  %51 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !125
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !127
  %53 = load i8*, i8** %52, align 8, !dbg !127
  %54 = bitcast i8* %53 to i16*, !dbg !128
  %55 = load i16, i16* %54, align 2, !dbg !128
  store i16 %55, i16* %3, align 2, !dbg !129
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !130
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !131
  %58 = load i8*, i8** %57, align 8, !dbg !132
  %59 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !132
  store i8* %59, i8** %57, align 8, !dbg !132
  %60 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !133
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !134
  %62 = load i8*, i8** %61, align 8, !dbg !134
  %63 = load i16, i16* %3, align 2, !dbg !135
  %64 = zext i16 %63 to i32, !dbg !135
  %65 = sext i32 %64 to i64, !dbg !136
  %66 = getelementptr inbounds i8, i8* %62, i64 %65, !dbg !136
  store i8* %66, i8** %9, align 8, !dbg !137
  store i8* %66, i8** @g_next_packet, align 8, !dbg !138
  %67 = load i8, i8* %8, align 1, !dbg !139
  %68 = zext i8 %67 to i32, !dbg !139
  %69 = and i32 %68, 32, !dbg !141
  %70 = icmp ne i32 %69, 0, !dbg !141
  br i1 %70, label %71, label %124, !dbg !142

; <label>:71:                                     ; preds = %50
  %72 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !143
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !146
  %74 = load i8*, i8** %73, align 8, !dbg !146
  %75 = load i16, i16* %3, align 2, !dbg !147
  %76 = zext i16 %75 to i32, !dbg !147
  %77 = load i8, i8* %8, align 1, !dbg !148
  %78 = call i32 @mppc_expand(i8* %74, i32 %76, i8 zeroext %77, i32* %10, i32* %11), !dbg !149
  %79 = icmp eq i32 %78, -1, !dbg !150
  br i1 %79, label %80, label %81, !dbg !151

; <label>:80:                                     ; preds = %71
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0)), !dbg !152
  br label %81, !dbg !152

; <label>:81:                                     ; preds = %80, %71
  %82 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !153
  %83 = getelementptr inbounds %struct.stream, %struct.stream* %82, i32 0, i32 2, !dbg !154
  %84 = load i8*, i8** %83, align 8, !dbg !154
  %85 = load i32, i32* %11, align 4, !dbg !155
  %86 = zext i32 %85 to i64, !dbg !155
  %87 = call i8* @xrealloc(i8* %84, i64 %86), !dbg !156
  %88 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !157
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 2, !dbg !158
  store i8* %87, i8** %89, align 8, !dbg !159
  %90 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !160
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 2, !dbg !161
  %92 = load i8*, i8** %91, align 8, !dbg !161
  %93 = load i32, i32* %10, align 4, !dbg !162
  %94 = zext i32 %93 to i64, !dbg !163
  %95 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct._RDPCOMP, %struct._RDPCOMP* @g_mppc_dict, i32 0, i32 1, i32 0), i64 %94, !dbg !163
  %96 = load i32, i32* %11, align 4, !dbg !164
  %97 = zext i32 %96 to i64, !dbg !164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %95, i64 %97, i32 1, i1 false), !dbg !165
  %98 = load i32, i32* %11, align 4, !dbg !166
  %99 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !167
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 3, !dbg !168
  store i32 %98, i32* %100, align 8, !dbg !169
  %101 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !170
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 2, !dbg !171
  %103 = load i8*, i8** %102, align 8, !dbg !171
  %104 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !172
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 3, !dbg !173
  %106 = load i32, i32* %105, align 8, !dbg !173
  %107 = zext i32 %106 to i64, !dbg !174
  %108 = getelementptr inbounds i8, i8* %103, i64 %107, !dbg !174
  %109 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !175
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 1, !dbg !176
  store i8* %108, i8** %110, align 8, !dbg !177
  %111 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !178
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 2, !dbg !179
  %113 = load i8*, i8** %112, align 8, !dbg !179
  %114 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !180
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0, !dbg !181
  store i8* %113, i8** %115, align 8, !dbg !182
  %116 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !183
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !184
  %118 = load i8*, i8** %117, align 8, !dbg !184
  %119 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !185
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 7, !dbg !186
  store i8* %118, i8** %120, align 8, !dbg !187
  %121 = load i32, i32* %11, align 4, !dbg !188
  %122 = trunc i32 %121 to i16, !dbg !188
  store i16 %122, i16* %3, align 2, !dbg !189
  %123 = load %struct.stream*, %struct.stream** %12, align 8, !dbg !190
  store %struct.stream* %123, %struct.stream** %13, align 8, !dbg !191
  br label %126, !dbg !192

; <label>:124:                                    ; preds = %50
  %125 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !193
  store %struct.stream* %125, %struct.stream** %13, align 8, !dbg !194
  br label %126

; <label>:126:                                    ; preds = %124, %81
  %127 = load i8, i8* %6, align 1, !dbg !195
  %128 = zext i8 %127 to i32, !dbg !195
  %129 = icmp eq i32 %128, 0, !dbg !197
  br i1 %129, label %130, label %133, !dbg !198

; <label>:130:                                    ; preds = %126
  %131 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !199
  %132 = load i8, i8* %5, align 1, !dbg !201
  call void @process_ts_fp_update_by_code(%struct.stream* %131, i8 zeroext %132), !dbg !202
  br label %221, !dbg !203

; <label>:133:                                    ; preds = %126
  %134 = load i8, i8* %5, align 1, !dbg !204
  %135 = zext i8 %134 to i64, !dbg !207
  %136 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %135, !dbg !207
  %137 = load %struct.stream*, %struct.stream** %136, align 8, !dbg !207
  %138 = icmp eq %struct.stream* %137, null, !dbg !208
  br i1 %138, label %139, label %158, !dbg !209

; <label>:139:                                    ; preds = %133
  %140 = call i8* @xmalloc(i32 72), !dbg !210
  %141 = bitcast i8* %140 to %struct.stream*, !dbg !210
  %142 = load i8, i8* %5, align 1, !dbg !212
  %143 = zext i8 %142 to i64, !dbg !213
  %144 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %143, !dbg !213
  store %struct.stream* %141, %struct.stream** %144, align 8, !dbg !214
  %145 = load i8, i8* %5, align 1, !dbg !215
  %146 = zext i8 %145 to i64, !dbg !216
  %147 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %146, !dbg !216
  %148 = load %struct.stream*, %struct.stream** %147, align 8, !dbg !216
  %149 = bitcast %struct.stream* %148 to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* %149, i8 0, i64 72, i32 8, i1 false), !dbg !217
  %150 = load i8, i8* %5, align 1, !dbg !218
  %151 = zext i8 %150 to i64, !dbg !219
  %152 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %151, !dbg !219
  %153 = load %struct.stream*, %struct.stream** %152, align 8, !dbg !219
  call void @s_realloc(%struct.stream* %153, i32 65535), !dbg !220
  %154 = load i8, i8* %5, align 1, !dbg !221
  %155 = zext i8 %154 to i64, !dbg !222
  %156 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %155, !dbg !222
  %157 = load %struct.stream*, %struct.stream** %156, align 8, !dbg !222
  call void @s_reset(%struct.stream* %157), !dbg !223
  br label %158, !dbg !224

; <label>:158:                                    ; preds = %139, %133
  %159 = load i8, i8* %6, align 1, !dbg !225
  %160 = zext i8 %159 to i32, !dbg !225
  %161 = icmp eq i32 %160, 32, !dbg !227
  br i1 %161, label %162, label %167, !dbg !228

; <label>:162:                                    ; preds = %158
  %163 = load i8, i8* %5, align 1, !dbg !229
  %164 = zext i8 %163 to i64, !dbg !231
  %165 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %164, !dbg !231
  %166 = load %struct.stream*, %struct.stream** %165, align 8, !dbg !231
  call void @s_reset(%struct.stream* %166), !dbg !232
  br label %167, !dbg !233

; <label>:167:                                    ; preds = %162, %158
  %168 = load i8, i8* %5, align 1, !dbg !234
  %169 = zext i8 %168 to i64, !dbg !236
  %170 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %169, !dbg !236
  %171 = load %struct.stream*, %struct.stream** %170, align 8, !dbg !236
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !237
  %173 = load i8*, i8** %172, align 8, !dbg !237
  %174 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !238
  %175 = getelementptr inbounds %struct.stream, %struct.stream* %174, i32 0, i32 0, !dbg !239
  %176 = load i8*, i8** %175, align 8, !dbg !239
  %177 = load i16, i16* %3, align 2, !dbg !240
  %178 = zext i16 %177 to i64, !dbg !240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %176, i64 %178, i32 1, i1 false), !dbg !241
  %179 = load i16, i16* %3, align 2, !dbg !242
  %180 = zext i16 %179 to i32, !dbg !242
  %181 = load i8, i8* %5, align 1, !dbg !243
  %182 = zext i8 %181 to i64, !dbg !244
  %183 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %182, !dbg !244
  %184 = load %struct.stream*, %struct.stream** %183, align 8, !dbg !244
  %185 = getelementptr inbounds %struct.stream, %struct.stream* %184, i32 0, i32 0, !dbg !245
  %186 = load i8*, i8** %185, align 8, !dbg !246
  %187 = sext i32 %180 to i64, !dbg !246
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !246
  store i8* %188, i8** %185, align 8, !dbg !246
  %189 = load i8, i8* %6, align 1, !dbg !247
  %190 = zext i8 %189 to i32, !dbg !247
  %191 = icmp eq i32 %190, 16, !dbg !249
  br i1 %191, label %192, label %220, !dbg !250

; <label>:192:                                    ; preds = %167
  %193 = load i8, i8* %5, align 1, !dbg !251
  %194 = zext i8 %193 to i64, !dbg !253
  %195 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %194, !dbg !253
  %196 = load %struct.stream*, %struct.stream** %195, align 8, !dbg !253
  %197 = getelementptr inbounds %struct.stream, %struct.stream* %196, i32 0, i32 0, !dbg !254
  %198 = load i8*, i8** %197, align 8, !dbg !254
  %199 = load i8, i8* %5, align 1, !dbg !255
  %200 = zext i8 %199 to i64, !dbg !256
  %201 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %200, !dbg !256
  %202 = load %struct.stream*, %struct.stream** %201, align 8, !dbg !256
  %203 = getelementptr inbounds %struct.stream, %struct.stream* %202, i32 0, i32 1, !dbg !257
  store i8* %198, i8** %203, align 8, !dbg !258
  %204 = load i8, i8* %5, align 1, !dbg !259
  %205 = zext i8 %204 to i64, !dbg !260
  %206 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %205, !dbg !260
  %207 = load %struct.stream*, %struct.stream** %206, align 8, !dbg !260
  %208 = getelementptr inbounds %struct.stream, %struct.stream* %207, i32 0, i32 2, !dbg !261
  %209 = load i8*, i8** %208, align 8, !dbg !261
  %210 = load i8, i8* %5, align 1, !dbg !262
  %211 = zext i8 %210 to i64, !dbg !263
  %212 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %211, !dbg !263
  %213 = load %struct.stream*, %struct.stream** %212, align 8, !dbg !263
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 0, !dbg !264
  store i8* %209, i8** %214, align 8, !dbg !265
  %215 = load i8, i8* %5, align 1, !dbg !266
  %216 = zext i8 %215 to i64, !dbg !267
  %217 = getelementptr inbounds [15 x %struct.stream*], [15 x %struct.stream*]* @process_ts_fp_updates.assembled, i64 0, i64 %216, !dbg !267
  %218 = load %struct.stream*, %struct.stream** %217, align 8, !dbg !267
  %219 = load i8, i8* %5, align 1, !dbg !268
  call void @process_ts_fp_update_by_code(%struct.stream* %218, i8 zeroext %219), !dbg !269
  br label %220, !dbg !270

; <label>:220:                                    ; preds = %192, %167
  br label %221

; <label>:221:                                    ; preds = %220, %130
  %222 = load i8*, i8** %9, align 8, !dbg !271
  %223 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !272
  %224 = getelementptr inbounds %struct.stream, %struct.stream* %223, i32 0, i32 0, !dbg !273
  store i8* %222, i8** %224, align 8, !dbg !274
  br label %14, !dbg !275, !llvm.loop !277

; <label>:225:                                    ; preds = %14
  call void @ui_end_update(), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @ui_begin_update() #2

declare i32 @mppc_expand(i8*, i32, i8 zeroext, i32*, i32*) #2

declare void @logger(i32, i32, i8*, ...) #2

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @process_ts_fp_update_by_code(%struct.stream*, i8 zeroext) #0 !dbg !280 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !283, metadata !66), !dbg !284
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !285, metadata !66), !dbg !286
  call void @llvm.dbg.declare(metadata i16* %5, metadata !287, metadata !66), !dbg !288
  call void @llvm.dbg.declare(metadata i16* %6, metadata !289, metadata !66), !dbg !290
  call void @llvm.dbg.declare(metadata i16* %7, metadata !291, metadata !66), !dbg !292
  %8 = load i8, i8* %4, align 1, !dbg !293
  %9 = zext i8 %8 to i32, !dbg !293
  switch i32 %9, label %75 [
    i32 0, label %10
    i32 1, label %22
    i32 2, label %28
    i32 3, label %34
    i32 5, label %35
    i32 6, label %36
    i32 8, label %37
    i32 9, label %69
    i32 10, label %71
    i32 11, label %73
  ], !dbg !294

; <label>:10:                                     ; preds = %2
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !295
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !298
  %13 = load i8*, i8** %12, align 8, !dbg !298
  %14 = bitcast i8* %13 to i16*, !dbg !299
  %15 = load i16, i16* %14, align 2, !dbg !299
  store i16 %15, i16* %5, align 2, !dbg !300
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !301
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !302
  %18 = load i8*, i8** %17, align 8, !dbg !303
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !303
  store i8* %19, i8** %17, align 8, !dbg !303
  %20 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !304
  %21 = load i16, i16* %5, align 2, !dbg !305
  call void @process_orders(%struct.stream* %20, i16 zeroext %21), !dbg !306
  br label %78, !dbg !307

; <label>:22:                                     ; preds = %2
  %23 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !308
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !309
  %25 = load i8*, i8** %24, align 8, !dbg !310
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !310
  store i8* %26, i8** %24, align 8, !dbg !310
  %27 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !311
  call void @process_bitmap_updates(%struct.stream* %27), !dbg !312
  br label %78, !dbg !313

; <label>:28:                                     ; preds = %2
  %29 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !314
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !315
  %31 = load i8*, i8** %30, align 8, !dbg !316
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !316
  store i8* %32, i8** %30, align 8, !dbg !316
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !317
  call void @process_palette(%struct.stream* %33), !dbg !318
  br label %78, !dbg !319

; <label>:34:                                     ; preds = %2
  br label %78, !dbg !320

; <label>:35:                                     ; preds = %2
  call void @ui_set_null_cursor(), !dbg !321
  br label %78, !dbg !322

; <label>:36:                                     ; preds = %2
  call void @set_system_pointer(i32 32512), !dbg !323
  br label %78, !dbg !324

; <label>:37:                                     ; preds = %2
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !325
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !327
  %40 = load i8*, i8** %39, align 8, !dbg !327
  %41 = bitcast i8* %40 to i16*, !dbg !328
  %42 = load i16, i16* %41, align 2, !dbg !328
  store i16 %42, i16* %6, align 2, !dbg !329
  %43 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !330
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !331
  %45 = load i8*, i8** %44, align 8, !dbg !332
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !332
  store i8* %46, i8** %44, align 8, !dbg !332
  %47 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !333
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !335
  %49 = load i8*, i8** %48, align 8, !dbg !335
  %50 = bitcast i8* %49 to i16*, !dbg !336
  %51 = load i16, i16* %50, align 2, !dbg !336
  store i16 %51, i16* %7, align 2, !dbg !337
  %52 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !338
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !339
  %54 = load i8*, i8** %53, align 8, !dbg !340
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !340
  store i8* %55, i8** %53, align 8, !dbg !340
  %56 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !341
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !343
  %58 = load i8*, i8** %57, align 8, !dbg !343
  %59 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !344
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 1, !dbg !345
  %61 = load i8*, i8** %60, align 8, !dbg !345
  %62 = icmp ule i8* %58, %61, !dbg !346
  br i1 %62, label %63, label %68, !dbg !347

; <label>:63:                                     ; preds = %37
  %64 = load i16, i16* %6, align 2, !dbg !348
  %65 = zext i16 %64 to i32, !dbg !348
  %66 = load i16, i16* %7, align 2, !dbg !349
  %67 = zext i16 %66 to i32, !dbg !349
  call void @ui_move_pointer(i32 %65, i32 %67), !dbg !350
  br label %68, !dbg !350

; <label>:68:                                     ; preds = %63, %37
  br label %78, !dbg !351

; <label>:69:                                     ; preds = %2
  %70 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !352
  call void @process_colour_pointer_pdu(%struct.stream* %70), !dbg !353
  br label %78, !dbg !354

; <label>:71:                                     ; preds = %2
  %72 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !355
  call void @process_cached_pointer_pdu(%struct.stream* %72), !dbg !356
  br label %78, !dbg !357

; <label>:73:                                     ; preds = %2
  %74 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !358
  call void @process_new_pointer_pdu(%struct.stream* %74), !dbg !359
  br label %78, !dbg !360

; <label>:75:                                     ; preds = %2
  %76 = load i8, i8* %4, align 1, !dbg !361
  %77 = zext i8 %76 to i32, !dbg !361
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 %77), !dbg !362
  br label %78, !dbg !363

; <label>:78:                                     ; preds = %75, %73, %71, %69, %68, %36, %35, %34, %28, %22, %10
  ret void, !dbg !364
}

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @s_realloc(%struct.stream*, i32) #2

declare void @s_reset(%struct.stream*) #2

declare void @ui_end_update() #2

declare void @process_orders(%struct.stream*, i16 zeroext) #2

declare void @process_bitmap_updates(%struct.stream*) #2

declare void @process_palette(%struct.stream*) #2

declare void @ui_set_null_cursor() #2

declare void @set_system_pointer(i32) #2

declare void @ui_move_pointer(i32, i32) #2

declare void @process_colour_pointer_pdu(%struct.stream*) #2

declare void @process_cached_pointer_pdu(%struct.stream*) #2

declare void @process_new_pointer_pdu(%struct.stream*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, globals: !37)
!1 = !DIFile(filename: "[inter]rdp5.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_SYSTEM_POINTER_TYPE", file: !23, line: 272, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "SYSPTR_NULL", value: 0)
!26 = !DIEnumerator(name: "SYSPTR_DEFAULT", value: 32512)
!27 = !{!28, !32, !35, !36}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !30, line: 41, baseType: !31)
!30 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!31 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !30, line: 39, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !{!38}
!38 = distinct !DIGlobalVariable(name: "assembled", scope: !39, file: !40, line: 88, type: !59, isLocal: true, isDefinition: true, variable: [15 x %struct.stream*]* @process_ts_fp_updates.assembled)
!39 = distinct !DISubprogram(name: "process_ts_fp_updates", scope: !40, file: !40, line: 78, type: !41, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!40 = !DIFile(filename: "rdp5.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !44, line: 40, baseType: !45)
!44 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !44, line: 25, size: 576, align: 64, elements: !47)
!47 = !{!48, !49, !50, !51, !53, !54, !55, !56, !57}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !46, file: !44, line: 27, baseType: !35, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !46, file: !44, line: 28, baseType: !35, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !44, line: 29, baseType: !35, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !44, line: 30, baseType: !52, size: 32, align: 32, offset: 192)
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !46, file: !44, line: 33, baseType: !35, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !46, file: !44, line: 34, baseType: !35, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !46, file: !44, line: 35, baseType: !35, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !46, file: !44, line: 36, baseType: !35, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !46, file: !44, line: 37, baseType: !35, size: 64, align: 64, offset: 512)
!58 = !{}
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 960, align: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 15)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!65 = !DILocalVariable(name: "s", arg: 1, scope: !39, file: !40, line: 78, type: !43)
!66 = !DIExpression()
!67 = !DILocation(line: 78, column: 30, scope: !39)
!68 = !DILocalVariable(name: "length", scope: !39, file: !40, line: 80, type: !29)
!69 = !DILocation(line: 80, column: 9, scope: !39)
!70 = !DILocalVariable(name: "hdr", scope: !39, file: !40, line: 81, type: !33)
!71 = !DILocation(line: 81, column: 8, scope: !39)
!72 = !DILocalVariable(name: "code", scope: !39, file: !40, line: 81, type: !33)
!73 = !DILocation(line: 81, column: 13, scope: !39)
!74 = !DILocalVariable(name: "frag", scope: !39, file: !40, line: 81, type: !33)
!75 = !DILocation(line: 81, column: 19, scope: !39)
!76 = !DILocalVariable(name: "comp", scope: !39, file: !40, line: 81, type: !33)
!77 = !DILocation(line: 81, column: 25, scope: !39)
!78 = !DILocalVariable(name: "ctype", scope: !39, file: !40, line: 81, type: !33)
!79 = !DILocation(line: 81, column: 31, scope: !39)
!80 = !DILocalVariable(name: "next", scope: !39, file: !40, line: 82, type: !32)
!81 = !DILocation(line: 82, column: 9, scope: !39)
!82 = !DILocalVariable(name: "roff", scope: !39, file: !40, line: 84, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !30, line: 43, baseType: !52)
!84 = !DILocation(line: 84, column: 9, scope: !39)
!85 = !DILocalVariable(name: "rlen", scope: !39, file: !40, line: 84, type: !83)
!86 = !DILocation(line: 84, column: 15, scope: !39)
!87 = !DILocalVariable(name: "ns", scope: !39, file: !40, line: 85, type: !45)
!88 = !DILocation(line: 85, column: 17, scope: !39)
!89 = !DILocalVariable(name: "ts", scope: !39, file: !40, line: 86, type: !45)
!90 = !DILocation(line: 86, column: 17, scope: !39)
!91 = !DILocation(line: 90, column: 2, scope: !39)
!92 = !DILocation(line: 91, column: 2, scope: !39)
!93 = !DILocation(line: 91, column: 9, scope: !94)
!94 = !DILexicalBlockFile(scope: !39, file: !40, discriminator: 1)
!95 = !DILocation(line: 91, column: 12, scope: !94)
!96 = !DILocation(line: 91, column: 16, scope: !94)
!97 = !DILocation(line: 91, column: 19, scope: !94)
!98 = !DILocation(line: 91, column: 14, scope: !94)
!99 = !DILocation(line: 91, column: 2, scope: !94)
!100 = !DILocation(line: 94, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !39, file: !40, line: 92, column: 2)
!102 = !DILocation(line: 94, column: 16, scope: !101)
!103 = !DILocation(line: 94, column: 17, scope: !101)
!104 = !DILocation(line: 94, column: 9, scope: !101)
!105 = !DILocation(line: 94, column: 7, scope: !101)
!106 = !DILocation(line: 95, column: 10, scope: !101)
!107 = !DILocation(line: 95, column: 14, scope: !101)
!108 = !DILocation(line: 95, column: 8, scope: !101)
!109 = !DILocation(line: 96, column: 10, scope: !101)
!110 = !DILocation(line: 96, column: 14, scope: !101)
!111 = !DILocation(line: 96, column: 8, scope: !101)
!112 = !DILocation(line: 97, column: 10, scope: !101)
!113 = !DILocation(line: 97, column: 14, scope: !101)
!114 = !DILocation(line: 97, column: 8, scope: !101)
!115 = !DILocation(line: 99, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !101, file: !40, line: 99, column: 7)
!117 = !DILocation(line: 99, column: 12, scope: !116)
!118 = !DILocation(line: 99, column: 7, scope: !101)
!119 = !DILocation(line: 100, column: 15, scope: !116)
!120 = !DILocation(line: 100, column: 19, scope: !116)
!121 = !DILocation(line: 100, column: 20, scope: !116)
!122 = !DILocation(line: 100, column: 12, scope: !116)
!123 = !DILocation(line: 100, column: 10, scope: !116)
!124 = !DILocation(line: 100, column: 4, scope: !116)
!125 = !DILocation(line: 102, column: 27, scope: !126)
!126 = distinct !DILexicalBlock(scope: !101, file: !40, line: 102, column: 3)
!127 = !DILocation(line: 102, column: 31, scope: !126)
!128 = !DILocation(line: 102, column: 14, scope: !126)
!129 = !DILocation(line: 102, column: 12, scope: !126)
!130 = !DILocation(line: 102, column: 36, scope: !126)
!131 = !DILocation(line: 102, column: 40, scope: !126)
!132 = !DILocation(line: 102, column: 42, scope: !126)
!133 = !DILocation(line: 104, column: 26, scope: !101)
!134 = !DILocation(line: 104, column: 29, scope: !101)
!135 = !DILocation(line: 104, column: 33, scope: !101)
!136 = !DILocation(line: 104, column: 31, scope: !101)
!137 = !DILocation(line: 104, column: 24, scope: !101)
!138 = !DILocation(line: 104, column: 17, scope: !101)
!139 = !DILocation(line: 106, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !101, file: !40, line: 106, column: 7)
!141 = !DILocation(line: 106, column: 13, scope: !140)
!142 = !DILocation(line: 106, column: 7, scope: !101)
!143 = !DILocation(line: 108, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !40, line: 108, column: 8)
!145 = distinct !DILexicalBlock(scope: !140, file: !40, line: 107, column: 3)
!146 = !DILocation(line: 108, column: 23, scope: !144)
!147 = !DILocation(line: 108, column: 26, scope: !144)
!148 = !DILocation(line: 108, column: 34, scope: !144)
!149 = !DILocation(line: 108, column: 8, scope: !144)
!150 = !DILocation(line: 108, column: 55, scope: !144)
!151 = !DILocation(line: 108, column: 8, scope: !145)
!152 = !DILocation(line: 109, column: 5, scope: !144)
!153 = !DILocation(line: 113, column: 34, scope: !145)
!154 = !DILocation(line: 113, column: 38, scope: !145)
!155 = !DILocation(line: 113, column: 44, scope: !145)
!156 = !DILocation(line: 113, column: 25, scope: !145)
!157 = !DILocation(line: 113, column: 4, scope: !145)
!158 = !DILocation(line: 113, column: 8, scope: !145)
!159 = !DILocation(line: 113, column: 13, scope: !145)
!160 = !DILocation(line: 115, column: 12, scope: !145)
!161 = !DILocation(line: 115, column: 16, scope: !145)
!162 = !DILocation(line: 115, column: 61, scope: !145)
!163 = !DILocation(line: 115, column: 59, scope: !145)
!164 = !DILocation(line: 115, column: 68, scope: !145)
!165 = !DILocation(line: 115, column: 4, scope: !145)
!166 = !DILocation(line: 117, column: 15, scope: !145)
!167 = !DILocation(line: 117, column: 4, scope: !145)
!168 = !DILocation(line: 117, column: 8, scope: !145)
!169 = !DILocation(line: 117, column: 13, scope: !145)
!170 = !DILocation(line: 118, column: 15, scope: !145)
!171 = !DILocation(line: 118, column: 19, scope: !145)
!172 = !DILocation(line: 118, column: 26, scope: !145)
!173 = !DILocation(line: 118, column: 30, scope: !145)
!174 = !DILocation(line: 118, column: 24, scope: !145)
!175 = !DILocation(line: 118, column: 4, scope: !145)
!176 = !DILocation(line: 118, column: 8, scope: !145)
!177 = !DILocation(line: 118, column: 12, scope: !145)
!178 = !DILocation(line: 119, column: 12, scope: !145)
!179 = !DILocation(line: 119, column: 16, scope: !145)
!180 = !DILocation(line: 119, column: 4, scope: !145)
!181 = !DILocation(line: 119, column: 8, scope: !145)
!182 = !DILocation(line: 119, column: 10, scope: !145)
!183 = !DILocation(line: 120, column: 18, scope: !145)
!184 = !DILocation(line: 120, column: 22, scope: !145)
!185 = !DILocation(line: 120, column: 4, scope: !145)
!186 = !DILocation(line: 120, column: 8, scope: !145)
!187 = !DILocation(line: 120, column: 16, scope: !145)
!188 = !DILocation(line: 122, column: 13, scope: !145)
!189 = !DILocation(line: 122, column: 11, scope: !145)
!190 = !DILocation(line: 123, column: 9, scope: !145)
!191 = !DILocation(line: 123, column: 7, scope: !145)
!192 = !DILocation(line: 124, column: 3, scope: !145)
!193 = !DILocation(line: 126, column: 9, scope: !140)
!194 = !DILocation(line: 126, column: 7, scope: !140)
!195 = !DILocation(line: 128, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !101, file: !40, line: 128, column: 7)
!197 = !DILocation(line: 128, column: 12, scope: !196)
!198 = !DILocation(line: 128, column: 7, scope: !101)
!199 = !DILocation(line: 130, column: 33, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !40, line: 129, column: 3)
!201 = !DILocation(line: 130, column: 37, scope: !200)
!202 = !DILocation(line: 130, column: 4, scope: !200)
!203 = !DILocation(line: 131, column: 3, scope: !200)
!204 = !DILocation(line: 134, column: 18, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !40, line: 134, column: 8)
!206 = distinct !DILexicalBlock(scope: !196, file: !40, line: 133, column: 3)
!207 = !DILocation(line: 134, column: 8, scope: !205)
!208 = !DILocation(line: 134, column: 24, scope: !205)
!209 = !DILocation(line: 134, column: 8, scope: !206)
!210 = !DILocation(line: 136, column: 23, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !40, line: 135, column: 4)
!212 = !DILocation(line: 136, column: 15, scope: !211)
!213 = !DILocation(line: 136, column: 5, scope: !211)
!214 = !DILocation(line: 136, column: 21, scope: !211)
!215 = !DILocation(line: 137, column: 22, scope: !211)
!216 = !DILocation(line: 137, column: 12, scope: !211)
!217 = !DILocation(line: 137, column: 5, scope: !211)
!218 = !DILocation(line: 138, column: 25, scope: !211)
!219 = !DILocation(line: 138, column: 15, scope: !211)
!220 = !DILocation(line: 138, column: 5, scope: !211)
!221 = !DILocation(line: 139, column: 23, scope: !211)
!222 = !DILocation(line: 139, column: 13, scope: !211)
!223 = !DILocation(line: 139, column: 5, scope: !211)
!224 = !DILocation(line: 140, column: 4, scope: !211)
!225 = !DILocation(line: 142, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !206, file: !40, line: 142, column: 8)
!227 = !DILocation(line: 142, column: 13, scope: !226)
!228 = !DILocation(line: 142, column: 8, scope: !206)
!229 = !DILocation(line: 144, column: 23, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !40, line: 143, column: 4)
!231 = !DILocation(line: 144, column: 13, scope: !230)
!232 = !DILocation(line: 144, column: 5, scope: !230)
!233 = !DILocation(line: 145, column: 4, scope: !230)
!234 = !DILocation(line: 147, column: 24, scope: !235)
!235 = distinct !DILexicalBlock(scope: !206, file: !40, line: 147, column: 4)
!236 = !DILocation(line: 147, column: 14, scope: !235)
!237 = !DILocation(line: 147, column: 32, scope: !235)
!238 = !DILocation(line: 147, column: 34, scope: !235)
!239 = !DILocation(line: 147, column: 38, scope: !235)
!240 = !DILocation(line: 147, column: 40, scope: !235)
!241 = !DILocation(line: 147, column: 6, scope: !235)
!242 = !DILocation(line: 147, column: 73, scope: !235)
!243 = !DILocation(line: 147, column: 60, scope: !235)
!244 = !DILocation(line: 147, column: 50, scope: !235)
!245 = !DILocation(line: 147, column: 68, scope: !235)
!246 = !DILocation(line: 147, column: 70, scope: !235)
!247 = !DILocation(line: 149, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !206, file: !40, line: 149, column: 8)
!249 = !DILocation(line: 149, column: 13, scope: !248)
!250 = !DILocation(line: 149, column: 8, scope: !206)
!251 = !DILocation(line: 151, column: 41, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !40, line: 150, column: 4)
!253 = !DILocation(line: 151, column: 31, scope: !252)
!254 = !DILocation(line: 151, column: 49, scope: !252)
!255 = !DILocation(line: 151, column: 16, scope: !252)
!256 = !DILocation(line: 151, column: 6, scope: !252)
!257 = !DILocation(line: 151, column: 24, scope: !252)
!258 = !DILocation(line: 151, column: 28, scope: !252)
!259 = !DILocation(line: 152, column: 36, scope: !252)
!260 = !DILocation(line: 152, column: 26, scope: !252)
!261 = !DILocation(line: 152, column: 43, scope: !252)
!262 = !DILocation(line: 152, column: 15, scope: !252)
!263 = !DILocation(line: 152, column: 5, scope: !252)
!264 = !DILocation(line: 152, column: 22, scope: !252)
!265 = !DILocation(line: 152, column: 24, scope: !252)
!266 = !DILocation(line: 153, column: 44, scope: !252)
!267 = !DILocation(line: 153, column: 34, scope: !252)
!268 = !DILocation(line: 153, column: 51, scope: !252)
!269 = !DILocation(line: 153, column: 5, scope: !252)
!270 = !DILocation(line: 154, column: 4, scope: !252)
!271 = !DILocation(line: 157, column: 10, scope: !101)
!272 = !DILocation(line: 157, column: 3, scope: !101)
!273 = !DILocation(line: 157, column: 6, scope: !101)
!274 = !DILocation(line: 157, column: 8, scope: !101)
!275 = !DILocation(line: 91, column: 2, scope: !276)
!276 = !DILexicalBlockFile(scope: !39, file: !40, discriminator: 2)
!277 = distinct !{!277, !92}
!278 = !DILocation(line: 159, column: 2, scope: !39)
!279 = !DILocation(line: 160, column: 1, scope: !39)
!280 = distinct !DISubprogram(name: "process_ts_fp_update_by_code", scope: !40, file: !40, line: 30, type: !281, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !43, !33}
!283 = !DILocalVariable(name: "s", arg: 1, scope: !280, file: !40, line: 30, type: !43)
!284 = !DILocation(line: 30, column: 37, scope: !280)
!285 = !DILocalVariable(name: "code", arg: 2, scope: !280, file: !40, line: 30, type: !33)
!286 = !DILocation(line: 30, column: 46, scope: !280)
!287 = !DILocalVariable(name: "count", scope: !280, file: !40, line: 32, type: !29)
!288 = !DILocation(line: 32, column: 9, scope: !280)
!289 = !DILocalVariable(name: "x", scope: !280, file: !40, line: 32, type: !29)
!290 = !DILocation(line: 32, column: 16, scope: !280)
!291 = !DILocalVariable(name: "y", scope: !280, file: !40, line: 32, type: !29)
!292 = !DILocation(line: 32, column: 19, scope: !280)
!293 = !DILocation(line: 34, column: 10, scope: !280)
!294 = !DILocation(line: 34, column: 2, scope: !280)
!295 = !DILocation(line: 37, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !40, line: 37, column: 4)
!297 = distinct !DILexicalBlock(scope: !280, file: !40, line: 35, column: 2)
!298 = !DILocation(line: 37, column: 31, scope: !296)
!299 = !DILocation(line: 37, column: 14, scope: !296)
!300 = !DILocation(line: 37, column: 12, scope: !296)
!301 = !DILocation(line: 37, column: 36, scope: !296)
!302 = !DILocation(line: 37, column: 40, scope: !296)
!303 = !DILocation(line: 37, column: 42, scope: !296)
!304 = !DILocation(line: 38, column: 19, scope: !297)
!305 = !DILocation(line: 38, column: 22, scope: !297)
!306 = !DILocation(line: 38, column: 4, scope: !297)
!307 = !DILocation(line: 39, column: 4, scope: !297)
!308 = !DILocation(line: 41, column: 5, scope: !297)
!309 = !DILocation(line: 41, column: 9, scope: !297)
!310 = !DILocation(line: 41, column: 11, scope: !297)
!311 = !DILocation(line: 42, column: 27, scope: !297)
!312 = !DILocation(line: 42, column: 4, scope: !297)
!313 = !DILocation(line: 43, column: 4, scope: !297)
!314 = !DILocation(line: 45, column: 5, scope: !297)
!315 = !DILocation(line: 45, column: 9, scope: !297)
!316 = !DILocation(line: 45, column: 11, scope: !297)
!317 = !DILocation(line: 46, column: 20, scope: !297)
!318 = !DILocation(line: 46, column: 4, scope: !297)
!319 = !DILocation(line: 47, column: 4, scope: !297)
!320 = !DILocation(line: 49, column: 4, scope: !297)
!321 = !DILocation(line: 51, column: 4, scope: !297)
!322 = !DILocation(line: 52, column: 4, scope: !297)
!323 = !DILocation(line: 54, column: 4, scope: !297)
!324 = !DILocation(line: 55, column: 4, scope: !297)
!325 = !DILocation(line: 57, column: 23, scope: !326)
!326 = distinct !DILexicalBlock(scope: !297, file: !40, line: 57, column: 4)
!327 = !DILocation(line: 57, column: 27, scope: !326)
!328 = !DILocation(line: 57, column: 10, scope: !326)
!329 = !DILocation(line: 57, column: 8, scope: !326)
!330 = !DILocation(line: 57, column: 32, scope: !326)
!331 = !DILocation(line: 57, column: 36, scope: !326)
!332 = !DILocation(line: 57, column: 38, scope: !326)
!333 = !DILocation(line: 58, column: 23, scope: !334)
!334 = distinct !DILexicalBlock(scope: !297, file: !40, line: 58, column: 4)
!335 = !DILocation(line: 58, column: 27, scope: !334)
!336 = !DILocation(line: 58, column: 10, scope: !334)
!337 = !DILocation(line: 58, column: 8, scope: !334)
!338 = !DILocation(line: 58, column: 32, scope: !334)
!339 = !DILocation(line: 58, column: 36, scope: !334)
!340 = !DILocation(line: 58, column: 38, scope: !334)
!341 = !DILocation(line: 59, column: 10, scope: !342)
!342 = distinct !DILexicalBlock(scope: !297, file: !40, line: 59, column: 8)
!343 = !DILocation(line: 59, column: 14, scope: !342)
!344 = !DILocation(line: 59, column: 20, scope: !342)
!345 = !DILocation(line: 59, column: 24, scope: !342)
!346 = !DILocation(line: 59, column: 16, scope: !342)
!347 = !DILocation(line: 59, column: 8, scope: !297)
!348 = !DILocation(line: 60, column: 21, scope: !342)
!349 = !DILocation(line: 60, column: 24, scope: !342)
!350 = !DILocation(line: 60, column: 5, scope: !342)
!351 = !DILocation(line: 61, column: 4, scope: !297)
!352 = !DILocation(line: 63, column: 31, scope: !297)
!353 = !DILocation(line: 63, column: 4, scope: !297)
!354 = !DILocation(line: 64, column: 4, scope: !297)
!355 = !DILocation(line: 66, column: 31, scope: !297)
!356 = !DILocation(line: 66, column: 4, scope: !297)
!357 = !DILocation(line: 67, column: 4, scope: !297)
!358 = !DILocation(line: 69, column: 28, scope: !297)
!359 = !DILocation(line: 69, column: 4, scope: !297)
!360 = !DILocation(line: 70, column: 4, scope: !297)
!361 = !DILocation(line: 73, column: 11, scope: !297)
!362 = !DILocation(line: 72, column: 4, scope: !297)
!363 = !DILocation(line: 74, column: 2, scope: !297)
!364 = !DILocation(line: 75, column: 1, scope: !280)
