; ModuleID = './[inter]getopt--.libs--libgetopt_la-getopt_long.o.i'
source_filename = "./[inter]getopt--.libs--libgetopt_la-getopt_long.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }

@opterr = global i32 1, align 4
@optind = global i32 1, align 4
@optopt = global i32 63, align 4
@optreset = common global i32 0, align 4
@optarg = common global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@nonopt_end = internal global i32 -1, align 4
@nonopt_start = internal global i32 -1, align 4
@place = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dash_prefix = internal global i32 -1, align 4
@illoptchar = internal constant [21 x i8] c"illegal option -- %c\00", align 16
@gnuoptchar = internal constant [21 x i8] c"invalid option -- %c\00", align 16
@recargchar = internal constant [34 x i8] c"option requires an argument -- %c\00", align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-W \00", align 1
@ambig = internal constant [29 x i8] c"option `%s%.*s' is ambiguous\00", align 16
@noarg = internal constant [42 x i8] c"option `%s%.*s' doesn't allow an argument\00", align 16
@recargstring = internal constant [35 x i8] c"option `%s%s' requires an argument\00", align 16
@illoptstring = internal constant [27 x i8] c"unrecognized option `%s%s'\00", align 16

; Function Attrs: nounwind uwtable
define i32 @getopt(i32, i8**, i8*) #0 !dbg !49 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !56), !dbg !57
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !58, metadata !56), !dbg !59
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !60, metadata !56), !dbg !61
  %7 = load i32, i32* %4, align 4, !dbg !62
  %8 = load i8**, i8*** %5, align 8, !dbg !63
  %9 = load i8*, i8** %6, align 8, !dbg !64
  %10 = call i32 @getopt_internal(i32 %7, i8** %8, i8* %9, %struct.option* null, i32* null, i32 0), !dbg !65
  ret i32 %10, !dbg !66
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @getopt_internal(i32, i8**, i8*, %struct.option*, i32*, i32) #0 !dbg !67 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.option*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !80, metadata !56), !dbg !81
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !82, metadata !56), !dbg !83
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !84, metadata !56), !dbg !85
  store %struct.option* %3, %struct.option** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.option** %11, metadata !86, metadata !56), !dbg !87
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !88, metadata !56), !dbg !89
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !90, metadata !56), !dbg !91
  call void @llvm.dbg.declare(metadata i8** %14, metadata !92, metadata !56), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %15, metadata !94, metadata !56), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %16, metadata !96, metadata !56), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %17, metadata !98, metadata !56), !dbg !99
  %18 = load i8*, i8** %10, align 8, !dbg !100
  %19 = icmp eq i8* %18, null, !dbg !102
  br i1 %19, label %20, label %21, !dbg !103

; <label>:20:                                     ; preds = %6
  store i32 -1, i32* %7, align 4, !dbg !104
  br label %413, !dbg !104

; <label>:21:                                     ; preds = %6
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5, !dbg !105
  %23 = icmp ne i8* %22, null, !dbg !106
  %24 = zext i1 %23 to i32, !dbg !106
  store i32 %24, i32* %17, align 4, !dbg !107
  %25 = load i8*, i8** %10, align 8, !dbg !108
  %26 = load i8, i8* %25, align 1, !dbg !110
  %27 = sext i8 %26 to i32, !dbg !110
  %28 = icmp eq i32 %27, 45, !dbg !111
  br i1 %28, label %29, label %32, !dbg !112

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %13, align 4, !dbg !113
  %31 = or i32 %30, 2, !dbg !113
  store i32 %31, i32* %13, align 4, !dbg !113
  br label %44, !dbg !114

; <label>:32:                                     ; preds = %21
  %33 = load i32, i32* %17, align 4, !dbg !115
  %34 = icmp ne i32 %33, 0, !dbg !115
  br i1 %34, label %40, label %35, !dbg !117

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %10, align 8, !dbg !118
  %37 = load i8, i8* %36, align 1, !dbg !120
  %38 = sext i8 %37 to i32, !dbg !120
  %39 = icmp eq i32 %38, 43, !dbg !121
  br i1 %39, label %40, label %43, !dbg !122

; <label>:40:                                     ; preds = %35, %32
  %41 = load i32, i32* %13, align 4, !dbg !123
  %42 = and i32 %41, -2, !dbg !123
  store i32 %42, i32* %13, align 4, !dbg !123
  br label %43, !dbg !124

; <label>:43:                                     ; preds = %40, %35
  br label %44

; <label>:44:                                     ; preds = %43, %29
  %45 = load i8*, i8** %10, align 8, !dbg !125
  %46 = load i8, i8* %45, align 1, !dbg !127
  %47 = sext i8 %46 to i32, !dbg !127
  %48 = icmp eq i32 %47, 43, !dbg !128
  br i1 %48, label %54, label %49, !dbg !129

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %10, align 8, !dbg !130
  %51 = load i8, i8* %50, align 1, !dbg !132
  %52 = sext i8 %51 to i32, !dbg !132
  %53 = icmp eq i32 %52, 45, !dbg !133
  br i1 %53, label %54, label %57, !dbg !134

; <label>:54:                                     ; preds = %49, %44
  %55 = load i8*, i8** %10, align 8, !dbg !135
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !135
  store i8* %56, i8** %10, align 8, !dbg !135
  br label %57, !dbg !136

; <label>:57:                                     ; preds = %54, %49
  %58 = load i32, i32* @optind, align 4, !dbg !137
  %59 = icmp eq i32 %58, 0, !dbg !139
  br i1 %59, label %60, label %61, !dbg !140

; <label>:60:                                     ; preds = %57
  store i32 1, i32* @optreset, align 4, !dbg !141
  store i32 1, i32* @optind, align 4, !dbg !142
  br label %61, !dbg !143

; <label>:61:                                     ; preds = %60, %57
  store i8* null, i8** @optarg, align 8, !dbg !144
  %62 = load i32, i32* @optreset, align 4, !dbg !145
  %63 = icmp ne i32 %62, 0, !dbg !145
  br i1 %63, label %64, label %65, !dbg !147

; <label>:64:                                     ; preds = %61
  store i32 -1, i32* @nonopt_end, align 4, !dbg !148
  store i32 -1, i32* @nonopt_start, align 4, !dbg !149
  br label %65, !dbg !150

; <label>:65:                                     ; preds = %64, %61
  br label %66, !dbg !151

; <label>:66:                                     ; preds = %147, %65
  %67 = load i32, i32* @optreset, align 4, !dbg !153
  %68 = icmp ne i32 %67, 0, !dbg !153
  br i1 %68, label %73, label %69, !dbg !155

; <label>:69:                                     ; preds = %66
  %70 = load i8*, i8** @place, align 8, !dbg !156
  %71 = load i8, i8* %70, align 1, !dbg !158
  %72 = icmp ne i8 %71, 0, !dbg !158
  br i1 %72, label %193, label %73, !dbg !159

; <label>:73:                                     ; preds = %69, %66
  store i32 0, i32* @optreset, align 4, !dbg !160
  %74 = load i32, i32* @optind, align 4, !dbg !162
  %75 = load i32, i32* %8, align 4, !dbg !164
  %76 = icmp sge i32 %74, %75, !dbg !165
  br i1 %76, label %77, label %97, !dbg !166

; <label>:77:                                     ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !167
  %78 = load i32, i32* @nonopt_end, align 4, !dbg !169
  %79 = icmp ne i32 %78, -1, !dbg !171
  br i1 %79, label %80, label %90, !dbg !172

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* @nonopt_start, align 4, !dbg !173
  %82 = load i32, i32* @nonopt_end, align 4, !dbg !175
  %83 = load i32, i32* @optind, align 4, !dbg !176
  %84 = load i8**, i8*** %9, align 8, !dbg !177
  call void @permute_args(i32 %81, i32 %82, i32 %83, i8** %84), !dbg !178
  %85 = load i32, i32* @nonopt_end, align 4, !dbg !179
  %86 = load i32, i32* @nonopt_start, align 4, !dbg !180
  %87 = sub nsw i32 %85, %86, !dbg !181
  %88 = load i32, i32* @optind, align 4, !dbg !182
  %89 = sub nsw i32 %88, %87, !dbg !182
  store i32 %89, i32* @optind, align 4, !dbg !182
  br label %96, !dbg !183

; <label>:90:                                     ; preds = %77
  %91 = load i32, i32* @nonopt_start, align 4, !dbg !184
  %92 = icmp ne i32 %91, -1, !dbg !186
  br i1 %92, label %93, label %95, !dbg !187

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* @nonopt_start, align 4, !dbg !188
  store i32 %94, i32* @optind, align 4, !dbg !190
  br label %95, !dbg !191

; <label>:95:                                     ; preds = %93, %90
  br label %96

; <label>:96:                                     ; preds = %95, %80
  store i32 -1, i32* @nonopt_end, align 4, !dbg !192
  store i32 -1, i32* @nonopt_start, align 4, !dbg !193
  store i32 -1, i32* %7, align 4, !dbg !194
  br label %413, !dbg !194

; <label>:97:                                     ; preds = %73
  %98 = load i32, i32* @optind, align 4, !dbg !195
  %99 = sext i32 %98 to i64, !dbg !197
  %100 = load i8**, i8*** %9, align 8, !dbg !197
  %101 = getelementptr inbounds i8*, i8** %100, i64 %99, !dbg !197
  %102 = load i8*, i8** %101, align 8, !dbg !197
  store i8* %102, i8** @place, align 8, !dbg !198
  %103 = load i8, i8* %102, align 1, !dbg !199
  %104 = sext i8 %103 to i32, !dbg !199
  %105 = icmp ne i32 %104, 45, !dbg !200
  br i1 %105, label %112, label %106, !dbg !201

; <label>:106:                                    ; preds = %97
  %107 = load i8*, i8** @place, align 8, !dbg !202
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !202
  %109 = load i8, i8* %108, align 1, !dbg !202
  %110 = sext i8 %109 to i32, !dbg !202
  %111 = icmp eq i32 %110, 0, !dbg !203
  br i1 %111, label %112, label %150, !dbg !204

; <label>:112:                                    ; preds = %106, %97
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !206
  %113 = load i32, i32* %13, align 4, !dbg !208
  %114 = and i32 %113, 2, !dbg !210
  %115 = icmp ne i32 %114, 0, !dbg !210
  br i1 %115, label %116, label %123, !dbg !211

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* @optind, align 4, !dbg !212
  %118 = add nsw i32 %117, 1, !dbg !212
  store i32 %118, i32* @optind, align 4, !dbg !212
  %119 = sext i32 %117 to i64, !dbg !214
  %120 = load i8**, i8*** %9, align 8, !dbg !214
  %121 = getelementptr inbounds i8*, i8** %120, i64 %119, !dbg !214
  %122 = load i8*, i8** %121, align 8, !dbg !214
  store i8* %122, i8** @optarg, align 8, !dbg !215
  store i32 1, i32* %7, align 4, !dbg !216
  br label %413, !dbg !216

; <label>:123:                                    ; preds = %112
  %124 = load i32, i32* %13, align 4, !dbg !217
  %125 = and i32 %124, 1, !dbg !219
  %126 = icmp ne i32 %125, 0, !dbg !219
  br i1 %126, label %128, label %127, !dbg !220

; <label>:127:                                    ; preds = %123
  store i32 -1, i32* %7, align 4, !dbg !221
  br label %413, !dbg !221

; <label>:128:                                    ; preds = %123
  %129 = load i32, i32* @nonopt_start, align 4, !dbg !223
  %130 = icmp eq i32 %129, -1, !dbg !225
  br i1 %130, label %131, label %133, !dbg !226

; <label>:131:                                    ; preds = %128
  %132 = load i32, i32* @optind, align 4, !dbg !227
  store i32 %132, i32* @nonopt_start, align 4, !dbg !228
  br label %147, !dbg !229

; <label>:133:                                    ; preds = %128
  %134 = load i32, i32* @nonopt_end, align 4, !dbg !230
  %135 = icmp ne i32 %134, -1, !dbg !232
  br i1 %135, label %136, label %146, !dbg !233

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* @nonopt_start, align 4, !dbg !234
  %138 = load i32, i32* @nonopt_end, align 4, !dbg !236
  %139 = load i32, i32* @optind, align 4, !dbg !237
  %140 = load i8**, i8*** %9, align 8, !dbg !238
  call void @permute_args(i32 %137, i32 %138, i32 %139, i8** %140), !dbg !239
  %141 = load i32, i32* @optind, align 4, !dbg !240
  %142 = load i32, i32* @nonopt_end, align 4, !dbg !241
  %143 = load i32, i32* @nonopt_start, align 4, !dbg !242
  %144 = sub nsw i32 %142, %143, !dbg !243
  %145 = sub nsw i32 %141, %144, !dbg !244
  store i32 %145, i32* @nonopt_start, align 4, !dbg !245
  store i32 -1, i32* @nonopt_end, align 4, !dbg !246
  br label %146, !dbg !247

; <label>:146:                                    ; preds = %136, %133
  br label %147

; <label>:147:                                    ; preds = %146, %131
  %148 = load i32, i32* @optind, align 4, !dbg !248
  %149 = add nsw i32 %148, 1, !dbg !248
  store i32 %149, i32* @optind, align 4, !dbg !248
  br label %66, !dbg !249

; <label>:150:                                    ; preds = %106
  %151 = load i32, i32* @nonopt_start, align 4, !dbg !250
  %152 = icmp ne i32 %151, -1, !dbg !252
  br i1 %152, label %153, label %158, !dbg !253

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* @nonopt_end, align 4, !dbg !254
  %155 = icmp eq i32 %154, -1, !dbg !256
  br i1 %155, label %156, label %158, !dbg !257

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* @optind, align 4, !dbg !258
  store i32 %157, i32* @nonopt_end, align 4, !dbg !259
  br label %158, !dbg !260

; <label>:158:                                    ; preds = %156, %153, %150
  %159 = load i8*, i8** @place, align 8, !dbg !261
  %160 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !261
  %161 = load i8, i8* %160, align 1, !dbg !261
  %162 = sext i8 %161 to i32, !dbg !261
  %163 = icmp ne i32 %162, 0, !dbg !263
  br i1 %163, label %164, label %192, !dbg !264

; <label>:164:                                    ; preds = %158
  %165 = load i8*, i8** @place, align 8, !dbg !265
  %166 = getelementptr inbounds i8, i8* %165, i32 1, !dbg !265
  store i8* %166, i8** @place, align 8, !dbg !265
  %167 = load i8, i8* %166, align 1, !dbg !267
  %168 = sext i8 %167 to i32, !dbg !267
  %169 = icmp eq i32 %168, 45, !dbg !268
  br i1 %169, label %170, label %192, !dbg !269

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** @place, align 8, !dbg !270
  %172 = getelementptr inbounds i8, i8* %171, i64 1, !dbg !270
  %173 = load i8, i8* %172, align 1, !dbg !270
  %174 = sext i8 %173 to i32, !dbg !270
  %175 = icmp eq i32 %174, 0, !dbg !272
  br i1 %175, label %176, label %192, !dbg !273

; <label>:176:                                    ; preds = %170
  %177 = load i32, i32* @optind, align 4, !dbg !274
  %178 = add nsw i32 %177, 1, !dbg !274
  store i32 %178, i32* @optind, align 4, !dbg !274
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !276
  %179 = load i32, i32* @nonopt_end, align 4, !dbg !277
  %180 = icmp ne i32 %179, -1, !dbg !279
  br i1 %180, label %181, label %191, !dbg !280

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* @nonopt_start, align 4, !dbg !281
  %183 = load i32, i32* @nonopt_end, align 4, !dbg !283
  %184 = load i32, i32* @optind, align 4, !dbg !284
  %185 = load i8**, i8*** %9, align 8, !dbg !285
  call void @permute_args(i32 %182, i32 %183, i32 %184, i8** %185), !dbg !286
  %186 = load i32, i32* @nonopt_end, align 4, !dbg !287
  %187 = load i32, i32* @nonopt_start, align 4, !dbg !288
  %188 = sub nsw i32 %186, %187, !dbg !289
  %189 = load i32, i32* @optind, align 4, !dbg !290
  %190 = sub nsw i32 %189, %188, !dbg !290
  store i32 %190, i32* @optind, align 4, !dbg !290
  br label %191, !dbg !291

; <label>:191:                                    ; preds = %181, %176
  store i32 -1, i32* @nonopt_end, align 4, !dbg !292
  store i32 -1, i32* @nonopt_start, align 4, !dbg !293
  store i32 -1, i32* %7, align 4, !dbg !294
  br label %413, !dbg !294

; <label>:192:                                    ; preds = %170, %164, %158
  br label %193, !dbg !295

; <label>:193:                                    ; preds = %192, %69
  %194 = load %struct.option*, %struct.option** %11, align 8, !dbg !296
  %195 = icmp ne %struct.option* %194, null, !dbg !298
  br i1 %195, label %196, label %248, !dbg !299

; <label>:196:                                    ; preds = %193
  %197 = load i8*, i8** @place, align 8, !dbg !300
  %198 = load i32, i32* @optind, align 4, !dbg !302
  %199 = sext i32 %198 to i64, !dbg !303
  %200 = load i8**, i8*** %9, align 8, !dbg !303
  %201 = getelementptr inbounds i8*, i8** %200, i64 %199, !dbg !303
  %202 = load i8*, i8** %201, align 8, !dbg !303
  %203 = icmp ne i8* %197, %202, !dbg !304
  br i1 %203, label %204, label %248, !dbg !305

