; ModuleID = './[inter]xclip.o.i'
source_filename = "./[inter]xclip.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._XDisplay = type opaque
%struct.XSelectionRequestEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i64, i64 }
%struct.XSelectionEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i64 }
%struct.XWindowAttributes = type { i32, i32, i32, i32, i32, i32, %struct.Visual*, i64, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, %struct.Screen* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct._XGC = type opaque
%union._XEvent = type { [24 x i64] }
%struct.XPropertyEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i32 }
%struct.anon = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct._XrmHashBucketRec = type opaque

@probing_selections = internal global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"xclip_handle_SelectionNotify(), unable to find suitable target, using default text format\00", align 1
@rdesktop_is_selection_owner = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"xclip_handle_SelectionRequest(), selection=%s, target=%s, property=%s\00", align 1
@g_display = external global %struct._XDisplay*, align 8
@targets_atom = internal global i64 0, align 8
@targets = internal global [8 x i64] zeroinitializer, align 16
@num_targets = internal global i32 0, align 4
@timestamp_atom = internal global i64 0, align 8
@acquire_time = internal global i64 0, align 8
@rdesktop_clipboard_formats_atom = internal global i64 0, align 8
@formats_data = internal global i8* null, align 8
@formats_data_length = internal global i32 0, align 4
@has_selection_request = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"xclip_handle_SelectionRequest(), overlapping clipboard request, skipping.\00", align 1
@rdesktop_native_atom = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [79 x i8] c"xclip_handle_SelectionRequest(), requested native format without specify which\00", align 1
@format_string_atom = internal global i64 0, align 8
@format_utf8_string_atom = internal global i64 0, align 8
@format_unicode_atom = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [72 x i8] c"xclip_handle_SelectionRequest(), unsupported target format, target='%s'\00", align 1
@selection_request = internal global %struct.XSelectionRequestEvent zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"xclip_handle_SelectionClear()\00", align 1
@g_waiting_for_INCR = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"xclip_handle_PropertyNotify(), g_waiting_for_INCR != 0\00", align 1
@g_wnd = external global i64, align 8
@rdesktop_clipboard_target_atom = internal global i64 0, align 8
@g_clip_buflen = internal global i32 0, align 4
@g_clip_buffer = internal global i8* null, align 8
@g_incr_target = internal global i64 0, align 8
@rdesktop_selection_notify_atom = internal global i64 0, align 8
@g_last_gesturetime = external global i64, align 8
@primary_atom = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"failed to acquire ownership of PRIMARY clipboard\00", align 1
@clipboard_atom = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [51 x i8] c"failed to acquire ownership of CLIPBOARD clipboard\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"ui_clip_handle_data(), no handler for selection target '%s'\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"request from server for format %d\00", align 1
@rdp_clipboard_request_format = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [75 x i8] c"ui_clip_request_data(), selection probe in progress, cannot handle request\00", align 1
@auto_mode = internal global i32 1, align 4
@primary_timestamp = internal global i64 0, align 8
@clipboard_timestamp = internal global i64 0, align 8
@rdesktop_primary_timestamp_target_atom = internal global i64 0, align 8
@rdesktop_clipboard_timestamp_target_atom = internal global i64 0, align 8
@g_rdpclip = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"PRIMARYCLIPBOARD\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"CLIPBOARD\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"invalid clipboard mode '%s'\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"PRIMARY\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TIMESTAMP\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"_RDESKTOP_CLIPBOARD_TARGET\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"_RDESKTOP_PRIMARY_TIMESTAMP_TARGET\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"_RDESKTOP_CLIPBOARD_TIMESTAMP_TARGET\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"INCR\00", align 1
@incr_atom = internal global i64 0, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"text/unicode\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"_RDESKTOP_SELECTION_NOTIFY\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"_RDESKTOP_NATIVE\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"_RDESKTOP_CLIPBOARD_FORMATS\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"_RDESKTOP_PRIMARY_OWNER\00", align 1
@rdesktop_primary_owner_atom = internal global i64 0, align 8
@.str.31 = private unnamed_addr constant [26 x i8] c"_RDESKTOP_CLIPBOARD_OWNER\00", align 1
@rdesktop_clipboard_owner_atom = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [79 x i8] c"xclip_provide_selection(), requestor=0x%08x, target=%s, property=%s, length=%u\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"xclip_refuse_selection(), requestor=0x%08x, target=%s, property=%s\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"xclip_probe_selection(), already probing selections, scheduling reprobe\00", align 1
@reprobe_selections = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [44 x i8] c"xclip_probe_selection(), probing selections\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"xclip_probe_selection(), no owner of any selection\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"xclip_send_data_with_convert(), target=%s, size=%u\00", align 1
@.str.38 = private unnamed_addr constant [76 x i8] c"xclip_send_data_with_convert(), convert failed, locale charset %s not found\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"UCS-2\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"xclip_send_data_with_convert(), sending unicode string of %d bytes\00", align 1

; Function Attrs: nounwind uwtable
define void @xclip_handle_SelectionNotify(%struct.XSelectionEvent*) #0 !dbg !576 {
  %2 = alloca %struct.XSelectionEvent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.XWindowAttributes, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.XSelectionEvent* %0, %struct.XSelectionEvent** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XSelectionEvent** %2, metadata !593, metadata !594), !dbg !595
  call void @llvm.dbg.declare(metadata i64* %3, metadata !596, metadata !594), !dbg !597
  call void @llvm.dbg.declare(metadata i64* %4, metadata !598, metadata !594), !dbg !599
  call void @llvm.dbg.declare(metadata i64* %5, metadata !600, metadata !594), !dbg !601
  call void @llvm.dbg.declare(metadata %struct.XWindowAttributes* %6, metadata !602, metadata !594), !dbg !629
  call void @llvm.dbg.declare(metadata i64* %7, metadata !630, metadata !594), !dbg !631
  call void @llvm.dbg.declare(metadata i64** %8, metadata !632, metadata !594), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %9, metadata !635, metadata !594), !dbg !636
  call void @llvm.dbg.declare(metadata i32* %10, metadata !637, metadata !594), !dbg !638
  call void @llvm.dbg.declare(metadata i8** %11, metadata !639, metadata !594), !dbg !640
  store i8* null, i8** %11, align 8, !dbg !640
  %12 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %2, align 8, !dbg !641
  %13 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %12, i32 0, i32 7, !dbg !643
  %14 = load i64, i64* %13, align 8, !dbg !643
  %15 = icmp eq i64 %14, 0, !dbg !644
  br i1 %15, label %16, label %18, !dbg !645

; <label>:16:                                     ; preds = %1
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !646
  br label %18, !dbg !646

; <label>:18:                                     ; preds = %16, %1
  br label %26, !dbg !647

; <label>:19:                                     ; preds = %31
  %20 = load i8*, i8** %11, align 8, !dbg !648
  %21 = icmp ne i8* %20, null, !dbg !648
  br i1 %21, label %22, label %25, !dbg !650

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %11, align 8, !dbg !651
  %24 = call i32 @XFree(i8* %23), !dbg !652
  br label %25, !dbg !652

; <label>:25:                                     ; preds = %22, %19
  ret void, !dbg !653

; <label>:26:                                     ; preds = %18
  call void @xclip_clear_target_props(), !dbg !654
  %27 = load i32, i32* @probing_selections, align 4, !dbg !655
  %28 = icmp ne i32 %27, 0, !dbg !655
  br i1 %28, label %29, label %30, !dbg !657

; <label>:29:                                     ; preds = %26
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i32 0, i32 0)), !dbg !658
  store i32 0, i32* @probing_selections, align 4, !dbg !660
  store i32 0, i32* @rdesktop_is_selection_owner, align 4, !dbg !661
  call void @cliprdr_send_simple_native_format_announce(i32 13), !dbg !662
  br label %31, !dbg !663

; <label>:30:                                     ; preds = %26
  call void @helper_cliprdr_send_empty_response(), !dbg !664
  br label %31

; <label>:31:                                     ; preds = %30, %29
  br label %19, !dbg !666
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @assert(...) #2

declare i32 @XFree(i8*) #2

declare void @logger(i32, i32, i8*, ...) #2

declare void @cliprdr_send_simple_native_format_announce(i32) #2

; Function Attrs: nounwind uwtable
define void @xclip_handle_SelectionRequest(%struct.XSelectionRequestEvent*) #0 !dbg !667 {
  %2 = alloca %struct.XSelectionRequestEvent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.XSelectionRequestEvent* %0, %struct.XSelectionRequestEvent** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XSelectionRequestEvent** %2, metadata !671, metadata !594), !dbg !672
  call void @llvm.dbg.declare(metadata i64* %3, metadata !673, metadata !594), !dbg !674
  call void @llvm.dbg.declare(metadata i64* %4, metadata !675, metadata !594), !dbg !676
  call void @llvm.dbg.declare(metadata i8** %5, metadata !677, metadata !594), !dbg !678
  store i8* null, i8** %5, align 8, !dbg !678
  call void @llvm.dbg.declare(metadata i32* %6, metadata !679, metadata !594), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %7, metadata !681, metadata !594), !dbg !682
  call void @llvm.dbg.declare(metadata i64* %8, metadata !683, metadata !594), !dbg !684
  %9 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !685
  %10 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !686
  %11 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %10, i32 0, i32 6, !dbg !687
  %12 = load i64, i64* %11, align 8, !dbg !687
  %13 = call i8* @XGetAtomName(%struct._XDisplay* %9, i64 %12), !dbg !688
  %14 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !689
  %15 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !690
  %16 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %15, i32 0, i32 7, !dbg !691
  %17 = load i64, i64* %16, align 8, !dbg !691
  %18 = call i8* @XGetAtomName(%struct._XDisplay* %14, i64 %17), !dbg !692
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !694
  %20 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !695
  %21 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %20, i32 0, i32 8, !dbg !696
  %22 = load i64, i64* %21, align 8, !dbg !696
  %23 = call i8* @XGetAtomName(%struct._XDisplay* %19, i64 %22), !dbg !697
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i32 0, i32 0), i8* %13, i8* %18, i8* %23), !dbg !698
  %24 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !699
  %25 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %24, i32 0, i32 7, !dbg !701
  %26 = load i64, i64* %25, align 8, !dbg !701
  %27 = load i64, i64* @targets_atom, align 8, !dbg !702
  %28 = icmp eq i64 %26, %27, !dbg !703
  br i1 %28, label %29, label %32, !dbg !704

; <label>:29:                                     ; preds = %1
  %30 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !705
  %31 = load i32, i32* @num_targets, align 4, !dbg !707
  call void @xclip_provide_selection(%struct.XSelectionRequestEvent* %30, i64 4, i32 32, i8* bitcast ([8 x i64]* @targets to i8*), i32 %31), !dbg !708
  br label %125, !dbg !709

; <label>:32:                                     ; preds = %1
  %33 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !710
  %34 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %33, i32 0, i32 7, !dbg !712
  %35 = load i64, i64* %34, align 8, !dbg !712
  %36 = load i64, i64* @timestamp_atom, align 8, !dbg !713
  %37 = icmp eq i64 %35, %36, !dbg !714
  br i1 %37, label %38, label %40, !dbg !715

; <label>:38:                                     ; preds = %32
  %39 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !716
  call void @xclip_provide_selection(%struct.XSelectionRequestEvent* %39, i64 19, i32 32, i8* bitcast (i64* @acquire_time to i8*), i32 1), !dbg !718
  br label %125, !dbg !719

; <label>:40:                                     ; preds = %32
  %41 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !720
  %42 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %41, i32 0, i32 7, !dbg !722
  %43 = load i64, i64* %42, align 8, !dbg !722
  %44 = load i64, i64* @rdesktop_clipboard_formats_atom, align 8, !dbg !723
  %45 = icmp eq i64 %43, %44, !dbg !724
  br i1 %45, label %46, label %50, !dbg !725

; <label>:46:                                     ; preds = %40
  %47 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !726
  %48 = load i8*, i8** @formats_data, align 8, !dbg !728
  %49 = load i32, i32* @formats_data_length, align 4, !dbg !729
  call void @xclip_provide_selection(%struct.XSelectionRequestEvent* %47, i64 31, i32 8, i8* %48, i32 %49), !dbg !730
  br label %123, !dbg !731

; <label>:50:                                     ; preds = %40
  %51 = load i32, i32* @has_selection_request, align 4, !dbg !732
  %52 = icmp ne i32 %51, 0, !dbg !732
  br i1 %52, label %53, label %55, !dbg !735

; <label>:53:                                     ; preds = %50
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0)), !dbg !736
  %54 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !738
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* %54), !dbg !739
  br label %125, !dbg !740

; <label>:55:                                     ; preds = %50
  %56 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !741
  %57 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %56, i32 0, i32 7, !dbg !743
  %58 = load i64, i64* %57, align 8, !dbg !743
  %59 = load i64, i64* @rdesktop_native_atom, align 8, !dbg !744
  %60 = icmp eq i64 %58, %59, !dbg !745
  br i1 %60, label %61, label %83, !dbg !746

; <label>:61:                                     ; preds = %55
  %62 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !747
  %63 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !749
  %64 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %63, i32 0, i32 5, !dbg !750
  %65 = load i64, i64* %64, align 8, !dbg !750
  %66 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !751
  %67 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %66, i32 0, i32 8, !dbg !752
  %68 = load i64, i64* %67, align 8, !dbg !752
  %69 = call i32 @XGetWindowProperty(%struct._XDisplay* %62, i64 %65, i64 %68, i64 0, i64 1, i32 1, i64 19, i64* %8, i32* %6, i64* %3, i64* %4, i8** %5), !dbg !753
  store i32 %69, i32* %7, align 4, !dbg !754
  %70 = load i32, i32* %7, align 4, !dbg !755
  %71 = icmp ne i32 %70, 0, !dbg !757
  br i1 %71, label %75, label %72, !dbg !758

; <label>:72:                                     ; preds = %61
  %73 = load i8*, i8** %5, align 8, !dbg !759
  %74 = icmp ne i8* %73, null, !dbg !759
  br i1 %74, label %77, label %75, !dbg !761

; <label>:75:                                     ; preds = %72, %61
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i32 0, i32 0)), !dbg !762
  %76 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !764
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* %76), !dbg !765
  br label %125, !dbg !766

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %5, align 8, !dbg !767
  %79 = bitcast i8* %78 to i32*, !dbg !768
  %80 = load i32, i32* %79, align 4, !dbg !768
  store i32 %80, i32* %6, align 4, !dbg !769
  %81 = load i8*, i8** %5, align 8, !dbg !770
  %82 = call i32 @XFree(i8* %81), !dbg !771
  br label %119, !dbg !772

; <label>:83:                                     ; preds = %55
  %84 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !773
  %85 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %84, i32 0, i32 7, !dbg !775
  %86 = load i64, i64* %85, align 8, !dbg !775
  %87 = load i64, i64* @format_string_atom, align 8, !dbg !776
  %88 = icmp eq i64 %86, %87, !dbg !777
  br i1 %88, label %94, label %89, !dbg !778

; <label>:89:                                     ; preds = %83
  %90 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !779
  %91 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %90, i32 0, i32 7, !dbg !781
  %92 = load i64, i64* %91, align 8, !dbg !781
  %93 = icmp eq i64 %92, 31, !dbg !782
  br i1 %93, label %94, label %95, !dbg !783

; <label>:94:                                     ; preds = %89, %83
  store i32 1, i32* %6, align 4, !dbg !784
  br label %118, !dbg !786

; <label>:95:                                     ; preds = %89
  %96 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !787
  %97 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %96, i32 0, i32 7, !dbg !789
  %98 = load i64, i64* %97, align 8, !dbg !789
  %99 = load i64, i64* @format_utf8_string_atom, align 8, !dbg !790
  %100 = icmp eq i64 %98, %99, !dbg !791
  br i1 %100, label %101, label %102, !dbg !792

; <label>:101:                                    ; preds = %95
  store i32 13, i32* %6, align 4, !dbg !793
  br label %117, !dbg !795

; <label>:102:                                    ; preds = %95
  %103 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !796
  %104 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %103, i32 0, i32 7, !dbg !798
  %105 = load i64, i64* %104, align 8, !dbg !798
  %106 = load i64, i64* @format_unicode_atom, align 8, !dbg !799
  %107 = icmp eq i64 %105, %106, !dbg !800
  br i1 %107, label %108, label %109, !dbg !801

; <label>:108:                                    ; preds = %102
  store i32 13, i32* %6, align 4, !dbg !802
  br label %116, !dbg !804

; <label>:109:                                    ; preds = %102
  %110 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !805
  %111 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !807
  %112 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %111, i32 0, i32 7, !dbg !808
  %113 = load i64, i64* %112, align 8, !dbg !808
  %114 = call i8* @XGetAtomName(%struct._XDisplay* %110, i64 %113), !dbg !809
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i32 0, i32 0), i8* %114), !dbg !810
  %115 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !811
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* %115), !dbg !812
  br label %125, !dbg !813

; <label>:116:                                    ; preds = %108
  br label %117

; <label>:117:                                    ; preds = %116, %101
  br label %118

; <label>:118:                                    ; preds = %117, %94
  br label %119

; <label>:119:                                    ; preds = %118, %77
  %120 = load i32, i32* %6, align 4, !dbg !814
  call void @cliprdr_send_data_request(i32 %120), !dbg !815
  %121 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !816
  %122 = bitcast %struct.XSelectionRequestEvent* %121 to i8*, !dbg !817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.XSelectionRequestEvent* @selection_request to i8*), i8* %122, i64 80, i32 8, i1 false), !dbg !817
  store i32 1, i32* @has_selection_request, align 4, !dbg !818
  br label %125, !dbg !819

; <label>:123:                                    ; preds = %46
  br label %124

; <label>:124:                                    ; preds = %123
  br label %125

; <label>:125:                                    ; preds = %29, %38, %53, %75, %109, %119, %124
  ret void, !dbg !820
}

declare i8* @XGetAtomName(%struct._XDisplay*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @xclip_provide_selection(%struct.XSelectionRequestEvent*, i64, i32, i8*, i32) #0 !dbg !821 {
  %6 = alloca %struct.XSelectionRequestEvent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union._XEvent, align 8
  store %struct.XSelectionRequestEvent* %0, %struct.XSelectionRequestEvent** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.XSelectionRequestEvent** %6, metadata !824, metadata !594), !dbg !825
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !826, metadata !594), !dbg !827
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !828, metadata !594), !dbg !829
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !830, metadata !594), !dbg !831
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !832, metadata !594), !dbg !833
  call void @llvm.dbg.declare(metadata %union._XEvent* %11, metadata !834, metadata !594), !dbg !1267
  %12 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1268
  %13 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %12, i32 0, i32 5, !dbg !1269
  %14 = load i64, i64* %13, align 8, !dbg !1269
  %15 = trunc i64 %14 to i32, !dbg !1270
  %16 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1271
  %17 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1272
  %18 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %17, i32 0, i32 7, !dbg !1273
  %19 = load i64, i64* %18, align 8, !dbg !1273
  %20 = call i8* @XGetAtomName(%struct._XDisplay* %16, i64 %19), !dbg !1274
  %21 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1275
  %22 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1276
  %23 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %22, i32 0, i32 8, !dbg !1277
  %24 = load i64, i64* %23, align 8, !dbg !1277
  %25 = call i8* @XGetAtomName(%struct._XDisplay* %21, i64 %24), !dbg !1278
  %26 = load i32, i32* %10, align 4, !dbg !1279
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.32, i32 0, i32 0), i32 %15, i8* %20, i8* %25, i32 %26), !dbg !1280
  %27 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1281
  %28 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1282
  %29 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %28, i32 0, i32 5, !dbg !1283
  %30 = load i64, i64* %29, align 8, !dbg !1283
  %31 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1284
  %32 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %31, i32 0, i32 8, !dbg !1285
  %33 = load i64, i64* %32, align 8, !dbg !1285
  %34 = load i64, i64* %7, align 8, !dbg !1286
  %35 = load i32, i32* %8, align 4, !dbg !1287
  %36 = load i8*, i8** %9, align 8, !dbg !1288
  %37 = load i32, i32* %10, align 4, !dbg !1289
  %38 = call i32 @XChangeProperty(%struct._XDisplay* %27, i64 %30, i64 %33, i64 %34, i32 %35, i32 0, i8* %36, i32 %37), !dbg !1290
  %39 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1291
  %40 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %39, i32 0, i32 0, !dbg !1292
  store i32 31, i32* %40, align 8, !dbg !1293
  %41 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1294
  %42 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %41, i32 0, i32 1, !dbg !1295
  store i64 0, i64* %42, align 8, !dbg !1296
  %43 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1297
  %44 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %43, i32 0, i32 2, !dbg !1298
  store i32 1, i32* %44, align 8, !dbg !1299
  %45 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1300
  %46 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %45, i32 0, i32 5, !dbg !1301
  %47 = load i64, i64* %46, align 8, !dbg !1301
  %48 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1302
  %49 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %48, i32 0, i32 4, !dbg !1303
  store i64 %47, i64* %49, align 8, !dbg !1304
  %50 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1305
  %51 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %50, i32 0, i32 6, !dbg !1306
  %52 = load i64, i64* %51, align 8, !dbg !1306
  %53 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1307
  %54 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %53, i32 0, i32 5, !dbg !1308
  store i64 %52, i64* %54, align 8, !dbg !1309
  %55 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1310
  %56 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %55, i32 0, i32 7, !dbg !1311
  %57 = load i64, i64* %56, align 8, !dbg !1311
  %58 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1312
  %59 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %58, i32 0, i32 6, !dbg !1313
  store i64 %57, i64* %59, align 8, !dbg !1314
  %60 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1315
  %61 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %60, i32 0, i32 8, !dbg !1316
  %62 = load i64, i64* %61, align 8, !dbg !1316
  %63 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1317
  %64 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %63, i32 0, i32 7, !dbg !1318
  store i64 %62, i64* %64, align 8, !dbg !1319
  %65 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1320
  %66 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %65, i32 0, i32 9, !dbg !1321
  %67 = load i64, i64* %66, align 8, !dbg !1321
  %68 = bitcast %union._XEvent* %11 to %struct.XSelectionEvent*, !dbg !1322
  %69 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %68, i32 0, i32 8, !dbg !1323
  store i64 %67, i64* %69, align 8, !dbg !1324
  %70 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1325
  %71 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %6, align 8, !dbg !1326
  %72 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %71, i32 0, i32 5, !dbg !1327
  %73 = load i64, i64* %72, align 8, !dbg !1327
  %74 = call i32 @XSendEvent(%struct._XDisplay* %70, i64 %73, i32 0, i64 0, %union._XEvent* %11), !dbg !1328
  ret void, !dbg !1329
}

; Function Attrs: nounwind uwtable
define internal void @xclip_refuse_selection(%struct.XSelectionRequestEvent*) #0 !dbg !1330 {
  %2 = alloca %struct.XSelectionRequestEvent*, align 8
  %3 = alloca %union._XEvent, align 8
  store %struct.XSelectionRequestEvent* %0, %struct.XSelectionRequestEvent** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XSelectionRequestEvent** %2, metadata !1331, metadata !594), !dbg !1332
  call void @llvm.dbg.declare(metadata %union._XEvent* %3, metadata !1333, metadata !594), !dbg !1334
  %4 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1335
  %5 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %4, i32 0, i32 5, !dbg !1336
  %6 = load i64, i64* %5, align 8, !dbg !1336
  %7 = trunc i64 %6 to i32, !dbg !1337
  %8 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1338
  %9 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1339
  %10 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %9, i32 0, i32 7, !dbg !1340
  %11 = load i64, i64* %10, align 8, !dbg !1340
  %12 = call i8* @XGetAtomName(%struct._XDisplay* %8, i64 %11), !dbg !1341
  %13 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1342
  %14 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1343
  %15 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %14, i32 0, i32 8, !dbg !1344
  %16 = load i64, i64* %15, align 8, !dbg !1344
  %17 = call i8* @XGetAtomName(%struct._XDisplay* %13, i64 %16), !dbg !1345
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i32 0, i32 0), i32 %7, i8* %12, i8* %17), !dbg !1346
  %18 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1347
  %19 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %18, i32 0, i32 0, !dbg !1348
  store i32 31, i32* %19, align 8, !dbg !1349
  %20 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1350
  %21 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %20, i32 0, i32 1, !dbg !1351
  store i64 0, i64* %21, align 8, !dbg !1352
  %22 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1353
  %23 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %22, i32 0, i32 2, !dbg !1354
  store i32 1, i32* %23, align 8, !dbg !1355
  %24 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1356
  %25 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %24, i32 0, i32 5, !dbg !1357
  %26 = load i64, i64* %25, align 8, !dbg !1357
  %27 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1358
  %28 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %27, i32 0, i32 4, !dbg !1359
  store i64 %26, i64* %28, align 8, !dbg !1360
  %29 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1361
  %30 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %29, i32 0, i32 6, !dbg !1362
  %31 = load i64, i64* %30, align 8, !dbg !1362
  %32 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1363
  %33 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %32, i32 0, i32 5, !dbg !1364
  store i64 %31, i64* %33, align 8, !dbg !1365
  %34 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1366
  %35 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %34, i32 0, i32 7, !dbg !1367
  %36 = load i64, i64* %35, align 8, !dbg !1367
  %37 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1368
  %38 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %37, i32 0, i32 6, !dbg !1369
  store i64 %36, i64* %38, align 8, !dbg !1370
  %39 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1371
  %40 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %39, i32 0, i32 7, !dbg !1372
  store i64 0, i64* %40, align 8, !dbg !1373
  %41 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1374
  %42 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %41, i32 0, i32 9, !dbg !1375
  %43 = load i64, i64* %42, align 8, !dbg !1375
  %44 = bitcast %union._XEvent* %3 to %struct.XSelectionEvent*, !dbg !1376
  %45 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %44, i32 0, i32 8, !dbg !1377
  store i64 %43, i64* %45, align 8, !dbg !1378
  %46 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1379
  %47 = load %struct.XSelectionRequestEvent*, %struct.XSelectionRequestEvent** %2, align 8, !dbg !1380
  %48 = getelementptr inbounds %struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* %47, i32 0, i32 5, !dbg !1381
  %49 = load i64, i64* %48, align 8, !dbg !1381
  %50 = call i32 @XSendEvent(%struct._XDisplay* %46, i64 %49, i32 0, i64 0, %union._XEvent* %3), !dbg !1382
  ret void, !dbg !1383
}

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #2

declare void @cliprdr_send_data_request(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @xclip_handle_SelectionClear() #0 !dbg !1384 {
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)), !dbg !1387
  call void @xclip_notify_change(), !dbg !1388
  call void @xclip_probe_selections(), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: nounwind uwtable
define void @xclip_handle_PropertyNotify(%struct.XPropertyEvent*) #0 !dbg !1391 {
  %2 = alloca %struct.XPropertyEvent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.XWindowAttributes, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.XPropertyEvent* %0, %struct.XPropertyEvent** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.XPropertyEvent** %2, metadata !1395, metadata !594), !dbg !1396
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1397, metadata !594), !dbg !1398
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1399, metadata !594), !dbg !1400
  store i64 0, i64* %4, align 8, !dbg !1400
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1401, metadata !594), !dbg !1402
  store i64 1, i64* %5, align 8, !dbg !1402
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1403, metadata !594), !dbg !1404
  call void @llvm.dbg.declare(metadata %struct.XWindowAttributes* %7, metadata !1405, metadata !594), !dbg !1406
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1407, metadata !594), !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1409, metadata !594), !dbg !1410
  %10 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %2, align 8, !dbg !1411
  %11 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %10, i32 0, i32 7, !dbg !1413
  %12 = load i32, i32* %11, align 8, !dbg !1413
  %13 = icmp eq i32 %12, 0, !dbg !1414
  br i1 %13, label %14, label %89, !dbg !1415

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* @g_waiting_for_INCR, align 4, !dbg !1416
  %16 = icmp ne i32 %15, 0, !dbg !1416
  br i1 %16, label %17, label %89, !dbg !1418

; <label>:17:                                     ; preds = %14
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0)), !dbg !1419
  br label %18, !dbg !1421

; <label>:18:                                     ; preds = %83, %17
  %19 = load i64, i64* %5, align 8, !dbg !1422
  %20 = icmp ugt i64 %19, 0, !dbg !1424
  br i1 %20, label %21, label %84, !dbg !1425

; <label>:21:                                     ; preds = %18
  %22 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1426
  %23 = load i64, i64* @g_wnd, align 8, !dbg !1429
  %24 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !1430
  %25 = load i64, i64* %4, align 8, !dbg !1431
  %26 = call i32 @XGetWindowProperty(%struct._XDisplay* %22, i64 %23, i64 %24, i64 %25, i64 4096, i32 0, i64 0, i64* %9, i32* %6, i64* %3, i64* %5, i8** %8), !dbg !1432
  %27 = icmp ne i32 %26, 0, !dbg !1433
  br i1 %27, label %28, label %31, !dbg !1434

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %8, align 8, !dbg !1435
  %30 = call i32 @XFree(i8* %29), !dbg !1437
  br label %113, !dbg !1438

; <label>:31:                                     ; preds = %21
  %32 = load i64, i64* %3, align 8, !dbg !1439
  %33 = icmp eq i64 %32, 0, !dbg !1441
  br i1 %33, label %34, label %59, !dbg !1442

; <label>:34:                                     ; preds = %31
  %35 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1443
  %36 = load i64, i64* @g_wnd, align 8, !dbg !1445
  %37 = call i32 @XGetWindowAttributes(%struct._XDisplay* %35, i64 %36, %struct.XWindowAttributes* %7), !dbg !1446
  %38 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1447
  %39 = load i64, i64* @g_wnd, align 8, !dbg !1448
  %40 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %7, i32 0, i32 19, !dbg !1449
  %41 = load i64, i64* %40, align 8, !dbg !1449
  %42 = xor i64 %41, 4194304, !dbg !1450
  %43 = call i32 @XSelectInput(%struct._XDisplay* %38, i64 %39, i64 %42), !dbg !1451
  %44 = load i8*, i8** %8, align 8, !dbg !1452
  %45 = call i32 @XFree(i8* %44), !dbg !1453
  store i32 0, i32* @g_waiting_for_INCR, align 4, !dbg !1454
  %46 = load i32, i32* @g_clip_buflen, align 4, !dbg !1455
  %47 = icmp ugt i32 %46, 0, !dbg !1457
  br i1 %47, label %48, label %58, !dbg !1458

