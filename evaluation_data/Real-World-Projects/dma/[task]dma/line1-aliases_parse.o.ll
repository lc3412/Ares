; ModuleID = './line1-aliases_parse.o.i'
source_filename = "./line1-aliases_parse.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.YYSTACKDATA = type { i32, i16*, i16*, i16*, %union.YYSTYPE*, %union.YYSTYPE* }
%union.YYSTYPE = type { i8* }
%struct.aliases = type { %struct.alias* }
%struct.alias = type { %struct.anon.0, i8*, %struct.strlist }
%struct.anon.0 = type { %struct.alias*, %struct.alias** }
%struct.strlist = type { %struct.stritem* }
%struct.stritem = type { %struct.anon, i8* }
%struct.anon = type { %struct.stritem* }

@yynerrs = common global i32 0, align 4
@yyerrflag = common global i32 0, align 4
@yychar = common global i32 0, align 4
@yystack = internal global %struct.YYSTACKDATA zeroinitializer, align 8
@yydefred = internal constant [15 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 5, i16 0, i16 3, i16 1, i16 0, i16 0, i16 0, i16 4, i16 7], align 16
@yysindex = internal constant [15 x i16] [i16 -256, i16 -8, i16 -55, i16 0, i16 -256, i16 4, i16 0, i16 -252, i16 0, i16 0, i16 -38, i16 -3, i16 -252, i16 0, i16 0], align 16
@yycheck = internal constant [11 x i16] [i16 256, i16 257, i16 10, i16 58, i16 0, i16 257, i16 44, i16 10, i16 0, i16 4, i16 12], align 16
@yytable = internal constant [11 x i16] [i16 1, i16 2, i16 6, i16 7, i16 9, i16 10, i16 12, i16 13, i16 2, i16 8, i16 14], align 16
@yylval = common global %union.YYSTYPE zeroinitializer, align 8
@yyrindex = internal constant [15 x i16] [i16 8, i16 0, i16 0, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -8, i16 0, i16 0, i16 0, i16 0], align 16
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@yylen = internal constant [8 x i16] [i16 2, i16 2, i16 0, i16 2, i16 4, i16 2, i16 1, i16 3], align 16
@yyval = common global %union.YYSTYPE zeroinitializer, align 8
@aliases = external global %struct.aliases, align 8
@yylhs = internal constant [8 x i16] [i16 -1, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1], align 16
@yygindex = internal constant [4 x i16] [i16 0, i16 -2, i16 0, i16 5], align 2
@yydgoto = internal constant [4 x i16] [i16 3, i16 11, i16 4, i16 5], align 2
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yydebug = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"aliases line %d: %s\00", align 1
@yylineno = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @yywrap() #0 !dbg !86 {
  ret i32 1, !dbg !89
}

; Function Attrs: nounwind uwtable
define i32 @yyparse() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.alias*, align 8
  %6 = alloca %struct.stritem*, align 8
  %7 = alloca %struct.stritem*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !91, metadata !92), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %3, metadata !94, metadata !92), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %4, metadata !96, metadata !92), !dbg !97
  store i32 0, i32* @yynerrs, align 4, !dbg !98
  store i32 0, i32* @yyerrflag, align 4, !dbg !99
  store i32 -1, i32* @yychar, align 4, !dbg !100
  store i32 0, i32* %4, align 4, !dbg !101
  %8 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8, !dbg !102
  %9 = icmp eq i16* %8, null, !dbg !104
  br i1 %9, label %10, label %14, !dbg !105

; <label>:10:                                     ; preds = %0
  %11 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack), !dbg !106
  %12 = icmp eq i32 %11, -2, !dbg !108
  br i1 %12, label %13, label %14, !dbg !109

; <label>:13:                                     ; preds = %10
  br label %471, !dbg !110

; <label>:14:                                     ; preds = %10, %0
  %15 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8, !dbg !112
  store i16* %15, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !113
  %16 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 4), align 8, !dbg !114
  store %union.YYSTYPE* %16, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !115
  store i32 0, i32* %4, align 4, !dbg !116
  %17 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !117
  store i16 0, i16* %17, align 2, !dbg !118
  br label %18, !dbg !119

; <label>:18:                                     ; preds = %463, %419, %187, %157, %85, %14
  %19 = load i32, i32* %4, align 4, !dbg !120
  %20 = sext i32 %19 to i64, !dbg !122
  %21 = getelementptr inbounds [15 x i16], [15 x i16]* @yydefred, i64 0, i64 %20, !dbg !122
  %22 = load i16, i16* %21, align 2, !dbg !122
  %23 = sext i16 %22 to i32, !dbg !122
  store i32 %23, i32* %3, align 4, !dbg !123
  %24 = icmp ne i32 %23, 0, !dbg !124
  br i1 %24, label %25, label %26, !dbg !125

; <label>:25:                                     ; preds = %18
  br label %188, !dbg !126

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* @yychar, align 4, !dbg !128
  %28 = icmp slt i32 %27, 0, !dbg !130
  br i1 %28, label %29, label %34, !dbg !131

; <label>:29:                                     ; preds = %26
  %30 = call i32 @yylex(), !dbg !132
  store i32 %30, i32* @yychar, align 4, !dbg !135
  %31 = icmp slt i32 %30, 0, !dbg !136
  br i1 %31, label %32, label %33, !dbg !137

; <label>:32:                                     ; preds = %29
  store i32 0, i32* @yychar, align 4, !dbg !138
  br label %33, !dbg !140

; <label>:33:                                     ; preds = %32, %29
  br label %34, !dbg !141

; <label>:34:                                     ; preds = %33, %26
  %35 = load i32, i32* %4, align 4, !dbg !142
  %36 = sext i32 %35 to i64, !dbg !144
  %37 = getelementptr inbounds [15 x i16], [15 x i16]* @yysindex, i64 0, i64 %36, !dbg !144
  %38 = load i16, i16* %37, align 2, !dbg !144
  %39 = sext i16 %38 to i32, !dbg !144
  store i32 %39, i32* %3, align 4, !dbg !145
  %40 = icmp ne i32 %39, 0, !dbg !145
  br i1 %40, label %41, label %86, !dbg !146

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* @yychar, align 4, !dbg !147
  %43 = load i32, i32* %3, align 4, !dbg !149
  %44 = add nsw i32 %43, %42, !dbg !149
  store i32 %44, i32* %3, align 4, !dbg !149
  %45 = icmp sge i32 %44, 0, !dbg !150
  br i1 %45, label %46, label %86, !dbg !151

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %3, align 4, !dbg !152
  %48 = icmp sle i32 %47, 10, !dbg !153
  br i1 %48, label %49, label %86, !dbg !154

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %3, align 4, !dbg !155
  %51 = sext i32 %50 to i64, !dbg !156
  %52 = getelementptr inbounds [11 x i16], [11 x i16]* @yycheck, i64 0, i64 %51, !dbg !156
  %53 = load i16, i16* %52, align 2, !dbg !156
  %54 = sext i16 %53 to i32, !dbg !156
  %55 = load i32, i32* @yychar, align 4, !dbg !157
  %56 = icmp eq i32 %54, %55, !dbg !158
  br i1 %56, label %57, label %86, !dbg !159

; <label>:57:                                     ; preds = %49
  %58 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !161
  %59 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8, !dbg !164
  %60 = icmp uge i16* %58, %59, !dbg !165
  br i1 %60, label %61, label %65, !dbg !166

; <label>:61:                                     ; preds = %57
  %62 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack), !dbg !167
  %63 = icmp eq i32 %62, -2, !dbg !169
  br i1 %63, label %64, label %65, !dbg !170

; <label>:64:                                     ; preds = %61
  br label %471, !dbg !171

; <label>:65:                                     ; preds = %61, %57
  %66 = load i32, i32* %3, align 4, !dbg !173
  %67 = sext i32 %66 to i64, !dbg !174
  %68 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %67, !dbg !174
  %69 = load i16, i16* %68, align 2, !dbg !174
  %70 = sext i16 %69 to i32, !dbg !174
  store i32 %70, i32* %4, align 4, !dbg !175
  %71 = load i32, i32* %3, align 4, !dbg !176
  %72 = sext i32 %71 to i64, !dbg !177
  %73 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %72, !dbg !177
  %74 = load i16, i16* %73, align 2, !dbg !177
  %75 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !178
  %76 = getelementptr inbounds i16, i16* %75, i32 1, !dbg !178
  store i16* %76, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !178
  store i16 %74, i16* %76, align 2, !dbg !179
  %77 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !180
  %78 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %77, i32 1, !dbg !180
  store %union.YYSTYPE* %78, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !180
  %79 = bitcast %union.YYSTYPE* %78 to i8*, !dbg !181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false), !dbg !181
  store i32 -1, i32* @yychar, align 4, !dbg !182
  %80 = load i32, i32* @yyerrflag, align 4, !dbg !183
  %81 = icmp sgt i32 %80, 0, !dbg !185
  br i1 %81, label %82, label %85, !dbg !186

; <label>:82:                                     ; preds = %65
  %83 = load i32, i32* @yyerrflag, align 4, !dbg !187
  %84 = add nsw i32 %83, -1, !dbg !187
  store i32 %84, i32* @yyerrflag, align 4, !dbg !187
  br label %85, !dbg !187

; <label>:85:                                     ; preds = %82, %65
  br label %18, !dbg !189

; <label>:86:                                     ; preds = %49, %46, %41, %34
  %87 = load i32, i32* %4, align 4, !dbg !190
  %88 = sext i32 %87 to i64, !dbg !192
  %89 = getelementptr inbounds [15 x i16], [15 x i16]* @yyrindex, i64 0, i64 %88, !dbg !192
  %90 = load i16, i16* %89, align 2, !dbg !192
  %91 = sext i16 %90 to i32, !dbg !192
  store i32 %91, i32* %3, align 4, !dbg !193
  %92 = icmp ne i32 %91, 0, !dbg !193
  br i1 %92, label %93, label %115, !dbg !194

; <label>:93:                                     ; preds = %86
  %94 = load i32, i32* @yychar, align 4, !dbg !195
  %95 = load i32, i32* %3, align 4, !dbg !197
  %96 = add nsw i32 %95, %94, !dbg !197
  store i32 %96, i32* %3, align 4, !dbg !197
  %97 = icmp sge i32 %96, 0, !dbg !198
  br i1 %97, label %98, label %115, !dbg !199

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %3, align 4, !dbg !200
  %100 = icmp sle i32 %99, 10, !dbg !201
  br i1 %100, label %101, label %115, !dbg !202

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %3, align 4, !dbg !203
  %103 = sext i32 %102 to i64, !dbg !204
  %104 = getelementptr inbounds [11 x i16], [11 x i16]* @yycheck, i64 0, i64 %103, !dbg !204
  %105 = load i16, i16* %104, align 2, !dbg !204
  %106 = sext i16 %105 to i32, !dbg !204
  %107 = load i32, i32* @yychar, align 4, !dbg !205
  %108 = icmp eq i32 %106, %107, !dbg !206
  br i1 %108, label %109, label %115, !dbg !207

; <label>:109:                                    ; preds = %101
  %110 = load i32, i32* %3, align 4, !dbg !208
  %111 = sext i32 %110 to i64, !dbg !210
  %112 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %111, !dbg !210
  %113 = load i16, i16* %112, align 2, !dbg !210
  %114 = sext i16 %113 to i32, !dbg !210
  store i32 %114, i32* %3, align 4, !dbg !211
  br label %188, !dbg !212

; <label>:115:                                    ; preds = %101, %98, %93, %86
  %116 = load i32, i32* @yyerrflag, align 4, !dbg !213
  %117 = icmp ne i32 %116, 0, !dbg !213
  br i1 %117, label %118, label %119, !dbg !215