; <label>:204:                                    ; preds = %196
  %205 = load i8*, i8** @place, align 8, !dbg !306
  %206 = load i8, i8* %205, align 1, !dbg !307
  %207 = sext i8 %206 to i32, !dbg !307
  %208 = icmp eq i32 %207, 45, !dbg !308
  br i1 %208, label %213, label %209, !dbg !309

; <label>:209:                                    ; preds = %204
  %210 = load i32, i32* %13, align 4, !dbg !310
  %211 = and i32 %210, 4, !dbg !311
  %212 = icmp ne i32 %211, 0, !dbg !311
  br i1 %212, label %213, label %248, !dbg !312

; <label>:213:                                    ; preds = %209, %204
  store i32 0, i32* %16, align 4, !dbg !314
  store i32 0, i32* @dash_prefix, align 4, !dbg !316
  %214 = load i8*, i8** @place, align 8, !dbg !317
  %215 = load i8, i8* %214, align 1, !dbg !319
  %216 = sext i8 %215 to i32, !dbg !319
  %217 = icmp eq i32 %216, 45, !dbg !320
  br i1 %217, label %218, label %221, !dbg !321

; <label>:218:                                    ; preds = %213
  %219 = load i8*, i8** @place, align 8, !dbg !322
  %220 = getelementptr inbounds i8, i8* %219, i32 1, !dbg !322
  store i8* %220, i8** @place, align 8, !dbg !322
  store i32 1, i32* @dash_prefix, align 4, !dbg !324
  br label %235, !dbg !325

; <label>:221:                                    ; preds = %213
  %222 = load i8*, i8** @place, align 8, !dbg !326
  %223 = load i8, i8* %222, align 1, !dbg !329
  %224 = sext i8 %223 to i32, !dbg !329
  %225 = icmp ne i32 %224, 58, !dbg !330
  br i1 %225, label %226, label %234, !dbg !331

; <label>:226:                                    ; preds = %221
  %227 = load i8*, i8** %10, align 8, !dbg !332
  %228 = load i8*, i8** @place, align 8, !dbg !334
  %229 = load i8, i8* %228, align 1, !dbg !335
  %230 = sext i8 %229 to i32, !dbg !335
  %231 = call i8* @strchr(i8* %227, i32 %230) #6, !dbg !336
  %232 = icmp ne i8* %231, null, !dbg !337
  br i1 %232, label %233, label %234, !dbg !338

; <label>:233:                                    ; preds = %226
  store i32 1, i32* %16, align 4, !dbg !339
  br label %234, !dbg !340

; <label>:234:                                    ; preds = %233, %226, %221
  br label %235

; <label>:235:                                    ; preds = %234, %218
  %236 = load i8**, i8*** %9, align 8, !dbg !341
  %237 = load i8*, i8** %10, align 8, !dbg !342
  %238 = load %struct.option*, %struct.option** %11, align 8, !dbg !343
  %239 = load i32*, i32** %12, align 8, !dbg !344
  %240 = load i32, i32* %16, align 4, !dbg !345
  %241 = load i32, i32* %13, align 4, !dbg !346
  %242 = call i32 @parse_long_options(i8** %236, i8* %237, %struct.option* %238, i32* %239, i32 %240, i32 %241), !dbg !347
  store i32 %242, i32* %15, align 4, !dbg !348
  %243 = load i32, i32* %15, align 4, !dbg !349
  %244 = icmp ne i32 %243, -1, !dbg !351
  br i1 %244, label %245, label %247, !dbg !352

; <label>:245:                                    ; preds = %235
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !353
  %246 = load i32, i32* %15, align 4, !dbg !355
  store i32 %246, i32* %7, align 4, !dbg !356
  br label %413, !dbg !356

; <label>:247:                                    ; preds = %235
  br label %248, !dbg !357

; <label>:248:                                    ; preds = %247, %209, %196, %193
  %249 = load i8*, i8** @place, align 8, !dbg !358
  %250 = getelementptr inbounds i8, i8* %249, i32 1, !dbg !358
  store i8* %250, i8** @place, align 8, !dbg !358
  %251 = load i8, i8* %249, align 1, !dbg !360
  %252 = sext i8 %251 to i32, !dbg !361
  store i32 %252, i32* %15, align 4, !dbg !362
  %253 = icmp eq i32 %252, 58, !dbg !363
  br i1 %253, label %267, label %254, !dbg !364

; <label>:254:                                    ; preds = %248
  %255 = load i32, i32* %15, align 4, !dbg !365
  %256 = icmp eq i32 %255, 45, !dbg !366
  br i1 %256, label %257, label %262, !dbg !367

; <label>:257:                                    ; preds = %254
  %258 = load i8*, i8** @place, align 8, !dbg !368
  %259 = load i8, i8* %258, align 1, !dbg !370
  %260 = sext i8 %259 to i32, !dbg !370
  %261 = icmp ne i32 %260, 0, !dbg !371
  br i1 %261, label %267, label %262, !dbg !372

; <label>:262:                                    ; preds = %257, %254
  %263 = load i8*, i8** %10, align 8, !dbg !373
  %264 = load i32, i32* %15, align 4, !dbg !374
  %265 = call i8* @strchr(i8* %263, i32 %264) #6, !dbg !375
  store i8* %265, i8** %14, align 8, !dbg !376
  %266 = icmp eq i8* %265, null, !dbg !377
  br i1 %266, label %267, label %298, !dbg !378

; <label>:267:                                    ; preds = %262, %257, %248
  %268 = load i32, i32* %15, align 4, !dbg !380
  %269 = icmp eq i32 %268, 45, !dbg !383
  br i1 %269, label %270, label %276, !dbg !384

; <label>:270:                                    ; preds = %267
  %271 = load i8*, i8** @place, align 8, !dbg !385
  %272 = load i8, i8* %271, align 1, !dbg !387
  %273 = sext i8 %272 to i32, !dbg !387
  %274 = icmp eq i32 %273, 0, !dbg !388
  br i1 %274, label %275, label %276, !dbg !389

; <label>:275:                                    ; preds = %270
  store i32 -1, i32* %7, align 4, !dbg !390
  br label %413, !dbg !390

; <label>:276:                                    ; preds = %270, %267
  %277 = load i8*, i8** @place, align 8, !dbg !391
  %278 = load i8, i8* %277, align 1, !dbg !393
  %279 = icmp ne i8 %278, 0, !dbg !393
  br i1 %279, label %283, label %280, !dbg !394

; <label>:280:                                    ; preds = %276
  %281 = load i32, i32* @optind, align 4, !dbg !395
  %282 = add nsw i32 %281, 1, !dbg !395
  store i32 %282, i32* @optind, align 4, !dbg !395
  br label %283, !dbg !395

; <label>:283:                                    ; preds = %280, %276
  %284 = load i32, i32* @opterr, align 4, !dbg !396
  %285 = icmp ne i32 %284, 0, !dbg !398
  br i1 %285, label %286, label %296, !dbg !399

; <label>:286:                                    ; preds = %283
  %287 = load i8*, i8** %10, align 8, !dbg !400
  %288 = load i8, i8* %287, align 1, !dbg !402
  %289 = sext i8 %288 to i32, !dbg !402
  %290 = icmp ne i32 %289, 58, !dbg !403
  br i1 %290, label %291, label %296, !dbg !404

; <label>:291:                                    ; preds = %286
  %292 = load i32, i32* %17, align 4, !dbg !405
  %293 = icmp ne i32 %292, 0, !dbg !405
  %294 = select i1 %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @illoptchar, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gnuoptchar, i32 0, i32 0), !dbg !405
  %295 = load i32, i32* %15, align 4, !dbg !406
  call void (i8*, ...) @warnx(i8* %294, i32 %295), !dbg !407
  br label %296, !dbg !407

; <label>:296:                                    ; preds = %291, %286, %283
  %297 = load i32, i32* %15, align 4, !dbg !408
  store i32 %297, i32* @optopt, align 4, !dbg !409
  store i32 63, i32* %7, align 4, !dbg !410
  br label %413, !dbg !410

; <label>:298:                                    ; preds = %262
  %299 = load %struct.option*, %struct.option** %11, align 8, !dbg !411
  %300 = icmp ne %struct.option* %299, null, !dbg !413
  br i1 %300, label %301, label %352, !dbg !414

; <label>:301:                                    ; preds = %298
  %302 = load i32, i32* %15, align 4, !dbg !415
  %303 = icmp eq i32 %302, 87, !dbg !417
  br i1 %303, label %304, label %352, !dbg !418

; <label>:304:                                    ; preds = %301
  %305 = load i8*, i8** %14, align 8, !dbg !419
  %306 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !419
  %307 = load i8, i8* %306, align 1, !dbg !419
  %308 = sext i8 %307 to i32, !dbg !419
  %309 = icmp eq i32 %308, 59, !dbg !421
  br i1 %309, label %310, label %352, !dbg !422

; <label>:310:                                    ; preds = %304
  %311 = load i8*, i8** @place, align 8, !dbg !423
  %312 = load i8, i8* %311, align 1, !dbg !426
  %313 = icmp ne i8 %312, 0, !dbg !426
  br i1 %313, label %314, label %315, !dbg !427

; <label>:314:                                    ; preds = %310
  br label %344, !dbg !428

; <label>:315:                                    ; preds = %310
  %316 = load i32, i32* @optind, align 4, !dbg !430
  %317 = add nsw i32 %316, 1, !dbg !430
  store i32 %317, i32* @optind, align 4, !dbg !430
  %318 = load i32, i32* %8, align 4, !dbg !432
  %319 = icmp sge i32 %317, %318, !dbg !433
  br i1 %319, label %320, label %337, !dbg !434

; <label>:320:                                    ; preds = %315
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !435
  %321 = load i32, i32* @opterr, align 4, !dbg !437
  %322 = icmp ne i32 %321, 0, !dbg !439
  br i1 %322, label %323, label %330, !dbg !440

; <label>:323:                                    ; preds = %320
  %324 = load i8*, i8** %10, align 8, !dbg !441
  %325 = load i8, i8* %324, align 1, !dbg !443
  %326 = sext i8 %325 to i32, !dbg !443
  %327 = icmp ne i32 %326, 58, !dbg !444
  br i1 %327, label %328, label %330, !dbg !445

; <label>:328:                                    ; preds = %323
  %329 = load i32, i32* %15, align 4, !dbg !446
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @recargchar, i32 0, i32 0), i32 %329), !dbg !447
  br label %330, !dbg !447

; <label>:330:                                    ; preds = %328, %323, %320
  %331 = load i32, i32* %15, align 4, !dbg !448
  store i32 %331, i32* @optopt, align 4, !dbg !449
  %332 = load i8*, i8** %10, align 8, !dbg !450
  %333 = load i8, i8* %332, align 1, !dbg !451
  %334 = sext i8 %333 to i32, !dbg !451
  %335 = icmp eq i32 %334, 58, !dbg !452
  %336 = select i1 %335, i32 58, i32 63, !dbg !453
  store i32 %336, i32* %7, align 4, !dbg !454
  br label %413, !dbg !454

; <label>:337:                                    ; preds = %315
  %338 = load i32, i32* @optind, align 4, !dbg !455
  %339 = sext i32 %338 to i64, !dbg !456
  %340 = load i8**, i8*** %9, align 8, !dbg !456
  %341 = getelementptr inbounds i8*, i8** %340, i64 %339, !dbg !456
  %342 = load i8*, i8** %341, align 8, !dbg !456
  store i8* %342, i8** @place, align 8, !dbg !457
  br label %343

; <label>:343:                                    ; preds = %337
  br label %344

; <label>:344:                                    ; preds = %343, %314
  store i32 2, i32* @dash_prefix, align 4, !dbg !458
  %345 = load i8**, i8*** %9, align 8, !dbg !459
  %346 = load i8*, i8** %10, align 8, !dbg !460
  %347 = load %struct.option*, %struct.option** %11, align 8, !dbg !461
  %348 = load i32*, i32** %12, align 8, !dbg !462
  %349 = load i32, i32* %13, align 4, !dbg !463
  %350 = call i32 @parse_long_options(i8** %345, i8* %346, %struct.option* %347, i32* %348, i32 0, i32 %349), !dbg !464
  store i32 %350, i32* %15, align 4, !dbg !465
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !466
  %351 = load i32, i32* %15, align 4, !dbg !467
  store i32 %351, i32* %7, align 4, !dbg !468
  br label %413, !dbg !468

; <label>:352:                                    ; preds = %304, %301, %298
  %353 = load i8*, i8** %14, align 8, !dbg !469
  %354 = getelementptr inbounds i8, i8* %353, i32 1, !dbg !469
  store i8* %354, i8** %14, align 8, !dbg !469
  %355 = load i8, i8* %354, align 1, !dbg !471
  %356 = sext i8 %355 to i32, !dbg !471
  %357 = icmp ne i32 %356, 58, !dbg !472
  br i1 %357, label %358, label %366, !dbg !473

; <label>:358:                                    ; preds = %352
  %359 = load i8*, i8** @place, align 8, !dbg !474
  %360 = load i8, i8* %359, align 1, !dbg !477
  %361 = icmp ne i8 %360, 0, !dbg !477
  br i1 %361, label %365, label %362, !dbg !478

; <label>:362:                                    ; preds = %358
  %363 = load i32, i32* @optind, align 4, !dbg !479
  %364 = add nsw i32 %363, 1, !dbg !479
  store i32 %364, i32* @optind, align 4, !dbg !479
  br label %365, !dbg !479

; <label>:365:                                    ; preds = %362, %358
  br label %411, !dbg !480

; <label>:366:                                    ; preds = %352
  store i8* null, i8** @optarg, align 8, !dbg !481
  %367 = load i8*, i8** @place, align 8, !dbg !483
  %368 = load i8, i8* %367, align 1, !dbg !485
  %369 = icmp ne i8 %368, 0, !dbg !485
  br i1 %369, label %370, label %372, !dbg !486

; <label>:370:                                    ; preds = %366
  %371 = load i8*, i8** @place, align 8, !dbg !487
  store i8* %371, i8** @optarg, align 8, !dbg !488
  br label %408, !dbg !489

; <label>:372:                                    ; preds = %366
  %373 = load i8*, i8** %14, align 8, !dbg !490
  %374 = getelementptr inbounds i8, i8* %373, i64 1, !dbg !490
  %375 = load i8, i8* %374, align 1, !dbg !490
  %376 = sext i8 %375 to i32, !dbg !490
  %377 = icmp ne i32 %376, 58, !dbg !492
  br i1 %377, label %378, label %407, !dbg !493

; <label>:378:                                    ; preds = %372
  %379 = load i32, i32* @optind, align 4, !dbg !494
  %380 = add nsw i32 %379, 1, !dbg !494
  store i32 %380, i32* @optind, align 4, !dbg !494
  %381 = load i32, i32* %8, align 4, !dbg !497
  %382 = icmp sge i32 %380, %381, !dbg !498
  br i1 %382, label %383, label %400, !dbg !499

; <label>:383:                                    ; preds = %378
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !500
  %384 = load i32, i32* @opterr, align 4, !dbg !502
  %385 = icmp ne i32 %384, 0, !dbg !504
  br i1 %385, label %386, label %393, !dbg !505

; <label>:386:                                    ; preds = %383
  %387 = load i8*, i8** %10, align 8, !dbg !506
  %388 = load i8, i8* %387, align 1, !dbg !508
  %389 = sext i8 %388 to i32, !dbg !508
  %390 = icmp ne i32 %389, 58, !dbg !509
  br i1 %390, label %391, label %393, !dbg !510

; <label>:391:                                    ; preds = %386
  %392 = load i32, i32* %15, align 4, !dbg !511
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @recargchar, i32 0, i32 0), i32 %392), !dbg !512
  br label %393, !dbg !512

; <label>:393:                                    ; preds = %391, %386, %383
  %394 = load i32, i32* %15, align 4, !dbg !513
  store i32 %394, i32* @optopt, align 4, !dbg !514
  %395 = load i8*, i8** %10, align 8, !dbg !515
  %396 = load i8, i8* %395, align 1, !dbg !516
  %397 = sext i8 %396 to i32, !dbg !516
  %398 = icmp eq i32 %397, 58, !dbg !517
  %399 = select i1 %398, i32 58, i32 63, !dbg !518
  store i32 %399, i32* %7, align 4, !dbg !519
  br label %413, !dbg !519

; <label>:400:                                    ; preds = %378
  %401 = load i32, i32* @optind, align 4, !dbg !520
  %402 = sext i32 %401 to i64, !dbg !521
  %403 = load i8**, i8*** %9, align 8, !dbg !521
  %404 = getelementptr inbounds i8*, i8** %403, i64 %402, !dbg !521
  %405 = load i8*, i8** %404, align 8, !dbg !521
  store i8* %405, i8** @optarg, align 8, !dbg !522
  br label %406

; <label>:406:                                    ; preds = %400
  br label %407, !dbg !523

; <label>:407:                                    ; preds = %406, %372
  br label %408

; <label>:408:                                    ; preds = %407, %370
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @place, align 8, !dbg !524
  %409 = load i32, i32* @optind, align 4, !dbg !525
  %410 = add nsw i32 %409, 1, !dbg !525
  store i32 %410, i32* @optind, align 4, !dbg !525
  br label %411

; <label>:411:                                    ; preds = %408, %365
  %412 = load i32, i32* %15, align 4, !dbg !526
  store i32 %412, i32* %7, align 4, !dbg !527
  br label %413, !dbg !527

; <label>:413:                                    ; preds = %411, %393, %344, %330, %296, %275, %245, %191, %127, %116, %96, %20
  %414 = load i32, i32* %7, align 4, !dbg !528
  ret i32 %414, !dbg !528
}