; <label>:48:                                     ; preds = %34
  %49 = load i8*, i8** @g_clip_buffer, align 8, !dbg !1459
  %50 = load i32, i32* @g_clip_buflen, align 4, !dbg !1462
  %51 = zext i32 %50 to i64, !dbg !1462
  %52 = load i64, i64* @g_incr_target, align 8, !dbg !1463
  %53 = call i32 @xclip_send_data_with_convert(i8* %49, i64 %51, i64 %52), !dbg !1464
  %54 = icmp ne i32 %53, 0, !dbg !1464
  br i1 %54, label %56, label %55, !dbg !1465

; <label>:55:                                     ; preds = %48
  call void @helper_cliprdr_send_empty_response(), !dbg !1466
  br label %56, !dbg !1468

; <label>:56:                                     ; preds = %55, %48
  %57 = load i8*, i8** @g_clip_buffer, align 8, !dbg !1469
  call void @xfree(i8* %57), !dbg !1470
  store i8* null, i8** @g_clip_buffer, align 8, !dbg !1471
  store i32 0, i32* @g_clip_buflen, align 4, !dbg !1472
  br label %58, !dbg !1473

; <label>:58:                                     ; preds = %56, %34
  br label %83, !dbg !1474

; <label>:59:                                     ; preds = %31
  %60 = load i64, i64* %3, align 8, !dbg !1475
  %61 = udiv i64 %60, 4, !dbg !1477
  %62 = load i64, i64* %4, align 8, !dbg !1478
  %63 = add i64 %62, %61, !dbg !1478
  store i64 %63, i64* %4, align 8, !dbg !1478
  %64 = load i8*, i8** @g_clip_buffer, align 8, !dbg !1479
  %65 = load i32, i32* @g_clip_buflen, align 4, !dbg !1480
  %66 = zext i32 %65 to i64, !dbg !1480
  %67 = load i64, i64* %3, align 8, !dbg !1481
  %68 = add i64 %66, %67, !dbg !1482
  %69 = call i8* @xrealloc(i8* %64, i64 %68), !dbg !1483
  store i8* %69, i8** @g_clip_buffer, align 8, !dbg !1484
  %70 = load i8*, i8** @g_clip_buffer, align 8, !dbg !1485
  %71 = load i32, i32* @g_clip_buflen, align 4, !dbg !1486
  %72 = zext i32 %71 to i64, !dbg !1487
  %73 = getelementptr inbounds i8, i8* %70, i64 %72, !dbg !1487
  %74 = load i8*, i8** %8, align 8, !dbg !1488
  %75 = load i64, i64* %3, align 8, !dbg !1489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 %75, i32 1, i1 false), !dbg !1490
  %76 = load i64, i64* %3, align 8, !dbg !1491
  %77 = load i32, i32* @g_clip_buflen, align 4, !dbg !1492
  %78 = zext i32 %77 to i64, !dbg !1492
  %79 = add i64 %78, %76, !dbg !1492
  %80 = trunc i64 %79 to i32, !dbg !1492
  store i32 %80, i32* @g_clip_buflen, align 4, !dbg !1492
  %81 = load i8*, i8** %8, align 8, !dbg !1493
  %82 = call i32 @XFree(i8* %81), !dbg !1494
  br label %83

; <label>:83:                                     ; preds = %59, %58
  br label %18, !dbg !1495, !llvm.loop !1497

; <label>:84:                                     ; preds = %18
  %85 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1498
  %86 = load i64, i64* @g_wnd, align 8, !dbg !1499
  %87 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !1500
  %88 = call i32 @XDeleteProperty(%struct._XDisplay* %85, i64 %86, i64 %87), !dbg !1501
  br label %113, !dbg !1502

; <label>:89:                                     ; preds = %14, %1
  %90 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %2, align 8, !dbg !1503
  %91 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %90, i32 0, i32 5, !dbg !1505
  %92 = load i64, i64* %91, align 8, !dbg !1505
  %93 = load i64, i64* @rdesktop_selection_notify_atom, align 8, !dbg !1506
  %94 = icmp eq i64 %92, %93, !dbg !1507
  br i1 %94, label %95, label %113, !dbg !1508

; <label>:95:                                     ; preds = %89
  %96 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %2, align 8, !dbg !1509
  %97 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %96, i32 0, i32 4, !dbg !1510
  %98 = load i64, i64* %97, align 8, !dbg !1510
  %99 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1511
  %100 = bitcast %struct._XDisplay* %99 to %struct.anon*, !dbg !1512
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 33, !dbg !1512
  %102 = load i32, i32* %101, align 8, !dbg !1512
  %103 = sext i32 %102 to i64, !dbg !1512
  %104 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1511
  %105 = bitcast %struct._XDisplay* %104 to %struct.anon*, !dbg !1512
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 35, !dbg !1512
  %107 = load %struct.Screen*, %struct.Screen** %106, align 8, !dbg !1512
  %108 = getelementptr inbounds %struct.Screen, %struct.Screen* %107, i64 %103, !dbg !1512
  %109 = getelementptr inbounds %struct.Screen, %struct.Screen* %108, i32 0, i32 2, !dbg !1513
  %110 = load i64, i64* %109, align 8, !dbg !1513
  %111 = icmp eq i64 %98, %110, !dbg !1514
  br i1 %111, label %112, label %113, !dbg !1515

; <label>:112:                                    ; preds = %95
  call void @xclip_probe_selections(), !dbg !1517
  br label %113, !dbg !1517

; <label>:113:                                    ; preds = %28, %84, %112, %95, %89
  ret void, !dbg !1518
}

declare i32 @XGetWindowAttributes(%struct._XDisplay*, i64, %struct.XWindowAttributes*) #2

declare i32 @XSelectInput(%struct._XDisplay*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @xclip_send_data_with_convert(i8*, i64, i64) #0 !dbg !1519 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1522, metadata !594), !dbg !1523
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1524, metadata !594), !dbg !1525
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1526, metadata !594), !dbg !1527
  %18 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1528
  %19 = load i64, i64* %7, align 8, !dbg !1529
  %20 = call i8* @XGetAtomName(%struct._XDisplay* %18, i64 %19), !dbg !1530
  %21 = load i64, i64* %6, align 8, !dbg !1531
  %22 = trunc i64 %21 to i32, !dbg !1532
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i32 0, i32 0), i8* %20, i32 %22), !dbg !1533
  %23 = load i64, i64* %7, align 8, !dbg !1534
  %24 = load i64, i64* @format_string_atom, align 8, !dbg !1536
  %25 = icmp eq i64 %23, %24, !dbg !1537
  br i1 %25, label %34, label %26, !dbg !1538

; <label>:26:                                     ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !1539
  %28 = load i64, i64* @format_unicode_atom, align 8, !dbg !1540
  %29 = icmp eq i64 %27, %28, !dbg !1541
  br i1 %29, label %34, label %30, !dbg !1542

; <label>:30:                                     ; preds = %26
  %31 = load i64, i64* %7, align 8, !dbg !1543
  %32 = load i64, i64* @format_utf8_string_atom, align 8, !dbg !1545
  %33 = icmp eq i64 %31, %32, !dbg !1546
  br i1 %33, label %34, label %106, !dbg !1547

; <label>:34:                                     ; preds = %30, %26, %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1549, metadata !594), !dbg !1551
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1552, metadata !594), !dbg !1553
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1554, metadata !594), !dbg !1555
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1556, metadata !594), !dbg !1557
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1558, metadata !594), !dbg !1559
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1560, metadata !594), !dbg !1561
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1562, metadata !594), !dbg !1563
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1564, metadata !594), !dbg !1565
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1566, metadata !594), !dbg !1567
  %35 = load i32, i32* @rdp_clipboard_request_format, align 4, !dbg !1568
  %36 = icmp ne i32 %35, 13, !dbg !1570
  br i1 %36, label %37, label %38, !dbg !1571

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %4, align 4, !dbg !1572
  br label %116, !dbg !1572

; <label>:38:                                     ; preds = %34
  %39 = load i64, i64* %7, align 8, !dbg !1573
  %40 = load i64, i64* @format_string_atom, align 8, !dbg !1575
  %41 = icmp eq i64 %39, %40, !dbg !1576
  br i1 %41, label %42, label %53, !dbg !1577

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1578, metadata !594), !dbg !1580
  %43 = call i8* @nl_langinfo(i32 14) #6, !dbg !1581
  store i8* %43, i8** %17, align 8, !dbg !1580
  %44 = load i8*, i8** %17, align 8, !dbg !1582
  %45 = call i8* @libiconv_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %44), !dbg !1583
  store i8* %45, i8** %10, align 8, !dbg !1584
  %46 = load i8*, i8** %10, align 8, !dbg !1585
  %47 = icmp eq i8* %46, inttoptr (i64 -1 to i8*), !dbg !1587
  br i1 %47, label %48, label %50, !dbg !1588

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %17, align 8, !dbg !1589
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.38, i32 0, i32 0), i8* %49), !dbg !1591
  store i32 0, i32* %4, align 4, !dbg !1592
  br label %116, !dbg !1592

; <label>:50:                                     ; preds = %42
  %51 = load i64, i64* %6, align 8, !dbg !1593
  %52 = mul i64 %51, 4, !dbg !1594
  store i64 %52, i64* %8, align 8, !dbg !1595
  br label %79, !dbg !1596

; <label>:53:                                     ; preds = %38
  %54 = load i64, i64* %7, align 8, !dbg !1597
  %55 = load i64, i64* @format_unicode_atom, align 8, !dbg !1599
  %56 = icmp eq i64 %54, %55, !dbg !1600
  br i1 %56, label %57, label %64, !dbg !1601

; <label>:57:                                     ; preds = %53
  %58 = call i8* @libiconv_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)), !dbg !1602
  store i8* %58, i8** %10, align 8, !dbg !1604
  %59 = load i8*, i8** %10, align 8, !dbg !1605
  %60 = icmp eq i8* %59, inttoptr (i64 -1 to i8*), !dbg !1607
  br i1 %60, label %61, label %62, !dbg !1608

; <label>:61:                                     ; preds = %57
  store i32 0, i32* %4, align 4, !dbg !1609
  br label %116, !dbg !1609

; <label>:62:                                     ; preds = %57
  %63 = load i64, i64* %6, align 8, !dbg !1611
  store i64 %63, i64* %8, align 8, !dbg !1612
  br label %78, !dbg !1613

; <label>:64:                                     ; preds = %53
  %65 = load i64, i64* %7, align 8, !dbg !1614
  %66 = load i64, i64* @format_utf8_string_atom, align 8, !dbg !1616
  %67 = icmp eq i64 %65, %66, !dbg !1617
  br i1 %67, label %68, label %76, !dbg !1618

; <label>:68:                                     ; preds = %64
  %69 = call i8* @libiconv_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)), !dbg !1619
  store i8* %69, i8** %10, align 8, !dbg !1621
  %70 = load i8*, i8** %10, align 8, !dbg !1622
  %71 = icmp eq i8* %70, inttoptr (i64 -1 to i8*), !dbg !1624
  br i1 %71, label %72, label %73, !dbg !1625

; <label>:72:                                     ; preds = %68
  store i32 0, i32* %4, align 4, !dbg !1626
  br label %116, !dbg !1626

; <label>:73:                                     ; preds = %68
  %74 = load i64, i64* %6, align 8, !dbg !1628
  %75 = mul i64 %74, 2, !dbg !1629
  store i64 %75, i64* %8, align 8, !dbg !1630
  br label %77, !dbg !1631

; <label>:76:                                     ; preds = %64
  store i32 0, i32* %4, align 4, !dbg !1632
  br label %116, !dbg !1632

; <label>:77:                                     ; preds = %73
  br label %78

; <label>:78:                                     ; preds = %77, %62
  br label %79

; <label>:79:                                     ; preds = %78, %50
  %80 = load i64, i64* %8, align 8, !dbg !1634
  %81 = trunc i64 %80 to i32, !dbg !1634
  %82 = call i8* @xmalloc(i32 %81), !dbg !1635
  store i8* %82, i8** %9, align 8, !dbg !1636
  %83 = load i64, i64* %8, align 8, !dbg !1637
  store i64 %83, i64* %11, align 8, !dbg !1638
  %84 = load i8*, i8** %9, align 8, !dbg !1639
  store i8* %84, i8** %12, align 8, !dbg !1640
  %85 = load i8*, i8** %5, align 8, !dbg !1641
  store i8* %85, i8** %13, align 8, !dbg !1642
  %86 = load i64, i64* %6, align 8, !dbg !1643
  store i64 %86, i64* %14, align 8, !dbg !1644
  %87 = load i8*, i8** %10, align 8, !dbg !1645
  %88 = call i64 @libiconv(i8* %87, i8** %13, i64* %14, i8** %12, i64* %11), !dbg !1646
  %89 = load i8*, i8** %10, align 8, !dbg !1647
  %90 = call i32 @libiconv_close(i8* %89), !dbg !1648
  %91 = load i64, i64* %8, align 8, !dbg !1649
  %92 = load i64, i64* %11, align 8, !dbg !1650
  %93 = sub i64 %91, %92, !dbg !1651
  %94 = trunc i64 %93 to i32, !dbg !1649
  store i32 %94, i32* %15, align 4, !dbg !1652
  %95 = load i8*, i8** %9, align 8, !dbg !1653
  %96 = call i8* @utf16_lf2crlf(i8* %95, i32* %15), !dbg !1654
  store i8* %96, i8** %16, align 8, !dbg !1655
  %97 = load i8*, i8** %16, align 8, !dbg !1656
  %98 = icmp ne i8* %97, null, !dbg !1658
  br i1 %98, label %99, label %104, !dbg !1659

; <label>:99:                                     ; preds = %79
  %100 = load i32, i32* %15, align 4, !dbg !1660
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.40, i32 0, i32 0), i32 %100), !dbg !1662
  %101 = load i8*, i8** %16, align 8, !dbg !1663
  %102 = load i32, i32* %15, align 4, !dbg !1664
  call void @helper_cliprdr_send_response(i8* %101, i32 %102), !dbg !1665
  %103 = load i8*, i8** %16, align 8, !dbg !1666
  call void @xfree(i8* %103), !dbg !1667
  br label %104, !dbg !1668

; <label>:104:                                    ; preds = %99, %79
  %105 = load i8*, i8** %9, align 8, !dbg !1669
  call void @xfree(i8* %105), !dbg !1670
  store i32 1, i32* %4, align 4, !dbg !1671
  br label %116, !dbg !1671

; <label>:106:                                    ; preds = %30
  %107 = load i64, i64* %7, align 8, !dbg !1672
  %108 = load i64, i64* @rdesktop_native_atom, align 8, !dbg !1674
  %109 = icmp eq i64 %107, %108, !dbg !1675
  br i1 %109, label %110, label %115, !dbg !1676

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %5, align 8, !dbg !1677
  %112 = load i64, i64* %6, align 8, !dbg !1679
  %113 = add i64 %112, 1, !dbg !1680
  %114 = trunc i64 %113 to i32, !dbg !1679
  call void @helper_cliprdr_send_response(i8* %111, i32 %114), !dbg !1681
  store i32 1, i32* %4, align 4, !dbg !1682
  br label %116, !dbg !1682

; <label>:115:                                    ; preds = %106
  store i32 0, i32* %4, align 4, !dbg !1683
  br label %116, !dbg !1683

; <label>:116:                                    ; preds = %115, %110, %104, %76, %72, %61, %48, %37
  %117 = load i32, i32* %4, align 4, !dbg !1685
  ret i32 %117, !dbg !1685
}

declare void @xfree(i8*) #2

declare i8* @xrealloc(i8*, i64) #2

declare i32 @XDeleteProperty(%struct._XDisplay*, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @ui_clip_format_announce(i8*, i32) #0 !dbg !1686 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1689, metadata !594), !dbg !1690
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1691, metadata !594), !dbg !1692
  %5 = load i64, i64* @g_last_gesturetime, align 8, !dbg !1693
  store i64 %5, i64* @acquire_time, align 8, !dbg !1694
  %6 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1695
  %7 = load i64, i64* @primary_atom, align 8, !dbg !1696
  %8 = load i64, i64* @g_wnd, align 8, !dbg !1697
  %9 = load i64, i64* @acquire_time, align 8, !dbg !1698
  %10 = call i32 @XSetSelectionOwner(%struct._XDisplay* %6, i64 %7, i64 %8, i64 %9), !dbg !1699
  %11 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1700
  %12 = load i64, i64* @primary_atom, align 8, !dbg !1702
  %13 = call i64 @XGetSelectionOwner(%struct._XDisplay* %11, i64 %12), !dbg !1703
  %14 = load i64, i64* @g_wnd, align 8, !dbg !1704
  %15 = icmp ne i64 %13, %14, !dbg !1705
  br i1 %15, label %16, label %17, !dbg !1706

; <label>:16:                                     ; preds = %2
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)), !dbg !1707
  br label %17, !dbg !1707

; <label>:17:                                     ; preds = %16, %2
  %18 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1708
  %19 = load i64, i64* @clipboard_atom, align 8, !dbg !1709
  %20 = load i64, i64* @g_wnd, align 8, !dbg !1710
  %21 = load i64, i64* @acquire_time, align 8, !dbg !1711
  %22 = call i32 @XSetSelectionOwner(%struct._XDisplay* %18, i64 %19, i64 %20, i64 %21), !dbg !1712
  %23 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1713
  %24 = load i64, i64* @clipboard_atom, align 8, !dbg !1715
  %25 = call i64 @XGetSelectionOwner(%struct._XDisplay* %23, i64 %24), !dbg !1716
  %26 = load i64, i64* @g_wnd, align 8, !dbg !1717
  %27 = icmp ne i64 %25, %26, !dbg !1718
  br i1 %27, label %28, label %29, !dbg !1719

; <label>:28:                                     ; preds = %17
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0)), !dbg !1720
  br label %29, !dbg !1720

; <label>:29:                                     ; preds = %28, %17
  %30 = load i8*, i8** @formats_data, align 8, !dbg !1721
  %31 = icmp ne i8* %30, null, !dbg !1721
  br i1 %31, label %32, label %34, !dbg !1723

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** @formats_data, align 8, !dbg !1724
  call void @xfree(i8* %33), !dbg !1725
  br label %34, !dbg !1725

; <label>:34:                                     ; preds = %32, %29
  %35 = load i32, i32* %4, align 4, !dbg !1726
  %36 = call i8* @xmalloc(i32 %35), !dbg !1727
  store i8* %36, i8** @formats_data, align 8, !dbg !1728
  %37 = load i8*, i8** @formats_data, align 8, !dbg !1729
  %38 = load i8*, i8** %3, align 8, !dbg !1730
  %39 = load i32, i32* %4, align 4, !dbg !1731
  %40 = zext i32 %39 to i64, !dbg !1731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %40, i32 1, i1 false), !dbg !1732
  %41 = load i32, i32* %4, align 4, !dbg !1733
  store i32 %41, i32* @formats_data_length, align 4, !dbg !1734
  call void @xclip_notify_change(), !dbg !1735
  ret void, !dbg !1736
}

declare i32 @XSetSelectionOwner(%struct._XDisplay*, i64, i64, i64) #2

declare i64 @XGetSelectionOwner(%struct._XDisplay*, i64) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: nounwind uwtable
define void @ui_clip_handle_data(i8*, i32) #0 !dbg !1737 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1738, metadata !594), !dbg !1739
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1740, metadata !594), !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1742, metadata !594), !dbg !1743
  store i32 0, i32* %5, align 4, !dbg !1743
  %14 = load i32, i32* %4, align 4, !dbg !1744
  %15 = icmp eq i32 %14, 0, !dbg !1746
  br i1 %15, label %16, label %17, !dbg !1747

; <label>:16:                                     ; preds = %2
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* @selection_request), !dbg !1748
  store i32 0, i32* @has_selection_request, align 4, !dbg !1750
  br label %101, !dbg !1751

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1752
  %19 = load i64, i64* @format_string_atom, align 8, !dbg !1754
  %20 = icmp eq i64 %18, %19, !dbg !1755
  br i1 %20, label %24, label %21, !dbg !1756

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1757
  %23 = icmp eq i64 %22, 31, !dbg !1759
  br i1 %23, label %24, label %39, !dbg !1760

; <label>:24:                                     ; preds = %21, %17
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1761, metadata !594), !dbg !1763
  %25 = load i8*, i8** %3, align 8, !dbg !1764
  call void @crlf2lf(i8* %25, i32* %4), !dbg !1765
  %26 = load i8*, i8** %3, align 8, !dbg !1766
  %27 = call i8* @strchr(i8* %26, i32 0) #7, !dbg !1767
  store i8* %27, i8** %6, align 8, !dbg !1768
  %28 = load i8*, i8** %6, align 8, !dbg !1769
  %29 = icmp ne i8* %28, null, !dbg !1769
  br i1 %29, label %30, label %38, !dbg !1771

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %6, align 8, !dbg !1772
  %32 = load i8*, i8** %3, align 8, !dbg !1774
  %33 = ptrtoint i8* %31 to i64, !dbg !1775
  %34 = ptrtoint i8* %32 to i64, !dbg !1775
  %35 = sub i64 %33, %34, !dbg !1775
  %36 = add nsw i64 %35, 1, !dbg !1776
  %37 = trunc i64 %36 to i32, !dbg !1772
  store i32 %37, i32* %4, align 4, !dbg !1777
  br label %38, !dbg !1778

; <label>:38:                                     ; preds = %30, %24
  br label %92, !dbg !1779

; <label>:39:                                     ; preds = %21
  %40 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1780
  %41 = load i64, i64* @format_utf8_string_atom, align 8, !dbg !1782
  %42 = icmp eq i64 %40, %41, !dbg !1783
  br i1 %42, label %43, label %75, !dbg !1784

; <label>:43:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1785, metadata !594), !dbg !1787
  %44 = call i8* @libiconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)), !dbg !1788
  store i8* %44, i8** %7, align 8, !dbg !1787
  %45 = load i8*, i8** %7, align 8, !dbg !1789
  %46 = icmp ne i8* %45, inttoptr (i64 -1 to i8*), !dbg !1791
  br i1 %46, label %47, label %74, !dbg !1792

; <label>:47:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1793, metadata !594), !dbg !1795
  %48 = load i32, i32* %4, align 4, !dbg !1796
  %49 = mul i32 %48, 2, !dbg !1797
  %50 = zext i32 %49 to i64, !dbg !1796
  store i64 %50, i64* %8, align 8, !dbg !1795
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1798, metadata !594), !dbg !1799
  %51 = load i64, i64* %8, align 8, !dbg !1800
  %52 = call noalias i8* @malloc(i64 %51) #6, !dbg !1801
  store i8* %52, i8** %9, align 8, !dbg !1799
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1802, metadata !594), !dbg !1803
  %53 = load i64, i64* %8, align 8, !dbg !1804
  store i64 %53, i64* %10, align 8, !dbg !1803
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1805, metadata !594), !dbg !1806
  %54 = load i8*, i8** %9, align 8, !dbg !1807
  store i8* %54, i8** %11, align 8, !dbg !1806
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1808, metadata !594), !dbg !1809
  %55 = load i8*, i8** %3, align 8, !dbg !1810
  store i8* %55, i8** %12, align 8, !dbg !1809
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1811, metadata !594), !dbg !1812
  %56 = load i32, i32* %4, align 4, !dbg !1813
  %57 = zext i32 %56 to i64, !dbg !1814
  store i64 %57, i64* %13, align 8, !dbg !1812
  %58 = load i8*, i8** %9, align 8, !dbg !1815
  %59 = icmp eq i8* %58, null, !dbg !1817
  br i1 %59, label %60, label %63, !dbg !1818

; <label>:60:                                     ; preds = %47
  %61 = load i8*, i8** %7, align 8, !dbg !1819
  %62 = call i32 @libiconv_close(i8* %61), !dbg !1821
  br label %101, !dbg !1822

; <label>:63:                                     ; preds = %47
  %64 = load i8*, i8** %7, align 8, !dbg !1823
  %65 = call i64 @libiconv(i8* %64, i8** %12, i64* %13, i8** %11, i64* %10), !dbg !1824
  %66 = load i8*, i8** %7, align 8, !dbg !1825
  %67 = call i32 @libiconv_close(i8* %66), !dbg !1826
  store i32 1, i32* %5, align 4, !dbg !1827
  %68 = load i8*, i8** %9, align 8, !dbg !1828
  store i8* %68, i8** %3, align 8, !dbg !1829
  %69 = load i64, i64* %8, align 8, !dbg !1830
  %70 = load i64, i64* %10, align 8, !dbg !1831
  %71 = sub i64 %69, %70, !dbg !1832
  %72 = trunc i64 %71 to i32, !dbg !1830
  store i32 %72, i32* %4, align 4, !dbg !1833
  %73 = load i8*, i8** %3, align 8, !dbg !1834
  call void @crlf2lf(i8* %73, i32* %4), !dbg !1835
  br label %74, !dbg !1836

; <label>:74:                                     ; preds = %63, %43
  br label %91, !dbg !1837

; <label>:75:                                     ; preds = %39
  %76 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1838
  %77 = load i64, i64* @format_unicode_atom, align 8, !dbg !1840
  %78 = icmp eq i64 %76, %77, !dbg !1841
  br i1 %78, label %79, label %80, !dbg !1842

; <label>:79:                                     ; preds = %75
  br label %90, !dbg !1843

; <label>:80:                                     ; preds = %75
  %81 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1845
  %82 = load i64, i64* @rdesktop_native_atom, align 8, !dbg !1847
  %83 = icmp eq i64 %81, %82, !dbg !1848
  br i1 %83, label %84, label %85, !dbg !1849

; <label>:84:                                     ; preds = %80
  br label %89, !dbg !1850

; <label>:85:                                     ; preds = %80
  %86 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1852
  %87 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1854
  %88 = call i8* @XGetAtomName(%struct._XDisplay* %86, i64 %87), !dbg !1855
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* %88), !dbg !1856
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* @selection_request), !dbg !1857
  store i32 0, i32* @has_selection_request, align 4, !dbg !1858
  br label %101, !dbg !1859

; <label>:89:                                     ; preds = %84
  br label %90

; <label>:90:                                     ; preds = %89, %79
  br label %91

; <label>:91:                                     ; preds = %90, %74
  br label %92

; <label>:92:                                     ; preds = %91, %38
  %93 = load i64, i64* getelementptr inbounds (%struct.XSelectionRequestEvent, %struct.XSelectionRequestEvent* @selection_request, i32 0, i32 7), align 8, !dbg !1860
  %94 = load i8*, i8** %3, align 8, !dbg !1861
  %95 = load i32, i32* %4, align 4, !dbg !1862
  %96 = sub i32 %95, 1, !dbg !1863
  call void @xclip_provide_selection(%struct.XSelectionRequestEvent* @selection_request, i64 %93, i32 8, i8* %94, i32 %96), !dbg !1864
  store i32 0, i32* @has_selection_request, align 4, !dbg !1865
  %97 = load i32, i32* %5, align 4, !dbg !1866
  %98 = icmp ne i32 %97, 0, !dbg !1866
  br i1 %98, label %99, label %101, !dbg !1868

; <label>:99:                                     ; preds = %92
  %100 = load i8*, i8** %3, align 8, !dbg !1869
  call void @free(i8* %100) #6, !dbg !1870
  br label %101, !dbg !1870

; <label>:101:                                    ; preds = %16, %60, %85, %99, %92
  ret void, !dbg !1871
}

; Function Attrs: nounwind uwtable
define internal void @crlf2lf(i8*, i32*) #0 !dbg !1872 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1875, metadata !594), !dbg !1876
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1877, metadata !594), !dbg !1878
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1879, metadata !594), !dbg !1880
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1881, metadata !594), !dbg !1882
  %7 = load i8*, i8** %3, align 8, !dbg !1883
  store i8* %7, i8** %5, align 8, !dbg !1884
  store i8* %7, i8** %6, align 8, !dbg !1885
  br label %8, !dbg !1886

; <label>:8:                                      ; preds = %26, %2
  %9 = load i8*, i8** %6, align 8, !dbg !1887
  %10 = load i8*, i8** %3, align 8, !dbg !1889
  %11 = load i32*, i32** %4, align 8, !dbg !1890
  %12 = load i32, i32* %11, align 4, !dbg !1891
  %13 = zext i32 %12 to i64, !dbg !1892
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !1892
  %15 = icmp ult i8* %9, %14, !dbg !1893
  br i1 %15, label %16, label %29, !dbg !1894

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %6, align 8, !dbg !1895
  %18 = load i8, i8* %17, align 1, !dbg !1898
  %19 = zext i8 %18 to i32, !dbg !1898
  %20 = icmp ne i32 %19, 13, !dbg !1899
  br i1 %20, label %21, label %26, !dbg !1900

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %6, align 8, !dbg !1901
  %23 = load i8, i8* %22, align 1, !dbg !1902
  %24 = load i8*, i8** %5, align 8, !dbg !1903
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !1903
  store i8* %25, i8** %5, align 8, !dbg !1903
  store i8 %23, i8* %24, align 1, !dbg !1904
  br label %26, !dbg !1905

; <label>:26:                                     ; preds = %21, %16
  %27 = load i8*, i8** %6, align 8, !dbg !1906
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1906
  store i8* %28, i8** %6, align 8, !dbg !1906
  br label %8, !dbg !1907, !llvm.loop !1909

; <label>:29:                                     ; preds = %8
  %30 = load i8*, i8** %5, align 8, !dbg !1910
  %31 = load i8*, i8** %3, align 8, !dbg !1911
  %32 = ptrtoint i8* %30 to i64, !dbg !1912
  %33 = ptrtoint i8* %31 to i64, !dbg !1912
  %34 = sub i64 %32, %33, !dbg !1912
  %35 = trunc i64 %34 to i32, !dbg !1910
  %36 = load i32*, i32** %4, align 8, !dbg !1913
  store i32 %35, i32* %36, align 4, !dbg !1914
  ret void, !dbg !1915
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @libiconv_open(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i32 @libiconv_close(i8*) #2

declare i64 @libiconv(i8*, i8**, i64*, i8**, i64*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @ui_clip_request_failed() #0 !dbg !1916 {
  call void @xclip_refuse_selection(%struct.XSelectionRequestEvent* @selection_request), !dbg !1917
  store i32 0, i32* @has_selection_request, align 4, !dbg !1918
  ret void, !dbg !1919
}

; Function Attrs: nounwind uwtable
define void @ui_clip_request_data(i32) #0 !dbg !1920 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1923, metadata !594), !dbg !1924
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1925, metadata !594), !dbg !1926
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1927, metadata !594), !dbg !1928
  %5 = load i32, i32* %2, align 4, !dbg !1929
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i32 %5), !dbg !1930
  %6 = load i32, i32* %2, align 4, !dbg !1931
  store i32 %6, i32* @rdp_clipboard_request_format, align 4, !dbg !1932
  %7 = load i32, i32* @probing_selections, align 4, !dbg !1933
  %8 = icmp ne i32 %7, 0, !dbg !1933
  br i1 %8, label %9, label %10, !dbg !1935

