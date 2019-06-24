; ModuleID = './line226-fe-help.o.i'
source_filename = "./line226-fe-help.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._GHashTable = type opaque
%struct.COMMAND_REC = type { %struct._GSList*, i8*, i8*, i8** }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"help_path\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"/usr/local/share/irssi/help\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@__func__.show_help = private unnamed_addr constant [10 x i8] c"show_help\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@commands = external global %struct._GSList*, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Irssi commands:\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"No help for %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%|\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_help_init() #0 !dbg !110 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !115
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_help to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !116
  ret void, !dbg !117
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_help(i8*) #0 !dbg !118 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !121, metadata !122), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %3, metadata !124, metadata !122), !dbg !125
  %4 = load i8*, i8** %2, align 8, !dbg !126
  %5 = call noalias i8* @g_ascii_strdown(i8* %4, i64 -1), !dbg !127
  store i8* %5, i8** %3, align 8, !dbg !128
  %6 = load i8*, i8** %3, align 8, !dbg !129
  %7 = call i8* @g_strchomp(i8* %6), !dbg !130
  %8 = load i8*, i8** %3, align 8, !dbg !131
  call void @show_help(i8* %8), !dbg !132
  %9 = load i8*, i8** %3, align 8, !dbg !133
  call void @g_free(i8* %9), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: nounwind uwtable
define void @fe_help_deinit() #0 !dbg !136 {
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_help to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !137
  ret void, !dbg !138
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare noalias i8* @g_ascii_strdown(i8*, i64) #1

declare i8* @g_strchomp(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @show_help(i8*) #0 !dbg !139 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.COMMAND_REC*, align 8
  %4 = alloca %struct.COMMAND_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !140, metadata !122), !dbg !141
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %3, metadata !142, metadata !122), !dbg !143
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !144, metadata !122), !dbg !145
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !146, metadata !122), !dbg !147
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !148, metadata !122), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %7, metadata !150, metadata !122), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %8, metadata !152, metadata !122), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %9, metadata !154, metadata !122), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %10, metadata !156, metadata !122), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %11, metadata !158, metadata !122), !dbg !159
  br label %13, !dbg !160, !llvm.loop !161

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %2, align 8, !dbg !162
  %15 = icmp ne i8* %14, null, !dbg !166
  br i1 %15, label %16, label %17, !dbg !162

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !167

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.show_help, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !170
  br label %197, !dbg !173

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !174

; <label>:19:                                     ; preds = %18
  %20 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !176
  %21 = call %struct._GSList* @g_slist_sort(%struct._GSList* %20, i32 (i8*, i8*)* bitcast (i32 (%struct.COMMAND_REC*, %struct.COMMAND_REC*)* @commands_equal to i32 (i8*, i8*)*)), !dbg !177
  store %struct._GSList* %21, %struct._GSList** @commands, align 8, !dbg !178
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !179
  store %struct.COMMAND_REC* null, %struct.COMMAND_REC** %4, align 8, !dbg !180
  store i32 0, i32* %9, align 4, !dbg !181
  store i32 0, i32* %11, align 4, !dbg !182
  store i32 0, i32* %7, align 4, !dbg !183
  %22 = load i8*, i8** %2, align 8, !dbg !184
  %23 = call i64 @strlen(i8* %22) #6, !dbg !185
  %24 = trunc i64 %23 to i32, !dbg !185
  store i32 %24, i32* %8, align 4, !dbg !186
  store i32 0, i32* %10, align 4, !dbg !187
  %25 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !188
  store %struct._GSList* %25, %struct._GSList** %5, align 8, !dbg !190
  br label %26, !dbg !191

; <label>:26:                                     ; preds = %137, %19
  %27 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !192
  %28 = icmp ne %struct._GSList* %27, null, !dbg !195
  br i1 %28, label %29, label %142, !dbg !196

; <label>:29:                                     ; preds = %26
  %30 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !197
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 0, !dbg !199
  %32 = load i8*, i8** %31, align 8, !dbg !199
  %33 = bitcast i8* %32 to %struct.COMMAND_REC*, !dbg !197
  store %struct.COMMAND_REC* %33, %struct.COMMAND_REC** %3, align 8, !dbg !200
  %34 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !201
  %35 = icmp ne %struct.COMMAND_REC* %34, null, !dbg !203
  br i1 %35, label %36, label %76, !dbg !204

; <label>:36:                                     ; preds = %29
  %37 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !205
  %38 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %37, i32 0, i32 1, !dbg !207
  %39 = load i8*, i8** %38, align 8, !dbg !207
  %40 = icmp ne i8* %39, null, !dbg !208
  br i1 %40, label %41, label %76, !dbg !209

; <label>:41:                                     ; preds = %36
  %42 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !210
  %43 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %42, i32 0, i32 1, !dbg !211
  %44 = load i8*, i8** %43, align 8, !dbg !211
  %45 = icmp eq i8* %44, null, !dbg !212
  br i1 %45, label %55, label %46, !dbg !213

; <label>:46:                                     ; preds = %41
  %47 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !214
  %48 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %47, i32 0, i32 1, !dbg !215
  %49 = load i8*, i8** %48, align 8, !dbg !215
  %50 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !216
  %51 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %50, i32 0, i32 1, !dbg !217
  %52 = load i8*, i8** %51, align 8, !dbg !217
  %53 = call i32 @g_strcmp0(i8* %49, i8* %52), !dbg !218
  %54 = icmp ne i32 %53, 0, !dbg !219
  br i1 %54, label %55, label %76, !dbg !220

; <label>:55:                                     ; preds = %46, %41
  %56 = load i32, i32* %7, align 4, !dbg !222
  %57 = icmp sgt i32 %56, 0, !dbg !225
  br i1 %57, label %58, label %74, !dbg !226

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %9, align 4, !dbg !227
  %60 = icmp ne i32 %59, 0, !dbg !227
  br i1 %60, label %62, label %61, !dbg !230

; <label>:61:                                     ; preds = %58
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !231
  store i32 1, i32* %9, align 4, !dbg !233
  br label %62, !dbg !234

; <label>:62:                                     ; preds = %61, %58
  %63 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !235
  %64 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %63, i32 0, i32 1, !dbg !237
  %65 = load i8*, i8** %64, align 8, !dbg !237
  %66 = icmp ne i8* %65, null, !dbg !238
  br i1 %66, label %67, label %71, !dbg !239

; <label>:67:                                     ; preds = %62
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)), !dbg !240
  %68 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !242
  %69 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %68, i32 0, i32 1, !dbg !243
  %70 = load i8*, i8** %69, align 8, !dbg !243
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %70), !dbg !244
  br label %71, !dbg !245

; <label>:71:                                     ; preds = %67, %62
  %72 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !246
  %73 = load i32, i32* %7, align 4, !dbg !247
  call void @help_category(%struct._GSList* %72, i32 %73), !dbg !248
  br label %74, !dbg !249

; <label>:74:                                     ; preds = %71, %55
  %75 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !250
  call void @g_slist_free(%struct._GSList* %75), !dbg !251
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !252
  store i32 0, i32* %7, align 4, !dbg !253
  br label %76, !dbg !254

; <label>:76:                                     ; preds = %74, %46, %36, %29
  %77 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !255
  %78 = icmp ne %struct.COMMAND_REC* %77, null, !dbg !257
  br i1 %78, label %79, label %89, !dbg !258

; <label>:79:                                     ; preds = %76
  %80 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !259
  %81 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %80, i32 0, i32 2, !dbg !261
  %82 = load i8*, i8** %81, align 8, !dbg !261
  %83 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !262
  %84 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %83, i32 0, i32 2, !dbg !263
  %85 = load i8*, i8** %84, align 8, !dbg !263
  %86 = call i32 @g_ascii_strcasecmp(i8* %82, i8* %85), !dbg !264
  %87 = icmp eq i32 %86, 0, !dbg !265
  br i1 %87, label %88, label %89, !dbg !266

; <label>:88:                                     ; preds = %79
  br label %137, !dbg !267

; <label>:89:                                     ; preds = %79, %76
  %90 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !268
  %91 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %90, i32 0, i32 2, !dbg !270
  %92 = load i8*, i8** %91, align 8, !dbg !270
  %93 = call i64 @strlen(i8* %92) #6, !dbg !271
  %94 = trunc i64 %93 to i32, !dbg !272
  %95 = load i32, i32* %8, align 4, !dbg !273
  %96 = icmp sge i32 %94, %95, !dbg !274
  br i1 %96, label %97, label %136, !dbg !275

; <label>:97:                                     ; preds = %89
  %98 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !276
  %99 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %98, i32 0, i32 2, !dbg !277
  %100 = load i8*, i8** %99, align 8, !dbg !277
  %101 = load i8*, i8** %2, align 8, !dbg !278
  %102 = load i32, i32* %8, align 4, !dbg !279
  %103 = sext i32 %102 to i64, !dbg !279
  %104 = call i32 @g_ascii_strncasecmp(i8* %100, i8* %101, i64 %103), !dbg !280
  %105 = icmp eq i32 %104, 0, !dbg !281
  br i1 %105, label %106, label %136, !dbg !282

; <label>:106:                                    ; preds = %97
  %107 = load i32, i32* %8, align 4, !dbg !284
  %108 = sext i32 %107 to i64, !dbg !287
  %109 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !287
  %110 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %109, i32 0, i32 2, !dbg !288
  %111 = load i8*, i8** %110, align 8, !dbg !288
  %112 = getelementptr inbounds i8, i8* %111, i64 %108, !dbg !287
  %113 = load i8, i8* %112, align 1, !dbg !287
  %114 = sext i8 %113 to i32, !dbg !287
  %115 = icmp eq i32 %114, 0, !dbg !289
  br i1 %115, label %116, label %117, !dbg !290

; <label>:116:                                    ; preds = %106
  store i32 1, i32* %11, align 4, !dbg !291
  store i32 1, i32* %10, align 4, !dbg !293
  br label %142, !dbg !294

; <label>:117:                                    ; preds = %106
  %118 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !295
  %119 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %118, i32 0, i32 2, !dbg !297
  %120 = load i8*, i8** %119, align 8, !dbg !297
  %121 = load i32, i32* %8, align 4, !dbg !298
  %122 = sext i32 %121 to i64, !dbg !299
  %123 = getelementptr inbounds i8, i8* %120, i64 %122, !dbg !299
  %124 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !300
  %125 = call i8* @strchr(i8* %124, i32 32) #6, !dbg !301
  %126 = icmp eq i8* %125, null, !dbg !302
  br i1 %126, label %127, label %134, !dbg !303

; <label>:127:                                    ; preds = %117
  %128 = load i32, i32* %7, align 4, !dbg !304
  %129 = add nsw i32 %128, 1, !dbg !304
  store i32 %129, i32* %7, align 4, !dbg !304
  %130 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !306
  %131 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !307
  %132 = bitcast %struct.COMMAND_REC* %131 to i8*, !dbg !307
  %133 = call %struct._GSList* @g_slist_append(%struct._GSList* %130, i8* %132), !dbg !308
  store %struct._GSList* %133, %struct._GSList** %6, align 8, !dbg !309
  store i32 1, i32* %10, align 4, !dbg !310
  br label %134, !dbg !311

; <label>:134:                                    ; preds = %127, %117
  br label %135

; <label>:135:                                    ; preds = %134
  br label %136, !dbg !312

; <label>:136:                                    ; preds = %135, %97, %89
  br label %137, !dbg !313