; Function Attrs: nounwind uwtable
define i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #0 !dbg !529 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !532, metadata !56), !dbg !533
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !534, metadata !56), !dbg !535
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !536, metadata !56), !dbg !537
  store %struct.option* %3, %struct.option** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.option** %9, metadata !538, metadata !56), !dbg !539
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !540, metadata !56), !dbg !541
  %11 = load i32, i32* %6, align 4, !dbg !542
  %12 = load i8**, i8*** %7, align 8, !dbg !543
  %13 = load i8*, i8** %8, align 8, !dbg !544
  %14 = load %struct.option*, %struct.option** %9, align 8, !dbg !545
  %15 = load i32*, i32** %10, align 8, !dbg !546
  %16 = call i32 @getopt_internal(i32 %11, i8** %12, i8* %13, %struct.option* %14, i32* %15, i32 1), !dbg !547
  ret i32 %16, !dbg !548
}

; Function Attrs: nounwind uwtable
define i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #0 !dbg !549 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !550, metadata !56), !dbg !551
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !552, metadata !56), !dbg !553
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !554, metadata !56), !dbg !555
  store %struct.option* %3, %struct.option** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.option** %9, metadata !556, metadata !56), !dbg !557
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !558, metadata !56), !dbg !559
  %11 = load i32, i32* %6, align 4, !dbg !560
  %12 = load i8**, i8*** %7, align 8, !dbg !561
  %13 = load i8*, i8** %8, align 8, !dbg !562
  %14 = load %struct.option*, %struct.option** %9, align 8, !dbg !563
  %15 = load i32*, i32** %10, align 8, !dbg !564
  %16 = call i32 @getopt_internal(i32 %11, i8** %12, i8* %13, %struct.option* %14, i32* %15, i32 5), !dbg !565
  ret i32 %16, !dbg !566
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @permute_args(i32, i32, i32, i8**) #0 !dbg !567 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !570, metadata !56), !dbg !571
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !572, metadata !56), !dbg !573
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !574, metadata !56), !dbg !575
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !576, metadata !56), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %9, metadata !578, metadata !56), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %10, metadata !580, metadata !56), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %11, metadata !582, metadata !56), !dbg !583
  call void @llvm.dbg.declare(metadata i32* %12, metadata !584, metadata !56), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %13, metadata !586, metadata !56), !dbg !587
  call void @llvm.dbg.declare(metadata i32* %14, metadata !588, metadata !56), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %15, metadata !590, metadata !56), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %16, metadata !592, metadata !56), !dbg !593
  call void @llvm.dbg.declare(metadata i8** %17, metadata !594, metadata !56), !dbg !595
  %18 = load i32, i32* %6, align 4, !dbg !596
  %19 = load i32, i32* %5, align 4, !dbg !597
  %20 = sub nsw i32 %18, %19, !dbg !598
  store i32 %20, i32* %14, align 4, !dbg !599
  %21 = load i32, i32* %7, align 4, !dbg !600
  %22 = load i32, i32* %6, align 4, !dbg !601
  %23 = sub nsw i32 %21, %22, !dbg !602
  store i32 %23, i32* %15, align 4, !dbg !603
  %24 = load i32, i32* %14, align 4, !dbg !604
  %25 = load i32, i32* %15, align 4, !dbg !605
  %26 = call i32 @gcd(i32 %24, i32 %25), !dbg !606
  store i32 %26, i32* %13, align 4, !dbg !607
  %27 = load i32, i32* %7, align 4, !dbg !608
  %28 = load i32, i32* %5, align 4, !dbg !609
  %29 = sub nsw i32 %27, %28, !dbg !610
  %30 = load i32, i32* %13, align 4, !dbg !611
  %31 = sdiv i32 %29, %30, !dbg !612
  store i32 %31, i32* %10, align 4, !dbg !613
  store i32 0, i32* %11, align 4, !dbg !614
  br label %32, !dbg !616

; <label>:32:                                     ; preds = %81, %4
  %33 = load i32, i32* %11, align 4, !dbg !617
  %34 = load i32, i32* %13, align 4, !dbg !620
  %35 = icmp slt i32 %33, %34, !dbg !621
  br i1 %35, label %36, label %84, !dbg !622

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %6, align 4, !dbg !623
  %38 = load i32, i32* %11, align 4, !dbg !625
  %39 = add nsw i32 %37, %38, !dbg !626
  store i32 %39, i32* %9, align 4, !dbg !627
  %40 = load i32, i32* %9, align 4, !dbg !628
  store i32 %40, i32* %16, align 4, !dbg !629
  store i32 0, i32* %12, align 4, !dbg !630
  br label %41, !dbg !632

; <label>:41:                                     ; preds = %77, %36
  %42 = load i32, i32* %12, align 4, !dbg !633
  %43 = load i32, i32* %10, align 4, !dbg !636
  %44 = icmp slt i32 %42, %43, !dbg !637
  br i1 %44, label %45, label %80, !dbg !638

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %16, align 4, !dbg !639
  %47 = load i32, i32* %6, align 4, !dbg !642
  %48 = icmp sge i32 %46, %47, !dbg !643
  br i1 %48, label %49, label %53, !dbg !644

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %14, align 4, !dbg !645
  %51 = load i32, i32* %16, align 4, !dbg !646
  %52 = sub nsw i32 %51, %50, !dbg !646
  store i32 %52, i32* %16, align 4, !dbg !646
  br label %57, !dbg !647

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %15, align 4, !dbg !648
  %55 = load i32, i32* %16, align 4, !dbg !649
  %56 = add nsw i32 %55, %54, !dbg !649
  store i32 %56, i32* %16, align 4, !dbg !649
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = load i32, i32* %16, align 4, !dbg !650
  %59 = sext i32 %58 to i64, !dbg !651
  %60 = load i8**, i8*** %8, align 8, !dbg !651
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59, !dbg !651
  %62 = load i8*, i8** %61, align 8, !dbg !651
  store i8* %62, i8** %17, align 8, !dbg !652
  %63 = load i32, i32* %9, align 4, !dbg !653
  %64 = sext i32 %63 to i64, !dbg !654
  %65 = load i8**, i8*** %8, align 8, !dbg !654
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64, !dbg !654
  %67 = load i8*, i8** %66, align 8, !dbg !654
  %68 = load i32, i32* %16, align 4, !dbg !655
  %69 = sext i32 %68 to i64, !dbg !656
  %70 = load i8**, i8*** %8, align 8, !dbg !657
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69, !dbg !656
  store i8* %67, i8** %71, align 8, !dbg !658
  %72 = load i8*, i8** %17, align 8, !dbg !659
  %73 = load i32, i32* %9, align 4, !dbg !660
  %74 = sext i32 %73 to i64, !dbg !661
  %75 = load i8**, i8*** %8, align 8, !dbg !662
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74, !dbg !661
  store i8* %72, i8** %76, align 8, !dbg !663
  br label %77, !dbg !664

; <label>:77:                                     ; preds = %57
  %78 = load i32, i32* %12, align 4, !dbg !665
  %79 = add nsw i32 %78, 1, !dbg !665
  store i32 %79, i32* %12, align 4, !dbg !665
  br label %41, !dbg !667, !llvm.loop !668

; <label>:80:                                     ; preds = %41
  br label %81, !dbg !670

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %11, align 4, !dbg !671
  %83 = add nsw i32 %82, 1, !dbg !671
  store i32 %83, i32* %11, align 4, !dbg !671
  br label %32, !dbg !673, !llvm.loop !674

; <label>:84:                                     ; preds = %32
  ret void, !dbg !676
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_long_options(i8**, i8*, %struct.option*, i32*, i32, i32) #0 !dbg !677 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !680, metadata !56), !dbg !681
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !682, metadata !56), !dbg !683
  store %struct.option* %2, %struct.option** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.option** %10, metadata !684, metadata !56), !dbg !685
  store i32* %3, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !686, metadata !56), !dbg !687
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !688, metadata !56), !dbg !689
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !690, metadata !56), !dbg !691
  call void @llvm.dbg.declare(metadata i8** %14, metadata !692, metadata !56), !dbg !693
  call void @llvm.dbg.declare(metadata i8** %15, metadata !694, metadata !56), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %16, metadata !696, metadata !56), !dbg !697
  call void @llvm.dbg.declare(metadata i64* %17, metadata !698, metadata !56), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %18, metadata !703, metadata !56), !dbg !704
  call void @llvm.dbg.declare(metadata i32* %19, metadata !705, metadata !56), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %20, metadata !707, metadata !56), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %21, metadata !709, metadata !56), !dbg !710
  %22 = load i8*, i8** @place, align 8, !dbg !711
  store i8* %22, i8** %14, align 8, !dbg !712
  %23 = load i32, i32* @dash_prefix, align 4, !dbg !713
  switch i32 %23, label %27 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %26
  ], !dbg !714

; <label>:24:                                     ; preds = %6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 8, !dbg !715
  br label %28, !dbg !717

; <label>:25:                                     ; preds = %6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %16, align 8, !dbg !718
  br label %28, !dbg !719

; <label>:26:                                     ; preds = %6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %16, align 8, !dbg !720
  br label %28, !dbg !721

; <label>:27:                                     ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8, !dbg !722
  br label %28, !dbg !723

; <label>:28:                                     ; preds = %27, %26, %25, %24
  store i32 -1, i32* %19, align 4, !dbg !724
  store i32 0, i32* %20, align 4, !dbg !725
  store i32 0, i32* %21, align 4, !dbg !726
  %29 = load i32, i32* @optind, align 4, !dbg !727
  %30 = add nsw i32 %29, 1, !dbg !727
  store i32 %30, i32* @optind, align 4, !dbg !727
  %31 = load i8*, i8** %14, align 8, !dbg !728
  %32 = call i8* @strchr(i8* %31, i32 61) #6, !dbg !730
  store i8* %32, i8** %15, align 8, !dbg !731
  %33 = icmp ne i8* %32, null, !dbg !732
  br i1 %33, label %34, label %42, !dbg !733

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %15, align 8, !dbg !734
  %36 = load i8*, i8** %14, align 8, !dbg !736
  %37 = ptrtoint i8* %35 to i64, !dbg !737
  %38 = ptrtoint i8* %36 to i64, !dbg !737
  %39 = sub i64 %37, %38, !dbg !737
  store i64 %39, i64* %17, align 8, !dbg !738
  %40 = load i8*, i8** %15, align 8, !dbg !739
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !739
  store i8* %41, i8** %15, align 8, !dbg !739
  br label %45, !dbg !740

; <label>:42:                                     ; preds = %28
  %43 = load i8*, i8** %14, align 8, !dbg !741
  %44 = call i64 @strlen(i8* %43) #6, !dbg !742
  store i64 %44, i64* %17, align 8, !dbg !743
  br label %45

; <label>:45:                                     ; preds = %42, %34
  store i32 0, i32* %18, align 4, !dbg !744
  br label %46, !dbg !746

; <label>:46:                                     ; preds = %139, %45
  %47 = load i32, i32* %18, align 4, !dbg !747
  %48 = sext i32 %47 to i64, !dbg !750
  %49 = load %struct.option*, %struct.option** %10, align 8, !dbg !750
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i64 %48, !dbg !750
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0, !dbg !751
  %52 = load i8*, i8** %51, align 8, !dbg !751
  %53 = icmp ne i8* %52, null, !dbg !752
  br i1 %53, label %54, label %142, !dbg !752

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %14, align 8, !dbg !753
  %56 = load i32, i32* %18, align 4, !dbg !756
  %57 = sext i32 %56 to i64, !dbg !757
  %58 = load %struct.option*, %struct.option** %10, align 8, !dbg !757
  %59 = getelementptr inbounds %struct.option, %struct.option* %58, i64 %57, !dbg !757
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0, !dbg !758
  %61 = load i8*, i8** %60, align 8, !dbg !758
  %62 = load i64, i64* %17, align 8, !dbg !759
  %63 = call i32 @strncmp(i8* %55, i8* %61, i64 %62) #6, !dbg !760
  %64 = icmp ne i32 %63, 0, !dbg !760
  br i1 %64, label %65, label %66, !dbg !761

; <label>:65:                                     ; preds = %54
  br label %139, !dbg !762

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %18, align 4, !dbg !763
  %68 = sext i32 %67 to i64, !dbg !765
  %69 = load %struct.option*, %struct.option** %10, align 8, !dbg !765
  %70 = getelementptr inbounds %struct.option, %struct.option* %69, i64 %68, !dbg !765
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0, !dbg !766
  %72 = load i8*, i8** %71, align 8, !dbg !766
  %73 = call i64 @strlen(i8* %72) #6, !dbg !767
  %74 = load i64, i64* %17, align 8, !dbg !768
  %75 = icmp eq i64 %73, %74, !dbg !769
  br i1 %75, label %76, label %78, !dbg !770

; <label>:76:                                     ; preds = %66
  %77 = load i32, i32* %18, align 4, !dbg !771
  store i32 %77, i32* %19, align 4, !dbg !773
  store i32 1, i32* %20, align 4, !dbg !774
  br label %142, !dbg !775

; <label>:78:                                     ; preds = %66
  %79 = load i32, i32* %12, align 4, !dbg !776
  %80 = icmp ne i32 %79, 0, !dbg !776
  br i1 %80, label %81, label %85, !dbg !778

; <label>:81:                                     ; preds = %78
  %82 = load i64, i64* %17, align 8, !dbg !779
  %83 = icmp eq i64 %82, 1, !dbg !781
  br i1 %83, label %84, label %85, !dbg !782

; <label>:84:                                     ; preds = %81
  br label %139, !dbg !783

; <label>:85:                                     ; preds = %81, %78
  %86 = load i32, i32* %19, align 4, !dbg !784
  %87 = icmp eq i32 %86, -1, !dbg !786
  br i1 %87, label %88, label %90, !dbg !787

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %18, align 4, !dbg !788
  store i32 %89, i32* %19, align 4, !dbg !789
  br label %138, !dbg !790

; <label>:90:                                     ; preds = %85
  %91 = load i32, i32* %13, align 4, !dbg !791
  %92 = and i32 %91, 4, !dbg !793
  %93 = icmp ne i32 %92, 0, !dbg !793
  br i1 %93, label %136, label %94, !dbg !794

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %18, align 4, !dbg !795
  %96 = sext i32 %95 to i64, !dbg !796
  %97 = load %struct.option*, %struct.option** %10, align 8, !dbg !796
  %98 = getelementptr inbounds %struct.option, %struct.option* %97, i64 %96, !dbg !796
  %99 = getelementptr inbounds %struct.option, %struct.option* %98, i32 0, i32 1, !dbg !797
  %100 = load i32, i32* %99, align 8, !dbg !797
  %101 = load i32, i32* %19, align 4, !dbg !798
  %102 = sext i32 %101 to i64, !dbg !799
  %103 = load %struct.option*, %struct.option** %10, align 8, !dbg !799
  %104 = getelementptr inbounds %struct.option, %struct.option* %103, i64 %102, !dbg !799
  %105 = getelementptr inbounds %struct.option, %struct.option* %104, i32 0, i32 1, !dbg !800
  %106 = load i32, i32* %105, align 8, !dbg !800
  %107 = icmp ne i32 %100, %106, !dbg !801
  br i1 %107, label %136, label %108, !dbg !802

; <label>:108:                                    ; preds = %94
  %109 = load i32, i32* %18, align 4, !dbg !803
  %110 = sext i32 %109 to i64, !dbg !804
  %111 = load %struct.option*, %struct.option** %10, align 8, !dbg !804
  %112 = getelementptr inbounds %struct.option, %struct.option* %111, i64 %110, !dbg !804
  %113 = getelementptr inbounds %struct.option, %struct.option* %112, i32 0, i32 2, !dbg !805
  %114 = load i32*, i32** %113, align 8, !dbg !805
  %115 = load i32, i32* %19, align 4, !dbg !806
  %116 = sext i32 %115 to i64, !dbg !807
  %117 = load %struct.option*, %struct.option** %10, align 8, !dbg !807
  %118 = getelementptr inbounds %struct.option, %struct.option* %117, i64 %116, !dbg !807
  %119 = getelementptr inbounds %struct.option, %struct.option* %118, i32 0, i32 2, !dbg !808
  %120 = load i32*, i32** %119, align 8, !dbg !808
  %121 = icmp ne i32* %114, %120, !dbg !809
  br i1 %121, label %136, label %122, !dbg !810

; <label>:122:                                    ; preds = %108
  %123 = load i32, i32* %18, align 4, !dbg !811
  %124 = sext i32 %123 to i64, !dbg !812
  %125 = load %struct.option*, %struct.option** %10, align 8, !dbg !812
  %126 = getelementptr inbounds %struct.option, %struct.option* %125, i64 %124, !dbg !812
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 3, !dbg !813
  %128 = load i32, i32* %127, align 8, !dbg !813
  %129 = load i32, i32* %19, align 4, !dbg !814
  %130 = sext i32 %129 to i64, !dbg !815
  %131 = load %struct.option*, %struct.option** %10, align 8, !dbg !815
  %132 = getelementptr inbounds %struct.option, %struct.option* %131, i64 %130, !dbg !815
  %133 = getelementptr inbounds %struct.option, %struct.option* %132, i32 0, i32 3, !dbg !816
  %134 = load i32, i32* %133, align 8, !dbg !816
  %135 = icmp ne i32 %128, %134, !dbg !817
  br i1 %135, label %136, label %137, !dbg !818

; <label>:136:                                    ; preds = %122, %108, %94, %90
  store i32 1, i32* %21, align 4, !dbg !820
  br label %137, !dbg !821

