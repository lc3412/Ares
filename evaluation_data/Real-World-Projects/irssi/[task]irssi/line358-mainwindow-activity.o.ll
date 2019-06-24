; ModuleID = './line358-mainwindow-activity.o.i'
source_filename = "./line358-mainwindow-activity.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"window hilight\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"window activity\00", align 1

; Function Attrs: nounwind uwtable
define void @mainwindow_activity_init() #0 !dbg !234 {
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_activity to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !238
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_activity to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !239
  ret void, !dbg !240
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_activity(%struct._WINDOW_REC*) #0 !dbg !241 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !244, metadata !245), !dbg !246
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !247, metadata !245), !dbg !248
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !249
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 20, !dbg !251
  %7 = load i8*, i8** %6, align 8, !dbg !251
  %8 = bitcast i8* %7 to %struct.GUI_WINDOW_REC*, !dbg !252
  %9 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %8, i32 0, i32 0, !dbg !253
  %10 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %9, align 8, !dbg !253
  %11 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %10, i32 0, i32 0, !dbg !254
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !254
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !255
  %14 = icmp eq %struct._WINDOW_REC* %12, %13, !dbg !256
  br i1 %14, label %15, label %20, !dbg !257

; <label>:15:                                     ; preds = %1
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !258
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 14, !dbg !260
  %18 = load i32, i32* %17, align 8, !dbg !260
  %19 = icmp eq i32 %18, 0, !dbg !261
  br i1 %19, label %20, label %21, !dbg !262

; <label>:20:                                     ; preds = %15, %1
  br label %68, !dbg !263

; <label>:21:                                     ; preds = %15
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !264
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 14, !dbg !265
  store i32 0, i32* %23, align 8, !dbg !266
  br label %24, !dbg !267, !llvm.loop !268

; <label>:24:                                     ; preds = %21
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !269
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 15, !dbg !273
  %27 = load i8*, i8** %26, align 8, !dbg !273
  %28 = icmp ne i8* %27, null, !dbg !269
  br i1 %28, label %29, label %35, !dbg !269

; <label>:29:                                     ; preds = %24
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !274
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 15, !dbg !277
  %32 = load i8*, i8** %31, align 8, !dbg !277
  call void @g_free(i8* %32), !dbg !278
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !279
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 15, !dbg !280
  store i8* null, i8** %34, align 8, !dbg !281
  br label %35, !dbg !282

; <label>:35:                                     ; preds = %29, %24
  br label %36, !dbg !283

; <label>:36:                                     ; preds = %35
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !285
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 4, !dbg !287
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !287
  store %struct._GSList* %39, %struct._GSList** %3, align 8, !dbg !288
  br label %40, !dbg !289

; <label>:40:                                     ; preds = %63, %36
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !290
  %42 = icmp ne %struct._GSList* %41, null, !dbg !293
  br i1 %42, label %43, label %67, !dbg !294

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !295, metadata !245), !dbg !297
  %44 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !298
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 0, !dbg !299
  %46 = load i8*, i8** %45, align 8, !dbg !299
  %47 = bitcast i8* %46 to %struct._WI_ITEM_REC*, !dbg !298
  store %struct._WI_ITEM_REC* %47, %struct._WI_ITEM_REC** %4, align 8, !dbg !297
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !300
  %49 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %48, i32 0, i32 8, !dbg !301
  store i32 0, i32* %49, align 8, !dbg !302
  br label %50, !dbg !303, !llvm.loop !304

; <label>:50:                                     ; preds = %43
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !305
  %52 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %51, i32 0, i32 9, !dbg !309
  %53 = load i8*, i8** %52, align 8, !dbg !309
  %54 = icmp ne i8* %53, null, !dbg !305
  br i1 %54, label %55, label %61, !dbg !305

; <label>:55:                                     ; preds = %50
  %56 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !310
  %57 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %56, i32 0, i32 9, !dbg !313
  %58 = load i8*, i8** %57, align 8, !dbg !313
  call void @g_free(i8* %58), !dbg !314
  %59 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !315
  %60 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %59, i32 0, i32 9, !dbg !316
  store i8* null, i8** %60, align 8, !dbg !317
  br label %61, !dbg !318

; <label>:61:                                     ; preds = %55, %50
  br label %62, !dbg !319

; <label>:62:                                     ; preds = %61
  br label %63, !dbg !321

; <label>:63:                                     ; preds = %62
  %64 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !322
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1, !dbg !324
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !324
  store %struct._GSList* %66, %struct._GSList** %3, align 8, !dbg !325
  br label %40, !dbg !326, !llvm.loop !327