; <label>:118:                                    ; preds = %115
  br label %123, !dbg !216

; <label>:119:                                    ; preds = %115
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !218
  br label %120, !dbg !219

; <label>:120:                                    ; preds = %119
  %121 = load i32, i32* @yynerrs, align 4, !dbg !220
  %122 = add nsw i32 %121, 1, !dbg !220
  store i32 %122, i32* @yynerrs, align 4, !dbg !220
  br label %123, !dbg !220

; <label>:123:                                    ; preds = %120, %118
  %124 = load i32, i32* @yyerrflag, align 4, !dbg !221
  %125 = icmp slt i32 %124, 3, !dbg !223
  br i1 %125, label %126, label %183, !dbg !224

; <label>:126:                                    ; preds = %123
  store i32 3, i32* @yyerrflag, align 4, !dbg !225
  br label %127, !dbg !227

; <label>:127:                                    ; preds = %182, %126
  %128 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !228
  %129 = load i16, i16* %128, align 2, !dbg !233
  %130 = sext i16 %129 to i64, !dbg !234
  %131 = getelementptr inbounds [15 x i16], [15 x i16]* @yysindex, i64 0, i64 %130, !dbg !234
  %132 = load i16, i16* %131, align 2, !dbg !234
  %133 = sext i16 %132 to i32, !dbg !234
  store i32 %133, i32* %3, align 4, !dbg !235
  %134 = icmp ne i32 %133, 0, !dbg !235
  br i1 %134, label %135, label %172, !dbg !236

; <label>:135:                                    ; preds = %127
  %136 = load i32, i32* %3, align 4, !dbg !237
  %137 = add nsw i32 %136, 256, !dbg !237
  store i32 %137, i32* %3, align 4, !dbg !237
  %138 = icmp sge i32 %137, 0, !dbg !239
  br i1 %138, label %139, label %172, !dbg !240

; <label>:139:                                    ; preds = %135
  %140 = load i32, i32* %3, align 4, !dbg !241
  %141 = icmp sle i32 %140, 10, !dbg !242
  br i1 %141, label %142, label %172, !dbg !243

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %3, align 4, !dbg !244
  %144 = sext i32 %143 to i64, !dbg !245
  %145 = getelementptr inbounds [11 x i16], [11 x i16]* @yycheck, i64 0, i64 %144, !dbg !245
  %146 = load i16, i16* %145, align 2, !dbg !245
  %147 = sext i16 %146 to i32, !dbg !245
  %148 = icmp eq i32 %147, 256, !dbg !246
  br i1 %148, label %149, label %172, !dbg !247

; <label>:149:                                    ; preds = %142
  %150 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !249
  %151 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8, !dbg !252
  %152 = icmp uge i16* %150, %151, !dbg !253
  br i1 %152, label %153, label %157, !dbg !254

; <label>:153:                                    ; preds = %149
  %154 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack), !dbg !255
  %155 = icmp eq i32 %154, -2, !dbg !257
  br i1 %155, label %156, label %157, !dbg !258

; <label>:156:                                    ; preds = %153
  br label %471, !dbg !259

; <label>:157:                                    ; preds = %153, %149
  %158 = load i32, i32* %3, align 4, !dbg !261
  %159 = sext i32 %158 to i64, !dbg !262
  %160 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %159, !dbg !262
  %161 = load i16, i16* %160, align 2, !dbg !262
  %162 = sext i16 %161 to i32, !dbg !262
  store i32 %162, i32* %4, align 4, !dbg !263
  %163 = load i32, i32* %3, align 4, !dbg !264
  %164 = sext i32 %163 to i64, !dbg !265
  %165 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %164, !dbg !265
  %166 = load i16, i16* %165, align 2, !dbg !265
  %167 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !266
  %168 = getelementptr inbounds i16, i16* %167, i32 1, !dbg !266
  store i16* %168, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !266
  store i16 %166, i16* %168, align 2, !dbg !267
  %169 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !268
  %170 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %169, i32 1, !dbg !268
  store %union.YYSTYPE* %170, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !268
  %171 = bitcast %union.YYSTYPE* %170 to i8*, !dbg !269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false), !dbg !269
  br label %18, !dbg !270

; <label>:172:                                    ; preds = %142, %139, %135, %127
  %173 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !271
  %174 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8, !dbg !274
  %175 = icmp ule i16* %173, %174, !dbg !275
  br i1 %175, label %176, label %177, !dbg !276

; <label>:176:                                    ; preds = %172
  br label %472, !dbg !277

; <label>:177:                                    ; preds = %172
  %178 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !279
  %179 = getelementptr inbounds i16, i16* %178, i32 -1, !dbg !279
  store i16* %179, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !279
  %180 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !280
  %181 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %180, i32 -1, !dbg !280
  store %union.YYSTYPE* %181, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !280
  br label %182

; <label>:182:                                    ; preds = %177
  br label %127, !dbg !281, !llvm.loop !283

; <label>:183:                                    ; preds = %123
  %184 = load i32, i32* @yychar, align 4, !dbg !284
  %185 = icmp eq i32 %184, 0, !dbg !287
  br i1 %185, label %186, label %187, !dbg !288

; <label>:186:                                    ; preds = %183
  br label %472, !dbg !289

; <label>:187:                                    ; preds = %183
  store i32 -1, i32* @yychar, align 4, !dbg !291
  br label %18, !dbg !292

; <label>:188:                                    ; preds = %109, %25
  %189 = load i32, i32* %3, align 4, !dbg !293
  %190 = sext i32 %189 to i64, !dbg !294
  %191 = getelementptr inbounds [8 x i16], [8 x i16]* @yylen, i64 0, i64 %190, !dbg !294
  %192 = load i16, i16* %191, align 2, !dbg !294
  %193 = sext i16 %192 to i32, !dbg !294
  store i32 %193, i32* %2, align 4, !dbg !295
  %194 = load i32, i32* %2, align 4, !dbg !296
  %195 = icmp ne i32 %194, 0, !dbg !296
  br i1 %195, label %196, label %203, !dbg !298

; <label>:196:                                    ; preds = %188
  %197 = load i32, i32* %2, align 4, !dbg !299
  %198 = sub nsw i32 1, %197, !dbg !300
  %199 = sext i32 %198 to i64, !dbg !301
  %200 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !302
  %201 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %199, !dbg !301
  %202 = bitcast %union.YYSTYPE* %201 to i8*, !dbg !301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8* %202, i64 8, i32 8, i1 false), !dbg !301
  br label %204, !dbg !303

; <label>:203:                                    ; preds = %188
  call void @llvm.memset.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8 0, i64 8, i32 8, i1 false), !dbg !304
  br label %204

; <label>:204:                                    ; preds = %203, %196
  %205 = load i32, i32* %3, align 4, !dbg !305
  switch i32 %205, label %378 [
    i32 1, label %206
    i32 2, label %211
    i32 3, label %212
    i32 4, label %300
    i32 5, label %328
    i32 6, label %329
    i32 7, label %350
  ], !dbg !306

; <label>:206:                                    ; preds = %204
  %207 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !307
  %208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %207, i64 -1, !dbg !311
  %209 = bitcast %union.YYSTYPE* %208 to %struct.alias**, !dbg !312
  %210 = load %struct.alias*, %struct.alias** %209, align 8, !dbg !312
  store %struct.alias* %210, %struct.alias** getelementptr inbounds (%struct.aliases, %struct.aliases* @aliases, i32 0, i32 0), align 8, !dbg !313
  br label %378, !dbg !314

; <label>:211:                                    ; preds = %204
  store %struct.alias* null, %struct.alias** bitcast (%union.YYSTYPE* @yyval to %struct.alias**), align 8, !dbg !315
  br label %378, !dbg !317

; <label>:212:                                    ; preds = %204
  %213 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !318
  %214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %213, i64 0, !dbg !321
  %215 = bitcast %union.YYSTYPE* %214 to %struct.alias**, !dbg !322
  %216 = load %struct.alias*, %struct.alias** %215, align 8, !dbg !322
  %217 = icmp ne %struct.alias* %216, null, !dbg !323
  br i1 %217, label %218, label %280, !dbg !324

; <label>:218:                                    ; preds = %212
  %219 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !325
  %220 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %219, i64 -1, !dbg !327
  %221 = bitcast %union.YYSTYPE* %220 to %struct.alias**, !dbg !328
  %222 = load %struct.alias*, %struct.alias** %221, align 8, !dbg !328
  %223 = icmp ne %struct.alias* %222, null, !dbg !329
  br i1 %223, label %224, label %280, !dbg !330

; <label>:224:                                    ; preds = %218
  br label %225, !dbg !331, !llvm.loop !332

; <label>:225:                                    ; preds = %224
  %226 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !333
  %227 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %226, i64 0, !dbg !337
  %228 = bitcast %union.YYSTYPE* %227 to %struct.alias**, !dbg !338
  %229 = load %struct.alias*, %struct.alias** %228, align 8, !dbg !338
  %230 = getelementptr inbounds %struct.alias, %struct.alias* %229, i32 0, i32 0, !dbg !337
  %231 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %230, i32 0, i32 0, !dbg !339
  %232 = load %struct.alias*, %struct.alias** %231, align 8, !dbg !339
  %233 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !333
  %234 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %233, i64 -1, !dbg !337
  %235 = bitcast %union.YYSTYPE* %234 to %struct.alias**, !dbg !340
  %236 = load %struct.alias*, %struct.alias** %235, align 8, !dbg !340
  %237 = getelementptr inbounds %struct.alias, %struct.alias* %236, i32 0, i32 0, !dbg !337
  %238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %237, i32 0, i32 0, !dbg !339
  store %struct.alias* %232, %struct.alias** %238, align 8, !dbg !341
  %239 = icmp ne %struct.alias* %232, null, !dbg !342
  br i1 %239, label %240, label %256, !dbg !341

; <label>:240:                                    ; preds = %225
  %241 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !343
  %242 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %241, i64 -1, !dbg !345
  %243 = bitcast %union.YYSTYPE* %242 to %struct.alias**, !dbg !346
  %244 = load %struct.alias*, %struct.alias** %243, align 8, !dbg !346
  %245 = getelementptr inbounds %struct.alias, %struct.alias* %244, i32 0, i32 0, !dbg !345
  %246 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %245, i32 0, i32 0, !dbg !347
  %247 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !343
  %248 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %247, i64 0, !dbg !345
  %249 = bitcast %union.YYSTYPE* %248 to %struct.alias**, !dbg !348
  %250 = load %struct.alias*, %struct.alias** %249, align 8, !dbg !348
  %251 = getelementptr inbounds %struct.alias, %struct.alias* %250, i32 0, i32 0, !dbg !345
  %252 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %251, i32 0, i32 0, !dbg !347
  %253 = load %struct.alias*, %struct.alias** %252, align 8, !dbg !347
  %254 = getelementptr inbounds %struct.alias, %struct.alias* %253, i32 0, i32 0, !dbg !345
  %255 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %254, i32 0, i32 1, !dbg !347
  store %struct.alias** %246, %struct.alias*** %255, align 8, !dbg !349
  br label %256, !dbg !350