; <label>:137:                                    ; preds = %136, %88
  %138 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !314
  store %struct.COMMAND_REC* %138, %struct.COMMAND_REC** %4, align 8, !dbg !316
  %139 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !317
  %140 = getelementptr inbounds %struct._GSList, %struct._GSList* %139, i32 0, i32 1, !dbg !318
  %141 = load %struct._GSList*, %struct._GSList** %140, align 8, !dbg !318
  store %struct._GSList* %141, %struct._GSList** %5, align 8, !dbg !319
  br label %26, !dbg !320, !llvm.loop !321

; <label>:142:                                    ; preds = %116, %26
  %143 = load i32, i32* %10, align 4, !dbg !323
  %144 = icmp ne i32 %143, 0, !dbg !323
  br i1 %144, label %145, label %148, !dbg !325

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %11, align 4, !dbg !326
  %147 = icmp ne i32 %146, 0, !dbg !326
  br i1 %147, label %148, label %154, !dbg !328

; <label>:148:                                    ; preds = %145, %142
  %149 = load i8*, i8** %2, align 8, !dbg !329
  %150 = call i32 @show_help_file(i8* %149), !dbg !331
  %151 = icmp ne i32 %150, 0, !dbg !331
  br i1 %151, label %154, label %152, !dbg !332

; <label>:152:                                    ; preds = %148
  %153 = load i8*, i8** %2, align 8, !dbg !333
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %153), !dbg !335
  br label %154, !dbg !336

; <label>:154:                                    ; preds = %152, %148, %145
  %155 = load i8*, i8** %2, align 8, !dbg !337
  %156 = load i8, i8* %155, align 1, !dbg !339
  %157 = sext i8 %156 to i32, !dbg !339
  %158 = icmp ne i32 %157, 0, !dbg !340
  br i1 %158, label %159, label %177, !dbg !341

; <label>:159:                                    ; preds = %154
  %160 = load i8*, i8** %2, align 8, !dbg !342
  %161 = call i64 @strlen(i8* %160) #6, !dbg !344
  %162 = sub i64 %161, 1, !dbg !345
  %163 = load i8*, i8** %2, align 8, !dbg !346
  %164 = getelementptr inbounds i8, i8* %163, i64 %162, !dbg !346
  %165 = load i8, i8* %164, align 1, !dbg !346
  %166 = sext i8 %165 to i32, !dbg !346
  %167 = icmp ne i32 %166, 32, !dbg !347
  br i1 %167, label %168, label %177, !dbg !348

; <label>:168:                                    ; preds = %159
  %169 = load i8*, i8** %2, align 8, !dbg !349
  %170 = call i32 @command_have_sub(i8* %169), !dbg !350
  %171 = icmp ne i32 %170, 0, !dbg !350
  br i1 %171, label %172, label %177, !dbg !351

; <label>:172:                                    ; preds = %168
  call void @llvm.dbg.declare(metadata i8** %12, metadata !353, metadata !122), !dbg !355
  %173 = load i8*, i8** %2, align 8, !dbg !356
  %174 = call noalias i8* (i8*, ...) @g_strconcat(i8* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null), !dbg !357
  store i8* %174, i8** %12, align 8, !dbg !358
  %175 = load i8*, i8** %12, align 8, !dbg !359
  call void @show_help(i8* %175), !dbg !360
  %176 = load i8*, i8** %12, align 8, !dbg !361
  call void @g_free(i8* %176), !dbg !362
  br label %177, !dbg !363

; <label>:177:                                    ; preds = %172, %168, %159, %154
  %178 = load i32, i32* %7, align 4, !dbg !364
  %179 = icmp ne i32 %178, 0, !dbg !366
  br i1 %179, label %180, label %197, !dbg !367

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %9, align 4, !dbg !368
  %182 = icmp ne i32 %181, 0, !dbg !368
  br i1 %182, label %184, label %183, !dbg !371

; <label>:183:                                    ; preds = %180
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !372
  store i32 1, i32* %9, align 4, !dbg !374
  br label %184, !dbg !375

; <label>:184:                                    ; preds = %183, %180
  %185 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !376
  %186 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %185, i32 0, i32 1, !dbg !378
  %187 = load i8*, i8** %186, align 8, !dbg !378
  %188 = icmp ne i8* %187, null, !dbg !379
  br i1 %188, label %189, label %193, !dbg !380

; <label>:189:                                    ; preds = %184
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)), !dbg !381
  %190 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !383
  %191 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %190, i32 0, i32 1, !dbg !384
  %192 = load i8*, i8** %191, align 8, !dbg !384
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %192), !dbg !385
  br label %193, !dbg !386

; <label>:193:                                    ; preds = %189, %184
  %194 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !387
  %195 = load i32, i32* %7, align 4, !dbg !388
  call void @help_category(%struct._GSList* %194, i32 %195), !dbg !389
  %196 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !390
  call void @g_slist_free(%struct._GSList* %196), !dbg !391
  br label %197, !dbg !392

; <label>:197:                                    ; preds = %17, %193, %177
  ret void, !dbg !393
}

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GSList* @g_slist_sort(%struct._GSList*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @commands_equal(%struct.COMMAND_REC*, %struct.COMMAND_REC*) #0 !dbg !394 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.COMMAND_REC*, align 8
  %5 = alloca %struct.COMMAND_REC*, align 8
  %6 = alloca i32, align 4
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !397, metadata !122), !dbg !398
  store %struct.COMMAND_REC* %1, %struct.COMMAND_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %5, metadata !399, metadata !122), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %6, metadata !401, metadata !122), !dbg !402
  %7 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !403
  %8 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %7, i32 0, i32 1, !dbg !405
  %9 = load i8*, i8** %8, align 8, !dbg !405
  %10 = icmp eq i8* %9, null, !dbg !406
  br i1 %10, label %11, label %17, !dbg !407

; <label>:11:                                     ; preds = %2
  %12 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !408
  %13 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %12, i32 0, i32 1, !dbg !410
  %14 = load i8*, i8** %13, align 8, !dbg !410
  %15 = icmp ne i8* %14, null, !dbg !411
  br i1 %15, label %16, label %17, !dbg !412

; <label>:16:                                     ; preds = %11
  store i32 -1, i32* %3, align 4, !dbg !413
  br label %59, !dbg !413

; <label>:17:                                     ; preds = %11, %2
  %18 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !414
  %19 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %18, i32 0, i32 1, !dbg !416
  %20 = load i8*, i8** %19, align 8, !dbg !416
  %21 = icmp eq i8* %20, null, !dbg !417
  br i1 %21, label %22, label %28, !dbg !418

; <label>:22:                                     ; preds = %17
  %23 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !419
  %24 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %23, i32 0, i32 1, !dbg !421
  %25 = load i8*, i8** %24, align 8, !dbg !421
  %26 = icmp ne i8* %25, null, !dbg !422
  br i1 %26, label %27, label %28, !dbg !423

; <label>:27:                                     ; preds = %22
  store i32 1, i32* %3, align 4, !dbg !424
  br label %59, !dbg !424

; <label>:28:                                     ; preds = %22, %17
  %29 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !425
  %30 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %29, i32 0, i32 1, !dbg !427
  %31 = load i8*, i8** %30, align 8, !dbg !427
  %32 = icmp ne i8* %31, null, !dbg !428
  br i1 %32, label %33, label %51, !dbg !429

; <label>:33:                                     ; preds = %28
  %34 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !430
  %35 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %34, i32 0, i32 1, !dbg !432
  %36 = load i8*, i8** %35, align 8, !dbg !432
  %37 = icmp ne i8* %36, null, !dbg !433
  br i1 %37, label %38, label %51, !dbg !434

; <label>:38:                                     ; preds = %33
  %39 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !435
  %40 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %39, i32 0, i32 1, !dbg !437
  %41 = load i8*, i8** %40, align 8, !dbg !437
  %42 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !438
  %43 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %42, i32 0, i32 1, !dbg !439
  %44 = load i8*, i8** %43, align 8, !dbg !439
  %45 = call i32 @g_strcmp0(i8* %41, i8* %44), !dbg !440
  store i32 %45, i32* %6, align 4, !dbg !441
  %46 = load i32, i32* %6, align 4, !dbg !442
  %47 = icmp ne i32 %46, 0, !dbg !444
  br i1 %47, label %48, label %50, !dbg !445

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %6, align 4, !dbg !446
  store i32 %49, i32* %3, align 4, !dbg !447
  br label %59, !dbg !447

; <label>:50:                                     ; preds = %38
  br label %51, !dbg !448

; <label>:51:                                     ; preds = %50, %33, %28
  %52 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !449
  %53 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %52, i32 0, i32 2, !dbg !450
  %54 = load i8*, i8** %53, align 8, !dbg !450
  %55 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !451
  %56 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %55, i32 0, i32 2, !dbg !452
  %57 = load i8*, i8** %56, align 8, !dbg !452
  %58 = call i32 @g_strcmp0(i8* %54, i8* %57), !dbg !453
  store i32 %58, i32* %3, align 4, !dbg !454
  br label %59, !dbg !454

; <label>:59:                                     ; preds = %51, %48, %27, %16
  %60 = load i32, i32* %3, align 4, !dbg !455
  ret i32 %60, !dbg !455
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @printtext(i8*, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @help_category(%struct._GSList*, i32) #0 !dbg !456 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._TEXT_DEST_REC, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.COMMAND_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !459, metadata !122), !dbg !460
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !461, metadata !122), !dbg !462
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !463, metadata !122), !dbg !548
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %6, metadata !549, metadata !122), !dbg !564
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !565, metadata !122), !dbg !577
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !578, metadata !122), !dbg !579
  call void @llvm.dbg.declare(metadata i32** %9, metadata !580, metadata !122), !dbg !582
  call void @llvm.dbg.declare(metadata i32* %10, metadata !583, metadata !122), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %11, metadata !585, metadata !122), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %12, metadata !587, metadata !122), !dbg !588
  call void @llvm.dbg.declare(metadata i32* %13, metadata !589, metadata !122), !dbg !590
  call void @llvm.dbg.declare(metadata i32* %14, metadata !591, metadata !122), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %15, metadata !593, metadata !122), !dbg !594
  call void @llvm.dbg.declare(metadata i8** %16, metadata !595, metadata !122), !dbg !596
  call void @llvm.dbg.declare(metadata i8** %17, metadata !597, metadata !122), !dbg !598
  call void @llvm.dbg.declare(metadata i8** %18, metadata !599, metadata !122), !dbg !600
  %20 = call %struct._WINDOW_REC* @window_find_closest(i8* null, i8* null, i32 524288), !dbg !601
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %5, align 8, !dbg !602
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !603
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 2, !dbg !604
  %23 = load i32, i32* %22, align 8, !dbg !604
  store i32 %23, i32* %15, align 4, !dbg !605
  call void @format_create_dest(%struct._TEXT_DEST_REC* %6, i8* null, i8* null, i32 524288, %struct._WINDOW_REC* null), !dbg !606
  %24 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !607
  %25 = call i64 @time(i64* null) #7, !dbg !608
  %26 = call i8* @format_get_line_start(%struct.THEME_REC* %24, %struct._TEXT_DEST_REC* %6, i64 %25), !dbg !609
  store i8* %26, i8** %17, align 8, !dbg !611
  %27 = load i8*, i8** %17, align 8, !dbg !612
  %28 = icmp ne i8* %27, null, !dbg !614
  br i1 %28, label %29, label %40, !dbg !615

