; ModuleID = './[inter]xkeymap.o.i'
source_filename = "./[inter]xkeymap.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._XDisplay = type opaque
%struct._key_translation_entry = type { %struct._key_translation*, i32, %struct._key_translation_entry* }
%struct._key_translation = type { i8, i16, i32, %struct._key_translation* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@g_keymapname = external global [16 x i8], align 16
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c".rdesktop/keymaps\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"/usr/local/share/rdesktop/keymaps/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"keymaps\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@keymap_loaded = internal global i32 0, align 4
@g_display = external global %struct._XDisplay*, align 8
@min_keycode = internal global i32 0, align 4
@keypress_keysyms = internal global [256 x i64] zeroinitializer, align 16
@g_seamless_rdp = external global i32, align 4
@g_seamless_active = external global i32, align 4
@g_win_button_size = external global i32, align 4
@g_numlock_sync = external global i32, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"xkeymap_translate_key(), inhibiting key\00", align 1
@remote_modifier_state = internal global i16 0, align 2
@.str.7 = private unnamed_addr constant [76 x i8] c"xkeymap_translate_key(), non-physical Shift + Ctrl pressed, releasing Shift\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"xkeymap_translate_key(), found scancode translation, scancode=0x%x, modifiers=0x%x\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"No translation for (keysym 0x%lx, %s)\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Sending guessed scancode 0x%x\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"No good guess for keycode 0x%x found\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"xkeymap_send_keys(), handling sequence element, keysym=0x%x\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Sequence nesting too deep\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"NoSymbol\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"(no name)\00", align 1
@saved_remote_modifier_state = internal global i16 0, align 2
@.str.16 = private unnamed_addr constant [81 x i8] c"ensure_remote_modifiers(), remote NumLock state is incorrect, activating NumLock\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"ensure_remote_modifiers(), remote NumLock state is incorrect, deactivating NumLock.\00", align 1
@g_wnd = external global i64, align 8
@.str.18 = private unnamed_addr constant [64 x i8] c"rdp_send_scancode(), sending extended scancode=0x%x, flags=0x%x\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"rdp_send_scancode(), sending scancode=0x%x, flags=0x%x\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"xkeymap_read(), failed to open keymap %s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" \09\0A\0D\0C\0B\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"include \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"map \00", align 1
@g_keylayout = external global i32, align 4
@.str.25 = private unnamed_addr constant [31 x i8] c"xkeymap_read(), Keylayout 0x%x\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"enable_compose\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"xkeymap_read(), enabling compose handling\00", align 1
@g_enable_compose = external global i32, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"keyboard_type \00", align 1
@g_keyboard_type = external global i32, align 4
@.str.30 = private unnamed_addr constant [35 x i8] c"xkeymap_read(), keyboard_type 0x%x\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"keyboard_subtype \00", align 1
@g_keyboard_subtype = external global i32, align 4
@.str.32 = private unnamed_addr constant [38 x i8] c"xkeymap_read(), keyboard_subtype 0x%x\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"keyboard_functionkeys \00", align 1
@g_keyboard_functionkeys = external global i32, align 4
@.str.34 = private unnamed_addr constant [43 x i8] c"xkeymap_read(), keyboard_functionkeys 0x%x\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"xkeymap_read(), bad line %d in keymap %s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"altgr\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"localstate\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"inhibit\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"addupper\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" \09\00\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"add_sequence(), ignoring bad keysym '%s' in keymap %s\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"add_sequence(), adding sequence for keysym '%s' (0x%lx)\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"add_sequence(), ignoring line with bad keysym '%s' in keymap %s\00", align 1
@keymap = internal global [128 x %struct._key_translation_entry*] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [55 x i8] c"add_to_keymap(), ignoring bad keysym '%s' in keymap %s\00", align 1
@.str.48 = private unnamed_addr constant [80 x i8] c"add_to_keymap(), adding translation, keysym=0x%x, scancode=0x%x, modifiers=0x%x\00", align 1
@g_rdp_version = external global i32, align 4
@.str.49 = private unnamed_addr constant [66 x i8] c"update_modifier_state(), before modifier_state:0x%x, pressed=0x%x\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"update_modifier_state(), after modifier_state:0x%x\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xkeymap_from_locale(i8*) #0 !dbg !86 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !93, metadata !94), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %4, metadata !96, metadata !94), !dbg !98
  call void @llvm.dbg.declare(metadata i8** %5, metadata !99, metadata !94), !dbg !100
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !101, metadata !94), !dbg !159
  %7 = load i8*, i8** %3, align 8, !dbg !160
  %8 = call i8* @xstrdup(i8* %7), !dbg !161
  store i8* %8, i8** %4, align 8, !dbg !162
  %9 = load i8*, i8** %4, align 8, !dbg !163
  %10 = call i8* @strrchr(i8* %9, i32 46) #6, !dbg !164
  store i8* %10, i8** %5, align 8, !dbg !165
  %11 = load i8*, i8** %5, align 8, !dbg !166
  %12 = icmp ne i8* %11, null, !dbg !166
  br i1 %12, label %13, label %15, !dbg !168

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %5, align 8, !dbg !169
  store i8 0, i8* %14, align 1, !dbg !170
  br label %15, !dbg !171

; <label>:15:                                     ; preds = %13, %1
  %16 = load i8*, i8** %4, align 8, !dbg !172
  %17 = call i8* @strrchr(i8* %16, i32 64) #6, !dbg !173
  store i8* %17, i8** %5, align 8, !dbg !174
  %18 = load i8*, i8** %5, align 8, !dbg !175
  %19 = icmp ne i8* %18, null, !dbg !175
  br i1 %19, label %20, label %22, !dbg !177

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %5, align 8, !dbg !178
  store i8 0, i8* %21, align 1, !dbg !179
  br label %22, !dbg !180

; <label>:22:                                     ; preds = %20, %15
  %23 = load i8*, i8** %4, align 8, !dbg !181
  %24 = call i8* @strrchr(i8* %23, i32 95) #6, !dbg !182
  store i8* %24, i8** %5, align 8, !dbg !183
  %25 = load i8*, i8** %5, align 8, !dbg !184
  %26 = icmp ne i8* %25, null, !dbg !184
  br i1 %26, label %27, label %29, !dbg !186

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %5, align 8, !dbg !187
  store i8 45, i8* %28, align 1, !dbg !188
  br label %29, !dbg !189

; <label>:29:                                     ; preds = %27, %22
  %30 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %30, i8** %5, align 8, !dbg !191
  br label %31, !dbg !192

; <label>:31:                                     ; preds = %35, %29
  %32 = load i8*, i8** %5, align 8, !dbg !193
  %33 = load i8, i8* %32, align 1, !dbg !195
  %34 = icmp ne i8 %33, 0, !dbg !196
  br i1 %34, label %35, label %44, !dbg !196

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %5, align 8, !dbg !197
  %37 = load i8, i8* %36, align 1, !dbg !199
  %38 = sext i8 %37 to i32, !dbg !200
  %39 = call i32 @tolower(i32 %38) #6, !dbg !201
  %40 = trunc i32 %39 to i8, !dbg !201
  %41 = load i8*, i8** %5, align 8, !dbg !202
  store i8 %40, i8* %41, align 1, !dbg !203
  %42 = load i8*, i8** %5, align 8, !dbg !204
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !204
  store i8* %43, i8** %5, align 8, !dbg !204
  br label %31, !dbg !205, !llvm.loop !207

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** %4, align 8, !dbg !208
  %46 = call %struct._IO_FILE* @xkeymap_open(i8* %45), !dbg !209
  store %struct._IO_FILE* %46, %struct._IO_FILE** %6, align 8, !dbg !210
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !211
  %48 = icmp eq %struct._IO_FILE* %47, null, !dbg !213
  br i1 %48, label %49, label %59, !dbg !214

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %4, align 8, !dbg !215
  %51 = call i8* @strrchr(i8* %50, i32 45) #6, !dbg !217
  store i8* %51, i8** %5, align 8, !dbg !218
  %52 = load i8*, i8** %5, align 8, !dbg !219
  %53 = icmp ne i8* %52, null, !dbg !219
  br i1 %53, label %54, label %56, !dbg !221

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %5, align 8, !dbg !222
  store i8 0, i8* %55, align 1, !dbg !223
  br label %56, !dbg !224

; <label>:56:                                     ; preds = %54, %49
  %57 = load i8*, i8** %4, align 8, !dbg !225
  %58 = call %struct._IO_FILE* @xkeymap_open(i8* %57), !dbg !226
  store %struct._IO_FILE* %58, %struct._IO_FILE** %6, align 8, !dbg !227
  br label %59, !dbg !228

; <label>:59:                                     ; preds = %56, %44
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !229
  %61 = icmp ne %struct._IO_FILE* %60, null, !dbg !229
  br i1 %61, label %62, label %68, !dbg !231

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !232
  %64 = call i32 @fclose(%struct._IO_FILE* %63), !dbg !234
  %65 = load i8*, i8** %4, align 8, !dbg !235
  %66 = call i8* @strncpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_keymapname, i32 0, i32 0), i8* %65, i64 15) #7, !dbg !237
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_keymapname, i64 0, i64 15), align 1, !dbg !238
  %67 = load i8*, i8** %4, align 8, !dbg !239
  call void @xfree(i8* %67), !dbg !240
  store i32 1, i32* %2, align 4, !dbg !241
  br label %70, !dbg !241

; <label>:68:                                     ; preds = %59
  %69 = load i8*, i8** %4, align 8, !dbg !242
  call void @xfree(i8* %69), !dbg !243
  store i32 0, i32* %2, align 4, !dbg !244
  br label %70, !dbg !244

; <label>:70:                                     ; preds = %68, %62
  %71 = load i32, i32* %2, align 4, !dbg !245
  ret i32 %71, !dbg !245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @xstrdup(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xkeymap_open(i8*) #0 !dbg !246 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !249, metadata !94), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %4, metadata !251, metadata !94), !dbg !252
  call void @llvm.dbg.declare(metadata i8** %5, metadata !253, metadata !94), !dbg !254
  call void @llvm.dbg.declare(metadata i8** %6, metadata !255, metadata !94), !dbg !256
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !257, metadata !94), !dbg !258
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !259
  store i8* %8, i8** %6, align 8, !dbg !260
  %9 = load i8*, i8** %6, align 8, !dbg !261
  %10 = icmp ne i8* %9, null, !dbg !261
  br i1 %10, label %11, label %26, !dbg !263

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %6, align 8, !dbg !264
  %13 = call i8* @pathjoin(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !266
  store i8* %13, i8** %4, align 8, !dbg !267
  %14 = load i8*, i8** %4, align 8, !dbg !268
  %15 = load i8*, i8** %3, align 8, !dbg !269
  %16 = call i8* @pathjoin(i8* %14, i8* %15), !dbg !270
  store i8* %16, i8** %5, align 8, !dbg !271
  %17 = load i8*, i8** %4, align 8, !dbg !272
  call void @xfree(i8* %17), !dbg !273
  %18 = load i8*, i8** %5, align 8, !dbg !274
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !275
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8, !dbg !276
  %20 = load i8*, i8** %5, align 8, !dbg !277
  call void @xfree(i8* %20), !dbg !278
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !279
  %22 = icmp ne %struct._IO_FILE* %21, null, !dbg !279
  br i1 %22, label %23, label %25, !dbg !281

; <label>:23:                                     ; preds = %11
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !282
  store %struct._IO_FILE* %24, %struct._IO_FILE** %2, align 8, !dbg !283
  br label %47, !dbg !283

; <label>:25:                                     ; preds = %11
  br label %26, !dbg !284

; <label>:26:                                     ; preds = %25, %1
  %27 = load i8*, i8** %3, align 8, !dbg !285
  %28 = call i8* @pathjoin(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %27), !dbg !286
  store i8* %28, i8** %4, align 8, !dbg !287
  %29 = load i8*, i8** %4, align 8, !dbg !288
  %30 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !289
  store %struct._IO_FILE* %30, %struct._IO_FILE** %7, align 8, !dbg !290
  %31 = load i8*, i8** %4, align 8, !dbg !291
  call void @xfree(i8* %31), !dbg !292
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !293
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !293
  br i1 %33, label %34, label %36, !dbg !295

; <label>:34:                                     ; preds = %26
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !296
  store %struct._IO_FILE* %35, %struct._IO_FILE** %2, align 8, !dbg !297
  br label %47, !dbg !297

; <label>:36:                                     ; preds = %26
  %37 = load i8*, i8** %3, align 8, !dbg !298
  %38 = call i8* @pathjoin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %37), !dbg !299
  store i8* %38, i8** %4, align 8, !dbg !300
  %39 = load i8*, i8** %4, align 8, !dbg !301
  %40 = call %struct._IO_FILE* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !302
  store %struct._IO_FILE* %40, %struct._IO_FILE** %7, align 8, !dbg !303
  %41 = load i8*, i8** %4, align 8, !dbg !304
  call void @xfree(i8* %41), !dbg !305
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !306
  %43 = icmp ne %struct._IO_FILE* %42, null, !dbg !306
  br i1 %43, label %44, label %46, !dbg !308

; <label>:44:                                     ; preds = %36
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !309
  store %struct._IO_FILE* %45, %struct._IO_FILE** %2, align 8, !dbg !310
  br label %47, !dbg !310

; <label>:46:                                     ; preds = %36
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !311
  br label %47, !dbg !311

; <label>:47:                                     ; preds = %46, %44, %34, %23
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !312
  ret %struct._IO_FILE* %48, !dbg !312
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare void @xfree(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @pathjoin(i8*, i8*) #0 !dbg !313 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !316, metadata !94), !dbg !317
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !318, metadata !94), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %5, metadata !320, metadata !94), !dbg !321
  %6 = call i8* @xmalloc(i32 8193), !dbg !322
  store i8* %6, i8** %5, align 8, !dbg !323
  %7 = load i8*, i8** %4, align 8, !dbg !324
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !324
  %9 = load i8, i8* %8, align 1, !dbg !324
  %10 = sext i8 %9 to i32, !dbg !324
  %11 = icmp eq i32 %10, 47, !dbg !326
  br i1 %11, label %12, label %16, !dbg !327

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !328
  %14 = load i8*, i8** %4, align 8, !dbg !330
  %15 = call i8* @strncpy(i8* %13, i8* %14, i64 4096) #7, !dbg !331
  br label %25, !dbg !332

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !333
  %18 = load i8*, i8** %3, align 8, !dbg !335
  %19 = call i8* @strncpy(i8* %17, i8* %18, i64 4096) #7, !dbg !336
  %20 = load i8*, i8** %5, align 8, !dbg !337
  %21 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !338
  %22 = load i8*, i8** %5, align 8, !dbg !339
  %23 = load i8*, i8** %4, align 8, !dbg !340
  %24 = call i8* @strncat(i8* %22, i8* %23, i64 4096) #7, !dbg !341
  br label %25

; <label>:25:                                     ; preds = %16, %12
  %26 = load i8*, i8** %5, align 8, !dbg !342
  ret i8* %26, !dbg !343
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @xkeymap_init() #0 !dbg !344 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !347, metadata !94), !dbg !348
  %2 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_keymapname, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !349
  %3 = icmp ne i32 %2, 0, !dbg !349
  br i1 %3, label %4, label %9, !dbg !351

; <label>:4:                                      ; preds = %0
  %5 = call i32 @xkeymap_read(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_keymapname, i32 0, i32 0)), !dbg !352
  %6 = icmp ne i32 %5, 0, !dbg !352
  br i1 %6, label %7, label %8, !dbg !355

; <label>:7:                                      ; preds = %4
  store i32 1, i32* @keymap_loaded, align 4, !dbg !356
  br label %8, !dbg !357

; <label>:8:                                      ; preds = %7, %4
  br label %9, !dbg !358

; <label>:9:                                      ; preds = %8, %0
  %10 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !359
  %11 = call i32 @XDisplayKeycodes(%struct._XDisplay* %10, i32* @min_keycode, i32* %1), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @xkeymap_read(i8*) #0 !dbg !362 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !365, metadata !94), !dbg !366
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !367, metadata !94), !dbg !368
  call void @llvm.dbg.declare(metadata [80 x i8]* %5, metadata !369, metadata !94), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %6, metadata !374, metadata !94), !dbg !375
  store i32 0, i32* %6, align 4, !dbg !375
  call void @llvm.dbg.declare(metadata i32* %7, metadata !376, metadata !94), !dbg !377
  store i32 0, i32* %7, align 4, !dbg !377
  call void @llvm.dbg.declare(metadata i8** %8, metadata !378, metadata !94), !dbg !379
  call void @llvm.dbg.declare(metadata i8** %9, metadata !380, metadata !94), !dbg !381
  call void @llvm.dbg.declare(metadata i8** %10, metadata !382, metadata !94), !dbg !383
  call void @llvm.dbg.declare(metadata i8* %11, metadata !384, metadata !94), !dbg !385
  call void @llvm.dbg.declare(metadata i16* %12, metadata !386, metadata !94), !dbg !387
  %13 = load i8*, i8** %3, align 8, !dbg !388
  %14 = call %struct._IO_FILE* @xkeymap_open(i8* %13), !dbg !389
  store %struct._IO_FILE* %14, %struct._IO_FILE** %4, align 8, !dbg !390
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !391
  %16 = icmp eq %struct._IO_FILE* %15, null, !dbg !393
  br i1 %16, label %17, label %19, !dbg !394

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %3, align 8, !dbg !395
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8* %18), !dbg !397
  store i32 0, i32* %2, align 4, !dbg !398
  br label %218, !dbg !398

; <label>:19:                                     ; preds = %1
  br label %20, !dbg !399

; <label>:20:                                     ; preds = %214, %126, %119, %107, %96, %85, %76, %71, %60, %55, %43, %19
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !400
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !402
  %23 = call i8* @fgets(i8* %21, i32 80, %struct._IO_FILE* %22), !dbg !403
  %24 = icmp ne i8* %23, null, !dbg !404
  br i1 %24, label %25, label %215, !dbg !405

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %6, align 4, !dbg !406
  %27 = add i32 %26, 1, !dbg !406
  store i32 %27, i32* %6, align 4, !dbg !406
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !408
  %29 = call i8* @strchr(i8* %28, i32 10) #6, !dbg !409
  store i8* %29, i8** %9, align 8, !dbg !410
  %30 = load i8*, i8** %9, align 8, !dbg !411
  %31 = icmp ne i8* %30, null, !dbg !413
  br i1 %31, label %32, label %34, !dbg !414

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** %9, align 8, !dbg !415
  store i8 0, i8* %33, align 1, !dbg !416
  br label %34, !dbg !417

; <label>:34:                                     ; preds = %32, %25
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !418
  %36 = call i64 @strlen(i8* %35) #6, !dbg !419
  %37 = trunc i64 %36 to i32, !dbg !419
  store i32 %37, i32* %7, align 4, !dbg !420
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !421
  %39 = call i64 @strspn(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #6, !dbg !423
  %40 = load i32, i32* %7, align 4, !dbg !424
  %41 = zext i32 %40 to i64, !dbg !424
  %42 = icmp eq i64 %39, %41, !dbg !425
  br i1 %42, label %43, label %44, !dbg !426

; <label>:43:                                     ; preds = %34
  br label %20, !dbg !427, !llvm.loop !429

; <label>:44:                                     ; preds = %34
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !430
  %46 = call i32 @str_startswith(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)), !dbg !432
  %47 = icmp ne i32 %46, 0, !dbg !432
  br i1 %47, label %48, label %56, !dbg !433

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !434
  %50 = getelementptr inbounds i8, i8* %49, i64 9, !dbg !437
  %51 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !438
  %52 = call i32 @xkeymap_read(i8* %51), !dbg !439
  %53 = icmp ne i32 %52, 0, !dbg !439
  br i1 %53, label %55, label %54, !dbg !440

; <label>:54:                                     ; preds = %48
  store i32 0, i32* %2, align 4, !dbg !441
  br label %218, !dbg !441

; <label>:55:                                     ; preds = %48
  br label %20, !dbg !442, !llvm.loop !429

; <label>:56:                                     ; preds = %44
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !443
  %58 = call i32 @str_startswith(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)), !dbg !445
  %59 = icmp ne i32 %58, 0, !dbg !445
  br i1 %59, label %60, label %67, !dbg !446

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !447
  %62 = getelementptr inbounds i8, i8* %61, i64 5, !dbg !449
  %63 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !450
  %64 = call i64 @strtoul(i8* %63, i8** null, i32 16) #7, !dbg !451
  %65 = trunc i64 %64 to i32, !dbg !451
  store i32 %65, i32* @g_keylayout, align 4, !dbg !452
  %66 = load i32, i32* @g_keylayout, align 4, !dbg !453
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i32 %66), !dbg !454
  br label %20, !dbg !455, !llvm.loop !429

; <label>:67:                                     ; preds = %56
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !456
  %69 = call i32 @str_startswith(i8* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)), !dbg !458
  %70 = icmp ne i32 %69, 0, !dbg !458
  br i1 %70, label %71, label %72, !dbg !459

; <label>:71:                                     ; preds = %67
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0)), !dbg !460
  store i32 1, i32* @g_enable_compose, align 4, !dbg !462
  br label %20, !dbg !463, !llvm.loop !429

; <label>:72:                                     ; preds = %67
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !464
  %74 = call i32 @str_startswith(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)), !dbg !466
  %75 = icmp ne i32 %74, 0, !dbg !466
  br i1 %75, label %76, label %81, !dbg !467

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !468
  %78 = getelementptr inbounds i8, i8* %77, i64 9, !dbg !470
  %79 = getelementptr inbounds i8, i8* %78, i64 -1, !dbg !471
  %80 = load i8*, i8** %3, align 8, !dbg !472
  call void @add_sequence(i8* %79, i8* %80), !dbg !473
  br label %20, !dbg !474, !llvm.loop !429

; <label>:81:                                     ; preds = %72
  %82 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !475
  %83 = call i32 @str_startswith(i8* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0)), !dbg !477
  %84 = icmp ne i32 %83, 0, !dbg !477
  br i1 %84, label %85, label %92, !dbg !478

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !479
  %87 = getelementptr inbounds i8, i8* %86, i64 15, !dbg !481
  %88 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !482
  %89 = call i64 @strtol(i8* %88, i8** null, i32 16) #7, !dbg !483
  %90 = trunc i64 %89 to i32, !dbg !483
  store i32 %90, i32* @g_keyboard_type, align 4, !dbg !484
  %91 = load i32, i32* @g_keyboard_type, align 4, !dbg !485
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0), i32 %91), !dbg !486
  br label %20, !dbg !487, !llvm.loop !429

; <label>:92:                                     ; preds = %81
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !488
  %94 = call i32 @str_startswith(i8* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)), !dbg !490
  %95 = icmp ne i32 %94, 0, !dbg !490
  br i1 %95, label %96, label %103, !dbg !491

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !492
  %98 = getelementptr inbounds i8, i8* %97, i64 18, !dbg !494
  %99 = getelementptr inbounds i8, i8* %98, i64 -1, !dbg !495
  %100 = call i64 @strtol(i8* %99, i8** null, i32 16) #7, !dbg !496
  %101 = trunc i64 %100 to i32, !dbg !496
  store i32 %101, i32* @g_keyboard_subtype, align 4, !dbg !497
  %102 = load i32, i32* @g_keyboard_subtype, align 4, !dbg !498
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i32 %102), !dbg !499
  br label %20, !dbg !500, !llvm.loop !429

; <label>:103:                                    ; preds = %92
  %104 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !501
  %105 = call i32 @str_startswith(i8* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0)), !dbg !503
  %106 = icmp ne i32 %105, 0, !dbg !503
  br i1 %106, label %107, label %114, !dbg !504

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !505
  %109 = getelementptr inbounds i8, i8* %108, i64 23, !dbg !507
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !508
  %111 = call i64 @strtol(i8* %110, i8** null, i32 16) #7, !dbg !509
  %112 = trunc i64 %111 to i32, !dbg !509
  store i32 %112, i32* @g_keyboard_functionkeys, align 4, !dbg !510
  %113 = load i32, i32* @g_keyboard_functionkeys, align 4, !dbg !511
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i32 0, i32 0), i32 %113), !dbg !512
  br label %20, !dbg !513, !llvm.loop !429

; <label>:114:                                    ; preds = %103
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0, !dbg !514
  %116 = load i8, i8* %115, align 16, !dbg !514
  %117 = sext i8 %116 to i32, !dbg !514
  %118 = icmp eq i32 %117, 35, !dbg !516
  br i1 %118, label %119, label %120, !dbg !517

; <label>:119:                                    ; preds = %114
  br label %20, !dbg !518, !llvm.loop !429

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !520
  store i8* %121, i8** %8, align 8, !dbg !521
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !522
  %123 = call i8* @strchr(i8* %122, i32 32) #6, !dbg !523
  store i8* %123, i8** %9, align 8, !dbg !524
  %124 = load i8*, i8** %9, align 8, !dbg !525
  %125 = icmp eq i8* %124, null, !dbg !527
  br i1 %125, label %126, label %129, !dbg !528

; <label>:126:                                    ; preds = %120
  %127 = load i32, i32* %6, align 4, !dbg !529
  %128 = load i8*, i8** %3, align 8, !dbg !531
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0), i32 %127, i8* %128), !dbg !532
  br label %20, !dbg !533, !llvm.loop !429

; <label>:129:                                    ; preds = %120
  %130 = load i8*, i8** %9, align 8, !dbg !534
  store i8 0, i8* %130, align 1, !dbg !536
  br label %131

; <label>:131:                                    ; preds = %129
  %132 = load i8*, i8** %9, align 8, !dbg !537
  %133 = getelementptr inbounds i8, i8* %132, i32 1, !dbg !537
  store i8* %133, i8** %9, align 8, !dbg !537
  %134 = load i8*, i8** %9, align 8, !dbg !538
  %135 = call i64 @strtol(i8* %134, i8** %10, i32 16) #7, !dbg !539
  %136 = trunc i64 %135 to i8, !dbg !539
  store i8 %136, i8* %11, align 1, !dbg !540
  store i16 0, i16* %12, align 2, !dbg !541
  %137 = load i8*, i8** %10, align 8, !dbg !542
  %138 = call i8* @strstr(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #6, !dbg !544
  %139 = icmp ne i8* %138, null, !dbg !544
  br i1 %139, label %140, label %145, !dbg !545

; <label>:140:                                    ; preds = %131
  %141 = load i16, i16* %12, align 2, !dbg !546
  %142 = zext i16 %141 to i32, !dbg !546
  %143 = or i32 %142, 4, !dbg !546
  %144 = trunc i32 %143 to i16, !dbg !546
  store i16 %144, i16* %12, align 2, !dbg !546
  br label %145, !dbg !548

; <label>:145:                                    ; preds = %140, %131
  %146 = load i8*, i8** %10, align 8, !dbg !549
  %147 = call i8* @strstr(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #6, !dbg !551
  %148 = icmp ne i8* %147, null, !dbg !551
  br i1 %148, label %149, label %154, !dbg !552

; <label>:149:                                    ; preds = %145
  %150 = load i16, i16* %12, align 2, !dbg !553
  %151 = zext i16 %150 to i32, !dbg !553
  %152 = or i32 %151, 2, !dbg !553
  %153 = trunc i32 %152 to i16, !dbg !553
  store i16 %153, i16* %12, align 2, !dbg !553
  br label %154, !dbg !555

; <label>:154:                                    ; preds = %149, %145
  %155 = load i8*, i8** %10, align 8, !dbg !556
  %156 = call i8* @strstr(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)) #6, !dbg !558
  %157 = icmp ne i8* %156, null, !dbg !558
  br i1 %157, label %158, label %163, !dbg !559

; <label>:158:                                    ; preds = %154
  %159 = load i16, i16* %12, align 2, !dbg !560
  %160 = zext i16 %159 to i32, !dbg !560
  %161 = or i32 %160, 256, !dbg !560
  %162 = trunc i32 %161 to i16, !dbg !560
  store i16 %162, i16* %12, align 2, !dbg !560
  br label %163, !dbg !562

; <label>:163:                                    ; preds = %158, %154
  %164 = load i8*, i8** %10, align 8, !dbg !563
  %165 = call i8* @strstr(i8* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #6, !dbg !565
  %166 = icmp ne i8* %165, null, !dbg !565
  br i1 %166, label %167, label %172, !dbg !566

; <label>:167:                                    ; preds = %163
  %168 = load i16, i16* %12, align 2, !dbg !567
  %169 = zext i16 %168 to i32, !dbg !567
  %170 = or i32 %169, 1024, !dbg !567
  %171 = trunc i32 %170 to i16, !dbg !567
  store i16 %171, i16* %12, align 2, !dbg !567
  br label %172, !dbg !569

; <label>:172:                                    ; preds = %167, %163
  %173 = load i8*, i8** %10, align 8, !dbg !570
  %174 = call i8* @strstr(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #6, !dbg !572
  %175 = icmp ne i8* %174, null, !dbg !572
  br i1 %175, label %176, label %181, !dbg !573

; <label>:176:                                    ; preds = %172
  %177 = load i16, i16* %12, align 2, !dbg !574
  %178 = zext i16 %177 to i32, !dbg !574
  %179 = or i32 %178, 2048, !dbg !574
  %180 = trunc i32 %179 to i16, !dbg !574
  store i16 %180, i16* %12, align 2, !dbg !574
  br label %181, !dbg !576

; <label>:181:                                    ; preds = %176, %172
  %182 = load i8*, i8** %8, align 8, !dbg !577
  %183 = load i8, i8* %11, align 1, !dbg !578
  %184 = load i16, i16* %12, align 2, !dbg !579
  %185 = load i8*, i8** %3, align 8, !dbg !580
  call void @add_to_keymap(i8* %182, i8 zeroext %183, i16 zeroext %184, i8* %185), !dbg !581
  %186 = load i8*, i8** %10, align 8, !dbg !582
  %187 = call i8* @strstr(i8* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #6, !dbg !584
  %188 = icmp ne i8* %187, null, !dbg !584
  br i1 %188, label %189, label %214, !dbg !585

; <label>:189:                                    ; preds = %181
  %190 = load i8*, i8** %8, align 8, !dbg !586
  store i8* %190, i8** %9, align 8, !dbg !589
  br label %191, !dbg !590

; <label>:191:                                    ; preds = %202, %189
  %192 = load i8*, i8** %9, align 8, !dbg !591
  %193 = load i8, i8* %192, align 1, !dbg !594
  %194 = icmp ne i8 %193, 0, !dbg !595
  br i1 %194, label %195, label %205, !dbg !595

; <label>:195:                                    ; preds = %191
  %196 = load i8*, i8** %9, align 8, !dbg !596
  %197 = load i8, i8* %196, align 1, !dbg !597
  %198 = sext i8 %197 to i32, !dbg !598
  %199 = call i32 @toupper(i32 %198) #6, !dbg !599
  %200 = trunc i32 %199 to i8, !dbg !599
  %201 = load i8*, i8** %9, align 8, !dbg !600
  store i8 %200, i8* %201, align 1, !dbg !601
  br label %202, !dbg !602

; <label>:202:                                    ; preds = %195
  %203 = load i8*, i8** %9, align 8, !dbg !603
  %204 = getelementptr inbounds i8, i8* %203, i32 1, !dbg !603
  store i8* %204, i8** %9, align 8, !dbg !603
  br label %191, !dbg !605, !llvm.loop !606

; <label>:205:                                    ; preds = %191
  %206 = load i16, i16* %12, align 2, !dbg !608
  %207 = zext i16 %206 to i32, !dbg !608
  %208 = or i32 %207, 2, !dbg !608
  %209 = trunc i32 %208 to i16, !dbg !608
  store i16 %209, i16* %12, align 2, !dbg !608
  %210 = load i8*, i8** %8, align 8, !dbg !609
  %211 = load i8, i8* %11, align 1, !dbg !610
  %212 = load i16, i16* %12, align 2, !dbg !611
  %213 = load i8*, i8** %3, align 8, !dbg !612
  call void @add_to_keymap(i8* %210, i8 zeroext %211, i16 zeroext %212, i8* %213), !dbg !613
  br label %214, !dbg !614

; <label>:214:                                    ; preds = %205, %181
  br label %20, !dbg !615, !llvm.loop !429

; <label>:215:                                    ; preds = %20
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !617
  %217 = call i32 @fclose(%struct._IO_FILE* %216), !dbg !618
  store i32 1, i32* %2, align 4, !dbg !619
  br label %218, !dbg !619

; <label>:218:                                    ; preds = %215, %54, %17
  %219 = load i32, i32* %2, align 4, !dbg !620
  ret i32 %219, !dbg !620
}

declare i32 @XDisplayKeycodes(%struct._XDisplay*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @set_keypress_keysym(i32, i64) #0 !dbg !621 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !624, metadata !94), !dbg !625
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !626, metadata !94), !dbg !627
  %5 = load i32, i32* %3, align 4, !dbg !628
  %6 = icmp ult i32 %5, 8, !dbg !630
  br i1 %6, label %10, label %7, !dbg !631

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !dbg !632
  %9 = icmp ugt i32 %8, 255, !dbg !634
  br i1 %9, label %10, label %11, !dbg !635

; <label>:10:                                     ; preds = %7, %2
  br label %16, !dbg !636

; <label>:11:                                     ; preds = %7
  %12 = load i64, i64* %4, align 8, !dbg !637
  %13 = load i32, i32* %3, align 4, !dbg !638
  %14 = zext i32 %13 to i64, !dbg !639
  %15 = getelementptr inbounds [256 x i64], [256 x i64]* @keypress_keysyms, i64 0, i64 %14, !dbg !639
  store i64 %12, i64* %15, align 8, !dbg !640
  br label %16, !dbg !641

; <label>:16:                                     ; preds = %11, %10
  ret void, !dbg !642
}

; Function Attrs: nounwind uwtable
define i64 @reset_keypress_keysym(i32, i64) #0 !dbg !644 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !647, metadata !94), !dbg !648
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !649, metadata !94), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %6, metadata !651, metadata !94), !dbg !652
  %7 = load i32, i32* %4, align 4, !dbg !653
  %8 = icmp ult i32 %7, 8, !dbg !655
  br i1 %8, label %12, label %9, !dbg !656

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !657
  %11 = icmp ugt i32 %10, 255, !dbg !659
  br i1 %11, label %12, label %14, !dbg !660