; <label>:137:                                    ; preds = %136, %122
  br label %138

; <label>:138:                                    ; preds = %137, %88
  br label %139, !dbg !822

; <label>:139:                                    ; preds = %138, %84, %65
  %140 = load i32, i32* %18, align 4, !dbg !823
  %141 = add nsw i32 %140, 1, !dbg !823
  store i32 %141, i32* %18, align 4, !dbg !823
  br label %46, !dbg !825, !llvm.loop !826

; <label>:142:                                    ; preds = %76, %46
  %143 = load i32, i32* %20, align 4, !dbg !828
  %144 = icmp ne i32 %143, 0, !dbg !828
  br i1 %144, label %162, label %145, !dbg !830

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %21, align 4, !dbg !831
  %147 = icmp ne i32 %146, 0, !dbg !831
  br i1 %147, label %148, label %162, !dbg !833

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* @opterr, align 4, !dbg !834
  %150 = icmp ne i32 %149, 0, !dbg !837
  br i1 %150, label %151, label %161, !dbg !838

; <label>:151:                                    ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !839
  %153 = load i8, i8* %152, align 1, !dbg !841
  %154 = sext i8 %153 to i32, !dbg !841
  %155 = icmp ne i32 %154, 58, !dbg !842
  br i1 %155, label %156, label %161, !dbg !843

; <label>:156:                                    ; preds = %151
  %157 = load i8*, i8** %16, align 8, !dbg !844
  %158 = load i64, i64* %17, align 8, !dbg !845
  %159 = trunc i64 %158 to i32, !dbg !846
  %160 = load i8*, i8** %14, align 8, !dbg !847
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ambig, i32 0, i32 0), i8* %157, i32 %159, i8* %160), !dbg !848
  br label %161, !dbg !848

; <label>:161:                                    ; preds = %156, %151, %148
  store i32 0, i32* @optopt, align 4, !dbg !849
  store i32 63, i32* %7, align 4, !dbg !850
  br label %343, !dbg !850

; <label>:162:                                    ; preds = %145, %142
  %163 = load i32, i32* %19, align 4, !dbg !851
  %164 = icmp ne i32 %163, -1, !dbg !853
  br i1 %164, label %165, label %291, !dbg !854

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %19, align 4, !dbg !855
  %167 = sext i32 %166 to i64, !dbg !858
  %168 = load %struct.option*, %struct.option** %10, align 8, !dbg !858
  %169 = getelementptr inbounds %struct.option, %struct.option* %168, i64 %167, !dbg !858
  %170 = getelementptr inbounds %struct.option, %struct.option* %169, i32 0, i32 1, !dbg !859
  %171 = load i32, i32* %170, align 8, !dbg !859
  %172 = icmp eq i32 %171, 0, !dbg !860
  br i1 %172, label %173, label %206, !dbg !861

; <label>:173:                                    ; preds = %165
  %174 = load i8*, i8** %15, align 8, !dbg !862
  %175 = icmp ne i8* %174, null, !dbg !862
  br i1 %175, label %176, label %206, !dbg !864

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* @opterr, align 4, !dbg !866
  %178 = icmp ne i32 %177, 0, !dbg !869
  br i1 %178, label %179, label %189, !dbg !870

; <label>:179:                                    ; preds = %176
  %180 = load i8*, i8** %9, align 8, !dbg !871
  %181 = load i8, i8* %180, align 1, !dbg !873
  %182 = sext i8 %181 to i32, !dbg !873
  %183 = icmp ne i32 %182, 58, !dbg !874
  br i1 %183, label %184, label %189, !dbg !875

; <label>:184:                                    ; preds = %179
  %185 = load i8*, i8** %16, align 8, !dbg !876
  %186 = load i64, i64* %17, align 8, !dbg !877
  %187 = trunc i64 %186 to i32, !dbg !878
  %188 = load i8*, i8** %14, align 8, !dbg !879
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @noarg, i32 0, i32 0), i8* %185, i32 %187, i8* %188), !dbg !880
  br label %189, !dbg !880

; <label>:189:                                    ; preds = %184, %179, %176
  %190 = load i32, i32* %19, align 4, !dbg !881
  %191 = sext i32 %190 to i64, !dbg !883
  %192 = load %struct.option*, %struct.option** %10, align 8, !dbg !883
  %193 = getelementptr inbounds %struct.option, %struct.option* %192, i64 %191, !dbg !883
  %194 = getelementptr inbounds %struct.option, %struct.option* %193, i32 0, i32 2, !dbg !884
  %195 = load i32*, i32** %194, align 8, !dbg !884
  %196 = icmp eq i32* %195, null, !dbg !885
  br i1 %196, label %197, label %204, !dbg !886

; <label>:197:                                    ; preds = %189
  %198 = load i32, i32* %19, align 4, !dbg !887
  %199 = sext i32 %198 to i64, !dbg !888
  %200 = load %struct.option*, %struct.option** %10, align 8, !dbg !888
  %201 = getelementptr inbounds %struct.option, %struct.option* %200, i64 %199, !dbg !888
  %202 = getelementptr inbounds %struct.option, %struct.option* %201, i32 0, i32 3, !dbg !889
  %203 = load i32, i32* %202, align 8, !dbg !889
  store i32 %203, i32* @optopt, align 4, !dbg !890
  br label %205, !dbg !891

; <label>:204:                                    ; preds = %189
  store i32 0, i32* @optopt, align 4, !dbg !892
  br label %205

; <label>:205:                                    ; preds = %204, %197
  store i32 63, i32* %7, align 4, !dbg !893
  br label %343, !dbg !893

; <label>:206:                                    ; preds = %173, %165
  %207 = load i32, i32* %19, align 4, !dbg !894
  %208 = sext i32 %207 to i64, !dbg !896
  %209 = load %struct.option*, %struct.option** %10, align 8, !dbg !896
  %210 = getelementptr inbounds %struct.option, %struct.option* %209, i64 %208, !dbg !896
  %211 = getelementptr inbounds %struct.option, %struct.option* %210, i32 0, i32 1, !dbg !897
  %212 = load i32, i32* %211, align 8, !dbg !897
  %213 = icmp eq i32 %212, 1, !dbg !898
  br i1 %213, label %222, label %214, !dbg !899

; <label>:214:                                    ; preds = %206
  %215 = load i32, i32* %19, align 4, !dbg !900
  %216 = sext i32 %215 to i64, !dbg !901
  %217 = load %struct.option*, %struct.option** %10, align 8, !dbg !901
  %218 = getelementptr inbounds %struct.option, %struct.option* %217, i64 %216, !dbg !901
  %219 = getelementptr inbounds %struct.option, %struct.option* %218, i32 0, i32 1, !dbg !902
  %220 = load i32, i32* %219, align 8, !dbg !902
  %221 = icmp eq i32 %220, 2, !dbg !903
  br i1 %221, label %222, label %244, !dbg !904

; <label>:222:                                    ; preds = %214, %206
  %223 = load i8*, i8** %15, align 8, !dbg !905
  %224 = icmp ne i8* %223, null, !dbg !905
  br i1 %224, label %225, label %227, !dbg !908

; <label>:225:                                    ; preds = %222
  %226 = load i8*, i8** %15, align 8, !dbg !909
  store i8* %226, i8** @optarg, align 8, !dbg !910
  br label %243, !dbg !911

; <label>:227:                                    ; preds = %222
  %228 = load i32, i32* %19, align 4, !dbg !912
  %229 = sext i32 %228 to i64, !dbg !914
  %230 = load %struct.option*, %struct.option** %10, align 8, !dbg !914
  %231 = getelementptr inbounds %struct.option, %struct.option* %230, i64 %229, !dbg !914
  %232 = getelementptr inbounds %struct.option, %struct.option* %231, i32 0, i32 1, !dbg !915
  %233 = load i32, i32* %232, align 8, !dbg !915
  %234 = icmp eq i32 %233, 1, !dbg !916
  br i1 %234, label %235, label %242, !dbg !917

; <label>:235:                                    ; preds = %227
  %236 = load i32, i32* @optind, align 4, !dbg !918
  %237 = add nsw i32 %236, 1, !dbg !918
  store i32 %237, i32* @optind, align 4, !dbg !918
  %238 = sext i32 %236 to i64, !dbg !920
  %239 = load i8**, i8*** %8, align 8, !dbg !920
  %240 = getelementptr inbounds i8*, i8** %239, i64 %238, !dbg !920
  %241 = load i8*, i8** %240, align 8, !dbg !920
  store i8* %241, i8** @optarg, align 8, !dbg !921
  br label %242, !dbg !922

; <label>:242:                                    ; preds = %235, %227
  br label %243

; <label>:243:                                    ; preds = %242, %225
  br label %244, !dbg !923

; <label>:244:                                    ; preds = %243, %214
  %245 = load i32, i32* %19, align 4, !dbg !924
  %246 = sext i32 %245 to i64, !dbg !926
  %247 = load %struct.option*, %struct.option** %10, align 8, !dbg !926
  %248 = getelementptr inbounds %struct.option, %struct.option* %247, i64 %246, !dbg !926
  %249 = getelementptr inbounds %struct.option, %struct.option* %248, i32 0, i32 1, !dbg !927
  %250 = load i32, i32* %249, align 8, !dbg !927
  %251 = icmp eq i32 %250, 1, !dbg !928
  br i1 %251, label %252, label %290, !dbg !929

; <label>:252:                                    ; preds = %244
  %253 = load i8*, i8** @optarg, align 8, !dbg !930
  %254 = icmp eq i8* %253, null, !dbg !932
  br i1 %254, label %255, label %290, !dbg !933

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* @opterr, align 4, !dbg !934
  %257 = icmp ne i32 %256, 0, !dbg !937
  br i1 %257, label %258, label %266, !dbg !938

; <label>:258:                                    ; preds = %255
  %259 = load i8*, i8** %9, align 8, !dbg !939
  %260 = load i8, i8* %259, align 1, !dbg !941
  %261 = sext i8 %260 to i32, !dbg !941
  %262 = icmp ne i32 %261, 58, !dbg !942
  br i1 %262, label %263, label %266, !dbg !943

; <label>:263:                                    ; preds = %258
  %264 = load i8*, i8** %16, align 8, !dbg !944
  %265 = load i8*, i8** %14, align 8, !dbg !945
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @recargstring, i32 0, i32 0), i8* %264, i8* %265), !dbg !946
  br label %266, !dbg !946

; <label>:266:                                    ; preds = %263, %258, %255
  %267 = load i32, i32* %19, align 4, !dbg !947
  %268 = sext i32 %267 to i64, !dbg !949
  %269 = load %struct.option*, %struct.option** %10, align 8, !dbg !949
  %270 = getelementptr inbounds %struct.option, %struct.option* %269, i64 %268, !dbg !949
  %271 = getelementptr inbounds %struct.option, %struct.option* %270, i32 0, i32 2, !dbg !950
  %272 = load i32*, i32** %271, align 8, !dbg !950
  %273 = icmp eq i32* %272, null, !dbg !951
  br i1 %273, label %274, label %281, !dbg !952

; <label>:274:                                    ; preds = %266
  %275 = load i32, i32* %19, align 4, !dbg !953
  %276 = sext i32 %275 to i64, !dbg !954
  %277 = load %struct.option*, %struct.option** %10, align 8, !dbg !954
  %278 = getelementptr inbounds %struct.option, %struct.option* %277, i64 %276, !dbg !954
  %279 = getelementptr inbounds %struct.option, %struct.option* %278, i32 0, i32 3, !dbg !955
  %280 = load i32, i32* %279, align 8, !dbg !955
  store i32 %280, i32* @optopt, align 4, !dbg !956
  br label %282, !dbg !957

; <label>:281:                                    ; preds = %266
  store i32 0, i32* @optopt, align 4, !dbg !958
  br label %282

; <label>:282:                                    ; preds = %281, %274
  %283 = load i32, i32* @optind, align 4, !dbg !959
  %284 = add nsw i32 %283, -1, !dbg !959
  store i32 %284, i32* @optind, align 4, !dbg !959
  %285 = load i8*, i8** %9, align 8, !dbg !960
  %286 = load i8, i8* %285, align 1, !dbg !961
  %287 = sext i8 %286 to i32, !dbg !961
  %288 = icmp eq i32 %287, 58, !dbg !962
  %289 = select i1 %288, i32 58, i32 63, !dbg !963
  store i32 %289, i32* %7, align 4, !dbg !964
  br label %343, !dbg !964

; <label>:290:                                    ; preds = %252, %244
  br label %309, !dbg !965

; <label>:291:                                    ; preds = %162
  %292 = load i32, i32* %12, align 4, !dbg !966
  %293 = icmp ne i32 %292, 0, !dbg !966
  br i1 %293, label %294, label %297, !dbg !969

; <label>:294:                                    ; preds = %291
  %295 = load i32, i32* @optind, align 4, !dbg !970
  %296 = add nsw i32 %295, -1, !dbg !970
  store i32 %296, i32* @optind, align 4, !dbg !970
  store i32 -1, i32* %7, align 4, !dbg !972
  br label %343, !dbg !972

; <label>:297:                                    ; preds = %291
  %298 = load i32, i32* @opterr, align 4, !dbg !973
  %299 = icmp ne i32 %298, 0, !dbg !975
  br i1 %299, label %300, label %308, !dbg !976

; <label>:300:                                    ; preds = %297
  %301 = load i8*, i8** %9, align 8, !dbg !977
  %302 = load i8, i8* %301, align 1, !dbg !979
  %303 = sext i8 %302 to i32, !dbg !979
  %304 = icmp ne i32 %303, 58, !dbg !980
  br i1 %304, label %305, label %308, !dbg !981

; <label>:305:                                    ; preds = %300
  %306 = load i8*, i8** %16, align 8, !dbg !982
  %307 = load i8*, i8** %14, align 8, !dbg !983
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @illoptstring, i32 0, i32 0), i8* %306, i8* %307), !dbg !984
  br label %308, !dbg !984

; <label>:308:                                    ; preds = %305, %300, %297
  store i32 0, i32* @optopt, align 4, !dbg !985
  store i32 63, i32* %7, align 4, !dbg !986
  br label %343, !dbg !986

; <label>:309:                                    ; preds = %290
  %310 = load i32*, i32** %11, align 8, !dbg !987
  %311 = icmp ne i32* %310, null, !dbg !987
  br i1 %311, label %312, label %315, !dbg !989

; <label>:312:                                    ; preds = %309
  %313 = load i32, i32* %19, align 4, !dbg !990
  %314 = load i32*, i32** %11, align 8, !dbg !991
  store i32 %313, i32* %314, align 4, !dbg !992
  br label %315, !dbg !993

; <label>:315:                                    ; preds = %312, %309
  %316 = load i32, i32* %19, align 4, !dbg !994
  %317 = sext i32 %316 to i64, !dbg !996
  %318 = load %struct.option*, %struct.option** %10, align 8, !dbg !996
  %319 = getelementptr inbounds %struct.option, %struct.option* %318, i64 %317, !dbg !996
  %320 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 2, !dbg !997
  %321 = load i32*, i32** %320, align 8, !dbg !997
  %322 = icmp ne i32* %321, null, !dbg !996
  br i1 %322, label %323, label %336, !dbg !998

; <label>:323:                                    ; preds = %315
  %324 = load i32, i32* %19, align 4, !dbg !999
  %325 = sext i32 %324 to i64, !dbg !1001
  %326 = load %struct.option*, %struct.option** %10, align 8, !dbg !1001
  %327 = getelementptr inbounds %struct.option, %struct.option* %326, i64 %325, !dbg !1001
  %328 = getelementptr inbounds %struct.option, %struct.option* %327, i32 0, i32 3, !dbg !1002
  %329 = load i32, i32* %328, align 8, !dbg !1002
  %330 = load i32, i32* %19, align 4, !dbg !1003
  %331 = sext i32 %330 to i64, !dbg !1004
  %332 = load %struct.option*, %struct.option** %10, align 8, !dbg !1004
  %333 = getelementptr inbounds %struct.option, %struct.option* %332, i64 %331, !dbg !1004
  %334 = getelementptr inbounds %struct.option, %struct.option* %333, i32 0, i32 2, !dbg !1005
  %335 = load i32*, i32** %334, align 8, !dbg !1005
  store i32 %329, i32* %335, align 4, !dbg !1006
  store i32 0, i32* %7, align 4, !dbg !1007
  br label %343, !dbg !1007

; <label>:336:                                    ; preds = %315
  %337 = load i32, i32* %19, align 4, !dbg !1008
  %338 = sext i32 %337 to i64, !dbg !1009
  %339 = load %struct.option*, %struct.option** %10, align 8, !dbg !1009
  %340 = getelementptr inbounds %struct.option, %struct.option* %339, i64 %338, !dbg !1009
  %341 = getelementptr inbounds %struct.option, %struct.option* %340, i32 0, i32 3, !dbg !1010
  %342 = load i32, i32* %341, align 8, !dbg !1010
  store i32 %342, i32* %7, align 4, !dbg !1011
  br label %343, !dbg !1011

; <label>:343:                                    ; preds = %336, %323, %308, %294, %282, %205, %161
  %344 = load i32, i32* %7, align 4, !dbg !1012
  ret i32 %344, !dbg !1012
}

declare void @warnx(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @gcd(i32, i32) #0 !dbg !1013 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1016, metadata !56), !dbg !1017
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1018, metadata !56), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1020, metadata !56), !dbg !1021
  %6 = load i32, i32* %3, align 4, !dbg !1022
  %7 = load i32, i32* %4, align 4, !dbg !1023
  %8 = srem i32 %6, %7, !dbg !1024
  store i32 %8, i32* %5, align 4, !dbg !1025
  br label %9, !dbg !1026