; <label>:256:                                    ; preds = %240, %225
  %257 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !351
  %258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %257, i64 -1, !dbg !353
  %259 = bitcast %union.YYSTYPE* %258 to %struct.alias**, !dbg !354
  %260 = load %struct.alias*, %struct.alias** %259, align 8, !dbg !354
  %261 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !351
  %262 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %261, i64 0, !dbg !353
  %263 = bitcast %union.YYSTYPE* %262 to %struct.alias**, !dbg !355
  %264 = load %struct.alias*, %struct.alias** %263, align 8, !dbg !355
  %265 = getelementptr inbounds %struct.alias, %struct.alias* %264, i32 0, i32 0, !dbg !353
  %266 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %265, i32 0, i32 0, !dbg !356
  store %struct.alias* %260, %struct.alias** %266, align 8, !dbg !357
  %267 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !351
  %268 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %267, i64 0, !dbg !353
  %269 = bitcast %union.YYSTYPE* %268 to %struct.alias**, !dbg !355
  %270 = load %struct.alias*, %struct.alias** %269, align 8, !dbg !355
  %271 = getelementptr inbounds %struct.alias, %struct.alias* %270, i32 0, i32 0, !dbg !353
  %272 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %271, i32 0, i32 0, !dbg !356
  %273 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !351
  %274 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %273, i64 -1, !dbg !353
  %275 = bitcast %union.YYSTYPE* %274 to %struct.alias**, !dbg !354
  %276 = load %struct.alias*, %struct.alias** %275, align 8, !dbg !354
  %277 = getelementptr inbounds %struct.alias, %struct.alias* %276, i32 0, i32 0, !dbg !353
  %278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %277, i32 0, i32 1, !dbg !356
  store %struct.alias** %272, %struct.alias*** %278, align 8, !dbg !357
  br label %279, !dbg !358

; <label>:279:                                    ; preds = %256
  br label %295, !dbg !359

; <label>:280:                                    ; preds = %218, %212
  %281 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !361
  %282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %281, i64 0, !dbg !363
  %283 = bitcast %union.YYSTYPE* %282 to %struct.alias**, !dbg !364
  %284 = load %struct.alias*, %struct.alias** %283, align 8, !dbg !364
  %285 = icmp eq %struct.alias* %284, null, !dbg !365
  br i1 %285, label %286, label %294, !dbg !366

; <label>:286:                                    ; preds = %280
  %287 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !367
  %288 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %287, i64 -1, !dbg !368
  %289 = bitcast %union.YYSTYPE* %288 to %struct.alias**, !dbg !369
  %290 = load %struct.alias*, %struct.alias** %289, align 8, !dbg !369
  %291 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !370
  %292 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %291, i64 0, !dbg !371
  %293 = bitcast %union.YYSTYPE* %292 to %struct.alias**, !dbg !372
  store %struct.alias* %290, %struct.alias** %293, align 8, !dbg !373
  br label %294, !dbg !371

; <label>:294:                                    ; preds = %286, %280
  br label %295

; <label>:295:                                    ; preds = %294, %279
  %296 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !374
  %297 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %296, i64 0, !dbg !375
  %298 = bitcast %union.YYSTYPE* %297 to %struct.alias**, !dbg !376
  %299 = load %struct.alias*, %struct.alias** %298, align 8, !dbg !376
  store %struct.alias* %299, %struct.alias** bitcast (%union.YYSTYPE* @yyval to %struct.alias**), align 8, !dbg !377
  br label %378, !dbg !378

; <label>:300:                                    ; preds = %204
  call void @llvm.dbg.declare(metadata %struct.alias** %5, metadata !379, metadata !92), !dbg !381
  %301 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !382
  %302 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %301, i64 -3, !dbg !384
  %303 = bitcast %union.YYSTYPE* %302 to i8**, !dbg !385
  %304 = load i8*, i8** %303, align 8, !dbg !385
  %305 = icmp eq i8* %304, null, !dbg !386
  br i1 %305, label %306, label %307, !dbg !387

; <label>:306:                                    ; preds = %300
  br label %472, !dbg !388

; <label>:307:                                    ; preds = %300
  %308 = call noalias i8* @calloc(i64 1, i64 32) #5, !dbg !389
  %309 = bitcast i8* %308 to %struct.alias*, !dbg !389
  store %struct.alias* %309, %struct.alias** %5, align 8, !dbg !390
  %310 = load %struct.alias*, %struct.alias** %5, align 8, !dbg !391
  %311 = icmp eq %struct.alias* %310, null, !dbg !393
  br i1 %311, label %312, label %313, !dbg !394

; <label>:312:                                    ; preds = %307
  br label %472, !dbg !395

; <label>:313:                                    ; preds = %307
  %314 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !396
  %315 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %314, i64 -3, !dbg !397
  %316 = bitcast %union.YYSTYPE* %315 to i8**, !dbg !398
  %317 = load i8*, i8** %316, align 8, !dbg !398
  %318 = load %struct.alias*, %struct.alias** %5, align 8, !dbg !399
  %319 = getelementptr inbounds %struct.alias, %struct.alias* %318, i32 0, i32 1, !dbg !400
  store i8* %317, i8** %319, align 8, !dbg !401
  %320 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !402
  %321 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %320, i64 -1, !dbg !403
  %322 = bitcast %union.YYSTYPE* %321 to %struct.stritem**, !dbg !404
  %323 = load %struct.stritem*, %struct.stritem** %322, align 8, !dbg !404
  %324 = load %struct.alias*, %struct.alias** %5, align 8, !dbg !405
  %325 = getelementptr inbounds %struct.alias, %struct.alias* %324, i32 0, i32 2, !dbg !406
  %326 = getelementptr inbounds %struct.strlist, %struct.strlist* %325, i32 0, i32 0, !dbg !407
  store %struct.stritem* %323, %struct.stritem** %326, align 8, !dbg !408
  %327 = load %struct.alias*, %struct.alias** %5, align 8, !dbg !409
  store %struct.alias* %327, %struct.alias** bitcast (%union.YYSTYPE* @yyval to %struct.alias**), align 8, !dbg !410
  br label %378, !dbg !411

; <label>:328:                                    ; preds = %204
  store i32 0, i32* @yyerrflag, align 4, !dbg !412
  store %struct.alias* null, %struct.alias** bitcast (%union.YYSTYPE* @yyval to %struct.alias**), align 8, !dbg !414
  br label %378, !dbg !415

; <label>:329:                                    ; preds = %204
  call void @llvm.dbg.declare(metadata %struct.stritem** %6, metadata !416, metadata !92), !dbg !418
  %330 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !419
  %331 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %330, i64 0, !dbg !421
  %332 = bitcast %union.YYSTYPE* %331 to i8**, !dbg !422
  %333 = load i8*, i8** %332, align 8, !dbg !422
  %334 = icmp eq i8* %333, null, !dbg !423
  br i1 %334, label %335, label %336, !dbg !424

; <label>:335:                                    ; preds = %329
  br label %472, !dbg !425

; <label>:336:                                    ; preds = %329
  %337 = call noalias i8* @calloc(i64 1, i64 16) #5, !dbg !426
  %338 = bitcast i8* %337 to %struct.stritem*, !dbg !426
  store %struct.stritem* %338, %struct.stritem** %6, align 8, !dbg !427
  %339 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !428
  %340 = icmp eq %struct.stritem* %339, null, !dbg !430
  br i1 %340, label %341, label %342, !dbg !431

; <label>:341:                                    ; preds = %336
  br label %472, !dbg !432

; <label>:342:                                    ; preds = %336
  %343 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !433
  %344 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %343, i64 0, !dbg !434
  %345 = bitcast %union.YYSTYPE* %344 to i8**, !dbg !435
  %346 = load i8*, i8** %345, align 8, !dbg !435
  %347 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !436
  %348 = getelementptr inbounds %struct.stritem, %struct.stritem* %347, i32 0, i32 1, !dbg !437
  store i8* %346, i8** %348, align 8, !dbg !438
  %349 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !439
  store %struct.stritem* %349, %struct.stritem** bitcast (%union.YYSTYPE* @yyval to %struct.stritem**), align 8, !dbg !440
  br label %378, !dbg !441

; <label>:350:                                    ; preds = %204
  call void @llvm.dbg.declare(metadata %struct.stritem** %7, metadata !442, metadata !92), !dbg !444
  %351 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !445
  %352 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %351, i64 -2, !dbg !447
  %353 = bitcast %union.YYSTYPE* %352 to i8**, !dbg !448
  %354 = load i8*, i8** %353, align 8, !dbg !448
  %355 = icmp eq i8* %354, null, !dbg !449
  br i1 %355, label %356, label %357, !dbg !450

; <label>:356:                                    ; preds = %350
  br label %472, !dbg !451

; <label>:357:                                    ; preds = %350
  %358 = call noalias i8* @calloc(i64 1, i64 16) #5, !dbg !452
  %359 = bitcast i8* %358 to %struct.stritem*, !dbg !452
  store %struct.stritem* %359, %struct.stritem** %7, align 8, !dbg !453
  %360 = load %struct.stritem*, %struct.stritem** %7, align 8, !dbg !454
  %361 = icmp eq %struct.stritem* %360, null, !dbg !456
  br i1 %361, label %362, label %363, !dbg !457

; <label>:362:                                    ; preds = %357
  br label %472, !dbg !458

; <label>:363:                                    ; preds = %357
  %364 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !459
  %365 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %364, i64 -2, !dbg !460
  %366 = bitcast %union.YYSTYPE* %365 to i8**, !dbg !461
  %367 = load i8*, i8** %366, align 8, !dbg !461
  %368 = load %struct.stritem*, %struct.stritem** %7, align 8, !dbg !462
  %369 = getelementptr inbounds %struct.stritem, %struct.stritem* %368, i32 0, i32 1, !dbg !463
  store i8* %367, i8** %369, align 8, !dbg !464
  %370 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !465
  %371 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %370, i64 0, !dbg !466
  %372 = bitcast %union.YYSTYPE* %371 to %struct.stritem**, !dbg !467
  %373 = load %struct.stritem*, %struct.stritem** %372, align 8, !dbg !467
  %374 = load %struct.stritem*, %struct.stritem** %7, align 8, !dbg !468
  %375 = getelementptr inbounds %struct.stritem, %struct.stritem* %374, i32 0, i32 0, !dbg !468
  %376 = getelementptr inbounds %struct.anon, %struct.anon* %375, i32 0, i32 0, !dbg !469
  store %struct.stritem* %373, %struct.stritem** %376, align 8, !dbg !470
  %377 = load %struct.stritem*, %struct.stritem** %7, align 8, !dbg !471
  store %struct.stritem* %377, %struct.stritem** bitcast (%union.YYSTYPE* @yyval to %struct.stritem**), align 8, !dbg !472
  br label %378, !dbg !473

; <label>:378:                                    ; preds = %204, %363, %342, %328, %313, %295, %211, %206
  %379 = load i32, i32* %2, align 4, !dbg !474
  %380 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !475
  %381 = sext i32 %379 to i64, !dbg !475
  %382 = sub i64 0, %381, !dbg !475
  %383 = getelementptr inbounds i16, i16* %380, i64 %382, !dbg !475
  store i16* %383, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !475
  %384 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !476
  %385 = load i16, i16* %384, align 2, !dbg !477
  %386 = sext i16 %385 to i32, !dbg !477
  store i32 %386, i32* %4, align 4, !dbg !478
  %387 = load i32, i32* %2, align 4, !dbg !479
  %388 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !480
  %389 = sext i32 %387 to i64, !dbg !480
  %390 = sub i64 0, %389, !dbg !480
  %391 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %388, i64 %390, !dbg !480
  store %union.YYSTYPE* %391, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !480
  %392 = load i32, i32* %3, align 4, !dbg !481
  %393 = sext i32 %392 to i64, !dbg !482
  %394 = getelementptr inbounds [8 x i16], [8 x i16]* @yylhs, i64 0, i64 %393, !dbg !482
  %395 = load i16, i16* %394, align 2, !dbg !482
  %396 = sext i16 %395 to i32, !dbg !482
  store i32 %396, i32* %2, align 4, !dbg !483
  %397 = load i32, i32* %4, align 4, !dbg !484
  %398 = icmp eq i32 %397, 0, !dbg !486
  br i1 %398, label %399, label %420, !dbg !487