; <label>:29:                                     ; preds = %2
  %30 = load i8*, i8** %17, align 8, !dbg !616
  %31 = call i8* @strip_codes(i8* %30), !dbg !618
  store i8* %31, i8** %18, align 8, !dbg !619
  %32 = load i8*, i8** %18, align 8, !dbg !620
  %33 = call i64 @strlen(i8* %32) #6, !dbg !621
  %34 = load i32, i32* %15, align 4, !dbg !622
  %35 = sext i32 %34 to i64, !dbg !622
  %36 = sub i64 %35, %33, !dbg !622
  %37 = trunc i64 %36 to i32, !dbg !622
  store i32 %37, i32* %15, align 4, !dbg !622
  %38 = load i8*, i8** %18, align 8, !dbg !623
  call void @g_free(i8* %38), !dbg !624
  %39 = load i8*, i8** %17, align 8, !dbg !625
  call void @g_free(i8* %39), !dbg !626
  br label %40, !dbg !627

; <label>:40:                                     ; preds = %29, %2
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !628
  %42 = load i32, i32* %15, align 4, !dbg !629
  %43 = call i32 @get_max_column_count(%struct._GSList* %41, i32 (i8*)* @get_cmd_length, i32 %42, i32 6, i32 1, i32 3, i32** %9, i32* %11), !dbg !630
  store i32 %43, i32* %10, align 4, !dbg !631
  %44 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !632
  %45 = load i32, i32* %11, align 4, !dbg !633
  %46 = call %struct._GSList* @columns_sort_list(%struct._GSList* %44, i32 %45), !dbg !634
  store %struct._GSList* %46, %struct._GSList** %3, align 8, !dbg !635
  %47 = load i32, i32* %11, align 4, !dbg !636
  %48 = load i32, i32* %10, align 4, !dbg !637
  %49 = load i32, i32* %11, align 4, !dbg !638
  %50 = mul nsw i32 %48, %49, !dbg !639
  %51 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !640
  %52 = call i32 @g_slist_length(%struct._GSList* %51), !dbg !641
  %53 = sub i32 %50, %52, !dbg !642
  %54 = sub i32 %47, %53, !dbg !643
  store i32 %54, i32* %14, align 4, !dbg !644
  %55 = load i32, i32* %14, align 4, !dbg !645
  %56 = icmp eq i32 %55, 0, !dbg !647
  br i1 %56, label %57, label %59, !dbg !648

; <label>:57:                                     ; preds = %40
  %58 = load i32, i32* %11, align 4, !dbg !649
  store i32 %58, i32* %14, align 4, !dbg !650
  br label %59, !dbg !651

; <label>:59:                                     ; preds = %57, %40
  %60 = call %struct._GString* @g_string_new(i8* null), !dbg !652
  store %struct._GString* %60, %struct._GString** %7, align 8, !dbg !653
  %61 = load i32, i32* %15, align 4, !dbg !654
  %62 = add nsw i32 %61, 1, !dbg !655
  %63 = sext i32 %62 to i64, !dbg !654
  %64 = call noalias i8* @g_malloc(i64 %63), !dbg !656
  store i8* %64, i8** %16, align 8, !dbg !657
  store i32 0, i32* %12, align 4, !dbg !658
  store i32 0, i32* %13, align 4, !dbg !659
  %65 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !660
  store %struct._GSList* %65, %struct._GSList** %8, align 8, !dbg !662
  br label %66, !dbg !663

; <label>:66:                                     ; preds = %120, %59
  %67 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !664
  %68 = icmp ne %struct._GSList* %67, null, !dbg !667
  br i1 %68, label %69, label %124, !dbg !668

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %19, metadata !669, metadata !122), !dbg !671
  %70 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !672
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 0, !dbg !673
  %72 = load i8*, i8** %71, align 8, !dbg !673
  %73 = bitcast i8* %72 to %struct.COMMAND_REC*, !dbg !672
  store %struct.COMMAND_REC* %73, %struct.COMMAND_REC** %19, align 8, !dbg !671
  %74 = load i8*, i8** %16, align 8, !dbg !674
  %75 = load i32, i32* %12, align 4, !dbg !675
  %76 = sext i32 %75 to i64, !dbg !676
  %77 = load i32*, i32** %9, align 8, !dbg !676
  %78 = getelementptr inbounds i32, i32* %77, i64 %76, !dbg !676
  %79 = load i32, i32* %78, align 4, !dbg !676
  %80 = sext i32 %79 to i64, !dbg !676
  call void @llvm.memset.p0i8.i64(i8* %74, i8 32, i64 %80, i32 1, i1 false), !dbg !677
  %81 = load i32, i32* %12, align 4, !dbg !678
  %82 = sext i32 %81 to i64, !dbg !679
  %83 = load i32*, i32** %9, align 8, !dbg !679
  %84 = getelementptr inbounds i32, i32* %83, i64 %82, !dbg !679
  %85 = load i32, i32* %84, align 4, !dbg !679
  %86 = sext i32 %85 to i64, !dbg !680
  %87 = load i8*, i8** %16, align 8, !dbg !680
  %88 = getelementptr inbounds i8, i8* %87, i64 %86, !dbg !680
  store i8 0, i8* %88, align 1, !dbg !681
  %89 = load i8*, i8** %16, align 8, !dbg !682
  %90 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %19, align 8, !dbg !683
  %91 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %90, i32 0, i32 2, !dbg !684
  %92 = load i8*, i8** %91, align 8, !dbg !684
  %93 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %19, align 8, !dbg !685
  %94 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %93, i32 0, i32 2, !dbg !686
  %95 = load i8*, i8** %94, align 8, !dbg !686
  %96 = call i64 @strlen(i8* %95) #6, !dbg !687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %92, i64 %96, i32 1, i1 false), !dbg !688
  %97 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !690
  %98 = load i8*, i8** %16, align 8, !dbg !691
  %99 = call %struct._GString* @g_string_append(%struct._GString* %97, i8* %98), !dbg !692
  %100 = load i32, i32* %12, align 4, !dbg !693
  %101 = add nsw i32 %100, 1, !dbg !693
  store i32 %101, i32* %12, align 4, !dbg !693
  %102 = load i32, i32* %10, align 4, !dbg !695
  %103 = icmp eq i32 %101, %102, !dbg !696
  br i1 %103, label %104, label %119, !dbg !697

; <label>:104:                                    ; preds = %69
  %105 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !698
  %106 = getelementptr inbounds %struct._GString, %struct._GString* %105, i32 0, i32 0, !dbg !700
  %107 = load i8*, i8** %106, align 8, !dbg !700
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %107), !dbg !701
  %108 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !702
  %109 = call %struct._GString* @g_string_truncate(%struct._GString* %108, i64 0), !dbg !703
  store i32 0, i32* %12, align 4, !dbg !704
  %110 = load i32, i32* %13, align 4, !dbg !705
  %111 = add nsw i32 %110, 1, !dbg !705
  store i32 %111, i32* %13, align 4, !dbg !705
  %112 = load i32, i32* %13, align 4, !dbg !706
  %113 = load i32, i32* %14, align 4, !dbg !708
  %114 = icmp eq i32 %112, %113, !dbg !709
  br i1 %114, label %115, label %118, !dbg !710

; <label>:115:                                    ; preds = %104
  %116 = load i32, i32* %10, align 4, !dbg !711
  %117 = add nsw i32 %116, -1, !dbg !711
  store i32 %117, i32* %10, align 4, !dbg !711
  br label %118, !dbg !712

; <label>:118:                                    ; preds = %115, %104
  br label %119, !dbg !713

; <label>:119:                                    ; preds = %118, %69
  br label %120, !dbg !714

; <label>:120:                                    ; preds = %119
  %121 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !715
  %122 = getelementptr inbounds %struct._GSList, %struct._GSList* %121, i32 0, i32 1, !dbg !717
  %123 = load %struct._GSList*, %struct._GSList** %122, align 8, !dbg !717
  store %struct._GSList* %123, %struct._GSList** %8, align 8, !dbg !718
  br label %66, !dbg !719, !llvm.loop !720

; <label>:124:                                    ; preds = %66
  %125 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !722
  %126 = getelementptr inbounds %struct._GString, %struct._GString* %125, i32 0, i32 1, !dbg !724
  %127 = load i64, i64* %126, align 8, !dbg !724
  %128 = icmp ne i64 %127, 0, !dbg !725
  br i1 %128, label %129, label %133, !dbg !726

; <label>:129:                                    ; preds = %124
  %130 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !727
  %131 = getelementptr inbounds %struct._GString, %struct._GString* %130, i32 0, i32 0, !dbg !728
  %132 = load i8*, i8** %131, align 8, !dbg !728
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %132), !dbg !729
  br label %133, !dbg !729

; <label>:133:                                    ; preds = %129, %124
  %134 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !730
  call void @g_slist_free(%struct._GSList* %134), !dbg !731
  %135 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !732
  %136 = call i8* @g_string_free(%struct._GString* %135, i32 1), !dbg !733
  %137 = load i32*, i32** %9, align 8, !dbg !734
  %138 = bitcast i32* %137 to i8*, !dbg !734
  call void @g_free(i8* %138), !dbg !735
  %139 = load i8*, i8** %16, align 8, !dbg !736
  call void @g_free(i8* %139), !dbg !737
  ret void, !dbg !738
}

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @show_help_file(i8*) #0 !dbg !739 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._GIOChannel*, align 8
  %9 = alloca %struct._GString*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !742, metadata !122), !dbg !743
  call void @llvm.dbg.declare(metadata i8** %4, metadata !744, metadata !122), !dbg !745
  call void @llvm.dbg.declare(metadata i8** %5, metadata !746, metadata !122), !dbg !747
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !748, metadata !122), !dbg !749
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !750, metadata !122), !dbg !751
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %8, metadata !752, metadata !122), !dbg !910
  call void @llvm.dbg.declare(metadata %struct._GString** %9, metadata !911, metadata !122), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %10, metadata !913, metadata !122), !dbg !914
  %11 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !915
  store i8* %11, i8** %4, align 8, !dbg !916
  %12 = load i8*, i8** %4, align 8, !dbg !917
  %13 = call noalias i8** @g_strsplit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 -1), !dbg !918
  store i8** %13, i8*** %6, align 8, !dbg !919
  store %struct._GIOChannel* null, %struct._GIOChannel** %8, align 8, !dbg !920
  %14 = load i8**, i8*** %6, align 8, !dbg !921
  store i8** %14, i8*** %7, align 8, !dbg !923
  br label %15, !dbg !924

; <label>:15:                                     ; preds = %31, %1
  %16 = load i8**, i8*** %7, align 8, !dbg !925
  %17 = load i8*, i8** %16, align 8, !dbg !928
  %18 = icmp ne i8* %17, null, !dbg !929
  br i1 %18, label %19, label %34, !dbg !930

; <label>:19:                                     ; preds = %15
  %20 = load i8**, i8*** %7, align 8, !dbg !931
  %21 = load i8*, i8** %20, align 8, !dbg !933
  %22 = load i8*, i8** %3, align 8, !dbg !934
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %21, i8* %22), !dbg !935
  store i8* %23, i8** %5, align 8, !dbg !936
  %24 = load i8*, i8** %5, align 8, !dbg !937
  %25 = call %struct._GIOChannel* @g_io_channel_new_file(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), %struct._GError** null), !dbg !938
  store %struct._GIOChannel* %25, %struct._GIOChannel** %8, align 8, !dbg !939
  %26 = load i8*, i8** %5, align 8, !dbg !940
  call void @g_free(i8* %26), !dbg !941
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !942
  %28 = icmp ne %struct._GIOChannel* %27, null, !dbg !944
  br i1 %28, label %29, label %30, !dbg !945

; <label>:29:                                     ; preds = %19
  br label %34, !dbg !946

; <label>:30:                                     ; preds = %19
  br label %31, !dbg !947