; <label>:9:                                      ; preds = %12, %2
  %10 = load i32, i32* %5, align 4, !dbg !1027
  %11 = icmp ne i32 %10, 0, !dbg !1029
  br i1 %11, label %12, label %18, !dbg !1030

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !1031
  store i32 %13, i32* %3, align 4, !dbg !1033
  %14 = load i32, i32* %5, align 4, !dbg !1034
  store i32 %14, i32* %4, align 4, !dbg !1035
  %15 = load i32, i32* %3, align 4, !dbg !1036
  %16 = load i32, i32* %4, align 4, !dbg !1037
  %17 = srem i32 %15, %16, !dbg !1038
  store i32 %17, i32* %5, align 4, !dbg !1039
  br label %9, !dbg !1040, !llvm.loop !1042

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %4, align 4, !dbg !1043
  ret i32 %19, !dbg !1044
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !9)
!1 = !DIFile(filename: "[inter]getopt--.libs--libgetopt_la-getopt_long.o.i", directory: "/home/lichi/Desktop/matio/[lib]getopt--.libs--libgetopt.a")
!2 = !{}
!3 = !{!4, !5, !6, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!9 = !{!10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !25, !29, !33, !37, !41, !42}
!10 = distinct !DIGlobalVariable(name: "opterr", scope: !0, file: !11, line: 75, type: !5, isLocal: false, isDefinition: true, variable: i32* @opterr)
!11 = !DIFile(filename: "getopt_long.c", directory: "/home/lichi/Desktop/matio/[lib]getopt--.libs--libgetopt.a")
!12 = distinct !DIGlobalVariable(name: "optind", scope: !0, file: !11, line: 76, type: !5, isLocal: false, isDefinition: true, variable: i32* @optind)
!13 = distinct !DIGlobalVariable(name: "optopt", scope: !0, file: !11, line: 77, type: !5, isLocal: false, isDefinition: true, variable: i32* @optopt)
!14 = distinct !DIGlobalVariable(name: "optreset", scope: !0, file: !11, line: 78, type: !5, isLocal: false, isDefinition: true, variable: i32* @optreset)
!15 = distinct !DIGlobalVariable(name: "optarg", scope: !0, file: !11, line: 79, type: !6, isLocal: false, isDefinition: true, variable: i8** @optarg)
!16 = distinct !DIGlobalVariable(name: "nonopt_end", scope: !0, file: !11, line: 113, type: !5, isLocal: true, isDefinition: true, variable: i32* @nonopt_end)
!17 = distinct !DIGlobalVariable(name: "nonopt_start", scope: !0, file: !11, line: 112, type: !5, isLocal: true, isDefinition: true, variable: i32* @nonopt_start)
!18 = distinct !DIGlobalVariable(name: "place", scope: !0, file: !11, line: 109, type: !6, isLocal: true, isDefinition: true, variable: i8** @place)
!19 = distinct !DIGlobalVariable(name: "dash_prefix", scope: !0, file: !11, line: 119, type: !5, isLocal: true, isDefinition: true, variable: i32* @dash_prefix)
!20 = distinct !DIGlobalVariable(name: "ambig", scope: !0, file: !11, line: 123, type: !21, isLocal: true, isDefinition: true, variable: [29 x i8]* @ambig)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 232, align: 8, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!23 = !{!24}
!24 = !DISubrange(count: 29)
!25 = distinct !DIGlobalVariable(name: "noarg", scope: !0, file: !11, line: 124, type: !26, isLocal: true, isDefinition: true, variable: [42 x i8]* @noarg)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 336, align: 8, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 42)
!29 = distinct !DIGlobalVariable(name: "recargstring", scope: !0, file: !11, line: 122, type: !30, isLocal: true, isDefinition: true, variable: [35 x i8]* @recargstring)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 280, align: 8, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 35)
!33 = distinct !DIGlobalVariable(name: "illoptstring", scope: !0, file: !11, line: 125, type: !34, isLocal: true, isDefinition: true, variable: [27 x i8]* @illoptstring)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 216, align: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 27)
!37 = distinct !DIGlobalVariable(name: "illoptchar", scope: !0, file: !11, line: 117, type: !38, isLocal: true, isDefinition: true, variable: [21 x i8]* @illoptchar)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 168, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 21)
!41 = distinct !DIGlobalVariable(name: "gnuoptchar", scope: !0, file: !11, line: 120, type: !38, isLocal: true, isDefinition: true, variable: [21 x i8]* @gnuoptchar)
!42 = distinct !DIGlobalVariable(name: "recargchar", scope: !0, file: !11, line: 116, type: !43, isLocal: true, isDefinition: true, variable: [34 x i8]* @recargchar)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 272, align: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 34)
!46 = !{i32 2, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!49 = distinct !DISubprogram(name: "getopt", scope: !11, file: !11, line: 581, type: !50, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!5, !5, !52, !54}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!55 = !DILocalVariable(name: "nargc", arg: 1, scope: !49, file: !11, line: 581, type: !5)
!56 = !DIExpression()
!57 = !DILocation(line: 581, column: 12, scope: !49)
!58 = !DILocalVariable(name: "nargv", arg: 2, scope: !49, file: !11, line: 581, type: !52)
!59 = !DILocation(line: 581, column: 33, scope: !49)
!60 = !DILocalVariable(name: "options", arg: 3, scope: !49, file: !11, line: 581, type: !54)
!61 = !DILocation(line: 581, column: 52, scope: !49)
!62 = !DILocation(line: 592, column: 29, scope: !49)
!63 = !DILocation(line: 592, column: 36, scope: !49)
!64 = !DILocation(line: 592, column: 43, scope: !49)
!65 = !DILocation(line: 592, column: 13, scope: !49)
!66 = !DILocation(line: 592, column: 5, scope: !49)
!67 = distinct !DISubprogram(name: "getopt_internal", scope: !11, file: !11, line: 359, type: !68, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!68 = !DISubroutineType(types: !69)
!69 = !{!5, !5, !52, !54, !70, !78, !5}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 55, size: 256, align: 64, elements: !74)
!73 = !DIFile(filename: "./getopt.h", directory: "/home/lichi/Desktop/matio/[lib]getopt--.libs--libgetopt.a")
!74 = !{!75, !76, !77, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 57, baseType: !54, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 62, baseType: !5, size: 32, align: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 64, baseType: !78, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 66, baseType: !5, size: 32, align: 32, offset: 192)
!80 = !DILocalVariable(name: "nargc", arg: 1, scope: !67, file: !11, line: 359, type: !5)
!81 = !DILocation(line: 359, column: 21, scope: !67)
!82 = !DILocalVariable(name: "nargv", arg: 2, scope: !67, file: !11, line: 359, type: !52)
!83 = !DILocation(line: 359, column: 42, scope: !67)
!84 = !DILocalVariable(name: "options", arg: 3, scope: !67, file: !11, line: 359, type: !54)
!85 = !DILocation(line: 359, column: 61, scope: !67)
!86 = !DILocalVariable(name: "long_options", arg: 4, scope: !67, file: !11, line: 360, type: !70)
!87 = !DILocation(line: 360, column: 26, scope: !67)
!88 = !DILocalVariable(name: "idx", arg: 5, scope: !67, file: !11, line: 360, type: !78)
!89 = !DILocation(line: 360, column: 45, scope: !67)
!90 = !DILocalVariable(name: "flags", arg: 6, scope: !67, file: !11, line: 360, type: !5)
!91 = !DILocation(line: 360, column: 54, scope: !67)
!92 = !DILocalVariable(name: "oli", scope: !67, file: !11, line: 362, type: !6)
!93 = !DILocation(line: 362, column: 11, scope: !67)
!94 = !DILocalVariable(name: "optchar", scope: !67, file: !11, line: 363, type: !5)
!95 = !DILocation(line: 363, column: 9, scope: !67)
!96 = !DILocalVariable(name: "short_too", scope: !67, file: !11, line: 363, type: !5)
!97 = !DILocation(line: 363, column: 18, scope: !67)
!98 = !DILocalVariable(name: "posixly_correct", scope: !67, file: !11, line: 364, type: !5)
!99 = !DILocation(line: 364, column: 9, scope: !67)
!100 = !DILocation(line: 366, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !67, file: !11, line: 366, column: 9)
!102 = !DILocation(line: 366, column: 17, scope: !101)
!103 = !DILocation(line: 366, column: 9, scope: !67)
!104 = !DILocation(line: 367, column: 9, scope: !101)
!105 = !DILocation(line: 373, column: 24, scope: !67)
!106 = !DILocation(line: 373, column: 50, scope: !67)
!107 = !DILocation(line: 373, column: 21, scope: !67)
!108 = !DILocation(line: 375, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !67, file: !11, line: 375, column: 9)
!110 = !DILocation(line: 375, column: 9, scope: !109)
!111 = !DILocation(line: 375, column: 18, scope: !109)
!112 = !DILocation(line: 375, column: 9, scope: !67)
!113 = !DILocation(line: 376, column: 15, scope: !109)
!114 = !DILocation(line: 376, column: 9, scope: !109)
!115 = !DILocation(line: 377, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !11, line: 377, column: 14)
!117 = !DILocation(line: 377, column: 30, scope: !116)
!118 = !DILocation(line: 377, column: 34, scope: !119)
!119 = !DILexicalBlockFile(scope: !116, file: !11, discriminator: 1)
!120 = !DILocation(line: 377, column: 33, scope: !119)
!121 = !DILocation(line: 377, column: 42, scope: !119)
!122 = !DILocation(line: 377, column: 14, scope: !119)
!123 = !DILocation(line: 378, column: 15, scope: !116)
!124 = !DILocation(line: 378, column: 9, scope: !116)
!125 = !DILocation(line: 385, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !67, file: !11, line: 385, column: 9)
!127 = !DILocation(line: 385, column: 9, scope: !126)
!128 = !DILocation(line: 385, column: 18, scope: !126)
!129 = !DILocation(line: 385, column: 25, scope: !126)
!130 = !DILocation(line: 385, column: 29, scope: !131)
!131 = !DILexicalBlockFile(scope: !126, file: !11, discriminator: 1)
!132 = !DILocation(line: 385, column: 28, scope: !131)
!133 = !DILocation(line: 385, column: 37, scope: !131)
!134 = !DILocation(line: 385, column: 9, scope: !131)
!135 = !DILocation(line: 386, column: 16, scope: !126)
!136 = !DILocation(line: 386, column: 9, scope: !126)
!137 = !DILocation(line: 392, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !67, file: !11, line: 392, column: 9)
!139 = !DILocation(line: 392, column: 16, scope: !138)
!140 = !DILocation(line: 392, column: 9, scope: !67)
!141 = !DILocation(line: 393, column: 27, scope: !138)
!142 = !DILocation(line: 393, column: 16, scope: !138)
!143 = !DILocation(line: 393, column: 9, scope: !138)
!144 = !DILocation(line: 395, column: 12, scope: !67)
!145 = !DILocation(line: 396, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !67, file: !11, line: 396, column: 9)
!147 = !DILocation(line: 396, column: 9, scope: !67)
!148 = !DILocation(line: 397, column: 35, scope: !146)
!149 = !DILocation(line: 397, column: 22, scope: !146)
!150 = !DILocation(line: 397, column: 9, scope: !146)
!151 = !DILocation(line: 396, column: 9, scope: !152)
!152 = !DILexicalBlockFile(scope: !146, file: !11, discriminator: 1)
!153 = !DILocation(line: 399, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !67, file: !11, line: 399, column: 9)
!155 = !DILocation(line: 399, column: 18, scope: !154)
!156 = !DILocation(line: 399, column: 23, scope: !157)
!157 = !DILexicalBlockFile(scope: !154, file: !11, discriminator: 1)
!158 = !DILocation(line: 399, column: 22, scope: !157)
!159 = !DILocation(line: 399, column: 9, scope: !157)
!160 = !DILocation(line: 400, column: 18, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !11, line: 399, column: 30)
!162 = !DILocation(line: 401, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !161, file: !11, line: 401, column: 13)
!164 = !DILocation(line: 401, column: 23, scope: !163)
!165 = !DILocation(line: 401, column: 20, scope: !163)
!166 = !DILocation(line: 401, column: 13, scope: !161)
!167 = !DILocation(line: 402, column: 19, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !11, line: 401, column: 30)
!169 = !DILocation(line: 403, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !11, line: 403, column: 17)
!171 = !DILocation(line: 403, column: 28, scope: !170)
!172 = !DILocation(line: 403, column: 17, scope: !168)
!173 = !DILocation(line: 405, column: 30, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !11, line: 403, column: 35)
!175 = !DILocation(line: 405, column: 44, scope: !174)
!176 = !DILocation(line: 406, column: 21, scope: !174)
!177 = !DILocation(line: 406, column: 29, scope: !174)
!178 = !DILocation(line: 405, column: 17, scope: !174)
!179 = !DILocation(line: 407, column: 27, scope: !174)
!180 = !DILocation(line: 407, column: 40, scope: !174)
!181 = !DILocation(line: 407, column: 38, scope: !174)
!182 = !DILocation(line: 407, column: 24, scope: !174)
!183 = !DILocation(line: 408, column: 13, scope: !174)
!184 = !DILocation(line: 409, column: 22, scope: !185)
!185 = distinct !DILexicalBlock(scope: !170, file: !11, line: 409, column: 22)
!186 = !DILocation(line: 409, column: 35, scope: !185)
!187 = !DILocation(line: 409, column: 22, scope: !170)
!188 = !DILocation(line: 414, column: 26, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !11, line: 409, column: 42)
!190 = !DILocation(line: 414, column: 24, scope: !189)
!191 = !DILocation(line: 415, column: 13, scope: !189)
!192 = !DILocation(line: 416, column: 39, scope: !168)
!193 = !DILocation(line: 416, column: 26, scope: !168)
!194 = !DILocation(line: 417, column: 13, scope: !168)
!195 = !DILocation(line: 419, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !161, file: !11, line: 419, column: 13)
!197 = !DILocation(line: 419, column: 23, scope: !196)
!198 = !DILocation(line: 419, column: 21, scope: !196)
!199 = !DILocation(line: 419, column: 13, scope: !196)
!200 = !DILocation(line: 419, column: 38, scope: !196)
!201 = !DILocation(line: 419, column: 45, scope: !196)
!202 = !DILocation(line: 421, column: 13, scope: !196)
!203 = !DILocation(line: 421, column: 22, scope: !196)
!204 = !DILocation(line: 419, column: 13, scope: !205)
!205 = !DILexicalBlockFile(scope: !161, file: !11, discriminator: 1)
!206 = !DILocation(line: 425, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !196, file: !11, line: 421, column: 31)
!208 = !DILocation(line: 426, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !11, line: 426, column: 17)
!210 = !DILocation(line: 426, column: 23, scope: !209)
!211 = !DILocation(line: 426, column: 17, scope: !207)
!212 = !DILocation(line: 431, column: 38, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !11, line: 426, column: 31)
!214 = !DILocation(line: 431, column: 26, scope: !213)
!215 = !DILocation(line: 431, column: 24, scope: !213)
!216 = !DILocation(line: 432, column: 17, scope: !213)
!217 = !DILocation(line: 434, column: 19, scope: !218)
!218 = distinct !DILexicalBlock(scope: !207, file: !11, line: 434, column: 17)
!219 = !DILocation(line: 434, column: 25, scope: !218)
!220 = !DILocation(line: 434, column: 17, scope: !207)
!221 = !DILocation(line: 439, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !11, line: 434, column: 34)
!223 = !DILocation(line: 442, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !207, file: !11, line: 442, column: 17)
!225 = !DILocation(line: 442, column: 30, scope: !224)
!226 = !DILocation(line: 442, column: 17, scope: !207)
!227 = !DILocation(line: 443, column: 32, scope: !224)
!228 = !DILocation(line: 443, column: 30, scope: !224)
!229 = !DILocation(line: 443, column: 17, scope: !224)
!230 = !DILocation(line: 444, column: 22, scope: !231)
!231 = distinct !DILexicalBlock(scope: !224, file: !11, line: 444, column: 22)
!232 = !DILocation(line: 444, column: 33, scope: !231)
!233 = !DILocation(line: 444, column: 22, scope: !224)
!234 = !DILocation(line: 445, column: 30, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !11, line: 444, column: 40)
!236 = !DILocation(line: 445, column: 44, scope: !235)
!237 = !DILocation(line: 446, column: 21, scope: !235)
!238 = !DILocation(line: 446, column: 29, scope: !235)
!239 = !DILocation(line: 445, column: 17, scope: !235)
!240 = !DILocation(line: 447, column: 32, scope: !235)
!241 = !DILocation(line: 448, column: 22, scope: !235)
!242 = !DILocation(line: 448, column: 35, scope: !235)
!243 = !DILocation(line: 448, column: 33, scope: !235)
!244 = !DILocation(line: 447, column: 39, scope: !235)
!245 = !DILocation(line: 447, column: 30, scope: !235)
!246 = !DILocation(line: 449, column: 28, scope: !235)
!247 = !DILocation(line: 450, column: 13, scope: !235)
!248 = !DILocation(line: 451, column: 19, scope: !207)
!249 = !DILocation(line: 453, column: 13, scope: !207)
!250 = !DILocation(line: 455, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !161, file: !11, line: 455, column: 13)
!252 = !DILocation(line: 455, column: 26, scope: !251)
!253 = !DILocation(line: 455, column: 32, scope: !251)
!254 = !DILocation(line: 455, column: 35, scope: !255)
!255 = !DILexicalBlockFile(scope: !251, file: !11, discriminator: 1)
!256 = !DILocation(line: 455, column: 46, scope: !255)
!257 = !DILocation(line: 455, column: 13, scope: !255)
!258 = !DILocation(line: 456, column: 26, scope: !251)
!259 = !DILocation(line: 456, column: 24, scope: !251)
!260 = !DILocation(line: 456, column: 13, scope: !251)
!261 = !DILocation(line: 461, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !161, file: !11, line: 461, column: 13)
!263 = !DILocation(line: 461, column: 22, scope: !262)
!264 = !DILocation(line: 461, column: 30, scope: !262)
!265 = !DILocation(line: 461, column: 34, scope: !266)
!266 = !DILexicalBlockFile(scope: !262, file: !11, discriminator: 1)
!267 = !DILocation(line: 461, column: 33, scope: !266)
!268 = !DILocation(line: 461, column: 42, scope: !266)
!269 = !DILocation(line: 461, column: 49, scope: !266)
!270 = !DILocation(line: 461, column: 52, scope: !271)
!271 = !DILexicalBlockFile(scope: !262, file: !11, discriminator: 2)
!272 = !DILocation(line: 461, column: 61, scope: !271)
!273 = !DILocation(line: 461, column: 13, scope: !271)
!274 = !DILocation(line: 462, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !262, file: !11, line: 461, column: 70)
!276 = !DILocation(line: 463, column: 19, scope: !275)
!277 = !DILocation(line: 468, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !11, line: 468, column: 17)
!279 = !DILocation(line: 468, column: 28, scope: !278)
!280 = !DILocation(line: 468, column: 17, scope: !275)
!281 = !DILocation(line: 469, column: 30, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !11, line: 468, column: 35)
!283 = !DILocation(line: 469, column: 44, scope: !282)
!284 = !DILocation(line: 470, column: 21, scope: !282)
!285 = !DILocation(line: 470, column: 29, scope: !282)
!286 = !DILocation(line: 469, column: 17, scope: !282)
!287 = !DILocation(line: 471, column: 27, scope: !282)
!288 = !DILocation(line: 471, column: 40, scope: !282)
!289 = !DILocation(line: 471, column: 38, scope: !282)
!290 = !DILocation(line: 471, column: 24, scope: !282)
!291 = !DILocation(line: 472, column: 13, scope: !282)
!292 = !DILocation(line: 473, column: 39, scope: !275)
!293 = !DILocation(line: 473, column: 26, scope: !275)
!294 = !DILocation(line: 474, column: 13, scope: !275)
!295 = !DILocation(line: 476, column: 5, scope: !161)
!296 = !DILocation(line: 484, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !67, file: !11, line: 484, column: 9)
!298 = !DILocation(line: 484, column: 22, scope: !297)
!299 = !DILocation(line: 484, column: 29, scope: !297)
!300 = !DILocation(line: 484, column: 32, scope: !301)
!301 = !DILexicalBlockFile(scope: !297, file: !11, discriminator: 1)
!302 = !DILocation(line: 484, column: 47, scope: !301)
!303 = !DILocation(line: 484, column: 41, scope: !301)
!304 = !DILocation(line: 484, column: 38, scope: !301)
!305 = !DILocation(line: 484, column: 55, scope: !301)
!306 = !DILocation(line: 485, column: 11, scope: !297)
!307 = !DILocation(line: 485, column: 10, scope: !297)
!308 = !DILocation(line: 485, column: 17, scope: !297)
!309 = !DILocation(line: 485, column: 24, scope: !297)
!310 = !DILocation(line: 485, column: 28, scope: !301)
!311 = !DILocation(line: 485, column: 34, scope: !301)
!312 = !DILocation(line: 484, column: 9, scope: !313)
!313 = !DILexicalBlockFile(scope: !67, file: !11, discriminator: 2)
!314 = !DILocation(line: 486, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !297, file: !11, line: 485, column: 44)
!316 = !DILocation(line: 488, column: 21, scope: !315)
!317 = !DILocation(line: 490, column: 14, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !11, line: 490, column: 13)
!319 = !DILocation(line: 490, column: 13, scope: !318)
!320 = !DILocation(line: 490, column: 20, scope: !318)
!321 = !DILocation(line: 490, column: 13, scope: !315)
!322 = !DILocation(line: 491, column: 18, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !11, line: 490, column: 28)
!324 = !DILocation(line: 493, column: 25, scope: !323)
!325 = !DILocation(line: 495, column: 9, scope: !323)
!326 = !DILocation(line: 495, column: 21, scope: !327)
!327 = !DILexicalBlockFile(scope: !328, file: !11, discriminator: 1)
!328 = distinct !DILexicalBlock(scope: !318, file: !11, line: 495, column: 20)
!329 = !DILocation(line: 495, column: 20, scope: !327)
!330 = !DILocation(line: 495, column: 27, scope: !327)
!331 = !DILocation(line: 495, column: 34, scope: !327)
!332 = !DILocation(line: 495, column: 44, scope: !333)
!333 = !DILexicalBlockFile(scope: !328, file: !11, discriminator: 2)
!334 = !DILocation(line: 495, column: 54, scope: !333)
!335 = !DILocation(line: 495, column: 53, scope: !333)
!336 = !DILocation(line: 495, column: 37, scope: !333)
!337 = !DILocation(line: 495, column: 61, scope: !333)
!338 = !DILocation(line: 495, column: 20, scope: !333)
!339 = !DILocation(line: 496, column: 23, scope: !328)
!340 = !DILocation(line: 496, column: 13, scope: !328)
!341 = !DILocation(line: 498, column: 38, scope: !315)
!342 = !DILocation(line: 498, column: 45, scope: !315)
!343 = !DILocation(line: 498, column: 54, scope: !315)
!344 = !DILocation(line: 499, column: 13, scope: !315)
!345 = !DILocation(line: 499, column: 18, scope: !315)
!346 = !DILocation(line: 499, column: 29, scope: !315)
!347 = !DILocation(line: 498, column: 19, scope: !315)
!348 = !DILocation(line: 498, column: 17, scope: !315)
!349 = !DILocation(line: 500, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !315, file: !11, line: 500, column: 13)
!351 = !DILocation(line: 500, column: 21, scope: !350)
!352 = !DILocation(line: 500, column: 13, scope: !315)
!353 = !DILocation(line: 501, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !11, line: 500, column: 28)
!355 = !DILocation(line: 502, column: 21, scope: !354)
!356 = !DILocation(line: 502, column: 13, scope: !354)
!357 = !DILocation(line: 504, column: 5, scope: !315)
!358 = !DILocation(line: 506, column: 31, scope: !359)
!359 = distinct !DILexicalBlock(scope: !67, file: !11, line: 506, column: 9)
!360 = !DILocation(line: 506, column: 25, scope: !359)
!361 = !DILocation(line: 506, column: 20, scope: !359)
!362 = !DILocation(line: 506, column: 18, scope: !359)
!363 = !DILocation(line: 506, column: 35, scope: !359)
!364 = !DILocation(line: 506, column: 47, scope: !359)
!365 = !DILocation(line: 507, column: 10, scope: !359)
!366 = !DILocation(line: 507, column: 18, scope: !359)
!367 = !DILocation(line: 507, column: 30, scope: !359)
!368 = !DILocation(line: 507, column: 34, scope: !369)
!369 = !DILexicalBlockFile(scope: !359, file: !11, discriminator: 1)
!370 = !DILocation(line: 507, column: 33, scope: !369)
!371 = !DILocation(line: 507, column: 40, scope: !369)
!372 = !DILocation(line: 507, column: 49, scope: !369)
!373 = !DILocation(line: 508, column: 30, scope: !359)
!374 = !DILocation(line: 508, column: 39, scope: !359)
!375 = !DILocation(line: 508, column: 23, scope: !359)
!376 = !DILocation(line: 508, column: 14, scope: !359)
!377 = !DILocation(line: 508, column: 49, scope: !359)
!378 = !DILocation(line: 506, column: 9, scope: !379)
!379 = !DILexicalBlockFile(scope: !67, file: !11, discriminator: 1)
!380 = !DILocation(line: 514, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !11, line: 514, column: 13)
!382 = distinct !DILexicalBlock(scope: !359, file: !11, line: 508, column: 57)
!383 = !DILocation(line: 514, column: 21, scope: !381)
!384 = !DILocation(line: 514, column: 33, scope: !381)
!385 = !DILocation(line: 514, column: 37, scope: !386)
!386 = !DILexicalBlockFile(scope: !381, file: !11, discriminator: 1)
!387 = !DILocation(line: 514, column: 36, scope: !386)
!388 = !DILocation(line: 514, column: 43, scope: !386)
!389 = !DILocation(line: 514, column: 13, scope: !386)
!390 = !DILocation(line: 515, column: 13, scope: !381)
!391 = !DILocation(line: 516, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !11, line: 516, column: 13)
!393 = !DILocation(line: 516, column: 14, scope: !392)
!394 = !DILocation(line: 516, column: 13, scope: !382)
!395 = !DILocation(line: 517, column: 13, scope: !392)
!396 = !DILocation(line: 519, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !382, file: !11, line: 519, column: 13)
!398 = !DILocation(line: 519, column: 14, scope: !397)
!399 = !DILocation(line: 519, column: 23, scope: !397)
!400 = !DILocation(line: 519, column: 28, scope: !401)
!401 = !DILexicalBlockFile(scope: !397, file: !11, discriminator: 1)
!402 = !DILocation(line: 519, column: 27, scope: !401)
!403 = !DILocation(line: 519, column: 36, scope: !401)
!404 = !DILocation(line: 519, column: 13, scope: !401)
!405 = !DILocation(line: 520, column: 19, scope: !397)
!406 = !DILocation(line: 521, column: 19, scope: !397)
!407 = !DILocation(line: 520, column: 13, scope: !397)
!408 = !DILocation(line: 526, column: 18, scope: !382)
!409 = !DILocation(line: 526, column: 16, scope: !382)
!410 = !DILocation(line: 527, column: 9, scope: !382)
!411 = !DILocation(line: 529, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !67, file: !11, line: 529, column: 9)
!413 = !DILocation(line: 529, column: 22, scope: !412)
!414 = !DILocation(line: 529, column: 29, scope: !412)
!415 = !DILocation(line: 529, column: 32, scope: !416)
!416 = !DILexicalBlockFile(scope: !412, file: !11, discriminator: 1)
!417 = !DILocation(line: 529, column: 40, scope: !416)
!418 = !DILocation(line: 529, column: 47, scope: !416)
!419 = !DILocation(line: 529, column: 50, scope: !420)
!420 = !DILexicalBlockFile(scope: !412, file: !11, discriminator: 2)
!421 = !DILocation(line: 529, column: 57, scope: !420)
!422 = !DILocation(line: 529, column: 9, scope: !420)
!423 = !DILocation(line: 531, column: 14, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !11, line: 531, column: 13)
!425 = distinct !DILexicalBlock(scope: !412, file: !11, line: 529, column: 65)
!426 = !DILocation(line: 531, column: 13, scope: !424)
!427 = !DILocation(line: 531, column: 13, scope: !425)
!428 = !DILocation(line: 531, column: 13, scope: !429)
!429 = !DILexicalBlockFile(scope: !425, file: !11, discriminator: 1)
!430 = !DILocation(line: 533, column: 18, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !11, line: 533, column: 18)
!432 = !DILocation(line: 533, column: 30, scope: !431)
!433 = !DILocation(line: 533, column: 27, scope: !431)
!434 = !DILocation(line: 533, column: 18, scope: !424)
!435 = !DILocation(line: 534, column: 19, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !11, line: 533, column: 37)
!437 = !DILocation(line: 535, column: 19, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !11, line: 535, column: 17)
!439 = !DILocation(line: 535, column: 18, scope: !438)
!440 = !DILocation(line: 535, column: 27, scope: !438)
!441 = !DILocation(line: 535, column: 32, scope: !442)
!442 = !DILexicalBlockFile(scope: !438, file: !11, discriminator: 1)
!443 = !DILocation(line: 535, column: 31, scope: !442)
!444 = !DILocation(line: 535, column: 40, scope: !442)
!445 = !DILocation(line: 535, column: 17, scope: !442)
!446 = !DILocation(line: 536, column: 35, scope: !438)
!447 = !DILocation(line: 536, column: 17, scope: !438)
!448 = !DILocation(line: 537, column: 22, scope: !436)
!449 = !DILocation(line: 537, column: 20, scope: !436)
!450 = !DILocation(line: 538, column: 24, scope: !436)
!451 = !DILocation(line: 538, column: 23, scope: !436)
!452 = !DILocation(line: 538, column: 32, scope: !436)
!453 = !DILocation(line: 538, column: 22, scope: !436)
!454 = !DILocation(line: 538, column: 13, scope: !436)
!455 = !DILocation(line: 540, column: 27, scope: !431)
!456 = !DILocation(line: 540, column: 21, scope: !431)
!457 = !DILocation(line: 540, column: 19, scope: !431)
!458 = !DILocation(line: 542, column: 21, scope: !425)
!459 = !DILocation(line: 544, column: 38, scope: !425)
!460 = !DILocation(line: 544, column: 45, scope: !425)
!461 = !DILocation(line: 544, column: 54, scope: !425)
!462 = !DILocation(line: 545, column: 13, scope: !425)
!463 = !DILocation(line: 545, column: 21, scope: !425)
!464 = !DILocation(line: 544, column: 19, scope: !425)
!465 = !DILocation(line: 544, column: 17, scope: !425)
!466 = !DILocation(line: 546, column: 15, scope: !425)
!467 = !DILocation(line: 547, column: 17, scope: !425)
!468 = !DILocation(line: 547, column: 9, scope: !425)
!469 = !DILocation(line: 549, column: 10, scope: !470)
!470 = distinct !DILexicalBlock(scope: !67, file: !11, line: 549, column: 9)
!471 = !DILocation(line: 549, column: 9, scope: !470)
!472 = !DILocation(line: 549, column: 16, scope: !470)
!473 = !DILocation(line: 549, column: 9, scope: !67)
!474 = !DILocation(line: 550, column: 15, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !11, line: 550, column: 13)
!476 = distinct !DILexicalBlock(scope: !470, file: !11, line: 549, column: 24)
!477 = !DILocation(line: 550, column: 14, scope: !475)
!478 = !DILocation(line: 550, column: 13, scope: !476)
!479 = !DILocation(line: 551, column: 13, scope: !475)
!480 = !DILocation(line: 552, column: 5, scope: !476)
!481 = !DILocation(line: 553, column: 16, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !11, line: 552, column: 12)
!483 = !DILocation(line: 554, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !11, line: 554, column: 13)
!485 = !DILocation(line: 554, column: 13, scope: !484)
!486 = !DILocation(line: 554, column: 13, scope: !482)
!487 = !DILocation(line: 555, column: 22, scope: !484)
!488 = !DILocation(line: 555, column: 20, scope: !484)
!489 = !DILocation(line: 555, column: 13, scope: !484)
!490 = !DILocation(line: 556, column: 18, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !11, line: 556, column: 18)
!492 = !DILocation(line: 556, column: 25, scope: !491)
!493 = !DILocation(line: 556, column: 18, scope: !484)
!494 = !DILocation(line: 557, column: 17, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !11, line: 557, column: 17)
!496 = distinct !DILexicalBlock(scope: !491, file: !11, line: 556, column: 33)
!497 = !DILocation(line: 557, column: 29, scope: !495)
!498 = !DILocation(line: 557, column: 26, scope: !495)
!499 = !DILocation(line: 557, column: 17, scope: !496)
!500 = !DILocation(line: 558, column: 23, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !11, line: 557, column: 36)
!502 = !DILocation(line: 559, column: 23, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !11, line: 559, column: 21)
!504 = !DILocation(line: 559, column: 22, scope: !503)
!505 = !DILocation(line: 559, column: 31, scope: !503)
!506 = !DILocation(line: 559, column: 36, scope: !507)
!507 = !DILexicalBlockFile(scope: !503, file: !11, discriminator: 1)
!508 = !DILocation(line: 559, column: 35, scope: !507)
!509 = !DILocation(line: 559, column: 44, scope: !507)
!510 = !DILocation(line: 559, column: 21, scope: !507)
!511 = !DILocation(line: 560, column: 39, scope: !503)
!512 = !DILocation(line: 560, column: 21, scope: !503)
!513 = !DILocation(line: 561, column: 26, scope: !501)
!514 = !DILocation(line: 561, column: 24, scope: !501)
!515 = !DILocation(line: 562, column: 28, scope: !501)
!516 = !DILocation(line: 562, column: 27, scope: !501)
!517 = !DILocation(line: 562, column: 36, scope: !501)
!518 = !DILocation(line: 562, column: 26, scope: !501)
!519 = !DILocation(line: 562, column: 17, scope: !501)
!520 = !DILocation(line: 564, column: 32, scope: !495)
!521 = !DILocation(line: 564, column: 26, scope: !495)
!522 = !DILocation(line: 564, column: 24, scope: !495)
!523 = !DILocation(line: 565, column: 9, scope: !496)
!524 = !DILocation(line: 566, column: 15, scope: !482)
!525 = !DILocation(line: 567, column: 9, scope: !482)
!526 = !DILocation(line: 570, column: 13, scope: !67)
!527 = !DILocation(line: 570, column: 5, scope: !67)
!528 = !DILocation(line: 571, column: 1, scope: !67)
!529 = distinct !DISubprogram(name: "getopt_long", scope: !11, file: !11, line: 601, type: !530, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!530 = !DISubroutineType(types: !531)
!531 = !{!5, !5, !52, !54, !70, !78}
!532 = !DILocalVariable(name: "nargc", arg: 1, scope: !529, file: !11, line: 601, type: !5)
!533 = !DILocation(line: 601, column: 17, scope: !529)
!534 = !DILocalVariable(name: "nargv", arg: 2, scope: !529, file: !11, line: 601, type: !52)
!535 = !DILocation(line: 601, column: 38, scope: !529)
!536 = !DILocalVariable(name: "options", arg: 3, scope: !529, file: !11, line: 601, type: !54)
!537 = !DILocation(line: 601, column: 57, scope: !529)
!538 = !DILocalVariable(name: "long_options", arg: 4, scope: !529, file: !11, line: 602, type: !70)
!539 = !DILocation(line: 602, column: 26, scope: !529)
!540 = !DILocalVariable(name: "idx", arg: 5, scope: !529, file: !11, line: 602, type: !78)
!541 = !DILocation(line: 602, column: 45, scope: !529)
!542 = !DILocation(line: 605, column: 29, scope: !529)
!543 = !DILocation(line: 605, column: 36, scope: !529)
!544 = !DILocation(line: 605, column: 43, scope: !529)
!545 = !DILocation(line: 605, column: 52, scope: !529)
!546 = !DILocation(line: 605, column: 66, scope: !529)
!547 = !DILocation(line: 605, column: 13, scope: !529)
!548 = !DILocation(line: 605, column: 5, scope: !529)
!549 = distinct !DISubprogram(name: "getopt_long_only", scope: !11, file: !11, line: 614, type: !530, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!550 = !DILocalVariable(name: "nargc", arg: 1, scope: !549, file: !11, line: 614, type: !5)
!551 = !DILocation(line: 614, column: 22, scope: !549)
!552 = !DILocalVariable(name: "nargv", arg: 2, scope: !549, file: !11, line: 614, type: !52)
!553 = !DILocation(line: 614, column: 43, scope: !549)
!554 = !DILocalVariable(name: "options", arg: 3, scope: !549, file: !11, line: 614, type: !54)
!555 = !DILocation(line: 614, column: 62, scope: !549)
!556 = !DILocalVariable(name: "long_options", arg: 4, scope: !549, file: !11, line: 615, type: !70)
!557 = !DILocation(line: 615, column: 26, scope: !549)
!558 = !DILocalVariable(name: "idx", arg: 5, scope: !549, file: !11, line: 615, type: !78)
!559 = !DILocation(line: 615, column: 45, scope: !549)
!560 = !DILocation(line: 618, column: 29, scope: !549)
!561 = !DILocation(line: 618, column: 36, scope: !549)
!562 = !DILocation(line: 618, column: 43, scope: !549)
!563 = !DILocation(line: 618, column: 52, scope: !549)
!564 = !DILocation(line: 618, column: 66, scope: !549)
!565 = !DILocation(line: 618, column: 13, scope: !549)
!566 = !DILocation(line: 618, column: 5, scope: !549)
!567 = distinct !DISubprogram(name: "permute_args", scope: !11, file: !11, line: 157, type: !568, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !5, !5, !5, !52}
!570 = !DILocalVariable(name: "panonopt_start", arg: 1, scope: !567, file: !11, line: 157, type: !5)
!571 = !DILocation(line: 157, column: 18, scope: !567)
!572 = !DILocalVariable(name: "panonopt_end", arg: 2, scope: !567, file: !11, line: 157, type: !5)
!573 = !DILocation(line: 157, column: 38, scope: !567)
!574 = !DILocalVariable(name: "opt_end", arg: 3, scope: !567, file: !11, line: 157, type: !5)
!575 = !DILocation(line: 157, column: 56, scope: !567)
!576 = !DILocalVariable(name: "nargv", arg: 4, scope: !567, file: !11, line: 158, type: !52)
!577 = !DILocation(line: 158, column: 19, scope: !567)
!578 = !DILocalVariable(name: "cstart", scope: !567, file: !11, line: 160, type: !5)
!579 = !DILocation(line: 160, column: 9, scope: !567)
!580 = !DILocalVariable(name: "cyclelen", scope: !567, file: !11, line: 160, type: !5)
!581 = !DILocation(line: 160, column: 17, scope: !567)
!582 = !DILocalVariable(name: "i", scope: !567, file: !11, line: 160, type: !5)
!583 = !DILocation(line: 160, column: 27, scope: !567)
!584 = !DILocalVariable(name: "j", scope: !567, file: !11, line: 160, type: !5)
!585 = !DILocation(line: 160, column: 30, scope: !567)
!586 = !DILocalVariable(name: "ncycle", scope: !567, file: !11, line: 160, type: !5)
!587 = !DILocation(line: 160, column: 33, scope: !567)
!588 = !DILocalVariable(name: "nnonopts", scope: !567, file: !11, line: 160, type: !5)
!589 = !DILocation(line: 160, column: 41, scope: !567)
!590 = !DILocalVariable(name: "nopts", scope: !567, file: !11, line: 160, type: !5)
!591 = !DILocation(line: 160, column: 51, scope: !567)
!592 = !DILocalVariable(name: "pos", scope: !567, file: !11, line: 160, type: !5)
!593 = !DILocation(line: 160, column: 58, scope: !567)
!594 = !DILocalVariable(name: "swap", scope: !567, file: !11, line: 161, type: !6)
!595 = !DILocation(line: 161, column: 11, scope: !567)
!596 = !DILocation(line: 166, column: 16, scope: !567)
!597 = !DILocation(line: 166, column: 31, scope: !567)
!598 = !DILocation(line: 166, column: 29, scope: !567)
!599 = !DILocation(line: 166, column: 14, scope: !567)
!600 = !DILocation(line: 167, column: 13, scope: !567)
!601 = !DILocation(line: 167, column: 23, scope: !567)
!602 = !DILocation(line: 167, column: 21, scope: !567)
!603 = !DILocation(line: 167, column: 11, scope: !567)
!604 = !DILocation(line: 168, column: 18, scope: !567)
!605 = !DILocation(line: 168, column: 28, scope: !567)
!606 = !DILocation(line: 168, column: 14, scope: !567)
!607 = !DILocation(line: 168, column: 12, scope: !567)
!608 = !DILocation(line: 169, column: 17, scope: !567)
!609 = !DILocation(line: 169, column: 27, scope: !567)
!610 = !DILocation(line: 169, column: 25, scope: !567)
!611 = !DILocation(line: 169, column: 45, scope: !567)
!612 = !DILocation(line: 169, column: 43, scope: !567)
!613 = !DILocation(line: 169, column: 14, scope: !567)
!614 = !DILocation(line: 171, column: 12, scope: !615)
!615 = distinct !DILexicalBlock(scope: !567, file: !11, line: 171, column: 5)
!616 = !DILocation(line: 171, column: 10, scope: !615)
!617 = !DILocation(line: 171, column: 17, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !11, discriminator: 1)
!619 = distinct !DILexicalBlock(scope: !615, file: !11, line: 171, column: 5)
!620 = !DILocation(line: 171, column: 21, scope: !618)
!621 = !DILocation(line: 171, column: 19, scope: !618)
!622 = !DILocation(line: 171, column: 5, scope: !618)
!623 = !DILocation(line: 172, column: 18, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !11, line: 171, column: 34)
!625 = !DILocation(line: 172, column: 31, scope: !624)
!626 = !DILocation(line: 172, column: 30, scope: !624)
!627 = !DILocation(line: 172, column: 16, scope: !624)
!628 = !DILocation(line: 173, column: 15, scope: !624)
!629 = !DILocation(line: 173, column: 13, scope: !624)
!630 = !DILocation(line: 174, column: 16, scope: !631)
!631 = distinct !DILexicalBlock(scope: !624, file: !11, line: 174, column: 9)
!632 = !DILocation(line: 174, column: 14, scope: !631)
!633 = !DILocation(line: 174, column: 21, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !11, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !11, line: 174, column: 9)
!636 = !DILocation(line: 174, column: 25, scope: !634)
!637 = !DILocation(line: 174, column: 23, scope: !634)
!638 = !DILocation(line: 174, column: 9, scope: !634)
!639 = !DILocation(line: 175, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !11, line: 175, column: 17)
!641 = distinct !DILexicalBlock(scope: !635, file: !11, line: 174, column: 40)
!642 = !DILocation(line: 175, column: 24, scope: !640)
!643 = !DILocation(line: 175, column: 21, scope: !640)
!644 = !DILocation(line: 175, column: 17, scope: !641)
!645 = !DILocation(line: 176, column: 24, scope: !640)
!646 = !DILocation(line: 176, column: 21, scope: !640)
!647 = !DILocation(line: 176, column: 17, scope: !640)
!648 = !DILocation(line: 178, column: 24, scope: !640)
!649 = !DILocation(line: 178, column: 21, scope: !640)
!650 = !DILocation(line: 179, column: 26, scope: !641)
!651 = !DILocation(line: 179, column: 20, scope: !641)
!652 = !DILocation(line: 179, column: 18, scope: !641)
!653 = !DILocation(line: 181, column: 44, scope: !641)
!654 = !DILocation(line: 181, column: 38, scope: !641)
!655 = !DILocation(line: 181, column: 31, scope: !641)
!656 = !DILocation(line: 181, column: 13, scope: !641)
!657 = !DILocation(line: 181, column: 24, scope: !641)
!658 = !DILocation(line: 181, column: 36, scope: !641)
!659 = !DILocation(line: 183, column: 40, scope: !641)
!660 = !DILocation(line: 183, column: 30, scope: !641)
!661 = !DILocation(line: 183, column: 13, scope: !641)
!662 = !DILocation(line: 183, column: 23, scope: !641)
!663 = !DILocation(line: 183, column: 38, scope: !641)
!664 = !DILocation(line: 184, column: 9, scope: !641)
!665 = !DILocation(line: 174, column: 36, scope: !666)
!666 = !DILexicalBlockFile(scope: !635, file: !11, discriminator: 2)
!667 = !DILocation(line: 174, column: 9, scope: !666)
!668 = distinct !{!668, !669}
!669 = !DILocation(line: 174, column: 9, scope: !624)
!670 = !DILocation(line: 185, column: 5, scope: !624)
!671 = !DILocation(line: 171, column: 30, scope: !672)
!672 = !DILexicalBlockFile(scope: !619, file: !11, discriminator: 2)
!673 = !DILocation(line: 171, column: 5, scope: !672)
!674 = distinct !{!674, !675}
!675 = !DILocation(line: 171, column: 5, scope: !567)
!676 = !DILocation(line: 186, column: 1, scope: !567)
!677 = distinct !DISubprogram(name: "parse_long_options", scope: !11, file: !11, line: 194, type: !678, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!678 = !DISubroutineType(types: !679)
!679 = !{!5, !52, !54, !70, !78, !5, !5}
!680 = !DILocalVariable(name: "nargv", arg: 1, scope: !677, file: !11, line: 194, type: !52)
!681 = !DILocation(line: 194, column: 34, scope: !677)
!682 = !DILocalVariable(name: "options", arg: 2, scope: !677, file: !11, line: 194, type: !54)
!683 = !DILocation(line: 194, column: 53, scope: !677)
!684 = !DILocalVariable(name: "long_options", arg: 3, scope: !677, file: !11, line: 195, type: !70)
!685 = !DILocation(line: 195, column: 26, scope: !677)
!686 = !DILocalVariable(name: "idx", arg: 4, scope: !677, file: !11, line: 195, type: !78)
!687 = !DILocation(line: 195, column: 45, scope: !677)
!688 = !DILocalVariable(name: "short_too", arg: 5, scope: !677, file: !11, line: 195, type: !5)
!689 = !DILocation(line: 195, column: 54, scope: !677)
!690 = !DILocalVariable(name: "flags", arg: 6, scope: !677, file: !11, line: 195, type: !5)
!691 = !DILocation(line: 195, column: 69, scope: !677)
!692 = !DILocalVariable(name: "current_argv", scope: !677, file: !11, line: 197, type: !6)
!693 = !DILocation(line: 197, column: 11, scope: !677)
!694 = !DILocalVariable(name: "has_equal", scope: !677, file: !11, line: 197, type: !6)
!695 = !DILocation(line: 197, column: 26, scope: !677)
!696 = !DILocalVariable(name: "current_dash", scope: !677, file: !11, line: 199, type: !6)
!697 = !DILocation(line: 199, column: 11, scope: !677)
!698 = !DILocalVariable(name: "current_argv_len", scope: !677, file: !11, line: 201, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !700, line: 216, baseType: !701)
!700 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/matio/[lib]getopt--.libs--libgetopt.a")
!701 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!702 = !DILocation(line: 201, column: 12, scope: !677)
!703 = !DILocalVariable(name: "i", scope: !677, file: !11, line: 202, type: !5)
!704 = !DILocation(line: 202, column: 9, scope: !677)
!705 = !DILocalVariable(name: "match", scope: !677, file: !11, line: 202, type: !5)
!706 = !DILocation(line: 202, column: 12, scope: !677)
!707 = !DILocalVariable(name: "exact_match", scope: !677, file: !11, line: 202, type: !5)
!708 = !DILocation(line: 202, column: 19, scope: !677)
!709 = !DILocalVariable(name: "second_partial_match", scope: !677, file: !11, line: 202, type: !5)
!710 = !DILocation(line: 202, column: 32, scope: !677)
!711 = !DILocation(line: 204, column: 20, scope: !677)
!712 = !DILocation(line: 204, column: 18, scope: !677)
!713 = !DILocation(line: 206, column: 13, scope: !677)
!714 = !DILocation(line: 206, column: 5, scope: !677)
!715 = !DILocation(line: 208, column: 26, scope: !716)
!716 = distinct !DILexicalBlock(scope: !677, file: !11, line: 206, column: 26)
!717 = !DILocation(line: 209, column: 13, scope: !716)
!718 = !DILocation(line: 211, column: 26, scope: !716)
!719 = !DILocation(line: 212, column: 13, scope: !716)
!720 = !DILocation(line: 214, column: 26, scope: !716)
!721 = !DILocation(line: 215, column: 13, scope: !716)
!722 = !DILocation(line: 217, column: 26, scope: !716)
!723 = !DILocation(line: 218, column: 13, scope: !716)
!724 = !DILocation(line: 221, column: 11, scope: !677)
!725 = !DILocation(line: 222, column: 17, scope: !677)
!726 = !DILocation(line: 223, column: 26, scope: !677)
!727 = !DILocation(line: 225, column: 11, scope: !677)
!728 = !DILocation(line: 227, column: 29, scope: !729)
!729 = distinct !DILexicalBlock(scope: !677, file: !11, line: 227, column: 9)
!730 = !DILocation(line: 227, column: 22, scope: !729)
!731 = !DILocation(line: 227, column: 20, scope: !729)
!732 = !DILocation(line: 227, column: 49, scope: !729)
!733 = !DILocation(line: 227, column: 9, scope: !677)
!734 = !DILocation(line: 229, column: 28, scope: !735)
!735 = distinct !DILexicalBlock(scope: !729, file: !11, line: 227, column: 57)
!736 = !DILocation(line: 229, column: 40, scope: !735)
!737 = !DILocation(line: 229, column: 38, scope: !735)
!738 = !DILocation(line: 229, column: 26, scope: !735)
!739 = !DILocation(line: 230, column: 18, scope: !735)
!740 = !DILocation(line: 231, column: 5, scope: !735)
!741 = !DILocation(line: 232, column: 35, scope: !729)
!742 = !DILocation(line: 232, column: 28, scope: !729)
!743 = !DILocation(line: 232, column: 26, scope: !729)
!744 = !DILocation(line: 234, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !677, file: !11, line: 234, column: 5)
!746 = !DILocation(line: 234, column: 10, scope: !745)
!747 = !DILocation(line: 234, column: 30, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !11, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !745, file: !11, line: 234, column: 5)
!750 = !DILocation(line: 234, column: 17, scope: !748)
!751 = !DILocation(line: 234, column: 33, scope: !748)
!752 = !DILocation(line: 234, column: 5, scope: !748)
!753 = !DILocation(line: 236, column: 21, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !11, line: 236, column: 13)
!755 = distinct !DILexicalBlock(scope: !749, file: !11, line: 234, column: 44)
!756 = !DILocation(line: 236, column: 48, scope: !754)
!757 = !DILocation(line: 236, column: 35, scope: !754)
!758 = !DILocation(line: 236, column: 51, scope: !754)
!759 = !DILocation(line: 237, column: 13, scope: !754)
!760 = !DILocation(line: 236, column: 13, scope: !754)
!761 = !DILocation(line: 236, column: 13, scope: !755)
!762 = !DILocation(line: 238, column: 13, scope: !754)
!763 = !DILocation(line: 240, column: 33, scope: !764)
!764 = distinct !DILexicalBlock(scope: !755, file: !11, line: 240, column: 13)
!765 = !DILocation(line: 240, column: 20, scope: !764)
!766 = !DILocation(line: 240, column: 36, scope: !764)
!767 = !DILocation(line: 240, column: 13, scope: !764)
!768 = !DILocation(line: 240, column: 45, scope: !764)
!769 = !DILocation(line: 240, column: 42, scope: !764)
!770 = !DILocation(line: 240, column: 13, scope: !755)
!771 = !DILocation(line: 242, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !11, line: 240, column: 63)
!773 = !DILocation(line: 242, column: 19, scope: !772)
!774 = !DILocation(line: 243, column: 25, scope: !772)
!775 = !DILocation(line: 244, column: 13, scope: !772)
!776 = !DILocation(line: 250, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !755, file: !11, line: 250, column: 13)
!778 = !DILocation(line: 250, column: 23, scope: !777)
!779 = !DILocation(line: 250, column: 26, scope: !780)
!780 = !DILexicalBlockFile(scope: !777, file: !11, discriminator: 1)
!781 = !DILocation(line: 250, column: 43, scope: !780)
!782 = !DILocation(line: 250, column: 13, scope: !780)
!783 = !DILocation(line: 251, column: 13, scope: !777)
!784 = !DILocation(line: 253, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !755, file: !11, line: 253, column: 13)
!786 = !DILocation(line: 253, column: 19, scope: !785)
!787 = !DILocation(line: 253, column: 13, scope: !755)
!788 = !DILocation(line: 254, column: 21, scope: !785)
!789 = !DILocation(line: 254, column: 19, scope: !785)
!790 = !DILocation(line: 254, column: 13, scope: !785)
!791 = !DILocation(line: 255, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !11, line: 255, column: 18)
!793 = !DILocation(line: 255, column: 25, scope: !792)
!794 = !DILocation(line: 255, column: 33, scope: !792)
!795 = !DILocation(line: 256, column: 27, scope: !792)
!796 = !DILocation(line: 256, column: 14, scope: !792)
!797 = !DILocation(line: 256, column: 30, scope: !792)
!798 = !DILocation(line: 257, column: 31, scope: !792)
!799 = !DILocation(line: 257, column: 18, scope: !792)
!800 = !DILocation(line: 257, column: 38, scope: !792)
!801 = !DILocation(line: 256, column: 38, scope: !792)
!802 = !DILocation(line: 257, column: 46, scope: !792)
!803 = !DILocation(line: 258, column: 27, scope: !792)
!804 = !DILocation(line: 258, column: 14, scope: !792)
!805 = !DILocation(line: 258, column: 30, scope: !792)
!806 = !DILocation(line: 258, column: 51, scope: !792)
!807 = !DILocation(line: 258, column: 38, scope: !792)
!808 = !DILocation(line: 258, column: 58, scope: !792)
!809 = !DILocation(line: 258, column: 35, scope: !792)
!810 = !DILocation(line: 258, column: 63, scope: !792)
!811 = !DILocation(line: 259, column: 27, scope: !792)
!812 = !DILocation(line: 259, column: 14, scope: !792)
!813 = !DILocation(line: 259, column: 30, scope: !792)
!814 = !DILocation(line: 259, column: 50, scope: !792)
!815 = !DILocation(line: 259, column: 37, scope: !792)
!816 = !DILocation(line: 259, column: 57, scope: !792)
!817 = !DILocation(line: 259, column: 34, scope: !792)
!818 = !DILocation(line: 255, column: 18, scope: !819)
!819 = !DILexicalBlockFile(scope: !785, file: !11, discriminator: 1)
!820 = !DILocation(line: 260, column: 34, scope: !792)
!821 = !DILocation(line: 260, column: 13, scope: !792)
!822 = !DILocation(line: 261, column: 5, scope: !755)
!823 = !DILocation(line: 234, column: 40, scope: !824)
!824 = !DILexicalBlockFile(scope: !749, file: !11, discriminator: 2)
!825 = !DILocation(line: 234, column: 5, scope: !824)
!826 = distinct !{!826, !827}
!827 = !DILocation(line: 234, column: 5, scope: !677)
!828 = !DILocation(line: 262, column: 10, scope: !829)
!829 = distinct !DILexicalBlock(scope: !677, file: !11, line: 262, column: 9)
!830 = !DILocation(line: 262, column: 22, scope: !829)
!831 = !DILocation(line: 262, column: 25, scope: !832)
!832 = !DILexicalBlockFile(scope: !829, file: !11, discriminator: 1)
!833 = !DILocation(line: 262, column: 9, scope: !832)
!834 = !DILocation(line: 264, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !11, line: 264, column: 13)
!836 = distinct !DILexicalBlock(scope: !829, file: !11, line: 262, column: 47)
!837 = !DILocation(line: 264, column: 14, scope: !835)
!838 = !DILocation(line: 264, column: 23, scope: !835)
!839 = !DILocation(line: 264, column: 28, scope: !840)
!840 = !DILexicalBlockFile(scope: !835, file: !11, discriminator: 1)
!841 = !DILocation(line: 264, column: 27, scope: !840)
!842 = !DILocation(line: 264, column: 36, scope: !840)
!843 = !DILocation(line: 264, column: 13, scope: !840)
!844 = !DILocation(line: 267, column: 18, scope: !835)
!845 = !DILocation(line: 269, column: 23, scope: !835)
!846 = !DILocation(line: 269, column: 18, scope: !835)
!847 = !DILocation(line: 270, column: 18, scope: !835)
!848 = !DILocation(line: 265, column: 13, scope: !835)
!849 = !DILocation(line: 271, column: 16, scope: !836)
!850 = !DILocation(line: 272, column: 9, scope: !836)
!851 = !DILocation(line: 274, column: 9, scope: !852)
!852 = distinct !DILexicalBlock(scope: !677, file: !11, line: 274, column: 9)
!853 = !DILocation(line: 274, column: 15, scope: !852)
!854 = !DILocation(line: 274, column: 9, scope: !677)
!855 = !DILocation(line: 275, column: 26, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !11, line: 275, column: 13)
!857 = distinct !DILexicalBlock(scope: !852, file: !11, line: 274, column: 22)
!858 = !DILocation(line: 275, column: 13, scope: !856)
!859 = !DILocation(line: 275, column: 33, scope: !856)
!860 = !DILocation(line: 275, column: 41, scope: !856)
!861 = !DILocation(line: 276, column: 13, scope: !856)
!862 = !DILocation(line: 276, column: 16, scope: !863)
!863 = !DILexicalBlockFile(scope: !856, file: !11, discriminator: 1)
!864 = !DILocation(line: 275, column: 13, scope: !865)
!865 = !DILexicalBlockFile(scope: !857, file: !11, discriminator: 1)
!866 = !DILocation(line: 277, column: 19, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !11, line: 277, column: 17)
!868 = distinct !DILexicalBlock(scope: !856, file: !11, line: 276, column: 27)
!869 = !DILocation(line: 277, column: 18, scope: !867)
!870 = !DILocation(line: 277, column: 27, scope: !867)
!871 = !DILocation(line: 277, column: 32, scope: !872)
!872 = !DILexicalBlockFile(scope: !867, file: !11, discriminator: 1)
!873 = !DILocation(line: 277, column: 31, scope: !872)
!874 = !DILocation(line: 277, column: 40, scope: !872)
!875 = !DILocation(line: 277, column: 17, scope: !872)
!876 = !DILocation(line: 280, column: 22, scope: !867)
!877 = !DILocation(line: 282, column: 27, scope: !867)
!878 = !DILocation(line: 282, column: 22, scope: !867)
!879 = !DILocation(line: 283, column: 22, scope: !867)
!880 = !DILocation(line: 278, column: 17, scope: !867)
!881 = !DILocation(line: 287, column: 30, scope: !882)
!882 = distinct !DILexicalBlock(scope: !868, file: !11, line: 287, column: 17)
!883 = !DILocation(line: 287, column: 17, scope: !882)
!884 = !DILocation(line: 287, column: 37, scope: !882)
!885 = !DILocation(line: 287, column: 42, scope: !882)
!886 = !DILocation(line: 287, column: 17, scope: !868)
!887 = !DILocation(line: 288, column: 39, scope: !882)
!888 = !DILocation(line: 288, column: 26, scope: !882)
!889 = !DILocation(line: 288, column: 46, scope: !882)
!890 = !DILocation(line: 288, column: 24, scope: !882)
!891 = !DILocation(line: 288, column: 17, scope: !882)
!892 = !DILocation(line: 290, column: 24, scope: !882)
!893 = !DILocation(line: 292, column: 13, scope: !868)
!894 = !DILocation(line: 297, column: 26, scope: !895)
!895 = distinct !DILexicalBlock(scope: !857, file: !11, line: 297, column: 13)
!896 = !DILocation(line: 297, column: 13, scope: !895)
!897 = !DILocation(line: 297, column: 33, scope: !895)
!898 = !DILocation(line: 297, column: 41, scope: !895)
!899 = !DILocation(line: 297, column: 46, scope: !895)
!900 = !DILocation(line: 298, column: 26, scope: !895)
!901 = !DILocation(line: 298, column: 13, scope: !895)
!902 = !DILocation(line: 298, column: 33, scope: !895)
!903 = !DILocation(line: 298, column: 41, scope: !895)
!904 = !DILocation(line: 297, column: 13, scope: !865)
!905 = !DILocation(line: 299, column: 17, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !11, line: 299, column: 17)
!907 = distinct !DILexicalBlock(scope: !895, file: !11, line: 298, column: 47)
!908 = !DILocation(line: 299, column: 17, scope: !907)
!909 = !DILocation(line: 300, column: 26, scope: !906)
!910 = !DILocation(line: 300, column: 24, scope: !906)
!911 = !DILocation(line: 300, column: 17, scope: !906)
!912 = !DILocation(line: 301, column: 35, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !11, line: 301, column: 22)
!914 = !DILocation(line: 301, column: 22, scope: !913)
!915 = !DILocation(line: 301, column: 42, scope: !913)
!916 = !DILocation(line: 301, column: 50, scope: !913)
!917 = !DILocation(line: 301, column: 22, scope: !906)
!918 = !DILocation(line: 306, column: 38, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !11, line: 302, column: 20)
!920 = !DILocation(line: 306, column: 26, scope: !919)
!921 = !DILocation(line: 306, column: 24, scope: !919)
!922 = !DILocation(line: 307, column: 13, scope: !919)
!923 = !DILocation(line: 308, column: 9, scope: !907)
!924 = !DILocation(line: 309, column: 27, scope: !925)
!925 = distinct !DILexicalBlock(scope: !857, file: !11, line: 309, column: 13)
!926 = !DILocation(line: 309, column: 14, scope: !925)
!927 = !DILocation(line: 309, column: 34, scope: !925)
!928 = !DILocation(line: 309, column: 42, scope: !925)
!929 = !DILocation(line: 310, column: 13, scope: !925)
!930 = !DILocation(line: 310, column: 17, scope: !931)
!931 = !DILexicalBlockFile(scope: !925, file: !11, discriminator: 1)
!932 = !DILocation(line: 310, column: 24, scope: !931)
!933 = !DILocation(line: 309, column: 13, scope: !865)
!934 = !DILocation(line: 315, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !11, line: 315, column: 17)
!936 = distinct !DILexicalBlock(scope: !925, file: !11, line: 310, column: 33)
!937 = !DILocation(line: 315, column: 18, scope: !935)
!938 = !DILocation(line: 315, column: 27, scope: !935)
!939 = !DILocation(line: 315, column: 32, scope: !940)
!940 = !DILexicalBlockFile(scope: !935, file: !11, discriminator: 1)
!941 = !DILocation(line: 315, column: 31, scope: !940)
!942 = !DILocation(line: 315, column: 40, scope: !940)
!943 = !DILocation(line: 315, column: 17, scope: !940)
!944 = !DILocation(line: 318, column: 21, scope: !935)
!945 = !DILocation(line: 320, column: 21, scope: !935)
!946 = !DILocation(line: 316, column: 17, scope: !935)
!947 = !DILocation(line: 324, column: 30, scope: !948)
!948 = distinct !DILexicalBlock(scope: !936, file: !11, line: 324, column: 17)
!949 = !DILocation(line: 324, column: 17, scope: !948)
!950 = !DILocation(line: 324, column: 37, scope: !948)
!951 = !DILocation(line: 324, column: 42, scope: !948)
!952 = !DILocation(line: 324, column: 17, scope: !936)
!953 = !DILocation(line: 325, column: 39, scope: !948)
!954 = !DILocation(line: 325, column: 26, scope: !948)
!955 = !DILocation(line: 325, column: 46, scope: !948)
!956 = !DILocation(line: 325, column: 24, scope: !948)
!957 = !DILocation(line: 325, column: 17, scope: !948)
!958 = !DILocation(line: 327, column: 24, scope: !948)
!959 = !DILocation(line: 328, column: 13, scope: !936)
!960 = !DILocation(line: 329, column: 24, scope: !936)
!961 = !DILocation(line: 329, column: 23, scope: !936)
!962 = !DILocation(line: 329, column: 32, scope: !936)
!963 = !DILocation(line: 329, column: 22, scope: !936)
!964 = !DILocation(line: 329, column: 13, scope: !936)
!965 = !DILocation(line: 331, column: 5, scope: !857)
!966 = !DILocation(line: 332, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !11, line: 332, column: 13)
!968 = distinct !DILexicalBlock(scope: !852, file: !11, line: 331, column: 12)
!969 = !DILocation(line: 332, column: 13, scope: !968)
!970 = !DILocation(line: 333, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !11, line: 332, column: 24)
!972 = !DILocation(line: 334, column: 13, scope: !971)
!973 = !DILocation(line: 336, column: 15, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !11, line: 336, column: 13)
!975 = !DILocation(line: 336, column: 14, scope: !974)
!976 = !DILocation(line: 336, column: 23, scope: !974)
!977 = !DILocation(line: 336, column: 28, scope: !978)
!978 = !DILexicalBlockFile(scope: !974, file: !11, discriminator: 1)
!979 = !DILocation(line: 336, column: 27, scope: !978)
!980 = !DILocation(line: 336, column: 36, scope: !978)
!981 = !DILocation(line: 336, column: 13, scope: !978)
!982 = !DILocation(line: 339, column: 19, scope: !974)
!983 = !DILocation(line: 341, column: 19, scope: !974)
!984 = !DILocation(line: 337, column: 13, scope: !974)
!985 = !DILocation(line: 342, column: 16, scope: !968)
!986 = !DILocation(line: 343, column: 9, scope: !968)
!987 = !DILocation(line: 345, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !677, file: !11, line: 345, column: 9)
!989 = !DILocation(line: 345, column: 9, scope: !677)
!990 = !DILocation(line: 346, column: 16, scope: !988)
!991 = !DILocation(line: 346, column: 10, scope: !988)
!992 = !DILocation(line: 346, column: 14, scope: !988)
!993 = !DILocation(line: 346, column: 9, scope: !988)
!994 = !DILocation(line: 347, column: 22, scope: !995)
!995 = distinct !DILexicalBlock(scope: !677, file: !11, line: 347, column: 9)
!996 = !DILocation(line: 347, column: 9, scope: !995)
!997 = !DILocation(line: 347, column: 29, scope: !995)
!998 = !DILocation(line: 347, column: 9, scope: !677)
!999 = !DILocation(line: 348, column: 50, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !11, line: 347, column: 35)
!1001 = !DILocation(line: 348, column: 37, scope: !1000)
!1002 = !DILocation(line: 348, column: 57, scope: !1000)
!1003 = !DILocation(line: 348, column: 23, scope: !1000)
!1004 = !DILocation(line: 348, column: 10, scope: !1000)
!1005 = !DILocation(line: 348, column: 30, scope: !1000)
!1006 = !DILocation(line: 348, column: 35, scope: !1000)
!1007 = !DILocation(line: 349, column: 9, scope: !1000)
!1008 = !DILocation(line: 351, column: 30, scope: !995)
!1009 = !DILocation(line: 351, column: 17, scope: !995)
!1010 = !DILocation(line: 351, column: 37, scope: !995)
!1011 = !DILocation(line: 351, column: 9, scope: !995)
!1012 = !DILocation(line: 352, column: 1, scope: !677)
!1013 = distinct !DISubprogram(name: "gcd", scope: !11, file: !11, line: 137, type: !1014, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!5, !5, !5}
!1016 = !DILocalVariable(name: "a", arg: 1, scope: !1013, file: !11, line: 137, type: !5)
!1017 = !DILocation(line: 137, column: 9, scope: !1013)
!1018 = !DILocalVariable(name: "b", arg: 2, scope: !1013, file: !11, line: 137, type: !5)
!1019 = !DILocation(line: 137, column: 16, scope: !1013)
!1020 = !DILocalVariable(name: "c", scope: !1013, file: !11, line: 139, type: !5)
!1021 = !DILocation(line: 139, column: 9, scope: !1013)
!1022 = !DILocation(line: 141, column: 9, scope: !1013)
!1023 = !DILocation(line: 141, column: 13, scope: !1013)
!1024 = !DILocation(line: 141, column: 11, scope: !1013)
!1025 = !DILocation(line: 141, column: 7, scope: !1013)
!1026 = !DILocation(line: 142, column: 5, scope: !1013)
!1027 = !DILocation(line: 142, column: 12, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1013, file: !11, discriminator: 1)
!1029 = !DILocation(line: 142, column: 14, scope: !1028)
!1030 = !DILocation(line: 142, column: 5, scope: !1028)
!1031 = !DILocation(line: 143, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1013, file: !11, line: 142, column: 20)
!1033 = !DILocation(line: 143, column: 11, scope: !1032)
!1034 = !DILocation(line: 144, column: 13, scope: !1032)
!1035 = !DILocation(line: 144, column: 11, scope: !1032)
!1036 = !DILocation(line: 145, column: 13, scope: !1032)
!1037 = !DILocation(line: 145, column: 17, scope: !1032)
!1038 = !DILocation(line: 145, column: 15, scope: !1032)
!1039 = !DILocation(line: 145, column: 11, scope: !1032)
!1040 = !DILocation(line: 142, column: 5, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1013, file: !11, discriminator: 2)
!1042 = distinct !{!1042, !1026}
!1043 = !DILocation(line: 148, column: 13, scope: !1013)
!1044 = !DILocation(line: 148, column: 5, scope: !1013)