; <label>:399:                                    ; preds = %378
  %400 = load i32, i32* %2, align 4, !dbg !488
  %401 = icmp eq i32 %400, 0, !dbg !490
  br i1 %401, label %402, label %420, !dbg !491

; <label>:402:                                    ; preds = %399
  store i32 3, i32* %4, align 4, !dbg !492
  %403 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !494
  %404 = getelementptr inbounds i16, i16* %403, i32 1, !dbg !494
  store i16* %404, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !494
  store i16 3, i16* %404, align 2, !dbg !495
  %405 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !496
  %406 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %405, i32 1, !dbg !496
  store %union.YYSTYPE* %406, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !496
  %407 = bitcast %union.YYSTYPE* %406 to i8*, !dbg !497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %407, i8* bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i32 8, i1 false), !dbg !497
  %408 = load i32, i32* @yychar, align 4, !dbg !498
  %409 = icmp slt i32 %408, 0, !dbg !500
  br i1 %409, label %410, label %415, !dbg !501

; <label>:410:                                    ; preds = %402
  %411 = call i32 @yylex(), !dbg !502
  store i32 %411, i32* @yychar, align 4, !dbg !505
  %412 = icmp slt i32 %411, 0, !dbg !506
  br i1 %412, label %413, label %414, !dbg !507

; <label>:413:                                    ; preds = %410
  store i32 0, i32* @yychar, align 4, !dbg !508
  br label %414, !dbg !510

; <label>:414:                                    ; preds = %413, %410
  br label %415, !dbg !511

; <label>:415:                                    ; preds = %414, %402
  %416 = load i32, i32* @yychar, align 4, !dbg !512
  %417 = icmp eq i32 %416, 0, !dbg !514
  br i1 %417, label %418, label %419, !dbg !515

; <label>:418:                                    ; preds = %415
  br label %473, !dbg !516

; <label>:419:                                    ; preds = %415
  br label %18, !dbg !518

; <label>:420:                                    ; preds = %399, %378
  %421 = load i32, i32* %2, align 4, !dbg !519
  %422 = sext i32 %421 to i64, !dbg !521
  %423 = getelementptr inbounds [4 x i16], [4 x i16]* @yygindex, i64 0, i64 %422, !dbg !521
  %424 = load i16, i16* %423, align 2, !dbg !521
  %425 = sext i16 %424 to i32, !dbg !521
  store i32 %425, i32* %3, align 4, !dbg !522
  %426 = icmp ne i32 %425, 0, !dbg !522
  br i1 %426, label %427, label %449, !dbg !523

; <label>:427:                                    ; preds = %420
  %428 = load i32, i32* %4, align 4, !dbg !524
  %429 = load i32, i32* %3, align 4, !dbg !526
  %430 = add nsw i32 %429, %428, !dbg !526
  store i32 %430, i32* %3, align 4, !dbg !526
  %431 = icmp sge i32 %430, 0, !dbg !527
  br i1 %431, label %432, label %449, !dbg !528

; <label>:432:                                    ; preds = %427
  %433 = load i32, i32* %3, align 4, !dbg !529
  %434 = icmp sle i32 %433, 10, !dbg !530
  br i1 %434, label %435, label %449, !dbg !531

; <label>:435:                                    ; preds = %432
  %436 = load i32, i32* %3, align 4, !dbg !532
  %437 = sext i32 %436 to i64, !dbg !533
  %438 = getelementptr inbounds [11 x i16], [11 x i16]* @yycheck, i64 0, i64 %437, !dbg !533
  %439 = load i16, i16* %438, align 2, !dbg !533
  %440 = sext i16 %439 to i32, !dbg !533
  %441 = load i32, i32* %4, align 4, !dbg !534
  %442 = icmp eq i32 %440, %441, !dbg !535
  br i1 %442, label %443, label %449, !dbg !536

; <label>:443:                                    ; preds = %435
  %444 = load i32, i32* %3, align 4, !dbg !537
  %445 = sext i32 %444 to i64, !dbg !538
  %446 = getelementptr inbounds [11 x i16], [11 x i16]* @yytable, i64 0, i64 %445, !dbg !538
  %447 = load i16, i16* %446, align 2, !dbg !538
  %448 = sext i16 %447 to i32, !dbg !538
  store i32 %448, i32* %4, align 4, !dbg !539
  br label %455, !dbg !540

; <label>:449:                                    ; preds = %435, %432, %427, %420
  %450 = load i32, i32* %2, align 4, !dbg !541
  %451 = sext i32 %450 to i64, !dbg !542
  %452 = getelementptr inbounds [4 x i16], [4 x i16]* @yydgoto, i64 0, i64 %451, !dbg !542
  %453 = load i16, i16* %452, align 2, !dbg !542
  %454 = sext i16 %453 to i32, !dbg !542
  store i32 %454, i32* %4, align 4, !dbg !543
  br label %455

; <label>:455:                                    ; preds = %449, %443
  %456 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !544
  %457 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8, !dbg !546
  %458 = icmp uge i16* %456, %457, !dbg !547
  br i1 %458, label %459, label %463, !dbg !548

; <label>:459:                                    ; preds = %455
  %460 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack), !dbg !549
  %461 = icmp eq i32 %460, -2, !dbg !551
  br i1 %461, label %462, label %463, !dbg !552

; <label>:462:                                    ; preds = %459
  br label %471, !dbg !553

; <label>:463:                                    ; preds = %459, %455
  %464 = load i32, i32* %4, align 4, !dbg !555
  %465 = trunc i32 %464 to i16, !dbg !556
  %466 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !557
  %467 = getelementptr inbounds i16, i16* %466, i32 1, !dbg !557
  store i16* %467, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8, !dbg !557
  store i16 %465, i16* %467, align 2, !dbg !558
  %468 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !559
  %469 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %468, i32 1, !dbg !559
  store %union.YYSTYPE* %469, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8, !dbg !559
  %470 = bitcast %union.YYSTYPE* %469 to i8*, !dbg !560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %470, i8* bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i32 8, i1 false), !dbg !560
  br label %18, !dbg !561

; <label>:471:                                    ; preds = %462, %156, %64, %13
  call void @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !562
  br label %472, !dbg !562

; <label>:472:                                    ; preds = %471, %362, %356, %341, %335, %312, %306, %186, %176
  store i32 1, i32* %1, align 4, !dbg !563
  br label %474, !dbg !563

; <label>:473:                                    ; preds = %418
  store i32 0, i32* %1, align 4, !dbg !564
  br label %474, !dbg !564

; <label>:474:                                    ; preds = %473, %472
  %475 = load i32, i32* %1, align 4, !dbg !565
  ret i32 %475, !dbg !565
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @yygrowstack(%struct.YYSTACKDATA*) #0 !dbg !566 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.YYSTACKDATA*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca %union.YYSTYPE*, align 8
  store %struct.YYSTACKDATA* %0, %struct.YYSTACKDATA** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.YYSTACKDATA** %3, metadata !570, metadata !92), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %4, metadata !572, metadata !92), !dbg !573
  call void @llvm.dbg.declare(metadata i32* %5, metadata !574, metadata !92), !dbg !575
  call void @llvm.dbg.declare(metadata i16** %6, metadata !576, metadata !92), !dbg !577
  call void @llvm.dbg.declare(metadata %union.YYSTYPE** %7, metadata !578, metadata !92), !dbg !579
  %8 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !580
  %9 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %8, i32 0, i32 0, !dbg !582
  %10 = load i32, i32* %9, align 8, !dbg !582
  store i32 %10, i32* %5, align 4, !dbg !583
  %11 = icmp eq i32 %10, 0, !dbg !584
  br i1 %11, label %12, label %13, !dbg !585

; <label>:12:                                     ; preds = %1
  store i32 200, i32* %5, align 4, !dbg !586
  br label %24, !dbg !587

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %5, align 4, !dbg !588
  %15 = icmp uge i32 %14, 10000, !dbg !590
  br i1 %15, label %16, label %17, !dbg !591

; <label>:16:                                     ; preds = %13
  store i32 -2, i32* %2, align 4, !dbg !592
  br label %92, !dbg !592

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !dbg !593
  %19 = mul i32 %18, 2, !dbg !593
  store i32 %19, i32* %5, align 4, !dbg !593
  %20 = icmp ugt i32 %19, 10000, !dbg !595
  br i1 %20, label %21, label %22, !dbg !596

; <label>:21:                                     ; preds = %17
  store i32 10000, i32* %5, align 4, !dbg !597
  br label %22, !dbg !598

; <label>:22:                                     ; preds = %21, %17
  br label %23

; <label>:23:                                     ; preds = %22
  br label %24

; <label>:24:                                     ; preds = %23, %12
  %25 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !599
  %26 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %25, i32 0, i32 2, !dbg !600
  %27 = load i16*, i16** %26, align 8, !dbg !600
  %28 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !601
  %29 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %28, i32 0, i32 1, !dbg !602
  %30 = load i16*, i16** %29, align 8, !dbg !602
  %31 = ptrtoint i16* %27 to i64, !dbg !603
  %32 = ptrtoint i16* %30 to i64, !dbg !603
  %33 = sub i64 %31, %32, !dbg !603
  %34 = sdiv exact i64 %33, 2, !dbg !603
  %35 = trunc i64 %34 to i32, !dbg !604
  store i32 %35, i32* %4, align 4, !dbg !605
  %36 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !606
  %37 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %36, i32 0, i32 1, !dbg !607
  %38 = load i16*, i16** %37, align 8, !dbg !607
  %39 = bitcast i16* %38 to i8*, !dbg !606
  %40 = load i32, i32* %5, align 4, !dbg !608
  %41 = zext i32 %40 to i64, !dbg !608
  %42 = mul i64 %41, 2, !dbg !609
  %43 = call i8* @realloc(i8* %39, i64 %42) #5, !dbg !610
  %44 = bitcast i8* %43 to i16*, !dbg !611
  store i16* %44, i16** %6, align 8, !dbg !612
  %45 = load i16*, i16** %6, align 8, !dbg !613
  %46 = icmp eq i16* %45, null, !dbg !615
  br i1 %46, label %47, label %48, !dbg !616

; <label>:47:                                     ; preds = %24
  store i32 -2, i32* %2, align 4, !dbg !617
  br label %92, !dbg !617

; <label>:48:                                     ; preds = %24
  %49 = load i16*, i16** %6, align 8, !dbg !618
  %50 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !619
  %51 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %50, i32 0, i32 1, !dbg !620
  store i16* %49, i16** %51, align 8, !dbg !621
  %52 = load i16*, i16** %6, align 8, !dbg !622
  %53 = load i32, i32* %4, align 4, !dbg !623
  %54 = sext i32 %53 to i64, !dbg !624
  %55 = getelementptr inbounds i16, i16* %52, i64 %54, !dbg !624
  %56 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !625
  %57 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %56, i32 0, i32 2, !dbg !626
  store i16* %55, i16** %57, align 8, !dbg !627
  %58 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !628
  %59 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %58, i32 0, i32 4, !dbg !629
  %60 = load %union.YYSTYPE*, %union.YYSTYPE** %59, align 8, !dbg !629
  %61 = bitcast %union.YYSTYPE* %60 to i8*, !dbg !628
  %62 = load i32, i32* %5, align 4, !dbg !630
  %63 = zext i32 %62 to i64, !dbg !630
  %64 = mul i64 %63, 8, !dbg !631
  %65 = call i8* @realloc(i8* %61, i64 %64) #5, !dbg !632
  %66 = bitcast i8* %65 to %union.YYSTYPE*, !dbg !633
  store %union.YYSTYPE* %66, %union.YYSTYPE** %7, align 8, !dbg !634
  %67 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8, !dbg !635
  %68 = icmp eq %union.YYSTYPE* %67, null, !dbg !637
  br i1 %68, label %69, label %70, !dbg !638