; <label>:31:                                     ; preds = %30
  %32 = load i8**, i8*** %7, align 8, !dbg !948
  %33 = getelementptr inbounds i8*, i8** %32, i32 1, !dbg !948
  store i8** %33, i8*** %7, align 8, !dbg !948
  br label %15, !dbg !950, !llvm.loop !951

; <label>:34:                                     ; preds = %29, %15
  %35 = load i8**, i8*** %6, align 8, !dbg !953
  call void @g_strfreev(i8** %35), !dbg !954
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !955
  %37 = icmp eq %struct._GIOChannel* %36, null, !dbg !957
  br i1 %37, label %38, label %39, !dbg !958

; <label>:38:                                     ; preds = %34
  store i32 0, i32* %2, align 4, !dbg !959
  br label %63, !dbg !959

; <label>:39:                                     ; preds = %34
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !960
  %41 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %40, i8* null, %struct._GError** null), !dbg !961
  %42 = call %struct._GString* @g_string_sized_new(i64 512), !dbg !962
  store %struct._GString* %42, %struct._GString** %9, align 8, !dbg !963
  br label %43, !dbg !964

; <label>:43:                                     ; preds = %48, %39
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !965
  %45 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !967
  %46 = call i32 @g_io_channel_read_line_string(%struct._GIOChannel* %44, %struct._GString* %45, i64* %10, %struct._GError** null), !dbg !968
  %47 = icmp eq i32 %46, 1, !dbg !969
  br i1 %47, label %48, label %59, !dbg !970

; <label>:48:                                     ; preds = %43
  %49 = load i64, i64* %10, align 8, !dbg !971
  %50 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !973
  %51 = getelementptr inbounds %struct._GString, %struct._GString* %50, i32 0, i32 0, !dbg !974
  %52 = load i8*, i8** %51, align 8, !dbg !974
  %53 = getelementptr inbounds i8, i8* %52, i64 %49, !dbg !973
  store i8 0, i8* %53, align 1, !dbg !975
  %54 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !976
  %55 = call %struct._GString* @g_string_prepend(%struct._GString* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)), !dbg !977
  %56 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !978
  %57 = getelementptr inbounds %struct._GString, %struct._GString* %56, i32 0, i32 0, !dbg !979
  %58 = load i8*, i8** %57, align 8, !dbg !979
  call void @printtext_string(i8* null, i8* null, i32 524288, i8* %58), !dbg !980
  br label %43, !dbg !981, !llvm.loop !983

; <label>:59:                                     ; preds = %43
  %60 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !984
  %61 = call i8* @g_string_free(%struct._GString* %60, i32 1), !dbg !985
  %62 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !986
  call void @g_io_channel_unref(%struct._GIOChannel* %62), !dbg !987
  store i32 1, i32* %2, align 4, !dbg !988
  br label %63, !dbg !988

; <label>:63:                                     ; preds = %59, %38
  %64 = load i32, i32* %2, align 4, !dbg !989
  ret i32 %64, !dbg !989
}