; <label>:12:                                     ; preds = %9, %2
  %13 = load i64, i64* %5, align 8, !dbg !661
  store i64 %13, i64* %3, align 8, !dbg !662
  br label %29, !dbg !662

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %4, align 4, !dbg !663
  %16 = zext i32 %15 to i64, !dbg !664
  %17 = getelementptr inbounds [256 x i64], [256 x i64]* @keypress_keysyms, i64 0, i64 %16, !dbg !664
  %18 = load i64, i64* %17, align 8, !dbg !664
  store i64 %18, i64* %6, align 8, !dbg !665
  %19 = load i64, i64* %6, align 8, !dbg !666
  %20 = icmp ne i64 %19, 0, !dbg !668
  br i1 %20, label %21, label %25, !dbg !669

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %4, align 4, !dbg !670
  %23 = zext i32 %22 to i64, !dbg !672
  %24 = getelementptr inbounds [256 x i64], [256 x i64]* @keypress_keysyms, i64 0, i64 %23, !dbg !672
  store i64 0, i64* %24, align 8, !dbg !673
  br label %27, !dbg !674

; <label>:25:                                     ; preds = %14
  %26 = load i64, i64* %5, align 8, !dbg !675
  store i64 %26, i64* %6, align 8, !dbg !677
  br label %27

; <label>:27:                                     ; preds = %25, %21
  %28 = load i64, i64* %6, align 8, !dbg !678
  store i64 %28, i64* %3, align 8, !dbg !679
  br label %29, !dbg !679

; <label>:29:                                     ; preds = %27, %12
  %30 = load i64, i64* %3, align 8, !dbg !680
  ret i64 %30, !dbg !680
}

; Function Attrs: nounwind uwtable
define i32 @handle_special_keys(i32, i32, i32, i32) #0 !dbg !681 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !684, metadata !94), !dbg !685
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !686, metadata !94), !dbg !687
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !688, metadata !94), !dbg !689
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !690, metadata !94), !dbg !691
  %10 = load i32, i32* %6, align 4, !dbg !692
  switch i32 %10, label %92 [
    i32 65293, label %11
    i32 65387, label %42
    i32 65299, label %49
    i32 65511, label %58
    i32 65515, label %58
    i32 65517, label %58
    i32 65512, label %61
    i32 65516, label %61
    i32 65518, label %61
    i32 32, label %64
    i32 65407, label %77
    i32 65144, label %87
  ], !dbg !693

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %7, align 4, !dbg !694
  %13 = call i32 @get_key_state(i32 %12, i32 65513), !dbg !697
  %14 = icmp ne i32 %13, 0, !dbg !697
  br i1 %14, label %19, label %15, !dbg !698

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !699
  %17 = call i32 @get_key_state(i32 %16, i32 65514), !dbg !701
  %18 = icmp ne i32 %17, 0, !dbg !701
  br i1 %18, label %19, label %41, !dbg !702

; <label>:19:                                     ; preds = %15, %11
  %20 = load i32, i32* %7, align 4, !dbg !703
  %21 = call i32 @get_key_state(i32 %20, i32 65507), !dbg !704
  %22 = icmp ne i32 %21, 0, !dbg !704
  br i1 %22, label %27, label %23, !dbg !705

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %7, align 4, !dbg !706
  %25 = call i32 @get_key_state(i32 %24, i32 65508), !dbg !707
  %26 = icmp ne i32 %25, 0, !dbg !707
  br i1 %26, label %27, label %41, !dbg !708

; <label>:27:                                     ; preds = %23, %19
  %28 = load i32, i32* %9, align 4, !dbg !710
  %29 = icmp ne i32 %28, 0, !dbg !710
  br i1 %29, label %30, label %40, !dbg !713

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* @g_seamless_rdp, align 4, !dbg !714
  %32 = icmp ne i32 %31, 0, !dbg !714
  br i1 %32, label %34, label %33, !dbg !717

; <label>:33:                                     ; preds = %30
  call void @xwin_toggle_fullscreen(), !dbg !718
  br label %39, !dbg !720

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* @g_seamless_active, align 4, !dbg !721
  %36 = icmp ne i32 %35, 0, !dbg !721
  br i1 %36, label %37, label %38, !dbg !724

; <label>:37:                                     ; preds = %34
  call void @ui_seamless_toggle(), !dbg !725
  br label %38, !dbg !725

; <label>:38:                                     ; preds = %37, %34
  br label %39

; <label>:39:                                     ; preds = %38, %33
  br label %40, !dbg !726

; <label>:40:                                     ; preds = %39, %27
  store i32 1, i32* %5, align 4, !dbg !727
  br label %93, !dbg !727

; <label>:41:                                     ; preds = %23, %15
  br label %92, !dbg !728

; <label>:42:                                     ; preds = %4
  %43 = load i32, i32* %9, align 4, !dbg !729
  %44 = icmp ne i32 %43, 0, !dbg !729
  br i1 %44, label %45, label %48, !dbg !731

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %8, align 4, !dbg !732
  call void @rdp_send_scancode(i32 %46, i16 zeroext 0, i8 zeroext -58), !dbg !734
  %47 = load i32, i32* %8, align 4, !dbg !735
  call void @rdp_send_scancode(i32 %47, i16 zeroext 0, i8 zeroext -58), !dbg !736
  br label %48, !dbg !737

; <label>:48:                                     ; preds = %45, %42
  store i32 1, i32* %5, align 4, !dbg !738
  br label %93, !dbg !738

; <label>:49:                                     ; preds = %4
  %50 = load i32, i32* %9, align 4, !dbg !739
  %51 = icmp ne i32 %50, 0, !dbg !739
  br i1 %51, label %52, label %57, !dbg !741

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %8, align 4, !dbg !742
  call void @rdp_send_input(i32 %53, i16 zeroext 4, i16 zeroext 512, i16 zeroext 29, i16 zeroext 0), !dbg !744
  %54 = load i32, i32* %8, align 4, !dbg !745
  call void @rdp_send_input(i32 %54, i16 zeroext 4, i16 zeroext 0, i16 zeroext 69, i16 zeroext 0), !dbg !746
  %55 = load i32, i32* %8, align 4, !dbg !747
  call void @rdp_send_input(i32 %55, i16 zeroext 4, i16 zeroext -15872, i16 zeroext 29, i16 zeroext 0), !dbg !748
  %56 = load i32, i32* %8, align 4, !dbg !749
  call void @rdp_send_input(i32 %56, i16 zeroext 4, i16 zeroext -16384, i16 zeroext 69, i16 zeroext 0), !dbg !750
  br label %57, !dbg !751

; <label>:57:                                     ; preds = %52, %49
  store i32 1, i32* %5, align 4, !dbg !752
  br label %93, !dbg !752

; <label>:58:                                     ; preds = %4, %4, %4
  %59 = load i32, i32* %8, align 4, !dbg !753
  %60 = load i32, i32* %9, align 4, !dbg !754
  call void @send_winkey(i32 %59, i32 %60, i32 1), !dbg !755
  store i32 1, i32* %5, align 4, !dbg !756
  br label %93, !dbg !756

; <label>:61:                                     ; preds = %4, %4, %4
  %62 = load i32, i32* %8, align 4, !dbg !757
  %63 = load i32, i32* %9, align 4, !dbg !758
  call void @send_winkey(i32 %62, i32 %63, i32 0), !dbg !759
  store i32 1, i32* %5, align 4, !dbg !760
  br label %93, !dbg !760

; <label>:64:                                     ; preds = %4
  %65 = load i32, i32* @g_win_button_size, align 4, !dbg !761
  %66 = icmp ne i32 %65, 0, !dbg !761
  br i1 %66, label %67, label %76, !dbg !763

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %7, align 4, !dbg !764
  %69 = call i32 @get_key_state(i32 %68, i32 65513), !dbg !766
  %70 = icmp ne i32 %69, 0, !dbg !766
  br i1 %70, label %75, label %71, !dbg !767

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %7, align 4, !dbg !768
  %73 = call i32 @get_key_state(i32 %72, i32 65514), !dbg !770
  %74 = icmp ne i32 %73, 0, !dbg !770
  br i1 %74, label %75, label %76, !dbg !771

; <label>:75:                                     ; preds = %71, %67
  store i32 1, i32* %5, align 4, !dbg !773
  br label %93, !dbg !773

; <label>:76:                                     ; preds = %71, %64
  br label %92, !dbg !774

; <label>:77:                                     ; preds = %4
  %78 = load i32, i32* @g_numlock_sync, align 4, !dbg !775
  %79 = icmp ne i32 %78, 0, !dbg !775
  br i1 %79, label %80, label %86, !dbg !777

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %9, align 4, !dbg !778
  %82 = icmp ne i32 %81, 0, !dbg !778
  br i1 %82, label %86, label %83, !dbg !780

; <label>:83:                                     ; preds = %80
  %84 = call i32 @read_keyboard_state(), !dbg !781
  %85 = call zeroext i16 @ui_get_numlock_state(i32 %84), !dbg !782
  call void @rdp_send_input(i32 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext %85, i16 zeroext 0), !dbg !783
  br label %86, !dbg !783

; <label>:86:                                     ; preds = %83, %80, %77
  store i32 1, i32* %5, align 4, !dbg !784
  br label %93, !dbg !784

; <label>:87:                                     ; preds = %4
  %88 = load i32, i32* %9, align 4, !dbg !785
  %89 = icmp ne i32 %88, 0, !dbg !785
  br i1 %89, label %90, label %91, !dbg !787

; <label>:90:                                     ; preds = %87
  call void @ui_seamless_toggle(), !dbg !788
  br label %91, !dbg !788

; <label>:91:                                     ; preds = %90, %87
  br label %92, !dbg !789

; <label>:92:                                     ; preds = %4, %91, %76, %41
  store i32 0, i32* %5, align 4, !dbg !790
  br label %93, !dbg !790

; <label>:93:                                     ; preds = %92, %86, %75, %61, %58, %57, %48, %40
  %94 = load i32, i32* %5, align 4, !dbg !791
  ret i32 %94, !dbg !791
}

declare i32 @get_key_state(i32, i32) #2

declare void @xwin_toggle_fullscreen() #2

declare void @ui_seamless_toggle() #2

; Function Attrs: nounwind uwtable
define void @rdp_send_scancode(i32, i16 zeroext, i8 zeroext) #0 !dbg !792 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !795, metadata !94), !dbg !796
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !797, metadata !94), !dbg !798
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !799, metadata !94), !dbg !800
  %7 = load i8, i8* %6, align 1, !dbg !801
  %8 = load i16, i16* %5, align 2, !dbg !802
  %9 = zext i16 %8 to i32, !dbg !802
  %10 = and i32 %9, 49152, !dbg !803
  %11 = icmp ne i32 %10, 0, !dbg !804
  %12 = xor i1 %11, true, !dbg !804
  %13 = zext i1 %12 to i32, !dbg !804
  call void @update_modifier_state(i8 zeroext %7, i32 %13), !dbg !805
  %14 = load i8, i8* %6, align 1, !dbg !806
  %15 = zext i8 %14 to i32, !dbg !806
  %16 = and i32 %15, 128, !dbg !808
  %17 = icmp ne i32 %16, 0, !dbg !808
  br i1 %17, label %18, label %33, !dbg !809

; <label>:18:                                     ; preds = %3
  %19 = load i8, i8* %6, align 1, !dbg !810
  %20 = zext i8 %19 to i32, !dbg !810
  %21 = and i32 %20, -129, !dbg !812
  %22 = load i16, i16* %5, align 2, !dbg !813
  %23 = zext i16 %22 to i32, !dbg !813
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0), i32 %21, i32 %23), !dbg !814
  %24 = load i32, i32* %4, align 4, !dbg !815
  %25 = load i16, i16* %5, align 2, !dbg !816
  %26 = zext i16 %25 to i32, !dbg !816
  %27 = or i32 %26, 256, !dbg !817
  %28 = trunc i32 %27 to i16, !dbg !816
  %29 = load i8, i8* %6, align 1, !dbg !818
  %30 = zext i8 %29 to i32, !dbg !818
  %31 = and i32 %30, -129, !dbg !819
  %32 = trunc i32 %31 to i16, !dbg !818
  call void @rdp_send_input(i32 %24, i16 zeroext 4, i16 zeroext %28, i16 zeroext %32, i16 zeroext 0), !dbg !820
  br label %42, !dbg !821

; <label>:33:                                     ; preds = %3
  %34 = load i8, i8* %6, align 1, !dbg !822
  %35 = zext i8 %34 to i32, !dbg !822
  %36 = load i16, i16* %5, align 2, !dbg !824
  %37 = zext i16 %36 to i32, !dbg !824
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0), i32 %35, i32 %37), !dbg !825
  %38 = load i32, i32* %4, align 4, !dbg !826
  %39 = load i16, i16* %5, align 2, !dbg !827
  %40 = load i8, i8* %6, align 1, !dbg !828
  %41 = zext i8 %40 to i16, !dbg !828
  call void @rdp_send_input(i32 %38, i16 zeroext 4, i16 zeroext %39, i16 zeroext %41, i16 zeroext 0), !dbg !829
  br label %42

; <label>:42:                                     ; preds = %33, %18
  ret void, !dbg !830
}

declare void @rdp_send_input(i32, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @send_winkey(i32, i32, i32) #0 !dbg !831 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !834, metadata !94), !dbg !835
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !836, metadata !94), !dbg !837
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !838, metadata !94), !dbg !839
  call void @llvm.dbg.declare(metadata i8* %7, metadata !840, metadata !94), !dbg !841
  %8 = load i32, i32* %6, align 4, !dbg !842
  %9 = icmp ne i32 %8, 0, !dbg !842
  br i1 %9, label %10, label %11, !dbg !844

; <label>:10:                                     ; preds = %3
  store i8 -37, i8* %7, align 1, !dbg !845
  br label %12, !dbg !846

; <label>:11:                                     ; preds = %3
  store i8 -36, i8* %7, align 1, !dbg !847
  br label %12

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %5, align 4, !dbg !848
  %14 = icmp ne i32 %13, 0, !dbg !848
  br i1 %14, label %15, label %25, !dbg !850

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* @g_rdp_version, align 4, !dbg !851
  %17 = icmp uge i32 %16, 5, !dbg !854
  br i1 %17, label %18, label %21, !dbg !855

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4, !dbg !856
  %20 = load i8, i8* %7, align 1, !dbg !858
  call void @rdp_send_scancode(i32 %19, i16 zeroext 0, i8 zeroext %20), !dbg !859
  br label %24, !dbg !860

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %4, align 4, !dbg !861
  call void @rdp_send_scancode(i32 %22, i16 zeroext 0, i8 zeroext 29), !dbg !863
  %23 = load i32, i32* %4, align 4, !dbg !864
  call void @rdp_send_scancode(i32 %23, i16 zeroext 0, i8 zeroext 1), !dbg !865
  br label %24

; <label>:24:                                     ; preds = %21, %18
  br label %35, !dbg !866

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* @g_rdp_version, align 4, !dbg !867
  %27 = icmp uge i32 %26, 5, !dbg !870
  br i1 %27, label %28, label %31, !dbg !871

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %4, align 4, !dbg !872
  %30 = load i8, i8* %7, align 1, !dbg !874
  call void @rdp_send_scancode(i32 %29, i16 zeroext -16384, i8 zeroext %30), !dbg !875
  br label %34, !dbg !876

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %4, align 4, !dbg !877
  call void @rdp_send_scancode(i32 %32, i16 zeroext -16384, i8 zeroext 1), !dbg !879
  %33 = load i32, i32* %4, align 4, !dbg !880
  call void @rdp_send_scancode(i32 %33, i16 zeroext -16384, i8 zeroext 29), !dbg !881
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %35

; <label>:35:                                     ; preds = %34, %24
  ret void, !dbg !882
}

; Function Attrs: nounwind uwtable
define zeroext i16 @ui_get_numlock_state(i32) #0 !dbg !883 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !886, metadata !94), !dbg !887
  call void @llvm.dbg.declare(metadata i16* %3, metadata !888, metadata !94), !dbg !889
  store i16 0, i16* %3, align 2, !dbg !889
  %4 = load i32, i32* %2, align 4, !dbg !890
  %5 = call i32 @get_key_state(i32 %4, i32 65407), !dbg !892
  %6 = icmp ne i32 %5, 0, !dbg !892
  br i1 %6, label %7, label %8, !dbg !893

; <label>:7:                                      ; preds = %1
  store i16 2, i16* %3, align 2, !dbg !894
  br label %8, !dbg !895

; <label>:8:                                      ; preds = %7, %1
  %9 = load i16, i16* %3, align 2, !dbg !896
  ret i16 %9, !dbg !897
}

; Function Attrs: nounwind uwtable
define i32 @read_keyboard_state() #0 !dbg !898 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !901, metadata !94), !dbg !902
  call void @llvm.dbg.declare(metadata i64* %2, metadata !903, metadata !94), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %3, metadata !906, metadata !94), !dbg !907
  %4 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !908
  %5 = load i64, i64* @g_wnd, align 8, !dbg !909
  %6 = call i32 @XQueryPointer(%struct._XDisplay* %4, i64 %5, i64* %2, i64* %2, i32* %3, i32* %3, i32* %3, i32* %3, i32* %1), !dbg !910
  %7 = load i32, i32* %1, align 4, !dbg !911
  ret i32 %7, !dbg !912
}

; Function Attrs: nounwind uwtable
define { i64, %struct._key_translation* } @xkeymap_translate_key(i32, i32, i32) #0 !dbg !913 {
  %4 = alloca %struct._key_translation, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._key_translation, align 8
  %9 = alloca %struct._key_translation*, align 8
  %10 = alloca %struct._key_translation_entry*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !916, metadata !94), !dbg !917
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !918, metadata !94), !dbg !919
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !920, metadata !94), !dbg !921
  call void @llvm.dbg.declare(metadata %struct._key_translation* %8, metadata !922, metadata !94), !dbg !923
  %11 = bitcast %struct._key_translation* %8 to i8*, !dbg !923
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 16, i32 8, i1 false), !dbg !923
  call void @llvm.dbg.declare(metadata %struct._key_translation** %9, metadata !924, metadata !94), !dbg !925
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %10, metadata !926, metadata !94), !dbg !927
  %12 = load i32, i32* %5, align 4, !dbg !928
  %13 = call %struct._key_translation_entry* @get_key_translation_entry(i32 %12), !dbg !929
  store %struct._key_translation_entry* %13, %struct._key_translation_entry** %10, align 8, !dbg !930
  %14 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !931
  %15 = icmp ne %struct._key_translation_entry* %14, null, !dbg !931
  br i1 %15, label %16, label %20, !dbg !931

; <label>:16:                                     ; preds = %3
  %17 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !932
  %18 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %17, i32 0, i32 0, !dbg !934
  %19 = load %struct._key_translation*, %struct._key_translation** %18, align 8, !dbg !934
  br label %21, !dbg !935

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !936

; <label>:21:                                     ; preds = %20, %16
  %22 = phi %struct._key_translation* [ %19, %16 ], [ null, %20 ], !dbg !938
  store %struct._key_translation* %22, %struct._key_translation** %9, align 8, !dbg !940
  %23 = load %struct._key_translation*, %struct._key_translation** %9, align 8, !dbg !941
  %24 = icmp ne %struct._key_translation* %23, null, !dbg !941
  br i1 %24, label %25, label %84, !dbg !943

; <label>:25:                                     ; preds = %21
  %26 = load %struct._key_translation*, %struct._key_translation** %9, align 8, !dbg !944
  %27 = bitcast %struct._key_translation* %8 to i8*, !dbg !946
  %28 = bitcast %struct._key_translation* %26 to i8*, !dbg !946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !dbg !946
  %29 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 2, !dbg !947
  %30 = load i32, i32* %29, align 4, !dbg !947
  %31 = icmp eq i32 %30, 0, !dbg !949
  br i1 %31, label %32, label %83, !dbg !950

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !951
  %34 = load i16, i16* %33, align 2, !dbg !951
  %35 = zext i16 %34 to i32, !dbg !954
  %36 = and i32 %35, 2048, !dbg !955
  %37 = icmp sgt i32 %36, 0, !dbg !956
  br i1 %37, label %38, label %42, !dbg !957

; <label>:38:                                     ; preds = %32
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0)), !dbg !958
  %39 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 0, !dbg !960
  store i8 0, i8* %39, align 8, !dbg !961
  %40 = bitcast %struct._key_translation* %4 to i8*, !dbg !962
  %41 = bitcast %struct._key_translation* %8 to i8*, !dbg !962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !dbg !962
  br label %119, !dbg !963

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !964
  %44 = load i16, i16* %43, align 2, !dbg !964
  %45 = zext i16 %44 to i32, !dbg !966
  %46 = and i32 %45, 1024, !dbg !967
  %47 = icmp sgt i32 %46, 0, !dbg !968
  br i1 %47, label %48, label %55, !dbg !969

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %7, align 4, !dbg !970
  %50 = and i32 %49, 1, !dbg !973
  %51 = icmp ugt i32 %50, 0, !dbg !974
  br i1 %51, label %52, label %54, !dbg !975

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !976
  store i16 2, i16* %53, align 2, !dbg !978
  br label %54, !dbg !979

; <label>:54:                                     ; preds = %52, %48
  br label %55, !dbg !980

; <label>:55:                                     ; preds = %54, %42
  %56 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !981
  %57 = load i16, i16* %56, align 2, !dbg !981
  %58 = zext i16 %57 to i32, !dbg !983
  %59 = and i32 %58, 3, !dbg !984
  %60 = icmp sgt i32 %59, 0, !dbg !985
  br i1 %60, label %61, label %76, !dbg !986

; <label>:61:                                     ; preds = %55
  %62 = load i16, i16* @remote_modifier_state, align 2, !dbg !987
  %63 = zext i16 %62 to i32, !dbg !987
  %64 = and i32 %63, 48, !dbg !989
  %65 = icmp sgt i32 %64, 0, !dbg !990
  br i1 %65, label %66, label %76, !dbg !991

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %7, align 4, !dbg !992
  %68 = and i32 %67, 1, !dbg !993
  %69 = icmp ugt i32 %68, 0, !dbg !994
  br i1 %69, label %76, label %70, !dbg !995

; <label>:70:                                     ; preds = %66
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i32 0, i32 0)), !dbg !997
  %71 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !999
  %72 = load i16, i16* %71, align 2, !dbg !1000
  %73 = zext i16 %72 to i32, !dbg !1000
  %74 = and i32 %73, -4, !dbg !1000
  %75 = trunc i32 %74 to i16, !dbg !1000
  store i16 %75, i16* %71, align 2, !dbg !1000
  br label %76, !dbg !1001

; <label>:76:                                     ; preds = %70, %66, %61, %55
  %77 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 0, !dbg !1002
  %78 = load i8, i8* %77, align 8, !dbg !1002
  %79 = zext i8 %78 to i32, !dbg !1003
  %80 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !1004
  %81 = load i16, i16* %80, align 2, !dbg !1004
  %82 = zext i16 %81 to i32, !dbg !1005
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i32 0, i32 0), i32 %79, i32 %82), !dbg !1006
  br label %83, !dbg !1007

; <label>:83:                                     ; preds = %76, %25
  br label %116, !dbg !1008

; <label>:84:                                     ; preds = %21
  %85 = load i32, i32* @keymap_loaded, align 4, !dbg !1009
  %86 = icmp ne i32 %85, 0, !dbg !1009
  br i1 %86, label %87, label %91, !dbg !1012

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %5, align 4, !dbg !1013
  %89 = load i32, i32* %5, align 4, !dbg !1014
  %90 = call i8* @get_ksname(i32 %89), !dbg !1015
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 %88, i8* %90), !dbg !1016
  br label %91, !dbg !1016

; <label>:91:                                     ; preds = %87, %84
  %92 = load i32, i32* %6, align 4, !dbg !1017
  %93 = load i32, i32* @min_keycode, align 4, !dbg !1019
  %94 = icmp sge i32 %92, %93, !dbg !1020
  br i1 %94, label %95, label %113, !dbg !1021

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %6, align 4, !dbg !1022
  %97 = icmp ule i32 %96, 96, !dbg !1024
  br i1 %97, label %98, label %113, !dbg !1025

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* %6, align 4, !dbg !1026
  %100 = load i32, i32* @min_keycode, align 4, !dbg !1028
  %101 = sub i32 %99, %100, !dbg !1029
  %102 = trunc i32 %101 to i8, !dbg !1026
  %103 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 0, !dbg !1030
  store i8 %102, i8* %103, align 8, !dbg !1031
  %104 = load i32, i32* %7, align 4, !dbg !1032
  %105 = and i32 %104, 1, !dbg !1034
  %106 = icmp ugt i32 %105, 0, !dbg !1035
  br i1 %106, label %107, label %109, !dbg !1036

; <label>:107:                                    ; preds = %98
  %108 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 1, !dbg !1037
  store i16 2, i16* %108, align 2, !dbg !1039
  br label %109, !dbg !1040

; <label>:109:                                    ; preds = %107, %98
  %110 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 0, !dbg !1041
  %111 = load i8, i8* %110, align 8, !dbg !1041
  %112 = zext i8 %111 to i32, !dbg !1042
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %112), !dbg !1043
  br label %115, !dbg !1044

; <label>:113:                                    ; preds = %95, %91
  %114 = load i32, i32* %6, align 4, !dbg !1045
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i32 %114), !dbg !1047
  br label %115

; <label>:115:                                    ; preds = %113, %109
  br label %116

; <label>:116:                                    ; preds = %115, %83
  %117 = bitcast %struct._key_translation* %4 to i8*, !dbg !1048
  %118 = bitcast %struct._key_translation* %8 to i8*, !dbg !1048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 16, i32 8, i1 false), !dbg !1048
  br label %119, !dbg !1049

; <label>:119:                                    ; preds = %116, %38
  %120 = bitcast %struct._key_translation* %4 to { i64, %struct._key_translation* }*, !dbg !1050
  %121 = load { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %120, align 8, !dbg !1050
  ret { i64, %struct._key_translation* } %121, !dbg !1050
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal %struct._key_translation_entry* @get_key_translation_entry(i32) #0 !dbg !1051 {
  %2 = alloca %struct._key_translation_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._key_translation_entry*, align 8
  %5 = alloca %struct._key_translation_entry*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1054, metadata !94), !dbg !1055
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %4, metadata !1056, metadata !94), !dbg !1057
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %5, metadata !1058, metadata !94), !dbg !1059
  %6 = load i32, i32* %3, align 4, !dbg !1060
  %7 = and i32 %6, 127, !dbg !1061
  %8 = zext i32 %7 to i64, !dbg !1062
  %9 = getelementptr inbounds [128 x %struct._key_translation_entry*], [128 x %struct._key_translation_entry*]* @keymap, i64 0, i64 %8, !dbg !1062
  %10 = load %struct._key_translation_entry*, %struct._key_translation_entry** %9, align 8, !dbg !1062
  store %struct._key_translation_entry* %10, %struct._key_translation_entry** %4, align 8, !dbg !1063
  br label %11, !dbg !1064

; <label>:11:                                     ; preds = %25, %1
  %12 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1065
  %13 = icmp ne %struct._key_translation_entry* %12, null, !dbg !1067
  br i1 %13, label %14, label %27, !dbg !1067

; <label>:14:                                     ; preds = %11
  %15 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1068
  %16 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %15, i32 0, i32 2, !dbg !1070
  %17 = load %struct._key_translation_entry*, %struct._key_translation_entry** %16, align 8, !dbg !1070
  store %struct._key_translation_entry* %17, %struct._key_translation_entry** %5, align 8, !dbg !1071
  %18 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1072
  %19 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %18, i32 0, i32 1, !dbg !1074
  %20 = load i32, i32* %19, align 8, !dbg !1074
  %21 = load i32, i32* %3, align 4, !dbg !1075
  %22 = icmp eq i32 %20, %21, !dbg !1076
  br i1 %22, label %23, label %25, !dbg !1077