; <label>:69:                                     ; preds = %48
  store i32 -2, i32* %2, align 4, !dbg !639
  br label %92, !dbg !639

; <label>:70:                                     ; preds = %48
  %71 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8, !dbg !640
  %72 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !641
  %73 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %72, i32 0, i32 4, !dbg !642
  store %union.YYSTYPE* %71, %union.YYSTYPE** %73, align 8, !dbg !643
  %74 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8, !dbg !644
  %75 = load i32, i32* %4, align 4, !dbg !645
  %76 = sext i32 %75 to i64, !dbg !646
  %77 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 %76, !dbg !646
  %78 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !647
  %79 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %78, i32 0, i32 5, !dbg !648
  store %union.YYSTYPE* %77, %union.YYSTYPE** %79, align 8, !dbg !649
  %80 = load i32, i32* %5, align 4, !dbg !650
  %81 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !651
  %82 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %81, i32 0, i32 0, !dbg !652
  store i32 %80, i32* %82, align 8, !dbg !653
  %83 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !654
  %84 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %83, i32 0, i32 1, !dbg !655
  %85 = load i16*, i16** %84, align 8, !dbg !655
  %86 = load i32, i32* %5, align 4, !dbg !656
  %87 = zext i32 %86 to i64, !dbg !657
  %88 = getelementptr inbounds i16, i16* %85, i64 %87, !dbg !657
  %89 = getelementptr inbounds i16, i16* %88, i64 -1, !dbg !658
  %90 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8, !dbg !659
  %91 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %90, i32 0, i32 3, !dbg !660
  store i16* %89, i16** %91, align 8, !dbg !661
  store i32 0, i32* %2, align 4, !dbg !662
  br label %92, !dbg !662

; <label>:92:                                     ; preds = %70, %69, %47, %16
  %93 = load i32, i32* %2, align 4, !dbg !663
  ret i32 %93, !dbg !663
}

declare i32 @yylex() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @yyerror(i8*) #0 !dbg !664 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !669, metadata !92), !dbg !670
  %3 = load i32, i32* @yylineno, align 4, !dbg !671
  %4 = load i8*, i8** %2, align 8, !dbg !672
  call void (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %3, i8* %4), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