; <label>:9:                                      ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i32 0, i32 0)), !dbg !1936
  call void @helper_cliprdr_send_empty_response(), !dbg !1938
  br label %76, !dbg !1939

; <label>:10:                                     ; preds = %1
  call void @xclip_clear_target_props(), !dbg !1940
  %11 = load i32, i32* @rdesktop_is_selection_owner, align 4, !dbg !1941
  %12 = icmp ne i32 %11, 0, !dbg !1941
  br i1 %12, label %13, label %25, !dbg !1943

; <label>:13:                                     ; preds = %10
  %14 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1944
  %15 = load i64, i64* @g_wnd, align 8, !dbg !1946
  %16 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !1947
  %17 = bitcast i32* %2 to i8*, !dbg !1948
  %18 = call i32 @XChangeProperty(%struct._XDisplay* %14, i64 %15, i64 %16, i64 19, i32 32, i32 0, i8* %17, i32 1), !dbg !1949
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1950
  %20 = load i64, i64* @primary_atom, align 8, !dbg !1951
  %21 = load i64, i64* @rdesktop_native_atom, align 8, !dbg !1952
  %22 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !1953
  %23 = load i64, i64* @g_wnd, align 8, !dbg !1954
  %24 = call i32 @XConvertSelection(%struct._XDisplay* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 0), !dbg !1955
  br label %76, !dbg !1956

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* @auto_mode, align 4, !dbg !1957
  %27 = icmp ne i32 %26, 0, !dbg !1957
  br i1 %27, label %28, label %32, !dbg !1959

; <label>:28:                                     ; preds = %25
  %29 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1960
  %30 = load i64, i64* @primary_atom, align 8, !dbg !1961
  %31 = call i64 @XGetSelectionOwner(%struct._XDisplay* %29, i64 %30), !dbg !1962
  store i64 %31, i64* %3, align 8, !dbg !1963
  br label %33, !dbg !1964

; <label>:32:                                     ; preds = %25
  store i64 0, i64* %3, align 8, !dbg !1965
  br label %33

; <label>:33:                                     ; preds = %32, %28
  %34 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1966
  %35 = load i64, i64* @clipboard_atom, align 8, !dbg !1967
  %36 = call i64 @XGetSelectionOwner(%struct._XDisplay* %34, i64 %35), !dbg !1968
  store i64 %36, i64* %4, align 8, !dbg !1969
  %37 = load i64, i64* %3, align 8, !dbg !1970
  %38 = icmp ne i64 %37, 0, !dbg !1972
  br i1 %38, label %39, label %55, !dbg !1973

; <label>:39:                                     ; preds = %33
  %40 = load i64, i64* %4, align 8, !dbg !1974
  %41 = icmp ne i64 %40, 0, !dbg !1976
  br i1 %41, label %42, label %55, !dbg !1977

; <label>:42:                                     ; preds = %39
  store i64 0, i64* @primary_timestamp, align 8, !dbg !1978
  store i64 0, i64* @clipboard_timestamp, align 8, !dbg !1980
  %43 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1981
  %44 = load i64, i64* @primary_atom, align 8, !dbg !1982
  %45 = load i64, i64* @timestamp_atom, align 8, !dbg !1983
  %46 = load i64, i64* @rdesktop_primary_timestamp_target_atom, align 8, !dbg !1984
  %47 = load i64, i64* @g_wnd, align 8, !dbg !1985
  %48 = call i32 @XConvertSelection(%struct._XDisplay* %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 0), !dbg !1986
  %49 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1987
  %50 = load i64, i64* @clipboard_atom, align 8, !dbg !1988
  %51 = load i64, i64* @timestamp_atom, align 8, !dbg !1989
  %52 = load i64, i64* @rdesktop_clipboard_timestamp_target_atom, align 8, !dbg !1990
  %53 = load i64, i64* @g_wnd, align 8, !dbg !1991
  %54 = call i32 @XConvertSelection(%struct._XDisplay* %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 0), !dbg !1992
  br label %76, !dbg !1993

; <label>:55:                                     ; preds = %39, %33
  %56 = load i64, i64* %3, align 8, !dbg !1994
  %57 = icmp ne i64 %56, 0, !dbg !1996
  br i1 %57, label %58, label %65, !dbg !1997

; <label>:58:                                     ; preds = %55
  %59 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !1998
  %60 = load i64, i64* @primary_atom, align 8, !dbg !2000
  %61 = load i64, i64* @targets_atom, align 8, !dbg !2001
  %62 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2002
  %63 = load i64, i64* @g_wnd, align 8, !dbg !2003
  %64 = call i32 @XConvertSelection(%struct._XDisplay* %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 0), !dbg !2004
  br label %76, !dbg !2005

; <label>:65:                                     ; preds = %55
  %66 = load i64, i64* %4, align 8, !dbg !2006
  %67 = icmp ne i64 %66, 0, !dbg !2008
  br i1 %67, label %68, label %75, !dbg !2009

; <label>:68:                                     ; preds = %65
  %69 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2010
  %70 = load i64, i64* @clipboard_atom, align 8, !dbg !2012
  %71 = load i64, i64* @targets_atom, align 8, !dbg !2013
  %72 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2014
  %73 = load i64, i64* @g_wnd, align 8, !dbg !2015
  %74 = call i32 @XConvertSelection(%struct._XDisplay* %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 0), !dbg !2016
  br label %76, !dbg !2017

; <label>:75:                                     ; preds = %65
  call void @helper_cliprdr_send_empty_response(), !dbg !2018
  br label %76, !dbg !2019

; <label>:76:                                     ; preds = %75, %68, %58, %42, %13, %9
  ret void, !dbg !2020
}

declare i32 @XChangeProperty(%struct._XDisplay*, i64, i64, i64, i32, i32, i8*, i32) #2

declare i32 @XConvertSelection(%struct._XDisplay*, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @ui_clip_sync() #0 !dbg !2022 {
  call void @xclip_probe_selections(), !dbg !2023
  ret void, !dbg !2024
}

; Function Attrs: nounwind uwtable
define void @ui_clip_set_mode(i8*) #0 !dbg !2025 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2030, metadata !594), !dbg !2031
  store i32 1, i32* @g_rdpclip, align 4, !dbg !2032
  %3 = load i8*, i8** %2, align 8, !dbg !2033
  %4 = call i32 @str_startswith(i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)), !dbg !2035
  %5 = icmp ne i32 %4, 0, !dbg !2035
  br i1 %5, label %6, label %7, !dbg !2036

; <label>:6:                                      ; preds = %1
  store i32 1, i32* @auto_mode, align 4, !dbg !2037
  br label %15, !dbg !2038

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !2039
  %9 = call i32 @str_startswith(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)), !dbg !2041
  %10 = icmp ne i32 %9, 0, !dbg !2041
  br i1 %10, label %11, label %12, !dbg !2042

; <label>:11:                                     ; preds = %7
  store i32 0, i32* @auto_mode, align 4, !dbg !2043
  br label %14, !dbg !2044

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %2, align 8, !dbg !2045
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* %13), !dbg !2047
  store i32 0, i32* @g_rdpclip, align 4, !dbg !2048
  br label %14

; <label>:14:                                     ; preds = %12, %11
  br label %15

; <label>:15:                                     ; preds = %14, %6
  ret void, !dbg !2049
}

declare i32 @str_startswith(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @xclip_init() #0 !dbg !2050 {
  %1 = load i32, i32* @g_rdpclip, align 4, !dbg !2051
  %2 = icmp ne i32 %1, 0, !dbg !2051
  br i1 %2, label %4, label %3, !dbg !2053

; <label>:3:                                      ; preds = %0
  br label %94, !dbg !2054

; <label>:4:                                      ; preds = %0
  %5 = call i32 @cliprdr_init(), !dbg !2055
  %6 = icmp ne i32 %5, 0, !dbg !2055
  br i1 %6, label %8, label %7, !dbg !2057

; <label>:7:                                      ; preds = %4
  br label %94, !dbg !2058

; <label>:8:                                      ; preds = %4
  %9 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2059
  %10 = call i64 @XInternAtom(%struct._XDisplay* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !2060
  store i64 %10, i64* @primary_atom, align 8, !dbg !2061
  %11 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2062
  %12 = call i64 @XInternAtom(%struct._XDisplay* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !2063
  store i64 %12, i64* @clipboard_atom, align 8, !dbg !2064
  %13 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2065
  %14 = call i64 @XInternAtom(%struct._XDisplay* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0), !dbg !2066
  store i64 %14, i64* @targets_atom, align 8, !dbg !2067
  %15 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2068
  %16 = call i64 @XInternAtom(%struct._XDisplay* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !2069
  store i64 %16, i64* @timestamp_atom, align 8, !dbg !2070
  %17 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2071
  %18 = call i64 @XInternAtom(%struct._XDisplay* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i32 0), !dbg !2072
  store i64 %18, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2073
  %19 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2074
  %20 = call i64 @XInternAtom(%struct._XDisplay* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !2075
  store i64 %20, i64* @rdesktop_primary_timestamp_target_atom, align 8, !dbg !2076
  %21 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2077
  %22 = call i64 @XInternAtom(%struct._XDisplay* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !2078
  store i64 %22, i64* @rdesktop_clipboard_timestamp_target_atom, align 8, !dbg !2079
  %23 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2080
  %24 = call i64 @XInternAtom(%struct._XDisplay* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0), !dbg !2081
  store i64 %24, i64* @incr_atom, align 8, !dbg !2082
  %25 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2083
  %26 = call i64 @XInternAtom(%struct._XDisplay* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 0), !dbg !2084
  store i64 %26, i64* @format_string_atom, align 8, !dbg !2085
  %27 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2086
  %28 = call i64 @XInternAtom(%struct._XDisplay* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 0), !dbg !2087
  store i64 %28, i64* @format_utf8_string_atom, align 8, !dbg !2088
  %29 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2089
  %30 = call i64 @XInternAtom(%struct._XDisplay* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 0), !dbg !2090
  store i64 %30, i64* @format_unicode_atom, align 8, !dbg !2091
  %31 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2092
  %32 = call i64 @XInternAtom(%struct._XDisplay* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i32 0), !dbg !2093
  store i64 %32, i64* @rdesktop_selection_notify_atom, align 8, !dbg !2094
  %33 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2095
  %34 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2096
  %35 = bitcast %struct._XDisplay* %34 to %struct.anon*, !dbg !2097
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 33, !dbg !2097
  %37 = load i32, i32* %36, align 8, !dbg !2097
  %38 = sext i32 %37 to i64, !dbg !2097
  %39 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2096
  %40 = bitcast %struct._XDisplay* %39 to %struct.anon*, !dbg !2097
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 35, !dbg !2097
  %42 = load %struct.Screen*, %struct.Screen** %41, align 8, !dbg !2097
  %43 = getelementptr inbounds %struct.Screen, %struct.Screen* %42, i64 %38, !dbg !2097
  %44 = getelementptr inbounds %struct.Screen, %struct.Screen* %43, i32 0, i32 2, !dbg !2098
  %45 = load i64, i64* %44, align 8, !dbg !2098
  %46 = call i32 @XSelectInput(%struct._XDisplay* %33, i64 %45, i64 4194304), !dbg !2099
  store i32 0, i32* @probing_selections, align 4, !dbg !2100
  %47 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2101
  %48 = call i64 @XInternAtom(%struct._XDisplay* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 0), !dbg !2102
  store i64 %48, i64* @rdesktop_native_atom, align 8, !dbg !2103
  %49 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2104
  %50 = call i64 @XInternAtom(%struct._XDisplay* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !2105
  store i64 %50, i64* @rdesktop_clipboard_formats_atom, align 8, !dbg !2106
  %51 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2107
  %52 = call i64 @XInternAtom(%struct._XDisplay* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !2108
  store i64 %52, i64* @rdesktop_primary_owner_atom, align 8, !dbg !2109
  %53 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2110
  %54 = call i64 @XInternAtom(%struct._XDisplay* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !2111
  store i64 %54, i64* @rdesktop_clipboard_owner_atom, align 8, !dbg !2112
  store i32 0, i32* @num_targets, align 4, !dbg !2113
  %55 = load i64, i64* @targets_atom, align 8, !dbg !2114
  %56 = load i32, i32* @num_targets, align 4, !dbg !2115
  %57 = add nsw i32 %56, 1, !dbg !2115
  store i32 %57, i32* @num_targets, align 4, !dbg !2115
  %58 = sext i32 %56 to i64, !dbg !2116
  %59 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %58, !dbg !2116
  store i64 %55, i64* %59, align 8, !dbg !2117
  %60 = load i64, i64* @timestamp_atom, align 8, !dbg !2118
  %61 = load i32, i32* @num_targets, align 4, !dbg !2119
  %62 = add nsw i32 %61, 1, !dbg !2119
  store i32 %62, i32* @num_targets, align 4, !dbg !2119
  %63 = sext i32 %61 to i64, !dbg !2120
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %63, !dbg !2120
  store i64 %60, i64* %64, align 8, !dbg !2121
  %65 = load i64, i64* @rdesktop_native_atom, align 8, !dbg !2122
  %66 = load i32, i32* @num_targets, align 4, !dbg !2123
  %67 = add nsw i32 %66, 1, !dbg !2123
  store i32 %67, i32* @num_targets, align 4, !dbg !2123
  %68 = sext i32 %66 to i64, !dbg !2124
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %68, !dbg !2124
  store i64 %65, i64* %69, align 8, !dbg !2125
  %70 = load i64, i64* @rdesktop_clipboard_formats_atom, align 8, !dbg !2126
  %71 = load i32, i32* @num_targets, align 4, !dbg !2127
  %72 = add nsw i32 %71, 1, !dbg !2127
  store i32 %72, i32* @num_targets, align 4, !dbg !2127
  %73 = sext i32 %71 to i64, !dbg !2128
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %73, !dbg !2128
  store i64 %70, i64* %74, align 8, !dbg !2129
  %75 = load i64, i64* @format_utf8_string_atom, align 8, !dbg !2130
  %76 = load i32, i32* @num_targets, align 4, !dbg !2131
  %77 = add nsw i32 %76, 1, !dbg !2131
  store i32 %77, i32* @num_targets, align 4, !dbg !2131
  %78 = sext i32 %76 to i64, !dbg !2132
  %79 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %78, !dbg !2132
  store i64 %75, i64* %79, align 8, !dbg !2133
  %80 = load i64, i64* @format_unicode_atom, align 8, !dbg !2134
  %81 = load i32, i32* @num_targets, align 4, !dbg !2135
  %82 = add nsw i32 %81, 1, !dbg !2135
  store i32 %82, i32* @num_targets, align 4, !dbg !2135
  %83 = sext i32 %81 to i64, !dbg !2136
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %83, !dbg !2136
  store i64 %80, i64* %84, align 8, !dbg !2137
  %85 = load i64, i64* @format_string_atom, align 8, !dbg !2138
  %86 = load i32, i32* @num_targets, align 4, !dbg !2139
  %87 = add nsw i32 %86, 1, !dbg !2139
  store i32 %87, i32* @num_targets, align 4, !dbg !2139
  %88 = sext i32 %86 to i64, !dbg !2140
  %89 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %88, !dbg !2140
  store i64 %85, i64* %89, align 8, !dbg !2141
  %90 = load i32, i32* @num_targets, align 4, !dbg !2142
  %91 = add nsw i32 %90, 1, !dbg !2142
  store i32 %91, i32* @num_targets, align 4, !dbg !2142
  %92 = sext i32 %90 to i64, !dbg !2143
  %93 = getelementptr inbounds [8 x i64], [8 x i64]* @targets, i64 0, i64 %92, !dbg !2143
  store i64 31, i64* %93, align 8, !dbg !2144
  br label %94, !dbg !2145

; <label>:94:                                     ; preds = %8, %7, %3
  ret void, !dbg !2146
}

declare i32 @cliprdr_init() #2

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @xclip_deinit() #0 !dbg !2148 {
  %1 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2149
  %2 = load i64, i64* @primary_atom, align 8, !dbg !2151
  %3 = call i64 @XGetSelectionOwner(%struct._XDisplay* %1, i64 %2), !dbg !2152
  %4 = load i64, i64* @g_wnd, align 8, !dbg !2153
  %5 = icmp eq i64 %3, %4, !dbg !2154
  br i1 %5, label %6, label %11, !dbg !2155

; <label>:6:                                      ; preds = %0
  %7 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2156
  %8 = load i64, i64* @primary_atom, align 8, !dbg !2157
  %9 = load i64, i64* @acquire_time, align 8, !dbg !2158
  %10 = call i32 @XSetSelectionOwner(%struct._XDisplay* %7, i64 %8, i64 0, i64 %9), !dbg !2159
  br label %11, !dbg !2159

; <label>:11:                                     ; preds = %6, %0
  %12 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2160
  %13 = load i64, i64* @clipboard_atom, align 8, !dbg !2162
  %14 = call i64 @XGetSelectionOwner(%struct._XDisplay* %12, i64 %13), !dbg !2163
  %15 = load i64, i64* @g_wnd, align 8, !dbg !2164
  %16 = icmp eq i64 %14, %15, !dbg !2165
  br i1 %16, label %17, label %22, !dbg !2166

; <label>:17:                                     ; preds = %11
  %18 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2167
  %19 = load i64, i64* @clipboard_atom, align 8, !dbg !2168
  %20 = load i64, i64* @acquire_time, align 8, !dbg !2169
  %21 = call i32 @XSetSelectionOwner(%struct._XDisplay* %18, i64 %19, i64 0, i64 %20), !dbg !2170
  br label %22, !dbg !2170

; <label>:22:                                     ; preds = %17, %11
  call void @xclip_notify_change(), !dbg !2171
  ret void, !dbg !2172
}

; Function Attrs: nounwind uwtable
define internal void @xclip_clear_target_props() #0 !dbg !2173 {
  %1 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2174
  %2 = load i64, i64* @g_wnd, align 8, !dbg !2175
  %3 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2176
  %4 = call i32 @XDeleteProperty(%struct._XDisplay* %1, i64 %2, i64 %3), !dbg !2177
  %5 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2178
  %6 = load i64, i64* @g_wnd, align 8, !dbg !2179
  %7 = load i64, i64* @rdesktop_primary_timestamp_target_atom, align 8, !dbg !2180
  %8 = call i32 @XDeleteProperty(%struct._XDisplay* %5, i64 %6, i64 %7), !dbg !2181
  %9 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2182
  %10 = load i64, i64* @g_wnd, align 8, !dbg !2183
  %11 = load i64, i64* @rdesktop_clipboard_timestamp_target_atom, align 8, !dbg !2184
  %12 = call i32 @XDeleteProperty(%struct._XDisplay* %9, i64 %10, i64 %11), !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal void @helper_cliprdr_send_empty_response() #0 !dbg !2187 {
  call void @helper_cliprdr_send_response(i8* null, i32 0), !dbg !2188
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal void @helper_cliprdr_send_response(i8*, i32) #0 !dbg !2190 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2191, metadata !594), !dbg !2192
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2193, metadata !594), !dbg !2194
  %5 = load i32, i32* @rdp_clipboard_request_format, align 4, !dbg !2195
  %6 = icmp ne i32 %5, 0, !dbg !2197
  br i1 %6, label %7, label %14, !dbg !2198

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !2199
  %9 = load i32, i32* %4, align 4, !dbg !2201
  call void @cliprdr_send_data(i8* %8, i32 %9), !dbg !2202
  store i32 0, i32* @rdp_clipboard_request_format, align 4, !dbg !2203
  %10 = load i32, i32* @rdesktop_is_selection_owner, align 4, !dbg !2204
  %11 = icmp ne i32 %10, 0, !dbg !2204
  br i1 %11, label %13, label %12, !dbg !2206

; <label>:12:                                     ; preds = %7
  call void @cliprdr_send_simple_native_format_announce(i32 13), !dbg !2207
  br label %13, !dbg !2207

; <label>:13:                                     ; preds = %12, %7
  br label %14, !dbg !2208

; <label>:14:                                     ; preds = %13, %2
  ret void, !dbg !2209
}

declare void @cliprdr_send_data(i8*, i32) #2

declare i32 @XSendEvent(%struct._XDisplay*, i64, i32, i64, %union._XEvent*) #2

; Function Attrs: nounwind uwtable
define internal void @xclip_notify_change() #0 !dbg !2210 {
  %1 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2211
  %2 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2212
  %3 = bitcast %struct._XDisplay* %2 to %struct.anon*, !dbg !2213
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 33, !dbg !2213
  %5 = load i32, i32* %4, align 8, !dbg !2213
  %6 = sext i32 %5 to i64, !dbg !2213
  %7 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2212
  %8 = bitcast %struct._XDisplay* %7 to %struct.anon*, !dbg !2213
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 35, !dbg !2213
  %10 = load %struct.Screen*, %struct.Screen** %9, align 8, !dbg !2213
  %11 = getelementptr inbounds %struct.Screen, %struct.Screen* %10, i64 %6, !dbg !2213
  %12 = getelementptr inbounds %struct.Screen, %struct.Screen* %11, i32 0, i32 2, !dbg !2214
  %13 = load i64, i64* %12, align 8, !dbg !2214
  %14 = load i64, i64* @rdesktop_selection_notify_atom, align 8, !dbg !2215
  %15 = call i32 @XChangeProperty(%struct._XDisplay* %1, i64 %13, i64 %14, i64 19, i32 32, i32 0, i8* null, i32 0), !dbg !2216
  ret void, !dbg !2217
}

; Function Attrs: nounwind uwtable
define internal void @xclip_probe_selections() #0 !dbg !2218 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2219, metadata !594), !dbg !2220
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2221, metadata !594), !dbg !2222
  %3 = load i32, i32* @probing_selections, align 4, !dbg !2223
  %4 = icmp ne i32 %3, 0, !dbg !2223
  br i1 %4, label %5, label %6, !dbg !2225

; <label>:5:                                      ; preds = %0
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0)), !dbg !2226
  store i32 1, i32* @reprobe_selections, align 4, !dbg !2228
  br label %70, !dbg !2229

; <label>:6:                                      ; preds = %0
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0)), !dbg !2230
  store i32 1, i32* @probing_selections, align 4, !dbg !2231
  store i32 0, i32* @reprobe_selections, align 4, !dbg !2232
  call void @xclip_clear_target_props(), !dbg !2233
  %7 = load i32, i32* @auto_mode, align 4, !dbg !2234
  %8 = icmp ne i32 %7, 0, !dbg !2234
  br i1 %8, label %9, label %13, !dbg !2236

; <label>:9:                                      ; preds = %6
  %10 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2237
  %11 = load i64, i64* @primary_atom, align 8, !dbg !2238
  %12 = call i64 @XGetSelectionOwner(%struct._XDisplay* %10, i64 %11), !dbg !2239
  store i64 %12, i64* %1, align 8, !dbg !2240
  br label %14, !dbg !2241

; <label>:13:                                     ; preds = %6
  store i64 0, i64* %1, align 8, !dbg !2242
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2243
  %16 = load i64, i64* @clipboard_atom, align 8, !dbg !2244
  %17 = call i64 @XGetSelectionOwner(%struct._XDisplay* %15, i64 %16), !dbg !2245
  store i64 %17, i64* %2, align 8, !dbg !2246
  %18 = load i64, i64* %1, align 8, !dbg !2247
  %19 = load i64, i64* @g_wnd, align 8, !dbg !2249
  %20 = icmp eq i64 %18, %19, !dbg !2250
  br i1 %20, label %24, label %21, !dbg !2251

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* @auto_mode, align 4, !dbg !2252
  %23 = icmp ne i32 %22, 0, !dbg !2252
  br i1 %23, label %29, label %24, !dbg !2254

; <label>:24:                                     ; preds = %21, %14
  %25 = load i64, i64* %2, align 8, !dbg !2255
  %26 = load i64, i64* @g_wnd, align 8, !dbg !2257
  %27 = icmp eq i64 %25, %26, !dbg !2258
  br i1 %27, label %28, label %29, !dbg !2259

; <label>:28:                                     ; preds = %24
  br label %69, !dbg !2260

; <label>:29:                                     ; preds = %24, %21
  %30 = load i64, i64* %1, align 8, !dbg !2261
  %31 = icmp ne i64 %30, 0, !dbg !2263
  br i1 %31, label %32, label %48, !dbg !2264

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %2, align 8, !dbg !2265
  %34 = icmp ne i64 %33, 0, !dbg !2267
  br i1 %34, label %35, label %48, !dbg !2268

; <label>:35:                                     ; preds = %32
  store i64 0, i64* @primary_timestamp, align 8, !dbg !2269
  store i64 0, i64* @clipboard_timestamp, align 8, !dbg !2271
  %36 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2272
  %37 = load i64, i64* @primary_atom, align 8, !dbg !2273
  %38 = load i64, i64* @timestamp_atom, align 8, !dbg !2274
  %39 = load i64, i64* @rdesktop_primary_timestamp_target_atom, align 8, !dbg !2275
  %40 = load i64, i64* @g_wnd, align 8, !dbg !2276
  %41 = call i32 @XConvertSelection(%struct._XDisplay* %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 0), !dbg !2277
  %42 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2278
  %43 = load i64, i64* @clipboard_atom, align 8, !dbg !2279
  %44 = load i64, i64* @timestamp_atom, align 8, !dbg !2280
  %45 = load i64, i64* @rdesktop_clipboard_timestamp_target_atom, align 8, !dbg !2281
  %46 = load i64, i64* @g_wnd, align 8, !dbg !2282
  %47 = call i32 @XConvertSelection(%struct._XDisplay* %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 0), !dbg !2283
  br label %70, !dbg !2284

; <label>:48:                                     ; preds = %32, %29
  %49 = load i64, i64* %1, align 8, !dbg !2285
  %50 = icmp ne i64 %49, 0, !dbg !2287
  br i1 %50, label %51, label %58, !dbg !2288

; <label>:51:                                     ; preds = %48
  %52 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2289
  %53 = load i64, i64* @primary_atom, align 8, !dbg !2291
  %54 = load i64, i64* @targets_atom, align 8, !dbg !2292
  %55 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2293
  %56 = load i64, i64* @g_wnd, align 8, !dbg !2294
  %57 = call i32 @XConvertSelection(%struct._XDisplay* %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 0), !dbg !2295
  br label %70, !dbg !2296

; <label>:58:                                     ; preds = %48
  %59 = load i64, i64* %2, align 8, !dbg !2297
  %60 = icmp ne i64 %59, 0, !dbg !2299
  br i1 %60, label %61, label %68, !dbg !2300

; <label>:61:                                     ; preds = %58
  %62 = load %struct._XDisplay*, %struct._XDisplay** @g_display, align 8, !dbg !2301
  %63 = load i64, i64* @clipboard_atom, align 8, !dbg !2303
  %64 = load i64, i64* @targets_atom, align 8, !dbg !2304
  %65 = load i64, i64* @rdesktop_clipboard_target_atom, align 8, !dbg !2305
  %66 = load i64, i64* @g_wnd, align 8, !dbg !2306
  %67 = call i32 @XConvertSelection(%struct._XDisplay* %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 0), !dbg !2307
  br label %70, !dbg !2308

; <label>:68:                                     ; preds = %58
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0)), !dbg !2309
  call void @cliprdr_send_simple_native_format_announce(i32 13), !dbg !2310
  br label %69, !dbg !2310

; <label>:69:                                     ; preds = %68, %28
  store i32 0, i32* @probing_selections, align 4, !dbg !2311
  br label %70, !dbg !2312

; <label>:70:                                     ; preds = %69, %61, %51, %35, %5
  ret void, !dbg !2313
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #5

; Function Attrs: nounwind uwtable
define internal i8* @utf16_lf2crlf(i8*, i32*) #0 !dbg !2315 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2318, metadata !594), !dbg !2319
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2320, metadata !594), !dbg !2321
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2322, metadata !594), !dbg !2323
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2324, metadata !594), !dbg !2325
  call void @llvm.dbg.declare(metadata i16** %8, metadata !2326, metadata !594), !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2328, metadata !594), !dbg !2329
  %12 = load i32*, i32** %5, align 8, !dbg !2330
  %13 = load i32, i32* %12, align 4, !dbg !2331
  %14 = mul i32 %13, 2, !dbg !2332
  %15 = add i32 %14, 2, !dbg !2333
  %16 = call i8* @xmalloc(i32 %15), !dbg !2334
  store i8* %16, i8** %6, align 8, !dbg !2335
  %17 = load i8*, i8** %6, align 8, !dbg !2336
  %18 = icmp eq i8* %17, null, !dbg !2338
  br i1 %18, label %19, label %20, !dbg !2339

; <label>:19:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !2340
  br label %88, !dbg !2340

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %4, align 8, !dbg !2341
  %22 = bitcast i8* %21 to i16*, !dbg !2342
  store i16* %22, i16** %7, align 8, !dbg !2343
  %23 = load i8*, i8** %6, align 8, !dbg !2344
  %24 = bitcast i8* %23 to i16*, !dbg !2345
  store i16* %24, i16** %8, align 8, !dbg !2346
  %25 = load i16*, i16** %7, align 8, !dbg !2347
  %26 = load i16, i16* %25, align 2, !dbg !2348
  %27 = zext i16 %26 to i32, !dbg !2348
  %28 = icmp eq i32 %27, 65534, !dbg !2349
  %29 = zext i1 %28 to i32, !dbg !2349
  store i32 %29, i32* %9, align 4, !dbg !2350
  call void @llvm.dbg.declare(metadata i16* %10, metadata !2351, metadata !594), !dbg !2352
  store i16 0, i16* %10, align 2, !dbg !2352
  br label %30, !dbg !2353