declare i32 @command_have_sub(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._WINDOW_REC* @window_find_closest(i8*, i8*, i32) #1

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #1

declare i8* @format_get_line_start(%struct.THEME_REC*, %struct._TEXT_DEST_REC*, i64) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare i8* @strip_codes(i8*) #1

declare i32 @get_max_column_count(%struct._GSList*, i32 (i8*)*, i32, i32, i32, i32, i32**, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_cmd_length(i8*) #0 !dbg !990 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !993, metadata !122), !dbg !994
  %3 = load i8*, i8** %2, align 8, !dbg !995
  %4 = bitcast i8* %3 to %struct.COMMAND_REC*, !dbg !996
  %5 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %4, i32 0, i32 2, !dbg !997
  %6 = load i8*, i8** %5, align 8, !dbg !997
  %7 = call i64 @strlen(i8* %6) #6, !dbg !998
  %8 = trunc i64 %7 to i32, !dbg !998
  ret i32 %8, !dbg !999
}

declare %struct._GSList* @columns_sort_list(%struct._GSList*, i32) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @settings_get_str(i8*) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #1

declare void @g_strfreev(i8**) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare %struct._GString* @g_string_sized_new(i64) #1

declare i32 @g_io_channel_read_line_string(%struct._GIOChannel*, %struct._GString*, i64*, %struct._GError**) #1

declare %struct._GString* @g_string_prepend(%struct._GString*, i8*) #1

declare void @printtext_string(i8*, i8*, i32, i8*) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66)
!1 = !DIFile(filename: "line226-fe-help.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !41, !46, !55}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 69, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!38 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!39 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!40 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 77, size: 32, align: 32, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!44 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!45 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 31, size: 32, align: 32, elements: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DIEnumerator(name: "G_IO_IN", value: 1)
!50 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!51 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!52 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!53 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!54 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 84, size: 32, align: 32, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65}
!57 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!58 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!59 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!60 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!61 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!62 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!63 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!64 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!65 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!66 = !{!67, !74, !75, !79, !81, !86, !88}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !68, line: 9, baseType: !69)
!68 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !72, !72, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !77, line: 80, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !87, !87}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !77, line: 49, baseType: !86)
!86 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !77, line: 78, baseType: !72)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_REC", file: !90, line: 23, baseType: !91)
!90 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 18, size: 256, align: 64, elements: !92)
!92 = !{!93, !102, !104, !105}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !91, file: !90, line: 19, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !96, line: 37, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !96, line: 39, size: 128, align: 64, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !97, file: !96, line: 41, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !77, line: 77, baseType: !74)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !96, line: 42, baseType: !94, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !91, file: !90, line: 20, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !91, file: !90, line: 21, baseType: !103, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !91, file: !90, line: 22, baseType: !106, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!107 = !{i32 2, !"Dwarf Version", i32 4}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!110 = distinct !DISubprogram(name: "fe_help_init", scope: !111, file: !111, line: 259, type: !112, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!111 = !DIFile(filename: "fe-help.c", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !{}
!115 = !DILocation(line: 261, column: 9, scope: !110)
!116 = !DILocation(line: 262, column: 2, scope: !110)
!117 = !DILocation(line: 263, column: 1, scope: !110)
!118 = distinct !DISubprogram(name: "cmd_help", scope: !111, file: !111, line: 249, type: !119, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !79}
!121 = !DILocalVariable(name: "data", arg: 1, scope: !118, file: !111, line: 249, type: !79)
!122 = !DIExpression()
!123 = !DILocation(line: 249, column: 34, scope: !118)
!124 = !DILocalVariable(name: "cmd", scope: !118, file: !111, line: 251, type: !103)
!125 = !DILocation(line: 251, column: 8, scope: !118)
!126 = !DILocation(line: 253, column: 24, scope: !118)
!127 = !DILocation(line: 253, column: 8, scope: !118)
!128 = !DILocation(line: 253, column: 6, scope: !118)
!129 = !DILocation(line: 254, column: 13, scope: !118)
!130 = !DILocation(line: 254, column: 2, scope: !118)
!131 = !DILocation(line: 255, column: 12, scope: !118)
!132 = !DILocation(line: 255, column: 2, scope: !118)
!133 = !DILocation(line: 256, column: 16, scope: !118)
!134 = !DILocation(line: 256, column: 9, scope: !118)
!135 = !DILocation(line: 257, column: 1, scope: !118)
!136 = distinct !DISubprogram(name: "fe_help_deinit", scope: !111, file: !111, line: 265, type: !112, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!137 = !DILocation(line: 267, column: 2, scope: !136)
!138 = !DILocation(line: 268, column: 1, scope: !136)
!139 = distinct !DISubprogram(name: "show_help", scope: !111, file: !111, line: 159, type: !119, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!140 = !DILocalVariable(name: "data", arg: 1, scope: !139, file: !111, line: 159, type: !79)
!141 = !DILocation(line: 159, column: 35, scope: !139)
!142 = !DILocalVariable(name: "rec", scope: !139, file: !111, line: 161, type: !88)
!143 = !DILocation(line: 161, column: 15, scope: !139)
!144 = !DILocalVariable(name: "last", scope: !139, file: !111, line: 161, type: !88)
!145 = !DILocation(line: 161, column: 21, scope: !139)
!146 = !DILocalVariable(name: "tmp", scope: !139, file: !111, line: 162, type: !94)
!147 = !DILocation(line: 162, column: 10, scope: !139)
!148 = !DILocalVariable(name: "cmdlist", scope: !139, file: !111, line: 162, type: !94)
!149 = !DILocation(line: 162, column: 16, scope: !139)
!150 = !DILocalVariable(name: "items", scope: !139, file: !111, line: 163, type: !86)
!151 = !DILocation(line: 163, column: 6, scope: !139)
!152 = !DILocalVariable(name: "findlen", scope: !139, file: !111, line: 163, type: !86)
!153 = !DILocation(line: 163, column: 13, scope: !139)
!154 = !DILocalVariable(name: "header", scope: !139, file: !111, line: 164, type: !86)
!155 = !DILocation(line: 164, column: 6, scope: !139)
!156 = !DILocalVariable(name: "found", scope: !139, file: !111, line: 164, type: !86)
!157 = !DILocation(line: 164, column: 14, scope: !139)
!158 = !DILocalVariable(name: "fullmatch", scope: !139, file: !111, line: 164, type: !86)
!159 = !DILocation(line: 164, column: 21, scope: !139)
!160 = !DILocation(line: 166, column: 2, scope: !139)
!161 = distinct !{!161, !160}
!162 = !DILocation(line: 166, column: 10, scope: !163)
!163 = !DILexicalBlockFile(scope: !164, file: !111, discriminator: 1)
!164 = distinct !DILexicalBlock(scope: !165, file: !111, line: 166, column: 10)
!165 = distinct !DILexicalBlock(scope: !139, file: !111, line: 166, column: 4)
!166 = !DILocation(line: 166, column: 15, scope: !163)
!167 = !DILocation(line: 166, column: 5, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !111, discriminator: 2)
!169 = distinct !DILexicalBlock(scope: !164, file: !111, line: 166, column: 3)
!170 = !DILocation(line: 166, column: 14, scope: !171)
!171 = !DILexicalBlockFile(scope: !172, file: !111, discriminator: 3)
!172 = distinct !DILexicalBlock(scope: !164, file: !111, line: 166, column: 12)
!173 = !DILocation(line: 166, column: 99, scope: !171)
!174 = !DILocation(line: 166, column: 110, scope: !175)
!175 = !DILexicalBlockFile(scope: !165, file: !111, discriminator: 4)
!176 = !DILocation(line: 169, column: 26, scope: !139)
!177 = !DILocation(line: 169, column: 13, scope: !139)
!178 = !DILocation(line: 169, column: 11, scope: !139)
!179 = !DILocation(line: 172, column: 10, scope: !139)
!180 = !DILocation(line: 172, column: 22, scope: !139)
!181 = !DILocation(line: 172, column: 37, scope: !139)
!182 = !DILocation(line: 172, column: 54, scope: !139)
!183 = !DILocation(line: 173, column: 8, scope: !139)
!184 = !DILocation(line: 173, column: 30, scope: !139)
!185 = !DILocation(line: 173, column: 23, scope: !139)
!186 = !DILocation(line: 173, column: 21, scope: !139)
!187 = !DILocation(line: 173, column: 43, scope: !139)
!188 = !DILocation(line: 174, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !139, file: !111, line: 174, column: 2)
!190 = !DILocation(line: 174, column: 11, scope: !189)
!191 = !DILocation(line: 174, column: 7, scope: !189)
!192 = !DILocation(line: 174, column: 23, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !111, discriminator: 1)
!194 = distinct !DILexicalBlock(scope: !189, file: !111, line: 174, column: 2)
!195 = !DILocation(line: 174, column: 27, scope: !193)
!196 = !DILocation(line: 174, column: 2, scope: !193)
!197 = !DILocation(line: 175, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !111, line: 174, column: 64)
!199 = !DILocation(line: 175, column: 14, scope: !198)
!200 = !DILocation(line: 175, column: 7, scope: !198)
!201 = !DILocation(line: 177, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !111, line: 177, column: 7)
!203 = !DILocation(line: 177, column: 12, scope: !202)
!204 = !DILocation(line: 177, column: 19, scope: !202)
!205 = !DILocation(line: 177, column: 22, scope: !206)
!206 = !DILexicalBlockFile(scope: !202, file: !111, discriminator: 1)
!207 = !DILocation(line: 177, column: 27, scope: !206)
!208 = !DILocation(line: 177, column: 36, scope: !206)
!209 = !DILocation(line: 177, column: 44, scope: !206)
!210 = !DILocation(line: 178, column: 8, scope: !202)
!211 = !DILocation(line: 178, column: 14, scope: !202)
!212 = !DILocation(line: 178, column: 23, scope: !202)
!213 = !DILocation(line: 178, column: 30, scope: !202)
!214 = !DILocation(line: 179, column: 18, scope: !202)
!215 = !DILocation(line: 179, column: 23, scope: !202)
!216 = !DILocation(line: 179, column: 33, scope: !202)
!217 = !DILocation(line: 179, column: 39, scope: !202)
!218 = !DILocation(line: 179, column: 8, scope: !202)
!219 = !DILocation(line: 179, column: 49, scope: !202)
!220 = !DILocation(line: 177, column: 7, scope: !221)
!221 = !DILexicalBlockFile(scope: !198, file: !111, discriminator: 2)
!222 = !DILocation(line: 181, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !111, line: 181, column: 8)
!224 = distinct !DILexicalBlock(scope: !202, file: !111, line: 179, column: 56)
!225 = !DILocation(line: 181, column: 14, scope: !223)
!226 = !DILocation(line: 181, column: 8, scope: !224)
!227 = !DILocation(line: 182, column: 10, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !111, line: 182, column: 9)
!229 = distinct !DILexicalBlock(scope: !223, file: !111, line: 181, column: 19)
!230 = !DILocation(line: 182, column: 9, scope: !229)
!231 = !DILocation(line: 183, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !111, line: 182, column: 18)
!233 = !DILocation(line: 184, column: 13, scope: !232)
!234 = !DILocation(line: 185, column: 5, scope: !232)
!235 = !DILocation(line: 186, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !111, line: 186, column: 9)
!237 = !DILocation(line: 186, column: 15, scope: !236)
!238 = !DILocation(line: 186, column: 24, scope: !236)
!239 = !DILocation(line: 186, column: 9, scope: !229)
!240 = !DILocation(line: 187, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !111, line: 186, column: 32)
!242 = !DILocation(line: 188, column: 55, scope: !241)
!243 = !DILocation(line: 188, column: 61, scope: !241)
!244 = !DILocation(line: 188, column: 6, scope: !241)
!245 = !DILocation(line: 189, column: 5, scope: !241)
!246 = !DILocation(line: 190, column: 19, scope: !229)
!247 = !DILocation(line: 190, column: 28, scope: !229)
!248 = !DILocation(line: 190, column: 5, scope: !229)
!249 = !DILocation(line: 191, column: 4, scope: !229)
!250 = !DILocation(line: 193, column: 17, scope: !224)
!251 = !DILocation(line: 193, column: 4, scope: !224)
!252 = !DILocation(line: 193, column: 35, scope: !224)
!253 = !DILocation(line: 194, column: 10, scope: !224)
!254 = !DILocation(line: 195, column: 3, scope: !224)
!255 = !DILocation(line: 197, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !198, file: !111, line: 197, column: 7)
!257 = !DILocation(line: 197, column: 12, scope: !256)
!258 = !DILocation(line: 197, column: 19, scope: !256)
!259 = !DILocation(line: 197, column: 41, scope: !260)
!260 = !DILexicalBlockFile(scope: !256, file: !111, discriminator: 1)
!261 = !DILocation(line: 197, column: 46, scope: !260)
!262 = !DILocation(line: 197, column: 51, scope: !260)
!263 = !DILocation(line: 197, column: 57, scope: !260)
!264 = !DILocation(line: 197, column: 22, scope: !260)
!265 = !DILocation(line: 197, column: 62, scope: !260)
!266 = !DILocation(line: 197, column: 7, scope: !260)
!267 = !DILocation(line: 198, column: 4, scope: !256)
!268 = !DILocation(line: 200, column: 19, scope: !269)
!269 = distinct !DILexicalBlock(scope: !198, file: !111, line: 200, column: 7)
!270 = !DILocation(line: 200, column: 24, scope: !269)
!271 = !DILocation(line: 200, column: 12, scope: !269)
!272 = !DILocation(line: 200, column: 7, scope: !269)
!273 = !DILocation(line: 200, column: 32, scope: !269)
!274 = !DILocation(line: 200, column: 29, scope: !269)
!275 = !DILocation(line: 200, column: 40, scope: !269)
!276 = !DILocation(line: 201, column: 27, scope: !269)
!277 = !DILocation(line: 201, column: 32, scope: !269)
!278 = !DILocation(line: 201, column: 37, scope: !269)
!279 = !DILocation(line: 201, column: 43, scope: !269)
!280 = !DILocation(line: 201, column: 7, scope: !269)
!281 = !DILocation(line: 201, column: 52, scope: !269)
!282 = !DILocation(line: 200, column: 7, scope: !283)
!283 = !DILexicalBlockFile(scope: !198, file: !111, discriminator: 1)
!284 = !DILocation(line: 202, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !111, line: 202, column: 8)
!286 = distinct !DILexicalBlock(scope: !269, file: !111, line: 201, column: 58)
!287 = !DILocation(line: 202, column: 8, scope: !285)
!288 = !DILocation(line: 202, column: 13, scope: !285)
!289 = !DILocation(line: 202, column: 26, scope: !285)
!290 = !DILocation(line: 202, column: 8, scope: !286)
!291 = !DILocation(line: 203, column: 15, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !111, line: 202, column: 35)
!293 = !DILocation(line: 204, column: 11, scope: !292)
!294 = !DILocation(line: 205, column: 5, scope: !292)
!295 = !DILocation(line: 207, column: 20, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !111, line: 207, column: 13)
!297 = !DILocation(line: 207, column: 25, scope: !296)
!298 = !DILocation(line: 207, column: 29, scope: !296)
!299 = !DILocation(line: 207, column: 28, scope: !296)
!300 = !DILocation(line: 207, column: 36, scope: !296)
!301 = !DILocation(line: 207, column: 13, scope: !296)
!302 = !DILocation(line: 207, column: 45, scope: !296)
!303 = !DILocation(line: 207, column: 13, scope: !285)
!304 = !DILocation(line: 209, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !296, file: !111, line: 207, column: 53)
!306 = !DILocation(line: 210, column: 30, scope: !305)
!307 = !DILocation(line: 210, column: 39, scope: !305)
!308 = !DILocation(line: 210, column: 15, scope: !305)
!309 = !DILocation(line: 210, column: 13, scope: !305)
!310 = !DILocation(line: 211, column: 11, scope: !305)
!311 = !DILocation(line: 212, column: 4, scope: !305)
!312 = !DILocation(line: 213, column: 3, scope: !286)
!313 = !DILocation(line: 214, column: 2, scope: !198)
!314 = !DILocation(line: 174, column: 42, scope: !315)
!315 = !DILexicalBlockFile(scope: !194, file: !111, discriminator: 2)
!316 = !DILocation(line: 174, column: 40, scope: !315)
!317 = !DILocation(line: 174, column: 53, scope: !315)
!318 = !DILocation(line: 174, column: 58, scope: !315)
!319 = !DILocation(line: 174, column: 51, scope: !315)
!320 = !DILocation(line: 174, column: 2, scope: !315)
!321 = distinct !{!321, !322}
!322 = !DILocation(line: 174, column: 2, scope: !139)
!323 = !DILocation(line: 216, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !139, file: !111, line: 216, column: 6)
!325 = !DILocation(line: 216, column: 14, scope: !324)
!326 = !DILocation(line: 216, column: 17, scope: !327)
!327 = !DILexicalBlockFile(scope: !324, file: !111, discriminator: 1)
!328 = !DILocation(line: 216, column: 28, scope: !327)
!329 = !DILocation(line: 216, column: 47, scope: !330)
!330 = !DILexicalBlockFile(scope: !324, file: !111, discriminator: 2)
!331 = !DILocation(line: 216, column: 32, scope: !330)
!332 = !DILocation(line: 216, column: 6, scope: !330)
!333 = !DILocation(line: 218, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !324, file: !111, line: 216, column: 54)
!335 = !DILocation(line: 217, column: 3, scope: !334)
!336 = !DILocation(line: 219, column: 2, scope: !334)
!337 = !DILocation(line: 221, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !139, file: !111, line: 221, column: 6)
!339 = !DILocation(line: 221, column: 6, scope: !338)
!340 = !DILocation(line: 221, column: 12, scope: !338)
!341 = !DILocation(line: 221, column: 20, scope: !338)
!342 = !DILocation(line: 221, column: 35, scope: !343)
!343 = !DILexicalBlockFile(scope: !338, file: !111, discriminator: 1)
!344 = !DILocation(line: 221, column: 28, scope: !343)
!345 = !DILocation(line: 221, column: 40, scope: !343)
!346 = !DILocation(line: 221, column: 23, scope: !343)
!347 = !DILocation(line: 221, column: 44, scope: !343)
!348 = !DILocation(line: 221, column: 51, scope: !343)
!349 = !DILocation(line: 222, column: 23, scope: !338)
!350 = !DILocation(line: 222, column: 6, scope: !338)
!351 = !DILocation(line: 221, column: 6, scope: !352)
!352 = !DILexicalBlockFile(scope: !139, file: !111, discriminator: 2)
!353 = !DILocalVariable(name: "cmd", scope: !354, file: !111, line: 223, type: !103)
!354 = distinct !DILexicalBlock(scope: !338, file: !111, line: 222, column: 30)
!355 = !DILocation(line: 223, column: 9, scope: !354)
!356 = !DILocation(line: 225, column: 21, scope: !354)
!357 = !DILocation(line: 225, column: 9, scope: !354)
!358 = !DILocation(line: 225, column: 7, scope: !354)
!359 = !DILocation(line: 226, column: 13, scope: !354)
!360 = !DILocation(line: 226, column: 3, scope: !354)
!361 = !DILocation(line: 227, column: 10, scope: !354)
!362 = !DILocation(line: 227, column: 3, scope: !354)
!363 = !DILocation(line: 228, column: 2, scope: !354)
!364 = !DILocation(line: 230, column: 6, scope: !365)
!365 = distinct !DILexicalBlock(scope: !139, file: !111, line: 230, column: 6)
!366 = !DILocation(line: 230, column: 12, scope: !365)
!367 = !DILocation(line: 230, column: 6, scope: !139)
!368 = !DILocation(line: 232, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !111, line: 232, column: 7)
!370 = distinct !DILexicalBlock(scope: !365, file: !111, line: 230, column: 18)
!371 = !DILocation(line: 232, column: 7, scope: !370)
!372 = !DILocation(line: 233, column: 4, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !111, line: 232, column: 16)
!374 = !DILocation(line: 235, column: 11, scope: !373)
!375 = !DILocation(line: 236, column: 3, scope: !373)
!376 = !DILocation(line: 238, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !111, line: 238, column: 7)
!378 = !DILocation(line: 238, column: 13, scope: !377)
!379 = !DILocation(line: 238, column: 22, scope: !377)
!380 = !DILocation(line: 238, column: 7, scope: !370)
!381 = !DILocation(line: 239, column: 4, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !111, line: 238, column: 30)
!383 = !DILocation(line: 241, column: 14, scope: !382)
!384 = !DILocation(line: 241, column: 20, scope: !382)
!385 = !DILocation(line: 240, column: 4, scope: !382)
!386 = !DILocation(line: 242, column: 3, scope: !382)
!387 = !DILocation(line: 243, column: 17, scope: !370)
!388 = !DILocation(line: 243, column: 26, scope: !370)
!389 = !DILocation(line: 243, column: 3, scope: !370)
!390 = !DILocation(line: 244, column: 16, scope: !370)
!391 = !DILocation(line: 244, column: 3, scope: !370)
!392 = !DILocation(line: 245, column: 2, scope: !370)
!393 = !DILocation(line: 246, column: 1, scope: !139)
!394 = distinct !DISubprogram(name: "commands_equal", scope: !111, file: !111, line: 31, type: !395, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!395 = !DISubroutineType(types: !396)
!396 = !{!86, !88, !88}
!397 = !DILocalVariable(name: "rec", arg: 1, scope: !394, file: !111, line: 31, type: !88)
!398 = !DILocation(line: 31, column: 40, scope: !394)
!399 = !DILocalVariable(name: "rec2", arg: 2, scope: !394, file: !111, line: 31, type: !88)
!400 = !DILocation(line: 31, column: 58, scope: !394)
!401 = !DILocalVariable(name: "i", scope: !394, file: !111, line: 33, type: !86)
!402 = !DILocation(line: 33, column: 6, scope: !394)
!403 = !DILocation(line: 35, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !394, file: !111, line: 35, column: 6)
!405 = !DILocation(line: 35, column: 11, scope: !404)
!406 = !DILocation(line: 35, column: 20, scope: !404)
!407 = !DILocation(line: 35, column: 27, scope: !404)
!408 = !DILocation(line: 35, column: 30, scope: !409)
!409 = !DILexicalBlockFile(scope: !404, file: !111, discriminator: 1)
!410 = !DILocation(line: 35, column: 36, scope: !409)
!411 = !DILocation(line: 35, column: 45, scope: !409)
!412 = !DILocation(line: 35, column: 6, scope: !409)
!413 = !DILocation(line: 36, column: 3, scope: !404)
!414 = !DILocation(line: 37, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !394, file: !111, line: 37, column: 6)
!416 = !DILocation(line: 37, column: 12, scope: !415)
!417 = !DILocation(line: 37, column: 21, scope: !415)
!418 = !DILocation(line: 37, column: 28, scope: !415)
!419 = !DILocation(line: 37, column: 31, scope: !420)
!420 = !DILexicalBlockFile(scope: !415, file: !111, discriminator: 1)
!421 = !DILocation(line: 37, column: 36, scope: !420)
!422 = !DILocation(line: 37, column: 45, scope: !420)
!423 = !DILocation(line: 37, column: 6, scope: !420)
!424 = !DILocation(line: 38, column: 3, scope: !415)
!425 = !DILocation(line: 39, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !394, file: !111, line: 39, column: 6)
!427 = !DILocation(line: 39, column: 11, scope: !426)
!428 = !DILocation(line: 39, column: 20, scope: !426)
!429 = !DILocation(line: 39, column: 27, scope: !426)
!430 = !DILocation(line: 39, column: 30, scope: !431)
!431 = !DILexicalBlockFile(scope: !426, file: !111, discriminator: 1)
!432 = !DILocation(line: 39, column: 36, scope: !431)
!433 = !DILocation(line: 39, column: 45, scope: !431)
!434 = !DILocation(line: 39, column: 6, scope: !431)
!435 = !DILocation(line: 40, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !426, file: !111, line: 39, column: 54)
!437 = !DILocation(line: 40, column: 22, scope: !436)
!438 = !DILocation(line: 40, column: 32, scope: !436)
!439 = !DILocation(line: 40, column: 38, scope: !436)
!440 = !DILocation(line: 40, column: 7, scope: !436)
!441 = !DILocation(line: 40, column: 5, scope: !436)
!442 = !DILocation(line: 41, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !436, file: !111, line: 41, column: 7)
!444 = !DILocation(line: 41, column: 9, scope: !443)
!445 = !DILocation(line: 41, column: 7, scope: !436)
!446 = !DILocation(line: 42, column: 11, scope: !443)
!447 = !DILocation(line: 42, column: 4, scope: !443)
!448 = !DILocation(line: 43, column: 2, scope: !436)
!449 = !DILocation(line: 45, column: 19, scope: !394)
!450 = !DILocation(line: 45, column: 24, scope: !394)
!451 = !DILocation(line: 45, column: 29, scope: !394)
!452 = !DILocation(line: 45, column: 35, scope: !394)
!453 = !DILocation(line: 45, column: 9, scope: !394)
!454 = !DILocation(line: 45, column: 2, scope: !394)
!455 = !DILocation(line: 46, column: 1, scope: !394)
!456 = distinct !DISubprogram(name: "help_category", scope: !111, file: !111, line: 53, type: !457, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !94, !86}
!459 = !DILocalVariable(name: "cmdlist", arg: 1, scope: !456, file: !111, line: 53, type: !94)
!460 = !DILocation(line: 53, column: 35, scope: !456)
!461 = !DILocalVariable(name: "items", arg: 2, scope: !456, file: !111, line: 53, type: !86)
!462 = !DILocation(line: 53, column: 48, scope: !456)
!463 = !DILocalVariable(name: "window", scope: !456, file: !111, line: 55, type: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !466, line: 117, baseType: !467)
!466 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !468, line: 28, size: 1280, align: 64, elements: !469)
!468 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!469 = !{!470, !471, !472, !473, !474, !475, !512, !513, !514, !515, !516, !517, !519, !520, !521, !540, !541, !542, !543, !544, !545, !546, !547}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !467, file: !468, line: 29, baseType: !86, size: 32, align: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !468, line: 30, baseType: !103, size: 64, align: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !467, file: !468, line: 32, baseType: !86, size: 32, align: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !467, file: !468, line: 32, baseType: !86, size: 32, align: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !467, file: !468, line: 34, baseType: !94, size: 64, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !467, file: !468, line: 35, baseType: !476, size: 64, align: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !466, line: 108, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !479, line: 5, size: 704, align: 64, elements: !480)
!479 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!480 = !{!481, !483, !484, !489, !490, !494, !495, !496, !502, !503, !504, !508}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !482, line: 3, baseType: !86, size: 32, align: 32)
!482 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !478, file: !482, line: 4, baseType: !86, size: 32, align: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !478, file: !482, line: 5, baseType: !485, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !487, line: 37, baseType: !488)
!487 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !487, line: 37, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !478, file: !482, line: 7, baseType: !74, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !478, file: !482, line: 8, baseType: !491, size: 64, align: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !466, line: 107, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !466, line: 107, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !478, file: !482, line: 9, baseType: !103, size: 64, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !482, line: 10, baseType: !103, size: 64, align: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !478, file: !482, line: 11, baseType: !497, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !498, line: 75, baseType: !499)
!498 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !500, line: 139, baseType: !501)
!500 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!501 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !478, file: !482, line: 12, baseType: !86, size: 32, align: 32, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !478, file: !482, line: 13, baseType: !103, size: 64, align: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !478, file: !482, line: 15, baseType: !505, size: 64, align: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !476}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !478, file: !482, line: 17, baseType: !509, size: 64, align: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!79, !476}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !467, file: !468, line: 36, baseType: !491, size: 64, align: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !467, file: !468, line: 37, baseType: !491, size: 64, align: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !467, file: !468, line: 38, baseType: !103, size: 64, align: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !467, file: !468, line: 40, baseType: !86, size: 32, align: 32, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !467, file: !468, line: 41, baseType: !94, size: 64, align: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !467, file: !468, line: 43, baseType: !518, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!518 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !467, file: !468, line: 44, baseType: !518, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !467, file: !468, line: 45, baseType: !518, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !467, file: !468, line: 48, baseType: !522, size: 64, align: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !524, line: 14, baseType: !525)
!524 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 6, size: 256, align: 64, elements: !526)
!526 = !{!527, !528, !537, !538, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !525, file: !524, line: 7, baseType: !103, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !525, file: !524, line: 9, baseType: !529, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !531, line: 37, baseType: !532)
!531 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !531, line: 39, size: 192, align: 64, elements: !533)
!533 = !{!534, !535, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !532, file: !531, line: 41, baseType: !100, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !531, line: 42, baseType: !529, size: 64, align: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !532, file: !531, line: 43, baseType: !529, size: 64, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !525, file: !524, line: 10, baseType: !86, size: 32, align: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !525, file: !524, line: 12, baseType: !86, size: 32, align: 32, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !525, file: !524, line: 13, baseType: !86, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !467, file: !468, line: 49, baseType: !103, size: 64, align: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !467, file: !468, line: 51, baseType: !86, size: 32, align: 32, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !467, file: !468, line: 52, baseType: !103, size: 64, align: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !467, file: !468, line: 54, baseType: !497, size: 64, align: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !467, file: !468, line: 55, baseType: !497, size: 64, align: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !467, file: !468, line: 57, baseType: !103, size: 64, align: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !467, file: !468, line: 58, baseType: !74, size: 64, align: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !467, file: !468, line: 60, baseType: !74, size: 64, align: 64, offset: 1216)
!548 = !DILocation(line: 55, column: 21, scope: !456)
!549 = !DILocalVariable(name: "dest", scope: !456, file: !111, line: 56, type: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !551, line: 62, baseType: !552)
!551 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !551, line: 50, size: 576, align: 64, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !552, file: !551, line: 51, baseType: !464, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !552, file: !551, line: 52, baseType: !491, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !552, file: !551, line: 53, baseType: !79, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !552, file: !551, line: 54, baseType: !79, size: 64, align: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !552, file: !551, line: 55, baseType: !79, size: 64, align: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !551, line: 56, baseType: !79, size: 64, align: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !552, file: !551, line: 57, baseType: !86, size: 32, align: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !552, file: !551, line: 59, baseType: !86, size: 32, align: 32, offset: 416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !552, file: !551, line: 60, baseType: !103, size: 64, align: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !551, line: 61, baseType: !86, size: 32, align: 32, offset: 512)
!564 = !DILocation(line: 56, column: 16, scope: !456)
!565 = !DILocalVariable(name: "str", scope: !456, file: !111, line: 57, type: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !568, line: 39, baseType: !569)
!568 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !568, line: 41, size: 192, align: 64, elements: !570)
!570 = !{!571, !572, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !569, file: !568, line: 43, baseType: !75, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !569, file: !568, line: 44, baseType: !573, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !574, line: 66, baseType: !575)
!574 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!575 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !569, file: !568, line: 45, baseType: !573, size: 64, align: 64, offset: 128)
!577 = !DILocation(line: 57, column: 11, scope: !456)
!578 = !DILocalVariable(name: "tmp", scope: !456, file: !111, line: 58, type: !94)
!579 = !DILocation(line: 58, column: 10, scope: !456)
!580 = !DILocalVariable(name: "columns", scope: !456, file: !111, line: 59, type: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!582 = !DILocation(line: 59, column: 7, scope: !456)
!583 = !DILocalVariable(name: "cols", scope: !456, file: !111, line: 59, type: !86)
!584 = !DILocation(line: 59, column: 16, scope: !456)
!585 = !DILocalVariable(name: "rows", scope: !456, file: !111, line: 59, type: !86)
!586 = !DILocation(line: 59, column: 22, scope: !456)
!587 = !DILocalVariable(name: "col", scope: !456, file: !111, line: 59, type: !86)
!588 = !DILocation(line: 59, column: 28, scope: !456)
!589 = !DILocalVariable(name: "row", scope: !456, file: !111, line: 59, type: !86)
!590 = !DILocation(line: 59, column: 33, scope: !456)
!591 = !DILocalVariable(name: "last_col_rows", scope: !456, file: !111, line: 59, type: !86)
!592 = !DILocation(line: 59, column: 38, scope: !456)
!593 = !DILocalVariable(name: "max_width", scope: !456, file: !111, line: 59, type: !86)
!594 = !DILocation(line: 59, column: 53, scope: !456)
!595 = !DILocalVariable(name: "linebuf", scope: !456, file: !111, line: 60, type: !103)
!596 = !DILocation(line: 60, column: 8, scope: !456)
!597 = !DILocalVariable(name: "format", scope: !456, file: !111, line: 60, type: !103)
!598 = !DILocation(line: 60, column: 18, scope: !456)
!599 = !DILocalVariable(name: "stripped", scope: !456, file: !111, line: 60, type: !103)
!600 = !DILocation(line: 60, column: 27, scope: !456)
!601 = !DILocation(line: 62, column: 11, scope: !456)
!602 = !DILocation(line: 62, column: 9, scope: !456)
!603 = !DILocation(line: 63, column: 21, scope: !456)
!604 = !DILocation(line: 63, column: 29, scope: !456)
!605 = !DILocation(line: 63, column: 19, scope: !456)
!606 = !DILocation(line: 66, column: 2, scope: !456)
!607 = !DILocation(line: 67, column: 33, scope: !456)
!608 = !DILocation(line: 67, column: 55, scope: !456)
!609 = !DILocation(line: 67, column: 11, scope: !610)
!610 = !DILexicalBlockFile(scope: !456, file: !111, discriminator: 1)
!611 = !DILocation(line: 67, column: 9, scope: !456)
!612 = !DILocation(line: 68, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !456, file: !111, line: 68, column: 6)
!614 = !DILocation(line: 68, column: 13, scope: !613)
!615 = !DILocation(line: 68, column: 6, scope: !456)
!616 = !DILocation(line: 69, column: 26, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !111, line: 68, column: 21)
!618 = !DILocation(line: 69, column: 14, scope: !617)
!619 = !DILocation(line: 69, column: 12, scope: !617)
!620 = !DILocation(line: 70, column: 23, scope: !617)
!621 = !DILocation(line: 70, column: 16, scope: !617)
!622 = !DILocation(line: 70, column: 13, scope: !617)
!623 = !DILocation(line: 71, column: 10, scope: !617)
!624 = !DILocation(line: 71, column: 3, scope: !617)
!625 = !DILocation(line: 72, column: 10, scope: !617)
!626 = !DILocation(line: 72, column: 3, scope: !617)
!627 = !DILocation(line: 73, column: 2, scope: !617)
!628 = !DILocation(line: 76, column: 30, scope: !456)
!629 = !DILocation(line: 77, column: 9, scope: !456)
!630 = !DILocation(line: 76, column: 9, scope: !456)
!631 = !DILocation(line: 76, column: 7, scope: !456)
!632 = !DILocation(line: 78, column: 30, scope: !456)
!633 = !DILocation(line: 78, column: 39, scope: !456)
!634 = !DILocation(line: 78, column: 12, scope: !456)
!635 = !DILocation(line: 78, column: 10, scope: !456)
!636 = !DILocation(line: 81, column: 18, scope: !456)
!637 = !DILocation(line: 81, column: 24, scope: !456)
!638 = !DILocation(line: 81, column: 29, scope: !456)
!639 = !DILocation(line: 81, column: 28, scope: !456)
!640 = !DILocation(line: 81, column: 49, scope: !456)
!641 = !DILocation(line: 81, column: 34, scope: !456)
!642 = !DILocation(line: 81, column: 33, scope: !456)
!643 = !DILocation(line: 81, column: 22, scope: !456)
!644 = !DILocation(line: 81, column: 16, scope: !456)
!645 = !DILocation(line: 82, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !456, file: !111, line: 82, column: 6)
!647 = !DILocation(line: 82, column: 20, scope: !646)
!648 = !DILocation(line: 82, column: 6, scope: !456)
!649 = !DILocation(line: 83, column: 33, scope: !646)
!650 = !DILocation(line: 83, column: 31, scope: !646)
!651 = !DILocation(line: 83, column: 17, scope: !646)
!652 = !DILocation(line: 85, column: 8, scope: !456)
!653 = !DILocation(line: 85, column: 6, scope: !456)
!654 = !DILocation(line: 86, column: 21, scope: !456)
!655 = !DILocation(line: 86, column: 30, scope: !456)
!656 = !DILocation(line: 86, column: 12, scope: !456)
!657 = !DILocation(line: 86, column: 10, scope: !456)
!658 = !DILocation(line: 88, column: 13, scope: !456)
!659 = !DILocation(line: 88, column: 22, scope: !456)
!660 = !DILocation(line: 89, column: 13, scope: !661)
!661 = distinct !DILexicalBlock(scope: !456, file: !111, line: 89, column: 2)
!662 = !DILocation(line: 89, column: 11, scope: !661)
!663 = !DILocation(line: 89, column: 7, scope: !661)
!664 = !DILocation(line: 89, column: 22, scope: !665)
!665 = !DILexicalBlockFile(scope: !666, file: !111, discriminator: 1)
!666 = distinct !DILexicalBlock(scope: !661, file: !111, line: 89, column: 2)
!667 = !DILocation(line: 89, column: 26, scope: !665)
!668 = !DILocation(line: 89, column: 2, scope: !665)
!669 = !DILocalVariable(name: "rec", scope: !670, file: !111, line: 90, type: !88)
!670 = distinct !DILexicalBlock(scope: !666, file: !111, line: 89, column: 51)
!671 = !DILocation(line: 90, column: 16, scope: !670)
!672 = !DILocation(line: 90, column: 22, scope: !670)
!673 = !DILocation(line: 90, column: 27, scope: !670)
!674 = !DILocation(line: 92, column: 10, scope: !670)
!675 = !DILocation(line: 92, column: 32, scope: !670)
!676 = !DILocation(line: 92, column: 24, scope: !670)
!677 = !DILocation(line: 92, column: 3, scope: !670)
!678 = !DILocation(line: 93, column: 19, scope: !670)
!679 = !DILocation(line: 93, column: 11, scope: !670)
!680 = !DILocation(line: 93, column: 3, scope: !670)
!681 = !DILocation(line: 93, column: 25, scope: !670)
!682 = !DILocation(line: 94, column: 10, scope: !670)
!683 = !DILocation(line: 94, column: 19, scope: !670)
!684 = !DILocation(line: 94, column: 24, scope: !670)
!685 = !DILocation(line: 94, column: 36, scope: !670)
!686 = !DILocation(line: 94, column: 41, scope: !670)
!687 = !DILocation(line: 94, column: 29, scope: !670)
!688 = !DILocation(line: 94, column: 3, scope: !689)
!689 = !DILexicalBlockFile(scope: !670, file: !111, discriminator: 1)
!690 = !DILocation(line: 95, column: 19, scope: !670)
!691 = !DILocation(line: 95, column: 24, scope: !670)
!692 = !DILocation(line: 95, column: 3, scope: !670)
!693 = !DILocation(line: 97, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !670, file: !111, line: 97, column: 7)
!695 = !DILocation(line: 97, column: 16, scope: !694)
!696 = !DILocation(line: 97, column: 13, scope: !694)
!697 = !DILocation(line: 97, column: 7, scope: !670)
!698 = !DILocation(line: 99, column: 34, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !111, line: 97, column: 22)
!700 = !DILocation(line: 99, column: 39, scope: !699)
!701 = !DILocation(line: 98, column: 4, scope: !699)
!702 = !DILocation(line: 100, column: 22, scope: !699)
!703 = !DILocation(line: 100, column: 4, scope: !699)
!704 = !DILocation(line: 101, column: 8, scope: !699)
!705 = !DILocation(line: 101, column: 16, scope: !699)
!706 = !DILocation(line: 103, column: 8, scope: !707)
!707 = distinct !DILexicalBlock(scope: !699, file: !111, line: 103, column: 8)
!708 = !DILocation(line: 103, column: 15, scope: !707)
!709 = !DILocation(line: 103, column: 12, scope: !707)
!710 = !DILocation(line: 103, column: 8, scope: !699)
!711 = !DILocation(line: 104, column: 37, scope: !707)
!712 = !DILocation(line: 104, column: 33, scope: !707)
!713 = !DILocation(line: 105, column: 3, scope: !699)
!714 = !DILocation(line: 106, column: 2, scope: !670)
!715 = !DILocation(line: 89, column: 40, scope: !716)
!716 = !DILexicalBlockFile(scope: !666, file: !111, discriminator: 2)
!717 = !DILocation(line: 89, column: 45, scope: !716)
!718 = !DILocation(line: 89, column: 38, scope: !716)
!719 = !DILocation(line: 89, column: 2, scope: !716)
!720 = distinct !{!720, !721}
!721 = !DILocation(line: 89, column: 2, scope: !456)
!722 = !DILocation(line: 107, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !456, file: !111, line: 107, column: 6)
!724 = !DILocation(line: 107, column: 11, scope: !723)
!725 = !DILocation(line: 107, column: 15, scope: !723)
!726 = !DILocation(line: 107, column: 6, scope: !456)
!727 = !DILocation(line: 108, column: 51, scope: !723)
!728 = !DILocation(line: 108, column: 56, scope: !723)
!729 = !DILocation(line: 108, column: 3, scope: !723)
!730 = !DILocation(line: 110, column: 15, scope: !456)
!731 = !DILocation(line: 110, column: 2, scope: !456)
!732 = !DILocation(line: 111, column: 16, scope: !456)
!733 = !DILocation(line: 111, column: 2, scope: !456)
!734 = !DILocation(line: 112, column: 9, scope: !456)
!735 = !DILocation(line: 112, column: 2, scope: !456)
!736 = !DILocation(line: 113, column: 9, scope: !456)
!737 = !DILocation(line: 113, column: 2, scope: !456)
!738 = !DILocation(line: 114, column: 1, scope: !456)
!739 = distinct !DISubprogram(name: "show_help_file", scope: !111, file: !111, line: 116, type: !740, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!740 = !DISubroutineType(types: !741)
!741 = !{!86, !79}
!742 = !DILocalVariable(name: "file", arg: 1, scope: !739, file: !111, line: 116, type: !79)
!743 = !DILocation(line: 116, column: 39, scope: !739)
!744 = !DILocalVariable(name: "helppath", scope: !739, file: !111, line: 118, type: !79)
!745 = !DILocation(line: 118, column: 21, scope: !739)
!746 = !DILocalVariable(name: "path", scope: !739, file: !111, line: 119, type: !103)
!747 = !DILocation(line: 119, column: 8, scope: !739)
!748 = !DILocalVariable(name: "paths", scope: !739, file: !111, line: 119, type: !106)
!749 = !DILocation(line: 119, column: 16, scope: !739)
!750 = !DILocalVariable(name: "tmp", scope: !739, file: !111, line: 119, type: !106)
!751 = !DILocation(line: 119, column: 25, scope: !739)
!752 = !DILocalVariable(name: "handle", scope: !739, file: !111, line: 120, type: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !35, line: 41, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !35, line: 97, size: 896, align: 64, elements: !756)
!756 = !{!757, !758, !885, !886, !891, !892, !893, !894, !895, !896, !897, !898, !902, !903, !904, !905, !906, !907, !908, !909}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !755, file: !35, line: 100, baseType: !85, size: 32, align: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !755, file: !35, line: 101, baseType: !759, size: 64, align: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !35, line: 42, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !35, line: 131, size: 512, align: 64, elements: !762)
!762 = !{!763, !781, !787, !793, !797, !872, !876, !881}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !761, file: !35, line: 133, baseType: !764, size: 64, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !753, !75, !573, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !35, line: 75, baseType: !34)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !772, line: 42, baseType: !773)
!772 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !772, line: 44, size: 128, align: 64, elements: !774)
!774 = !{!775, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !773, file: !772, line: 46, baseType: !776, size: 32, align: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !777, line: 36, baseType: !778)
!777 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !574, line: 45, baseType: !518)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !773, file: !772, line: 47, baseType: !85, size: 32, align: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !773, file: !772, line: 48, baseType: !75, size: 64, align: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !761, file: !35, line: 138, baseType: !782, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!767, !753, !785, !573, !768, !769}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !761, file: !35, line: 143, baseType: !788, size: 64, align: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64, align: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!767, !753, !791, !792, !769}
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !574, line: 51, baseType: !501)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !35, line: 82, baseType: !41)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !761, file: !35, line: 147, baseType: !794, size: 64, align: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!767, !753, !769}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !761, file: !35, line: 149, baseType: !798, size: 64, align: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!801, !753, !871}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !47, line: 64, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !47, line: 171, size: 768, align: 64, elements: !804)
!804 = !{!805, !806, !827, !854, !856, !860, !861, !862, !863, !864, !865, !866, !867}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !803, file: !47, line: 174, baseType: !100, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !803, file: !47, line: 175, baseType: !807, size: 64, align: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !47, line: 77, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !47, line: 196, size: 192, align: 64, elements: !810)
!810 = !{!811, !815, !816}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !809, file: !47, line: 198, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !100}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !809, file: !47, line: 199, baseType: !812, size: 64, align: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !809, file: !47, line: 200, baseType: !817, size: 64, align: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64, align: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !100, !801, !820, !826}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !47, line: 155, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !100}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !77, line: 50, baseType: !85)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !803, file: !47, line: 177, baseType: !828, size: 64, align: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !47, line: 130, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !47, line: 214, size: 384, align: 64, elements: !832)
!832 = !{!833, !838, !842, !846, !850, !851}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !831, file: !47, line: 216, baseType: !834, size: 64, align: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64, align: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!825, !801, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !831, file: !47, line: 218, baseType: !839, size: 64, align: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64, align: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!825, !801}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !831, file: !47, line: 219, baseType: !843, size: 64, align: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, align: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!825, !801, !821, !100}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !831, file: !47, line: 222, baseType: !847, size: 64, align: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !801}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !831, file: !47, line: 226, baseType: !821, size: 64, align: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !831, file: !47, line: 227, baseType: !852, size: 64, align: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !47, line: 212, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !803, file: !47, line: 178, baseType: !855, size: 32, align: 32, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !77, line: 55, baseType: !518)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !803, file: !47, line: 180, baseType: !857, size: 64, align: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !47, line: 48, baseType: !859)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !47, line: 48, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !803, file: !47, line: 182, baseType: !85, size: 32, align: 32, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !47, line: 183, baseType: !855, size: 32, align: 32, offset: 352)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !803, file: !47, line: 184, baseType: !855, size: 32, align: 32, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !803, file: !47, line: 186, baseType: !94, size: 64, align: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !803, file: !47, line: 188, baseType: !801, size: 64, align: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !47, line: 189, baseType: !801, size: 64, align: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !47, line: 191, baseType: !103, size: 64, align: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !803, file: !47, line: 193, baseType: !868, size: 64, align: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !47, line: 65, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !47, line: 65, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !47, line: 39, baseType: !46)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !761, file: !35, line: 151, baseType: !873, size: 64, align: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64, align: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !753}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !761, file: !35, line: 152, baseType: !877, size: 64, align: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!767, !753, !880, !769}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !35, line: 95, baseType: !55)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !761, file: !35, line: 155, baseType: !882, size: 64, align: 64, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!880, !753}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !755, file: !35, line: 103, baseType: !75, size: 64, align: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !755, file: !35, line: 104, baseType: !887, size: 64, align: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !888, line: 77, baseType: !889)
!888 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !888, line: 77, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !755, file: !35, line: 105, baseType: !887, size: 64, align: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !755, file: !35, line: 106, baseType: !75, size: 64, align: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !755, file: !35, line: 107, baseType: !855, size: 32, align: 32, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !755, file: !35, line: 109, baseType: !573, size: 64, align: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !755, file: !35, line: 110, baseType: !566, size: 64, align: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !755, file: !35, line: 111, baseType: !566, size: 64, align: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !755, file: !35, line: 112, baseType: !566, size: 64, align: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !755, file: !35, line: 113, baseType: !899, size: 48, align: 8, offset: 704)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 48, align: 8, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 6)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !755, file: !35, line: 117, baseType: !855, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !755, file: !35, line: 118, baseType: !855, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !755, file: !35, line: 119, baseType: !855, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !755, file: !35, line: 120, baseType: !855, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !755, file: !35, line: 121, baseType: !855, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !755, file: !35, line: 122, baseType: !855, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !755, file: !35, line: 124, baseType: !100, size: 64, align: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !755, file: !35, line: 125, baseType: !100, size: 64, align: 64, offset: 832)
!910 = !DILocation(line: 120, column: 14, scope: !739)
!911 = !DILocalVariable(name: "buf", scope: !739, file: !111, line: 121, type: !566)
!912 = !DILocation(line: 121, column: 11, scope: !739)
!913 = !DILocalVariable(name: "tpos", scope: !739, file: !111, line: 122, type: !573)
!914 = !DILocation(line: 122, column: 8, scope: !739)
!915 = !DILocation(line: 124, column: 20, scope: !739)
!916 = !DILocation(line: 124, column: 18, scope: !739)
!917 = !DILocation(line: 126, column: 21, scope: !739)
!918 = !DILocation(line: 126, column: 10, scope: !739)
!919 = !DILocation(line: 126, column: 8, scope: !739)
!920 = !DILocation(line: 128, column: 9, scope: !739)
!921 = !DILocation(line: 129, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !739, file: !111, line: 129, column: 2)
!923 = !DILocation(line: 129, column: 11, scope: !922)
!924 = !DILocation(line: 129, column: 7, scope: !922)
!925 = !DILocation(line: 129, column: 21, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !111, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !922, file: !111, line: 129, column: 2)
!928 = !DILocation(line: 129, column: 20, scope: !926)
!929 = !DILocation(line: 129, column: 25, scope: !926)
!930 = !DILocation(line: 129, column: 2, scope: !926)
!931 = !DILocation(line: 131, column: 36, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !111, line: 129, column: 40)
!933 = !DILocation(line: 131, column: 35, scope: !932)
!934 = !DILocation(line: 131, column: 41, scope: !932)
!935 = !DILocation(line: 131, column: 10, scope: !932)
!936 = !DILocation(line: 131, column: 8, scope: !932)
!937 = !DILocation(line: 132, column: 34, scope: !932)
!938 = !DILocation(line: 132, column: 12, scope: !932)
!939 = !DILocation(line: 132, column: 10, scope: !932)
!940 = !DILocation(line: 133, column: 10, scope: !932)
!941 = !DILocation(line: 133, column: 3, scope: !932)
!942 = !DILocation(line: 135, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !932, file: !111, line: 135, column: 7)
!944 = !DILocation(line: 135, column: 14, scope: !943)
!945 = !DILocation(line: 135, column: 7, scope: !932)
!946 = !DILocation(line: 136, column: 4, scope: !943)
!947 = !DILocation(line: 138, column: 2, scope: !932)
!948 = !DILocation(line: 129, column: 36, scope: !949)
!949 = !DILexicalBlockFile(scope: !927, file: !111, discriminator: 2)
!950 = !DILocation(line: 129, column: 2, scope: !949)
!951 = distinct !{!951, !952}
!952 = !DILocation(line: 129, column: 2, scope: !739)
!953 = !DILocation(line: 140, column: 13, scope: !739)
!954 = !DILocation(line: 140, column: 2, scope: !739)
!955 = !DILocation(line: 142, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !739, file: !111, line: 142, column: 6)
!957 = !DILocation(line: 142, column: 13, scope: !956)
!958 = !DILocation(line: 142, column: 6, scope: !739)
!959 = !DILocation(line: 143, column: 3, scope: !956)
!960 = !DILocation(line: 145, column: 28, scope: !739)
!961 = !DILocation(line: 145, column: 2, scope: !739)
!962 = !DILocation(line: 146, column: 8, scope: !739)
!963 = !DILocation(line: 146, column: 6, scope: !739)
!964 = !DILocation(line: 148, column: 2, scope: !739)
!965 = !DILocation(line: 148, column: 39, scope: !966)
!966 = !DILexicalBlockFile(scope: !739, file: !111, discriminator: 1)
!967 = !DILocation(line: 148, column: 47, scope: !966)
!968 = !DILocation(line: 148, column: 9, scope: !966)
!969 = !DILocation(line: 148, column: 64, scope: !966)
!970 = !DILocation(line: 148, column: 2, scope: !966)
!971 = !DILocation(line: 149, column: 12, scope: !972)
!972 = distinct !DILexicalBlock(scope: !739, file: !111, line: 148, column: 87)
!973 = !DILocation(line: 149, column: 3, scope: !972)
!974 = !DILocation(line: 149, column: 8, scope: !972)
!975 = !DILocation(line: 149, column: 18, scope: !972)
!976 = !DILocation(line: 150, column: 20, scope: !972)
!977 = !DILocation(line: 150, column: 3, scope: !972)
!978 = !DILocation(line: 151, column: 52, scope: !972)
!979 = !DILocation(line: 151, column: 57, scope: !972)
!980 = !DILocation(line: 151, column: 3, scope: !972)
!981 = !DILocation(line: 148, column: 2, scope: !982)
!982 = !DILexicalBlockFile(scope: !739, file: !111, discriminator: 2)
!983 = distinct !{!983, !964}
!984 = !DILocation(line: 153, column: 16, scope: !739)
!985 = !DILocation(line: 153, column: 2, scope: !739)
!986 = !DILocation(line: 155, column: 21, scope: !739)
!987 = !DILocation(line: 155, column: 2, scope: !739)
!988 = !DILocation(line: 156, column: 2, scope: !739)
!989 = !DILocation(line: 157, column: 1, scope: !739)
!990 = distinct !DISubprogram(name: "get_cmd_length", scope: !111, file: !111, line: 48, type: !991, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!991 = !DISubroutineType(types: !992)
!992 = !{!86, !74}
!993 = !DILocalVariable(name: "data", arg: 1, scope: !990, file: !111, line: 48, type: !74)
!994 = !DILocation(line: 48, column: 33, scope: !990)
!995 = !DILocation(line: 50, column: 40, scope: !990)
!996 = !DILocation(line: 50, column: 24, scope: !990)
!997 = !DILocation(line: 50, column: 47, scope: !990)
!998 = !DILocation(line: 50, column: 16, scope: !990)
!999 = !DILocation(line: 50, column: 9, scope: !990)