; <label>:67:                                     ; preds = %40
  call void @signal_stop(), !dbg !329
  br label %68, !dbg !330

; <label>:68:                                     ; preds = %67, %20
  ret void, !dbg !331
}

; Function Attrs: nounwind uwtable
define void @mainwindow_activity_deinit() #0 !dbg !333 {
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_activity to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !334
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_activity to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !335
  ret void, !dbg !336
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_free(i8*) #1

declare void @signal_stop() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!231, !232}
!llvm.ident = !{!233}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line358-mainwindow-activity.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !11, !12}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9, !9, !9, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !14, line: 24, baseType: !15)
!14 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 13, size: 320, align: 64, elements: !16)
!16 = !{!17, !143, !225, !226, !227, !228, !229, !230}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !15, file: !14, line: 14, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !20, line: 34, baseType: !21)
!20 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 16, size: 704, align: 64, elements: !22)
!22 = !{!23, !122, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !21, file: !20, line: 17, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !26, line: 117, baseType: !27)
!26 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !28, line: 28, size: 1280, align: 64, elements: !29)
!28 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!29 = !{!30, !32, !35, !36, !37, !47, !86, !87, !88, !89, !90, !91, !93, !94, !95, !114, !115, !116, !117, !118, !119, !120, !121}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !27, file: !28, line: 29, baseType: !31, size: 32, align: 32)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 30, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !27, file: !28, line: 32, baseType: !31, size: 32, align: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !27, file: !28, line: 32, baseType: !31, size: 32, align: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !27, file: !28, line: 34, baseType: !38, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !40, line: 37, baseType: !41)
!40 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !40, line: 39, size: 128, align: 64, elements: !42)
!42 = !{!43, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !40, line: 41, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !45, line: 77, baseType: !11)
!45 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !40, line: 42, baseType: !38, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !27, file: !28, line: 35, baseType: !48, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !26, line: 108, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !51, line: 5, size: 704, align: 64, elements: !52)
!51 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !55, !56, !61, !62, !66, !67, !68, !74, !75, !76, !80}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !54, line: 3, baseType: !31, size: 32, align: 32)
!54 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !50, file: !54, line: 4, baseType: !31, size: 32, align: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !50, file: !54, line: 5, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !59, line: 37, baseType: !60)
!59 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !59, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !50, file: !54, line: 7, baseType: !11, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !50, file: !54, line: 8, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !26, line: 107, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !26, line: 107, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !50, file: !54, line: 9, baseType: !33, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !54, line: 10, baseType: !33, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !50, file: !54, line: 11, baseType: !69, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !70, line: 75, baseType: !71)
!70 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !72, line: 139, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !50, file: !54, line: 12, baseType: !31, size: 32, align: 32, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !50, file: !54, line: 13, baseType: !33, size: 64, align: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !50, file: !54, line: 15, baseType: !77, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !48}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !50, file: !54, line: 17, baseType: !81, size: 64, align: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !48}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !27, file: !28, line: 36, baseType: !63, size: 64, align: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !27, file: !28, line: 37, baseType: !63, size: 64, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !27, file: !28, line: 38, baseType: !33, size: 64, align: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !27, file: !28, line: 40, baseType: !31, size: 32, align: 32, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !27, file: !28, line: 41, baseType: !38, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !27, file: !28, line: 43, baseType: !92, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!92 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !27, file: !28, line: 44, baseType: !92, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !27, file: !28, line: 45, baseType: !92, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !27, file: !28, line: 48, baseType: !96, size: 64, align: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !98, line: 14, baseType: !99)
!98 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 6, size: 256, align: 64, elements: !100)
!100 = !{!101, !102, !111, !112, !113}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !98, line: 7, baseType: !33, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !99, file: !98, line: 9, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !105, line: 37, baseType: !106)
!105 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !105, line: 39, size: 192, align: 64, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !106, file: !105, line: 41, baseType: !44, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !105, line: 42, baseType: !103, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !105, line: 43, baseType: !103, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !99, file: !98, line: 10, baseType: !31, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !99, file: !98, line: 12, baseType: !31, size: 32, align: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !99, file: !98, line: 13, baseType: !31, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !27, file: !28, line: 49, baseType: !33, size: 64, align: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !27, file: !28, line: 51, baseType: !31, size: 32, align: 32, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !27, file: !28, line: 52, baseType: !33, size: 64, align: 64, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !27, file: !28, line: 54, baseType: !69, size: 64, align: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !27, file: !28, line: 55, baseType: !69, size: 64, align: 64, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !27, file: !28, line: 57, baseType: !33, size: 64, align: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !27, file: !28, line: 58, baseType: !11, size: 64, align: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !27, file: !28, line: 60, baseType: !11, size: 64, align: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !21, file: !20, line: 19, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !125, line: 4, baseType: !126)
!125 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !125, line: 4, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !21, file: !20, line: 20, baseType: !31, size: 32, align: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !21, file: !20, line: 22, baseType: !31, size: 32, align: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !21, file: !20, line: 22, baseType: !31, size: 32, align: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !21, file: !20, line: 23, baseType: !31, size: 32, align: 32, offset: 224)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !21, file: !20, line: 23, baseType: !31, size: 32, align: 32, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !21, file: !20, line: 24, baseType: !31, size: 32, align: 32, offset: 288)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !21, file: !20, line: 24, baseType: !31, size: 32, align: 32, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !21, file: !20, line: 26, baseType: !38, size: 64, align: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !21, file: !20, line: 27, baseType: !31, size: 32, align: 32, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !21, file: !20, line: 27, baseType: !31, size: 32, align: 32, offset: 480)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !21, file: !20, line: 28, baseType: !31, size: 32, align: 32, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !21, file: !20, line: 29, baseType: !31, size: 32, align: 32, offset: 544)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !21, file: !20, line: 29, baseType: !31, size: 32, align: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !21, file: !20, line: 30, baseType: !31, size: 32, align: 32, offset: 608)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !21, file: !20, line: 32, baseType: !92, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !21, file: !20, line: 33, baseType: !92, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !15, file: !14, line: 15, baseType: !144, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !146, line: 7, baseType: !147)
!146 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !146, line: 50, size: 960, align: 64, elements: !148)
!148 = !{!149, !190, !191, !192, !193, !194, !195, !200, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !147, file: !146, line: 51, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !152, line: 72, baseType: !153)
!152 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 60, size: 448, align: 64, elements: !154)
!154 = !{!155, !156, !173, !174, !175, !186, !187, !188, !189}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !153, file: !152, line: 61, baseType: !38, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !153, file: !152, line: 62, baseType: !157, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !152, line: 52, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !152, line: 34, size: 320, align: 64, elements: !160)
!160 = !{!161, !163, !164, !167}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !159, file: !152, line: 48, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !152, line: 48, baseType: !162, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !159, file: !152, line: 50, baseType: !165, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !159, file: !152, line: 51, baseType: !168, size: 128, align: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !152, line: 32, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 29, size: 128, align: 64, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !169, file: !152, line: 30, baseType: !31, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !169, file: !152, line: 31, baseType: !69, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !153, file: !152, line: 63, baseType: !31, size: 32, align: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !153, file: !152, line: 65, baseType: !157, size: 64, align: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !153, file: !152, line: 66, baseType: !176, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !152, line: 58, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 54, size: 131008, align: 32, elements: !179)
!179 = !{!180, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !178, file: !152, line: 55, baseType: !181, size: 130944, align: 8)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 130944, align: 8, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 16368)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !178, file: !152, line: 56, baseType: !31, size: 32, align: 32, offset: 130944)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !178, file: !152, line: 57, baseType: !31, size: 32, align: 32, offset: 130976)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !153, file: !152, line: 68, baseType: !31, size: 32, align: 32, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !153, file: !152, line: 69, baseType: !31, size: 32, align: 32, offset: 352)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !153, file: !152, line: 70, baseType: !31, size: 32, align: 32, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !153, file: !152, line: 71, baseType: !92, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !147, file: !146, line: 53, baseType: !38, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !147, file: !146, line: 55, baseType: !123, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !147, file: !146, line: 56, baseType: !31, size: 32, align: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !147, file: !146, line: 56, baseType: !31, size: 32, align: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !147, file: !146, line: 58, baseType: !31, size: 32, align: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !147, file: !146, line: 59, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !146, line: 10, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!31, !144, !157, !31}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !147, file: !146, line: 61, baseType: !201, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !146, line: 48, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 37, size: 192, align: 64, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !203, file: !146, line: 38, baseType: !31, size: 32, align: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !203, file: !146, line: 39, baseType: !31, size: 32, align: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !203, file: !146, line: 41, baseType: !57, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !203, file: !146, line: 45, baseType: !166, size: 8, align: 8, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !203, file: !146, line: 47, baseType: !31, size: 32, align: 32, offset: 160)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !147, file: !146, line: 63, baseType: !31, size: 32, align: 32, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !147, file: !146, line: 66, baseType: !157, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !147, file: !146, line: 68, baseType: !31, size: 32, align: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !147, file: !146, line: 71, baseType: !157, size: 64, align: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !147, file: !146, line: 72, baseType: !31, size: 32, align: 32, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !147, file: !146, line: 76, baseType: !57, size: 64, align: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !147, file: !146, line: 79, baseType: !31, size: 32, align: 32, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !147, file: !146, line: 82, baseType: !31, size: 32, align: 32, offset: 864)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !147, file: !146, line: 84, baseType: !92, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !147, file: !146, line: 86, baseType: !92, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !147, file: !146, line: 88, baseType: !92, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !147, file: !146, line: 90, baseType: !92, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !147, file: !146, line: 92, baseType: !92, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !147, file: !146, line: 94, baseType: !92, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !147, file: !146, line: 96, baseType: !92, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !15, file: !14, line: 17, baseType: !92, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !15, file: !14, line: 18, baseType: !92, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !15, file: !14, line: 20, baseType: !92, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !15, file: !14, line: 21, baseType: !92, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !15, file: !14, line: 22, baseType: !157, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !15, file: !14, line: 23, baseType: !69, size: 64, align: 64, offset: 256)
!231 = !{i32 2, !"Dwarf Version", i32 4}
!232 = !{i32 2, !"Debug Info Version", i32 3}
!233 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!234 = distinct !DISubprogram(name: "mainwindow_activity_init", scope: !235, file: !235, line: 47, type: !236, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!235 = !DIFile(filename: "mainwindow-activity.c", directory: "/home/lichi/Desktop/irssi/task1")
!236 = !DISubroutineType(types: !237)
!237 = !{null}
!238 = !DILocation(line: 49, column: 2, scope: !234)
!239 = !DILocation(line: 50, column: 2, scope: !234)
!240 = !DILocation(line: 51, column: 1, scope: !234)
!241 = distinct !DISubprogram(name: "sig_activity", scope: !235, file: !235, line: 28, type: !242, isLocal: true, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !24}
!244 = !DILocalVariable(name: "window", arg: 1, scope: !241, file: !235, line: 28, type: !24)
!245 = !DIExpression()
!246 = !DILocation(line: 28, column: 38, scope: !241)
!247 = !DILocalVariable(name: "tmp", scope: !241, file: !235, line: 30, type: !38)
!248 = !DILocation(line: 30, column: 10, scope: !241)
!249 = !DILocation(line: 32, column: 30, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !235, line: 32, column: 6)
!251 = !DILocation(line: 32, column: 39, scope: !250)
!252 = !DILocation(line: 32, column: 9, scope: !250)
!253 = !DILocation(line: 32, column: 51, scope: !250)
!254 = !DILocation(line: 32, column: 59, scope: !250)
!255 = !DILocation(line: 32, column: 70, scope: !250)
!256 = !DILocation(line: 32, column: 66, scope: !250)
!257 = !DILocation(line: 32, column: 79, scope: !250)
!258 = !DILocation(line: 32, column: 82, scope: !259)
!259 = !DILexicalBlockFile(scope: !250, file: !235, discriminator: 1)
!260 = !DILocation(line: 32, column: 90, scope: !259)
!261 = !DILocation(line: 32, column: 101, scope: !259)
!262 = !DILocation(line: 32, column: 6, scope: !259)
!263 = !DILocation(line: 33, column: 3, scope: !250)
!264 = !DILocation(line: 35, column: 2, scope: !241)
!265 = !DILocation(line: 35, column: 10, scope: !241)
!266 = !DILocation(line: 35, column: 21, scope: !241)
!267 = !DILocation(line: 36, column: 2, scope: !241)
!268 = distinct !{!268, !267}
!269 = !DILocation(line: 36, column: 11, scope: !270)
!270 = !DILexicalBlockFile(scope: !271, file: !235, discriminator: 1)
!271 = distinct !DILexicalBlock(scope: !272, file: !235, line: 36, column: 11)
!272 = distinct !DILexicalBlock(scope: !241, file: !235, line: 36, column: 5)
!273 = !DILocation(line: 36, column: 19, scope: !270)
!274 = !DILocation(line: 36, column: 43, scope: !275)
!275 = !DILexicalBlockFile(scope: !276, file: !235, discriminator: 2)
!276 = distinct !DILexicalBlock(scope: !271, file: !235, line: 36, column: 34)
!277 = !DILocation(line: 36, column: 51, scope: !275)
!278 = !DILocation(line: 36, column: 36, scope: !275)
!279 = !DILocation(line: 36, column: 68, scope: !275)
!280 = !DILocation(line: 36, column: 76, scope: !275)
!281 = !DILocation(line: 36, column: 91, scope: !275)
!282 = !DILocation(line: 36, column: 3, scope: !275)
!283 = !DILocation(line: 36, column: 5, scope: !284)
!284 = !DILexicalBlockFile(scope: !272, file: !235, discriminator: 3)
!285 = !DILocation(line: 38, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !241, file: !235, line: 38, column: 2)
!287 = !DILocation(line: 38, column: 21, scope: !286)
!288 = !DILocation(line: 38, column: 11, scope: !286)
!289 = !DILocation(line: 38, column: 7, scope: !286)
!290 = !DILocation(line: 38, column: 28, scope: !291)
!291 = !DILexicalBlockFile(scope: !292, file: !235, discriminator: 1)
!292 = distinct !DILexicalBlock(scope: !286, file: !235, line: 38, column: 2)
!293 = !DILocation(line: 38, column: 32, scope: !291)
!294 = !DILocation(line: 38, column: 2, scope: !291)
!295 = !DILocalVariable(name: "item", scope: !296, file: !235, line: 39, type: !48)
!296 = distinct !DILexicalBlock(scope: !292, file: !235, line: 38, column: 57)
!297 = !DILocation(line: 39, column: 16, scope: !296)
!298 = !DILocation(line: 39, column: 23, scope: !296)
!299 = !DILocation(line: 39, column: 28, scope: !296)
!300 = !DILocation(line: 41, column: 3, scope: !296)
!301 = !DILocation(line: 41, column: 9, scope: !296)
!302 = !DILocation(line: 41, column: 20, scope: !296)
!303 = !DILocation(line: 42, column: 3, scope: !296)
!304 = distinct !{!304, !303}
!305 = !DILocation(line: 42, column: 12, scope: !306)
!306 = !DILexicalBlockFile(scope: !307, file: !235, discriminator: 1)
!307 = distinct !DILexicalBlock(scope: !308, file: !235, line: 42, column: 12)
!308 = distinct !DILexicalBlock(scope: !296, file: !235, line: 42, column: 6)
!309 = !DILocation(line: 42, column: 18, scope: !306)
!310 = !DILocation(line: 42, column: 42, scope: !311)
!311 = !DILexicalBlockFile(scope: !312, file: !235, discriminator: 2)
!312 = distinct !DILexicalBlock(scope: !307, file: !235, line: 42, column: 33)
!313 = !DILocation(line: 42, column: 48, scope: !311)
!314 = !DILocation(line: 42, column: 35, scope: !311)
!315 = !DILocation(line: 42, column: 65, scope: !311)
!316 = !DILocation(line: 42, column: 71, scope: !311)
!317 = !DILocation(line: 42, column: 86, scope: !311)
!318 = !DILocation(line: 42, column: 4, scope: !311)
!319 = !DILocation(line: 42, column: 6, scope: !320)
!320 = !DILexicalBlockFile(scope: !308, file: !235, discriminator: 3)
!321 = !DILocation(line: 43, column: 2, scope: !296)
!322 = !DILocation(line: 38, column: 46, scope: !323)
!323 = !DILexicalBlockFile(scope: !292, file: !235, discriminator: 2)
!324 = !DILocation(line: 38, column: 51, scope: !323)
!325 = !DILocation(line: 38, column: 44, scope: !323)
!326 = !DILocation(line: 38, column: 2, scope: !323)
!327 = distinct !{!327, !328}
!328 = !DILocation(line: 38, column: 2, scope: !241)
!329 = !DILocation(line: 44, column: 2, scope: !241)
!330 = !DILocation(line: 45, column: 1, scope: !241)
!331 = !DILocation(line: 45, column: 1, scope: !332)
!332 = !DILexicalBlockFile(scope: !241, file: !235, discriminator: 1)
!333 = distinct !DISubprogram(name: "mainwindow_activity_deinit", scope: !235, file: !235, line: 53, type: !236, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!334 = !DILocation(line: 55, column: 2, scope: !333)
!335 = !DILocation(line: 56, column: 2, scope: !333)
!336 = !DILocation(line: 57, column: 1, scope: !333)