; <label>:30:                                     ; preds = %69, %20
  %31 = load i16*, i16** %7, align 8, !dbg !2354
  %32 = bitcast i16* %31 to i8*, !dbg !2356
  %33 = load i8*, i8** %4, align 8, !dbg !2357
  %34 = load i32*, i32** %5, align 8, !dbg !2358
  %35 = load i32, i32* %34, align 4, !dbg !2359
  %36 = zext i32 %35 to i64, !dbg !2360
  %37 = getelementptr inbounds i8, i8* %33, i64 %36, !dbg !2360
  %38 = icmp ult i8* %32, %37, !dbg !2361
  br i1 %38, label %39, label %76, !dbg !2362

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i16* %11, metadata !2363, metadata !594), !dbg !2365
  %40 = load i16*, i16** %7, align 8, !dbg !2366
  %41 = load i16, i16* %40, align 2, !dbg !2367
  store i16 %41, i16* %11, align 2, !dbg !2365
  %42 = load i32, i32* %9, align 4, !dbg !2368
  %43 = icmp ne i32 %42, 0, !dbg !2368
  br i1 %43, label %44, label %54, !dbg !2370

; <label>:44:                                     ; preds = %39
  %45 = load i16, i16* %11, align 2, !dbg !2371
  %46 = zext i16 %45 to i32, !dbg !2371
  %47 = shl i32 %46, 8, !dbg !2372
  %48 = and i32 %47, 65280, !dbg !2373
  %49 = load i16, i16* %11, align 2, !dbg !2374
  %50 = zext i16 %49 to i32, !dbg !2374
  %51 = ashr i32 %50, 8, !dbg !2375
  %52 = add nsw i32 %48, %51, !dbg !2376
  %53 = trunc i32 %52 to i16, !dbg !2377
  store i16 %53, i16* %11, align 2, !dbg !2378
  br label %54, !dbg !2379

; <label>:54:                                     ; preds = %44, %39
  %55 = load i16, i16* %11, align 2, !dbg !2380
  %56 = zext i16 %55 to i32, !dbg !2380
  %57 = icmp eq i32 %56, 10, !dbg !2382
  br i1 %57, label %58, label %69, !dbg !2383

; <label>:58:                                     ; preds = %54
  %59 = load i16, i16* %10, align 2, !dbg !2384
  %60 = zext i16 %59 to i32, !dbg !2384
  %61 = icmp ne i32 %60, 13, !dbg !2386
  br i1 %61, label %62, label %69, !dbg !2387

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %9, align 4, !dbg !2388
  %64 = icmp ne i32 %63, 0, !dbg !2388
  %65 = select i1 %64, i32 3328, i32 13, !dbg !2388
  %66 = trunc i32 %65 to i16, !dbg !2388
  %67 = load i16*, i16** %8, align 8, !dbg !2389
  %68 = getelementptr inbounds i16, i16* %67, i32 1, !dbg !2389
  store i16* %68, i16** %8, align 8, !dbg !2389
  store i16 %66, i16* %67, align 2, !dbg !2390
  br label %69, !dbg !2391

; <label>:69:                                     ; preds = %62, %58, %54
  %70 = load i16, i16* %11, align 2, !dbg !2392
  store i16 %70, i16* %10, align 2, !dbg !2393
  %71 = load i16*, i16** %7, align 8, !dbg !2394
  %72 = getelementptr inbounds i16, i16* %71, i32 1, !dbg !2394
  store i16* %72, i16** %7, align 8, !dbg !2394
  %73 = load i16, i16* %71, align 2, !dbg !2395
  %74 = load i16*, i16** %8, align 8, !dbg !2396
  %75 = getelementptr inbounds i16, i16* %74, i32 1, !dbg !2396
  store i16* %75, i16** %8, align 8, !dbg !2396
  store i16 %73, i16* %74, align 2, !dbg !2397
  br label %30, !dbg !2398, !llvm.loop !2400

; <label>:76:                                     ; preds = %30
  %77 = load i16*, i16** %8, align 8, !dbg !2401
  %78 = getelementptr inbounds i16, i16* %77, i32 1, !dbg !2401
  store i16* %78, i16** %8, align 8, !dbg !2401
  store i16 0, i16* %77, align 2, !dbg !2402
  %79 = load i16*, i16** %8, align 8, !dbg !2403
  %80 = bitcast i16* %79 to i8*, !dbg !2404
  %81 = load i8*, i8** %6, align 8, !dbg !2405
  %82 = ptrtoint i8* %80 to i64, !dbg !2406
  %83 = ptrtoint i8* %81 to i64, !dbg !2406
  %84 = sub i64 %82, %83, !dbg !2406
  %85 = trunc i64 %84 to i32, !dbg !2404
  %86 = load i32*, i32** %5, align 8, !dbg !2407
  store i32 %85, i32* %86, align 4, !dbg !2408
  %87 = load i8*, i8** %6, align 8, !dbg !2409
  store i8* %87, i8** %3, align 8, !dbg !2410
  br label %88, !dbg !2410