; <label>:23:                                     ; preds = %14
  %24 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1078
  store %struct._key_translation_entry* %24, %struct._key_translation_entry** %2, align 8, !dbg !1079
  br label %28, !dbg !1079

; <label>:25:                                     ; preds = %14
  %26 = load %struct._key_translation_entry*, %struct._key_translation_entry** %5, align 8, !dbg !1080
  store %struct._key_translation_entry* %26, %struct._key_translation_entry** %4, align 8, !dbg !1081
  br label %11, !dbg !1082, !llvm.loop !1084

; <label>:27:                                     ; preds = %11
  store %struct._key_translation_entry* null, %struct._key_translation_entry** %2, align 8, !dbg !1085
  br label %28, !dbg !1085

; <label>:28:                                     ; preds = %27, %23
  %29 = load %struct._key_translation_entry*, %struct._key_translation_entry** %2, align 8, !dbg !1086
  ret %struct._key_translation_entry* %29, !dbg !1086
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @get_ksname(i32) #0 !dbg !1087 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1090, metadata !94), !dbg !1091
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1092, metadata !94), !dbg !1093
  store i8* null, i8** %3, align 8, !dbg !1093
  %4 = load i32, i32* %2, align 4, !dbg !1094
  %5 = zext i32 %4 to i64, !dbg !1094
  %6 = icmp eq i64 %5, 0, !dbg !1096
  br i1 %6, label %7, label %8, !dbg !1097

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8** %3, align 8, !dbg !1098
  br label %15, !dbg !1099

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !1100
  %10 = zext i32 %9 to i64, !dbg !1100
  %11 = call i8* @XKeysymToString(i64 %10), !dbg !1102
  store i8* %11, i8** %3, align 8, !dbg !1103
  %12 = icmp ne i8* %11, null, !dbg !1103
  br i1 %12, label %14, label %13, !dbg !1104

; <label>:13:                                     ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8** %3, align 8, !dbg !1105
  br label %14, !dbg !1106

; <label>:14:                                     ; preds = %13, %8
  br label %15

; <label>:15:                                     ; preds = %14, %7
  %16 = load i8*, i8** %3, align 8, !dbg !1107
  ret i8* %16, !dbg !1108
}

; Function Attrs: nounwind uwtable
define void @xkeymap_send_keys(i32, i32, i32, i32, i32, i8 zeroext) #0 !dbg !1109 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct._key_translation, align 8
  %14 = alloca %struct._key_translation*, align 8
  %15 = alloca %struct._key_translation, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1112, metadata !94), !dbg !1113
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1114, metadata !94), !dbg !1115
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1116, metadata !94), !dbg !1117
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1118, metadata !94), !dbg !1119
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1120, metadata !94), !dbg !1121
  store i8 %5, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1122, metadata !94), !dbg !1123
  call void @llvm.dbg.declare(metadata %struct._key_translation* %13, metadata !1124, metadata !94), !dbg !1125
  call void @llvm.dbg.declare(metadata %struct._key_translation** %14, metadata !1126, metadata !94), !dbg !1127
  %16 = load i32, i32* %7, align 4, !dbg !1128
  %17 = load i32, i32* %8, align 4, !dbg !1129
  %18 = load i32, i32* %9, align 4, !dbg !1130
  %19 = call { i64, %struct._key_translation* } @xkeymap_translate_key(i32 %16, i32 %17, i32 %18), !dbg !1131
  %20 = bitcast %struct._key_translation* %15 to { i64, %struct._key_translation* }*, !dbg !1131
  %21 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %20, i32 0, i32 0, !dbg !1131
  %22 = extractvalue { i64, %struct._key_translation* } %19, 0, !dbg !1131
  store i64 %22, i64* %21, align 8, !dbg !1131
  %23 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %20, i32 0, i32 1, !dbg !1131
  %24 = extractvalue { i64, %struct._key_translation* } %19, 1, !dbg !1131
  store %struct._key_translation* %24, %struct._key_translation** %23, align 8, !dbg !1131
  %25 = bitcast %struct._key_translation* %13 to i8*, !dbg !1131
  %26 = bitcast %struct._key_translation* %15 to i8*, !dbg !1131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !dbg !1132
  %27 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %13, i32 0, i32 2, !dbg !1134
  %28 = load i32, i32* %27, align 4, !dbg !1134
  %29 = icmp eq i32 %28, 0, !dbg !1136
  br i1 %29, label %30, label %55, !dbg !1137

; <label>:30:                                     ; preds = %6
  %31 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %13, i32 0, i32 0, !dbg !1138
  %32 = load i8, i8* %31, align 8, !dbg !1138
  %33 = zext i8 %32 to i32, !dbg !1141
  %34 = icmp eq i32 %33, 0, !dbg !1142
  br i1 %34, label %35, label %36, !dbg !1143

; <label>:35:                                     ; preds = %30
  br label %90, !dbg !1144

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %13, i32 0, i32 0, !dbg !1145
  %38 = load i8, i8* %37, align 8, !dbg !1145
  call void @save_remote_modifiers(i8 zeroext %38), !dbg !1146
  %39 = load i32, i32* %10, align 4, !dbg !1147
  %40 = bitcast %struct._key_translation* %13 to { i64, %struct._key_translation* }*, !dbg !1148
  %41 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %40, i32 0, i32 0, !dbg !1148
  %42 = load i64, i64* %41, align 8, !dbg !1148
  %43 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %40, i32 0, i32 1, !dbg !1148
  %44 = load %struct._key_translation*, %struct._key_translation** %43, align 8, !dbg !1148
  call void @ensure_remote_modifiers(i32 %39, i64 %42, %struct._key_translation* %44), !dbg !1148
  %45 = load i32, i32* %10, align 4, !dbg !1149
  %46 = load i32, i32* %11, align 4, !dbg !1150
  %47 = icmp ne i32 %46, 0, !dbg !1150
  %48 = select i1 %47, i32 0, i32 49152, !dbg !1150
  %49 = trunc i32 %48 to i16, !dbg !1150
  %50 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %13, i32 0, i32 0, !dbg !1151
  %51 = load i8, i8* %50, align 8, !dbg !1151
  call void @rdp_send_scancode(i32 %45, i16 zeroext %49, i8 zeroext %51), !dbg !1152
  %52 = load i32, i32* %10, align 4, !dbg !1153
  %53 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %13, i32 0, i32 0, !dbg !1154
  %54 = load i8, i8* %53, align 8, !dbg !1154
  call void @restore_remote_modifiers(i32 %52, i8 zeroext %54), !dbg !1155
  br label %90, !dbg !1156

; <label>:55:                                     ; preds = %6
  %56 = load i32, i32* %11, align 4, !dbg !1157
  %57 = icmp ne i32 %56, 0, !dbg !1157
  br i1 %57, label %58, label %90, !dbg !1159

; <label>:58:                                     ; preds = %55
  store %struct._key_translation* %13, %struct._key_translation** %14, align 8, !dbg !1160
  br label %59, !dbg !1162, !llvm.loop !1163

; <label>:59:                                     ; preds = %86, %58
  %60 = load %struct._key_translation*, %struct._key_translation** %14, align 8, !dbg !1164
  %61 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %60, i32 0, i32 2, !dbg !1166
  %62 = load i32, i32* %61, align 4, !dbg !1166
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0), i32 %62), !dbg !1167
  %63 = load i8, i8* %12, align 1, !dbg !1168
  %64 = add i8 %63, 1, !dbg !1168
  store i8 %64, i8* %12, align 1, !dbg !1168
  %65 = zext i8 %63 to i32, !dbg !1170
  %66 = icmp sgt i32 %65, 32, !dbg !1171
  br i1 %66, label %67, label %68, !dbg !1172

; <label>:67:                                     ; preds = %59
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)), !dbg !1173
  br label %90, !dbg !1175

; <label>:68:                                     ; preds = %59
  %69 = load %struct._key_translation*, %struct._key_translation** %14, align 8, !dbg !1176
  %70 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %69, i32 0, i32 2, !dbg !1177
  %71 = load i32, i32* %70, align 4, !dbg !1177
  %72 = load i32, i32* %8, align 4, !dbg !1178
  %73 = load i32, i32* %9, align 4, !dbg !1179
  %74 = load i32, i32* %10, align 4, !dbg !1180
  %75 = load i8, i8* %12, align 1, !dbg !1181
  call void @xkeymap_send_keys(i32 %71, i32 %72, i32 %73, i32 %74, i32 1, i8 zeroext %75), !dbg !1182
  %76 = load %struct._key_translation*, %struct._key_translation** %14, align 8, !dbg !1183
  %77 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %76, i32 0, i32 2, !dbg !1184
  %78 = load i32, i32* %77, align 4, !dbg !1184
  %79 = load i32, i32* %8, align 4, !dbg !1185
  %80 = load i32, i32* %9, align 4, !dbg !1186
  %81 = load i32, i32* %10, align 4, !dbg !1187
  %82 = load i8, i8* %12, align 1, !dbg !1188
  call void @xkeymap_send_keys(i32 %78, i32 %79, i32 %80, i32 %81, i32 0, i8 zeroext %82), !dbg !1189
  %83 = load %struct._key_translation*, %struct._key_translation** %14, align 8, !dbg !1190
  %84 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %83, i32 0, i32 3, !dbg !1191
  %85 = load %struct._key_translation*, %struct._key_translation** %84, align 8, !dbg !1191
  store %struct._key_translation* %85, %struct._key_translation** %14, align 8, !dbg !1192
  br label %86, !dbg !1193

; <label>:86:                                     ; preds = %68
  %87 = load %struct._key_translation*, %struct._key_translation** %14, align 8, !dbg !1194
  %88 = icmp ne %struct._key_translation* %87, null, !dbg !1195
  br i1 %88, label %59, label %89, !dbg !1195, !llvm.loop !1163

; <label>:89:                                     ; preds = %86
  br label %90, !dbg !1197

; <label>:90:                                     ; preds = %35, %36, %67, %89, %55
  ret void, !dbg !1198
}

; Function Attrs: nounwind uwtable
define void @save_remote_modifiers(i8 zeroext) #0 !dbg !1199 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1202, metadata !94), !dbg !1203
  %3 = load i8, i8* %2, align 1, !dbg !1204
  %4 = call i32 @is_modifier(i8 zeroext %3), !dbg !1206
  %5 = icmp ne i32 %4, 0, !dbg !1206
  br i1 %5, label %6, label %7, !dbg !1207

; <label>:6:                                      ; preds = %1
  br label %9, !dbg !1208

; <label>:7:                                      ; preds = %1
  %8 = load i16, i16* @remote_modifier_state, align 2, !dbg !1209
  store i16 %8, i16* @saved_remote_modifier_state, align 2, !dbg !1210
  br label %9, !dbg !1211

; <label>:9:                                      ; preds = %7, %6
  ret void, !dbg !1212
}

; Function Attrs: nounwind uwtable
define void @ensure_remote_modifiers(i32, i64, %struct._key_translation*) #0 !dbg !1214 {
  %4 = alloca %struct._key_translation, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = bitcast %struct._key_translation* %4 to { i64, %struct._key_translation* }*
  %8 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %7, i32 0, i32 1
  store %struct._key_translation* %2, %struct._key_translation** %9, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1217, metadata !94), !dbg !1218
  call void @llvm.dbg.declare(metadata %struct._key_translation* %4, metadata !1219, metadata !94), !dbg !1220
  %10 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 0, !dbg !1221
  %11 = load i8, i8* %10, align 8, !dbg !1221
  %12 = call i32 @is_modifier(i8 zeroext %11), !dbg !1223
  %13 = icmp ne i32 %12, 0, !dbg !1223
  br i1 %13, label %14, label %15, !dbg !1224

; <label>:14:                                     ; preds = %3
  br label %107, !dbg !1225

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* @g_numlock_sync, align 4, !dbg !1226
  %17 = icmp ne i32 %16, 0, !dbg !1226
  br i1 %17, label %42, label %18, !dbg !1228

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1229
  %20 = load i16, i16* %19, align 2, !dbg !1229
  %21 = zext i16 %20 to i32, !dbg !1232
  %22 = and i32 %21, 256, !dbg !1233
  %23 = icmp sgt i32 %22, 0, !dbg !1234
  %24 = zext i1 %23 to i32, !dbg !1234
  %25 = load i16, i16* @remote_modifier_state, align 2, !dbg !1235
  %26 = zext i16 %25 to i32, !dbg !1235
  %27 = and i32 %26, 256, !dbg !1236
  %28 = icmp sgt i32 %27, 0, !dbg !1237
  %29 = zext i1 %28 to i32, !dbg !1237
  %30 = icmp ne i32 %24, %29, !dbg !1238
  br i1 %30, label %31, label %41, !dbg !1239

; <label>:31:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1240, metadata !94), !dbg !1242
  %32 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1243
  %33 = load i16, i16* %32, align 2, !dbg !1243
  %34 = zext i16 %33 to i32, !dbg !1245
  %35 = and i32 %34, 256, !dbg !1246
  %36 = icmp sgt i32 %35, 0, !dbg !1247
  br i1 %36, label %37, label %38, !dbg !1248

; <label>:37:                                     ; preds = %31
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i32 0, i32 0)), !dbg !1249
  store i16 2, i16* %6, align 2, !dbg !1251
  store i16 256, i16* @remote_modifier_state, align 2, !dbg !1252
  br label %39, !dbg !1253

; <label>:38:                                     ; preds = %31
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i32 0, i32 0)), !dbg !1254
  store i16 0, i16* %6, align 2, !dbg !1256
  store i16 0, i16* @remote_modifier_state, align 2, !dbg !1257
  br label %39

; <label>:39:                                     ; preds = %38, %37
  %40 = load i16, i16* %6, align 2, !dbg !1258
  call void @rdp_send_input(i32 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext %40, i16 zeroext 0), !dbg !1259
  br label %41, !dbg !1260

; <label>:41:                                     ; preds = %39, %18
  br label %42, !dbg !1261

; <label>:42:                                     ; preds = %41, %15
  %43 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1262
  %44 = load i16, i16* %43, align 2, !dbg !1262
  %45 = zext i16 %44 to i32, !dbg !1264
  %46 = and i32 %45, 3, !dbg !1265
  %47 = icmp sgt i32 %46, 0, !dbg !1266
  %48 = zext i1 %47 to i32, !dbg !1266
  %49 = load i16, i16* @remote_modifier_state, align 2, !dbg !1267
  %50 = zext i16 %49 to i32, !dbg !1267
  %51 = and i32 %50, 3, !dbg !1268
  %52 = icmp sgt i32 %51, 0, !dbg !1269
  %53 = zext i1 %52 to i32, !dbg !1269
  %54 = icmp ne i32 %48, %53, !dbg !1270
  br i1 %54, label %55, label %83, !dbg !1271

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1272
  %57 = load i16, i16* %56, align 2, !dbg !1272
  %58 = zext i16 %57 to i32, !dbg !1275
  %59 = and i32 %58, 2, !dbg !1276
  %60 = icmp sgt i32 %59, 0, !dbg !1277
  br i1 %60, label %61, label %63, !dbg !1278

; <label>:61:                                     ; preds = %55
  %62 = load i32, i32* %5, align 4, !dbg !1279
  call void @rdp_send_scancode(i32 %62, i16 zeroext 0, i8 zeroext 42), !dbg !1281
  br label %82, !dbg !1282

; <label>:63:                                     ; preds = %55
  %64 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1283
  %65 = load i16, i16* %64, align 2, !dbg !1283
  %66 = zext i16 %65 to i32, !dbg !1285
  %67 = and i32 %66, 1, !dbg !1286
  %68 = icmp sgt i32 %67, 0, !dbg !1287
  br i1 %68, label %69, label %71, !dbg !1288

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* %5, align 4, !dbg !1289
  call void @rdp_send_scancode(i32 %70, i16 zeroext 0, i8 zeroext 54), !dbg !1291
  br label %81, !dbg !1292

; <label>:71:                                     ; preds = %63
  %72 = load i16, i16* @remote_modifier_state, align 2, !dbg !1293
  %73 = zext i16 %72 to i32, !dbg !1293
  %74 = and i32 %73, 2, !dbg !1296
  %75 = icmp sgt i32 %74, 0, !dbg !1297
  br i1 %75, label %76, label %78, !dbg !1298

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %5, align 4, !dbg !1299
  call void @rdp_send_scancode(i32 %77, i16 zeroext -16384, i8 zeroext 42), !dbg !1300
  br label %80, !dbg !1300

; <label>:78:                                     ; preds = %71
  %79 = load i32, i32* %5, align 4, !dbg !1301
  call void @rdp_send_scancode(i32 %79, i16 zeroext -16384, i8 zeroext 54), !dbg !1302
  br label %80

; <label>:80:                                     ; preds = %78, %76
  br label %81

; <label>:81:                                     ; preds = %80, %69
  br label %82

; <label>:82:                                     ; preds = %81, %61
  br label %83, !dbg !1303

; <label>:83:                                     ; preds = %82, %42
  %84 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1304
  %85 = load i16, i16* %84, align 2, !dbg !1304
  %86 = zext i16 %85 to i32, !dbg !1306
  %87 = and i32 %86, 4, !dbg !1307
  %88 = icmp sgt i32 %87, 0, !dbg !1308
  %89 = zext i1 %88 to i32, !dbg !1308
  %90 = load i16, i16* @remote_modifier_state, align 2, !dbg !1309
  %91 = zext i16 %90 to i32, !dbg !1309
  %92 = and i32 %91, 4, !dbg !1310
  %93 = icmp sgt i32 %92, 0, !dbg !1311
  %94 = zext i1 %93 to i32, !dbg !1311
  %95 = icmp ne i32 %89, %94, !dbg !1312
  br i1 %95, label %96, label %107, !dbg !1313

; <label>:96:                                     ; preds = %83
  %97 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %4, i32 0, i32 1, !dbg !1314
  %98 = load i16, i16* %97, align 2, !dbg !1314
  %99 = zext i16 %98 to i32, !dbg !1317
  %100 = and i32 %99, 4, !dbg !1318
  %101 = icmp sgt i32 %100, 0, !dbg !1319
  br i1 %101, label %102, label %104, !dbg !1320

; <label>:102:                                    ; preds = %96
  %103 = load i32, i32* %5, align 4, !dbg !1321
  call void @rdp_send_scancode(i32 %103, i16 zeroext 0, i8 zeroext -72), !dbg !1323
  br label %106, !dbg !1324

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %5, align 4, !dbg !1325
  call void @rdp_send_scancode(i32 %105, i16 zeroext -16384, i8 zeroext -72), !dbg !1327
  br label %106

; <label>:106:                                    ; preds = %104, %102
  br label %107, !dbg !1328

; <label>:107:                                    ; preds = %14, %106, %83
  ret void, !dbg !1329
}

; Function Attrs: nounwind uwtable
define void @restore_remote_modifiers(i32, i8 zeroext) #0 !dbg !1330 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct._key_translation, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1333, metadata !94), !dbg !1334
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1335, metadata !94), !dbg !1336
  call void @llvm.dbg.declare(metadata %struct._key_translation* %5, metadata !1337, metadata !94), !dbg !1338
  %6 = bitcast %struct._key_translation* %5 to i8*, !dbg !1338
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false), !dbg !1338
  %7 = load i8, i8* %4, align 1, !dbg !1339
  %8 = call i32 @is_modifier(i8 zeroext %7), !dbg !1341
  %9 = icmp ne i32 %8, 0, !dbg !1341
  br i1 %9, label %10, label %11, !dbg !1342

; <label>:10:                                     ; preds = %2
  br label %21, !dbg !1343

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %5, i32 0, i32 0, !dbg !1344
  store i8 0, i8* %12, align 8, !dbg !1345
  %13 = load i16, i16* @saved_remote_modifier_state, align 2, !dbg !1346
  %14 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %5, i32 0, i32 1, !dbg !1347
  store i16 %13, i16* %14, align 2, !dbg !1348
  %15 = load i32, i32* %3, align 4, !dbg !1349
  %16 = bitcast %struct._key_translation* %5 to { i64, %struct._key_translation* }*, !dbg !1350
  %17 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %16, i32 0, i32 0, !dbg !1350
  %18 = load i64, i64* %17, align 8, !dbg !1350
  %19 = getelementptr inbounds { i64, %struct._key_translation* }, { i64, %struct._key_translation* }* %16, i32 0, i32 1, !dbg !1350
  %20 = load %struct._key_translation*, %struct._key_translation** %19, align 8, !dbg !1350
  call void @ensure_remote_modifiers(i32 %15, i64 %18, %struct._key_translation* %20), !dbg !1350
  br label %21, !dbg !1351

; <label>:21:                                     ; preds = %11, %10
  ret void, !dbg !1352
}

; Function Attrs: nounwind uwtable
define zeroext i16 @xkeymap_translate_button(i32, i16*) #0 !dbg !1354 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1358, metadata !94), !dbg !1359
  store i16* %1, i16** %5, align 8
  call void @llvm.dbg.declare(metadata i16** %5, metadata !1360, metadata !94), !dbg !1361
  %6 = load i16*, i16** %5, align 8, !dbg !1362
  store i16 -32767, i16* %6, align 2, !dbg !1363
  %7 = load i32, i32* %4, align 4, !dbg !1364
  switch i32 %7, label %17 [
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
    i32 5, label %12
    i32 8, label %13
    i32 9, label %15
  ], !dbg !1365

; <label>:8:                                      ; preds = %2
  store i16 4096, i16* %3, align 2, !dbg !1366
  br label %18, !dbg !1366

; <label>:9:                                      ; preds = %2
  store i16 16384, i16* %3, align 2, !dbg !1368
  br label %18, !dbg !1368

; <label>:10:                                     ; preds = %2
  store i16 8192, i16* %3, align 2, !dbg !1369
  br label %18, !dbg !1369

; <label>:11:                                     ; preds = %2
  store i16 640, i16* %3, align 2, !dbg !1370
  br label %18, !dbg !1370

; <label>:12:                                     ; preds = %2
  store i16 896, i16* %3, align 2, !dbg !1371
  br label %18, !dbg !1371

; <label>:13:                                     ; preds = %2
  %14 = load i16*, i16** %5, align 8, !dbg !1372
  store i16 -32766, i16* %14, align 2, !dbg !1373
  store i16 1, i16* %3, align 2, !dbg !1374
  br label %18, !dbg !1374

; <label>:15:                                     ; preds = %2
  %16 = load i16*, i16** %5, align 8, !dbg !1375
  store i16 -32766, i16* %16, align 2, !dbg !1376
  store i16 2, i16* %3, align 2, !dbg !1377
  br label %18, !dbg !1377

; <label>:17:                                     ; preds = %2
  store i16 0, i16* %3, align 2, !dbg !1378
  br label %18, !dbg !1378

; <label>:18:                                     ; preds = %17, %15, %13, %12, %11, %10, %9, %8
  %19 = load i16, i16* %3, align 2, !dbg !1379
  ret i16 %19, !dbg !1379
}

declare i8* @XKeysymToString(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_modifier(i8 zeroext) #0 !dbg !1380 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1383, metadata !94), !dbg !1384
  %4 = load i8, i8* %3, align 1, !dbg !1385
  %5 = zext i8 %4 to i32, !dbg !1385
  switch i32 %5, label %7 [
    i32 42, label %6
    i32 54, label %6
    i32 29, label %6
    i32 157, label %6
    i32 56, label %6
    i32 184, label %6
    i32 219, label %6
    i32 220, label %6
    i32 69, label %6
  ], !dbg !1386

; <label>:6:                                      ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4, !dbg !1387
  br label %9, !dbg !1387

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !1389

; <label>:8:                                      ; preds = %7
  store i32 0, i32* %2, align 4, !dbg !1390
  br label %9, !dbg !1390

; <label>:9:                                      ; preds = %8, %6
  %10 = load i32, i32* %2, align 4, !dbg !1391
  ret i32 %10, !dbg !1391
}

declare i32 @XQueryPointer(%struct._XDisplay*, i64, i64*, i64*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @reset_modifier_keys() #0 !dbg !1392 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1393, metadata !94), !dbg !1394
  %3 = call i32 @read_keyboard_state(), !dbg !1395
  store i32 %3, i32* %1, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1396, metadata !94), !dbg !1397
  %4 = call i64 @time(i64* null) #7, !dbg !1398
  %5 = trunc i64 %4 to i32, !dbg !1398
  store i32 %5, i32* %2, align 4, !dbg !1399
  %6 = load i16, i16* @remote_modifier_state, align 2, !dbg !1400
  %7 = zext i16 %6 to i32, !dbg !1400
  %8 = and i32 %7, 2, !dbg !1402
  %9 = icmp sgt i32 %8, 0, !dbg !1403
  br i1 %9, label %10, label %16, !dbg !1404

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %1, align 4, !dbg !1405
  %12 = call i32 @get_key_state(i32 %11, i32 65505), !dbg !1407
  %13 = icmp ne i32 %12, 0, !dbg !1407
  br i1 %13, label %16, label %14, !dbg !1408

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4, !dbg !1410
  call void @rdp_send_scancode(i32 %15, i16 zeroext -16384, i8 zeroext 42), !dbg !1411
  br label %16, !dbg !1411

; <label>:16:                                     ; preds = %14, %10, %0
  %17 = load i16, i16* @remote_modifier_state, align 2, !dbg !1412
  %18 = zext i16 %17 to i32, !dbg !1412
  %19 = and i32 %18, 1, !dbg !1414
  %20 = icmp sgt i32 %19, 0, !dbg !1415
  br i1 %20, label %21, label %27, !dbg !1416

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %1, align 4, !dbg !1417
  %23 = call i32 @get_key_state(i32 %22, i32 65506), !dbg !1419
  %24 = icmp ne i32 %23, 0, !dbg !1419
  br i1 %24, label %27, label %25, !dbg !1420

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !1421
  call void @rdp_send_scancode(i32 %26, i16 zeroext -16384, i8 zeroext 54), !dbg !1422
  br label %27, !dbg !1422

; <label>:27:                                     ; preds = %25, %21, %16
  %28 = load i16, i16* @remote_modifier_state, align 2, !dbg !1423
  %29 = zext i16 %28 to i32, !dbg !1423
  %30 = and i32 %29, 32, !dbg !1425
  %31 = icmp sgt i32 %30, 0, !dbg !1426
  br i1 %31, label %32, label %38, !dbg !1427

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %1, align 4, !dbg !1428
  %34 = call i32 @get_key_state(i32 %33, i32 65507), !dbg !1430
  %35 = icmp ne i32 %34, 0, !dbg !1430
  br i1 %35, label %38, label %36, !dbg !1431

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %2, align 4, !dbg !1432
  call void @rdp_send_scancode(i32 %37, i16 zeroext -16384, i8 zeroext 29), !dbg !1433
  br label %38, !dbg !1433

; <label>:38:                                     ; preds = %36, %32, %27
  %39 = load i16, i16* @remote_modifier_state, align 2, !dbg !1434
  %40 = zext i16 %39 to i32, !dbg !1434
  %41 = and i32 %40, 16, !dbg !1436
  %42 = icmp sgt i32 %41, 0, !dbg !1437
  br i1 %42, label %43, label %49, !dbg !1438

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %1, align 4, !dbg !1439
  %45 = call i32 @get_key_state(i32 %44, i32 65508), !dbg !1441
  %46 = icmp ne i32 %45, 0, !dbg !1441
  br i1 %46, label %49, label %47, !dbg !1442

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %2, align 4, !dbg !1443
  call void @rdp_send_scancode(i32 %48, i16 zeroext -16384, i8 zeroext -99), !dbg !1444
  br label %49, !dbg !1444

; <label>:49:                                     ; preds = %47, %43, %38
  %50 = load i16, i16* @remote_modifier_state, align 2, !dbg !1445
  %51 = zext i16 %50 to i32, !dbg !1445
  %52 = and i32 %51, 8, !dbg !1447
  %53 = icmp sgt i32 %52, 0, !dbg !1448
  br i1 %53, label %54, label %60, !dbg !1449

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %1, align 4, !dbg !1450
  %56 = call i32 @get_key_state(i32 %55, i32 65513), !dbg !1452
  %57 = icmp ne i32 %56, 0, !dbg !1452
  br i1 %57, label %60, label %58, !dbg !1453

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %2, align 4, !dbg !1454
  call void @rdp_send_scancode(i32 %59, i16 zeroext -16384, i8 zeroext 56), !dbg !1455
  br label %60, !dbg !1455

; <label>:60:                                     ; preds = %58, %54, %49
  %61 = load i16, i16* @remote_modifier_state, align 2, !dbg !1456
  %62 = zext i16 %61 to i32, !dbg !1456
  %63 = and i32 %62, 4, !dbg !1458
  %64 = icmp sgt i32 %63, 0, !dbg !1459
  br i1 %64, label %65, label %79, !dbg !1460

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %1, align 4, !dbg !1461
  %67 = call i32 @get_key_state(i32 %66, i32 65514), !dbg !1462
  %68 = icmp ne i32 %67, 0, !dbg !1462
  br i1 %68, label %79, label %69, !dbg !1463

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %1, align 4, !dbg !1464
  %71 = call i32 @get_key_state(i32 %70, i32 65406), !dbg !1466
  %72 = icmp ne i32 %71, 0, !dbg !1466
  br i1 %72, label %79, label %73, !dbg !1467

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* %1, align 4, !dbg !1468
  %75 = call i32 @get_key_state(i32 %74, i32 65027), !dbg !1469
  %76 = icmp ne i32 %75, 0, !dbg !1469
  br i1 %76, label %79, label %77, !dbg !1470

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %2, align 4, !dbg !1471
  call void @rdp_send_scancode(i32 %78, i16 zeroext -16384, i8 zeroext -72), !dbg !1472
  br label %79, !dbg !1472

; <label>:79:                                     ; preds = %77, %73, %69, %65, %60
  %80 = load i32, i32* %2, align 4, !dbg !1473
  call void @reset_winkey(i32 %80), !dbg !1474
  %81 = load i32, i32* @g_numlock_sync, align 4, !dbg !1475
  %82 = icmp ne i32 %81, 0, !dbg !1475
  br i1 %82, label %83, label %87, !dbg !1477

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %2, align 4, !dbg !1478
  %85 = load i32, i32* %1, align 4, !dbg !1479
  %86 = call zeroext i16 @ui_get_numlock_state(i32 %85), !dbg !1480
  call void @rdp_send_input(i32 %84, i16 zeroext 0, i16 zeroext 0, i16 zeroext %86, i16 zeroext 0), !dbg !1481
  br label %87, !dbg !1483

; <label>:87:                                     ; preds = %83, %79
  ret void, !dbg !1484
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind uwtable
define internal void @reset_winkey(i32) #0 !dbg !1485 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1488, metadata !94), !dbg !1489
  %3 = load i32, i32* @g_rdp_version, align 4, !dbg !1490
  %4 = icmp uge i32 %3, 5, !dbg !1492
  br i1 %4, label %5, label %7, !dbg !1493

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1494
  call void @rdp_send_scancode(i32 %6, i16 zeroext -16384, i8 zeroext -37), !dbg !1496
  br label %7, !dbg !1497

