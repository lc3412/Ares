; ModuleID = './line286-fe-dcc-server.o.i'
source_filename = "./line286-fe-dcc-server.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SERVER_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, %struct._NET_SENDBUF_REC*, i8 }
%struct._IRC_SERVER_REC = type opaque
%struct.CHAT_DCC_REC = type opaque
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct._NET_SENDBUF_REC = type opaque

@.str = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dcc server started\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dcc closed\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"dcc list print\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_dcc_server_init() #0 !dbg !404 {
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_server_started to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !407
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !408
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !409
  ret void, !dbg !410
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_server_started(%struct.SERVER_DCC_REC*) #0 !dbg !411 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !414, metadata !415), !dbg !416
  %3 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !417
  %4 = bitcast %struct.SERVER_DCC_REC* %3 to i8*, !dbg !417
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !419
  %6 = bitcast i8* %5 to %struct.SERVER_DCC_REC*, !dbg !420
  %7 = icmp ne %struct.SERVER_DCC_REC* %6, null, !dbg !420
  br i1 %7, label %8, label %9, !dbg !421

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !422

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !424

; <label>:10:                                     ; preds = %9, %8
  br label %19, !dbg !426

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !428
  %13 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %12, i32 0, i32 3, !dbg !429
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %13, align 8, !dbg !429
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !428
  %16 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !430
  %17 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %16, i32 0, i32 12, !dbg !431
  %18 = load i32, i32* %17, align 4, !dbg !431
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %15, i8* null, i32 65536, i32 47, i32 %18), !dbg !432
  br label %19, !dbg !433

; <label>:19:                                     ; preds = %11, %10
  ret void, !dbg !434
}

; Function Attrs: nounwind uwtable
define internal void @dcc_closed(%struct.SERVER_DCC_REC*) #0 !dbg !436 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !437, metadata !415), !dbg !438
  %3 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !439
  %4 = bitcast %struct.SERVER_DCC_REC* %3 to i8*, !dbg !439
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !441
  %6 = bitcast i8* %5 to %struct.SERVER_DCC_REC*, !dbg !442
  %7 = icmp ne %struct.SERVER_DCC_REC* %6, null, !dbg !442
  br i1 %7, label %8, label %9, !dbg !443

; <label>:8:                                      ; preds = %1
  br i1 false, label %18, label %10, !dbg !444

; <label>:9:                                      ; preds = %1
  br i1 false, label %10, label %18, !dbg !446

; <label>:10:                                     ; preds = %9, %8
  %11 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !448
  %12 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %11, i32 0, i32 23, !dbg !450
  %13 = load i8, i8* %12, align 8, !dbg !450
  %14 = lshr i8 %13, 3, !dbg !450
  %15 = and i8 %14, 1, !dbg !450
  %16 = zext i8 %15 to i32, !dbg !450
  %17 = icmp ne i32 %16, 0, !dbg !448
  br i1 %17, label %18, label %19, !dbg !451

; <label>:18:                                     ; preds = %10, %9, %8
  br label %27, !dbg !452

; <label>:19:                                     ; preds = %10
  %20 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !454
  %21 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %20, i32 0, i32 3, !dbg !455
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %21, align 8, !dbg !455
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !454
  %24 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !456
  %25 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %24, i32 0, i32 12, !dbg !457
  %26 = load i32, i32* %25, align 4, !dbg !457
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %23, i8* null, i32 65536, i32 48, i32 %26), !dbg !458
  br label %27, !dbg !459

; <label>:27:                                     ; preds = %19, %18
  ret void, !dbg !460
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_list_print(%struct.SERVER_DCC_REC*) #0 !dbg !462 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !463, metadata !415), !dbg !464
  %3 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !465
  %4 = bitcast %struct.SERVER_DCC_REC* %3 to i8*, !dbg !465
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !467
  %6 = bitcast i8* %5 to %struct.SERVER_DCC_REC*, !dbg !468
  %7 = icmp ne %struct.SERVER_DCC_REC* %6, null, !dbg !468
  br i1 %7, label %8, label %9, !dbg !469