declare void @warnx(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !43)
!1 = !DIFile(filename: "line1-aliases_parse.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{}
!3 = !{!4, !5, !8, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "YYINT", file: !6, line: 93, baseType: !7)
!6 = !DIFile(filename: "aliases_parse.c", directory: "/home/lichi/Desktop/dma/task1")
!7 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "YYSTYPE", file: !12, line: 36, baseType: !13)
!12 = !DIFile(filename: "aliases_parse.y", directory: "/home/lichi/Desktop/dma/task1")
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 32, size: 64, align: 64, elements: !14)
!14 = !{!15, !18, !28}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !13, file: !12, line: 33, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "strit", scope: !13, file: !12, line: 34, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stritem", file: !21, line: 92, size: 128, align: 64, elements: !22)
!21 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!22 = !{!23, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !21, line: 93, baseType: !24, size: 64, align: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !20, file: !21, line: 93, size: 64, align: 64, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !24, file: !21, line: 93, baseType: !19, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !20, file: !21, line: 94, baseType: !16, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !13, file: !12, line: 35, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alias", file: !21, line: 98, size: 256, align: 64, elements: !31)
!31 = !{!32, !38, !39}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !21, line: 99, baseType: !33, size: 128, align: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !21, line: 99, size: 128, align: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !33, file: !21, line: 99, baseType: !29, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !33, file: !21, line: 99, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !30, file: !21, line: 100, baseType: !16, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "dests", scope: !30, file: !21, line: 101, baseType: !40, size: 64, align: 64, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strlist", file: !21, line: 96, size: 64, align: 64, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "slh_first", scope: !40, file: !21, line: 96, baseType: !19, size: 64, align: 64)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !61, !66, !67, !71, !72, !73, !77, !78, !82}
!44 = distinct !DIGlobalVariable(name: "yydebug", scope: !0, file: !6, line: 157, type: !8, isLocal: false, isDefinition: true, variable: i32* @yydebug)
!45 = distinct !DIGlobalVariable(name: "yynerrs", scope: !0, file: !6, line: 158, type: !8, isLocal: false, isDefinition: true, variable: i32* @yynerrs)
!46 = distinct !DIGlobalVariable(name: "yyerrflag", scope: !0, file: !6, line: 160, type: !8, isLocal: false, isDefinition: true, variable: i32* @yyerrflag)
!47 = distinct !DIGlobalVariable(name: "yychar", scope: !0, file: !6, line: 161, type: !8, isLocal: false, isDefinition: true, variable: i32* @yychar)
!48 = distinct !DIGlobalVariable(name: "yyval", scope: !0, file: !6, line: 162, type: !11, isLocal: false, isDefinition: true, variable: %union.YYSTYPE* @yyval)
!49 = distinct !DIGlobalVariable(name: "yylval", scope: !0, file: !6, line: 163, type: !11, isLocal: false, isDefinition: true, variable: %union.YYSTYPE* @yylval)
!50 = distinct !DIGlobalVariable(name: "yystack", scope: !0, file: !6, line: 189, type: !51, isLocal: true, isDefinition: true, variable: %struct.YYSTACKDATA* @yystack)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "YYSTACKDATA", file: !6, line: 187, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 180, size: 384, align: 64, elements: !53)
!53 = !{!54, !56, !57, !58, !59, !60}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !52, file: !6, line: 181, baseType: !55, size: 32, align: 32)
!55 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "s_base", scope: !52, file: !6, line: 182, baseType: !9, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "s_mark", scope: !52, file: !6, line: 183, baseType: !9, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "s_last", scope: !52, file: !6, line: 184, baseType: !9, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "l_base", scope: !52, file: !6, line: 185, baseType: !10, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "l_mark", scope: !52, file: !6, line: 186, baseType: !10, size: 64, align: 64, offset: 320)
!61 = distinct !DIGlobalVariable(name: "yydefred", scope: !0, file: !6, line: 100, type: !62, isLocal: true, isDefinition: true, variable: [15 x i16]* @yydefred)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 240, align: 16, elements: !64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!64 = !{!65}
!65 = !DISubrange(count: 15)
!66 = distinct !DIGlobalVariable(name: "yysindex", scope: !0, file: !6, line: 107, type: !62, isLocal: true, isDefinition: true, variable: [15 x i16]* @yysindex)
!67 = distinct !DIGlobalVariable(name: "yycheck", scope: !0, file: !6, line: 122, type: !68, isLocal: true, isDefinition: true, variable: [11 x i16]* @yycheck)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 176, align: 16, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 11)
!71 = distinct !DIGlobalVariable(name: "yytable", scope: !0, file: !6, line: 119, type: !68, isLocal: true, isDefinition: true, variable: [11 x i16]* @yytable)
!72 = distinct !DIGlobalVariable(name: "yyrindex", scope: !0, file: !6, line: 111, type: !62, isLocal: true, isDefinition: true, variable: [15 x i16]* @yyrindex)
!73 = distinct !DIGlobalVariable(name: "yylen", scope: !0, file: !6, line: 97, type: !74, isLocal: true, isDefinition: true, variable: [8 x i16]* @yylen)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, align: 16, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 8)
!77 = distinct !DIGlobalVariable(name: "yylhs", scope: !0, file: !6, line: 94, type: !74, isLocal: true, isDefinition: true, variable: [8 x i16]* @yylhs)
!78 = distinct !DIGlobalVariable(name: "yygindex", scope: !0, file: !6, line: 115, type: !79, isLocal: true, isDefinition: true, variable: [4 x i16]* @yygindex)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, align: 16, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 4)
!82 = distinct !DIGlobalVariable(name: "yydgoto", scope: !0, file: !6, line: 104, type: !79, isLocal: true, isDefinition: true, variable: [4 x i16]* @yydgoto)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!86 = distinct !DISubprogram(name: "yywrap", scope: !12, file: !12, line: 19, type: !87, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{!8}
!89 = !DILocation(line: 21, column: 2, scope: !86)
!90 = distinct !DISubprogram(name: "yyparse", scope: !6, file: !6, line: 250, type: !87, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DILocalVariable(name: "yym", scope: !90, file: !6, line: 252, type: !8)
!92 = !DIExpression()
!93 = !DILocation(line: 252, column: 9, scope: !90)
!94 = !DILocalVariable(name: "yyn", scope: !90, file: !6, line: 252, type: !8)
!95 = !DILocation(line: 252, column: 14, scope: !90)
!96 = !DILocalVariable(name: "yystate", scope: !90, file: !6, line: 252, type: !8)
!97 = !DILocation(line: 252, column: 19, scope: !90)
!98 = !DILocation(line: 264, column: 13, scope: !90)
!99 = !DILocation(line: 265, column: 15, scope: !90)
!100 = !DILocation(line: 266, column: 12, scope: !90)
!101 = !DILocation(line: 267, column: 13, scope: !90)
!102 = !DILocation(line: 273, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !90, file: !6, line: 273, column: 9)
!104 = !DILocation(line: 273, column: 24, scope: !103)
!105 = !DILocation(line: 273, column: 31, scope: !103)
!106 = !DILocation(line: 273, column: 34, scope: !107)
!107 = !DILexicalBlockFile(scope: !103, file: !6, discriminator: 1)
!108 = !DILocation(line: 273, column: 56, scope: !107)
!109 = !DILocation(line: 273, column: 9, scope: !107)
!110 = !DILocation(line: 273, column: 65, scope: !111)
!111 = !DILexicalBlockFile(scope: !103, file: !6, discriminator: 2)
!112 = !DILocation(line: 274, column: 30, scope: !90)
!113 = !DILocation(line: 274, column: 20, scope: !90)
!114 = !DILocation(line: 275, column: 30, scope: !90)
!115 = !DILocation(line: 275, column: 20, scope: !90)
!116 = !DILocation(line: 276, column: 13, scope: !90)
!117 = !DILocation(line: 277, column: 14, scope: !90)
!118 = !DILocation(line: 277, column: 21, scope: !90)
!119 = !DILocation(line: 277, column: 5, scope: !90)
!120 = !DILocation(line: 280, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !90, file: !6, line: 280, column: 9)
!122 = !DILocation(line: 280, column: 16, scope: !121)
!123 = !DILocation(line: 280, column: 14, scope: !121)
!124 = !DILocation(line: 280, column: 35, scope: !121)
!125 = !DILocation(line: 280, column: 9, scope: !90)
!126 = !DILocation(line: 280, column: 41, scope: !127)
!127 = !DILexicalBlockFile(scope: !121, file: !6, discriminator: 1)
!128 = !DILocation(line: 281, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !90, file: !6, line: 281, column: 9)
!130 = !DILocation(line: 281, column: 16, scope: !129)
!131 = !DILocation(line: 281, column: 9, scope: !90)
!132 = !DILocation(line: 283, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !6, line: 283, column: 13)
!134 = distinct !DILexicalBlock(scope: !129, file: !6, line: 282, column: 5)
!135 = !DILocation(line: 283, column: 21, scope: !133)
!136 = !DILocation(line: 283, column: 32, scope: !133)
!137 = !DILocation(line: 283, column: 13, scope: !134)
!138 = !DILocation(line: 283, column: 44, scope: !139)
!139 = !DILexicalBlockFile(scope: !133, file: !6, discriminator: 1)
!140 = !DILocation(line: 283, column: 37, scope: !139)
!141 = !DILocation(line: 292, column: 5, scope: !134)
!142 = !DILocation(line: 293, column: 25, scope: !143)
!143 = distinct !DILexicalBlock(scope: !90, file: !6, line: 293, column: 9)
!144 = !DILocation(line: 293, column: 16, scope: !143)
!145 = !DILocation(line: 293, column: 14, scope: !143)
!146 = !DILocation(line: 293, column: 35, scope: !143)
!147 = !DILocation(line: 293, column: 46, scope: !148)
!148 = !DILexicalBlockFile(scope: !143, file: !6, discriminator: 1)
!149 = !DILocation(line: 293, column: 43, scope: !148)
!150 = !DILocation(line: 293, column: 54, scope: !148)
!151 = !DILocation(line: 293, column: 59, scope: !148)
!152 = !DILocation(line: 294, column: 13, scope: !143)
!153 = !DILocation(line: 294, column: 17, scope: !143)
!154 = !DILocation(line: 294, column: 23, scope: !143)
!155 = !DILocation(line: 294, column: 34, scope: !148)
!156 = !DILocation(line: 294, column: 26, scope: !148)
!157 = !DILocation(line: 294, column: 42, scope: !148)
!158 = !DILocation(line: 294, column: 39, scope: !148)
!159 = !DILocation(line: 293, column: 9, scope: !160)
!160 = !DILexicalBlockFile(scope: !90, file: !6, discriminator: 2)
!161 = !DILocation(line: 301, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !6, line: 301, column: 13)
!163 = distinct !DILexicalBlock(scope: !143, file: !6, line: 295, column: 5)
!164 = !DILocation(line: 301, column: 39, scope: !162)
!165 = !DILocation(line: 301, column: 28, scope: !162)
!166 = !DILocation(line: 301, column: 46, scope: !162)
!167 = !DILocation(line: 301, column: 49, scope: !168)
!168 = !DILexicalBlockFile(scope: !162, file: !6, discriminator: 1)
!169 = !DILocation(line: 301, column: 71, scope: !168)
!170 = !DILocation(line: 301, column: 13, scope: !168)
!171 = !DILocation(line: 303, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !6, line: 302, column: 9)
!173 = !DILocation(line: 305, column: 27, scope: !163)
!174 = !DILocation(line: 305, column: 19, scope: !163)
!175 = !DILocation(line: 305, column: 17, scope: !163)
!176 = !DILocation(line: 306, column: 37, scope: !163)
!177 = !DILocation(line: 306, column: 29, scope: !163)
!178 = !DILocation(line: 306, column: 10, scope: !163)
!179 = !DILocation(line: 306, column: 27, scope: !163)
!180 = !DILocation(line: 307, column: 10, scope: !163)
!181 = !DILocation(line: 307, column: 29, scope: !163)
!182 = !DILocation(line: 308, column: 16, scope: !163)
!183 = !DILocation(line: 309, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !163, file: !6, line: 309, column: 13)
!185 = !DILocation(line: 309, column: 23, scope: !184)
!186 = !DILocation(line: 309, column: 13, scope: !163)
!187 = !DILocation(line: 309, column: 28, scope: !188)
!188 = !DILexicalBlockFile(scope: !184, file: !6, discriminator: 1)
!189 = !DILocation(line: 310, column: 9, scope: !163)
!190 = !DILocation(line: 312, column: 25, scope: !191)
!191 = distinct !DILexicalBlock(scope: !90, file: !6, line: 312, column: 9)
!192 = !DILocation(line: 312, column: 16, scope: !191)
!193 = !DILocation(line: 312, column: 14, scope: !191)
!194 = !DILocation(line: 312, column: 35, scope: !191)
!195 = !DILocation(line: 312, column: 46, scope: !196)
!196 = !DILexicalBlockFile(scope: !191, file: !6, discriminator: 1)
!197 = !DILocation(line: 312, column: 43, scope: !196)
!198 = !DILocation(line: 312, column: 54, scope: !196)
!199 = !DILocation(line: 312, column: 59, scope: !196)
!200 = !DILocation(line: 313, column: 13, scope: !191)
!201 = !DILocation(line: 313, column: 17, scope: !191)
!202 = !DILocation(line: 313, column: 23, scope: !191)
!203 = !DILocation(line: 313, column: 34, scope: !196)
!204 = !DILocation(line: 313, column: 26, scope: !196)
!205 = !DILocation(line: 313, column: 42, scope: !196)
!206 = !DILocation(line: 313, column: 39, scope: !196)
!207 = !DILocation(line: 312, column: 9, scope: !160)
!208 = !DILocation(line: 315, column: 23, scope: !209)
!209 = distinct !DILexicalBlock(scope: !191, file: !6, line: 314, column: 5)
!210 = !DILocation(line: 315, column: 15, scope: !209)
!211 = !DILocation(line: 315, column: 13, scope: !209)
!212 = !DILocation(line: 316, column: 9, scope: !209)
!213 = !DILocation(line: 318, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !90, file: !6, line: 318, column: 9)
!215 = !DILocation(line: 318, column: 9, scope: !90)
!216 = !DILocation(line: 318, column: 20, scope: !217)
!217 = !DILexicalBlockFile(scope: !214, file: !6, discriminator: 1)
!218 = !DILocation(line: 320, column: 5, scope: !90)
!219 = !DILocation(line: 322, column: 5, scope: !90)
!220 = !DILocation(line: 325, column: 5, scope: !90)
!221 = !DILocation(line: 328, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !90, file: !6, line: 328, column: 9)
!223 = !DILocation(line: 328, column: 19, scope: !222)
!224 = !DILocation(line: 328, column: 9, scope: !90)
!225 = !DILocation(line: 330, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !6, line: 329, column: 5)
!227 = !DILocation(line: 331, column: 9, scope: !226)
!228 = !DILocation(line: 333, column: 42, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !6, line: 333, column: 17)
!230 = distinct !DILexicalBlock(scope: !231, file: !6, line: 332, column: 9)
!231 = distinct !DILexicalBlock(scope: !232, file: !6, line: 331, column: 9)
!232 = distinct !DILexicalBlock(scope: !226, file: !6, line: 331, column: 9)
!233 = !DILocation(line: 333, column: 33, scope: !229)
!234 = !DILocation(line: 333, column: 24, scope: !229)
!235 = !DILocation(line: 333, column: 22, scope: !229)
!236 = !DILocation(line: 333, column: 51, scope: !229)
!237 = !DILocation(line: 333, column: 59, scope: !238)
!238 = !DILexicalBlockFile(scope: !229, file: !6, discriminator: 1)
!239 = !DILocation(line: 333, column: 67, scope: !238)
!240 = !DILocation(line: 333, column: 72, scope: !238)
!241 = !DILocation(line: 334, column: 21, scope: !229)
!242 = !DILocation(line: 334, column: 25, scope: !229)
!243 = !DILocation(line: 334, column: 31, scope: !229)
!244 = !DILocation(line: 334, column: 42, scope: !238)
!245 = !DILocation(line: 334, column: 34, scope: !238)
!246 = !DILocation(line: 334, column: 47, scope: !238)
!247 = !DILocation(line: 333, column: 17, scope: !248)
!248 = !DILexicalBlockFile(scope: !230, file: !6, discriminator: 2)
!249 = !DILocation(line: 341, column: 29, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !6, line: 341, column: 21)
!251 = distinct !DILexicalBlock(scope: !229, file: !6, line: 335, column: 13)
!252 = !DILocation(line: 341, column: 47, scope: !250)
!253 = !DILocation(line: 341, column: 36, scope: !250)
!254 = !DILocation(line: 341, column: 54, scope: !250)
!255 = !DILocation(line: 341, column: 57, scope: !256)
!256 = !DILexicalBlockFile(scope: !250, file: !6, discriminator: 1)
!257 = !DILocation(line: 341, column: 79, scope: !256)
!258 = !DILocation(line: 341, column: 21, scope: !256)
!259 = !DILocation(line: 343, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !250, file: !6, line: 342, column: 17)
!261 = !DILocation(line: 345, column: 35, scope: !251)
!262 = !DILocation(line: 345, column: 27, scope: !251)
!263 = !DILocation(line: 345, column: 25, scope: !251)
!264 = !DILocation(line: 346, column: 45, scope: !251)
!265 = !DILocation(line: 346, column: 37, scope: !251)
!266 = !DILocation(line: 346, column: 18, scope: !251)
!267 = !DILocation(line: 346, column: 35, scope: !251)
!268 = !DILocation(line: 347, column: 18, scope: !251)
!269 = !DILocation(line: 347, column: 37, scope: !251)
!270 = !DILocation(line: 348, column: 17, scope: !251)
!271 = !DILocation(line: 357, column: 29, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !6, line: 357, column: 21)
!273 = distinct !DILexicalBlock(scope: !229, file: !6, line: 351, column: 13)
!274 = !DILocation(line: 357, column: 47, scope: !272)
!275 = !DILocation(line: 357, column: 36, scope: !272)
!276 = !DILocation(line: 357, column: 21, scope: !273)
!277 = !DILocation(line: 357, column: 55, scope: !278)
!278 = !DILexicalBlockFile(scope: !272, file: !6, discriminator: 1)
!279 = !DILocation(line: 358, column: 17, scope: !273)
!280 = !DILocation(line: 359, column: 17, scope: !273)
!281 = !DILocation(line: 331, column: 9, scope: !282)
!282 = !DILexicalBlockFile(scope: !231, file: !6, discriminator: 1)
!283 = distinct !{!283, !227}
!284 = !DILocation(line: 365, column: 13, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !6, line: 365, column: 13)
!286 = distinct !DILexicalBlock(scope: !222, file: !6, line: 364, column: 5)
!287 = !DILocation(line: 365, column: 20, scope: !285)
!288 = !DILocation(line: 365, column: 13, scope: !286)
!289 = !DILocation(line: 365, column: 26, scope: !290)
!290 = !DILexicalBlockFile(scope: !285, file: !6, discriminator: 1)
!291 = !DILocation(line: 374, column: 16, scope: !286)
!292 = !DILocation(line: 375, column: 9, scope: !286)
!293 = !DILocation(line: 384, column: 17, scope: !90)
!294 = !DILocation(line: 384, column: 11, scope: !90)
!295 = !DILocation(line: 384, column: 9, scope: !90)
!296 = !DILocation(line: 385, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !90, file: !6, line: 385, column: 9)
!298 = !DILocation(line: 385, column: 9, scope: !90)
!299 = !DILocation(line: 386, column: 34, scope: !297)
!300 = !DILocation(line: 386, column: 33, scope: !297)
!301 = !DILocation(line: 386, column: 17, scope: !297)
!302 = !DILocation(line: 386, column: 25, scope: !297)
!303 = !DILocation(line: 386, column: 9, scope: !297)
!304 = !DILocation(line: 388, column: 9, scope: !297)
!305 = !DILocation(line: 389, column: 13, scope: !90)
!306 = !DILocation(line: 389, column: 5, scope: !90)
!307 = !DILocation(line: 43, column: 34, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !12, line: 42, column: 2)
!309 = !DILexicalBlockFile(scope: !310, file: !12, discriminator: 0)
!310 = distinct !DILexicalBlock(scope: !90, file: !6, line: 390, column: 5)
!311 = !DILocation(line: 43, column: 26, scope: !308)
!312 = !DILocation(line: 43, column: 45, scope: !308)
!313 = !DILocation(line: 43, column: 24, scope: !308)
!314 = !DILocation(line: 45, column: 1, scope: !309)
!315 = !DILocation(line: 48, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !12, line: 47, column: 2)
!317 = !DILocation(line: 50, column: 1, scope: !309)
!318 = !DILocation(line: 52, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !12, line: 52, column: 8)
!320 = distinct !DILexicalBlock(scope: !309, file: !12, line: 51, column: 2)
!321 = !DILocation(line: 52, column: 8, scope: !319)
!322 = !DILocation(line: 52, column: 26, scope: !319)
!323 = !DILocation(line: 52, column: 32, scope: !319)
!324 = !DILocation(line: 52, column: 39, scope: !319)
!325 = !DILocation(line: 52, column: 50, scope: !326)
!326 = !DILexicalBlockFile(scope: !319, file: !12, discriminator: 1)
!327 = !DILocation(line: 52, column: 42, scope: !326)
!328 = !DILocation(line: 52, column: 61, scope: !326)
!329 = !DILocation(line: 52, column: 67, scope: !326)
!330 = !DILocation(line: 52, column: 8, scope: !326)
!331 = !DILocation(line: 53, column: 4, scope: !319)
!332 = distinct !{!332, !331}
!333 = !DILocation(line: 53, column: 12, scope: !334)
!334 = !DILexicalBlockFile(scope: !335, file: !12, discriminator: 1)
!335 = distinct !DILexicalBlock(scope: !336, file: !12, line: 53, column: 13)
!336 = distinct !DILexicalBlock(scope: !319, file: !12, line: 53, column: 7)
!337 = !DILocation(line: 53, column: 4, scope: !334)
!338 = !DILocation(line: 53, column: 22, scope: !334)
!339 = !DILocation(line: 53, column: 5, scope: !334)
!340 = !DILocation(line: 53, column: 23, scope: !334)
!341 = !DILocation(line: 53, column: 13, scope: !334)
!342 = !DILocation(line: 53, column: 14, scope: !334)
!343 = !DILocation(line: 53, column: 12, scope: !344)
!344 = !DILexicalBlockFile(scope: !335, file: !12, discriminator: 2)
!345 = !DILocation(line: 53, column: 4, scope: !344)
!346 = !DILocation(line: 53, column: 23, scope: !344)
!347 = !DILocation(line: 53, column: 5, scope: !344)
!348 = !DILocation(line: 53, column: 22, scope: !344)
!349 = !DILocation(line: 53, column: 13, scope: !344)
!350 = !DILocation(line: 53, column: 30, scope: !344)
!351 = !DILocation(line: 53, column: 12, scope: !352)
!352 = !DILexicalBlockFile(scope: !336, file: !12, discriminator: 3)
!353 = !DILocation(line: 53, column: 4, scope: !352)
!354 = !DILocation(line: 53, column: 23, scope: !352)
!355 = !DILocation(line: 53, column: 22, scope: !352)
!356 = !DILocation(line: 53, column: 5, scope: !352)
!357 = !DILocation(line: 53, column: 13, scope: !352)
!358 = !DILocation(line: 53, column: 14, scope: !352)
!359 = !DILocation(line: 53, column: 14, scope: !360)
!360 = !DILexicalBlockFile(scope: !336, file: !12, discriminator: 4)
!361 = !DILocation(line: 54, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !319, file: !12, line: 54, column: 13)
!363 = !DILocation(line: 54, column: 13, scope: !362)
!364 = !DILocation(line: 54, column: 31, scope: !362)
!365 = !DILocation(line: 54, column: 37, scope: !362)
!366 = !DILocation(line: 54, column: 13, scope: !319)
!367 = !DILocation(line: 55, column: 39, scope: !362)
!368 = !DILocation(line: 55, column: 31, scope: !362)
!369 = !DILocation(line: 55, column: 50, scope: !362)
!370 = !DILocation(line: 55, column: 13, scope: !362)
!371 = !DILocation(line: 55, column: 5, scope: !362)
!372 = !DILocation(line: 55, column: 23, scope: !362)
!373 = !DILocation(line: 55, column: 29, scope: !362)
!374 = !DILocation(line: 56, column: 26, scope: !320)
!375 = !DILocation(line: 56, column: 18, scope: !320)
!376 = !DILocation(line: 56, column: 36, scope: !320)
!377 = !DILocation(line: 56, column: 16, scope: !320)
!378 = !DILocation(line: 58, column: 1, scope: !309)
!379 = !DILocalVariable(name: "al", scope: !380, file: !12, line: 62, type: !29)
!380 = distinct !DILexicalBlock(scope: !309, file: !12, line: 61, column: 2)
!381 = !DILocation(line: 62, column: 18, scope: !380)
!382 = !DILocation(line: 64, column: 16, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !12, line: 64, column: 8)
!384 = !DILocation(line: 64, column: 8, scope: !383)
!385 = !DILocation(line: 64, column: 27, scope: !383)
!386 = !DILocation(line: 64, column: 33, scope: !383)
!387 = !DILocation(line: 64, column: 8, scope: !380)
!388 = !DILocation(line: 65, column: 5, scope: !383)
!389 = !DILocation(line: 66, column: 9, scope: !380)
!390 = !DILocation(line: 66, column: 7, scope: !380)
!391 = !DILocation(line: 67, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !380, file: !12, line: 67, column: 8)
!393 = !DILocation(line: 67, column: 11, scope: !392)
!394 = !DILocation(line: 67, column: 8, scope: !380)
!395 = !DILocation(line: 68, column: 5, scope: !392)
!396 = !DILocation(line: 69, column: 24, scope: !380)
!397 = !DILocation(line: 69, column: 16, scope: !380)
!398 = !DILocation(line: 69, column: 35, scope: !380)
!399 = !DILocation(line: 69, column: 4, scope: !380)
!400 = !DILocation(line: 69, column: 8, scope: !380)
!401 = !DILocation(line: 69, column: 14, scope: !380)
!402 = !DILocation(line: 70, column: 37, scope: !380)
!403 = !DILocation(line: 70, column: 29, scope: !380)
!404 = !DILocation(line: 70, column: 48, scope: !380)
!405 = !DILocation(line: 70, column: 4, scope: !380)
!406 = !DILocation(line: 70, column: 8, scope: !380)
!407 = !DILocation(line: 70, column: 6, scope: !380)
!408 = !DILocation(line: 70, column: 27, scope: !380)
!409 = !DILocation(line: 71, column: 18, scope: !380)
!410 = !DILocation(line: 71, column: 16, scope: !380)
!411 = !DILocation(line: 73, column: 1, scope: !309)
!412 = !DILocation(line: 75, column: 15, scope: !413)
!413 = distinct !DILexicalBlock(scope: !309, file: !12, line: 74, column: 2)
!414 = !DILocation(line: 76, column: 16, scope: !413)
!415 = !DILocation(line: 78, column: 1, scope: !309)
!416 = !DILocalVariable(name: "it", scope: !417, file: !12, line: 82, type: !19)
!417 = distinct !DILexicalBlock(scope: !309, file: !12, line: 81, column: 2)
!418 = !DILocation(line: 82, column: 20, scope: !417)
!419 = !DILocation(line: 84, column: 16, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !12, line: 84, column: 8)
!421 = !DILocation(line: 84, column: 8, scope: !420)
!422 = !DILocation(line: 84, column: 26, scope: !420)
!423 = !DILocation(line: 84, column: 32, scope: !420)
!424 = !DILocation(line: 84, column: 8, scope: !417)
!425 = !DILocation(line: 85, column: 5, scope: !420)
!426 = !DILocation(line: 86, column: 9, scope: !417)
!427 = !DILocation(line: 86, column: 7, scope: !417)
!428 = !DILocation(line: 87, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !417, file: !12, line: 87, column: 8)
!430 = !DILocation(line: 87, column: 11, scope: !429)
!431 = !DILocation(line: 87, column: 8, scope: !417)
!432 = !DILocation(line: 88, column: 5, scope: !429)
!433 = !DILocation(line: 89, column: 22, scope: !417)
!434 = !DILocation(line: 89, column: 14, scope: !417)
!435 = !DILocation(line: 89, column: 32, scope: !417)
!436 = !DILocation(line: 89, column: 4, scope: !417)
!437 = !DILocation(line: 89, column: 8, scope: !417)
!438 = !DILocation(line: 89, column: 12, scope: !417)
!439 = !DILocation(line: 90, column: 18, scope: !417)
!440 = !DILocation(line: 90, column: 16, scope: !417)
!441 = !DILocation(line: 92, column: 1, scope: !309)
!442 = !DILocalVariable(name: "it", scope: !443, file: !12, line: 94, type: !19)
!443 = distinct !DILexicalBlock(scope: !309, file: !12, line: 93, column: 2)
!444 = !DILocation(line: 94, column: 20, scope: !443)
!445 = !DILocation(line: 96, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !12, line: 96, column: 8)
!447 = !DILocation(line: 96, column: 8, scope: !446)
!448 = !DILocation(line: 96, column: 27, scope: !446)
!449 = !DILocation(line: 96, column: 33, scope: !446)
!450 = !DILocation(line: 96, column: 8, scope: !443)
!451 = !DILocation(line: 97, column: 5, scope: !446)
!452 = !DILocation(line: 98, column: 9, scope: !443)
!453 = !DILocation(line: 98, column: 7, scope: !443)
!454 = !DILocation(line: 99, column: 8, scope: !455)
!455 = distinct !DILexicalBlock(scope: !443, file: !12, line: 99, column: 8)
!456 = !DILocation(line: 99, column: 11, scope: !455)
!457 = !DILocation(line: 99, column: 8, scope: !443)
!458 = !DILocation(line: 100, column: 5, scope: !455)
!459 = !DILocation(line: 101, column: 22, scope: !443)
!460 = !DILocation(line: 101, column: 14, scope: !443)
!461 = !DILocation(line: 101, column: 33, scope: !443)
!462 = !DILocation(line: 101, column: 4, scope: !443)
!463 = !DILocation(line: 101, column: 8, scope: !443)
!464 = !DILocation(line: 101, column: 12, scope: !443)
!465 = !DILocation(line: 102, column: 34, scope: !443)
!466 = !DILocation(line: 102, column: 26, scope: !443)
!467 = !DILocation(line: 102, column: 44, scope: !443)
!468 = !DILocation(line: 102, column: 3, scope: !443)
!469 = !DILocation(line: 102, column: 4, scope: !443)
!470 = !DILocation(line: 102, column: 24, scope: !443)
!471 = !DILocation(line: 103, column: 18, scope: !443)
!472 = !DILocation(line: 103, column: 16, scope: !443)
!473 = !DILocation(line: 105, column: 1, scope: !309)
!474 = !DILocation(line: 466, column: 23, scope: !90)
!475 = !DILocation(line: 466, column: 20, scope: !90)
!476 = !DILocation(line: 467, column: 24, scope: !90)
!477 = !DILocation(line: 467, column: 15, scope: !90)
!478 = !DILocation(line: 467, column: 13, scope: !90)
!479 = !DILocation(line: 468, column: 23, scope: !90)
!480 = !DILocation(line: 468, column: 20, scope: !90)
!481 = !DILocation(line: 469, column: 17, scope: !90)
!482 = !DILocation(line: 469, column: 11, scope: !90)
!483 = !DILocation(line: 469, column: 9, scope: !90)
!484 = !DILocation(line: 470, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !90, file: !6, line: 470, column: 9)
!486 = !DILocation(line: 470, column: 17, scope: !485)
!487 = !DILocation(line: 470, column: 22, scope: !485)
!488 = !DILocation(line: 470, column: 25, scope: !489)
!489 = !DILexicalBlockFile(scope: !485, file: !6, discriminator: 1)
!490 = !DILocation(line: 470, column: 29, scope: !489)
!491 = !DILocation(line: 470, column: 9, scope: !489)
!492 = !DILocation(line: 477, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !485, file: !6, line: 471, column: 5)
!494 = !DILocation(line: 478, column: 10, scope: !493)
!495 = !DILocation(line: 478, column: 27, scope: !493)
!496 = !DILocation(line: 479, column: 10, scope: !493)
!497 = !DILocation(line: 479, column: 29, scope: !493)
!498 = !DILocation(line: 480, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !6, line: 480, column: 13)
!500 = !DILocation(line: 480, column: 20, scope: !499)
!501 = !DILocation(line: 480, column: 13, scope: !493)
!502 = !DILocation(line: 482, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !6, line: 482, column: 17)
!504 = distinct !DILexicalBlock(scope: !499, file: !6, line: 481, column: 9)
!505 = !DILocation(line: 482, column: 25, scope: !503)
!506 = !DILocation(line: 482, column: 36, scope: !503)
!507 = !DILocation(line: 482, column: 17, scope: !504)
!508 = !DILocation(line: 482, column: 48, scope: !509)
!509 = !DILexicalBlockFile(scope: !503, file: !6, discriminator: 1)
!510 = !DILocation(line: 482, column: 41, scope: !509)
!511 = !DILocation(line: 491, column: 9, scope: !504)
!512 = !DILocation(line: 492, column: 13, scope: !513)
!513 = distinct !DILexicalBlock(scope: !493, file: !6, line: 492, column: 13)
!514 = !DILocation(line: 492, column: 20, scope: !513)
!515 = !DILocation(line: 492, column: 13, scope: !493)
!516 = !DILocation(line: 492, column: 26, scope: !517)
!517 = !DILexicalBlockFile(scope: !513, file: !6, discriminator: 1)
!518 = !DILocation(line: 493, column: 9, scope: !493)
!519 = !DILocation(line: 495, column: 25, scope: !520)
!520 = distinct !DILexicalBlock(scope: !90, file: !6, line: 495, column: 9)
!521 = !DILocation(line: 495, column: 16, scope: !520)
!522 = !DILocation(line: 495, column: 14, scope: !520)
!523 = !DILocation(line: 495, column: 31, scope: !520)
!524 = !DILocation(line: 495, column: 42, scope: !525)
!525 = !DILexicalBlockFile(scope: !520, file: !6, discriminator: 1)
!526 = !DILocation(line: 495, column: 39, scope: !525)
!527 = !DILocation(line: 495, column: 51, scope: !525)
!528 = !DILocation(line: 495, column: 56, scope: !525)
!529 = !DILocation(line: 496, column: 13, scope: !520)
!530 = !DILocation(line: 496, column: 17, scope: !520)
!531 = !DILocation(line: 496, column: 23, scope: !520)
!532 = !DILocation(line: 496, column: 34, scope: !525)
!533 = !DILocation(line: 496, column: 26, scope: !525)
!534 = !DILocation(line: 496, column: 42, scope: !525)
!535 = !DILocation(line: 496, column: 39, scope: !525)
!536 = !DILocation(line: 495, column: 9, scope: !160)
!537 = !DILocation(line: 497, column: 27, scope: !520)
!538 = !DILocation(line: 497, column: 19, scope: !520)
!539 = !DILocation(line: 497, column: 17, scope: !520)
!540 = !DILocation(line: 497, column: 9, scope: !520)
!541 = !DILocation(line: 499, column: 27, scope: !520)
!542 = !DILocation(line: 499, column: 19, scope: !520)
!543 = !DILocation(line: 499, column: 17, scope: !520)
!544 = !DILocation(line: 505, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !90, file: !6, line: 505, column: 9)
!546 = !DILocation(line: 505, column: 35, scope: !545)
!547 = !DILocation(line: 505, column: 24, scope: !545)
!548 = !DILocation(line: 505, column: 42, scope: !545)
!549 = !DILocation(line: 505, column: 45, scope: !550)
!550 = !DILexicalBlockFile(scope: !545, file: !6, discriminator: 1)
!551 = !DILocation(line: 505, column: 67, scope: !550)
!552 = !DILocation(line: 505, column: 9, scope: !550)
!553 = !DILocation(line: 507, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !545, file: !6, line: 506, column: 5)
!555 = !DILocation(line: 509, column: 33, scope: !90)
!556 = !DILocation(line: 509, column: 25, scope: !90)
!557 = !DILocation(line: 509, column: 6, scope: !90)
!558 = !DILocation(line: 509, column: 23, scope: !90)
!559 = !DILocation(line: 510, column: 6, scope: !90)
!560 = !DILocation(line: 510, column: 25, scope: !90)
!561 = !DILocation(line: 511, column: 5, scope: !90)
!562 = !DILocation(line: 514, column: 5, scope: !90)
!563 = !DILocation(line: 518, column: 5, scope: !90)
!564 = !DILocation(line: 522, column: 5, scope: !90)
!565 = !DILocation(line: 523, column: 1, scope: !90)
!566 = distinct !DISubprogram(name: "yygrowstack", scope: !6, file: !6, line: 199, type: !567, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!567 = !DISubroutineType(types: !568)
!568 = !{!8, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!570 = !DILocalVariable(name: "data", arg: 1, scope: !566, file: !6, line: 199, type: !569)
!571 = !DILocation(line: 199, column: 37, scope: !566)
!572 = !DILocalVariable(name: "i", scope: !566, file: !6, line: 201, type: !8)
!573 = !DILocation(line: 201, column: 9, scope: !566)
!574 = !DILocalVariable(name: "newsize", scope: !566, file: !6, line: 202, type: !55)
!575 = !DILocation(line: 202, column: 14, scope: !566)
!576 = !DILocalVariable(name: "newss", scope: !566, file: !6, line: 203, type: !9)
!577 = !DILocation(line: 203, column: 12, scope: !566)
!578 = !DILocalVariable(name: "newvs", scope: !566, file: !6, line: 204, type: !10)
!579 = !DILocation(line: 204, column: 14, scope: !566)
!580 = !DILocation(line: 206, column: 20, scope: !581)
!581 = distinct !DILexicalBlock(scope: !566, file: !6, line: 206, column: 9)
!582 = !DILocation(line: 206, column: 26, scope: !581)
!583 = !DILocation(line: 206, column: 18, scope: !581)
!584 = !DILocation(line: 206, column: 37, scope: !581)
!585 = !DILocation(line: 206, column: 9, scope: !566)
!586 = !DILocation(line: 207, column: 17, scope: !581)
!587 = !DILocation(line: 207, column: 9, scope: !581)
!588 = !DILocation(line: 208, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !6, line: 208, column: 14)
!590 = !DILocation(line: 208, column: 22, scope: !589)
!591 = !DILocation(line: 208, column: 14, scope: !581)
!592 = !DILocation(line: 209, column: 9, scope: !589)
!593 = !DILocation(line: 210, column: 23, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !6, line: 210, column: 14)
!595 = !DILocation(line: 210, column: 29, scope: !594)
!596 = !DILocation(line: 210, column: 14, scope: !589)
!597 = !DILocation(line: 211, column: 17, scope: !594)
!598 = !DILocation(line: 211, column: 9, scope: !594)
!599 = !DILocation(line: 213, column: 16, scope: !566)
!600 = !DILocation(line: 213, column: 22, scope: !566)
!601 = !DILocation(line: 213, column: 31, scope: !566)
!602 = !DILocation(line: 213, column: 37, scope: !566)
!603 = !DILocation(line: 213, column: 29, scope: !566)
!604 = !DILocation(line: 213, column: 9, scope: !566)
!605 = !DILocation(line: 213, column: 7, scope: !566)
!606 = !DILocation(line: 214, column: 30, scope: !566)
!607 = !DILocation(line: 214, column: 36, scope: !566)
!608 = !DILocation(line: 214, column: 44, scope: !566)
!609 = !DILocation(line: 214, column: 52, scope: !566)
!610 = !DILocation(line: 214, column: 22, scope: !566)
!611 = !DILocation(line: 214, column: 13, scope: !566)
!612 = !DILocation(line: 214, column: 11, scope: !566)
!613 = !DILocation(line: 215, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !566, file: !6, line: 215, column: 9)
!615 = !DILocation(line: 215, column: 15, scope: !614)
!616 = !DILocation(line: 215, column: 9, scope: !566)
!617 = !DILocation(line: 216, column: 9, scope: !614)
!618 = !DILocation(line: 218, column: 20, scope: !566)
!619 = !DILocation(line: 218, column: 5, scope: !566)
!620 = !DILocation(line: 218, column: 11, scope: !566)
!621 = !DILocation(line: 218, column: 18, scope: !566)
!622 = !DILocation(line: 219, column: 20, scope: !566)
!623 = !DILocation(line: 219, column: 28, scope: !566)
!624 = !DILocation(line: 219, column: 26, scope: !566)
!625 = !DILocation(line: 219, column: 5, scope: !566)
!626 = !DILocation(line: 219, column: 11, scope: !566)
!627 = !DILocation(line: 219, column: 18, scope: !566)
!628 = !DILocation(line: 221, column: 32, scope: !566)
!629 = !DILocation(line: 221, column: 38, scope: !566)
!630 = !DILocation(line: 221, column: 46, scope: !566)
!631 = !DILocation(line: 221, column: 54, scope: !566)
!632 = !DILocation(line: 221, column: 24, scope: !566)
!633 = !DILocation(line: 221, column: 13, scope: !566)
!634 = !DILocation(line: 221, column: 11, scope: !566)
!635 = !DILocation(line: 222, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !566, file: !6, line: 222, column: 9)
!637 = !DILocation(line: 222, column: 15, scope: !636)
!638 = !DILocation(line: 222, column: 9, scope: !566)
!639 = !DILocation(line: 223, column: 9, scope: !636)
!640 = !DILocation(line: 225, column: 20, scope: !566)
!641 = !DILocation(line: 225, column: 5, scope: !566)
!642 = !DILocation(line: 225, column: 11, scope: !566)
!643 = !DILocation(line: 225, column: 18, scope: !566)
!644 = !DILocation(line: 226, column: 20, scope: !566)
!645 = !DILocation(line: 226, column: 28, scope: !566)
!646 = !DILocation(line: 226, column: 26, scope: !566)
!647 = !DILocation(line: 226, column: 5, scope: !566)
!648 = !DILocation(line: 226, column: 11, scope: !566)
!649 = !DILocation(line: 226, column: 18, scope: !566)
!650 = !DILocation(line: 228, column: 23, scope: !566)
!651 = !DILocation(line: 228, column: 5, scope: !566)
!652 = !DILocation(line: 228, column: 11, scope: !566)
!653 = !DILocation(line: 228, column: 21, scope: !566)
!654 = !DILocation(line: 229, column: 20, scope: !566)
!655 = !DILocation(line: 229, column: 26, scope: !566)
!656 = !DILocation(line: 229, column: 35, scope: !566)
!657 = !DILocation(line: 229, column: 33, scope: !566)
!658 = !DILocation(line: 229, column: 43, scope: !566)
!659 = !DILocation(line: 229, column: 5, scope: !566)
!660 = !DILocation(line: 229, column: 11, scope: !566)
!661 = !DILocation(line: 229, column: 18, scope: !566)
!662 = !DILocation(line: 230, column: 5, scope: !566)
!663 = !DILocation(line: 231, column: 1, scope: !566)
!664 = distinct !DISubprogram(name: "yyerror", scope: !12, file: !12, line: 13, type: !665, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!669 = !DILocalVariable(name: "msg", arg: 1, scope: !664, file: !12, line: 13, type: !667)
!670 = !DILocation(line: 13, column: 21, scope: !664)
!671 = !DILocation(line: 15, column: 31, scope: !664)
!672 = !DILocation(line: 15, column: 41, scope: !664)
!673 = !DILocation(line: 15, column: 2, scope: !664)
!674 = !DILocation(line: 16, column: 1, scope: !664)