; <label>:7:                                      ; preds = %5, %1
  ret void, !dbg !1498
}

; Function Attrs: nounwind uwtable
define internal void @update_modifier_state(i8 zeroext, i32) #0 !dbg !1499 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1502, metadata !94), !dbg !1503
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1504, metadata !94), !dbg !1505
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1506, metadata !94), !dbg !1507
  %7 = load i16, i16* @remote_modifier_state, align 2, !dbg !1508
  store i16 %7, i16* %5, align 2, !dbg !1509
  %8 = load i8, i8* %3, align 1, !dbg !1510
  %9 = zext i8 %8 to i32, !dbg !1510
  switch i32 %9, label %105 [
    i32 42, label %10
    i32 54, label %19
    i32 29, label %28
    i32 157, label %37
    i32 56, label %46
    i32 184, label %55
    i32 219, label %64
    i32 220, label %73
    i32 69, label %82
  ], !dbg !1511

; <label>:10:                                     ; preds = %2
  %11 = load i16, i16* @remote_modifier_state, align 2, !dbg !1512
  %12 = zext i16 %11 to i32, !dbg !1512
  %13 = and i32 %12, -3, !dbg !1514
  %14 = load i32, i32* %4, align 4, !dbg !1515
  %15 = icmp ne i32 %14, 0, !dbg !1515
  %16 = select i1 %15, i32 2, i32 0, !dbg !1515
  %17 = or i32 %13, %16, !dbg !1516
  %18 = trunc i32 %17 to i16, !dbg !1517
  store i16 %18, i16* @remote_modifier_state, align 2, !dbg !1518
  br label %105, !dbg !1519

; <label>:19:                                     ; preds = %2
  %20 = load i16, i16* @remote_modifier_state, align 2, !dbg !1520
  %21 = zext i16 %20 to i32, !dbg !1520
  %22 = and i32 %21, -2, !dbg !1521
  %23 = load i32, i32* %4, align 4, !dbg !1522
  %24 = icmp ne i32 %23, 0, !dbg !1522
  %25 = select i1 %24, i32 1, i32 0, !dbg !1522
  %26 = or i32 %22, %25, !dbg !1523
  %27 = trunc i32 %26 to i16, !dbg !1524
  store i16 %27, i16* @remote_modifier_state, align 2, !dbg !1525
  br label %105, !dbg !1526

; <label>:28:                                     ; preds = %2
  %29 = load i16, i16* @remote_modifier_state, align 2, !dbg !1527
  %30 = zext i16 %29 to i32, !dbg !1527
  %31 = and i32 %30, -33, !dbg !1528
  %32 = load i32, i32* %4, align 4, !dbg !1529
  %33 = icmp ne i32 %32, 0, !dbg !1529
  %34 = select i1 %33, i32 32, i32 0, !dbg !1529
  %35 = or i32 %31, %34, !dbg !1530
  %36 = trunc i32 %35 to i16, !dbg !1531
  store i16 %36, i16* @remote_modifier_state, align 2, !dbg !1532
  br label %105, !dbg !1533

; <label>:37:                                     ; preds = %2
  %38 = load i16, i16* @remote_modifier_state, align 2, !dbg !1534
  %39 = zext i16 %38 to i32, !dbg !1534
  %40 = and i32 %39, -17, !dbg !1535
  %41 = load i32, i32* %4, align 4, !dbg !1536
  %42 = icmp ne i32 %41, 0, !dbg !1536
  %43 = select i1 %42, i32 16, i32 0, !dbg !1536
  %44 = or i32 %40, %43, !dbg !1537
  %45 = trunc i32 %44 to i16, !dbg !1538
  store i16 %45, i16* @remote_modifier_state, align 2, !dbg !1539
  br label %105, !dbg !1540

; <label>:46:                                     ; preds = %2
  %47 = load i16, i16* @remote_modifier_state, align 2, !dbg !1541
  %48 = zext i16 %47 to i32, !dbg !1541
  %49 = and i32 %48, -9, !dbg !1542
  %50 = load i32, i32* %4, align 4, !dbg !1543
  %51 = icmp ne i32 %50, 0, !dbg !1543
  %52 = select i1 %51, i32 8, i32 0, !dbg !1543
  %53 = or i32 %49, %52, !dbg !1544
  %54 = trunc i32 %53 to i16, !dbg !1545
  store i16 %54, i16* @remote_modifier_state, align 2, !dbg !1546
  br label %105, !dbg !1547

; <label>:55:                                     ; preds = %2
  %56 = load i16, i16* @remote_modifier_state, align 2, !dbg !1548
  %57 = zext i16 %56 to i32, !dbg !1548
  %58 = and i32 %57, -5, !dbg !1549
  %59 = load i32, i32* %4, align 4, !dbg !1550
  %60 = icmp ne i32 %59, 0, !dbg !1550
  %61 = select i1 %60, i32 4, i32 0, !dbg !1550
  %62 = or i32 %58, %61, !dbg !1551
  %63 = trunc i32 %62 to i16, !dbg !1552
  store i16 %63, i16* @remote_modifier_state, align 2, !dbg !1553
  br label %105, !dbg !1554

; <label>:64:                                     ; preds = %2
  %65 = load i16, i16* @remote_modifier_state, align 2, !dbg !1555
  %66 = zext i16 %65 to i32, !dbg !1555
  %67 = and i32 %66, -129, !dbg !1556
  %68 = load i32, i32* %4, align 4, !dbg !1557
  %69 = icmp ne i32 %68, 0, !dbg !1557
  %70 = select i1 %69, i32 128, i32 0, !dbg !1557
  %71 = or i32 %67, %70, !dbg !1558
  %72 = trunc i32 %71 to i16, !dbg !1559
  store i16 %72, i16* @remote_modifier_state, align 2, !dbg !1560
  br label %105, !dbg !1561

; <label>:73:                                     ; preds = %2
  %74 = load i16, i16* @remote_modifier_state, align 2, !dbg !1562
  %75 = zext i16 %74 to i32, !dbg !1562
  %76 = and i32 %75, -65, !dbg !1563
  %77 = load i32, i32* %4, align 4, !dbg !1564
  %78 = icmp ne i32 %77, 0, !dbg !1564
  %79 = select i1 %78, i32 64, i32 0, !dbg !1564
  %80 = or i32 %76, %79, !dbg !1565
  %81 = trunc i32 %80 to i16, !dbg !1566
  store i16 %81, i16* @remote_modifier_state, align 2, !dbg !1567
  br label %105, !dbg !1568

; <label>:82:                                     ; preds = %2
  %83 = load i32, i32* %4, align 4, !dbg !1569
  %84 = icmp ne i32 %83, 0, !dbg !1569
  br i1 %84, label %85, label %104, !dbg !1571

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* @g_numlock_sync, align 4, !dbg !1572
  %87 = icmp ne i32 %86, 0, !dbg !1572
  br i1 %87, label %104, label %88, !dbg !1574

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1575, metadata !94), !dbg !1577
  %89 = load i16, i16* @remote_modifier_state, align 2, !dbg !1578
  %90 = zext i16 %89 to i32, !dbg !1578
  %91 = and i32 %90, 256, !dbg !1579
  %92 = icmp sgt i32 %91, 0, !dbg !1580
  %93 = zext i1 %92 to i32, !dbg !1580
  %94 = icmp eq i32 %93, 0, !dbg !1581
  %95 = zext i1 %94 to i32, !dbg !1581
  store i32 %95, i32* %6, align 4, !dbg !1582
  %96 = load i16, i16* @remote_modifier_state, align 2, !dbg !1583
  %97 = zext i16 %96 to i32, !dbg !1583
  %98 = and i32 %97, -257, !dbg !1584
  %99 = load i32, i32* %6, align 4, !dbg !1585
  %100 = icmp ne i32 %99, 0, !dbg !1585
  %101 = select i1 %100, i32 256, i32 0, !dbg !1585
  %102 = or i32 %98, %101, !dbg !1586
  %103 = trunc i32 %102 to i16, !dbg !1587
  store i16 %103, i16* @remote_modifier_state, align 2, !dbg !1588
  br label %104, !dbg !1589

; <label>:104:                                    ; preds = %88, %85, %82
  br label %105, !dbg !1590

; <label>:105:                                    ; preds = %104, %2, %73, %64, %55, %46, %37, %28, %19, %10
  %106 = load i16, i16* %5, align 2, !dbg !1591
  %107 = zext i16 %106 to i32, !dbg !1591
  %108 = load i16, i16* @remote_modifier_state, align 2, !dbg !1593
  %109 = zext i16 %108 to i32, !dbg !1593
  %110 = icmp ne i32 %107, %109, !dbg !1594
  br i1 %110, label %111, label %117, !dbg !1595

; <label>:111:                                    ; preds = %105
  %112 = load i16, i16* %5, align 2, !dbg !1596
  %113 = zext i16 %112 to i32, !dbg !1596
  %114 = load i32, i32* %4, align 4, !dbg !1598
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.49, i32 0, i32 0), i32 %113, i32 %114), !dbg !1599
  %115 = load i16, i16* @remote_modifier_state, align 2, !dbg !1600
  %116 = zext i16 %115 to i32, !dbg !1600
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0), i32 %116), !dbg !1601
  br label %117, !dbg !1602

; <label>:117:                                    ; preds = %111, %105
  ret void, !dbg !1603
}

declare i8* @xmalloc(i32) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

declare i32 @str_startswith(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind uwtable
define internal void @add_sequence(i8*, i8*) #0 !dbg !1604 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._key_translation_entry*, align 8
  %8 = alloca %struct._key_translation*, align 8
  %9 = alloca %struct._key_translation**, align 8
  %10 = alloca i64, align 8
  %11 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1607, metadata !94), !dbg !1608
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1609, metadata !94), !dbg !1610
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1611, metadata !94), !dbg !1612
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1613, metadata !94), !dbg !1614
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %7, metadata !1615, metadata !94), !dbg !1616
  call void @llvm.dbg.declare(metadata %struct._key_translation** %8, metadata !1617, metadata !94), !dbg !1618
  call void @llvm.dbg.declare(metadata %struct._key_translation*** %9, metadata !1619, metadata !94), !dbg !1621
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1622, metadata !94), !dbg !1623
  call void @llvm.dbg.declare(metadata [80 x i8]* %11, metadata !1624, metadata !94), !dbg !1625
  %12 = load i8*, i8** %3, align 8, !dbg !1626
  %13 = call i64 @strspn(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #6, !dbg !1627
  store i64 %13, i64* %10, align 8, !dbg !1628
  %14 = load i64, i64* %10, align 8, !dbg !1629
  %15 = load i8*, i8** %3, align 8, !dbg !1630
  %16 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !1630
  store i8* %16, i8** %3, align 8, !dbg !1630
  %17 = load i8*, i8** %3, align 8, !dbg !1631
  %18 = call i64 @strcspn(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #6, !dbg !1632
  store i64 %18, i64* %10, align 8, !dbg !1633
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1634
  %20 = load i8*, i8** %3, align 8, !dbg !1636
  %21 = load i64, i64* %10, align 8, !dbg !1637
  %22 = add i64 %21, 1, !dbg !1638
  %23 = sub i64 %22, 1, !dbg !1639
  %24 = call i8* @strncpy(i8* %19, i8* %20, i64 %23) #7, !dbg !1640
  %25 = load i64, i64* %10, align 8, !dbg !1641
  %26 = add i64 %25, 1, !dbg !1642
  %27 = sub i64 %26, 1, !dbg !1643
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 %27, !dbg !1644
  store i8 0, i8* %28, align 1, !dbg !1645
  %29 = load i64, i64* %10, align 8, !dbg !1646
  %30 = load i8*, i8** %3, align 8, !dbg !1647
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1647
  store i8* %31, i8** %3, align 8, !dbg !1647
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1648
  %33 = call i64 @XStringToKeysym(i8* %32), !dbg !1649
  store i64 %33, i64* %5, align 8, !dbg !1650
  %34 = load i64, i64* %5, align 8, !dbg !1651
  %35 = icmp eq i64 %34, 0, !dbg !1653
  br i1 %35, label %36, label %39, !dbg !1654

; <label>:36:                                     ; preds = %2
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1655
  %38 = load i8*, i8** %4, align 8, !dbg !1657
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i8* %37, i8* %38), !dbg !1658
  br label %107, !dbg !1659

; <label>:39:                                     ; preds = %2
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1660
  %41 = load i64, i64* %5, align 8, !dbg !1661
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i32 0, i32 0), i8* %40, i64 %41), !dbg !1662
  %42 = load i64, i64* %5, align 8, !dbg !1663
  %43 = call %struct._key_translation_entry* @new_key_translation_entry(i64 %42), !dbg !1664
  store %struct._key_translation_entry* %43, %struct._key_translation_entry** %7, align 8, !dbg !1665
  %44 = load %struct._key_translation_entry*, %struct._key_translation_entry** %7, align 8, !dbg !1666
  %45 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %44, i32 0, i32 0, !dbg !1667
  store %struct._key_translation** %45, %struct._key_translation*** %9, align 8, !dbg !1668
  br label %46, !dbg !1669

; <label>:46:                                     ; preds = %98, %39
  %47 = load i8*, i8** %3, align 8, !dbg !1670
  %48 = load i8, i8* %47, align 1, !dbg !1672
  %49 = icmp ne i8 %48, 0, !dbg !1673
  br i1 %49, label %50, label %107, !dbg !1673

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** %3, align 8, !dbg !1674
  %52 = call i64 @strspn(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #6, !dbg !1676
  store i64 %52, i64* %10, align 8, !dbg !1677
  %53 = load i64, i64* %10, align 8, !dbg !1678
  %54 = load i8*, i8** %3, align 8, !dbg !1679
  %55 = getelementptr inbounds i8, i8* %54, i64 %53, !dbg !1679
  store i8* %55, i8** %3, align 8, !dbg !1679
  %56 = load i8*, i8** %3, align 8, !dbg !1680
  %57 = call i64 @strcspn(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #6, !dbg !1681
  store i64 %57, i64* %10, align 8, !dbg !1682
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1683
  %59 = load i8*, i8** %3, align 8, !dbg !1685
  %60 = load i64, i64* %10, align 8, !dbg !1686
  %61 = add i64 %60, 1, !dbg !1687
  %62 = sub i64 %61, 1, !dbg !1688
  %63 = call i8* @strncpy(i8* %58, i8* %59, i64 %62) #7, !dbg !1689
  %64 = load i64, i64* %10, align 8, !dbg !1690
  %65 = add i64 %64, 1, !dbg !1691
  %66 = sub i64 %65, 1, !dbg !1692
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 %66, !dbg !1693
  store i8 0, i8* %67, align 1, !dbg !1694
  %68 = load i64, i64* %10, align 8, !dbg !1695
  %69 = load i8*, i8** %3, align 8, !dbg !1696
  %70 = getelementptr inbounds i8, i8* %69, i64 %68, !dbg !1696
  store i8* %70, i8** %3, align 8, !dbg !1696
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1697
  %72 = load i8, i8* %71, align 16, !dbg !1697
  %73 = sext i8 %72 to i32, !dbg !1697
  %74 = icmp eq i32 %73, 0, !dbg !1699
  br i1 %74, label %75, label %76, !dbg !1700

; <label>:75:                                     ; preds = %50
  br label %107, !dbg !1701

; <label>:76:                                     ; preds = %50
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1702
  %78 = call i64 @XStringToKeysym(i8* %77), !dbg !1703
  store i64 %78, i64* %6, align 8, !dbg !1704
  %79 = load i64, i64* %6, align 8, !dbg !1705
  %80 = icmp eq i64 %79, 0, !dbg !1707
  br i1 %80, label %81, label %85, !dbg !1708

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i32 0, i32 0, !dbg !1709
  %83 = load i8*, i8** %4, align 8, !dbg !1711
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i32 0, i32 0), i8* %82, i8* %83), !dbg !1712
  %84 = load i64, i64* %5, align 8, !dbg !1713
  call void @delete_key_translation_entry(i64 %84), !dbg !1714
  br label %107, !dbg !1715

; <label>:85:                                     ; preds = %76
  %86 = call i8* @xmalloc(i32 16), !dbg !1716
  %87 = bitcast i8* %86 to %struct._key_translation*, !dbg !1717
  store %struct._key_translation* %87, %struct._key_translation** %8, align 8, !dbg !1718
  %88 = load %struct._key_translation*, %struct._key_translation** %8, align 8, !dbg !1719
  %89 = bitcast %struct._key_translation* %88 to i8*, !dbg !1720
  call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 16, i32 8, i1 false), !dbg !1720
  %90 = load %struct._key_translation_entry*, %struct._key_translation_entry** %7, align 8, !dbg !1721
  %91 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %90, i32 0, i32 0, !dbg !1723
  %92 = load %struct._key_translation*, %struct._key_translation** %91, align 8, !dbg !1723
  %93 = icmp ne %struct._key_translation* %92, null, !dbg !1721
  br i1 %93, label %98, label %94, !dbg !1724

; <label>:94:                                     ; preds = %85
  %95 = load %struct._key_translation*, %struct._key_translation** %8, align 8, !dbg !1725
  %96 = load %struct._key_translation_entry*, %struct._key_translation_entry** %7, align 8, !dbg !1726
  %97 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %96, i32 0, i32 0, !dbg !1727
  store %struct._key_translation* %95, %struct._key_translation** %97, align 8, !dbg !1728
  br label %98, !dbg !1726

; <label>:98:                                     ; preds = %94, %85
  %99 = load %struct._key_translation*, %struct._key_translation** %8, align 8, !dbg !1729
  %100 = load %struct._key_translation**, %struct._key_translation*** %9, align 8, !dbg !1730
  store %struct._key_translation* %99, %struct._key_translation** %100, align 8, !dbg !1731
  %101 = load %struct._key_translation*, %struct._key_translation** %8, align 8, !dbg !1732
  %102 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %101, i32 0, i32 3, !dbg !1733
  store %struct._key_translation** %102, %struct._key_translation*** %9, align 8, !dbg !1734
  %103 = load i64, i64* %6, align 8, !dbg !1735
  %104 = trunc i64 %103 to i32, !dbg !1735
  %105 = load %struct._key_translation*, %struct._key_translation** %8, align 8, !dbg !1736
  %106 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %105, i32 0, i32 2, !dbg !1737
  store i32 %104, i32* %106, align 4, !dbg !1738
  br label %46, !dbg !1739, !llvm.loop !1741

; <label>:107:                                    ; preds = %36, %81, %75, %46
  ret void, !dbg !1742
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @add_to_keymap(i8*, i8 zeroext, i16 zeroext, i8*) #0 !dbg !1743 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._key_translation_entry*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1746, metadata !94), !dbg !1747
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1748, metadata !94), !dbg !1749
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1750, metadata !94), !dbg !1751
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1752, metadata !94), !dbg !1753
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1754, metadata !94), !dbg !1755
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %10, metadata !1756, metadata !94), !dbg !1757
  %11 = load i8*, i8** %5, align 8, !dbg !1758
  %12 = call i64 @XStringToKeysym(i8* %11), !dbg !1759
  store i64 %12, i64* %9, align 8, !dbg !1760
  %13 = load i64, i64* %9, align 8, !dbg !1761
  %14 = icmp eq i64 %13, 0, !dbg !1763
  br i1 %14, label %15, label %18, !dbg !1764

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8, !dbg !1765
  %17 = load i8*, i8** %8, align 8, !dbg !1767
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i32 0, i32 0), i8* %16, i8* %17), !dbg !1768
  br label %45, !dbg !1769

; <label>:18:                                     ; preds = %4
  %19 = load i64, i64* %9, align 8, !dbg !1770
  %20 = trunc i64 %19 to i32, !dbg !1771
  %21 = load i8, i8* %6, align 1, !dbg !1772
  %22 = zext i8 %21 to i32, !dbg !1772
  %23 = load i16, i16* %7, align 2, !dbg !1773
  %24 = zext i16 %23 to i32, !dbg !1773
  call void (i32, i32, i8*, ...) @logger(i32 1, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.48, i32 0, i32 0), i32 %20, i32 %22, i32 %24), !dbg !1774
  %25 = load i64, i64* %9, align 8, !dbg !1775
  %26 = call %struct._key_translation_entry* @new_key_translation_entry(i64 %25), !dbg !1776
  store %struct._key_translation_entry* %26, %struct._key_translation_entry** %10, align 8, !dbg !1777
  %27 = call i8* @xmalloc(i32 16), !dbg !1778
  %28 = bitcast i8* %27 to %struct._key_translation*, !dbg !1779
  %29 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !1780
  %30 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %29, i32 0, i32 0, !dbg !1781
  store %struct._key_translation* %28, %struct._key_translation** %30, align 8, !dbg !1782
  %31 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !1783
  %32 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %31, i32 0, i32 0, !dbg !1784
  %33 = load %struct._key_translation*, %struct._key_translation** %32, align 8, !dbg !1784
  %34 = bitcast %struct._key_translation* %33 to i8*, !dbg !1785
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 16, i32 8, i1 false), !dbg !1785
  %35 = load i8, i8* %6, align 1, !dbg !1786
  %36 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !1787
  %37 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %36, i32 0, i32 0, !dbg !1788
  %38 = load %struct._key_translation*, %struct._key_translation** %37, align 8, !dbg !1788
  %39 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %38, i32 0, i32 0, !dbg !1789
  store i8 %35, i8* %39, align 8, !dbg !1790
  %40 = load i16, i16* %7, align 2, !dbg !1791
  %41 = load %struct._key_translation_entry*, %struct._key_translation_entry** %10, align 8, !dbg !1792
  %42 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %41, i32 0, i32 0, !dbg !1793
  %43 = load %struct._key_translation*, %struct._key_translation** %42, align 8, !dbg !1793
  %44 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %43, i32 0, i32 1, !dbg !1794
  store i16 %40, i16* %44, align 2, !dbg !1795
  br label %45, !dbg !1796

; <label>:45:                                     ; preds = %18, %15
  ret void, !dbg !1797
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

declare i64 @XStringToKeysym(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._key_translation_entry* @new_key_translation_entry(i64) #0 !dbg !1798 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._key_translation_entry*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1801, metadata !94), !dbg !1802
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1803, metadata !94), !dbg !1804
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %4, metadata !1805, metadata !94), !dbg !1806
  %5 = load i64, i64* %2, align 8, !dbg !1807
  call void @delete_key_translation_entry(i64 %5), !dbg !1808
  %6 = call i8* @xmalloc(i32 24), !dbg !1809
  %7 = bitcast i8* %6 to %struct._key_translation_entry*, !dbg !1810
  store %struct._key_translation_entry* %7, %struct._key_translation_entry** %4, align 8, !dbg !1811
  %8 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1812
  %9 = bitcast %struct._key_translation_entry* %8 to i8*, !dbg !1813
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !1813
  %10 = load i64, i64* %2, align 8, !dbg !1814
  %11 = trunc i64 %10 to i32, !dbg !1814
  %12 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1815
  %13 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %12, i32 0, i32 1, !dbg !1816
  store i32 %11, i32* %13, align 8, !dbg !1817
  %14 = load i64, i64* %2, align 8, !dbg !1818
  %15 = and i64 %14, 127, !dbg !1819
  %16 = trunc i64 %15 to i32, !dbg !1818
  store i32 %16, i32* %3, align 4, !dbg !1820
  %17 = load i32, i32* %3, align 4, !dbg !1821
  %18 = zext i32 %17 to i64, !dbg !1822
  %19 = getelementptr inbounds [128 x %struct._key_translation_entry*], [128 x %struct._key_translation_entry*]* @keymap, i64 0, i64 %18, !dbg !1822
  %20 = load %struct._key_translation_entry*, %struct._key_translation_entry** %19, align 8, !dbg !1822
  %21 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1823
  %22 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %21, i32 0, i32 2, !dbg !1824
  store %struct._key_translation_entry* %20, %struct._key_translation_entry** %22, align 8, !dbg !1825
  %23 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1826
  %24 = load i32, i32* %3, align 4, !dbg !1827
  %25 = zext i32 %24 to i64, !dbg !1828
  %26 = getelementptr inbounds [128 x %struct._key_translation_entry*], [128 x %struct._key_translation_entry*]* @keymap, i64 0, i64 %25, !dbg !1828
  store %struct._key_translation_entry* %23, %struct._key_translation_entry** %26, align 8, !dbg !1829
  %27 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1830
  ret %struct._key_translation_entry* %27, !dbg !1831
}

; Function Attrs: nounwind uwtable
define internal void @delete_key_translation_entry(i64) #0 !dbg !1832 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._key_translation_entry*, align 8
  %5 = alloca %struct._key_translation_entry*, align 8
  %6 = alloca %struct._key_translation_entry*, align 8
  %7 = alloca %struct._key_translation_entry, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1835, metadata !94), !dbg !1836
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1837, metadata !94), !dbg !1838
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %4, metadata !1839, metadata !94), !dbg !1840
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %5, metadata !1841, metadata !94), !dbg !1842
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry** %6, metadata !1843, metadata !94), !dbg !1844
  call void @llvm.dbg.declare(metadata %struct._key_translation_entry* %7, metadata !1845, metadata !94), !dbg !1846
  %8 = load i64, i64* %2, align 8, !dbg !1847
  %9 = and i64 %8, 127, !dbg !1848
  %10 = trunc i64 %9 to i32, !dbg !1847
  store i32 %10, i32* %3, align 4, !dbg !1849
  %11 = load i32, i32* %3, align 4, !dbg !1850
  %12 = zext i32 %11 to i64, !dbg !1851
  %13 = getelementptr inbounds [128 x %struct._key_translation_entry*], [128 x %struct._key_translation_entry*]* @keymap, i64 0, i64 %12, !dbg !1851
  %14 = load %struct._key_translation_entry*, %struct._key_translation_entry** %13, align 8, !dbg !1851
  store %struct._key_translation_entry* %14, %struct._key_translation_entry** %4, align 8, !dbg !1852
  %15 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1853
  %16 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %7, i32 0, i32 2, !dbg !1854
  store %struct._key_translation_entry* %15, %struct._key_translation_entry** %16, align 8, !dbg !1855
  store %struct._key_translation_entry* %7, %struct._key_translation_entry** %6, align 8, !dbg !1856
  br label %17, !dbg !1857

; <label>:17:                                     ; preds = %41, %1
  %18 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1858
  %19 = icmp ne %struct._key_translation_entry* %18, null, !dbg !1860
  br i1 %19, label %20, label %43, !dbg !1860

; <label>:20:                                     ; preds = %17
  %21 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1861
  %22 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %21, i32 0, i32 2, !dbg !1863
  %23 = load %struct._key_translation_entry*, %struct._key_translation_entry** %22, align 8, !dbg !1863
  store %struct._key_translation_entry* %23, %struct._key_translation_entry** %5, align 8, !dbg !1864
  %24 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1865
  %25 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %24, i32 0, i32 1, !dbg !1867
  %26 = load i32, i32* %25, align 8, !dbg !1867
  %27 = zext i32 %26 to i64, !dbg !1865
  %28 = load i64, i64* %2, align 8, !dbg !1868
  %29 = icmp eq i64 %27, %28, !dbg !1869
  br i1 %29, label %30, label %39, !dbg !1870

; <label>:30:                                     ; preds = %20
  %31 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1871
  %32 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %31, i32 0, i32 0, !dbg !1873
  %33 = load %struct._key_translation*, %struct._key_translation** %32, align 8, !dbg !1873
  call void @free_key_translation(%struct._key_translation* %33), !dbg !1874
  %34 = load %struct._key_translation_entry*, %struct._key_translation_entry** %5, align 8, !dbg !1875
  %35 = load %struct._key_translation_entry*, %struct._key_translation_entry** %6, align 8, !dbg !1876
  %36 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %35, i32 0, i32 2, !dbg !1877
  store %struct._key_translation_entry* %34, %struct._key_translation_entry** %36, align 8, !dbg !1878
  %37 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1879
  %38 = bitcast %struct._key_translation_entry* %37 to i8*, !dbg !1879
  call void @xfree(i8* %38), !dbg !1880
  br label %41, !dbg !1881

; <label>:39:                                     ; preds = %20
  %40 = load %struct._key_translation_entry*, %struct._key_translation_entry** %4, align 8, !dbg !1882
  store %struct._key_translation_entry* %40, %struct._key_translation_entry** %6, align 8, !dbg !1884
  br label %41

; <label>:41:                                     ; preds = %39, %30
  %42 = load %struct._key_translation_entry*, %struct._key_translation_entry** %5, align 8, !dbg !1885
  store %struct._key_translation_entry* %42, %struct._key_translation_entry** %4, align 8, !dbg !1886
  br label %17, !dbg !1887, !llvm.loop !1889

; <label>:43:                                     ; preds = %17
  %44 = getelementptr inbounds %struct._key_translation_entry, %struct._key_translation_entry* %7, i32 0, i32 2, !dbg !1890
  %45 = load %struct._key_translation_entry*, %struct._key_translation_entry** %44, align 8, !dbg !1890
  %46 = load i32, i32* %3, align 4, !dbg !1891
  %47 = zext i32 %46 to i64, !dbg !1892
  %48 = getelementptr inbounds [128 x %struct._key_translation_entry*], [128 x %struct._key_translation_entry*]* @keymap, i64 0, i64 %47, !dbg !1892
  store %struct._key_translation_entry* %45, %struct._key_translation_entry** %48, align 8, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: nounwind uwtable
define internal void @free_key_translation(%struct._key_translation*) #0 !dbg !1895 {
  %2 = alloca %struct._key_translation*, align 8
  %3 = alloca %struct._key_translation*, align 8
  store %struct._key_translation* %0, %struct._key_translation** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._key_translation** %2, metadata !1898, metadata !94), !dbg !1899
  call void @llvm.dbg.declare(metadata %struct._key_translation** %3, metadata !1900, metadata !94), !dbg !1901
  br label %4, !dbg !1902

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct._key_translation*, %struct._key_translation** %2, align 8, !dbg !1903
  %6 = icmp ne %struct._key_translation* %5, null, !dbg !1905
  br i1 %6, label %7, label %14, !dbg !1905

; <label>:7:                                      ; preds = %4
  %8 = load %struct._key_translation*, %struct._key_translation** %2, align 8, !dbg !1906
  %9 = getelementptr inbounds %struct._key_translation, %struct._key_translation* %8, i32 0, i32 3, !dbg !1908
  %10 = load %struct._key_translation*, %struct._key_translation** %9, align 8, !dbg !1908
  store %struct._key_translation* %10, %struct._key_translation** %3, align 8, !dbg !1909
  %11 = load %struct._key_translation*, %struct._key_translation** %2, align 8, !dbg !1910
  %12 = bitcast %struct._key_translation* %11 to i8*, !dbg !1910
  call void @xfree(i8* %12), !dbg !1911
  %13 = load %struct._key_translation*, %struct._key_translation** %3, align 8, !dbg !1912
  store %struct._key_translation* %13, %struct._key_translation** %2, align 8, !dbg !1913
  br label %4, !dbg !1914, !llvm.loop !1916