; <label>:8:                                      ; preds = %1
  br i1 false, label %18, label %10, !dbg !470

; <label>:9:                                      ; preds = %1
  br i1 false, label %10, label %18, !dbg !472

; <label>:10:                                     ; preds = %9, %8
  %11 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !474
  %12 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %11, i32 0, i32 23, !dbg !476
  %13 = load i8, i8* %12, align 8, !dbg !476
  %14 = lshr i8 %13, 3, !dbg !476
  %15 = and i8 %14, 1, !dbg !476
  %16 = zext i8 %15 to i32, !dbg !476
  %17 = icmp ne i32 %16, 0, !dbg !474
  br i1 %17, label %18, label %19, !dbg !477

; <label>:18:                                     ; preds = %10, %9, %8
  br label %46, !dbg !478

; <label>:19:                                     ; preds = %10
  %20 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !480
  %21 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %20, i32 0, i32 12, !dbg !481
  %22 = load i32, i32* %21, align 4, !dbg !481
  %23 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !482
  %24 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %23, i32 0, i32 23, !dbg !483
  %25 = load i8, i8* %24, align 8, !dbg !483
  %26 = and i8 %25, 1, !dbg !483
  %27 = zext i8 %26 to i32, !dbg !483
  %28 = icmp ne i32 %27, 0, !dbg !482
  %29 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), !dbg !482
  %30 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !484
  %31 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %30, i32 0, i32 23, !dbg !485
  %32 = load i8, i8* %31, align 8, !dbg !485
  %33 = lshr i8 %32, 1, !dbg !485
  %34 = and i8 %33, 1, !dbg !485
  %35 = zext i8 %34 to i32, !dbg !485
  %36 = icmp ne i32 %35, 0, !dbg !484
  %37 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), !dbg !484
  %38 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !486
  %39 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %38, i32 0, i32 23, !dbg !487
  %40 = load i8, i8* %39, align 8, !dbg !487
  %41 = lshr i8 %40, 2, !dbg !487
  %42 = and i8 %41, 1, !dbg !487
  %43 = zext i8 %42 to i32, !dbg !487
  %44 = icmp ne i32 %43, 0, !dbg !486
  %45 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), !dbg !486
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %22, i8* %29, i8* %37, i8* %45), !dbg !488
  br label %46, !dbg !489

; <label>:46:                                     ; preds = %19, %18
  ret void, !dbg !490
}