; <label>:88:                                     ; preds = %76, %19
  %89 = load i8*, i8** %3, align 8, !dbg !2411
  ret i8* %89, !dbg !2411
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!573, !574}
!llvm.ident = !{!575}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !360, globals: !517)
!1 = !DIFile(filename: "[inter]xclip.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 41, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!25 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!26 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!27 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!28 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!29 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!30 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!31 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!32 = !DIEnumerator(name: "DAY_1", value: 131079)
!33 = !DIEnumerator(name: "DAY_2", value: 131080)
!34 = !DIEnumerator(name: "DAY_3", value: 131081)
!35 = !DIEnumerator(name: "DAY_4", value: 131082)
!36 = !DIEnumerator(name: "DAY_5", value: 131083)
!37 = !DIEnumerator(name: "DAY_6", value: 131084)
!38 = !DIEnumerator(name: "DAY_7", value: 131085)
!39 = !DIEnumerator(name: "ABMON_1", value: 131086)
!40 = !DIEnumerator(name: "ABMON_2", value: 131087)
!41 = !DIEnumerator(name: "ABMON_3", value: 131088)
!42 = !DIEnumerator(name: "ABMON_4", value: 131089)
!43 = !DIEnumerator(name: "ABMON_5", value: 131090)
!44 = !DIEnumerator(name: "ABMON_6", value: 131091)
!45 = !DIEnumerator(name: "ABMON_7", value: 131092)
!46 = !DIEnumerator(name: "ABMON_8", value: 131093)
!47 = !DIEnumerator(name: "ABMON_9", value: 131094)
!48 = !DIEnumerator(name: "ABMON_10", value: 131095)
!49 = !DIEnumerator(name: "ABMON_11", value: 131096)
!50 = !DIEnumerator(name: "ABMON_12", value: 131097)
!51 = !DIEnumerator(name: "MON_1", value: 131098)
!52 = !DIEnumerator(name: "MON_2", value: 131099)
!53 = !DIEnumerator(name: "MON_3", value: 131100)
!54 = !DIEnumerator(name: "MON_4", value: 131101)
!55 = !DIEnumerator(name: "MON_5", value: 131102)
!56 = !DIEnumerator(name: "MON_6", value: 131103)
!57 = !DIEnumerator(name: "MON_7", value: 131104)
!58 = !DIEnumerator(name: "MON_8", value: 131105)
!59 = !DIEnumerator(name: "MON_9", value: 131106)
!60 = !DIEnumerator(name: "MON_10", value: 131107)
!61 = !DIEnumerator(name: "MON_11", value: 131108)
!62 = !DIEnumerator(name: "MON_12", value: 131109)
!63 = !DIEnumerator(name: "AM_STR", value: 131110)
!64 = !DIEnumerator(name: "PM_STR", value: 131111)
!65 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!66 = !DIEnumerator(name: "D_FMT", value: 131113)
!67 = !DIEnumerator(name: "T_FMT", value: 131114)
!68 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!69 = !DIEnumerator(name: "ERA", value: 131116)
!70 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!71 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!72 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!73 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!74 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!75 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!76 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!77 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!78 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!79 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!80 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!81 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!82 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!83 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!84 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!85 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!86 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!87 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!88 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!89 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!90 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!91 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!92 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!93 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!94 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!95 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!96 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!97 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!98 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!99 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!100 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!101 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!102 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!103 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!104 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!105 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!106 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!107 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!108 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!109 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!110 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!111 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!112 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!113 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!114 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!115 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!116 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!117 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!118 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!119 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!120 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!121 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!122 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!123 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!124 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!125 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!126 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!127 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!128 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!129 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!130 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!131 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!132 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!133 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!134 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!135 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!136 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!137 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!138 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!139 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!140 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!141 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!142 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!143 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!144 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!145 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!146 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!147 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!148 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!149 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!150 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!151 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!152 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!153 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!154 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!155 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!156 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!157 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!158 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!159 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!160 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!161 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!162 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!163 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!164 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!165 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!166 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!167 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!168 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!169 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!170 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!171 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!172 = !DIEnumerator(name: "CODESET", value: 14)
!173 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!174 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!175 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!176 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!177 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!178 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!179 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!180 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!181 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!182 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!183 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!184 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!185 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!186 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!187 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!188 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!189 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!190 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!191 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!192 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!193 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!194 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!195 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!196 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!197 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!198 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!199 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!200 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!201 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!202 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!203 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!204 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!205 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!206 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!207 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!208 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!209 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!210 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!211 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!212 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!213 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!214 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!215 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!216 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!217 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!218 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!219 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!220 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!221 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!222 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!223 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!224 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!225 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!226 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!227 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!228 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!229 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!230 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!231 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!232 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!233 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!234 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!235 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!236 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!237 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!238 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!239 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!240 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!241 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!242 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!243 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!244 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!245 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!246 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!247 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!248 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!249 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!250 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!251 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!252 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!253 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!254 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!255 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!256 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!257 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!258 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!259 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!260 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!261 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!262 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!263 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!264 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!265 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!266 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!267 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!268 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!269 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!270 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!271 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!272 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!273 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!274 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!275 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!276 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!277 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!278 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!279 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!280 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!281 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!282 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!283 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!284 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!285 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!286 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!287 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!288 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!289 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!290 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!291 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!292 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!293 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!294 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!295 = !DIEnumerator(name: "THOUSEP", value: 65537)
!296 = !DIEnumerator(name: "__GROUPING", value: 65538)
!297 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!298 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!299 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!300 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!301 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!302 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!303 = !DIEnumerator(name: "__YESSTR", value: 327682)
!304 = !DIEnumerator(name: "__NOSTR", value: 327683)
!305 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!306 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!307 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!308 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!309 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!310 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!311 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!312 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!313 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!314 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!315 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!316 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!317 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!318 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!319 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!320 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!321 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!322 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!323 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!324 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!325 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!326 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!327 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!328 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!329 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!330 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!331 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!332 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!333 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!334 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!335 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!336 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!337 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!338 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!339 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!340 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!341 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!342 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!343 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!344 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!345 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!346 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!347 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!348 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!349 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!350 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!351 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!352 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!353 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!354 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!355 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!356 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!357 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!358 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!359 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!360 = !{!361, !364, !368, !371, !391, !507, !510, !509, !512, !513, !370, !514}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atom", file: !362, line: 74, baseType: !363)
!362 = !DIFile(filename: "/usr/include/X11/X.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!363 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !366, line: 39, baseType: !367)
!366 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!367 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !366, line: 43, baseType: !370)
!370 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "_XPrivDisplay", file: !372, line: 550, baseType: !373)
!372 = !DIFile(filename: "/usr/include/X11/Xlib.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 493, size: 2368, align: 64, elements: !375)
!375 = !{!376, !393, !396, !397, !398, !399, !400, !401, !403, !404, !405, !406, !412, !413, !414, !415, !416, !417, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !441, !445, !446, !447, !448, !499, !500, !501, !502, !503, !504, !505, !506}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !374, file: !372, line: 498, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "XExtData", file: !372, line: 155, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XExtData", file: !372, line: 148, size: 256, align: 64, elements: !380)
!380 = !{!381, !383, !385, !389}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !379, file: !372, line: 149, baseType: !382, size: 32, align: 32)
!382 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !372, line: 150, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "free_private", scope: !379, file: !372, line: 151, baseType: !386, size: 64, align: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!382, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !379, file: !372, line: 154, baseType: !390, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPointer", file: !372, line: 80, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !374, file: !372, line: 499, baseType: !394, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XPrivate", file: !372, line: 490, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !374, file: !372, line: 500, baseType: !382, size: 32, align: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !374, file: !372, line: 501, baseType: !382, size: 32, align: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proto_major_version", scope: !374, file: !372, line: 502, baseType: !382, size: 32, align: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "proto_minor_version", scope: !374, file: !372, line: 503, baseType: !382, size: 32, align: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !374, file: !372, line: 504, baseType: !391, size: 64, align: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !374, file: !372, line: 505, baseType: !402, size: 64, align: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !362, line: 66, baseType: !363)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "private4", scope: !374, file: !372, line: 506, baseType: !402, size: 64, align: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !374, file: !372, line: 507, baseType: !402, size: 64, align: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !374, file: !372, line: 508, baseType: !382, size: 32, align: 32, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "resource_alloc", scope: !374, file: !372, line: 509, baseType: !407, size: 64, align: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!402, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XDisplay", file: !372, line: 255, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "byte_order", scope: !374, file: !372, line: 512, baseType: !382, size: 32, align: 32, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_unit", scope: !374, file: !372, line: 513, baseType: !382, size: 32, align: 32, offset: 672)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_pad", scope: !374, file: !372, line: 514, baseType: !382, size: 32, align: 32, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_bit_order", scope: !374, file: !372, line: 515, baseType: !382, size: 32, align: 32, offset: 736)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nformats", scope: !374, file: !372, line: 516, baseType: !382, size: 32, align: 32, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap_format", scope: !374, file: !372, line: 517, baseType: !418, size: 64, align: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ScreenFormat", file: !372, line: 285, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 280, size: 192, align: 64, elements: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !420, file: !372, line: 281, baseType: !377, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !420, file: !372, line: 282, baseType: !382, size: 32, align: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !420, file: !372, line: 283, baseType: !382, size: 32, align: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "scanline_pad", scope: !420, file: !372, line: 284, baseType: !382, size: 32, align: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "private8", scope: !374, file: !372, line: 518, baseType: !382, size: 32, align: 32, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !374, file: !372, line: 519, baseType: !382, size: 32, align: 32, offset: 928)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "private9", scope: !374, file: !372, line: 520, baseType: !394, size: 64, align: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "private10", scope: !374, file: !372, line: 520, baseType: !394, size: 64, align: 64, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !374, file: !372, line: 521, baseType: !382, size: 32, align: 32, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "last_request_read", scope: !374, file: !372, line: 522, baseType: !363, size: 64, align: 64, offset: 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !374, file: !372, line: 523, baseType: !363, size: 64, align: 64, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "private11", scope: !374, file: !372, line: 524, baseType: !390, size: 64, align: 64, offset: 1280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "private12", scope: !374, file: !372, line: 525, baseType: !390, size: 64, align: 64, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "private13", scope: !374, file: !372, line: 526, baseType: !390, size: 64, align: 64, offset: 1408)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "private14", scope: !374, file: !372, line: 527, baseType: !390, size: 64, align: 64, offset: 1472)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_size", scope: !374, file: !372, line: 528, baseType: !370, size: 32, align: 32, offset: 1536)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !374, file: !372, line: 529, baseType: !439, size: 64, align: 64, offset: 1600)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XrmHashBucketRec", file: !372, line: 491, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "private15", scope: !374, file: !372, line: 530, baseType: !442, size: 64, align: 64, offset: 1664)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!382, !410}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "display_name", scope: !374, file: !372, line: 533, baseType: !391, size: 64, align: 64, offset: 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "default_screen", scope: !374, file: !372, line: 534, baseType: !382, size: 32, align: 32, offset: 1792)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nscreens", scope: !374, file: !372, line: 535, baseType: !382, size: 32, align: 32, offset: 1824)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "screens", scope: !374, file: !372, line: 536, baseType: !449, size: 64, align: 64, offset: 1856)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "Screen", file: !372, line: 275, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 257, size: 1024, align: 64, elements: !452)
!452 = !{!453, !454, !455, !457, !458, !459, !460, !461, !462, !483, !484, !485, !489, !491, !492, !493, !494, !495, !496, !497}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !451, file: !372, line: 258, baseType: !377, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !451, file: !372, line: 259, baseType: !410, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !451, file: !372, line: 260, baseType: !456, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "Window", file: !362, line: 96, baseType: !402)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !451, file: !372, line: 261, baseType: !382, size: 32, align: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !451, file: !372, line: 261, baseType: !382, size: 32, align: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mwidth", scope: !451, file: !372, line: 262, baseType: !382, size: 32, align: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mheight", scope: !451, file: !372, line: 262, baseType: !382, size: 32, align: 32, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ndepths", scope: !451, file: !372, line: 263, baseType: !382, size: 32, align: 32, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "depths", scope: !451, file: !372, line: 264, baseType: !463, size: 64, align: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "Depth", file: !372, line: 247, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 243, size: 128, align: 64, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !465, file: !372, line: 244, baseType: !382, size: 32, align: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nvisuals", scope: !465, file: !372, line: 245, baseType: !382, size: 32, align: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "visuals", scope: !465, file: !372, line: 246, baseType: !470, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "Visual", file: !372, line: 238, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 227, size: 448, align: 64, elements: !473)
!473 = !{!474, !475, !477, !478, !479, !480, !481, !482}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !472, file: !372, line: 228, baseType: !377, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "visualid", scope: !472, file: !372, line: 229, baseType: !476, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "VisualID", file: !362, line: 76, baseType: !363)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !472, file: !372, line: 233, baseType: !382, size: 32, align: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "red_mask", scope: !472, file: !372, line: 235, baseType: !363, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "green_mask", scope: !472, file: !372, line: 235, baseType: !363, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "blue_mask", scope: !472, file: !372, line: 235, baseType: !363, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_rgb", scope: !472, file: !372, line: 236, baseType: !382, size: 32, align: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "map_entries", scope: !472, file: !372, line: 237, baseType: !382, size: 32, align: 32, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "root_depth", scope: !451, file: !372, line: 265, baseType: !382, size: 32, align: 32, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "root_visual", scope: !451, file: !372, line: 266, baseType: !470, size: 64, align: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "default_gc", scope: !451, file: !372, line: 267, baseType: !486, size: 64, align: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "GC", file: !372, line: 222, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XGC", file: !372, line: 214, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !451, file: !372, line: 268, baseType: !490, size: 64, align: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "Colormap", file: !362, line: 104, baseType: !402)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "white_pixel", scope: !451, file: !372, line: 269, baseType: !363, size: 64, align: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "black_pixel", scope: !451, file: !372, line: 270, baseType: !363, size: 64, align: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "max_maps", scope: !451, file: !372, line: 271, baseType: !382, size: 32, align: 32, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "min_maps", scope: !451, file: !372, line: 271, baseType: !382, size: 32, align: 32, offset: 864)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "backing_store", scope: !451, file: !372, line: 272, baseType: !382, size: 32, align: 32, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "save_unders", scope: !451, file: !372, line: 273, baseType: !382, size: 32, align: 32, offset: 928)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "root_input_mask", scope: !451, file: !372, line: 274, baseType: !498, size: 64, align: 64, offset: 960)
!498 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "motion_buffer", scope: !374, file: !372, line: 537, baseType: !363, size: 64, align: 64, offset: 1920)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "private16", scope: !374, file: !372, line: 538, baseType: !363, size: 64, align: 64, offset: 1984)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "min_keycode", scope: !374, file: !372, line: 539, baseType: !382, size: 32, align: 32, offset: 2048)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "max_keycode", scope: !374, file: !372, line: 540, baseType: !382, size: 32, align: 32, offset: 2080)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "private17", scope: !374, file: !372, line: 541, baseType: !390, size: 64, align: 64, offset: 2112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "private18", scope: !374, file: !372, line: 542, baseType: !390, size: 64, align: 64, offset: 2176)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "private19", scope: !374, file: !372, line: 543, baseType: !382, size: 32, align: 32, offset: 2240)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "xdefaults", scope: !374, file: !372, line: 544, baseType: !391, size: 64, align: 64, offset: 2304)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !508, line: 46, baseType: !509)
!508 = !DIFile(filename: "/usr/local/include/iconv.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !511, line: 216, baseType: !363)
!511 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !366, line: 41, baseType: !516)
!516 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!517 = !{!518, !520, !521, !522, !523, !524, !525, !526, !528, !529, !530, !531, !532, !534, !535, !536, !537, !538, !539, !540, !556, !557, !558, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!518 = distinct !DIGlobalVariable(name: "clipboard_atom", scope: !0, file: !519, line: 60, type: !361, isLocal: true, isDefinition: true, variable: i64* @clipboard_atom)
!519 = !DIFile(filename: "xclip.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!520 = distinct !DIGlobalVariable(name: "primary_atom", scope: !0, file: !519, line: 60, type: !361, isLocal: true, isDefinition: true, variable: i64* @primary_atom)
!521 = distinct !DIGlobalVariable(name: "targets_atom", scope: !0, file: !519, line: 62, type: !361, isLocal: true, isDefinition: true, variable: i64* @targets_atom)
!522 = distinct !DIGlobalVariable(name: "timestamp_atom", scope: !0, file: !519, line: 64, type: !361, isLocal: true, isDefinition: true, variable: i64* @timestamp_atom)
!523 = distinct !DIGlobalVariable(name: "rdesktop_clipboard_target_atom", scope: !0, file: !519, line: 68, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_clipboard_target_atom)
!524 = distinct !DIGlobalVariable(name: "rdesktop_primary_timestamp_target_atom", scope: !0, file: !519, line: 72, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_primary_timestamp_target_atom)
!525 = distinct !DIGlobalVariable(name: "rdesktop_clipboard_timestamp_target_atom", scope: !0, file: !519, line: 72, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_clipboard_timestamp_target_atom)
!526 = distinct !DIGlobalVariable(name: "primary_timestamp", scope: !0, file: !519, line: 74, type: !527, isLocal: true, isDefinition: true, variable: i64* @primary_timestamp)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "Time", file: !362, line: 77, baseType: !363)
!528 = distinct !DIGlobalVariable(name: "clipboard_timestamp", scope: !0, file: !519, line: 74, type: !527, isLocal: true, isDefinition: true, variable: i64* @clipboard_timestamp)
!529 = distinct !DIGlobalVariable(name: "rdesktop_clipboard_formats_atom", scope: !0, file: !519, line: 77, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_clipboard_formats_atom)
!530 = distinct !DIGlobalVariable(name: "rdesktop_native_atom", scope: !0, file: !519, line: 81, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_native_atom)
!531 = distinct !DIGlobalVariable(name: "rdesktop_selection_notify_atom", scope: !0, file: !519, line: 88, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_selection_notify_atom)
!532 = distinct !DIGlobalVariable(name: "probing_selections", scope: !0, file: !519, line: 92, type: !533, isLocal: true, isDefinition: true, variable: i32* @probing_selections)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !366, line: 28, baseType: !382)
!534 = distinct !DIGlobalVariable(name: "rdesktop_primary_owner_atom", scope: !0, file: !519, line: 95, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_primary_owner_atom)
!535 = distinct !DIGlobalVariable(name: "rdesktop_clipboard_owner_atom", scope: !0, file: !519, line: 95, type: !361, isLocal: true, isDefinition: true, variable: i64* @rdesktop_clipboard_owner_atom)
!536 = distinct !DIGlobalVariable(name: "format_string_atom", scope: !0, file: !519, line: 96, type: !361, isLocal: true, isDefinition: true, variable: i64* @format_string_atom)
!537 = distinct !DIGlobalVariable(name: "format_utf8_string_atom", scope: !0, file: !519, line: 96, type: !361, isLocal: true, isDefinition: true, variable: i64* @format_utf8_string_atom)
!538 = distinct !DIGlobalVariable(name: "format_unicode_atom", scope: !0, file: !519, line: 96, type: !361, isLocal: true, isDefinition: true, variable: i64* @format_unicode_atom)
!539 = distinct !DIGlobalVariable(name: "incr_atom", scope: !0, file: !519, line: 98, type: !361, isLocal: true, isDefinition: true, variable: i64* @incr_atom)
!540 = distinct !DIGlobalVariable(name: "selection_request", scope: !0, file: !519, line: 103, type: !541, isLocal: true, isDefinition: true, variable: %struct.XSelectionRequestEvent* @selection_request)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionRequestEvent", file: !372, line: 868, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 857, size: 640, align: 64, elements: !543)
!543 = !{!544, !545, !546, !547, !550, !551, !552, !553, !554, !555}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !542, file: !372, line: 858, baseType: !382, size: 32, align: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !542, file: !372, line: 859, baseType: !363, size: 64, align: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !542, file: !372, line: 860, baseType: !382, size: 32, align: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !542, file: !372, line: 861, baseType: !548, size: 64, align: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "Display", file: !372, line: 487, baseType: !411)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !542, file: !372, line: 862, baseType: !456, size: 64, align: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "requestor", scope: !542, file: !372, line: 863, baseType: !456, size: 64, align: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !542, file: !372, line: 864, baseType: !361, size: 64, align: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !542, file: !372, line: 865, baseType: !361, size: 64, align: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "property", scope: !542, file: !372, line: 866, baseType: !361, size: 64, align: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !542, file: !372, line: 867, baseType: !527, size: 64, align: 64, offset: 576)
!556 = distinct !DIGlobalVariable(name: "has_selection_request", scope: !0, file: !519, line: 105, type: !533, isLocal: true, isDefinition: true, variable: i32* @has_selection_request)
!557 = distinct !DIGlobalVariable(name: "rdp_clipboard_request_format", scope: !0, file: !519, line: 111, type: !382, isLocal: true, isDefinition: true, variable: i32* @rdp_clipboard_request_format)
!558 = distinct !DIGlobalVariable(name: "targets", scope: !0, file: !519, line: 113, type: !559, isLocal: true, isDefinition: true, variable: [8 x i64]* @targets)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 512, align: 64, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 8)
!562 = distinct !DIGlobalVariable(name: "num_targets", scope: !0, file: !519, line: 114, type: !382, isLocal: true, isDefinition: true, variable: i32* @num_targets)
!563 = distinct !DIGlobalVariable(name: "rdesktop_is_selection_owner", scope: !0, file: !519, line: 117, type: !533, isLocal: true, isDefinition: true, variable: i32* @rdesktop_is_selection_owner)
!564 = distinct !DIGlobalVariable(name: "acquire_time", scope: !0, file: !519, line: 119, type: !527, isLocal: true, isDefinition: true, variable: i64* @acquire_time)
!565 = distinct !DIGlobalVariable(name: "formats_data", scope: !0, file: !519, line: 83, type: !364, isLocal: true, isDefinition: true, variable: i8** @formats_data)
!566 = distinct !DIGlobalVariable(name: "formats_data_length", scope: !0, file: !519, line: 84, type: !369, isLocal: true, isDefinition: true, variable: i32* @formats_data_length)
!567 = distinct !DIGlobalVariable(name: "reprobe_selections", scope: !0, file: !519, line: 92, type: !533, isLocal: true, isDefinition: true, variable: i32* @reprobe_selections)
!568 = distinct !DIGlobalVariable(name: "g_waiting_for_INCR", scope: !0, file: !519, line: 122, type: !382, isLocal: true, isDefinition: true, variable: i32* @g_waiting_for_INCR)
!569 = distinct !DIGlobalVariable(name: "g_clip_buflen", scope: !0, file: !519, line: 128, type: !369, isLocal: true, isDefinition: true, variable: i32* @g_clip_buflen)
!570 = distinct !DIGlobalVariable(name: "g_clip_buffer", scope: !0, file: !519, line: 126, type: !364, isLocal: true, isDefinition: true, variable: i8** @g_clip_buffer)
!571 = distinct !DIGlobalVariable(name: "g_incr_target", scope: !0, file: !519, line: 124, type: !361, isLocal: true, isDefinition: true, variable: i64* @g_incr_target)
!572 = distinct !DIGlobalVariable(name: "auto_mode", scope: !0, file: !519, line: 58, type: !533, isLocal: true, isDefinition: true, variable: i32* @auto_mode)
!573 = !{i32 2, !"Dwarf Version", i32 4}
!574 = !{i32 2, !"Debug Info Version", i32 3}
!575 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!576 = distinct !DISubprogram(name: "xclip_handle_SelectionNotify", scope: !519, file: !519, line: 507, type: !577, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionEvent", file: !372, line: 880, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 870, size: 576, align: 64, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !372, line: 871, baseType: !382, size: 32, align: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !581, file: !372, line: 872, baseType: !363, size: 64, align: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !581, file: !372, line: 873, baseType: !382, size: 32, align: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !581, file: !372, line: 874, baseType: !548, size: 64, align: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "requestor", scope: !581, file: !372, line: 875, baseType: !456, size: 64, align: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !581, file: !372, line: 876, baseType: !361, size: 64, align: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !581, file: !372, line: 877, baseType: !361, size: 64, align: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "property", scope: !581, file: !372, line: 878, baseType: !361, size: 64, align: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !581, file: !372, line: 879, baseType: !527, size: 64, align: 64, offset: 512)
!592 = !{}
!593 = !DILocalVariable(name: "event", arg: 1, scope: !576, file: !519, line: 507, type: !579)
!594 = !DIExpression()
!595 = !DILocation(line: 507, column: 48, scope: !576)
!596 = !DILocalVariable(name: "i", scope: !576, file: !519, line: 509, type: !363)
!597 = !DILocation(line: 509, column: 16, scope: !576)
!598 = !DILocalVariable(name: "nitems", scope: !576, file: !519, line: 509, type: !363)
!599 = !DILocation(line: 509, column: 19, scope: !576)
!600 = !DILocalVariable(name: "bytes_left", scope: !576, file: !519, line: 509, type: !363)
!601 = !DILocation(line: 509, column: 27, scope: !576)
!602 = !DILocalVariable(name: "wa", scope: !576, file: !519, line: 510, type: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "XWindowAttributes", file: !372, line: 334, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 308, size: 1088, align: 64, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !604, file: !372, line: 309, baseType: !382, size: 32, align: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !604, file: !372, line: 309, baseType: !382, size: 32, align: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !604, file: !372, line: 310, baseType: !382, size: 32, align: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !604, file: !372, line: 310, baseType: !382, size: 32, align: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !604, file: !372, line: 311, baseType: !382, size: 32, align: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !604, file: !372, line: 312, baseType: !382, size: 32, align: 32, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !604, file: !372, line: 313, baseType: !470, size: 64, align: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !604, file: !372, line: 314, baseType: !456, size: 64, align: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !604, file: !372, line: 318, baseType: !382, size: 32, align: 32, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_gravity", scope: !604, file: !372, line: 320, baseType: !382, size: 32, align: 32, offset: 352)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "win_gravity", scope: !604, file: !372, line: 321, baseType: !382, size: 32, align: 32, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "backing_store", scope: !604, file: !372, line: 322, baseType: !382, size: 32, align: 32, offset: 416)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "backing_planes", scope: !604, file: !372, line: 323, baseType: !363, size: 64, align: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "backing_pixel", scope: !604, file: !372, line: 324, baseType: !363, size: 64, align: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "save_under", scope: !604, file: !372, line: 325, baseType: !382, size: 32, align: 32, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !604, file: !372, line: 326, baseType: !490, size: 64, align: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "map_installed", scope: !604, file: !372, line: 327, baseType: !382, size: 32, align: 32, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "map_state", scope: !604, file: !372, line: 328, baseType: !382, size: 32, align: 32, offset: 736)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "all_event_masks", scope: !604, file: !372, line: 329, baseType: !498, size: 64, align: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "your_event_mask", scope: !604, file: !372, line: 330, baseType: !498, size: 64, align: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_propagate_mask", scope: !604, file: !372, line: 331, baseType: !498, size: 64, align: 64, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !604, file: !372, line: 332, baseType: !382, size: 32, align: 32, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "screen", scope: !604, file: !372, line: 333, baseType: !449, size: 64, align: 64, offset: 1024)
!629 = !DILocation(line: 510, column: 20, scope: !576)
!630 = !DILocalVariable(name: "type", scope: !576, file: !519, line: 511, type: !361)
!631 = !DILocation(line: 511, column: 7, scope: !576)
!632 = !DILocalVariable(name: "supported_targets", scope: !576, file: !519, line: 512, type: !633)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!634 = !DILocation(line: 512, column: 8, scope: !576)
!635 = !DILocalVariable(name: "res", scope: !576, file: !519, line: 513, type: !382)
!636 = !DILocation(line: 513, column: 6, scope: !576)
!637 = !DILocalVariable(name: "format", scope: !576, file: !519, line: 513, type: !382)
!638 = !DILocation(line: 513, column: 11, scope: !576)
!639 = !DILocalVariable(name: "data", scope: !576, file: !519, line: 514, type: !364)
!640 = !DILocation(line: 514, column: 9, scope: !576)
!641 = !DILocation(line: 516, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !576, file: !519, line: 516, column: 6)
!643 = !DILocation(line: 516, column: 13, scope: !642)
!644 = !DILocation(line: 516, column: 22, scope: !642)
!645 = !DILocation(line: 516, column: 6, scope: !576)
!646 = !DILocation(line: 517, column: 1, scope: !642)
!647 = !DILocation(line: 518, column: 3, scope: !576)
!648 = !DILocation(line: 747, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !576, file: !519, line: 747, column: 6)
!650 = !DILocation(line: 747, column: 6, scope: !576)
!651 = !DILocation(line: 748, column: 9, scope: !649)
!652 = !DILocation(line: 748, column: 3, scope: !649)
!653 = !DILocation(line: 750, column: 2, scope: !576)
!654 = !DILocation(line: 753, column: 2, scope: !576)
!655 = !DILocation(line: 754, column: 6, scope: !656)
!656 = distinct !DILexicalBlock(scope: !576, file: !519, line: 754, column: 6)
!657 = !DILocation(line: 754, column: 6, scope: !576)
!658 = !DILocation(line: 756, column: 3, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !519, line: 755, column: 2)
!660 = !DILocation(line: 758, column: 22, scope: !659)
!661 = !DILocation(line: 758, column: 31, scope: !659)
!662 = !DILocation(line: 764, column: 3, scope: !659)
!663 = !DILocation(line: 765, column: 2, scope: !659)
!664 = !DILocation(line: 768, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !656, file: !519, line: 767, column: 2)
!666 = !DILocation(line: 770, column: 2, scope: !576)
!667 = distinct !DISubprogram(name: "xclip_handle_SelectionRequest", scope: !519, file: !519, line: 778, type: !668, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!671 = !DILocalVariable(name: "event", arg: 1, scope: !667, file: !519, line: 778, type: !670)
!672 = !DILocation(line: 778, column: 56, scope: !667)
!673 = !DILocalVariable(name: "nitems", scope: !667, file: !519, line: 780, type: !363)
!674 = !DILocation(line: 780, column: 16, scope: !667)
!675 = !DILocalVariable(name: "bytes_left", scope: !667, file: !519, line: 780, type: !363)
!676 = !DILocation(line: 780, column: 24, scope: !667)
!677 = !DILocalVariable(name: "prop_return", scope: !667, file: !519, line: 781, type: !513)
!678 = !DILocation(line: 781, column: 17, scope: !667)
!679 = !DILocalVariable(name: "format", scope: !667, file: !519, line: 782, type: !382)
!680 = !DILocation(line: 782, column: 6, scope: !667)
!681 = !DILocalVariable(name: "res", scope: !667, file: !519, line: 782, type: !382)
!682 = !DILocation(line: 782, column: 14, scope: !667)
!683 = !DILocalVariable(name: "type", scope: !667, file: !519, line: 783, type: !361)
!684 = !DILocation(line: 783, column: 7, scope: !667)
!685 = !DILocation(line: 787, column: 22, scope: !667)
!686 = !DILocation(line: 787, column: 33, scope: !667)
!687 = !DILocation(line: 787, column: 40, scope: !667)
!688 = !DILocation(line: 787, column: 9, scope: !667)
!689 = !DILocation(line: 787, column: 65, scope: !667)
!690 = !DILocation(line: 787, column: 76, scope: !667)
!691 = !DILocation(line: 787, column: 83, scope: !667)
!692 = !DILocation(line: 787, column: 52, scope: !693)
!693 = !DILexicalBlockFile(scope: !667, file: !519, discriminator: 1)
!694 = !DILocation(line: 788, column: 22, scope: !667)
!695 = !DILocation(line: 788, column: 33, scope: !667)
!696 = !DILocation(line: 788, column: 40, scope: !667)
!697 = !DILocation(line: 788, column: 9, scope: !667)
!698 = !DILocation(line: 785, column: 2, scope: !667)
!699 = !DILocation(line: 790, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !667, file: !519, line: 790, column: 6)
!701 = !DILocation(line: 790, column: 13, scope: !700)
!702 = !DILocation(line: 790, column: 23, scope: !700)
!703 = !DILocation(line: 790, column: 20, scope: !700)
!704 = !DILocation(line: 790, column: 6, scope: !667)
!705 = !DILocation(line: 792, column: 27, scope: !706)
!706 = distinct !DILexicalBlock(scope: !700, file: !519, line: 791, column: 2)
!707 = !DILocation(line: 792, column: 67, scope: !706)
!708 = !DILocation(line: 792, column: 3, scope: !706)
!709 = !DILocation(line: 793, column: 3, scope: !706)
!710 = !DILocation(line: 795, column: 11, scope: !711)
!711 = distinct !DILexicalBlock(scope: !700, file: !519, line: 795, column: 11)
!712 = !DILocation(line: 795, column: 18, scope: !711)
!713 = !DILocation(line: 795, column: 28, scope: !711)
!714 = !DILocation(line: 795, column: 25, scope: !711)
!715 = !DILocation(line: 795, column: 11, scope: !700)
!716 = !DILocation(line: 797, column: 27, scope: !717)
!717 = distinct !DILexicalBlock(scope: !711, file: !519, line: 796, column: 2)
!718 = !DILocation(line: 797, column: 3, scope: !717)
!719 = !DILocation(line: 798, column: 3, scope: !717)
!720 = !DILocation(line: 800, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !711, file: !519, line: 800, column: 11)
!722 = !DILocation(line: 800, column: 18, scope: !721)
!723 = !DILocation(line: 800, column: 28, scope: !721)
!724 = !DILocation(line: 800, column: 25, scope: !721)
!725 = !DILocation(line: 800, column: 11, scope: !711)
!726 = !DILocation(line: 802, column: 27, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !519, line: 801, column: 2)
!728 = !DILocation(line: 802, column: 47, scope: !727)
!729 = !DILocation(line: 802, column: 61, scope: !727)
!730 = !DILocation(line: 802, column: 3, scope: !727)
!731 = !DILocation(line: 803, column: 2, scope: !727)
!732 = !DILocation(line: 809, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !519, line: 809, column: 7)
!734 = distinct !DILexicalBlock(scope: !721, file: !519, line: 805, column: 2)
!735 = !DILocation(line: 809, column: 7, scope: !734)
!736 = !DILocation(line: 811, column: 4, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !519, line: 810, column: 3)
!738 = !DILocation(line: 813, column: 27, scope: !737)
!739 = !DILocation(line: 813, column: 4, scope: !737)
!740 = !DILocation(line: 814, column: 4, scope: !737)
!741 = !DILocation(line: 816, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !734, file: !519, line: 816, column: 7)
!743 = !DILocation(line: 816, column: 14, scope: !742)
!744 = !DILocation(line: 816, column: 24, scope: !742)
!745 = !DILocation(line: 816, column: 21, scope: !742)
!746 = !DILocation(line: 816, column: 7, scope: !734)
!747 = !DILocation(line: 820, column: 29, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !519, line: 817, column: 3)
!749 = !DILocation(line: 820, column: 40, scope: !748)
!750 = !DILocation(line: 820, column: 47, scope: !748)
!751 = !DILocation(line: 821, column: 8, scope: !748)
!752 = !DILocation(line: 821, column: 15, scope: !748)
!753 = !DILocation(line: 820, column: 10, scope: !748)
!754 = !DILocation(line: 820, column: 8, scope: !748)
!755 = !DILocation(line: 824, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !748, file: !519, line: 824, column: 8)
!757 = !DILocation(line: 824, column: 12, scope: !756)
!758 = !DILocation(line: 824, column: 22, scope: !756)
!759 = !DILocation(line: 824, column: 27, scope: !760)
!760 = !DILexicalBlockFile(scope: !756, file: !519, discriminator: 1)
!761 = !DILocation(line: 824, column: 8, scope: !760)
!762 = !DILocation(line: 826, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !519, line: 825, column: 4)
!764 = !DILocation(line: 828, column: 28, scope: !763)
!765 = !DILocation(line: 828, column: 5, scope: !763)
!766 = !DILocation(line: 829, column: 5, scope: !763)
!767 = !DILocation(line: 832, column: 25, scope: !748)
!768 = !DILocation(line: 832, column: 13, scope: !748)
!769 = !DILocation(line: 832, column: 11, scope: !748)
!770 = !DILocation(line: 833, column: 10, scope: !748)
!771 = !DILocation(line: 833, column: 4, scope: !748)
!772 = !DILocation(line: 834, column: 3, scope: !748)
!773 = !DILocation(line: 835, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !742, file: !519, line: 835, column: 12)
!775 = !DILocation(line: 835, column: 19, scope: !774)
!776 = !DILocation(line: 835, column: 29, scope: !774)
!777 = !DILocation(line: 835, column: 26, scope: !774)
!778 = !DILocation(line: 835, column: 48, scope: !774)
!779 = !DILocation(line: 835, column: 51, scope: !780)
!780 = !DILexicalBlockFile(scope: !774, file: !519, discriminator: 1)
!781 = !DILocation(line: 835, column: 58, scope: !780)
!782 = !DILocation(line: 835, column: 65, scope: !780)
!783 = !DILocation(line: 835, column: 12, scope: !780)
!784 = !DILocation(line: 838, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !774, file: !519, line: 836, column: 3)
!786 = !DILocation(line: 839, column: 3, scope: !785)
!787 = !DILocation(line: 840, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !774, file: !519, line: 840, column: 12)
!789 = !DILocation(line: 840, column: 19, scope: !788)
!790 = !DILocation(line: 840, column: 29, scope: !788)
!791 = !DILocation(line: 840, column: 26, scope: !788)
!792 = !DILocation(line: 840, column: 12, scope: !774)
!793 = !DILocation(line: 843, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !788, file: !519, line: 841, column: 3)
!795 = !DILocation(line: 850, column: 3, scope: !794)
!796 = !DILocation(line: 851, column: 12, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !519, line: 851, column: 12)
!798 = !DILocation(line: 851, column: 19, scope: !797)
!799 = !DILocation(line: 851, column: 29, scope: !797)
!800 = !DILocation(line: 851, column: 26, scope: !797)
!801 = !DILocation(line: 851, column: 12, scope: !788)
!802 = !DILocation(line: 854, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !519, line: 852, column: 3)
!804 = !DILocation(line: 855, column: 3, scope: !803)
!805 = !DILocation(line: 860, column: 24, scope: !806)
!806 = distinct !DILexicalBlock(scope: !797, file: !519, line: 857, column: 3)
!807 = !DILocation(line: 860, column: 35, scope: !806)
!808 = !DILocation(line: 860, column: 42, scope: !806)
!809 = !DILocation(line: 860, column: 11, scope: !806)
!810 = !DILocation(line: 858, column: 4, scope: !806)
!811 = !DILocation(line: 861, column: 27, scope: !806)
!812 = !DILocation(line: 861, column: 4, scope: !806)
!813 = !DILocation(line: 862, column: 4, scope: !806)
!814 = !DILocation(line: 865, column: 29, scope: !734)
!815 = !DILocation(line: 865, column: 3, scope: !734)
!816 = !DILocation(line: 866, column: 24, scope: !734)
!817 = !DILocation(line: 866, column: 23, scope: !734)
!818 = !DILocation(line: 867, column: 25, scope: !734)
!819 = !DILocation(line: 868, column: 3, scope: !734)
!820 = !DILocation(line: 870, column: 1, scope: !667)
!821 = distinct !DISubprogram(name: "xclip_provide_selection", scope: !519, file: !519, line: 218, type: !822, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !670, !361, !370, !364, !369}
!824 = !DILocalVariable(name: "req", arg: 1, scope: !821, file: !519, line: 218, type: !670)
!825 = !DILocation(line: 218, column: 50, scope: !821)
!826 = !DILocalVariable(name: "type", arg: 2, scope: !821, file: !519, line: 218, type: !361)
!827 = !DILocation(line: 218, column: 60, scope: !821)
!828 = !DILocalVariable(name: "format", arg: 3, scope: !821, file: !519, line: 218, type: !370)
!829 = !DILocation(line: 218, column: 79, scope: !821)
!830 = !DILocalVariable(name: "data", arg: 4, scope: !821, file: !519, line: 218, type: !364)
!831 = !DILocation(line: 218, column: 95, scope: !821)
!832 = !DILocalVariable(name: "length", arg: 5, scope: !821, file: !519, line: 219, type: !369)
!833 = !DILocation(line: 219, column: 11, scope: !821)
!834 = !DILocalVariable(name: "xev", scope: !821, file: !519, line: 221, type: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "XEvent", file: !372, line: 1009, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_XEvent", file: !372, line: 973, size: 1536, align: 64, elements: !837)
!837 = !{!838, !839, !848, !867, !886, !905, !926, !937, !951, !968, !979, !989, !1005, !1015, !1026, !1037, !1047, !1061, !1078, !1090, !1101, !1119, !1130, !1141, !1153, !1164, !1165, !1166, !1178, !1205, !1217, !1228, !1241, !1251, !1263}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !372, line: 974, baseType: !382, size: 32, align: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xany", scope: !836, file: !372, line: 975, baseType: !840, size: 320, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "XAnyEvent", file: !372, line: 940, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 934, size: 320, align: 64, elements: !842)
!842 = !{!843, !844, !845, !846, !847}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !372, line: 935, baseType: !382, size: 32, align: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !841, file: !372, line: 936, baseType: !363, size: 64, align: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !841, file: !372, line: 937, baseType: !382, size: 32, align: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !841, file: !372, line: 938, baseType: !548, size: 64, align: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !841, file: !372, line: 939, baseType: !456, size: 64, align: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "xkey", scope: !836, file: !372, line: 976, baseType: !849, size: 768, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "XKeyEvent", file: !372, line: 571, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 557, size: 768, align: 64, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !372, line: 558, baseType: !382, size: 32, align: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !850, file: !372, line: 559, baseType: !363, size: 64, align: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !850, file: !372, line: 560, baseType: !382, size: 32, align: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !850, file: !372, line: 561, baseType: !548, size: 64, align: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !850, file: !372, line: 562, baseType: !456, size: 64, align: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !850, file: !372, line: 563, baseType: !456, size: 64, align: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !850, file: !372, line: 564, baseType: !456, size: 64, align: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !850, file: !372, line: 565, baseType: !527, size: 64, align: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !850, file: !372, line: 566, baseType: !382, size: 32, align: 32, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !850, file: !372, line: 566, baseType: !382, size: 32, align: 32, offset: 544)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !850, file: !372, line: 567, baseType: !382, size: 32, align: 32, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !850, file: !372, line: 567, baseType: !382, size: 32, align: 32, offset: 608)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !850, file: !372, line: 568, baseType: !370, size: 32, align: 32, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !850, file: !372, line: 569, baseType: !370, size: 32, align: 32, offset: 672)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !850, file: !372, line: 570, baseType: !382, size: 32, align: 32, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xbutton", scope: !836, file: !372, line: 977, baseType: !868, size: 768, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "XButtonEvent", file: !372, line: 589, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 575, size: 768, align: 64, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !372, line: 576, baseType: !382, size: 32, align: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !869, file: !372, line: 577, baseType: !363, size: 64, align: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !869, file: !372, line: 578, baseType: !382, size: 32, align: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !869, file: !372, line: 579, baseType: !548, size: 64, align: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !869, file: !372, line: 580, baseType: !456, size: 64, align: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !869, file: !372, line: 581, baseType: !456, size: 64, align: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !869, file: !372, line: 582, baseType: !456, size: 64, align: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !869, file: !372, line: 583, baseType: !527, size: 64, align: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !869, file: !372, line: 584, baseType: !382, size: 32, align: 32, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !869, file: !372, line: 584, baseType: !382, size: 32, align: 32, offset: 544)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !869, file: !372, line: 585, baseType: !382, size: 32, align: 32, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !869, file: !372, line: 585, baseType: !382, size: 32, align: 32, offset: 608)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !869, file: !372, line: 586, baseType: !370, size: 32, align: 32, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !869, file: !372, line: 587, baseType: !370, size: 32, align: 32, offset: 672)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !869, file: !372, line: 588, baseType: !382, size: 32, align: 32, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "xmotion", scope: !836, file: !372, line: 978, baseType: !887, size: 768, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMotionEvent", file: !372, line: 607, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 593, size: 768, align: 64, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !372, line: 594, baseType: !382, size: 32, align: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !888, file: !372, line: 595, baseType: !363, size: 64, align: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !888, file: !372, line: 596, baseType: !382, size: 32, align: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !888, file: !372, line: 597, baseType: !548, size: 64, align: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !888, file: !372, line: 598, baseType: !456, size: 64, align: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !888, file: !372, line: 599, baseType: !456, size: 64, align: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !888, file: !372, line: 600, baseType: !456, size: 64, align: 64, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !888, file: !372, line: 601, baseType: !527, size: 64, align: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !888, file: !372, line: 602, baseType: !382, size: 32, align: 32, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !888, file: !372, line: 602, baseType: !382, size: 32, align: 32, offset: 544)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !888, file: !372, line: 603, baseType: !382, size: 32, align: 32, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !888, file: !372, line: 603, baseType: !382, size: 32, align: 32, offset: 608)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !888, file: !372, line: 604, baseType: !370, size: 32, align: 32, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "is_hint", scope: !888, file: !372, line: 605, baseType: !392, size: 8, align: 8, offset: 672)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !888, file: !372, line: 606, baseType: !382, size: 32, align: 32, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "xcrossing", scope: !836, file: !372, line: 979, baseType: !906, size: 832, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCrossingEvent", file: !372, line: 630, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 610, size: 832, align: 64, elements: !908)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !907, file: !372, line: 611, baseType: !382, size: 32, align: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !907, file: !372, line: 612, baseType: !363, size: 64, align: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !907, file: !372, line: 613, baseType: !382, size: 32, align: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !907, file: !372, line: 614, baseType: !548, size: 64, align: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !907, file: !372, line: 615, baseType: !456, size: 64, align: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !907, file: !372, line: 616, baseType: !456, size: 64, align: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "subwindow", scope: !907, file: !372, line: 617, baseType: !456, size: 64, align: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !907, file: !372, line: 618, baseType: !527, size: 64, align: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !907, file: !372, line: 619, baseType: !382, size: 32, align: 32, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !907, file: !372, line: 619, baseType: !382, size: 32, align: 32, offset: 544)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "x_root", scope: !907, file: !372, line: 620, baseType: !382, size: 32, align: 32, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "y_root", scope: !907, file: !372, line: 620, baseType: !382, size: 32, align: 32, offset: 608)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !907, file: !372, line: 621, baseType: !382, size: 32, align: 32, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !907, file: !372, line: 622, baseType: !382, size: 32, align: 32, offset: 672)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "same_screen", scope: !907, file: !372, line: 627, baseType: !382, size: 32, align: 32, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "focus", scope: !907, file: !372, line: 628, baseType: !382, size: 32, align: 32, offset: 736)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !907, file: !372, line: 629, baseType: !370, size: 32, align: 32, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "xfocus", scope: !836, file: !372, line: 980, baseType: !927, size: 384, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "XFocusChangeEvent", file: !372, line: 648, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 634, size: 384, align: 64, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !928, file: !372, line: 635, baseType: !382, size: 32, align: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !928, file: !372, line: 636, baseType: !363, size: 64, align: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !928, file: !372, line: 637, baseType: !382, size: 32, align: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !928, file: !372, line: 638, baseType: !548, size: 64, align: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !928, file: !372, line: 639, baseType: !456, size: 64, align: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !928, file: !372, line: 640, baseType: !382, size: 32, align: 32, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !928, file: !372, line: 642, baseType: !382, size: 32, align: 32, offset: 352)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "xexpose", scope: !836, file: !372, line: 981, baseType: !938, size: 512, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "XExposeEvent", file: !372, line: 671, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 662, size: 512, align: 64, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !939, file: !372, line: 663, baseType: !382, size: 32, align: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !939, file: !372, line: 664, baseType: !363, size: 64, align: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !939, file: !372, line: 665, baseType: !382, size: 32, align: 32, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !939, file: !372, line: 666, baseType: !548, size: 64, align: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !939, file: !372, line: 667, baseType: !456, size: 64, align: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !939, file: !372, line: 668, baseType: !382, size: 32, align: 32, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !939, file: !372, line: 668, baseType: !382, size: 32, align: 32, offset: 352)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !939, file: !372, line: 669, baseType: !382, size: 32, align: 32, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !939, file: !372, line: 669, baseType: !382, size: 32, align: 32, offset: 416)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !939, file: !372, line: 670, baseType: !382, size: 32, align: 32, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "xgraphicsexpose", scope: !836, file: !372, line: 982, baseType: !952, size: 576, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGraphicsExposeEvent", file: !372, line: 684, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 673, size: 576, align: 64, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !961, !962, !963, !964, !965, !966, !967}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !953, file: !372, line: 674, baseType: !382, size: 32, align: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !953, file: !372, line: 675, baseType: !363, size: 64, align: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !953, file: !372, line: 676, baseType: !382, size: 32, align: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !953, file: !372, line: 677, baseType: !548, size: 64, align: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "drawable", scope: !953, file: !372, line: 678, baseType: !960, size: 64, align: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drawable", file: !362, line: 97, baseType: !402)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !953, file: !372, line: 679, baseType: !382, size: 32, align: 32, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !953, file: !372, line: 679, baseType: !382, size: 32, align: 32, offset: 352)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !953, file: !372, line: 680, baseType: !382, size: 32, align: 32, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !953, file: !372, line: 680, baseType: !382, size: 32, align: 32, offset: 416)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !953, file: !372, line: 681, baseType: !382, size: 32, align: 32, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "major_code", scope: !953, file: !372, line: 682, baseType: !382, size: 32, align: 32, offset: 480)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !953, file: !372, line: 683, baseType: !382, size: 32, align: 32, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "xnoexpose", scope: !836, file: !372, line: 983, baseType: !969, size: 384, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "XNoExposeEvent", file: !372, line: 694, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 686, size: 384, align: 64, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !970, file: !372, line: 687, baseType: !382, size: 32, align: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !970, file: !372, line: 688, baseType: !363, size: 64, align: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !970, file: !372, line: 689, baseType: !382, size: 32, align: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !970, file: !372, line: 690, baseType: !548, size: 64, align: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "drawable", scope: !970, file: !372, line: 691, baseType: !960, size: 64, align: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "major_code", scope: !970, file: !372, line: 692, baseType: !382, size: 32, align: 32, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !970, file: !372, line: 693, baseType: !382, size: 32, align: 32, offset: 352)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "xvisibility", scope: !836, file: !372, line: 984, baseType: !980, size: 384, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "XVisibilityEvent", file: !372, line: 703, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 696, size: 384, align: 64, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !981, file: !372, line: 697, baseType: !382, size: 32, align: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !981, file: !372, line: 698, baseType: !363, size: 64, align: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !981, file: !372, line: 699, baseType: !382, size: 32, align: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !981, file: !372, line: 700, baseType: !548, size: 64, align: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !981, file: !372, line: 701, baseType: !456, size: 64, align: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !981, file: !372, line: 702, baseType: !382, size: 32, align: 32, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "xcreatewindow", scope: !836, file: !372, line: 985, baseType: !990, size: 576, align: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCreateWindowEvent", file: !372, line: 716, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 705, size: 576, align: 64, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !991, file: !372, line: 706, baseType: !382, size: 32, align: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !991, file: !372, line: 707, baseType: !363, size: 64, align: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !991, file: !372, line: 708, baseType: !382, size: 32, align: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !991, file: !372, line: 709, baseType: !548, size: 64, align: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !991, file: !372, line: 710, baseType: !456, size: 64, align: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !991, file: !372, line: 711, baseType: !456, size: 64, align: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !991, file: !372, line: 712, baseType: !382, size: 32, align: 32, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !991, file: !372, line: 712, baseType: !382, size: 32, align: 32, offset: 416)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !991, file: !372, line: 713, baseType: !382, size: 32, align: 32, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !991, file: !372, line: 713, baseType: !382, size: 32, align: 32, offset: 480)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !991, file: !372, line: 714, baseType: !382, size: 32, align: 32, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !991, file: !372, line: 715, baseType: !382, size: 32, align: 32, offset: 544)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "xdestroywindow", scope: !836, file: !372, line: 986, baseType: !1006, size: 384, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDestroyWindowEvent", file: !372, line: 725, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 718, size: 384, align: 64, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1007, file: !372, line: 719, baseType: !382, size: 32, align: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1007, file: !372, line: 720, baseType: !363, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1007, file: !372, line: 721, baseType: !382, size: 32, align: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1007, file: !372, line: 722, baseType: !548, size: 64, align: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1007, file: !372, line: 723, baseType: !456, size: 64, align: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1007, file: !372, line: 724, baseType: !456, size: 64, align: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "xunmap", scope: !836, file: !372, line: 987, baseType: !1016, size: 448, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "XUnmapEvent", file: !372, line: 735, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 727, size: 448, align: 64, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1017, file: !372, line: 728, baseType: !382, size: 32, align: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1017, file: !372, line: 729, baseType: !363, size: 64, align: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1017, file: !372, line: 730, baseType: !382, size: 32, align: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1017, file: !372, line: 731, baseType: !548, size: 64, align: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1017, file: !372, line: 732, baseType: !456, size: 64, align: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1017, file: !372, line: 733, baseType: !456, size: 64, align: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "from_configure", scope: !1017, file: !372, line: 734, baseType: !382, size: 32, align: 32, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "xmap", scope: !836, file: !372, line: 988, baseType: !1027, size: 448, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMapEvent", file: !372, line: 745, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 737, size: 448, align: 64, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1028, file: !372, line: 738, baseType: !382, size: 32, align: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1028, file: !372, line: 739, baseType: !363, size: 64, align: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1028, file: !372, line: 740, baseType: !382, size: 32, align: 32, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1028, file: !372, line: 741, baseType: !548, size: 64, align: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1028, file: !372, line: 742, baseType: !456, size: 64, align: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1028, file: !372, line: 743, baseType: !456, size: 64, align: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !1028, file: !372, line: 744, baseType: !382, size: 32, align: 32, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "xmaprequest", scope: !836, file: !372, line: 989, baseType: !1038, size: 384, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMapRequestEvent", file: !372, line: 754, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 747, size: 384, align: 64, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1039, file: !372, line: 748, baseType: !382, size: 32, align: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1039, file: !372, line: 749, baseType: !363, size: 64, align: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1039, file: !372, line: 750, baseType: !382, size: 32, align: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1039, file: !372, line: 751, baseType: !548, size: 64, align: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1039, file: !372, line: 752, baseType: !456, size: 64, align: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1039, file: !372, line: 753, baseType: !456, size: 64, align: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xreparent", scope: !836, file: !372, line: 990, baseType: !1048, size: 576, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "XReparentEvent", file: !372, line: 766, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 756, size: 576, align: 64, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1049, file: !372, line: 757, baseType: !382, size: 32, align: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1049, file: !372, line: 758, baseType: !363, size: 64, align: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1049, file: !372, line: 759, baseType: !382, size: 32, align: 32, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1049, file: !372, line: 760, baseType: !548, size: 64, align: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1049, file: !372, line: 761, baseType: !456, size: 64, align: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1049, file: !372, line: 762, baseType: !456, size: 64, align: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1049, file: !372, line: 763, baseType: !456, size: 64, align: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1049, file: !372, line: 764, baseType: !382, size: 32, align: 32, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1049, file: !372, line: 764, baseType: !382, size: 32, align: 32, offset: 480)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !1049, file: !372, line: 765, baseType: !382, size: 32, align: 32, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "xconfigure", scope: !836, file: !372, line: 991, baseType: !1062, size: 704, align: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "XConfigureEvent", file: !372, line: 780, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 768, size: 704, align: 64, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1063, file: !372, line: 769, baseType: !382, size: 32, align: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1063, file: !372, line: 770, baseType: !363, size: 64, align: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1063, file: !372, line: 771, baseType: !382, size: 32, align: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1063, file: !372, line: 772, baseType: !548, size: 64, align: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1063, file: !372, line: 773, baseType: !456, size: 64, align: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1063, file: !372, line: 774, baseType: !456, size: 64, align: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1063, file: !372, line: 775, baseType: !382, size: 32, align: 32, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1063, file: !372, line: 775, baseType: !382, size: 32, align: 32, offset: 416)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1063, file: !372, line: 776, baseType: !382, size: 32, align: 32, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1063, file: !372, line: 776, baseType: !382, size: 32, align: 32, offset: 480)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !1063, file: !372, line: 777, baseType: !382, size: 32, align: 32, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1063, file: !372, line: 778, baseType: !456, size: 64, align: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "override_redirect", scope: !1063, file: !372, line: 779, baseType: !382, size: 32, align: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "xgravity", scope: !836, file: !372, line: 992, baseType: !1079, size: 448, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGravityEvent", file: !372, line: 790, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 782, size: 448, align: 64, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1080, file: !372, line: 783, baseType: !382, size: 32, align: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1080, file: !372, line: 784, baseType: !363, size: 64, align: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1080, file: !372, line: 785, baseType: !382, size: 32, align: 32, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1080, file: !372, line: 786, baseType: !548, size: 64, align: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1080, file: !372, line: 787, baseType: !456, size: 64, align: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1080, file: !372, line: 788, baseType: !456, size: 64, align: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1080, file: !372, line: 789, baseType: !382, size: 32, align: 32, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1080, file: !372, line: 789, baseType: !382, size: 32, align: 32, offset: 416)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "xresizerequest", scope: !836, file: !372, line: 993, baseType: !1091, size: 384, align: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "XResizeRequestEvent", file: !372, line: 799, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 792, size: 384, align: 64, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1092, file: !372, line: 793, baseType: !382, size: 32, align: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1092, file: !372, line: 794, baseType: !363, size: 64, align: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1092, file: !372, line: 795, baseType: !382, size: 32, align: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1092, file: !372, line: 796, baseType: !548, size: 64, align: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1092, file: !372, line: 797, baseType: !456, size: 64, align: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1092, file: !372, line: 798, baseType: !382, size: 32, align: 32, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1092, file: !372, line: 798, baseType: !382, size: 32, align: 32, offset: 352)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "xconfigurerequest", scope: !836, file: !372, line: 994, baseType: !1102, size: 768, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "XConfigureRequestEvent", file: !372, line: 814, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 801, size: 768, align: 64, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !372, line: 802, baseType: !382, size: 32, align: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1103, file: !372, line: 803, baseType: !363, size: 64, align: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1103, file: !372, line: 804, baseType: !382, size: 32, align: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1103, file: !372, line: 805, baseType: !548, size: 64, align: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1103, file: !372, line: 806, baseType: !456, size: 64, align: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1103, file: !372, line: 807, baseType: !456, size: 64, align: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1103, file: !372, line: 808, baseType: !382, size: 32, align: 32, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1103, file: !372, line: 808, baseType: !382, size: 32, align: 32, offset: 416)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1103, file: !372, line: 809, baseType: !382, size: 32, align: 32, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1103, file: !372, line: 809, baseType: !382, size: 32, align: 32, offset: 480)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !1103, file: !372, line: 810, baseType: !382, size: 32, align: 32, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1103, file: !372, line: 811, baseType: !456, size: 64, align: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !1103, file: !372, line: 812, baseType: !382, size: 32, align: 32, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "value_mask", scope: !1103, file: !372, line: 813, baseType: !363, size: 64, align: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "xcirculate", scope: !836, file: !372, line: 995, baseType: !1120, size: 448, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCirculateEvent", file: !372, line: 824, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 816, size: 448, align: 64, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1121, file: !372, line: 817, baseType: !382, size: 32, align: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1121, file: !372, line: 818, baseType: !363, size: 64, align: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1121, file: !372, line: 819, baseType: !382, size: 32, align: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1121, file: !372, line: 820, baseType: !548, size: 64, align: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1121, file: !372, line: 821, baseType: !456, size: 64, align: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1121, file: !372, line: 822, baseType: !456, size: 64, align: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "place", scope: !1121, file: !372, line: 823, baseType: !382, size: 32, align: 32, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "xcirculaterequest", scope: !836, file: !372, line: 996, baseType: !1131, size: 448, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "XCirculateRequestEvent", file: !372, line: 834, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 826, size: 448, align: 64, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1132, file: !372, line: 827, baseType: !382, size: 32, align: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1132, file: !372, line: 828, baseType: !363, size: 64, align: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1132, file: !372, line: 829, baseType: !382, size: 32, align: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1132, file: !372, line: 830, baseType: !548, size: 64, align: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1132, file: !372, line: 831, baseType: !456, size: 64, align: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1132, file: !372, line: 832, baseType: !456, size: 64, align: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "place", scope: !1132, file: !372, line: 833, baseType: !382, size: 32, align: 32, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "xproperty", scope: !836, file: !372, line: 997, baseType: !1142, size: 512, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPropertyEvent", file: !372, line: 845, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 836, size: 512, align: 64, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !372, line: 837, baseType: !382, size: 32, align: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1143, file: !372, line: 838, baseType: !363, size: 64, align: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1143, file: !372, line: 839, baseType: !382, size: 32, align: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1143, file: !372, line: 840, baseType: !548, size: 64, align: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1143, file: !372, line: 841, baseType: !456, size: 64, align: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !1143, file: !372, line: 842, baseType: !361, size: 64, align: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1143, file: !372, line: 843, baseType: !527, size: 64, align: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1143, file: !372, line: 844, baseType: !382, size: 32, align: 32, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "xselectionclear", scope: !836, file: !372, line: 998, baseType: !1154, size: 448, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSelectionClearEvent", file: !372, line: 855, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 847, size: 448, align: 64, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1155, file: !372, line: 848, baseType: !382, size: 32, align: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1155, file: !372, line: 849, baseType: !363, size: 64, align: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1155, file: !372, line: 850, baseType: !382, size: 32, align: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1155, file: !372, line: 851, baseType: !548, size: 64, align: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1155, file: !372, line: 852, baseType: !456, size: 64, align: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "selection", scope: !1155, file: !372, line: 853, baseType: !361, size: 64, align: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1155, file: !372, line: 854, baseType: !527, size: 64, align: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "xselectionrequest", scope: !836, file: !372, line: 999, baseType: !541, size: 640, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "xselection", scope: !836, file: !372, line: 1000, baseType: !580, size: 576, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "xcolormap", scope: !836, file: !372, line: 1001, baseType: !1167, size: 448, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "XColormapEvent", file: !372, line: 895, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 882, size: 448, align: 64, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1168, file: !372, line: 883, baseType: !382, size: 32, align: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1168, file: !372, line: 884, baseType: !363, size: 64, align: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1168, file: !372, line: 885, baseType: !382, size: 32, align: 32, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1168, file: !372, line: 886, baseType: !548, size: 64, align: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1168, file: !372, line: 887, baseType: !456, size: 64, align: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !1168, file: !372, line: 888, baseType: !490, size: 64, align: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "new", scope: !1168, file: !372, line: 892, baseType: !382, size: 32, align: 32, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1168, file: !372, line: 894, baseType: !382, size: 32, align: 32, offset: 416)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "xclient", scope: !836, file: !372, line: 1002, baseType: !1179, size: 768, align: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "XClientMessageEvent", file: !372, line: 910, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 897, size: 768, align: 64, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1180, file: !372, line: 898, baseType: !382, size: 32, align: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1180, file: !372, line: 899, baseType: !363, size: 64, align: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1180, file: !372, line: 900, baseType: !382, size: 32, align: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1180, file: !372, line: 901, baseType: !548, size: 64, align: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1180, file: !372, line: 902, baseType: !456, size: 64, align: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !1180, file: !372, line: 903, baseType: !361, size: 64, align: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1180, file: !372, line: 904, baseType: !382, size: 32, align: 32, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1180, file: !372, line: 909, baseType: !1190, size: 320, align: 64, offset: 448)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !372, line: 905, size: 320, align: 64, elements: !1191)
!1191 = !{!1192, !1196, !1201}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1190, file: !372, line: 906, baseType: !1193, size: 160, align: 8)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 160, align: 8, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 20)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1190, file: !372, line: 907, baseType: !1197, size: 160, align: 16)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 160, align: 16, elements: !1199)
!1198 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1199 = !{!1200}
!1200 = !DISubrange(count: 10)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1190, file: !372, line: 908, baseType: !1202, size: 320, align: 64)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 320, align: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 5)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "xmapping", scope: !836, file: !372, line: 1003, baseType: !1206, size: 448, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMappingEvent", file: !372, line: 922, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 912, size: 448, align: 64, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1207, file: !372, line: 913, baseType: !382, size: 32, align: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1207, file: !372, line: 914, baseType: !363, size: 64, align: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1207, file: !372, line: 915, baseType: !382, size: 32, align: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1207, file: !372, line: 916, baseType: !548, size: 64, align: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1207, file: !372, line: 917, baseType: !456, size: 64, align: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1207, file: !372, line: 918, baseType: !382, size: 32, align: 32, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "first_keycode", scope: !1207, file: !372, line: 920, baseType: !382, size: 32, align: 32, offset: 352)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1207, file: !372, line: 921, baseType: !382, size: 32, align: 32, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xerror", scope: !836, file: !372, line: 1004, baseType: !1218, size: 320, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "XErrorEvent", file: !372, line: 932, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 924, size: 320, align: 64, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1219, file: !372, line: 925, baseType: !382, size: 32, align: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1219, file: !372, line: 926, baseType: !548, size: 64, align: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "resourceid", scope: !1219, file: !372, line: 927, baseType: !402, size: 64, align: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1219, file: !372, line: 928, baseType: !363, size: 64, align: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1219, file: !372, line: 929, baseType: !367, size: 8, align: 8, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "request_code", scope: !1219, file: !372, line: 930, baseType: !367, size: 8, align: 8, offset: 264)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "minor_code", scope: !1219, file: !372, line: 931, baseType: !367, size: 8, align: 8, offset: 272)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "xkeymap", scope: !836, file: !372, line: 1005, baseType: !1229, size: 576, align: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "XKeymapEvent", file: !372, line: 660, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 653, size: 576, align: 64, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1230, file: !372, line: 654, baseType: !382, size: 32, align: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1230, file: !372, line: 655, baseType: !363, size: 64, align: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1230, file: !372, line: 656, baseType: !382, size: 32, align: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1230, file: !372, line: 657, baseType: !548, size: 64, align: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1230, file: !372, line: 658, baseType: !456, size: 64, align: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "key_vector", scope: !1230, file: !372, line: 659, baseType: !1238, size: 256, align: 8, offset: 320)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 256, align: 8, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xgeneric", scope: !836, file: !372, line: 1006, baseType: !1242, size: 320, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGenericEvent", file: !372, line: 956, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 948, size: 320, align: 64, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1243, file: !372, line: 950, baseType: !382, size: 32, align: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1243, file: !372, line: 951, baseType: !363, size: 64, align: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1243, file: !372, line: 952, baseType: !382, size: 32, align: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1243, file: !372, line: 953, baseType: !548, size: 64, align: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !1243, file: !372, line: 954, baseType: !382, size: 32, align: 32, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "evtype", scope: !1243, file: !372, line: 955, baseType: !382, size: 32, align: 32, offset: 288)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "xcookie", scope: !836, file: !372, line: 1007, baseType: !1252, size: 448, align: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "XGenericEventCookie", file: !372, line: 967, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 958, size: 448, align: 64, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1253, file: !372, line: 959, baseType: !382, size: 32, align: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1253, file: !372, line: 960, baseType: !363, size: 64, align: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "send_event", scope: !1253, file: !372, line: 961, baseType: !382, size: 32, align: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !1253, file: !372, line: 962, baseType: !548, size: 64, align: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !1253, file: !372, line: 963, baseType: !382, size: 32, align: 32, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "evtype", scope: !1253, file: !372, line: 964, baseType: !382, size: 32, align: 32, offset: 288)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1253, file: !372, line: 965, baseType: !370, size: 32, align: 32, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1253, file: !372, line: 966, baseType: !509, size: 64, align: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !836, file: !372, line: 1008, baseType: !1264, size: 1536, align: 64)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 1536, align: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 24)
!1267 = !DILocation(line: 221, column: 9, scope: !821)
!1268 = !DILocation(line: 225, column: 20, scope: !821)
!1269 = !DILocation(line: 225, column: 25, scope: !821)
!1270 = !DILocation(line: 225, column: 9, scope: !821)
!1271 = !DILocation(line: 225, column: 49, scope: !821)
!1272 = !DILocation(line: 225, column: 60, scope: !821)
!1273 = !DILocation(line: 225, column: 65, scope: !821)
!1274 = !DILocation(line: 225, column: 36, scope: !821)
!1275 = !DILocation(line: 226, column: 22, scope: !821)
!1276 = !DILocation(line: 226, column: 33, scope: !821)
!1277 = !DILocation(line: 226, column: 38, scope: !821)
!1278 = !DILocation(line: 226, column: 9, scope: !821)
!1279 = !DILocation(line: 226, column: 60, scope: !821)
!1280 = !DILocation(line: 223, column: 2, scope: !821)
!1281 = !DILocation(line: 228, column: 18, scope: !821)
!1282 = !DILocation(line: 228, column: 29, scope: !821)
!1283 = !DILocation(line: 228, column: 34, scope: !821)
!1284 = !DILocation(line: 228, column: 45, scope: !821)
!1285 = !DILocation(line: 228, column: 50, scope: !821)
!1286 = !DILocation(line: 229, column: 4, scope: !821)
!1287 = !DILocation(line: 229, column: 10, scope: !821)
!1288 = !DILocation(line: 229, column: 34, scope: !821)
!1289 = !DILocation(line: 229, column: 40, scope: !821)
!1290 = !DILocation(line: 228, column: 2, scope: !821)
!1291 = !DILocation(line: 231, column: 6, scope: !821)
!1292 = !DILocation(line: 231, column: 17, scope: !821)
!1293 = !DILocation(line: 231, column: 22, scope: !821)
!1294 = !DILocation(line: 232, column: 6, scope: !821)
!1295 = !DILocation(line: 232, column: 17, scope: !821)
!1296 = !DILocation(line: 232, column: 24, scope: !821)
!1297 = !DILocation(line: 233, column: 6, scope: !821)
!1298 = !DILocation(line: 233, column: 17, scope: !821)
!1299 = !DILocation(line: 233, column: 28, scope: !821)
!1300 = !DILocation(line: 234, column: 29, scope: !821)
!1301 = !DILocation(line: 234, column: 34, scope: !821)
!1302 = !DILocation(line: 234, column: 6, scope: !821)
!1303 = !DILocation(line: 234, column: 17, scope: !821)
!1304 = !DILocation(line: 234, column: 27, scope: !821)
!1305 = !DILocation(line: 235, column: 29, scope: !821)
!1306 = !DILocation(line: 235, column: 34, scope: !821)
!1307 = !DILocation(line: 235, column: 6, scope: !821)
!1308 = !DILocation(line: 235, column: 17, scope: !821)
!1309 = !DILocation(line: 235, column: 27, scope: !821)
!1310 = !DILocation(line: 236, column: 26, scope: !821)
!1311 = !DILocation(line: 236, column: 31, scope: !821)
!1312 = !DILocation(line: 236, column: 6, scope: !821)
!1313 = !DILocation(line: 236, column: 17, scope: !821)
!1314 = !DILocation(line: 236, column: 24, scope: !821)
!1315 = !DILocation(line: 237, column: 28, scope: !821)
!1316 = !DILocation(line: 237, column: 33, scope: !821)
!1317 = !DILocation(line: 237, column: 6, scope: !821)
!1318 = !DILocation(line: 237, column: 17, scope: !821)
!1319 = !DILocation(line: 237, column: 26, scope: !821)
!1320 = !DILocation(line: 238, column: 24, scope: !821)
!1321 = !DILocation(line: 238, column: 29, scope: !821)
!1322 = !DILocation(line: 238, column: 6, scope: !821)
!1323 = !DILocation(line: 238, column: 17, scope: !821)
!1324 = !DILocation(line: 238, column: 22, scope: !821)
!1325 = !DILocation(line: 239, column: 13, scope: !821)
!1326 = !DILocation(line: 239, column: 24, scope: !821)
!1327 = !DILocation(line: 239, column: 29, scope: !821)
!1328 = !DILocation(line: 239, column: 2, scope: !821)
!1329 = !DILocation(line: 240, column: 1, scope: !821)
!1330 = distinct !DISubprogram(name: "xclip_refuse_selection", scope: !519, file: !519, line: 246, type: !668, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1331 = !DILocalVariable(name: "req", arg: 1, scope: !1330, file: !519, line: 246, type: !670)
!1332 = !DILocation(line: 246, column: 49, scope: !1330)
!1333 = !DILocalVariable(name: "xev", scope: !1330, file: !519, line: 248, type: !835)
!1334 = !DILocation(line: 248, column: 9, scope: !1330)
!1335 = !DILocation(line: 252, column: 20, scope: !1330)
!1336 = !DILocation(line: 252, column: 25, scope: !1330)
!1337 = !DILocation(line: 252, column: 9, scope: !1330)
!1338 = !DILocation(line: 252, column: 49, scope: !1330)
!1339 = !DILocation(line: 252, column: 60, scope: !1330)
!1340 = !DILocation(line: 252, column: 65, scope: !1330)
!1341 = !DILocation(line: 252, column: 36, scope: !1330)
!1342 = !DILocation(line: 253, column: 22, scope: !1330)
!1343 = !DILocation(line: 253, column: 33, scope: !1330)
!1344 = !DILocation(line: 253, column: 38, scope: !1330)
!1345 = !DILocation(line: 253, column: 9, scope: !1330)
!1346 = !DILocation(line: 250, column: 2, scope: !1330)
!1347 = !DILocation(line: 255, column: 6, scope: !1330)
!1348 = !DILocation(line: 255, column: 17, scope: !1330)
!1349 = !DILocation(line: 255, column: 22, scope: !1330)
!1350 = !DILocation(line: 256, column: 6, scope: !1330)
!1351 = !DILocation(line: 256, column: 17, scope: !1330)
!1352 = !DILocation(line: 256, column: 24, scope: !1330)
!1353 = !DILocation(line: 257, column: 6, scope: !1330)
!1354 = !DILocation(line: 257, column: 17, scope: !1330)
!1355 = !DILocation(line: 257, column: 28, scope: !1330)
!1356 = !DILocation(line: 258, column: 29, scope: !1330)
!1357 = !DILocation(line: 258, column: 34, scope: !1330)
!1358 = !DILocation(line: 258, column: 6, scope: !1330)
!1359 = !DILocation(line: 258, column: 17, scope: !1330)
!1360 = !DILocation(line: 258, column: 27, scope: !1330)
!1361 = !DILocation(line: 259, column: 29, scope: !1330)
!1362 = !DILocation(line: 259, column: 34, scope: !1330)
!1363 = !DILocation(line: 259, column: 6, scope: !1330)
!1364 = !DILocation(line: 259, column: 17, scope: !1330)
!1365 = !DILocation(line: 259, column: 27, scope: !1330)
!1366 = !DILocation(line: 260, column: 26, scope: !1330)
!1367 = !DILocation(line: 260, column: 31, scope: !1330)
!1368 = !DILocation(line: 260, column: 6, scope: !1330)
!1369 = !DILocation(line: 260, column: 17, scope: !1330)
!1370 = !DILocation(line: 260, column: 24, scope: !1330)
!1371 = !DILocation(line: 261, column: 6, scope: !1330)
!1372 = !DILocation(line: 261, column: 17, scope: !1330)
!1373 = !DILocation(line: 261, column: 26, scope: !1330)
!1374 = !DILocation(line: 262, column: 24, scope: !1330)
!1375 = !DILocation(line: 262, column: 29, scope: !1330)
!1376 = !DILocation(line: 262, column: 6, scope: !1330)
!1377 = !DILocation(line: 262, column: 17, scope: !1330)
!1378 = !DILocation(line: 262, column: 22, scope: !1330)
!1379 = !DILocation(line: 263, column: 13, scope: !1330)
!1380 = !DILocation(line: 263, column: 24, scope: !1330)
!1381 = !DILocation(line: 263, column: 29, scope: !1330)
!1382 = !DILocation(line: 263, column: 2, scope: !1330)
!1383 = !DILocation(line: 264, column: 1, scope: !1330)
!1384 = distinct !DISubprogram(name: "xclip_handle_SelectionClear", scope: !519, file: !519, line: 880, type: !1385, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null}
!1387 = !DILocation(line: 882, column: 2, scope: !1384)
!1388 = !DILocation(line: 883, column: 2, scope: !1384)
!1389 = !DILocation(line: 884, column: 2, scope: !1384)
!1390 = !DILocation(line: 885, column: 1, scope: !1384)
!1391 = distinct !DISubprogram(name: "xclip_handle_PropertyNotify", scope: !519, file: !519, line: 889, type: !1392, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64, align: 64)
!1395 = !DILocalVariable(name: "event", arg: 1, scope: !1391, file: !519, line: 889, type: !1394)
!1396 = !DILocation(line: 889, column: 46, scope: !1391)
!1397 = !DILocalVariable(name: "nitems", scope: !1391, file: !519, line: 891, type: !363)
!1398 = !DILocation(line: 891, column: 16, scope: !1391)
!1399 = !DILocalVariable(name: "offset", scope: !1391, file: !519, line: 892, type: !363)
!1400 = !DILocation(line: 892, column: 16, scope: !1391)
!1401 = !DILocalVariable(name: "bytes_left", scope: !1391, file: !519, line: 893, type: !363)
!1402 = !DILocation(line: 893, column: 16, scope: !1391)
!1403 = !DILocalVariable(name: "format", scope: !1391, file: !519, line: 894, type: !382)
!1404 = !DILocation(line: 894, column: 6, scope: !1391)
!1405 = !DILocalVariable(name: "wa", scope: !1391, file: !519, line: 895, type: !603)
!1406 = !DILocation(line: 895, column: 20, scope: !1391)
!1407 = !DILocalVariable(name: "data", scope: !1391, file: !519, line: 896, type: !364)
!1408 = !DILocation(line: 896, column: 9, scope: !1391)
!1409 = !DILocalVariable(name: "type", scope: !1391, file: !519, line: 897, type: !361)
!1410 = !DILocation(line: 897, column: 7, scope: !1391)
!1411 = !DILocation(line: 899, column: 6, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1391, file: !519, line: 899, column: 6)
!1413 = !DILocation(line: 899, column: 13, scope: !1412)
!1414 = !DILocation(line: 899, column: 19, scope: !1412)
!1415 = !DILocation(line: 899, column: 38, scope: !1412)
!1416 = !DILocation(line: 899, column: 41, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1412, file: !519, discriminator: 1)
!1418 = !DILocation(line: 899, column: 6, scope: !1417)
!1419 = !DILocation(line: 901, column: 3, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1412, file: !519, line: 900, column: 2)
!1421 = !DILocation(line: 903, column: 3, scope: !1420)
!1422 = !DILocation(line: 903, column: 10, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1420, file: !519, discriminator: 1)
!1424 = !DILocation(line: 903, column: 21, scope: !1423)
!1425 = !DILocation(line: 903, column: 3, scope: !1423)
!1426 = !DILocation(line: 908, column: 10, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !519, line: 907, column: 8)
!1428 = distinct !DILexicalBlock(scope: !1420, file: !519, line: 904, column: 3)
!1429 = !DILocation(line: 908, column: 21, scope: !1427)
!1430 = !DILocation(line: 908, column: 28, scope: !1427)
!1431 = !DILocation(line: 908, column: 60, scope: !1427)
!1432 = !DILocation(line: 907, column: 9, scope: !1427)
!1433 = !DILocation(line: 910, column: 17, scope: !1427)
!1434 = !DILocation(line: 907, column: 8, scope: !1428)
!1435 = !DILocation(line: 912, column: 11, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !519, line: 911, column: 4)
!1437 = !DILocation(line: 912, column: 5, scope: !1436)
!1438 = !DILocation(line: 913, column: 5, scope: !1436)
!1439 = !DILocation(line: 916, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !519, line: 916, column: 8)
!1441 = !DILocation(line: 916, column: 15, scope: !1440)
!1442 = !DILocation(line: 916, column: 8, scope: !1428)
!1443 = !DILocation(line: 919, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !519, line: 917, column: 4)
!1445 = !DILocation(line: 919, column: 37, scope: !1444)
!1446 = !DILocation(line: 919, column: 5, scope: !1444)
!1447 = !DILocation(line: 920, column: 18, scope: !1444)
!1448 = !DILocation(line: 920, column: 29, scope: !1444)
!1449 = !DILocation(line: 921, column: 15, scope: !1444)
!1450 = !DILocation(line: 921, column: 31, scope: !1444)
!1451 = !DILocation(line: 920, column: 5, scope: !1444)
!1452 = !DILocation(line: 922, column: 11, scope: !1444)
!1453 = !DILocation(line: 922, column: 5, scope: !1444)
!1454 = !DILocation(line: 923, column: 24, scope: !1444)
!1455 = !DILocation(line: 925, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1444, file: !519, line: 925, column: 9)
!1457 = !DILocation(line: 925, column: 23, scope: !1456)
!1458 = !DILocation(line: 925, column: 9, scope: !1444)
!1459 = !DILocation(line: 928, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !519, line: 927, column: 10)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !519, line: 926, column: 5)
!1462 = !DILocation(line: 928, column: 26, scope: !1460)
!1463 = !DILocation(line: 928, column: 41, scope: !1460)
!1464 = !DILocation(line: 927, column: 11, scope: !1460)
!1465 = !DILocation(line: 927, column: 10, scope: !1461)
!1466 = !DILocation(line: 930, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !519, line: 929, column: 6)
!1468 = !DILocation(line: 931, column: 6, scope: !1467)
!1469 = !DILocation(line: 932, column: 12, scope: !1461)
!1470 = !DILocation(line: 932, column: 6, scope: !1461)
!1471 = !DILocation(line: 933, column: 20, scope: !1461)
!1472 = !DILocation(line: 934, column: 20, scope: !1461)
!1473 = !DILocation(line: 935, column: 5, scope: !1461)
!1474 = !DILocation(line: 936, column: 4, scope: !1444)
!1475 = !DILocation(line: 940, column: 16, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1440, file: !519, line: 938, column: 4)
!1477 = !DILocation(line: 940, column: 23, scope: !1476)
!1478 = !DILocation(line: 940, column: 12, scope: !1476)
!1479 = !DILocation(line: 941, column: 30, scope: !1476)
!1480 = !DILocation(line: 941, column: 45, scope: !1476)
!1481 = !DILocation(line: 941, column: 61, scope: !1476)
!1482 = !DILocation(line: 941, column: 59, scope: !1476)
!1483 = !DILocation(line: 941, column: 21, scope: !1476)
!1484 = !DILocation(line: 941, column: 19, scope: !1476)
!1485 = !DILocation(line: 942, column: 12, scope: !1476)
!1486 = !DILocation(line: 942, column: 28, scope: !1476)
!1487 = !DILocation(line: 942, column: 26, scope: !1476)
!1488 = !DILocation(line: 942, column: 43, scope: !1476)
!1489 = !DILocation(line: 942, column: 49, scope: !1476)
!1490 = !DILocation(line: 942, column: 5, scope: !1476)
!1491 = !DILocation(line: 943, column: 22, scope: !1476)
!1492 = !DILocation(line: 943, column: 19, scope: !1476)
!1493 = !DILocation(line: 945, column: 11, scope: !1476)
!1494 = !DILocation(line: 945, column: 5, scope: !1476)
!1495 = !DILocation(line: 903, column: 3, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1420, file: !519, discriminator: 2)
!1497 = distinct !{!1497, !1421}
!1498 = !DILocation(line: 948, column: 19, scope: !1420)
!1499 = !DILocation(line: 948, column: 30, scope: !1420)
!1500 = !DILocation(line: 948, column: 37, scope: !1420)
!1501 = !DILocation(line: 948, column: 3, scope: !1420)
!1502 = !DILocation(line: 949, column: 3, scope: !1420)
!1503 = !DILocation(line: 952, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1391, file: !519, line: 952, column: 6)
!1505 = !DILocation(line: 952, column: 14, scope: !1504)
!1506 = !DILocation(line: 952, column: 22, scope: !1504)
!1507 = !DILocation(line: 952, column: 19, scope: !1504)
!1508 = !DILocation(line: 952, column: 54, scope: !1504)
!1509 = !DILocation(line: 953, column: 7, scope: !1504)
!1510 = !DILocation(line: 953, column: 14, scope: !1504)
!1511 = !DILocation(line: 953, column: 23, scope: !1504)
!1512 = !DILocation(line: 953, column: 26, scope: !1504)
!1513 = !DILocation(line: 953, column: 45, scope: !1504)
!1514 = !DILocation(line: 953, column: 21, scope: !1504)
!1515 = !DILocation(line: 952, column: 6, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1391, file: !519, discriminator: 1)
!1517 = !DILocation(line: 954, column: 3, scope: !1504)
!1518 = !DILocation(line: 955, column: 1, scope: !1391)
!1519 = distinct !DISubprogram(name: "xclip_send_data_with_convert", scope: !519, file: !519, line: 292, type: !1520, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!533, !364, !510, !361}
!1522 = !DILocalVariable(name: "source", arg: 1, scope: !1519, file: !519, line: 292, type: !364)
!1523 = !DILocation(line: 292, column: 38, scope: !1519)
!1524 = !DILocalVariable(name: "source_size", arg: 2, scope: !1519, file: !519, line: 292, type: !510)
!1525 = !DILocation(line: 292, column: 53, scope: !1519)
!1526 = !DILocalVariable(name: "target", arg: 3, scope: !1519, file: !519, line: 292, type: !361)
!1527 = !DILocation(line: 292, column: 71, scope: !1519)
!1528 = !DILocation(line: 295, column: 22, scope: !1519)
!1529 = !DILocation(line: 295, column: 33, scope: !1519)
!1530 = !DILocation(line: 295, column: 9, scope: !1519)
!1531 = !DILocation(line: 295, column: 53, scope: !1519)
!1532 = !DILocation(line: 295, column: 42, scope: !1519)
!1533 = !DILocation(line: 294, column: 2, scope: !1519)
!1534 = !DILocation(line: 298, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1519, file: !519, line: 298, column: 6)
!1536 = !DILocation(line: 298, column: 16, scope: !1535)
!1537 = !DILocation(line: 298, column: 13, scope: !1535)
!1538 = !DILocation(line: 298, column: 35, scope: !1535)
!1539 = !DILocation(line: 299, column: 6, scope: !1535)
!1540 = !DILocation(line: 299, column: 16, scope: !1535)
!1541 = !DILocation(line: 299, column: 13, scope: !1535)
!1542 = !DILocation(line: 299, column: 36, scope: !1535)
!1543 = !DILocation(line: 299, column: 39, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1535, file: !519, discriminator: 1)
!1545 = !DILocation(line: 299, column: 49, scope: !1544)
!1546 = !DILocation(line: 299, column: 46, scope: !1544)
!1547 = !DILocation(line: 298, column: 6, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1519, file: !519, discriminator: 1)
!1549 = !DILocalVariable(name: "unicode_buffer_size", scope: !1550, file: !519, line: 301, type: !510)
!1550 = distinct !DILexicalBlock(scope: !1535, file: !519, line: 300, column: 2)
!1551 = !DILocation(line: 301, column: 10, scope: !1550)
!1552 = !DILocalVariable(name: "unicode_buffer", scope: !1550, file: !519, line: 302, type: !391)
!1553 = !DILocation(line: 302, column: 9, scope: !1550)
!1554 = !DILocalVariable(name: "cd", scope: !1550, file: !519, line: 303, type: !507)
!1555 = !DILocation(line: 303, column: 10, scope: !1550)
!1556 = !DILocalVariable(name: "unicode_buffer_size_remaining", scope: !1550, file: !519, line: 304, type: !510)
!1557 = !DILocation(line: 304, column: 10, scope: !1550)
!1558 = !DILocalVariable(name: "unicode_buffer_remaining", scope: !1550, file: !519, line: 305, type: !391)
!1559 = !DILocation(line: 305, column: 9, scope: !1550)
!1560 = !DILocalVariable(name: "data_remaining", scope: !1550, file: !519, line: 306, type: !391)
!1561 = !DILocation(line: 306, column: 9, scope: !1550)
!1562 = !DILocalVariable(name: "data_size_remaining", scope: !1550, file: !519, line: 307, type: !510)
!1563 = !DILocation(line: 307, column: 10, scope: !1550)
!1564 = !DILocalVariable(name: "translated_data_size", scope: !1550, file: !519, line: 308, type: !369)
!1565 = !DILocation(line: 308, column: 10, scope: !1550)
!1566 = !DILocalVariable(name: "translated_data", scope: !1550, file: !519, line: 309, type: !364)
!1567 = !DILocation(line: 309, column: 10, scope: !1550)
!1568 = !DILocation(line: 311, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1550, file: !519, line: 311, column: 7)
!1570 = !DILocation(line: 311, column: 36, scope: !1569)
!1571 = !DILocation(line: 311, column: 7, scope: !1550)
!1572 = !DILocation(line: 312, column: 4, scope: !1569)
!1573 = !DILocation(line: 319, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1550, file: !519, line: 319, column: 7)
!1575 = !DILocation(line: 319, column: 17, scope: !1574)
!1576 = !DILocation(line: 319, column: 14, scope: !1574)
!1577 = !DILocation(line: 319, column: 7, scope: !1550)
!1578 = !DILocalVariable(name: "locale_charset", scope: !1579, file: !519, line: 321, type: !391)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !519, line: 320, column: 3)
!1580 = !DILocation(line: 321, column: 10, scope: !1579)
!1581 = !DILocation(line: 321, column: 27, scope: !1579)
!1582 = !DILocation(line: 322, column: 31, scope: !1579)
!1583 = !DILocation(line: 322, column: 8, scope: !1579)
!1584 = !DILocation(line: 322, column: 7, scope: !1579)
!1585 = !DILocation(line: 323, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1579, file: !519, line: 323, column: 8)
!1587 = !DILocation(line: 323, column: 11, scope: !1586)
!1588 = !DILocation(line: 323, column: 8, scope: !1579)
!1589 = !DILocation(line: 327, column: 12, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !519, line: 324, column: 4)
!1591 = !DILocation(line: 325, column: 5, scope: !1590)
!1592 = !DILocation(line: 328, column: 5, scope: !1590)
!1593 = !DILocation(line: 330, column: 26, scope: !1579)
!1594 = !DILocation(line: 330, column: 38, scope: !1579)
!1595 = !DILocation(line: 330, column: 24, scope: !1579)
!1596 = !DILocation(line: 331, column: 3, scope: !1579)
!1597 = !DILocation(line: 332, column: 12, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1574, file: !519, line: 332, column: 12)
!1599 = !DILocation(line: 332, column: 22, scope: !1598)
!1600 = !DILocation(line: 332, column: 19, scope: !1598)
!1601 = !DILocation(line: 332, column: 12, scope: !1574)
!1602 = !DILocation(line: 334, column: 8, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !519, line: 333, column: 3)
!1604 = !DILocation(line: 334, column: 7, scope: !1603)
!1605 = !DILocation(line: 335, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !519, line: 335, column: 8)
!1607 = !DILocation(line: 335, column: 11, scope: !1606)
!1608 = !DILocation(line: 335, column: 8, scope: !1603)
!1609 = !DILocation(line: 337, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !519, line: 336, column: 4)
!1611 = !DILocation(line: 339, column: 26, scope: !1603)
!1612 = !DILocation(line: 339, column: 24, scope: !1603)
!1613 = !DILocation(line: 340, column: 3, scope: !1603)
!1614 = !DILocation(line: 341, column: 12, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1598, file: !519, line: 341, column: 12)
!1616 = !DILocation(line: 341, column: 22, scope: !1615)
!1617 = !DILocation(line: 341, column: 19, scope: !1615)
!1618 = !DILocation(line: 341, column: 12, scope: !1598)
!1619 = !DILocation(line: 343, column: 8, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !519, line: 342, column: 3)
!1621 = !DILocation(line: 343, column: 7, scope: !1620)
!1622 = !DILocation(line: 344, column: 8, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !519, line: 344, column: 8)
!1624 = !DILocation(line: 344, column: 11, scope: !1623)
!1625 = !DILocation(line: 344, column: 8, scope: !1620)
!1626 = !DILocation(line: 346, column: 5, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !519, line: 345, column: 4)
!1628 = !DILocation(line: 351, column: 26, scope: !1620)
!1629 = !DILocation(line: 351, column: 38, scope: !1620)
!1630 = !DILocation(line: 351, column: 24, scope: !1620)
!1631 = !DILocation(line: 352, column: 3, scope: !1620)
!1632 = !DILocation(line: 355, column: 4, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1615, file: !519, line: 354, column: 3)
!1634 = !DILocation(line: 358, column: 28, scope: !1550)
!1635 = !DILocation(line: 358, column: 20, scope: !1550)
!1636 = !DILocation(line: 358, column: 18, scope: !1550)
!1637 = !DILocation(line: 359, column: 35, scope: !1550)
!1638 = !DILocation(line: 359, column: 33, scope: !1550)
!1639 = !DILocation(line: 360, column: 30, scope: !1550)
!1640 = !DILocation(line: 360, column: 28, scope: !1550)
!1641 = !DILocation(line: 361, column: 29, scope: !1550)
!1642 = !DILocation(line: 361, column: 18, scope: !1550)
!1643 = !DILocation(line: 362, column: 25, scope: !1550)
!1644 = !DILocation(line: 362, column: 23, scope: !1550)
!1645 = !DILocation(line: 363, column: 8, scope: !1550)
!1646 = !DILocation(line: 363, column: 2, scope: !1550)
!1647 = !DILocation(line: 365, column: 14, scope: !1550)
!1648 = !DILocation(line: 365, column: 2, scope: !1550)
!1649 = !DILocation(line: 368, column: 26, scope: !1550)
!1650 = !DILocation(line: 368, column: 48, scope: !1550)
!1651 = !DILocation(line: 368, column: 46, scope: !1550)
!1652 = !DILocation(line: 368, column: 24, scope: !1550)
!1653 = !DILocation(line: 369, column: 45, scope: !1550)
!1654 = !DILocation(line: 369, column: 21, scope: !1550)
!1655 = !DILocation(line: 369, column: 19, scope: !1550)
!1656 = !DILocation(line: 370, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1550, file: !519, line: 370, column: 7)
!1658 = !DILocation(line: 370, column: 23, scope: !1657)
!1659 = !DILocation(line: 370, column: 7, scope: !1550)
!1660 = !DILocation(line: 374, column: 11, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !519, line: 371, column: 3)
!1662 = !DILocation(line: 372, column: 4, scope: !1661)
!1663 = !DILocation(line: 375, column: 33, scope: !1661)
!1664 = !DILocation(line: 375, column: 50, scope: !1661)
!1665 = !DILocation(line: 375, column: 4, scope: !1661)
!1666 = !DILocation(line: 376, column: 10, scope: !1661)
!1667 = !DILocation(line: 376, column: 4, scope: !1661)
!1668 = !DILocation(line: 377, column: 3, scope: !1661)
!1669 = !DILocation(line: 379, column: 9, scope: !1550)
!1670 = !DILocation(line: 379, column: 3, scope: !1550)
!1671 = !DILocation(line: 381, column: 3, scope: !1550)
!1672 = !DILocation(line: 404, column: 11, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1535, file: !519, line: 404, column: 11)
!1674 = !DILocation(line: 404, column: 21, scope: !1673)
!1675 = !DILocation(line: 404, column: 18, scope: !1673)
!1676 = !DILocation(line: 404, column: 11, scope: !1535)
!1677 = !DILocation(line: 406, column: 32, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !519, line: 405, column: 2)
!1679 = !DILocation(line: 406, column: 40, scope: !1678)
!1680 = !DILocation(line: 406, column: 52, scope: !1678)
!1681 = !DILocation(line: 406, column: 3, scope: !1678)
!1682 = !DILocation(line: 408, column: 3, scope: !1678)
!1683 = !DILocation(line: 412, column: 3, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1673, file: !519, line: 411, column: 2)
!1685 = !DILocation(line: 414, column: 1, scope: !1519)
!1686 = distinct !DISubprogram(name: "ui_clip_format_announce", scope: !519, file: !519, line: 964, type: !1687, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !364, !369}
!1689 = !DILocalVariable(name: "data", arg: 1, scope: !1686, file: !519, line: 964, type: !364)
!1690 = !DILocation(line: 964, column: 33, scope: !1686)
!1691 = !DILocalVariable(name: "length", arg: 2, scope: !1686, file: !519, line: 964, type: !369)
!1692 = !DILocation(line: 964, column: 46, scope: !1686)
!1693 = !DILocation(line: 966, column: 17, scope: !1686)
!1694 = !DILocation(line: 966, column: 15, scope: !1686)
!1695 = !DILocation(line: 968, column: 21, scope: !1686)
!1696 = !DILocation(line: 968, column: 32, scope: !1686)
!1697 = !DILocation(line: 968, column: 46, scope: !1686)
!1698 = !DILocation(line: 968, column: 53, scope: !1686)
!1699 = !DILocation(line: 968, column: 2, scope: !1686)
!1700 = !DILocation(line: 969, column: 25, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1686, file: !519, line: 969, column: 6)
!1702 = !DILocation(line: 969, column: 36, scope: !1701)
!1703 = !DILocation(line: 969, column: 6, scope: !1701)
!1704 = !DILocation(line: 969, column: 53, scope: !1701)
!1705 = !DILocation(line: 969, column: 50, scope: !1701)
!1706 = !DILocation(line: 969, column: 6, scope: !1686)
!1707 = !DILocation(line: 970, column: 3, scope: !1701)
!1708 = !DILocation(line: 972, column: 21, scope: !1686)
!1709 = !DILocation(line: 972, column: 32, scope: !1686)
!1710 = !DILocation(line: 972, column: 48, scope: !1686)
!1711 = !DILocation(line: 972, column: 55, scope: !1686)
!1712 = !DILocation(line: 972, column: 2, scope: !1686)
!1713 = !DILocation(line: 973, column: 25, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1686, file: !519, line: 973, column: 6)
!1715 = !DILocation(line: 973, column: 36, scope: !1714)
!1716 = !DILocation(line: 973, column: 6, scope: !1714)
!1717 = !DILocation(line: 973, column: 55, scope: !1714)
!1718 = !DILocation(line: 973, column: 52, scope: !1714)
!1719 = !DILocation(line: 973, column: 6, scope: !1686)
!1720 = !DILocation(line: 974, column: 3, scope: !1714)
!1721 = !DILocation(line: 976, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1686, file: !519, line: 976, column: 6)
!1723 = !DILocation(line: 976, column: 6, scope: !1686)
!1724 = !DILocation(line: 977, column: 9, scope: !1722)
!1725 = !DILocation(line: 977, column: 3, scope: !1722)
!1726 = !DILocation(line: 978, column: 25, scope: !1686)
!1727 = !DILocation(line: 978, column: 17, scope: !1686)
!1728 = !DILocation(line: 978, column: 15, scope: !1686)
!1729 = !DILocation(line: 979, column: 9, scope: !1686)
!1730 = !DILocation(line: 979, column: 23, scope: !1686)
!1731 = !DILocation(line: 979, column: 29, scope: !1686)
!1732 = !DILocation(line: 979, column: 2, scope: !1686)
!1733 = !DILocation(line: 980, column: 24, scope: !1686)
!1734 = !DILocation(line: 980, column: 22, scope: !1686)
!1735 = !DILocation(line: 982, column: 2, scope: !1686)
!1736 = !DILocation(line: 983, column: 1, scope: !1686)
!1737 = distinct !DISubprogram(name: "ui_clip_handle_data", scope: !519, file: !519, line: 987, type: !1687, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1738 = !DILocalVariable(name: "data", arg: 1, scope: !1737, file: !519, line: 987, type: !364)
!1739 = !DILocation(line: 987, column: 29, scope: !1737)
!1740 = !DILocalVariable(name: "length", arg: 2, scope: !1737, file: !519, line: 987, type: !369)
!1741 = !DILocation(line: 987, column: 42, scope: !1737)
!1742 = !DILocalVariable(name: "free_data", scope: !1737, file: !519, line: 989, type: !533)
!1743 = !DILocation(line: 989, column: 10, scope: !1737)
!1744 = !DILocation(line: 991, column: 6, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !519, line: 991, column: 6)
!1746 = !DILocation(line: 991, column: 13, scope: !1745)
!1747 = !DILocation(line: 991, column: 6, scope: !1737)
!1748 = !DILocation(line: 993, column: 3, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !519, line: 992, column: 2)
!1750 = !DILocation(line: 994, column: 25, scope: !1749)
!1751 = !DILocation(line: 995, column: 3, scope: !1749)
!1752 = !DILocation(line: 998, column: 24, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1737, file: !519, line: 998, column: 6)
!1754 = !DILocation(line: 998, column: 34, scope: !1753)
!1755 = !DILocation(line: 998, column: 31, scope: !1753)
!1756 = !DILocation(line: 998, column: 53, scope: !1753)
!1757 = !DILocation(line: 998, column: 74, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1753, file: !519, discriminator: 1)
!1759 = !DILocation(line: 998, column: 81, scope: !1758)
!1760 = !DILocation(line: 998, column: 6, scope: !1758)
!1761 = !DILocalVariable(name: "firstnull", scope: !1762, file: !519, line: 1001, type: !364)
!1762 = distinct !DILexicalBlock(scope: !1753, file: !519, line: 999, column: 2)
!1763 = !DILocation(line: 1001, column: 10, scope: !1762)
!1764 = !DILocation(line: 1004, column: 11, scope: !1762)
!1765 = !DILocation(line: 1004, column: 3, scope: !1762)
!1766 = !DILocation(line: 1007, column: 41, scope: !1762)
!1767 = !DILocation(line: 1007, column: 25, scope: !1762)
!1768 = !DILocation(line: 1007, column: 13, scope: !1762)
!1769 = !DILocation(line: 1008, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1762, file: !519, line: 1008, column: 7)
!1771 = !DILocation(line: 1008, column: 7, scope: !1762)
!1772 = !DILocation(line: 1010, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !519, line: 1009, column: 3)
!1774 = !DILocation(line: 1010, column: 25, scope: !1773)
!1775 = !DILocation(line: 1010, column: 23, scope: !1773)
!1776 = !DILocation(line: 1010, column: 30, scope: !1773)
!1777 = !DILocation(line: 1010, column: 11, scope: !1773)
!1778 = !DILocation(line: 1011, column: 3, scope: !1773)
!1779 = !DILocation(line: 1012, column: 2, scope: !1762)
!1780 = !DILocation(line: 1014, column: 29, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1753, file: !519, line: 1014, column: 11)
!1782 = !DILocation(line: 1014, column: 39, scope: !1781)
!1783 = !DILocation(line: 1014, column: 36, scope: !1781)
!1784 = !DILocation(line: 1014, column: 11, scope: !1753)
!1785 = !DILocalVariable(name: "cd", scope: !1786, file: !519, line: 1017, type: !507)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !519, line: 1015, column: 2)
!1787 = !DILocation(line: 1017, column: 10, scope: !1786)
!1788 = !DILocation(line: 1017, column: 15, scope: !1786)
!1789 = !DILocation(line: 1018, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !519, line: 1018, column: 7)
!1791 = !DILocation(line: 1018, column: 10, scope: !1790)
!1792 = !DILocation(line: 1018, column: 7, scope: !1786)
!1793 = !DILocalVariable(name: "utf8_length", scope: !1794, file: !519, line: 1020, type: !510)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !519, line: 1019, column: 3)
!1795 = !DILocation(line: 1020, column: 11, scope: !1794)
!1796 = !DILocation(line: 1020, column: 25, scope: !1794)
!1797 = !DILocation(line: 1020, column: 32, scope: !1794)
!1798 = !DILocalVariable(name: "utf8_data", scope: !1794, file: !519, line: 1021, type: !391)
!1799 = !DILocation(line: 1021, column: 10, scope: !1794)
!1800 = !DILocation(line: 1021, column: 29, scope: !1794)
!1801 = !DILocation(line: 1021, column: 22, scope: !1794)
!1802 = !DILocalVariable(name: "utf8_length_remaining", scope: !1794, file: !519, line: 1022, type: !510)
!1803 = !DILocation(line: 1022, column: 11, scope: !1794)
!1804 = !DILocation(line: 1022, column: 35, scope: !1794)
!1805 = !DILocalVariable(name: "utf8_data_remaining", scope: !1794, file: !519, line: 1023, type: !391)
!1806 = !DILocation(line: 1023, column: 10, scope: !1794)
!1807 = !DILocation(line: 1023, column: 32, scope: !1794)
!1808 = !DILocalVariable(name: "data_remaining", scope: !1794, file: !519, line: 1024, type: !391)
!1809 = !DILocation(line: 1024, column: 10, scope: !1794)
!1810 = !DILocation(line: 1024, column: 36, scope: !1794)
!1811 = !DILocalVariable(name: "length_remaining", scope: !1794, file: !519, line: 1025, type: !510)
!1812 = !DILocation(line: 1025, column: 11, scope: !1794)
!1813 = !DILocation(line: 1025, column: 39, scope: !1794)
!1814 = !DILocation(line: 1025, column: 30, scope: !1794)
!1815 = !DILocation(line: 1026, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1794, file: !519, line: 1026, column: 8)
!1817 = !DILocation(line: 1026, column: 18, scope: !1816)
!1818 = !DILocation(line: 1026, column: 8, scope: !1794)
!1819 = !DILocation(line: 1028, column: 16, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !519, line: 1027, column: 4)
!1821 = !DILocation(line: 1028, column: 4, scope: !1820)
!1822 = !DILocation(line: 1029, column: 5, scope: !1820)
!1823 = !DILocation(line: 1031, column: 9, scope: !1794)
!1824 = !DILocation(line: 1031, column: 3, scope: !1794)
!1825 = !DILocation(line: 1033, column: 15, scope: !1794)
!1826 = !DILocation(line: 1033, column: 3, scope: !1794)
!1827 = !DILocation(line: 1034, column: 14, scope: !1794)
!1828 = !DILocation(line: 1035, column: 21, scope: !1794)
!1829 = !DILocation(line: 1035, column: 9, scope: !1794)
!1830 = !DILocation(line: 1036, column: 13, scope: !1794)
!1831 = !DILocation(line: 1036, column: 27, scope: !1794)
!1832 = !DILocation(line: 1036, column: 25, scope: !1794)
!1833 = !DILocation(line: 1036, column: 11, scope: !1794)
!1834 = !DILocation(line: 1038, column: 12, scope: !1794)
!1835 = !DILocation(line: 1038, column: 4, scope: !1794)
!1836 = !DILocation(line: 1039, column: 3, scope: !1794)
!1837 = !DILocation(line: 1040, column: 2, scope: !1786)
!1838 = !DILocation(line: 1041, column: 29, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1781, file: !519, line: 1041, column: 11)
!1840 = !DILocation(line: 1041, column: 39, scope: !1839)
!1841 = !DILocation(line: 1041, column: 36, scope: !1839)
!1842 = !DILocation(line: 1041, column: 11, scope: !1781)
!1843 = !DILocation(line: 1046, column: 2, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !519, line: 1042, column: 2)
!1845 = !DILocation(line: 1048, column: 29, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !519, line: 1048, column: 11)
!1847 = !DILocation(line: 1048, column: 39, scope: !1846)
!1848 = !DILocation(line: 1048, column: 36, scope: !1846)
!1849 = !DILocation(line: 1048, column: 11, scope: !1839)
!1850 = !DILocation(line: 1051, column: 2, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !519, line: 1049, column: 2)
!1852 = !DILocation(line: 1056, column: 23, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !519, line: 1053, column: 2)
!1854 = !DILocation(line: 1056, column: 52, scope: !1853)
!1855 = !DILocation(line: 1056, column: 10, scope: !1853)
!1856 = !DILocation(line: 1054, column: 3, scope: !1853)
!1857 = !DILocation(line: 1057, column: 3, scope: !1853)
!1858 = !DILocation(line: 1058, column: 25, scope: !1853)
!1859 = !DILocation(line: 1059, column: 3, scope: !1853)
!1860 = !DILocation(line: 1062, column: 64, scope: !1737)
!1861 = !DILocation(line: 1062, column: 75, scope: !1737)
!1862 = !DILocation(line: 1062, column: 81, scope: !1737)
!1863 = !DILocation(line: 1062, column: 88, scope: !1737)
!1864 = !DILocation(line: 1062, column: 2, scope: !1737)
!1865 = !DILocation(line: 1063, column: 24, scope: !1737)
!1866 = !DILocation(line: 1065, column: 6, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1737, file: !519, line: 1065, column: 6)
!1868 = !DILocation(line: 1065, column: 6, scope: !1737)
!1869 = !DILocation(line: 1066, column: 8, scope: !1867)
!1870 = !DILocation(line: 1066, column: 3, scope: !1867)
!1871 = !DILocation(line: 1067, column: 1, scope: !1737)
!1872 = distinct !DISubprogram(name: "crlf2lf", scope: !519, file: !519, line: 135, type: !1873, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !364, !368}
!1875 = !DILocalVariable(name: "data", arg: 1, scope: !1872, file: !519, line: 135, type: !364)
!1876 = !DILocation(line: 135, column: 17, scope: !1872)
!1877 = !DILocalVariable(name: "length", arg: 2, scope: !1872, file: !519, line: 135, type: !368)
!1878 = !DILocation(line: 135, column: 32, scope: !1872)
!1879 = !DILocalVariable(name: "dst", scope: !1872, file: !519, line: 137, type: !364)
!1880 = !DILocation(line: 137, column: 9, scope: !1872)
!1881 = !DILocalVariable(name: "src", scope: !1872, file: !519, line: 137, type: !364)
!1882 = !DILocation(line: 137, column: 15, scope: !1872)
!1883 = !DILocation(line: 138, column: 14, scope: !1872)
!1884 = !DILocation(line: 138, column: 12, scope: !1872)
!1885 = !DILocation(line: 138, column: 6, scope: !1872)
!1886 = !DILocation(line: 139, column: 2, scope: !1872)
!1887 = !DILocation(line: 139, column: 9, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1872, file: !519, discriminator: 1)
!1889 = !DILocation(line: 139, column: 15, scope: !1888)
!1890 = !DILocation(line: 139, column: 23, scope: !1888)
!1891 = !DILocation(line: 139, column: 22, scope: !1888)
!1892 = !DILocation(line: 139, column: 20, scope: !1888)
!1893 = !DILocation(line: 139, column: 13, scope: !1888)
!1894 = !DILocation(line: 139, column: 2, scope: !1888)
!1895 = !DILocation(line: 141, column: 8, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !519, line: 141, column: 7)
!1897 = distinct !DILexicalBlock(scope: !1872, file: !519, line: 140, column: 2)
!1898 = !DILocation(line: 141, column: 7, scope: !1896)
!1899 = !DILocation(line: 141, column: 12, scope: !1896)
!1900 = !DILocation(line: 141, column: 7, scope: !1897)
!1901 = !DILocation(line: 142, column: 14, scope: !1896)
!1902 = !DILocation(line: 142, column: 13, scope: !1896)
!1903 = !DILocation(line: 142, column: 8, scope: !1896)
!1904 = !DILocation(line: 142, column: 11, scope: !1896)
!1905 = !DILocation(line: 142, column: 4, scope: !1896)
!1906 = !DILocation(line: 143, column: 6, scope: !1897)
!1907 = !DILocation(line: 139, column: 2, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1872, file: !519, discriminator: 2)
!1909 = distinct !{!1909, !1886}
!1910 = !DILocation(line: 145, column: 12, scope: !1872)
!1911 = !DILocation(line: 145, column: 18, scope: !1872)
!1912 = !DILocation(line: 145, column: 16, scope: !1872)
!1913 = !DILocation(line: 145, column: 3, scope: !1872)
!1914 = !DILocation(line: 145, column: 10, scope: !1872)
!1915 = !DILocation(line: 146, column: 1, scope: !1872)
!1916 = distinct !DISubprogram(name: "ui_clip_request_failed", scope: !519, file: !519, line: 1070, type: !1385, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1917 = !DILocation(line: 1072, column: 2, scope: !1916)
!1918 = !DILocation(line: 1073, column: 24, scope: !1916)
!1919 = !DILocation(line: 1074, column: 1, scope: !1916)
!1920 = distinct !DISubprogram(name: "ui_clip_request_data", scope: !519, file: !519, line: 1077, type: !1921, isLocal: false, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !369}
!1923 = !DILocalVariable(name: "format", arg: 1, scope: !1920, file: !519, line: 1077, type: !369)
!1924 = !DILocation(line: 1077, column: 29, scope: !1920)
!1925 = !DILocalVariable(name: "primary_owner", scope: !1920, file: !519, line: 1079, type: !456)
!1926 = !DILocation(line: 1079, column: 9, scope: !1920)
!1927 = !DILocalVariable(name: "clipboard_owner", scope: !1920, file: !519, line: 1079, type: !456)
!1928 = !DILocation(line: 1079, column: 24, scope: !1920)
!1929 = !DILocation(line: 1081, column: 64, scope: !1920)
!1930 = !DILocation(line: 1081, column: 2, scope: !1920)
!1931 = !DILocation(line: 1082, column: 33, scope: !1920)
!1932 = !DILocation(line: 1082, column: 31, scope: !1920)
!1933 = !DILocation(line: 1084, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1084, column: 6)
!1935 = !DILocation(line: 1084, column: 6, scope: !1920)
!1936 = !DILocation(line: 1086, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !519, line: 1085, column: 2)
!1938 = !DILocation(line: 1088, column: 3, scope: !1937)
!1939 = !DILocation(line: 1089, column: 3, scope: !1937)
!1940 = !DILocation(line: 1092, column: 2, scope: !1920)
!1941 = !DILocation(line: 1094, column: 6, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1094, column: 6)
!1943 = !DILocation(line: 1094, column: 6, scope: !1920)
!1944 = !DILocation(line: 1096, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !519, line: 1095, column: 2)
!1946 = !DILocation(line: 1096, column: 30, scope: !1945)
!1947 = !DILocation(line: 1096, column: 37, scope: !1945)
!1948 = !DILocation(line: 1097, column: 37, scope: !1945)
!1949 = !DILocation(line: 1096, column: 3, scope: !1945)
!1950 = !DILocation(line: 1099, column: 21, scope: !1945)
!1951 = !DILocation(line: 1099, column: 32, scope: !1945)
!1952 = !DILocation(line: 1099, column: 46, scope: !1945)
!1953 = !DILocation(line: 1100, column: 7, scope: !1945)
!1954 = !DILocation(line: 1100, column: 39, scope: !1945)
!1955 = !DILocation(line: 1099, column: 3, scope: !1945)
!1956 = !DILocation(line: 1101, column: 3, scope: !1945)
!1957 = !DILocation(line: 1104, column: 6, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1104, column: 6)
!1959 = !DILocation(line: 1104, column: 6, scope: !1920)
!1960 = !DILocation(line: 1105, column: 38, scope: !1958)
!1961 = !DILocation(line: 1105, column: 49, scope: !1958)
!1962 = !DILocation(line: 1105, column: 19, scope: !1958)
!1963 = !DILocation(line: 1105, column: 17, scope: !1958)
!1964 = !DILocation(line: 1105, column: 3, scope: !1958)
!1965 = !DILocation(line: 1107, column: 17, scope: !1958)
!1966 = !DILocation(line: 1109, column: 39, scope: !1920)
!1967 = !DILocation(line: 1109, column: 50, scope: !1920)
!1968 = !DILocation(line: 1109, column: 20, scope: !1920)
!1969 = !DILocation(line: 1109, column: 18, scope: !1920)
!1970 = !DILocation(line: 1112, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1112, column: 6)
!1972 = !DILocation(line: 1112, column: 21, scope: !1971)
!1973 = !DILocation(line: 1112, column: 29, scope: !1971)
!1974 = !DILocation(line: 1112, column: 33, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1971, file: !519, discriminator: 1)
!1976 = !DILocation(line: 1112, column: 49, scope: !1975)
!1977 = !DILocation(line: 1112, column: 6, scope: !1975)
!1978 = !DILocation(line: 1114, column: 21, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1971, file: !519, line: 1113, column: 2)
!1980 = !DILocation(line: 1115, column: 23, scope: !1979)
!1981 = !DILocation(line: 1116, column: 21, scope: !1979)
!1982 = !DILocation(line: 1116, column: 32, scope: !1979)
!1983 = !DILocation(line: 1116, column: 46, scope: !1979)
!1984 = !DILocation(line: 1117, column: 7, scope: !1979)
!1985 = !DILocation(line: 1117, column: 47, scope: !1979)
!1986 = !DILocation(line: 1116, column: 3, scope: !1979)
!1987 = !DILocation(line: 1118, column: 21, scope: !1979)
!1988 = !DILocation(line: 1118, column: 32, scope: !1979)
!1989 = !DILocation(line: 1118, column: 48, scope: !1979)
!1990 = !DILocation(line: 1119, column: 7, scope: !1979)
!1991 = !DILocation(line: 1119, column: 49, scope: !1979)
!1992 = !DILocation(line: 1118, column: 3, scope: !1979)
!1993 = !DILocation(line: 1120, column: 3, scope: !1979)
!1994 = !DILocation(line: 1124, column: 6, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1124, column: 6)
!1996 = !DILocation(line: 1124, column: 20, scope: !1995)
!1997 = !DILocation(line: 1124, column: 6, scope: !1920)
!1998 = !DILocation(line: 1126, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !519, line: 1125, column: 2)
!2000 = !DILocation(line: 1126, column: 32, scope: !1999)
!2001 = !DILocation(line: 1126, column: 46, scope: !1999)
!2002 = !DILocation(line: 1127, column: 7, scope: !1999)
!2003 = !DILocation(line: 1127, column: 39, scope: !1999)
!2004 = !DILocation(line: 1126, column: 3, scope: !1999)
!2005 = !DILocation(line: 1128, column: 3, scope: !1999)
!2006 = !DILocation(line: 1132, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1920, file: !519, line: 1132, column: 6)
!2008 = !DILocation(line: 1132, column: 22, scope: !2007)
!2009 = !DILocation(line: 1132, column: 6, scope: !1920)
!2010 = !DILocation(line: 1134, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !519, line: 1133, column: 2)
!2012 = !DILocation(line: 1134, column: 32, scope: !2011)
!2013 = !DILocation(line: 1134, column: 48, scope: !2011)
!2014 = !DILocation(line: 1135, column: 7, scope: !2011)
!2015 = !DILocation(line: 1135, column: 39, scope: !2011)
!2016 = !DILocation(line: 1134, column: 3, scope: !2011)
!2017 = !DILocation(line: 1136, column: 3, scope: !2011)
!2018 = !DILocation(line: 1140, column: 2, scope: !1920)
!2019 = !DILocation(line: 1141, column: 1, scope: !1920)
!2020 = !DILocation(line: 1141, column: 1, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !1920, file: !519, discriminator: 1)
!2022 = distinct !DISubprogram(name: "ui_clip_sync", scope: !519, file: !519, line: 1144, type: !1385, isLocal: false, isDefinition: true, scopeLine: 1145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2023 = !DILocation(line: 1146, column: 2, scope: !2022)
!2024 = !DILocation(line: 1147, column: 1, scope: !2022)
!2025 = distinct !DISubprogram(name: "ui_clip_set_mode", scope: !519, file: !519, line: 1150, type: !2026, isLocal: false, isDefinition: true, scopeLine: 1151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64, align: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!2030 = !DILocalVariable(name: "optarg", arg: 1, scope: !2025, file: !519, line: 1150, type: !2028)
!2031 = !DILocation(line: 1150, column: 30, scope: !2025)
!2032 = !DILocation(line: 1152, column: 12, scope: !2025)
!2033 = !DILocation(line: 1154, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !519, line: 1154, column: 6)
!2035 = !DILocation(line: 1154, column: 6, scope: !2034)
!2036 = !DILocation(line: 1154, column: 6, scope: !2025)
!2037 = !DILocation(line: 1155, column: 13, scope: !2034)
!2038 = !DILocation(line: 1155, column: 3, scope: !2034)
!2039 = !DILocation(line: 1156, column: 26, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !519, line: 1156, column: 11)
!2041 = !DILocation(line: 1156, column: 11, scope: !2040)
!2042 = !DILocation(line: 1156, column: 11, scope: !2034)
!2043 = !DILocation(line: 1157, column: 13, scope: !2040)
!2044 = !DILocation(line: 1157, column: 3, scope: !2040)
!2045 = !DILocation(line: 1160, column: 61, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2040, file: !519, line: 1159, column: 2)
!2047 = !DILocation(line: 1160, column: 3, scope: !2046)
!2048 = !DILocation(line: 1161, column: 13, scope: !2046)
!2049 = !DILocation(line: 1163, column: 1, scope: !2025)
!2050 = distinct !DISubprogram(name: "xclip_init", scope: !519, file: !519, line: 1166, type: !1385, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2051 = !DILocation(line: 1168, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 1168, column: 6)
!2053 = !DILocation(line: 1168, column: 6, scope: !2050)
!2054 = !DILocation(line: 1169, column: 3, scope: !2052)
!2055 = !DILocation(line: 1171, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 1171, column: 6)
!2057 = !DILocation(line: 1171, column: 6, scope: !2050)
!2058 = !DILocation(line: 1172, column: 3, scope: !2056)
!2059 = !DILocation(line: 1174, column: 29, scope: !2050)
!2060 = !DILocation(line: 1174, column: 17, scope: !2050)
!2061 = !DILocation(line: 1174, column: 15, scope: !2050)
!2062 = !DILocation(line: 1175, column: 31, scope: !2050)
!2063 = !DILocation(line: 1175, column: 19, scope: !2050)
!2064 = !DILocation(line: 1175, column: 17, scope: !2050)
!2065 = !DILocation(line: 1176, column: 29, scope: !2050)
!2066 = !DILocation(line: 1176, column: 17, scope: !2050)
!2067 = !DILocation(line: 1176, column: 15, scope: !2050)
!2068 = !DILocation(line: 1177, column: 31, scope: !2050)
!2069 = !DILocation(line: 1177, column: 19, scope: !2050)
!2070 = !DILocation(line: 1177, column: 17, scope: !2050)
!2071 = !DILocation(line: 1179, column: 15, scope: !2050)
!2072 = !DILocation(line: 1179, column: 3, scope: !2050)
!2073 = !DILocation(line: 1178, column: 33, scope: !2050)
!2074 = !DILocation(line: 1181, column: 15, scope: !2050)
!2075 = !DILocation(line: 1181, column: 3, scope: !2050)
!2076 = !DILocation(line: 1180, column: 41, scope: !2050)
!2077 = !DILocation(line: 1183, column: 15, scope: !2050)
!2078 = !DILocation(line: 1183, column: 3, scope: !2050)
!2079 = !DILocation(line: 1182, column: 43, scope: !2050)
!2080 = !DILocation(line: 1184, column: 26, scope: !2050)
!2081 = !DILocation(line: 1184, column: 14, scope: !2050)
!2082 = !DILocation(line: 1184, column: 12, scope: !2050)
!2083 = !DILocation(line: 1185, column: 35, scope: !2050)
!2084 = !DILocation(line: 1185, column: 23, scope: !2050)
!2085 = !DILocation(line: 1185, column: 21, scope: !2050)
!2086 = !DILocation(line: 1186, column: 40, scope: !2050)
!2087 = !DILocation(line: 1186, column: 28, scope: !2050)
!2088 = !DILocation(line: 1186, column: 26, scope: !2050)
!2089 = !DILocation(line: 1187, column: 36, scope: !2050)
!2090 = !DILocation(line: 1187, column: 24, scope: !2050)
!2091 = !DILocation(line: 1187, column: 22, scope: !2050)
!2092 = !DILocation(line: 1192, column: 15, scope: !2050)
!2093 = !DILocation(line: 1192, column: 3, scope: !2050)
!2094 = !DILocation(line: 1191, column: 33, scope: !2050)
!2095 = !DILocation(line: 1193, column: 15, scope: !2050)
!2096 = !DILocation(line: 1193, column: 25, scope: !2050)
!2097 = !DILocation(line: 1193, column: 28, scope: !2050)
!2098 = !DILocation(line: 1193, column: 47, scope: !2050)
!2099 = !DILocation(line: 1193, column: 2, scope: !2050)
!2100 = !DILocation(line: 1194, column: 21, scope: !2050)
!2101 = !DILocation(line: 1196, column: 37, scope: !2050)
!2102 = !DILocation(line: 1196, column: 25, scope: !2050)
!2103 = !DILocation(line: 1196, column: 23, scope: !2050)
!2104 = !DILocation(line: 1198, column: 15, scope: !2050)
!2105 = !DILocation(line: 1198, column: 3, scope: !2050)
!2106 = !DILocation(line: 1197, column: 34, scope: !2050)
!2107 = !DILocation(line: 1199, column: 44, scope: !2050)
!2108 = !DILocation(line: 1199, column: 32, scope: !2050)
!2109 = !DILocation(line: 1199, column: 30, scope: !2050)
!2110 = !DILocation(line: 1200, column: 46, scope: !2050)
!2111 = !DILocation(line: 1200, column: 34, scope: !2050)
!2112 = !DILocation(line: 1200, column: 32, scope: !2050)
!2113 = !DILocation(line: 1202, column: 14, scope: !2050)
!2114 = !DILocation(line: 1203, column: 27, scope: !2050)
!2115 = !DILocation(line: 1203, column: 21, scope: !2050)
!2116 = !DILocation(line: 1203, column: 2, scope: !2050)
!2117 = !DILocation(line: 1203, column: 25, scope: !2050)
!2118 = !DILocation(line: 1204, column: 27, scope: !2050)
!2119 = !DILocation(line: 1204, column: 21, scope: !2050)
!2120 = !DILocation(line: 1204, column: 2, scope: !2050)
!2121 = !DILocation(line: 1204, column: 25, scope: !2050)
!2122 = !DILocation(line: 1205, column: 27, scope: !2050)
!2123 = !DILocation(line: 1205, column: 21, scope: !2050)
!2124 = !DILocation(line: 1205, column: 2, scope: !2050)
!2125 = !DILocation(line: 1205, column: 25, scope: !2050)
!2126 = !DILocation(line: 1206, column: 27, scope: !2050)
!2127 = !DILocation(line: 1206, column: 21, scope: !2050)
!2128 = !DILocation(line: 1206, column: 2, scope: !2050)
!2129 = !DILocation(line: 1206, column: 25, scope: !2050)
!2130 = !DILocation(line: 1208, column: 27, scope: !2050)
!2131 = !DILocation(line: 1208, column: 21, scope: !2050)
!2132 = !DILocation(line: 1208, column: 2, scope: !2050)
!2133 = !DILocation(line: 1208, column: 25, scope: !2050)
!2134 = !DILocation(line: 1210, column: 27, scope: !2050)
!2135 = !DILocation(line: 1210, column: 21, scope: !2050)
!2136 = !DILocation(line: 1210, column: 2, scope: !2050)
!2137 = !DILocation(line: 1210, column: 25, scope: !2050)
!2138 = !DILocation(line: 1211, column: 27, scope: !2050)
!2139 = !DILocation(line: 1211, column: 21, scope: !2050)
!2140 = !DILocation(line: 1211, column: 2, scope: !2050)
!2141 = !DILocation(line: 1211, column: 25, scope: !2050)
!2142 = !DILocation(line: 1212, column: 21, scope: !2050)
!2143 = !DILocation(line: 1212, column: 2, scope: !2050)
!2144 = !DILocation(line: 1212, column: 25, scope: !2050)
!2145 = !DILocation(line: 1213, column: 1, scope: !2050)
!2146 = !DILocation(line: 1213, column: 1, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2050, file: !519, discriminator: 1)
!2148 = distinct !DISubprogram(name: "xclip_deinit", scope: !519, file: !519, line: 1216, type: !1385, isLocal: false, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2149 = !DILocation(line: 1218, column: 25, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2148, file: !519, line: 1218, column: 6)
!2151 = !DILocation(line: 1218, column: 36, scope: !2150)
!2152 = !DILocation(line: 1218, column: 6, scope: !2150)
!2153 = !DILocation(line: 1218, column: 53, scope: !2150)
!2154 = !DILocation(line: 1218, column: 50, scope: !2150)
!2155 = !DILocation(line: 1218, column: 6, scope: !2148)
!2156 = !DILocation(line: 1219, column: 22, scope: !2150)
!2157 = !DILocation(line: 1219, column: 33, scope: !2150)
!2158 = !DILocation(line: 1219, column: 52, scope: !2150)
!2159 = !DILocation(line: 1219, column: 3, scope: !2150)
!2160 = !DILocation(line: 1220, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2148, file: !519, line: 1220, column: 6)
!2162 = !DILocation(line: 1220, column: 36, scope: !2161)
!2163 = !DILocation(line: 1220, column: 6, scope: !2161)
!2164 = !DILocation(line: 1220, column: 55, scope: !2161)
!2165 = !DILocation(line: 1220, column: 52, scope: !2161)
!2166 = !DILocation(line: 1220, column: 6, scope: !2148)
!2167 = !DILocation(line: 1221, column: 22, scope: !2161)
!2168 = !DILocation(line: 1221, column: 33, scope: !2161)
!2169 = !DILocation(line: 1221, column: 54, scope: !2161)
!2170 = !DILocation(line: 1221, column: 3, scope: !2161)
!2171 = !DILocation(line: 1222, column: 2, scope: !2148)
!2172 = !DILocation(line: 1223, column: 1, scope: !2148)
!2173 = distinct !DISubprogram(name: "xclip_clear_target_props", scope: !519, file: !519, line: 417, type: !1385, isLocal: true, isDefinition: true, scopeLine: 418, isOptimized: false, unit: !0, variables: !592)
!2174 = !DILocation(line: 419, column: 18, scope: !2173)
!2175 = !DILocation(line: 419, column: 29, scope: !2173)
!2176 = !DILocation(line: 419, column: 36, scope: !2173)
!2177 = !DILocation(line: 419, column: 2, scope: !2173)
!2178 = !DILocation(line: 420, column: 18, scope: !2173)
!2179 = !DILocation(line: 420, column: 29, scope: !2173)
!2180 = !DILocation(line: 420, column: 36, scope: !2173)
!2181 = !DILocation(line: 420, column: 2, scope: !2173)
!2182 = !DILocation(line: 421, column: 18, scope: !2173)
!2183 = !DILocation(line: 421, column: 29, scope: !2173)
!2184 = !DILocation(line: 421, column: 36, scope: !2173)
!2185 = !DILocation(line: 421, column: 2, scope: !2173)
!2186 = !DILocation(line: 422, column: 1, scope: !2173)
!2187 = distinct !DISubprogram(name: "helper_cliprdr_send_empty_response", scope: !519, file: !519, line: 283, type: !1385, isLocal: true, isDefinition: true, scopeLine: 284, isOptimized: false, unit: !0, variables: !592)
!2188 = !DILocation(line: 285, column: 2, scope: !2187)
!2189 = !DILocation(line: 286, column: 1, scope: !2187)
!2190 = distinct !DISubprogram(name: "helper_cliprdr_send_response", scope: !519, file: !519, line: 268, type: !1687, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2191 = !DILocalVariable(name: "data", arg: 1, scope: !2190, file: !519, line: 268, type: !364)
!2192 = !DILocation(line: 268, column: 38, scope: !2190)
!2193 = !DILocalVariable(name: "length", arg: 2, scope: !2190, file: !519, line: 268, type: !369)
!2194 = !DILocation(line: 268, column: 51, scope: !2190)
!2195 = !DILocation(line: 270, column: 6, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !519, line: 270, column: 6)
!2197 = !DILocation(line: 270, column: 35, scope: !2196)
!2198 = !DILocation(line: 270, column: 6, scope: !2190)
!2199 = !DILocation(line: 272, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !519, line: 271, column: 2)
!2201 = !DILocation(line: 272, column: 27, scope: !2200)
!2202 = !DILocation(line: 272, column: 3, scope: !2200)
!2203 = !DILocation(line: 273, column: 32, scope: !2200)
!2204 = !DILocation(line: 274, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !519, line: 274, column: 7)
!2206 = !DILocation(line: 274, column: 7, scope: !2200)
!2207 = !DILocation(line: 275, column: 4, scope: !2205)
!2208 = !DILocation(line: 276, column: 2, scope: !2200)
!2209 = !DILocation(line: 277, column: 1, scope: !2190)
!2210 = distinct !DISubprogram(name: "xclip_notify_change", scope: !519, file: !519, line: 425, type: !1385, isLocal: true, isDefinition: true, scopeLine: 426, isOptimized: false, unit: !0, variables: !592)
!2211 = !DILocation(line: 427, column: 18, scope: !2210)
!2212 = !DILocation(line: 427, column: 28, scope: !2210)
!2213 = !DILocation(line: 427, column: 31, scope: !2210)
!2214 = !DILocation(line: 427, column: 50, scope: !2210)
!2215 = !DILocation(line: 428, column: 4, scope: !2210)
!2216 = !DILocation(line: 427, column: 2, scope: !2210)
!2217 = !DILocation(line: 429, column: 1, scope: !2210)
!2218 = distinct !DISubprogram(name: "xclip_probe_selections", scope: !519, file: !519, line: 432, type: !1385, isLocal: true, isDefinition: true, scopeLine: 433, isOptimized: false, unit: !0, variables: !592)
!2219 = !DILocalVariable(name: "primary_owner", scope: !2218, file: !519, line: 434, type: !456)
!2220 = !DILocation(line: 434, column: 9, scope: !2218)
!2221 = !DILocalVariable(name: "clipboard_owner", scope: !2218, file: !519, line: 434, type: !456)
!2222 = !DILocation(line: 434, column: 24, scope: !2218)
!2223 = !DILocation(line: 436, column: 6, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 436, column: 6)
!2225 = !DILocation(line: 436, column: 6, scope: !2218)
!2226 = !DILocation(line: 438, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !519, line: 437, column: 2)
!2228 = !DILocation(line: 440, column: 22, scope: !2227)
!2229 = !DILocation(line: 441, column: 3, scope: !2227)
!2230 = !DILocation(line: 444, column: 2, scope: !2218)
!2231 = !DILocation(line: 446, column: 21, scope: !2218)
!2232 = !DILocation(line: 447, column: 21, scope: !2218)
!2233 = !DILocation(line: 449, column: 2, scope: !2218)
!2234 = !DILocation(line: 451, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 451, column: 6)
!2236 = !DILocation(line: 451, column: 6, scope: !2218)
!2237 = !DILocation(line: 452, column: 38, scope: !2235)
!2238 = !DILocation(line: 452, column: 49, scope: !2235)
!2239 = !DILocation(line: 452, column: 19, scope: !2235)
!2240 = !DILocation(line: 452, column: 17, scope: !2235)
!2241 = !DILocation(line: 452, column: 3, scope: !2235)
!2242 = !DILocation(line: 454, column: 17, scope: !2235)
!2243 = !DILocation(line: 456, column: 39, scope: !2218)
!2244 = !DILocation(line: 456, column: 50, scope: !2218)
!2245 = !DILocation(line: 456, column: 20, scope: !2218)
!2246 = !DILocation(line: 456, column: 18, scope: !2218)
!2247 = !DILocation(line: 459, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 459, column: 6)
!2249 = !DILocation(line: 459, column: 25, scope: !2248)
!2250 = !DILocation(line: 459, column: 22, scope: !2248)
!2251 = !DILocation(line: 459, column: 32, scope: !2248)
!2252 = !DILocation(line: 459, column: 36, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2248, file: !519, discriminator: 1)
!2254 = !DILocation(line: 459, column: 47, scope: !2253)
!2255 = !DILocation(line: 459, column: 51, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2248, file: !519, discriminator: 2)
!2257 = !DILocation(line: 459, column: 70, scope: !2256)
!2258 = !DILocation(line: 459, column: 67, scope: !2256)
!2259 = !DILocation(line: 459, column: 6, scope: !2256)
!2260 = !DILocation(line: 460, column: 3, scope: !2248)
!2261 = !DILocation(line: 463, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 463, column: 6)
!2263 = !DILocation(line: 463, column: 21, scope: !2262)
!2264 = !DILocation(line: 463, column: 29, scope: !2262)
!2265 = !DILocation(line: 463, column: 33, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2262, file: !519, discriminator: 1)
!2267 = !DILocation(line: 463, column: 49, scope: !2266)
!2268 = !DILocation(line: 463, column: 6, scope: !2266)
!2269 = !DILocation(line: 465, column: 21, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !519, line: 464, column: 2)
!2271 = !DILocation(line: 466, column: 23, scope: !2270)
!2272 = !DILocation(line: 467, column: 21, scope: !2270)
!2273 = !DILocation(line: 467, column: 32, scope: !2270)
!2274 = !DILocation(line: 467, column: 46, scope: !2270)
!2275 = !DILocation(line: 468, column: 7, scope: !2270)
!2276 = !DILocation(line: 468, column: 47, scope: !2270)
!2277 = !DILocation(line: 467, column: 3, scope: !2270)
!2278 = !DILocation(line: 469, column: 21, scope: !2270)
!2279 = !DILocation(line: 469, column: 32, scope: !2270)
!2280 = !DILocation(line: 469, column: 48, scope: !2270)
!2281 = !DILocation(line: 470, column: 7, scope: !2270)
!2282 = !DILocation(line: 470, column: 49, scope: !2270)
!2283 = !DILocation(line: 469, column: 3, scope: !2270)
!2284 = !DILocation(line: 471, column: 3, scope: !2270)
!2285 = !DILocation(line: 475, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 475, column: 6)
!2287 = !DILocation(line: 475, column: 20, scope: !2286)
!2288 = !DILocation(line: 475, column: 6, scope: !2218)
!2289 = !DILocation(line: 477, column: 21, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !519, line: 476, column: 2)
!2291 = !DILocation(line: 477, column: 32, scope: !2290)
!2292 = !DILocation(line: 477, column: 46, scope: !2290)
!2293 = !DILocation(line: 478, column: 7, scope: !2290)
!2294 = !DILocation(line: 478, column: 39, scope: !2290)
!2295 = !DILocation(line: 477, column: 3, scope: !2290)
!2296 = !DILocation(line: 479, column: 3, scope: !2290)
!2297 = !DILocation(line: 483, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2218, file: !519, line: 483, column: 6)
!2299 = !DILocation(line: 483, column: 22, scope: !2298)
!2300 = !DILocation(line: 483, column: 6, scope: !2218)
!2301 = !DILocation(line: 485, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !519, line: 484, column: 2)
!2303 = !DILocation(line: 485, column: 32, scope: !2302)
!2304 = !DILocation(line: 485, column: 48, scope: !2302)
!2305 = !DILocation(line: 486, column: 7, scope: !2302)
!2306 = !DILocation(line: 486, column: 39, scope: !2302)
!2307 = !DILocation(line: 485, column: 3, scope: !2302)
!2308 = !DILocation(line: 487, column: 3, scope: !2302)
!2309 = !DILocation(line: 490, column: 2, scope: !2218)
!2310 = !DILocation(line: 496, column: 2, scope: !2218)
!2311 = !DILocation(line: 499, column: 21, scope: !2218)
!2312 = !DILocation(line: 500, column: 1, scope: !2218)
!2313 = !DILocation(line: 500, column: 1, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2218, file: !519, discriminator: 1)
!2315 = distinct !DISubprogram(name: "utf16_lf2crlf", scope: !519, file: !519, line: 153, type: !2316, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !592)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!364, !364, !368}
!2318 = !DILocalVariable(name: "data", arg: 1, scope: !2315, file: !519, line: 153, type: !364)
!2319 = !DILocation(line: 153, column: 23, scope: !2315)
!2320 = !DILocalVariable(name: "size", arg: 2, scope: !2315, file: !519, line: 153, type: !368)
!2321 = !DILocation(line: 153, column: 38, scope: !2315)
!2322 = !DILocalVariable(name: "result", scope: !2315, file: !519, line: 155, type: !364)
!2323 = !DILocation(line: 155, column: 9, scope: !2315)
!2324 = !DILocalVariable(name: "inptr", scope: !2315, file: !519, line: 156, type: !514)
!2325 = !DILocation(line: 156, column: 10, scope: !2315)
!2326 = !DILocalVariable(name: "outptr", scope: !2315, file: !519, line: 156, type: !514)
!2327 = !DILocation(line: 156, column: 18, scope: !2315)
!2328 = !DILocalVariable(name: "swap_endianness", scope: !2315, file: !519, line: 157, type: !533)
!2329 = !DILocation(line: 157, column: 10, scope: !2315)
!2330 = !DILocation(line: 160, column: 21, scope: !2315)
!2331 = !DILocation(line: 160, column: 20, scope: !2315)
!2332 = !DILocation(line: 160, column: 26, scope: !2315)
!2333 = !DILocation(line: 160, column: 31, scope: !2315)
!2334 = !DILocation(line: 160, column: 11, scope: !2315)
!2335 = !DILocation(line: 160, column: 9, scope: !2315)
!2336 = !DILocation(line: 161, column: 6, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2315, file: !519, line: 161, column: 6)
!2338 = !DILocation(line: 161, column: 13, scope: !2337)
!2339 = !DILocation(line: 161, column: 6, scope: !2315)
!2340 = !DILocation(line: 162, column: 3, scope: !2337)
!2341 = !DILocation(line: 164, column: 21, scope: !2315)
!2342 = !DILocation(line: 164, column: 10, scope: !2315)
!2343 = !DILocation(line: 164, column: 8, scope: !2315)
!2344 = !DILocation(line: 165, column: 22, scope: !2315)
!2345 = !DILocation(line: 165, column: 11, scope: !2315)
!2346 = !DILocation(line: 165, column: 9, scope: !2315)
!2347 = !DILocation(line: 168, column: 22, scope: !2315)
!2348 = !DILocation(line: 168, column: 21, scope: !2315)
!2349 = !DILocation(line: 168, column: 28, scope: !2315)
!2350 = !DILocation(line: 168, column: 18, scope: !2315)
!2351 = !DILocalVariable(name: "uvalue_previous", scope: !2315, file: !519, line: 170, type: !515)
!2352 = !DILocation(line: 170, column: 9, scope: !2315)
!2353 = !DILocation(line: 171, column: 2, scope: !2315)
!2354 = !DILocation(line: 171, column: 19, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2315, file: !519, discriminator: 1)
!2356 = !DILocation(line: 171, column: 9, scope: !2355)
!2357 = !DILocation(line: 171, column: 27, scope: !2355)
!2358 = !DILocation(line: 171, column: 35, scope: !2355)
!2359 = !DILocation(line: 171, column: 34, scope: !2355)
!2360 = !DILocation(line: 171, column: 32, scope: !2355)
!2361 = !DILocation(line: 171, column: 25, scope: !2355)
!2362 = !DILocation(line: 171, column: 2, scope: !2355)
!2363 = !DILocalVariable(name: "uvalue", scope: !2364, file: !519, line: 173, type: !515)
!2364 = distinct !DILexicalBlock(scope: !2315, file: !519, line: 172, column: 2)
!2365 = !DILocation(line: 173, column: 10, scope: !2364)
!2366 = !DILocation(line: 173, column: 20, scope: !2364)
!2367 = !DILocation(line: 173, column: 19, scope: !2364)
!2368 = !DILocation(line: 174, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !519, line: 174, column: 7)
!2370 = !DILocation(line: 174, column: 7, scope: !2364)
!2371 = !DILocation(line: 175, column: 15, scope: !2369)
!2372 = !DILocation(line: 175, column: 22, scope: !2369)
!2373 = !DILocation(line: 175, column: 28, scope: !2369)
!2374 = !DILocation(line: 175, column: 41, scope: !2369)
!2375 = !DILocation(line: 175, column: 48, scope: !2369)
!2376 = !DILocation(line: 175, column: 38, scope: !2369)
!2377 = !DILocation(line: 175, column: 13, scope: !2369)
!2378 = !DILocation(line: 175, column: 11, scope: !2369)
!2379 = !DILocation(line: 175, column: 4, scope: !2369)
!2380 = !DILocation(line: 176, column: 8, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2364, file: !519, line: 176, column: 7)
!2382 = !DILocation(line: 176, column: 15, scope: !2381)
!2383 = !DILocation(line: 176, column: 24, scope: !2381)
!2384 = !DILocation(line: 176, column: 28, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2381, file: !519, discriminator: 1)
!2386 = !DILocation(line: 176, column: 44, scope: !2385)
!2387 = !DILocation(line: 176, column: 7, scope: !2385)
!2388 = !DILocation(line: 177, column: 16, scope: !2381)
!2389 = !DILocation(line: 177, column: 11, scope: !2381)
!2390 = !DILocation(line: 177, column: 14, scope: !2381)
!2391 = !DILocation(line: 177, column: 4, scope: !2381)
!2392 = !DILocation(line: 178, column: 21, scope: !2364)
!2393 = !DILocation(line: 178, column: 19, scope: !2364)
!2394 = !DILocation(line: 179, column: 21, scope: !2364)
!2395 = !DILocation(line: 179, column: 15, scope: !2364)
!2396 = !DILocation(line: 179, column: 10, scope: !2364)
!2397 = !DILocation(line: 179, column: 13, scope: !2364)
!2398 = !DILocation(line: 171, column: 2, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2315, file: !519, discriminator: 2)
!2400 = distinct !{!2400, !2353}
!2401 = !DILocation(line: 181, column: 9, scope: !2315)
!2402 = !DILocation(line: 181, column: 12, scope: !2315)
!2403 = !DILocation(line: 182, column: 20, scope: !2315)
!2404 = !DILocation(line: 182, column: 10, scope: !2315)
!2405 = !DILocation(line: 182, column: 29, scope: !2315)
!2406 = !DILocation(line: 182, column: 27, scope: !2315)
!2407 = !DILocation(line: 182, column: 3, scope: !2315)
!2408 = !DILocation(line: 182, column: 8, scope: !2315)
!2409 = !DILocation(line: 184, column: 9, scope: !2315)
!2410 = !DILocation(line: 184, column: 2, scope: !2315)
!2411 = !DILocation(line: 185, column: 1, scope: !2315)