; <label>:14:                                     ; preds = %4
  ret void, !dbg !1917
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !37, globals: !64)
!1 = !DIFile(filename: "[inter]xkeymap.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !12, !24, !31}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_INPUT_DEVICE", file: !4, line: 278, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "RDP_INPUT_SYNCHRONIZE", value: 0)
!7 = !DIEnumerator(name: "RDP_INPUT_CODEPOINT", value: 1)
!8 = !DIEnumerator(name: "RDP_INPUT_VIRTKEY", value: 2)
!9 = !DIEnumerator(name: "RDP_INPUT_SCANCODE", value: 4)
!10 = !DIEnumerator(name: "RDP_INPUT_MOUSE", value: 32769)
!11 = !DIEnumerator(name: "RDP_INPUT_MOUSEX", value: 32770)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !13, line: 46, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23}
!15 = !DIEnumerator(name: "GUI", value: 0)
!16 = !DIEnumerator(name: "Keyboard", value: 1)
!17 = !DIEnumerator(name: "Clipboard", value: 2)
!18 = !DIEnumerator(name: "Sound", value: 3)
!19 = !DIEnumerator(name: "Protocol", value: 4)
!20 = !DIEnumerator(name: "Graphics", value: 5)
!21 = !DIEnumerator(name: "Core", value: 6)
!22 = !DIEnumerator(name: "SmartCard", value: 7)
!23 = !DIEnumerator(name: "Disk", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !13, line: 37, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "Debug", value: 0)
!27 = !DIEnumerator(name: "Verbose", value: 1)
!28 = !DIEnumerator(name: "Warning", value: 2)
!29 = !DIEnumerator(name: "Error", value: 3)
!30 = !DIEnumerator(name: "Notice", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !32, line: 52, size: 32, align: 32, elements: !33)
!32 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "RDP_V4", value: 4)
!35 = !DIEnumerator(name: "RDP_V5", value: 5)
!36 = !DIEnumerator(name: "RDP_V6", value: 6)
!37 = !{!38, !39, !40, !41, !42, !56}
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_translation", file: !32, line: 149, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_key_translation", file: !32, line: 140, size: 128, align: 64, elements: !45)
!45 = !{!46, !49, !52, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !44, file: !32, line: 143, baseType: !47, size: 8, align: 8)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !32, line: 39, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !44, file: !32, line: 144, baseType: !50, size: 16, align: 16, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !32, line: 41, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "seq_keysym", scope: !44, file: !32, line: 146, baseType: !53, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !32, line: 43, baseType: !41)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !32, line: 147, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_translation_entry", file: !32, line: 159, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_key_translation_entry", file: !32, line: 151, size: 192, align: 64, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !58, file: !32, line: 153, baseType: !42, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "keysym", scope: !58, file: !32, line: 155, baseType: !53, size: 32, align: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !32, line: 157, baseType: !63, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!64 = !{!65, !68, !76, !77, !81, !82}
!65 = distinct !DIGlobalVariable(name: "keymap_loaded", scope: !0, file: !66, line: 52, type: !67, isLocal: true, isDefinition: true, variable: i32* @keymap_loaded)
!66 = !DIFile(filename: "xkeymap.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !32, line: 28, baseType: !38)
!68 = distinct !DIGlobalVariable(name: "keypress_keysyms", scope: !0, file: !66, line: 54, type: !69, isLocal: true, isDefinition: true, variable: [256 x i64]* @keypress_keysyms)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 16384, align: 64, elements: !74)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "KeySym", file: !71, line: 106, baseType: !72)
!71 = !DIFile(filename: "/usr/include/X11/X.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !71, line: 66, baseType: !73)
!73 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!74 = !{!75}
!75 = !DISubrange(count: 256)
!76 = distinct !DIGlobalVariable(name: "min_keycode", scope: !0, file: !66, line: 55, type: !38, isLocal: true, isDefinition: true, variable: i32* @min_keycode)
!77 = distinct !DIGlobalVariable(name: "keymap", scope: !0, file: !66, line: 53, type: !78, isLocal: true, isDefinition: true, variable: [128 x %struct._key_translation_entry*]* @keymap)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8192, align: 64, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 128)
!81 = distinct !DIGlobalVariable(name: "remote_modifier_state", scope: !0, file: !66, line: 56, type: !50, isLocal: true, isDefinition: true, variable: i16* @remote_modifier_state)
!82 = distinct !DIGlobalVariable(name: "saved_remote_modifier_state", scope: !0, file: !66, line: 57, type: !50, isLocal: true, isDefinition: true, variable: i16* @saved_remote_modifier_state)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!86 = distinct !DISubprogram(name: "xkeymap_from_locale", scope: !66, file: !66, line: 259, type: !87, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!87 = !DISubroutineType(types: !88)
!88 = !{!67, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !{}
!93 = !DILocalVariable(name: "locale", arg: 1, scope: !86, file: !66, line: 259, type: !89)
!94 = !DIExpression()
!95 = !DILocation(line: 259, column: 33, scope: !86)
!96 = !DILocalVariable(name: "str", scope: !86, file: !66, line: 261, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!98 = !DILocation(line: 261, column: 8, scope: !86)
!99 = !DILocalVariable(name: "ptr", scope: !86, file: !66, line: 261, type: !97)
!100 = !DILocation(line: 261, column: 14, scope: !86)
!101 = !DILocalVariable(name: "fp", scope: !86, file: !66, line: 262, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 48, baseType: !105)
!104 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 241, size: 1728, align: 64, elements: !107)
!106 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !128, !129, !130, !131, !135, !136, !138, !142, !145, !147, !148, !149, !150, !151, !154, !155}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !105, file: !106, line: 242, baseType: !38, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !105, file: !106, line: 247, baseType: !97, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !105, file: !106, line: 248, baseType: !97, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !105, file: !106, line: 249, baseType: !97, size: 64, align: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !105, file: !106, line: 250, baseType: !97, size: 64, align: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !105, file: !106, line: 251, baseType: !97, size: 64, align: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !105, file: !106, line: 252, baseType: !97, size: 64, align: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !105, file: !106, line: 253, baseType: !97, size: 64, align: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !105, file: !106, line: 254, baseType: !97, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !105, file: !106, line: 256, baseType: !97, size: 64, align: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !105, file: !106, line: 257, baseType: !97, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !105, file: !106, line: 258, baseType: !97, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !105, file: !106, line: 260, baseType: !121, size: 64, align: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !106, line: 156, size: 192, align: 64, elements: !123)
!123 = !{!124, !125, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !122, file: !106, line: 157, baseType: !121, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !122, file: !106, line: 158, baseType: !126, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !122, file: !106, line: 162, baseType: !38, size: 32, align: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !105, file: !106, line: 262, baseType: !126, size: 64, align: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !105, file: !106, line: 264, baseType: !38, size: 32, align: 32, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !105, file: !106, line: 268, baseType: !38, size: 32, align: 32, offset: 928)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !105, file: !106, line: 270, baseType: !132, size: 64, align: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !133, line: 131, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!134 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !105, file: !106, line: 274, baseType: !51, size: 16, align: 16, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !105, file: !106, line: 275, baseType: !137, size: 8, align: 8, offset: 1040)
!137 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !105, file: !106, line: 276, baseType: !139, size: 8, align: 8, offset: 1048)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8, align: 8, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !105, file: !106, line: 280, baseType: !143, size: 64, align: 64, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !106, line: 150, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !105, file: !106, line: 289, baseType: !146, size: 64, align: 64, offset: 1152)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !133, line: 132, baseType: !134)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !105, file: !106, line: 297, baseType: !39, size: 64, align: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !105, file: !106, line: 298, baseType: !39, size: 64, align: 64, offset: 1280)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !105, file: !106, line: 299, baseType: !39, size: 64, align: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !105, file: !106, line: 300, baseType: !39, size: 64, align: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !105, file: !106, line: 302, baseType: !152, size: 64, align: 64, offset: 1472)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 216, baseType: !73)
!153 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !105, file: !106, line: 303, baseType: !38, size: 32, align: 32, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !105, file: !106, line: 305, baseType: !156, size: 160, align: 8, offset: 1568)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 20)
!159 = !DILocation(line: 262, column: 8, scope: !86)
!160 = !DILocation(line: 265, column: 16, scope: !86)
!161 = !DILocation(line: 265, column: 8, scope: !86)
!162 = !DILocation(line: 265, column: 6, scope: !86)
!163 = !DILocation(line: 268, column: 16, scope: !86)
!164 = !DILocation(line: 268, column: 8, scope: !86)
!165 = !DILocation(line: 268, column: 6, scope: !86)
!166 = !DILocation(line: 269, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !86, file: !66, line: 269, column: 6)
!168 = !DILocation(line: 269, column: 6, scope: !86)
!169 = !DILocation(line: 270, column: 4, scope: !167)
!170 = !DILocation(line: 270, column: 8, scope: !167)
!171 = !DILocation(line: 270, column: 3, scope: !167)
!172 = !DILocation(line: 271, column: 16, scope: !86)
!173 = !DILocation(line: 271, column: 8, scope: !86)
!174 = !DILocation(line: 271, column: 6, scope: !86)
!175 = !DILocation(line: 272, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !86, file: !66, line: 272, column: 6)
!177 = !DILocation(line: 272, column: 6, scope: !86)
!178 = !DILocation(line: 273, column: 4, scope: !176)
!179 = !DILocation(line: 273, column: 8, scope: !176)
!180 = !DILocation(line: 273, column: 3, scope: !176)
!181 = !DILocation(line: 276, column: 16, scope: !86)
!182 = !DILocation(line: 276, column: 8, scope: !86)
!183 = !DILocation(line: 276, column: 6, scope: !86)
!184 = !DILocation(line: 277, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !86, file: !66, line: 277, column: 6)
!186 = !DILocation(line: 277, column: 6, scope: !86)
!187 = !DILocation(line: 278, column: 4, scope: !185)
!188 = !DILocation(line: 278, column: 8, scope: !185)
!189 = !DILocation(line: 278, column: 3, scope: !185)
!190 = !DILocation(line: 281, column: 8, scope: !86)
!191 = !DILocation(line: 281, column: 6, scope: !86)
!192 = !DILocation(line: 282, column: 2, scope: !86)
!193 = !DILocation(line: 282, column: 10, scope: !194)
!194 = !DILexicalBlockFile(scope: !86, file: !66, discriminator: 1)
!195 = !DILocation(line: 282, column: 9, scope: !194)
!196 = !DILocation(line: 282, column: 2, scope: !194)
!197 = !DILocation(line: 284, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !86, file: !66, line: 283, column: 2)
!199 = !DILocation(line: 284, column: 24, scope: !198)
!200 = !DILocation(line: 284, column: 18, scope: !198)
!201 = !DILocation(line: 284, column: 10, scope: !198)
!202 = !DILocation(line: 284, column: 4, scope: !198)
!203 = !DILocation(line: 284, column: 8, scope: !198)
!204 = !DILocation(line: 285, column: 6, scope: !198)
!205 = !DILocation(line: 282, column: 2, scope: !206)
!206 = !DILexicalBlockFile(scope: !86, file: !66, discriminator: 2)
!207 = distinct !{!207, !192}
!208 = !DILocation(line: 289, column: 20, scope: !86)
!209 = !DILocation(line: 289, column: 7, scope: !86)
!210 = !DILocation(line: 289, column: 5, scope: !86)
!211 = !DILocation(line: 290, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !86, file: !66, line: 290, column: 6)
!213 = !DILocation(line: 290, column: 9, scope: !212)
!214 = !DILocation(line: 290, column: 6, scope: !86)
!215 = !DILocation(line: 293, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !66, line: 291, column: 2)
!217 = !DILocation(line: 293, column: 9, scope: !216)
!218 = !DILocation(line: 293, column: 7, scope: !216)
!219 = !DILocation(line: 294, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !66, line: 294, column: 7)
!221 = !DILocation(line: 294, column: 7, scope: !216)
!222 = !DILocation(line: 295, column: 5, scope: !220)
!223 = !DILocation(line: 295, column: 9, scope: !220)
!224 = !DILocation(line: 295, column: 4, scope: !220)
!225 = !DILocation(line: 298, column: 21, scope: !216)
!226 = !DILocation(line: 298, column: 8, scope: !216)
!227 = !DILocation(line: 298, column: 6, scope: !216)
!228 = !DILocation(line: 299, column: 2, scope: !216)
!229 = !DILocation(line: 301, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !86, file: !66, line: 301, column: 6)
!231 = !DILocation(line: 301, column: 6, scope: !86)
!232 = !DILocation(line: 303, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !66, line: 302, column: 2)
!234 = !DILocation(line: 303, column: 3, scope: !233)
!235 = !DILocation(line: 304, column: 26, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !66, line: 304, column: 3)
!237 = !DILocation(line: 304, column: 5, scope: !236)
!238 = !DILocation(line: 304, column: 92, scope: !236)
!239 = !DILocation(line: 305, column: 9, scope: !233)
!240 = !DILocation(line: 305, column: 3, scope: !233)
!241 = !DILocation(line: 306, column: 3, scope: !233)
!242 = !DILocation(line: 309, column: 8, scope: !86)
!243 = !DILocation(line: 309, column: 2, scope: !86)
!244 = !DILocation(line: 310, column: 2, scope: !86)
!245 = !DILocation(line: 311, column: 1, scope: !86)
!246 = distinct !DISubprogram(name: "xkeymap_open", scope: !66, file: !66, line: 337, type: !247, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!247 = !DISubroutineType(types: !248)
!248 = !{!102, !89}
!249 = !DILocalVariable(name: "filename", arg: 1, scope: !246, file: !66, line: 337, type: !89)
!250 = !DILocation(line: 337, column: 26, scope: !246)
!251 = !DILocalVariable(name: "path1", scope: !246, file: !66, line: 339, type: !97)
!252 = !DILocation(line: 339, column: 8, scope: !246)
!253 = !DILocalVariable(name: "path2", scope: !246, file: !66, line: 339, type: !97)
!254 = !DILocation(line: 339, column: 16, scope: !246)
!255 = !DILocalVariable(name: "home", scope: !246, file: !66, line: 340, type: !97)
!256 = !DILocation(line: 340, column: 8, scope: !246)
!257 = !DILocalVariable(name: "fp", scope: !246, file: !66, line: 341, type: !102)
!258 = !DILocation(line: 341, column: 8, scope: !246)
!259 = !DILocation(line: 344, column: 9, scope: !246)
!260 = !DILocation(line: 344, column: 7, scope: !246)
!261 = !DILocation(line: 345, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !246, file: !66, line: 345, column: 6)
!263 = !DILocation(line: 345, column: 6, scope: !246)
!264 = !DILocation(line: 347, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !66, line: 346, column: 2)
!266 = !DILocation(line: 347, column: 11, scope: !265)
!267 = !DILocation(line: 347, column: 9, scope: !265)
!268 = !DILocation(line: 348, column: 20, scope: !265)
!269 = !DILocation(line: 348, column: 27, scope: !265)
!270 = !DILocation(line: 348, column: 11, scope: !265)
!271 = !DILocation(line: 348, column: 9, scope: !265)
!272 = !DILocation(line: 349, column: 9, scope: !265)
!273 = !DILocation(line: 349, column: 3, scope: !265)
!274 = !DILocation(line: 350, column: 14, scope: !265)
!275 = !DILocation(line: 350, column: 8, scope: !265)
!276 = !DILocation(line: 350, column: 6, scope: !265)
!277 = !DILocation(line: 351, column: 9, scope: !265)
!278 = !DILocation(line: 351, column: 3, scope: !265)
!279 = !DILocation(line: 352, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !265, file: !66, line: 352, column: 7)
!281 = !DILocation(line: 352, column: 7, scope: !265)
!282 = !DILocation(line: 353, column: 11, scope: !280)
!283 = !DILocation(line: 353, column: 4, scope: !280)
!284 = !DILocation(line: 354, column: 2, scope: !265)
!285 = !DILocation(line: 357, column: 57, scope: !246)
!286 = !DILocation(line: 357, column: 10, scope: !246)
!287 = !DILocation(line: 357, column: 8, scope: !246)
!288 = !DILocation(line: 358, column: 13, scope: !246)
!289 = !DILocation(line: 358, column: 7, scope: !246)
!290 = !DILocation(line: 358, column: 5, scope: !246)
!291 = !DILocation(line: 359, column: 8, scope: !246)
!292 = !DILocation(line: 359, column: 2, scope: !246)
!293 = !DILocation(line: 360, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !246, file: !66, line: 360, column: 6)
!295 = !DILocation(line: 360, column: 6, scope: !246)
!296 = !DILocation(line: 361, column: 10, scope: !294)
!297 = !DILocation(line: 361, column: 3, scope: !294)
!298 = !DILocation(line: 365, column: 30, scope: !246)
!299 = !DILocation(line: 365, column: 10, scope: !246)
!300 = !DILocation(line: 365, column: 8, scope: !246)
!301 = !DILocation(line: 366, column: 13, scope: !246)
!302 = !DILocation(line: 366, column: 7, scope: !246)
!303 = !DILocation(line: 366, column: 5, scope: !246)
!304 = !DILocation(line: 367, column: 8, scope: !246)
!305 = !DILocation(line: 367, column: 2, scope: !246)
!306 = !DILocation(line: 368, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !246, file: !66, line: 368, column: 6)
!308 = !DILocation(line: 368, column: 6, scope: !246)
!309 = !DILocation(line: 369, column: 10, scope: !307)
!310 = !DILocation(line: 369, column: 3, scope: !307)
!311 = !DILocation(line: 371, column: 2, scope: !246)
!312 = !DILocation(line: 372, column: 1, scope: !246)
!313 = distinct !DISubprogram(name: "pathjoin", scope: !66, file: !66, line: 317, type: !314, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!314 = !DISubroutineType(types: !315)
!315 = !{!97, !89, !89}
!316 = !DILocalVariable(name: "a", arg: 1, scope: !313, file: !66, line: 317, type: !89)
!317 = !DILocation(line: 317, column: 22, scope: !313)
!318 = !DILocalVariable(name: "b", arg: 2, scope: !313, file: !66, line: 317, type: !89)
!319 = !DILocation(line: 317, column: 37, scope: !313)
!320 = !DILocalVariable(name: "result", scope: !313, file: !66, line: 319, type: !97)
!321 = !DILocation(line: 319, column: 8, scope: !313)
!322 = !DILocation(line: 320, column: 11, scope: !313)
!323 = !DILocation(line: 320, column: 9, scope: !313)
!324 = !DILocation(line: 322, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !313, file: !66, line: 322, column: 6)
!326 = !DILocation(line: 322, column: 11, scope: !325)
!327 = !DILocation(line: 322, column: 6, scope: !313)
!328 = !DILocation(line: 324, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !66, line: 323, column: 2)
!330 = !DILocation(line: 324, column: 19, scope: !329)
!331 = !DILocation(line: 324, column: 3, scope: !329)
!332 = !DILocation(line: 325, column: 2, scope: !329)
!333 = !DILocation(line: 328, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !325, file: !66, line: 327, column: 2)
!335 = !DILocation(line: 328, column: 19, scope: !334)
!336 = !DILocation(line: 328, column: 3, scope: !334)
!337 = !DILocation(line: 329, column: 10, scope: !334)
!338 = !DILocation(line: 329, column: 3, scope: !334)
!339 = !DILocation(line: 330, column: 11, scope: !334)
!340 = !DILocation(line: 330, column: 19, scope: !334)
!341 = !DILocation(line: 330, column: 3, scope: !334)
!342 = !DILocation(line: 332, column: 9, scope: !313)
!343 = !DILocation(line: 332, column: 2, scope: !313)
!344 = distinct !DISubprogram(name: "xkeymap_init", scope: !66, file: !66, line: 544, type: !345, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!345 = !DISubroutineType(types: !346)
!346 = !{null}
!347 = !DILocalVariable(name: "max_keycode", scope: !344, file: !66, line: 546, type: !41)
!348 = !DILocation(line: 546, column: 15, scope: !344)
!349 = !DILocation(line: 548, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !66, line: 548, column: 6)
!351 = !DILocation(line: 548, column: 6, scope: !344)
!352 = !DILocation(line: 550, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !66, line: 550, column: 7)
!354 = distinct !DILexicalBlock(scope: !350, file: !66, line: 549, column: 2)
!355 = !DILocation(line: 550, column: 7, scope: !354)
!356 = !DILocation(line: 551, column: 18, scope: !353)
!357 = !DILocation(line: 551, column: 4, scope: !353)
!358 = !DILocation(line: 552, column: 2, scope: !354)
!359 = !DILocation(line: 554, column: 19, scope: !344)
!360 = !DILocation(line: 554, column: 2, scope: !344)
!361 = !DILocation(line: 555, column: 1, scope: !344)
!362 = distinct !DISubprogram(name: "xkeymap_read", scope: !66, file: !66, line: 375, type: !363, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!363 = !DISubroutineType(types: !364)
!364 = !{!67, !97}
!365 = !DILocalVariable(name: "mapname", arg: 1, scope: !362, file: !66, line: 375, type: !97)
!366 = !DILocation(line: 375, column: 20, scope: !362)
!367 = !DILocalVariable(name: "fp", scope: !362, file: !66, line: 377, type: !102)
!368 = !DILocation(line: 377, column: 8, scope: !362)
!369 = !DILocalVariable(name: "line", scope: !362, file: !66, line: 378, type: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, align: 8, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 80)
!373 = !DILocation(line: 378, column: 7, scope: !362)
!374 = !DILocalVariable(name: "line_num", scope: !362, file: !66, line: 379, type: !41)
!375 = !DILocation(line: 379, column: 15, scope: !362)
!376 = !DILocalVariable(name: "line_length", scope: !362, file: !66, line: 380, type: !41)
!377 = !DILocation(line: 380, column: 15, scope: !362)
!378 = !DILocalVariable(name: "keyname", scope: !362, file: !66, line: 381, type: !97)
!379 = !DILocation(line: 381, column: 8, scope: !362)
!380 = !DILocalVariable(name: "p", scope: !362, file: !66, line: 381, type: !97)
!381 = !DILocation(line: 381, column: 18, scope: !362)
!382 = !DILocalVariable(name: "line_rest", scope: !362, file: !66, line: 382, type: !97)
!383 = !DILocation(line: 382, column: 8, scope: !362)
!384 = !DILocalVariable(name: "scancode", scope: !362, file: !66, line: 383, type: !47)
!385 = !DILocation(line: 383, column: 8, scope: !362)
!386 = !DILocalVariable(name: "modifiers", scope: !362, file: !66, line: 384, type: !50)
!387 = !DILocation(line: 384, column: 9, scope: !362)
!388 = !DILocation(line: 386, column: 20, scope: !362)
!389 = !DILocation(line: 386, column: 7, scope: !362)
!390 = !DILocation(line: 386, column: 5, scope: !362)
!391 = !DILocation(line: 387, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !362, file: !66, line: 387, column: 6)
!393 = !DILocation(line: 387, column: 9, scope: !392)
!394 = !DILocation(line: 387, column: 6, scope: !362)
!395 = !DILocation(line: 389, column: 71, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !66, line: 388, column: 2)
!397 = !DILocation(line: 389, column: 3, scope: !396)
!398 = !DILocation(line: 390, column: 3, scope: !396)
!399 = !DILocation(line: 394, column: 2, scope: !362)
!400 = !DILocation(line: 394, column: 15, scope: !401)
!401 = !DILexicalBlockFile(scope: !362, file: !66, discriminator: 1)
!402 = !DILocation(line: 394, column: 35, scope: !401)
!403 = !DILocation(line: 394, column: 9, scope: !401)
!404 = !DILocation(line: 394, column: 39, scope: !401)
!405 = !DILocation(line: 394, column: 2, scope: !401)
!406 = !DILocation(line: 396, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !362, file: !66, line: 395, column: 2)
!408 = !DILocation(line: 399, column: 14, scope: !407)
!409 = !DILocation(line: 399, column: 7, scope: !407)
!410 = !DILocation(line: 399, column: 5, scope: !407)
!411 = !DILocation(line: 400, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !66, line: 400, column: 7)
!413 = !DILocation(line: 400, column: 9, scope: !412)
!414 = !DILocation(line: 400, column: 7, scope: !407)
!415 = !DILocation(line: 401, column: 5, scope: !412)
!416 = !DILocation(line: 401, column: 7, scope: !412)
!417 = !DILocation(line: 401, column: 4, scope: !412)
!418 = !DILocation(line: 403, column: 24, scope: !407)
!419 = !DILocation(line: 403, column: 17, scope: !407)
!420 = !DILocation(line: 403, column: 15, scope: !407)
!421 = !DILocation(line: 406, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !407, file: !66, line: 406, column: 7)
!423 = !DILocation(line: 406, column: 7, scope: !422)
!424 = !DILocation(line: 406, column: 38, scope: !422)
!425 = !DILocation(line: 406, column: 35, scope: !422)
!426 = !DILocation(line: 406, column: 7, scope: !407)
!427 = !DILocation(line: 408, column: 4, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !66, line: 407, column: 3)
!429 = distinct !{!429, !399}
!430 = !DILocation(line: 412, column: 22, scope: !431)
!431 = distinct !DILexicalBlock(scope: !407, file: !66, line: 412, column: 7)
!432 = !DILocation(line: 412, column: 7, scope: !431)
!433 = !DILocation(line: 412, column: 7, scope: !407)
!434 = !DILocation(line: 414, column: 22, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !66, line: 414, column: 8)
!436 = distinct !DILexicalBlock(scope: !431, file: !66, line: 413, column: 3)
!437 = !DILocation(line: 414, column: 27, scope: !435)
!438 = !DILocation(line: 414, column: 48, scope: !435)
!439 = !DILocation(line: 414, column: 9, scope: !435)
!440 = !DILocation(line: 414, column: 8, scope: !436)
!441 = !DILocation(line: 415, column: 5, scope: !435)
!442 = !DILocation(line: 416, column: 4, scope: !436)
!443 = !DILocation(line: 420, column: 22, scope: !444)
!444 = distinct !DILexicalBlock(scope: !407, file: !66, line: 420, column: 7)
!445 = !DILocation(line: 420, column: 7, scope: !444)
!446 = !DILocation(line: 420, column: 7, scope: !407)
!447 = !DILocation(line: 422, column: 26, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !66, line: 421, column: 3)
!449 = !DILocation(line: 422, column: 31, scope: !448)
!450 = !DILocation(line: 422, column: 48, scope: !448)
!451 = !DILocation(line: 422, column: 18, scope: !448)
!452 = !DILocation(line: 422, column: 16, scope: !448)
!453 = !DILocation(line: 423, column: 62, scope: !448)
!454 = !DILocation(line: 423, column: 4, scope: !448)
!455 = !DILocation(line: 424, column: 4, scope: !448)
!456 = !DILocation(line: 428, column: 22, scope: !457)
!457 = distinct !DILexicalBlock(scope: !407, file: !66, line: 428, column: 7)
!458 = !DILocation(line: 428, column: 7, scope: !457)
!459 = !DILocation(line: 428, column: 7, scope: !407)
!460 = !DILocation(line: 430, column: 4, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !66, line: 429, column: 3)
!462 = !DILocation(line: 431, column: 21, scope: !461)
!463 = !DILocation(line: 432, column: 4, scope: !461)
!464 = !DILocation(line: 436, column: 22, scope: !465)
!465 = distinct !DILexicalBlock(scope: !407, file: !66, line: 436, column: 7)
!466 = !DILocation(line: 436, column: 7, scope: !465)
!467 = !DILocation(line: 436, column: 7, scope: !407)
!468 = !DILocation(line: 438, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !66, line: 437, column: 3)
!470 = !DILocation(line: 438, column: 22, scope: !469)
!471 = !DILocation(line: 438, column: 43, scope: !469)
!472 = !DILocation(line: 438, column: 48, scope: !469)
!473 = !DILocation(line: 438, column: 4, scope: !469)
!474 = !DILocation(line: 439, column: 4, scope: !469)
!475 = !DILocation(line: 443, column: 22, scope: !476)
!476 = distinct !DILexicalBlock(scope: !407, file: !66, line: 443, column: 7)
!477 = !DILocation(line: 443, column: 7, scope: !476)
!478 = !DILocation(line: 443, column: 7, scope: !407)
!479 = !DILocation(line: 445, column: 29, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !66, line: 444, column: 3)
!481 = !DILocation(line: 445, column: 34, scope: !480)
!482 = !DILocation(line: 445, column: 61, scope: !480)
!483 = !DILocation(line: 445, column: 22, scope: !480)
!484 = !DILocation(line: 445, column: 20, scope: !480)
!485 = !DILocation(line: 447, column: 11, scope: !480)
!486 = !DILocation(line: 446, column: 4, scope: !480)
!487 = !DILocation(line: 448, column: 4, scope: !480)
!488 = !DILocation(line: 452, column: 22, scope: !489)
!489 = distinct !DILexicalBlock(scope: !407, file: !66, line: 452, column: 7)
!490 = !DILocation(line: 452, column: 7, scope: !489)
!491 = !DILocation(line: 452, column: 7, scope: !407)
!492 = !DILocation(line: 455, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !66, line: 453, column: 3)
!494 = !DILocation(line: 455, column: 17, scope: !493)
!495 = !DILocation(line: 455, column: 47, scope: !493)
!496 = !DILocation(line: 455, column: 5, scope: !493)
!497 = !DILocation(line: 454, column: 23, scope: !493)
!498 = !DILocation(line: 457, column: 11, scope: !493)
!499 = !DILocation(line: 456, column: 4, scope: !493)
!500 = !DILocation(line: 458, column: 4, scope: !493)
!501 = !DILocation(line: 462, column: 22, scope: !502)
!502 = distinct !DILexicalBlock(scope: !407, file: !66, line: 462, column: 7)
!503 = !DILocation(line: 462, column: 7, scope: !502)
!504 = !DILocation(line: 462, column: 7, scope: !407)
!505 = !DILocation(line: 465, column: 12, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !66, line: 463, column: 3)
!507 = !DILocation(line: 465, column: 17, scope: !506)
!508 = !DILocation(line: 465, column: 52, scope: !506)
!509 = !DILocation(line: 465, column: 5, scope: !506)
!510 = !DILocation(line: 464, column: 28, scope: !506)
!511 = !DILocation(line: 467, column: 11, scope: !506)
!512 = !DILocation(line: 466, column: 4, scope: !506)
!513 = !DILocation(line: 468, column: 4, scope: !506)
!514 = !DILocation(line: 472, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !407, file: !66, line: 472, column: 7)
!516 = !DILocation(line: 472, column: 15, scope: !515)
!517 = !DILocation(line: 472, column: 7, scope: !407)
!518 = !DILocation(line: 474, column: 4, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !66, line: 473, column: 3)
!520 = !DILocation(line: 478, column: 13, scope: !407)
!521 = !DILocation(line: 478, column: 11, scope: !407)
!522 = !DILocation(line: 479, column: 14, scope: !407)
!523 = !DILocation(line: 479, column: 7, scope: !407)
!524 = !DILocation(line: 479, column: 5, scope: !407)
!525 = !DILocation(line: 480, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !407, file: !66, line: 480, column: 7)
!527 = !DILocation(line: 480, column: 9, scope: !526)
!528 = !DILocation(line: 480, column: 7, scope: !407)
!529 = !DILocation(line: 483, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !66, line: 481, column: 3)
!531 = !DILocation(line: 483, column: 21, scope: !530)
!532 = !DILocation(line: 482, column: 4, scope: !530)
!533 = !DILocation(line: 484, column: 4, scope: !530)
!534 = !DILocation(line: 488, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !526, file: !66, line: 487, column: 3)
!536 = !DILocation(line: 488, column: 7, scope: !535)
!537 = !DILocation(line: 492, column: 4, scope: !407)
!538 = !DILocation(line: 493, column: 21, scope: !407)
!539 = !DILocation(line: 493, column: 14, scope: !407)
!540 = !DILocation(line: 493, column: 12, scope: !407)
!541 = !DILocation(line: 498, column: 13, scope: !407)
!542 = !DILocation(line: 499, column: 14, scope: !543)
!543 = distinct !DILexicalBlock(scope: !407, file: !66, line: 499, column: 7)
!544 = !DILocation(line: 499, column: 7, scope: !543)
!545 = !DILocation(line: 499, column: 7, scope: !407)
!546 = !DILocation(line: 501, column: 15, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !66, line: 500, column: 3)
!548 = !DILocation(line: 502, column: 3, scope: !547)
!549 = !DILocation(line: 504, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !407, file: !66, line: 504, column: 7)
!551 = !DILocation(line: 504, column: 7, scope: !550)
!552 = !DILocation(line: 504, column: 7, scope: !407)
!553 = !DILocation(line: 506, column: 15, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !66, line: 505, column: 3)
!555 = !DILocation(line: 507, column: 3, scope: !554)
!556 = !DILocation(line: 509, column: 14, scope: !557)
!557 = distinct !DILexicalBlock(scope: !407, file: !66, line: 509, column: 7)
!558 = !DILocation(line: 509, column: 7, scope: !557)
!559 = !DILocation(line: 509, column: 7, scope: !407)
!560 = !DILocation(line: 511, column: 15, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !66, line: 510, column: 3)
!562 = !DILocation(line: 512, column: 3, scope: !561)
!563 = !DILocation(line: 514, column: 14, scope: !564)
!564 = distinct !DILexicalBlock(scope: !407, file: !66, line: 514, column: 7)
!565 = !DILocation(line: 514, column: 7, scope: !564)
!566 = !DILocation(line: 514, column: 7, scope: !407)
!567 = !DILocation(line: 516, column: 15, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !66, line: 515, column: 3)
!569 = !DILocation(line: 517, column: 3, scope: !568)
!570 = !DILocation(line: 519, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !407, file: !66, line: 519, column: 7)
!572 = !DILocation(line: 519, column: 7, scope: !571)
!573 = !DILocation(line: 519, column: 7, scope: !407)
!574 = !DILocation(line: 521, column: 15, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !66, line: 520, column: 3)
!576 = !DILocation(line: 522, column: 3, scope: !575)
!577 = !DILocation(line: 524, column: 17, scope: !407)
!578 = !DILocation(line: 524, column: 26, scope: !407)
!579 = !DILocation(line: 524, column: 36, scope: !407)
!580 = !DILocation(line: 524, column: 47, scope: !407)
!581 = !DILocation(line: 524, column: 3, scope: !407)
!582 = !DILocation(line: 526, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !407, file: !66, line: 526, column: 7)
!584 = !DILocation(line: 526, column: 7, scope: !583)
!585 = !DILocation(line: 526, column: 7, scope: !407)
!586 = !DILocation(line: 530, column: 13, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !66, line: 530, column: 4)
!588 = distinct !DILexicalBlock(scope: !583, file: !66, line: 527, column: 3)
!589 = !DILocation(line: 530, column: 11, scope: !587)
!590 = !DILocation(line: 530, column: 9, scope: !587)
!591 = !DILocation(line: 530, column: 23, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !66, discriminator: 1)
!593 = distinct !DILexicalBlock(scope: !587, file: !66, line: 530, column: 4)
!594 = !DILocation(line: 530, column: 22, scope: !592)
!595 = !DILocation(line: 530, column: 4, scope: !592)
!596 = !DILocation(line: 531, column: 25, scope: !593)
!597 = !DILocation(line: 531, column: 24, scope: !593)
!598 = !DILocation(line: 531, column: 18, scope: !593)
!599 = !DILocation(line: 531, column: 10, scope: !593)
!600 = !DILocation(line: 531, column: 6, scope: !593)
!601 = !DILocation(line: 531, column: 8, scope: !593)
!602 = !DILocation(line: 531, column: 5, scope: !593)
!603 = !DILocation(line: 530, column: 27, scope: !604)
!604 = !DILexicalBlockFile(scope: !593, file: !66, discriminator: 2)
!605 = !DILocation(line: 530, column: 4, scope: !604)
!606 = distinct !{!606, !607}
!607 = !DILocation(line: 530, column: 4, scope: !588)
!608 = !DILocation(line: 532, column: 15, scope: !588)
!609 = !DILocation(line: 533, column: 18, scope: !588)
!610 = !DILocation(line: 533, column: 27, scope: !588)
!611 = !DILocation(line: 533, column: 37, scope: !588)
!612 = !DILocation(line: 533, column: 48, scope: !588)
!613 = !DILocation(line: 533, column: 4, scope: !588)
!614 = !DILocation(line: 534, column: 3, scope: !588)
!615 = !DILocation(line: 394, column: 2, scope: !616)
!616 = !DILexicalBlockFile(scope: !362, file: !66, discriminator: 2)
!617 = !DILocation(line: 537, column: 9, scope: !362)
!618 = !DILocation(line: 537, column: 2, scope: !362)
!619 = !DILocation(line: 538, column: 2, scope: !362)
!620 = !DILocation(line: 539, column: 1, scope: !362)
!621 = distinct !DISubprogram(name: "set_keypress_keysym", scope: !66, file: !66, line: 608, type: !622, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !41, !70}
!624 = !DILocalVariable(name: "keycode", arg: 1, scope: !621, file: !66, line: 608, type: !41)
!625 = !DILocation(line: 608, column: 34, scope: !621)
!626 = !DILocalVariable(name: "keysym", arg: 2, scope: !621, file: !66, line: 608, type: !70)
!627 = !DILocation(line: 608, column: 50, scope: !621)
!628 = !DILocation(line: 610, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !66, line: 610, column: 6)
!630 = !DILocation(line: 610, column: 14, scope: !629)
!631 = !DILocation(line: 610, column: 18, scope: !629)
!632 = !DILocation(line: 610, column: 21, scope: !633)
!633 = !DILexicalBlockFile(scope: !629, file: !66, discriminator: 1)
!634 = !DILocation(line: 610, column: 29, scope: !633)
!635 = !DILocation(line: 610, column: 6, scope: !633)
!636 = !DILocation(line: 611, column: 3, scope: !629)
!637 = !DILocation(line: 612, column: 30, scope: !621)
!638 = !DILocation(line: 612, column: 19, scope: !621)
!639 = !DILocation(line: 612, column: 2, scope: !621)
!640 = !DILocation(line: 612, column: 28, scope: !621)
!641 = !DILocation(line: 613, column: 1, scope: !621)
!642 = !DILocation(line: 613, column: 1, scope: !643)
!643 = !DILexicalBlockFile(scope: !621, file: !66, discriminator: 1)
!644 = distinct !DISubprogram(name: "reset_keypress_keysym", scope: !66, file: !66, line: 617, type: !645, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!645 = !DISubroutineType(types: !646)
!646 = !{!70, !41, !70}
!647 = !DILocalVariable(name: "keycode", arg: 1, scope: !644, file: !66, line: 617, type: !41)
!648 = !DILocation(line: 617, column: 36, scope: !644)
!649 = !DILocalVariable(name: "keysym", arg: 2, scope: !644, file: !66, line: 617, type: !70)
!650 = !DILocation(line: 617, column: 52, scope: !644)
!651 = !DILocalVariable(name: "ks", scope: !644, file: !66, line: 619, type: !70)
!652 = !DILocation(line: 619, column: 9, scope: !644)
!653 = !DILocation(line: 620, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !66, line: 620, column: 6)
!655 = !DILocation(line: 620, column: 14, scope: !654)
!656 = !DILocation(line: 620, column: 18, scope: !654)
!657 = !DILocation(line: 620, column: 21, scope: !658)
!658 = !DILexicalBlockFile(scope: !654, file: !66, discriminator: 1)
!659 = !DILocation(line: 620, column: 29, scope: !658)
!660 = !DILocation(line: 620, column: 6, scope: !658)
!661 = !DILocation(line: 621, column: 10, scope: !654)
!662 = !DILocation(line: 621, column: 3, scope: !654)
!663 = !DILocation(line: 622, column: 24, scope: !644)
!664 = !DILocation(line: 622, column: 7, scope: !644)
!665 = !DILocation(line: 622, column: 5, scope: !644)
!666 = !DILocation(line: 623, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !644, file: !66, line: 623, column: 6)
!668 = !DILocation(line: 623, column: 9, scope: !667)
!669 = !DILocation(line: 623, column: 6, scope: !644)
!670 = !DILocation(line: 625, column: 20, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !66, line: 624, column: 2)
!672 = !DILocation(line: 625, column: 3, scope: !671)
!673 = !DILocation(line: 625, column: 29, scope: !671)
!674 = !DILocation(line: 626, column: 2, scope: !671)
!675 = !DILocation(line: 629, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !667, file: !66, line: 628, column: 2)
!677 = !DILocation(line: 629, column: 6, scope: !676)
!678 = !DILocation(line: 632, column: 9, scope: !644)
!679 = !DILocation(line: 632, column: 2, scope: !644)
!680 = !DILocation(line: 633, column: 1, scope: !644)
!681 = distinct !DISubprogram(name: "handle_special_keys", scope: !66, file: !66, line: 638, type: !682, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!682 = !DISubroutineType(types: !683)
!683 = !{!67, !53, !41, !53, !67}
!684 = !DILocalVariable(name: "keysym", arg: 1, scope: !681, file: !66, line: 638, type: !53)
!685 = !DILocation(line: 638, column: 28, scope: !681)
!686 = !DILocalVariable(name: "state", arg: 2, scope: !681, file: !66, line: 638, type: !41)
!687 = !DILocation(line: 638, column: 49, scope: !681)
!688 = !DILocalVariable(name: "ev_time", arg: 3, scope: !681, file: !66, line: 638, type: !53)
!689 = !DILocation(line: 638, column: 63, scope: !681)
!690 = !DILocalVariable(name: "pressed", arg: 4, scope: !681, file: !66, line: 638, type: !67)
!691 = !DILocation(line: 638, column: 80, scope: !681)
!692 = !DILocation(line: 640, column: 10, scope: !681)
!693 = !DILocation(line: 640, column: 2, scope: !681)
!694 = !DILocation(line: 643, column: 23, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !66, line: 643, column: 8)
!696 = distinct !DILexicalBlock(scope: !681, file: !66, line: 641, column: 2)
!697 = !DILocation(line: 643, column: 9, scope: !695)
!698 = !DILocation(line: 643, column: 39, scope: !695)
!699 = !DILocation(line: 643, column: 56, scope: !700)
!700 = !DILexicalBlockFile(scope: !695, file: !66, discriminator: 1)
!701 = !DILocation(line: 643, column: 42, scope: !700)
!702 = !DILocation(line: 644, column: 8, scope: !695)
!703 = !DILocation(line: 644, column: 26, scope: !700)
!704 = !DILocation(line: 644, column: 12, scope: !700)
!705 = !DILocation(line: 645, column: 5, scope: !695)
!706 = !DILocation(line: 645, column: 22, scope: !700)
!707 = !DILocation(line: 645, column: 8, scope: !700)
!708 = !DILocation(line: 643, column: 8, scope: !709)
!709 = !DILexicalBlockFile(scope: !696, file: !66, discriminator: 2)
!710 = !DILocation(line: 648, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !66, line: 648, column: 9)
!712 = distinct !DILexicalBlock(scope: !695, file: !66, line: 646, column: 4)
!713 = !DILocation(line: 648, column: 9, scope: !712)
!714 = !DILocation(line: 650, column: 11, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !66, line: 650, column: 10)
!716 = distinct !DILexicalBlock(scope: !711, file: !66, line: 649, column: 5)
!717 = !DILocation(line: 650, column: 10, scope: !716)
!718 = !DILocation(line: 654, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !66, line: 651, column: 6)
!720 = !DILocation(line: 655, column: 6, scope: !719)
!721 = !DILocation(line: 660, column: 11, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !66, line: 660, column: 11)
!723 = distinct !DILexicalBlock(scope: !715, file: !66, line: 657, column: 6)
!724 = !DILocation(line: 660, column: 11, scope: !723)
!725 = !DILocation(line: 661, column: 8, scope: !722)
!726 = !DILocation(line: 663, column: 5, scope: !716)
!727 = !DILocation(line: 664, column: 5, scope: !712)
!728 = !DILocation(line: 666, column: 4, scope: !696)
!729 = !DILocation(line: 670, column: 8, scope: !730)
!730 = distinct !DILexicalBlock(scope: !696, file: !66, line: 670, column: 8)
!731 = !DILocation(line: 670, column: 8, scope: !696)
!732 = !DILocation(line: 672, column: 23, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !66, line: 671, column: 4)
!734 = !DILocation(line: 672, column: 5, scope: !733)
!735 = !DILocation(line: 674, column: 23, scope: !733)
!736 = !DILocation(line: 674, column: 5, scope: !733)
!737 = !DILocation(line: 676, column: 4, scope: !733)
!738 = !DILocation(line: 678, column: 4, scope: !696)
!739 = !DILocation(line: 689, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !696, file: !66, line: 689, column: 8)
!741 = !DILocation(line: 689, column: 8, scope: !696)
!742 = !DILocation(line: 691, column: 20, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !66, line: 690, column: 4)
!744 = !DILocation(line: 691, column: 5, scope: !743)
!745 = !DILocation(line: 693, column: 20, scope: !743)
!746 = !DILocation(line: 693, column: 5, scope: !743)
!747 = !DILocation(line: 694, column: 20, scope: !743)
!748 = !DILocation(line: 694, column: 5, scope: !743)
!749 = !DILocation(line: 696, column: 20, scope: !743)
!750 = !DILocation(line: 696, column: 5, scope: !743)
!751 = !DILocation(line: 698, column: 4, scope: !743)
!752 = !DILocation(line: 699, column: 4, scope: !696)
!753 = !DILocation(line: 705, column: 16, scope: !696)
!754 = !DILocation(line: 705, column: 25, scope: !696)
!755 = !DILocation(line: 705, column: 4, scope: !696)
!756 = !DILocation(line: 706, column: 4, scope: !696)
!757 = !DILocation(line: 712, column: 16, scope: !696)
!758 = !DILocation(line: 712, column: 25, scope: !696)
!759 = !DILocation(line: 712, column: 4, scope: !696)
!760 = !DILocation(line: 713, column: 4, scope: !696)
!761 = !DILocation(line: 718, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !696, file: !66, line: 718, column: 8)
!763 = !DILocation(line: 719, column: 8, scope: !762)
!764 = !DILocation(line: 719, column: 26, scope: !765)
!765 = !DILexicalBlockFile(scope: !762, file: !66, discriminator: 1)
!766 = !DILocation(line: 719, column: 12, scope: !765)
!767 = !DILocation(line: 719, column: 42, scope: !765)
!768 = !DILocation(line: 719, column: 59, scope: !769)
!769 = !DILexicalBlockFile(scope: !762, file: !66, discriminator: 2)
!770 = !DILocation(line: 719, column: 45, scope: !769)
!771 = !DILocation(line: 718, column: 8, scope: !772)
!772 = !DILexicalBlockFile(scope: !696, file: !66, discriminator: 1)
!773 = !DILocation(line: 720, column: 5, scope: !762)
!774 = !DILocation(line: 721, column: 4, scope: !696)
!775 = !DILocation(line: 725, column: 8, scope: !776)
!776 = distinct !DILexicalBlock(scope: !696, file: !66, line: 725, column: 8)
!777 = !DILocation(line: 725, column: 23, scope: !776)
!778 = !DILocation(line: 725, column: 27, scope: !779)
!779 = !DILexicalBlockFile(scope: !776, file: !66, discriminator: 1)
!780 = !DILocation(line: 725, column: 8, scope: !779)
!781 = !DILocation(line: 727, column: 34, scope: !776)
!782 = !DILocation(line: 727, column: 13, scope: !779)
!783 = !DILocation(line: 726, column: 5, scope: !776)
!784 = !DILocation(line: 730, column: 4, scope: !696)
!785 = !DILocation(line: 734, column: 8, scope: !786)
!786 = distinct !DILexicalBlock(scope: !696, file: !66, line: 734, column: 8)
!787 = !DILocation(line: 734, column: 8, scope: !696)
!788 = !DILocation(line: 735, column: 5, scope: !786)
!789 = !DILocation(line: 736, column: 4, scope: !696)
!790 = !DILocation(line: 739, column: 2, scope: !681)
!791 = !DILocation(line: 740, column: 1, scope: !681)
!792 = distinct !DISubprogram(name: "rdp_send_scancode", scope: !66, file: !66, line: 1161, type: !793, isLocal: false, isDefinition: true, scopeLine: 1162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !53, !50, !47}
!795 = !DILocalVariable(name: "time", arg: 1, scope: !792, file: !66, line: 1161, type: !53)
!796 = !DILocation(line: 1161, column: 26, scope: !792)
!797 = !DILocalVariable(name: "flags", arg: 2, scope: !792, file: !66, line: 1161, type: !50)
!798 = !DILocation(line: 1161, column: 39, scope: !792)
!799 = !DILocalVariable(name: "scancode", arg: 3, scope: !792, file: !66, line: 1161, type: !47)
!800 = !DILocation(line: 1161, column: 52, scope: !792)
!801 = !DILocation(line: 1163, column: 24, scope: !792)
!802 = !DILocation(line: 1163, column: 36, scope: !792)
!803 = !DILocation(line: 1163, column: 42, scope: !792)
!804 = !DILocation(line: 1163, column: 34, scope: !792)
!805 = !DILocation(line: 1163, column: 2, scope: !792)
!806 = !DILocation(line: 1165, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !792, file: !66, line: 1165, column: 6)
!808 = !DILocation(line: 1165, column: 15, scope: !807)
!809 = !DILocation(line: 1165, column: 6, scope: !792)
!810 = !DILocation(line: 1169, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !66, line: 1166, column: 2)
!812 = !DILocation(line: 1169, column: 19, scope: !811)
!813 = !DILocation(line: 1169, column: 28, scope: !811)
!814 = !DILocation(line: 1167, column: 3, scope: !811)
!815 = !DILocation(line: 1170, column: 18, scope: !811)
!816 = !DILocation(line: 1170, column: 44, scope: !811)
!817 = !DILocation(line: 1170, column: 50, scope: !811)
!818 = !DILocation(line: 1171, column: 11, scope: !811)
!819 = !DILocation(line: 1171, column: 20, scope: !811)
!820 = !DILocation(line: 1170, column: 3, scope: !811)
!821 = !DILocation(line: 1172, column: 2, scope: !811)
!822 = !DILocation(line: 1176, column: 10, scope: !823)
!823 = distinct !DILexicalBlock(scope: !807, file: !66, line: 1174, column: 2)
!824 = !DILocation(line: 1176, column: 20, scope: !823)
!825 = !DILocation(line: 1175, column: 3, scope: !823)
!826 = !DILocation(line: 1177, column: 18, scope: !823)
!827 = !DILocation(line: 1177, column: 44, scope: !823)
!828 = !DILocation(line: 1177, column: 51, scope: !823)
!829 = !DILocation(line: 1177, column: 3, scope: !823)
!830 = !DILocation(line: 1179, column: 1, scope: !792)
!831 = distinct !DISubprogram(name: "send_winkey", scope: !66, file: !66, line: 558, type: !832, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !53, !67, !67}
!834 = !DILocalVariable(name: "ev_time", arg: 1, scope: !831, file: !66, line: 558, type: !53)
!835 = !DILocation(line: 558, column: 20, scope: !831)
!836 = !DILocalVariable(name: "pressed", arg: 2, scope: !831, file: !66, line: 558, type: !67)
!837 = !DILocation(line: 558, column: 37, scope: !831)
!838 = !DILocalVariable(name: "leftkey", arg: 3, scope: !831, file: !66, line: 558, type: !67)
!839 = !DILocation(line: 558, column: 54, scope: !831)
!840 = !DILocalVariable(name: "winkey", scope: !831, file: !66, line: 560, type: !47)
!841 = !DILocation(line: 560, column: 8, scope: !831)
!842 = !DILocation(line: 562, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !831, file: !66, line: 562, column: 6)
!844 = !DILocation(line: 562, column: 6, scope: !831)
!845 = !DILocation(line: 563, column: 10, scope: !843)
!846 = !DILocation(line: 563, column: 3, scope: !843)
!847 = !DILocation(line: 565, column: 10, scope: !843)
!848 = !DILocation(line: 567, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !831, file: !66, line: 567, column: 6)
!850 = !DILocation(line: 567, column: 6, scope: !831)
!851 = !DILocation(line: 569, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !66, line: 569, column: 7)
!853 = distinct !DILexicalBlock(scope: !849, file: !66, line: 568, column: 2)
!854 = !DILocation(line: 569, column: 21, scope: !852)
!855 = !DILocation(line: 569, column: 7, scope: !853)
!856 = !DILocation(line: 571, column: 22, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !66, line: 570, column: 3)
!858 = !DILocation(line: 571, column: 34, scope: !857)
!859 = !DILocation(line: 571, column: 4, scope: !857)
!860 = !DILocation(line: 572, column: 3, scope: !857)
!861 = !DILocation(line: 576, column: 22, scope: !862)
!862 = distinct !DILexicalBlock(scope: !852, file: !66, line: 574, column: 3)
!863 = !DILocation(line: 576, column: 4, scope: !862)
!864 = !DILocation(line: 577, column: 22, scope: !862)
!865 = !DILocation(line: 577, column: 4, scope: !862)
!866 = !DILocation(line: 579, column: 2, scope: !853)
!867 = !DILocation(line: 583, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !66, line: 583, column: 7)
!869 = distinct !DILexicalBlock(scope: !849, file: !66, line: 581, column: 2)
!870 = !DILocation(line: 583, column: 21, scope: !868)
!871 = !DILocation(line: 583, column: 7, scope: !869)
!872 = !DILocation(line: 585, column: 22, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !66, line: 584, column: 3)
!874 = !DILocation(line: 585, column: 50, scope: !873)
!875 = !DILocation(line: 585, column: 4, scope: !873)
!876 = !DILocation(line: 586, column: 3, scope: !873)
!877 = !DILocation(line: 589, column: 22, scope: !878)
!878 = distinct !DILexicalBlock(scope: !868, file: !66, line: 588, column: 3)
!879 = !DILocation(line: 589, column: 4, scope: !878)
!880 = !DILocation(line: 590, column: 22, scope: !878)
!881 = !DILocation(line: 590, column: 4, scope: !878)
!882 = !DILocation(line: 593, column: 1, scope: !831)
!883 = distinct !DISubprogram(name: "ui_get_numlock_state", scope: !66, file: !66, line: 1051, type: !884, isLocal: false, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!884 = !DISubroutineType(types: !885)
!885 = !{!50, !41}
!886 = !DILocalVariable(name: "state", arg: 1, scope: !883, file: !66, line: 1051, type: !41)
!887 = !DILocation(line: 1051, column: 35, scope: !883)
!888 = !DILocalVariable(name: "numlock_state", scope: !883, file: !66, line: 1053, type: !50)
!889 = !DILocation(line: 1053, column: 9, scope: !883)
!890 = !DILocation(line: 1055, column: 20, scope: !891)
!891 = distinct !DILexicalBlock(scope: !883, file: !66, line: 1055, column: 6)
!892 = !DILocation(line: 1055, column: 6, scope: !891)
!893 = !DILocation(line: 1055, column: 6, scope: !883)
!894 = !DILocation(line: 1056, column: 17, scope: !891)
!895 = !DILocation(line: 1056, column: 3, scope: !891)
!896 = !DILocation(line: 1058, column: 9, scope: !883)
!897 = !DILocation(line: 1058, column: 2, scope: !883)
!898 = distinct !DISubprogram(name: "read_keyboard_state", scope: !66, file: !66, line: 1039, type: !899, isLocal: false, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!899 = !DISubroutineType(types: !900)
!900 = !{!41}
!901 = !DILocalVariable(name: "state", scope: !898, file: !66, line: 1041, type: !41)
!902 = !DILocation(line: 1041, column: 15, scope: !898)
!903 = !DILocalVariable(name: "wdummy", scope: !898, file: !66, line: 1042, type: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "Window", file: !71, line: 96, baseType: !72)
!905 = !DILocation(line: 1042, column: 9, scope: !898)
!906 = !DILocalVariable(name: "dummy", scope: !898, file: !66, line: 1043, type: !38)
!907 = !DILocation(line: 1043, column: 6, scope: !898)
!908 = !DILocation(line: 1045, column: 16, scope: !898)
!909 = !DILocation(line: 1045, column: 27, scope: !898)
!910 = !DILocation(line: 1045, column: 2, scope: !898)
!911 = !DILocation(line: 1046, column: 9, scope: !898)
!912 = !DILocation(line: 1046, column: 2, scope: !898)
!913 = distinct !DISubprogram(name: "xkeymap_translate_key", scope: !66, file: !66, line: 744, type: !914, isLocal: false, isDefinition: true, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!914 = !DISubroutineType(types: !915)
!915 = !{!43, !53, !41, !41}
!916 = !DILocalVariable(name: "keysym", arg: 1, scope: !913, file: !66, line: 744, type: !53)
!917 = !DILocation(line: 744, column: 30, scope: !913)
!918 = !DILocalVariable(name: "keycode", arg: 2, scope: !913, file: !66, line: 744, type: !41)
!919 = !DILocation(line: 744, column: 51, scope: !913)
!920 = !DILocalVariable(name: "state", arg: 3, scope: !913, file: !66, line: 744, type: !41)
!921 = !DILocation(line: 744, column: 73, scope: !913)
!922 = !DILocalVariable(name: "tr", scope: !913, file: !66, line: 746, type: !43)
!923 = !DILocation(line: 746, column: 18, scope: !913)
!924 = !DILocalVariable(name: "ptr", scope: !913, file: !66, line: 747, type: !42)
!925 = !DILocation(line: 747, column: 19, scope: !913)
!926 = !DILocalVariable(name: "entry", scope: !913, file: !66, line: 748, type: !56)
!927 = !DILocation(line: 748, column: 25, scope: !913)
!928 = !DILocation(line: 750, column: 36, scope: !913)
!929 = !DILocation(line: 750, column: 10, scope: !913)
!930 = !DILocation(line: 750, column: 8, scope: !913)
!931 = !DILocation(line: 751, column: 8, scope: !913)
!932 = !DILocation(line: 751, column: 16, scope: !933)
!933 = !DILexicalBlockFile(scope: !913, file: !66, discriminator: 1)
!934 = !DILocation(line: 751, column: 23, scope: !933)
!935 = !DILocation(line: 751, column: 8, scope: !933)
!936 = !DILocation(line: 751, column: 8, scope: !937)
!937 = !DILexicalBlockFile(scope: !913, file: !66, discriminator: 2)
!938 = !DILocation(line: 751, column: 8, scope: !939)
!939 = !DILexicalBlockFile(scope: !913, file: !66, discriminator: 3)
!940 = !DILocation(line: 751, column: 6, scope: !939)
!941 = !DILocation(line: 753, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !913, file: !66, line: 753, column: 6)
!943 = !DILocation(line: 753, column: 6, scope: !913)
!944 = !DILocation(line: 755, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !66, line: 754, column: 2)
!946 = !DILocation(line: 755, column: 8, scope: !945)
!947 = !DILocation(line: 756, column: 10, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !66, line: 756, column: 7)
!949 = !DILocation(line: 756, column: 21, scope: !948)
!950 = !DILocation(line: 756, column: 7, scope: !945)
!951 = !DILocation(line: 758, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !66, line: 758, column: 8)
!953 = distinct !DILexicalBlock(scope: !948, file: !66, line: 757, column: 3)
!954 = !DILocation(line: 758, column: 10, scope: !952)
!955 = !DILocation(line: 758, column: 23, scope: !952)
!956 = !DILocation(line: 758, column: 33, scope: !952)
!957 = !DILocation(line: 758, column: 8, scope: !953)
!958 = !DILocation(line: 760, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !66, line: 759, column: 4)
!960 = !DILocation(line: 761, column: 8, scope: !959)
!961 = !DILocation(line: 761, column: 17, scope: !959)
!962 = !DILocation(line: 762, column: 12, scope: !959)
!963 = !DILocation(line: 762, column: 5, scope: !959)
!964 = !DILocation(line: 765, column: 13, scope: !965)
!965 = distinct !DILexicalBlock(scope: !953, file: !66, line: 765, column: 8)
!966 = !DILocation(line: 765, column: 10, scope: !965)
!967 = !DILocation(line: 765, column: 23, scope: !965)
!968 = !DILocation(line: 765, column: 33, scope: !965)
!969 = !DILocation(line: 765, column: 8, scope: !953)
!970 = !DILocation(line: 769, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !66, line: 769, column: 9)
!972 = distinct !DILexicalBlock(scope: !965, file: !66, line: 766, column: 4)
!973 = !DILocation(line: 769, column: 17, scope: !971)
!974 = !DILocation(line: 769, column: 9, scope: !971)
!975 = !DILocation(line: 769, column: 9, scope: !972)
!976 = !DILocation(line: 771, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !66, line: 770, column: 5)
!978 = !DILocation(line: 771, column: 19, scope: !977)
!979 = !DILocation(line: 772, column: 5, scope: !977)
!980 = !DILocation(line: 773, column: 4, scope: !972)
!981 = !DILocation(line: 781, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !953, file: !66, line: 781, column: 8)
!983 = !DILocation(line: 781, column: 10, scope: !982)
!984 = !DILocation(line: 781, column: 23, scope: !982)
!985 = !DILocation(line: 781, column: 43, scope: !982)
!986 = !DILocation(line: 782, column: 8, scope: !982)
!987 = !DILocation(line: 782, column: 13, scope: !988)
!988 = !DILexicalBlockFile(scope: !982, file: !66, discriminator: 1)
!989 = !DILocation(line: 782, column: 35, scope: !988)
!990 = !DILocation(line: 782, column: 55, scope: !988)
!991 = !DILocation(line: 783, column: 8, scope: !982)
!992 = !DILocation(line: 783, column: 14, scope: !988)
!993 = !DILocation(line: 783, column: 20, scope: !988)
!994 = !DILocation(line: 783, column: 12, scope: !988)
!995 = !DILocation(line: 781, column: 8, scope: !996)
!996 = !DILexicalBlockFile(scope: !953, file: !66, discriminator: 1)
!997 = !DILocation(line: 785, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !982, file: !66, line: 784, column: 4)
!999 = !DILocation(line: 787, column: 9, scope: !998)
!1000 = !DILocation(line: 787, column: 19, scope: !998)
!1001 = !DILocation(line: 788, column: 4, scope: !998)
!1002 = !DILocation(line: 792, column: 14, scope: !953)
!1003 = !DILocation(line: 792, column: 11, scope: !953)
!1004 = !DILocation(line: 792, column: 27, scope: !953)
!1005 = !DILocation(line: 792, column: 24, scope: !953)
!1006 = !DILocation(line: 790, column: 4, scope: !953)
!1007 = !DILocation(line: 793, column: 3, scope: !953)
!1008 = !DILocation(line: 794, column: 2, scope: !945)
!1009 = !DILocation(line: 797, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !66, line: 797, column: 7)
!1011 = distinct !DILexicalBlock(scope: !942, file: !66, line: 796, column: 2)
!1012 = !DILocation(line: 797, column: 7, scope: !1011)
!1013 = !DILocation(line: 798, column: 71, scope: !1010)
!1014 = !DILocation(line: 799, column: 22, scope: !1010)
!1015 = !DILocation(line: 799, column: 11, scope: !1010)
!1016 = !DILocation(line: 798, column: 4, scope: !1010)
!1017 = !DILocation(line: 802, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !66, line: 802, column: 7)
!1019 = !DILocation(line: 802, column: 25, scope: !1018)
!1020 = !DILocation(line: 802, column: 22, scope: !1018)
!1021 = !DILocation(line: 802, column: 38, scope: !1018)
!1022 = !DILocation(line: 802, column: 42, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1018, file: !66, discriminator: 1)
!1024 = !DILocation(line: 802, column: 50, scope: !1023)
!1025 = !DILocation(line: 802, column: 7, scope: !1023)
!1026 = !DILocation(line: 804, column: 18, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !66, line: 803, column: 3)
!1028 = !DILocation(line: 804, column: 28, scope: !1027)
!1029 = !DILocation(line: 804, column: 26, scope: !1027)
!1030 = !DILocation(line: 804, column: 7, scope: !1027)
!1031 = !DILocation(line: 804, column: 16, scope: !1027)
!1032 = !DILocation(line: 809, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !66, line: 809, column: 8)
!1034 = !DILocation(line: 809, column: 16, scope: !1033)
!1035 = !DILocation(line: 809, column: 8, scope: !1033)
!1036 = !DILocation(line: 809, column: 8, scope: !1027)
!1037 = !DILocation(line: 811, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !66, line: 810, column: 4)
!1039 = !DILocation(line: 811, column: 18, scope: !1038)
!1040 = !DILocation(line: 812, column: 4, scope: !1038)
!1041 = !DILocation(line: 814, column: 64, scope: !1027)
!1042 = !DILocation(line: 814, column: 61, scope: !1027)
!1043 = !DILocation(line: 814, column: 4, scope: !1027)
!1044 = !DILocation(line: 815, column: 3, scope: !1027)
!1045 = !DILocation(line: 818, column: 68, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1018, file: !66, line: 817, column: 3)
!1047 = !DILocation(line: 818, column: 4, scope: !1046)
!1048 = !DILocation(line: 822, column: 9, scope: !913)
!1049 = !DILocation(line: 822, column: 2, scope: !913)
!1050 = !DILocation(line: 823, column: 1, scope: !913)
!1051 = distinct !DISubprogram(name: "get_key_translation_entry", scope: !66, file: !66, line: 137, type: !1052, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!56, !53}
!1054 = !DILocalVariable(name: "keysym", arg: 1, scope: !1051, file: !66, line: 137, type: !53)
!1055 = !DILocation(line: 137, column: 34, scope: !1051)
!1056 = !DILocalVariable(name: "ptr", scope: !1051, file: !66, line: 139, type: !56)
!1057 = !DILocation(line: 139, column: 25, scope: !1051)
!1058 = !DILocalVariable(name: "next", scope: !1051, file: !66, line: 140, type: !56)
!1059 = !DILocation(line: 140, column: 25, scope: !1051)
!1060 = !DILocation(line: 142, column: 15, scope: !1051)
!1061 = !DILocation(line: 142, column: 22, scope: !1051)
!1062 = !DILocation(line: 142, column: 8, scope: !1051)
!1063 = !DILocation(line: 142, column: 6, scope: !1051)
!1064 = !DILocation(line: 144, column: 2, scope: !1051)
!1065 = !DILocation(line: 144, column: 9, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1051, file: !66, discriminator: 1)
!1067 = !DILocation(line: 144, column: 2, scope: !1066)
!1068 = !DILocation(line: 146, column: 10, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1051, file: !66, line: 145, column: 2)
!1070 = !DILocation(line: 146, column: 15, scope: !1069)
!1071 = !DILocation(line: 146, column: 8, scope: !1069)
!1072 = !DILocation(line: 147, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !66, line: 147, column: 7)
!1074 = !DILocation(line: 147, column: 12, scope: !1073)
!1075 = !DILocation(line: 147, column: 22, scope: !1073)
!1076 = !DILocation(line: 147, column: 19, scope: !1073)
!1077 = !DILocation(line: 147, column: 7, scope: !1069)
!1078 = !DILocation(line: 148, column: 11, scope: !1073)
!1079 = !DILocation(line: 148, column: 4, scope: !1073)
!1080 = !DILocation(line: 150, column: 9, scope: !1069)
!1081 = !DILocation(line: 150, column: 7, scope: !1069)
!1082 = !DILocation(line: 144, column: 2, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1051, file: !66, discriminator: 2)
!1084 = distinct !{!1084, !1064}
!1085 = !DILocation(line: 154, column: 2, scope: !1051)
!1086 = !DILocation(line: 155, column: 1, scope: !1051)
!1087 = distinct !DISubprogram(name: "get_ksname", scope: !66, file: !66, line: 920, type: !1088, isLocal: false, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!97, !53}
!1090 = !DILocalVariable(name: "keysym", arg: 1, scope: !1087, file: !66, line: 920, type: !53)
!1091 = !DILocation(line: 920, column: 19, scope: !1087)
!1092 = !DILocalVariable(name: "ksname", scope: !1087, file: !66, line: 922, type: !97)
!1093 = !DILocation(line: 922, column: 8, scope: !1087)
!1094 = !DILocation(line: 924, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !66, line: 924, column: 6)
!1096 = !DILocation(line: 924, column: 13, scope: !1095)
!1097 = !DILocation(line: 924, column: 6, scope: !1087)
!1098 = !DILocation(line: 925, column: 10, scope: !1095)
!1099 = !DILocation(line: 925, column: 3, scope: !1095)
!1100 = !DILocation(line: 926, column: 38, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !66, line: 926, column: 11)
!1102 = !DILocation(line: 926, column: 22, scope: !1101)
!1103 = !DILocation(line: 926, column: 20, scope: !1101)
!1104 = !DILocation(line: 926, column: 11, scope: !1095)
!1105 = !DILocation(line: 927, column: 10, scope: !1101)
!1106 = !DILocation(line: 927, column: 3, scope: !1101)
!1107 = !DILocation(line: 929, column: 9, scope: !1087)
!1108 = !DILocation(line: 929, column: 2, scope: !1087)
!1109 = distinct !DISubprogram(name: "xkeymap_send_keys", scope: !66, file: !66, line: 848, type: !1110, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !53, !41, !41, !53, !67, !47}
!1112 = !DILocalVariable(name: "keysym", arg: 1, scope: !1109, file: !66, line: 848, type: !53)
!1113 = !DILocation(line: 848, column: 26, scope: !1109)
!1114 = !DILocalVariable(name: "keycode", arg: 2, scope: !1109, file: !66, line: 848, type: !41)
!1115 = !DILocation(line: 848, column: 47, scope: !1109)
!1116 = !DILocalVariable(name: "state", arg: 3, scope: !1109, file: !66, line: 848, type: !41)
!1117 = !DILocation(line: 848, column: 69, scope: !1109)
!1118 = !DILocalVariable(name: "ev_time", arg: 4, scope: !1109, file: !66, line: 848, type: !53)
!1119 = !DILocation(line: 848, column: 83, scope: !1109)
!1120 = !DILocalVariable(name: "pressed", arg: 5, scope: !1109, file: !66, line: 849, type: !67)
!1121 = !DILocation(line: 849, column: 13, scope: !1109)
!1122 = !DILocalVariable(name: "nesting", arg: 6, scope: !1109, file: !66, line: 849, type: !47)
!1123 = !DILocation(line: 849, column: 28, scope: !1109)
!1124 = !DILocalVariable(name: "tr", scope: !1109, file: !66, line: 851, type: !43)
!1125 = !DILocation(line: 851, column: 18, scope: !1109)
!1126 = !DILocalVariable(name: "ptr", scope: !1109, file: !66, line: 851, type: !42)
!1127 = !DILocation(line: 851, column: 23, scope: !1109)
!1128 = !DILocation(line: 852, column: 29, scope: !1109)
!1129 = !DILocation(line: 852, column: 37, scope: !1109)
!1130 = !DILocation(line: 852, column: 46, scope: !1109)
!1131 = !DILocation(line: 852, column: 7, scope: !1109)
!1132 = !DILocation(line: 852, column: 7, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1109, file: !66, discriminator: 1)
!1134 = !DILocation(line: 854, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1109, file: !66, line: 854, column: 6)
!1136 = !DILocation(line: 854, column: 20, scope: !1135)
!1137 = !DILocation(line: 854, column: 6, scope: !1109)
!1138 = !DILocation(line: 857, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !66, line: 857, column: 7)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !66, line: 855, column: 2)
!1141 = !DILocation(line: 857, column: 7, scope: !1139)
!1142 = !DILocation(line: 857, column: 19, scope: !1139)
!1143 = !DILocation(line: 857, column: 7, scope: !1140)
!1144 = !DILocation(line: 858, column: 4, scope: !1139)
!1145 = !DILocation(line: 860, column: 28, scope: !1140)
!1146 = !DILocation(line: 860, column: 3, scope: !1140)
!1147 = !DILocation(line: 861, column: 27, scope: !1140)
!1148 = !DILocation(line: 861, column: 3, scope: !1140)
!1149 = !DILocation(line: 862, column: 21, scope: !1140)
!1150 = !DILocation(line: 862, column: 30, scope: !1140)
!1151 = !DILocation(line: 862, column: 66, scope: !1140)
!1152 = !DILocation(line: 862, column: 3, scope: !1140)
!1153 = !DILocation(line: 863, column: 28, scope: !1140)
!1154 = !DILocation(line: 863, column: 40, scope: !1140)
!1155 = !DILocation(line: 863, column: 3, scope: !1140)
!1156 = !DILocation(line: 864, column: 3, scope: !1140)
!1157 = !DILocation(line: 868, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1109, file: !66, line: 868, column: 6)
!1159 = !DILocation(line: 868, column: 6, scope: !1109)
!1160 = !DILocation(line: 870, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !66, line: 869, column: 2)
!1162 = !DILocation(line: 871, column: 3, scope: !1161)
!1163 = distinct !{!1163, !1162}
!1164 = !DILocation(line: 875, column: 26, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !66, line: 872, column: 3)
!1166 = !DILocation(line: 875, column: 31, scope: !1165)
!1167 = !DILocation(line: 873, column: 4, scope: !1165)
!1168 = !DILocation(line: 877, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !66, line: 877, column: 8)
!1170 = !DILocation(line: 877, column: 8, scope: !1169)
!1171 = !DILocation(line: 877, column: 18, scope: !1169)
!1172 = !DILocation(line: 877, column: 8, scope: !1165)
!1173 = !DILocation(line: 879, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !66, line: 878, column: 4)
!1175 = !DILocation(line: 880, column: 5, scope: !1174)
!1176 = !DILocation(line: 883, column: 22, scope: !1165)
!1177 = !DILocation(line: 883, column: 27, scope: !1165)
!1178 = !DILocation(line: 883, column: 39, scope: !1165)
!1179 = !DILocation(line: 883, column: 48, scope: !1165)
!1180 = !DILocation(line: 883, column: 55, scope: !1165)
!1181 = !DILocation(line: 883, column: 69, scope: !1165)
!1182 = !DILocation(line: 883, column: 4, scope: !1165)
!1183 = !DILocation(line: 884, column: 22, scope: !1165)
!1184 = !DILocation(line: 884, column: 27, scope: !1165)
!1185 = !DILocation(line: 884, column: 39, scope: !1165)
!1186 = !DILocation(line: 884, column: 48, scope: !1165)
!1187 = !DILocation(line: 884, column: 55, scope: !1165)
!1188 = !DILocation(line: 884, column: 70, scope: !1165)
!1189 = !DILocation(line: 884, column: 4, scope: !1165)
!1190 = !DILocation(line: 885, column: 10, scope: !1165)
!1191 = !DILocation(line: 885, column: 15, scope: !1165)
!1192 = !DILocation(line: 885, column: 8, scope: !1165)
!1193 = !DILocation(line: 886, column: 3, scope: !1165)
!1194 = !DILocation(line: 887, column: 10, scope: !1161)
!1195 = !DILocation(line: 886, column: 3, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1165, file: !66, discriminator: 1)
!1197 = !DILocation(line: 888, column: 2, scope: !1161)
!1198 = !DILocation(line: 889, column: 1, scope: !1109)
!1199 = distinct !DISubprogram(name: "save_remote_modifiers", scope: !66, file: !66, line: 933, type: !1200, isLocal: false, isDefinition: true, scopeLine: 934, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !47}
!1202 = !DILocalVariable(name: "scancode", arg: 1, scope: !1199, file: !66, line: 933, type: !47)
!1203 = !DILocation(line: 933, column: 29, scope: !1199)
!1204 = !DILocation(line: 935, column: 18, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !66, line: 935, column: 6)
!1206 = !DILocation(line: 935, column: 6, scope: !1205)
!1207 = !DILocation(line: 935, column: 6, scope: !1199)
!1208 = !DILocation(line: 936, column: 3, scope: !1205)
!1209 = !DILocation(line: 938, column: 32, scope: !1199)
!1210 = !DILocation(line: 938, column: 30, scope: !1199)
!1211 = !DILocation(line: 939, column: 1, scope: !1199)
!1212 = !DILocation(line: 939, column: 1, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1199, file: !66, discriminator: 1)
!1214 = distinct !DISubprogram(name: "ensure_remote_modifiers", scope: !66, file: !66, line: 955, type: !1215, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !53, !43}
!1217 = !DILocalVariable(name: "ev_time", arg: 1, scope: !1214, file: !66, line: 955, type: !53)
!1218 = !DILocation(line: 955, column: 32, scope: !1214)
!1219 = !DILocalVariable(name: "tr", arg: 2, scope: !1214, file: !66, line: 955, type: !43)
!1220 = !DILocation(line: 955, column: 57, scope: !1214)
!1221 = !DILocation(line: 958, column: 21, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !66, line: 958, column: 6)
!1223 = !DILocation(line: 958, column: 6, scope: !1222)
!1224 = !DILocation(line: 958, column: 6, scope: !1214)
!1225 = !DILocation(line: 959, column: 3, scope: !1222)
!1226 = !DILocation(line: 961, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !66, line: 961, column: 6)
!1228 = !DILocation(line: 961, column: 6, scope: !1214)
!1229 = !DILocation(line: 964, column: 12, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !66, line: 964, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !66, line: 962, column: 2)
!1232 = !DILocation(line: 964, column: 9, scope: !1230)
!1233 = !DILocation(line: 964, column: 22, scope: !1230)
!1234 = !DILocation(line: 964, column: 31, scope: !1230)
!1235 = !DILocation(line: 965, column: 12, scope: !1230)
!1236 = !DILocation(line: 965, column: 34, scope: !1230)
!1237 = !DILocation(line: 965, column: 43, scope: !1230)
!1238 = !DILocation(line: 965, column: 7, scope: !1230)
!1239 = !DILocation(line: 964, column: 7, scope: !1231)
!1240 = !DILocalVariable(name: "new_remote_state", scope: !1241, file: !66, line: 968, type: !50)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !66, line: 966, column: 3)
!1242 = !DILocation(line: 968, column: 11, scope: !1241)
!1243 = !DILocation(line: 970, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !66, line: 970, column: 8)
!1245 = !DILocation(line: 970, column: 10, scope: !1244)
!1246 = !DILocation(line: 970, column: 23, scope: !1244)
!1247 = !DILocation(line: 970, column: 32, scope: !1244)
!1248 = !DILocation(line: 970, column: 8, scope: !1241)
!1249 = !DILocation(line: 972, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !66, line: 971, column: 4)
!1251 = !DILocation(line: 974, column: 22, scope: !1250)
!1252 = !DILocation(line: 975, column: 27, scope: !1250)
!1253 = !DILocation(line: 976, column: 4, scope: !1250)
!1254 = !DILocation(line: 979, column: 5, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !66, line: 978, column: 4)
!1256 = !DILocation(line: 981, column: 22, scope: !1255)
!1257 = !DILocation(line: 982, column: 27, scope: !1255)
!1258 = !DILocation(line: 985, column: 48, scope: !1241)
!1259 = !DILocation(line: 985, column: 4, scope: !1241)
!1260 = !DILocation(line: 986, column: 3, scope: !1241)
!1261 = !DILocation(line: 987, column: 2, scope: !1231)
!1262 = !DILocation(line: 991, column: 11, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1214, file: !66, line: 991, column: 6)
!1264 = !DILocation(line: 991, column: 8, scope: !1263)
!1265 = !DILocation(line: 991, column: 21, scope: !1263)
!1266 = !DILocation(line: 991, column: 41, scope: !1263)
!1267 = !DILocation(line: 992, column: 11, scope: !1263)
!1268 = !DILocation(line: 992, column: 33, scope: !1263)
!1269 = !DILocation(line: 992, column: 53, scope: !1263)
!1270 = !DILocation(line: 992, column: 6, scope: !1263)
!1271 = !DILocation(line: 991, column: 6, scope: !1214)
!1272 = !DILocation(line: 995, column: 12, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !66, line: 995, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !66, line: 993, column: 2)
!1275 = !DILocation(line: 995, column: 9, scope: !1273)
!1276 = !DILocation(line: 995, column: 22, scope: !1273)
!1277 = !DILocation(line: 995, column: 31, scope: !1273)
!1278 = !DILocation(line: 995, column: 7, scope: !1274)
!1279 = !DILocation(line: 998, column: 22, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !66, line: 996, column: 3)
!1281 = !DILocation(line: 998, column: 4, scope: !1280)
!1282 = !DILocation(line: 999, column: 3, scope: !1280)
!1283 = !DILocation(line: 1000, column: 17, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1273, file: !66, line: 1000, column: 12)
!1285 = !DILocation(line: 1000, column: 14, scope: !1284)
!1286 = !DILocation(line: 1000, column: 27, scope: !1284)
!1287 = !DILocation(line: 1000, column: 36, scope: !1284)
!1288 = !DILocation(line: 1000, column: 12, scope: !1273)
!1289 = !DILocation(line: 1003, column: 22, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !66, line: 1001, column: 3)
!1291 = !DILocation(line: 1003, column: 4, scope: !1290)
!1292 = !DILocation(line: 1004, column: 3, scope: !1290)
!1293 = !DILocation(line: 1008, column: 10, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !66, line: 1008, column: 8)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !66, line: 1006, column: 3)
!1296 = !DILocation(line: 1008, column: 32, scope: !1294)
!1297 = !DILocation(line: 1008, column: 41, scope: !1294)
!1298 = !DILocation(line: 1008, column: 8, scope: !1295)
!1299 = !DILocation(line: 1010, column: 23, scope: !1294)
!1300 = !DILocation(line: 1010, column: 5, scope: !1294)
!1301 = !DILocation(line: 1013, column: 23, scope: !1294)
!1302 = !DILocation(line: 1013, column: 5, scope: !1294)
!1303 = !DILocation(line: 1015, column: 2, scope: !1274)
!1304 = !DILocation(line: 1018, column: 11, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1214, file: !66, line: 1018, column: 6)
!1306 = !DILocation(line: 1018, column: 8, scope: !1305)
!1307 = !DILocation(line: 1018, column: 21, scope: !1305)
!1308 = !DILocation(line: 1018, column: 30, scope: !1305)
!1309 = !DILocation(line: 1019, column: 11, scope: !1305)
!1310 = !DILocation(line: 1019, column: 33, scope: !1305)
!1311 = !DILocation(line: 1019, column: 42, scope: !1305)
!1312 = !DILocation(line: 1019, column: 6, scope: !1305)
!1313 = !DILocation(line: 1018, column: 6, scope: !1214)
!1314 = !DILocation(line: 1022, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !66, line: 1022, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1305, file: !66, line: 1020, column: 2)
!1317 = !DILocation(line: 1022, column: 9, scope: !1315)
!1318 = !DILocation(line: 1022, column: 22, scope: !1315)
!1319 = !DILocation(line: 1022, column: 31, scope: !1315)
!1320 = !DILocation(line: 1022, column: 7, scope: !1316)
!1321 = !DILocation(line: 1025, column: 22, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !66, line: 1023, column: 3)
!1323 = !DILocation(line: 1025, column: 4, scope: !1322)
!1324 = !DILocation(line: 1026, column: 3, scope: !1322)
!1325 = !DILocation(line: 1030, column: 22, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !66, line: 1028, column: 3)
!1327 = !DILocation(line: 1030, column: 4, scope: !1326)
!1328 = !DILocation(line: 1032, column: 2, scope: !1316)
!1329 = !DILocation(line: 1035, column: 1, scope: !1214)
!1330 = distinct !DISubprogram(name: "restore_remote_modifiers", scope: !66, file: !66, line: 942, type: !1331, isLocal: false, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !53, !47}
!1333 = !DILocalVariable(name: "ev_time", arg: 1, scope: !1330, file: !66, line: 942, type: !53)
!1334 = !DILocation(line: 942, column: 33, scope: !1330)
!1335 = !DILocalVariable(name: "scancode", arg: 2, scope: !1330, file: !66, line: 942, type: !47)
!1336 = !DILocation(line: 942, column: 48, scope: !1330)
!1337 = !DILocalVariable(name: "dummy", scope: !1330, file: !66, line: 944, type: !43)
!1338 = !DILocation(line: 944, column: 18, scope: !1330)
!1339 = !DILocation(line: 946, column: 18, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !66, line: 946, column: 6)
!1341 = !DILocation(line: 946, column: 6, scope: !1340)
!1342 = !DILocation(line: 946, column: 6, scope: !1330)
!1343 = !DILocation(line: 947, column: 3, scope: !1340)
!1344 = !DILocation(line: 949, column: 8, scope: !1330)
!1345 = !DILocation(line: 949, column: 17, scope: !1330)
!1346 = !DILocation(line: 950, column: 20, scope: !1330)
!1347 = !DILocation(line: 950, column: 8, scope: !1330)
!1348 = !DILocation(line: 950, column: 18, scope: !1330)
!1349 = !DILocation(line: 951, column: 26, scope: !1330)
!1350 = !DILocation(line: 951, column: 2, scope: !1330)
!1351 = !DILocation(line: 952, column: 1, scope: !1330)
!1352 = !DILocation(line: 952, column: 1, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1330, file: !66, discriminator: 1)
!1354 = distinct !DISubprogram(name: "xkeymap_translate_button", scope: !66, file: !66, line: 892, type: !1355, isLocal: false, isDefinition: true, scopeLine: 893, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!50, !41, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1358 = !DILocalVariable(name: "button", arg: 1, scope: !1354, file: !66, line: 892, type: !41)
!1359 = !DILocation(line: 892, column: 39, scope: !1354)
!1360 = !DILocalVariable(name: "input_type", arg: 2, scope: !1354, file: !66, line: 892, type: !1357)
!1361 = !DILocation(line: 892, column: 56, scope: !1354)
!1362 = !DILocation(line: 894, column: 3, scope: !1354)
!1363 = !DILocation(line: 894, column: 14, scope: !1354)
!1364 = !DILocation(line: 896, column: 10, scope: !1354)
!1365 = !DILocation(line: 896, column: 2, scope: !1354)
!1366 = !DILocation(line: 899, column: 4, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1354, file: !66, line: 897, column: 2)
!1368 = !DILocation(line: 901, column: 4, scope: !1367)
!1369 = !DILocation(line: 903, column: 4, scope: !1367)
!1370 = !DILocation(line: 905, column: 4, scope: !1367)
!1371 = !DILocation(line: 907, column: 4, scope: !1367)
!1372 = !DILocation(line: 909, column: 5, scope: !1367)
!1373 = !DILocation(line: 909, column: 16, scope: !1367)
!1374 = !DILocation(line: 910, column: 4, scope: !1367)
!1375 = !DILocation(line: 912, column: 5, scope: !1367)
!1376 = !DILocation(line: 912, column: 16, scope: !1367)
!1377 = !DILocation(line: 913, column: 4, scope: !1367)
!1378 = !DILocation(line: 916, column: 2, scope: !1354)
!1379 = !DILocation(line: 917, column: 1, scope: !1354)
!1380 = distinct !DISubprogram(name: "is_modifier", scope: !66, file: !66, line: 826, type: !1381, isLocal: true, isDefinition: true, scopeLine: 827, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!67, !47}
!1383 = !DILocalVariable(name: "scancode", arg: 1, scope: !1380, file: !66, line: 826, type: !47)
!1384 = !DILocation(line: 826, column: 19, scope: !1380)
!1385 = !DILocation(line: 828, column: 10, scope: !1380)
!1386 = !DILocation(line: 828, column: 2, scope: !1380)
!1387 = !DILocation(line: 839, column: 4, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1380, file: !66, line: 829, column: 2)
!1389 = !DILocation(line: 841, column: 4, scope: !1388)
!1390 = !DILocation(line: 843, column: 2, scope: !1380)
!1391 = !DILocation(line: 844, column: 1, scope: !1380)
!1392 = distinct !DISubprogram(name: "reset_modifier_keys", scope: !66, file: !66, line: 1063, type: !345, isLocal: false, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1393 = !DILocalVariable(name: "state", scope: !1392, file: !66, line: 1065, type: !41)
!1394 = !DILocation(line: 1065, column: 15, scope: !1392)
!1395 = !DILocation(line: 1065, column: 23, scope: !1392)
!1396 = !DILocalVariable(name: "ev_time", scope: !1392, file: !66, line: 1068, type: !53)
!1397 = !DILocation(line: 1068, column: 9, scope: !1392)
!1398 = !DILocation(line: 1069, column: 12, scope: !1392)
!1399 = !DILocation(line: 1069, column: 10, scope: !1392)
!1400 = !DILocation(line: 1071, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1071, column: 6)
!1402 = !DILocation(line: 1071, column: 30, scope: !1401)
!1403 = !DILocation(line: 1071, column: 39, scope: !1401)
!1404 = !DILocation(line: 1072, column: 6, scope: !1401)
!1405 = !DILocation(line: 1072, column: 24, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1401, file: !66, discriminator: 1)
!1407 = !DILocation(line: 1072, column: 10, scope: !1406)
!1408 = !DILocation(line: 1071, column: 6, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1392, file: !66, discriminator: 1)
!1410 = !DILocation(line: 1073, column: 21, scope: !1401)
!1411 = !DILocation(line: 1073, column: 3, scope: !1401)
!1412 = !DILocation(line: 1075, column: 8, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1075, column: 6)
!1414 = !DILocation(line: 1075, column: 30, scope: !1413)
!1415 = !DILocation(line: 1075, column: 39, scope: !1413)
!1416 = !DILocation(line: 1076, column: 6, scope: !1413)
!1417 = !DILocation(line: 1076, column: 24, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1413, file: !66, discriminator: 1)
!1419 = !DILocation(line: 1076, column: 10, scope: !1418)
!1420 = !DILocation(line: 1075, column: 6, scope: !1409)
!1421 = !DILocation(line: 1077, column: 21, scope: !1413)
!1422 = !DILocation(line: 1077, column: 3, scope: !1413)
!1423 = !DILocation(line: 1079, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1079, column: 6)
!1425 = !DILocation(line: 1079, column: 30, scope: !1424)
!1426 = !DILocation(line: 1079, column: 39, scope: !1424)
!1427 = !DILocation(line: 1080, column: 6, scope: !1424)
!1428 = !DILocation(line: 1080, column: 24, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1424, file: !66, discriminator: 1)
!1430 = !DILocation(line: 1080, column: 10, scope: !1429)
!1431 = !DILocation(line: 1079, column: 6, scope: !1409)
!1432 = !DILocation(line: 1081, column: 21, scope: !1424)
!1433 = !DILocation(line: 1081, column: 3, scope: !1424)
!1434 = !DILocation(line: 1083, column: 8, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1083, column: 6)
!1436 = !DILocation(line: 1083, column: 30, scope: !1435)
!1437 = !DILocation(line: 1083, column: 39, scope: !1435)
!1438 = !DILocation(line: 1084, column: 6, scope: !1435)
!1439 = !DILocation(line: 1084, column: 24, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1435, file: !66, discriminator: 1)
!1441 = !DILocation(line: 1084, column: 10, scope: !1440)
!1442 = !DILocation(line: 1083, column: 6, scope: !1409)
!1443 = !DILocation(line: 1085, column: 21, scope: !1435)
!1444 = !DILocation(line: 1085, column: 3, scope: !1435)
!1445 = !DILocation(line: 1087, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1087, column: 6)
!1447 = !DILocation(line: 1087, column: 30, scope: !1446)
!1448 = !DILocation(line: 1087, column: 39, scope: !1446)
!1449 = !DILocation(line: 1087, column: 43, scope: !1446)
!1450 = !DILocation(line: 1087, column: 61, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1446, file: !66, discriminator: 1)
!1452 = !DILocation(line: 1087, column: 47, scope: !1451)
!1453 = !DILocation(line: 1087, column: 6, scope: !1451)
!1454 = !DILocation(line: 1088, column: 21, scope: !1446)
!1455 = !DILocation(line: 1088, column: 3, scope: !1446)
!1456 = !DILocation(line: 1090, column: 8, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1090, column: 6)
!1458 = !DILocation(line: 1090, column: 30, scope: !1457)
!1459 = !DILocation(line: 1090, column: 39, scope: !1457)
!1460 = !DILocation(line: 1090, column: 43, scope: !1457)
!1461 = !DILocation(line: 1091, column: 21, scope: !1457)
!1462 = !DILocation(line: 1091, column: 7, scope: !1457)
!1463 = !DILocation(line: 1091, column: 37, scope: !1457)
!1464 = !DILocation(line: 1091, column: 55, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1457, file: !66, discriminator: 1)
!1466 = !DILocation(line: 1091, column: 41, scope: !1465)
!1467 = !DILocation(line: 1092, column: 6, scope: !1457)
!1468 = !DILocation(line: 1092, column: 24, scope: !1465)
!1469 = !DILocation(line: 1092, column: 10, scope: !1465)
!1470 = !DILocation(line: 1090, column: 6, scope: !1409)
!1471 = !DILocation(line: 1093, column: 21, scope: !1457)
!1472 = !DILocation(line: 1093, column: 3, scope: !1457)
!1473 = !DILocation(line: 1095, column: 15, scope: !1392)
!1474 = !DILocation(line: 1095, column: 2, scope: !1392)
!1475 = !DILocation(line: 1097, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1392, file: !66, line: 1097, column: 6)
!1477 = !DILocation(line: 1097, column: 6, scope: !1392)
!1478 = !DILocation(line: 1098, column: 18, scope: !1476)
!1479 = !DILocation(line: 1098, column: 74, scope: !1476)
!1480 = !DILocation(line: 1098, column: 53, scope: !1476)
!1481 = !DILocation(line: 1098, column: 3, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1476, file: !66, discriminator: 1)
!1483 = !DILocation(line: 1098, column: 3, scope: !1476)
!1484 = !DILocation(line: 1099, column: 1, scope: !1392)
!1485 = distinct !DISubprogram(name: "reset_winkey", scope: !66, file: !66, line: 596, type: !1486, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !53}
!1488 = !DILocalVariable(name: "ev_time", arg: 1, scope: !1485, file: !66, line: 596, type: !53)
!1489 = !DILocation(line: 596, column: 21, scope: !1485)
!1490 = !DILocation(line: 598, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !66, line: 598, column: 6)
!1492 = !DILocation(line: 598, column: 20, scope: !1491)
!1493 = !DILocation(line: 598, column: 6, scope: !1485)
!1494 = !DILocation(line: 602, column: 21, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !66, line: 599, column: 2)
!1496 = !DILocation(line: 602, column: 3, scope: !1495)
!1497 = !DILocation(line: 603, column: 2, scope: !1495)
!1498 = !DILocation(line: 604, column: 1, scope: !1485)
!1499 = distinct !DISubprogram(name: "update_modifier_state", scope: !66, file: !66, line: 1103, type: !1500, isLocal: true, isDefinition: true, scopeLine: 1104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !47, !67}
!1502 = !DILocalVariable(name: "scancode", arg: 1, scope: !1499, file: !66, line: 1103, type: !47)
!1503 = !DILocation(line: 1103, column: 29, scope: !1499)
!1504 = !DILocalVariable(name: "pressed", arg: 2, scope: !1499, file: !66, line: 1103, type: !67)
!1505 = !DILocation(line: 1103, column: 47, scope: !1499)
!1506 = !DILocalVariable(name: "old_modifier_state", scope: !1499, file: !66, line: 1105, type: !50)
!1507 = !DILocation(line: 1105, column: 9, scope: !1499)
!1508 = !DILocation(line: 1107, column: 23, scope: !1499)
!1509 = !DILocation(line: 1107, column: 21, scope: !1499)
!1510 = !DILocation(line: 1109, column: 10, scope: !1499)
!1511 = !DILocation(line: 1109, column: 2, scope: !1499)
!1512 = !DILocation(line: 1112, column: 31, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1499, file: !66, line: 1110, column: 2)
!1514 = !DILocation(line: 1112, column: 53, scope: !1513)
!1515 = !DILocation(line: 1112, column: 67, scope: !1513)
!1516 = !DILocation(line: 1112, column: 64, scope: !1513)
!1517 = !DILocation(line: 1112, column: 29, scope: !1513)
!1518 = !DILocation(line: 1112, column: 27, scope: !1513)
!1519 = !DILocation(line: 1113, column: 4, scope: !1513)
!1520 = !DILocation(line: 1115, column: 31, scope: !1513)
!1521 = !DILocation(line: 1115, column: 53, scope: !1513)
!1522 = !DILocation(line: 1115, column: 67, scope: !1513)
!1523 = !DILocation(line: 1115, column: 64, scope: !1513)
!1524 = !DILocation(line: 1115, column: 29, scope: !1513)
!1525 = !DILocation(line: 1115, column: 27, scope: !1513)
!1526 = !DILocation(line: 1116, column: 4, scope: !1513)
!1527 = !DILocation(line: 1118, column: 31, scope: !1513)
!1528 = !DILocation(line: 1118, column: 53, scope: !1513)
!1529 = !DILocation(line: 1118, column: 67, scope: !1513)
!1530 = !DILocation(line: 1118, column: 64, scope: !1513)
!1531 = !DILocation(line: 1118, column: 29, scope: !1513)
!1532 = !DILocation(line: 1118, column: 27, scope: !1513)
!1533 = !DILocation(line: 1119, column: 4, scope: !1513)
!1534 = !DILocation(line: 1121, column: 31, scope: !1513)
!1535 = !DILocation(line: 1121, column: 53, scope: !1513)
!1536 = !DILocation(line: 1121, column: 67, scope: !1513)
!1537 = !DILocation(line: 1121, column: 64, scope: !1513)
!1538 = !DILocation(line: 1121, column: 29, scope: !1513)
!1539 = !DILocation(line: 1121, column: 27, scope: !1513)
!1540 = !DILocation(line: 1122, column: 4, scope: !1513)
!1541 = !DILocation(line: 1124, column: 31, scope: !1513)
!1542 = !DILocation(line: 1124, column: 53, scope: !1513)
!1543 = !DILocation(line: 1124, column: 67, scope: !1513)
!1544 = !DILocation(line: 1124, column: 64, scope: !1513)
!1545 = !DILocation(line: 1124, column: 29, scope: !1513)
!1546 = !DILocation(line: 1124, column: 27, scope: !1513)
!1547 = !DILocation(line: 1125, column: 4, scope: !1513)
!1548 = !DILocation(line: 1127, column: 31, scope: !1513)
!1549 = !DILocation(line: 1127, column: 53, scope: !1513)
!1550 = !DILocation(line: 1127, column: 67, scope: !1513)
!1551 = !DILocation(line: 1127, column: 64, scope: !1513)
!1552 = !DILocation(line: 1127, column: 29, scope: !1513)
!1553 = !DILocation(line: 1127, column: 27, scope: !1513)
!1554 = !DILocation(line: 1128, column: 4, scope: !1513)
!1555 = !DILocation(line: 1130, column: 31, scope: !1513)
!1556 = !DILocation(line: 1130, column: 53, scope: !1513)
!1557 = !DILocation(line: 1130, column: 67, scope: !1513)
!1558 = !DILocation(line: 1130, column: 64, scope: !1513)
!1559 = !DILocation(line: 1130, column: 29, scope: !1513)
!1560 = !DILocation(line: 1130, column: 27, scope: !1513)
!1561 = !DILocation(line: 1131, column: 4, scope: !1513)
!1562 = !DILocation(line: 1133, column: 31, scope: !1513)
!1563 = !DILocation(line: 1133, column: 53, scope: !1513)
!1564 = !DILocation(line: 1133, column: 67, scope: !1513)
!1565 = !DILocation(line: 1133, column: 64, scope: !1513)
!1566 = !DILocation(line: 1133, column: 29, scope: !1513)
!1567 = !DILocation(line: 1133, column: 27, scope: !1513)
!1568 = !DILocation(line: 1134, column: 4, scope: !1513)
!1569 = !DILocation(line: 1138, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1513, file: !66, line: 1138, column: 8)
!1571 = !DILocation(line: 1138, column: 16, scope: !1570)
!1572 = !DILocation(line: 1138, column: 20, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !66, discriminator: 1)
!1574 = !DILocation(line: 1138, column: 8, scope: !1573)
!1575 = !DILocalVariable(name: "newNumLockState", scope: !1576, file: !66, line: 1140, type: !67)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !66, line: 1139, column: 4)
!1577 = !DILocation(line: 1140, column: 13, scope: !1576)
!1578 = !DILocation(line: 1142, column: 9, scope: !1576)
!1579 = !DILocation(line: 1142, column: 31, scope: !1576)
!1580 = !DILocation(line: 1142, column: 40, scope: !1576)
!1581 = !DILocation(line: 1143, column: 47, scope: !1576)
!1582 = !DILocation(line: 1141, column: 21, scope: !1576)
!1583 = !DILocation(line: 1144, column: 32, scope: !1576)
!1584 = !DILocation(line: 1144, column: 54, scope: !1576)
!1585 = !DILocation(line: 1144, column: 68, scope: !1576)
!1586 = !DILocation(line: 1144, column: 65, scope: !1576)
!1587 = !DILocation(line: 1144, column: 30, scope: !1576)
!1588 = !DILocation(line: 1144, column: 28, scope: !1576)
!1589 = !DILocation(line: 1146, column: 4, scope: !1576)
!1590 = !DILocation(line: 1147, column: 2, scope: !1513)
!1591 = !DILocation(line: 1149, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1499, file: !66, line: 1149, column: 6)
!1593 = !DILocation(line: 1149, column: 28, scope: !1592)
!1594 = !DILocation(line: 1149, column: 25, scope: !1592)
!1595 = !DILocation(line: 1149, column: 6, scope: !1499)
!1596 = !DILocation(line: 1153, column: 10, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !66, line: 1150, column: 2)
!1598 = !DILocation(line: 1153, column: 30, scope: !1597)
!1599 = !DILocation(line: 1151, column: 3, scope: !1597)
!1600 = !DILocation(line: 1155, column: 10, scope: !1597)
!1601 = !DILocation(line: 1154, column: 3, scope: !1597)
!1602 = !DILocation(line: 1156, column: 2, scope: !1597)
!1603 = !DILocation(line: 1157, column: 1, scope: !1499)
!1604 = distinct !DISubprogram(name: "add_sequence", scope: !66, file: !66, line: 187, type: !1605, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !97, !97}
!1607 = !DILocalVariable(name: "rest", arg: 1, scope: !1604, file: !66, line: 187, type: !97)
!1608 = !DILocation(line: 187, column: 20, scope: !1604)
!1609 = !DILocalVariable(name: "mapname", arg: 2, scope: !1604, file: !66, line: 187, type: !97)
!1610 = !DILocation(line: 187, column: 32, scope: !1604)
!1611 = !DILocalVariable(name: "keysym", scope: !1604, file: !66, line: 189, type: !70)
!1612 = !DILocation(line: 189, column: 9, scope: !1604)
!1613 = !DILocalVariable(name: "seq_keysym", scope: !1604, file: !66, line: 190, type: !70)
!1614 = !DILocation(line: 190, column: 9, scope: !1604)
!1615 = !DILocalVariable(name: "entry", scope: !1604, file: !66, line: 191, type: !56)
!1616 = !DILocation(line: 191, column: 25, scope: !1604)
!1617 = !DILocalVariable(name: "tr", scope: !1604, file: !66, line: 192, type: !42)
!1618 = !DILocation(line: 192, column: 19, scope: !1604)
!1619 = !DILocalVariable(name: "prev_next", scope: !1604, file: !66, line: 192, type: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!1621 = !DILocation(line: 192, column: 25, scope: !1604)
!1622 = !DILocalVariable(name: "chars", scope: !1604, file: !66, line: 193, type: !152)
!1623 = !DILocation(line: 193, column: 9, scope: !1604)
!1624 = !DILocalVariable(name: "keyname", scope: !1604, file: !66, line: 194, type: !370)
!1625 = !DILocation(line: 194, column: 7, scope: !1604)
!1626 = !DILocation(line: 197, column: 17, scope: !1604)
!1627 = !DILocation(line: 197, column: 10, scope: !1604)
!1628 = !DILocation(line: 197, column: 8, scope: !1604)
!1629 = !DILocation(line: 198, column: 10, scope: !1604)
!1630 = !DILocation(line: 198, column: 7, scope: !1604)
!1631 = !DILocation(line: 201, column: 18, scope: !1604)
!1632 = !DILocation(line: 201, column: 10, scope: !1604)
!1633 = !DILocation(line: 201, column: 8, scope: !1604)
!1634 = !DILocation(line: 202, column: 12, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1604, file: !66, line: 202, column: 2)
!1636 = !DILocation(line: 202, column: 20, scope: !1635)
!1637 = !DILocation(line: 202, column: 25, scope: !1635)
!1638 = !DILocation(line: 202, column: 31, scope: !1635)
!1639 = !DILocation(line: 202, column: 35, scope: !1635)
!1640 = !DILocation(line: 202, column: 4, scope: !1635)
!1641 = !DILocation(line: 202, column: 48, scope: !1635)
!1642 = !DILocation(line: 202, column: 54, scope: !1635)
!1643 = !DILocation(line: 202, column: 58, scope: !1635)
!1644 = !DILocation(line: 202, column: 40, scope: !1635)
!1645 = !DILocation(line: 202, column: 62, scope: !1635)
!1646 = !DILocation(line: 203, column: 10, scope: !1604)
!1647 = !DILocation(line: 203, column: 7, scope: !1604)
!1648 = !DILocation(line: 205, column: 27, scope: !1604)
!1649 = !DILocation(line: 205, column: 11, scope: !1604)
!1650 = !DILocation(line: 205, column: 9, scope: !1604)
!1651 = !DILocation(line: 206, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1604, file: !66, line: 206, column: 6)
!1653 = !DILocation(line: 206, column: 13, scope: !1652)
!1654 = !DILocation(line: 206, column: 6, scope: !1604)
!1655 = !DILocation(line: 209, column: 10, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !66, line: 207, column: 2)
!1657 = !DILocation(line: 209, column: 19, scope: !1656)
!1658 = !DILocation(line: 208, column: 3, scope: !1656)
!1659 = !DILocation(line: 210, column: 3, scope: !1656)
!1660 = !DILocation(line: 213, column: 85, scope: !1604)
!1661 = !DILocation(line: 214, column: 9, scope: !1604)
!1662 = !DILocation(line: 213, column: 2, scope: !1604)
!1663 = !DILocation(line: 216, column: 36, scope: !1604)
!1664 = !DILocation(line: 216, column: 10, scope: !1604)
!1665 = !DILocation(line: 216, column: 8, scope: !1604)
!1666 = !DILocation(line: 217, column: 16, scope: !1604)
!1667 = !DILocation(line: 217, column: 23, scope: !1604)
!1668 = !DILocation(line: 217, column: 12, scope: !1604)
!1669 = !DILocation(line: 219, column: 2, scope: !1604)
!1670 = !DILocation(line: 219, column: 10, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1604, file: !66, discriminator: 1)
!1672 = !DILocation(line: 219, column: 9, scope: !1671)
!1673 = !DILocation(line: 219, column: 2, scope: !1671)
!1674 = !DILocation(line: 222, column: 18, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1604, file: !66, line: 220, column: 2)
!1676 = !DILocation(line: 222, column: 11, scope: !1675)
!1677 = !DILocation(line: 222, column: 9, scope: !1675)
!1678 = !DILocation(line: 223, column: 11, scope: !1675)
!1679 = !DILocation(line: 223, column: 8, scope: !1675)
!1680 = !DILocation(line: 226, column: 19, scope: !1675)
!1681 = !DILocation(line: 226, column: 11, scope: !1675)
!1682 = !DILocation(line: 226, column: 9, scope: !1675)
!1683 = !DILocation(line: 227, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !66, line: 227, column: 3)
!1685 = !DILocation(line: 227, column: 21, scope: !1684)
!1686 = !DILocation(line: 227, column: 26, scope: !1684)
!1687 = !DILocation(line: 227, column: 32, scope: !1684)
!1688 = !DILocation(line: 227, column: 36, scope: !1684)
!1689 = !DILocation(line: 227, column: 5, scope: !1684)
!1690 = !DILocation(line: 227, column: 49, scope: !1684)
!1691 = !DILocation(line: 227, column: 55, scope: !1684)
!1692 = !DILocation(line: 227, column: 59, scope: !1684)
!1693 = !DILocation(line: 227, column: 41, scope: !1684)
!1694 = !DILocation(line: 227, column: 63, scope: !1684)
!1695 = !DILocation(line: 228, column: 11, scope: !1675)
!1696 = !DILocation(line: 228, column: 8, scope: !1675)
!1697 = !DILocation(line: 231, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1675, file: !66, line: 231, column: 7)
!1699 = !DILocation(line: 231, column: 16, scope: !1698)
!1700 = !DILocation(line: 231, column: 7, scope: !1675)
!1701 = !DILocation(line: 232, column: 4, scope: !1698)
!1702 = !DILocation(line: 234, column: 32, scope: !1675)
!1703 = !DILocation(line: 234, column: 16, scope: !1675)
!1704 = !DILocation(line: 234, column: 14, scope: !1675)
!1705 = !DILocation(line: 235, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1675, file: !66, line: 235, column: 7)
!1707 = !DILocation(line: 235, column: 18, scope: !1706)
!1708 = !DILocation(line: 235, column: 7, scope: !1675)
!1709 = !DILocation(line: 239, column: 11, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !66, line: 236, column: 3)
!1711 = !DILocation(line: 239, column: 20, scope: !1710)
!1712 = !DILocation(line: 237, column: 4, scope: !1710)
!1713 = !DILocation(line: 240, column: 33, scope: !1710)
!1714 = !DILocation(line: 240, column: 4, scope: !1710)
!1715 = !DILocation(line: 241, column: 4, scope: !1710)
!1716 = !DILocation(line: 245, column: 28, scope: !1675)
!1717 = !DILocation(line: 245, column: 8, scope: !1675)
!1718 = !DILocation(line: 245, column: 6, scope: !1675)
!1719 = !DILocation(line: 246, column: 10, scope: !1675)
!1720 = !DILocation(line: 246, column: 3, scope: !1675)
!1721 = !DILocation(line: 249, column: 8, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1675, file: !66, line: 249, column: 7)
!1723 = !DILocation(line: 249, column: 15, scope: !1722)
!1724 = !DILocation(line: 249, column: 7, scope: !1675)
!1725 = !DILocation(line: 250, column: 16, scope: !1722)
!1726 = !DILocation(line: 250, column: 4, scope: !1722)
!1727 = !DILocation(line: 250, column: 11, scope: !1722)
!1728 = !DILocation(line: 250, column: 14, scope: !1722)
!1729 = !DILocation(line: 252, column: 16, scope: !1675)
!1730 = !DILocation(line: 252, column: 4, scope: !1675)
!1731 = !DILocation(line: 252, column: 14, scope: !1675)
!1732 = !DILocation(line: 253, column: 16, scope: !1675)
!1733 = !DILocation(line: 253, column: 20, scope: !1675)
!1734 = !DILocation(line: 253, column: 13, scope: !1675)
!1735 = !DILocation(line: 254, column: 20, scope: !1675)
!1736 = !DILocation(line: 254, column: 3, scope: !1675)
!1737 = !DILocation(line: 254, column: 7, scope: !1675)
!1738 = !DILocation(line: 254, column: 18, scope: !1675)
!1739 = !DILocation(line: 219, column: 2, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1604, file: !66, discriminator: 2)
!1741 = distinct !{!1741, !1669}
!1742 = !DILocation(line: 256, column: 1, scope: !1604)
!1743 = distinct !DISubprogram(name: "add_to_keymap", scope: !66, file: !66, line: 158, type: !1744, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !97, !47, !50, !97}
!1746 = !DILocalVariable(name: "keyname", arg: 1, scope: !1743, file: !66, line: 158, type: !97)
!1747 = !DILocation(line: 158, column: 21, scope: !1743)
!1748 = !DILocalVariable(name: "scancode", arg: 2, scope: !1743, file: !66, line: 158, type: !47)
!1749 = !DILocation(line: 158, column: 36, scope: !1743)
!1750 = !DILocalVariable(name: "modifiers", arg: 3, scope: !1743, file: !66, line: 158, type: !50)
!1751 = !DILocation(line: 158, column: 53, scope: !1743)
!1752 = !DILocalVariable(name: "mapname", arg: 4, scope: !1743, file: !66, line: 158, type: !97)
!1753 = !DILocation(line: 158, column: 70, scope: !1743)
!1754 = !DILocalVariable(name: "keysym", scope: !1743, file: !66, line: 160, type: !70)
!1755 = !DILocation(line: 160, column: 9, scope: !1743)
!1756 = !DILocalVariable(name: "entry", scope: !1743, file: !66, line: 161, type: !56)
!1757 = !DILocation(line: 161, column: 25, scope: !1743)
!1758 = !DILocation(line: 163, column: 27, scope: !1743)
!1759 = !DILocation(line: 163, column: 11, scope: !1743)
!1760 = !DILocation(line: 163, column: 9, scope: !1743)
!1761 = !DILocation(line: 164, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1743, file: !66, line: 164, column: 6)
!1763 = !DILocation(line: 164, column: 13, scope: !1762)
!1764 = !DILocation(line: 164, column: 6, scope: !1743)
!1765 = !DILocation(line: 167, column: 10, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !66, line: 165, column: 2)
!1767 = !DILocation(line: 167, column: 19, scope: !1766)
!1768 = !DILocation(line: 166, column: 3, scope: !1766)
!1769 = !DILocation(line: 168, column: 3, scope: !1766)
!1770 = !DILocation(line: 172, column: 42, scope: !1743)
!1771 = !DILocation(line: 172, column: 27, scope: !1743)
!1772 = !DILocation(line: 172, column: 50, scope: !1743)
!1773 = !DILocation(line: 172, column: 60, scope: !1743)
!1774 = !DILocation(line: 171, column: 2, scope: !1743)
!1775 = !DILocation(line: 175, column: 36, scope: !1743)
!1776 = !DILocation(line: 175, column: 10, scope: !1743)
!1777 = !DILocation(line: 175, column: 8, scope: !1743)
!1778 = !DILocation(line: 178, column: 34, scope: !1743)
!1779 = !DILocation(line: 178, column: 14, scope: !1743)
!1780 = !DILocation(line: 178, column: 2, scope: !1743)
!1781 = !DILocation(line: 178, column: 9, scope: !1743)
!1782 = !DILocation(line: 178, column: 12, scope: !1743)
!1783 = !DILocation(line: 179, column: 9, scope: !1743)
!1784 = !DILocation(line: 179, column: 16, scope: !1743)
!1785 = !DILocation(line: 179, column: 2, scope: !1743)
!1786 = !DILocation(line: 180, column: 24, scope: !1743)
!1787 = !DILocation(line: 180, column: 2, scope: !1743)
!1788 = !DILocation(line: 180, column: 9, scope: !1743)
!1789 = !DILocation(line: 180, column: 13, scope: !1743)
!1790 = !DILocation(line: 180, column: 22, scope: !1743)
!1791 = !DILocation(line: 181, column: 25, scope: !1743)
!1792 = !DILocation(line: 181, column: 2, scope: !1743)
!1793 = !DILocation(line: 181, column: 9, scope: !1743)
!1794 = !DILocation(line: 181, column: 13, scope: !1743)
!1795 = !DILocation(line: 181, column: 23, scope: !1743)
!1796 = !DILocation(line: 183, column: 2, scope: !1743)
!1797 = !DILocation(line: 184, column: 1, scope: !1743)
!1798 = distinct !DISubprogram(name: "new_key_translation_entry", scope: !66, file: !66, line: 114, type: !1799, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!56, !70}
!1801 = !DILocalVariable(name: "keysym", arg: 1, scope: !1798, file: !66, line: 114, type: !70)
!1802 = !DILocation(line: 114, column: 34, scope: !1798)
!1803 = !DILocalVariable(name: "hash", scope: !1798, file: !66, line: 116, type: !53)
!1804 = !DILocation(line: 116, column: 9, scope: !1798)
!1805 = !DILocalVariable(name: "entry", scope: !1798, file: !66, line: 117, type: !56)
!1806 = !DILocation(line: 117, column: 25, scope: !1798)
!1807 = !DILocation(line: 120, column: 31, scope: !1798)
!1808 = !DILocation(line: 120, column: 2, scope: !1798)
!1809 = !DILocation(line: 123, column: 36, scope: !1798)
!1810 = !DILocation(line: 123, column: 10, scope: !1798)
!1811 = !DILocation(line: 123, column: 8, scope: !1798)
!1812 = !DILocation(line: 124, column: 9, scope: !1798)
!1813 = !DILocation(line: 124, column: 2, scope: !1798)
!1814 = !DILocation(line: 125, column: 18, scope: !1798)
!1815 = !DILocation(line: 125, column: 2, scope: !1798)
!1816 = !DILocation(line: 125, column: 9, scope: !1798)
!1817 = !DILocation(line: 125, column: 16, scope: !1798)
!1818 = !DILocation(line: 128, column: 9, scope: !1798)
!1819 = !DILocation(line: 128, column: 16, scope: !1798)
!1820 = !DILocation(line: 128, column: 7, scope: !1798)
!1821 = !DILocation(line: 129, column: 23, scope: !1798)
!1822 = !DILocation(line: 129, column: 16, scope: !1798)
!1823 = !DILocation(line: 129, column: 2, scope: !1798)
!1824 = !DILocation(line: 129, column: 9, scope: !1798)
!1825 = !DILocation(line: 129, column: 14, scope: !1798)
!1826 = !DILocation(line: 130, column: 17, scope: !1798)
!1827 = !DILocation(line: 130, column: 9, scope: !1798)
!1828 = !DILocation(line: 130, column: 2, scope: !1798)
!1829 = !DILocation(line: 130, column: 15, scope: !1798)
!1830 = !DILocation(line: 132, column: 9, scope: !1798)
!1831 = !DILocation(line: 132, column: 2, scope: !1798)
!1832 = distinct !DISubprogram(name: "delete_key_translation_entry", scope: !66, file: !66, line: 77, type: !1833, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !70}
!1835 = !DILocalVariable(name: "keysym", arg: 1, scope: !1832, file: !66, line: 77, type: !70)
!1836 = !DILocation(line: 77, column: 37, scope: !1832)
!1837 = !DILocalVariable(name: "hash", scope: !1832, file: !66, line: 79, type: !53)
!1838 = !DILocation(line: 79, column: 9, scope: !1832)
!1839 = !DILocalVariable(name: "ptr", scope: !1832, file: !66, line: 80, type: !56)
!1840 = !DILocation(line: 80, column: 25, scope: !1832)
!1841 = !DILocalVariable(name: "next", scope: !1832, file: !66, line: 81, type: !56)
!1842 = !DILocation(line: 81, column: 25, scope: !1832)
!1843 = !DILocalVariable(name: "prev", scope: !1832, file: !66, line: 82, type: !56)
!1844 = !DILocation(line: 82, column: 25, scope: !1832)
!1845 = !DILocalVariable(name: "tmp", scope: !1832, file: !66, line: 83, type: !57)
!1846 = !DILocation(line: 83, column: 24, scope: !1832)
!1847 = !DILocation(line: 86, column: 9, scope: !1832)
!1848 = !DILocation(line: 86, column: 16, scope: !1832)
!1849 = !DILocation(line: 86, column: 7, scope: !1832)
!1850 = !DILocation(line: 87, column: 15, scope: !1832)
!1851 = !DILocation(line: 87, column: 8, scope: !1832)
!1852 = !DILocation(line: 87, column: 6, scope: !1832)
!1853 = !DILocation(line: 88, column: 13, scope: !1832)
!1854 = !DILocation(line: 88, column: 6, scope: !1832)
!1855 = !DILocation(line: 88, column: 11, scope: !1832)
!1856 = !DILocation(line: 89, column: 7, scope: !1832)
!1857 = !DILocation(line: 91, column: 2, scope: !1832)
!1858 = !DILocation(line: 91, column: 9, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1832, file: !66, discriminator: 1)
!1860 = !DILocation(line: 91, column: 2, scope: !1859)
!1861 = !DILocation(line: 93, column: 10, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1832, file: !66, line: 92, column: 2)
!1863 = !DILocation(line: 93, column: 15, scope: !1862)
!1864 = !DILocation(line: 93, column: 8, scope: !1862)
!1865 = !DILocation(line: 94, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !66, line: 94, column: 7)
!1867 = !DILocation(line: 94, column: 12, scope: !1866)
!1868 = !DILocation(line: 94, column: 22, scope: !1866)
!1869 = !DILocation(line: 94, column: 19, scope: !1866)
!1870 = !DILocation(line: 94, column: 7, scope: !1862)
!1871 = !DILocation(line: 96, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !66, line: 95, column: 3)
!1873 = !DILocation(line: 96, column: 30, scope: !1872)
!1874 = !DILocation(line: 96, column: 4, scope: !1872)
!1875 = !DILocation(line: 97, column: 17, scope: !1872)
!1876 = !DILocation(line: 97, column: 4, scope: !1872)
!1877 = !DILocation(line: 97, column: 10, scope: !1872)
!1878 = !DILocation(line: 97, column: 15, scope: !1872)
!1879 = !DILocation(line: 98, column: 10, scope: !1872)
!1880 = !DILocation(line: 98, column: 4, scope: !1872)
!1881 = !DILocation(line: 99, column: 3, scope: !1872)
!1882 = !DILocation(line: 102, column: 11, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1866, file: !66, line: 101, column: 3)
!1884 = !DILocation(line: 102, column: 9, scope: !1883)
!1885 = !DILocation(line: 105, column: 9, scope: !1862)
!1886 = !DILocation(line: 105, column: 7, scope: !1862)
!1887 = !DILocation(line: 91, column: 2, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1832, file: !66, discriminator: 2)
!1889 = distinct !{!1889, !1857}
!1890 = !DILocation(line: 109, column: 21, scope: !1832)
!1891 = !DILocation(line: 109, column: 9, scope: !1832)
!1892 = !DILocation(line: 109, column: 2, scope: !1832)
!1893 = !DILocation(line: 109, column: 15, scope: !1832)
!1894 = !DILocation(line: 110, column: 1, scope: !1832)
!1895 = distinct !DISubprogram(name: "free_key_translation", scope: !66, file: !66, line: 63, type: !1896, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !92)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !42}
!1898 = !DILocalVariable(name: "ptr", arg: 1, scope: !1895, file: !66, line: 63, type: !42)
!1899 = !DILocation(line: 63, column: 40, scope: !1895)
!1900 = !DILocalVariable(name: "next", scope: !1895, file: !66, line: 65, type: !42)
!1901 = !DILocation(line: 65, column: 19, scope: !1895)
!1902 = !DILocation(line: 67, column: 2, scope: !1895)
!1903 = !DILocation(line: 67, column: 9, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1895, file: !66, discriminator: 1)
!1905 = !DILocation(line: 67, column: 2, scope: !1904)
!1906 = !DILocation(line: 69, column: 10, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1895, file: !66, line: 68, column: 2)
!1908 = !DILocation(line: 69, column: 15, scope: !1907)
!1909 = !DILocation(line: 69, column: 8, scope: !1907)
!1910 = !DILocation(line: 70, column: 9, scope: !1907)
!1911 = !DILocation(line: 70, column: 3, scope: !1907)
!1912 = !DILocation(line: 71, column: 9, scope: !1907)
!1913 = !DILocation(line: 71, column: 7, scope: !1907)
!1914 = !DILocation(line: 67, column: 2, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1895, file: !66, discriminator: 2)
!1916 = distinct !{!1916, !1902}
!1917 = !DILocation(line: 73, column: 1, scope: !1895)