; Function Attrs: nounwind uwtable
define void @fe_dcc_server_deinit() #0 !dbg !492 {
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_server_started to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !493
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !494
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !495
  ret void, !dbg !496
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!401, !402}
!llvm.ident = !{!403}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line286-fe-dcc-server.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!39 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!40 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!41 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!42 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!43 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!44 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!45 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!46 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!47 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!48 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!49 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!50 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!51 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!52 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!53 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!54 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!55 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!56 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!57 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!58 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!59 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!60 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!61 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!62 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!63 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!64 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!65 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_OWN_DCC", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION_QUERY", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_OWN_DCC_CTCP", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_DCC_MSG", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_ACTION_DCC", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_ACTION_DCC_QUERY", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_OWN_DCC_QUERY", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_DCC_MSG_QUERY", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_DCC_CTCP", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_DCC_CHAT", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CHANNEL", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_NOT_FOUND", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CONNECTED", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_DISCONNECTED", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_DCC_SEND", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CHANNEL", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_DCC_SEND_EXISTS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NO_ROUTE", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NOT_FOUND", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_DCC_SEND_FILE_OPEN_ERROR", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CONNECTED", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_DCC_SEND_COMPLETE", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_DCC_SEND_ABORTED", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_DCC_GET_NOT_FOUND", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_DCC_GET_CONNECTED", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_DCC_GET_COMPLETE", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_DCC_GET_ABORTED", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_DCC_GET_WRITE_ERROR", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_CTCP", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_REPLY", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_TYPE", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_DCC_INVALID_CTCP", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_DCC_CONNECT_ERROR", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_DCC_CANT_CREATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_DCC_REJECTED", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_DCC_REQUEST_SEND", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_DCC_CLOSE", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_DCC_LOWPORT", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_DCC_LIST_HEADER", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_CHAT", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_FILE", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_QUEUED_SEND", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_DCC_LIST_FOOTER", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_SERVER", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_STARTED", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_CLOSED", value: 48)
!118 = !{!119, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !120, line: 9, baseType: !121)
!120 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !124, !124, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_DCC_REC", file: !129, line: 24, baseType: !130)
!129 = !DIFile(filename: "../../../../src/irc/dcc/dcc-server.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SERVER_DCC_REC", file: !129, line: 12, size: 1728, align: 64, elements: !131)
!131 = !{!132, !135, !136, !142, !147, !150, !151, !152, !157, !158, !159, !192, !196, !197, !380, !381, !382, !383, !384, !386, !387, !388, !393, !397, !398, !399, !400}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !133, line: 1, baseType: !134, size: 32, align: 32)
!133 = !DIFile(filename: "../../../../src/irc/dcc/dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !130, file: !133, line: 2, baseType: !134, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !130, file: !133, line: 3, baseType: !137, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !138, line: 75, baseType: !139)
!138 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !140, line: 139, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !130, file: !133, line: 5, baseType: !143, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !145, line: 6, baseType: !146)
!145 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !145, line: 6, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !130, file: !133, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !130, file: !133, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !130, file: !133, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !130, file: !133, line: 10, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !155, line: 9, baseType: !156)
!155 = !DIFile(filename: "../../../../src/irc/dcc/dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !155, line: 9, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !130, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !130, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !130, file: !133, line: 14, baseType: !160, size: 160, align: 32, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !161, line: 99, baseType: !162)
!161 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !163, line: 22, size: 160, align: 32, elements: !164)
!163 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !162, file: !163, line: 23, baseType: !166, size: 16, align: 16)
!166 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !162, file: !163, line: 24, baseType: !168, size: 128, align: 32, offset: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !169, line: 211, size: 128, align: 32, elements: !170)
!169 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !168, file: !169, line: 220, baseType: !172, size: 128, align: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !169, line: 213, size: 128, align: 32, elements: !173)
!173 = !{!174, !181, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !172, file: !169, line: 215, baseType: !175, size: 128, align: 8)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, align: 8, elements: !179)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !177, line: 48, baseType: !178)
!177 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !172, file: !169, line: 217, baseType: !182, size: 128, align: 16)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, align: 16, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !177, line: 49, baseType: !166)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !172, file: !169, line: 218, baseType: !187, size: 128, align: 32)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, align: 32, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 51, baseType: !189)
!189 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !130, file: !133, line: 15, baseType: !193, size: 368, align: 8, offset: 736)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 46)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !130, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !130, file: !133, line: 18, baseType: !198, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !201)
!201 = !{!202, !205, !347, !348, !353, !354, !355, !356, !357, !366, !367, !368, !372, !373, !374, !375, !376, !377, !378, !379}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !200, file: !4, line: 100, baseType: !203, size: 32, align: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !204, line: 49, baseType: !134)
!204 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !200, file: !4, line: 101, baseType: !206, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !209)
!209 = !{!210, !233, !239, !245, !249, !334, !338, !343}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !208, file: !4, line: 133, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !198, !215, !217, !220, !221}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !204, line: 46, baseType: !149)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !218, line: 66, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!219 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !224, line: 42, baseType: !225)
!224 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !224, line: 44, size: 128, align: 64, elements: !226)
!226 = !{!227, !231, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !225, file: !224, line: 46, baseType: !228, size: 32, align: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !229, line: 36, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !218, line: 45, baseType: !189)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !225, file: !224, line: 47, baseType: !203, size: 32, align: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !225, file: !224, line: 48, baseType: !215, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !208, file: !4, line: 138, baseType: !234, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!214, !198, !237, !217, !220, !221}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !208, file: !4, line: 143, baseType: !240, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!214, !198, !243, !244, !221}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !218, line: 51, baseType: !141)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !208, file: !4, line: 147, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!214, !198, !221}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !208, file: !4, line: 149, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !198, !333}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !256)
!256 = !{!257, !259, !280, !309, !311, !315, !316, !317, !318, !326, !327, !328, !329}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !255, file: !16, line: 174, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !204, line: 77, baseType: !126)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !255, file: !16, line: 175, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !263)
!263 = !{!264, !268, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !262, file: !16, line: 198, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !258}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !262, file: !16, line: 199, baseType: !265, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !262, file: !16, line: 200, baseType: !270, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !258, !253, !273, !279}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !258}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !204, line: 50, baseType: !203)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !255, file: !16, line: 177, baseType: !281, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !285)
!285 = !{!286, !291, !295, !299, !303, !304}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !284, file: !16, line: 216, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!278, !253, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !284, file: !16, line: 218, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!278, !253}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !284, file: !16, line: 219, baseType: !296, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!278, !253, !274, !258}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !284, file: !16, line: 222, baseType: !300, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !253}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !284, file: !16, line: 226, baseType: !274, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !284, file: !16, line: 227, baseType: !305, size: 64, align: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !255, file: !16, line: 178, baseType: !310, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !204, line: 55, baseType: !189)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !255, file: !16, line: 180, baseType: !312, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !314)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !255, file: !16, line: 182, baseType: !203, size: 32, align: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !16, line: 183, baseType: !310, size: 32, align: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !255, file: !16, line: 184, baseType: !310, size: 32, align: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !255, file: !16, line: 186, baseType: !319, size: 64, align: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !321, line: 37, baseType: !322)
!321 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !321, line: 39, size: 128, align: 64, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !322, file: !321, line: 41, baseType: !258, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !321, line: 42, baseType: !319, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !255, file: !16, line: 188, baseType: !253, size: 64, align: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !16, line: 189, baseType: !253, size: 64, align: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !16, line: 191, baseType: !148, size: 64, align: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !255, file: !16, line: 193, baseType: !330, size: 64, align: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !332)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !208, file: !4, line: 151, baseType: !335, size: 64, align: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !198}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !208, file: !4, line: 152, baseType: !339, size: 64, align: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!214, !198, !342, !221}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !208, file: !4, line: 155, baseType: !344, size: 64, align: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!342, !198}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !200, file: !4, line: 103, baseType: !215, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !200, file: !4, line: 104, baseType: !349, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !350, line: 77, baseType: !351)
!350 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !350, line: 77, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !200, file: !4, line: 105, baseType: !349, size: 64, align: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !200, file: !4, line: 106, baseType: !215, size: 64, align: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !200, file: !4, line: 107, baseType: !310, size: 32, align: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !200, file: !4, line: 109, baseType: !217, size: 64, align: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !200, file: !4, line: 110, baseType: !358, size: 64, align: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !360, line: 39, baseType: !361)
!360 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !360, line: 41, size: 192, align: 64, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !361, file: !360, line: 43, baseType: !215, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !361, file: !360, line: 44, baseType: !217, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !361, file: !360, line: 45, baseType: !217, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !200, file: !4, line: 111, baseType: !358, size: 64, align: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !200, file: !4, line: 112, baseType: !358, size: 64, align: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !200, file: !4, line: 113, baseType: !369, size: 48, align: 8, offset: 704)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 48, align: 8, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 6)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !200, file: !4, line: 117, baseType: !310, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !200, file: !4, line: 118, baseType: !310, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !200, file: !4, line: 119, baseType: !310, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !200, file: !4, line: 120, baseType: !310, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !200, file: !4, line: 121, baseType: !310, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !200, file: !4, line: 122, baseType: !310, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !200, file: !4, line: 124, baseType: !258, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !200, file: !4, line: 125, baseType: !258, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !130, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !130, file: !133, line: 21, baseType: !385, size: 64, align: 64, offset: 1408)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !161, line: 49, baseType: !219)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !130, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !130, file: !133, line: 25, baseType: !189, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !130, file: !133, line: 27, baseType: !389, size: 64, align: 64, offset: 1536)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !391, line: 37, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !130, file: !129, line: 14, baseType: !394, size: 64, align: 64, offset: 1600)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !161, line: 102, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !161, line: 102, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "accept_send", scope: !130, file: !129, line: 16, baseType: !189, size: 1, align: 32, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "accept_chat", scope: !130, file: !129, line: 17, baseType: !189, size: 1, align: 32, offset: 1665, flags: DIFlagBitField, extraData: i64 1664)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "accept_fserve", scope: !130, file: !129, line: 18, baseType: !189, size: 1, align: 32, offset: 1666, flags: DIFlagBitField, extraData: i64 1664)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "connection_established", scope: !130, file: !129, line: 19, baseType: !189, size: 1, align: 32, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!401 = !{i32 2, !"Dwarf Version", i32 4}
!402 = !{i32 2, !"Debug Info Version", i32 3}
!403 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!404 = distinct !DISubprogram(name: "fe_dcc_server_init", scope: !405, file: !405, line: 70, type: !307, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !406)
!405 = !DIFile(filename: "fe-dcc-server.c", directory: "/home/lichi/Desktop/irssi/task1")
!406 = !{}
!407 = !DILocation(line: 72, column: 2, scope: !404)
!408 = !DILocation(line: 73, column: 2, scope: !404)
!409 = !DILocation(line: 74, column: 2, scope: !404)
!410 = !DILocation(line: 75, column: 1, scope: !404)
!411 = distinct !DISubprogram(name: "dcc_server_started", scope: !405, file: !405, line: 33, type: !412, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !406)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !127}
!414 = !DILocalVariable(name: "dcc", arg: 1, scope: !411, file: !405, line: 33, type: !127)
!415 = !DIExpression()
!416 = !DILocation(line: 33, column: 48, scope: !411)
!417 = !DILocation(line: 35, column: 53, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !405, line: 35, column: 6)
!419 = !DILocation(line: 35, column: 28, scope: !418)
!420 = !DILocation(line: 35, column: 9, scope: !418)
!421 = !DILocation(line: 35, column: 6, scope: !411)
!422 = !DILocation(line: 35, column: 8, scope: !423)
!423 = !DILexicalBlockFile(scope: !418, file: !405, discriminator: 1)
!424 = !DILocation(line: 35, column: 6, scope: !425)
!425 = !DILexicalBlockFile(scope: !411, file: !405, discriminator: 2)
!426 = !DILocation(line: 36, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !405, line: 35, column: 43)
!428 = !DILocation(line: 39, column: 42, scope: !411)
!429 = !DILocation(line: 39, column: 47, scope: !411)
!430 = !DILocation(line: 39, column: 44, scope: !411)
!431 = !DILocation(line: 39, column: 49, scope: !411)
!432 = !DILocation(line: 39, column: 2, scope: !411)
!433 = !DILocation(line: 41, column: 1, scope: !411)
!434 = !DILocation(line: 41, column: 1, scope: !435)
!435 = !DILexicalBlockFile(scope: !411, file: !405, discriminator: 1)
!436 = distinct !DISubprogram(name: "dcc_closed", scope: !405, file: !405, line: 43, type: !412, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !406)
!437 = !DILocalVariable(name: "dcc", arg: 1, scope: !436, file: !405, line: 43, type: !127)
!438 = !DILocation(line: 43, column: 40, scope: !436)
!439 = !DILocation(line: 47, column: 53, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !405, line: 47, column: 6)
!441 = !DILocation(line: 47, column: 28, scope: !440)
!442 = !DILocation(line: 47, column: 9, scope: !440)
!443 = !DILocation(line: 47, column: 42, scope: !440)
!444 = !DILocation(line: 47, column: 8, scope: !445)
!445 = !DILexicalBlockFile(scope: !440, file: !405, discriminator: 1)
!446 = !DILocation(line: 47, column: 42, scope: !447)
!447 = !DILexicalBlockFile(scope: !440, file: !405, discriminator: 2)
!448 = !DILocation(line: 47, column: 45, scope: !449)
!449 = !DILexicalBlockFile(scope: !440, file: !405, discriminator: 3)
!450 = !DILocation(line: 47, column: 50, scope: !449)
!451 = !DILocation(line: 47, column: 6, scope: !449)
!452 = !DILocation(line: 48, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !440, file: !405, line: 47, column: 74)
!454 = !DILocation(line: 51, column: 42, scope: !436)
!455 = !DILocation(line: 51, column: 47, scope: !436)
!456 = !DILocation(line: 51, column: 43, scope: !436)
!457 = !DILocation(line: 51, column: 48, scope: !436)
!458 = !DILocation(line: 51, column: 2, scope: !436)
!459 = !DILocation(line: 53, column: 1, scope: !436)
!460 = !DILocation(line: 53, column: 1, scope: !461)
!461 = !DILexicalBlockFile(scope: !436, file: !405, discriminator: 1)
!462 = distinct !DISubprogram(name: "sig_dcc_list_print", scope: !405, file: !405, line: 55, type: !412, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !406)
!463 = !DILocalVariable(name: "dcc", arg: 1, scope: !462, file: !405, line: 55, type: !127)
!464 = !DILocation(line: 55, column: 48, scope: !462)
!465 = !DILocation(line: 59, column: 53, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !405, line: 59, column: 6)
!467 = !DILocation(line: 59, column: 28, scope: !466)
!468 = !DILocation(line: 59, column: 9, scope: !466)
!469 = !DILocation(line: 59, column: 42, scope: !466)
!470 = !DILocation(line: 59, column: 8, scope: !471)
!471 = !DILexicalBlockFile(scope: !466, file: !405, discriminator: 1)
!472 = !DILocation(line: 59, column: 42, scope: !473)
!473 = !DILexicalBlockFile(scope: !466, file: !405, discriminator: 2)
!474 = !DILocation(line: 59, column: 45, scope: !475)
!475 = !DILexicalBlockFile(scope: !466, file: !405, discriminator: 3)
!476 = !DILocation(line: 59, column: 50, scope: !475)
!477 = !DILocation(line: 59, column: 6, scope: !475)
!478 = !DILocation(line: 60, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !466, file: !405, line: 59, column: 74)
!480 = !DILocation(line: 64, column: 56, scope: !462)
!481 = !DILocation(line: 64, column: 61, scope: !462)
!482 = !DILocation(line: 64, column: 67, scope: !462)
!483 = !DILocation(line: 64, column: 72, scope: !462)
!484 = !DILocation(line: 64, column: 100, scope: !462)
!485 = !DILocation(line: 64, column: 105, scope: !462)
!486 = !DILocation(line: 64, column: 133, scope: !462)
!487 = !DILocation(line: 64, column: 138, scope: !462)
!488 = !DILocation(line: 64, column: 2, scope: !462)
!489 = !DILocation(line: 68, column: 1, scope: !462)
!490 = !DILocation(line: 68, column: 1, scope: !491)
!491 = !DILexicalBlockFile(scope: !462, file: !405, discriminator: 1)
!492 = distinct !DISubprogram(name: "fe_dcc_server_deinit", scope: !405, file: !405, line: 77, type: !307, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !406)
!493 = !DILocation(line: 79, column: 2, scope: !492)
!494 = !DILocation(line: 80, column: 2, scope: !492)
!495 = !DILocation(line: 81, column: 2, scope: !492)
!496 = !DILocation(line: 82, column: 1, scope: !492)
