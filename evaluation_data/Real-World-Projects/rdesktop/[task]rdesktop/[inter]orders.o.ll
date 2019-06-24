; ModuleID = './[inter]orders.o.i'
source_filename = "./[inter]orders.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RDP_ORDER_STATE = type { i8, %struct._BOUNDS, %struct._DESTBLT_ORDER, %struct._PATBLT_ORDER, %struct._SCREENBLT_ORDER, %struct._LINE_ORDER, %struct._RECT_ORDER, %struct._DESKSAVE_ORDER, %struct._MEMBLT_ORDER, %struct._TRIBLT_ORDER, %struct._POLYGON_ORDER, %struct._POLYGON2_ORDER, %struct._POLYLINE_ORDER, %struct._ELLIPSE_ORDER, %struct._ELLIPSE2_ORDER, %struct._TEXT2_ORDER }
%struct._BOUNDS = type { i16, i16, i16, i16 }
%struct._DESTBLT_ORDER = type { i16, i16, i16, i16, i8 }
%struct._PATBLT_ORDER = type { i16, i16, i16, i16, i8, i32, i32, %struct._BRUSH }
%struct._BRUSH = type { i8, i8, i8, [8 x i8], %struct._BRUSHDATA* }
%struct._BRUSHDATA = type { i32, i32, i8* }
%struct._SCREENBLT_ORDER = type { i16, i16, i16, i16, i8, i16, i16 }
%struct._LINE_ORDER = type { i16, i16, i16, i16, i16, i32, i8, %struct._PEN }
%struct._PEN = type { i8, i8, i32 }
%struct._RECT_ORDER = type { i16, i16, i16, i16, i32 }
%struct._DESKSAVE_ORDER = type { i32, i16, i16, i16, i16, i8 }
%struct._MEMBLT_ORDER = type { i8, i8, i16, i16, i16, i16, i8, i16, i16, i16 }
%struct._TRIBLT_ORDER = type { i8, i8, i16, i16, i16, i16, i8, i16, i16, i32, i32, %struct._BRUSH, i16, i16 }
%struct._POLYGON_ORDER = type { i16, i16, i8, i8, i32, i8, i8, [256 x i8] }
%struct._POLYGON2_ORDER = type { i16, i16, i8, i8, i32, i32, %struct._BRUSH, i8, i8, [256 x i8] }
%struct._POLYLINE_ORDER = type { i16, i16, i8, i32, i8, i8, [256 x i8] }
%struct._ELLIPSE_ORDER = type { i16, i16, i16, i16, i8, i8, i32 }
%struct._ELLIPSE2_ORDER = type { i16, i16, i16, i16, i8, i8, %struct._BRUSH, i32, i32 }
%struct._TEXT2_ORDER = type { i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct._BRUSH, i16, i16, i8, [256 x i8] }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._RD_POINT = type { i16, i16 }
%struct._COLOURENTRY = type { i8, i8, i8 }
%struct._COLOURMAP = type { i16, %struct._COLOURENTRY* }

@g_order_state = internal global %struct._RDP_ORDER_STATE zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"process_orders(), order parsing failed\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"process_orders(), unhandled order type %d\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"process_secondary_order(), unhandled secondary order %d\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"process_raw_bpmcache(), cx=%d, cy=%d, id=%d, idx=%d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"process_colcache(), id=%d, n=%d\00", align 1
@g_rdp_version = external global i32, align 4
@.str.5 = private unnamed_addr constant [109 x i8] c"process_bmpcache(), cx=%d, cy=%d, id=%d, idx=%d, bpp=%d, size=%d, pad1=%d, bufsize=%d, pad2=%d, rs=%d, fs=%d\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"process_bmpcache(), Failed to decompress bitmap data\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"process_fontcache(), font=%d, n=%d\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"process_bmpcache2(), compr=%d, flags=%x, cx=%d, cy=%d, id=%d, idx=%d, Bpp=%d, bs=%d\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"process_bmpcache2(), failed to decompress bitmap data\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"process_bmpcache2(), ui_create_bitmap(), failed\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"process_brushcache(), idx=%d, wd=%d, ht=%d, type=0x%x sz=%d\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"process_brushcache(), incompatible brush, colour_code %d size %d\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"process_brushcache(), incompatible brush, width height %d %d\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"process_destblt(), op=0x%x, x=%d, y=%d, cx=%d, cy=%d\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"process_patblt(), op=0x%x, x=%d, y=%d, cx=%d, cy=%d, bs=%d, bg=0x%x, fg=0x%x)\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"setup_brush(), error getting brush data, style %x\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"process_screenblt(), op=0x%x, x=%d, y=%d, cx=%d, cy=%d, srcx=%d, srcy=%d)\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"process_line(), op=0x%x, sx=%d, sy=%d, dx=%d, dy=%d, fg=0x%x)\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"process_line(), bad ROP2 0x%x\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"process_rect(), x=%d, y=%d, cx=%d, cy=%d, fg=0x%x\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"process_desksave(), l=%d, t=%d, r=%d, b=%d, off=%d, op=%d\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"process_memblt(), op=0x%x, x=%d, y=%d, cx=%d, cy=%d, id=%d, idx=%d\00", align 1
@.str.23 = private unnamed_addr constant [92 x i8] c"process_triblt(), op=0x%x, x=%d, y=%d, cx=%d, cy=%d, id=%d, idx=%d, bs=%d, bg=0x%x, fg=0x%x\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"process_polygon(), x=%d, y=%d, op=0x%x, fm=%d, fg=0x%x, n=%d, sz=%d\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"process_polygon(), bad ROP2 0x%x\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"process_polygon(), polygon parse error\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"process_polygon2(), x=%d, y=%d, op=0x%x, fm=%d, bs=%d, bg=0x%x, fg=0x%x, n=%d, sz=%d)\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"process_polygon2(), bad ROP2 0x%x\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"process_polygon2(), polygon parse error\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"process_polyline(), x=%d, y=%d, op=0x%x, fg=0x%x, n=%d, sz=%d)\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"process_polyline(), bad ROP2 0x%x\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"process_polyline(), parse error\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"process_ellipse(), l=%d, t=%d, r=%d, b=%d, op=0x%x, fm=%d, fg=0x%x\00", align 1
@.str.34 = private unnamed_addr constant [84 x i8] c"process_ellipse2(), l=%d, t=%d, r=%d, b=%d, op=0x%x, fm=%d, bs=%d, bg=0x%x, fg=0x%x\00", align 1
@.str.35 = private unnamed_addr constant [150 x i8] c"process_text2(), x=%d, y=%d, cl=%d, ct=%d, cr=%d, cb=%d, bl=%d, bt=%d, br=%d, bb=%d, bs=%d, bg=0x%x, fg=0x%x, font=%d, fl=0x%x, op=0x%x, mix=%d, n=%d\00", align 1

; Function Attrs: nounwind uwtable
define void @process_orders(%struct.stream*, i16 zeroext) #0 !dbg !295 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct._RDP_ORDER_STATE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !314, metadata !315), !dbg !316
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !317, metadata !315), !dbg !318
  call void @llvm.dbg.declare(metadata %struct._RDP_ORDER_STATE** %5, metadata !319, metadata !315), !dbg !321
  store %struct._RDP_ORDER_STATE* @g_order_state, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %6, metadata !322, metadata !315), !dbg !323
  call void @llvm.dbg.declare(metadata i8* %7, metadata !324, metadata !315), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %8, metadata !326, metadata !315), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %9, metadata !329, metadata !315), !dbg !330
  store i32 0, i32* %9, align 4, !dbg !330
  call void @llvm.dbg.declare(metadata i32* %10, metadata !331, metadata !315), !dbg !333
  br label %11, !dbg !334

; <label>:11:                                     ; preds = %212, %2
  %12 = load i32, i32* %9, align 4, !dbg !335
  %13 = load i16, i16* %4, align 2, !dbg !337
  %14 = zext i16 %13 to i32, !dbg !337
  %15 = icmp slt i32 %12, %14, !dbg !338
  br i1 %15, label %16, label %215, !dbg !339

; <label>:16:                                     ; preds = %11
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !340
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !342
  %19 = load i8*, i8** %18, align 8, !dbg !343
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !343
  store i8* %20, i8** %18, align 8, !dbg !343
  %21 = load i8, i8* %19, align 1, !dbg !344
  store i8 %21, i8* %7, align 1, !dbg !345
  %22 = load i8, i8* %7, align 1, !dbg !346
  %23 = zext i8 %22 to i32, !dbg !346
  %24 = and i32 %23, 1, !dbg !348
  %25 = icmp ne i32 %24, 0, !dbg !348
  br i1 %25, label %27, label %26, !dbg !349

; <label>:26:                                     ; preds = %16
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)), !dbg !350
  br label %215, !dbg !352

; <label>:27:                                     ; preds = %16
  %28 = load i8, i8* %7, align 1, !dbg !353
  %29 = zext i8 %28 to i32, !dbg !353
  %30 = and i32 %29, 2, !dbg !355
  %31 = icmp ne i32 %30, 0, !dbg !355
  br i1 %31, label %32, label %34, !dbg !356

; <label>:32:                                     ; preds = %27
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !357
  call void @process_secondary_order(%struct.stream* %33), !dbg !359
  br label %212, !dbg !360

; <label>:34:                                     ; preds = %27
  %35 = load i8, i8* %7, align 1, !dbg !361
  %36 = zext i8 %35 to i32, !dbg !361
  %37 = and i32 %36, 8, !dbg !364
  %38 = icmp ne i32 %37, 0, !dbg !364
  br i1 %38, label %39, label %47, !dbg !365

; <label>:39:                                     ; preds = %34
  %40 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !366
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !368
  %42 = load i8*, i8** %41, align 8, !dbg !369
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !369
  store i8* %43, i8** %41, align 8, !dbg !369
  %44 = load i8, i8* %42, align 1, !dbg !370
  %45 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !371
  %46 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %45, i32 0, i32 0, !dbg !372
  store i8 %44, i8* %46, align 8, !dbg !373
  br label %47, !dbg !374

; <label>:47:                                     ; preds = %39, %34
  %48 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !375
  %49 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %48, i32 0, i32 0, !dbg !376
  %50 = load i8, i8* %49, align 8, !dbg !376
  %51 = zext i8 %50 to i32, !dbg !375
  switch i32 %51, label %54 [
    i32 14, label %52
    i32 27, label %52
    i32 1, label %53
    i32 13, label %53
    i32 9, label %53
    i32 21, label %53
    i32 26, label %53
  ], !dbg !377

; <label>:52:                                     ; preds = %47, %47
  store i32 3, i32* %8, align 4, !dbg !378
  br label %55, !dbg !380

; <label>:53:                                     ; preds = %47, %47, %47, %47, %47
  store i32 2, i32* %8, align 4, !dbg !381
  br label %55, !dbg !382

; <label>:54:                                     ; preds = %47
  store i32 1, i32* %8, align 4, !dbg !383
  br label %55, !dbg !384

; <label>:55:                                     ; preds = %54, %53, %52
  %56 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !385
  %57 = load i8, i8* %7, align 1, !dbg !386
  %58 = load i32, i32* %8, align 4, !dbg !387
  call void @rdp_in_present(%struct.stream* %56, i32* %6, i8 zeroext %57, i32 %58), !dbg !388
  %59 = load i8, i8* %7, align 1, !dbg !389
  %60 = zext i8 %59 to i32, !dbg !389
  %61 = and i32 %60, 4, !dbg !391
  %62 = icmp ne i32 %61, 0, !dbg !391
  br i1 %62, label %63, label %108, !dbg !392

; <label>:63:                                     ; preds = %55
  %64 = load i8, i8* %7, align 1, !dbg !393
  %65 = zext i8 %64 to i32, !dbg !393
  %66 = and i32 %65, 32, !dbg !396
  %67 = icmp ne i32 %66, 0, !dbg !396
  br i1 %67, label %73, label %68, !dbg !397

; <label>:68:                                     ; preds = %63
  %69 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !398
  %70 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !399
  %71 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %70, i32 0, i32 1, !dbg !400
  %72 = call i32 @rdp_parse_bounds(%struct.stream* %69, %struct._BOUNDS* %71), !dbg !401
  br label %73, !dbg !401

; <label>:73:                                     ; preds = %68, %63
  %74 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !402
  %75 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %74, i32 0, i32 1, !dbg !403
  %76 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %75, i32 0, i32 0, !dbg !404
  %77 = load i16, i16* %76, align 2, !dbg !404
  %78 = sext i16 %77 to i32, !dbg !402
  %79 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !405
  %80 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %79, i32 0, i32 1, !dbg !406
  %81 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %80, i32 0, i32 1, !dbg !407
  %82 = load i16, i16* %81, align 2, !dbg !407
  %83 = sext i16 %82 to i32, !dbg !405
  %84 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !408
  %85 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %84, i32 0, i32 1, !dbg !409
  %86 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %85, i32 0, i32 2, !dbg !410
  %87 = load i16, i16* %86, align 2, !dbg !410
  %88 = sext i16 %87 to i32, !dbg !408
  %89 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !411
  %90 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %89, i32 0, i32 1, !dbg !412
  %91 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %90, i32 0, i32 0, !dbg !413
  %92 = load i16, i16* %91, align 2, !dbg !413
  %93 = sext i16 %92 to i32, !dbg !411
  %94 = sub nsw i32 %88, %93, !dbg !414
  %95 = add nsw i32 %94, 1, !dbg !415
  %96 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !416
  %97 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %96, i32 0, i32 1, !dbg !417
  %98 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %97, i32 0, i32 3, !dbg !418
  %99 = load i16, i16* %98, align 2, !dbg !418
  %100 = sext i16 %99 to i32, !dbg !416
  %101 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !419
  %102 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %101, i32 0, i32 1, !dbg !420
  %103 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %102, i32 0, i32 1, !dbg !421
  %104 = load i16, i16* %103, align 2, !dbg !421
  %105 = sext i16 %104 to i32, !dbg !419
  %106 = sub nsw i32 %100, %105, !dbg !422
  %107 = add nsw i32 %106, 1, !dbg !423
  call void @ui_set_clip(i32 %78, i32 %83, i32 %95, i32 %107), !dbg !424
  br label %108, !dbg !425

; <label>:108:                                    ; preds = %73, %55
  %109 = load i8, i8* %7, align 1, !dbg !426
  %110 = zext i8 %109 to i32, !dbg !426
  %111 = and i32 %110, 16, !dbg !427
  store i32 %111, i32* %10, align 4, !dbg !428
  %112 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !429
  %113 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %112, i32 0, i32 0, !dbg !430
  %114 = load i8, i8* %113, align 8, !dbg !430
  %115 = zext i8 %114 to i32, !dbg !429
  switch i32 %115, label %200 [
    i32 0, label %116
    i32 1, label %122
    i32 2, label %128
    i32 9, label %134
    i32 10, label %140
    i32 11, label %146
    i32 13, label %152
    i32 14, label %158
    i32 20, label %164
    i32 21, label %170
    i32 22, label %176
    i32 25, label %182
    i32 26, label %188
    i32 27, label %194
  ], !dbg !431

; <label>:116:                                    ; preds = %108
  %117 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !432
  %118 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !434
  %119 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %118, i32 0, i32 2, !dbg !435
  %120 = load i32, i32* %6, align 4, !dbg !436
  %121 = load i32, i32* %10, align 4, !dbg !437
  call void @process_destblt(%struct.stream* %117, %struct._DESTBLT_ORDER* %119, i32 %120, i32 %121), !dbg !438
  br label %205, !dbg !439

; <label>:122:                                    ; preds = %108
  %123 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !440
  %124 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !441
  %125 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %124, i32 0, i32 3, !dbg !442
  %126 = load i32, i32* %6, align 4, !dbg !443
  %127 = load i32, i32* %10, align 4, !dbg !444
  call void @process_patblt(%struct.stream* %123, %struct._PATBLT_ORDER* %125, i32 %126, i32 %127), !dbg !445
  br label %205, !dbg !446

; <label>:128:                                    ; preds = %108
  %129 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !447
  %130 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !448
  %131 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %130, i32 0, i32 4, !dbg !449
  %132 = load i32, i32* %6, align 4, !dbg !450
  %133 = load i32, i32* %10, align 4, !dbg !451
  call void @process_screenblt(%struct.stream* %129, %struct._SCREENBLT_ORDER* %131, i32 %132, i32 %133), !dbg !452
  br label %205, !dbg !453

; <label>:134:                                    ; preds = %108
  %135 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !454
  %136 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !455
  %137 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %136, i32 0, i32 5, !dbg !456
  %138 = load i32, i32* %6, align 4, !dbg !457
  %139 = load i32, i32* %10, align 4, !dbg !458
  call void @process_line(%struct.stream* %135, %struct._LINE_ORDER* %137, i32 %138, i32 %139), !dbg !459
  br label %205, !dbg !460

; <label>:140:                                    ; preds = %108
  %141 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !461
  %142 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !462
  %143 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %142, i32 0, i32 6, !dbg !463
  %144 = load i32, i32* %6, align 4, !dbg !464
  %145 = load i32, i32* %10, align 4, !dbg !465
  call void @process_rect(%struct.stream* %141, %struct._RECT_ORDER* %143, i32 %144, i32 %145), !dbg !466
  br label %205, !dbg !467

; <label>:146:                                    ; preds = %108
  %147 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !468
  %148 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !469
  %149 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %148, i32 0, i32 7, !dbg !470
  %150 = load i32, i32* %6, align 4, !dbg !471
  %151 = load i32, i32* %10, align 4, !dbg !472
  call void @process_desksave(%struct.stream* %147, %struct._DESKSAVE_ORDER* %149, i32 %150, i32 %151), !dbg !473
  br label %205, !dbg !474

; <label>:152:                                    ; preds = %108
  %153 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !475
  %154 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !476
  %155 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %154, i32 0, i32 8, !dbg !477
  %156 = load i32, i32* %6, align 4, !dbg !478
  %157 = load i32, i32* %10, align 4, !dbg !479
  call void @process_memblt(%struct.stream* %153, %struct._MEMBLT_ORDER* %155, i32 %156, i32 %157), !dbg !480
  br label %205, !dbg !481

; <label>:158:                                    ; preds = %108
  %159 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !482
  %160 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !483
  %161 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %160, i32 0, i32 9, !dbg !484
  %162 = load i32, i32* %6, align 4, !dbg !485
  %163 = load i32, i32* %10, align 4, !dbg !486
  call void @process_triblt(%struct.stream* %159, %struct._TRIBLT_ORDER* %161, i32 %162, i32 %163), !dbg !487
  br label %205, !dbg !488

; <label>:164:                                    ; preds = %108
  %165 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !489
  %166 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !490
  %167 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %166, i32 0, i32 10, !dbg !491
  %168 = load i32, i32* %6, align 4, !dbg !492
  %169 = load i32, i32* %10, align 4, !dbg !493
  call void @process_polygon(%struct.stream* %165, %struct._POLYGON_ORDER* %167, i32 %168, i32 %169), !dbg !494
  br label %205, !dbg !495

; <label>:170:                                    ; preds = %108
  %171 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !496
  %172 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !497
  %173 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %172, i32 0, i32 11, !dbg !498
  %174 = load i32, i32* %6, align 4, !dbg !499
  %175 = load i32, i32* %10, align 4, !dbg !500
  call void @process_polygon2(%struct.stream* %171, %struct._POLYGON2_ORDER* %173, i32 %174, i32 %175), !dbg !501
  br label %205, !dbg !502

; <label>:176:                                    ; preds = %108
  %177 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !503
  %178 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !504
  %179 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %178, i32 0, i32 12, !dbg !505
  %180 = load i32, i32* %6, align 4, !dbg !506
  %181 = load i32, i32* %10, align 4, !dbg !507
  call void @process_polyline(%struct.stream* %177, %struct._POLYLINE_ORDER* %179, i32 %180, i32 %181), !dbg !508
  br label %205, !dbg !509

; <label>:182:                                    ; preds = %108
  %183 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !510
  %184 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !511
  %185 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %184, i32 0, i32 13, !dbg !512
  %186 = load i32, i32* %6, align 4, !dbg !513
  %187 = load i32, i32* %10, align 4, !dbg !514
  call void @process_ellipse(%struct.stream* %183, %struct._ELLIPSE_ORDER* %185, i32 %186, i32 %187), !dbg !515
  br label %205, !dbg !516

; <label>:188:                                    ; preds = %108
  %189 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !517
  %190 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !518
  %191 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %190, i32 0, i32 14, !dbg !519
  %192 = load i32, i32* %6, align 4, !dbg !520
  %193 = load i32, i32* %10, align 4, !dbg !521
  call void @process_ellipse2(%struct.stream* %189, %struct._ELLIPSE2_ORDER* %191, i32 %192, i32 %193), !dbg !522
  br label %205, !dbg !523

; <label>:194:                                    ; preds = %108
  %195 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !524
  %196 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !525
  %197 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %196, i32 0, i32 15, !dbg !526
  %198 = load i32, i32* %6, align 4, !dbg !527
  %199 = load i32, i32* %10, align 4, !dbg !528
  call void @process_text2(%struct.stream* %195, %struct._TEXT2_ORDER* %197, i32 %198, i32 %199), !dbg !529
  br label %205, !dbg !530

; <label>:200:                                    ; preds = %108
  %201 = load %struct._RDP_ORDER_STATE*, %struct._RDP_ORDER_STATE** %5, align 8, !dbg !531
  %202 = getelementptr inbounds %struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* %201, i32 0, i32 0, !dbg !532
  %203 = load i8, i8* %202, align 8, !dbg !532
  %204 = zext i8 %203 to i32, !dbg !531
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 %204), !dbg !533
  br label %215, !dbg !534

; <label>:205:                                    ; preds = %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116
  %206 = load i8, i8* %7, align 1, !dbg !535
  %207 = zext i8 %206 to i32, !dbg !535
  %208 = and i32 %207, 4, !dbg !537
  %209 = icmp ne i32 %208, 0, !dbg !537
  br i1 %209, label %210, label %211, !dbg !538

; <label>:210:                                    ; preds = %205
  call void @ui_reset_clip(), !dbg !539
  br label %211, !dbg !539

; <label>:211:                                    ; preds = %210, %205
  br label %212

; <label>:212:                                    ; preds = %211, %32
  %213 = load i32, i32* %9, align 4, !dbg !540
  %214 = add nsw i32 %213, 1, !dbg !540
  store i32 %214, i32* %9, align 4, !dbg !540
  br label %11, !dbg !541, !llvm.loop !543

; <label>:215:                                    ; preds = %200, %26, %11
  ret void, !dbg !544
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @process_secondary_order(%struct.stream*) #0 !dbg !545 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !548, metadata !315), !dbg !549
  call void @llvm.dbg.declare(metadata i16* %3, metadata !550, metadata !315), !dbg !551
  call void @llvm.dbg.declare(metadata i16* %4, metadata !552, metadata !315), !dbg !553
  call void @llvm.dbg.declare(metadata i8* %5, metadata !554, metadata !315), !dbg !555
  call void @llvm.dbg.declare(metadata i8** %6, metadata !556, metadata !315), !dbg !557
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !558
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !560
  %9 = load i8*, i8** %8, align 8, !dbg !560
  %10 = bitcast i8* %9 to i16*, !dbg !561
  %11 = load i16, i16* %10, align 2, !dbg !561
  store i16 %11, i16* %3, align 2, !dbg !562
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !563
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !564
  %14 = load i8*, i8** %13, align 8, !dbg !565
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !565
  store i8* %15, i8** %13, align 8, !dbg !565
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !566
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !568
  %18 = load i8*, i8** %17, align 8, !dbg !568
  %19 = bitcast i8* %18 to i16*, !dbg !569
  %20 = load i16, i16* %19, align 2, !dbg !569
  store i16 %20, i16* %4, align 2, !dbg !570
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !571
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !572
  %23 = load i8*, i8** %22, align 8, !dbg !573
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !573
  store i8* %24, i8** %22, align 8, !dbg !573
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !574
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !575
  %27 = load i8*, i8** %26, align 8, !dbg !576
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !576
  store i8* %28, i8** %26, align 8, !dbg !576
  %29 = load i8, i8* %27, align 1, !dbg !577
  store i8 %29, i8* %5, align 1, !dbg !578
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !579
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !580
  %32 = load i8*, i8** %31, align 8, !dbg !580
  %33 = load i16, i16* %3, align 2, !dbg !581
  %34 = sext i16 %33 to i32, !dbg !582
  %35 = sext i32 %34 to i64, !dbg !583
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !583
  %37 = getelementptr inbounds i8, i8* %36, i64 7, !dbg !584
  store i8* %37, i8** %6, align 8, !dbg !585
  %38 = load i8, i8* %5, align 1, !dbg !586
  %39 = zext i8 %38 to i32, !dbg !586
  switch i32 %39, label %57 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
    i32 4, label %48
    i32 5, label %51
    i32 7, label %54
  ], !dbg !587

; <label>:40:                                     ; preds = %1
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !588
  call void @process_raw_bmpcache(%struct.stream* %41), !dbg !590
  br label %60, !dbg !591

; <label>:42:                                     ; preds = %1
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !592
  call void @process_colcache(%struct.stream* %43), !dbg !593
  br label %60, !dbg !594

; <label>:44:                                     ; preds = %1
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !595
  call void @process_bmpcache(%struct.stream* %45), !dbg !596
  br label %60, !dbg !597

; <label>:46:                                     ; preds = %1
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !598
  call void @process_fontcache(%struct.stream* %47), !dbg !599
  br label %60, !dbg !600

; <label>:48:                                     ; preds = %1
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !601
  %50 = load i16, i16* %4, align 2, !dbg !602
  call void @process_bmpcache2(%struct.stream* %49, i16 zeroext %50, i32 0), !dbg !603
  br label %60, !dbg !604

; <label>:51:                                     ; preds = %1
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !605
  %53 = load i16, i16* %4, align 2, !dbg !606
  call void @process_bmpcache2(%struct.stream* %52, i16 zeroext %53, i32 1), !dbg !607
  br label %60, !dbg !608

; <label>:54:                                     ; preds = %1
  %55 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !609
  %56 = load i16, i16* %4, align 2, !dbg !610
  call void @process_brushcache(%struct.stream* %55, i16 zeroext %56), !dbg !611
  br label %60, !dbg !612

; <label>:57:                                     ; preds = %1
  %58 = load i8, i8* %5, align 1, !dbg !613
  %59 = zext i8 %58 to i32, !dbg !613
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i32 %59), !dbg !614
  br label %60, !dbg !615

; <label>:60:                                     ; preds = %57, %54, %51, %48, %46, %44, %42, %40
  %61 = load i8*, i8** %6, align 8, !dbg !616
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !617
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !618
  store i8* %61, i8** %63, align 8, !dbg !619
  ret void, !dbg !620
}

; Function Attrs: nounwind uwtable
define internal void @rdp_in_present(%struct.stream*, i32*, i8 zeroext, i32) #0 !dbg !621 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !624, metadata !315), !dbg !625
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !626, metadata !315), !dbg !627
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !628, metadata !315), !dbg !629
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !630, metadata !315), !dbg !631
  call void @llvm.dbg.declare(metadata i8* %9, metadata !632, metadata !315), !dbg !633
  call void @llvm.dbg.declare(metadata i32* %10, metadata !634, metadata !315), !dbg !635
  %11 = load i8, i8* %7, align 1, !dbg !636
  %12 = zext i8 %11 to i32, !dbg !636
  %13 = and i32 %12, 64, !dbg !638
  %14 = icmp ne i32 %13, 0, !dbg !638
  br i1 %14, label %15, label %18, !dbg !639

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %8, align 4, !dbg !640
  %17 = add nsw i32 %16, -1, !dbg !640
  store i32 %17, i32* %8, align 4, !dbg !640
  br label %18, !dbg !642

; <label>:18:                                     ; preds = %15, %4
  %19 = load i8, i8* %7, align 1, !dbg !643
  %20 = zext i8 %19 to i32, !dbg !643
  %21 = and i32 %20, 128, !dbg !645
  %22 = icmp ne i32 %21, 0, !dbg !645
  br i1 %22, label %23, label %31, !dbg !646

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %8, align 4, !dbg !647
  %25 = icmp slt i32 %24, 2, !dbg !650
  br i1 %25, label %26, label %27, !dbg !651

; <label>:26:                                     ; preds = %23
  store i32 0, i32* %8, align 4, !dbg !652
  br label %30, !dbg !653

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4, !dbg !654
  %29 = sub nsw i32 %28, 2, !dbg !654
  store i32 %29, i32* %8, align 4, !dbg !654
  br label %30

; <label>:30:                                     ; preds = %27, %26
  br label %31, !dbg !655

; <label>:31:                                     ; preds = %30, %18
  %32 = load i32*, i32** %6, align 8, !dbg !656
  store i32 0, i32* %32, align 4, !dbg !657
  store i32 0, i32* %10, align 4, !dbg !658
  br label %33, !dbg !660

; <label>:33:                                     ; preds = %51, %31
  %34 = load i32, i32* %10, align 4, !dbg !661
  %35 = load i32, i32* %8, align 4, !dbg !664
  %36 = icmp slt i32 %34, %35, !dbg !665
  br i1 %36, label %37, label %54, !dbg !666

; <label>:37:                                     ; preds = %33
  %38 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !667
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !669
  %40 = load i8*, i8** %39, align 8, !dbg !670
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !670
  store i8* %41, i8** %39, align 8, !dbg !670
  %42 = load i8, i8* %40, align 1, !dbg !671
  store i8 %42, i8* %9, align 1, !dbg !672
  %43 = load i8, i8* %9, align 1, !dbg !673
  %44 = zext i8 %43 to i32, !dbg !673
  %45 = load i32, i32* %10, align 4, !dbg !674
  %46 = mul nsw i32 %45, 8, !dbg !675
  %47 = shl i32 %44, %46, !dbg !676
  %48 = load i32*, i32** %6, align 8, !dbg !677
  %49 = load i32, i32* %48, align 4, !dbg !678
  %50 = or i32 %49, %47, !dbg !678
  store i32 %50, i32* %48, align 4, !dbg !678
  br label %51, !dbg !679

; <label>:51:                                     ; preds = %37
  %52 = load i32, i32* %10, align 4, !dbg !680
  %53 = add nsw i32 %52, 1, !dbg !680
  store i32 %53, i32* %10, align 4, !dbg !680
  br label %33, !dbg !682, !llvm.loop !683

; <label>:54:                                     ; preds = %33
  ret void, !dbg !685
}

; Function Attrs: nounwind uwtable
define internal i32 @rdp_parse_bounds(%struct.stream*, %struct._BOUNDS*) #0 !dbg !686 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct._BOUNDS*, align 8
  %5 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !690, metadata !315), !dbg !691
  store %struct._BOUNDS* %1, %struct._BOUNDS** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._BOUNDS** %4, metadata !692, metadata !315), !dbg !693
  call void @llvm.dbg.declare(metadata i8* %5, metadata !694, metadata !315), !dbg !695
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !696
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !697
  %8 = load i8*, i8** %7, align 8, !dbg !698
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !698
  store i8* %9, i8** %7, align 8, !dbg !698
  %10 = load i8, i8* %8, align 1, !dbg !699
  store i8 %10, i8* %5, align 1, !dbg !700
  %11 = load i8, i8* %5, align 1, !dbg !701
  %12 = zext i8 %11 to i32, !dbg !701
  %13 = and i32 %12, 1, !dbg !703
  %14 = icmp ne i32 %13, 0, !dbg !703
  br i1 %14, label %15, label %19, !dbg !704

; <label>:15:                                     ; preds = %2
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !705
  %17 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !706
  %18 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %17, i32 0, i32 0, !dbg !707
  call void @rdp_in_coord(%struct.stream* %16, i16* %18, i32 0), !dbg !708
  br label %29, !dbg !708

; <label>:19:                                     ; preds = %2
  %20 = load i8, i8* %5, align 1, !dbg !709
  %21 = zext i8 %20 to i32, !dbg !709
  %22 = and i32 %21, 16, !dbg !711
  %23 = icmp ne i32 %22, 0, !dbg !711
  br i1 %23, label %24, label %28, !dbg !712

; <label>:24:                                     ; preds = %19
  %25 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !713
  %26 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !714
  %27 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %26, i32 0, i32 0, !dbg !715
  call void @rdp_in_coord(%struct.stream* %25, i16* %27, i32 1), !dbg !716
  br label %28, !dbg !716

; <label>:28:                                     ; preds = %24, %19
  br label %29

; <label>:29:                                     ; preds = %28, %15
  %30 = load i8, i8* %5, align 1, !dbg !717
  %31 = zext i8 %30 to i32, !dbg !717
  %32 = and i32 %31, 2, !dbg !719
  %33 = icmp ne i32 %32, 0, !dbg !719
  br i1 %33, label %34, label %38, !dbg !720

; <label>:34:                                     ; preds = %29
  %35 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !721
  %36 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !722
  %37 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %36, i32 0, i32 1, !dbg !723
  call void @rdp_in_coord(%struct.stream* %35, i16* %37, i32 0), !dbg !724
  br label %48, !dbg !724

; <label>:38:                                     ; preds = %29
  %39 = load i8, i8* %5, align 1, !dbg !725
  %40 = zext i8 %39 to i32, !dbg !725
  %41 = and i32 %40, 32, !dbg !727
  %42 = icmp ne i32 %41, 0, !dbg !727
  br i1 %42, label %43, label %47, !dbg !728

; <label>:43:                                     ; preds = %38
  %44 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !729
  %45 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !730
  %46 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %45, i32 0, i32 1, !dbg !731
  call void @rdp_in_coord(%struct.stream* %44, i16* %46, i32 1), !dbg !732
  br label %47, !dbg !732

; <label>:47:                                     ; preds = %43, %38
  br label %48

; <label>:48:                                     ; preds = %47, %34
  %49 = load i8, i8* %5, align 1, !dbg !733
  %50 = zext i8 %49 to i32, !dbg !733
  %51 = and i32 %50, 4, !dbg !735
  %52 = icmp ne i32 %51, 0, !dbg !735
  br i1 %52, label %53, label %57, !dbg !736

; <label>:53:                                     ; preds = %48
  %54 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !737
  %55 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !738
  %56 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %55, i32 0, i32 2, !dbg !739
  call void @rdp_in_coord(%struct.stream* %54, i16* %56, i32 0), !dbg !740
  br label %67, !dbg !740

; <label>:57:                                     ; preds = %48
  %58 = load i8, i8* %5, align 1, !dbg !741
  %59 = zext i8 %58 to i32, !dbg !741
  %60 = and i32 %59, 64, !dbg !743
  %61 = icmp ne i32 %60, 0, !dbg !743
  br i1 %61, label %62, label %66, !dbg !744

; <label>:62:                                     ; preds = %57
  %63 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !745
  %64 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !746
  %65 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %64, i32 0, i32 2, !dbg !747
  call void @rdp_in_coord(%struct.stream* %63, i16* %65, i32 1), !dbg !748
  br label %66, !dbg !748

; <label>:66:                                     ; preds = %62, %57
  br label %67

; <label>:67:                                     ; preds = %66, %53
  %68 = load i8, i8* %5, align 1, !dbg !749
  %69 = zext i8 %68 to i32, !dbg !749
  %70 = and i32 %69, 8, !dbg !751
  %71 = icmp ne i32 %70, 0, !dbg !751
  br i1 %71, label %72, label %76, !dbg !752

; <label>:72:                                     ; preds = %67
  %73 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !753
  %74 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !754
  %75 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %74, i32 0, i32 3, !dbg !755
  call void @rdp_in_coord(%struct.stream* %73, i16* %75, i32 0), !dbg !756
  br label %86, !dbg !756

; <label>:76:                                     ; preds = %67
  %77 = load i8, i8* %5, align 1, !dbg !757
  %78 = zext i8 %77 to i32, !dbg !757
  %79 = and i32 %78, 128, !dbg !759
  %80 = icmp ne i32 %79, 0, !dbg !759
  br i1 %80, label %81, label %85, !dbg !760

; <label>:81:                                     ; preds = %76
  %82 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !761
  %83 = load %struct._BOUNDS*, %struct._BOUNDS** %4, align 8, !dbg !762
  %84 = getelementptr inbounds %struct._BOUNDS, %struct._BOUNDS* %83, i32 0, i32 3, !dbg !763
  call void @rdp_in_coord(%struct.stream* %82, i16* %84, i32 1), !dbg !764
  br label %85, !dbg !764

; <label>:85:                                     ; preds = %81, %76
  br label %86

; <label>:86:                                     ; preds = %85, %72
  %87 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !765
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !766
  %89 = load i8*, i8** %88, align 8, !dbg !766
  %90 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !767
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 1, !dbg !768
  %92 = load i8*, i8** %91, align 8, !dbg !768
  %93 = icmp ule i8* %89, %92, !dbg !769
  %94 = zext i1 %93 to i32, !dbg !769
  ret i32 %94, !dbg !770
}

declare void @ui_set_clip(i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @process_destblt(%struct.stream*, %struct._DESTBLT_ORDER*, i32, i32) #0 !dbg !771 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._DESTBLT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !775, metadata !315), !dbg !776
  store %struct._DESTBLT_ORDER* %1, %struct._DESTBLT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DESTBLT_ORDER** %6, metadata !777, metadata !315), !dbg !778
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !779, metadata !315), !dbg !780
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !781, metadata !315), !dbg !782
  %9 = load i32, i32* %7, align 4, !dbg !783
  %10 = and i32 %9, 1, !dbg !785
  %11 = icmp ne i32 %10, 0, !dbg !785
  br i1 %11, label %12, label %17, !dbg !786

; <label>:12:                                     ; preds = %4
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !787
  %14 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !788
  %15 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %14, i32 0, i32 0, !dbg !789
  %16 = load i32, i32* %8, align 4, !dbg !790
  call void @rdp_in_coord(%struct.stream* %13, i16* %15, i32 %16), !dbg !791
  br label %17, !dbg !791

; <label>:17:                                     ; preds = %12, %4
  %18 = load i32, i32* %7, align 4, !dbg !792
  %19 = and i32 %18, 2, !dbg !794
  %20 = icmp ne i32 %19, 0, !dbg !794
  br i1 %20, label %21, label %26, !dbg !795

; <label>:21:                                     ; preds = %17
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !796
  %23 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !797
  %24 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %23, i32 0, i32 1, !dbg !798
  %25 = load i32, i32* %8, align 4, !dbg !799
  call void @rdp_in_coord(%struct.stream* %22, i16* %24, i32 %25), !dbg !800
  br label %26, !dbg !800

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %7, align 4, !dbg !801
  %28 = and i32 %27, 4, !dbg !803
  %29 = icmp ne i32 %28, 0, !dbg !803
  br i1 %29, label %30, label %35, !dbg !804

; <label>:30:                                     ; preds = %26
  %31 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !805
  %32 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !806
  %33 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %32, i32 0, i32 2, !dbg !807
  %34 = load i32, i32* %8, align 4, !dbg !808
  call void @rdp_in_coord(%struct.stream* %31, i16* %33, i32 %34), !dbg !809
  br label %35, !dbg !809

; <label>:35:                                     ; preds = %30, %26
  %36 = load i32, i32* %7, align 4, !dbg !810
  %37 = and i32 %36, 8, !dbg !812
  %38 = icmp ne i32 %37, 0, !dbg !812
  br i1 %38, label %39, label %44, !dbg !813

; <label>:39:                                     ; preds = %35
  %40 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !814
  %41 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !815
  %42 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %41, i32 0, i32 3, !dbg !816
  %43 = load i32, i32* %8, align 4, !dbg !817
  call void @rdp_in_coord(%struct.stream* %40, i16* %42, i32 %43), !dbg !818
  br label %44, !dbg !818

; <label>:44:                                     ; preds = %39, %35
  %45 = load i32, i32* %7, align 4, !dbg !819
  %46 = and i32 %45, 16, !dbg !821
  %47 = icmp ne i32 %46, 0, !dbg !821
  br i1 %47, label %48, label %56, !dbg !822

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !823
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !824
  %51 = load i8*, i8** %50, align 8, !dbg !825
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !825
  store i8* %52, i8** %50, align 8, !dbg !825
  %53 = load i8, i8* %51, align 1, !dbg !826
  %54 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !827
  %55 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %54, i32 0, i32 4, !dbg !828
  store i8 %53, i8* %55, align 2, !dbg !829
  br label %56, !dbg !827

; <label>:56:                                     ; preds = %48, %44
  %57 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !830
  %58 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %57, i32 0, i32 4, !dbg !831
  %59 = load i8, i8* %58, align 2, !dbg !831
  %60 = zext i8 %59 to i32, !dbg !830
  %61 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !832
  %62 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %61, i32 0, i32 0, !dbg !833
  %63 = load i16, i16* %62, align 2, !dbg !833
  %64 = sext i16 %63 to i32, !dbg !832
  %65 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !834
  %66 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %65, i32 0, i32 1, !dbg !835
  %67 = load i16, i16* %66, align 2, !dbg !835
  %68 = sext i16 %67 to i32, !dbg !834
  %69 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !836
  %70 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %69, i32 0, i32 2, !dbg !837
  %71 = load i16, i16* %70, align 2, !dbg !837
  %72 = sext i16 %71 to i32, !dbg !836
  %73 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !838
  %74 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %73, i32 0, i32 3, !dbg !839
  %75 = load i16, i16* %74, align 2, !dbg !839
  %76 = sext i16 %75 to i32, !dbg !838
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), i32 %60, i32 %64, i32 %68, i32 %72, i32 %76), !dbg !840
  %77 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !841
  %78 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %77, i32 0, i32 4, !dbg !842
  %79 = load i8, i8* %78, align 2, !dbg !842
  %80 = zext i8 %79 to i32, !dbg !841
  %81 = and i32 %80, 15, !dbg !843
  %82 = trunc i32 %81 to i8, !dbg !844
  %83 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !845
  %84 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %83, i32 0, i32 0, !dbg !846
  %85 = load i16, i16* %84, align 2, !dbg !846
  %86 = sext i16 %85 to i32, !dbg !845
  %87 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !847
  %88 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %87, i32 0, i32 1, !dbg !848
  %89 = load i16, i16* %88, align 2, !dbg !848
  %90 = sext i16 %89 to i32, !dbg !847
  %91 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !849
  %92 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %91, i32 0, i32 2, !dbg !850
  %93 = load i16, i16* %92, align 2, !dbg !850
  %94 = sext i16 %93 to i32, !dbg !849
  %95 = load %struct._DESTBLT_ORDER*, %struct._DESTBLT_ORDER** %6, align 8, !dbg !851
  %96 = getelementptr inbounds %struct._DESTBLT_ORDER, %struct._DESTBLT_ORDER* %95, i32 0, i32 3, !dbg !852
  %97 = load i16, i16* %96, align 2, !dbg !852
  %98 = sext i16 %97 to i32, !dbg !851
  call void @ui_destblt(i8 zeroext %82, i32 %86, i32 %90, i32 %94, i32 %98), !dbg !853
  ret void, !dbg !854
}

; Function Attrs: nounwind uwtable
define internal void @process_patblt(%struct.stream*, %struct._PATBLT_ORDER*, i32, i32) #0 !dbg !855 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._PATBLT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._BRUSH, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !859, metadata !315), !dbg !860
  store %struct._PATBLT_ORDER* %1, %struct._PATBLT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._PATBLT_ORDER** %6, metadata !861, metadata !315), !dbg !862
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !863, metadata !315), !dbg !864
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !865, metadata !315), !dbg !866
  call void @llvm.dbg.declare(metadata %struct._BRUSH* %9, metadata !867, metadata !315), !dbg !868
  %10 = load i32, i32* %7, align 4, !dbg !869
  %11 = and i32 %10, 1, !dbg !871
  %12 = icmp ne i32 %11, 0, !dbg !871
  br i1 %12, label %13, label %18, !dbg !872

; <label>:13:                                     ; preds = %4
  %14 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !873
  %15 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !874
  %16 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %15, i32 0, i32 0, !dbg !875
  %17 = load i32, i32* %8, align 4, !dbg !876
  call void @rdp_in_coord(%struct.stream* %14, i16* %16, i32 %17), !dbg !877
  br label %18, !dbg !877

; <label>:18:                                     ; preds = %13, %4
  %19 = load i32, i32* %7, align 4, !dbg !878
  %20 = and i32 %19, 2, !dbg !880
  %21 = icmp ne i32 %20, 0, !dbg !880
  br i1 %21, label %22, label %27, !dbg !881

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !882
  %24 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !883
  %25 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %24, i32 0, i32 1, !dbg !884
  %26 = load i32, i32* %8, align 4, !dbg !885
  call void @rdp_in_coord(%struct.stream* %23, i16* %25, i32 %26), !dbg !886
  br label %27, !dbg !886

; <label>:27:                                     ; preds = %22, %18
  %28 = load i32, i32* %7, align 4, !dbg !887
  %29 = and i32 %28, 4, !dbg !889
  %30 = icmp ne i32 %29, 0, !dbg !889
  br i1 %30, label %31, label %36, !dbg !890

; <label>:31:                                     ; preds = %27
  %32 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !891
  %33 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !892
  %34 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %33, i32 0, i32 2, !dbg !893
  %35 = load i32, i32* %8, align 4, !dbg !894
  call void @rdp_in_coord(%struct.stream* %32, i16* %34, i32 %35), !dbg !895
  br label %36, !dbg !895

; <label>:36:                                     ; preds = %31, %27
  %37 = load i32, i32* %7, align 4, !dbg !896
  %38 = and i32 %37, 8, !dbg !898
  %39 = icmp ne i32 %38, 0, !dbg !898
  br i1 %39, label %40, label %45, !dbg !899

; <label>:40:                                     ; preds = %36
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !900
  %42 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !901
  %43 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %42, i32 0, i32 3, !dbg !902
  %44 = load i32, i32* %8, align 4, !dbg !903
  call void @rdp_in_coord(%struct.stream* %41, i16* %43, i32 %44), !dbg !904
  br label %45, !dbg !904

; <label>:45:                                     ; preds = %40, %36
  %46 = load i32, i32* %7, align 4, !dbg !905
  %47 = and i32 %46, 16, !dbg !907
  %48 = icmp ne i32 %47, 0, !dbg !907
  br i1 %48, label %49, label %57, !dbg !908

; <label>:49:                                     ; preds = %45
  %50 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !909
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !910
  %52 = load i8*, i8** %51, align 8, !dbg !911
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !911
  store i8* %53, i8** %51, align 8, !dbg !911
  %54 = load i8, i8* %52, align 1, !dbg !912
  %55 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !913
  %56 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %55, i32 0, i32 4, !dbg !914
  store i8 %54, i8* %56, align 8, !dbg !915
  br label %57, !dbg !913

; <label>:57:                                     ; preds = %49, %45
  %58 = load i32, i32* %7, align 4, !dbg !916
  %59 = and i32 %58, 32, !dbg !918
  %60 = icmp ne i32 %59, 0, !dbg !918
  br i1 %60, label %61, label %65, !dbg !919

; <label>:61:                                     ; preds = %57
  %62 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !920
  %63 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !921
  %64 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %63, i32 0, i32 5, !dbg !922
  call void @rdp_in_colour(%struct.stream* %62, i32* %64), !dbg !923
  br label %65, !dbg !923

; <label>:65:                                     ; preds = %61, %57
  %66 = load i32, i32* %7, align 4, !dbg !924
  %67 = and i32 %66, 64, !dbg !926
  %68 = icmp ne i32 %67, 0, !dbg !926
  br i1 %68, label %69, label %73, !dbg !927

; <label>:69:                                     ; preds = %65
  %70 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !928
  %71 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !929
  %72 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %71, i32 0, i32 6, !dbg !930
  call void @rdp_in_colour(%struct.stream* %70, i32* %72), !dbg !931
  br label %73, !dbg !931

; <label>:73:                                     ; preds = %69, %65
  %74 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !932
  %75 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !933
  %76 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %75, i32 0, i32 7, !dbg !934
  %77 = load i32, i32* %7, align 4, !dbg !935
  %78 = lshr i32 %77, 7, !dbg !936
  %79 = call i32 @rdp_parse_brush(%struct.stream* %74, %struct._BRUSH* %76, i32 %78), !dbg !937
  %80 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !938
  %81 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %80, i32 0, i32 4, !dbg !939
  %82 = load i8, i8* %81, align 8, !dbg !939
  %83 = zext i8 %82 to i32, !dbg !938
  %84 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !940
  %85 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %84, i32 0, i32 0, !dbg !941
  %86 = load i16, i16* %85, align 8, !dbg !941
  %87 = sext i16 %86 to i32, !dbg !940
  %88 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !942
  %89 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %88, i32 0, i32 1, !dbg !943
  %90 = load i16, i16* %89, align 2, !dbg !943
  %91 = sext i16 %90 to i32, !dbg !942
  %92 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !944
  %93 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %92, i32 0, i32 2, !dbg !945
  %94 = load i16, i16* %93, align 4, !dbg !945
  %95 = sext i16 %94 to i32, !dbg !944
  %96 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !946
  %97 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %96, i32 0, i32 3, !dbg !947
  %98 = load i16, i16* %97, align 2, !dbg !947
  %99 = sext i16 %98 to i32, !dbg !946
  %100 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !948
  %101 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %100, i32 0, i32 7, !dbg !949
  %102 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %101, i32 0, i32 2, !dbg !950
  %103 = load i8, i8* %102, align 2, !dbg !950
  %104 = zext i8 %103 to i32, !dbg !948
  %105 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !951
  %106 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %105, i32 0, i32 5, !dbg !952
  %107 = load i32, i32* %106, align 4, !dbg !952
  %108 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !953
  %109 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %108, i32 0, i32 6, !dbg !954
  %110 = load i32, i32* %109, align 8, !dbg !954
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i32 0, i32 0), i32 %83, i32 %87, i32 %91, i32 %95, i32 %99, i32 %104, i32 %107, i32 %110), !dbg !955
  %111 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !956
  %112 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %111, i32 0, i32 7, !dbg !957
  call void @setup_brush(%struct._BRUSH* %9, %struct._BRUSH* %112), !dbg !958
  %113 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !959
  %114 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %113, i32 0, i32 4, !dbg !960
  %115 = load i8, i8* %114, align 8, !dbg !960
  %116 = zext i8 %115 to i32, !dbg !959
  %117 = and i32 %116, 3, !dbg !961
  %118 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !962
  %119 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %118, i32 0, i32 4, !dbg !963
  %120 = load i8, i8* %119, align 8, !dbg !963
  %121 = zext i8 %120 to i32, !dbg !962
  %122 = and i32 %121, 48, !dbg !964
  %123 = ashr i32 %122, 2, !dbg !965
  %124 = or i32 %117, %123, !dbg !966
  %125 = trunc i32 %124 to i8, !dbg !967
  %126 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !968
  %127 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %126, i32 0, i32 0, !dbg !969
  %128 = load i16, i16* %127, align 8, !dbg !969
  %129 = sext i16 %128 to i32, !dbg !968
  %130 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !970
  %131 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %130, i32 0, i32 1, !dbg !971
  %132 = load i16, i16* %131, align 2, !dbg !971
  %133 = sext i16 %132 to i32, !dbg !970
  %134 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !972
  %135 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %134, i32 0, i32 2, !dbg !973
  %136 = load i16, i16* %135, align 4, !dbg !973
  %137 = sext i16 %136 to i32, !dbg !972
  %138 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !974
  %139 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %138, i32 0, i32 3, !dbg !975
  %140 = load i16, i16* %139, align 2, !dbg !975
  %141 = sext i16 %140 to i32, !dbg !974
  %142 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !976
  %143 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %142, i32 0, i32 5, !dbg !977
  %144 = load i32, i32* %143, align 4, !dbg !977
  %145 = load %struct._PATBLT_ORDER*, %struct._PATBLT_ORDER** %6, align 8, !dbg !978
  %146 = getelementptr inbounds %struct._PATBLT_ORDER, %struct._PATBLT_ORDER* %145, i32 0, i32 6, !dbg !979
  %147 = load i32, i32* %146, align 8, !dbg !979
  call void @ui_patblt(i8 zeroext %125, i32 %129, i32 %133, i32 %137, i32 %141, %struct._BRUSH* %9, i32 %144, i32 %147), !dbg !980
  ret void, !dbg !981
}

; Function Attrs: nounwind uwtable
define internal void @process_screenblt(%struct.stream*, %struct._SCREENBLT_ORDER*, i32, i32) #0 !dbg !982 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._SCREENBLT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !986, metadata !315), !dbg !987
  store %struct._SCREENBLT_ORDER* %1, %struct._SCREENBLT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SCREENBLT_ORDER** %6, metadata !988, metadata !315), !dbg !989
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !990, metadata !315), !dbg !991
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !992, metadata !315), !dbg !993
  %9 = load i32, i32* %7, align 4, !dbg !994
  %10 = and i32 %9, 1, !dbg !996
  %11 = icmp ne i32 %10, 0, !dbg !996
  br i1 %11, label %12, label %17, !dbg !997

; <label>:12:                                     ; preds = %4
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !998
  %14 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !999
  %15 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %14, i32 0, i32 0, !dbg !1000
  %16 = load i32, i32* %8, align 4, !dbg !1001
  call void @rdp_in_coord(%struct.stream* %13, i16* %15, i32 %16), !dbg !1002
  br label %17, !dbg !1002

; <label>:17:                                     ; preds = %12, %4
  %18 = load i32, i32* %7, align 4, !dbg !1003
  %19 = and i32 %18, 2, !dbg !1005
  %20 = icmp ne i32 %19, 0, !dbg !1005
  br i1 %20, label %21, label %26, !dbg !1006

; <label>:21:                                     ; preds = %17
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1007
  %23 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1008
  %24 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %23, i32 0, i32 1, !dbg !1009
  %25 = load i32, i32* %8, align 4, !dbg !1010
  call void @rdp_in_coord(%struct.stream* %22, i16* %24, i32 %25), !dbg !1011
  br label %26, !dbg !1011

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %7, align 4, !dbg !1012
  %28 = and i32 %27, 4, !dbg !1014
  %29 = icmp ne i32 %28, 0, !dbg !1014
  br i1 %29, label %30, label %35, !dbg !1015

; <label>:30:                                     ; preds = %26
  %31 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1016
  %32 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1017
  %33 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %32, i32 0, i32 2, !dbg !1018
  %34 = load i32, i32* %8, align 4, !dbg !1019
  call void @rdp_in_coord(%struct.stream* %31, i16* %33, i32 %34), !dbg !1020
  br label %35, !dbg !1020

; <label>:35:                                     ; preds = %30, %26
  %36 = load i32, i32* %7, align 4, !dbg !1021
  %37 = and i32 %36, 8, !dbg !1023
  %38 = icmp ne i32 %37, 0, !dbg !1023
  br i1 %38, label %39, label %44, !dbg !1024

; <label>:39:                                     ; preds = %35
  %40 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1025
  %41 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1026
  %42 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %41, i32 0, i32 3, !dbg !1027
  %43 = load i32, i32* %8, align 4, !dbg !1028
  call void @rdp_in_coord(%struct.stream* %40, i16* %42, i32 %43), !dbg !1029
  br label %44, !dbg !1029

; <label>:44:                                     ; preds = %39, %35
  %45 = load i32, i32* %7, align 4, !dbg !1030
  %46 = and i32 %45, 16, !dbg !1032
  %47 = icmp ne i32 %46, 0, !dbg !1032
  br i1 %47, label %48, label %56, !dbg !1033

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1034
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !1035
  %51 = load i8*, i8** %50, align 8, !dbg !1036
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !1036
  store i8* %52, i8** %50, align 8, !dbg !1036
  %53 = load i8, i8* %51, align 1, !dbg !1037
  %54 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1038
  %55 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %54, i32 0, i32 4, !dbg !1039
  store i8 %53, i8* %55, align 2, !dbg !1040
  br label %56, !dbg !1038

; <label>:56:                                     ; preds = %48, %44
  %57 = load i32, i32* %7, align 4, !dbg !1041
  %58 = and i32 %57, 32, !dbg !1043
  %59 = icmp ne i32 %58, 0, !dbg !1043
  br i1 %59, label %60, label %65, !dbg !1044

; <label>:60:                                     ; preds = %56
  %61 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1045
  %62 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1046
  %63 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %62, i32 0, i32 5, !dbg !1047
  %64 = load i32, i32* %8, align 4, !dbg !1048
  call void @rdp_in_coord(%struct.stream* %61, i16* %63, i32 %64), !dbg !1049
  br label %65, !dbg !1049

; <label>:65:                                     ; preds = %60, %56
  %66 = load i32, i32* %7, align 4, !dbg !1050
  %67 = and i32 %66, 64, !dbg !1052
  %68 = icmp ne i32 %67, 0, !dbg !1052
  br i1 %68, label %69, label %74, !dbg !1053

; <label>:69:                                     ; preds = %65
  %70 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1054
  %71 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1055
  %72 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %71, i32 0, i32 6, !dbg !1056
  %73 = load i32, i32* %8, align 4, !dbg !1057
  call void @rdp_in_coord(%struct.stream* %70, i16* %72, i32 %73), !dbg !1058
  br label %74, !dbg !1058

; <label>:74:                                     ; preds = %69, %65
  %75 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1059
  %76 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %75, i32 0, i32 4, !dbg !1060
  %77 = load i8, i8* %76, align 2, !dbg !1060
  %78 = zext i8 %77 to i32, !dbg !1059
  %79 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1061
  %80 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %79, i32 0, i32 0, !dbg !1062
  %81 = load i16, i16* %80, align 2, !dbg !1062
  %82 = sext i16 %81 to i32, !dbg !1061
  %83 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1063
  %84 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %83, i32 0, i32 1, !dbg !1064
  %85 = load i16, i16* %84, align 2, !dbg !1064
  %86 = sext i16 %85 to i32, !dbg !1063
  %87 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1065
  %88 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %87, i32 0, i32 2, !dbg !1066
  %89 = load i16, i16* %88, align 2, !dbg !1066
  %90 = sext i16 %89 to i32, !dbg !1065
  %91 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1067
  %92 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %91, i32 0, i32 3, !dbg !1068
  %93 = load i16, i16* %92, align 2, !dbg !1068
  %94 = sext i16 %93 to i32, !dbg !1067
  %95 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1069
  %96 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %95, i32 0, i32 5, !dbg !1070
  %97 = load i16, i16* %96, align 2, !dbg !1070
  %98 = sext i16 %97 to i32, !dbg !1069
  %99 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1071
  %100 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %99, i32 0, i32 6, !dbg !1072
  %101 = load i16, i16* %100, align 2, !dbg !1072
  %102 = sext i16 %101 to i32, !dbg !1071
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i32 0, i32 0), i32 %78, i32 %82, i32 %86, i32 %90, i32 %94, i32 %98, i32 %102), !dbg !1073
  %103 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1074
  %104 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %103, i32 0, i32 4, !dbg !1075
  %105 = load i8, i8* %104, align 2, !dbg !1075
  %106 = zext i8 %105 to i32, !dbg !1074
  %107 = and i32 %106, 15, !dbg !1076
  %108 = trunc i32 %107 to i8, !dbg !1077
  %109 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1078
  %110 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %109, i32 0, i32 0, !dbg !1079
  %111 = load i16, i16* %110, align 2, !dbg !1079
  %112 = sext i16 %111 to i32, !dbg !1078
  %113 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1080
  %114 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %113, i32 0, i32 1, !dbg !1081
  %115 = load i16, i16* %114, align 2, !dbg !1081
  %116 = sext i16 %115 to i32, !dbg !1080
  %117 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1082
  %118 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %117, i32 0, i32 2, !dbg !1083
  %119 = load i16, i16* %118, align 2, !dbg !1083
  %120 = sext i16 %119 to i32, !dbg !1082
  %121 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1084
  %122 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %121, i32 0, i32 3, !dbg !1085
  %123 = load i16, i16* %122, align 2, !dbg !1085
  %124 = sext i16 %123 to i32, !dbg !1084
  %125 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1086
  %126 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %125, i32 0, i32 5, !dbg !1087
  %127 = load i16, i16* %126, align 2, !dbg !1087
  %128 = sext i16 %127 to i32, !dbg !1086
  %129 = load %struct._SCREENBLT_ORDER*, %struct._SCREENBLT_ORDER** %6, align 8, !dbg !1088
  %130 = getelementptr inbounds %struct._SCREENBLT_ORDER, %struct._SCREENBLT_ORDER* %129, i32 0, i32 6, !dbg !1089
  %131 = load i16, i16* %130, align 2, !dbg !1089
  %132 = sext i16 %131 to i32, !dbg !1088
  call void @ui_screenblt(i8 zeroext %108, i32 %112, i32 %116, i32 %120, i32 %124, i32 %128, i32 %132), !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: nounwind uwtable
define internal void @process_line(%struct.stream*, %struct._LINE_ORDER*, i32, i32) #0 !dbg !1092 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._LINE_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1096, metadata !315), !dbg !1097
  store %struct._LINE_ORDER* %1, %struct._LINE_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_ORDER** %6, metadata !1098, metadata !315), !dbg !1099
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1100, metadata !315), !dbg !1101
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1102, metadata !315), !dbg !1103
  %9 = load i32, i32* %7, align 4, !dbg !1104
  %10 = and i32 %9, 1, !dbg !1106
  %11 = icmp ne i32 %10, 0, !dbg !1106
  br i1 %11, label %12, label %24, !dbg !1107

; <label>:12:                                     ; preds = %4
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1108
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !1110
  %15 = load i8*, i8** %14, align 8, !dbg !1110
  %16 = bitcast i8* %15 to i16*, !dbg !1111
  %17 = load i16, i16* %16, align 2, !dbg !1111
  %18 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1112
  %19 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %18, i32 0, i32 0, !dbg !1113
  store i16 %17, i16* %19, align 4, !dbg !1114
  %20 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1115
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !1116
  %22 = load i8*, i8** %21, align 8, !dbg !1117
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !1117
  store i8* %23, i8** %21, align 8, !dbg !1117
  br label %24, !dbg !1118

; <label>:24:                                     ; preds = %12, %4
  %25 = load i32, i32* %7, align 4, !dbg !1119
  %26 = and i32 %25, 2, !dbg !1121
  %27 = icmp ne i32 %26, 0, !dbg !1121
  br i1 %27, label %28, label %33, !dbg !1122

; <label>:28:                                     ; preds = %24
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1123
  %30 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1124
  %31 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %30, i32 0, i32 1, !dbg !1125
  %32 = load i32, i32* %8, align 4, !dbg !1126
  call void @rdp_in_coord(%struct.stream* %29, i16* %31, i32 %32), !dbg !1127
  br label %33, !dbg !1127

; <label>:33:                                     ; preds = %28, %24
  %34 = load i32, i32* %7, align 4, !dbg !1128
  %35 = and i32 %34, 4, !dbg !1130
  %36 = icmp ne i32 %35, 0, !dbg !1130
  br i1 %36, label %37, label %42, !dbg !1131

; <label>:37:                                     ; preds = %33
  %38 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1132
  %39 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1133
  %40 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %39, i32 0, i32 2, !dbg !1134
  %41 = load i32, i32* %8, align 4, !dbg !1135
  call void @rdp_in_coord(%struct.stream* %38, i16* %40, i32 %41), !dbg !1136
  br label %42, !dbg !1136

; <label>:42:                                     ; preds = %37, %33
  %43 = load i32, i32* %7, align 4, !dbg !1137
  %44 = and i32 %43, 8, !dbg !1139
  %45 = icmp ne i32 %44, 0, !dbg !1139
  br i1 %45, label %46, label %51, !dbg !1140

; <label>:46:                                     ; preds = %42
  %47 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1141
  %48 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1142
  %49 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %48, i32 0, i32 3, !dbg !1143
  %50 = load i32, i32* %8, align 4, !dbg !1144
  call void @rdp_in_coord(%struct.stream* %47, i16* %49, i32 %50), !dbg !1145
  br label %51, !dbg !1145

; <label>:51:                                     ; preds = %46, %42
  %52 = load i32, i32* %7, align 4, !dbg !1146
  %53 = and i32 %52, 16, !dbg !1148
  %54 = icmp ne i32 %53, 0, !dbg !1148
  br i1 %54, label %55, label %60, !dbg !1149

; <label>:55:                                     ; preds = %51
  %56 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1150
  %57 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1151
  %58 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %57, i32 0, i32 4, !dbg !1152
  %59 = load i32, i32* %8, align 4, !dbg !1153
  call void @rdp_in_coord(%struct.stream* %56, i16* %58, i32 %59), !dbg !1154
  br label %60, !dbg !1154

; <label>:60:                                     ; preds = %55, %51
  %61 = load i32, i32* %7, align 4, !dbg !1155
  %62 = and i32 %61, 32, !dbg !1157
  %63 = icmp ne i32 %62, 0, !dbg !1157
  br i1 %63, label %64, label %68, !dbg !1158

; <label>:64:                                     ; preds = %60
  %65 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1159
  %66 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1160
  %67 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %66, i32 0, i32 5, !dbg !1161
  call void @rdp_in_colour(%struct.stream* %65, i32* %67), !dbg !1162
  br label %68, !dbg !1162

; <label>:68:                                     ; preds = %64, %60
  %69 = load i32, i32* %7, align 4, !dbg !1163
  %70 = and i32 %69, 64, !dbg !1165
  %71 = icmp ne i32 %70, 0, !dbg !1165
  br i1 %71, label %72, label %80, !dbg !1166

; <label>:72:                                     ; preds = %68
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1167
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 0, !dbg !1168
  %75 = load i8*, i8** %74, align 8, !dbg !1169
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !1169
  store i8* %76, i8** %74, align 8, !dbg !1169
  %77 = load i8, i8* %75, align 1, !dbg !1170
  %78 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1171
  %79 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %78, i32 0, i32 6, !dbg !1172
  store i8 %77, i8* %79, align 4, !dbg !1173
  br label %80, !dbg !1171

; <label>:80:                                     ; preds = %72, %68
  %81 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1174
  %82 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1175
  %83 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %82, i32 0, i32 7, !dbg !1176
  %84 = load i32, i32* %7, align 4, !dbg !1177
  %85 = lshr i32 %84, 7, !dbg !1178
  %86 = call i32 @rdp_parse_pen(%struct.stream* %81, %struct._PEN* %83, i32 %85), !dbg !1179
  %87 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1180
  %88 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %87, i32 0, i32 6, !dbg !1181
  %89 = load i8, i8* %88, align 4, !dbg !1181
  %90 = zext i8 %89 to i32, !dbg !1180
  %91 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1182
  %92 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %91, i32 0, i32 1, !dbg !1183
  %93 = load i16, i16* %92, align 2, !dbg !1183
  %94 = sext i16 %93 to i32, !dbg !1182
  %95 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1184
  %96 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %95, i32 0, i32 2, !dbg !1185
  %97 = load i16, i16* %96, align 4, !dbg !1185
  %98 = sext i16 %97 to i32, !dbg !1184
  %99 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1186
  %100 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %99, i32 0, i32 3, !dbg !1187
  %101 = load i16, i16* %100, align 2, !dbg !1187
  %102 = sext i16 %101 to i32, !dbg !1186
  %103 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1188
  %104 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %103, i32 0, i32 4, !dbg !1189
  %105 = load i16, i16* %104, align 4, !dbg !1189
  %106 = sext i16 %105 to i32, !dbg !1188
  %107 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1190
  %108 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %107, i32 0, i32 7, !dbg !1191
  %109 = getelementptr inbounds %struct._PEN, %struct._PEN* %108, i32 0, i32 2, !dbg !1192
  %110 = load i32, i32* %109, align 4, !dbg !1192
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i32 0, i32 0), i32 %90, i32 %94, i32 %98, i32 %102, i32 %106, i32 %110), !dbg !1193
  %111 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1194
  %112 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %111, i32 0, i32 6, !dbg !1196
  %113 = load i8, i8* %112, align 4, !dbg !1196
  %114 = zext i8 %113 to i32, !dbg !1194
  %115 = icmp slt i32 %114, 1, !dbg !1197
  br i1 %115, label %122, label %116, !dbg !1198

; <label>:116:                                    ; preds = %80
  %117 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1199
  %118 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %117, i32 0, i32 6, !dbg !1201
  %119 = load i8, i8* %118, align 4, !dbg !1201
  %120 = zext i8 %119 to i32, !dbg !1199
  %121 = icmp sgt i32 %120, 16, !dbg !1202
  br i1 %121, label %122, label %127, !dbg !1203

; <label>:122:                                    ; preds = %116, %80
  %123 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1204
  %124 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %123, i32 0, i32 6, !dbg !1206
  %125 = load i8, i8* %124, align 4, !dbg !1206
  %126 = zext i8 %125 to i32, !dbg !1204
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i32 %126), !dbg !1207
  br label %152, !dbg !1208

; <label>:127:                                    ; preds = %116
  %128 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1209
  %129 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %128, i32 0, i32 6, !dbg !1210
  %130 = load i8, i8* %129, align 4, !dbg !1210
  %131 = zext i8 %130 to i32, !dbg !1209
  %132 = sub nsw i32 %131, 1, !dbg !1211
  %133 = trunc i32 %132 to i8, !dbg !1209
  %134 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1212
  %135 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %134, i32 0, i32 1, !dbg !1213
  %136 = load i16, i16* %135, align 2, !dbg !1213
  %137 = sext i16 %136 to i32, !dbg !1212
  %138 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1214
  %139 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %138, i32 0, i32 2, !dbg !1215
  %140 = load i16, i16* %139, align 4, !dbg !1215
  %141 = sext i16 %140 to i32, !dbg !1214
  %142 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1216
  %143 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %142, i32 0, i32 3, !dbg !1217
  %144 = load i16, i16* %143, align 2, !dbg !1217
  %145 = sext i16 %144 to i32, !dbg !1216
  %146 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1218
  %147 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %146, i32 0, i32 4, !dbg !1219
  %148 = load i16, i16* %147, align 4, !dbg !1219
  %149 = sext i16 %148 to i32, !dbg !1218
  %150 = load %struct._LINE_ORDER*, %struct._LINE_ORDER** %6, align 8, !dbg !1220
  %151 = getelementptr inbounds %struct._LINE_ORDER, %struct._LINE_ORDER* %150, i32 0, i32 7, !dbg !1221
  call void @ui_line(i8 zeroext %133, i32 %137, i32 %141, i32 %145, i32 %149, %struct._PEN* %151), !dbg !1222
  br label %152, !dbg !1223

; <label>:152:                                    ; preds = %127, %122
  ret void, !dbg !1224
}

; Function Attrs: nounwind uwtable
define internal void @process_rect(%struct.stream*, %struct._RECT_ORDER*, i32, i32) #0 !dbg !1226 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._RECT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1230, metadata !315), !dbg !1231
  store %struct._RECT_ORDER* %1, %struct._RECT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._RECT_ORDER** %6, metadata !1232, metadata !315), !dbg !1233
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1234, metadata !315), !dbg !1235
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1236, metadata !315), !dbg !1237
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1238, metadata !315), !dbg !1239
  %10 = load i32, i32* %7, align 4, !dbg !1240
  %11 = and i32 %10, 1, !dbg !1242
  %12 = icmp ne i32 %11, 0, !dbg !1242
  br i1 %12, label %13, label %18, !dbg !1243

; <label>:13:                                     ; preds = %4
  %14 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1244
  %15 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1245
  %16 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %15, i32 0, i32 0, !dbg !1246
  %17 = load i32, i32* %8, align 4, !dbg !1247
  call void @rdp_in_coord(%struct.stream* %14, i16* %16, i32 %17), !dbg !1248
  br label %18, !dbg !1248

; <label>:18:                                     ; preds = %13, %4
  %19 = load i32, i32* %7, align 4, !dbg !1249
  %20 = and i32 %19, 2, !dbg !1251
  %21 = icmp ne i32 %20, 0, !dbg !1251
  br i1 %21, label %22, label %27, !dbg !1252

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1253
  %24 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1254
  %25 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %24, i32 0, i32 1, !dbg !1255
  %26 = load i32, i32* %8, align 4, !dbg !1256
  call void @rdp_in_coord(%struct.stream* %23, i16* %25, i32 %26), !dbg !1257
  br label %27, !dbg !1257

; <label>:27:                                     ; preds = %22, %18
  %28 = load i32, i32* %7, align 4, !dbg !1258
  %29 = and i32 %28, 4, !dbg !1260
  %30 = icmp ne i32 %29, 0, !dbg !1260
  br i1 %30, label %31, label %36, !dbg !1261

; <label>:31:                                     ; preds = %27
  %32 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1262
  %33 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1263
  %34 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %33, i32 0, i32 2, !dbg !1264
  %35 = load i32, i32* %8, align 4, !dbg !1265
  call void @rdp_in_coord(%struct.stream* %32, i16* %34, i32 %35), !dbg !1266
  br label %36, !dbg !1266

; <label>:36:                                     ; preds = %31, %27
  %37 = load i32, i32* %7, align 4, !dbg !1267
  %38 = and i32 %37, 8, !dbg !1269
  %39 = icmp ne i32 %38, 0, !dbg !1269
  br i1 %39, label %40, label %45, !dbg !1270

; <label>:40:                                     ; preds = %36
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1271
  %42 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1272
  %43 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %42, i32 0, i32 3, !dbg !1273
  %44 = load i32, i32* %8, align 4, !dbg !1274
  call void @rdp_in_coord(%struct.stream* %41, i16* %43, i32 %44), !dbg !1275
  br label %45, !dbg !1275

; <label>:45:                                     ; preds = %40, %36
  %46 = load i32, i32* %7, align 4, !dbg !1276
  %47 = and i32 %46, 16, !dbg !1278
  %48 = icmp ne i32 %47, 0, !dbg !1278
  br i1 %48, label %49, label %64, !dbg !1279

; <label>:49:                                     ; preds = %45
  %50 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1280
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !1282
  %52 = load i8*, i8** %51, align 8, !dbg !1283
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1283
  store i8* %53, i8** %51, align 8, !dbg !1283
  %54 = load i8, i8* %52, align 1, !dbg !1284
  %55 = zext i8 %54 to i32, !dbg !1284
  store i32 %55, i32* %9, align 4, !dbg !1285
  %56 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1286
  %57 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %56, i32 0, i32 4, !dbg !1287
  %58 = load i32, i32* %57, align 4, !dbg !1287
  %59 = and i32 %58, -256, !dbg !1288
  %60 = load i32, i32* %9, align 4, !dbg !1289
  %61 = or i32 %59, %60, !dbg !1290
  %62 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1291
  %63 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %62, i32 0, i32 4, !dbg !1292
  store i32 %61, i32* %63, align 4, !dbg !1293
  br label %64, !dbg !1294

; <label>:64:                                     ; preds = %49, %45
  %65 = load i32, i32* %7, align 4, !dbg !1295
  %66 = and i32 %65, 32, !dbg !1297
  %67 = icmp ne i32 %66, 0, !dbg !1297
  br i1 %67, label %68, label %84, !dbg !1298

; <label>:68:                                     ; preds = %64
  %69 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1299
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !1301
  %71 = load i8*, i8** %70, align 8, !dbg !1302
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !1302
  store i8* %72, i8** %70, align 8, !dbg !1302
  %73 = load i8, i8* %71, align 1, !dbg !1303
  %74 = zext i8 %73 to i32, !dbg !1303
  store i32 %74, i32* %9, align 4, !dbg !1304
  %75 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1305
  %76 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %75, i32 0, i32 4, !dbg !1306
  %77 = load i32, i32* %76, align 4, !dbg !1306
  %78 = and i32 %77, -65281, !dbg !1307
  %79 = load i32, i32* %9, align 4, !dbg !1308
  %80 = shl i32 %79, 8, !dbg !1309
  %81 = or i32 %78, %80, !dbg !1310
  %82 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1311
  %83 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %82, i32 0, i32 4, !dbg !1312
  store i32 %81, i32* %83, align 4, !dbg !1313
  br label %84, !dbg !1314

; <label>:84:                                     ; preds = %68, %64
  %85 = load i32, i32* %7, align 4, !dbg !1315
  %86 = and i32 %85, 64, !dbg !1317
  %87 = icmp ne i32 %86, 0, !dbg !1317
  br i1 %87, label %88, label %104, !dbg !1318

; <label>:88:                                     ; preds = %84
  %89 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1319
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !1321
  %91 = load i8*, i8** %90, align 8, !dbg !1322
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !1322
  store i8* %92, i8** %90, align 8, !dbg !1322
  %93 = load i8, i8* %91, align 1, !dbg !1323
  %94 = zext i8 %93 to i32, !dbg !1323
  store i32 %94, i32* %9, align 4, !dbg !1324
  %95 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1325
  %96 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %95, i32 0, i32 4, !dbg !1326
  %97 = load i32, i32* %96, align 4, !dbg !1326
  %98 = and i32 %97, -16711681, !dbg !1327
  %99 = load i32, i32* %9, align 4, !dbg !1328
  %100 = shl i32 %99, 16, !dbg !1329
  %101 = or i32 %98, %100, !dbg !1330
  %102 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1331
  %103 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %102, i32 0, i32 4, !dbg !1332
  store i32 %101, i32* %103, align 4, !dbg !1333
  br label %104, !dbg !1334

; <label>:104:                                    ; preds = %88, %84
  %105 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1335
  %106 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %105, i32 0, i32 0, !dbg !1336
  %107 = load i16, i16* %106, align 4, !dbg !1336
  %108 = sext i16 %107 to i32, !dbg !1335
  %109 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1337
  %110 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %109, i32 0, i32 1, !dbg !1338
  %111 = load i16, i16* %110, align 2, !dbg !1338
  %112 = sext i16 %111 to i32, !dbg !1337
  %113 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1339
  %114 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %113, i32 0, i32 2, !dbg !1340
  %115 = load i16, i16* %114, align 4, !dbg !1340
  %116 = sext i16 %115 to i32, !dbg !1339
  %117 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1341
  %118 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %117, i32 0, i32 3, !dbg !1342
  %119 = load i16, i16* %118, align 2, !dbg !1342
  %120 = sext i16 %119 to i32, !dbg !1341
  %121 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1343
  %122 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %121, i32 0, i32 4, !dbg !1344
  %123 = load i32, i32* %122, align 4, !dbg !1344
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0), i32 %108, i32 %112, i32 %116, i32 %120, i32 %123), !dbg !1345
  %124 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1346
  %125 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %124, i32 0, i32 0, !dbg !1347
  %126 = load i16, i16* %125, align 4, !dbg !1347
  %127 = sext i16 %126 to i32, !dbg !1346
  %128 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1348
  %129 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %128, i32 0, i32 1, !dbg !1349
  %130 = load i16, i16* %129, align 2, !dbg !1349
  %131 = sext i16 %130 to i32, !dbg !1348
  %132 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1350
  %133 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %132, i32 0, i32 2, !dbg !1351
  %134 = load i16, i16* %133, align 4, !dbg !1351
  %135 = sext i16 %134 to i32, !dbg !1350
  %136 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1352
  %137 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %136, i32 0, i32 3, !dbg !1353
  %138 = load i16, i16* %137, align 2, !dbg !1353
  %139 = sext i16 %138 to i32, !dbg !1352
  %140 = load %struct._RECT_ORDER*, %struct._RECT_ORDER** %6, align 8, !dbg !1354
  %141 = getelementptr inbounds %struct._RECT_ORDER, %struct._RECT_ORDER* %140, i32 0, i32 4, !dbg !1355
  %142 = load i32, i32* %141, align 4, !dbg !1355
  call void @ui_rect(i32 %127, i32 %131, i32 %135, i32 %139, i32 %142), !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal void @process_desksave(%struct.stream*, %struct._DESKSAVE_ORDER*, i32, i32) #0 !dbg !1358 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._DESKSAVE_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1362, metadata !315), !dbg !1363
  store %struct._DESKSAVE_ORDER* %1, %struct._DESKSAVE_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DESKSAVE_ORDER** %6, metadata !1364, metadata !315), !dbg !1365
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1366, metadata !315), !dbg !1367
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1368, metadata !315), !dbg !1369
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1370, metadata !315), !dbg !1371
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1372, metadata !315), !dbg !1373
  %11 = load i32, i32* %7, align 4, !dbg !1374
  %12 = and i32 %11, 1, !dbg !1376
  %13 = icmp ne i32 %12, 0, !dbg !1376
  br i1 %13, label %14, label %26, !dbg !1377

; <label>:14:                                     ; preds = %4
  %15 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1378
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1380
  %17 = load i8*, i8** %16, align 8, !dbg !1380
  %18 = bitcast i8* %17 to i32*, !dbg !1381
  %19 = load i32, i32* %18, align 4, !dbg !1381
  %20 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1382
  %21 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %20, i32 0, i32 0, !dbg !1383
  store i32 %19, i32* %21, align 4, !dbg !1384
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1385
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !1386
  %24 = load i8*, i8** %23, align 8, !dbg !1387
  %25 = getelementptr inbounds i8, i8* %24, i64 4, !dbg !1387
  store i8* %25, i8** %23, align 8, !dbg !1387
  br label %26, !dbg !1388

; <label>:26:                                     ; preds = %14, %4
  %27 = load i32, i32* %7, align 4, !dbg !1389
  %28 = and i32 %27, 2, !dbg !1391
  %29 = icmp ne i32 %28, 0, !dbg !1391
  br i1 %29, label %30, label %35, !dbg !1392

; <label>:30:                                     ; preds = %26
  %31 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1393
  %32 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1394
  %33 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %32, i32 0, i32 1, !dbg !1395
  %34 = load i32, i32* %8, align 4, !dbg !1396
  call void @rdp_in_coord(%struct.stream* %31, i16* %33, i32 %34), !dbg !1397
  br label %35, !dbg !1397

; <label>:35:                                     ; preds = %30, %26
  %36 = load i32, i32* %7, align 4, !dbg !1398
  %37 = and i32 %36, 4, !dbg !1400
  %38 = icmp ne i32 %37, 0, !dbg !1400
  br i1 %38, label %39, label %44, !dbg !1401

; <label>:39:                                     ; preds = %35
  %40 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1402
  %41 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1403
  %42 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %41, i32 0, i32 2, !dbg !1404
  %43 = load i32, i32* %8, align 4, !dbg !1405
  call void @rdp_in_coord(%struct.stream* %40, i16* %42, i32 %43), !dbg !1406
  br label %44, !dbg !1406

; <label>:44:                                     ; preds = %39, %35
  %45 = load i32, i32* %7, align 4, !dbg !1407
  %46 = and i32 %45, 8, !dbg !1409
  %47 = icmp ne i32 %46, 0, !dbg !1409
  br i1 %47, label %48, label %53, !dbg !1410

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1411
  %50 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1412
  %51 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %50, i32 0, i32 3, !dbg !1413
  %52 = load i32, i32* %8, align 4, !dbg !1414
  call void @rdp_in_coord(%struct.stream* %49, i16* %51, i32 %52), !dbg !1415
  br label %53, !dbg !1415

; <label>:53:                                     ; preds = %48, %44
  %54 = load i32, i32* %7, align 4, !dbg !1416
  %55 = and i32 %54, 16, !dbg !1418
  %56 = icmp ne i32 %55, 0, !dbg !1418
  br i1 %56, label %57, label %62, !dbg !1419

; <label>:57:                                     ; preds = %53
  %58 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1420
  %59 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1421
  %60 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %59, i32 0, i32 4, !dbg !1422
  %61 = load i32, i32* %8, align 4, !dbg !1423
  call void @rdp_in_coord(%struct.stream* %58, i16* %60, i32 %61), !dbg !1424
  br label %62, !dbg !1424

; <label>:62:                                     ; preds = %57, %53
  %63 = load i32, i32* %7, align 4, !dbg !1425
  %64 = and i32 %63, 32, !dbg !1427
  %65 = icmp ne i32 %64, 0, !dbg !1427
  br i1 %65, label %66, label %74, !dbg !1428

; <label>:66:                                     ; preds = %62
  %67 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1429
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !1430
  %69 = load i8*, i8** %68, align 8, !dbg !1431
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !1431
  store i8* %70, i8** %68, align 8, !dbg !1431
  %71 = load i8, i8* %69, align 1, !dbg !1432
  %72 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1433
  %73 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %72, i32 0, i32 5, !dbg !1434
  store i8 %71, i8* %73, align 4, !dbg !1435
  br label %74, !dbg !1433

; <label>:74:                                     ; preds = %66, %62
  %75 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1436
  %76 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %75, i32 0, i32 1, !dbg !1437
  %77 = load i16, i16* %76, align 4, !dbg !1437
  %78 = sext i16 %77 to i32, !dbg !1436
  %79 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1438
  %80 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %79, i32 0, i32 2, !dbg !1439
  %81 = load i16, i16* %80, align 2, !dbg !1439
  %82 = sext i16 %81 to i32, !dbg !1438
  %83 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1440
  %84 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %83, i32 0, i32 3, !dbg !1441
  %85 = load i16, i16* %84, align 4, !dbg !1441
  %86 = sext i16 %85 to i32, !dbg !1440
  %87 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1442
  %88 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %87, i32 0, i32 4, !dbg !1443
  %89 = load i16, i16* %88, align 2, !dbg !1443
  %90 = sext i16 %89 to i32, !dbg !1442
  %91 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1444
  %92 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %91, i32 0, i32 0, !dbg !1445
  %93 = load i32, i32* %92, align 4, !dbg !1445
  %94 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1446
  %95 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %94, i32 0, i32 5, !dbg !1447
  %96 = load i8, i8* %95, align 4, !dbg !1447
  %97 = zext i8 %96 to i32, !dbg !1446
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i32 0, i32 0), i32 %78, i32 %82, i32 %86, i32 %90, i32 %93, i32 %97), !dbg !1448
  %98 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1449
  %99 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %98, i32 0, i32 3, !dbg !1450
  %100 = load i16, i16* %99, align 4, !dbg !1450
  %101 = sext i16 %100 to i32, !dbg !1449
  %102 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1451
  %103 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %102, i32 0, i32 1, !dbg !1452
  %104 = load i16, i16* %103, align 4, !dbg !1452
  %105 = sext i16 %104 to i32, !dbg !1451
  %106 = sub nsw i32 %101, %105, !dbg !1453
  %107 = add nsw i32 %106, 1, !dbg !1454
  store i32 %107, i32* %9, align 4, !dbg !1455
  %108 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1456
  %109 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %108, i32 0, i32 4, !dbg !1457
  %110 = load i16, i16* %109, align 2, !dbg !1457
  %111 = sext i16 %110 to i32, !dbg !1456
  %112 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1458
  %113 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %112, i32 0, i32 2, !dbg !1459
  %114 = load i16, i16* %113, align 2, !dbg !1459
  %115 = sext i16 %114 to i32, !dbg !1458
  %116 = sub nsw i32 %111, %115, !dbg !1460
  %117 = add nsw i32 %116, 1, !dbg !1461
  store i32 %117, i32* %10, align 4, !dbg !1462
  %118 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1463
  %119 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %118, i32 0, i32 5, !dbg !1465
  %120 = load i8, i8* %119, align 4, !dbg !1465
  %121 = zext i8 %120 to i32, !dbg !1463
  %122 = icmp eq i32 %121, 0, !dbg !1466
  br i1 %122, label %123, label %137, !dbg !1467

; <label>:123:                                    ; preds = %74
  %124 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1468
  %125 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %124, i32 0, i32 0, !dbg !1469
  %126 = load i32, i32* %125, align 4, !dbg !1469
  %127 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1470
  %128 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %127, i32 0, i32 1, !dbg !1471
  %129 = load i16, i16* %128, align 4, !dbg !1471
  %130 = sext i16 %129 to i32, !dbg !1470
  %131 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1472
  %132 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %131, i32 0, i32 2, !dbg !1473
  %133 = load i16, i16* %132, align 2, !dbg !1473
  %134 = sext i16 %133 to i32, !dbg !1472
  %135 = load i32, i32* %9, align 4, !dbg !1474
  %136 = load i32, i32* %10, align 4, !dbg !1475
  call void @ui_desktop_save(i32 %126, i32 %130, i32 %134, i32 %135, i32 %136), !dbg !1476
  br label %151, !dbg !1476

; <label>:137:                                    ; preds = %74
  %138 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1477
  %139 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %138, i32 0, i32 0, !dbg !1478
  %140 = load i32, i32* %139, align 4, !dbg !1478
  %141 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1479
  %142 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %141, i32 0, i32 1, !dbg !1480
  %143 = load i16, i16* %142, align 4, !dbg !1480
  %144 = sext i16 %143 to i32, !dbg !1479
  %145 = load %struct._DESKSAVE_ORDER*, %struct._DESKSAVE_ORDER** %6, align 8, !dbg !1481
  %146 = getelementptr inbounds %struct._DESKSAVE_ORDER, %struct._DESKSAVE_ORDER* %145, i32 0, i32 2, !dbg !1482
  %147 = load i16, i16* %146, align 2, !dbg !1482
  %148 = sext i16 %147 to i32, !dbg !1481
  %149 = load i32, i32* %9, align 4, !dbg !1483
  %150 = load i32, i32* %10, align 4, !dbg !1484
  call void @ui_desktop_restore(i32 %140, i32 %144, i32 %148, i32 %149, i32 %150), !dbg !1485
  br label %151

; <label>:151:                                    ; preds = %137, %123
  ret void, !dbg !1486
}

; Function Attrs: nounwind uwtable
define internal void @process_memblt(%struct.stream*, %struct._MEMBLT_ORDER*, i32, i32) #0 !dbg !1487 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._MEMBLT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1491, metadata !315), !dbg !1492
  store %struct._MEMBLT_ORDER* %1, %struct._MEMBLT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._MEMBLT_ORDER** %6, metadata !1493, metadata !315), !dbg !1494
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1495, metadata !315), !dbg !1496
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1497, metadata !315), !dbg !1498
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1499, metadata !315), !dbg !1501
  %10 = load i32, i32* %7, align 4, !dbg !1502
  %11 = and i32 %10, 1, !dbg !1504
  %12 = icmp ne i32 %11, 0, !dbg !1504
  br i1 %12, label %13, label %28, !dbg !1505

; <label>:13:                                     ; preds = %4
  %14 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1506
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !1508
  %16 = load i8*, i8** %15, align 8, !dbg !1509
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1509
  store i8* %17, i8** %15, align 8, !dbg !1509
  %18 = load i8, i8* %16, align 1, !dbg !1510
  %19 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1511
  %20 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %19, i32 0, i32 1, !dbg !1512
  store i8 %18, i8* %20, align 1, !dbg !1513
  %21 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1514
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !1515
  %23 = load i8*, i8** %22, align 8, !dbg !1516
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1516
  store i8* %24, i8** %22, align 8, !dbg !1516
  %25 = load i8, i8* %23, align 1, !dbg !1517
  %26 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1518
  %27 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %26, i32 0, i32 0, !dbg !1519
  store i8 %25, i8* %27, align 2, !dbg !1520
  br label %28, !dbg !1521

; <label>:28:                                     ; preds = %13, %4
  %29 = load i32, i32* %7, align 4, !dbg !1522
  %30 = and i32 %29, 2, !dbg !1524
  %31 = icmp ne i32 %30, 0, !dbg !1524
  br i1 %31, label %32, label %37, !dbg !1525

; <label>:32:                                     ; preds = %28
  %33 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1526
  %34 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1527
  %35 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %34, i32 0, i32 2, !dbg !1528
  %36 = load i32, i32* %8, align 4, !dbg !1529
  call void @rdp_in_coord(%struct.stream* %33, i16* %35, i32 %36), !dbg !1530
  br label %37, !dbg !1530

; <label>:37:                                     ; preds = %32, %28
  %38 = load i32, i32* %7, align 4, !dbg !1531
  %39 = and i32 %38, 4, !dbg !1533
  %40 = icmp ne i32 %39, 0, !dbg !1533
  br i1 %40, label %41, label %46, !dbg !1534

; <label>:41:                                     ; preds = %37
  %42 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1535
  %43 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1536
  %44 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %43, i32 0, i32 3, !dbg !1537
  %45 = load i32, i32* %8, align 4, !dbg !1538
  call void @rdp_in_coord(%struct.stream* %42, i16* %44, i32 %45), !dbg !1539
  br label %46, !dbg !1539

; <label>:46:                                     ; preds = %41, %37
  %47 = load i32, i32* %7, align 4, !dbg !1540
  %48 = and i32 %47, 8, !dbg !1542
  %49 = icmp ne i32 %48, 0, !dbg !1542
  br i1 %49, label %50, label %55, !dbg !1543

; <label>:50:                                     ; preds = %46
  %51 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1544
  %52 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1545
  %53 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %52, i32 0, i32 4, !dbg !1546
  %54 = load i32, i32* %8, align 4, !dbg !1547
  call void @rdp_in_coord(%struct.stream* %51, i16* %53, i32 %54), !dbg !1548
  br label %55, !dbg !1548

; <label>:55:                                     ; preds = %50, %46
  %56 = load i32, i32* %7, align 4, !dbg !1549
  %57 = and i32 %56, 16, !dbg !1551
  %58 = icmp ne i32 %57, 0, !dbg !1551
  br i1 %58, label %59, label %64, !dbg !1552

; <label>:59:                                     ; preds = %55
  %60 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1553
  %61 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1554
  %62 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %61, i32 0, i32 5, !dbg !1555
  %63 = load i32, i32* %8, align 4, !dbg !1556
  call void @rdp_in_coord(%struct.stream* %60, i16* %62, i32 %63), !dbg !1557
  br label %64, !dbg !1557

; <label>:64:                                     ; preds = %59, %55
  %65 = load i32, i32* %7, align 4, !dbg !1558
  %66 = and i32 %65, 32, !dbg !1560
  %67 = icmp ne i32 %66, 0, !dbg !1560
  br i1 %67, label %68, label %76, !dbg !1561

; <label>:68:                                     ; preds = %64
  %69 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1562
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !1563
  %71 = load i8*, i8** %70, align 8, !dbg !1564
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !1564
  store i8* %72, i8** %70, align 8, !dbg !1564
  %73 = load i8, i8* %71, align 1, !dbg !1565
  %74 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1566
  %75 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %74, i32 0, i32 6, !dbg !1567
  store i8 %73, i8* %75, align 2, !dbg !1568
  br label %76, !dbg !1566

; <label>:76:                                     ; preds = %68, %64
  %77 = load i32, i32* %7, align 4, !dbg !1569
  %78 = and i32 %77, 64, !dbg !1571
  %79 = icmp ne i32 %78, 0, !dbg !1571
  br i1 %79, label %80, label %85, !dbg !1572

; <label>:80:                                     ; preds = %76
  %81 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1573
  %82 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1574
  %83 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %82, i32 0, i32 7, !dbg !1575
  %84 = load i32, i32* %8, align 4, !dbg !1576
  call void @rdp_in_coord(%struct.stream* %81, i16* %83, i32 %84), !dbg !1577
  br label %85, !dbg !1577

; <label>:85:                                     ; preds = %80, %76
  %86 = load i32, i32* %7, align 4, !dbg !1578
  %87 = and i32 %86, 128, !dbg !1580
  %88 = icmp ne i32 %87, 0, !dbg !1580
  br i1 %88, label %89, label %94, !dbg !1581

; <label>:89:                                     ; preds = %85
  %90 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1582
  %91 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1583
  %92 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %91, i32 0, i32 8, !dbg !1584
  %93 = load i32, i32* %8, align 4, !dbg !1585
  call void @rdp_in_coord(%struct.stream* %90, i16* %92, i32 %93), !dbg !1586
  br label %94, !dbg !1586

; <label>:94:                                     ; preds = %89, %85
  %95 = load i32, i32* %7, align 4, !dbg !1587
  %96 = and i32 %95, 256, !dbg !1589
  %97 = icmp ne i32 %96, 0, !dbg !1589
  br i1 %97, label %98, label %110, !dbg !1590

; <label>:98:                                     ; preds = %94
  %99 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1591
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 0, !dbg !1593
  %101 = load i8*, i8** %100, align 8, !dbg !1593
  %102 = bitcast i8* %101 to i16*, !dbg !1594
  %103 = load i16, i16* %102, align 2, !dbg !1594
  %104 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1595
  %105 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %104, i32 0, i32 9, !dbg !1596
  store i16 %103, i16* %105, align 2, !dbg !1597
  %106 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1598
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !1599
  %108 = load i8*, i8** %107, align 8, !dbg !1600
  %109 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !1600
  store i8* %109, i8** %107, align 8, !dbg !1600
  br label %110, !dbg !1601

; <label>:110:                                    ; preds = %98, %94
  %111 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1602
  %112 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %111, i32 0, i32 6, !dbg !1603
  %113 = load i8, i8* %112, align 2, !dbg !1603
  %114 = zext i8 %113 to i32, !dbg !1602
  %115 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1604
  %116 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %115, i32 0, i32 2, !dbg !1605
  %117 = load i16, i16* %116, align 2, !dbg !1605
  %118 = sext i16 %117 to i32, !dbg !1604
  %119 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1606
  %120 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %119, i32 0, i32 3, !dbg !1607
  %121 = load i16, i16* %120, align 2, !dbg !1607
  %122 = sext i16 %121 to i32, !dbg !1606
  %123 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1608
  %124 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %123, i32 0, i32 4, !dbg !1609
  %125 = load i16, i16* %124, align 2, !dbg !1609
  %126 = sext i16 %125 to i32, !dbg !1608
  %127 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1610
  %128 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %127, i32 0, i32 5, !dbg !1611
  %129 = load i16, i16* %128, align 2, !dbg !1611
  %130 = sext i16 %129 to i32, !dbg !1610
  %131 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1612
  %132 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %131, i32 0, i32 1, !dbg !1613
  %133 = load i8, i8* %132, align 1, !dbg !1613
  %134 = zext i8 %133 to i32, !dbg !1612
  %135 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1614
  %136 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %135, i32 0, i32 9, !dbg !1615
  %137 = load i16, i16* %136, align 2, !dbg !1615
  %138 = zext i16 %137 to i32, !dbg !1614
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i32 0, i32 0), i32 %114, i32 %118, i32 %122, i32 %126, i32 %130, i32 %134, i32 %138), !dbg !1616
  %139 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1617
  %140 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %139, i32 0, i32 1, !dbg !1618
  %141 = load i8, i8* %140, align 1, !dbg !1618
  %142 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1619
  %143 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %142, i32 0, i32 9, !dbg !1620
  %144 = load i16, i16* %143, align 2, !dbg !1620
  %145 = call i8* @cache_get_bitmap(i8 zeroext %141, i16 zeroext %144), !dbg !1621
  store i8* %145, i8** %9, align 8, !dbg !1622
  %146 = load i8*, i8** %9, align 8, !dbg !1623
  %147 = icmp eq i8* %146, null, !dbg !1625
  br i1 %147, label %148, label %149, !dbg !1626

; <label>:148:                                    ; preds = %110
  br label %181, !dbg !1627

; <label>:149:                                    ; preds = %110
  %150 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1628
  %151 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %150, i32 0, i32 6, !dbg !1629
  %152 = load i8, i8* %151, align 2, !dbg !1629
  %153 = zext i8 %152 to i32, !dbg !1628
  %154 = and i32 %153, 15, !dbg !1630
  %155 = trunc i32 %154 to i8, !dbg !1631
  %156 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1632
  %157 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %156, i32 0, i32 2, !dbg !1633
  %158 = load i16, i16* %157, align 2, !dbg !1633
  %159 = sext i16 %158 to i32, !dbg !1632
  %160 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1634
  %161 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %160, i32 0, i32 3, !dbg !1635
  %162 = load i16, i16* %161, align 2, !dbg !1635
  %163 = sext i16 %162 to i32, !dbg !1634
  %164 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1636
  %165 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %164, i32 0, i32 4, !dbg !1637
  %166 = load i16, i16* %165, align 2, !dbg !1637
  %167 = sext i16 %166 to i32, !dbg !1636
  %168 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1638
  %169 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %168, i32 0, i32 5, !dbg !1639
  %170 = load i16, i16* %169, align 2, !dbg !1639
  %171 = sext i16 %170 to i32, !dbg !1638
  %172 = load i8*, i8** %9, align 8, !dbg !1640
  %173 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1641
  %174 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %173, i32 0, i32 7, !dbg !1642
  %175 = load i16, i16* %174, align 2, !dbg !1642
  %176 = sext i16 %175 to i32, !dbg !1641
  %177 = load %struct._MEMBLT_ORDER*, %struct._MEMBLT_ORDER** %6, align 8, !dbg !1643
  %178 = getelementptr inbounds %struct._MEMBLT_ORDER, %struct._MEMBLT_ORDER* %177, i32 0, i32 8, !dbg !1644
  %179 = load i16, i16* %178, align 2, !dbg !1644
  %180 = sext i16 %179 to i32, !dbg !1643
  call void @ui_memblt(i8 zeroext %155, i32 %159, i32 %163, i32 %167, i32 %171, i8* %172, i32 %176, i32 %180), !dbg !1645
  br label %181, !dbg !1646

; <label>:181:                                    ; preds = %149, %148
  ret void, !dbg !1647
}

; Function Attrs: nounwind uwtable
define internal void @process_triblt(%struct.stream*, %struct._TRIBLT_ORDER*, i32, i32) #0 !dbg !1649 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._TRIBLT_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct._BRUSH, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1653, metadata !315), !dbg !1654
  store %struct._TRIBLT_ORDER* %1, %struct._TRIBLT_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TRIBLT_ORDER** %6, metadata !1655, metadata !315), !dbg !1656
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1657, metadata !315), !dbg !1658
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1659, metadata !315), !dbg !1660
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1661, metadata !315), !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._BRUSH* %10, metadata !1663, metadata !315), !dbg !1664
  %11 = load i32, i32* %7, align 4, !dbg !1665
  %12 = and i32 %11, 1, !dbg !1667
  %13 = icmp ne i32 %12, 0, !dbg !1667
  br i1 %13, label %14, label %29, !dbg !1668

; <label>:14:                                     ; preds = %4
  %15 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1669
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1671
  %17 = load i8*, i8** %16, align 8, !dbg !1672
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !1672
  store i8* %18, i8** %16, align 8, !dbg !1672
  %19 = load i8, i8* %17, align 1, !dbg !1673
  %20 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1674
  %21 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %20, i32 0, i32 1, !dbg !1675
  store i8 %19, i8* %21, align 1, !dbg !1676
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1677
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !1678
  %24 = load i8*, i8** %23, align 8, !dbg !1679
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !1679
  store i8* %25, i8** %23, align 8, !dbg !1679
  %26 = load i8, i8* %24, align 1, !dbg !1680
  %27 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1681
  %28 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %27, i32 0, i32 0, !dbg !1682
  store i8 %26, i8* %28, align 8, !dbg !1683
  br label %29, !dbg !1684

; <label>:29:                                     ; preds = %14, %4
  %30 = load i32, i32* %7, align 4, !dbg !1685
  %31 = and i32 %30, 2, !dbg !1687
  %32 = icmp ne i32 %31, 0, !dbg !1687
  br i1 %32, label %33, label %38, !dbg !1688

; <label>:33:                                     ; preds = %29
  %34 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1689
  %35 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1690
  %36 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %35, i32 0, i32 2, !dbg !1691
  %37 = load i32, i32* %8, align 4, !dbg !1692
  call void @rdp_in_coord(%struct.stream* %34, i16* %36, i32 %37), !dbg !1693
  br label %38, !dbg !1693

; <label>:38:                                     ; preds = %33, %29
  %39 = load i32, i32* %7, align 4, !dbg !1694
  %40 = and i32 %39, 4, !dbg !1696
  %41 = icmp ne i32 %40, 0, !dbg !1696
  br i1 %41, label %42, label %47, !dbg !1697

; <label>:42:                                     ; preds = %38
  %43 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1698
  %44 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1699
  %45 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %44, i32 0, i32 3, !dbg !1700
  %46 = load i32, i32* %8, align 4, !dbg !1701
  call void @rdp_in_coord(%struct.stream* %43, i16* %45, i32 %46), !dbg !1702
  br label %47, !dbg !1702

; <label>:47:                                     ; preds = %42, %38
  %48 = load i32, i32* %7, align 4, !dbg !1703
  %49 = and i32 %48, 8, !dbg !1705
  %50 = icmp ne i32 %49, 0, !dbg !1705
  br i1 %50, label %51, label %56, !dbg !1706

; <label>:51:                                     ; preds = %47
  %52 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1707
  %53 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1708
  %54 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %53, i32 0, i32 4, !dbg !1709
  %55 = load i32, i32* %8, align 4, !dbg !1710
  call void @rdp_in_coord(%struct.stream* %52, i16* %54, i32 %55), !dbg !1711
  br label %56, !dbg !1711

; <label>:56:                                     ; preds = %51, %47
  %57 = load i32, i32* %7, align 4, !dbg !1712
  %58 = and i32 %57, 16, !dbg !1714
  %59 = icmp ne i32 %58, 0, !dbg !1714
  br i1 %59, label %60, label %65, !dbg !1715

; <label>:60:                                     ; preds = %56
  %61 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1716
  %62 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1717
  %63 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %62, i32 0, i32 5, !dbg !1718
  %64 = load i32, i32* %8, align 4, !dbg !1719
  call void @rdp_in_coord(%struct.stream* %61, i16* %63, i32 %64), !dbg !1720
  br label %65, !dbg !1720

; <label>:65:                                     ; preds = %60, %56
  %66 = load i32, i32* %7, align 4, !dbg !1721
  %67 = and i32 %66, 32, !dbg !1723
  %68 = icmp ne i32 %67, 0, !dbg !1723
  br i1 %68, label %69, label %77, !dbg !1724

; <label>:69:                                     ; preds = %65
  %70 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1725
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !1726
  %72 = load i8*, i8** %71, align 8, !dbg !1727
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !1727
  store i8* %73, i8** %71, align 8, !dbg !1727
  %74 = load i8, i8* %72, align 1, !dbg !1728
  %75 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1729
  %76 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %75, i32 0, i32 6, !dbg !1730
  store i8 %74, i8* %76, align 2, !dbg !1731
  br label %77, !dbg !1729

; <label>:77:                                     ; preds = %69, %65
  %78 = load i32, i32* %7, align 4, !dbg !1732
  %79 = and i32 %78, 64, !dbg !1734
  %80 = icmp ne i32 %79, 0, !dbg !1734
  br i1 %80, label %81, label %86, !dbg !1735

; <label>:81:                                     ; preds = %77
  %82 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1736
  %83 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1737
  %84 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %83, i32 0, i32 7, !dbg !1738
  %85 = load i32, i32* %8, align 4, !dbg !1739
  call void @rdp_in_coord(%struct.stream* %82, i16* %84, i32 %85), !dbg !1740
  br label %86, !dbg !1740

; <label>:86:                                     ; preds = %81, %77
  %87 = load i32, i32* %7, align 4, !dbg !1741
  %88 = and i32 %87, 128, !dbg !1743
  %89 = icmp ne i32 %88, 0, !dbg !1743
  br i1 %89, label %90, label %95, !dbg !1744

; <label>:90:                                     ; preds = %86
  %91 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1745
  %92 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1746
  %93 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %92, i32 0, i32 8, !dbg !1747
  %94 = load i32, i32* %8, align 4, !dbg !1748
  call void @rdp_in_coord(%struct.stream* %91, i16* %93, i32 %94), !dbg !1749
  br label %95, !dbg !1749

; <label>:95:                                     ; preds = %90, %86
  %96 = load i32, i32* %7, align 4, !dbg !1750
  %97 = and i32 %96, 256, !dbg !1752
  %98 = icmp ne i32 %97, 0, !dbg !1752
  br i1 %98, label %99, label %103, !dbg !1753

; <label>:99:                                     ; preds = %95
  %100 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1754
  %101 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1755
  %102 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %101, i32 0, i32 9, !dbg !1756
  call void @rdp_in_colour(%struct.stream* %100, i32* %102), !dbg !1757
  br label %103, !dbg !1757

; <label>:103:                                    ; preds = %99, %95
  %104 = load i32, i32* %7, align 4, !dbg !1758
  %105 = and i32 %104, 512, !dbg !1760
  %106 = icmp ne i32 %105, 0, !dbg !1760
  br i1 %106, label %107, label %111, !dbg !1761

; <label>:107:                                    ; preds = %103
  %108 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1762
  %109 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1763
  %110 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %109, i32 0, i32 10, !dbg !1764
  call void @rdp_in_colour(%struct.stream* %108, i32* %110), !dbg !1765
  br label %111, !dbg !1765

; <label>:111:                                    ; preds = %107, %103
  %112 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1766
  %113 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1767
  %114 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %113, i32 0, i32 11, !dbg !1768
  %115 = load i32, i32* %7, align 4, !dbg !1769
  %116 = lshr i32 %115, 10, !dbg !1770
  %117 = call i32 @rdp_parse_brush(%struct.stream* %112, %struct._BRUSH* %114, i32 %116), !dbg !1771
  %118 = load i32, i32* %7, align 4, !dbg !1772
  %119 = and i32 %118, 32768, !dbg !1774
  %120 = icmp ne i32 %119, 0, !dbg !1774
  br i1 %120, label %121, label %133, !dbg !1775

; <label>:121:                                    ; preds = %111
  %122 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1776
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !1778
  %124 = load i8*, i8** %123, align 8, !dbg !1778
  %125 = bitcast i8* %124 to i16*, !dbg !1779
  %126 = load i16, i16* %125, align 2, !dbg !1779
  %127 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1780
  %128 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %127, i32 0, i32 12, !dbg !1781
  store i16 %126, i16* %128, align 8, !dbg !1782
  %129 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1783
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %129, i32 0, i32 0, !dbg !1784
  %131 = load i8*, i8** %130, align 8, !dbg !1785
  %132 = getelementptr inbounds i8, i8* %131, i64 2, !dbg !1785
  store i8* %132, i8** %130, align 8, !dbg !1785
  br label %133, !dbg !1786

; <label>:133:                                    ; preds = %121, %111
  %134 = load i32, i32* %7, align 4, !dbg !1787
  %135 = and i32 %134, 65536, !dbg !1789
  %136 = icmp ne i32 %135, 0, !dbg !1789
  br i1 %136, label %137, label %149, !dbg !1790

; <label>:137:                                    ; preds = %133
  %138 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1791
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %138, i32 0, i32 0, !dbg !1793
  %140 = load i8*, i8** %139, align 8, !dbg !1793
  %141 = bitcast i8* %140 to i16*, !dbg !1794
  %142 = load i16, i16* %141, align 2, !dbg !1794
  %143 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1795
  %144 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %143, i32 0, i32 13, !dbg !1796
  store i16 %142, i16* %144, align 2, !dbg !1797
  %145 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1798
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %145, i32 0, i32 0, !dbg !1799
  %147 = load i8*, i8** %146, align 8, !dbg !1800
  %148 = getelementptr inbounds i8, i8* %147, i64 2, !dbg !1800
  store i8* %148, i8** %146, align 8, !dbg !1800
  br label %149, !dbg !1801

; <label>:149:                                    ; preds = %137, %133
  %150 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1802
  %151 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %150, i32 0, i32 6, !dbg !1803
  %152 = load i8, i8* %151, align 2, !dbg !1803
  %153 = zext i8 %152 to i32, !dbg !1802
  %154 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1804
  %155 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %154, i32 0, i32 2, !dbg !1805
  %156 = load i16, i16* %155, align 2, !dbg !1805
  %157 = sext i16 %156 to i32, !dbg !1804
  %158 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1806
  %159 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %158, i32 0, i32 3, !dbg !1807
  %160 = load i16, i16* %159, align 4, !dbg !1807
  %161 = sext i16 %160 to i32, !dbg !1806
  %162 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1808
  %163 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %162, i32 0, i32 4, !dbg !1809
  %164 = load i16, i16* %163, align 2, !dbg !1809
  %165 = sext i16 %164 to i32, !dbg !1808
  %166 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1810
  %167 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %166, i32 0, i32 5, !dbg !1811
  %168 = load i16, i16* %167, align 8, !dbg !1811
  %169 = sext i16 %168 to i32, !dbg !1810
  %170 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1812
  %171 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %170, i32 0, i32 1, !dbg !1813
  %172 = load i8, i8* %171, align 1, !dbg !1813
  %173 = zext i8 %172 to i32, !dbg !1812
  %174 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1814
  %175 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %174, i32 0, i32 12, !dbg !1815
  %176 = load i16, i16* %175, align 8, !dbg !1815
  %177 = zext i16 %176 to i32, !dbg !1814
  %178 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1816
  %179 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %178, i32 0, i32 11, !dbg !1817
  %180 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %179, i32 0, i32 2, !dbg !1818
  %181 = load i8, i8* %180, align 2, !dbg !1818
  %182 = zext i8 %181 to i32, !dbg !1816
  %183 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1819
  %184 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %183, i32 0, i32 9, !dbg !1820
  %185 = load i32, i32* %184, align 8, !dbg !1820
  %186 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1821
  %187 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %186, i32 0, i32 10, !dbg !1822
  %188 = load i32, i32* %187, align 4, !dbg !1822
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.23, i32 0, i32 0), i32 %153, i32 %157, i32 %161, i32 %165, i32 %169, i32 %173, i32 %177, i32 %182, i32 %185, i32 %188), !dbg !1823
  %189 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1824
  %190 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %189, i32 0, i32 1, !dbg !1825
  %191 = load i8, i8* %190, align 1, !dbg !1825
  %192 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1826
  %193 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %192, i32 0, i32 12, !dbg !1827
  %194 = load i16, i16* %193, align 8, !dbg !1827
  %195 = call i8* @cache_get_bitmap(i8 zeroext %191, i16 zeroext %194), !dbg !1828
  store i8* %195, i8** %9, align 8, !dbg !1829
  %196 = load i8*, i8** %9, align 8, !dbg !1830
  %197 = icmp eq i8* %196, null, !dbg !1832
  br i1 %197, label %198, label %199, !dbg !1833

; <label>:198:                                    ; preds = %149
  br label %236, !dbg !1834

; <label>:199:                                    ; preds = %149
  %200 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1835
  %201 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %200, i32 0, i32 11, !dbg !1836
  call void @setup_brush(%struct._BRUSH* %10, %struct._BRUSH* %201), !dbg !1837
  %202 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1838
  %203 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %202, i32 0, i32 6, !dbg !1839
  %204 = load i8, i8* %203, align 2, !dbg !1839
  %205 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1840
  %206 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %205, i32 0, i32 2, !dbg !1841
  %207 = load i16, i16* %206, align 2, !dbg !1841
  %208 = sext i16 %207 to i32, !dbg !1840
  %209 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1842
  %210 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %209, i32 0, i32 3, !dbg !1843
  %211 = load i16, i16* %210, align 4, !dbg !1843
  %212 = sext i16 %211 to i32, !dbg !1842
  %213 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1844
  %214 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %213, i32 0, i32 4, !dbg !1845
  %215 = load i16, i16* %214, align 2, !dbg !1845
  %216 = sext i16 %215 to i32, !dbg !1844
  %217 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1846
  %218 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %217, i32 0, i32 5, !dbg !1847
  %219 = load i16, i16* %218, align 8, !dbg !1847
  %220 = sext i16 %219 to i32, !dbg !1846
  %221 = load i8*, i8** %9, align 8, !dbg !1848
  %222 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1849
  %223 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %222, i32 0, i32 7, !dbg !1850
  %224 = load i16, i16* %223, align 4, !dbg !1850
  %225 = sext i16 %224 to i32, !dbg !1849
  %226 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1851
  %227 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %226, i32 0, i32 8, !dbg !1852
  %228 = load i16, i16* %227, align 2, !dbg !1852
  %229 = sext i16 %228 to i32, !dbg !1851
  %230 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1853
  %231 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %230, i32 0, i32 9, !dbg !1854
  %232 = load i32, i32* %231, align 8, !dbg !1854
  %233 = load %struct._TRIBLT_ORDER*, %struct._TRIBLT_ORDER** %6, align 8, !dbg !1855
  %234 = getelementptr inbounds %struct._TRIBLT_ORDER, %struct._TRIBLT_ORDER* %233, i32 0, i32 10, !dbg !1856
  %235 = load i32, i32* %234, align 4, !dbg !1856
  call void @ui_triblt(i8 zeroext %204, i32 %208, i32 %212, i32 %216, i32 %220, i8* %221, i32 %225, i32 %229, %struct._BRUSH* %10, i32 %232, i32 %235), !dbg !1857
  br label %236, !dbg !1858

; <label>:236:                                    ; preds = %199, %198
  ret void, !dbg !1859
}

; Function Attrs: nounwind uwtable
define internal void @process_polygon(%struct.stream*, %struct._POLYGON_ORDER*, i32, i32) #0 !dbg !1861 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._POLYGON_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct._RD_POINT*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1865, metadata !315), !dbg !1866
  store %struct._POLYGON_ORDER* %1, %struct._POLYGON_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._POLYGON_ORDER** %6, metadata !1867, metadata !315), !dbg !1868
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1869, metadata !315), !dbg !1870
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1871, metadata !315), !dbg !1872
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1873, metadata !315), !dbg !1874
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1875, metadata !315), !dbg !1876
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1877, metadata !315), !dbg !1878
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1879, metadata !315), !dbg !1880
  store i8 0, i8* %12, align 1, !dbg !1880
  call void @llvm.dbg.declare(metadata %struct._RD_POINT** %13, metadata !1881, metadata !315), !dbg !1882
  %14 = load i32, i32* %7, align 4, !dbg !1883
  %15 = and i32 %14, 1, !dbg !1885
  %16 = icmp ne i32 %15, 0, !dbg !1885
  br i1 %16, label %17, label %22, !dbg !1886

; <label>:17:                                     ; preds = %4
  %18 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1887
  %19 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1888
  %20 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %19, i32 0, i32 0, !dbg !1889
  %21 = load i32, i32* %8, align 4, !dbg !1890
  call void @rdp_in_coord(%struct.stream* %18, i16* %20, i32 %21), !dbg !1891
  br label %22, !dbg !1891

; <label>:22:                                     ; preds = %17, %4
  %23 = load i32, i32* %7, align 4, !dbg !1892
  %24 = and i32 %23, 2, !dbg !1894
  %25 = icmp ne i32 %24, 0, !dbg !1894
  br i1 %25, label %26, label %31, !dbg !1895

; <label>:26:                                     ; preds = %22
  %27 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1896
  %28 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1897
  %29 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %28, i32 0, i32 1, !dbg !1898
  %30 = load i32, i32* %8, align 4, !dbg !1899
  call void @rdp_in_coord(%struct.stream* %27, i16* %29, i32 %30), !dbg !1900
  br label %31, !dbg !1900

; <label>:31:                                     ; preds = %26, %22
  %32 = load i32, i32* %7, align 4, !dbg !1901
  %33 = and i32 %32, 4, !dbg !1903
  %34 = icmp ne i32 %33, 0, !dbg !1903
  br i1 %34, label %35, label %43, !dbg !1904

; <label>:35:                                     ; preds = %31
  %36 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1905
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !1906
  %38 = load i8*, i8** %37, align 8, !dbg !1907
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !1907
  store i8* %39, i8** %37, align 8, !dbg !1907
  %40 = load i8, i8* %38, align 1, !dbg !1908
  %41 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1909
  %42 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %41, i32 0, i32 2, !dbg !1910
  store i8 %40, i8* %42, align 4, !dbg !1911
  br label %43, !dbg !1909

; <label>:43:                                     ; preds = %35, %31
  %44 = load i32, i32* %7, align 4, !dbg !1912
  %45 = and i32 %44, 8, !dbg !1914
  %46 = icmp ne i32 %45, 0, !dbg !1914
  br i1 %46, label %47, label %55, !dbg !1915

; <label>:47:                                     ; preds = %43
  %48 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1916
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !1917
  %50 = load i8*, i8** %49, align 8, !dbg !1918
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !1918
  store i8* %51, i8** %49, align 8, !dbg !1918
  %52 = load i8, i8* %50, align 1, !dbg !1919
  %53 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1920
  %54 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %53, i32 0, i32 3, !dbg !1921
  store i8 %52, i8* %54, align 1, !dbg !1922
  br label %55, !dbg !1920

; <label>:55:                                     ; preds = %47, %43
  %56 = load i32, i32* %7, align 4, !dbg !1923
  %57 = and i32 %56, 16, !dbg !1925
  %58 = icmp ne i32 %57, 0, !dbg !1925
  br i1 %58, label %59, label %63, !dbg !1926

; <label>:59:                                     ; preds = %55
  %60 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1927
  %61 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1928
  %62 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %61, i32 0, i32 4, !dbg !1929
  call void @rdp_in_colour(%struct.stream* %60, i32* %62), !dbg !1930
  br label %63, !dbg !1930

; <label>:63:                                     ; preds = %59, %55
  %64 = load i32, i32* %7, align 4, !dbg !1931
  %65 = and i32 %64, 32, !dbg !1933
  %66 = icmp ne i32 %65, 0, !dbg !1933
  br i1 %66, label %67, label %75, !dbg !1934

; <label>:67:                                     ; preds = %63
  %68 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1935
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !1936
  %70 = load i8*, i8** %69, align 8, !dbg !1937
  %71 = getelementptr inbounds i8, i8* %70, i32 1, !dbg !1937
  store i8* %71, i8** %69, align 8, !dbg !1937
  %72 = load i8, i8* %70, align 1, !dbg !1938
  %73 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1939
  %74 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %73, i32 0, i32 5, !dbg !1940
  store i8 %72, i8* %74, align 4, !dbg !1941
  br label %75, !dbg !1939

; <label>:75:                                     ; preds = %67, %63
  %76 = load i32, i32* %7, align 4, !dbg !1942
  %77 = and i32 %76, 64, !dbg !1944
  %78 = icmp ne i32 %77, 0, !dbg !1944
  br i1 %78, label %79, label %106, !dbg !1945

; <label>:79:                                     ; preds = %75
  %80 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1946
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !1948
  %82 = load i8*, i8** %81, align 8, !dbg !1949
  %83 = getelementptr inbounds i8, i8* %82, i32 1, !dbg !1949
  store i8* %83, i8** %81, align 8, !dbg !1949
  %84 = load i8, i8* %82, align 1, !dbg !1950
  %85 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1951
  %86 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %85, i32 0, i32 6, !dbg !1952
  store i8 %84, i8* %86, align 1, !dbg !1953
  %87 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1954
  %88 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %87, i32 0, i32 7, !dbg !1956
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %88, i32 0, i32 0, !dbg !1957
  %90 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1958
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !1959
  %92 = load i8*, i8** %91, align 8, !dbg !1959
  %93 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1960
  %94 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %93, i32 0, i32 6, !dbg !1961
  %95 = load i8, i8* %94, align 1, !dbg !1961
  %96 = zext i8 %95 to i64, !dbg !1960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %92, i64 %96, i32 1, i1 false), !dbg !1957
  %97 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1962
  %98 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %97, i32 0, i32 6, !dbg !1963
  %99 = load i8, i8* %98, align 1, !dbg !1963
  %100 = zext i8 %99 to i32, !dbg !1962
  %101 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1964
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !1965
  %103 = load i8*, i8** %102, align 8, !dbg !1966
  %104 = sext i32 %100 to i64, !dbg !1966
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !1966
  store i8* %105, i8** %102, align 8, !dbg !1966
  br label %106, !dbg !1967

; <label>:106:                                    ; preds = %79, %75
  %107 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1968
  %108 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %107, i32 0, i32 0, !dbg !1969
  %109 = load i16, i16* %108, align 4, !dbg !1969
  %110 = sext i16 %109 to i32, !dbg !1968
  %111 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1970
  %112 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %111, i32 0, i32 1, !dbg !1971
  %113 = load i16, i16* %112, align 2, !dbg !1971
  %114 = sext i16 %113 to i32, !dbg !1970
  %115 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1972
  %116 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %115, i32 0, i32 2, !dbg !1973
  %117 = load i8, i8* %116, align 4, !dbg !1973
  %118 = zext i8 %117 to i32, !dbg !1972
  %119 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1974
  %120 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %119, i32 0, i32 3, !dbg !1975
  %121 = load i8, i8* %120, align 1, !dbg !1975
  %122 = zext i8 %121 to i32, !dbg !1974
  %123 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1976
  %124 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %123, i32 0, i32 4, !dbg !1977
  %125 = load i32, i32* %124, align 4, !dbg !1977
  %126 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1978
  %127 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %126, i32 0, i32 5, !dbg !1979
  %128 = load i8, i8* %127, align 4, !dbg !1979
  %129 = zext i8 %128 to i32, !dbg !1978
  %130 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1980
  %131 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %130, i32 0, i32 6, !dbg !1981
  %132 = load i8, i8* %131, align 1, !dbg !1981
  %133 = zext i8 %132 to i32, !dbg !1980
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i32 0, i32 0), i32 %110, i32 %114, i32 %118, i32 %122, i32 %125, i32 %129, i32 %133), !dbg !1982
  %134 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1983
  %135 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %134, i32 0, i32 2, !dbg !1985
  %136 = load i8, i8* %135, align 4, !dbg !1985
  %137 = zext i8 %136 to i32, !dbg !1983
  %138 = icmp slt i32 %137, 1, !dbg !1986
  br i1 %138, label %145, label %139, !dbg !1987

; <label>:139:                                    ; preds = %106
  %140 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1988
  %141 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %140, i32 0, i32 2, !dbg !1990
  %142 = load i8, i8* %141, align 4, !dbg !1990
  %143 = zext i8 %142 to i32, !dbg !1988
  %144 = icmp sgt i32 %143, 16, !dbg !1991
  br i1 %144, label %145, label %150, !dbg !1992

; <label>:145:                                    ; preds = %139, %106
  %146 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1993
  %147 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %146, i32 0, i32 2, !dbg !1995
  %148 = load i8, i8* %147, align 4, !dbg !1995
  %149 = zext i8 %148 to i32, !dbg !1993
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32 %149), !dbg !1996
  br label %294, !dbg !1997

; <label>:150:                                    ; preds = %139
  %151 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !1998
  %152 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %151, i32 0, i32 5, !dbg !1999
  %153 = load i8, i8* %152, align 4, !dbg !1999
  %154 = zext i8 %153 to i32, !dbg !1998
  %155 = add nsw i32 %154, 1, !dbg !2000
  %156 = sext i32 %155 to i64, !dbg !2001
  %157 = mul i64 %156, 4, !dbg !2002
  %158 = trunc i64 %157 to i32, !dbg !2001
  %159 = call i8* @xmalloc(i32 %158), !dbg !2003
  %160 = bitcast i8* %159 to %struct._RD_POINT*, !dbg !2004
  store %struct._RD_POINT* %160, %struct._RD_POINT** %13, align 8, !dbg !2005
  %161 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2006
  %162 = bitcast %struct._RD_POINT* %161 to i8*, !dbg !2007
  %163 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2008
  %164 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %163, i32 0, i32 5, !dbg !2009
  %165 = load i8, i8* %164, align 4, !dbg !2009
  %166 = zext i8 %165 to i32, !dbg !2008
  %167 = add nsw i32 %166, 1, !dbg !2010
  %168 = sext i32 %167 to i64, !dbg !2011
  %169 = mul i64 %168, 4, !dbg !2012
  call void @llvm.memset.p0i8.i64(i8* %162, i8 0, i64 %169, i32 2, i1 false), !dbg !2007
  %170 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2013
  %171 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %170, i32 0, i32 0, !dbg !2014
  %172 = load i16, i16* %171, align 4, !dbg !2014
  %173 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2015
  %174 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %173, i64 0, !dbg !2015
  %175 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %174, i32 0, i32 0, !dbg !2016
  store i16 %172, i16* %175, align 2, !dbg !2017
  %176 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2018
  %177 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %176, i32 0, i32 1, !dbg !2019
  %178 = load i16, i16* %177, align 2, !dbg !2019
  %179 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2020
  %180 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %179, i64 0, !dbg !2020
  %181 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %180, i32 0, i32 1, !dbg !2021
  store i16 %178, i16* %181, align 2, !dbg !2022
  store i32 0, i32* %9, align 4, !dbg !2023
  %182 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2024
  %183 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %182, i32 0, i32 5, !dbg !2025
  %184 = load i8, i8* %183, align 4, !dbg !2025
  %185 = zext i8 %184 to i32, !dbg !2024
  %186 = sub nsw i32 %185, 1, !dbg !2026
  %187 = sdiv i32 %186, 4, !dbg !2027
  %188 = add nsw i32 %187, 1, !dbg !2028
  store i32 %188, i32* %10, align 4, !dbg !2029
  store i32 1, i32* %11, align 4, !dbg !2030
  br label %189, !dbg !2032

; <label>:189:                                    ; preds = %260, %150
  %190 = load i32, i32* %11, align 4, !dbg !2033
  %191 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2036
  %192 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %191, i32 0, i32 5, !dbg !2037
  %193 = load i8, i8* %192, align 4, !dbg !2037
  %194 = zext i8 %193 to i32, !dbg !2036
  %195 = icmp sle i32 %190, %194, !dbg !2038
  br i1 %195, label %196, label %206, !dbg !2039

; <label>:196:                                    ; preds = %189
  %197 = load i32, i32* %11, align 4, !dbg !2040
  %198 = icmp slt i32 %197, 256, !dbg !2042
  br i1 %198, label %199, label %206, !dbg !2043

; <label>:199:                                    ; preds = %196
  %200 = load i32, i32* %10, align 4, !dbg !2044
  %201 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2046
  %202 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %201, i32 0, i32 6, !dbg !2047
  %203 = load i8, i8* %202, align 1, !dbg !2047
  %204 = zext i8 %203 to i32, !dbg !2046
  %205 = icmp slt i32 %200, %204, !dbg !2048
  br label %206

; <label>:206:                                    ; preds = %199, %196, %189
  %207 = phi i1 [ false, %196 ], [ false, %189 ], [ %205, %199 ]
  br i1 %207, label %208, label %263, !dbg !2049

; <label>:208:                                    ; preds = %206
  %209 = load i32, i32* %11, align 4, !dbg !2051
  %210 = sub nsw i32 %209, 1, !dbg !2054
  %211 = srem i32 %210, 4, !dbg !2055
  %212 = icmp eq i32 %211, 0, !dbg !2056
  br i1 %212, label %213, label %221, !dbg !2057

; <label>:213:                                    ; preds = %208
  %214 = load i32, i32* %9, align 4, !dbg !2058
  %215 = add nsw i32 %214, 1, !dbg !2058
  store i32 %215, i32* %9, align 4, !dbg !2058
  %216 = sext i32 %214 to i64, !dbg !2059
  %217 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2059
  %218 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %217, i32 0, i32 7, !dbg !2060
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* %218, i64 0, i64 %216, !dbg !2059
  %220 = load i8, i8* %219, align 1, !dbg !2059
  store i8 %220, i8* %12, align 1, !dbg !2061
  br label %221, !dbg !2062

; <label>:221:                                    ; preds = %213, %208
  %222 = load i8, i8* %12, align 1, !dbg !2063
  %223 = zext i8 %222 to i32, !dbg !2063
  %224 = xor i32 %223, -1, !dbg !2065
  %225 = and i32 %224, 128, !dbg !2066
  %226 = icmp ne i32 %225, 0, !dbg !2066
  br i1 %226, label %227, label %238, !dbg !2067

; <label>:227:                                    ; preds = %221
  %228 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2068
  %229 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %228, i32 0, i32 7, !dbg !2069
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %229, i32 0, i32 0, !dbg !2068
  %231 = call i32 @parse_delta(i8* %230, i32* %10), !dbg !2070
  %232 = trunc i32 %231 to i16, !dbg !2070
  %233 = load i32, i32* %11, align 4, !dbg !2071
  %234 = sext i32 %233 to i64, !dbg !2072
  %235 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2072
  %236 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %235, i64 %234, !dbg !2072
  %237 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %236, i32 0, i32 0, !dbg !2073
  store i16 %232, i16* %237, align 2, !dbg !2074
  br label %238, !dbg !2072

; <label>:238:                                    ; preds = %227, %221
  %239 = load i8, i8* %12, align 1, !dbg !2075
  %240 = zext i8 %239 to i32, !dbg !2075
  %241 = xor i32 %240, -1, !dbg !2077
  %242 = and i32 %241, 64, !dbg !2078
  %243 = icmp ne i32 %242, 0, !dbg !2078
  br i1 %243, label %244, label %255, !dbg !2079

; <label>:244:                                    ; preds = %238
  %245 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2080
  %246 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %245, i32 0, i32 7, !dbg !2081
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %246, i32 0, i32 0, !dbg !2080
  %248 = call i32 @parse_delta(i8* %247, i32* %10), !dbg !2082
  %249 = trunc i32 %248 to i16, !dbg !2082
  %250 = load i32, i32* %11, align 4, !dbg !2083
  %251 = sext i32 %250 to i64, !dbg !2084
  %252 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2084
  %253 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %252, i64 %251, !dbg !2084
  %254 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %253, i32 0, i32 1, !dbg !2085
  store i16 %249, i16* %254, align 2, !dbg !2086
  br label %255, !dbg !2084

; <label>:255:                                    ; preds = %244, %238
  %256 = load i8, i8* %12, align 1, !dbg !2087
  %257 = zext i8 %256 to i32, !dbg !2087
  %258 = shl i32 %257, 2, !dbg !2087
  %259 = trunc i32 %258 to i8, !dbg !2087
  store i8 %259, i8* %12, align 1, !dbg !2087
  br label %260, !dbg !2088

; <label>:260:                                    ; preds = %255
  %261 = load i32, i32* %11, align 4, !dbg !2089
  %262 = add nsw i32 %261, 1, !dbg !2089
  store i32 %262, i32* %11, align 4, !dbg !2089
  br label %189, !dbg !2091, !llvm.loop !2092

; <label>:263:                                    ; preds = %206
  %264 = load i32, i32* %11, align 4, !dbg !2094
  %265 = sub nsw i32 %264, 1, !dbg !2096
  %266 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2097
  %267 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %266, i32 0, i32 5, !dbg !2098
  %268 = load i8, i8* %267, align 4, !dbg !2098
  %269 = zext i8 %268 to i32, !dbg !2097
  %270 = icmp eq i32 %265, %269, !dbg !2099
  br i1 %270, label %271, label %290, !dbg !2100

; <label>:271:                                    ; preds = %263
  %272 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2101
  %273 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %272, i32 0, i32 2, !dbg !2102
  %274 = load i8, i8* %273, align 4, !dbg !2102
  %275 = zext i8 %274 to i32, !dbg !2101
  %276 = sub nsw i32 %275, 1, !dbg !2103
  %277 = trunc i32 %276 to i8, !dbg !2101
  %278 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2104
  %279 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %278, i32 0, i32 3, !dbg !2105
  %280 = load i8, i8* %279, align 1, !dbg !2105
  %281 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2106
  %282 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2107
  %283 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %282, i32 0, i32 5, !dbg !2108
  %284 = load i8, i8* %283, align 4, !dbg !2108
  %285 = zext i8 %284 to i32, !dbg !2107
  %286 = add nsw i32 %285, 1, !dbg !2109
  %287 = load %struct._POLYGON_ORDER*, %struct._POLYGON_ORDER** %6, align 8, !dbg !2110
  %288 = getelementptr inbounds %struct._POLYGON_ORDER, %struct._POLYGON_ORDER* %287, i32 0, i32 4, !dbg !2111
  %289 = load i32, i32* %288, align 4, !dbg !2111
  call void @ui_polygon(i8 zeroext %277, i8 zeroext %280, %struct._RD_POINT* %281, i32 %286, %struct._BRUSH* null, i32 0, i32 %289), !dbg !2112
  br label %291, !dbg !2112

; <label>:290:                                    ; preds = %263
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0)), !dbg !2113
  br label %291

; <label>:291:                                    ; preds = %290, %271
  %292 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2114
  %293 = bitcast %struct._RD_POINT* %292 to i8*, !dbg !2114
  call void @xfree(i8* %293), !dbg !2115
  br label %294, !dbg !2116

; <label>:294:                                    ; preds = %291, %145
  ret void, !dbg !2117
}

; Function Attrs: nounwind uwtable
define internal void @process_polygon2(%struct.stream*, %struct._POLYGON2_ORDER*, i32, i32) #0 !dbg !2119 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._POLYGON2_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct._RD_POINT*, align 8
  %14 = alloca %struct._BRUSH, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2123, metadata !315), !dbg !2124
  store %struct._POLYGON2_ORDER* %1, %struct._POLYGON2_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._POLYGON2_ORDER** %6, metadata !2125, metadata !315), !dbg !2126
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2127, metadata !315), !dbg !2128
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2129, metadata !315), !dbg !2130
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2131, metadata !315), !dbg !2132
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2133, metadata !315), !dbg !2134
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2135, metadata !315), !dbg !2136
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2137, metadata !315), !dbg !2138
  store i8 0, i8* %12, align 1, !dbg !2138
  call void @llvm.dbg.declare(metadata %struct._RD_POINT** %13, metadata !2139, metadata !315), !dbg !2140
  call void @llvm.dbg.declare(metadata %struct._BRUSH* %14, metadata !2141, metadata !315), !dbg !2142
  %15 = load i32, i32* %7, align 4, !dbg !2143
  %16 = and i32 %15, 1, !dbg !2145
  %17 = icmp ne i32 %16, 0, !dbg !2145
  br i1 %17, label %18, label %23, !dbg !2146

; <label>:18:                                     ; preds = %4
  %19 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2147
  %20 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2148
  %21 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %20, i32 0, i32 0, !dbg !2149
  %22 = load i32, i32* %8, align 4, !dbg !2150
  call void @rdp_in_coord(%struct.stream* %19, i16* %21, i32 %22), !dbg !2151
  br label %23, !dbg !2151

; <label>:23:                                     ; preds = %18, %4
  %24 = load i32, i32* %7, align 4, !dbg !2152
  %25 = and i32 %24, 2, !dbg !2154
  %26 = icmp ne i32 %25, 0, !dbg !2154
  br i1 %26, label %27, label %32, !dbg !2155

; <label>:27:                                     ; preds = %23
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2156
  %29 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2157
  %30 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %29, i32 0, i32 1, !dbg !2158
  %31 = load i32, i32* %8, align 4, !dbg !2159
  call void @rdp_in_coord(%struct.stream* %28, i16* %30, i32 %31), !dbg !2160
  br label %32, !dbg !2160

; <label>:32:                                     ; preds = %27, %23
  %33 = load i32, i32* %7, align 4, !dbg !2161
  %34 = and i32 %33, 4, !dbg !2163
  %35 = icmp ne i32 %34, 0, !dbg !2163
  br i1 %35, label %36, label %44, !dbg !2164

; <label>:36:                                     ; preds = %32
  %37 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2165
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !2166
  %39 = load i8*, i8** %38, align 8, !dbg !2167
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !2167
  store i8* %40, i8** %38, align 8, !dbg !2167
  %41 = load i8, i8* %39, align 1, !dbg !2168
  %42 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2169
  %43 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %42, i32 0, i32 2, !dbg !2170
  store i8 %41, i8* %43, align 4, !dbg !2171
  br label %44, !dbg !2169

; <label>:44:                                     ; preds = %36, %32
  %45 = load i32, i32* %7, align 4, !dbg !2172
  %46 = and i32 %45, 8, !dbg !2174
  %47 = icmp ne i32 %46, 0, !dbg !2174
  br i1 %47, label %48, label %56, !dbg !2175

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2176
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !2177
  %51 = load i8*, i8** %50, align 8, !dbg !2178
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !2178
  store i8* %52, i8** %50, align 8, !dbg !2178
  %53 = load i8, i8* %51, align 1, !dbg !2179
  %54 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2180
  %55 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %54, i32 0, i32 3, !dbg !2181
  store i8 %53, i8* %55, align 1, !dbg !2182
  br label %56, !dbg !2180

; <label>:56:                                     ; preds = %48, %44
  %57 = load i32, i32* %7, align 4, !dbg !2183
  %58 = and i32 %57, 16, !dbg !2185
  %59 = icmp ne i32 %58, 0, !dbg !2185
  br i1 %59, label %60, label %64, !dbg !2186

; <label>:60:                                     ; preds = %56
  %61 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2187
  %62 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2188
  %63 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %62, i32 0, i32 4, !dbg !2189
  call void @rdp_in_colour(%struct.stream* %61, i32* %63), !dbg !2190
  br label %64, !dbg !2190

; <label>:64:                                     ; preds = %60, %56
  %65 = load i32, i32* %7, align 4, !dbg !2191
  %66 = and i32 %65, 32, !dbg !2193
  %67 = icmp ne i32 %66, 0, !dbg !2193
  br i1 %67, label %68, label %72, !dbg !2194

; <label>:68:                                     ; preds = %64
  %69 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2195
  %70 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2196
  %71 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %70, i32 0, i32 5, !dbg !2197
  call void @rdp_in_colour(%struct.stream* %69, i32* %71), !dbg !2198
  br label %72, !dbg !2198

; <label>:72:                                     ; preds = %68, %64
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2199
  %74 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2200
  %75 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %74, i32 0, i32 6, !dbg !2201
  %76 = load i32, i32* %7, align 4, !dbg !2202
  %77 = lshr i32 %76, 6, !dbg !2203
  %78 = call i32 @rdp_parse_brush(%struct.stream* %73, %struct._BRUSH* %75, i32 %77), !dbg !2204
  %79 = load i32, i32* %7, align 4, !dbg !2205
  %80 = and i32 %79, 2048, !dbg !2207
  %81 = icmp ne i32 %80, 0, !dbg !2207
  br i1 %81, label %82, label %90, !dbg !2208

; <label>:82:                                     ; preds = %72
  %83 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2209
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !2210
  %85 = load i8*, i8** %84, align 8, !dbg !2211
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !2211
  store i8* %86, i8** %84, align 8, !dbg !2211
  %87 = load i8, i8* %85, align 1, !dbg !2212
  %88 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2213
  %89 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %88, i32 0, i32 7, !dbg !2214
  store i8 %87, i8* %89, align 8, !dbg !2215
  br label %90, !dbg !2213

; <label>:90:                                     ; preds = %82, %72
  %91 = load i32, i32* %7, align 4, !dbg !2216
  %92 = and i32 %91, 4096, !dbg !2218
  %93 = icmp ne i32 %92, 0, !dbg !2218
  br i1 %93, label %94, label %121, !dbg !2219

; <label>:94:                                     ; preds = %90
  %95 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2220
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !2222
  %97 = load i8*, i8** %96, align 8, !dbg !2223
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !2223
  store i8* %98, i8** %96, align 8, !dbg !2223
  %99 = load i8, i8* %97, align 1, !dbg !2224
  %100 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2225
  %101 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %100, i32 0, i32 8, !dbg !2226
  store i8 %99, i8* %101, align 1, !dbg !2227
  %102 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2228
  %103 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %102, i32 0, i32 9, !dbg !2230
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %103, i32 0, i32 0, !dbg !2231
  %105 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2232
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0, !dbg !2233
  %107 = load i8*, i8** %106, align 8, !dbg !2233
  %108 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2234
  %109 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %108, i32 0, i32 8, !dbg !2235
  %110 = load i8, i8* %109, align 1, !dbg !2235
  %111 = zext i8 %110 to i64, !dbg !2234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %107, i64 %111, i32 1, i1 false), !dbg !2231
  %112 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2236
  %113 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %112, i32 0, i32 8, !dbg !2237
  %114 = load i8, i8* %113, align 1, !dbg !2237
  %115 = zext i8 %114 to i32, !dbg !2236
  %116 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2238
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !2239
  %118 = load i8*, i8** %117, align 8, !dbg !2240
  %119 = sext i32 %115 to i64, !dbg !2240
  %120 = getelementptr inbounds i8, i8* %118, i64 %119, !dbg !2240
  store i8* %120, i8** %117, align 8, !dbg !2240
  br label %121, !dbg !2241

; <label>:121:                                    ; preds = %94, %90
  %122 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2242
  %123 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %122, i32 0, i32 0, !dbg !2243
  %124 = load i16, i16* %123, align 8, !dbg !2243
  %125 = sext i16 %124 to i32, !dbg !2242
  %126 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2244
  %127 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %126, i32 0, i32 1, !dbg !2245
  %128 = load i16, i16* %127, align 2, !dbg !2245
  %129 = sext i16 %128 to i32, !dbg !2244
  %130 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2246
  %131 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %130, i32 0, i32 2, !dbg !2247
  %132 = load i8, i8* %131, align 4, !dbg !2247
  %133 = zext i8 %132 to i32, !dbg !2246
  %134 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2248
  %135 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %134, i32 0, i32 3, !dbg !2249
  %136 = load i8, i8* %135, align 1, !dbg !2249
  %137 = zext i8 %136 to i32, !dbg !2248
  %138 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2250
  %139 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %138, i32 0, i32 6, !dbg !2251
  %140 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %139, i32 0, i32 2, !dbg !2252
  %141 = load i8, i8* %140, align 2, !dbg !2252
  %142 = zext i8 %141 to i32, !dbg !2250
  %143 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2253
  %144 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %143, i32 0, i32 4, !dbg !2254
  %145 = load i32, i32* %144, align 8, !dbg !2254
  %146 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2255
  %147 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %146, i32 0, i32 5, !dbg !2256
  %148 = load i32, i32* %147, align 4, !dbg !2256
  %149 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2257
  %150 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %149, i32 0, i32 7, !dbg !2258
  %151 = load i8, i8* %150, align 8, !dbg !2258
  %152 = zext i8 %151 to i32, !dbg !2257
  %153 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2259
  %154 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %153, i32 0, i32 8, !dbg !2260
  %155 = load i8, i8* %154, align 1, !dbg !2260
  %156 = zext i8 %155 to i32, !dbg !2259
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.27, i32 0, i32 0), i32 %125, i32 %129, i32 %133, i32 %137, i32 %142, i32 %145, i32 %148, i32 %152, i32 %156), !dbg !2261
  %157 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2262
  %158 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %157, i32 0, i32 2, !dbg !2264
  %159 = load i8, i8* %158, align 4, !dbg !2264
  %160 = zext i8 %159 to i32, !dbg !2262
  %161 = icmp slt i32 %160, 1, !dbg !2265
  br i1 %161, label %168, label %162, !dbg !2266

; <label>:162:                                    ; preds = %121
  %163 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2267
  %164 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %163, i32 0, i32 2, !dbg !2269
  %165 = load i8, i8* %164, align 4, !dbg !2269
  %166 = zext i8 %165 to i32, !dbg !2267
  %167 = icmp sgt i32 %166, 16, !dbg !2270
  br i1 %167, label %168, label %173, !dbg !2271

; <label>:168:                                    ; preds = %162, %121
  %169 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2272
  %170 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %169, i32 0, i32 2, !dbg !2274
  %171 = load i8, i8* %170, align 4, !dbg !2274
  %172 = zext i8 %171 to i32, !dbg !2272
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i32 %172), !dbg !2275
  br label %322, !dbg !2276

; <label>:173:                                    ; preds = %162
  %174 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2277
  %175 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %174, i32 0, i32 6, !dbg !2278
  call void @setup_brush(%struct._BRUSH* %14, %struct._BRUSH* %175), !dbg !2279
  %176 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2280
  %177 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %176, i32 0, i32 7, !dbg !2281
  %178 = load i8, i8* %177, align 8, !dbg !2281
  %179 = zext i8 %178 to i32, !dbg !2280
  %180 = add nsw i32 %179, 1, !dbg !2282
  %181 = sext i32 %180 to i64, !dbg !2283
  %182 = mul i64 %181, 4, !dbg !2284
  %183 = trunc i64 %182 to i32, !dbg !2283
  %184 = call i8* @xmalloc(i32 %183), !dbg !2285
  %185 = bitcast i8* %184 to %struct._RD_POINT*, !dbg !2286
  store %struct._RD_POINT* %185, %struct._RD_POINT** %13, align 8, !dbg !2287
  %186 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2288
  %187 = bitcast %struct._RD_POINT* %186 to i8*, !dbg !2289
  %188 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2290
  %189 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %188, i32 0, i32 7, !dbg !2291
  %190 = load i8, i8* %189, align 8, !dbg !2291
  %191 = zext i8 %190 to i32, !dbg !2290
  %192 = add nsw i32 %191, 1, !dbg !2292
  %193 = sext i32 %192 to i64, !dbg !2293
  %194 = mul i64 %193, 4, !dbg !2294
  call void @llvm.memset.p0i8.i64(i8* %187, i8 0, i64 %194, i32 2, i1 false), !dbg !2289
  %195 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2295
  %196 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %195, i32 0, i32 0, !dbg !2296
  %197 = load i16, i16* %196, align 8, !dbg !2296
  %198 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2297
  %199 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %198, i64 0, !dbg !2297
  %200 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %199, i32 0, i32 0, !dbg !2298
  store i16 %197, i16* %200, align 2, !dbg !2299
  %201 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2300
  %202 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %201, i32 0, i32 1, !dbg !2301
  %203 = load i16, i16* %202, align 2, !dbg !2301
  %204 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2302
  %205 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %204, i64 0, !dbg !2302
  %206 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %205, i32 0, i32 1, !dbg !2303
  store i16 %203, i16* %206, align 2, !dbg !2304
  store i32 0, i32* %9, align 4, !dbg !2305
  %207 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2306
  %208 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %207, i32 0, i32 7, !dbg !2307
  %209 = load i8, i8* %208, align 8, !dbg !2307
  %210 = zext i8 %209 to i32, !dbg !2306
  %211 = sub nsw i32 %210, 1, !dbg !2308
  %212 = sdiv i32 %211, 4, !dbg !2309
  %213 = add nsw i32 %212, 1, !dbg !2310
  store i32 %213, i32* %10, align 4, !dbg !2311
  store i32 1, i32* %11, align 4, !dbg !2312
  br label %214, !dbg !2314

; <label>:214:                                    ; preds = %285, %173
  %215 = load i32, i32* %11, align 4, !dbg !2315
  %216 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2318
  %217 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %216, i32 0, i32 7, !dbg !2319
  %218 = load i8, i8* %217, align 8, !dbg !2319
  %219 = zext i8 %218 to i32, !dbg !2318
  %220 = icmp sle i32 %215, %219, !dbg !2320
  br i1 %220, label %221, label %231, !dbg !2321

; <label>:221:                                    ; preds = %214
  %222 = load i32, i32* %11, align 4, !dbg !2322
  %223 = icmp slt i32 %222, 256, !dbg !2324
  br i1 %223, label %224, label %231, !dbg !2325

; <label>:224:                                    ; preds = %221
  %225 = load i32, i32* %10, align 4, !dbg !2326
  %226 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2328
  %227 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %226, i32 0, i32 8, !dbg !2329
  %228 = load i8, i8* %227, align 1, !dbg !2329
  %229 = zext i8 %228 to i32, !dbg !2328
  %230 = icmp slt i32 %225, %229, !dbg !2330
  br label %231

; <label>:231:                                    ; preds = %224, %221, %214
  %232 = phi i1 [ false, %221 ], [ false, %214 ], [ %230, %224 ]
  br i1 %232, label %233, label %288, !dbg !2331

; <label>:233:                                    ; preds = %231
  %234 = load i32, i32* %11, align 4, !dbg !2333
  %235 = sub nsw i32 %234, 1, !dbg !2336
  %236 = srem i32 %235, 4, !dbg !2337
  %237 = icmp eq i32 %236, 0, !dbg !2338
  br i1 %237, label %238, label %246, !dbg !2339

; <label>:238:                                    ; preds = %233
  %239 = load i32, i32* %9, align 4, !dbg !2340
  %240 = add nsw i32 %239, 1, !dbg !2340
  store i32 %240, i32* %9, align 4, !dbg !2340
  %241 = sext i32 %239 to i64, !dbg !2341
  %242 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2341
  %243 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %242, i32 0, i32 9, !dbg !2342
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %243, i64 0, i64 %241, !dbg !2341
  %245 = load i8, i8* %244, align 1, !dbg !2341
  store i8 %245, i8* %12, align 1, !dbg !2343
  br label %246, !dbg !2344

; <label>:246:                                    ; preds = %238, %233
  %247 = load i8, i8* %12, align 1, !dbg !2345
  %248 = zext i8 %247 to i32, !dbg !2345
  %249 = xor i32 %248, -1, !dbg !2347
  %250 = and i32 %249, 128, !dbg !2348
  %251 = icmp ne i32 %250, 0, !dbg !2348
  br i1 %251, label %252, label %263, !dbg !2349

; <label>:252:                                    ; preds = %246
  %253 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2350
  %254 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %253, i32 0, i32 9, !dbg !2351
  %255 = getelementptr inbounds [256 x i8], [256 x i8]* %254, i32 0, i32 0, !dbg !2350
  %256 = call i32 @parse_delta(i8* %255, i32* %10), !dbg !2352
  %257 = trunc i32 %256 to i16, !dbg !2352
  %258 = load i32, i32* %11, align 4, !dbg !2353
  %259 = sext i32 %258 to i64, !dbg !2354
  %260 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2354
  %261 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %260, i64 %259, !dbg !2354
  %262 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %261, i32 0, i32 0, !dbg !2355
  store i16 %257, i16* %262, align 2, !dbg !2356
  br label %263, !dbg !2354

; <label>:263:                                    ; preds = %252, %246
  %264 = load i8, i8* %12, align 1, !dbg !2357
  %265 = zext i8 %264 to i32, !dbg !2357
  %266 = xor i32 %265, -1, !dbg !2359
  %267 = and i32 %266, 64, !dbg !2360
  %268 = icmp ne i32 %267, 0, !dbg !2360
  br i1 %268, label %269, label %280, !dbg !2361

; <label>:269:                                    ; preds = %263
  %270 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2362
  %271 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %270, i32 0, i32 9, !dbg !2363
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %271, i32 0, i32 0, !dbg !2362
  %273 = call i32 @parse_delta(i8* %272, i32* %10), !dbg !2364
  %274 = trunc i32 %273 to i16, !dbg !2364
  %275 = load i32, i32* %11, align 4, !dbg !2365
  %276 = sext i32 %275 to i64, !dbg !2366
  %277 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2366
  %278 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %277, i64 %276, !dbg !2366
  %279 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %278, i32 0, i32 1, !dbg !2367
  store i16 %274, i16* %279, align 2, !dbg !2368
  br label %280, !dbg !2366

; <label>:280:                                    ; preds = %269, %263
  %281 = load i8, i8* %12, align 1, !dbg !2369
  %282 = zext i8 %281 to i32, !dbg !2369
  %283 = shl i32 %282, 2, !dbg !2369
  %284 = trunc i32 %283 to i8, !dbg !2369
  store i8 %284, i8* %12, align 1, !dbg !2369
  br label %285, !dbg !2370

; <label>:285:                                    ; preds = %280
  %286 = load i32, i32* %11, align 4, !dbg !2371
  %287 = add nsw i32 %286, 1, !dbg !2371
  store i32 %287, i32* %11, align 4, !dbg !2371
  br label %214, !dbg !2373, !llvm.loop !2374

; <label>:288:                                    ; preds = %231
  %289 = load i32, i32* %11, align 4, !dbg !2376
  %290 = sub nsw i32 %289, 1, !dbg !2378
  %291 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2379
  %292 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %291, i32 0, i32 7, !dbg !2380
  %293 = load i8, i8* %292, align 8, !dbg !2380
  %294 = zext i8 %293 to i32, !dbg !2379
  %295 = icmp eq i32 %290, %294, !dbg !2381
  br i1 %295, label %296, label %318, !dbg !2382

; <label>:296:                                    ; preds = %288
  %297 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2383
  %298 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %297, i32 0, i32 2, !dbg !2384
  %299 = load i8, i8* %298, align 4, !dbg !2384
  %300 = zext i8 %299 to i32, !dbg !2383
  %301 = sub nsw i32 %300, 1, !dbg !2385
  %302 = trunc i32 %301 to i8, !dbg !2383
  %303 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2386
  %304 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %303, i32 0, i32 3, !dbg !2387
  %305 = load i8, i8* %304, align 1, !dbg !2387
  %306 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2388
  %307 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2389
  %308 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %307, i32 0, i32 7, !dbg !2390
  %309 = load i8, i8* %308, align 8, !dbg !2390
  %310 = zext i8 %309 to i32, !dbg !2389
  %311 = add nsw i32 %310, 1, !dbg !2391
  %312 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2392
  %313 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %312, i32 0, i32 4, !dbg !2393
  %314 = load i32, i32* %313, align 8, !dbg !2393
  %315 = load %struct._POLYGON2_ORDER*, %struct._POLYGON2_ORDER** %6, align 8, !dbg !2394
  %316 = getelementptr inbounds %struct._POLYGON2_ORDER, %struct._POLYGON2_ORDER* %315, i32 0, i32 5, !dbg !2395
  %317 = load i32, i32* %316, align 4, !dbg !2395
  call void @ui_polygon(i8 zeroext %302, i8 zeroext %305, %struct._RD_POINT* %306, i32 %311, %struct._BRUSH* %14, i32 %314, i32 %317), !dbg !2396
  br label %319, !dbg !2396

; <label>:318:                                    ; preds = %288
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0)), !dbg !2397
  br label %319

; <label>:319:                                    ; preds = %318, %296
  %320 = load %struct._RD_POINT*, %struct._RD_POINT** %13, align 8, !dbg !2398
  %321 = bitcast %struct._RD_POINT* %320 to i8*, !dbg !2398
  call void @xfree(i8* %321), !dbg !2399
  br label %322, !dbg !2400

; <label>:322:                                    ; preds = %319, %168
  ret void, !dbg !2401
}

; Function Attrs: nounwind uwtable
define internal void @process_polyline(%struct.stream*, %struct._POLYLINE_ORDER*, i32, i32) #0 !dbg !2403 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._POLYLINE_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct._PEN, align 4
  %14 = alloca %struct._RD_POINT*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2407, metadata !315), !dbg !2408
  store %struct._POLYLINE_ORDER* %1, %struct._POLYLINE_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._POLYLINE_ORDER** %6, metadata !2409, metadata !315), !dbg !2410
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2411, metadata !315), !dbg !2412
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2413, metadata !315), !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2415, metadata !315), !dbg !2416
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2417, metadata !315), !dbg !2418
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2419, metadata !315), !dbg !2420
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2421, metadata !315), !dbg !2422
  store i8 0, i8* %12, align 1, !dbg !2422
  call void @llvm.dbg.declare(metadata %struct._PEN* %13, metadata !2423, metadata !315), !dbg !2424
  call void @llvm.dbg.declare(metadata %struct._RD_POINT** %14, metadata !2425, metadata !315), !dbg !2426
  %15 = load i32, i32* %7, align 4, !dbg !2427
  %16 = and i32 %15, 1, !dbg !2429
  %17 = icmp ne i32 %16, 0, !dbg !2429
  br i1 %17, label %18, label %23, !dbg !2430

; <label>:18:                                     ; preds = %4
  %19 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2431
  %20 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2432
  %21 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %20, i32 0, i32 0, !dbg !2433
  %22 = load i32, i32* %8, align 4, !dbg !2434
  call void @rdp_in_coord(%struct.stream* %19, i16* %21, i32 %22), !dbg !2435
  br label %23, !dbg !2435

; <label>:23:                                     ; preds = %18, %4
  %24 = load i32, i32* %7, align 4, !dbg !2436
  %25 = and i32 %24, 2, !dbg !2438
  %26 = icmp ne i32 %25, 0, !dbg !2438
  br i1 %26, label %27, label %32, !dbg !2439

; <label>:27:                                     ; preds = %23
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2440
  %29 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2441
  %30 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %29, i32 0, i32 1, !dbg !2442
  %31 = load i32, i32* %8, align 4, !dbg !2443
  call void @rdp_in_coord(%struct.stream* %28, i16* %30, i32 %31), !dbg !2444
  br label %32, !dbg !2444

; <label>:32:                                     ; preds = %27, %23
  %33 = load i32, i32* %7, align 4, !dbg !2445
  %34 = and i32 %33, 4, !dbg !2447
  %35 = icmp ne i32 %34, 0, !dbg !2447
  br i1 %35, label %36, label %44, !dbg !2448

; <label>:36:                                     ; preds = %32
  %37 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2449
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !2450
  %39 = load i8*, i8** %38, align 8, !dbg !2451
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !2451
  store i8* %40, i8** %38, align 8, !dbg !2451
  %41 = load i8, i8* %39, align 1, !dbg !2452
  %42 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2453
  %43 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %42, i32 0, i32 2, !dbg !2454
  store i8 %41, i8* %43, align 4, !dbg !2455
  br label %44, !dbg !2453

; <label>:44:                                     ; preds = %36, %32
  %45 = load i32, i32* %7, align 4, !dbg !2456
  %46 = and i32 %45, 16, !dbg !2458
  %47 = icmp ne i32 %46, 0, !dbg !2458
  br i1 %47, label %48, label %52, !dbg !2459

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2460
  %50 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2461
  %51 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %50, i32 0, i32 3, !dbg !2462
  call void @rdp_in_colour(%struct.stream* %49, i32* %51), !dbg !2463
  br label %52, !dbg !2463

; <label>:52:                                     ; preds = %48, %44
  %53 = load i32, i32* %7, align 4, !dbg !2464
  %54 = and i32 %53, 32, !dbg !2466
  %55 = icmp ne i32 %54, 0, !dbg !2466
  br i1 %55, label %56, label %64, !dbg !2467

; <label>:56:                                     ; preds = %52
  %57 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2468
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !2469
  %59 = load i8*, i8** %58, align 8, !dbg !2470
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !2470
  store i8* %60, i8** %58, align 8, !dbg !2470
  %61 = load i8, i8* %59, align 1, !dbg !2471
  %62 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2472
  %63 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %62, i32 0, i32 4, !dbg !2473
  store i8 %61, i8* %63, align 4, !dbg !2474
  br label %64, !dbg !2472

; <label>:64:                                     ; preds = %56, %52
  %65 = load i32, i32* %7, align 4, !dbg !2475
  %66 = and i32 %65, 64, !dbg !2477
  %67 = icmp ne i32 %66, 0, !dbg !2477
  br i1 %67, label %68, label %95, !dbg !2478

; <label>:68:                                     ; preds = %64
  %69 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2479
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !2481
  %71 = load i8*, i8** %70, align 8, !dbg !2482
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !2482
  store i8* %72, i8** %70, align 8, !dbg !2482
  %73 = load i8, i8* %71, align 1, !dbg !2483
  %74 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2484
  %75 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %74, i32 0, i32 5, !dbg !2485
  store i8 %73, i8* %75, align 1, !dbg !2486
  %76 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2487
  %77 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %76, i32 0, i32 6, !dbg !2489
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %77, i32 0, i32 0, !dbg !2490
  %79 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2491
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !2492
  %81 = load i8*, i8** %80, align 8, !dbg !2492
  %82 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2493
  %83 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %82, i32 0, i32 5, !dbg !2494
  %84 = load i8, i8* %83, align 1, !dbg !2494
  %85 = zext i8 %84 to i64, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %81, i64 %85, i32 1, i1 false), !dbg !2490
  %86 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2495
  %87 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %86, i32 0, i32 5, !dbg !2496
  %88 = load i8, i8* %87, align 1, !dbg !2496
  %89 = zext i8 %88 to i32, !dbg !2495
  %90 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2497
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !2498
  %92 = load i8*, i8** %91, align 8, !dbg !2499
  %93 = sext i32 %89 to i64, !dbg !2499
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !2499
  store i8* %94, i8** %91, align 8, !dbg !2499
  br label %95, !dbg !2500

; <label>:95:                                     ; preds = %68, %64
  %96 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2501
  %97 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %96, i32 0, i32 0, !dbg !2502
  %98 = load i16, i16* %97, align 4, !dbg !2502
  %99 = sext i16 %98 to i32, !dbg !2501
  %100 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2503
  %101 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %100, i32 0, i32 1, !dbg !2504
  %102 = load i16, i16* %101, align 2, !dbg !2504
  %103 = sext i16 %102 to i32, !dbg !2503
  %104 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2505
  %105 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %104, i32 0, i32 2, !dbg !2506
  %106 = load i8, i8* %105, align 4, !dbg !2506
  %107 = zext i8 %106 to i32, !dbg !2505
  %108 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2507
  %109 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %108, i32 0, i32 3, !dbg !2508
  %110 = load i32, i32* %109, align 4, !dbg !2508
  %111 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2509
  %112 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %111, i32 0, i32 4, !dbg !2510
  %113 = load i8, i8* %112, align 4, !dbg !2510
  %114 = zext i8 %113 to i32, !dbg !2509
  %115 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2511
  %116 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %115, i32 0, i32 5, !dbg !2512
  %117 = load i8, i8* %116, align 1, !dbg !2512
  %118 = zext i8 %117 to i32, !dbg !2511
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i32 0, i32 0), i32 %99, i32 %103, i32 %107, i32 %110, i32 %114, i32 %118), !dbg !2513
  %119 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2514
  %120 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %119, i32 0, i32 2, !dbg !2516
  %121 = load i8, i8* %120, align 4, !dbg !2516
  %122 = zext i8 %121 to i32, !dbg !2514
  %123 = icmp slt i32 %122, 1, !dbg !2517
  br i1 %123, label %130, label %124, !dbg !2518

; <label>:124:                                    ; preds = %95
  %125 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2519
  %126 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %125, i32 0, i32 2, !dbg !2521
  %127 = load i8, i8* %126, align 4, !dbg !2521
  %128 = zext i8 %127 to i32, !dbg !2519
  %129 = icmp sgt i32 %128, 16, !dbg !2522
  br i1 %129, label %130, label %135, !dbg !2523

; <label>:130:                                    ; preds = %124, %95
  %131 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2524
  %132 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %131, i32 0, i32 2, !dbg !2526
  %133 = load i8, i8* %132, align 4, !dbg !2526
  %134 = zext i8 %133 to i32, !dbg !2524
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %134), !dbg !2527
  br label %276, !dbg !2528

; <label>:135:                                    ; preds = %124
  %136 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2529
  %137 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %136, i32 0, i32 4, !dbg !2530
  %138 = load i8, i8* %137, align 4, !dbg !2530
  %139 = zext i8 %138 to i32, !dbg !2529
  %140 = add nsw i32 %139, 1, !dbg !2531
  %141 = sext i32 %140 to i64, !dbg !2532
  %142 = mul i64 %141, 4, !dbg !2533
  %143 = trunc i64 %142 to i32, !dbg !2532
  %144 = call i8* @xmalloc(i32 %143), !dbg !2534
  %145 = bitcast i8* %144 to %struct._RD_POINT*, !dbg !2535
  store %struct._RD_POINT* %145, %struct._RD_POINT** %14, align 8, !dbg !2536
  %146 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2537
  %147 = bitcast %struct._RD_POINT* %146 to i8*, !dbg !2538
  %148 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2539
  %149 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %148, i32 0, i32 4, !dbg !2540
  %150 = load i8, i8* %149, align 4, !dbg !2540
  %151 = zext i8 %150 to i32, !dbg !2539
  %152 = add nsw i32 %151, 1, !dbg !2541
  %153 = sext i32 %152 to i64, !dbg !2542
  %154 = mul i64 %153, 4, !dbg !2543
  call void @llvm.memset.p0i8.i64(i8* %147, i8 0, i64 %154, i32 2, i1 false), !dbg !2538
  %155 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2544
  %156 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %155, i32 0, i32 0, !dbg !2545
  %157 = load i16, i16* %156, align 4, !dbg !2545
  %158 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2546
  %159 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %158, i64 0, !dbg !2546
  %160 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %159, i32 0, i32 0, !dbg !2547
  store i16 %157, i16* %160, align 2, !dbg !2548
  %161 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2549
  %162 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %161, i32 0, i32 1, !dbg !2550
  %163 = load i16, i16* %162, align 2, !dbg !2550
  %164 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2551
  %165 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %164, i64 0, !dbg !2551
  %166 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %165, i32 0, i32 1, !dbg !2552
  store i16 %163, i16* %166, align 2, !dbg !2553
  %167 = getelementptr inbounds %struct._PEN, %struct._PEN* %13, i32 0, i32 1, !dbg !2554
  store i8 0, i8* %167, align 1, !dbg !2555
  %168 = getelementptr inbounds %struct._PEN, %struct._PEN* %13, i32 0, i32 0, !dbg !2556
  store i8 0, i8* %168, align 4, !dbg !2557
  %169 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2558
  %170 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %169, i32 0, i32 3, !dbg !2559
  %171 = load i32, i32* %170, align 4, !dbg !2559
  %172 = getelementptr inbounds %struct._PEN, %struct._PEN* %13, i32 0, i32 2, !dbg !2560
  store i32 %171, i32* %172, align 4, !dbg !2561
  store i32 0, i32* %9, align 4, !dbg !2562
  %173 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2563
  %174 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %173, i32 0, i32 4, !dbg !2564
  %175 = load i8, i8* %174, align 4, !dbg !2564
  %176 = zext i8 %175 to i32, !dbg !2563
  %177 = sub nsw i32 %176, 1, !dbg !2565
  %178 = sdiv i32 %177, 4, !dbg !2566
  %179 = add nsw i32 %178, 1, !dbg !2567
  store i32 %179, i32* %11, align 4, !dbg !2568
  store i32 1, i32* %10, align 4, !dbg !2569
  br label %180, !dbg !2571

; <label>:180:                                    ; preds = %248, %135
  %181 = load i32, i32* %10, align 4, !dbg !2572
  %182 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2575
  %183 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %182, i32 0, i32 4, !dbg !2576
  %184 = load i8, i8* %183, align 4, !dbg !2576
  %185 = zext i8 %184 to i32, !dbg !2575
  %186 = icmp sle i32 %181, %185, !dbg !2577
  br i1 %186, label %187, label %194, !dbg !2578

; <label>:187:                                    ; preds = %180
  %188 = load i32, i32* %11, align 4, !dbg !2579
  %189 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2581
  %190 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %189, i32 0, i32 5, !dbg !2582
  %191 = load i8, i8* %190, align 1, !dbg !2582
  %192 = zext i8 %191 to i32, !dbg !2581
  %193 = icmp slt i32 %188, %192, !dbg !2583
  br label %194

; <label>:194:                                    ; preds = %187, %180
  %195 = phi i1 [ false, %180 ], [ %193, %187 ]
  br i1 %195, label %196, label %251, !dbg !2584

; <label>:196:                                    ; preds = %194
  %197 = load i32, i32* %10, align 4, !dbg !2586
  %198 = sub nsw i32 %197, 1, !dbg !2589
  %199 = srem i32 %198, 4, !dbg !2590
  %200 = icmp eq i32 %199, 0, !dbg !2591
  br i1 %200, label %201, label %209, !dbg !2592

; <label>:201:                                    ; preds = %196
  %202 = load i32, i32* %9, align 4, !dbg !2593
  %203 = add nsw i32 %202, 1, !dbg !2593
  store i32 %203, i32* %9, align 4, !dbg !2593
  %204 = sext i32 %202 to i64, !dbg !2594
  %205 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2594
  %206 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %205, i32 0, i32 6, !dbg !2595
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %206, i64 0, i64 %204, !dbg !2594
  %208 = load i8, i8* %207, align 1, !dbg !2594
  store i8 %208, i8* %12, align 1, !dbg !2596
  br label %209, !dbg !2597

; <label>:209:                                    ; preds = %201, %196
  %210 = load i8, i8* %12, align 1, !dbg !2598
  %211 = zext i8 %210 to i32, !dbg !2598
  %212 = xor i32 %211, -1, !dbg !2600
  %213 = and i32 %212, 128, !dbg !2601
  %214 = icmp ne i32 %213, 0, !dbg !2601
  br i1 %214, label %215, label %226, !dbg !2602

; <label>:215:                                    ; preds = %209
  %216 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2603
  %217 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %216, i32 0, i32 6, !dbg !2604
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %217, i32 0, i32 0, !dbg !2603
  %219 = call i32 @parse_delta(i8* %218, i32* %11), !dbg !2605
  %220 = trunc i32 %219 to i16, !dbg !2605
  %221 = load i32, i32* %10, align 4, !dbg !2606
  %222 = sext i32 %221 to i64, !dbg !2607
  %223 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2607
  %224 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %223, i64 %222, !dbg !2607
  %225 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %224, i32 0, i32 0, !dbg !2608
  store i16 %220, i16* %225, align 2, !dbg !2609
  br label %226, !dbg !2607

; <label>:226:                                    ; preds = %215, %209
  %227 = load i8, i8* %12, align 1, !dbg !2610
  %228 = zext i8 %227 to i32, !dbg !2610
  %229 = xor i32 %228, -1, !dbg !2612
  %230 = and i32 %229, 64, !dbg !2613
  %231 = icmp ne i32 %230, 0, !dbg !2613
  br i1 %231, label %232, label %243, !dbg !2614

; <label>:232:                                    ; preds = %226
  %233 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2615
  %234 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %233, i32 0, i32 6, !dbg !2616
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %234, i32 0, i32 0, !dbg !2615
  %236 = call i32 @parse_delta(i8* %235, i32* %11), !dbg !2617
  %237 = trunc i32 %236 to i16, !dbg !2617
  %238 = load i32, i32* %10, align 4, !dbg !2618
  %239 = sext i32 %238 to i64, !dbg !2619
  %240 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2619
  %241 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %240, i64 %239, !dbg !2619
  %242 = getelementptr inbounds %struct._RD_POINT, %struct._RD_POINT* %241, i32 0, i32 1, !dbg !2620
  store i16 %237, i16* %242, align 2, !dbg !2621
  br label %243, !dbg !2619

; <label>:243:                                    ; preds = %232, %226
  %244 = load i8, i8* %12, align 1, !dbg !2622
  %245 = zext i8 %244 to i32, !dbg !2622
  %246 = shl i32 %245, 2, !dbg !2622
  %247 = trunc i32 %246 to i8, !dbg !2622
  store i8 %247, i8* %12, align 1, !dbg !2622
  br label %248, !dbg !2623

; <label>:248:                                    ; preds = %243
  %249 = load i32, i32* %10, align 4, !dbg !2624
  %250 = add nsw i32 %249, 1, !dbg !2624
  store i32 %250, i32* %10, align 4, !dbg !2624
  br label %180, !dbg !2626, !llvm.loop !2627

; <label>:251:                                    ; preds = %194
  %252 = load i32, i32* %10, align 4, !dbg !2629
  %253 = sub nsw i32 %252, 1, !dbg !2631
  %254 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2632
  %255 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %254, i32 0, i32 4, !dbg !2633
  %256 = load i8, i8* %255, align 4, !dbg !2633
  %257 = zext i8 %256 to i32, !dbg !2632
  %258 = icmp eq i32 %253, %257, !dbg !2634
  br i1 %258, label %259, label %272, !dbg !2635

; <label>:259:                                    ; preds = %251
  %260 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2636
  %261 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %260, i32 0, i32 2, !dbg !2637
  %262 = load i8, i8* %261, align 4, !dbg !2637
  %263 = zext i8 %262 to i32, !dbg !2636
  %264 = sub nsw i32 %263, 1, !dbg !2638
  %265 = trunc i32 %264 to i8, !dbg !2636
  %266 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2639
  %267 = load %struct._POLYLINE_ORDER*, %struct._POLYLINE_ORDER** %6, align 8, !dbg !2640
  %268 = getelementptr inbounds %struct._POLYLINE_ORDER, %struct._POLYLINE_ORDER* %267, i32 0, i32 4, !dbg !2641
  %269 = load i8, i8* %268, align 4, !dbg !2641
  %270 = zext i8 %269 to i32, !dbg !2640
  %271 = add nsw i32 %270, 1, !dbg !2642
  call void @ui_polyline(i8 zeroext %265, %struct._RD_POINT* %266, i32 %271, %struct._PEN* %13), !dbg !2643
  br label %273, !dbg !2643

; <label>:272:                                    ; preds = %251
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0)), !dbg !2644
  br label %273

; <label>:273:                                    ; preds = %272, %259
  %274 = load %struct._RD_POINT*, %struct._RD_POINT** %14, align 8, !dbg !2645
  %275 = bitcast %struct._RD_POINT* %274 to i8*, !dbg !2645
  call void @xfree(i8* %275), !dbg !2646
  br label %276, !dbg !2647

; <label>:276:                                    ; preds = %273, %130
  ret void, !dbg !2648
}

; Function Attrs: nounwind uwtable
define internal void @process_ellipse(%struct.stream*, %struct._ELLIPSE_ORDER*, i32, i32) #0 !dbg !2650 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._ELLIPSE_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2654, metadata !315), !dbg !2655
  store %struct._ELLIPSE_ORDER* %1, %struct._ELLIPSE_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ELLIPSE_ORDER** %6, metadata !2656, metadata !315), !dbg !2657
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2658, metadata !315), !dbg !2659
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2660, metadata !315), !dbg !2661
  %9 = load i32, i32* %7, align 4, !dbg !2662
  %10 = and i32 %9, 1, !dbg !2664
  %11 = icmp ne i32 %10, 0, !dbg !2664
  br i1 %11, label %12, label %17, !dbg !2665

; <label>:12:                                     ; preds = %4
  %13 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2666
  %14 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2667
  %15 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %14, i32 0, i32 0, !dbg !2668
  %16 = load i32, i32* %8, align 4, !dbg !2669
  call void @rdp_in_coord(%struct.stream* %13, i16* %15, i32 %16), !dbg !2670
  br label %17, !dbg !2670

; <label>:17:                                     ; preds = %12, %4
  %18 = load i32, i32* %7, align 4, !dbg !2671
  %19 = and i32 %18, 2, !dbg !2673
  %20 = icmp ne i32 %19, 0, !dbg !2673
  br i1 %20, label %21, label %26, !dbg !2674

; <label>:21:                                     ; preds = %17
  %22 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2675
  %23 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2676
  %24 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %23, i32 0, i32 1, !dbg !2677
  %25 = load i32, i32* %8, align 4, !dbg !2678
  call void @rdp_in_coord(%struct.stream* %22, i16* %24, i32 %25), !dbg !2679
  br label %26, !dbg !2679

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %7, align 4, !dbg !2680
  %28 = and i32 %27, 4, !dbg !2682
  %29 = icmp ne i32 %28, 0, !dbg !2682
  br i1 %29, label %30, label %35, !dbg !2683

; <label>:30:                                     ; preds = %26
  %31 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2684
  %32 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2685
  %33 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %32, i32 0, i32 2, !dbg !2686
  %34 = load i32, i32* %8, align 4, !dbg !2687
  call void @rdp_in_coord(%struct.stream* %31, i16* %33, i32 %34), !dbg !2688
  br label %35, !dbg !2688

; <label>:35:                                     ; preds = %30, %26
  %36 = load i32, i32* %7, align 4, !dbg !2689
  %37 = and i32 %36, 8, !dbg !2691
  %38 = icmp ne i32 %37, 0, !dbg !2691
  br i1 %38, label %39, label %44, !dbg !2692

; <label>:39:                                     ; preds = %35
  %40 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2693
  %41 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2694
  %42 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %41, i32 0, i32 3, !dbg !2695
  %43 = load i32, i32* %8, align 4, !dbg !2696
  call void @rdp_in_coord(%struct.stream* %40, i16* %42, i32 %43), !dbg !2697
  br label %44, !dbg !2697

; <label>:44:                                     ; preds = %39, %35
  %45 = load i32, i32* %7, align 4, !dbg !2698
  %46 = and i32 %45, 16, !dbg !2700
  %47 = icmp ne i32 %46, 0, !dbg !2700
  br i1 %47, label %48, label %56, !dbg !2701

; <label>:48:                                     ; preds = %44
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2702
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !2703
  %51 = load i8*, i8** %50, align 8, !dbg !2704
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !2704
  store i8* %52, i8** %50, align 8, !dbg !2704
  %53 = load i8, i8* %51, align 1, !dbg !2705
  %54 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2706
  %55 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %54, i32 0, i32 4, !dbg !2707
  store i8 %53, i8* %55, align 4, !dbg !2708
  br label %56, !dbg !2706

; <label>:56:                                     ; preds = %48, %44
  %57 = load i32, i32* %7, align 4, !dbg !2709
  %58 = and i32 %57, 32, !dbg !2711
  %59 = icmp ne i32 %58, 0, !dbg !2711
  br i1 %59, label %60, label %68, !dbg !2712

; <label>:60:                                     ; preds = %56
  %61 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2713
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !2714
  %63 = load i8*, i8** %62, align 8, !dbg !2715
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !2715
  store i8* %64, i8** %62, align 8, !dbg !2715
  %65 = load i8, i8* %63, align 1, !dbg !2716
  %66 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2717
  %67 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %66, i32 0, i32 5, !dbg !2718
  store i8 %65, i8* %67, align 1, !dbg !2719
  br label %68, !dbg !2717

; <label>:68:                                     ; preds = %60, %56
  %69 = load i32, i32* %7, align 4, !dbg !2720
  %70 = and i32 %69, 64, !dbg !2722
  %71 = icmp ne i32 %70, 0, !dbg !2722
  br i1 %71, label %72, label %76, !dbg !2723

; <label>:72:                                     ; preds = %68
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2724
  %74 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2725
  %75 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %74, i32 0, i32 6, !dbg !2726
  call void @rdp_in_colour(%struct.stream* %73, i32* %75), !dbg !2727
  br label %76, !dbg !2727

; <label>:76:                                     ; preds = %72, %68
  %77 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2728
  %78 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %77, i32 0, i32 0, !dbg !2729
  %79 = load i16, i16* %78, align 4, !dbg !2729
  %80 = sext i16 %79 to i32, !dbg !2728
  %81 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2730
  %82 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %81, i32 0, i32 1, !dbg !2731
  %83 = load i16, i16* %82, align 2, !dbg !2731
  %84 = sext i16 %83 to i32, !dbg !2730
  %85 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2732
  %86 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %85, i32 0, i32 2, !dbg !2733
  %87 = load i16, i16* %86, align 4, !dbg !2733
  %88 = sext i16 %87 to i32, !dbg !2732
  %89 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2734
  %90 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %89, i32 0, i32 3, !dbg !2735
  %91 = load i16, i16* %90, align 2, !dbg !2735
  %92 = sext i16 %91 to i32, !dbg !2734
  %93 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2736
  %94 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %93, i32 0, i32 4, !dbg !2737
  %95 = load i8, i8* %94, align 4, !dbg !2737
  %96 = zext i8 %95 to i32, !dbg !2736
  %97 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2738
  %98 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %97, i32 0, i32 5, !dbg !2739
  %99 = load i8, i8* %98, align 1, !dbg !2739
  %100 = zext i8 %99 to i32, !dbg !2738
  %101 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2740
  %102 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %101, i32 0, i32 6, !dbg !2741
  %103 = load i32, i32* %102, align 4, !dbg !2741
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i32 0, i32 0), i32 %80, i32 %84, i32 %88, i32 %92, i32 %96, i32 %100, i32 %103), !dbg !2742
  %104 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2743
  %105 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %104, i32 0, i32 4, !dbg !2744
  %106 = load i8, i8* %105, align 4, !dbg !2744
  %107 = zext i8 %106 to i32, !dbg !2743
  %108 = sub nsw i32 %107, 1, !dbg !2745
  %109 = trunc i32 %108 to i8, !dbg !2743
  %110 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2746
  %111 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %110, i32 0, i32 5, !dbg !2747
  %112 = load i8, i8* %111, align 1, !dbg !2747
  %113 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2748
  %114 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %113, i32 0, i32 0, !dbg !2749
  %115 = load i16, i16* %114, align 4, !dbg !2749
  %116 = sext i16 %115 to i32, !dbg !2748
  %117 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2750
  %118 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %117, i32 0, i32 1, !dbg !2751
  %119 = load i16, i16* %118, align 2, !dbg !2751
  %120 = sext i16 %119 to i32, !dbg !2750
  %121 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2752
  %122 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %121, i32 0, i32 2, !dbg !2753
  %123 = load i16, i16* %122, align 4, !dbg !2753
  %124 = sext i16 %123 to i32, !dbg !2752
  %125 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2754
  %126 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %125, i32 0, i32 0, !dbg !2755
  %127 = load i16, i16* %126, align 4, !dbg !2755
  %128 = sext i16 %127 to i32, !dbg !2754
  %129 = sub nsw i32 %124, %128, !dbg !2756
  %130 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2757
  %131 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %130, i32 0, i32 3, !dbg !2758
  %132 = load i16, i16* %131, align 2, !dbg !2758
  %133 = sext i16 %132 to i32, !dbg !2757
  %134 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2759
  %135 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %134, i32 0, i32 1, !dbg !2760
  %136 = load i16, i16* %135, align 2, !dbg !2760
  %137 = sext i16 %136 to i32, !dbg !2759
  %138 = sub nsw i32 %133, %137, !dbg !2761
  %139 = load %struct._ELLIPSE_ORDER*, %struct._ELLIPSE_ORDER** %6, align 8, !dbg !2762
  %140 = getelementptr inbounds %struct._ELLIPSE_ORDER, %struct._ELLIPSE_ORDER* %139, i32 0, i32 6, !dbg !2763
  %141 = load i32, i32* %140, align 4, !dbg !2763
  call void @ui_ellipse(i8 zeroext %109, i8 zeroext %112, i32 %116, i32 %120, i32 %129, i32 %138, %struct._BRUSH* null, i32 0, i32 %141), !dbg !2764
  ret void, !dbg !2765
}

; Function Attrs: nounwind uwtable
define internal void @process_ellipse2(%struct.stream*, %struct._ELLIPSE2_ORDER*, i32, i32) #0 !dbg !2766 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._ELLIPSE2_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._BRUSH, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2770, metadata !315), !dbg !2771
  store %struct._ELLIPSE2_ORDER* %1, %struct._ELLIPSE2_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ELLIPSE2_ORDER** %6, metadata !2772, metadata !315), !dbg !2773
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2774, metadata !315), !dbg !2775
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2776, metadata !315), !dbg !2777
  call void @llvm.dbg.declare(metadata %struct._BRUSH* %9, metadata !2778, metadata !315), !dbg !2779
  %10 = load i32, i32* %7, align 4, !dbg !2780
  %11 = and i32 %10, 1, !dbg !2782
  %12 = icmp ne i32 %11, 0, !dbg !2782
  br i1 %12, label %13, label %18, !dbg !2783

; <label>:13:                                     ; preds = %4
  %14 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2784
  %15 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2785
  %16 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %15, i32 0, i32 0, !dbg !2786
  %17 = load i32, i32* %8, align 4, !dbg !2787
  call void @rdp_in_coord(%struct.stream* %14, i16* %16, i32 %17), !dbg !2788
  br label %18, !dbg !2788

; <label>:18:                                     ; preds = %13, %4
  %19 = load i32, i32* %7, align 4, !dbg !2789
  %20 = and i32 %19, 2, !dbg !2791
  %21 = icmp ne i32 %20, 0, !dbg !2791
  br i1 %21, label %22, label %27, !dbg !2792

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2793
  %24 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2794
  %25 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %24, i32 0, i32 1, !dbg !2795
  %26 = load i32, i32* %8, align 4, !dbg !2796
  call void @rdp_in_coord(%struct.stream* %23, i16* %25, i32 %26), !dbg !2797
  br label %27, !dbg !2797

; <label>:27:                                     ; preds = %22, %18
  %28 = load i32, i32* %7, align 4, !dbg !2798
  %29 = and i32 %28, 4, !dbg !2800
  %30 = icmp ne i32 %29, 0, !dbg !2800
  br i1 %30, label %31, label %36, !dbg !2801

; <label>:31:                                     ; preds = %27
  %32 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2802
  %33 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2803
  %34 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %33, i32 0, i32 2, !dbg !2804
  %35 = load i32, i32* %8, align 4, !dbg !2805
  call void @rdp_in_coord(%struct.stream* %32, i16* %34, i32 %35), !dbg !2806
  br label %36, !dbg !2806

; <label>:36:                                     ; preds = %31, %27
  %37 = load i32, i32* %7, align 4, !dbg !2807
  %38 = and i32 %37, 8, !dbg !2809
  %39 = icmp ne i32 %38, 0, !dbg !2809
  br i1 %39, label %40, label %45, !dbg !2810

; <label>:40:                                     ; preds = %36
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2811
  %42 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2812
  %43 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %42, i32 0, i32 3, !dbg !2813
  %44 = load i32, i32* %8, align 4, !dbg !2814
  call void @rdp_in_coord(%struct.stream* %41, i16* %43, i32 %44), !dbg !2815
  br label %45, !dbg !2815

; <label>:45:                                     ; preds = %40, %36
  %46 = load i32, i32* %7, align 4, !dbg !2816
  %47 = and i32 %46, 16, !dbg !2818
  %48 = icmp ne i32 %47, 0, !dbg !2818
  br i1 %48, label %49, label %57, !dbg !2819

; <label>:49:                                     ; preds = %45
  %50 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2820
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !2821
  %52 = load i8*, i8** %51, align 8, !dbg !2822
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !2822
  store i8* %53, i8** %51, align 8, !dbg !2822
  %54 = load i8, i8* %52, align 1, !dbg !2823
  %55 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2824
  %56 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %55, i32 0, i32 4, !dbg !2825
  store i8 %54, i8* %56, align 8, !dbg !2826
  br label %57, !dbg !2824

; <label>:57:                                     ; preds = %49, %45
  %58 = load i32, i32* %7, align 4, !dbg !2827
  %59 = and i32 %58, 32, !dbg !2829
  %60 = icmp ne i32 %59, 0, !dbg !2829
  br i1 %60, label %61, label %69, !dbg !2830

; <label>:61:                                     ; preds = %57
  %62 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2831
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !2832
  %64 = load i8*, i8** %63, align 8, !dbg !2833
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !2833
  store i8* %65, i8** %63, align 8, !dbg !2833
  %66 = load i8, i8* %64, align 1, !dbg !2834
  %67 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2835
  %68 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %67, i32 0, i32 5, !dbg !2836
  store i8 %66, i8* %68, align 1, !dbg !2837
  br label %69, !dbg !2835

; <label>:69:                                     ; preds = %61, %57
  %70 = load i32, i32* %7, align 4, !dbg !2838
  %71 = and i32 %70, 64, !dbg !2840
  %72 = icmp ne i32 %71, 0, !dbg !2840
  br i1 %72, label %73, label %77, !dbg !2841

; <label>:73:                                     ; preds = %69
  %74 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2842
  %75 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2843
  %76 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %75, i32 0, i32 7, !dbg !2844
  call void @rdp_in_colour(%struct.stream* %74, i32* %76), !dbg !2845
  br label %77, !dbg !2845

; <label>:77:                                     ; preds = %73, %69
  %78 = load i32, i32* %7, align 4, !dbg !2846
  %79 = and i32 %78, 128, !dbg !2848
  %80 = icmp ne i32 %79, 0, !dbg !2848
  br i1 %80, label %81, label %85, !dbg !2849

; <label>:81:                                     ; preds = %77
  %82 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2850
  %83 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2851
  %84 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %83, i32 0, i32 8, !dbg !2852
  call void @rdp_in_colour(%struct.stream* %82, i32* %84), !dbg !2853
  br label %85, !dbg !2853

; <label>:85:                                     ; preds = %81, %77
  %86 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2854
  %87 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2855
  %88 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %87, i32 0, i32 6, !dbg !2856
  %89 = load i32, i32* %7, align 4, !dbg !2857
  %90 = lshr i32 %89, 8, !dbg !2858
  %91 = call i32 @rdp_parse_brush(%struct.stream* %86, %struct._BRUSH* %88, i32 %90), !dbg !2859
  %92 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2860
  %93 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %92, i32 0, i32 0, !dbg !2861
  %94 = load i16, i16* %93, align 8, !dbg !2861
  %95 = sext i16 %94 to i32, !dbg !2860
  %96 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2862
  %97 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %96, i32 0, i32 1, !dbg !2863
  %98 = load i16, i16* %97, align 2, !dbg !2863
  %99 = sext i16 %98 to i32, !dbg !2862
  %100 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2864
  %101 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %100, i32 0, i32 2, !dbg !2865
  %102 = load i16, i16* %101, align 4, !dbg !2865
  %103 = sext i16 %102 to i32, !dbg !2864
  %104 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2866
  %105 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %104, i32 0, i32 3, !dbg !2867
  %106 = load i16, i16* %105, align 2, !dbg !2867
  %107 = sext i16 %106 to i32, !dbg !2866
  %108 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2868
  %109 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %108, i32 0, i32 4, !dbg !2869
  %110 = load i8, i8* %109, align 8, !dbg !2869
  %111 = zext i8 %110 to i32, !dbg !2868
  %112 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2870
  %113 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %112, i32 0, i32 5, !dbg !2871
  %114 = load i8, i8* %113, align 1, !dbg !2871
  %115 = zext i8 %114 to i32, !dbg !2870
  %116 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2872
  %117 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %116, i32 0, i32 6, !dbg !2873
  %118 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %117, i32 0, i32 2, !dbg !2874
  %119 = load i8, i8* %118, align 2, !dbg !2874
  %120 = zext i8 %119 to i32, !dbg !2872
  %121 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2875
  %122 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %121, i32 0, i32 7, !dbg !2876
  %123 = load i32, i32* %122, align 8, !dbg !2876
  %124 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2877
  %125 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %124, i32 0, i32 8, !dbg !2878
  %126 = load i32, i32* %125, align 4, !dbg !2878
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.34, i32 0, i32 0), i32 %95, i32 %99, i32 %103, i32 %107, i32 %111, i32 %115, i32 %120, i32 %123, i32 %126), !dbg !2879
  %127 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2880
  %128 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %127, i32 0, i32 6, !dbg !2881
  call void @setup_brush(%struct._BRUSH* %9, %struct._BRUSH* %128), !dbg !2882
  %129 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2883
  %130 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %129, i32 0, i32 4, !dbg !2884
  %131 = load i8, i8* %130, align 8, !dbg !2884
  %132 = zext i8 %131 to i32, !dbg !2883
  %133 = sub nsw i32 %132, 1, !dbg !2885
  %134 = trunc i32 %133 to i8, !dbg !2883
  %135 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2886
  %136 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %135, i32 0, i32 5, !dbg !2887
  %137 = load i8, i8* %136, align 1, !dbg !2887
  %138 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2888
  %139 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %138, i32 0, i32 0, !dbg !2889
  %140 = load i16, i16* %139, align 8, !dbg !2889
  %141 = sext i16 %140 to i32, !dbg !2888
  %142 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2890
  %143 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %142, i32 0, i32 1, !dbg !2891
  %144 = load i16, i16* %143, align 2, !dbg !2891
  %145 = sext i16 %144 to i32, !dbg !2890
  %146 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2892
  %147 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %146, i32 0, i32 2, !dbg !2893
  %148 = load i16, i16* %147, align 4, !dbg !2893
  %149 = sext i16 %148 to i32, !dbg !2892
  %150 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2894
  %151 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %150, i32 0, i32 0, !dbg !2895
  %152 = load i16, i16* %151, align 8, !dbg !2895
  %153 = sext i16 %152 to i32, !dbg !2894
  %154 = sub nsw i32 %149, %153, !dbg !2896
  %155 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2897
  %156 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %155, i32 0, i32 3, !dbg !2898
  %157 = load i16, i16* %156, align 2, !dbg !2898
  %158 = sext i16 %157 to i32, !dbg !2897
  %159 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2899
  %160 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %159, i32 0, i32 1, !dbg !2900
  %161 = load i16, i16* %160, align 2, !dbg !2900
  %162 = sext i16 %161 to i32, !dbg !2899
  %163 = sub nsw i32 %158, %162, !dbg !2901
  %164 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2902
  %165 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %164, i32 0, i32 7, !dbg !2903
  %166 = load i32, i32* %165, align 8, !dbg !2903
  %167 = load %struct._ELLIPSE2_ORDER*, %struct._ELLIPSE2_ORDER** %6, align 8, !dbg !2904
  %168 = getelementptr inbounds %struct._ELLIPSE2_ORDER, %struct._ELLIPSE2_ORDER* %167, i32 0, i32 8, !dbg !2905
  %169 = load i32, i32* %168, align 4, !dbg !2905
  call void @ui_ellipse(i8 zeroext %134, i8 zeroext %137, i32 %141, i32 %145, i32 %154, i32 %163, %struct._BRUSH* %9, i32 %166, i32 %169), !dbg !2906
  ret void, !dbg !2907
}

; Function Attrs: nounwind uwtable
define internal void @process_text2(%struct.stream*, %struct._TEXT2_ORDER*, i32, i32) #0 !dbg !2908 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct._TEXT2_ORDER*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._BRUSH, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2912, metadata !315), !dbg !2913
  store %struct._TEXT2_ORDER* %1, %struct._TEXT2_ORDER** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT2_ORDER** %6, metadata !2914, metadata !315), !dbg !2915
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2916, metadata !315), !dbg !2917
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2918, metadata !315), !dbg !2919
  %10 = load i32, i32* %8, align 4, !dbg !2920
  call void @llvm.dbg.declare(metadata %struct._BRUSH* %9, metadata !2921, metadata !315), !dbg !2922
  %11 = load i32, i32* %7, align 4, !dbg !2923
  %12 = and i32 %11, 1, !dbg !2925
  %13 = icmp ne i32 %12, 0, !dbg !2925
  br i1 %13, label %14, label %22, !dbg !2926

; <label>:14:                                     ; preds = %4
  %15 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2927
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !2928
  %17 = load i8*, i8** %16, align 8, !dbg !2929
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !2929
  store i8* %18, i8** %16, align 8, !dbg !2929
  %19 = load i8, i8* %17, align 1, !dbg !2930
  %20 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2931
  %21 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %20, i32 0, i32 0, !dbg !2932
  store i8 %19, i8* %21, align 8, !dbg !2933
  br label %22, !dbg !2931

; <label>:22:                                     ; preds = %14, %4
  %23 = load i32, i32* %7, align 4, !dbg !2934
  %24 = and i32 %23, 2, !dbg !2936
  %25 = icmp ne i32 %24, 0, !dbg !2936
  br i1 %25, label %26, label %34, !dbg !2937

; <label>:26:                                     ; preds = %22
  %27 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2938
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !2939
  %29 = load i8*, i8** %28, align 8, !dbg !2940
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2940
  store i8* %30, i8** %28, align 8, !dbg !2940
  %31 = load i8, i8* %29, align 1, !dbg !2941
  %32 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2942
  %33 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %32, i32 0, i32 1, !dbg !2943
  store i8 %31, i8* %33, align 1, !dbg !2944
  br label %34, !dbg !2942

; <label>:34:                                     ; preds = %26, %22
  %35 = load i32, i32* %7, align 4, !dbg !2945
  %36 = and i32 %35, 4, !dbg !2947
  %37 = icmp ne i32 %36, 0, !dbg !2947
  br i1 %37, label %38, label %46, !dbg !2948

; <label>:38:                                     ; preds = %34
  %39 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2949
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !2950
  %41 = load i8*, i8** %40, align 8, !dbg !2951
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !2951
  store i8* %42, i8** %40, align 8, !dbg !2951
  %43 = load i8, i8* %41, align 1, !dbg !2952
  %44 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2953
  %45 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %44, i32 0, i32 2, !dbg !2954
  store i8 %43, i8* %45, align 2, !dbg !2955
  br label %46, !dbg !2953

; <label>:46:                                     ; preds = %38, %34
  %47 = load i32, i32* %7, align 4, !dbg !2956
  %48 = and i32 %47, 8, !dbg !2958
  %49 = icmp ne i32 %48, 0, !dbg !2958
  br i1 %49, label %50, label %58, !dbg !2959

; <label>:50:                                     ; preds = %46
  %51 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2960
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !2961
  %53 = load i8*, i8** %52, align 8, !dbg !2962
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !2962
  store i8* %54, i8** %52, align 8, !dbg !2962
  %55 = load i8, i8* %53, align 1, !dbg !2963
  %56 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2964
  %57 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %56, i32 0, i32 3, !dbg !2965
  store i8 %55, i8* %57, align 1, !dbg !2966
  br label %58, !dbg !2964

; <label>:58:                                     ; preds = %50, %46
  %59 = load i32, i32* %7, align 4, !dbg !2967
  %60 = and i32 %59, 16, !dbg !2969
  %61 = icmp ne i32 %60, 0, !dbg !2969
  br i1 %61, label %62, label %66, !dbg !2970

; <label>:62:                                     ; preds = %58
  %63 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2971
  %64 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2972
  %65 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %64, i32 0, i32 5, !dbg !2973
  call void @rdp_in_colour(%struct.stream* %63, i32* %65), !dbg !2974
  br label %66, !dbg !2974

; <label>:66:                                     ; preds = %62, %58
  %67 = load i32, i32* %7, align 4, !dbg !2975
  %68 = and i32 %67, 32, !dbg !2977
  %69 = icmp ne i32 %68, 0, !dbg !2977
  br i1 %69, label %70, label %74, !dbg !2978

; <label>:70:                                     ; preds = %66
  %71 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2979
  %72 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2980
  %73 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %72, i32 0, i32 4, !dbg !2981
  call void @rdp_in_colour(%struct.stream* %71, i32* %73), !dbg !2982
  br label %74, !dbg !2982

; <label>:74:                                     ; preds = %70, %66
  %75 = load i32, i32* %7, align 4, !dbg !2983
  %76 = and i32 %75, 64, !dbg !2985
  %77 = icmp ne i32 %76, 0, !dbg !2985
  br i1 %77, label %78, label %90, !dbg !2986

; <label>:78:                                     ; preds = %74
  %79 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2987
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !2989
  %81 = load i8*, i8** %80, align 8, !dbg !2989
  %82 = bitcast i8* %81 to i16*, !dbg !2990
  %83 = load i16, i16* %82, align 2, !dbg !2990
  %84 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !2991
  %85 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %84, i32 0, i32 6, !dbg !2992
  store i16 %83, i16* %85, align 4, !dbg !2993
  %86 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2994
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !2995
  %88 = load i8*, i8** %87, align 8, !dbg !2996
  %89 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !2996
  store i8* %89, i8** %87, align 8, !dbg !2996
  br label %90, !dbg !2997

; <label>:90:                                     ; preds = %78, %74
  %91 = load i32, i32* %7, align 4, !dbg !2998
  %92 = and i32 %91, 128, !dbg !3000
  %93 = icmp ne i32 %92, 0, !dbg !3000
  br i1 %93, label %94, label %106, !dbg !3001

; <label>:94:                                     ; preds = %90
  %95 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3002
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !3004
  %97 = load i8*, i8** %96, align 8, !dbg !3004
  %98 = bitcast i8* %97 to i16*, !dbg !3005
  %99 = load i16, i16* %98, align 2, !dbg !3005
  %100 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3006
  %101 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %100, i32 0, i32 7, !dbg !3007
  store i16 %99, i16* %101, align 2, !dbg !3008
  %102 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3009
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %102, i32 0, i32 0, !dbg !3010
  %104 = load i8*, i8** %103, align 8, !dbg !3011
  %105 = getelementptr inbounds i8, i8* %104, i64 2, !dbg !3011
  store i8* %105, i8** %103, align 8, !dbg !3011
  br label %106, !dbg !3012

; <label>:106:                                    ; preds = %94, %90
  %107 = load i32, i32* %7, align 4, !dbg !3013
  %108 = and i32 %107, 256, !dbg !3015
  %109 = icmp ne i32 %108, 0, !dbg !3015
  br i1 %109, label %110, label %122, !dbg !3016

; <label>:110:                                    ; preds = %106
  %111 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3017
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !3019
  %113 = load i8*, i8** %112, align 8, !dbg !3019
  %114 = bitcast i8* %113 to i16*, !dbg !3020
  %115 = load i16, i16* %114, align 2, !dbg !3020
  %116 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3021
  %117 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %116, i32 0, i32 8, !dbg !3022
  store i16 %115, i16* %117, align 8, !dbg !3023
  %118 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3024
  %119 = getelementptr inbounds %struct.stream, %struct.stream* %118, i32 0, i32 0, !dbg !3025
  %120 = load i8*, i8** %119, align 8, !dbg !3026
  %121 = getelementptr inbounds i8, i8* %120, i64 2, !dbg !3026
  store i8* %121, i8** %119, align 8, !dbg !3026
  br label %122, !dbg !3027

; <label>:122:                                    ; preds = %110, %106
  %123 = load i32, i32* %7, align 4, !dbg !3028
  %124 = and i32 %123, 512, !dbg !3030
  %125 = icmp ne i32 %124, 0, !dbg !3030
  br i1 %125, label %126, label %138, !dbg !3031

; <label>:126:                                    ; preds = %122
  %127 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3032
  %128 = getelementptr inbounds %struct.stream, %struct.stream* %127, i32 0, i32 0, !dbg !3034
  %129 = load i8*, i8** %128, align 8, !dbg !3034
  %130 = bitcast i8* %129 to i16*, !dbg !3035
  %131 = load i16, i16* %130, align 2, !dbg !3035
  %132 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3036
  %133 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %132, i32 0, i32 9, !dbg !3037
  store i16 %131, i16* %133, align 2, !dbg !3038
  %134 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3039
  %135 = getelementptr inbounds %struct.stream, %struct.stream* %134, i32 0, i32 0, !dbg !3040
  %136 = load i8*, i8** %135, align 8, !dbg !3041
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !3041
  store i8* %137, i8** %135, align 8, !dbg !3041
  br label %138, !dbg !3042

; <label>:138:                                    ; preds = %126, %122
  %139 = load i32, i32* %7, align 4, !dbg !3043
  %140 = and i32 %139, 1024, !dbg !3045
  %141 = icmp ne i32 %140, 0, !dbg !3045
  br i1 %141, label %142, label %154, !dbg !3046

; <label>:142:                                    ; preds = %138
  %143 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3047
  %144 = getelementptr inbounds %struct.stream, %struct.stream* %143, i32 0, i32 0, !dbg !3049
  %145 = load i8*, i8** %144, align 8, !dbg !3049
  %146 = bitcast i8* %145 to i16*, !dbg !3050
  %147 = load i16, i16* %146, align 2, !dbg !3050
  %148 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3051
  %149 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %148, i32 0, i32 10, !dbg !3052
  store i16 %147, i16* %149, align 4, !dbg !3053
  %150 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3054
  %151 = getelementptr inbounds %struct.stream, %struct.stream* %150, i32 0, i32 0, !dbg !3055
  %152 = load i8*, i8** %151, align 8, !dbg !3056
  %153 = getelementptr inbounds i8, i8* %152, i64 2, !dbg !3056
  store i8* %153, i8** %151, align 8, !dbg !3056
  br label %154, !dbg !3057

; <label>:154:                                    ; preds = %142, %138
  %155 = load i32, i32* %7, align 4, !dbg !3058
  %156 = and i32 %155, 2048, !dbg !3060
  %157 = icmp ne i32 %156, 0, !dbg !3060
  br i1 %157, label %158, label %170, !dbg !3061

; <label>:158:                                    ; preds = %154
  %159 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3062
  %160 = getelementptr inbounds %struct.stream, %struct.stream* %159, i32 0, i32 0, !dbg !3064
  %161 = load i8*, i8** %160, align 8, !dbg !3064
  %162 = bitcast i8* %161 to i16*, !dbg !3065
  %163 = load i16, i16* %162, align 2, !dbg !3065
  %164 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3066
  %165 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %164, i32 0, i32 11, !dbg !3067
  store i16 %163, i16* %165, align 2, !dbg !3068
  %166 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3069
  %167 = getelementptr inbounds %struct.stream, %struct.stream* %166, i32 0, i32 0, !dbg !3070
  %168 = load i8*, i8** %167, align 8, !dbg !3071
  %169 = getelementptr inbounds i8, i8* %168, i64 2, !dbg !3071
  store i8* %169, i8** %167, align 8, !dbg !3071
  br label %170, !dbg !3072

; <label>:170:                                    ; preds = %158, %154
  %171 = load i32, i32* %7, align 4, !dbg !3073
  %172 = and i32 %171, 4096, !dbg !3075
  %173 = icmp ne i32 %172, 0, !dbg !3075
  br i1 %173, label %174, label %186, !dbg !3076

; <label>:174:                                    ; preds = %170
  %175 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3077
  %176 = getelementptr inbounds %struct.stream, %struct.stream* %175, i32 0, i32 0, !dbg !3079
  %177 = load i8*, i8** %176, align 8, !dbg !3079
  %178 = bitcast i8* %177 to i16*, !dbg !3080
  %179 = load i16, i16* %178, align 2, !dbg !3080
  %180 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3081
  %181 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %180, i32 0, i32 12, !dbg !3082
  store i16 %179, i16* %181, align 8, !dbg !3083
  %182 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3084
  %183 = getelementptr inbounds %struct.stream, %struct.stream* %182, i32 0, i32 0, !dbg !3085
  %184 = load i8*, i8** %183, align 8, !dbg !3086
  %185 = getelementptr inbounds i8, i8* %184, i64 2, !dbg !3086
  store i8* %185, i8** %183, align 8, !dbg !3086
  br label %186, !dbg !3087

; <label>:186:                                    ; preds = %174, %170
  %187 = load i32, i32* %7, align 4, !dbg !3088
  %188 = and i32 %187, 8192, !dbg !3090
  %189 = icmp ne i32 %188, 0, !dbg !3090
  br i1 %189, label %190, label %202, !dbg !3091

; <label>:190:                                    ; preds = %186
  %191 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3092
  %192 = getelementptr inbounds %struct.stream, %struct.stream* %191, i32 0, i32 0, !dbg !3094
  %193 = load i8*, i8** %192, align 8, !dbg !3094
  %194 = bitcast i8* %193 to i16*, !dbg !3095
  %195 = load i16, i16* %194, align 2, !dbg !3095
  %196 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3096
  %197 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %196, i32 0, i32 13, !dbg !3097
  store i16 %195, i16* %197, align 2, !dbg !3098
  %198 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3099
  %199 = getelementptr inbounds %struct.stream, %struct.stream* %198, i32 0, i32 0, !dbg !3100
  %200 = load i8*, i8** %199, align 8, !dbg !3101
  %201 = getelementptr inbounds i8, i8* %200, i64 2, !dbg !3101
  store i8* %201, i8** %199, align 8, !dbg !3101
  br label %202, !dbg !3102

; <label>:202:                                    ; preds = %190, %186
  %203 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3103
  %204 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3104
  %205 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %204, i32 0, i32 14, !dbg !3105
  %206 = load i32, i32* %7, align 4, !dbg !3106
  %207 = lshr i32 %206, 14, !dbg !3107
  %208 = call i32 @rdp_parse_brush(%struct.stream* %203, %struct._BRUSH* %205, i32 %207), !dbg !3108
  %209 = load i32, i32* %7, align 4, !dbg !3109
  %210 = and i32 %209, 524288, !dbg !3111
  %211 = icmp ne i32 %210, 0, !dbg !3111
  br i1 %211, label %212, label %224, !dbg !3112

; <label>:212:                                    ; preds = %202
  %213 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3113
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 0, !dbg !3115
  %215 = load i8*, i8** %214, align 8, !dbg !3115
  %216 = bitcast i8* %215 to i16*, !dbg !3116
  %217 = load i16, i16* %216, align 2, !dbg !3116
  %218 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3117
  %219 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %218, i32 0, i32 15, !dbg !3118
  store i16 %217, i16* %219, align 8, !dbg !3119
  %220 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3120
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %220, i32 0, i32 0, !dbg !3121
  %222 = load i8*, i8** %221, align 8, !dbg !3122
  %223 = getelementptr inbounds i8, i8* %222, i64 2, !dbg !3122
  store i8* %223, i8** %221, align 8, !dbg !3122
  br label %224, !dbg !3123

; <label>:224:                                    ; preds = %212, %202
  %225 = load i32, i32* %7, align 4, !dbg !3124
  %226 = and i32 %225, 1048576, !dbg !3126
  %227 = icmp ne i32 %226, 0, !dbg !3126
  br i1 %227, label %228, label %240, !dbg !3127

; <label>:228:                                    ; preds = %224
  %229 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3128
  %230 = getelementptr inbounds %struct.stream, %struct.stream* %229, i32 0, i32 0, !dbg !3130
  %231 = load i8*, i8** %230, align 8, !dbg !3130
  %232 = bitcast i8* %231 to i16*, !dbg !3131
  %233 = load i16, i16* %232, align 2, !dbg !3131
  %234 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3132
  %235 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %234, i32 0, i32 16, !dbg !3133
  store i16 %233, i16* %235, align 2, !dbg !3134
  %236 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3135
  %237 = getelementptr inbounds %struct.stream, %struct.stream* %236, i32 0, i32 0, !dbg !3136
  %238 = load i8*, i8** %237, align 8, !dbg !3137
  %239 = getelementptr inbounds i8, i8* %238, i64 2, !dbg !3137
  store i8* %239, i8** %237, align 8, !dbg !3137
  br label %240, !dbg !3138

; <label>:240:                                    ; preds = %228, %224
  %241 = load i32, i32* %7, align 4, !dbg !3139
  %242 = and i32 %241, 2097152, !dbg !3141
  %243 = icmp ne i32 %242, 0, !dbg !3141
  br i1 %243, label %244, label %271, !dbg !3142

; <label>:244:                                    ; preds = %240
  %245 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3143
  %246 = getelementptr inbounds %struct.stream, %struct.stream* %245, i32 0, i32 0, !dbg !3145
  %247 = load i8*, i8** %246, align 8, !dbg !3146
  %248 = getelementptr inbounds i8, i8* %247, i32 1, !dbg !3146
  store i8* %248, i8** %246, align 8, !dbg !3146
  %249 = load i8, i8* %247, align 1, !dbg !3147
  %250 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3148
  %251 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %250, i32 0, i32 17, !dbg !3149
  store i8 %249, i8* %251, align 4, !dbg !3150
  %252 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3151
  %253 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %252, i32 0, i32 18, !dbg !3153
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %253, i32 0, i32 0, !dbg !3154
  %255 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3155
  %256 = getelementptr inbounds %struct.stream, %struct.stream* %255, i32 0, i32 0, !dbg !3156
  %257 = load i8*, i8** %256, align 8, !dbg !3156
  %258 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3157
  %259 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %258, i32 0, i32 17, !dbg !3158
  %260 = load i8, i8* %259, align 4, !dbg !3158
  %261 = zext i8 %260 to i64, !dbg !3157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %257, i64 %261, i32 1, i1 false), !dbg !3154
  %262 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3159
  %263 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %262, i32 0, i32 17, !dbg !3160
  %264 = load i8, i8* %263, align 4, !dbg !3160
  %265 = zext i8 %264 to i32, !dbg !3159
  %266 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !3161
  %267 = getelementptr inbounds %struct.stream, %struct.stream* %266, i32 0, i32 0, !dbg !3162
  %268 = load i8*, i8** %267, align 8, !dbg !3163
  %269 = sext i32 %265 to i64, !dbg !3163
  %270 = getelementptr inbounds i8, i8* %268, i64 %269, !dbg !3163
  store i8* %270, i8** %267, align 8, !dbg !3163
  br label %271, !dbg !3164

; <label>:271:                                    ; preds = %244, %240
  %272 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3165
  %273 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %272, i32 0, i32 15, !dbg !3166
  %274 = load i16, i16* %273, align 8, !dbg !3166
  %275 = sext i16 %274 to i32, !dbg !3165
  %276 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3167
  %277 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %276, i32 0, i32 16, !dbg !3168
  %278 = load i16, i16* %277, align 2, !dbg !3168
  %279 = sext i16 %278 to i32, !dbg !3167
  %280 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3169
  %281 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %280, i32 0, i32 6, !dbg !3170
  %282 = load i16, i16* %281, align 4, !dbg !3170
  %283 = sext i16 %282 to i32, !dbg !3169
  %284 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3171
  %285 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %284, i32 0, i32 7, !dbg !3172
  %286 = load i16, i16* %285, align 2, !dbg !3172
  %287 = sext i16 %286 to i32, !dbg !3171
  %288 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3173
  %289 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %288, i32 0, i32 8, !dbg !3174
  %290 = load i16, i16* %289, align 8, !dbg !3174
  %291 = sext i16 %290 to i32, !dbg !3173
  %292 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3175
  %293 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %292, i32 0, i32 9, !dbg !3176
  %294 = load i16, i16* %293, align 2, !dbg !3176
  %295 = sext i16 %294 to i32, !dbg !3175
  %296 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3177
  %297 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %296, i32 0, i32 10, !dbg !3178
  %298 = load i16, i16* %297, align 4, !dbg !3178
  %299 = sext i16 %298 to i32, !dbg !3177
  %300 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3179
  %301 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %300, i32 0, i32 11, !dbg !3180
  %302 = load i16, i16* %301, align 2, !dbg !3180
  %303 = sext i16 %302 to i32, !dbg !3179
  %304 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3181
  %305 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %304, i32 0, i32 12, !dbg !3182
  %306 = load i16, i16* %305, align 8, !dbg !3182
  %307 = sext i16 %306 to i32, !dbg !3181
  %308 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3183
  %309 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %308, i32 0, i32 13, !dbg !3184
  %310 = load i16, i16* %309, align 2, !dbg !3184
  %311 = sext i16 %310 to i32, !dbg !3183
  %312 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3185
  %313 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %312, i32 0, i32 14, !dbg !3186
  %314 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %313, i32 0, i32 2, !dbg !3187
  %315 = load i8, i8* %314, align 2, !dbg !3187
  %316 = zext i8 %315 to i32, !dbg !3185
  %317 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3188
  %318 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %317, i32 0, i32 4, !dbg !3189
  %319 = load i32, i32* %318, align 4, !dbg !3189
  %320 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3190
  %321 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %320, i32 0, i32 5, !dbg !3191
  %322 = load i32, i32* %321, align 8, !dbg !3191
  %323 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3192
  %324 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %323, i32 0, i32 0, !dbg !3193
  %325 = load i8, i8* %324, align 8, !dbg !3193
  %326 = zext i8 %325 to i32, !dbg !3192
  %327 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3194
  %328 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %327, i32 0, i32 1, !dbg !3195
  %329 = load i8, i8* %328, align 1, !dbg !3195
  %330 = zext i8 %329 to i32, !dbg !3194
  %331 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3196
  %332 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %331, i32 0, i32 2, !dbg !3197
  %333 = load i8, i8* %332, align 2, !dbg !3197
  %334 = zext i8 %333 to i32, !dbg !3196
  %335 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3198
  %336 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %335, i32 0, i32 3, !dbg !3199
  %337 = load i8, i8* %336, align 1, !dbg !3199
  %338 = zext i8 %337 to i32, !dbg !3198
  %339 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3200
  %340 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %339, i32 0, i32 17, !dbg !3201
  %341 = load i8, i8* %340, align 4, !dbg !3201
  %342 = zext i8 %341 to i32, !dbg !3200
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.35, i32 0, i32 0), i32 %275, i32 %279, i32 %283, i32 %287, i32 %291, i32 %295, i32 %299, i32 %303, i32 %307, i32 %311, i32 %316, i32 %319, i32 %322, i32 %326, i32 %330, i32 %334, i32 %338, i32 %342), !dbg !3202
  %343 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3203
  %344 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %343, i32 0, i32 14, !dbg !3204
  call void @setup_brush(%struct._BRUSH* %9, %struct._BRUSH* %344), !dbg !3205
  %345 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3206
  %346 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %345, i32 0, i32 0, !dbg !3207
  %347 = load i8, i8* %346, align 8, !dbg !3207
  %348 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3208
  %349 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %348, i32 0, i32 1, !dbg !3209
  %350 = load i8, i8* %349, align 1, !dbg !3209
  %351 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3210
  %352 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %351, i32 0, i32 2, !dbg !3211
  %353 = load i8, i8* %352, align 2, !dbg !3211
  %354 = zext i8 %353 to i32, !dbg !3210
  %355 = sub nsw i32 %354, 1, !dbg !3212
  %356 = trunc i32 %355 to i8, !dbg !3210
  %357 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3213
  %358 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %357, i32 0, i32 3, !dbg !3214
  %359 = load i8, i8* %358, align 1, !dbg !3214
  %360 = zext i8 %359 to i32, !dbg !3213
  %361 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3215
  %362 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %361, i32 0, i32 15, !dbg !3216
  %363 = load i16, i16* %362, align 8, !dbg !3216
  %364 = sext i16 %363 to i32, !dbg !3215
  %365 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3217
  %366 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %365, i32 0, i32 16, !dbg !3218
  %367 = load i16, i16* %366, align 2, !dbg !3218
  %368 = sext i16 %367 to i32, !dbg !3217
  %369 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3219
  %370 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %369, i32 0, i32 6, !dbg !3220
  %371 = load i16, i16* %370, align 4, !dbg !3220
  %372 = sext i16 %371 to i32, !dbg !3219
  %373 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3221
  %374 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %373, i32 0, i32 7, !dbg !3222
  %375 = load i16, i16* %374, align 2, !dbg !3222
  %376 = sext i16 %375 to i32, !dbg !3221
  %377 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3223
  %378 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %377, i32 0, i32 8, !dbg !3224
  %379 = load i16, i16* %378, align 8, !dbg !3224
  %380 = sext i16 %379 to i32, !dbg !3223
  %381 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3225
  %382 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %381, i32 0, i32 6, !dbg !3226
  %383 = load i16, i16* %382, align 4, !dbg !3226
  %384 = sext i16 %383 to i32, !dbg !3225
  %385 = sub nsw i32 %380, %384, !dbg !3227
  %386 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3228
  %387 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %386, i32 0, i32 9, !dbg !3229
  %388 = load i16, i16* %387, align 2, !dbg !3229
  %389 = sext i16 %388 to i32, !dbg !3228
  %390 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3230
  %391 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %390, i32 0, i32 7, !dbg !3231
  %392 = load i16, i16* %391, align 2, !dbg !3231
  %393 = sext i16 %392 to i32, !dbg !3230
  %394 = sub nsw i32 %389, %393, !dbg !3232
  %395 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3233
  %396 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %395, i32 0, i32 10, !dbg !3234
  %397 = load i16, i16* %396, align 4, !dbg !3234
  %398 = sext i16 %397 to i32, !dbg !3233
  %399 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3235
  %400 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %399, i32 0, i32 11, !dbg !3236
  %401 = load i16, i16* %400, align 2, !dbg !3236
  %402 = sext i16 %401 to i32, !dbg !3235
  %403 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3237
  %404 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %403, i32 0, i32 12, !dbg !3238
  %405 = load i16, i16* %404, align 8, !dbg !3238
  %406 = sext i16 %405 to i32, !dbg !3237
  %407 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3239
  %408 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %407, i32 0, i32 10, !dbg !3240
  %409 = load i16, i16* %408, align 4, !dbg !3240
  %410 = sext i16 %409 to i32, !dbg !3239
  %411 = sub nsw i32 %406, %410, !dbg !3241
  %412 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3242
  %413 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %412, i32 0, i32 13, !dbg !3243
  %414 = load i16, i16* %413, align 2, !dbg !3243
  %415 = sext i16 %414 to i32, !dbg !3242
  %416 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3244
  %417 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %416, i32 0, i32 11, !dbg !3245
  %418 = load i16, i16* %417, align 2, !dbg !3245
  %419 = sext i16 %418 to i32, !dbg !3244
  %420 = sub nsw i32 %415, %419, !dbg !3246
  %421 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3247
  %422 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %421, i32 0, i32 4, !dbg !3248
  %423 = load i32, i32* %422, align 4, !dbg !3248
  %424 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3249
  %425 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %424, i32 0, i32 5, !dbg !3250
  %426 = load i32, i32* %425, align 8, !dbg !3250
  %427 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3251
  %428 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %427, i32 0, i32 18, !dbg !3252
  %429 = getelementptr inbounds [256 x i8], [256 x i8]* %428, i32 0, i32 0, !dbg !3251
  %430 = load %struct._TEXT2_ORDER*, %struct._TEXT2_ORDER** %6, align 8, !dbg !3253
  %431 = getelementptr inbounds %struct._TEXT2_ORDER, %struct._TEXT2_ORDER* %430, i32 0, i32 17, !dbg !3254
  %432 = load i8, i8* %431, align 4, !dbg !3254
  call void @ui_draw_text(i8 zeroext %347, i8 zeroext %350, i8 zeroext %356, i32 %360, i32 %364, i32 %368, i32 %372, i32 %376, i32 %385, i32 %394, i32 %398, i32 %402, i32 %411, i32 %420, %struct._BRUSH* %9, i32 %423, i32 %426, i8* %429, i8 zeroext %432), !dbg !3255
  ret void, !dbg !3256
}

declare void @ui_reset_clip() #2

; Function Attrs: nounwind uwtable
define void @reset_order_state() #0 !dbg !3257 {
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* @g_order_state, i32 0, i32 0), i8 0, i64 1456, i32 8, i1 false), !dbg !3260
  store i8 1, i8* getelementptr inbounds (%struct._RDP_ORDER_STATE, %struct._RDP_ORDER_STATE* @g_order_state, i32 0, i32 0), align 8, !dbg !3261
  ret void, !dbg !3262
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @process_raw_bmpcache(%struct.stream*) #0 !dbg !3263 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3264, metadata !315), !dbg !3265
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3266, metadata !315), !dbg !3267
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3268, metadata !315), !dbg !3269
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3270, metadata !315), !dbg !3271
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3272, metadata !315), !dbg !3273
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3274, metadata !315), !dbg !3275
  call void @llvm.dbg.declare(metadata i8* %8, metadata !3276, metadata !315), !dbg !3277
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3278, metadata !315), !dbg !3279
  call void @llvm.dbg.declare(metadata i8* %10, metadata !3280, metadata !315), !dbg !3281
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3282, metadata !315), !dbg !3283
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3284, metadata !315), !dbg !3285
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3286, metadata !315), !dbg !3287
  %14 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3288
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !3289
  %16 = load i8*, i8** %15, align 8, !dbg !3290
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !3290
  store i8* %17, i8** %15, align 8, !dbg !3290
  %18 = load i8, i8* %16, align 1, !dbg !3291
  store i8 %18, i8* %6, align 1, !dbg !3292
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3293
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3294
  %21 = load i8*, i8** %20, align 8, !dbg !3295
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !3295
  store i8* %22, i8** %20, align 8, !dbg !3295
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3296
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3297
  %25 = load i8*, i8** %24, align 8, !dbg !3298
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !3298
  store i8* %26, i8** %24, align 8, !dbg !3298
  %27 = load i8, i8* %25, align 1, !dbg !3299
  store i8 %27, i8* %7, align 1, !dbg !3300
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3301
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !3302
  %30 = load i8*, i8** %29, align 8, !dbg !3303
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !3303
  store i8* %31, i8** %29, align 8, !dbg !3303
  %32 = load i8, i8* %30, align 1, !dbg !3304
  store i8 %32, i8* %8, align 1, !dbg !3305
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3306
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !3307
  %35 = load i8*, i8** %34, align 8, !dbg !3308
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !3308
  store i8* %36, i8** %34, align 8, !dbg !3308
  %37 = load i8, i8* %35, align 1, !dbg !3309
  store i8 %37, i8* %9, align 1, !dbg !3310
  %38 = load i8, i8* %9, align 1, !dbg !3311
  %39 = zext i8 %38 to i32, !dbg !3311
  %40 = add nsw i32 %39, 7, !dbg !3312
  %41 = sdiv i32 %40, 8, !dbg !3313
  %42 = trunc i32 %41 to i8, !dbg !3314
  store i8 %42, i8* %10, align 1, !dbg !3315
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3316
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !3318
  %45 = load i8*, i8** %44, align 8, !dbg !3318
  %46 = bitcast i8* %45 to i16*, !dbg !3319
  %47 = load i16, i16* %46, align 2, !dbg !3319
  store i16 %47, i16* %5, align 2, !dbg !3320
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3321
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !3322
  %50 = load i8*, i8** %49, align 8, !dbg !3323
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !3323
  store i8* %51, i8** %49, align 8, !dbg !3323
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3324
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !3326
  %54 = load i8*, i8** %53, align 8, !dbg !3326
  %55 = bitcast i8* %54 to i16*, !dbg !3327
  %56 = load i16, i16* %55, align 2, !dbg !3327
  store i16 %56, i16* %4, align 2, !dbg !3328
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3329
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !3330
  %59 = load i8*, i8** %58, align 8, !dbg !3331
  %60 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !3331
  store i8* %60, i8** %58, align 8, !dbg !3331
  %61 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3332
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !3334
  %63 = load i8*, i8** %62, align 8, !dbg !3334
  store i8* %63, i8** %11, align 8, !dbg !3335
  %64 = load i16, i16* %5, align 2, !dbg !3336
  %65 = zext i16 %64 to i32, !dbg !3336
  %66 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3337
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !3338
  %68 = load i8*, i8** %67, align 8, !dbg !3339
  %69 = sext i32 %65 to i64, !dbg !3339
  %70 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !3339
  store i8* %70, i8** %67, align 8, !dbg !3339
  %71 = load i8, i8* %7, align 1, !dbg !3340
  %72 = zext i8 %71 to i32, !dbg !3340
  %73 = load i8, i8* %8, align 1, !dbg !3341
  %74 = zext i8 %73 to i32, !dbg !3341
  %75 = load i8, i8* %6, align 1, !dbg !3342
  %76 = zext i8 %75 to i32, !dbg !3342
  %77 = load i16, i16* %4, align 2, !dbg !3343
  %78 = zext i16 %77 to i32, !dbg !3343
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i32 %72, i32 %74, i32 %76, i32 %78), !dbg !3344
  %79 = load i8, i8* %7, align 1, !dbg !3345
  %80 = zext i8 %79 to i32, !dbg !3345
  %81 = load i8, i8* %8, align 1, !dbg !3346
  %82 = zext i8 %81 to i32, !dbg !3346
  %83 = mul nsw i32 %80, %82, !dbg !3347
  %84 = load i8, i8* %10, align 1, !dbg !3348
  %85 = zext i8 %84 to i32, !dbg !3348
  %86 = mul nsw i32 %83, %85, !dbg !3349
  %87 = call i8* @xmalloc(i32 %86), !dbg !3350
  store i8* %87, i8** %12, align 8, !dbg !3351
  store i32 0, i32* %13, align 4, !dbg !3352
  br label %88, !dbg !3354

; <label>:88:                                     ; preds = %124, %1
  %89 = load i32, i32* %13, align 4, !dbg !3355
  %90 = load i8, i8* %8, align 1, !dbg !3358
  %91 = zext i8 %90 to i32, !dbg !3358
  %92 = icmp slt i32 %89, %91, !dbg !3359
  br i1 %92, label %93, label %127, !dbg !3360

; <label>:93:                                     ; preds = %88
  %94 = load i8, i8* %8, align 1, !dbg !3361
  %95 = zext i8 %94 to i32, !dbg !3361
  %96 = load i32, i32* %13, align 4, !dbg !3363
  %97 = sub nsw i32 %95, %96, !dbg !3364
  %98 = sub nsw i32 %97, 1, !dbg !3365
  %99 = load i8, i8* %7, align 1, !dbg !3366
  %100 = zext i8 %99 to i32, !dbg !3366
  %101 = load i8, i8* %10, align 1, !dbg !3367
  %102 = zext i8 %101 to i32, !dbg !3367
  %103 = mul nsw i32 %100, %102, !dbg !3368
  %104 = mul nsw i32 %98, %103, !dbg !3369
  %105 = sext i32 %104 to i64, !dbg !3370
  %106 = load i8*, i8** %12, align 8, !dbg !3370
  %107 = getelementptr inbounds i8, i8* %106, i64 %105, !dbg !3370
  %108 = load i32, i32* %13, align 4, !dbg !3371
  %109 = load i8, i8* %7, align 1, !dbg !3372
  %110 = zext i8 %109 to i32, !dbg !3372
  %111 = load i8, i8* %10, align 1, !dbg !3373
  %112 = zext i8 %111 to i32, !dbg !3373
  %113 = mul nsw i32 %110, %112, !dbg !3374
  %114 = mul nsw i32 %108, %113, !dbg !3375
  %115 = sext i32 %114 to i64, !dbg !3376
  %116 = load i8*, i8** %11, align 8, !dbg !3376
  %117 = getelementptr inbounds i8, i8* %116, i64 %115, !dbg !3376
  %118 = load i8, i8* %7, align 1, !dbg !3377
  %119 = zext i8 %118 to i32, !dbg !3377
  %120 = load i8, i8* %10, align 1, !dbg !3378
  %121 = zext i8 %120 to i32, !dbg !3378
  %122 = mul nsw i32 %119, %121, !dbg !3379
  %123 = sext i32 %122 to i64, !dbg !3377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %117, i64 %123, i32 1, i1 false), !dbg !3380
  br label %124, !dbg !3381

; <label>:124:                                    ; preds = %93
  %125 = load i32, i32* %13, align 4, !dbg !3382
  %126 = add nsw i32 %125, 1, !dbg !3382
  store i32 %126, i32* %13, align 4, !dbg !3382
  br label %88, !dbg !3384, !llvm.loop !3385

; <label>:127:                                    ; preds = %88
  %128 = load i8, i8* %7, align 1, !dbg !3387
  %129 = zext i8 %128 to i32, !dbg !3387
  %130 = load i8, i8* %8, align 1, !dbg !3388
  %131 = zext i8 %130 to i32, !dbg !3388
  %132 = load i8*, i8** %12, align 8, !dbg !3389
  %133 = call i8* @ui_create_bitmap(i32 %129, i32 %131, i8* %132), !dbg !3390
  store i8* %133, i8** %3, align 8, !dbg !3391
  %134 = load i8*, i8** %12, align 8, !dbg !3392
  call void @xfree(i8* %134), !dbg !3393
  %135 = load i8, i8* %6, align 1, !dbg !3394
  %136 = load i16, i16* %4, align 2, !dbg !3395
  %137 = load i8*, i8** %3, align 8, !dbg !3396
  call void @cache_put_bitmap(i8 zeroext %135, i16 zeroext %136, i8* %137), !dbg !3397
  ret void, !dbg !3398
}

; Function Attrs: nounwind uwtable
define internal void @process_colcache(%struct.stream*) #0 !dbg !3399 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %struct._COLOURENTRY*, align 8
  %4 = alloca %struct._COLOURMAP, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3400, metadata !315), !dbg !3401
  call void @llvm.dbg.declare(metadata %struct._COLOURENTRY** %3, metadata !3402, metadata !315), !dbg !3403
  call void @llvm.dbg.declare(metadata %struct._COLOURMAP* %4, metadata !3404, metadata !315), !dbg !3410
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3411, metadata !315), !dbg !3413
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3414, metadata !315), !dbg !3415
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3416, metadata !315), !dbg !3417
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3418
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !3419
  %10 = load i8*, i8** %9, align 8, !dbg !3420
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !3420
  store i8* %11, i8** %9, align 8, !dbg !3420
  %12 = load i8, i8* %10, align 1, !dbg !3421
  store i8 %12, i8* %6, align 1, !dbg !3422
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3423
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !3425
  %15 = load i8*, i8** %14, align 8, !dbg !3425
  %16 = bitcast i8* %15 to i16*, !dbg !3426
  %17 = load i16, i16* %16, align 2, !dbg !3426
  %18 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !3427
  store i16 %17, i16* %18, align 8, !dbg !3428
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3429
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3430
  %21 = load i8*, i8** %20, align 8, !dbg !3431
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !3431
  store i8* %22, i8** %20, align 8, !dbg !3431
  %23 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !3432
  %24 = load i16, i16* %23, align 8, !dbg !3432
  %25 = zext i16 %24 to i64, !dbg !3433
  %26 = mul i64 3, %25, !dbg !3434
  %27 = trunc i64 %26 to i32, !dbg !3435
  %28 = call i8* @xmalloc(i32 %27), !dbg !3436
  %29 = bitcast i8* %28 to %struct._COLOURENTRY*, !dbg !3437
  %30 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !3438
  store %struct._COLOURENTRY* %29, %struct._COLOURENTRY** %30, align 8, !dbg !3439
  store i32 0, i32* %7, align 4, !dbg !3440
  br label %31, !dbg !3442

; <label>:31:                                     ; preds = %68, %1
  %32 = load i32, i32* %7, align 4, !dbg !3443
  %33 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !3446
  %34 = load i16, i16* %33, align 8, !dbg !3446
  %35 = zext i16 %34 to i32, !dbg !3447
  %36 = icmp slt i32 %32, %35, !dbg !3448
  br i1 %36, label %37, label %71, !dbg !3449

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %7, align 4, !dbg !3450
  %39 = sext i32 %38 to i64, !dbg !3452
  %40 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !3453
  %41 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %40, align 8, !dbg !3453
  %42 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %41, i64 %39, !dbg !3452
  store %struct._COLOURENTRY* %42, %struct._COLOURENTRY** %3, align 8, !dbg !3454
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3455
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !3456
  %45 = load i8*, i8** %44, align 8, !dbg !3457
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !3457
  store i8* %46, i8** %44, align 8, !dbg !3457
  %47 = load i8, i8* %45, align 1, !dbg !3458
  %48 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !3459
  %49 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %48, i32 0, i32 2, !dbg !3460
  store i8 %47, i8* %49, align 1, !dbg !3461
  %50 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3462
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !3463
  %52 = load i8*, i8** %51, align 8, !dbg !3464
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !3464
  store i8* %53, i8** %51, align 8, !dbg !3464
  %54 = load i8, i8* %52, align 1, !dbg !3465
  %55 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !3466
  %56 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %55, i32 0, i32 1, !dbg !3467
  store i8 %54, i8* %56, align 1, !dbg !3468
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3469
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !3470
  %59 = load i8*, i8** %58, align 8, !dbg !3471
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !3471
  store i8* %60, i8** %58, align 8, !dbg !3471
  %61 = load i8, i8* %59, align 1, !dbg !3472
  %62 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !3473
  %63 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %62, i32 0, i32 0, !dbg !3474
  store i8 %61, i8* %63, align 1, !dbg !3475
  %64 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3476
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !3477
  %66 = load i8*, i8** %65, align 8, !dbg !3478
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3478
  store i8* %67, i8** %65, align 8, !dbg !3478
  br label %68, !dbg !3479

; <label>:68:                                     ; preds = %37
  %69 = load i32, i32* %7, align 4, !dbg !3480
  %70 = add nsw i32 %69, 1, !dbg !3480
  store i32 %70, i32* %7, align 4, !dbg !3480
  br label %31, !dbg !3482, !llvm.loop !3483

; <label>:71:                                     ; preds = %31
  %72 = load i8, i8* %6, align 1, !dbg !3485
  %73 = zext i8 %72 to i32, !dbg !3485
  %74 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !3486
  %75 = load i16, i16* %74, align 8, !dbg !3486
  %76 = zext i16 %75 to i32, !dbg !3487
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %73, i32 %76), !dbg !3488
  %77 = call i8* @ui_create_colourmap(%struct._COLOURMAP* %4), !dbg !3489
  store i8* %77, i8** %5, align 8, !dbg !3490
  %78 = load i8, i8* %6, align 1, !dbg !3491
  %79 = icmp ne i8 %78, 0, !dbg !3491
  br i1 %79, label %80, label %82, !dbg !3493

; <label>:80:                                     ; preds = %71
  %81 = load i8*, i8** %5, align 8, !dbg !3494
  call void @ui_set_colourmap(i8* %81), !dbg !3495
  br label %82, !dbg !3495

; <label>:82:                                     ; preds = %80, %71
  %83 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !3496
  %84 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %83, align 8, !dbg !3496
  %85 = bitcast %struct._COLOURENTRY* %84 to i8*, !dbg !3497
  call void @xfree(i8* %85), !dbg !3498
  ret void, !dbg !3499
}

; Function Attrs: nounwind uwtable
define internal void @process_bmpcache(%struct.stream*) #0 !dbg !3500 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3501, metadata !315), !dbg !3502
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3503, metadata !315), !dbg !3504
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3505, metadata !315), !dbg !3506
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3507, metadata !315), !dbg !3508
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3509, metadata !315), !dbg !3510
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3511, metadata !315), !dbg !3512
  call void @llvm.dbg.declare(metadata i8* %8, metadata !3513, metadata !315), !dbg !3514
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3515, metadata !315), !dbg !3516
  call void @llvm.dbg.declare(metadata i8* %10, metadata !3517, metadata !315), !dbg !3518
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3519, metadata !315), !dbg !3520
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3521, metadata !315), !dbg !3522
  call void @llvm.dbg.declare(metadata i16* %13, metadata !3523, metadata !315), !dbg !3524
  call void @llvm.dbg.declare(metadata i16* %14, metadata !3525, metadata !315), !dbg !3526
  call void @llvm.dbg.declare(metadata i16* %15, metadata !3527, metadata !315), !dbg !3528
  call void @llvm.dbg.declare(metadata i16* %16, metadata !3529, metadata !315), !dbg !3530
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3531, metadata !315), !dbg !3532
  store i16 -1, i16* %16, align 2, !dbg !3533
  store i16 -1, i16* %15, align 2, !dbg !3534
  store i16 -1, i16* %14, align 2, !dbg !3535
  %18 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3536
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !3537
  %20 = load i8*, i8** %19, align 8, !dbg !3538
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !3538
  store i8* %21, i8** %19, align 8, !dbg !3538
  %22 = load i8, i8* %20, align 1, !dbg !3539
  store i8 %22, i8* %6, align 1, !dbg !3540
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3541
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3542
  %25 = load i8*, i8** %24, align 8, !dbg !3543
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !3543
  store i8* %26, i8** %24, align 8, !dbg !3543
  %27 = load i8, i8* %25, align 1, !dbg !3544
  store i8 %27, i8* %17, align 1, !dbg !3545
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3546
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !3547
  %30 = load i8*, i8** %29, align 8, !dbg !3548
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !3548
  store i8* %31, i8** %29, align 8, !dbg !3548
  %32 = load i8, i8* %30, align 1, !dbg !3549
  store i8 %32, i8* %7, align 1, !dbg !3550
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3551
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !3552
  %35 = load i8*, i8** %34, align 8, !dbg !3553
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !3553
  store i8* %36, i8** %34, align 8, !dbg !3553
  %37 = load i8, i8* %35, align 1, !dbg !3554
  store i8 %37, i8* %8, align 1, !dbg !3555
  %38 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3556
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !3557
  %40 = load i8*, i8** %39, align 8, !dbg !3558
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !3558
  store i8* %41, i8** %39, align 8, !dbg !3558
  %42 = load i8, i8* %40, align 1, !dbg !3559
  store i8 %42, i8* %9, align 1, !dbg !3560
  %43 = load i8, i8* %9, align 1, !dbg !3561
  %44 = zext i8 %43 to i32, !dbg !3561
  %45 = add nsw i32 %44, 7, !dbg !3562
  %46 = sdiv i32 %45, 8, !dbg !3563
  %47 = trunc i32 %46 to i8, !dbg !3564
  store i8 %47, i8* %10, align 1, !dbg !3565
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3566
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !3568
  %50 = load i8*, i8** %49, align 8, !dbg !3568
  %51 = bitcast i8* %50 to i16*, !dbg !3569
  %52 = load i16, i16* %51, align 2, !dbg !3569
  store i16 %52, i16* %13, align 2, !dbg !3570
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3571
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !3572
  %55 = load i8*, i8** %54, align 8, !dbg !3573
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !3573
  store i8* %56, i8** %54, align 8, !dbg !3573
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3574
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !3576
  %59 = load i8*, i8** %58, align 8, !dbg !3576
  %60 = bitcast i8* %59 to i16*, !dbg !3577
  %61 = load i16, i16* %60, align 2, !dbg !3577
  store i16 %61, i16* %4, align 2, !dbg !3578
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3579
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !3580
  %64 = load i8*, i8** %63, align 8, !dbg !3581
  %65 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !3581
  store i8* %65, i8** %63, align 8, !dbg !3581
  %66 = load i32, i32* @g_rdp_version, align 4, !dbg !3582
  %67 = icmp uge i32 %66, 5, !dbg !3584
  br i1 %67, label %68, label %70, !dbg !3585

; <label>:68:                                     ; preds = %1
  %69 = load i16, i16* %13, align 2, !dbg !3586
  store i16 %69, i16* %5, align 2, !dbg !3588
  br label %107, !dbg !3589

; <label>:70:                                     ; preds = %1
  %71 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3590
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !3593
  %73 = load i8*, i8** %72, align 8, !dbg !3593
  %74 = bitcast i8* %73 to i16*, !dbg !3594
  %75 = load i16, i16* %74, align 2, !dbg !3594
  store i16 %75, i16* %14, align 2, !dbg !3595
  %76 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3596
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !3597
  %78 = load i8*, i8** %77, align 8, !dbg !3598
  %79 = getelementptr inbounds i8, i8* %78, i64 2, !dbg !3598
  store i8* %79, i8** %77, align 8, !dbg !3598
  %80 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3599
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !3601
  %82 = load i8*, i8** %81, align 8, !dbg !3601
  %83 = bitcast i8* %82 to i16*, !dbg !3602
  %84 = load i16, i16* %83, align 2, !dbg !3602
  store i16 %84, i16* %5, align 2, !dbg !3603
  %85 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3604
  %86 = getelementptr inbounds %struct.stream, %struct.stream* %85, i32 0, i32 0, !dbg !3605
  %87 = load i8*, i8** %86, align 8, !dbg !3606
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !3606
  store i8* %88, i8** %86, align 8, !dbg !3606
  %89 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3607
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !3609
  %91 = load i8*, i8** %90, align 8, !dbg !3609
  %92 = bitcast i8* %91 to i16*, !dbg !3610
  %93 = load i16, i16* %92, align 2, !dbg !3610
  store i16 %93, i16* %15, align 2, !dbg !3611
  %94 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3612
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %94, i32 0, i32 0, !dbg !3613
  %96 = load i8*, i8** %95, align 8, !dbg !3614
  %97 = getelementptr inbounds i8, i8* %96, i64 2, !dbg !3614
  store i8* %97, i8** %95, align 8, !dbg !3614
  %98 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3615
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 0, !dbg !3617
  %100 = load i8*, i8** %99, align 8, !dbg !3617
  %101 = bitcast i8* %100 to i16*, !dbg !3618
  %102 = load i16, i16* %101, align 2, !dbg !3618
  store i16 %102, i16* %16, align 2, !dbg !3619
  %103 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3620
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !3621
  %105 = load i8*, i8** %104, align 8, !dbg !3622
  %106 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !3622
  store i8* %106, i8** %104, align 8, !dbg !3622
  br label %107

; <label>:107:                                    ; preds = %70, %68
  %108 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3623
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i32 0, i32 0, !dbg !3625
  %110 = load i8*, i8** %109, align 8, !dbg !3625
  store i8* %110, i8** %11, align 8, !dbg !3626
  %111 = load i16, i16* %5, align 2, !dbg !3627
  %112 = zext i16 %111 to i32, !dbg !3627
  %113 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3628
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !3629
  %115 = load i8*, i8** %114, align 8, !dbg !3630
  %116 = sext i32 %112 to i64, !dbg !3630
  %117 = getelementptr inbounds i8, i8* %115, i64 %116, !dbg !3630
  store i8* %117, i8** %114, align 8, !dbg !3630
  %118 = load i8, i8* %7, align 1, !dbg !3631
  %119 = zext i8 %118 to i32, !dbg !3631
  %120 = load i8, i8* %8, align 1, !dbg !3632
  %121 = zext i8 %120 to i32, !dbg !3632
  %122 = load i8, i8* %6, align 1, !dbg !3633
  %123 = zext i8 %122 to i32, !dbg !3633
  %124 = load i16, i16* %4, align 2, !dbg !3634
  %125 = zext i16 %124 to i32, !dbg !3634
  %126 = load i8, i8* %9, align 1, !dbg !3635
  %127 = zext i8 %126 to i32, !dbg !3635
  %128 = load i16, i16* %5, align 2, !dbg !3636
  %129 = zext i16 %128 to i32, !dbg !3636
  %130 = load i8, i8* %17, align 1, !dbg !3637
  %131 = zext i8 %130 to i32, !dbg !3637
  %132 = load i16, i16* %13, align 2, !dbg !3638
  %133 = zext i16 %132 to i32, !dbg !3638
  %134 = load i16, i16* %14, align 2, !dbg !3639
  %135 = zext i16 %134 to i32, !dbg !3639
  %136 = load i16, i16* %15, align 2, !dbg !3640
  %137 = zext i16 %136 to i32, !dbg !3640
  %138 = load i16, i16* %16, align 2, !dbg !3641
  %139 = zext i16 %138 to i32, !dbg !3641
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i32 0, i32 0), i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i32 %137, i32 %139), !dbg !3642
  %140 = load i8, i8* %7, align 1, !dbg !3643
  %141 = zext i8 %140 to i32, !dbg !3643
  %142 = load i8, i8* %8, align 1, !dbg !3644
  %143 = zext i8 %142 to i32, !dbg !3644
  %144 = mul nsw i32 %141, %143, !dbg !3645
  %145 = load i8, i8* %10, align 1, !dbg !3646
  %146 = zext i8 %145 to i32, !dbg !3646
  %147 = mul nsw i32 %144, %146, !dbg !3647
  %148 = call i8* @xmalloc(i32 %147), !dbg !3648
  store i8* %148, i8** %12, align 8, !dbg !3649
  %149 = load i8*, i8** %12, align 8, !dbg !3650
  %150 = load i8, i8* %7, align 1, !dbg !3652
  %151 = zext i8 %150 to i32, !dbg !3652
  %152 = load i8, i8* %8, align 1, !dbg !3653
  %153 = zext i8 %152 to i32, !dbg !3653
  %154 = load i8*, i8** %11, align 8, !dbg !3654
  %155 = load i16, i16* %5, align 2, !dbg !3655
  %156 = zext i16 %155 to i32, !dbg !3655
  %157 = load i8, i8* %10, align 1, !dbg !3656
  %158 = zext i8 %157 to i32, !dbg !3656
  %159 = call i32 @bitmap_decompress(i8* %149, i32 %151, i32 %153, i8* %154, i32 %156, i32 %158), !dbg !3657
  %160 = icmp ne i32 %159, 0, !dbg !3657
  br i1 %160, label %161, label %171, !dbg !3658

; <label>:161:                                    ; preds = %107
  %162 = load i8, i8* %7, align 1, !dbg !3659
  %163 = zext i8 %162 to i32, !dbg !3659
  %164 = load i8, i8* %8, align 1, !dbg !3661
  %165 = zext i8 %164 to i32, !dbg !3661
  %166 = load i8*, i8** %12, align 8, !dbg !3662
  %167 = call i8* @ui_create_bitmap(i32 %163, i32 %165, i8* %166), !dbg !3663
  store i8* %167, i8** %3, align 8, !dbg !3664
  %168 = load i8, i8* %6, align 1, !dbg !3665
  %169 = load i16, i16* %4, align 2, !dbg !3666
  %170 = load i8*, i8** %3, align 8, !dbg !3667
  call void @cache_put_bitmap(i8 zeroext %168, i16 zeroext %169, i8* %170), !dbg !3668
  br label %172, !dbg !3669

; <label>:171:                                    ; preds = %107
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0)), !dbg !3670
  br label %172

; <label>:172:                                    ; preds = %171, %161
  %173 = load i8*, i8** %12, align 8, !dbg !3672
  call void @xfree(i8* %173), !dbg !3673
  ret void, !dbg !3674
}

; Function Attrs: nounwind uwtable
define internal void @process_fontcache(%struct.stream*) #0 !dbg !3675 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3676, metadata !315), !dbg !3677
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3678, metadata !315), !dbg !3680
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3681, metadata !315), !dbg !3682
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3683, metadata !315), !dbg !3684
  call void @llvm.dbg.declare(metadata i16* %6, metadata !3685, metadata !315), !dbg !3686
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3687, metadata !315), !dbg !3688
  call void @llvm.dbg.declare(metadata i16* %8, metadata !3689, metadata !315), !dbg !3690
  call void @llvm.dbg.declare(metadata i16* %9, metadata !3691, metadata !315), !dbg !3692
  call void @llvm.dbg.declare(metadata i16* %10, metadata !3693, metadata !315), !dbg !3694
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3695, metadata !315), !dbg !3696
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3697, metadata !315), !dbg !3698
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3699, metadata !315), !dbg !3700
  %14 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3701
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !3702
  %16 = load i8*, i8** %15, align 8, !dbg !3703
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !3703
  store i8* %17, i8** %15, align 8, !dbg !3703
  %18 = load i8, i8* %16, align 1, !dbg !3704
  store i8 %18, i8* %4, align 1, !dbg !3705
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3706
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3707
  %21 = load i8*, i8** %20, align 8, !dbg !3708
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !3708
  store i8* %22, i8** %20, align 8, !dbg !3708
  %23 = load i8, i8* %21, align 1, !dbg !3709
  store i8 %23, i8* %5, align 1, !dbg !3710
  %24 = load i8, i8* %4, align 1, !dbg !3711
  %25 = zext i8 %24 to i32, !dbg !3711
  %26 = load i8, i8* %5, align 1, !dbg !3712
  %27 = zext i8 %26 to i32, !dbg !3712
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %25, i32 %27), !dbg !3713
  store i32 0, i32* %11, align 4, !dbg !3714
  br label %28, !dbg !3716

; <label>:28:                                     ; preds = %110, %1
  %29 = load i32, i32* %11, align 4, !dbg !3717
  %30 = load i8, i8* %5, align 1, !dbg !3720
  %31 = zext i8 %30 to i32, !dbg !3720
  %32 = icmp slt i32 %29, %31, !dbg !3721
  br i1 %32, label %33, label %113, !dbg !3722

; <label>:33:                                     ; preds = %28
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3723
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !3726
  %36 = load i8*, i8** %35, align 8, !dbg !3726
  %37 = bitcast i8* %36 to i16*, !dbg !3727
  %38 = load i16, i16* %37, align 2, !dbg !3727
  store i16 %38, i16* %6, align 2, !dbg !3728
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3729
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !3730
  %41 = load i8*, i8** %40, align 8, !dbg !3731
  %42 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !3731
  store i8* %42, i8** %40, align 8, !dbg !3731
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3732
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !3734
  %45 = load i8*, i8** %44, align 8, !dbg !3734
  %46 = bitcast i8* %45 to i16*, !dbg !3735
  %47 = load i16, i16* %46, align 2, !dbg !3735
  store i16 %47, i16* %7, align 2, !dbg !3736
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3737
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !3738
  %50 = load i8*, i8** %49, align 8, !dbg !3739
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !3739
  store i8* %51, i8** %49, align 8, !dbg !3739
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3740
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !3742
  %54 = load i8*, i8** %53, align 8, !dbg !3742
  %55 = bitcast i8* %54 to i16*, !dbg !3743
  %56 = load i16, i16* %55, align 2, !dbg !3743
  store i16 %56, i16* %8, align 2, !dbg !3744
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3745
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !3746
  %59 = load i8*, i8** %58, align 8, !dbg !3747
  %60 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !3747
  store i8* %60, i8** %58, align 8, !dbg !3747
  %61 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3748
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !3750
  %63 = load i8*, i8** %62, align 8, !dbg !3750
  %64 = bitcast i8* %63 to i16*, !dbg !3751
  %65 = load i16, i16* %64, align 2, !dbg !3751
  store i16 %65, i16* %9, align 2, !dbg !3752
  %66 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3753
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !3754
  %68 = load i8*, i8** %67, align 8, !dbg !3755
  %69 = getelementptr inbounds i8, i8* %68, i64 2, !dbg !3755
  store i8* %69, i8** %67, align 8, !dbg !3755
  %70 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3756
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !3758
  %72 = load i8*, i8** %71, align 8, !dbg !3758
  %73 = bitcast i8* %72 to i16*, !dbg !3759
  %74 = load i16, i16* %73, align 2, !dbg !3759
  store i16 %74, i16* %10, align 2, !dbg !3760
  %75 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3761
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !3762
  %77 = load i8*, i8** %76, align 8, !dbg !3763
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !3763
  store i8* %78, i8** %76, align 8, !dbg !3763
  %79 = load i16, i16* %10, align 2, !dbg !3764
  %80 = zext i16 %79 to i32, !dbg !3764
  %81 = load i16, i16* %9, align 2, !dbg !3765
  %82 = zext i16 %81 to i32, !dbg !3765
  %83 = add nsw i32 %82, 7, !dbg !3766
  %84 = sdiv i32 %83, 8, !dbg !3767
  %85 = mul nsw i32 %80, %84, !dbg !3768
  %86 = add nsw i32 %85, 3, !dbg !3769
  %87 = and i32 %86, -4, !dbg !3770
  store i32 %87, i32* %12, align 4, !dbg !3771
  %88 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3772
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !3774
  %90 = load i8*, i8** %89, align 8, !dbg !3774
  store i8* %90, i8** %13, align 8, !dbg !3775
  %91 = load i32, i32* %12, align 4, !dbg !3776
  %92 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3777
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !3778
  %94 = load i8*, i8** %93, align 8, !dbg !3779
  %95 = sext i32 %91 to i64, !dbg !3779
  %96 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !3779
  store i8* %96, i8** %93, align 8, !dbg !3779
  %97 = load i16, i16* %9, align 2, !dbg !3780
  %98 = zext i16 %97 to i32, !dbg !3780
  %99 = load i16, i16* %10, align 2, !dbg !3781
  %100 = zext i16 %99 to i32, !dbg !3781
  %101 = load i8*, i8** %13, align 8, !dbg !3782
  %102 = call i8* @ui_create_glyph(i32 %98, i32 %100, i8* %101), !dbg !3783
  store i8* %102, i8** %3, align 8, !dbg !3784
  %103 = load i8, i8* %4, align 1, !dbg !3785
  %104 = load i16, i16* %6, align 2, !dbg !3786
  %105 = load i16, i16* %7, align 2, !dbg !3787
  %106 = load i16, i16* %8, align 2, !dbg !3788
  %107 = load i16, i16* %9, align 2, !dbg !3789
  %108 = load i16, i16* %10, align 2, !dbg !3790
  %109 = load i8*, i8** %3, align 8, !dbg !3791
  call void @cache_put_font(i8 zeroext %103, i16 zeroext %104, i16 zeroext %105, i16 zeroext %106, i16 zeroext %107, i16 zeroext %108, i8* %109), !dbg !3792
  br label %110, !dbg !3793

; <label>:110:                                    ; preds = %33
  %111 = load i32, i32* %11, align 4, !dbg !3794
  %112 = add nsw i32 %111, 1, !dbg !3794
  store i32 %112, i32* %11, align 4, !dbg !3794
  br label %28, !dbg !3796, !llvm.loop !3797

; <label>:113:                                    ; preds = %28
  ret void, !dbg !3799
}

; Function Attrs: nounwind uwtable
define internal void @process_bmpcache2(%struct.stream*, i16 zeroext, i32) #0 !dbg !3800 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !3803, metadata !315), !dbg !3804
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3805, metadata !315), !dbg !3806
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3807, metadata !315), !dbg !3808
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3809, metadata !315), !dbg !3810
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3811, metadata !315), !dbg !3812
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3813, metadata !315), !dbg !3814
  call void @llvm.dbg.declare(metadata i8* %10, metadata !3815, metadata !315), !dbg !3816
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3817, metadata !315), !dbg !3818
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3819, metadata !315), !dbg !3820
  call void @llvm.dbg.declare(metadata i8* %13, metadata !3821, metadata !315), !dbg !3822
  call void @llvm.dbg.declare(metadata i16* %14, metadata !3823, metadata !315), !dbg !3824
  call void @llvm.dbg.declare(metadata i16* %15, metadata !3825, metadata !315), !dbg !3826
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3827, metadata !315), !dbg !3828
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3829, metadata !315), !dbg !3830
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3831, metadata !315), !dbg !3832
  store i8* null, i8** %18, align 8, !dbg !3833
  %19 = load i16, i16* %5, align 2, !dbg !3834
  %20 = zext i16 %19 to i32, !dbg !3834
  %21 = and i32 %20, 7, !dbg !3835
  %22 = trunc i32 %21 to i8, !dbg !3834
  store i8 %22, i8* %9, align 1, !dbg !3836
  %23 = load i16, i16* %5, align 2, !dbg !3837
  %24 = zext i16 %23 to i32, !dbg !3837
  %25 = and i32 %24, 56, !dbg !3838
  %26 = ashr i32 %25, 3, !dbg !3839
  %27 = sub nsw i32 %26, 2, !dbg !3840
  %28 = trunc i32 %27 to i8, !dbg !3841
  store i8 %28, i8* %13, align 1, !dbg !3842
  %29 = load i16, i16* %5, align 2, !dbg !3843
  %30 = zext i16 %29 to i32, !dbg !3843
  %31 = and i32 %30, 256, !dbg !3845
  %32 = icmp ne i32 %31, 0, !dbg !3845
  br i1 %32, label %33, label %41, !dbg !3846

; <label>:33:                                     ; preds = %3
  %34 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3847
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !3850
  %36 = load i8*, i8** %35, align 8, !dbg !3850
  store i8* %36, i8** %18, align 8, !dbg !3851
  %37 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3852
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !3853
  %39 = load i8*, i8** %38, align 8, !dbg !3854
  %40 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !3854
  store i8* %40, i8** %38, align 8, !dbg !3854
  br label %41, !dbg !3855

; <label>:41:                                     ; preds = %33, %3
  %42 = load i16, i16* %5, align 2, !dbg !3856
  %43 = zext i16 %42 to i32, !dbg !3856
  %44 = and i32 %43, 128, !dbg !3858
  %45 = icmp ne i32 %44, 0, !dbg !3858
  br i1 %45, label %46, label %53, !dbg !3859

; <label>:46:                                     ; preds = %41
  %47 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3860
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !3862
  %49 = load i8*, i8** %48, align 8, !dbg !3863
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !3863
  store i8* %50, i8** %48, align 8, !dbg !3863
  %51 = load i8, i8* %49, align 1, !dbg !3864
  store i8 %51, i8* %11, align 1, !dbg !3865
  %52 = load i8, i8* %11, align 1, !dbg !3866
  store i8 %52, i8* %12, align 1, !dbg !3867
  br label %64, !dbg !3868

; <label>:53:                                     ; preds = %41
  %54 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3869
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !3871
  %56 = load i8*, i8** %55, align 8, !dbg !3872
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !3872
  store i8* %57, i8** %55, align 8, !dbg !3872
  %58 = load i8, i8* %56, align 1, !dbg !3873
  store i8 %58, i8* %11, align 1, !dbg !3874
  %59 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3875
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !3876
  %61 = load i8*, i8** %60, align 8, !dbg !3877
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !3877
  store i8* %62, i8** %60, align 8, !dbg !3877
  %63 = load i8, i8* %61, align 1, !dbg !3878
  store i8 %63, i8* %12, align 1, !dbg !3879
  br label %64

; <label>:64:                                     ; preds = %53, %46
  %65 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3880
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !3882
  %67 = load i8*, i8** %66, align 8, !dbg !3883
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !3883
  store i8* %68, i8** %66, align 8, !dbg !3883
  %69 = load i8, i8* %67, align 1, !dbg !3884
  %70 = zext i8 %69 to i16, !dbg !3884
  store i16 %70, i16* %15, align 2, !dbg !3885
  %71 = load i16, i16* %15, align 2, !dbg !3886
  %72 = zext i16 %71 to i32, !dbg !3887
  %73 = shl i32 %72, 8, !dbg !3888
  %74 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3889
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !3890
  %76 = load i8*, i8** %75, align 8, !dbg !3891
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !3891
  store i8* %77, i8** %75, align 8, !dbg !3891
  %78 = load i8, i8* %76, align 1, !dbg !3892
  %79 = zext i8 %78 to i32, !dbg !3892
  %80 = add nsw i32 %73, %79, !dbg !3893
  %81 = trunc i32 %80 to i16, !dbg !3894
  store i16 %81, i16* %15, align 2, !dbg !3895
  %82 = load i16, i16* %15, align 2, !dbg !3896
  %83 = zext i16 %82 to i32, !dbg !3896
  %84 = and i32 %83, 16383, !dbg !3896
  %85 = trunc i32 %84 to i16, !dbg !3896
  store i16 %85, i16* %15, align 2, !dbg !3896
  %86 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3897
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !3898
  %88 = load i8*, i8** %87, align 8, !dbg !3899
  %89 = getelementptr inbounds i8, i8* %88, i32 1, !dbg !3899
  store i8* %89, i8** %87, align 8, !dbg !3899
  %90 = load i8, i8* %88, align 1, !dbg !3900
  %91 = zext i8 %90 to i16, !dbg !3900
  store i16 %91, i16* %14, align 2, !dbg !3901
  %92 = load i16, i16* %14, align 2, !dbg !3902
  %93 = zext i16 %92 to i32, !dbg !3902
  %94 = and i32 %93, 128, !dbg !3904
  %95 = icmp ne i32 %94, 0, !dbg !3904
  br i1 %95, label %96, label %110, !dbg !3905

; <label>:96:                                     ; preds = %64
  %97 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3906
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !3908
  %99 = load i8*, i8** %98, align 8, !dbg !3909
  %100 = getelementptr inbounds i8, i8* %99, i32 1, !dbg !3909
  store i8* %100, i8** %98, align 8, !dbg !3909
  %101 = load i8, i8* %99, align 1, !dbg !3910
  store i8 %101, i8* %10, align 1, !dbg !3911
  %102 = load i16, i16* %14, align 2, !dbg !3912
  %103 = zext i16 %102 to i32, !dbg !3912
  %104 = xor i32 %103, 128, !dbg !3913
  %105 = shl i32 %104, 8, !dbg !3914
  %106 = load i8, i8* %10, align 1, !dbg !3915
  %107 = zext i8 %106 to i32, !dbg !3915
  %108 = add nsw i32 %105, %107, !dbg !3916
  %109 = trunc i32 %108 to i16, !dbg !3917
  store i16 %109, i16* %14, align 2, !dbg !3918
  br label %110, !dbg !3919

; <label>:110:                                    ; preds = %96, %64
  %111 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3920
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !3922
  %113 = load i8*, i8** %112, align 8, !dbg !3922
  store i8* %113, i8** %16, align 8, !dbg !3923
  %114 = load i16, i16* %15, align 2, !dbg !3924
  %115 = zext i16 %114 to i32, !dbg !3924
  %116 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !3925
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !3926
  %118 = load i8*, i8** %117, align 8, !dbg !3927
  %119 = sext i32 %115 to i64, !dbg !3927
  %120 = getelementptr inbounds i8, i8* %118, i64 %119, !dbg !3927
  store i8* %120, i8** %117, align 8, !dbg !3927
  %121 = load i32, i32* %6, align 4, !dbg !3928
  %122 = load i16, i16* %5, align 2, !dbg !3929
  %123 = zext i16 %122 to i32, !dbg !3929
  %124 = load i8, i8* %11, align 1, !dbg !3930
  %125 = zext i8 %124 to i32, !dbg !3930
  %126 = load i8, i8* %12, align 1, !dbg !3931
  %127 = zext i8 %126 to i32, !dbg !3931
  %128 = load i8, i8* %9, align 1, !dbg !3932
  %129 = zext i8 %128 to i32, !dbg !3932
  %130 = load i16, i16* %14, align 2, !dbg !3933
  %131 = zext i16 %130 to i32, !dbg !3933
  %132 = load i8, i8* %13, align 1, !dbg !3934
  %133 = zext i8 %132 to i32, !dbg !3934
  %134 = load i16, i16* %15, align 2, !dbg !3935
  %135 = zext i16 %134 to i32, !dbg !3935
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i32 0, i32 0), i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135), !dbg !3936
  %136 = load i8, i8* %11, align 1, !dbg !3937
  %137 = zext i8 %136 to i32, !dbg !3937
  %138 = load i8, i8* %12, align 1, !dbg !3938
  %139 = zext i8 %138 to i32, !dbg !3938
  %140 = mul nsw i32 %137, %139, !dbg !3939
  %141 = load i8, i8* %13, align 1, !dbg !3940
  %142 = zext i8 %141 to i32, !dbg !3940
  %143 = mul nsw i32 %140, %142, !dbg !3941
  %144 = call i8* @xmalloc(i32 %143), !dbg !3942
  store i8* %144, i8** %17, align 8, !dbg !3943
  %145 = load i32, i32* %6, align 4, !dbg !3944
  %146 = icmp ne i32 %145, 0, !dbg !3944
  br i1 %146, label %147, label %163, !dbg !3946

; <label>:147:                                    ; preds = %110
  %148 = load i8*, i8** %17, align 8, !dbg !3947
  %149 = load i8, i8* %11, align 1, !dbg !3950
  %150 = zext i8 %149 to i32, !dbg !3950
  %151 = load i8, i8* %12, align 1, !dbg !3951
  %152 = zext i8 %151 to i32, !dbg !3951
  %153 = load i8*, i8** %16, align 8, !dbg !3952
  %154 = load i16, i16* %15, align 2, !dbg !3953
  %155 = zext i16 %154 to i32, !dbg !3953
  %156 = load i8, i8* %13, align 1, !dbg !3954
  %157 = zext i8 %156 to i32, !dbg !3954
  %158 = call i32 @bitmap_decompress(i8* %148, i32 %150, i32 %152, i8* %153, i32 %155, i32 %157), !dbg !3955
  %159 = icmp ne i32 %158, 0, !dbg !3955
  br i1 %159, label %162, label %160, !dbg !3956

; <label>:160:                                    ; preds = %147
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0)), !dbg !3957
  %161 = load i8*, i8** %17, align 8, !dbg !3959
  call void @xfree(i8* %161), !dbg !3960
  br label %242, !dbg !3961

; <label>:162:                                    ; preds = %147
  br label %204, !dbg !3962

; <label>:163:                                    ; preds = %110
  store i32 0, i32* %8, align 4, !dbg !3963
  br label %164, !dbg !3966

; <label>:164:                                    ; preds = %200, %163
  %165 = load i32, i32* %8, align 4, !dbg !3967
  %166 = load i8, i8* %12, align 1, !dbg !3970
  %167 = zext i8 %166 to i32, !dbg !3970
  %168 = icmp slt i32 %165, %167, !dbg !3971
  br i1 %168, label %169, label %203, !dbg !3972

; <label>:169:                                    ; preds = %164
  %170 = load i8, i8* %12, align 1, !dbg !3973
  %171 = zext i8 %170 to i32, !dbg !3973
  %172 = load i32, i32* %8, align 4, !dbg !3974
  %173 = sub nsw i32 %171, %172, !dbg !3975
  %174 = sub nsw i32 %173, 1, !dbg !3976
  %175 = load i8, i8* %11, align 1, !dbg !3977
  %176 = zext i8 %175 to i32, !dbg !3977
  %177 = load i8, i8* %13, align 1, !dbg !3978
  %178 = zext i8 %177 to i32, !dbg !3978
  %179 = mul nsw i32 %176, %178, !dbg !3979
  %180 = mul nsw i32 %174, %179, !dbg !3980
  %181 = sext i32 %180 to i64, !dbg !3981
  %182 = load i8*, i8** %17, align 8, !dbg !3981
  %183 = getelementptr inbounds i8, i8* %182, i64 %181, !dbg !3981
  %184 = load i32, i32* %8, align 4, !dbg !3982
  %185 = load i8, i8* %11, align 1, !dbg !3983
  %186 = zext i8 %185 to i32, !dbg !3983
  %187 = load i8, i8* %13, align 1, !dbg !3984
  %188 = zext i8 %187 to i32, !dbg !3984
  %189 = mul nsw i32 %186, %188, !dbg !3985
  %190 = mul nsw i32 %184, %189, !dbg !3986
  %191 = sext i32 %190 to i64, !dbg !3987
  %192 = load i8*, i8** %16, align 8, !dbg !3987
  %193 = getelementptr inbounds i8, i8* %192, i64 %191, !dbg !3987
  %194 = load i8, i8* %11, align 1, !dbg !3988
  %195 = zext i8 %194 to i32, !dbg !3988
  %196 = load i8, i8* %13, align 1, !dbg !3989
  %197 = zext i8 %196 to i32, !dbg !3989
  %198 = mul nsw i32 %195, %197, !dbg !3990
  %199 = sext i32 %198 to i64, !dbg !3988
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %193, i64 %199, i32 1, i1 false), !dbg !3991
  br label %200, !dbg !3991

; <label>:200:                                    ; preds = %169
  %201 = load i32, i32* %8, align 4, !dbg !3992
  %202 = add nsw i32 %201, 1, !dbg !3992
  store i32 %202, i32* %8, align 4, !dbg !3992
  br label %164, !dbg !3994, !llvm.loop !3995

; <label>:203:                                    ; preds = %164
  br label %204

; <label>:204:                                    ; preds = %203, %162
  %205 = load i8, i8* %11, align 1, !dbg !3997
  %206 = zext i8 %205 to i32, !dbg !3997
  %207 = load i8, i8* %12, align 1, !dbg !3998
  %208 = zext i8 %207 to i32, !dbg !3998
  %209 = load i8*, i8** %17, align 8, !dbg !3999
  %210 = call i8* @ui_create_bitmap(i32 %206, i32 %208, i8* %209), !dbg !4000
  store i8* %210, i8** %7, align 8, !dbg !4001
  %211 = load i8*, i8** %7, align 8, !dbg !4002
  %212 = icmp ne i8* %211, null, !dbg !4002
  br i1 %212, label %213, label %239, !dbg !4004

; <label>:213:                                    ; preds = %204
  %214 = load i8, i8* %9, align 1, !dbg !4005
  %215 = load i16, i16* %14, align 2, !dbg !4007
  %216 = load i8*, i8** %7, align 8, !dbg !4008
  call void @cache_put_bitmap(i8 zeroext %214, i16 zeroext %215, i8* %216), !dbg !4009
  %217 = load i16, i16* %5, align 2, !dbg !4010
  %218 = zext i16 %217 to i32, !dbg !4010
  %219 = and i32 %218, 256, !dbg !4012
  %220 = icmp ne i32 %219, 0, !dbg !4012
  br i1 %220, label %221, label %238, !dbg !4013

; <label>:221:                                    ; preds = %213
  %222 = load i8, i8* %9, align 1, !dbg !4014
  %223 = load i16, i16* %14, align 2, !dbg !4015
  %224 = load i8*, i8** %18, align 8, !dbg !4016
  %225 = load i8, i8* %11, align 1, !dbg !4017
  %226 = load i8, i8* %12, align 1, !dbg !4018
  %227 = load i8, i8* %11, align 1, !dbg !4019
  %228 = zext i8 %227 to i32, !dbg !4019
  %229 = load i8, i8* %12, align 1, !dbg !4020
  %230 = zext i8 %229 to i32, !dbg !4020
  %231 = mul nsw i32 %228, %230, !dbg !4021
  %232 = load i8, i8* %13, align 1, !dbg !4022
  %233 = zext i8 %232 to i32, !dbg !4022
  %234 = mul nsw i32 %231, %233, !dbg !4023
  %235 = trunc i32 %234 to i16, !dbg !4019
  %236 = load i8*, i8** %17, align 8, !dbg !4024
  %237 = call i32 @pstcache_save_bitmap(i8 zeroext %222, i16 zeroext %223, i8* %224, i8 zeroext %225, i8 zeroext %226, i16 zeroext %235, i8* %236), !dbg !4025
  br label %238, !dbg !4025

; <label>:238:                                    ; preds = %221, %213
  br label %240, !dbg !4026

; <label>:239:                                    ; preds = %204
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0)), !dbg !4027
  br label %240

; <label>:240:                                    ; preds = %239, %238
  %241 = load i8*, i8** %17, align 8, !dbg !4029
  call void @xfree(i8* %241), !dbg !4030
  br label %242, !dbg !4031

; <label>:242:                                    ; preds = %240, %160
  ret void, !dbg !4032
}

; Function Attrs: nounwind uwtable
define internal void @process_brushcache(%struct.stream*, i16 zeroext) #0 !dbg !4034 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct._BRUSHDATA, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !4035, metadata !315), !dbg !4036
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !4037, metadata !315), !dbg !4038
  %15 = load i16, i16* %4, align 2, !dbg !4039
  call void @llvm.dbg.declare(metadata %struct._BRUSHDATA* %5, metadata !4040, metadata !315), !dbg !4041
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4042, metadata !315), !dbg !4043
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4044, metadata !315), !dbg !4045
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4046, metadata !315), !dbg !4047
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4048, metadata !315), !dbg !4049
  call void @llvm.dbg.declare(metadata i8* %10, metadata !4050, metadata !315), !dbg !4051
  call void @llvm.dbg.declare(metadata i8* %11, metadata !4052, metadata !315), !dbg !4053
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4054, metadata !315), !dbg !4055
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4056, metadata !315), !dbg !4057
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4058, metadata !315), !dbg !4059
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4060
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !4061
  %18 = load i8*, i8** %17, align 8, !dbg !4062
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !4062
  store i8* %19, i8** %17, align 8, !dbg !4062
  %20 = load i8, i8* %18, align 1, !dbg !4063
  store i8 %20, i8* %6, align 1, !dbg !4064
  %21 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4065
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4066
  %23 = load i8*, i8** %22, align 8, !dbg !4067
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !4067
  store i8* %24, i8** %22, align 8, !dbg !4067
  %25 = load i8, i8* %23, align 1, !dbg !4068
  store i8 %25, i8* %7, align 1, !dbg !4069
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4070
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !4071
  %28 = load i8*, i8** %27, align 8, !dbg !4072
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !4072
  store i8* %29, i8** %27, align 8, !dbg !4072
  %30 = load i8, i8* %28, align 1, !dbg !4073
  store i8 %30, i8* %8, align 1, !dbg !4074
  %31 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4075
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4076
  %33 = load i8*, i8** %32, align 8, !dbg !4077
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4077
  store i8* %34, i8** %32, align 8, !dbg !4077
  %35 = load i8, i8* %33, align 1, !dbg !4078
  store i8 %35, i8* %9, align 1, !dbg !4079
  %36 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4080
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !4081
  %38 = load i8*, i8** %37, align 8, !dbg !4082
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !4082
  store i8* %39, i8** %37, align 8, !dbg !4082
  %40 = load i8, i8* %38, align 1, !dbg !4083
  store i8 %40, i8* %11, align 1, !dbg !4084
  %41 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4085
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !4086
  %43 = load i8*, i8** %42, align 8, !dbg !4087
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !4087
  store i8* %44, i8** %42, align 8, !dbg !4087
  %45 = load i8, i8* %43, align 1, !dbg !4088
  store i8 %45, i8* %10, align 1, !dbg !4089
  %46 = load i8, i8* %6, align 1, !dbg !4090
  %47 = zext i8 %46 to i32, !dbg !4090
  %48 = load i8, i8* %8, align 1, !dbg !4091
  %49 = zext i8 %48 to i32, !dbg !4091
  %50 = load i8, i8* %9, align 1, !dbg !4092
  %51 = zext i8 %50 to i32, !dbg !4092
  %52 = load i8, i8* %11, align 1, !dbg !4093
  %53 = zext i8 %52 to i32, !dbg !4093
  %54 = load i8, i8* %10, align 1, !dbg !4094
  %55 = zext i8 %54 to i32, !dbg !4094
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i32 %47, i32 %49, i32 %51, i32 %53, i32 %55), !dbg !4095
  %56 = load i8, i8* %8, align 1, !dbg !4096
  %57 = zext i8 %56 to i32, !dbg !4096
  %58 = icmp eq i32 %57, 8, !dbg !4098
  br i1 %58, label %59, label %171, !dbg !4099

; <label>:59:                                     ; preds = %2
  %60 = load i8, i8* %9, align 1, !dbg !4100
  %61 = zext i8 %60 to i32, !dbg !4100
  %62 = icmp eq i32 %61, 8, !dbg !4102
  br i1 %62, label %63, label %171, !dbg !4103

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* %7, align 1, !dbg !4104
  %65 = zext i8 %64 to i32, !dbg !4104
  %66 = icmp eq i32 %65, 1, !dbg !4107
  br i1 %66, label %67, label %101, !dbg !4108

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 0, !dbg !4109
  store i32 1, i32* %68, align 8, !dbg !4111
  %69 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 1, !dbg !4112
  store i32 8, i32* %69, align 4, !dbg !4113
  %70 = call i8* @xmalloc(i32 8), !dbg !4114
  %71 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 2, !dbg !4115
  store i8* %70, i8** %71, align 8, !dbg !4116
  %72 = load i8, i8* %10, align 1, !dbg !4117
  %73 = zext i8 %72 to i32, !dbg !4117
  %74 = icmp eq i32 %73, 8, !dbg !4119
  br i1 %74, label %75, label %94, !dbg !4120

; <label>:75:                                     ; preds = %67
  store i32 7, i32* %13, align 4, !dbg !4121
  br label %76, !dbg !4124

; <label>:76:                                     ; preds = %90, %75
  %77 = load i32, i32* %13, align 4, !dbg !4125
  %78 = icmp sge i32 %77, 0, !dbg !4128
  br i1 %78, label %79, label %93, !dbg !4129

; <label>:79:                                     ; preds = %76
  %80 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4130
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !4132
  %82 = load i8*, i8** %81, align 8, !dbg !4133
  %83 = getelementptr inbounds i8, i8* %82, i32 1, !dbg !4133
  store i8* %83, i8** %81, align 8, !dbg !4133
  %84 = load i8, i8* %82, align 1, !dbg !4134
  %85 = load i32, i32* %13, align 4, !dbg !4135
  %86 = sext i32 %85 to i64, !dbg !4136
  %87 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 2, !dbg !4137
  %88 = load i8*, i8** %87, align 8, !dbg !4137
  %89 = getelementptr inbounds i8, i8* %88, i64 %86, !dbg !4136
  store i8 %84, i8* %89, align 1, !dbg !4138
  br label %90, !dbg !4139

; <label>:90:                                     ; preds = %79
  %91 = load i32, i32* %13, align 4, !dbg !4140
  %92 = add nsw i32 %91, -1, !dbg !4140
  store i32 %92, i32* %13, align 4, !dbg !4140
  br label %76, !dbg !4142, !llvm.loop !4143

; <label>:93:                                     ; preds = %76
  br label %99, !dbg !4145

; <label>:94:                                     ; preds = %67
  %95 = load i8, i8* %7, align 1, !dbg !4146
  %96 = zext i8 %95 to i32, !dbg !4146
  %97 = load i8, i8* %10, align 1, !dbg !4148
  %98 = zext i8 %97 to i32, !dbg !4148
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i32 %96, i32 %98), !dbg !4149
  br label %99

; <label>:99:                                     ; preds = %94, %93
  %100 = load i8, i8* %6, align 1, !dbg !4150
  call void @cache_put_brush_data(i8 zeroext 1, i8 zeroext %100, %struct._BRUSHDATA* %5), !dbg !4151
  br label %170, !dbg !4152

; <label>:101:                                    ; preds = %63
  %102 = load i8, i8* %7, align 1, !dbg !4153
  %103 = zext i8 %102 to i32, !dbg !4153
  %104 = icmp sge i32 %103, 3, !dbg !4155
  br i1 %104, label %105, label %164, !dbg !4156

; <label>:105:                                    ; preds = %101
  %106 = load i8, i8* %7, align 1, !dbg !4157
  %107 = zext i8 %106 to i32, !dbg !4157
  %108 = icmp sle i32 %107, 6, !dbg !4159
  br i1 %108, label %109, label %164, !dbg !4160

; <label>:109:                                    ; preds = %105
  %110 = load i8, i8* %7, align 1, !dbg !4161
  %111 = zext i8 %110 to i32, !dbg !4161
  %112 = sub nsw i32 %111, 2, !dbg !4163
  store i32 %112, i32* %14, align 4, !dbg !4164
  %113 = load i8, i8* %7, align 1, !dbg !4165
  %114 = zext i8 %113 to i32, !dbg !4165
  %115 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 0, !dbg !4166
  store i32 %114, i32* %115, align 8, !dbg !4167
  %116 = load i32, i32* %14, align 4, !dbg !4168
  %117 = mul nsw i32 64, %116, !dbg !4169
  %118 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 1, !dbg !4170
  store i32 %117, i32* %118, align 4, !dbg !4171
  %119 = load i32, i32* %14, align 4, !dbg !4172
  %120 = mul nsw i32 64, %119, !dbg !4173
  %121 = call i8* @xmalloc(i32 %120), !dbg !4174
  %122 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 2, !dbg !4175
  store i8* %121, i8** %122, align 8, !dbg !4176
  %123 = load i8, i8* %10, align 1, !dbg !4177
  %124 = zext i8 %123 to i32, !dbg !4177
  %125 = load i32, i32* %14, align 4, !dbg !4179
  %126 = mul nsw i32 4, %125, !dbg !4180
  %127 = add nsw i32 16, %126, !dbg !4181
  %128 = icmp eq i32 %124, %127, !dbg !4182
  br i1 %128, label %129, label %145, !dbg !4183

; <label>:129:                                    ; preds = %109
  %130 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4184
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !4187
  %132 = load i8*, i8** %131, align 8, !dbg !4187
  store i8* %132, i8** %12, align 8, !dbg !4188
  %133 = load i32, i32* %14, align 4, !dbg !4189
  %134 = mul nsw i32 4, %133, !dbg !4190
  %135 = add nsw i32 16, %134, !dbg !4191
  %136 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4192
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 0, !dbg !4193
  %138 = load i8*, i8** %137, align 8, !dbg !4194
  %139 = sext i32 %135 to i64, !dbg !4194
  %140 = getelementptr inbounds i8, i8* %138, i64 %139, !dbg !4194
  store i8* %140, i8** %137, align 8, !dbg !4194
  %141 = load i8*, i8** %12, align 8, !dbg !4195
  %142 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 2, !dbg !4196
  %143 = load i8*, i8** %142, align 8, !dbg !4196
  %144 = load i32, i32* %14, align 4, !dbg !4197
  call void @process_compressed_8x8_brush_data(i8* %141, i8* %143, i32 %144), !dbg !4198
  br label %161, !dbg !4199

; <label>:145:                                    ; preds = %109
  %146 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %5, i32 0, i32 2, !dbg !4200
  %147 = load i8*, i8** %146, align 8, !dbg !4200
  %148 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4203
  %149 = getelementptr inbounds %struct.stream, %struct.stream* %148, i32 0, i32 0, !dbg !4204
  %150 = load i8*, i8** %149, align 8, !dbg !4204
  %151 = load i32, i32* %14, align 4, !dbg !4205
  %152 = mul nsw i32 64, %151, !dbg !4206
  %153 = sext i32 %152 to i64, !dbg !4207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %150, i64 %153, i32 1, i1 false), !dbg !4208
  %154 = load i32, i32* %14, align 4, !dbg !4209
  %155 = mul nsw i32 64, %154, !dbg !4210
  %156 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4211
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !4212
  %158 = load i8*, i8** %157, align 8, !dbg !4213
  %159 = sext i32 %155 to i64, !dbg !4213
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !4213
  store i8* %160, i8** %157, align 8, !dbg !4213
  br label %161

; <label>:161:                                    ; preds = %145, %129
  %162 = load i8, i8* %7, align 1, !dbg !4214
  %163 = load i8, i8* %6, align 1, !dbg !4215
  call void @cache_put_brush_data(i8 zeroext %162, i8 zeroext %163, %struct._BRUSHDATA* %5), !dbg !4216
  br label %169, !dbg !4217

; <label>:164:                                    ; preds = %105, %101
  %165 = load i8, i8* %7, align 1, !dbg !4218
  %166 = zext i8 %165 to i32, !dbg !4218
  %167 = load i8, i8* %10, align 1, !dbg !4220
  %168 = zext i8 %167 to i32, !dbg !4220
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i32 %166, i32 %168), !dbg !4221
  br label %169

; <label>:169:                                    ; preds = %164, %161
  br label %170

; <label>:170:                                    ; preds = %169, %99
  br label %176, !dbg !4222

; <label>:171:                                    ; preds = %59, %2
  %172 = load i8, i8* %8, align 1, !dbg !4223
  %173 = zext i8 %172 to i32, !dbg !4223
  %174 = load i8, i8* %9, align 1, !dbg !4225
  %175 = zext i8 %174 to i32, !dbg !4225
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0), i32 %173, i32 %175), !dbg !4226
  br label %176

; <label>:176:                                    ; preds = %171, %170
  ret void, !dbg !4227
}

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @ui_create_bitmap(i32, i32, i8*) #2

declare void @xfree(i8*) #2

declare void @cache_put_bitmap(i8 zeroext, i16 zeroext, i8*) #2

declare i8* @ui_create_colourmap(%struct._COLOURMAP*) #2

declare void @ui_set_colourmap(i8*) #2

declare i32 @bitmap_decompress(i8*, i32, i32, i8*, i32, i32) #2

declare i8* @ui_create_glyph(i32, i32, i8*) #2

declare void @cache_put_font(i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*) #2

declare i32 @pstcache_save_bitmap(i8 zeroext, i16 zeroext, i8*, i8 zeroext, i8 zeroext, i16 zeroext, i8*) #2

declare void @cache_put_brush_data(i8 zeroext, i8 zeroext, %struct._BRUSHDATA*) #2

; Function Attrs: nounwind uwtable
define internal void @process_compressed_8x8_brush_data(i8*, i8*, i32) #0 !dbg !4228 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4231, metadata !315), !dbg !4232
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4233, metadata !315), !dbg !4234
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4235, metadata !315), !dbg !4236
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4237, metadata !315), !dbg !4238
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4239, metadata !315), !dbg !4240
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4241, metadata !315), !dbg !4242
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4243, metadata !315), !dbg !4244
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4245, metadata !315), !dbg !4246
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4247, metadata !315), !dbg !4248
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4249, metadata !315), !dbg !4250
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4251, metadata !315), !dbg !4252
  store i32 0, i32* %10, align 4, !dbg !4253
  %15 = load i8*, i8** %4, align 8, !dbg !4254
  %16 = getelementptr inbounds i8, i8* %15, i64 16, !dbg !4255
  store i8* %16, i8** %14, align 8, !dbg !4256
  store i32 7, i32* %8, align 4, !dbg !4257
  br label %17, !dbg !4259

; <label>:17:                                     ; preds = %78, %3
  %18 = load i32, i32* %8, align 4, !dbg !4260
  %19 = icmp sge i32 %18, 0, !dbg !4263
  br i1 %19, label %20, label %81, !dbg !4264

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %7, align 4, !dbg !4265
  store i32 0, i32* %12, align 4, !dbg !4267
  br label %21, !dbg !4269

; <label>:21:                                     ; preds = %74, %20
  %22 = load i32, i32* %12, align 4, !dbg !4270
  %23 = icmp slt i32 %22, 2, !dbg !4273
  br i1 %23, label %24, label %77, !dbg !4274

; <label>:24:                                     ; preds = %21
  store i32 6, i32* %11, align 4, !dbg !4275
  br label %25, !dbg !4277

; <label>:25:                                     ; preds = %66, %24
  %26 = load i32, i32* %11, align 4, !dbg !4278
  %27 = icmp sge i32 %26, 0, !dbg !4280
  br i1 %27, label %28, label %71, !dbg !4281

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %10, align 4, !dbg !4282
  %30 = sext i32 %29 to i64, !dbg !4284
  %31 = load i8*, i8** %4, align 8, !dbg !4284
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !4284
  %33 = load i8, i8* %32, align 1, !dbg !4284
  %34 = zext i8 %33 to i32, !dbg !4284
  %35 = load i32, i32* %11, align 4, !dbg !4285
  %36 = ashr i32 %34, %35, !dbg !4286
  %37 = and i32 %36, 3, !dbg !4287
  store i32 %37, i32* %9, align 4, !dbg !4288
  store i32 0, i32* %13, align 4, !dbg !4289
  br label %38, !dbg !4291

; <label>:38:                                     ; preds = %63, %28
  %39 = load i32, i32* %13, align 4, !dbg !4292
  %40 = load i32, i32* %6, align 4, !dbg !4295
  %41 = icmp slt i32 %39, %40, !dbg !4296
  br i1 %41, label %42, label %66, !dbg !4297

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %9, align 4, !dbg !4298
  %44 = load i32, i32* %6, align 4, !dbg !4300
  %45 = mul nsw i32 %43, %44, !dbg !4301
  %46 = load i32, i32* %13, align 4, !dbg !4302
  %47 = add nsw i32 %45, %46, !dbg !4303
  %48 = sext i32 %47 to i64, !dbg !4304
  %49 = load i8*, i8** %14, align 8, !dbg !4304
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !4304
  %51 = load i8, i8* %50, align 1, !dbg !4304
  %52 = load i32, i32* %8, align 4, !dbg !4305
  %53 = mul nsw i32 %52, 8, !dbg !4306
  %54 = load i32, i32* %7, align 4, !dbg !4307
  %55 = add nsw i32 %53, %54, !dbg !4308
  %56 = load i32, i32* %6, align 4, !dbg !4309
  %57 = mul nsw i32 %55, %56, !dbg !4310
  %58 = load i32, i32* %13, align 4, !dbg !4311
  %59 = add nsw i32 %57, %58, !dbg !4312
  %60 = sext i32 %59 to i64, !dbg !4313
  %61 = load i8*, i8** %5, align 8, !dbg !4313
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !4313
  store i8 %51, i8* %62, align 1, !dbg !4314
  br label %63, !dbg !4315

; <label>:63:                                     ; preds = %42
  %64 = load i32, i32* %13, align 4, !dbg !4316
  %65 = add nsw i32 %64, 1, !dbg !4316
  store i32 %65, i32* %13, align 4, !dbg !4316
  br label %38, !dbg !4318, !llvm.loop !4319

; <label>:66:                                     ; preds = %38
  %67 = load i32, i32* %7, align 4, !dbg !4321
  %68 = add nsw i32 %67, 1, !dbg !4321
  store i32 %68, i32* %7, align 4, !dbg !4321
  %69 = load i32, i32* %11, align 4, !dbg !4322
  %70 = sub nsw i32 %69, 2, !dbg !4322
  store i32 %70, i32* %11, align 4, !dbg !4322
  br label %25, !dbg !4323, !llvm.loop !4325

; <label>:71:                                     ; preds = %25
  %72 = load i32, i32* %10, align 4, !dbg !4326
  %73 = add nsw i32 %72, 1, !dbg !4326
  store i32 %73, i32* %10, align 4, !dbg !4326
  br label %74, !dbg !4327

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %12, align 4, !dbg !4328
  %76 = add nsw i32 %75, 1, !dbg !4328
  store i32 %76, i32* %12, align 4, !dbg !4328
  br label %21, !dbg !4330, !llvm.loop !4331

; <label>:77:                                     ; preds = %21
  br label %78, !dbg !4333

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %8, align 4, !dbg !4334
  %80 = add nsw i32 %79, -1, !dbg !4334
  store i32 %80, i32* %8, align 4, !dbg !4334
  br label %17, !dbg !4336, !llvm.loop !4337

; <label>:81:                                     ; preds = %17
  ret void, !dbg !4339
}

; Function Attrs: nounwind uwtable
define internal void @rdp_in_coord(%struct.stream*, i16*, i32) #0 !dbg !4340 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4344, metadata !315), !dbg !4345
  store i16* %1, i16** %5, align 8
  call void @llvm.dbg.declare(metadata i16** %5, metadata !4346, metadata !315), !dbg !4347
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4348, metadata !315), !dbg !4349
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4350, metadata !315), !dbg !4353
  %8 = load i32, i32* %6, align 4, !dbg !4354
  %9 = icmp ne i32 %8, 0, !dbg !4354
  br i1 %9, label %10, label %23, !dbg !4356

; <label>:10:                                     ; preds = %3
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4357
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4359
  %13 = load i8*, i8** %12, align 8, !dbg !4360
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !4360
  store i8* %14, i8** %12, align 8, !dbg !4360
  %15 = load i8, i8* %13, align 1, !dbg !4361
  store i8 %15, i8* %7, align 1, !dbg !4362
  %16 = load i8, i8* %7, align 1, !dbg !4363
  %17 = sext i8 %16 to i32, !dbg !4363
  %18 = load i16*, i16** %5, align 8, !dbg !4364
  %19 = load i16, i16* %18, align 2, !dbg !4365
  %20 = sext i16 %19 to i32, !dbg !4365
  %21 = add nsw i32 %20, %17, !dbg !4365
  %22 = trunc i32 %21 to i16, !dbg !4365
  store i16 %22, i16* %18, align 2, !dbg !4365
  br label %34, !dbg !4366

; <label>:23:                                     ; preds = %3
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4367
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !4370
  %26 = load i8*, i8** %25, align 8, !dbg !4370
  %27 = bitcast i8* %26 to i16*, !dbg !4371
  %28 = load i16, i16* %27, align 2, !dbg !4371
  %29 = load i16*, i16** %5, align 8, !dbg !4372
  store i16 %28, i16* %29, align 2, !dbg !4373
  %30 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4374
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !4375
  %32 = load i8*, i8** %31, align 8, !dbg !4376
  %33 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !4376
  store i8* %33, i8** %31, align 8, !dbg !4376
  br label %34

; <label>:34:                                     ; preds = %23, %10
  ret void, !dbg !4377
}

declare void @ui_destblt(i8 zeroext, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @rdp_in_colour(%struct.stream*, i32*) #0 !dbg !4378 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !4381, metadata !315), !dbg !4382
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4383, metadata !315), !dbg !4384
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4385, metadata !315), !dbg !4386
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4387
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !4388
  %8 = load i8*, i8** %7, align 8, !dbg !4389
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !4389
  store i8* %9, i8** %7, align 8, !dbg !4389
  %10 = load i8, i8* %8, align 1, !dbg !4390
  %11 = zext i8 %10 to i32, !dbg !4390
  store i32 %11, i32* %5, align 4, !dbg !4391
  %12 = load i32, i32* %5, align 4, !dbg !4392
  %13 = load i32*, i32** %4, align 8, !dbg !4393
  store i32 %12, i32* %13, align 4, !dbg !4394
  %14 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4395
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !4396
  %16 = load i8*, i8** %15, align 8, !dbg !4397
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !4397
  store i8* %17, i8** %15, align 8, !dbg !4397
  %18 = load i8, i8* %16, align 1, !dbg !4398
  %19 = zext i8 %18 to i32, !dbg !4398
  store i32 %19, i32* %5, align 4, !dbg !4399
  %20 = load i32, i32* %5, align 4, !dbg !4400
  %21 = shl i32 %20, 8, !dbg !4401
  %22 = load i32*, i32** %4, align 8, !dbg !4402
  %23 = load i32, i32* %22, align 4, !dbg !4403
  %24 = or i32 %23, %21, !dbg !4403
  store i32 %24, i32* %22, align 4, !dbg !4403
  %25 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4404
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !4405
  %27 = load i8*, i8** %26, align 8, !dbg !4406
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !4406
  store i8* %28, i8** %26, align 8, !dbg !4406
  %29 = load i8, i8* %27, align 1, !dbg !4407
  %30 = zext i8 %29 to i32, !dbg !4407
  store i32 %30, i32* %5, align 4, !dbg !4408
  %31 = load i32, i32* %5, align 4, !dbg !4409
  %32 = shl i32 %31, 16, !dbg !4410
  %33 = load i32*, i32** %4, align 8, !dbg !4411
  %34 = load i32, i32* %33, align 4, !dbg !4412
  %35 = or i32 %34, %32, !dbg !4412
  store i32 %35, i32* %33, align 4, !dbg !4412
  ret void, !dbg !4413
}

; Function Attrs: nounwind uwtable
define internal i32 @rdp_parse_brush(%struct.stream*, %struct._BRUSH*, i32) #0 !dbg !4414 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct._BRUSH*, align 8
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4418, metadata !315), !dbg !4419
  store %struct._BRUSH* %1, %struct._BRUSH** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._BRUSH** %5, metadata !4420, metadata !315), !dbg !4421
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4422, metadata !315), !dbg !4423
  %7 = load i32, i32* %6, align 4, !dbg !4424
  %8 = and i32 %7, 1, !dbg !4426
  %9 = icmp ne i32 %8, 0, !dbg !4426
  br i1 %9, label %10, label %18, !dbg !4427

; <label>:10:                                     ; preds = %3
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4428
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4429
  %13 = load i8*, i8** %12, align 8, !dbg !4430
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !4430
  store i8* %14, i8** %12, align 8, !dbg !4430
  %15 = load i8, i8* %13, align 1, !dbg !4431
  %16 = load %struct._BRUSH*, %struct._BRUSH** %5, align 8, !dbg !4432
  %17 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %16, i32 0, i32 0, !dbg !4433
  store i8 %15, i8* %17, align 8, !dbg !4434
  br label %18, !dbg !4432

; <label>:18:                                     ; preds = %10, %3
  %19 = load i32, i32* %6, align 4, !dbg !4435
  %20 = and i32 %19, 2, !dbg !4437
  %21 = icmp ne i32 %20, 0, !dbg !4437
  br i1 %21, label %22, label %30, !dbg !4438

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4439
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4440
  %25 = load i8*, i8** %24, align 8, !dbg !4441
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !4441
  store i8* %26, i8** %24, align 8, !dbg !4441
  %27 = load i8, i8* %25, align 1, !dbg !4442
  %28 = load %struct._BRUSH*, %struct._BRUSH** %5, align 8, !dbg !4443
  %29 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %28, i32 0, i32 1, !dbg !4444
  store i8 %27, i8* %29, align 1, !dbg !4445
  br label %30, !dbg !4443

; <label>:30:                                     ; preds = %22, %18
  %31 = load i32, i32* %6, align 4, !dbg !4446
  %32 = and i32 %31, 4, !dbg !4448
  %33 = icmp ne i32 %32, 0, !dbg !4448
  br i1 %33, label %34, label %42, !dbg !4449

; <label>:34:                                     ; preds = %30
  %35 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4450
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !4451
  %37 = load i8*, i8** %36, align 8, !dbg !4452
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !4452
  store i8* %38, i8** %36, align 8, !dbg !4452
  %39 = load i8, i8* %37, align 1, !dbg !4453
  %40 = load %struct._BRUSH*, %struct._BRUSH** %5, align 8, !dbg !4454
  %41 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %40, i32 0, i32 2, !dbg !4455
  store i8 %39, i8* %41, align 2, !dbg !4456
  br label %42, !dbg !4454

; <label>:42:                                     ; preds = %34, %30
  %43 = load i32, i32* %6, align 4, !dbg !4457
  %44 = and i32 %43, 8, !dbg !4459
  %45 = icmp ne i32 %44, 0, !dbg !4459
  br i1 %45, label %46, label %55, !dbg !4460

; <label>:46:                                     ; preds = %42
  %47 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4461
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !4462
  %49 = load i8*, i8** %48, align 8, !dbg !4463
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !4463
  store i8* %50, i8** %48, align 8, !dbg !4463
  %51 = load i8, i8* %49, align 1, !dbg !4464
  %52 = load %struct._BRUSH*, %struct._BRUSH** %5, align 8, !dbg !4465
  %53 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %52, i32 0, i32 3, !dbg !4466
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i64 0, i64 0, !dbg !4465
  store i8 %51, i8* %54, align 1, !dbg !4467
  br label %55, !dbg !4465

; <label>:55:                                     ; preds = %46, %42
  %56 = load i32, i32* %6, align 4, !dbg !4468
  %57 = and i32 %56, 16, !dbg !4470
  %58 = icmp ne i32 %57, 0, !dbg !4470
  br i1 %58, label %59, label %70, !dbg !4471

; <label>:59:                                     ; preds = %55
  %60 = load %struct._BRUSH*, %struct._BRUSH** %5, align 8, !dbg !4472
  %61 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %60, i32 0, i32 3, !dbg !4474
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 1, !dbg !4472
  %63 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4475
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !4476
  %65 = load i8*, i8** %64, align 8, !dbg !4476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %65, i64 7, i32 1, i1 false), !dbg !4477
  %66 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4478
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !4479
  %68 = load i8*, i8** %67, align 8, !dbg !4480
  %69 = getelementptr inbounds i8, i8* %68, i64 7, !dbg !4480
  store i8* %69, i8** %67, align 8, !dbg !4480
  br label %70, !dbg !4481

; <label>:70:                                     ; preds = %59, %55
  %71 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4482
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !4483
  %73 = load i8*, i8** %72, align 8, !dbg !4483
  %74 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4484
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 1, !dbg !4485
  %76 = load i8*, i8** %75, align 8, !dbg !4485
  %77 = icmp ule i8* %73, %76, !dbg !4486
  %78 = zext i1 %77 to i32, !dbg !4486
  ret i32 %78, !dbg !4487
}

; Function Attrs: nounwind uwtable
define internal void @setup_brush(%struct._BRUSH*, %struct._BRUSH*) #0 !dbg !4488 {
  %3 = alloca %struct._BRUSH*, align 8
  %4 = alloca %struct._BRUSH*, align 8
  %5 = alloca %struct._BRUSHDATA*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct._BRUSH* %0, %struct._BRUSH** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._BRUSH** %3, metadata !4491, metadata !315), !dbg !4492
  store %struct._BRUSH* %1, %struct._BRUSH** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._BRUSH** %4, metadata !4493, metadata !315), !dbg !4494
  call void @llvm.dbg.declare(metadata %struct._BRUSHDATA** %5, metadata !4495, metadata !315), !dbg !4496
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4497, metadata !315), !dbg !4498
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4499, metadata !315), !dbg !4500
  %8 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4501
  %9 = bitcast %struct._BRUSH* %8 to i8*, !dbg !4502
  %10 = load %struct._BRUSH*, %struct._BRUSH** %4, align 8, !dbg !4503
  %11 = bitcast %struct._BRUSH* %10 to i8*, !dbg !4502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 24, i32 8, i1 false), !dbg !4502
  %12 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4504
  %13 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %12, i32 0, i32 2, !dbg !4506
  %14 = load i8, i8* %13, align 2, !dbg !4506
  %15 = zext i8 %14 to i32, !dbg !4504
  %16 = and i32 %15, 128, !dbg !4507
  %17 = icmp ne i32 %16, 0, !dbg !4507
  br i1 %17, label %18, label %56, !dbg !4508

; <label>:18:                                     ; preds = %2
  %19 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4509
  %20 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %19, i32 0, i32 2, !dbg !4511
  %21 = load i8, i8* %20, align 2, !dbg !4511
  %22 = zext i8 %21 to i32, !dbg !4509
  %23 = and i32 %22, 15, !dbg !4512
  %24 = trunc i32 %23 to i8, !dbg !4509
  store i8 %24, i8* %7, align 1, !dbg !4513
  %25 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4514
  %26 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %25, i32 0, i32 3, !dbg !4515
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0, !dbg !4514
  %28 = load i8, i8* %27, align 1, !dbg !4514
  store i8 %28, i8* %6, align 1, !dbg !4516
  %29 = load i8, i8* %7, align 1, !dbg !4517
  %30 = load i8, i8* %6, align 1, !dbg !4518
  %31 = call %struct._BRUSHDATA* @cache_get_brush_data(i8 zeroext %29, i8 zeroext %30), !dbg !4519
  store %struct._BRUSHDATA* %31, %struct._BRUSHDATA** %5, align 8, !dbg !4520
  %32 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %5, align 8, !dbg !4521
  %33 = icmp eq %struct._BRUSHDATA* %32, null, !dbg !4523
  br i1 %33, label %39, label %34, !dbg !4524

; <label>:34:                                     ; preds = %18
  %35 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %5, align 8, !dbg !4525
  %36 = getelementptr inbounds %struct._BRUSHDATA, %struct._BRUSHDATA* %35, i32 0, i32 2, !dbg !4527
  %37 = load i8*, i8** %36, align 8, !dbg !4527
  %38 = icmp eq i8* %37, null, !dbg !4528
  br i1 %38, label %39, label %49, !dbg !4529

; <label>:39:                                     ; preds = %34, %18
  %40 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4530
  %41 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %40, i32 0, i32 2, !dbg !4532
  %42 = load i8, i8* %41, align 2, !dbg !4532
  %43 = zext i8 %42 to i32, !dbg !4530
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i32 %43), !dbg !4533
  %44 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4534
  %45 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %44, i32 0, i32 4, !dbg !4535
  store %struct._BRUSHDATA* null, %struct._BRUSHDATA** %45, align 8, !dbg !4536
  %46 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4537
  %47 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %46, i32 0, i32 3, !dbg !4538
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i32 0, i32 0, !dbg !4539
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 8, i32 1, i1 false), !dbg !4539
  br label %53, !dbg !4540

; <label>:49:                                     ; preds = %34
  %50 = load %struct._BRUSHDATA*, %struct._BRUSHDATA** %5, align 8, !dbg !4541
  %51 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4543
  %52 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %51, i32 0, i32 4, !dbg !4544
  store %struct._BRUSHDATA* %50, %struct._BRUSHDATA** %52, align 8, !dbg !4545
  br label %53

; <label>:53:                                     ; preds = %49, %39
  %54 = load %struct._BRUSH*, %struct._BRUSH** %3, align 8, !dbg !4546
  %55 = getelementptr inbounds %struct._BRUSH, %struct._BRUSH* %54, i32 0, i32 2, !dbg !4547
  store i8 3, i8* %55, align 2, !dbg !4548
  br label %56, !dbg !4549

; <label>:56:                                     ; preds = %53, %2
  ret void, !dbg !4550
}

declare void @ui_patblt(i8 zeroext, i32, i32, i32, i32, %struct._BRUSH*, i32, i32) #2

declare %struct._BRUSHDATA* @cache_get_brush_data(i8 zeroext, i8 zeroext) #2

declare void @ui_screenblt(i8 zeroext, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @rdp_parse_pen(%struct.stream*, %struct._PEN*, i32) #0 !dbg !4551 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct._PEN*, align 8
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4555, metadata !315), !dbg !4556
  store %struct._PEN* %1, %struct._PEN** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._PEN** %5, metadata !4557, metadata !315), !dbg !4558
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4559, metadata !315), !dbg !4560
  %7 = load i32, i32* %6, align 4, !dbg !4561
  %8 = and i32 %7, 1, !dbg !4563
  %9 = icmp ne i32 %8, 0, !dbg !4563
  br i1 %9, label %10, label %18, !dbg !4564

; <label>:10:                                     ; preds = %3
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4565
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4566
  %13 = load i8*, i8** %12, align 8, !dbg !4567
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !4567
  store i8* %14, i8** %12, align 8, !dbg !4567
  %15 = load i8, i8* %13, align 1, !dbg !4568
  %16 = load %struct._PEN*, %struct._PEN** %5, align 8, !dbg !4569
  %17 = getelementptr inbounds %struct._PEN, %struct._PEN* %16, i32 0, i32 0, !dbg !4570
  store i8 %15, i8* %17, align 4, !dbg !4571
  br label %18, !dbg !4569

; <label>:18:                                     ; preds = %10, %3
  %19 = load i32, i32* %6, align 4, !dbg !4572
  %20 = and i32 %19, 2, !dbg !4574
  %21 = icmp ne i32 %20, 0, !dbg !4574
  br i1 %21, label %22, label %30, !dbg !4575

; <label>:22:                                     ; preds = %18
  %23 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4576
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4577
  %25 = load i8*, i8** %24, align 8, !dbg !4578
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !4578
  store i8* %26, i8** %24, align 8, !dbg !4578
  %27 = load i8, i8* %25, align 1, !dbg !4579
  %28 = load %struct._PEN*, %struct._PEN** %5, align 8, !dbg !4580
  %29 = getelementptr inbounds %struct._PEN, %struct._PEN* %28, i32 0, i32 1, !dbg !4581
  store i8 %27, i8* %29, align 1, !dbg !4582
  br label %30, !dbg !4580

; <label>:30:                                     ; preds = %22, %18
  %31 = load i32, i32* %6, align 4, !dbg !4583
  %32 = and i32 %31, 4, !dbg !4585
  %33 = icmp ne i32 %32, 0, !dbg !4585
  br i1 %33, label %34, label %38, !dbg !4586

; <label>:34:                                     ; preds = %30
  %35 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4587
  %36 = load %struct._PEN*, %struct._PEN** %5, align 8, !dbg !4588
  %37 = getelementptr inbounds %struct._PEN, %struct._PEN* %36, i32 0, i32 2, !dbg !4589
  call void @rdp_in_colour(%struct.stream* %35, i32* %37), !dbg !4590
  br label %38, !dbg !4590

; <label>:38:                                     ; preds = %34, %30
  %39 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4591
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !4592
  %41 = load i8*, i8** %40, align 8, !dbg !4592
  %42 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4593
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 1, !dbg !4594
  %44 = load i8*, i8** %43, align 8, !dbg !4594
  %45 = icmp ule i8* %41, %44, !dbg !4595
  %46 = zext i1 %45 to i32, !dbg !4595
  ret i32 %46, !dbg !4596
}

declare void @ui_line(i8 zeroext, i32, i32, i32, i32, %struct._PEN*) #2

declare void @ui_rect(i32, i32, i32, i32, i32) #2

declare void @ui_desktop_save(i32, i32, i32, i32, i32) #2

declare void @ui_desktop_restore(i32, i32, i32, i32, i32) #2

declare i8* @cache_get_bitmap(i8 zeroext, i16 zeroext) #2

declare void @ui_memblt(i8 zeroext, i32, i32, i32, i32, i8*, i32, i32) #2

declare void @ui_triblt(i8 zeroext, i32, i32, i32, i32, i8*, i32, i32, %struct._BRUSH*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_delta(i8*, i32*) #0 !dbg !4597 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4601, metadata !315), !dbg !4602
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4603, metadata !315), !dbg !4604
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4605, metadata !315), !dbg !4606
  %7 = load i32*, i32** %4, align 8, !dbg !4607
  %8 = load i32, i32* %7, align 4, !dbg !4608
  %9 = add nsw i32 %8, 1, !dbg !4608
  store i32 %9, i32* %7, align 4, !dbg !4608
  %10 = sext i32 %8 to i64, !dbg !4609
  %11 = load i8*, i8** %3, align 8, !dbg !4609
  %12 = getelementptr inbounds i8, i8* %11, i64 %10, !dbg !4609
  %13 = load i8, i8* %12, align 1, !dbg !4609
  %14 = zext i8 %13 to i32, !dbg !4609
  store i32 %14, i32* %5, align 4, !dbg !4606
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4610, metadata !315), !dbg !4611
  %15 = load i32, i32* %5, align 4, !dbg !4612
  %16 = and i32 %15, 128, !dbg !4613
  store i32 %16, i32* %6, align 4, !dbg !4611
  %17 = load i32, i32* %5, align 4, !dbg !4614
  %18 = and i32 %17, 64, !dbg !4616
  %19 = icmp ne i32 %18, 0, !dbg !4616
  br i1 %19, label %20, label %23, !dbg !4617

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %5, align 4, !dbg !4618
  %22 = or i32 %21, -64, !dbg !4618
  store i32 %22, i32* %5, align 4, !dbg !4618
  br label %26, !dbg !4619

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* %5, align 4, !dbg !4620
  %25 = and i32 %24, 63, !dbg !4620
  store i32 %25, i32* %5, align 4, !dbg !4620
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = load i32, i32* %6, align 4, !dbg !4621
  %28 = icmp ne i32 %27, 0, !dbg !4621
  br i1 %28, label %29, label %41, !dbg !4623

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %5, align 4, !dbg !4624
  %31 = shl i32 %30, 8, !dbg !4625
  %32 = load i32*, i32** %4, align 8, !dbg !4626
  %33 = load i32, i32* %32, align 4, !dbg !4627
  %34 = add nsw i32 %33, 1, !dbg !4627
  store i32 %34, i32* %32, align 4, !dbg !4627
  %35 = sext i32 %33 to i64, !dbg !4628
  %36 = load i8*, i8** %3, align 8, !dbg !4628
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !4628
  %38 = load i8, i8* %37, align 1, !dbg !4628
  %39 = zext i8 %38 to i32, !dbg !4628
  %40 = or i32 %31, %39, !dbg !4629
  store i32 %40, i32* %5, align 4, !dbg !4630
  br label %41, !dbg !4631

; <label>:41:                                     ; preds = %29, %26
  %42 = load i32, i32* %5, align 4, !dbg !4632
  ret i32 %42, !dbg !4633
}

declare void @ui_polygon(i8 zeroext, i8 zeroext, %struct._RD_POINT*, i32, %struct._BRUSH*, i32, i32) #2

declare void @ui_polyline(i8 zeroext, %struct._RD_POINT*, i32, %struct._PEN*) #2

declare void @ui_ellipse(i8 zeroext, i8 zeroext, i32, i32, i32, i32, %struct._BRUSH*, i32, i32) #2

declare void @ui_draw_text(i8 zeroext, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._BRUSH*, i32, i32, i8*, i8 zeroext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!292, !293}
!llvm.ident = !{!294}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, globals: !71)
!1 = !DIFile(filename: "[inter]orders.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22, !39}
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_ORDER_TYPE", file: !23, line: 29, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "orders.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!25 = !DIEnumerator(name: "RDP_ORDER_DESTBLT", value: 0)
!26 = !DIEnumerator(name: "RDP_ORDER_PATBLT", value: 1)
!27 = !DIEnumerator(name: "RDP_ORDER_SCREENBLT", value: 2)
!28 = !DIEnumerator(name: "RDP_ORDER_LINE", value: 9)
!29 = !DIEnumerator(name: "RDP_ORDER_RECT", value: 10)
!30 = !DIEnumerator(name: "RDP_ORDER_DESKSAVE", value: 11)
!31 = !DIEnumerator(name: "RDP_ORDER_MEMBLT", value: 13)
!32 = !DIEnumerator(name: "RDP_ORDER_TRIBLT", value: 14)
!33 = !DIEnumerator(name: "RDP_ORDER_POLYGON", value: 20)
!34 = !DIEnumerator(name: "RDP_ORDER_POLYGON2", value: 21)
!35 = !DIEnumerator(name: "RDP_ORDER_POLYLINE", value: 22)
!36 = !DIEnumerator(name: "RDP_ORDER_ELLIPSE", value: 25)
!37 = !DIEnumerator(name: "RDP_ORDER_ELLIPSE2", value: 26)
!38 = !DIEnumerator(name: "RDP_ORDER_TEXT2", value: 27)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !40, line: 52, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "RDP_V4", value: 4)
!43 = !DIEnumerator(name: "RDP_V5", value: 5)
!44 = !DIEnumerator(name: "RDP_V6", value: 6)
!45 = !{!46, !49, !51, !54, !61, !62, !65}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !40, line: 41, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint16", file: !40, line: 42, baseType: !50)
!50 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !40, line: 39, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOURENTRY", file: !40, line: 73, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_COLOURENTRY", file: !40, line: 66, size: 24, align: 8, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !56, file: !40, line: 68, baseType: !52, size: 8, align: 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !56, file: !40, line: 69, baseType: !52, size: 8, align: 8, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !56, file: !40, line: 70, baseType: !52, size: 8, align: 8, offset: 16)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !40, line: 43, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_POINT", file: !40, line: 64, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RD_POINT", file: !40, line: 60, size: 32, align: 16, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !67, file: !40, line: 62, baseType: !49, size: 16, align: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !67, file: !40, line: 62, baseType: !49, size: 16, align: 16, offset: 16)
!71 = !{!72}
!72 = distinct !DIGlobalVariable(name: "g_order_state", scope: !0, file: !73, line: 24, type: !74, isLocal: true, isDefinition: true, variable: %struct._RDP_ORDER_STATE* @g_order_state)
!73 = !DIFile(filename: "orders.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "RDP_ORDER_STATE", file: !23, line: 290, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RDP_ORDER_STATE", file: !23, line: 269, size: 11648, align: 64, elements: !76)
!76 = !{!77, !78, !86, !95, !125, !136, !154, !163, !173, !187, !205, !220, !234, !245, !256, !269}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "order_type", scope: !75, file: !23, line: 271, baseType: !52, size: 8, align: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !75, file: !23, line: 272, baseType: !79, size: 64, align: 16, offset: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOUNDS", file: !40, line: 91, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BOUNDS", file: !40, line: 83, size: 64, align: 16, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !80, file: !40, line: 85, baseType: !49, size: 16, align: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !80, file: !40, line: 86, baseType: !49, size: 16, align: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !80, file: !40, line: 87, baseType: !49, size: 16, align: 16, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !80, file: !40, line: 88, baseType: !49, size: 16, align: 16, offset: 48)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "destblt", scope: !75, file: !23, line: 274, baseType: !87, size: 80, align: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "DESTBLT_ORDER", file: !23, line: 67, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DESTBLT_ORDER", file: !23, line: 58, size: 80, align: 16, elements: !89)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !88, file: !23, line: 60, baseType: !49, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !88, file: !23, line: 61, baseType: !49, size: 16, align: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !88, file: !23, line: 62, baseType: !49, size: 16, align: 16, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !88, file: !23, line: 63, baseType: !49, size: 16, align: 16, offset: 48)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !88, file: !23, line: 64, baseType: !52, size: 8, align: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "patblt", scope: !75, file: !23, line: 275, baseType: !96, size: 384, align: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "PATBLT_ORDER", file: !23, line: 81, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PATBLT_ORDER", file: !23, line: 69, size: 384, align: 64, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !97, file: !23, line: 71, baseType: !49, size: 16, align: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !97, file: !23, line: 72, baseType: !49, size: 16, align: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !97, file: !23, line: 73, baseType: !49, size: 16, align: 16, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !97, file: !23, line: 74, baseType: !49, size: 16, align: 16, offset: 48)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !97, file: !23, line: 75, baseType: !52, size: 8, align: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !97, file: !23, line: 76, baseType: !63, size: 32, align: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !97, file: !23, line: 77, baseType: !63, size: 32, align: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "brush", scope: !97, file: !23, line: 78, baseType: !107, size: 192, align: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "BRUSH", file: !40, line: 119, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BRUSH", file: !40, line: 111, size: 192, align: 64, elements: !109)
!109 = !{!110, !111, !112, !113, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "xorigin", scope: !108, file: !40, line: 113, baseType: !52, size: 8, align: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "yorigin", scope: !108, file: !40, line: 114, baseType: !52, size: 8, align: 8, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !108, file: !40, line: 115, baseType: !52, size: 8, align: 8, offset: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !108, file: !40, line: 116, baseType: !114, size: 64, align: 8, offset: 24)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bd", scope: !108, file: !40, line: 117, baseType: !118, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "BRUSHDATA", file: !40, line: 109, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BRUSHDATA", file: !40, line: 103, size: 128, align: 64, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "colour_code", scope: !120, file: !40, line: 105, baseType: !63, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !120, file: !40, line: 106, baseType: !63, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !120, file: !40, line: 107, baseType: !51, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "screenblt", scope: !75, file: !23, line: 276, baseType: !126, size: 112, align: 16, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCREENBLT_ORDER", file: !23, line: 94, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SCREENBLT_ORDER", file: !23, line: 83, size: 112, align: 16, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !127, file: !23, line: 85, baseType: !49, size: 16, align: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !127, file: !23, line: 86, baseType: !49, size: 16, align: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !127, file: !23, line: 87, baseType: !49, size: 16, align: 16, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !127, file: !23, line: 88, baseType: !49, size: 16, align: 16, offset: 48)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !127, file: !23, line: 89, baseType: !52, size: 8, align: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "srcx", scope: !127, file: !23, line: 90, baseType: !49, size: 16, align: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "srcy", scope: !127, file: !23, line: 91, baseType: !49, size: 16, align: 16, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !75, file: !23, line: 277, baseType: !137, size: 224, align: 32, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_ORDER", file: !23, line: 108, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_ORDER", file: !23, line: 96, size: 224, align: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mixmode", scope: !138, file: !23, line: 98, baseType: !47, size: 16, align: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "startx", scope: !138, file: !23, line: 99, baseType: !49, size: 16, align: 16, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "starty", scope: !138, file: !23, line: 100, baseType: !49, size: 16, align: 16, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "endx", scope: !138, file: !23, line: 101, baseType: !49, size: 16, align: 16, offset: 48)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "endy", scope: !138, file: !23, line: 102, baseType: !49, size: 16, align: 16, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !138, file: !23, line: 103, baseType: !63, size: 32, align: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !138, file: !23, line: 104, baseType: !52, size: 8, align: 8, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !138, file: !23, line: 105, baseType: !148, size: 64, align: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "PEN", file: !40, line: 100, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PEN", file: !40, line: 93, size: 64, align: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !149, file: !40, line: 95, baseType: !52, size: 8, align: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !149, file: !40, line: 96, baseType: !52, size: 8, align: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "colour", scope: !149, file: !40, line: 97, baseType: !63, size: 32, align: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rect", scope: !75, file: !23, line: 278, baseType: !155, size: 96, align: 32, offset: 928)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "RECT_ORDER", file: !23, line: 119, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RECT_ORDER", file: !23, line: 110, size: 96, align: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !156, file: !23, line: 112, baseType: !49, size: 16, align: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !156, file: !23, line: 113, baseType: !49, size: 16, align: 16, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !156, file: !23, line: 114, baseType: !49, size: 16, align: 16, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !156, file: !23, line: 115, baseType: !49, size: 16, align: 16, offset: 48)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "colour", scope: !156, file: !23, line: 116, baseType: !63, size: 32, align: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "desksave", scope: !75, file: !23, line: 279, baseType: !164, size: 128, align: 32, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "DESKSAVE_ORDER", file: !23, line: 131, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DESKSAVE_ORDER", file: !23, line: 121, size: 128, align: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !165, file: !23, line: 123, baseType: !63, size: 32, align: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !165, file: !23, line: 124, baseType: !49, size: 16, align: 16, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !165, file: !23, line: 125, baseType: !49, size: 16, align: 16, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !165, file: !23, line: 126, baseType: !49, size: 16, align: 16, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !165, file: !23, line: 127, baseType: !49, size: 16, align: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !165, file: !23, line: 128, baseType: !52, size: 8, align: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "memblt", scope: !75, file: !23, line: 280, baseType: !174, size: 144, align: 16, offset: 1152)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "MEMBLT_ORDER", file: !23, line: 167, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MEMBLT_ORDER", file: !23, line: 153, size: 144, align: 16, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "colour_table", scope: !175, file: !23, line: 155, baseType: !52, size: 8, align: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cache_id", scope: !175, file: !23, line: 156, baseType: !52, size: 8, align: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !175, file: !23, line: 157, baseType: !49, size: 16, align: 16, offset: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !175, file: !23, line: 158, baseType: !49, size: 16, align: 16, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !175, file: !23, line: 159, baseType: !49, size: 16, align: 16, offset: 48)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !175, file: !23, line: 160, baseType: !49, size: 16, align: 16, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !175, file: !23, line: 161, baseType: !52, size: 8, align: 8, offset: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "srcx", scope: !175, file: !23, line: 162, baseType: !49, size: 16, align: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "srcy", scope: !175, file: !23, line: 163, baseType: !49, size: 16, align: 16, offset: 112)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "cache_idx", scope: !175, file: !23, line: 164, baseType: !47, size: 16, align: 16, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "triblt", scope: !75, file: !23, line: 281, baseType: !188, size: 448, align: 64, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "TRIBLT_ORDER", file: !23, line: 151, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TRIBLT_ORDER", file: !23, line: 133, size: 448, align: 64, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "colour_table", scope: !189, file: !23, line: 135, baseType: !52, size: 8, align: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cache_id", scope: !189, file: !23, line: 136, baseType: !52, size: 8, align: 8, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !189, file: !23, line: 137, baseType: !49, size: 16, align: 16, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !189, file: !23, line: 138, baseType: !49, size: 16, align: 16, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !189, file: !23, line: 139, baseType: !49, size: 16, align: 16, offset: 48)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cy", scope: !189, file: !23, line: 140, baseType: !49, size: 16, align: 16, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !189, file: !23, line: 141, baseType: !52, size: 8, align: 8, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "srcx", scope: !189, file: !23, line: 142, baseType: !49, size: 16, align: 16, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "srcy", scope: !189, file: !23, line: 143, baseType: !49, size: 16, align: 16, offset: 112)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !189, file: !23, line: 144, baseType: !63, size: 32, align: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !189, file: !23, line: 145, baseType: !63, size: 32, align: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "brush", scope: !189, file: !23, line: 146, baseType: !107, size: 192, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cache_idx", scope: !189, file: !23, line: 147, baseType: !47, size: 16, align: 16, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !189, file: !23, line: 148, baseType: !47, size: 16, align: 16, offset: 400)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "polygon", scope: !75, file: !23, line: 282, baseType: !206, size: 2176, align: 32, offset: 1792)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "POLYGON_ORDER", file: !23, line: 183, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_POLYGON_ORDER", file: !23, line: 171, size: 2176, align: 32, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !207, file: !23, line: 173, baseType: !49, size: 16, align: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !207, file: !23, line: 174, baseType: !49, size: 16, align: 16, offset: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !207, file: !23, line: 175, baseType: !52, size: 8, align: 8, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fillmode", scope: !207, file: !23, line: 176, baseType: !52, size: 8, align: 8, offset: 40)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !207, file: !23, line: 177, baseType: !63, size: 32, align: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !207, file: !23, line: 178, baseType: !52, size: 8, align: 8, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "datasize", scope: !207, file: !23, line: 179, baseType: !52, size: 8, align: 8, offset: 104)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !23, line: 180, baseType: !217, size: 2048, align: 8, offset: 112)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, align: 8, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "polygon2", scope: !75, file: !23, line: 283, baseType: !221, size: 2432, align: 64, offset: 3968)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "POLYGON2_ORDER", file: !23, line: 199, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_POLYGON2_ORDER", file: !23, line: 185, size: 2432, align: 64, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !222, file: !23, line: 187, baseType: !49, size: 16, align: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !222, file: !23, line: 188, baseType: !49, size: 16, align: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !222, file: !23, line: 189, baseType: !52, size: 8, align: 8, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fillmode", scope: !222, file: !23, line: 190, baseType: !52, size: 8, align: 8, offset: 40)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !222, file: !23, line: 191, baseType: !63, size: 32, align: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !222, file: !23, line: 192, baseType: !63, size: 32, align: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "brush", scope: !222, file: !23, line: 193, baseType: !107, size: 192, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !222, file: !23, line: 194, baseType: !52, size: 8, align: 8, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "datasize", scope: !222, file: !23, line: 195, baseType: !52, size: 8, align: 8, offset: 328)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !23, line: 196, baseType: !217, size: 2048, align: 8, offset: 336)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "polyline", scope: !75, file: !23, line: 284, baseType: !235, size: 2176, align: 32, offset: 6400)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "POLYLINE_ORDER", file: !23, line: 212, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_POLYLINE_ORDER", file: !23, line: 201, size: 2176, align: 32, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !236, file: !23, line: 203, baseType: !49, size: 16, align: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !236, file: !23, line: 204, baseType: !49, size: 16, align: 16, offset: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !236, file: !23, line: 205, baseType: !52, size: 8, align: 8, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !236, file: !23, line: 206, baseType: !63, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !236, file: !23, line: 207, baseType: !52, size: 8, align: 8, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "datasize", scope: !236, file: !23, line: 208, baseType: !52, size: 8, align: 8, offset: 104)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !236, file: !23, line: 209, baseType: !217, size: 2048, align: 8, offset: 112)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse", scope: !75, file: !23, line: 285, baseType: !246, size: 128, align: 32, offset: 8576)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELLIPSE_ORDER", file: !23, line: 225, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ELLIPSE_ORDER", file: !23, line: 214, size: 128, align: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !247, file: !23, line: 216, baseType: !49, size: 16, align: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !247, file: !23, line: 217, baseType: !49, size: 16, align: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !247, file: !23, line: 218, baseType: !49, size: 16, align: 16, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !247, file: !23, line: 219, baseType: !49, size: 16, align: 16, offset: 48)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !247, file: !23, line: 220, baseType: !52, size: 8, align: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "fillmode", scope: !247, file: !23, line: 221, baseType: !52, size: 8, align: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !247, file: !23, line: 222, baseType: !63, size: 32, align: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse2", scope: !75, file: !23, line: 286, baseType: !257, size: 384, align: 64, offset: 8704)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELLIPSE2_ORDER", file: !23, line: 240, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ELLIPSE2_ORDER", file: !23, line: 227, size: 384, align: 64, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !258, file: !23, line: 229, baseType: !49, size: 16, align: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !258, file: !23, line: 230, baseType: !49, size: 16, align: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !258, file: !23, line: 231, baseType: !49, size: 16, align: 16, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !258, file: !23, line: 232, baseType: !49, size: 16, align: 16, offset: 48)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !258, file: !23, line: 233, baseType: !52, size: 8, align: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fillmode", scope: !258, file: !23, line: 234, baseType: !52, size: 8, align: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "brush", scope: !258, file: !23, line: 235, baseType: !107, size: 192, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !258, file: !23, line: 236, baseType: !63, size: 32, align: 32, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !258, file: !23, line: 237, baseType: !63, size: 32, align: 32, offset: 352)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "text2", scope: !75, file: !23, line: 287, baseType: !270, size: 2560, align: 64, offset: 9088)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT2_ORDER", file: !23, line: 267, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT2_ORDER", file: !23, line: 244, size: 2560, align: 64, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !271, file: !23, line: 246, baseType: !52, size: 8, align: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !23, line: 247, baseType: !52, size: 8, align: 8, offset: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !271, file: !23, line: 248, baseType: !52, size: 8, align: 8, offset: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mixmode", scope: !271, file: !23, line: 249, baseType: !52, size: 8, align: 8, offset: 24)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "bgcolour", scope: !271, file: !23, line: 250, baseType: !63, size: 32, align: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fgcolour", scope: !271, file: !23, line: 251, baseType: !63, size: 32, align: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "clipleft", scope: !271, file: !23, line: 252, baseType: !49, size: 16, align: 16, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cliptop", scope: !271, file: !23, line: 253, baseType: !49, size: 16, align: 16, offset: 112)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "clipright", scope: !271, file: !23, line: 254, baseType: !49, size: 16, align: 16, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "clipbottom", scope: !271, file: !23, line: 255, baseType: !49, size: 16, align: 16, offset: 144)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "boxleft", scope: !271, file: !23, line: 256, baseType: !49, size: 16, align: 16, offset: 160)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "boxtop", scope: !271, file: !23, line: 257, baseType: !49, size: 16, align: 16, offset: 176)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "boxright", scope: !271, file: !23, line: 258, baseType: !49, size: 16, align: 16, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "boxbottom", scope: !271, file: !23, line: 259, baseType: !49, size: 16, align: 16, offset: 208)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "brush", scope: !271, file: !23, line: 260, baseType: !107, size: 192, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !271, file: !23, line: 261, baseType: !49, size: 16, align: 16, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !271, file: !23, line: 262, baseType: !49, size: 16, align: 16, offset: 464)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !271, file: !23, line: 263, baseType: !52, size: 8, align: 8, offset: 480)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !271, file: !23, line: 264, baseType: !217, size: 2048, align: 8, offset: 488)
!292 = !{i32 2, !"Dwarf Version", i32 4}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!295 = distinct !DISubprogram(name: "process_orders", scope: !73, file: !73, line: 1309, type: !296, isLocal: false, isDefinition: true, scopeLine: 1310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298, !47}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !299, line: 40, baseType: !300)
!299 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !299, line: 25, size: 576, align: 64, elements: !302)
!302 = !{!303, !305, !306, !307, !308, !309, !310, !311, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !301, file: !299, line: 27, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !301, file: !299, line: 28, baseType: !304, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !301, file: !299, line: 29, baseType: !304, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !301, file: !299, line: 30, baseType: !64, size: 32, align: 32, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !301, file: !299, line: 33, baseType: !304, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !301, file: !299, line: 34, baseType: !304, size: 64, align: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !301, file: !299, line: 35, baseType: !304, size: 64, align: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !301, file: !299, line: 36, baseType: !304, size: 64, align: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !301, file: !299, line: 37, baseType: !304, size: 64, align: 64, offset: 512)
!313 = !{}
!314 = !DILocalVariable(name: "s", arg: 1, scope: !295, file: !73, line: 1309, type: !298)
!315 = !DIExpression()
!316 = !DILocation(line: 1309, column: 23, scope: !295)
!317 = !DILocalVariable(name: "num_orders", arg: 2, scope: !295, file: !73, line: 1309, type: !47)
!318 = !DILocation(line: 1309, column: 33, scope: !295)
!319 = !DILocalVariable(name: "os", scope: !295, file: !73, line: 1311, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!321 = !DILocation(line: 1311, column: 19, scope: !295)
!322 = !DILocalVariable(name: "present", scope: !295, file: !73, line: 1312, type: !63)
!323 = !DILocation(line: 1312, column: 9, scope: !295)
!324 = !DILocalVariable(name: "order_flags", scope: !295, file: !73, line: 1313, type: !52)
!325 = !DILocation(line: 1313, column: 8, scope: !295)
!326 = !DILocalVariable(name: "size", scope: !295, file: !73, line: 1314, type: !327)
!327 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!328 = !DILocation(line: 1314, column: 6, scope: !295)
!329 = !DILocalVariable(name: "processed", scope: !295, file: !73, line: 1314, type: !327)
!330 = !DILocation(line: 1314, column: 12, scope: !295)
!331 = !DILocalVariable(name: "delta", scope: !295, file: !73, line: 1315, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !40, line: 28, baseType: !327)
!333 = !DILocation(line: 1315, column: 10, scope: !295)
!334 = !DILocation(line: 1317, column: 2, scope: !295)
!335 = !DILocation(line: 1317, column: 9, scope: !336)
!336 = !DILexicalBlockFile(scope: !295, file: !73, discriminator: 1)
!337 = !DILocation(line: 1317, column: 21, scope: !336)
!338 = !DILocation(line: 1317, column: 19, scope: !336)
!339 = !DILocation(line: 1317, column: 2, scope: !336)
!340 = !DILocation(line: 1319, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !295, file: !73, line: 1318, column: 2)
!342 = !DILocation(line: 1319, column: 24, scope: !341)
!343 = !DILocation(line: 1319, column: 25, scope: !341)
!344 = !DILocation(line: 1319, column: 17, scope: !341)
!345 = !DILocation(line: 1319, column: 15, scope: !341)
!346 = !DILocation(line: 1321, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !73, line: 1321, column: 7)
!348 = !DILocation(line: 1321, column: 21, scope: !347)
!349 = !DILocation(line: 1321, column: 7, scope: !341)
!350 = !DILocation(line: 1323, column: 4, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !73, line: 1322, column: 3)
!352 = !DILocation(line: 1324, column: 4, scope: !351)
!353 = !DILocation(line: 1327, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !341, file: !73, line: 1327, column: 7)
!355 = !DILocation(line: 1327, column: 19, scope: !354)
!356 = !DILocation(line: 1327, column: 7, scope: !341)
!357 = !DILocation(line: 1329, column: 28, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !73, line: 1328, column: 3)
!359 = !DILocation(line: 1329, column: 4, scope: !358)
!360 = !DILocation(line: 1330, column: 3, scope: !358)
!361 = !DILocation(line: 1333, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !73, line: 1333, column: 8)
!363 = distinct !DILexicalBlock(scope: !354, file: !73, line: 1332, column: 3)
!364 = !DILocation(line: 1333, column: 20, scope: !362)
!365 = !DILocation(line: 1333, column: 8, scope: !363)
!366 = !DILocation(line: 1335, column: 25, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !73, line: 1334, column: 4)
!368 = !DILocation(line: 1335, column: 29, scope: !367)
!369 = !DILocation(line: 1335, column: 30, scope: !367)
!370 = !DILocation(line: 1335, column: 22, scope: !367)
!371 = !DILocation(line: 1335, column: 5, scope: !367)
!372 = !DILocation(line: 1335, column: 9, scope: !367)
!373 = !DILocation(line: 1335, column: 20, scope: !367)
!374 = !DILocation(line: 1336, column: 4, scope: !367)
!375 = !DILocation(line: 1338, column: 12, scope: !363)
!376 = !DILocation(line: 1338, column: 16, scope: !363)
!377 = !DILocation(line: 1338, column: 4, scope: !363)
!378 = !DILocation(line: 1342, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !363, file: !73, line: 1339, column: 4)
!380 = !DILocation(line: 1343, column: 6, scope: !379)
!381 = !DILocation(line: 1350, column: 11, scope: !379)
!382 = !DILocation(line: 1351, column: 6, scope: !379)
!383 = !DILocation(line: 1354, column: 11, scope: !379)
!384 = !DILocation(line: 1355, column: 4, scope: !379)
!385 = !DILocation(line: 1357, column: 19, scope: !363)
!386 = !DILocation(line: 1357, column: 32, scope: !363)
!387 = !DILocation(line: 1357, column: 45, scope: !363)
!388 = !DILocation(line: 1357, column: 4, scope: !363)
!389 = !DILocation(line: 1359, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !363, file: !73, line: 1359, column: 8)
!391 = !DILocation(line: 1359, column: 20, scope: !390)
!392 = !DILocation(line: 1359, column: 8, scope: !363)
!393 = !DILocation(line: 1361, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !73, line: 1361, column: 9)
!395 = distinct !DILexicalBlock(scope: !390, file: !73, line: 1360, column: 4)
!396 = !DILocation(line: 1361, column: 23, scope: !394)
!397 = !DILocation(line: 1361, column: 9, scope: !395)
!398 = !DILocation(line: 1362, column: 23, scope: !394)
!399 = !DILocation(line: 1362, column: 27, scope: !394)
!400 = !DILocation(line: 1362, column: 31, scope: !394)
!401 = !DILocation(line: 1362, column: 6, scope: !394)
!402 = !DILocation(line: 1364, column: 17, scope: !395)
!403 = !DILocation(line: 1364, column: 21, scope: !395)
!404 = !DILocation(line: 1364, column: 28, scope: !395)
!405 = !DILocation(line: 1365, column: 10, scope: !395)
!406 = !DILocation(line: 1365, column: 14, scope: !395)
!407 = !DILocation(line: 1365, column: 21, scope: !395)
!408 = !DILocation(line: 1366, column: 10, scope: !395)
!409 = !DILocation(line: 1366, column: 14, scope: !395)
!410 = !DILocation(line: 1366, column: 21, scope: !395)
!411 = !DILocation(line: 1367, column: 10, scope: !395)
!412 = !DILocation(line: 1367, column: 14, scope: !395)
!413 = !DILocation(line: 1367, column: 21, scope: !395)
!414 = !DILocation(line: 1366, column: 27, scope: !395)
!415 = !DILocation(line: 1367, column: 26, scope: !395)
!416 = !DILocation(line: 1368, column: 10, scope: !395)
!417 = !DILocation(line: 1368, column: 14, scope: !395)
!418 = !DILocation(line: 1368, column: 21, scope: !395)
!419 = !DILocation(line: 1368, column: 30, scope: !395)
!420 = !DILocation(line: 1368, column: 34, scope: !395)
!421 = !DILocation(line: 1368, column: 41, scope: !395)
!422 = !DILocation(line: 1368, column: 28, scope: !395)
!423 = !DILocation(line: 1368, column: 45, scope: !395)
!424 = !DILocation(line: 1364, column: 5, scope: !395)
!425 = !DILocation(line: 1369, column: 4, scope: !395)
!426 = !DILocation(line: 1371, column: 12, scope: !363)
!427 = !DILocation(line: 1371, column: 24, scope: !363)
!428 = !DILocation(line: 1371, column: 10, scope: !363)
!429 = !DILocation(line: 1373, column: 12, scope: !363)
!430 = !DILocation(line: 1373, column: 16, scope: !363)
!431 = !DILocation(line: 1373, column: 4, scope: !363)
!432 = !DILocation(line: 1376, column: 22, scope: !433)
!433 = distinct !DILexicalBlock(scope: !363, file: !73, line: 1374, column: 4)
!434 = !DILocation(line: 1376, column: 26, scope: !433)
!435 = !DILocation(line: 1376, column: 30, scope: !433)
!436 = !DILocation(line: 1376, column: 39, scope: !433)
!437 = !DILocation(line: 1376, column: 48, scope: !433)
!438 = !DILocation(line: 1376, column: 6, scope: !433)
!439 = !DILocation(line: 1377, column: 6, scope: !433)
!440 = !DILocation(line: 1380, column: 21, scope: !433)
!441 = !DILocation(line: 1380, column: 25, scope: !433)
!442 = !DILocation(line: 1380, column: 29, scope: !433)
!443 = !DILocation(line: 1380, column: 37, scope: !433)
!444 = !DILocation(line: 1380, column: 46, scope: !433)
!445 = !DILocation(line: 1380, column: 6, scope: !433)
!446 = !DILocation(line: 1381, column: 6, scope: !433)
!447 = !DILocation(line: 1384, column: 24, scope: !433)
!448 = !DILocation(line: 1384, column: 28, scope: !433)
!449 = !DILocation(line: 1384, column: 32, scope: !433)
!450 = !DILocation(line: 1384, column: 43, scope: !433)
!451 = !DILocation(line: 1384, column: 52, scope: !433)
!452 = !DILocation(line: 1384, column: 6, scope: !433)
!453 = !DILocation(line: 1385, column: 6, scope: !433)
!454 = !DILocation(line: 1388, column: 19, scope: !433)
!455 = !DILocation(line: 1388, column: 23, scope: !433)
!456 = !DILocation(line: 1388, column: 27, scope: !433)
!457 = !DILocation(line: 1388, column: 33, scope: !433)
!458 = !DILocation(line: 1388, column: 42, scope: !433)
!459 = !DILocation(line: 1388, column: 6, scope: !433)
!460 = !DILocation(line: 1389, column: 6, scope: !433)
!461 = !DILocation(line: 1392, column: 19, scope: !433)
!462 = !DILocation(line: 1392, column: 23, scope: !433)
!463 = !DILocation(line: 1392, column: 27, scope: !433)
!464 = !DILocation(line: 1392, column: 33, scope: !433)
!465 = !DILocation(line: 1392, column: 42, scope: !433)
!466 = !DILocation(line: 1392, column: 6, scope: !433)
!467 = !DILocation(line: 1393, column: 6, scope: !433)
!468 = !DILocation(line: 1396, column: 23, scope: !433)
!469 = !DILocation(line: 1396, column: 27, scope: !433)
!470 = !DILocation(line: 1396, column: 31, scope: !433)
!471 = !DILocation(line: 1396, column: 41, scope: !433)
!472 = !DILocation(line: 1396, column: 50, scope: !433)
!473 = !DILocation(line: 1396, column: 6, scope: !433)
!474 = !DILocation(line: 1397, column: 6, scope: !433)
!475 = !DILocation(line: 1400, column: 21, scope: !433)
!476 = !DILocation(line: 1400, column: 25, scope: !433)
!477 = !DILocation(line: 1400, column: 29, scope: !433)
!478 = !DILocation(line: 1400, column: 37, scope: !433)
!479 = !DILocation(line: 1400, column: 46, scope: !433)
!480 = !DILocation(line: 1400, column: 6, scope: !433)
!481 = !DILocation(line: 1401, column: 6, scope: !433)
!482 = !DILocation(line: 1404, column: 21, scope: !433)
!483 = !DILocation(line: 1404, column: 25, scope: !433)
!484 = !DILocation(line: 1404, column: 29, scope: !433)
!485 = !DILocation(line: 1404, column: 37, scope: !433)
!486 = !DILocation(line: 1404, column: 46, scope: !433)
!487 = !DILocation(line: 1404, column: 6, scope: !433)
!488 = !DILocation(line: 1405, column: 6, scope: !433)
!489 = !DILocation(line: 1408, column: 22, scope: !433)
!490 = !DILocation(line: 1408, column: 26, scope: !433)
!491 = !DILocation(line: 1408, column: 30, scope: !433)
!492 = !DILocation(line: 1408, column: 39, scope: !433)
!493 = !DILocation(line: 1408, column: 48, scope: !433)
!494 = !DILocation(line: 1408, column: 6, scope: !433)
!495 = !DILocation(line: 1409, column: 6, scope: !433)
!496 = !DILocation(line: 1412, column: 23, scope: !433)
!497 = !DILocation(line: 1412, column: 27, scope: !433)
!498 = !DILocation(line: 1412, column: 31, scope: !433)
!499 = !DILocation(line: 1412, column: 41, scope: !433)
!500 = !DILocation(line: 1412, column: 50, scope: !433)
!501 = !DILocation(line: 1412, column: 6, scope: !433)
!502 = !DILocation(line: 1413, column: 6, scope: !433)
!503 = !DILocation(line: 1416, column: 23, scope: !433)
!504 = !DILocation(line: 1416, column: 27, scope: !433)
!505 = !DILocation(line: 1416, column: 31, scope: !433)
!506 = !DILocation(line: 1416, column: 41, scope: !433)
!507 = !DILocation(line: 1416, column: 50, scope: !433)
!508 = !DILocation(line: 1416, column: 6, scope: !433)
!509 = !DILocation(line: 1417, column: 6, scope: !433)
!510 = !DILocation(line: 1420, column: 22, scope: !433)
!511 = !DILocation(line: 1420, column: 26, scope: !433)
!512 = !DILocation(line: 1420, column: 30, scope: !433)
!513 = !DILocation(line: 1420, column: 39, scope: !433)
!514 = !DILocation(line: 1420, column: 48, scope: !433)
!515 = !DILocation(line: 1420, column: 6, scope: !433)
!516 = !DILocation(line: 1421, column: 6, scope: !433)
!517 = !DILocation(line: 1424, column: 23, scope: !433)
!518 = !DILocation(line: 1424, column: 27, scope: !433)
!519 = !DILocation(line: 1424, column: 31, scope: !433)
!520 = !DILocation(line: 1424, column: 41, scope: !433)
!521 = !DILocation(line: 1424, column: 50, scope: !433)
!522 = !DILocation(line: 1424, column: 6, scope: !433)
!523 = !DILocation(line: 1425, column: 6, scope: !433)
!524 = !DILocation(line: 1428, column: 20, scope: !433)
!525 = !DILocation(line: 1428, column: 24, scope: !433)
!526 = !DILocation(line: 1428, column: 28, scope: !433)
!527 = !DILocation(line: 1428, column: 35, scope: !433)
!528 = !DILocation(line: 1428, column: 44, scope: !433)
!529 = !DILocation(line: 1428, column: 6, scope: !433)
!530 = !DILocation(line: 1429, column: 6, scope: !433)
!531 = !DILocation(line: 1434, column: 13, scope: !433)
!532 = !DILocation(line: 1434, column: 17, scope: !433)
!533 = !DILocation(line: 1432, column: 6, scope: !433)
!534 = !DILocation(line: 1435, column: 6, scope: !433)
!535 = !DILocation(line: 1438, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !363, file: !73, line: 1438, column: 8)
!537 = !DILocation(line: 1438, column: 20, scope: !536)
!538 = !DILocation(line: 1438, column: 8, scope: !363)
!539 = !DILocation(line: 1439, column: 5, scope: !536)
!540 = !DILocation(line: 1442, column: 12, scope: !341)
!541 = !DILocation(line: 1317, column: 2, scope: !542)
!542 = !DILexicalBlockFile(scope: !295, file: !73, discriminator: 2)
!543 = distinct !{!543, !334}
!544 = !DILocation(line: 1451, column: 1, scope: !295)
!545 = distinct !DISubprogram(name: "process_secondary_order", scope: !73, file: !73, line: 1253, type: !546, isLocal: true, isDefinition: true, scopeLine: 1254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !298}
!548 = !DILocalVariable(name: "s", arg: 1, scope: !545, file: !73, line: 1253, type: !298)
!549 = !DILocation(line: 1253, column: 32, scope: !545)
!550 = !DILocalVariable(name: "length", scope: !545, file: !73, line: 1258, type: !47)
!551 = !DILocation(line: 1258, column: 9, scope: !545)
!552 = !DILocalVariable(name: "flags", scope: !545, file: !73, line: 1259, type: !47)
!553 = !DILocation(line: 1259, column: 9, scope: !545)
!554 = !DILocalVariable(name: "type", scope: !545, file: !73, line: 1260, type: !52)
!555 = !DILocation(line: 1260, column: 8, scope: !545)
!556 = !DILocalVariable(name: "next_order", scope: !545, file: !73, line: 1261, type: !51)
!557 = !DILocation(line: 1261, column: 9, scope: !545)
!558 = !DILocation(line: 1263, column: 26, scope: !559)
!559 = distinct !DILexicalBlock(scope: !545, file: !73, line: 1263, column: 2)
!560 = !DILocation(line: 1263, column: 30, scope: !559)
!561 = !DILocation(line: 1263, column: 13, scope: !559)
!562 = !DILocation(line: 1263, column: 11, scope: !559)
!563 = !DILocation(line: 1263, column: 35, scope: !559)
!564 = !DILocation(line: 1263, column: 39, scope: !559)
!565 = !DILocation(line: 1263, column: 41, scope: !559)
!566 = !DILocation(line: 1264, column: 25, scope: !567)
!567 = distinct !DILexicalBlock(scope: !545, file: !73, line: 1264, column: 2)
!568 = !DILocation(line: 1264, column: 29, scope: !567)
!569 = !DILocation(line: 1264, column: 12, scope: !567)
!570 = !DILocation(line: 1264, column: 10, scope: !567)
!571 = !DILocation(line: 1264, column: 34, scope: !567)
!572 = !DILocation(line: 1264, column: 38, scope: !567)
!573 = !DILocation(line: 1264, column: 40, scope: !567)
!574 = !DILocation(line: 1265, column: 12, scope: !545)
!575 = !DILocation(line: 1265, column: 16, scope: !545)
!576 = !DILocation(line: 1265, column: 17, scope: !545)
!577 = !DILocation(line: 1265, column: 9, scope: !545)
!578 = !DILocation(line: 1265, column: 7, scope: !545)
!579 = !DILocation(line: 1267, column: 15, scope: !545)
!580 = !DILocation(line: 1267, column: 18, scope: !545)
!581 = !DILocation(line: 1267, column: 31, scope: !545)
!582 = !DILocation(line: 1267, column: 22, scope: !545)
!583 = !DILocation(line: 1267, column: 20, scope: !545)
!584 = !DILocation(line: 1267, column: 38, scope: !545)
!585 = !DILocation(line: 1267, column: 13, scope: !545)
!586 = !DILocation(line: 1269, column: 10, scope: !545)
!587 = !DILocation(line: 1269, column: 2, scope: !545)
!588 = !DILocation(line: 1272, column: 25, scope: !589)
!589 = distinct !DILexicalBlock(scope: !545, file: !73, line: 1270, column: 2)
!590 = !DILocation(line: 1272, column: 4, scope: !589)
!591 = !DILocation(line: 1273, column: 4, scope: !589)
!592 = !DILocation(line: 1276, column: 21, scope: !589)
!593 = !DILocation(line: 1276, column: 4, scope: !589)
!594 = !DILocation(line: 1277, column: 4, scope: !589)
!595 = !DILocation(line: 1280, column: 21, scope: !589)
!596 = !DILocation(line: 1280, column: 4, scope: !589)
!597 = !DILocation(line: 1281, column: 4, scope: !589)
!598 = !DILocation(line: 1284, column: 22, scope: !589)
!599 = !DILocation(line: 1284, column: 4, scope: !589)
!600 = !DILocation(line: 1285, column: 4, scope: !589)
!601 = !DILocation(line: 1288, column: 22, scope: !589)
!602 = !DILocation(line: 1288, column: 25, scope: !589)
!603 = !DILocation(line: 1288, column: 4, scope: !589)
!604 = !DILocation(line: 1289, column: 4, scope: !589)
!605 = !DILocation(line: 1292, column: 22, scope: !589)
!606 = !DILocation(line: 1292, column: 25, scope: !589)
!607 = !DILocation(line: 1292, column: 4, scope: !589)
!608 = !DILocation(line: 1293, column: 4, scope: !589)
!609 = !DILocation(line: 1296, column: 23, scope: !589)
!610 = !DILocation(line: 1296, column: 26, scope: !589)
!611 = !DILocation(line: 1296, column: 4, scope: !589)
!612 = !DILocation(line: 1297, column: 4, scope: !589)
!613 = !DILocation(line: 1301, column: 70, scope: !589)
!614 = !DILocation(line: 1300, column: 4, scope: !589)
!615 = !DILocation(line: 1302, column: 2, scope: !589)
!616 = !DILocation(line: 1304, column: 9, scope: !545)
!617 = !DILocation(line: 1304, column: 2, scope: !545)
!618 = !DILocation(line: 1304, column: 5, scope: !545)
!619 = !DILocation(line: 1304, column: 7, scope: !545)
!620 = !DILocation(line: 1305, column: 1, scope: !545)
!621 = distinct !DISubprogram(name: "rdp_in_present", scope: !73, file: !73, line: 29, type: !622, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !298, !62, !52, !327}
!624 = !DILocalVariable(name: "s", arg: 1, scope: !621, file: !73, line: 29, type: !298)
!625 = !DILocation(line: 29, column: 23, scope: !621)
!626 = !DILocalVariable(name: "present", arg: 2, scope: !621, file: !73, line: 29, type: !62)
!627 = !DILocation(line: 29, column: 35, scope: !621)
!628 = !DILocalVariable(name: "flags", arg: 3, scope: !621, file: !73, line: 29, type: !52)
!629 = !DILocation(line: 29, column: 50, scope: !621)
!630 = !DILocalVariable(name: "size", arg: 4, scope: !621, file: !73, line: 29, type: !327)
!631 = !DILocation(line: 29, column: 61, scope: !621)
!632 = !DILocalVariable(name: "bits", scope: !621, file: !73, line: 31, type: !52)
!633 = !DILocation(line: 31, column: 8, scope: !621)
!634 = !DILocalVariable(name: "i", scope: !621, file: !73, line: 32, type: !327)
!635 = !DILocation(line: 32, column: 6, scope: !621)
!636 = !DILocation(line: 34, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !621, file: !73, line: 34, column: 6)
!638 = !DILocation(line: 34, column: 12, scope: !637)
!639 = !DILocation(line: 34, column: 6, scope: !621)
!640 = !DILocation(line: 36, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !73, line: 35, column: 2)
!642 = !DILocation(line: 37, column: 2, scope: !641)
!643 = !DILocation(line: 39, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !621, file: !73, line: 39, column: 6)
!645 = !DILocation(line: 39, column: 12, scope: !644)
!646 = !DILocation(line: 39, column: 6, scope: !621)
!647 = !DILocation(line: 41, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !73, line: 41, column: 7)
!649 = distinct !DILexicalBlock(scope: !644, file: !73, line: 40, column: 2)
!650 = !DILocation(line: 41, column: 12, scope: !648)
!651 = !DILocation(line: 41, column: 7, scope: !649)
!652 = !DILocation(line: 42, column: 9, scope: !648)
!653 = !DILocation(line: 42, column: 4, scope: !648)
!654 = !DILocation(line: 44, column: 9, scope: !648)
!655 = !DILocation(line: 45, column: 2, scope: !649)
!656 = !DILocation(line: 47, column: 3, scope: !621)
!657 = !DILocation(line: 47, column: 11, scope: !621)
!658 = !DILocation(line: 48, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !621, file: !73, line: 48, column: 2)
!660 = !DILocation(line: 48, column: 7, scope: !659)
!661 = !DILocation(line: 48, column: 14, scope: !662)
!662 = !DILexicalBlockFile(scope: !663, file: !73, discriminator: 1)
!663 = distinct !DILexicalBlock(scope: !659, file: !73, line: 48, column: 2)
!664 = !DILocation(line: 48, column: 18, scope: !662)
!665 = !DILocation(line: 48, column: 16, scope: !662)
!666 = !DILocation(line: 48, column: 2, scope: !662)
!667 = !DILocation(line: 50, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !73, line: 49, column: 2)
!669 = !DILocation(line: 50, column: 17, scope: !668)
!670 = !DILocation(line: 50, column: 18, scope: !668)
!671 = !DILocation(line: 50, column: 10, scope: !668)
!672 = !DILocation(line: 50, column: 8, scope: !668)
!673 = !DILocation(line: 51, column: 15, scope: !668)
!674 = !DILocation(line: 51, column: 24, scope: !668)
!675 = !DILocation(line: 51, column: 26, scope: !668)
!676 = !DILocation(line: 51, column: 20, scope: !668)
!677 = !DILocation(line: 51, column: 4, scope: !668)
!678 = !DILocation(line: 51, column: 12, scope: !668)
!679 = !DILocation(line: 52, column: 2, scope: !668)
!680 = !DILocation(line: 48, column: 25, scope: !681)
!681 = !DILexicalBlockFile(scope: !663, file: !73, discriminator: 2)
!682 = !DILocation(line: 48, column: 2, scope: !681)
!683 = distinct !{!683, !684}
!684 = !DILocation(line: 48, column: 2, scope: !621)
!685 = !DILocation(line: 53, column: 1, scope: !621)
!686 = distinct !DISubprogram(name: "rdp_parse_bounds", scope: !73, file: !73, line: 105, type: !687, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!687 = !DISubroutineType(types: !688)
!688 = !{!332, !298, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!690 = !DILocalVariable(name: "s", arg: 1, scope: !686, file: !73, line: 105, type: !298)
!691 = !DILocation(line: 105, column: 25, scope: !686)
!692 = !DILocalVariable(name: "bounds", arg: 2, scope: !686, file: !73, line: 105, type: !689)
!693 = !DILocation(line: 105, column: 37, scope: !686)
!694 = !DILocalVariable(name: "present", scope: !686, file: !73, line: 107, type: !52)
!695 = !DILocation(line: 107, column: 8, scope: !686)
!696 = !DILocation(line: 109, column: 15, scope: !686)
!697 = !DILocation(line: 109, column: 19, scope: !686)
!698 = !DILocation(line: 109, column: 20, scope: !686)
!699 = !DILocation(line: 109, column: 12, scope: !686)
!700 = !DILocation(line: 109, column: 10, scope: !686)
!701 = !DILocation(line: 111, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !686, file: !73, line: 111, column: 6)
!703 = !DILocation(line: 111, column: 14, scope: !702)
!704 = !DILocation(line: 111, column: 6, scope: !686)
!705 = !DILocation(line: 112, column: 16, scope: !702)
!706 = !DILocation(line: 112, column: 20, scope: !702)
!707 = !DILocation(line: 112, column: 28, scope: !702)
!708 = !DILocation(line: 112, column: 3, scope: !702)
!709 = !DILocation(line: 113, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !73, line: 113, column: 11)
!711 = !DILocation(line: 113, column: 19, scope: !710)
!712 = !DILocation(line: 113, column: 11, scope: !702)
!713 = !DILocation(line: 114, column: 16, scope: !710)
!714 = !DILocation(line: 114, column: 20, scope: !710)
!715 = !DILocation(line: 114, column: 28, scope: !710)
!716 = !DILocation(line: 114, column: 3, scope: !710)
!717 = !DILocation(line: 116, column: 6, scope: !718)
!718 = distinct !DILexicalBlock(scope: !686, file: !73, line: 116, column: 6)
!719 = !DILocation(line: 116, column: 14, scope: !718)
!720 = !DILocation(line: 116, column: 6, scope: !686)
!721 = !DILocation(line: 117, column: 16, scope: !718)
!722 = !DILocation(line: 117, column: 20, scope: !718)
!723 = !DILocation(line: 117, column: 28, scope: !718)
!724 = !DILocation(line: 117, column: 3, scope: !718)
!725 = !DILocation(line: 118, column: 11, scope: !726)
!726 = distinct !DILexicalBlock(scope: !718, file: !73, line: 118, column: 11)
!727 = !DILocation(line: 118, column: 19, scope: !726)
!728 = !DILocation(line: 118, column: 11, scope: !718)
!729 = !DILocation(line: 119, column: 16, scope: !726)
!730 = !DILocation(line: 119, column: 20, scope: !726)
!731 = !DILocation(line: 119, column: 28, scope: !726)
!732 = !DILocation(line: 119, column: 3, scope: !726)
!733 = !DILocation(line: 121, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !686, file: !73, line: 121, column: 6)
!735 = !DILocation(line: 121, column: 14, scope: !734)
!736 = !DILocation(line: 121, column: 6, scope: !686)
!737 = !DILocation(line: 122, column: 16, scope: !734)
!738 = !DILocation(line: 122, column: 20, scope: !734)
!739 = !DILocation(line: 122, column: 28, scope: !734)
!740 = !DILocation(line: 122, column: 3, scope: !734)
!741 = !DILocation(line: 123, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !734, file: !73, line: 123, column: 11)
!743 = !DILocation(line: 123, column: 19, scope: !742)
!744 = !DILocation(line: 123, column: 11, scope: !734)
!745 = !DILocation(line: 124, column: 16, scope: !742)
!746 = !DILocation(line: 124, column: 20, scope: !742)
!747 = !DILocation(line: 124, column: 28, scope: !742)
!748 = !DILocation(line: 124, column: 3, scope: !742)
!749 = !DILocation(line: 126, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !686, file: !73, line: 126, column: 6)
!751 = !DILocation(line: 126, column: 14, scope: !750)
!752 = !DILocation(line: 126, column: 6, scope: !686)
!753 = !DILocation(line: 127, column: 16, scope: !750)
!754 = !DILocation(line: 127, column: 20, scope: !750)
!755 = !DILocation(line: 127, column: 28, scope: !750)
!756 = !DILocation(line: 127, column: 3, scope: !750)
!757 = !DILocation(line: 128, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !750, file: !73, line: 128, column: 11)
!759 = !DILocation(line: 128, column: 19, scope: !758)
!760 = !DILocation(line: 128, column: 11, scope: !750)
!761 = !DILocation(line: 129, column: 16, scope: !758)
!762 = !DILocation(line: 129, column: 20, scope: !758)
!763 = !DILocation(line: 129, column: 28, scope: !758)
!764 = !DILocation(line: 129, column: 3, scope: !758)
!765 = !DILocation(line: 131, column: 11, scope: !686)
!766 = !DILocation(line: 131, column: 15, scope: !686)
!767 = !DILocation(line: 131, column: 21, scope: !686)
!768 = !DILocation(line: 131, column: 25, scope: !686)
!769 = !DILocation(line: 131, column: 17, scope: !686)
!770 = !DILocation(line: 131, column: 2, scope: !686)
!771 = distinct !DISubprogram(name: "process_destblt", scope: !73, file: !73, line: 202, type: !772, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !298, !774, !63, !332}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!775 = !DILocalVariable(name: "s", arg: 1, scope: !771, file: !73, line: 202, type: !298)
!776 = !DILocation(line: 202, column: 24, scope: !771)
!777 = !DILocalVariable(name: "os", arg: 2, scope: !771, file: !73, line: 202, type: !774)
!778 = !DILocation(line: 202, column: 43, scope: !771)
!779 = !DILocalVariable(name: "present", arg: 3, scope: !771, file: !73, line: 202, type: !63)
!780 = !DILocation(line: 202, column: 54, scope: !771)
!781 = !DILocalVariable(name: "delta", arg: 4, scope: !771, file: !73, line: 202, type: !332)
!782 = !DILocation(line: 202, column: 71, scope: !771)
!783 = !DILocation(line: 204, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !771, file: !73, line: 204, column: 6)
!785 = !DILocation(line: 204, column: 14, scope: !784)
!786 = !DILocation(line: 204, column: 6, scope: !771)
!787 = !DILocation(line: 205, column: 16, scope: !784)
!788 = !DILocation(line: 205, column: 20, scope: !784)
!789 = !DILocation(line: 205, column: 24, scope: !784)
!790 = !DILocation(line: 205, column: 27, scope: !784)
!791 = !DILocation(line: 205, column: 3, scope: !784)
!792 = !DILocation(line: 207, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !771, file: !73, line: 207, column: 6)
!794 = !DILocation(line: 207, column: 14, scope: !793)
!795 = !DILocation(line: 207, column: 6, scope: !771)
!796 = !DILocation(line: 208, column: 16, scope: !793)
!797 = !DILocation(line: 208, column: 20, scope: !793)
!798 = !DILocation(line: 208, column: 24, scope: !793)
!799 = !DILocation(line: 208, column: 27, scope: !793)
!800 = !DILocation(line: 208, column: 3, scope: !793)
!801 = !DILocation(line: 210, column: 6, scope: !802)
!802 = distinct !DILexicalBlock(scope: !771, file: !73, line: 210, column: 6)
!803 = !DILocation(line: 210, column: 14, scope: !802)
!804 = !DILocation(line: 210, column: 6, scope: !771)
!805 = !DILocation(line: 211, column: 16, scope: !802)
!806 = !DILocation(line: 211, column: 20, scope: !802)
!807 = !DILocation(line: 211, column: 24, scope: !802)
!808 = !DILocation(line: 211, column: 28, scope: !802)
!809 = !DILocation(line: 211, column: 3, scope: !802)
!810 = !DILocation(line: 213, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !771, file: !73, line: 213, column: 6)
!812 = !DILocation(line: 213, column: 14, scope: !811)
!813 = !DILocation(line: 213, column: 6, scope: !771)
!814 = !DILocation(line: 214, column: 16, scope: !811)
!815 = !DILocation(line: 214, column: 20, scope: !811)
!816 = !DILocation(line: 214, column: 24, scope: !811)
!817 = !DILocation(line: 214, column: 28, scope: !811)
!818 = !DILocation(line: 214, column: 3, scope: !811)
!819 = !DILocation(line: 216, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !771, file: !73, line: 216, column: 6)
!821 = !DILocation(line: 216, column: 14, scope: !820)
!822 = !DILocation(line: 216, column: 6, scope: !771)
!823 = !DILocation(line: 217, column: 19, scope: !820)
!824 = !DILocation(line: 217, column: 23, scope: !820)
!825 = !DILocation(line: 217, column: 24, scope: !820)
!826 = !DILocation(line: 217, column: 16, scope: !820)
!827 = !DILocation(line: 217, column: 3, scope: !820)
!828 = !DILocation(line: 217, column: 7, scope: !820)
!829 = !DILocation(line: 217, column: 14, scope: !820)
!830 = !DILocation(line: 220, column: 9, scope: !771)
!831 = !DILocation(line: 220, column: 13, scope: !771)
!832 = !DILocation(line: 220, column: 21, scope: !771)
!833 = !DILocation(line: 220, column: 25, scope: !771)
!834 = !DILocation(line: 220, column: 28, scope: !771)
!835 = !DILocation(line: 220, column: 32, scope: !771)
!836 = !DILocation(line: 220, column: 35, scope: !771)
!837 = !DILocation(line: 220, column: 39, scope: !771)
!838 = !DILocation(line: 220, column: 43, scope: !771)
!839 = !DILocation(line: 220, column: 47, scope: !771)
!840 = !DILocation(line: 219, column: 2, scope: !771)
!841 = !DILocation(line: 222, column: 14, scope: !771)
!842 = !DILocation(line: 222, column: 18, scope: !771)
!843 = !DILocation(line: 222, column: 25, scope: !771)
!844 = !DILocation(line: 222, column: 13, scope: !771)
!845 = !DILocation(line: 222, column: 33, scope: !771)
!846 = !DILocation(line: 222, column: 37, scope: !771)
!847 = !DILocation(line: 222, column: 40, scope: !771)
!848 = !DILocation(line: 222, column: 44, scope: !771)
!849 = !DILocation(line: 222, column: 47, scope: !771)
!850 = !DILocation(line: 222, column: 51, scope: !771)
!851 = !DILocation(line: 222, column: 55, scope: !771)
!852 = !DILocation(line: 222, column: 59, scope: !771)
!853 = !DILocation(line: 222, column: 2, scope: !771)
!854 = !DILocation(line: 223, column: 1, scope: !771)
!855 = distinct !DISubprogram(name: "process_patblt", scope: !73, file: !73, line: 227, type: !856, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !298, !858, !63, !332}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!859 = !DILocalVariable(name: "s", arg: 1, scope: !855, file: !73, line: 227, type: !298)
!860 = !DILocation(line: 227, column: 23, scope: !855)
!861 = !DILocalVariable(name: "os", arg: 2, scope: !855, file: !73, line: 227, type: !858)
!862 = !DILocation(line: 227, column: 41, scope: !855)
!863 = !DILocalVariable(name: "present", arg: 3, scope: !855, file: !73, line: 227, type: !63)
!864 = !DILocation(line: 227, column: 52, scope: !855)
!865 = !DILocalVariable(name: "delta", arg: 4, scope: !855, file: !73, line: 227, type: !332)
!866 = !DILocation(line: 227, column: 69, scope: !855)
!867 = !DILocalVariable(name: "brush", scope: !855, file: !73, line: 229, type: !107)
!868 = !DILocation(line: 229, column: 8, scope: !855)
!869 = !DILocation(line: 231, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !855, file: !73, line: 231, column: 6)
!871 = !DILocation(line: 231, column: 14, scope: !870)
!872 = !DILocation(line: 231, column: 6, scope: !855)
!873 = !DILocation(line: 232, column: 16, scope: !870)
!874 = !DILocation(line: 232, column: 20, scope: !870)
!875 = !DILocation(line: 232, column: 24, scope: !870)
!876 = !DILocation(line: 232, column: 27, scope: !870)
!877 = !DILocation(line: 232, column: 3, scope: !870)
!878 = !DILocation(line: 234, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !855, file: !73, line: 234, column: 6)
!880 = !DILocation(line: 234, column: 14, scope: !879)
!881 = !DILocation(line: 234, column: 6, scope: !855)
!882 = !DILocation(line: 235, column: 16, scope: !879)
!883 = !DILocation(line: 235, column: 20, scope: !879)
!884 = !DILocation(line: 235, column: 24, scope: !879)
!885 = !DILocation(line: 235, column: 27, scope: !879)
!886 = !DILocation(line: 235, column: 3, scope: !879)
!887 = !DILocation(line: 237, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !855, file: !73, line: 237, column: 6)
!889 = !DILocation(line: 237, column: 14, scope: !888)
!890 = !DILocation(line: 237, column: 6, scope: !855)
!891 = !DILocation(line: 238, column: 16, scope: !888)
!892 = !DILocation(line: 238, column: 20, scope: !888)
!893 = !DILocation(line: 238, column: 24, scope: !888)
!894 = !DILocation(line: 238, column: 28, scope: !888)
!895 = !DILocation(line: 238, column: 3, scope: !888)
!896 = !DILocation(line: 240, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !855, file: !73, line: 240, column: 6)
!898 = !DILocation(line: 240, column: 14, scope: !897)
!899 = !DILocation(line: 240, column: 6, scope: !855)
!900 = !DILocation(line: 241, column: 16, scope: !897)
!901 = !DILocation(line: 241, column: 20, scope: !897)
!902 = !DILocation(line: 241, column: 24, scope: !897)
!903 = !DILocation(line: 241, column: 28, scope: !897)
!904 = !DILocation(line: 241, column: 3, scope: !897)
!905 = !DILocation(line: 243, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !855, file: !73, line: 243, column: 6)
!907 = !DILocation(line: 243, column: 14, scope: !906)
!908 = !DILocation(line: 243, column: 6, scope: !855)
!909 = !DILocation(line: 244, column: 19, scope: !906)
!910 = !DILocation(line: 244, column: 23, scope: !906)
!911 = !DILocation(line: 244, column: 24, scope: !906)
!912 = !DILocation(line: 244, column: 16, scope: !906)
!913 = !DILocation(line: 244, column: 3, scope: !906)
!914 = !DILocation(line: 244, column: 7, scope: !906)
!915 = !DILocation(line: 244, column: 14, scope: !906)
!916 = !DILocation(line: 246, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !855, file: !73, line: 246, column: 6)
!918 = !DILocation(line: 246, column: 14, scope: !917)
!919 = !DILocation(line: 246, column: 6, scope: !855)
!920 = !DILocation(line: 247, column: 17, scope: !917)
!921 = !DILocation(line: 247, column: 21, scope: !917)
!922 = !DILocation(line: 247, column: 25, scope: !917)
!923 = !DILocation(line: 247, column: 3, scope: !917)
!924 = !DILocation(line: 249, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !855, file: !73, line: 249, column: 6)
!926 = !DILocation(line: 249, column: 14, scope: !925)
!927 = !DILocation(line: 249, column: 6, scope: !855)
!928 = !DILocation(line: 250, column: 17, scope: !925)
!929 = !DILocation(line: 250, column: 21, scope: !925)
!930 = !DILocation(line: 250, column: 25, scope: !925)
!931 = !DILocation(line: 250, column: 3, scope: !925)
!932 = !DILocation(line: 252, column: 18, scope: !855)
!933 = !DILocation(line: 252, column: 22, scope: !855)
!934 = !DILocation(line: 252, column: 26, scope: !855)
!935 = !DILocation(line: 252, column: 33, scope: !855)
!936 = !DILocation(line: 252, column: 41, scope: !855)
!937 = !DILocation(line: 252, column: 2, scope: !855)
!938 = !DILocation(line: 256, column: 9, scope: !855)
!939 = !DILocation(line: 256, column: 13, scope: !855)
!940 = !DILocation(line: 256, column: 21, scope: !855)
!941 = !DILocation(line: 256, column: 25, scope: !855)
!942 = !DILocation(line: 256, column: 28, scope: !855)
!943 = !DILocation(line: 256, column: 32, scope: !855)
!944 = !DILocation(line: 256, column: 35, scope: !855)
!945 = !DILocation(line: 256, column: 39, scope: !855)
!946 = !DILocation(line: 256, column: 43, scope: !855)
!947 = !DILocation(line: 256, column: 47, scope: !855)
!948 = !DILocation(line: 256, column: 51, scope: !855)
!949 = !DILocation(line: 256, column: 55, scope: !855)
!950 = !DILocation(line: 256, column: 61, scope: !855)
!951 = !DILocation(line: 256, column: 68, scope: !855)
!952 = !DILocation(line: 256, column: 72, scope: !855)
!953 = !DILocation(line: 257, column: 9, scope: !855)
!954 = !DILocation(line: 257, column: 13, scope: !855)
!955 = !DILocation(line: 254, column: 2, scope: !855)
!956 = !DILocation(line: 259, column: 23, scope: !855)
!957 = !DILocation(line: 259, column: 27, scope: !855)
!958 = !DILocation(line: 259, column: 2, scope: !855)
!959 = !DILocation(line: 261, column: 14, scope: !855)
!960 = !DILocation(line: 261, column: 18, scope: !855)
!961 = !DILocation(line: 261, column: 25, scope: !855)
!962 = !DILocation(line: 261, column: 36, scope: !855)
!963 = !DILocation(line: 261, column: 40, scope: !855)
!964 = !DILocation(line: 261, column: 47, scope: !855)
!965 = !DILocation(line: 261, column: 55, scope: !855)
!966 = !DILocation(line: 261, column: 32, scope: !855)
!967 = !DILocation(line: 261, column: 12, scope: !855)
!968 = !DILocation(line: 261, column: 63, scope: !855)
!969 = !DILocation(line: 261, column: 67, scope: !855)
!970 = !DILocation(line: 261, column: 70, scope: !855)
!971 = !DILocation(line: 261, column: 74, scope: !855)
!972 = !DILocation(line: 261, column: 77, scope: !855)
!973 = !DILocation(line: 261, column: 81, scope: !855)
!974 = !DILocation(line: 261, column: 85, scope: !855)
!975 = !DILocation(line: 261, column: 89, scope: !855)
!976 = !DILocation(line: 262, column: 13, scope: !855)
!977 = !DILocation(line: 262, column: 17, scope: !855)
!978 = !DILocation(line: 262, column: 27, scope: !855)
!979 = !DILocation(line: 262, column: 31, scope: !855)
!980 = !DILocation(line: 261, column: 2, scope: !855)
!981 = !DILocation(line: 263, column: 1, scope: !855)
!982 = distinct !DISubprogram(name: "process_screenblt", scope: !73, file: !73, line: 267, type: !983, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !298, !985, !63, !332}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!986 = !DILocalVariable(name: "s", arg: 1, scope: !982, file: !73, line: 267, type: !298)
!987 = !DILocation(line: 267, column: 26, scope: !982)
!988 = !DILocalVariable(name: "os", arg: 2, scope: !982, file: !73, line: 267, type: !985)
!989 = !DILocation(line: 267, column: 47, scope: !982)
!990 = !DILocalVariable(name: "present", arg: 3, scope: !982, file: !73, line: 267, type: !63)
!991 = !DILocation(line: 267, column: 58, scope: !982)
!992 = !DILocalVariable(name: "delta", arg: 4, scope: !982, file: !73, line: 267, type: !332)
!993 = !DILocation(line: 267, column: 75, scope: !982)
!994 = !DILocation(line: 269, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !982, file: !73, line: 269, column: 6)
!996 = !DILocation(line: 269, column: 14, scope: !995)
!997 = !DILocation(line: 269, column: 6, scope: !982)
!998 = !DILocation(line: 270, column: 16, scope: !995)
!999 = !DILocation(line: 270, column: 20, scope: !995)
!1000 = !DILocation(line: 270, column: 24, scope: !995)
!1001 = !DILocation(line: 270, column: 27, scope: !995)
!1002 = !DILocation(line: 270, column: 3, scope: !995)
!1003 = !DILocation(line: 272, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !982, file: !73, line: 272, column: 6)
!1005 = !DILocation(line: 272, column: 14, scope: !1004)
!1006 = !DILocation(line: 272, column: 6, scope: !982)
!1007 = !DILocation(line: 273, column: 16, scope: !1004)
!1008 = !DILocation(line: 273, column: 20, scope: !1004)
!1009 = !DILocation(line: 273, column: 24, scope: !1004)
!1010 = !DILocation(line: 273, column: 27, scope: !1004)
!1011 = !DILocation(line: 273, column: 3, scope: !1004)
!1012 = !DILocation(line: 275, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !982, file: !73, line: 275, column: 6)
!1014 = !DILocation(line: 275, column: 14, scope: !1013)
!1015 = !DILocation(line: 275, column: 6, scope: !982)
!1016 = !DILocation(line: 276, column: 16, scope: !1013)
!1017 = !DILocation(line: 276, column: 20, scope: !1013)
!1018 = !DILocation(line: 276, column: 24, scope: !1013)
!1019 = !DILocation(line: 276, column: 28, scope: !1013)
!1020 = !DILocation(line: 276, column: 3, scope: !1013)
!1021 = !DILocation(line: 278, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !982, file: !73, line: 278, column: 6)
!1023 = !DILocation(line: 278, column: 14, scope: !1022)
!1024 = !DILocation(line: 278, column: 6, scope: !982)
!1025 = !DILocation(line: 279, column: 16, scope: !1022)
!1026 = !DILocation(line: 279, column: 20, scope: !1022)
!1027 = !DILocation(line: 279, column: 24, scope: !1022)
!1028 = !DILocation(line: 279, column: 28, scope: !1022)
!1029 = !DILocation(line: 279, column: 3, scope: !1022)
!1030 = !DILocation(line: 281, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !982, file: !73, line: 281, column: 6)
!1032 = !DILocation(line: 281, column: 14, scope: !1031)
!1033 = !DILocation(line: 281, column: 6, scope: !982)
!1034 = !DILocation(line: 282, column: 19, scope: !1031)
!1035 = !DILocation(line: 282, column: 23, scope: !1031)
!1036 = !DILocation(line: 282, column: 24, scope: !1031)
!1037 = !DILocation(line: 282, column: 16, scope: !1031)
!1038 = !DILocation(line: 282, column: 3, scope: !1031)
!1039 = !DILocation(line: 282, column: 7, scope: !1031)
!1040 = !DILocation(line: 282, column: 14, scope: !1031)
!1041 = !DILocation(line: 284, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !982, file: !73, line: 284, column: 6)
!1043 = !DILocation(line: 284, column: 14, scope: !1042)
!1044 = !DILocation(line: 284, column: 6, scope: !982)
!1045 = !DILocation(line: 285, column: 16, scope: !1042)
!1046 = !DILocation(line: 285, column: 20, scope: !1042)
!1047 = !DILocation(line: 285, column: 24, scope: !1042)
!1048 = !DILocation(line: 285, column: 30, scope: !1042)
!1049 = !DILocation(line: 285, column: 3, scope: !1042)
!1050 = !DILocation(line: 287, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !982, file: !73, line: 287, column: 6)
!1052 = !DILocation(line: 287, column: 14, scope: !1051)
!1053 = !DILocation(line: 287, column: 6, scope: !982)
!1054 = !DILocation(line: 288, column: 16, scope: !1051)
!1055 = !DILocation(line: 288, column: 20, scope: !1051)
!1056 = !DILocation(line: 288, column: 24, scope: !1051)
!1057 = !DILocation(line: 288, column: 30, scope: !1051)
!1058 = !DILocation(line: 288, column: 3, scope: !1051)
!1059 = !DILocation(line: 292, column: 9, scope: !982)
!1060 = !DILocation(line: 292, column: 13, scope: !982)
!1061 = !DILocation(line: 292, column: 21, scope: !982)
!1062 = !DILocation(line: 292, column: 25, scope: !982)
!1063 = !DILocation(line: 292, column: 28, scope: !982)
!1064 = !DILocation(line: 292, column: 32, scope: !982)
!1065 = !DILocation(line: 292, column: 35, scope: !982)
!1066 = !DILocation(line: 292, column: 39, scope: !982)
!1067 = !DILocation(line: 292, column: 43, scope: !982)
!1068 = !DILocation(line: 292, column: 47, scope: !982)
!1069 = !DILocation(line: 292, column: 51, scope: !982)
!1070 = !DILocation(line: 292, column: 55, scope: !982)
!1071 = !DILocation(line: 292, column: 61, scope: !982)
!1072 = !DILocation(line: 292, column: 65, scope: !982)
!1073 = !DILocation(line: 290, column: 2, scope: !982)
!1074 = !DILocation(line: 294, column: 16, scope: !982)
!1075 = !DILocation(line: 294, column: 20, scope: !982)
!1076 = !DILocation(line: 294, column: 27, scope: !982)
!1077 = !DILocation(line: 294, column: 15, scope: !982)
!1078 = !DILocation(line: 294, column: 35, scope: !982)
!1079 = !DILocation(line: 294, column: 39, scope: !982)
!1080 = !DILocation(line: 294, column: 42, scope: !982)
!1081 = !DILocation(line: 294, column: 46, scope: !982)
!1082 = !DILocation(line: 294, column: 49, scope: !982)
!1083 = !DILocation(line: 294, column: 53, scope: !982)
!1084 = !DILocation(line: 294, column: 57, scope: !982)
!1085 = !DILocation(line: 294, column: 61, scope: !982)
!1086 = !DILocation(line: 294, column: 65, scope: !982)
!1087 = !DILocation(line: 294, column: 69, scope: !982)
!1088 = !DILocation(line: 294, column: 75, scope: !982)
!1089 = !DILocation(line: 294, column: 79, scope: !982)
!1090 = !DILocation(line: 294, column: 2, scope: !982)
!1091 = !DILocation(line: 295, column: 1, scope: !982)
!1092 = distinct !DISubprogram(name: "process_line", scope: !73, file: !73, line: 299, type: !1093, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !298, !1095, !63, !332}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!1096 = !DILocalVariable(name: "s", arg: 1, scope: !1092, file: !73, line: 299, type: !298)
!1097 = !DILocation(line: 299, column: 21, scope: !1092)
!1098 = !DILocalVariable(name: "os", arg: 2, scope: !1092, file: !73, line: 299, type: !1095)
!1099 = !DILocation(line: 299, column: 37, scope: !1092)
!1100 = !DILocalVariable(name: "present", arg: 3, scope: !1092, file: !73, line: 299, type: !63)
!1101 = !DILocation(line: 299, column: 48, scope: !1092)
!1102 = !DILocalVariable(name: "delta", arg: 4, scope: !1092, file: !73, line: 299, type: !332)
!1103 = !DILocation(line: 299, column: 65, scope: !1092)
!1104 = !DILocation(line: 301, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 301, column: 6)
!1106 = !DILocation(line: 301, column: 14, scope: !1105)
!1107 = !DILocation(line: 301, column: 6, scope: !1092)
!1108 = !DILocation(line: 302, column: 32, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !73, line: 302, column: 3)
!1110 = !DILocation(line: 302, column: 36, scope: !1109)
!1111 = !DILocation(line: 302, column: 19, scope: !1109)
!1112 = !DILocation(line: 302, column: 5, scope: !1109)
!1113 = !DILocation(line: 302, column: 9, scope: !1109)
!1114 = !DILocation(line: 302, column: 17, scope: !1109)
!1115 = !DILocation(line: 302, column: 41, scope: !1109)
!1116 = !DILocation(line: 302, column: 45, scope: !1109)
!1117 = !DILocation(line: 302, column: 47, scope: !1109)
!1118 = !DILocation(line: 302, column: 53, scope: !1109)
!1119 = !DILocation(line: 304, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 304, column: 6)
!1121 = !DILocation(line: 304, column: 14, scope: !1120)
!1122 = !DILocation(line: 304, column: 6, scope: !1092)
!1123 = !DILocation(line: 305, column: 16, scope: !1120)
!1124 = !DILocation(line: 305, column: 20, scope: !1120)
!1125 = !DILocation(line: 305, column: 24, scope: !1120)
!1126 = !DILocation(line: 305, column: 32, scope: !1120)
!1127 = !DILocation(line: 305, column: 3, scope: !1120)
!1128 = !DILocation(line: 307, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 307, column: 6)
!1130 = !DILocation(line: 307, column: 14, scope: !1129)
!1131 = !DILocation(line: 307, column: 6, scope: !1092)
!1132 = !DILocation(line: 308, column: 16, scope: !1129)
!1133 = !DILocation(line: 308, column: 20, scope: !1129)
!1134 = !DILocation(line: 308, column: 24, scope: !1129)
!1135 = !DILocation(line: 308, column: 32, scope: !1129)
!1136 = !DILocation(line: 308, column: 3, scope: !1129)
!1137 = !DILocation(line: 310, column: 6, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 310, column: 6)
!1139 = !DILocation(line: 310, column: 14, scope: !1138)
!1140 = !DILocation(line: 310, column: 6, scope: !1092)
!1141 = !DILocation(line: 311, column: 16, scope: !1138)
!1142 = !DILocation(line: 311, column: 20, scope: !1138)
!1143 = !DILocation(line: 311, column: 24, scope: !1138)
!1144 = !DILocation(line: 311, column: 30, scope: !1138)
!1145 = !DILocation(line: 311, column: 3, scope: !1138)
!1146 = !DILocation(line: 313, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 313, column: 6)
!1148 = !DILocation(line: 313, column: 14, scope: !1147)
!1149 = !DILocation(line: 313, column: 6, scope: !1092)
!1150 = !DILocation(line: 314, column: 16, scope: !1147)
!1151 = !DILocation(line: 314, column: 20, scope: !1147)
!1152 = !DILocation(line: 314, column: 24, scope: !1147)
!1153 = !DILocation(line: 314, column: 30, scope: !1147)
!1154 = !DILocation(line: 314, column: 3, scope: !1147)
!1155 = !DILocation(line: 316, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 316, column: 6)
!1157 = !DILocation(line: 316, column: 14, scope: !1156)
!1158 = !DILocation(line: 316, column: 6, scope: !1092)
!1159 = !DILocation(line: 317, column: 17, scope: !1156)
!1160 = !DILocation(line: 317, column: 21, scope: !1156)
!1161 = !DILocation(line: 317, column: 25, scope: !1156)
!1162 = !DILocation(line: 317, column: 3, scope: !1156)
!1163 = !DILocation(line: 319, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 319, column: 6)
!1165 = !DILocation(line: 319, column: 14, scope: !1164)
!1166 = !DILocation(line: 319, column: 6, scope: !1092)
!1167 = !DILocation(line: 320, column: 19, scope: !1164)
!1168 = !DILocation(line: 320, column: 23, scope: !1164)
!1169 = !DILocation(line: 320, column: 24, scope: !1164)
!1170 = !DILocation(line: 320, column: 16, scope: !1164)
!1171 = !DILocation(line: 320, column: 3, scope: !1164)
!1172 = !DILocation(line: 320, column: 7, scope: !1164)
!1173 = !DILocation(line: 320, column: 14, scope: !1164)
!1174 = !DILocation(line: 322, column: 16, scope: !1092)
!1175 = !DILocation(line: 322, column: 20, scope: !1092)
!1176 = !DILocation(line: 322, column: 24, scope: !1092)
!1177 = !DILocation(line: 322, column: 29, scope: !1092)
!1178 = !DILocation(line: 322, column: 37, scope: !1092)
!1179 = !DILocation(line: 322, column: 2, scope: !1092)
!1180 = !DILocation(line: 325, column: 9, scope: !1092)
!1181 = !DILocation(line: 325, column: 13, scope: !1092)
!1182 = !DILocation(line: 325, column: 21, scope: !1092)
!1183 = !DILocation(line: 325, column: 25, scope: !1092)
!1184 = !DILocation(line: 325, column: 33, scope: !1092)
!1185 = !DILocation(line: 325, column: 37, scope: !1092)
!1186 = !DILocation(line: 325, column: 45, scope: !1092)
!1187 = !DILocation(line: 325, column: 49, scope: !1092)
!1188 = !DILocation(line: 325, column: 55, scope: !1092)
!1189 = !DILocation(line: 325, column: 59, scope: !1092)
!1190 = !DILocation(line: 325, column: 65, scope: !1092)
!1191 = !DILocation(line: 325, column: 69, scope: !1092)
!1192 = !DILocation(line: 325, column: 73, scope: !1092)
!1193 = !DILocation(line: 324, column: 2, scope: !1092)
!1194 = !DILocation(line: 327, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1092, file: !73, line: 327, column: 6)
!1196 = !DILocation(line: 327, column: 10, scope: !1195)
!1197 = !DILocation(line: 327, column: 17, scope: !1195)
!1198 = !DILocation(line: 327, column: 24, scope: !1195)
!1199 = !DILocation(line: 327, column: 27, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1195, file: !73, discriminator: 1)
!1201 = !DILocation(line: 327, column: 31, scope: !1200)
!1202 = !DILocation(line: 327, column: 38, scope: !1200)
!1203 = !DILocation(line: 327, column: 6, scope: !1200)
!1204 = !DILocation(line: 329, column: 60, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1195, file: !73, line: 328, column: 2)
!1206 = !DILocation(line: 329, column: 64, scope: !1205)
!1207 = !DILocation(line: 329, column: 3, scope: !1205)
!1208 = !DILocation(line: 330, column: 3, scope: !1205)
!1209 = !DILocation(line: 333, column: 10, scope: !1092)
!1210 = !DILocation(line: 333, column: 14, scope: !1092)
!1211 = !DILocation(line: 333, column: 21, scope: !1092)
!1212 = !DILocation(line: 333, column: 26, scope: !1092)
!1213 = !DILocation(line: 333, column: 30, scope: !1092)
!1214 = !DILocation(line: 333, column: 38, scope: !1092)
!1215 = !DILocation(line: 333, column: 42, scope: !1092)
!1216 = !DILocation(line: 333, column: 50, scope: !1092)
!1217 = !DILocation(line: 333, column: 54, scope: !1092)
!1218 = !DILocation(line: 333, column: 60, scope: !1092)
!1219 = !DILocation(line: 333, column: 64, scope: !1092)
!1220 = !DILocation(line: 333, column: 71, scope: !1092)
!1221 = !DILocation(line: 333, column: 75, scope: !1092)
!1222 = !DILocation(line: 333, column: 2, scope: !1092)
!1223 = !DILocation(line: 334, column: 1, scope: !1092)
!1224 = !DILocation(line: 334, column: 1, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1092, file: !73, discriminator: 1)
!1226 = distinct !DISubprogram(name: "process_rect", scope: !73, file: !73, line: 338, type: !1227, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !298, !1229, !63, !332}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!1230 = !DILocalVariable(name: "s", arg: 1, scope: !1226, file: !73, line: 338, type: !298)
!1231 = !DILocation(line: 338, column: 21, scope: !1226)
!1232 = !DILocalVariable(name: "os", arg: 2, scope: !1226, file: !73, line: 338, type: !1229)
!1233 = !DILocation(line: 338, column: 37, scope: !1226)
!1234 = !DILocalVariable(name: "present", arg: 3, scope: !1226, file: !73, line: 338, type: !63)
!1235 = !DILocation(line: 338, column: 48, scope: !1226)
!1236 = !DILocalVariable(name: "delta", arg: 4, scope: !1226, file: !73, line: 338, type: !332)
!1237 = !DILocation(line: 338, column: 65, scope: !1226)
!1238 = !DILocalVariable(name: "i", scope: !1226, file: !73, line: 340, type: !63)
!1239 = !DILocation(line: 340, column: 9, scope: !1226)
!1240 = !DILocation(line: 341, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 341, column: 6)
!1242 = !DILocation(line: 341, column: 14, scope: !1241)
!1243 = !DILocation(line: 341, column: 6, scope: !1226)
!1244 = !DILocation(line: 342, column: 16, scope: !1241)
!1245 = !DILocation(line: 342, column: 20, scope: !1241)
!1246 = !DILocation(line: 342, column: 24, scope: !1241)
!1247 = !DILocation(line: 342, column: 27, scope: !1241)
!1248 = !DILocation(line: 342, column: 3, scope: !1241)
!1249 = !DILocation(line: 344, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 344, column: 6)
!1251 = !DILocation(line: 344, column: 14, scope: !1250)
!1252 = !DILocation(line: 344, column: 6, scope: !1226)
!1253 = !DILocation(line: 345, column: 16, scope: !1250)
!1254 = !DILocation(line: 345, column: 20, scope: !1250)
!1255 = !DILocation(line: 345, column: 24, scope: !1250)
!1256 = !DILocation(line: 345, column: 27, scope: !1250)
!1257 = !DILocation(line: 345, column: 3, scope: !1250)
!1258 = !DILocation(line: 347, column: 6, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 347, column: 6)
!1260 = !DILocation(line: 347, column: 14, scope: !1259)
!1261 = !DILocation(line: 347, column: 6, scope: !1226)
!1262 = !DILocation(line: 348, column: 16, scope: !1259)
!1263 = !DILocation(line: 348, column: 20, scope: !1259)
!1264 = !DILocation(line: 348, column: 24, scope: !1259)
!1265 = !DILocation(line: 348, column: 28, scope: !1259)
!1266 = !DILocation(line: 348, column: 3, scope: !1259)
!1267 = !DILocation(line: 350, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 350, column: 6)
!1269 = !DILocation(line: 350, column: 14, scope: !1268)
!1270 = !DILocation(line: 350, column: 6, scope: !1226)
!1271 = !DILocation(line: 351, column: 16, scope: !1268)
!1272 = !DILocation(line: 351, column: 20, scope: !1268)
!1273 = !DILocation(line: 351, column: 24, scope: !1268)
!1274 = !DILocation(line: 351, column: 28, scope: !1268)
!1275 = !DILocation(line: 351, column: 3, scope: !1268)
!1276 = !DILocation(line: 353, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 353, column: 6)
!1278 = !DILocation(line: 353, column: 14, scope: !1277)
!1279 = !DILocation(line: 353, column: 6, scope: !1226)
!1280 = !DILocation(line: 355, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !73, line: 354, column: 2)
!1282 = !DILocation(line: 355, column: 14, scope: !1281)
!1283 = !DILocation(line: 355, column: 15, scope: !1281)
!1284 = !DILocation(line: 355, column: 7, scope: !1281)
!1285 = !DILocation(line: 355, column: 5, scope: !1281)
!1286 = !DILocation(line: 356, column: 17, scope: !1281)
!1287 = !DILocation(line: 356, column: 21, scope: !1281)
!1288 = !DILocation(line: 356, column: 28, scope: !1281)
!1289 = !DILocation(line: 356, column: 44, scope: !1281)
!1290 = !DILocation(line: 356, column: 42, scope: !1281)
!1291 = !DILocation(line: 356, column: 3, scope: !1281)
!1292 = !DILocation(line: 356, column: 7, scope: !1281)
!1293 = !DILocation(line: 356, column: 14, scope: !1281)
!1294 = !DILocation(line: 357, column: 2, scope: !1281)
!1295 = !DILocation(line: 359, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 359, column: 6)
!1297 = !DILocation(line: 359, column: 14, scope: !1296)
!1298 = !DILocation(line: 359, column: 6, scope: !1226)
!1299 = !DILocation(line: 361, column: 10, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !73, line: 360, column: 2)
!1301 = !DILocation(line: 361, column: 14, scope: !1300)
!1302 = !DILocation(line: 361, column: 15, scope: !1300)
!1303 = !DILocation(line: 361, column: 7, scope: !1300)
!1304 = !DILocation(line: 361, column: 5, scope: !1300)
!1305 = !DILocation(line: 362, column: 17, scope: !1300)
!1306 = !DILocation(line: 362, column: 21, scope: !1300)
!1307 = !DILocation(line: 362, column: 28, scope: !1300)
!1308 = !DILocation(line: 362, column: 45, scope: !1300)
!1309 = !DILocation(line: 362, column: 47, scope: !1300)
!1310 = !DILocation(line: 362, column: 42, scope: !1300)
!1311 = !DILocation(line: 362, column: 3, scope: !1300)
!1312 = !DILocation(line: 362, column: 7, scope: !1300)
!1313 = !DILocation(line: 362, column: 14, scope: !1300)
!1314 = !DILocation(line: 363, column: 2, scope: !1300)
!1315 = !DILocation(line: 365, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1226, file: !73, line: 365, column: 6)
!1317 = !DILocation(line: 365, column: 14, scope: !1316)
!1318 = !DILocation(line: 365, column: 6, scope: !1226)
!1319 = !DILocation(line: 367, column: 10, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !73, line: 366, column: 2)
!1321 = !DILocation(line: 367, column: 14, scope: !1320)
!1322 = !DILocation(line: 367, column: 15, scope: !1320)
!1323 = !DILocation(line: 367, column: 7, scope: !1320)
!1324 = !DILocation(line: 367, column: 5, scope: !1320)
!1325 = !DILocation(line: 368, column: 17, scope: !1320)
!1326 = !DILocation(line: 368, column: 21, scope: !1320)
!1327 = !DILocation(line: 368, column: 28, scope: !1320)
!1328 = !DILocation(line: 368, column: 45, scope: !1320)
!1329 = !DILocation(line: 368, column: 47, scope: !1320)
!1330 = !DILocation(line: 368, column: 42, scope: !1320)
!1331 = !DILocation(line: 368, column: 3, scope: !1320)
!1332 = !DILocation(line: 368, column: 7, scope: !1320)
!1333 = !DILocation(line: 368, column: 14, scope: !1320)
!1334 = !DILocation(line: 369, column: 2, scope: !1320)
!1335 = !DILocation(line: 372, column: 9, scope: !1226)
!1336 = !DILocation(line: 372, column: 13, scope: !1226)
!1337 = !DILocation(line: 372, column: 16, scope: !1226)
!1338 = !DILocation(line: 372, column: 20, scope: !1226)
!1339 = !DILocation(line: 372, column: 23, scope: !1226)
!1340 = !DILocation(line: 372, column: 27, scope: !1226)
!1341 = !DILocation(line: 372, column: 31, scope: !1226)
!1342 = !DILocation(line: 372, column: 35, scope: !1226)
!1343 = !DILocation(line: 372, column: 39, scope: !1226)
!1344 = !DILocation(line: 372, column: 43, scope: !1226)
!1345 = !DILocation(line: 371, column: 2, scope: !1226)
!1346 = !DILocation(line: 374, column: 10, scope: !1226)
!1347 = !DILocation(line: 374, column: 14, scope: !1226)
!1348 = !DILocation(line: 374, column: 17, scope: !1226)
!1349 = !DILocation(line: 374, column: 21, scope: !1226)
!1350 = !DILocation(line: 374, column: 24, scope: !1226)
!1351 = !DILocation(line: 374, column: 28, scope: !1226)
!1352 = !DILocation(line: 374, column: 32, scope: !1226)
!1353 = !DILocation(line: 374, column: 36, scope: !1226)
!1354 = !DILocation(line: 374, column: 40, scope: !1226)
!1355 = !DILocation(line: 374, column: 44, scope: !1226)
!1356 = !DILocation(line: 374, column: 2, scope: !1226)
!1357 = !DILocation(line: 375, column: 1, scope: !1226)
!1358 = distinct !DISubprogram(name: "process_desksave", scope: !73, file: !73, line: 379, type: !1359, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !298, !1361, !63, !332}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!1362 = !DILocalVariable(name: "s", arg: 1, scope: !1358, file: !73, line: 379, type: !298)
!1363 = !DILocation(line: 379, column: 25, scope: !1358)
!1364 = !DILocalVariable(name: "os", arg: 2, scope: !1358, file: !73, line: 379, type: !1361)
!1365 = !DILocation(line: 379, column: 45, scope: !1358)
!1366 = !DILocalVariable(name: "present", arg: 3, scope: !1358, file: !73, line: 379, type: !63)
!1367 = !DILocation(line: 379, column: 56, scope: !1358)
!1368 = !DILocalVariable(name: "delta", arg: 4, scope: !1358, file: !73, line: 379, type: !332)
!1369 = !DILocation(line: 379, column: 73, scope: !1358)
!1370 = !DILocalVariable(name: "width", scope: !1358, file: !73, line: 381, type: !327)
!1371 = !DILocation(line: 381, column: 6, scope: !1358)
!1372 = !DILocalVariable(name: "height", scope: !1358, file: !73, line: 381, type: !327)
!1373 = !DILocation(line: 381, column: 13, scope: !1358)
!1374 = !DILocation(line: 383, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 383, column: 6)
!1376 = !DILocation(line: 383, column: 14, scope: !1375)
!1377 = !DILocation(line: 383, column: 6, scope: !1358)
!1378 = !DILocation(line: 384, column: 31, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !73, line: 384, column: 3)
!1380 = !DILocation(line: 384, column: 35, scope: !1379)
!1381 = !DILocation(line: 384, column: 18, scope: !1379)
!1382 = !DILocation(line: 384, column: 5, scope: !1379)
!1383 = !DILocation(line: 384, column: 9, scope: !1379)
!1384 = !DILocation(line: 384, column: 16, scope: !1379)
!1385 = !DILocation(line: 384, column: 40, scope: !1379)
!1386 = !DILocation(line: 384, column: 44, scope: !1379)
!1387 = !DILocation(line: 384, column: 46, scope: !1379)
!1388 = !DILocation(line: 384, column: 52, scope: !1379)
!1389 = !DILocation(line: 386, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 386, column: 6)
!1391 = !DILocation(line: 386, column: 14, scope: !1390)
!1392 = !DILocation(line: 386, column: 6, scope: !1358)
!1393 = !DILocation(line: 387, column: 16, scope: !1390)
!1394 = !DILocation(line: 387, column: 20, scope: !1390)
!1395 = !DILocation(line: 387, column: 24, scope: !1390)
!1396 = !DILocation(line: 387, column: 30, scope: !1390)
!1397 = !DILocation(line: 387, column: 3, scope: !1390)
!1398 = !DILocation(line: 389, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 389, column: 6)
!1400 = !DILocation(line: 389, column: 14, scope: !1399)
!1401 = !DILocation(line: 389, column: 6, scope: !1358)
!1402 = !DILocation(line: 390, column: 16, scope: !1399)
!1403 = !DILocation(line: 390, column: 20, scope: !1399)
!1404 = !DILocation(line: 390, column: 24, scope: !1399)
!1405 = !DILocation(line: 390, column: 29, scope: !1399)
!1406 = !DILocation(line: 390, column: 3, scope: !1399)
!1407 = !DILocation(line: 392, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 392, column: 6)
!1409 = !DILocation(line: 392, column: 14, scope: !1408)
!1410 = !DILocation(line: 392, column: 6, scope: !1358)
!1411 = !DILocation(line: 393, column: 16, scope: !1408)
!1412 = !DILocation(line: 393, column: 20, scope: !1408)
!1413 = !DILocation(line: 393, column: 24, scope: !1408)
!1414 = !DILocation(line: 393, column: 31, scope: !1408)
!1415 = !DILocation(line: 393, column: 3, scope: !1408)
!1416 = !DILocation(line: 395, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 395, column: 6)
!1418 = !DILocation(line: 395, column: 14, scope: !1417)
!1419 = !DILocation(line: 395, column: 6, scope: !1358)
!1420 = !DILocation(line: 396, column: 16, scope: !1417)
!1421 = !DILocation(line: 396, column: 20, scope: !1417)
!1422 = !DILocation(line: 396, column: 24, scope: !1417)
!1423 = !DILocation(line: 396, column: 32, scope: !1417)
!1424 = !DILocation(line: 396, column: 3, scope: !1417)
!1425 = !DILocation(line: 398, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 398, column: 6)
!1427 = !DILocation(line: 398, column: 14, scope: !1426)
!1428 = !DILocation(line: 398, column: 6, scope: !1358)
!1429 = !DILocation(line: 399, column: 19, scope: !1426)
!1430 = !DILocation(line: 399, column: 23, scope: !1426)
!1431 = !DILocation(line: 399, column: 24, scope: !1426)
!1432 = !DILocation(line: 399, column: 16, scope: !1426)
!1433 = !DILocation(line: 399, column: 3, scope: !1426)
!1434 = !DILocation(line: 399, column: 7, scope: !1426)
!1435 = !DILocation(line: 399, column: 14, scope: !1426)
!1436 = !DILocation(line: 402, column: 9, scope: !1358)
!1437 = !DILocation(line: 402, column: 13, scope: !1358)
!1438 = !DILocation(line: 402, column: 19, scope: !1358)
!1439 = !DILocation(line: 402, column: 23, scope: !1358)
!1440 = !DILocation(line: 402, column: 28, scope: !1358)
!1441 = !DILocation(line: 402, column: 32, scope: !1358)
!1442 = !DILocation(line: 402, column: 39, scope: !1358)
!1443 = !DILocation(line: 402, column: 43, scope: !1358)
!1444 = !DILocation(line: 402, column: 51, scope: !1358)
!1445 = !DILocation(line: 402, column: 55, scope: !1358)
!1446 = !DILocation(line: 402, column: 63, scope: !1358)
!1447 = !DILocation(line: 402, column: 67, scope: !1358)
!1448 = !DILocation(line: 401, column: 2, scope: !1358)
!1449 = !DILocation(line: 404, column: 10, scope: !1358)
!1450 = !DILocation(line: 404, column: 14, scope: !1358)
!1451 = !DILocation(line: 404, column: 22, scope: !1358)
!1452 = !DILocation(line: 404, column: 26, scope: !1358)
!1453 = !DILocation(line: 404, column: 20, scope: !1358)
!1454 = !DILocation(line: 404, column: 31, scope: !1358)
!1455 = !DILocation(line: 404, column: 8, scope: !1358)
!1456 = !DILocation(line: 405, column: 11, scope: !1358)
!1457 = !DILocation(line: 405, column: 15, scope: !1358)
!1458 = !DILocation(line: 405, column: 24, scope: !1358)
!1459 = !DILocation(line: 405, column: 28, scope: !1358)
!1460 = !DILocation(line: 405, column: 22, scope: !1358)
!1461 = !DILocation(line: 405, column: 32, scope: !1358)
!1462 = !DILocation(line: 405, column: 9, scope: !1358)
!1463 = !DILocation(line: 407, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1358, file: !73, line: 407, column: 6)
!1465 = !DILocation(line: 407, column: 10, scope: !1464)
!1466 = !DILocation(line: 407, column: 17, scope: !1464)
!1467 = !DILocation(line: 407, column: 6, scope: !1358)
!1468 = !DILocation(line: 408, column: 19, scope: !1464)
!1469 = !DILocation(line: 408, column: 23, scope: !1464)
!1470 = !DILocation(line: 408, column: 31, scope: !1464)
!1471 = !DILocation(line: 408, column: 35, scope: !1464)
!1472 = !DILocation(line: 408, column: 41, scope: !1464)
!1473 = !DILocation(line: 408, column: 45, scope: !1464)
!1474 = !DILocation(line: 408, column: 50, scope: !1464)
!1475 = !DILocation(line: 408, column: 57, scope: !1464)
!1476 = !DILocation(line: 408, column: 3, scope: !1464)
!1477 = !DILocation(line: 410, column: 22, scope: !1464)
!1478 = !DILocation(line: 410, column: 26, scope: !1464)
!1479 = !DILocation(line: 410, column: 34, scope: !1464)
!1480 = !DILocation(line: 410, column: 38, scope: !1464)
!1481 = !DILocation(line: 410, column: 44, scope: !1464)
!1482 = !DILocation(line: 410, column: 48, scope: !1464)
!1483 = !DILocation(line: 410, column: 53, scope: !1464)
!1484 = !DILocation(line: 410, column: 60, scope: !1464)
!1485 = !DILocation(line: 410, column: 3, scope: !1464)
!1486 = !DILocation(line: 411, column: 1, scope: !1358)
!1487 = distinct !DISubprogram(name: "process_memblt", scope: !73, file: !73, line: 415, type: !1488, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !298, !1490, !63, !332}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!1491 = !DILocalVariable(name: "s", arg: 1, scope: !1487, file: !73, line: 415, type: !298)
!1492 = !DILocation(line: 415, column: 23, scope: !1487)
!1493 = !DILocalVariable(name: "os", arg: 2, scope: !1487, file: !73, line: 415, type: !1490)
!1494 = !DILocation(line: 415, column: 41, scope: !1487)
!1495 = !DILocalVariable(name: "present", arg: 3, scope: !1487, file: !73, line: 415, type: !63)
!1496 = !DILocation(line: 415, column: 52, scope: !1487)
!1497 = !DILocalVariable(name: "delta", arg: 4, scope: !1487, file: !73, line: 415, type: !332)
!1498 = !DILocation(line: 415, column: 69, scope: !1487)
!1499 = !DILocalVariable(name: "bitmap", scope: !1487, file: !73, line: 417, type: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HBITMAP", file: !40, line: 46, baseType: !61)
!1501 = !DILocation(line: 417, column: 13, scope: !1487)
!1502 = !DILocation(line: 419, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 419, column: 6)
!1504 = !DILocation(line: 419, column: 14, scope: !1503)
!1505 = !DILocation(line: 419, column: 6, scope: !1487)
!1506 = !DILocation(line: 421, column: 21, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !73, line: 420, column: 2)
!1508 = !DILocation(line: 421, column: 25, scope: !1507)
!1509 = !DILocation(line: 421, column: 26, scope: !1507)
!1510 = !DILocation(line: 421, column: 18, scope: !1507)
!1511 = !DILocation(line: 421, column: 3, scope: !1507)
!1512 = !DILocation(line: 421, column: 7, scope: !1507)
!1513 = !DILocation(line: 421, column: 16, scope: !1507)
!1514 = !DILocation(line: 422, column: 25, scope: !1507)
!1515 = !DILocation(line: 422, column: 29, scope: !1507)
!1516 = !DILocation(line: 422, column: 30, scope: !1507)
!1517 = !DILocation(line: 422, column: 22, scope: !1507)
!1518 = !DILocation(line: 422, column: 3, scope: !1507)
!1519 = !DILocation(line: 422, column: 7, scope: !1507)
!1520 = !DILocation(line: 422, column: 20, scope: !1507)
!1521 = !DILocation(line: 423, column: 2, scope: !1507)
!1522 = !DILocation(line: 425, column: 6, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 425, column: 6)
!1524 = !DILocation(line: 425, column: 14, scope: !1523)
!1525 = !DILocation(line: 425, column: 6, scope: !1487)
!1526 = !DILocation(line: 426, column: 16, scope: !1523)
!1527 = !DILocation(line: 426, column: 20, scope: !1523)
!1528 = !DILocation(line: 426, column: 24, scope: !1523)
!1529 = !DILocation(line: 426, column: 27, scope: !1523)
!1530 = !DILocation(line: 426, column: 3, scope: !1523)
!1531 = !DILocation(line: 428, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 428, column: 6)
!1533 = !DILocation(line: 428, column: 14, scope: !1532)
!1534 = !DILocation(line: 428, column: 6, scope: !1487)
!1535 = !DILocation(line: 429, column: 16, scope: !1532)
!1536 = !DILocation(line: 429, column: 20, scope: !1532)
!1537 = !DILocation(line: 429, column: 24, scope: !1532)
!1538 = !DILocation(line: 429, column: 27, scope: !1532)
!1539 = !DILocation(line: 429, column: 3, scope: !1532)
!1540 = !DILocation(line: 431, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 431, column: 6)
!1542 = !DILocation(line: 431, column: 14, scope: !1541)
!1543 = !DILocation(line: 431, column: 6, scope: !1487)
!1544 = !DILocation(line: 432, column: 16, scope: !1541)
!1545 = !DILocation(line: 432, column: 20, scope: !1541)
!1546 = !DILocation(line: 432, column: 24, scope: !1541)
!1547 = !DILocation(line: 432, column: 28, scope: !1541)
!1548 = !DILocation(line: 432, column: 3, scope: !1541)
!1549 = !DILocation(line: 434, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 434, column: 6)
!1551 = !DILocation(line: 434, column: 14, scope: !1550)
!1552 = !DILocation(line: 434, column: 6, scope: !1487)
!1553 = !DILocation(line: 435, column: 16, scope: !1550)
!1554 = !DILocation(line: 435, column: 20, scope: !1550)
!1555 = !DILocation(line: 435, column: 24, scope: !1550)
!1556 = !DILocation(line: 435, column: 28, scope: !1550)
!1557 = !DILocation(line: 435, column: 3, scope: !1550)
!1558 = !DILocation(line: 437, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 437, column: 6)
!1560 = !DILocation(line: 437, column: 14, scope: !1559)
!1561 = !DILocation(line: 437, column: 6, scope: !1487)
!1562 = !DILocation(line: 438, column: 19, scope: !1559)
!1563 = !DILocation(line: 438, column: 23, scope: !1559)
!1564 = !DILocation(line: 438, column: 24, scope: !1559)
!1565 = !DILocation(line: 438, column: 16, scope: !1559)
!1566 = !DILocation(line: 438, column: 3, scope: !1559)
!1567 = !DILocation(line: 438, column: 7, scope: !1559)
!1568 = !DILocation(line: 438, column: 14, scope: !1559)
!1569 = !DILocation(line: 440, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 440, column: 6)
!1571 = !DILocation(line: 440, column: 14, scope: !1570)
!1572 = !DILocation(line: 440, column: 6, scope: !1487)
!1573 = !DILocation(line: 441, column: 16, scope: !1570)
!1574 = !DILocation(line: 441, column: 20, scope: !1570)
!1575 = !DILocation(line: 441, column: 24, scope: !1570)
!1576 = !DILocation(line: 441, column: 30, scope: !1570)
!1577 = !DILocation(line: 441, column: 3, scope: !1570)
!1578 = !DILocation(line: 443, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 443, column: 6)
!1580 = !DILocation(line: 443, column: 14, scope: !1579)
!1581 = !DILocation(line: 443, column: 6, scope: !1487)
!1582 = !DILocation(line: 444, column: 16, scope: !1579)
!1583 = !DILocation(line: 444, column: 20, scope: !1579)
!1584 = !DILocation(line: 444, column: 24, scope: !1579)
!1585 = !DILocation(line: 444, column: 30, scope: !1579)
!1586 = !DILocation(line: 444, column: 3, scope: !1579)
!1587 = !DILocation(line: 446, column: 6, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 446, column: 6)
!1589 = !DILocation(line: 446, column: 14, scope: !1588)
!1590 = !DILocation(line: 446, column: 6, scope: !1487)
!1591 = !DILocation(line: 447, column: 34, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !73, line: 447, column: 3)
!1593 = !DILocation(line: 447, column: 38, scope: !1592)
!1594 = !DILocation(line: 447, column: 21, scope: !1592)
!1595 = !DILocation(line: 447, column: 5, scope: !1592)
!1596 = !DILocation(line: 447, column: 9, scope: !1592)
!1597 = !DILocation(line: 447, column: 19, scope: !1592)
!1598 = !DILocation(line: 447, column: 43, scope: !1592)
!1599 = !DILocation(line: 447, column: 47, scope: !1592)
!1600 = !DILocation(line: 447, column: 49, scope: !1592)
!1601 = !DILocation(line: 447, column: 55, scope: !1592)
!1602 = !DILocation(line: 450, column: 79, scope: !1487)
!1603 = !DILocation(line: 450, column: 83, scope: !1487)
!1604 = !DILocation(line: 451, column: 9, scope: !1487)
!1605 = !DILocation(line: 451, column: 13, scope: !1487)
!1606 = !DILocation(line: 451, column: 16, scope: !1487)
!1607 = !DILocation(line: 451, column: 20, scope: !1487)
!1608 = !DILocation(line: 451, column: 23, scope: !1487)
!1609 = !DILocation(line: 451, column: 27, scope: !1487)
!1610 = !DILocation(line: 451, column: 31, scope: !1487)
!1611 = !DILocation(line: 451, column: 35, scope: !1487)
!1612 = !DILocation(line: 451, column: 39, scope: !1487)
!1613 = !DILocation(line: 451, column: 43, scope: !1487)
!1614 = !DILocation(line: 451, column: 53, scope: !1487)
!1615 = !DILocation(line: 451, column: 57, scope: !1487)
!1616 = !DILocation(line: 449, column: 2, scope: !1487)
!1617 = !DILocation(line: 453, column: 28, scope: !1487)
!1618 = !DILocation(line: 453, column: 32, scope: !1487)
!1619 = !DILocation(line: 453, column: 42, scope: !1487)
!1620 = !DILocation(line: 453, column: 46, scope: !1487)
!1621 = !DILocation(line: 453, column: 11, scope: !1487)
!1622 = !DILocation(line: 453, column: 9, scope: !1487)
!1623 = !DILocation(line: 454, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1487, file: !73, line: 454, column: 6)
!1625 = !DILocation(line: 454, column: 13, scope: !1624)
!1626 = !DILocation(line: 454, column: 6, scope: !1487)
!1627 = !DILocation(line: 455, column: 3, scope: !1624)
!1628 = !DILocation(line: 457, column: 13, scope: !1487)
!1629 = !DILocation(line: 457, column: 17, scope: !1487)
!1630 = !DILocation(line: 457, column: 24, scope: !1487)
!1631 = !DILocation(line: 457, column: 12, scope: !1487)
!1632 = !DILocation(line: 457, column: 32, scope: !1487)
!1633 = !DILocation(line: 457, column: 36, scope: !1487)
!1634 = !DILocation(line: 457, column: 39, scope: !1487)
!1635 = !DILocation(line: 457, column: 43, scope: !1487)
!1636 = !DILocation(line: 457, column: 46, scope: !1487)
!1637 = !DILocation(line: 457, column: 50, scope: !1487)
!1638 = !DILocation(line: 457, column: 54, scope: !1487)
!1639 = !DILocation(line: 457, column: 58, scope: !1487)
!1640 = !DILocation(line: 457, column: 62, scope: !1487)
!1641 = !DILocation(line: 457, column: 70, scope: !1487)
!1642 = !DILocation(line: 457, column: 74, scope: !1487)
!1643 = !DILocation(line: 457, column: 80, scope: !1487)
!1644 = !DILocation(line: 457, column: 84, scope: !1487)
!1645 = !DILocation(line: 457, column: 2, scope: !1487)
!1646 = !DILocation(line: 458, column: 1, scope: !1487)
!1647 = !DILocation(line: 458, column: 1, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1487, file: !73, discriminator: 1)
!1649 = distinct !DISubprogram(name: "process_triblt", scope: !73, file: !73, line: 462, type: !1650, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !298, !1652, !63, !332}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!1653 = !DILocalVariable(name: "s", arg: 1, scope: !1649, file: !73, line: 462, type: !298)
!1654 = !DILocation(line: 462, column: 23, scope: !1649)
!1655 = !DILocalVariable(name: "os", arg: 2, scope: !1649, file: !73, line: 462, type: !1652)
!1656 = !DILocation(line: 462, column: 41, scope: !1649)
!1657 = !DILocalVariable(name: "present", arg: 3, scope: !1649, file: !73, line: 462, type: !63)
!1658 = !DILocation(line: 462, column: 52, scope: !1649)
!1659 = !DILocalVariable(name: "delta", arg: 4, scope: !1649, file: !73, line: 462, type: !332)
!1660 = !DILocation(line: 462, column: 69, scope: !1649)
!1661 = !DILocalVariable(name: "bitmap", scope: !1649, file: !73, line: 464, type: !1500)
!1662 = !DILocation(line: 464, column: 13, scope: !1649)
!1663 = !DILocalVariable(name: "brush", scope: !1649, file: !73, line: 465, type: !107)
!1664 = !DILocation(line: 465, column: 8, scope: !1649)
!1665 = !DILocation(line: 467, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 467, column: 6)
!1667 = !DILocation(line: 467, column: 14, scope: !1666)
!1668 = !DILocation(line: 467, column: 6, scope: !1649)
!1669 = !DILocation(line: 469, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !73, line: 468, column: 2)
!1671 = !DILocation(line: 469, column: 25, scope: !1670)
!1672 = !DILocation(line: 469, column: 26, scope: !1670)
!1673 = !DILocation(line: 469, column: 18, scope: !1670)
!1674 = !DILocation(line: 469, column: 3, scope: !1670)
!1675 = !DILocation(line: 469, column: 7, scope: !1670)
!1676 = !DILocation(line: 469, column: 16, scope: !1670)
!1677 = !DILocation(line: 470, column: 25, scope: !1670)
!1678 = !DILocation(line: 470, column: 29, scope: !1670)
!1679 = !DILocation(line: 470, column: 30, scope: !1670)
!1680 = !DILocation(line: 470, column: 22, scope: !1670)
!1681 = !DILocation(line: 470, column: 3, scope: !1670)
!1682 = !DILocation(line: 470, column: 7, scope: !1670)
!1683 = !DILocation(line: 470, column: 20, scope: !1670)
!1684 = !DILocation(line: 471, column: 2, scope: !1670)
!1685 = !DILocation(line: 473, column: 6, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 473, column: 6)
!1687 = !DILocation(line: 473, column: 14, scope: !1686)
!1688 = !DILocation(line: 473, column: 6, scope: !1649)
!1689 = !DILocation(line: 474, column: 16, scope: !1686)
!1690 = !DILocation(line: 474, column: 20, scope: !1686)
!1691 = !DILocation(line: 474, column: 24, scope: !1686)
!1692 = !DILocation(line: 474, column: 27, scope: !1686)
!1693 = !DILocation(line: 474, column: 3, scope: !1686)
!1694 = !DILocation(line: 476, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 476, column: 6)
!1696 = !DILocation(line: 476, column: 14, scope: !1695)
!1697 = !DILocation(line: 476, column: 6, scope: !1649)
!1698 = !DILocation(line: 477, column: 16, scope: !1695)
!1699 = !DILocation(line: 477, column: 20, scope: !1695)
!1700 = !DILocation(line: 477, column: 24, scope: !1695)
!1701 = !DILocation(line: 477, column: 27, scope: !1695)
!1702 = !DILocation(line: 477, column: 3, scope: !1695)
!1703 = !DILocation(line: 479, column: 6, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 479, column: 6)
!1705 = !DILocation(line: 479, column: 14, scope: !1704)
!1706 = !DILocation(line: 479, column: 6, scope: !1649)
!1707 = !DILocation(line: 480, column: 16, scope: !1704)
!1708 = !DILocation(line: 480, column: 20, scope: !1704)
!1709 = !DILocation(line: 480, column: 24, scope: !1704)
!1710 = !DILocation(line: 480, column: 28, scope: !1704)
!1711 = !DILocation(line: 480, column: 3, scope: !1704)
!1712 = !DILocation(line: 482, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 482, column: 6)
!1714 = !DILocation(line: 482, column: 14, scope: !1713)
!1715 = !DILocation(line: 482, column: 6, scope: !1649)
!1716 = !DILocation(line: 483, column: 16, scope: !1713)
!1717 = !DILocation(line: 483, column: 20, scope: !1713)
!1718 = !DILocation(line: 483, column: 24, scope: !1713)
!1719 = !DILocation(line: 483, column: 28, scope: !1713)
!1720 = !DILocation(line: 483, column: 3, scope: !1713)
!1721 = !DILocation(line: 485, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 485, column: 6)
!1723 = !DILocation(line: 485, column: 14, scope: !1722)
!1724 = !DILocation(line: 485, column: 6, scope: !1649)
!1725 = !DILocation(line: 486, column: 19, scope: !1722)
!1726 = !DILocation(line: 486, column: 23, scope: !1722)
!1727 = !DILocation(line: 486, column: 24, scope: !1722)
!1728 = !DILocation(line: 486, column: 16, scope: !1722)
!1729 = !DILocation(line: 486, column: 3, scope: !1722)
!1730 = !DILocation(line: 486, column: 7, scope: !1722)
!1731 = !DILocation(line: 486, column: 14, scope: !1722)
!1732 = !DILocation(line: 488, column: 6, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 488, column: 6)
!1734 = !DILocation(line: 488, column: 14, scope: !1733)
!1735 = !DILocation(line: 488, column: 6, scope: !1649)
!1736 = !DILocation(line: 489, column: 16, scope: !1733)
!1737 = !DILocation(line: 489, column: 20, scope: !1733)
!1738 = !DILocation(line: 489, column: 24, scope: !1733)
!1739 = !DILocation(line: 489, column: 30, scope: !1733)
!1740 = !DILocation(line: 489, column: 3, scope: !1733)
!1741 = !DILocation(line: 491, column: 6, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 491, column: 6)
!1743 = !DILocation(line: 491, column: 14, scope: !1742)
!1744 = !DILocation(line: 491, column: 6, scope: !1649)
!1745 = !DILocation(line: 492, column: 16, scope: !1742)
!1746 = !DILocation(line: 492, column: 20, scope: !1742)
!1747 = !DILocation(line: 492, column: 24, scope: !1742)
!1748 = !DILocation(line: 492, column: 30, scope: !1742)
!1749 = !DILocation(line: 492, column: 3, scope: !1742)
!1750 = !DILocation(line: 494, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 494, column: 6)
!1752 = !DILocation(line: 494, column: 14, scope: !1751)
!1753 = !DILocation(line: 494, column: 6, scope: !1649)
!1754 = !DILocation(line: 495, column: 17, scope: !1751)
!1755 = !DILocation(line: 495, column: 21, scope: !1751)
!1756 = !DILocation(line: 495, column: 25, scope: !1751)
!1757 = !DILocation(line: 495, column: 3, scope: !1751)
!1758 = !DILocation(line: 497, column: 6, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 497, column: 6)
!1760 = !DILocation(line: 497, column: 14, scope: !1759)
!1761 = !DILocation(line: 497, column: 6, scope: !1649)
!1762 = !DILocation(line: 498, column: 17, scope: !1759)
!1763 = !DILocation(line: 498, column: 21, scope: !1759)
!1764 = !DILocation(line: 498, column: 25, scope: !1759)
!1765 = !DILocation(line: 498, column: 3, scope: !1759)
!1766 = !DILocation(line: 500, column: 18, scope: !1649)
!1767 = !DILocation(line: 500, column: 22, scope: !1649)
!1768 = !DILocation(line: 500, column: 26, scope: !1649)
!1769 = !DILocation(line: 500, column: 33, scope: !1649)
!1770 = !DILocation(line: 500, column: 41, scope: !1649)
!1771 = !DILocation(line: 500, column: 2, scope: !1649)
!1772 = !DILocation(line: 502, column: 6, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 502, column: 6)
!1774 = !DILocation(line: 502, column: 14, scope: !1773)
!1775 = !DILocation(line: 502, column: 6, scope: !1649)
!1776 = !DILocation(line: 503, column: 34, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !73, line: 503, column: 3)
!1778 = !DILocation(line: 503, column: 38, scope: !1777)
!1779 = !DILocation(line: 503, column: 21, scope: !1777)
!1780 = !DILocation(line: 503, column: 5, scope: !1777)
!1781 = !DILocation(line: 503, column: 9, scope: !1777)
!1782 = !DILocation(line: 503, column: 19, scope: !1777)
!1783 = !DILocation(line: 503, column: 43, scope: !1777)
!1784 = !DILocation(line: 503, column: 47, scope: !1777)
!1785 = !DILocation(line: 503, column: 49, scope: !1777)
!1786 = !DILocation(line: 503, column: 55, scope: !1777)
!1787 = !DILocation(line: 505, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 505, column: 6)
!1789 = !DILocation(line: 505, column: 14, scope: !1788)
!1790 = !DILocation(line: 505, column: 6, scope: !1649)
!1791 = !DILocation(line: 506, column: 32, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !73, line: 506, column: 3)
!1793 = !DILocation(line: 506, column: 36, scope: !1792)
!1794 = !DILocation(line: 506, column: 19, scope: !1792)
!1795 = !DILocation(line: 506, column: 5, scope: !1792)
!1796 = !DILocation(line: 506, column: 9, scope: !1792)
!1797 = !DILocation(line: 506, column: 17, scope: !1792)
!1798 = !DILocation(line: 506, column: 41, scope: !1792)
!1799 = !DILocation(line: 506, column: 45, scope: !1792)
!1800 = !DILocation(line: 506, column: 47, scope: !1792)
!1801 = !DILocation(line: 506, column: 53, scope: !1792)
!1802 = !DILocation(line: 510, column: 9, scope: !1649)
!1803 = !DILocation(line: 510, column: 13, scope: !1649)
!1804 = !DILocation(line: 510, column: 21, scope: !1649)
!1805 = !DILocation(line: 510, column: 25, scope: !1649)
!1806 = !DILocation(line: 510, column: 28, scope: !1649)
!1807 = !DILocation(line: 510, column: 32, scope: !1649)
!1808 = !DILocation(line: 510, column: 35, scope: !1649)
!1809 = !DILocation(line: 510, column: 39, scope: !1649)
!1810 = !DILocation(line: 510, column: 43, scope: !1649)
!1811 = !DILocation(line: 510, column: 47, scope: !1649)
!1812 = !DILocation(line: 510, column: 51, scope: !1649)
!1813 = !DILocation(line: 510, column: 55, scope: !1649)
!1814 = !DILocation(line: 510, column: 65, scope: !1649)
!1815 = !DILocation(line: 510, column: 69, scope: !1649)
!1816 = !DILocation(line: 511, column: 9, scope: !1649)
!1817 = !DILocation(line: 511, column: 13, scope: !1649)
!1818 = !DILocation(line: 511, column: 19, scope: !1649)
!1819 = !DILocation(line: 511, column: 26, scope: !1649)
!1820 = !DILocation(line: 511, column: 30, scope: !1649)
!1821 = !DILocation(line: 511, column: 40, scope: !1649)
!1822 = !DILocation(line: 511, column: 44, scope: !1649)
!1823 = !DILocation(line: 508, column: 2, scope: !1649)
!1824 = !DILocation(line: 513, column: 28, scope: !1649)
!1825 = !DILocation(line: 513, column: 32, scope: !1649)
!1826 = !DILocation(line: 513, column: 42, scope: !1649)
!1827 = !DILocation(line: 513, column: 46, scope: !1649)
!1828 = !DILocation(line: 513, column: 11, scope: !1649)
!1829 = !DILocation(line: 513, column: 9, scope: !1649)
!1830 = !DILocation(line: 514, column: 6, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1649, file: !73, line: 514, column: 6)
!1832 = !DILocation(line: 514, column: 13, scope: !1831)
!1833 = !DILocation(line: 514, column: 6, scope: !1649)
!1834 = !DILocation(line: 515, column: 3, scope: !1831)
!1835 = !DILocation(line: 517, column: 23, scope: !1649)
!1836 = !DILocation(line: 517, column: 27, scope: !1649)
!1837 = !DILocation(line: 517, column: 2, scope: !1649)
!1838 = !DILocation(line: 519, column: 12, scope: !1649)
!1839 = !DILocation(line: 519, column: 16, scope: !1649)
!1840 = !DILocation(line: 519, column: 24, scope: !1649)
!1841 = !DILocation(line: 519, column: 28, scope: !1649)
!1842 = !DILocation(line: 519, column: 31, scope: !1649)
!1843 = !DILocation(line: 519, column: 35, scope: !1649)
!1844 = !DILocation(line: 519, column: 38, scope: !1649)
!1845 = !DILocation(line: 519, column: 42, scope: !1649)
!1846 = !DILocation(line: 519, column: 46, scope: !1649)
!1847 = !DILocation(line: 519, column: 50, scope: !1649)
!1848 = !DILocation(line: 520, column: 5, scope: !1649)
!1849 = !DILocation(line: 520, column: 13, scope: !1649)
!1850 = !DILocation(line: 520, column: 17, scope: !1649)
!1851 = !DILocation(line: 520, column: 23, scope: !1649)
!1852 = !DILocation(line: 520, column: 27, scope: !1649)
!1853 = !DILocation(line: 520, column: 41, scope: !1649)
!1854 = !DILocation(line: 520, column: 45, scope: !1649)
!1855 = !DILocation(line: 520, column: 55, scope: !1649)
!1856 = !DILocation(line: 520, column: 59, scope: !1649)
!1857 = !DILocation(line: 519, column: 2, scope: !1649)
!1858 = !DILocation(line: 521, column: 1, scope: !1649)
!1859 = !DILocation(line: 521, column: 1, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1649, file: !73, discriminator: 1)
!1861 = distinct !DISubprogram(name: "process_polygon", scope: !73, file: !73, line: 525, type: !1862, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !298, !1864, !63, !332}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!1865 = !DILocalVariable(name: "s", arg: 1, scope: !1861, file: !73, line: 525, type: !298)
!1866 = !DILocation(line: 525, column: 24, scope: !1861)
!1867 = !DILocalVariable(name: "os", arg: 2, scope: !1861, file: !73, line: 525, type: !1864)
!1868 = !DILocation(line: 525, column: 43, scope: !1861)
!1869 = !DILocalVariable(name: "present", arg: 3, scope: !1861, file: !73, line: 525, type: !63)
!1870 = !DILocation(line: 525, column: 54, scope: !1861)
!1871 = !DILocalVariable(name: "delta", arg: 4, scope: !1861, file: !73, line: 525, type: !332)
!1872 = !DILocation(line: 525, column: 71, scope: !1861)
!1873 = !DILocalVariable(name: "index", scope: !1861, file: !73, line: 527, type: !327)
!1874 = !DILocation(line: 527, column: 6, scope: !1861)
!1875 = !DILocalVariable(name: "data", scope: !1861, file: !73, line: 527, type: !327)
!1876 = !DILocation(line: 527, column: 13, scope: !1861)
!1877 = !DILocalVariable(name: "next", scope: !1861, file: !73, line: 527, type: !327)
!1878 = !DILocation(line: 527, column: 19, scope: !1861)
!1879 = !DILocalVariable(name: "flags", scope: !1861, file: !73, line: 528, type: !52)
!1880 = !DILocation(line: 528, column: 8, scope: !1861)
!1881 = !DILocalVariable(name: "points", scope: !1861, file: !73, line: 529, type: !65)
!1882 = !DILocation(line: 529, column: 12, scope: !1861)
!1883 = !DILocation(line: 531, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 531, column: 6)
!1885 = !DILocation(line: 531, column: 14, scope: !1884)
!1886 = !DILocation(line: 531, column: 6, scope: !1861)
!1887 = !DILocation(line: 532, column: 16, scope: !1884)
!1888 = !DILocation(line: 532, column: 20, scope: !1884)
!1889 = !DILocation(line: 532, column: 24, scope: !1884)
!1890 = !DILocation(line: 532, column: 27, scope: !1884)
!1891 = !DILocation(line: 532, column: 3, scope: !1884)
!1892 = !DILocation(line: 534, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 534, column: 6)
!1894 = !DILocation(line: 534, column: 14, scope: !1893)
!1895 = !DILocation(line: 534, column: 6, scope: !1861)
!1896 = !DILocation(line: 535, column: 16, scope: !1893)
!1897 = !DILocation(line: 535, column: 20, scope: !1893)
!1898 = !DILocation(line: 535, column: 24, scope: !1893)
!1899 = !DILocation(line: 535, column: 27, scope: !1893)
!1900 = !DILocation(line: 535, column: 3, scope: !1893)
!1901 = !DILocation(line: 537, column: 6, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 537, column: 6)
!1903 = !DILocation(line: 537, column: 14, scope: !1902)
!1904 = !DILocation(line: 537, column: 6, scope: !1861)
!1905 = !DILocation(line: 538, column: 19, scope: !1902)
!1906 = !DILocation(line: 538, column: 23, scope: !1902)
!1907 = !DILocation(line: 538, column: 24, scope: !1902)
!1908 = !DILocation(line: 538, column: 16, scope: !1902)
!1909 = !DILocation(line: 538, column: 3, scope: !1902)
!1910 = !DILocation(line: 538, column: 7, scope: !1902)
!1911 = !DILocation(line: 538, column: 14, scope: !1902)
!1912 = !DILocation(line: 540, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 540, column: 6)
!1914 = !DILocation(line: 540, column: 14, scope: !1913)
!1915 = !DILocation(line: 540, column: 6, scope: !1861)
!1916 = !DILocation(line: 541, column: 21, scope: !1913)
!1917 = !DILocation(line: 541, column: 25, scope: !1913)
!1918 = !DILocation(line: 541, column: 26, scope: !1913)
!1919 = !DILocation(line: 541, column: 18, scope: !1913)
!1920 = !DILocation(line: 541, column: 3, scope: !1913)
!1921 = !DILocation(line: 541, column: 7, scope: !1913)
!1922 = !DILocation(line: 541, column: 16, scope: !1913)
!1923 = !DILocation(line: 543, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 543, column: 6)
!1925 = !DILocation(line: 543, column: 14, scope: !1924)
!1926 = !DILocation(line: 543, column: 6, scope: !1861)
!1927 = !DILocation(line: 544, column: 17, scope: !1924)
!1928 = !DILocation(line: 544, column: 21, scope: !1924)
!1929 = !DILocation(line: 544, column: 25, scope: !1924)
!1930 = !DILocation(line: 544, column: 3, scope: !1924)
!1931 = !DILocation(line: 546, column: 6, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 546, column: 6)
!1933 = !DILocation(line: 546, column: 14, scope: !1932)
!1934 = !DILocation(line: 546, column: 6, scope: !1861)
!1935 = !DILocation(line: 547, column: 20, scope: !1932)
!1936 = !DILocation(line: 547, column: 24, scope: !1932)
!1937 = !DILocation(line: 547, column: 25, scope: !1932)
!1938 = !DILocation(line: 547, column: 17, scope: !1932)
!1939 = !DILocation(line: 547, column: 3, scope: !1932)
!1940 = !DILocation(line: 547, column: 7, scope: !1932)
!1941 = !DILocation(line: 547, column: 15, scope: !1932)
!1942 = !DILocation(line: 549, column: 6, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 549, column: 6)
!1944 = !DILocation(line: 549, column: 14, scope: !1943)
!1945 = !DILocation(line: 549, column: 6, scope: !1861)
!1946 = !DILocation(line: 551, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !73, line: 550, column: 2)
!1948 = !DILocation(line: 551, column: 25, scope: !1947)
!1949 = !DILocation(line: 551, column: 26, scope: !1947)
!1950 = !DILocation(line: 551, column: 18, scope: !1947)
!1951 = !DILocation(line: 551, column: 3, scope: !1947)
!1952 = !DILocation(line: 551, column: 7, scope: !1947)
!1953 = !DILocation(line: 551, column: 16, scope: !1947)
!1954 = !DILocation(line: 552, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1947, file: !73, line: 552, column: 3)
!1956 = !DILocation(line: 552, column: 16, scope: !1955)
!1957 = !DILocation(line: 552, column: 5, scope: !1955)
!1958 = !DILocation(line: 552, column: 22, scope: !1955)
!1959 = !DILocation(line: 552, column: 26, scope: !1955)
!1960 = !DILocation(line: 552, column: 28, scope: !1955)
!1961 = !DILocation(line: 552, column: 32, scope: !1955)
!1962 = !DILocation(line: 552, column: 53, scope: !1955)
!1963 = !DILocation(line: 552, column: 57, scope: !1955)
!1964 = !DILocation(line: 552, column: 44, scope: !1955)
!1965 = !DILocation(line: 552, column: 48, scope: !1955)
!1966 = !DILocation(line: 552, column: 50, scope: !1955)
!1967 = !DILocation(line: 553, column: 2, scope: !1947)
!1968 = !DILocation(line: 556, column: 80, scope: !1861)
!1969 = !DILocation(line: 556, column: 84, scope: !1861)
!1970 = !DILocation(line: 556, column: 87, scope: !1861)
!1971 = !DILocation(line: 556, column: 91, scope: !1861)
!1972 = !DILocation(line: 557, column: 9, scope: !1861)
!1973 = !DILocation(line: 557, column: 13, scope: !1861)
!1974 = !DILocation(line: 557, column: 21, scope: !1861)
!1975 = !DILocation(line: 557, column: 25, scope: !1861)
!1976 = !DILocation(line: 557, column: 35, scope: !1861)
!1977 = !DILocation(line: 557, column: 39, scope: !1861)
!1978 = !DILocation(line: 557, column: 49, scope: !1861)
!1979 = !DILocation(line: 557, column: 53, scope: !1861)
!1980 = !DILocation(line: 557, column: 62, scope: !1861)
!1981 = !DILocation(line: 557, column: 66, scope: !1861)
!1982 = !DILocation(line: 555, column: 2, scope: !1861)
!1983 = !DILocation(line: 559, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 559, column: 6)
!1985 = !DILocation(line: 559, column: 10, scope: !1984)
!1986 = !DILocation(line: 559, column: 17, scope: !1984)
!1987 = !DILocation(line: 559, column: 24, scope: !1984)
!1988 = !DILocation(line: 559, column: 27, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1984, file: !73, discriminator: 1)
!1990 = !DILocation(line: 559, column: 31, scope: !1989)
!1991 = !DILocation(line: 559, column: 38, scope: !1989)
!1992 = !DILocation(line: 559, column: 6, scope: !1989)
!1993 = !DILocation(line: 561, column: 63, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1984, file: !73, line: 560, column: 2)
!1995 = !DILocation(line: 561, column: 67, scope: !1994)
!1996 = !DILocation(line: 561, column: 3, scope: !1994)
!1997 = !DILocation(line: 562, column: 3, scope: !1994)
!1998 = !DILocation(line: 565, column: 33, scope: !1861)
!1999 = !DILocation(line: 565, column: 37, scope: !1861)
!2000 = !DILocation(line: 565, column: 45, scope: !1861)
!2001 = !DILocation(line: 565, column: 32, scope: !1861)
!2002 = !DILocation(line: 565, column: 50, scope: !1861)
!2003 = !DILocation(line: 565, column: 24, scope: !1861)
!2004 = !DILocation(line: 565, column: 11, scope: !1861)
!2005 = !DILocation(line: 565, column: 9, scope: !1861)
!2006 = !DILocation(line: 566, column: 9, scope: !1861)
!2007 = !DILocation(line: 566, column: 2, scope: !1861)
!2008 = !DILocation(line: 566, column: 21, scope: !1861)
!2009 = !DILocation(line: 566, column: 25, scope: !1861)
!2010 = !DILocation(line: 566, column: 33, scope: !1861)
!2011 = !DILocation(line: 566, column: 20, scope: !1861)
!2012 = !DILocation(line: 566, column: 38, scope: !1861)
!2013 = !DILocation(line: 568, column: 16, scope: !1861)
!2014 = !DILocation(line: 568, column: 20, scope: !1861)
!2015 = !DILocation(line: 568, column: 2, scope: !1861)
!2016 = !DILocation(line: 568, column: 12, scope: !1861)
!2017 = !DILocation(line: 568, column: 14, scope: !1861)
!2018 = !DILocation(line: 569, column: 16, scope: !1861)
!2019 = !DILocation(line: 569, column: 20, scope: !1861)
!2020 = !DILocation(line: 569, column: 2, scope: !1861)
!2021 = !DILocation(line: 569, column: 12, scope: !1861)
!2022 = !DILocation(line: 569, column: 14, scope: !1861)
!2023 = !DILocation(line: 571, column: 8, scope: !1861)
!2024 = !DILocation(line: 572, column: 11, scope: !1861)
!2025 = !DILocation(line: 572, column: 15, scope: !1861)
!2026 = !DILocation(line: 572, column: 23, scope: !1861)
!2027 = !DILocation(line: 572, column: 28, scope: !1861)
!2028 = !DILocation(line: 572, column: 33, scope: !1861)
!2029 = !DILocation(line: 572, column: 7, scope: !1861)
!2030 = !DILocation(line: 573, column: 12, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 573, column: 2)
!2032 = !DILocation(line: 573, column: 7, scope: !2031)
!2033 = !DILocation(line: 573, column: 18, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2035, file: !73, discriminator: 1)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !73, line: 573, column: 2)
!2036 = !DILocation(line: 573, column: 26, scope: !2034)
!2037 = !DILocation(line: 573, column: 30, scope: !2034)
!2038 = !DILocation(line: 573, column: 23, scope: !2034)
!2039 = !DILocation(line: 573, column: 39, scope: !2034)
!2040 = !DILocation(line: 573, column: 43, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2035, file: !73, discriminator: 2)
!2042 = !DILocation(line: 573, column: 48, scope: !2041)
!2043 = !DILocation(line: 573, column: 55, scope: !2041)
!2044 = !DILocation(line: 573, column: 59, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2035, file: !73, discriminator: 3)
!2046 = !DILocation(line: 573, column: 66, scope: !2045)
!2047 = !DILocation(line: 573, column: 70, scope: !2045)
!2048 = !DILocation(line: 573, column: 64, scope: !2045)
!2049 = !DILocation(line: 573, column: 2, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2031, file: !73, discriminator: 4)
!2051 = !DILocation(line: 575, column: 8, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !73, line: 575, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2035, file: !73, line: 574, column: 2)
!2054 = !DILocation(line: 575, column: 13, scope: !2052)
!2055 = !DILocation(line: 575, column: 18, scope: !2052)
!2056 = !DILocation(line: 575, column: 22, scope: !2052)
!2057 = !DILocation(line: 575, column: 7, scope: !2053)
!2058 = !DILocation(line: 576, column: 26, scope: !2052)
!2059 = !DILocation(line: 576, column: 12, scope: !2052)
!2060 = !DILocation(line: 576, column: 16, scope: !2052)
!2061 = !DILocation(line: 576, column: 10, scope: !2052)
!2062 = !DILocation(line: 576, column: 4, scope: !2052)
!2063 = !DILocation(line: 578, column: 8, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2053, file: !73, line: 578, column: 7)
!2065 = !DILocation(line: 578, column: 7, scope: !2064)
!2066 = !DILocation(line: 578, column: 14, scope: !2064)
!2067 = !DILocation(line: 578, column: 7, scope: !2053)
!2068 = !DILocation(line: 579, column: 33, scope: !2064)
!2069 = !DILocation(line: 579, column: 37, scope: !2064)
!2070 = !DILocation(line: 579, column: 21, scope: !2064)
!2071 = !DILocation(line: 579, column: 11, scope: !2064)
!2072 = !DILocation(line: 579, column: 4, scope: !2064)
!2073 = !DILocation(line: 579, column: 17, scope: !2064)
!2074 = !DILocation(line: 579, column: 19, scope: !2064)
!2075 = !DILocation(line: 581, column: 8, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2053, file: !73, line: 581, column: 7)
!2077 = !DILocation(line: 581, column: 7, scope: !2076)
!2078 = !DILocation(line: 581, column: 14, scope: !2076)
!2079 = !DILocation(line: 581, column: 7, scope: !2053)
!2080 = !DILocation(line: 582, column: 33, scope: !2076)
!2081 = !DILocation(line: 582, column: 37, scope: !2076)
!2082 = !DILocation(line: 582, column: 21, scope: !2076)
!2083 = !DILocation(line: 582, column: 11, scope: !2076)
!2084 = !DILocation(line: 582, column: 4, scope: !2076)
!2085 = !DILocation(line: 582, column: 17, scope: !2076)
!2086 = !DILocation(line: 582, column: 19, scope: !2076)
!2087 = !DILocation(line: 584, column: 9, scope: !2053)
!2088 = !DILocation(line: 585, column: 2, scope: !2053)
!2089 = !DILocation(line: 573, column: 85, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2035, file: !73, discriminator: 5)
!2091 = !DILocation(line: 573, column: 2, scope: !2090)
!2092 = distinct !{!2092, !2093}
!2093 = !DILocation(line: 573, column: 2, scope: !1861)
!2094 = !DILocation(line: 587, column: 6, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1861, file: !73, line: 587, column: 6)
!2096 = !DILocation(line: 587, column: 11, scope: !2095)
!2097 = !DILocation(line: 587, column: 18, scope: !2095)
!2098 = !DILocation(line: 587, column: 22, scope: !2095)
!2099 = !DILocation(line: 587, column: 15, scope: !2095)
!2100 = !DILocation(line: 587, column: 6, scope: !1861)
!2101 = !DILocation(line: 588, column: 14, scope: !2095)
!2102 = !DILocation(line: 588, column: 18, scope: !2095)
!2103 = !DILocation(line: 588, column: 25, scope: !2095)
!2104 = !DILocation(line: 588, column: 30, scope: !2095)
!2105 = !DILocation(line: 588, column: 34, scope: !2095)
!2106 = !DILocation(line: 588, column: 44, scope: !2095)
!2107 = !DILocation(line: 588, column: 52, scope: !2095)
!2108 = !DILocation(line: 588, column: 56, scope: !2095)
!2109 = !DILocation(line: 588, column: 64, scope: !2095)
!2110 = !DILocation(line: 589, column: 7, scope: !2095)
!2111 = !DILocation(line: 589, column: 11, scope: !2095)
!2112 = !DILocation(line: 588, column: 3, scope: !2095)
!2113 = !DILocation(line: 591, column: 3, scope: !2095)
!2114 = !DILocation(line: 593, column: 8, scope: !1861)
!2115 = !DILocation(line: 593, column: 2, scope: !1861)
!2116 = !DILocation(line: 594, column: 1, scope: !1861)
!2117 = !DILocation(line: 594, column: 1, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !1861, file: !73, discriminator: 1)
!2119 = distinct !DISubprogram(name: "process_polygon2", scope: !73, file: !73, line: 598, type: !2120, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !298, !2122, !63, !332}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!2123 = !DILocalVariable(name: "s", arg: 1, scope: !2119, file: !73, line: 598, type: !298)
!2124 = !DILocation(line: 598, column: 25, scope: !2119)
!2125 = !DILocalVariable(name: "os", arg: 2, scope: !2119, file: !73, line: 598, type: !2122)
!2126 = !DILocation(line: 598, column: 45, scope: !2119)
!2127 = !DILocalVariable(name: "present", arg: 3, scope: !2119, file: !73, line: 598, type: !63)
!2128 = !DILocation(line: 598, column: 56, scope: !2119)
!2129 = !DILocalVariable(name: "delta", arg: 4, scope: !2119, file: !73, line: 598, type: !332)
!2130 = !DILocation(line: 598, column: 73, scope: !2119)
!2131 = !DILocalVariable(name: "index", scope: !2119, file: !73, line: 600, type: !327)
!2132 = !DILocation(line: 600, column: 6, scope: !2119)
!2133 = !DILocalVariable(name: "data", scope: !2119, file: !73, line: 600, type: !327)
!2134 = !DILocation(line: 600, column: 13, scope: !2119)
!2135 = !DILocalVariable(name: "next", scope: !2119, file: !73, line: 600, type: !327)
!2136 = !DILocation(line: 600, column: 19, scope: !2119)
!2137 = !DILocalVariable(name: "flags", scope: !2119, file: !73, line: 601, type: !52)
!2138 = !DILocation(line: 601, column: 8, scope: !2119)
!2139 = !DILocalVariable(name: "points", scope: !2119, file: !73, line: 602, type: !65)
!2140 = !DILocation(line: 602, column: 12, scope: !2119)
!2141 = !DILocalVariable(name: "brush", scope: !2119, file: !73, line: 603, type: !107)
!2142 = !DILocation(line: 603, column: 8, scope: !2119)
!2143 = !DILocation(line: 605, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 605, column: 6)
!2145 = !DILocation(line: 605, column: 14, scope: !2144)
!2146 = !DILocation(line: 605, column: 6, scope: !2119)
!2147 = !DILocation(line: 606, column: 16, scope: !2144)
!2148 = !DILocation(line: 606, column: 20, scope: !2144)
!2149 = !DILocation(line: 606, column: 24, scope: !2144)
!2150 = !DILocation(line: 606, column: 27, scope: !2144)
!2151 = !DILocation(line: 606, column: 3, scope: !2144)
!2152 = !DILocation(line: 608, column: 6, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 608, column: 6)
!2154 = !DILocation(line: 608, column: 14, scope: !2153)
!2155 = !DILocation(line: 608, column: 6, scope: !2119)
!2156 = !DILocation(line: 609, column: 16, scope: !2153)
!2157 = !DILocation(line: 609, column: 20, scope: !2153)
!2158 = !DILocation(line: 609, column: 24, scope: !2153)
!2159 = !DILocation(line: 609, column: 27, scope: !2153)
!2160 = !DILocation(line: 609, column: 3, scope: !2153)
!2161 = !DILocation(line: 611, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 611, column: 6)
!2163 = !DILocation(line: 611, column: 14, scope: !2162)
!2164 = !DILocation(line: 611, column: 6, scope: !2119)
!2165 = !DILocation(line: 612, column: 19, scope: !2162)
!2166 = !DILocation(line: 612, column: 23, scope: !2162)
!2167 = !DILocation(line: 612, column: 24, scope: !2162)
!2168 = !DILocation(line: 612, column: 16, scope: !2162)
!2169 = !DILocation(line: 612, column: 3, scope: !2162)
!2170 = !DILocation(line: 612, column: 7, scope: !2162)
!2171 = !DILocation(line: 612, column: 14, scope: !2162)
!2172 = !DILocation(line: 614, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 614, column: 6)
!2174 = !DILocation(line: 614, column: 14, scope: !2173)
!2175 = !DILocation(line: 614, column: 6, scope: !2119)
!2176 = !DILocation(line: 615, column: 21, scope: !2173)
!2177 = !DILocation(line: 615, column: 25, scope: !2173)
!2178 = !DILocation(line: 615, column: 26, scope: !2173)
!2179 = !DILocation(line: 615, column: 18, scope: !2173)
!2180 = !DILocation(line: 615, column: 3, scope: !2173)
!2181 = !DILocation(line: 615, column: 7, scope: !2173)
!2182 = !DILocation(line: 615, column: 16, scope: !2173)
!2183 = !DILocation(line: 617, column: 6, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 617, column: 6)
!2185 = !DILocation(line: 617, column: 14, scope: !2184)
!2186 = !DILocation(line: 617, column: 6, scope: !2119)
!2187 = !DILocation(line: 618, column: 17, scope: !2184)
!2188 = !DILocation(line: 618, column: 21, scope: !2184)
!2189 = !DILocation(line: 618, column: 25, scope: !2184)
!2190 = !DILocation(line: 618, column: 3, scope: !2184)
!2191 = !DILocation(line: 620, column: 6, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 620, column: 6)
!2193 = !DILocation(line: 620, column: 14, scope: !2192)
!2194 = !DILocation(line: 620, column: 6, scope: !2119)
!2195 = !DILocation(line: 621, column: 17, scope: !2192)
!2196 = !DILocation(line: 621, column: 21, scope: !2192)
!2197 = !DILocation(line: 621, column: 25, scope: !2192)
!2198 = !DILocation(line: 621, column: 3, scope: !2192)
!2199 = !DILocation(line: 623, column: 18, scope: !2119)
!2200 = !DILocation(line: 623, column: 22, scope: !2119)
!2201 = !DILocation(line: 623, column: 26, scope: !2119)
!2202 = !DILocation(line: 623, column: 33, scope: !2119)
!2203 = !DILocation(line: 623, column: 41, scope: !2119)
!2204 = !DILocation(line: 623, column: 2, scope: !2119)
!2205 = !DILocation(line: 625, column: 6, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 625, column: 6)
!2207 = !DILocation(line: 625, column: 14, scope: !2206)
!2208 = !DILocation(line: 625, column: 6, scope: !2119)
!2209 = !DILocation(line: 626, column: 20, scope: !2206)
!2210 = !DILocation(line: 626, column: 24, scope: !2206)
!2211 = !DILocation(line: 626, column: 25, scope: !2206)
!2212 = !DILocation(line: 626, column: 17, scope: !2206)
!2213 = !DILocation(line: 626, column: 3, scope: !2206)
!2214 = !DILocation(line: 626, column: 7, scope: !2206)
!2215 = !DILocation(line: 626, column: 15, scope: !2206)
!2216 = !DILocation(line: 628, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 628, column: 6)
!2218 = !DILocation(line: 628, column: 14, scope: !2217)
!2219 = !DILocation(line: 628, column: 6, scope: !2119)
!2220 = !DILocation(line: 630, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !73, line: 629, column: 2)
!2222 = !DILocation(line: 630, column: 25, scope: !2221)
!2223 = !DILocation(line: 630, column: 26, scope: !2221)
!2224 = !DILocation(line: 630, column: 18, scope: !2221)
!2225 = !DILocation(line: 630, column: 3, scope: !2221)
!2226 = !DILocation(line: 630, column: 7, scope: !2221)
!2227 = !DILocation(line: 630, column: 16, scope: !2221)
!2228 = !DILocation(line: 631, column: 12, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2221, file: !73, line: 631, column: 3)
!2230 = !DILocation(line: 631, column: 16, scope: !2229)
!2231 = !DILocation(line: 631, column: 5, scope: !2229)
!2232 = !DILocation(line: 631, column: 22, scope: !2229)
!2233 = !DILocation(line: 631, column: 26, scope: !2229)
!2234 = !DILocation(line: 631, column: 28, scope: !2229)
!2235 = !DILocation(line: 631, column: 32, scope: !2229)
!2236 = !DILocation(line: 631, column: 53, scope: !2229)
!2237 = !DILocation(line: 631, column: 57, scope: !2229)
!2238 = !DILocation(line: 631, column: 44, scope: !2229)
!2239 = !DILocation(line: 631, column: 48, scope: !2229)
!2240 = !DILocation(line: 631, column: 50, scope: !2229)
!2241 = !DILocation(line: 632, column: 2, scope: !2221)
!2242 = !DILocation(line: 636, column: 9, scope: !2119)
!2243 = !DILocation(line: 636, column: 13, scope: !2119)
!2244 = !DILocation(line: 636, column: 16, scope: !2119)
!2245 = !DILocation(line: 636, column: 20, scope: !2119)
!2246 = !DILocation(line: 636, column: 23, scope: !2119)
!2247 = !DILocation(line: 636, column: 27, scope: !2119)
!2248 = !DILocation(line: 636, column: 35, scope: !2119)
!2249 = !DILocation(line: 636, column: 39, scope: !2119)
!2250 = !DILocation(line: 636, column: 49, scope: !2119)
!2251 = !DILocation(line: 636, column: 53, scope: !2119)
!2252 = !DILocation(line: 636, column: 59, scope: !2119)
!2253 = !DILocation(line: 636, column: 66, scope: !2119)
!2254 = !DILocation(line: 636, column: 70, scope: !2119)
!2255 = !DILocation(line: 636, column: 80, scope: !2119)
!2256 = !DILocation(line: 636, column: 84, scope: !2119)
!2257 = !DILocation(line: 637, column: 9, scope: !2119)
!2258 = !DILocation(line: 637, column: 13, scope: !2119)
!2259 = !DILocation(line: 637, column: 22, scope: !2119)
!2260 = !DILocation(line: 637, column: 26, scope: !2119)
!2261 = !DILocation(line: 634, column: 2, scope: !2119)
!2262 = !DILocation(line: 639, column: 6, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 639, column: 6)
!2264 = !DILocation(line: 639, column: 10, scope: !2263)
!2265 = !DILocation(line: 639, column: 17, scope: !2263)
!2266 = !DILocation(line: 639, column: 24, scope: !2263)
!2267 = !DILocation(line: 639, column: 27, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2263, file: !73, discriminator: 1)
!2269 = !DILocation(line: 639, column: 31, scope: !2268)
!2270 = !DILocation(line: 639, column: 38, scope: !2268)
!2271 = !DILocation(line: 639, column: 6, scope: !2268)
!2272 = !DILocation(line: 641, column: 64, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2263, file: !73, line: 640, column: 2)
!2274 = !DILocation(line: 641, column: 68, scope: !2273)
!2275 = !DILocation(line: 641, column: 3, scope: !2273)
!2276 = !DILocation(line: 642, column: 3, scope: !2273)
!2277 = !DILocation(line: 645, column: 23, scope: !2119)
!2278 = !DILocation(line: 645, column: 27, scope: !2119)
!2279 = !DILocation(line: 645, column: 2, scope: !2119)
!2280 = !DILocation(line: 647, column: 33, scope: !2119)
!2281 = !DILocation(line: 647, column: 37, scope: !2119)
!2282 = !DILocation(line: 647, column: 45, scope: !2119)
!2283 = !DILocation(line: 647, column: 32, scope: !2119)
!2284 = !DILocation(line: 647, column: 50, scope: !2119)
!2285 = !DILocation(line: 647, column: 24, scope: !2119)
!2286 = !DILocation(line: 647, column: 11, scope: !2119)
!2287 = !DILocation(line: 647, column: 9, scope: !2119)
!2288 = !DILocation(line: 648, column: 9, scope: !2119)
!2289 = !DILocation(line: 648, column: 2, scope: !2119)
!2290 = !DILocation(line: 648, column: 21, scope: !2119)
!2291 = !DILocation(line: 648, column: 25, scope: !2119)
!2292 = !DILocation(line: 648, column: 33, scope: !2119)
!2293 = !DILocation(line: 648, column: 20, scope: !2119)
!2294 = !DILocation(line: 648, column: 38, scope: !2119)
!2295 = !DILocation(line: 650, column: 16, scope: !2119)
!2296 = !DILocation(line: 650, column: 20, scope: !2119)
!2297 = !DILocation(line: 650, column: 2, scope: !2119)
!2298 = !DILocation(line: 650, column: 12, scope: !2119)
!2299 = !DILocation(line: 650, column: 14, scope: !2119)
!2300 = !DILocation(line: 651, column: 16, scope: !2119)
!2301 = !DILocation(line: 651, column: 20, scope: !2119)
!2302 = !DILocation(line: 651, column: 2, scope: !2119)
!2303 = !DILocation(line: 651, column: 12, scope: !2119)
!2304 = !DILocation(line: 651, column: 14, scope: !2119)
!2305 = !DILocation(line: 653, column: 8, scope: !2119)
!2306 = !DILocation(line: 654, column: 11, scope: !2119)
!2307 = !DILocation(line: 654, column: 15, scope: !2119)
!2308 = !DILocation(line: 654, column: 23, scope: !2119)
!2309 = !DILocation(line: 654, column: 28, scope: !2119)
!2310 = !DILocation(line: 654, column: 33, scope: !2119)
!2311 = !DILocation(line: 654, column: 7, scope: !2119)
!2312 = !DILocation(line: 655, column: 12, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 655, column: 2)
!2314 = !DILocation(line: 655, column: 7, scope: !2313)
!2315 = !DILocation(line: 655, column: 18, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2317, file: !73, discriminator: 1)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !73, line: 655, column: 2)
!2318 = !DILocation(line: 655, column: 26, scope: !2316)
!2319 = !DILocation(line: 655, column: 30, scope: !2316)
!2320 = !DILocation(line: 655, column: 23, scope: !2316)
!2321 = !DILocation(line: 655, column: 39, scope: !2316)
!2322 = !DILocation(line: 655, column: 43, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2317, file: !73, discriminator: 2)
!2324 = !DILocation(line: 655, column: 48, scope: !2323)
!2325 = !DILocation(line: 655, column: 55, scope: !2323)
!2326 = !DILocation(line: 655, column: 59, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2317, file: !73, discriminator: 3)
!2328 = !DILocation(line: 655, column: 66, scope: !2327)
!2329 = !DILocation(line: 655, column: 70, scope: !2327)
!2330 = !DILocation(line: 655, column: 64, scope: !2327)
!2331 = !DILocation(line: 655, column: 2, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2313, file: !73, discriminator: 4)
!2333 = !DILocation(line: 657, column: 8, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !73, line: 657, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2317, file: !73, line: 656, column: 2)
!2336 = !DILocation(line: 657, column: 13, scope: !2334)
!2337 = !DILocation(line: 657, column: 18, scope: !2334)
!2338 = !DILocation(line: 657, column: 22, scope: !2334)
!2339 = !DILocation(line: 657, column: 7, scope: !2335)
!2340 = !DILocation(line: 658, column: 26, scope: !2334)
!2341 = !DILocation(line: 658, column: 12, scope: !2334)
!2342 = !DILocation(line: 658, column: 16, scope: !2334)
!2343 = !DILocation(line: 658, column: 10, scope: !2334)
!2344 = !DILocation(line: 658, column: 4, scope: !2334)
!2345 = !DILocation(line: 660, column: 8, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !73, line: 660, column: 7)
!2347 = !DILocation(line: 660, column: 7, scope: !2346)
!2348 = !DILocation(line: 660, column: 14, scope: !2346)
!2349 = !DILocation(line: 660, column: 7, scope: !2335)
!2350 = !DILocation(line: 661, column: 33, scope: !2346)
!2351 = !DILocation(line: 661, column: 37, scope: !2346)
!2352 = !DILocation(line: 661, column: 21, scope: !2346)
!2353 = !DILocation(line: 661, column: 11, scope: !2346)
!2354 = !DILocation(line: 661, column: 4, scope: !2346)
!2355 = !DILocation(line: 661, column: 17, scope: !2346)
!2356 = !DILocation(line: 661, column: 19, scope: !2346)
!2357 = !DILocation(line: 663, column: 8, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2335, file: !73, line: 663, column: 7)
!2359 = !DILocation(line: 663, column: 7, scope: !2358)
!2360 = !DILocation(line: 663, column: 14, scope: !2358)
!2361 = !DILocation(line: 663, column: 7, scope: !2335)
!2362 = !DILocation(line: 664, column: 33, scope: !2358)
!2363 = !DILocation(line: 664, column: 37, scope: !2358)
!2364 = !DILocation(line: 664, column: 21, scope: !2358)
!2365 = !DILocation(line: 664, column: 11, scope: !2358)
!2366 = !DILocation(line: 664, column: 4, scope: !2358)
!2367 = !DILocation(line: 664, column: 17, scope: !2358)
!2368 = !DILocation(line: 664, column: 19, scope: !2358)
!2369 = !DILocation(line: 666, column: 9, scope: !2335)
!2370 = !DILocation(line: 667, column: 2, scope: !2335)
!2371 = !DILocation(line: 655, column: 85, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2317, file: !73, discriminator: 5)
!2373 = !DILocation(line: 655, column: 2, scope: !2372)
!2374 = distinct !{!2374, !2375}
!2375 = !DILocation(line: 655, column: 2, scope: !2119)
!2376 = !DILocation(line: 669, column: 6, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2119, file: !73, line: 669, column: 6)
!2378 = !DILocation(line: 669, column: 11, scope: !2377)
!2379 = !DILocation(line: 669, column: 18, scope: !2377)
!2380 = !DILocation(line: 669, column: 22, scope: !2377)
!2381 = !DILocation(line: 669, column: 15, scope: !2377)
!2382 = !DILocation(line: 669, column: 6, scope: !2119)
!2383 = !DILocation(line: 670, column: 14, scope: !2377)
!2384 = !DILocation(line: 670, column: 18, scope: !2377)
!2385 = !DILocation(line: 670, column: 25, scope: !2377)
!2386 = !DILocation(line: 670, column: 30, scope: !2377)
!2387 = !DILocation(line: 670, column: 34, scope: !2377)
!2388 = !DILocation(line: 670, column: 44, scope: !2377)
!2389 = !DILocation(line: 670, column: 52, scope: !2377)
!2390 = !DILocation(line: 670, column: 56, scope: !2377)
!2391 = !DILocation(line: 670, column: 64, scope: !2377)
!2392 = !DILocation(line: 671, column: 15, scope: !2377)
!2393 = !DILocation(line: 671, column: 19, scope: !2377)
!2394 = !DILocation(line: 671, column: 29, scope: !2377)
!2395 = !DILocation(line: 671, column: 33, scope: !2377)
!2396 = !DILocation(line: 670, column: 3, scope: !2377)
!2397 = !DILocation(line: 673, column: 3, scope: !2377)
!2398 = !DILocation(line: 675, column: 8, scope: !2119)
!2399 = !DILocation(line: 675, column: 2, scope: !2119)
!2400 = !DILocation(line: 676, column: 1, scope: !2119)
!2401 = !DILocation(line: 676, column: 1, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2119, file: !73, discriminator: 1)
!2403 = distinct !DISubprogram(name: "process_polyline", scope: !73, file: !73, line: 680, type: !2404, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !298, !2406, !63, !332}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!2407 = !DILocalVariable(name: "s", arg: 1, scope: !2403, file: !73, line: 680, type: !298)
!2408 = !DILocation(line: 680, column: 25, scope: !2403)
!2409 = !DILocalVariable(name: "os", arg: 2, scope: !2403, file: !73, line: 680, type: !2406)
!2410 = !DILocation(line: 680, column: 45, scope: !2403)
!2411 = !DILocalVariable(name: "present", arg: 3, scope: !2403, file: !73, line: 680, type: !63)
!2412 = !DILocation(line: 680, column: 56, scope: !2403)
!2413 = !DILocalVariable(name: "delta", arg: 4, scope: !2403, file: !73, line: 680, type: !332)
!2414 = !DILocation(line: 680, column: 73, scope: !2403)
!2415 = !DILocalVariable(name: "index", scope: !2403, file: !73, line: 682, type: !327)
!2416 = !DILocation(line: 682, column: 6, scope: !2403)
!2417 = !DILocalVariable(name: "next", scope: !2403, file: !73, line: 682, type: !327)
!2418 = !DILocation(line: 682, column: 13, scope: !2403)
!2419 = !DILocalVariable(name: "data", scope: !2403, file: !73, line: 682, type: !327)
!2420 = !DILocation(line: 682, column: 19, scope: !2403)
!2421 = !DILocalVariable(name: "flags", scope: !2403, file: !73, line: 683, type: !52)
!2422 = !DILocation(line: 683, column: 8, scope: !2403)
!2423 = !DILocalVariable(name: "pen", scope: !2403, file: !73, line: 684, type: !148)
!2424 = !DILocation(line: 684, column: 6, scope: !2403)
!2425 = !DILocalVariable(name: "points", scope: !2403, file: !73, line: 685, type: !65)
!2426 = !DILocation(line: 685, column: 12, scope: !2403)
!2427 = !DILocation(line: 687, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 687, column: 6)
!2429 = !DILocation(line: 687, column: 14, scope: !2428)
!2430 = !DILocation(line: 687, column: 6, scope: !2403)
!2431 = !DILocation(line: 688, column: 16, scope: !2428)
!2432 = !DILocation(line: 688, column: 20, scope: !2428)
!2433 = !DILocation(line: 688, column: 24, scope: !2428)
!2434 = !DILocation(line: 688, column: 27, scope: !2428)
!2435 = !DILocation(line: 688, column: 3, scope: !2428)
!2436 = !DILocation(line: 690, column: 6, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 690, column: 6)
!2438 = !DILocation(line: 690, column: 14, scope: !2437)
!2439 = !DILocation(line: 690, column: 6, scope: !2403)
!2440 = !DILocation(line: 691, column: 16, scope: !2437)
!2441 = !DILocation(line: 691, column: 20, scope: !2437)
!2442 = !DILocation(line: 691, column: 24, scope: !2437)
!2443 = !DILocation(line: 691, column: 27, scope: !2437)
!2444 = !DILocation(line: 691, column: 3, scope: !2437)
!2445 = !DILocation(line: 693, column: 6, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 693, column: 6)
!2447 = !DILocation(line: 693, column: 14, scope: !2446)
!2448 = !DILocation(line: 693, column: 6, scope: !2403)
!2449 = !DILocation(line: 694, column: 19, scope: !2446)
!2450 = !DILocation(line: 694, column: 23, scope: !2446)
!2451 = !DILocation(line: 694, column: 24, scope: !2446)
!2452 = !DILocation(line: 694, column: 16, scope: !2446)
!2453 = !DILocation(line: 694, column: 3, scope: !2446)
!2454 = !DILocation(line: 694, column: 7, scope: !2446)
!2455 = !DILocation(line: 694, column: 14, scope: !2446)
!2456 = !DILocation(line: 696, column: 6, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 696, column: 6)
!2458 = !DILocation(line: 696, column: 14, scope: !2457)
!2459 = !DILocation(line: 696, column: 6, scope: !2403)
!2460 = !DILocation(line: 697, column: 17, scope: !2457)
!2461 = !DILocation(line: 697, column: 21, scope: !2457)
!2462 = !DILocation(line: 697, column: 25, scope: !2457)
!2463 = !DILocation(line: 697, column: 3, scope: !2457)
!2464 = !DILocation(line: 699, column: 6, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 699, column: 6)
!2466 = !DILocation(line: 699, column: 14, scope: !2465)
!2467 = !DILocation(line: 699, column: 6, scope: !2403)
!2468 = !DILocation(line: 700, column: 18, scope: !2465)
!2469 = !DILocation(line: 700, column: 22, scope: !2465)
!2470 = !DILocation(line: 700, column: 23, scope: !2465)
!2471 = !DILocation(line: 700, column: 15, scope: !2465)
!2472 = !DILocation(line: 700, column: 3, scope: !2465)
!2473 = !DILocation(line: 700, column: 7, scope: !2465)
!2474 = !DILocation(line: 700, column: 13, scope: !2465)
!2475 = !DILocation(line: 702, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 702, column: 6)
!2477 = !DILocation(line: 702, column: 14, scope: !2476)
!2478 = !DILocation(line: 702, column: 6, scope: !2403)
!2479 = !DILocation(line: 704, column: 21, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !73, line: 703, column: 2)
!2481 = !DILocation(line: 704, column: 25, scope: !2480)
!2482 = !DILocation(line: 704, column: 26, scope: !2480)
!2483 = !DILocation(line: 704, column: 18, scope: !2480)
!2484 = !DILocation(line: 704, column: 3, scope: !2480)
!2485 = !DILocation(line: 704, column: 7, scope: !2480)
!2486 = !DILocation(line: 704, column: 16, scope: !2480)
!2487 = !DILocation(line: 705, column: 12, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2480, file: !73, line: 705, column: 3)
!2489 = !DILocation(line: 705, column: 16, scope: !2488)
!2490 = !DILocation(line: 705, column: 5, scope: !2488)
!2491 = !DILocation(line: 705, column: 22, scope: !2488)
!2492 = !DILocation(line: 705, column: 26, scope: !2488)
!2493 = !DILocation(line: 705, column: 28, scope: !2488)
!2494 = !DILocation(line: 705, column: 32, scope: !2488)
!2495 = !DILocation(line: 705, column: 53, scope: !2488)
!2496 = !DILocation(line: 705, column: 57, scope: !2488)
!2497 = !DILocation(line: 705, column: 44, scope: !2488)
!2498 = !DILocation(line: 705, column: 48, scope: !2488)
!2499 = !DILocation(line: 705, column: 50, scope: !2488)
!2500 = !DILocation(line: 706, column: 2, scope: !2480)
!2501 = !DILocation(line: 709, column: 9, scope: !2403)
!2502 = !DILocation(line: 709, column: 13, scope: !2403)
!2503 = !DILocation(line: 709, column: 16, scope: !2403)
!2504 = !DILocation(line: 709, column: 20, scope: !2403)
!2505 = !DILocation(line: 709, column: 23, scope: !2403)
!2506 = !DILocation(line: 709, column: 27, scope: !2403)
!2507 = !DILocation(line: 709, column: 35, scope: !2403)
!2508 = !DILocation(line: 709, column: 39, scope: !2403)
!2509 = !DILocation(line: 709, column: 49, scope: !2403)
!2510 = !DILocation(line: 709, column: 53, scope: !2403)
!2511 = !DILocation(line: 709, column: 60, scope: !2403)
!2512 = !DILocation(line: 709, column: 64, scope: !2403)
!2513 = !DILocation(line: 708, column: 2, scope: !2403)
!2514 = !DILocation(line: 711, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 711, column: 6)
!2516 = !DILocation(line: 711, column: 10, scope: !2515)
!2517 = !DILocation(line: 711, column: 17, scope: !2515)
!2518 = !DILocation(line: 711, column: 24, scope: !2515)
!2519 = !DILocation(line: 711, column: 27, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2515, file: !73, discriminator: 1)
!2521 = !DILocation(line: 711, column: 31, scope: !2520)
!2522 = !DILocation(line: 711, column: 38, scope: !2520)
!2523 = !DILocation(line: 711, column: 6, scope: !2520)
!2524 = !DILocation(line: 713, column: 64, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2515, file: !73, line: 712, column: 2)
!2526 = !DILocation(line: 713, column: 68, scope: !2525)
!2527 = !DILocation(line: 713, column: 3, scope: !2525)
!2528 = !DILocation(line: 714, column: 3, scope: !2525)
!2529 = !DILocation(line: 717, column: 33, scope: !2403)
!2530 = !DILocation(line: 717, column: 37, scope: !2403)
!2531 = !DILocation(line: 717, column: 43, scope: !2403)
!2532 = !DILocation(line: 717, column: 32, scope: !2403)
!2533 = !DILocation(line: 717, column: 48, scope: !2403)
!2534 = !DILocation(line: 717, column: 24, scope: !2403)
!2535 = !DILocation(line: 717, column: 11, scope: !2403)
!2536 = !DILocation(line: 717, column: 9, scope: !2403)
!2537 = !DILocation(line: 718, column: 9, scope: !2403)
!2538 = !DILocation(line: 718, column: 2, scope: !2403)
!2539 = !DILocation(line: 718, column: 21, scope: !2403)
!2540 = !DILocation(line: 718, column: 25, scope: !2403)
!2541 = !DILocation(line: 718, column: 31, scope: !2403)
!2542 = !DILocation(line: 718, column: 20, scope: !2403)
!2543 = !DILocation(line: 718, column: 36, scope: !2403)
!2544 = !DILocation(line: 720, column: 16, scope: !2403)
!2545 = !DILocation(line: 720, column: 20, scope: !2403)
!2546 = !DILocation(line: 720, column: 2, scope: !2403)
!2547 = !DILocation(line: 720, column: 12, scope: !2403)
!2548 = !DILocation(line: 720, column: 14, scope: !2403)
!2549 = !DILocation(line: 721, column: 16, scope: !2403)
!2550 = !DILocation(line: 721, column: 20, scope: !2403)
!2551 = !DILocation(line: 721, column: 2, scope: !2403)
!2552 = !DILocation(line: 721, column: 12, scope: !2403)
!2553 = !DILocation(line: 721, column: 14, scope: !2403)
!2554 = !DILocation(line: 722, column: 18, scope: !2403)
!2555 = !DILocation(line: 722, column: 24, scope: !2403)
!2556 = !DILocation(line: 722, column: 6, scope: !2403)
!2557 = !DILocation(line: 722, column: 12, scope: !2403)
!2558 = !DILocation(line: 723, column: 15, scope: !2403)
!2559 = !DILocation(line: 723, column: 19, scope: !2403)
!2560 = !DILocation(line: 723, column: 6, scope: !2403)
!2561 = !DILocation(line: 723, column: 13, scope: !2403)
!2562 = !DILocation(line: 725, column: 8, scope: !2403)
!2563 = !DILocation(line: 726, column: 11, scope: !2403)
!2564 = !DILocation(line: 726, column: 15, scope: !2403)
!2565 = !DILocation(line: 726, column: 21, scope: !2403)
!2566 = !DILocation(line: 726, column: 26, scope: !2403)
!2567 = !DILocation(line: 726, column: 31, scope: !2403)
!2568 = !DILocation(line: 726, column: 7, scope: !2403)
!2569 = !DILocation(line: 727, column: 12, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 727, column: 2)
!2571 = !DILocation(line: 727, column: 7, scope: !2570)
!2572 = !DILocation(line: 727, column: 18, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !73, discriminator: 1)
!2574 = distinct !DILexicalBlock(scope: !2570, file: !73, line: 727, column: 2)
!2575 = !DILocation(line: 727, column: 26, scope: !2573)
!2576 = !DILocation(line: 727, column: 30, scope: !2573)
!2577 = !DILocation(line: 727, column: 23, scope: !2573)
!2578 = !DILocation(line: 727, column: 37, scope: !2573)
!2579 = !DILocation(line: 727, column: 41, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2574, file: !73, discriminator: 2)
!2581 = !DILocation(line: 727, column: 48, scope: !2580)
!2582 = !DILocation(line: 727, column: 52, scope: !2580)
!2583 = !DILocation(line: 727, column: 46, scope: !2580)
!2584 = !DILocation(line: 727, column: 2, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2570, file: !73, discriminator: 3)
!2586 = !DILocation(line: 729, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !73, line: 729, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2574, file: !73, line: 728, column: 2)
!2589 = !DILocation(line: 729, column: 13, scope: !2587)
!2590 = !DILocation(line: 729, column: 18, scope: !2587)
!2591 = !DILocation(line: 729, column: 22, scope: !2587)
!2592 = !DILocation(line: 729, column: 7, scope: !2588)
!2593 = !DILocation(line: 730, column: 26, scope: !2587)
!2594 = !DILocation(line: 730, column: 12, scope: !2587)
!2595 = !DILocation(line: 730, column: 16, scope: !2587)
!2596 = !DILocation(line: 730, column: 10, scope: !2587)
!2597 = !DILocation(line: 730, column: 4, scope: !2587)
!2598 = !DILocation(line: 732, column: 8, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2588, file: !73, line: 732, column: 7)
!2600 = !DILocation(line: 732, column: 7, scope: !2599)
!2601 = !DILocation(line: 732, column: 14, scope: !2599)
!2602 = !DILocation(line: 732, column: 7, scope: !2588)
!2603 = !DILocation(line: 733, column: 33, scope: !2599)
!2604 = !DILocation(line: 733, column: 37, scope: !2599)
!2605 = !DILocation(line: 733, column: 21, scope: !2599)
!2606 = !DILocation(line: 733, column: 11, scope: !2599)
!2607 = !DILocation(line: 733, column: 4, scope: !2599)
!2608 = !DILocation(line: 733, column: 17, scope: !2599)
!2609 = !DILocation(line: 733, column: 19, scope: !2599)
!2610 = !DILocation(line: 735, column: 8, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2588, file: !73, line: 735, column: 7)
!2612 = !DILocation(line: 735, column: 7, scope: !2611)
!2613 = !DILocation(line: 735, column: 14, scope: !2611)
!2614 = !DILocation(line: 735, column: 7, scope: !2588)
!2615 = !DILocation(line: 736, column: 33, scope: !2611)
!2616 = !DILocation(line: 736, column: 37, scope: !2611)
!2617 = !DILocation(line: 736, column: 21, scope: !2611)
!2618 = !DILocation(line: 736, column: 11, scope: !2611)
!2619 = !DILocation(line: 736, column: 4, scope: !2611)
!2620 = !DILocation(line: 736, column: 17, scope: !2611)
!2621 = !DILocation(line: 736, column: 19, scope: !2611)
!2622 = !DILocation(line: 738, column: 9, scope: !2588)
!2623 = !DILocation(line: 739, column: 2, scope: !2588)
!2624 = !DILocation(line: 727, column: 67, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2574, file: !73, discriminator: 4)
!2626 = !DILocation(line: 727, column: 2, scope: !2625)
!2627 = distinct !{!2627, !2628}
!2628 = !DILocation(line: 727, column: 2, scope: !2403)
!2629 = !DILocation(line: 741, column: 6, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2403, file: !73, line: 741, column: 6)
!2631 = !DILocation(line: 741, column: 11, scope: !2630)
!2632 = !DILocation(line: 741, column: 18, scope: !2630)
!2633 = !DILocation(line: 741, column: 22, scope: !2630)
!2634 = !DILocation(line: 741, column: 15, scope: !2630)
!2635 = !DILocation(line: 741, column: 6, scope: !2403)
!2636 = !DILocation(line: 742, column: 15, scope: !2630)
!2637 = !DILocation(line: 742, column: 19, scope: !2630)
!2638 = !DILocation(line: 742, column: 26, scope: !2630)
!2639 = !DILocation(line: 742, column: 31, scope: !2630)
!2640 = !DILocation(line: 742, column: 39, scope: !2630)
!2641 = !DILocation(line: 742, column: 43, scope: !2630)
!2642 = !DILocation(line: 742, column: 49, scope: !2630)
!2643 = !DILocation(line: 742, column: 3, scope: !2630)
!2644 = !DILocation(line: 744, column: 3, scope: !2630)
!2645 = !DILocation(line: 746, column: 8, scope: !2403)
!2646 = !DILocation(line: 746, column: 2, scope: !2403)
!2647 = !DILocation(line: 747, column: 1, scope: !2403)
!2648 = !DILocation(line: 747, column: 1, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2403, file: !73, discriminator: 1)
!2650 = distinct !DISubprogram(name: "process_ellipse", scope: !73, file: !73, line: 751, type: !2651, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !298, !2653, !63, !332}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!2654 = !DILocalVariable(name: "s", arg: 1, scope: !2650, file: !73, line: 751, type: !298)
!2655 = !DILocation(line: 751, column: 24, scope: !2650)
!2656 = !DILocalVariable(name: "os", arg: 2, scope: !2650, file: !73, line: 751, type: !2653)
!2657 = !DILocation(line: 751, column: 43, scope: !2650)
!2658 = !DILocalVariable(name: "present", arg: 3, scope: !2650, file: !73, line: 751, type: !63)
!2659 = !DILocation(line: 751, column: 54, scope: !2650)
!2660 = !DILocalVariable(name: "delta", arg: 4, scope: !2650, file: !73, line: 751, type: !332)
!2661 = !DILocation(line: 751, column: 71, scope: !2650)
!2662 = !DILocation(line: 753, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 753, column: 6)
!2664 = !DILocation(line: 753, column: 14, scope: !2663)
!2665 = !DILocation(line: 753, column: 6, scope: !2650)
!2666 = !DILocation(line: 754, column: 16, scope: !2663)
!2667 = !DILocation(line: 754, column: 20, scope: !2663)
!2668 = !DILocation(line: 754, column: 24, scope: !2663)
!2669 = !DILocation(line: 754, column: 30, scope: !2663)
!2670 = !DILocation(line: 754, column: 3, scope: !2663)
!2671 = !DILocation(line: 756, column: 6, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 756, column: 6)
!2673 = !DILocation(line: 756, column: 14, scope: !2672)
!2674 = !DILocation(line: 756, column: 6, scope: !2650)
!2675 = !DILocation(line: 757, column: 16, scope: !2672)
!2676 = !DILocation(line: 757, column: 20, scope: !2672)
!2677 = !DILocation(line: 757, column: 24, scope: !2672)
!2678 = !DILocation(line: 757, column: 29, scope: !2672)
!2679 = !DILocation(line: 757, column: 3, scope: !2672)
!2680 = !DILocation(line: 759, column: 6, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 759, column: 6)
!2682 = !DILocation(line: 759, column: 14, scope: !2681)
!2683 = !DILocation(line: 759, column: 6, scope: !2650)
!2684 = !DILocation(line: 760, column: 16, scope: !2681)
!2685 = !DILocation(line: 760, column: 20, scope: !2681)
!2686 = !DILocation(line: 760, column: 24, scope: !2681)
!2687 = !DILocation(line: 760, column: 31, scope: !2681)
!2688 = !DILocation(line: 760, column: 3, scope: !2681)
!2689 = !DILocation(line: 762, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 762, column: 6)
!2691 = !DILocation(line: 762, column: 14, scope: !2690)
!2692 = !DILocation(line: 762, column: 6, scope: !2650)
!2693 = !DILocation(line: 763, column: 16, scope: !2690)
!2694 = !DILocation(line: 763, column: 20, scope: !2690)
!2695 = !DILocation(line: 763, column: 24, scope: !2690)
!2696 = !DILocation(line: 763, column: 32, scope: !2690)
!2697 = !DILocation(line: 763, column: 3, scope: !2690)
!2698 = !DILocation(line: 765, column: 6, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 765, column: 6)
!2700 = !DILocation(line: 765, column: 14, scope: !2699)
!2701 = !DILocation(line: 765, column: 6, scope: !2650)
!2702 = !DILocation(line: 766, column: 19, scope: !2699)
!2703 = !DILocation(line: 766, column: 23, scope: !2699)
!2704 = !DILocation(line: 766, column: 24, scope: !2699)
!2705 = !DILocation(line: 766, column: 16, scope: !2699)
!2706 = !DILocation(line: 766, column: 3, scope: !2699)
!2707 = !DILocation(line: 766, column: 7, scope: !2699)
!2708 = !DILocation(line: 766, column: 14, scope: !2699)
!2709 = !DILocation(line: 768, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 768, column: 6)
!2711 = !DILocation(line: 768, column: 14, scope: !2710)
!2712 = !DILocation(line: 768, column: 6, scope: !2650)
!2713 = !DILocation(line: 769, column: 21, scope: !2710)
!2714 = !DILocation(line: 769, column: 25, scope: !2710)
!2715 = !DILocation(line: 769, column: 26, scope: !2710)
!2716 = !DILocation(line: 769, column: 18, scope: !2710)
!2717 = !DILocation(line: 769, column: 3, scope: !2710)
!2718 = !DILocation(line: 769, column: 7, scope: !2710)
!2719 = !DILocation(line: 769, column: 16, scope: !2710)
!2720 = !DILocation(line: 771, column: 6, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2650, file: !73, line: 771, column: 6)
!2722 = !DILocation(line: 771, column: 14, scope: !2721)
!2723 = !DILocation(line: 771, column: 6, scope: !2650)
!2724 = !DILocation(line: 772, column: 17, scope: !2721)
!2725 = !DILocation(line: 772, column: 21, scope: !2721)
!2726 = !DILocation(line: 772, column: 25, scope: !2721)
!2727 = !DILocation(line: 772, column: 3, scope: !2721)
!2728 = !DILocation(line: 775, column: 79, scope: !2650)
!2729 = !DILocation(line: 775, column: 83, scope: !2650)
!2730 = !DILocation(line: 776, column: 9, scope: !2650)
!2731 = !DILocation(line: 776, column: 13, scope: !2650)
!2732 = !DILocation(line: 776, column: 18, scope: !2650)
!2733 = !DILocation(line: 776, column: 22, scope: !2650)
!2734 = !DILocation(line: 776, column: 29, scope: !2650)
!2735 = !DILocation(line: 776, column: 33, scope: !2650)
!2736 = !DILocation(line: 776, column: 41, scope: !2650)
!2737 = !DILocation(line: 776, column: 45, scope: !2650)
!2738 = !DILocation(line: 776, column: 53, scope: !2650)
!2739 = !DILocation(line: 776, column: 57, scope: !2650)
!2740 = !DILocation(line: 776, column: 67, scope: !2650)
!2741 = !DILocation(line: 776, column: 71, scope: !2650)
!2742 = !DILocation(line: 774, column: 2, scope: !2650)
!2743 = !DILocation(line: 778, column: 13, scope: !2650)
!2744 = !DILocation(line: 778, column: 17, scope: !2650)
!2745 = !DILocation(line: 778, column: 24, scope: !2650)
!2746 = !DILocation(line: 778, column: 29, scope: !2650)
!2747 = !DILocation(line: 778, column: 33, scope: !2650)
!2748 = !DILocation(line: 778, column: 43, scope: !2650)
!2749 = !DILocation(line: 778, column: 47, scope: !2650)
!2750 = !DILocation(line: 778, column: 53, scope: !2650)
!2751 = !DILocation(line: 778, column: 57, scope: !2650)
!2752 = !DILocation(line: 778, column: 62, scope: !2650)
!2753 = !DILocation(line: 778, column: 66, scope: !2650)
!2754 = !DILocation(line: 778, column: 74, scope: !2650)
!2755 = !DILocation(line: 778, column: 78, scope: !2650)
!2756 = !DILocation(line: 778, column: 72, scope: !2650)
!2757 = !DILocation(line: 779, column: 6, scope: !2650)
!2758 = !DILocation(line: 779, column: 10, scope: !2650)
!2759 = !DILocation(line: 779, column: 19, scope: !2650)
!2760 = !DILocation(line: 779, column: 23, scope: !2650)
!2761 = !DILocation(line: 779, column: 17, scope: !2650)
!2762 = !DILocation(line: 779, column: 36, scope: !2650)
!2763 = !DILocation(line: 779, column: 40, scope: !2650)
!2764 = !DILocation(line: 778, column: 2, scope: !2650)
!2765 = !DILocation(line: 780, column: 1, scope: !2650)
!2766 = distinct !DISubprogram(name: "process_ellipse2", scope: !73, file: !73, line: 784, type: !2767, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !298, !2769, !63, !332}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!2770 = !DILocalVariable(name: "s", arg: 1, scope: !2766, file: !73, line: 784, type: !298)
!2771 = !DILocation(line: 784, column: 25, scope: !2766)
!2772 = !DILocalVariable(name: "os", arg: 2, scope: !2766, file: !73, line: 784, type: !2769)
!2773 = !DILocation(line: 784, column: 45, scope: !2766)
!2774 = !DILocalVariable(name: "present", arg: 3, scope: !2766, file: !73, line: 784, type: !63)
!2775 = !DILocation(line: 784, column: 56, scope: !2766)
!2776 = !DILocalVariable(name: "delta", arg: 4, scope: !2766, file: !73, line: 784, type: !332)
!2777 = !DILocation(line: 784, column: 73, scope: !2766)
!2778 = !DILocalVariable(name: "brush", scope: !2766, file: !73, line: 786, type: !107)
!2779 = !DILocation(line: 786, column: 8, scope: !2766)
!2780 = !DILocation(line: 788, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 788, column: 6)
!2782 = !DILocation(line: 788, column: 14, scope: !2781)
!2783 = !DILocation(line: 788, column: 6, scope: !2766)
!2784 = !DILocation(line: 789, column: 16, scope: !2781)
!2785 = !DILocation(line: 789, column: 20, scope: !2781)
!2786 = !DILocation(line: 789, column: 24, scope: !2781)
!2787 = !DILocation(line: 789, column: 30, scope: !2781)
!2788 = !DILocation(line: 789, column: 3, scope: !2781)
!2789 = !DILocation(line: 791, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 791, column: 6)
!2791 = !DILocation(line: 791, column: 14, scope: !2790)
!2792 = !DILocation(line: 791, column: 6, scope: !2766)
!2793 = !DILocation(line: 792, column: 16, scope: !2790)
!2794 = !DILocation(line: 792, column: 20, scope: !2790)
!2795 = !DILocation(line: 792, column: 24, scope: !2790)
!2796 = !DILocation(line: 792, column: 29, scope: !2790)
!2797 = !DILocation(line: 792, column: 3, scope: !2790)
!2798 = !DILocation(line: 794, column: 6, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 794, column: 6)
!2800 = !DILocation(line: 794, column: 14, scope: !2799)
!2801 = !DILocation(line: 794, column: 6, scope: !2766)
!2802 = !DILocation(line: 795, column: 16, scope: !2799)
!2803 = !DILocation(line: 795, column: 20, scope: !2799)
!2804 = !DILocation(line: 795, column: 24, scope: !2799)
!2805 = !DILocation(line: 795, column: 31, scope: !2799)
!2806 = !DILocation(line: 795, column: 3, scope: !2799)
!2807 = !DILocation(line: 797, column: 6, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 797, column: 6)
!2809 = !DILocation(line: 797, column: 14, scope: !2808)
!2810 = !DILocation(line: 797, column: 6, scope: !2766)
!2811 = !DILocation(line: 798, column: 16, scope: !2808)
!2812 = !DILocation(line: 798, column: 20, scope: !2808)
!2813 = !DILocation(line: 798, column: 24, scope: !2808)
!2814 = !DILocation(line: 798, column: 32, scope: !2808)
!2815 = !DILocation(line: 798, column: 3, scope: !2808)
!2816 = !DILocation(line: 800, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 800, column: 6)
!2818 = !DILocation(line: 800, column: 14, scope: !2817)
!2819 = !DILocation(line: 800, column: 6, scope: !2766)
!2820 = !DILocation(line: 801, column: 19, scope: !2817)
!2821 = !DILocation(line: 801, column: 23, scope: !2817)
!2822 = !DILocation(line: 801, column: 24, scope: !2817)
!2823 = !DILocation(line: 801, column: 16, scope: !2817)
!2824 = !DILocation(line: 801, column: 3, scope: !2817)
!2825 = !DILocation(line: 801, column: 7, scope: !2817)
!2826 = !DILocation(line: 801, column: 14, scope: !2817)
!2827 = !DILocation(line: 803, column: 6, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 803, column: 6)
!2829 = !DILocation(line: 803, column: 14, scope: !2828)
!2830 = !DILocation(line: 803, column: 6, scope: !2766)
!2831 = !DILocation(line: 804, column: 21, scope: !2828)
!2832 = !DILocation(line: 804, column: 25, scope: !2828)
!2833 = !DILocation(line: 804, column: 26, scope: !2828)
!2834 = !DILocation(line: 804, column: 18, scope: !2828)
!2835 = !DILocation(line: 804, column: 3, scope: !2828)
!2836 = !DILocation(line: 804, column: 7, scope: !2828)
!2837 = !DILocation(line: 804, column: 16, scope: !2828)
!2838 = !DILocation(line: 806, column: 6, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 806, column: 6)
!2840 = !DILocation(line: 806, column: 14, scope: !2839)
!2841 = !DILocation(line: 806, column: 6, scope: !2766)
!2842 = !DILocation(line: 807, column: 17, scope: !2839)
!2843 = !DILocation(line: 807, column: 21, scope: !2839)
!2844 = !DILocation(line: 807, column: 25, scope: !2839)
!2845 = !DILocation(line: 807, column: 3, scope: !2839)
!2846 = !DILocation(line: 809, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2766, file: !73, line: 809, column: 6)
!2848 = !DILocation(line: 809, column: 14, scope: !2847)
!2849 = !DILocation(line: 809, column: 6, scope: !2766)
!2850 = !DILocation(line: 810, column: 17, scope: !2847)
!2851 = !DILocation(line: 810, column: 21, scope: !2847)
!2852 = !DILocation(line: 810, column: 25, scope: !2847)
!2853 = !DILocation(line: 810, column: 3, scope: !2847)
!2854 = !DILocation(line: 812, column: 18, scope: !2766)
!2855 = !DILocation(line: 812, column: 22, scope: !2766)
!2856 = !DILocation(line: 812, column: 26, scope: !2766)
!2857 = !DILocation(line: 812, column: 33, scope: !2766)
!2858 = !DILocation(line: 812, column: 41, scope: !2766)
!2859 = !DILocation(line: 812, column: 2, scope: !2766)
!2860 = !DILocation(line: 816, column: 9, scope: !2766)
!2861 = !DILocation(line: 816, column: 13, scope: !2766)
!2862 = !DILocation(line: 816, column: 19, scope: !2766)
!2863 = !DILocation(line: 816, column: 23, scope: !2766)
!2864 = !DILocation(line: 816, column: 28, scope: !2766)
!2865 = !DILocation(line: 816, column: 32, scope: !2766)
!2866 = !DILocation(line: 816, column: 39, scope: !2766)
!2867 = !DILocation(line: 816, column: 43, scope: !2766)
!2868 = !DILocation(line: 816, column: 51, scope: !2766)
!2869 = !DILocation(line: 816, column: 55, scope: !2766)
!2870 = !DILocation(line: 816, column: 63, scope: !2766)
!2871 = !DILocation(line: 816, column: 67, scope: !2766)
!2872 = !DILocation(line: 816, column: 77, scope: !2766)
!2873 = !DILocation(line: 816, column: 81, scope: !2766)
!2874 = !DILocation(line: 816, column: 87, scope: !2766)
!2875 = !DILocation(line: 817, column: 9, scope: !2766)
!2876 = !DILocation(line: 817, column: 13, scope: !2766)
!2877 = !DILocation(line: 817, column: 23, scope: !2766)
!2878 = !DILocation(line: 817, column: 27, scope: !2766)
!2879 = !DILocation(line: 814, column: 2, scope: !2766)
!2880 = !DILocation(line: 819, column: 23, scope: !2766)
!2881 = !DILocation(line: 819, column: 27, scope: !2766)
!2882 = !DILocation(line: 819, column: 2, scope: !2766)
!2883 = !DILocation(line: 821, column: 13, scope: !2766)
!2884 = !DILocation(line: 821, column: 17, scope: !2766)
!2885 = !DILocation(line: 821, column: 24, scope: !2766)
!2886 = !DILocation(line: 821, column: 29, scope: !2766)
!2887 = !DILocation(line: 821, column: 33, scope: !2766)
!2888 = !DILocation(line: 821, column: 43, scope: !2766)
!2889 = !DILocation(line: 821, column: 47, scope: !2766)
!2890 = !DILocation(line: 821, column: 53, scope: !2766)
!2891 = !DILocation(line: 821, column: 57, scope: !2766)
!2892 = !DILocation(line: 821, column: 62, scope: !2766)
!2893 = !DILocation(line: 821, column: 66, scope: !2766)
!2894 = !DILocation(line: 821, column: 74, scope: !2766)
!2895 = !DILocation(line: 821, column: 78, scope: !2766)
!2896 = !DILocation(line: 821, column: 72, scope: !2766)
!2897 = !DILocation(line: 822, column: 6, scope: !2766)
!2898 = !DILocation(line: 822, column: 10, scope: !2766)
!2899 = !DILocation(line: 822, column: 19, scope: !2766)
!2900 = !DILocation(line: 822, column: 23, scope: !2766)
!2901 = !DILocation(line: 822, column: 17, scope: !2766)
!2902 = !DILocation(line: 822, column: 36, scope: !2766)
!2903 = !DILocation(line: 822, column: 40, scope: !2766)
!2904 = !DILocation(line: 822, column: 50, scope: !2766)
!2905 = !DILocation(line: 822, column: 54, scope: !2766)
!2906 = !DILocation(line: 821, column: 2, scope: !2766)
!2907 = !DILocation(line: 823, column: 1, scope: !2766)
!2908 = distinct !DISubprogram(name: "process_text2", scope: !73, file: !73, line: 827, type: !2909, isLocal: true, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !298, !2911, !63, !332}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!2912 = !DILocalVariable(name: "s", arg: 1, scope: !2908, file: !73, line: 827, type: !298)
!2913 = !DILocation(line: 827, column: 22, scope: !2908)
!2914 = !DILocalVariable(name: "os", arg: 2, scope: !2908, file: !73, line: 827, type: !2911)
!2915 = !DILocation(line: 827, column: 39, scope: !2908)
!2916 = !DILocalVariable(name: "present", arg: 3, scope: !2908, file: !73, line: 827, type: !63)
!2917 = !DILocation(line: 827, column: 50, scope: !2908)
!2918 = !DILocalVariable(name: "delta", arg: 4, scope: !2908, file: !73, line: 827, type: !332)
!2919 = !DILocation(line: 827, column: 67, scope: !2908)
!2920 = !DILocation(line: 829, column: 9, scope: !2908)
!2921 = !DILocalVariable(name: "brush", scope: !2908, file: !73, line: 830, type: !107)
!2922 = !DILocation(line: 830, column: 8, scope: !2908)
!2923 = !DILocation(line: 832, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 832, column: 6)
!2925 = !DILocation(line: 832, column: 14, scope: !2924)
!2926 = !DILocation(line: 832, column: 6, scope: !2908)
!2927 = !DILocation(line: 833, column: 17, scope: !2924)
!2928 = !DILocation(line: 833, column: 21, scope: !2924)
!2929 = !DILocation(line: 833, column: 22, scope: !2924)
!2930 = !DILocation(line: 833, column: 14, scope: !2924)
!2931 = !DILocation(line: 833, column: 3, scope: !2924)
!2932 = !DILocation(line: 833, column: 7, scope: !2924)
!2933 = !DILocation(line: 833, column: 12, scope: !2924)
!2934 = !DILocation(line: 835, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 835, column: 6)
!2936 = !DILocation(line: 835, column: 14, scope: !2935)
!2937 = !DILocation(line: 835, column: 6, scope: !2908)
!2938 = !DILocation(line: 836, column: 18, scope: !2935)
!2939 = !DILocation(line: 836, column: 22, scope: !2935)
!2940 = !DILocation(line: 836, column: 23, scope: !2935)
!2941 = !DILocation(line: 836, column: 15, scope: !2935)
!2942 = !DILocation(line: 836, column: 3, scope: !2935)
!2943 = !DILocation(line: 836, column: 7, scope: !2935)
!2944 = !DILocation(line: 836, column: 13, scope: !2935)
!2945 = !DILocation(line: 838, column: 6, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 838, column: 6)
!2947 = !DILocation(line: 838, column: 14, scope: !2946)
!2948 = !DILocation(line: 838, column: 6, scope: !2908)
!2949 = !DILocation(line: 839, column: 19, scope: !2946)
!2950 = !DILocation(line: 839, column: 23, scope: !2946)
!2951 = !DILocation(line: 839, column: 24, scope: !2946)
!2952 = !DILocation(line: 839, column: 16, scope: !2946)
!2953 = !DILocation(line: 839, column: 3, scope: !2946)
!2954 = !DILocation(line: 839, column: 7, scope: !2946)
!2955 = !DILocation(line: 839, column: 14, scope: !2946)
!2956 = !DILocation(line: 841, column: 6, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 841, column: 6)
!2958 = !DILocation(line: 841, column: 14, scope: !2957)
!2959 = !DILocation(line: 841, column: 6, scope: !2908)
!2960 = !DILocation(line: 842, column: 20, scope: !2957)
!2961 = !DILocation(line: 842, column: 24, scope: !2957)
!2962 = !DILocation(line: 842, column: 25, scope: !2957)
!2963 = !DILocation(line: 842, column: 17, scope: !2957)
!2964 = !DILocation(line: 842, column: 3, scope: !2957)
!2965 = !DILocation(line: 842, column: 7, scope: !2957)
!2966 = !DILocation(line: 842, column: 15, scope: !2957)
!2967 = !DILocation(line: 844, column: 6, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 844, column: 6)
!2969 = !DILocation(line: 844, column: 14, scope: !2968)
!2970 = !DILocation(line: 844, column: 6, scope: !2908)
!2971 = !DILocation(line: 845, column: 17, scope: !2968)
!2972 = !DILocation(line: 845, column: 21, scope: !2968)
!2973 = !DILocation(line: 845, column: 25, scope: !2968)
!2974 = !DILocation(line: 845, column: 3, scope: !2968)
!2975 = !DILocation(line: 847, column: 6, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 847, column: 6)
!2977 = !DILocation(line: 847, column: 14, scope: !2976)
!2978 = !DILocation(line: 847, column: 6, scope: !2908)
!2979 = !DILocation(line: 848, column: 17, scope: !2976)
!2980 = !DILocation(line: 848, column: 21, scope: !2976)
!2981 = !DILocation(line: 848, column: 25, scope: !2976)
!2982 = !DILocation(line: 848, column: 3, scope: !2976)
!2983 = !DILocation(line: 850, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 850, column: 6)
!2985 = !DILocation(line: 850, column: 14, scope: !2984)
!2986 = !DILocation(line: 850, column: 6, scope: !2908)
!2987 = !DILocation(line: 851, column: 33, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !73, line: 851, column: 3)
!2989 = !DILocation(line: 851, column: 37, scope: !2988)
!2990 = !DILocation(line: 851, column: 20, scope: !2988)
!2991 = !DILocation(line: 851, column: 5, scope: !2988)
!2992 = !DILocation(line: 851, column: 9, scope: !2988)
!2993 = !DILocation(line: 851, column: 18, scope: !2988)
!2994 = !DILocation(line: 851, column: 42, scope: !2988)
!2995 = !DILocation(line: 851, column: 46, scope: !2988)
!2996 = !DILocation(line: 851, column: 48, scope: !2988)
!2997 = !DILocation(line: 851, column: 54, scope: !2988)
!2998 = !DILocation(line: 853, column: 6, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 853, column: 6)
!3000 = !DILocation(line: 853, column: 14, scope: !2999)
!3001 = !DILocation(line: 853, column: 6, scope: !2908)
!3002 = !DILocation(line: 854, column: 32, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !73, line: 854, column: 3)
!3004 = !DILocation(line: 854, column: 36, scope: !3003)
!3005 = !DILocation(line: 854, column: 19, scope: !3003)
!3006 = !DILocation(line: 854, column: 5, scope: !3003)
!3007 = !DILocation(line: 854, column: 9, scope: !3003)
!3008 = !DILocation(line: 854, column: 17, scope: !3003)
!3009 = !DILocation(line: 854, column: 41, scope: !3003)
!3010 = !DILocation(line: 854, column: 45, scope: !3003)
!3011 = !DILocation(line: 854, column: 47, scope: !3003)
!3012 = !DILocation(line: 854, column: 53, scope: !3003)
!3013 = !DILocation(line: 856, column: 6, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 856, column: 6)
!3015 = !DILocation(line: 856, column: 14, scope: !3014)
!3016 = !DILocation(line: 856, column: 6, scope: !2908)
!3017 = !DILocation(line: 857, column: 34, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !73, line: 857, column: 3)
!3019 = !DILocation(line: 857, column: 38, scope: !3018)
!3020 = !DILocation(line: 857, column: 21, scope: !3018)
!3021 = !DILocation(line: 857, column: 5, scope: !3018)
!3022 = !DILocation(line: 857, column: 9, scope: !3018)
!3023 = !DILocation(line: 857, column: 19, scope: !3018)
!3024 = !DILocation(line: 857, column: 43, scope: !3018)
!3025 = !DILocation(line: 857, column: 47, scope: !3018)
!3026 = !DILocation(line: 857, column: 49, scope: !3018)
!3027 = !DILocation(line: 857, column: 55, scope: !3018)
!3028 = !DILocation(line: 859, column: 6, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 859, column: 6)
!3030 = !DILocation(line: 859, column: 14, scope: !3029)
!3031 = !DILocation(line: 859, column: 6, scope: !2908)
!3032 = !DILocation(line: 860, column: 35, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !73, line: 860, column: 3)
!3034 = !DILocation(line: 860, column: 39, scope: !3033)
!3035 = !DILocation(line: 860, column: 22, scope: !3033)
!3036 = !DILocation(line: 860, column: 5, scope: !3033)
!3037 = !DILocation(line: 860, column: 9, scope: !3033)
!3038 = !DILocation(line: 860, column: 20, scope: !3033)
!3039 = !DILocation(line: 860, column: 44, scope: !3033)
!3040 = !DILocation(line: 860, column: 48, scope: !3033)
!3041 = !DILocation(line: 860, column: 50, scope: !3033)
!3042 = !DILocation(line: 860, column: 56, scope: !3033)
!3043 = !DILocation(line: 862, column: 6, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 862, column: 6)
!3045 = !DILocation(line: 862, column: 14, scope: !3044)
!3046 = !DILocation(line: 862, column: 6, scope: !2908)
!3047 = !DILocation(line: 863, column: 32, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !73, line: 863, column: 3)
!3049 = !DILocation(line: 863, column: 36, scope: !3048)
!3050 = !DILocation(line: 863, column: 19, scope: !3048)
!3051 = !DILocation(line: 863, column: 5, scope: !3048)
!3052 = !DILocation(line: 863, column: 9, scope: !3048)
!3053 = !DILocation(line: 863, column: 17, scope: !3048)
!3054 = !DILocation(line: 863, column: 41, scope: !3048)
!3055 = !DILocation(line: 863, column: 45, scope: !3048)
!3056 = !DILocation(line: 863, column: 47, scope: !3048)
!3057 = !DILocation(line: 863, column: 53, scope: !3048)
!3058 = !DILocation(line: 865, column: 6, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 865, column: 6)
!3060 = !DILocation(line: 865, column: 14, scope: !3059)
!3061 = !DILocation(line: 865, column: 6, scope: !2908)
!3062 = !DILocation(line: 866, column: 31, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !73, line: 866, column: 3)
!3064 = !DILocation(line: 866, column: 35, scope: !3063)
!3065 = !DILocation(line: 866, column: 18, scope: !3063)
!3066 = !DILocation(line: 866, column: 5, scope: !3063)
!3067 = !DILocation(line: 866, column: 9, scope: !3063)
!3068 = !DILocation(line: 866, column: 16, scope: !3063)
!3069 = !DILocation(line: 866, column: 40, scope: !3063)
!3070 = !DILocation(line: 866, column: 44, scope: !3063)
!3071 = !DILocation(line: 866, column: 46, scope: !3063)
!3072 = !DILocation(line: 866, column: 52, scope: !3063)
!3073 = !DILocation(line: 868, column: 6, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 868, column: 6)
!3075 = !DILocation(line: 868, column: 14, scope: !3074)
!3076 = !DILocation(line: 868, column: 6, scope: !2908)
!3077 = !DILocation(line: 869, column: 33, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !73, line: 869, column: 3)
!3079 = !DILocation(line: 869, column: 37, scope: !3078)
!3080 = !DILocation(line: 869, column: 20, scope: !3078)
!3081 = !DILocation(line: 869, column: 5, scope: !3078)
!3082 = !DILocation(line: 869, column: 9, scope: !3078)
!3083 = !DILocation(line: 869, column: 18, scope: !3078)
!3084 = !DILocation(line: 869, column: 42, scope: !3078)
!3085 = !DILocation(line: 869, column: 46, scope: !3078)
!3086 = !DILocation(line: 869, column: 48, scope: !3078)
!3087 = !DILocation(line: 869, column: 54, scope: !3078)
!3088 = !DILocation(line: 871, column: 6, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 871, column: 6)
!3090 = !DILocation(line: 871, column: 14, scope: !3089)
!3091 = !DILocation(line: 871, column: 6, scope: !2908)
!3092 = !DILocation(line: 872, column: 34, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !73, line: 872, column: 3)
!3094 = !DILocation(line: 872, column: 38, scope: !3093)
!3095 = !DILocation(line: 872, column: 21, scope: !3093)
!3096 = !DILocation(line: 872, column: 5, scope: !3093)
!3097 = !DILocation(line: 872, column: 9, scope: !3093)
!3098 = !DILocation(line: 872, column: 19, scope: !3093)
!3099 = !DILocation(line: 872, column: 43, scope: !3093)
!3100 = !DILocation(line: 872, column: 47, scope: !3093)
!3101 = !DILocation(line: 872, column: 49, scope: !3093)
!3102 = !DILocation(line: 872, column: 55, scope: !3093)
!3103 = !DILocation(line: 874, column: 18, scope: !2908)
!3104 = !DILocation(line: 874, column: 22, scope: !2908)
!3105 = !DILocation(line: 874, column: 26, scope: !2908)
!3106 = !DILocation(line: 874, column: 33, scope: !2908)
!3107 = !DILocation(line: 874, column: 41, scope: !2908)
!3108 = !DILocation(line: 874, column: 2, scope: !2908)
!3109 = !DILocation(line: 876, column: 6, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 876, column: 6)
!3111 = !DILocation(line: 876, column: 14, scope: !3110)
!3112 = !DILocation(line: 876, column: 6, scope: !2908)
!3113 = !DILocation(line: 877, column: 26, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !73, line: 877, column: 3)
!3115 = !DILocation(line: 877, column: 30, scope: !3114)
!3116 = !DILocation(line: 877, column: 13, scope: !3114)
!3117 = !DILocation(line: 877, column: 5, scope: !3114)
!3118 = !DILocation(line: 877, column: 9, scope: !3114)
!3119 = !DILocation(line: 877, column: 11, scope: !3114)
!3120 = !DILocation(line: 877, column: 35, scope: !3114)
!3121 = !DILocation(line: 877, column: 39, scope: !3114)
!3122 = !DILocation(line: 877, column: 41, scope: !3114)
!3123 = !DILocation(line: 877, column: 47, scope: !3114)
!3124 = !DILocation(line: 879, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 879, column: 6)
!3126 = !DILocation(line: 879, column: 14, scope: !3125)
!3127 = !DILocation(line: 879, column: 6, scope: !2908)
!3128 = !DILocation(line: 880, column: 26, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !73, line: 880, column: 3)
!3130 = !DILocation(line: 880, column: 30, scope: !3129)
!3131 = !DILocation(line: 880, column: 13, scope: !3129)
!3132 = !DILocation(line: 880, column: 5, scope: !3129)
!3133 = !DILocation(line: 880, column: 9, scope: !3129)
!3134 = !DILocation(line: 880, column: 11, scope: !3129)
!3135 = !DILocation(line: 880, column: 35, scope: !3129)
!3136 = !DILocation(line: 880, column: 39, scope: !3129)
!3137 = !DILocation(line: 880, column: 41, scope: !3129)
!3138 = !DILocation(line: 880, column: 47, scope: !3129)
!3139 = !DILocation(line: 882, column: 6, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2908, file: !73, line: 882, column: 6)
!3141 = !DILocation(line: 882, column: 14, scope: !3140)
!3142 = !DILocation(line: 882, column: 6, scope: !2908)
!3143 = !DILocation(line: 884, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !73, line: 883, column: 2)
!3145 = !DILocation(line: 884, column: 23, scope: !3144)
!3146 = !DILocation(line: 884, column: 24, scope: !3144)
!3147 = !DILocation(line: 884, column: 16, scope: !3144)
!3148 = !DILocation(line: 884, column: 3, scope: !3144)
!3149 = !DILocation(line: 884, column: 7, scope: !3144)
!3150 = !DILocation(line: 884, column: 14, scope: !3144)
!3151 = !DILocation(line: 885, column: 12, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !73, line: 885, column: 3)
!3153 = !DILocation(line: 885, column: 16, scope: !3152)
!3154 = !DILocation(line: 885, column: 5, scope: !3152)
!3155 = !DILocation(line: 885, column: 22, scope: !3152)
!3156 = !DILocation(line: 885, column: 26, scope: !3152)
!3157 = !DILocation(line: 885, column: 28, scope: !3152)
!3158 = !DILocation(line: 885, column: 32, scope: !3152)
!3159 = !DILocation(line: 885, column: 51, scope: !3152)
!3160 = !DILocation(line: 885, column: 55, scope: !3152)
!3161 = !DILocation(line: 885, column: 42, scope: !3152)
!3162 = !DILocation(line: 885, column: 46, scope: !3152)
!3163 = !DILocation(line: 885, column: 48, scope: !3152)
!3164 = !DILocation(line: 886, column: 2, scope: !3144)
!3165 = !DILocation(line: 890, column: 9, scope: !2908)
!3166 = !DILocation(line: 890, column: 13, scope: !2908)
!3167 = !DILocation(line: 890, column: 16, scope: !2908)
!3168 = !DILocation(line: 890, column: 20, scope: !2908)
!3169 = !DILocation(line: 890, column: 23, scope: !2908)
!3170 = !DILocation(line: 890, column: 27, scope: !2908)
!3171 = !DILocation(line: 890, column: 37, scope: !2908)
!3172 = !DILocation(line: 890, column: 41, scope: !2908)
!3173 = !DILocation(line: 890, column: 50, scope: !2908)
!3174 = !DILocation(line: 890, column: 54, scope: !2908)
!3175 = !DILocation(line: 890, column: 65, scope: !2908)
!3176 = !DILocation(line: 890, column: 69, scope: !2908)
!3177 = !DILocation(line: 890, column: 81, scope: !2908)
!3178 = !DILocation(line: 890, column: 85, scope: !2908)
!3179 = !DILocation(line: 891, column: 9, scope: !2908)
!3180 = !DILocation(line: 891, column: 13, scope: !2908)
!3181 = !DILocation(line: 891, column: 21, scope: !2908)
!3182 = !DILocation(line: 891, column: 25, scope: !2908)
!3183 = !DILocation(line: 891, column: 35, scope: !2908)
!3184 = !DILocation(line: 891, column: 39, scope: !2908)
!3185 = !DILocation(line: 891, column: 50, scope: !2908)
!3186 = !DILocation(line: 891, column: 54, scope: !2908)
!3187 = !DILocation(line: 891, column: 60, scope: !2908)
!3188 = !DILocation(line: 891, column: 67, scope: !2908)
!3189 = !DILocation(line: 891, column: 71, scope: !2908)
!3190 = !DILocation(line: 891, column: 81, scope: !2908)
!3191 = !DILocation(line: 891, column: 85, scope: !2908)
!3192 = !DILocation(line: 892, column: 9, scope: !2908)
!3193 = !DILocation(line: 892, column: 13, scope: !2908)
!3194 = !DILocation(line: 892, column: 19, scope: !2908)
!3195 = !DILocation(line: 892, column: 23, scope: !2908)
!3196 = !DILocation(line: 892, column: 30, scope: !2908)
!3197 = !DILocation(line: 892, column: 34, scope: !2908)
!3198 = !DILocation(line: 892, column: 42, scope: !2908)
!3199 = !DILocation(line: 892, column: 46, scope: !2908)
!3200 = !DILocation(line: 892, column: 55, scope: !2908)
!3201 = !DILocation(line: 892, column: 59, scope: !2908)
!3202 = !DILocation(line: 888, column: 2, scope: !2908)
!3203 = !DILocation(line: 894, column: 23, scope: !2908)
!3204 = !DILocation(line: 894, column: 27, scope: !2908)
!3205 = !DILocation(line: 894, column: 2, scope: !2908)
!3206 = !DILocation(line: 896, column: 15, scope: !2908)
!3207 = !DILocation(line: 896, column: 19, scope: !2908)
!3208 = !DILocation(line: 896, column: 25, scope: !2908)
!3209 = !DILocation(line: 896, column: 29, scope: !2908)
!3210 = !DILocation(line: 896, column: 36, scope: !2908)
!3211 = !DILocation(line: 896, column: 40, scope: !2908)
!3212 = !DILocation(line: 896, column: 47, scope: !2908)
!3213 = !DILocation(line: 896, column: 52, scope: !2908)
!3214 = !DILocation(line: 896, column: 56, scope: !2908)
!3215 = !DILocation(line: 896, column: 65, scope: !2908)
!3216 = !DILocation(line: 896, column: 69, scope: !2908)
!3217 = !DILocation(line: 896, column: 72, scope: !2908)
!3218 = !DILocation(line: 896, column: 76, scope: !2908)
!3219 = !DILocation(line: 897, column: 8, scope: !2908)
!3220 = !DILocation(line: 897, column: 12, scope: !2908)
!3221 = !DILocation(line: 897, column: 22, scope: !2908)
!3222 = !DILocation(line: 897, column: 26, scope: !2908)
!3223 = !DILocation(line: 897, column: 35, scope: !2908)
!3224 = !DILocation(line: 897, column: 39, scope: !2908)
!3225 = !DILocation(line: 897, column: 51, scope: !2908)
!3226 = !DILocation(line: 897, column: 55, scope: !2908)
!3227 = !DILocation(line: 897, column: 49, scope: !2908)
!3228 = !DILocation(line: 898, column: 8, scope: !2908)
!3229 = !DILocation(line: 898, column: 12, scope: !2908)
!3230 = !DILocation(line: 898, column: 25, scope: !2908)
!3231 = !DILocation(line: 898, column: 29, scope: !2908)
!3232 = !DILocation(line: 898, column: 23, scope: !2908)
!3233 = !DILocation(line: 898, column: 38, scope: !2908)
!3234 = !DILocation(line: 898, column: 42, scope: !2908)
!3235 = !DILocation(line: 898, column: 51, scope: !2908)
!3236 = !DILocation(line: 898, column: 55, scope: !2908)
!3237 = !DILocation(line: 899, column: 8, scope: !2908)
!3238 = !DILocation(line: 899, column: 12, scope: !2908)
!3239 = !DILocation(line: 899, column: 23, scope: !2908)
!3240 = !DILocation(line: 899, column: 27, scope: !2908)
!3241 = !DILocation(line: 899, column: 21, scope: !2908)
!3242 = !DILocation(line: 899, column: 36, scope: !2908)
!3243 = !DILocation(line: 899, column: 40, scope: !2908)
!3244 = !DILocation(line: 899, column: 52, scope: !2908)
!3245 = !DILocation(line: 899, column: 56, scope: !2908)
!3246 = !DILocation(line: 899, column: 50, scope: !2908)
!3247 = !DILocation(line: 900, column: 16, scope: !2908)
!3248 = !DILocation(line: 900, column: 20, scope: !2908)
!3249 = !DILocation(line: 900, column: 30, scope: !2908)
!3250 = !DILocation(line: 900, column: 34, scope: !2908)
!3251 = !DILocation(line: 900, column: 44, scope: !2908)
!3252 = !DILocation(line: 900, column: 48, scope: !2908)
!3253 = !DILocation(line: 900, column: 54, scope: !2908)
!3254 = !DILocation(line: 900, column: 58, scope: !2908)
!3255 = !DILocation(line: 896, column: 2, scope: !2908)
!3256 = !DILocation(line: 901, column: 1, scope: !2908)
!3257 = distinct !DISubprogram(name: "reset_order_state", scope: !73, file: !73, line: 1455, type: !3258, isLocal: false, isDefinition: true, scopeLine: 1456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null}
!3260 = !DILocation(line: 1457, column: 2, scope: !3257)
!3261 = !DILocation(line: 1458, column: 27, scope: !3257)
!3262 = !DILocation(line: 1459, column: 1, scope: !3257)
!3263 = distinct !DISubprogram(name: "process_raw_bmpcache", scope: !73, file: !73, line: 905, type: !546, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3264 = !DILocalVariable(name: "s", arg: 1, scope: !3263, file: !73, line: 905, type: !298)
!3265 = !DILocation(line: 905, column: 29, scope: !3263)
!3266 = !DILocalVariable(name: "bitmap", scope: !3263, file: !73, line: 907, type: !1500)
!3267 = !DILocation(line: 907, column: 13, scope: !3263)
!3268 = !DILocalVariable(name: "cache_idx", scope: !3263, file: !73, line: 908, type: !47)
!3269 = !DILocation(line: 908, column: 9, scope: !3263)
!3270 = !DILocalVariable(name: "bufsize", scope: !3263, file: !73, line: 908, type: !47)
!3271 = !DILocation(line: 908, column: 20, scope: !3263)
!3272 = !DILocalVariable(name: "cache_id", scope: !3263, file: !73, line: 909, type: !52)
!3273 = !DILocation(line: 909, column: 8, scope: !3263)
!3274 = !DILocalVariable(name: "width", scope: !3263, file: !73, line: 909, type: !52)
!3275 = !DILocation(line: 909, column: 18, scope: !3263)
!3276 = !DILocalVariable(name: "height", scope: !3263, file: !73, line: 909, type: !52)
!3277 = !DILocation(line: 909, column: 25, scope: !3263)
!3278 = !DILocalVariable(name: "bpp", scope: !3263, file: !73, line: 909, type: !52)
!3279 = !DILocation(line: 909, column: 33, scope: !3263)
!3280 = !DILocalVariable(name: "Bpp", scope: !3263, file: !73, line: 909, type: !52)
!3281 = !DILocation(line: 909, column: 38, scope: !3263)
!3282 = !DILocalVariable(name: "data", scope: !3263, file: !73, line: 910, type: !51)
!3283 = !DILocation(line: 910, column: 9, scope: !3263)
!3284 = !DILocalVariable(name: "inverted", scope: !3263, file: !73, line: 910, type: !51)
!3285 = !DILocation(line: 910, column: 16, scope: !3263)
!3286 = !DILocalVariable(name: "y", scope: !3263, file: !73, line: 911, type: !327)
!3287 = !DILocation(line: 911, column: 6, scope: !3263)
!3288 = !DILocation(line: 913, column: 16, scope: !3263)
!3289 = !DILocation(line: 913, column: 20, scope: !3263)
!3290 = !DILocation(line: 913, column: 21, scope: !3263)
!3291 = !DILocation(line: 913, column: 13, scope: !3263)
!3292 = !DILocation(line: 913, column: 11, scope: !3263)
!3293 = !DILocation(line: 914, column: 3, scope: !3263)
!3294 = !DILocation(line: 914, column: 7, scope: !3263)
!3295 = !DILocation(line: 914, column: 9, scope: !3263)
!3296 = !DILocation(line: 915, column: 13, scope: !3263)
!3297 = !DILocation(line: 915, column: 17, scope: !3263)
!3298 = !DILocation(line: 915, column: 18, scope: !3263)
!3299 = !DILocation(line: 915, column: 10, scope: !3263)
!3300 = !DILocation(line: 915, column: 8, scope: !3263)
!3301 = !DILocation(line: 916, column: 14, scope: !3263)
!3302 = !DILocation(line: 916, column: 18, scope: !3263)
!3303 = !DILocation(line: 916, column: 19, scope: !3263)
!3304 = !DILocation(line: 916, column: 11, scope: !3263)
!3305 = !DILocation(line: 916, column: 9, scope: !3263)
!3306 = !DILocation(line: 917, column: 11, scope: !3263)
!3307 = !DILocation(line: 917, column: 15, scope: !3263)
!3308 = !DILocation(line: 917, column: 16, scope: !3263)
!3309 = !DILocation(line: 917, column: 8, scope: !3263)
!3310 = !DILocation(line: 917, column: 6, scope: !3263)
!3311 = !DILocation(line: 918, column: 9, scope: !3263)
!3312 = !DILocation(line: 918, column: 13, scope: !3263)
!3313 = !DILocation(line: 918, column: 18, scope: !3263)
!3314 = !DILocation(line: 918, column: 8, scope: !3263)
!3315 = !DILocation(line: 918, column: 6, scope: !3263)
!3316 = !DILocation(line: 919, column: 27, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3263, file: !73, line: 919, column: 2)
!3318 = !DILocation(line: 919, column: 31, scope: !3317)
!3319 = !DILocation(line: 919, column: 14, scope: !3317)
!3320 = !DILocation(line: 919, column: 12, scope: !3317)
!3321 = !DILocation(line: 919, column: 36, scope: !3317)
!3322 = !DILocation(line: 919, column: 40, scope: !3317)
!3323 = !DILocation(line: 919, column: 42, scope: !3317)
!3324 = !DILocation(line: 920, column: 29, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3263, file: !73, line: 920, column: 2)
!3326 = !DILocation(line: 920, column: 33, scope: !3325)
!3327 = !DILocation(line: 920, column: 16, scope: !3325)
!3328 = !DILocation(line: 920, column: 14, scope: !3325)
!3329 = !DILocation(line: 920, column: 38, scope: !3325)
!3330 = !DILocation(line: 920, column: 42, scope: !3325)
!3331 = !DILocation(line: 920, column: 44, scope: !3325)
!3332 = !DILocation(line: 921, column: 12, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3263, file: !73, line: 921, column: 2)
!3334 = !DILocation(line: 921, column: 16, scope: !3333)
!3335 = !DILocation(line: 921, column: 9, scope: !3333)
!3336 = !DILocation(line: 921, column: 29, scope: !3333)
!3337 = !DILocation(line: 921, column: 20, scope: !3333)
!3338 = !DILocation(line: 921, column: 24, scope: !3333)
!3339 = !DILocation(line: 921, column: 26, scope: !3333)
!3340 = !DILocation(line: 923, column: 81, scope: !3263)
!3341 = !DILocation(line: 924, column: 9, scope: !3263)
!3342 = !DILocation(line: 924, column: 17, scope: !3263)
!3343 = !DILocation(line: 924, column: 27, scope: !3263)
!3344 = !DILocation(line: 923, column: 2, scope: !3263)
!3345 = !DILocation(line: 925, column: 31, scope: !3263)
!3346 = !DILocation(line: 925, column: 39, scope: !3263)
!3347 = !DILocation(line: 925, column: 37, scope: !3263)
!3348 = !DILocation(line: 925, column: 48, scope: !3263)
!3349 = !DILocation(line: 925, column: 46, scope: !3263)
!3350 = !DILocation(line: 925, column: 23, scope: !3263)
!3351 = !DILocation(line: 925, column: 11, scope: !3263)
!3352 = !DILocation(line: 926, column: 9, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3263, file: !73, line: 926, column: 2)
!3354 = !DILocation(line: 926, column: 7, scope: !3353)
!3355 = !DILocation(line: 926, column: 14, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3357, file: !73, discriminator: 1)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !73, line: 926, column: 2)
!3358 = !DILocation(line: 926, column: 18, scope: !3356)
!3359 = !DILocation(line: 926, column: 16, scope: !3356)
!3360 = !DILocation(line: 926, column: 2, scope: !3356)
!3361 = !DILocation(line: 928, column: 21, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !73, line: 927, column: 2)
!3363 = !DILocation(line: 928, column: 30, scope: !3362)
!3364 = !DILocation(line: 928, column: 28, scope: !3362)
!3365 = !DILocation(line: 928, column: 32, scope: !3362)
!3366 = !DILocation(line: 928, column: 40, scope: !3362)
!3367 = !DILocation(line: 928, column: 48, scope: !3362)
!3368 = !DILocation(line: 928, column: 46, scope: !3362)
!3369 = !DILocation(line: 928, column: 37, scope: !3362)
!3370 = !DILocation(line: 928, column: 11, scope: !3362)
!3371 = !DILocation(line: 928, column: 61, scope: !3362)
!3372 = !DILocation(line: 928, column: 66, scope: !3362)
!3373 = !DILocation(line: 928, column: 74, scope: !3362)
!3374 = !DILocation(line: 928, column: 72, scope: !3362)
!3375 = !DILocation(line: 928, column: 63, scope: !3362)
!3376 = !DILocation(line: 928, column: 56, scope: !3362)
!3377 = !DILocation(line: 929, column: 10, scope: !3362)
!3378 = !DILocation(line: 929, column: 18, scope: !3362)
!3379 = !DILocation(line: 929, column: 16, scope: !3362)
!3380 = !DILocation(line: 928, column: 3, scope: !3362)
!3381 = !DILocation(line: 930, column: 2, scope: !3362)
!3382 = !DILocation(line: 926, column: 27, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3357, file: !73, discriminator: 2)
!3384 = !DILocation(line: 926, column: 2, scope: !3383)
!3385 = distinct !{!3385, !3386}
!3386 = !DILocation(line: 926, column: 2, scope: !3263)
!3387 = !DILocation(line: 932, column: 28, scope: !3263)
!3388 = !DILocation(line: 932, column: 35, scope: !3263)
!3389 = !DILocation(line: 932, column: 43, scope: !3263)
!3390 = !DILocation(line: 932, column: 11, scope: !3263)
!3391 = !DILocation(line: 932, column: 9, scope: !3263)
!3392 = !DILocation(line: 933, column: 8, scope: !3263)
!3393 = !DILocation(line: 933, column: 2, scope: !3263)
!3394 = !DILocation(line: 934, column: 19, scope: !3263)
!3395 = !DILocation(line: 934, column: 29, scope: !3263)
!3396 = !DILocation(line: 934, column: 40, scope: !3263)
!3397 = !DILocation(line: 934, column: 2, scope: !3263)
!3398 = !DILocation(line: 935, column: 1, scope: !3263)
!3399 = distinct !DISubprogram(name: "process_colcache", scope: !73, file: !73, line: 1079, type: !546, isLocal: true, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3400 = !DILocalVariable(name: "s", arg: 1, scope: !3399, file: !73, line: 1079, type: !298)
!3401 = !DILocation(line: 1079, column: 25, scope: !3399)
!3402 = !DILocalVariable(name: "entry", scope: !3399, file: !73, line: 1081, type: !54)
!3403 = !DILocation(line: 1081, column: 15, scope: !3399)
!3404 = !DILocalVariable(name: "map", scope: !3399, file: !73, line: 1082, type: !3405)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOURMAP", file: !40, line: 81, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_COLOURMAP", file: !40, line: 75, size: 128, align: 64, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ncolours", scope: !3406, file: !40, line: 77, baseType: !47, size: 16, align: 16)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "colours", scope: !3406, file: !40, line: 78, baseType: !54, size: 64, align: 64, offset: 64)
!3410 = !DILocation(line: 1082, column: 12, scope: !3399)
!3411 = !DILocalVariable(name: "hmap", scope: !3399, file: !73, line: 1083, type: !3412)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HCOLOURMAP", file: !40, line: 48, baseType: !61)
!3413 = !DILocation(line: 1083, column: 16, scope: !3399)
!3414 = !DILocalVariable(name: "cache_id", scope: !3399, file: !73, line: 1084, type: !52)
!3415 = !DILocation(line: 1084, column: 8, scope: !3399)
!3416 = !DILocalVariable(name: "i", scope: !3399, file: !73, line: 1085, type: !327)
!3417 = !DILocation(line: 1085, column: 6, scope: !3399)
!3418 = !DILocation(line: 1087, column: 16, scope: !3399)
!3419 = !DILocation(line: 1087, column: 20, scope: !3399)
!3420 = !DILocation(line: 1087, column: 21, scope: !3399)
!3421 = !DILocation(line: 1087, column: 13, scope: !3399)
!3422 = !DILocation(line: 1087, column: 11, scope: !3399)
!3423 = !DILocation(line: 1088, column: 32, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3399, file: !73, line: 1088, column: 2)
!3425 = !DILocation(line: 1088, column: 36, scope: !3424)
!3426 = !DILocation(line: 1088, column: 19, scope: !3424)
!3427 = !DILocation(line: 1088, column: 8, scope: !3424)
!3428 = !DILocation(line: 1088, column: 17, scope: !3424)
!3429 = !DILocation(line: 1088, column: 41, scope: !3424)
!3430 = !DILocation(line: 1088, column: 45, scope: !3424)
!3431 = !DILocation(line: 1088, column: 47, scope: !3424)
!3432 = !DILocation(line: 1090, column: 66, scope: !3399)
!3433 = !DILocation(line: 1090, column: 62, scope: !3399)
!3434 = !DILocation(line: 1090, column: 60, scope: !3399)
!3435 = !DILocation(line: 1090, column: 40, scope: !3399)
!3436 = !DILocation(line: 1090, column: 32, scope: !3399)
!3437 = !DILocation(line: 1090, column: 16, scope: !3399)
!3438 = !DILocation(line: 1090, column: 6, scope: !3399)
!3439 = !DILocation(line: 1090, column: 14, scope: !3399)
!3440 = !DILocation(line: 1092, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3399, file: !73, line: 1092, column: 2)
!3442 = !DILocation(line: 1092, column: 7, scope: !3441)
!3443 = !DILocation(line: 1092, column: 14, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3445, file: !73, discriminator: 1)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !73, line: 1092, column: 2)
!3446 = !DILocation(line: 1092, column: 22, scope: !3444)
!3447 = !DILocation(line: 1092, column: 18, scope: !3444)
!3448 = !DILocation(line: 1092, column: 16, scope: !3444)
!3449 = !DILocation(line: 1092, column: 2, scope: !3444)
!3450 = !DILocation(line: 1094, column: 24, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3445, file: !73, line: 1093, column: 2)
!3452 = !DILocation(line: 1094, column: 12, scope: !3451)
!3453 = !DILocation(line: 1094, column: 16, scope: !3451)
!3454 = !DILocation(line: 1094, column: 9, scope: !3451)
!3455 = !DILocation(line: 1095, column: 20, scope: !3451)
!3456 = !DILocation(line: 1095, column: 24, scope: !3451)
!3457 = !DILocation(line: 1095, column: 25, scope: !3451)
!3458 = !DILocation(line: 1095, column: 17, scope: !3451)
!3459 = !DILocation(line: 1095, column: 3, scope: !3451)
!3460 = !DILocation(line: 1095, column: 10, scope: !3451)
!3461 = !DILocation(line: 1095, column: 15, scope: !3451)
!3462 = !DILocation(line: 1096, column: 21, scope: !3451)
!3463 = !DILocation(line: 1096, column: 25, scope: !3451)
!3464 = !DILocation(line: 1096, column: 26, scope: !3451)
!3465 = !DILocation(line: 1096, column: 18, scope: !3451)
!3466 = !DILocation(line: 1096, column: 3, scope: !3451)
!3467 = !DILocation(line: 1096, column: 10, scope: !3451)
!3468 = !DILocation(line: 1096, column: 16, scope: !3451)
!3469 = !DILocation(line: 1097, column: 19, scope: !3451)
!3470 = !DILocation(line: 1097, column: 23, scope: !3451)
!3471 = !DILocation(line: 1097, column: 24, scope: !3451)
!3472 = !DILocation(line: 1097, column: 16, scope: !3451)
!3473 = !DILocation(line: 1097, column: 3, scope: !3451)
!3474 = !DILocation(line: 1097, column: 10, scope: !3451)
!3475 = !DILocation(line: 1097, column: 14, scope: !3451)
!3476 = !DILocation(line: 1098, column: 4, scope: !3451)
!3477 = !DILocation(line: 1098, column: 8, scope: !3451)
!3478 = !DILocation(line: 1098, column: 10, scope: !3451)
!3479 = !DILocation(line: 1099, column: 2, scope: !3451)
!3480 = !DILocation(line: 1092, column: 33, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3445, file: !73, discriminator: 2)
!3482 = !DILocation(line: 1092, column: 2, scope: !3481)
!3483 = distinct !{!3483, !3484}
!3484 = !DILocation(line: 1092, column: 2, scope: !3399)
!3485 = !DILocation(line: 1101, column: 61, scope: !3399)
!3486 = !DILocation(line: 1101, column: 75, scope: !3399)
!3487 = !DILocation(line: 1101, column: 71, scope: !3399)
!3488 = !DILocation(line: 1101, column: 2, scope: !3399)
!3489 = !DILocation(line: 1103, column: 9, scope: !3399)
!3490 = !DILocation(line: 1103, column: 7, scope: !3399)
!3491 = !DILocation(line: 1105, column: 6, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3399, file: !73, line: 1105, column: 6)
!3493 = !DILocation(line: 1105, column: 6, scope: !3399)
!3494 = !DILocation(line: 1106, column: 20, scope: !3492)
!3495 = !DILocation(line: 1106, column: 3, scope: !3492)
!3496 = !DILocation(line: 1108, column: 12, scope: !3399)
!3497 = !DILocation(line: 1108, column: 8, scope: !3399)
!3498 = !DILocation(line: 1108, column: 2, scope: !3399)
!3499 = !DILocation(line: 1109, column: 1, scope: !3399)
!3500 = distinct !DISubprogram(name: "process_bmpcache", scope: !73, file: !73, line: 939, type: !546, isLocal: true, isDefinition: true, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3501 = !DILocalVariable(name: "s", arg: 1, scope: !3500, file: !73, line: 939, type: !298)
!3502 = !DILocation(line: 939, column: 25, scope: !3500)
!3503 = !DILocalVariable(name: "bitmap", scope: !3500, file: !73, line: 941, type: !1500)
!3504 = !DILocation(line: 941, column: 13, scope: !3500)
!3505 = !DILocalVariable(name: "cache_idx", scope: !3500, file: !73, line: 942, type: !47)
!3506 = !DILocation(line: 942, column: 9, scope: !3500)
!3507 = !DILocalVariable(name: "size", scope: !3500, file: !73, line: 942, type: !47)
!3508 = !DILocation(line: 942, column: 20, scope: !3500)
!3509 = !DILocalVariable(name: "cache_id", scope: !3500, file: !73, line: 943, type: !52)
!3510 = !DILocation(line: 943, column: 8, scope: !3500)
!3511 = !DILocalVariable(name: "width", scope: !3500, file: !73, line: 943, type: !52)
!3512 = !DILocation(line: 943, column: 18, scope: !3500)
!3513 = !DILocalVariable(name: "height", scope: !3500, file: !73, line: 943, type: !52)
!3514 = !DILocation(line: 943, column: 25, scope: !3500)
!3515 = !DILocalVariable(name: "bpp", scope: !3500, file: !73, line: 943, type: !52)
!3516 = !DILocation(line: 943, column: 33, scope: !3500)
!3517 = !DILocalVariable(name: "Bpp", scope: !3500, file: !73, line: 943, type: !52)
!3518 = !DILocation(line: 943, column: 38, scope: !3500)
!3519 = !DILocalVariable(name: "data", scope: !3500, file: !73, line: 944, type: !51)
!3520 = !DILocation(line: 944, column: 9, scope: !3500)
!3521 = !DILocalVariable(name: "bmpdata", scope: !3500, file: !73, line: 944, type: !51)
!3522 = !DILocation(line: 944, column: 16, scope: !3500)
!3523 = !DILocalVariable(name: "bufsize", scope: !3500, file: !73, line: 945, type: !47)
!3524 = !DILocation(line: 945, column: 9, scope: !3500)
!3525 = !DILocalVariable(name: "pad2", scope: !3500, file: !73, line: 945, type: !47)
!3526 = !DILocation(line: 945, column: 18, scope: !3500)
!3527 = !DILocalVariable(name: "row_size", scope: !3500, file: !73, line: 945, type: !47)
!3528 = !DILocation(line: 945, column: 24, scope: !3500)
!3529 = !DILocalVariable(name: "final_size", scope: !3500, file: !73, line: 945, type: !47)
!3530 = !DILocation(line: 945, column: 34, scope: !3500)
!3531 = !DILocalVariable(name: "pad1", scope: !3500, file: !73, line: 946, type: !52)
!3532 = !DILocation(line: 946, column: 8, scope: !3500)
!3533 = !DILocation(line: 948, column: 31, scope: !3500)
!3534 = !DILocation(line: 948, column: 18, scope: !3500)
!3535 = !DILocation(line: 948, column: 7, scope: !3500)
!3536 = !DILocation(line: 950, column: 16, scope: !3500)
!3537 = !DILocation(line: 950, column: 20, scope: !3500)
!3538 = !DILocation(line: 950, column: 21, scope: !3500)
!3539 = !DILocation(line: 950, column: 13, scope: !3500)
!3540 = !DILocation(line: 950, column: 11, scope: !3500)
!3541 = !DILocation(line: 951, column: 12, scope: !3500)
!3542 = !DILocation(line: 951, column: 16, scope: !3500)
!3543 = !DILocation(line: 951, column: 17, scope: !3500)
!3544 = !DILocation(line: 951, column: 9, scope: !3500)
!3545 = !DILocation(line: 951, column: 7, scope: !3500)
!3546 = !DILocation(line: 952, column: 13, scope: !3500)
!3547 = !DILocation(line: 952, column: 17, scope: !3500)
!3548 = !DILocation(line: 952, column: 18, scope: !3500)
!3549 = !DILocation(line: 952, column: 10, scope: !3500)
!3550 = !DILocation(line: 952, column: 8, scope: !3500)
!3551 = !DILocation(line: 953, column: 14, scope: !3500)
!3552 = !DILocation(line: 953, column: 18, scope: !3500)
!3553 = !DILocation(line: 953, column: 19, scope: !3500)
!3554 = !DILocation(line: 953, column: 11, scope: !3500)
!3555 = !DILocation(line: 953, column: 9, scope: !3500)
!3556 = !DILocation(line: 954, column: 11, scope: !3500)
!3557 = !DILocation(line: 954, column: 15, scope: !3500)
!3558 = !DILocation(line: 954, column: 16, scope: !3500)
!3559 = !DILocation(line: 954, column: 8, scope: !3500)
!3560 = !DILocation(line: 954, column: 6, scope: !3500)
!3561 = !DILocation(line: 955, column: 9, scope: !3500)
!3562 = !DILocation(line: 955, column: 13, scope: !3500)
!3563 = !DILocation(line: 955, column: 18, scope: !3500)
!3564 = !DILocation(line: 955, column: 8, scope: !3500)
!3565 = !DILocation(line: 955, column: 6, scope: !3500)
!3566 = !DILocation(line: 956, column: 27, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3500, file: !73, line: 956, column: 2)
!3568 = !DILocation(line: 956, column: 31, scope: !3567)
!3569 = !DILocation(line: 956, column: 14, scope: !3567)
!3570 = !DILocation(line: 956, column: 12, scope: !3567)
!3571 = !DILocation(line: 956, column: 36, scope: !3567)
!3572 = !DILocation(line: 956, column: 40, scope: !3567)
!3573 = !DILocation(line: 956, column: 42, scope: !3567)
!3574 = !DILocation(line: 957, column: 29, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3500, file: !73, line: 957, column: 2)
!3576 = !DILocation(line: 957, column: 33, scope: !3575)
!3577 = !DILocation(line: 957, column: 16, scope: !3575)
!3578 = !DILocation(line: 957, column: 14, scope: !3575)
!3579 = !DILocation(line: 957, column: 38, scope: !3575)
!3580 = !DILocation(line: 957, column: 42, scope: !3575)
!3581 = !DILocation(line: 957, column: 44, scope: !3575)
!3582 = !DILocation(line: 959, column: 6, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3500, file: !73, line: 959, column: 6)
!3584 = !DILocation(line: 959, column: 20, scope: !3583)
!3585 = !DILocation(line: 959, column: 6, scope: !3500)
!3586 = !DILocation(line: 961, column: 10, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !73, line: 960, column: 2)
!3588 = !DILocation(line: 961, column: 8, scope: !3587)
!3589 = !DILocation(line: 962, column: 2, scope: !3587)
!3590 = !DILocation(line: 967, column: 25, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !73, line: 967, column: 3)
!3592 = distinct !DILexicalBlock(scope: !3583, file: !73, line: 964, column: 2)
!3593 = !DILocation(line: 967, column: 29, scope: !3591)
!3594 = !DILocation(line: 967, column: 12, scope: !3591)
!3595 = !DILocation(line: 967, column: 10, scope: !3591)
!3596 = !DILocation(line: 967, column: 34, scope: !3591)
!3597 = !DILocation(line: 967, column: 38, scope: !3591)
!3598 = !DILocation(line: 967, column: 40, scope: !3591)
!3599 = !DILocation(line: 968, column: 25, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3592, file: !73, line: 968, column: 3)
!3601 = !DILocation(line: 968, column: 29, scope: !3600)
!3602 = !DILocation(line: 968, column: 12, scope: !3600)
!3603 = !DILocation(line: 968, column: 10, scope: !3600)
!3604 = !DILocation(line: 968, column: 34, scope: !3600)
!3605 = !DILocation(line: 968, column: 38, scope: !3600)
!3606 = !DILocation(line: 968, column: 40, scope: !3600)
!3607 = !DILocation(line: 970, column: 29, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3592, file: !73, line: 970, column: 3)
!3609 = !DILocation(line: 970, column: 33, scope: !3608)
!3610 = !DILocation(line: 970, column: 16, scope: !3608)
!3611 = !DILocation(line: 970, column: 14, scope: !3608)
!3612 = !DILocation(line: 970, column: 38, scope: !3608)
!3613 = !DILocation(line: 970, column: 42, scope: !3608)
!3614 = !DILocation(line: 970, column: 44, scope: !3608)
!3615 = !DILocation(line: 971, column: 31, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3592, file: !73, line: 971, column: 3)
!3617 = !DILocation(line: 971, column: 35, scope: !3616)
!3618 = !DILocation(line: 971, column: 18, scope: !3616)
!3619 = !DILocation(line: 971, column: 16, scope: !3616)
!3620 = !DILocation(line: 971, column: 40, scope: !3616)
!3621 = !DILocation(line: 971, column: 44, scope: !3616)
!3622 = !DILocation(line: 971, column: 46, scope: !3616)
!3623 = !DILocation(line: 974, column: 12, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3500, file: !73, line: 974, column: 2)
!3625 = !DILocation(line: 974, column: 16, scope: !3624)
!3626 = !DILocation(line: 974, column: 9, scope: !3624)
!3627 = !DILocation(line: 974, column: 29, scope: !3624)
!3628 = !DILocation(line: 974, column: 20, scope: !3624)
!3629 = !DILocation(line: 974, column: 24, scope: !3624)
!3630 = !DILocation(line: 974, column: 26, scope: !3624)
!3631 = !DILocation(line: 977, column: 9, scope: !3500)
!3632 = !DILocation(line: 977, column: 16, scope: !3500)
!3633 = !DILocation(line: 977, column: 24, scope: !3500)
!3634 = !DILocation(line: 977, column: 34, scope: !3500)
!3635 = !DILocation(line: 977, column: 45, scope: !3500)
!3636 = !DILocation(line: 977, column: 50, scope: !3500)
!3637 = !DILocation(line: 977, column: 56, scope: !3500)
!3638 = !DILocation(line: 977, column: 62, scope: !3500)
!3639 = !DILocation(line: 977, column: 71, scope: !3500)
!3640 = !DILocation(line: 977, column: 77, scope: !3500)
!3641 = !DILocation(line: 978, column: 9, scope: !3500)
!3642 = !DILocation(line: 975, column: 2, scope: !3500)
!3643 = !DILocation(line: 980, column: 30, scope: !3500)
!3644 = !DILocation(line: 980, column: 38, scope: !3500)
!3645 = !DILocation(line: 980, column: 36, scope: !3500)
!3646 = !DILocation(line: 980, column: 47, scope: !3500)
!3647 = !DILocation(line: 980, column: 45, scope: !3500)
!3648 = !DILocation(line: 980, column: 22, scope: !3500)
!3649 = !DILocation(line: 980, column: 10, scope: !3500)
!3650 = !DILocation(line: 982, column: 24, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3500, file: !73, line: 982, column: 6)
!3652 = !DILocation(line: 982, column: 33, scope: !3651)
!3653 = !DILocation(line: 982, column: 40, scope: !3651)
!3654 = !DILocation(line: 982, column: 48, scope: !3651)
!3655 = !DILocation(line: 982, column: 54, scope: !3651)
!3656 = !DILocation(line: 982, column: 60, scope: !3651)
!3657 = !DILocation(line: 982, column: 6, scope: !3651)
!3658 = !DILocation(line: 982, column: 6, scope: !3500)
!3659 = !DILocation(line: 984, column: 29, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3651, file: !73, line: 983, column: 2)
!3661 = !DILocation(line: 984, column: 36, scope: !3660)
!3662 = !DILocation(line: 984, column: 44, scope: !3660)
!3663 = !DILocation(line: 984, column: 12, scope: !3660)
!3664 = !DILocation(line: 984, column: 10, scope: !3660)
!3665 = !DILocation(line: 985, column: 20, scope: !3660)
!3666 = !DILocation(line: 985, column: 30, scope: !3660)
!3667 = !DILocation(line: 985, column: 41, scope: !3660)
!3668 = !DILocation(line: 985, column: 3, scope: !3660)
!3669 = !DILocation(line: 986, column: 2, scope: !3660)
!3670 = !DILocation(line: 989, column: 3, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3651, file: !73, line: 988, column: 2)
!3672 = !DILocation(line: 992, column: 8, scope: !3500)
!3673 = !DILocation(line: 992, column: 2, scope: !3500)
!3674 = !DILocation(line: 993, column: 1, scope: !3500)
!3675 = distinct !DISubprogram(name: "process_fontcache", scope: !73, file: !73, line: 1113, type: !546, isLocal: true, isDefinition: true, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3676 = !DILocalVariable(name: "s", arg: 1, scope: !3675, file: !73, line: 1113, type: !298)
!3677 = !DILocation(line: 1113, column: 26, scope: !3675)
!3678 = !DILocalVariable(name: "bitmap", scope: !3675, file: !73, line: 1115, type: !3679)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HGLYPH", file: !40, line: 47, baseType: !61)
!3680 = !DILocation(line: 1115, column: 12, scope: !3675)
!3681 = !DILocalVariable(name: "font", scope: !3675, file: !73, line: 1116, type: !52)
!3682 = !DILocation(line: 1116, column: 8, scope: !3675)
!3683 = !DILocalVariable(name: "nglyphs", scope: !3675, file: !73, line: 1116, type: !52)
!3684 = !DILocation(line: 1116, column: 14, scope: !3675)
!3685 = !DILocalVariable(name: "character", scope: !3675, file: !73, line: 1117, type: !47)
!3686 = !DILocation(line: 1117, column: 9, scope: !3675)
!3687 = !DILocalVariable(name: "offset", scope: !3675, file: !73, line: 1117, type: !47)
!3688 = !DILocation(line: 1117, column: 20, scope: !3675)
!3689 = !DILocalVariable(name: "baseline", scope: !3675, file: !73, line: 1117, type: !47)
!3690 = !DILocation(line: 1117, column: 28, scope: !3675)
!3691 = !DILocalVariable(name: "width", scope: !3675, file: !73, line: 1117, type: !47)
!3692 = !DILocation(line: 1117, column: 38, scope: !3675)
!3693 = !DILocalVariable(name: "height", scope: !3675, file: !73, line: 1117, type: !47)
!3694 = !DILocation(line: 1117, column: 45, scope: !3675)
!3695 = !DILocalVariable(name: "i", scope: !3675, file: !73, line: 1118, type: !327)
!3696 = !DILocation(line: 1118, column: 6, scope: !3675)
!3697 = !DILocalVariable(name: "datasize", scope: !3675, file: !73, line: 1118, type: !327)
!3698 = !DILocation(line: 1118, column: 9, scope: !3675)
!3699 = !DILocalVariable(name: "data", scope: !3675, file: !73, line: 1119, type: !51)
!3700 = !DILocation(line: 1119, column: 9, scope: !3675)
!3701 = !DILocation(line: 1121, column: 12, scope: !3675)
!3702 = !DILocation(line: 1121, column: 16, scope: !3675)
!3703 = !DILocation(line: 1121, column: 17, scope: !3675)
!3704 = !DILocation(line: 1121, column: 9, scope: !3675)
!3705 = !DILocation(line: 1121, column: 7, scope: !3675)
!3706 = !DILocation(line: 1122, column: 15, scope: !3675)
!3707 = !DILocation(line: 1122, column: 19, scope: !3675)
!3708 = !DILocation(line: 1122, column: 20, scope: !3675)
!3709 = !DILocation(line: 1122, column: 12, scope: !3675)
!3710 = !DILocation(line: 1122, column: 10, scope: !3675)
!3711 = !DILocation(line: 1124, column: 64, scope: !3675)
!3712 = !DILocation(line: 1124, column: 70, scope: !3675)
!3713 = !DILocation(line: 1124, column: 2, scope: !3675)
!3714 = !DILocation(line: 1126, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3675, file: !73, line: 1126, column: 2)
!3716 = !DILocation(line: 1126, column: 7, scope: !3715)
!3717 = !DILocation(line: 1126, column: 14, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !3719, file: !73, discriminator: 1)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !73, line: 1126, column: 2)
!3720 = !DILocation(line: 1126, column: 18, scope: !3718)
!3721 = !DILocation(line: 1126, column: 16, scope: !3718)
!3722 = !DILocation(line: 1126, column: 2, scope: !3718)
!3723 = !DILocation(line: 1128, column: 30, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1128, column: 3)
!3725 = distinct !DILexicalBlock(scope: !3719, file: !73, line: 1127, column: 2)
!3726 = !DILocation(line: 1128, column: 34, scope: !3724)
!3727 = !DILocation(line: 1128, column: 17, scope: !3724)
!3728 = !DILocation(line: 1128, column: 15, scope: !3724)
!3729 = !DILocation(line: 1128, column: 39, scope: !3724)
!3730 = !DILocation(line: 1128, column: 43, scope: !3724)
!3731 = !DILocation(line: 1128, column: 45, scope: !3724)
!3732 = !DILocation(line: 1129, column: 27, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1129, column: 3)
!3734 = !DILocation(line: 1129, column: 31, scope: !3733)
!3735 = !DILocation(line: 1129, column: 14, scope: !3733)
!3736 = !DILocation(line: 1129, column: 12, scope: !3733)
!3737 = !DILocation(line: 1129, column: 36, scope: !3733)
!3738 = !DILocation(line: 1129, column: 40, scope: !3733)
!3739 = !DILocation(line: 1129, column: 42, scope: !3733)
!3740 = !DILocation(line: 1130, column: 29, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1130, column: 3)
!3742 = !DILocation(line: 1130, column: 33, scope: !3741)
!3743 = !DILocation(line: 1130, column: 16, scope: !3741)
!3744 = !DILocation(line: 1130, column: 14, scope: !3741)
!3745 = !DILocation(line: 1130, column: 38, scope: !3741)
!3746 = !DILocation(line: 1130, column: 42, scope: !3741)
!3747 = !DILocation(line: 1130, column: 44, scope: !3741)
!3748 = !DILocation(line: 1131, column: 26, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1131, column: 3)
!3750 = !DILocation(line: 1131, column: 30, scope: !3749)
!3751 = !DILocation(line: 1131, column: 13, scope: !3749)
!3752 = !DILocation(line: 1131, column: 11, scope: !3749)
!3753 = !DILocation(line: 1131, column: 35, scope: !3749)
!3754 = !DILocation(line: 1131, column: 39, scope: !3749)
!3755 = !DILocation(line: 1131, column: 41, scope: !3749)
!3756 = !DILocation(line: 1132, column: 27, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1132, column: 3)
!3758 = !DILocation(line: 1132, column: 31, scope: !3757)
!3759 = !DILocation(line: 1132, column: 14, scope: !3757)
!3760 = !DILocation(line: 1132, column: 12, scope: !3757)
!3761 = !DILocation(line: 1132, column: 36, scope: !3757)
!3762 = !DILocation(line: 1132, column: 40, scope: !3757)
!3763 = !DILocation(line: 1132, column: 42, scope: !3757)
!3764 = !DILocation(line: 1134, column: 15, scope: !3725)
!3765 = !DILocation(line: 1134, column: 26, scope: !3725)
!3766 = !DILocation(line: 1134, column: 32, scope: !3725)
!3767 = !DILocation(line: 1134, column: 37, scope: !3725)
!3768 = !DILocation(line: 1134, column: 22, scope: !3725)
!3769 = !DILocation(line: 1134, column: 42, scope: !3725)
!3770 = !DILocation(line: 1134, column: 47, scope: !3725)
!3771 = !DILocation(line: 1134, column: 12, scope: !3725)
!3772 = !DILocation(line: 1135, column: 13, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3725, file: !73, line: 1135, column: 3)
!3774 = !DILocation(line: 1135, column: 17, scope: !3773)
!3775 = !DILocation(line: 1135, column: 10, scope: !3773)
!3776 = !DILocation(line: 1135, column: 30, scope: !3773)
!3777 = !DILocation(line: 1135, column: 21, scope: !3773)
!3778 = !DILocation(line: 1135, column: 25, scope: !3773)
!3779 = !DILocation(line: 1135, column: 27, scope: !3773)
!3780 = !DILocation(line: 1137, column: 28, scope: !3725)
!3781 = !DILocation(line: 1137, column: 35, scope: !3725)
!3782 = !DILocation(line: 1137, column: 43, scope: !3725)
!3783 = !DILocation(line: 1137, column: 12, scope: !3725)
!3784 = !DILocation(line: 1137, column: 10, scope: !3725)
!3785 = !DILocation(line: 1138, column: 18, scope: !3725)
!3786 = !DILocation(line: 1138, column: 24, scope: !3725)
!3787 = !DILocation(line: 1138, column: 35, scope: !3725)
!3788 = !DILocation(line: 1138, column: 43, scope: !3725)
!3789 = !DILocation(line: 1138, column: 53, scope: !3725)
!3790 = !DILocation(line: 1138, column: 60, scope: !3725)
!3791 = !DILocation(line: 1138, column: 68, scope: !3725)
!3792 = !DILocation(line: 1138, column: 3, scope: !3725)
!3793 = !DILocation(line: 1139, column: 2, scope: !3725)
!3794 = !DILocation(line: 1126, column: 28, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3719, file: !73, discriminator: 2)
!3796 = !DILocation(line: 1126, column: 2, scope: !3795)
!3797 = distinct !{!3797, !3798}
!3798 = !DILocation(line: 1126, column: 2, scope: !3675)
!3799 = !DILocation(line: 1140, column: 1, scope: !3675)
!3800 = distinct !DISubprogram(name: "process_bmpcache2", scope: !73, file: !73, line: 997, type: !3801, isLocal: true, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !298, !47, !332}
!3803 = !DILocalVariable(name: "s", arg: 1, scope: !3800, file: !73, line: 997, type: !298)
!3804 = !DILocation(line: 997, column: 26, scope: !3800)
!3805 = !DILocalVariable(name: "flags", arg: 2, scope: !3800, file: !73, line: 997, type: !47)
!3806 = !DILocation(line: 997, column: 36, scope: !3800)
!3807 = !DILocalVariable(name: "compressed", arg: 3, scope: !3800, file: !73, line: 997, type: !332)
!3808 = !DILocation(line: 997, column: 51, scope: !3800)
!3809 = !DILocalVariable(name: "bitmap", scope: !3800, file: !73, line: 999, type: !1500)
!3810 = !DILocation(line: 999, column: 13, scope: !3800)
!3811 = !DILocalVariable(name: "y", scope: !3800, file: !73, line: 1000, type: !327)
!3812 = !DILocation(line: 1000, column: 6, scope: !3800)
!3813 = !DILocalVariable(name: "cache_id", scope: !3800, file: !73, line: 1001, type: !52)
!3814 = !DILocation(line: 1001, column: 8, scope: !3800)
!3815 = !DILocalVariable(name: "cache_idx_low", scope: !3800, file: !73, line: 1001, type: !52)
!3816 = !DILocation(line: 1001, column: 18, scope: !3800)
!3817 = !DILocalVariable(name: "width", scope: !3800, file: !73, line: 1001, type: !52)
!3818 = !DILocation(line: 1001, column: 33, scope: !3800)
!3819 = !DILocalVariable(name: "height", scope: !3800, file: !73, line: 1001, type: !52)
!3820 = !DILocation(line: 1001, column: 40, scope: !3800)
!3821 = !DILocalVariable(name: "Bpp", scope: !3800, file: !73, line: 1001, type: !52)
!3822 = !DILocation(line: 1001, column: 48, scope: !3800)
!3823 = !DILocalVariable(name: "cache_idx", scope: !3800, file: !73, line: 1002, type: !47)
!3824 = !DILocation(line: 1002, column: 9, scope: !3800)
!3825 = !DILocalVariable(name: "bufsize", scope: !3800, file: !73, line: 1002, type: !47)
!3826 = !DILocation(line: 1002, column: 20, scope: !3800)
!3827 = !DILocalVariable(name: "data", scope: !3800, file: !73, line: 1003, type: !51)
!3828 = !DILocation(line: 1003, column: 9, scope: !3800)
!3829 = !DILocalVariable(name: "bmpdata", scope: !3800, file: !73, line: 1003, type: !51)
!3830 = !DILocation(line: 1003, column: 16, scope: !3800)
!3831 = !DILocalVariable(name: "bitmap_id", scope: !3800, file: !73, line: 1003, type: !51)
!3832 = !DILocation(line: 1003, column: 26, scope: !3800)
!3833 = !DILocation(line: 1005, column: 12, scope: !3800)
!3834 = !DILocation(line: 1006, column: 13, scope: !3800)
!3835 = !DILocation(line: 1006, column: 19, scope: !3800)
!3836 = !DILocation(line: 1006, column: 11, scope: !3800)
!3837 = !DILocation(line: 1007, column: 10, scope: !3800)
!3838 = !DILocation(line: 1007, column: 16, scope: !3800)
!3839 = !DILocation(line: 1007, column: 26, scope: !3800)
!3840 = !DILocation(line: 1007, column: 32, scope: !3800)
!3841 = !DILocation(line: 1007, column: 8, scope: !3800)
!3842 = !DILocation(line: 1007, column: 6, scope: !3800)
!3843 = !DILocation(line: 1009, column: 6, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1009, column: 6)
!3845 = !DILocation(line: 1009, column: 12, scope: !3844)
!3846 = !DILocation(line: 1009, column: 6, scope: !3800)
!3847 = !DILocation(line: 1011, column: 18, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !73, line: 1011, column: 3)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !73, line: 1010, column: 2)
!3850 = !DILocation(line: 1011, column: 22, scope: !3848)
!3851 = !DILocation(line: 1011, column: 15, scope: !3848)
!3852 = !DILocation(line: 1011, column: 26, scope: !3848)
!3853 = !DILocation(line: 1011, column: 30, scope: !3848)
!3854 = !DILocation(line: 1011, column: 32, scope: !3848)
!3855 = !DILocation(line: 1012, column: 2, scope: !3849)
!3856 = !DILocation(line: 1014, column: 6, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1014, column: 6)
!3858 = !DILocation(line: 1014, column: 12, scope: !3857)
!3859 = !DILocation(line: 1014, column: 6, scope: !3800)
!3860 = !DILocation(line: 1016, column: 14, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !73, line: 1015, column: 2)
!3862 = !DILocation(line: 1016, column: 18, scope: !3861)
!3863 = !DILocation(line: 1016, column: 19, scope: !3861)
!3864 = !DILocation(line: 1016, column: 11, scope: !3861)
!3865 = !DILocation(line: 1016, column: 9, scope: !3861)
!3866 = !DILocation(line: 1017, column: 12, scope: !3861)
!3867 = !DILocation(line: 1017, column: 10, scope: !3861)
!3868 = !DILocation(line: 1018, column: 2, scope: !3861)
!3869 = !DILocation(line: 1021, column: 14, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3857, file: !73, line: 1020, column: 2)
!3871 = !DILocation(line: 1021, column: 18, scope: !3870)
!3872 = !DILocation(line: 1021, column: 19, scope: !3870)
!3873 = !DILocation(line: 1021, column: 11, scope: !3870)
!3874 = !DILocation(line: 1021, column: 9, scope: !3870)
!3875 = !DILocation(line: 1022, column: 15, scope: !3870)
!3876 = !DILocation(line: 1022, column: 19, scope: !3870)
!3877 = !DILocation(line: 1022, column: 20, scope: !3870)
!3878 = !DILocation(line: 1022, column: 12, scope: !3870)
!3879 = !DILocation(line: 1022, column: 10, scope: !3870)
!3880 = !DILocation(line: 1025, column: 17, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1025, column: 2)
!3882 = !DILocation(line: 1025, column: 21, scope: !3881)
!3883 = !DILocation(line: 1025, column: 22, scope: !3881)
!3884 = !DILocation(line: 1025, column: 14, scope: !3881)
!3885 = !DILocation(line: 1025, column: 12, scope: !3881)
!3886 = !DILocation(line: 1025, column: 39, scope: !3881)
!3887 = !DILocation(line: 1025, column: 38, scope: !3881)
!3888 = !DILocation(line: 1025, column: 48, scope: !3881)
!3889 = !DILocation(line: 1025, column: 59, scope: !3881)
!3890 = !DILocation(line: 1025, column: 63, scope: !3881)
!3891 = !DILocation(line: 1025, column: 64, scope: !3881)
!3892 = !DILocation(line: 1025, column: 56, scope: !3881)
!3893 = !DILocation(line: 1025, column: 54, scope: !3881)
!3894 = !DILocation(line: 1025, column: 37, scope: !3881)
!3895 = !DILocation(line: 1025, column: 35, scope: !3881)
!3896 = !DILocation(line: 1026, column: 10, scope: !3800)
!3897 = !DILocation(line: 1027, column: 17, scope: !3800)
!3898 = !DILocation(line: 1027, column: 21, scope: !3800)
!3899 = !DILocation(line: 1027, column: 22, scope: !3800)
!3900 = !DILocation(line: 1027, column: 14, scope: !3800)
!3901 = !DILocation(line: 1027, column: 12, scope: !3800)
!3902 = !DILocation(line: 1029, column: 6, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1029, column: 6)
!3904 = !DILocation(line: 1029, column: 16, scope: !3903)
!3905 = !DILocation(line: 1029, column: 6, scope: !3800)
!3906 = !DILocation(line: 1031, column: 22, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !73, line: 1030, column: 2)
!3908 = !DILocation(line: 1031, column: 26, scope: !3907)
!3909 = !DILocation(line: 1031, column: 27, scope: !3907)
!3910 = !DILocation(line: 1031, column: 19, scope: !3907)
!3911 = !DILocation(line: 1031, column: 17, scope: !3907)
!3912 = !DILocation(line: 1032, column: 17, scope: !3907)
!3913 = !DILocation(line: 1032, column: 27, scope: !3907)
!3914 = !DILocation(line: 1032, column: 35, scope: !3907)
!3915 = !DILocation(line: 1032, column: 43, scope: !3907)
!3916 = !DILocation(line: 1032, column: 41, scope: !3907)
!3917 = !DILocation(line: 1032, column: 15, scope: !3907)
!3918 = !DILocation(line: 1032, column: 13, scope: !3907)
!3919 = !DILocation(line: 1033, column: 2, scope: !3907)
!3920 = !DILocation(line: 1035, column: 12, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1035, column: 2)
!3922 = !DILocation(line: 1035, column: 16, scope: !3921)
!3923 = !DILocation(line: 1035, column: 9, scope: !3921)
!3924 = !DILocation(line: 1035, column: 29, scope: !3921)
!3925 = !DILocation(line: 1035, column: 20, scope: !3921)
!3926 = !DILocation(line: 1035, column: 24, scope: !3921)
!3927 = !DILocation(line: 1035, column: 26, scope: !3921)
!3928 = !DILocation(line: 1039, column: 9, scope: !3800)
!3929 = !DILocation(line: 1039, column: 21, scope: !3800)
!3930 = !DILocation(line: 1039, column: 28, scope: !3800)
!3931 = !DILocation(line: 1039, column: 35, scope: !3800)
!3932 = !DILocation(line: 1039, column: 43, scope: !3800)
!3933 = !DILocation(line: 1039, column: 53, scope: !3800)
!3934 = !DILocation(line: 1039, column: 64, scope: !3800)
!3935 = !DILocation(line: 1039, column: 69, scope: !3800)
!3936 = !DILocation(line: 1037, column: 2, scope: !3800)
!3937 = !DILocation(line: 1041, column: 30, scope: !3800)
!3938 = !DILocation(line: 1041, column: 38, scope: !3800)
!3939 = !DILocation(line: 1041, column: 36, scope: !3800)
!3940 = !DILocation(line: 1041, column: 47, scope: !3800)
!3941 = !DILocation(line: 1041, column: 45, scope: !3800)
!3942 = !DILocation(line: 1041, column: 22, scope: !3800)
!3943 = !DILocation(line: 1041, column: 10, scope: !3800)
!3944 = !DILocation(line: 1043, column: 6, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1043, column: 6)
!3946 = !DILocation(line: 1043, column: 6, scope: !3800)
!3947 = !DILocation(line: 1045, column: 26, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !73, line: 1045, column: 7)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !73, line: 1044, column: 2)
!3950 = !DILocation(line: 1045, column: 35, scope: !3948)
!3951 = !DILocation(line: 1045, column: 42, scope: !3948)
!3952 = !DILocation(line: 1045, column: 50, scope: !3948)
!3953 = !DILocation(line: 1045, column: 56, scope: !3948)
!3954 = !DILocation(line: 1045, column: 65, scope: !3948)
!3955 = !DILocation(line: 1045, column: 8, scope: !3948)
!3956 = !DILocation(line: 1045, column: 7, scope: !3949)
!3957 = !DILocation(line: 1047, column: 4, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3948, file: !73, line: 1046, column: 3)
!3959 = !DILocation(line: 1049, column: 10, scope: !3958)
!3960 = !DILocation(line: 1049, column: 4, scope: !3958)
!3961 = !DILocation(line: 1050, column: 4, scope: !3958)
!3962 = !DILocation(line: 1052, column: 2, scope: !3949)
!3963 = !DILocation(line: 1055, column: 10, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !73, line: 1055, column: 3)
!3965 = distinct !DILexicalBlock(scope: !3945, file: !73, line: 1054, column: 2)
!3966 = !DILocation(line: 1055, column: 8, scope: !3964)
!3967 = !DILocation(line: 1055, column: 15, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3969, file: !73, discriminator: 1)
!3969 = distinct !DILexicalBlock(scope: !3964, file: !73, line: 1055, column: 3)
!3970 = !DILocation(line: 1055, column: 19, scope: !3968)
!3971 = !DILocation(line: 1055, column: 17, scope: !3968)
!3972 = !DILocation(line: 1055, column: 3, scope: !3968)
!3973 = !DILocation(line: 1056, column: 21, scope: !3969)
!3974 = !DILocation(line: 1056, column: 30, scope: !3969)
!3975 = !DILocation(line: 1056, column: 28, scope: !3969)
!3976 = !DILocation(line: 1056, column: 32, scope: !3969)
!3977 = !DILocation(line: 1056, column: 40, scope: !3969)
!3978 = !DILocation(line: 1056, column: 48, scope: !3969)
!3979 = !DILocation(line: 1056, column: 46, scope: !3969)
!3980 = !DILocation(line: 1056, column: 37, scope: !3969)
!3981 = !DILocation(line: 1056, column: 12, scope: !3969)
!3982 = !DILocation(line: 1057, column: 17, scope: !3969)
!3983 = !DILocation(line: 1057, column: 22, scope: !3969)
!3984 = !DILocation(line: 1057, column: 30, scope: !3969)
!3985 = !DILocation(line: 1057, column: 28, scope: !3969)
!3986 = !DILocation(line: 1057, column: 19, scope: !3969)
!3987 = !DILocation(line: 1057, column: 12, scope: !3969)
!3988 = !DILocation(line: 1057, column: 37, scope: !3969)
!3989 = !DILocation(line: 1057, column: 45, scope: !3969)
!3990 = !DILocation(line: 1057, column: 43, scope: !3969)
!3991 = !DILocation(line: 1056, column: 4, scope: !3969)
!3992 = !DILocation(line: 1055, column: 28, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !3969, file: !73, discriminator: 2)
!3994 = !DILocation(line: 1055, column: 3, scope: !3993)
!3995 = distinct !{!3995, !3996}
!3996 = !DILocation(line: 1055, column: 3, scope: !3965)
!3997 = !DILocation(line: 1060, column: 28, scope: !3800)
!3998 = !DILocation(line: 1060, column: 35, scope: !3800)
!3999 = !DILocation(line: 1060, column: 43, scope: !3800)
!4000 = !DILocation(line: 1060, column: 11, scope: !3800)
!4001 = !DILocation(line: 1060, column: 9, scope: !3800)
!4002 = !DILocation(line: 1062, column: 6, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3800, file: !73, line: 1062, column: 6)
!4004 = !DILocation(line: 1062, column: 6, scope: !3800)
!4005 = !DILocation(line: 1064, column: 20, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4003, file: !73, line: 1063, column: 2)
!4007 = !DILocation(line: 1064, column: 30, scope: !4006)
!4008 = !DILocation(line: 1064, column: 41, scope: !4006)
!4009 = !DILocation(line: 1064, column: 3, scope: !4006)
!4010 = !DILocation(line: 1065, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4006, file: !73, line: 1065, column: 7)
!4012 = !DILocation(line: 1065, column: 13, scope: !4011)
!4013 = !DILocation(line: 1065, column: 7, scope: !4006)
!4014 = !DILocation(line: 1066, column: 25, scope: !4011)
!4015 = !DILocation(line: 1066, column: 35, scope: !4011)
!4016 = !DILocation(line: 1066, column: 46, scope: !4011)
!4017 = !DILocation(line: 1066, column: 57, scope: !4011)
!4018 = !DILocation(line: 1066, column: 64, scope: !4011)
!4019 = !DILocation(line: 1067, column: 11, scope: !4011)
!4020 = !DILocation(line: 1067, column: 19, scope: !4011)
!4021 = !DILocation(line: 1067, column: 17, scope: !4011)
!4022 = !DILocation(line: 1067, column: 28, scope: !4011)
!4023 = !DILocation(line: 1067, column: 26, scope: !4011)
!4024 = !DILocation(line: 1067, column: 33, scope: !4011)
!4025 = !DILocation(line: 1066, column: 4, scope: !4011)
!4026 = !DILocation(line: 1068, column: 2, scope: !4006)
!4027 = !DILocation(line: 1071, column: 3, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4003, file: !73, line: 1070, column: 2)
!4029 = !DILocation(line: 1074, column: 8, scope: !3800)
!4030 = !DILocation(line: 1074, column: 2, scope: !3800)
!4031 = !DILocation(line: 1075, column: 1, scope: !3800)
!4032 = !DILocation(line: 1075, column: 1, scope: !4033)
!4033 = !DILexicalBlockFile(scope: !3800, file: !73, discriminator: 1)
!4034 = distinct !DISubprogram(name: "process_brushcache", scope: !73, file: !73, line: 1177, type: !296, isLocal: true, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4035 = !DILocalVariable(name: "s", arg: 1, scope: !4034, file: !73, line: 1177, type: !298)
!4036 = !DILocation(line: 1177, column: 27, scope: !4034)
!4037 = !DILocalVariable(name: "flags", arg: 2, scope: !4034, file: !73, line: 1177, type: !47)
!4038 = !DILocation(line: 1177, column: 37, scope: !4034)
!4039 = !DILocation(line: 1179, column: 9, scope: !4034)
!4040 = !DILocalVariable(name: "brush_data", scope: !4034, file: !73, line: 1180, type: !119)
!4041 = !DILocation(line: 1180, column: 12, scope: !4034)
!4042 = !DILocalVariable(name: "cache_idx", scope: !4034, file: !73, line: 1181, type: !52)
!4043 = !DILocation(line: 1181, column: 8, scope: !4034)
!4044 = !DILocalVariable(name: "colour_code", scope: !4034, file: !73, line: 1181, type: !52)
!4045 = !DILocation(line: 1181, column: 19, scope: !4034)
!4046 = !DILocalVariable(name: "width", scope: !4034, file: !73, line: 1181, type: !52)
!4047 = !DILocation(line: 1181, column: 32, scope: !4034)
!4048 = !DILocalVariable(name: "height", scope: !4034, file: !73, line: 1181, type: !52)
!4049 = !DILocation(line: 1181, column: 39, scope: !4034)
!4050 = !DILocalVariable(name: "size", scope: !4034, file: !73, line: 1181, type: !52)
!4051 = !DILocation(line: 1181, column: 47, scope: !4034)
!4052 = !DILocalVariable(name: "type", scope: !4034, file: !73, line: 1181, type: !52)
!4053 = !DILocation(line: 1181, column: 53, scope: !4034)
!4054 = !DILocalVariable(name: "comp_brush", scope: !4034, file: !73, line: 1182, type: !51)
!4055 = !DILocation(line: 1182, column: 9, scope: !4034)
!4056 = !DILocalVariable(name: "index", scope: !4034, file: !73, line: 1183, type: !327)
!4057 = !DILocation(line: 1183, column: 6, scope: !4034)
!4058 = !DILocalVariable(name: "Bpp", scope: !4034, file: !73, line: 1184, type: !327)
!4059 = !DILocation(line: 1184, column: 6, scope: !4034)
!4060 = !DILocation(line: 1186, column: 17, scope: !4034)
!4061 = !DILocation(line: 1186, column: 21, scope: !4034)
!4062 = !DILocation(line: 1186, column: 22, scope: !4034)
!4063 = !DILocation(line: 1186, column: 14, scope: !4034)
!4064 = !DILocation(line: 1186, column: 12, scope: !4034)
!4065 = !DILocation(line: 1187, column: 19, scope: !4034)
!4066 = !DILocation(line: 1187, column: 23, scope: !4034)
!4067 = !DILocation(line: 1187, column: 24, scope: !4034)
!4068 = !DILocation(line: 1187, column: 16, scope: !4034)
!4069 = !DILocation(line: 1187, column: 14, scope: !4034)
!4070 = !DILocation(line: 1188, column: 13, scope: !4034)
!4071 = !DILocation(line: 1188, column: 17, scope: !4034)
!4072 = !DILocation(line: 1188, column: 18, scope: !4034)
!4073 = !DILocation(line: 1188, column: 10, scope: !4034)
!4074 = !DILocation(line: 1188, column: 8, scope: !4034)
!4075 = !DILocation(line: 1189, column: 14, scope: !4034)
!4076 = !DILocation(line: 1189, column: 18, scope: !4034)
!4077 = !DILocation(line: 1189, column: 19, scope: !4034)
!4078 = !DILocation(line: 1189, column: 11, scope: !4034)
!4079 = !DILocation(line: 1189, column: 9, scope: !4034)
!4080 = !DILocation(line: 1190, column: 12, scope: !4034)
!4081 = !DILocation(line: 1190, column: 16, scope: !4034)
!4082 = !DILocation(line: 1190, column: 17, scope: !4034)
!4083 = !DILocation(line: 1190, column: 9, scope: !4034)
!4084 = !DILocation(line: 1190, column: 7, scope: !4034)
!4085 = !DILocation(line: 1191, column: 12, scope: !4034)
!4086 = !DILocation(line: 1191, column: 16, scope: !4034)
!4087 = !DILocation(line: 1191, column: 17, scope: !4034)
!4088 = !DILocation(line: 1191, column: 9, scope: !4034)
!4089 = !DILocation(line: 1191, column: 7, scope: !4034)
!4090 = !DILocation(line: 1194, column: 9, scope: !4034)
!4091 = !DILocation(line: 1194, column: 20, scope: !4034)
!4092 = !DILocation(line: 1194, column: 27, scope: !4034)
!4093 = !DILocation(line: 1194, column: 35, scope: !4034)
!4094 = !DILocation(line: 1194, column: 41, scope: !4034)
!4095 = !DILocation(line: 1193, column: 2, scope: !4034)
!4096 = !DILocation(line: 1196, column: 7, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4034, file: !73, line: 1196, column: 6)
!4098 = !DILocation(line: 1196, column: 13, scope: !4097)
!4099 = !DILocation(line: 1196, column: 19, scope: !4097)
!4100 = !DILocation(line: 1196, column: 23, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4097, file: !73, discriminator: 1)
!4102 = !DILocation(line: 1196, column: 30, scope: !4101)
!4103 = !DILocation(line: 1196, column: 6, scope: !4101)
!4104 = !DILocation(line: 1198, column: 7, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !73, line: 1198, column: 7)
!4106 = distinct !DILexicalBlock(scope: !4097, file: !73, line: 1197, column: 2)
!4107 = !DILocation(line: 1198, column: 19, scope: !4105)
!4108 = !DILocation(line: 1198, column: 7, scope: !4106)
!4109 = !DILocation(line: 1200, column: 15, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4105, file: !73, line: 1199, column: 3)
!4111 = !DILocation(line: 1200, column: 27, scope: !4110)
!4112 = !DILocation(line: 1201, column: 15, scope: !4110)
!4113 = !DILocation(line: 1201, column: 25, scope: !4110)
!4114 = !DILocation(line: 1202, column: 22, scope: !4110)
!4115 = !DILocation(line: 1202, column: 15, scope: !4110)
!4116 = !DILocation(line: 1202, column: 20, scope: !4110)
!4117 = !DILocation(line: 1203, column: 8, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4110, file: !73, line: 1203, column: 8)
!4119 = !DILocation(line: 1203, column: 13, scope: !4118)
!4120 = !DILocation(line: 1203, column: 8, scope: !4110)
!4121 = !DILocation(line: 1206, column: 16, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !73, line: 1206, column: 5)
!4123 = distinct !DILexicalBlock(scope: !4118, file: !73, line: 1204, column: 4)
!4124 = !DILocation(line: 1206, column: 10, scope: !4122)
!4125 = !DILocation(line: 1206, column: 21, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4127, file: !73, discriminator: 1)
!4127 = distinct !DILexicalBlock(scope: !4122, file: !73, line: 1206, column: 5)
!4128 = !DILocation(line: 1206, column: 27, scope: !4126)
!4129 = !DILocation(line: 1206, column: 5, scope: !4126)
!4130 = !DILocation(line: 1208, column: 34, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !73, line: 1207, column: 5)
!4132 = !DILocation(line: 1208, column: 38, scope: !4131)
!4133 = !DILocation(line: 1208, column: 39, scope: !4131)
!4134 = !DILocation(line: 1208, column: 31, scope: !4131)
!4135 = !DILocation(line: 1208, column: 22, scope: !4131)
!4136 = !DILocation(line: 1208, column: 6, scope: !4131)
!4137 = !DILocation(line: 1208, column: 17, scope: !4131)
!4138 = !DILocation(line: 1208, column: 29, scope: !4131)
!4139 = !DILocation(line: 1209, column: 5, scope: !4131)
!4140 = !DILocation(line: 1206, column: 38, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4127, file: !73, discriminator: 2)
!4142 = !DILocation(line: 1206, column: 5, scope: !4141)
!4143 = distinct !{!4143, !4144}
!4144 = !DILocation(line: 1206, column: 5, scope: !4123)
!4145 = !DILocation(line: 1210, column: 4, scope: !4123)
!4146 = !DILocation(line: 1215, column: 12, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4118, file: !73, line: 1212, column: 4)
!4148 = !DILocation(line: 1215, column: 25, scope: !4147)
!4149 = !DILocation(line: 1213, column: 5, scope: !4147)
!4150 = !DILocation(line: 1217, column: 28, scope: !4110)
!4151 = !DILocation(line: 1217, column: 4, scope: !4110)
!4152 = !DILocation(line: 1218, column: 3, scope: !4110)
!4153 = !DILocation(line: 1219, column: 13, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4105, file: !73, line: 1219, column: 12)
!4155 = !DILocation(line: 1219, column: 25, scope: !4154)
!4156 = !DILocation(line: 1219, column: 31, scope: !4154)
!4157 = !DILocation(line: 1219, column: 35, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4154, file: !73, discriminator: 1)
!4159 = !DILocation(line: 1219, column: 47, scope: !4158)
!4160 = !DILocation(line: 1219, column: 12, scope: !4158)
!4161 = !DILocation(line: 1221, column: 10, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4154, file: !73, line: 1220, column: 3)
!4163 = !DILocation(line: 1221, column: 22, scope: !4162)
!4164 = !DILocation(line: 1221, column: 8, scope: !4162)
!4165 = !DILocation(line: 1222, column: 29, scope: !4162)
!4166 = !DILocation(line: 1222, column: 15, scope: !4162)
!4167 = !DILocation(line: 1222, column: 27, scope: !4162)
!4168 = !DILocation(line: 1223, column: 35, scope: !4162)
!4169 = !DILocation(line: 1223, column: 33, scope: !4162)
!4170 = !DILocation(line: 1223, column: 15, scope: !4162)
!4171 = !DILocation(line: 1223, column: 25, scope: !4162)
!4172 = !DILocation(line: 1224, column: 38, scope: !4162)
!4173 = !DILocation(line: 1224, column: 36, scope: !4162)
!4174 = !DILocation(line: 1224, column: 22, scope: !4162)
!4175 = !DILocation(line: 1224, column: 15, scope: !4162)
!4176 = !DILocation(line: 1224, column: 20, scope: !4162)
!4177 = !DILocation(line: 1225, column: 8, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4162, file: !73, line: 1225, column: 8)
!4179 = !DILocation(line: 1225, column: 25, scope: !4178)
!4180 = !DILocation(line: 1225, column: 23, scope: !4178)
!4181 = !DILocation(line: 1225, column: 19, scope: !4178)
!4182 = !DILocation(line: 1225, column: 13, scope: !4178)
!4183 = !DILocation(line: 1225, column: 8, scope: !4162)
!4184 = !DILocation(line: 1227, column: 21, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !73, line: 1227, column: 5)
!4186 = distinct !DILexicalBlock(scope: !4178, file: !73, line: 1226, column: 4)
!4187 = !DILocation(line: 1227, column: 25, scope: !4185)
!4188 = !DILocation(line: 1227, column: 18, scope: !4185)
!4189 = !DILocation(line: 1227, column: 47, scope: !4185)
!4190 = !DILocation(line: 1227, column: 45, scope: !4185)
!4191 = !DILocation(line: 1227, column: 41, scope: !4185)
!4192 = !DILocation(line: 1227, column: 29, scope: !4185)
!4193 = !DILocation(line: 1227, column: 33, scope: !4185)
!4194 = !DILocation(line: 1227, column: 35, scope: !4185)
!4195 = !DILocation(line: 1228, column: 39, scope: !4186)
!4196 = !DILocation(line: 1228, column: 62, scope: !4186)
!4197 = !DILocation(line: 1228, column: 68, scope: !4186)
!4198 = !DILocation(line: 1228, column: 5, scope: !4186)
!4199 = !DILocation(line: 1229, column: 4, scope: !4186)
!4200 = !DILocation(line: 1232, column: 25, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !73, line: 1232, column: 5)
!4202 = distinct !DILexicalBlock(scope: !4178, file: !73, line: 1231, column: 4)
!4203 = !DILocation(line: 1232, column: 31, scope: !4201)
!4204 = !DILocation(line: 1232, column: 35, scope: !4201)
!4205 = !DILocation(line: 1232, column: 45, scope: !4201)
!4206 = !DILocation(line: 1232, column: 43, scope: !4201)
!4207 = !DILocation(line: 1232, column: 37, scope: !4201)
!4208 = !DILocation(line: 1232, column: 7, scope: !4201)
!4209 = !DILocation(line: 1232, column: 69, scope: !4201)
!4210 = !DILocation(line: 1232, column: 67, scope: !4201)
!4211 = !DILocation(line: 1232, column: 52, scope: !4201)
!4212 = !DILocation(line: 1232, column: 56, scope: !4201)
!4213 = !DILocation(line: 1232, column: 58, scope: !4201)
!4214 = !DILocation(line: 1234, column: 25, scope: !4162)
!4215 = !DILocation(line: 1234, column: 38, scope: !4162)
!4216 = !DILocation(line: 1234, column: 4, scope: !4162)
!4217 = !DILocation(line: 1235, column: 3, scope: !4162)
!4218 = !DILocation(line: 1240, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4154, file: !73, line: 1237, column: 3)
!4220 = !DILocation(line: 1240, column: 24, scope: !4219)
!4221 = !DILocation(line: 1238, column: 4, scope: !4219)
!4222 = !DILocation(line: 1242, column: 2, scope: !4106)
!4223 = !DILocation(line: 1246, column: 74, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4097, file: !73, line: 1244, column: 2)
!4225 = !DILocation(line: 1247, column: 10, scope: !4224)
!4226 = !DILocation(line: 1245, column: 3, scope: !4224)
!4227 = !DILocation(line: 1249, column: 1, scope: !4034)
!4228 = distinct !DISubprogram(name: "process_compressed_8x8_brush_data", scope: !73, file: !73, line: 1143, type: !4229, isLocal: true, isDefinition: true, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !51, !51, !327}
!4231 = !DILocalVariable(name: "in", arg: 1, scope: !4228, file: !73, line: 1143, type: !51)
!4232 = !DILocation(line: 1143, column: 43, scope: !4228)
!4233 = !DILocalVariable(name: "out", arg: 2, scope: !4228, file: !73, line: 1143, type: !51)
!4234 = !DILocation(line: 1143, column: 55, scope: !4228)
!4235 = !DILocalVariable(name: "Bpp", arg: 3, scope: !4228, file: !73, line: 1143, type: !327)
!4236 = !DILocation(line: 1143, column: 64, scope: !4228)
!4237 = !DILocalVariable(name: "x", scope: !4228, file: !73, line: 1145, type: !327)
!4238 = !DILocation(line: 1145, column: 6, scope: !4228)
!4239 = !DILocalVariable(name: "y", scope: !4228, file: !73, line: 1145, type: !327)
!4240 = !DILocation(line: 1145, column: 9, scope: !4228)
!4241 = !DILocalVariable(name: "pal_index", scope: !4228, file: !73, line: 1145, type: !327)
!4242 = !DILocation(line: 1145, column: 12, scope: !4228)
!4243 = !DILocalVariable(name: "in_index", scope: !4228, file: !73, line: 1145, type: !327)
!4244 = !DILocation(line: 1145, column: 23, scope: !4228)
!4245 = !DILocalVariable(name: "shift", scope: !4228, file: !73, line: 1145, type: !327)
!4246 = !DILocation(line: 1145, column: 33, scope: !4228)
!4247 = !DILocalVariable(name: "do2", scope: !4228, file: !73, line: 1145, type: !327)
!4248 = !DILocation(line: 1145, column: 40, scope: !4228)
!4249 = !DILocalVariable(name: "i", scope: !4228, file: !73, line: 1145, type: !327)
!4250 = !DILocation(line: 1145, column: 45, scope: !4228)
!4251 = !DILocalVariable(name: "pal", scope: !4228, file: !73, line: 1146, type: !51)
!4252 = !DILocation(line: 1146, column: 9, scope: !4228)
!4253 = !DILocation(line: 1148, column: 11, scope: !4228)
!4254 = !DILocation(line: 1149, column: 8, scope: !4228)
!4255 = !DILocation(line: 1149, column: 11, scope: !4228)
!4256 = !DILocation(line: 1149, column: 6, scope: !4228)
!4257 = !DILocation(line: 1151, column: 9, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4228, file: !73, line: 1151, column: 2)
!4259 = !DILocation(line: 1151, column: 7, scope: !4258)
!4260 = !DILocation(line: 1151, column: 14, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !4262, file: !73, discriminator: 1)
!4262 = distinct !DILexicalBlock(scope: !4258, file: !73, line: 1151, column: 2)
!4263 = !DILocation(line: 1151, column: 16, scope: !4261)
!4264 = !DILocation(line: 1151, column: 2, scope: !4261)
!4265 = !DILocation(line: 1154, column: 5, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !73, line: 1152, column: 2)
!4267 = !DILocation(line: 1155, column: 12, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !73, line: 1155, column: 3)
!4269 = !DILocation(line: 1155, column: 8, scope: !4268)
!4270 = !DILocation(line: 1155, column: 17, scope: !4271)
!4271 = !DILexicalBlockFile(scope: !4272, file: !73, discriminator: 1)
!4272 = distinct !DILexicalBlock(scope: !4268, file: !73, line: 1155, column: 3)
!4273 = !DILocation(line: 1155, column: 21, scope: !4271)
!4274 = !DILocation(line: 1155, column: 3, scope: !4271)
!4275 = !DILocation(line: 1158, column: 10, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4272, file: !73, line: 1156, column: 3)
!4277 = !DILocation(line: 1159, column: 4, scope: !4276)
!4278 = !DILocation(line: 1159, column: 11, scope: !4279)
!4279 = !DILexicalBlockFile(scope: !4276, file: !73, discriminator: 1)
!4280 = !DILocation(line: 1159, column: 17, scope: !4279)
!4281 = !DILocation(line: 1159, column: 4, scope: !4279)
!4282 = !DILocation(line: 1161, column: 21, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4276, file: !73, line: 1160, column: 4)
!4284 = !DILocation(line: 1161, column: 18, scope: !4283)
!4285 = !DILocation(line: 1161, column: 34, scope: !4283)
!4286 = !DILocation(line: 1161, column: 31, scope: !4283)
!4287 = !DILocation(line: 1161, column: 41, scope: !4283)
!4288 = !DILocation(line: 1161, column: 15, scope: !4283)
!4289 = !DILocation(line: 1163, column: 12, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4283, file: !73, line: 1163, column: 5)
!4291 = !DILocation(line: 1163, column: 10, scope: !4290)
!4292 = !DILocation(line: 1163, column: 17, scope: !4293)
!4293 = !DILexicalBlockFile(scope: !4294, file: !73, discriminator: 1)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !73, line: 1163, column: 5)
!4295 = !DILocation(line: 1163, column: 21, scope: !4293)
!4296 = !DILocation(line: 1163, column: 19, scope: !4293)
!4297 = !DILocation(line: 1163, column: 5, scope: !4293)
!4298 = !DILocation(line: 1165, column: 39, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !73, line: 1164, column: 5)
!4300 = !DILocation(line: 1165, column: 51, scope: !4299)
!4301 = !DILocation(line: 1165, column: 49, scope: !4299)
!4302 = !DILocation(line: 1165, column: 57, scope: !4299)
!4303 = !DILocation(line: 1165, column: 55, scope: !4299)
!4304 = !DILocation(line: 1165, column: 35, scope: !4299)
!4305 = !DILocation(line: 1165, column: 11, scope: !4299)
!4306 = !DILocation(line: 1165, column: 13, scope: !4299)
!4307 = !DILocation(line: 1165, column: 19, scope: !4299)
!4308 = !DILocation(line: 1165, column: 17, scope: !4299)
!4309 = !DILocation(line: 1165, column: 24, scope: !4299)
!4310 = !DILocation(line: 1165, column: 22, scope: !4299)
!4311 = !DILocation(line: 1165, column: 30, scope: !4299)
!4312 = !DILocation(line: 1165, column: 28, scope: !4299)
!4313 = !DILocation(line: 1165, column: 6, scope: !4299)
!4314 = !DILocation(line: 1165, column: 33, scope: !4299)
!4315 = !DILocation(line: 1166, column: 5, scope: !4299)
!4316 = !DILocation(line: 1163, column: 27, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4294, file: !73, discriminator: 2)
!4318 = !DILocation(line: 1163, column: 5, scope: !4317)
!4319 = distinct !{!4319, !4320}
!4320 = !DILocation(line: 1163, column: 5, scope: !4283)
!4321 = !DILocation(line: 1167, column: 6, scope: !4283)
!4322 = !DILocation(line: 1168, column: 11, scope: !4283)
!4323 = !DILocation(line: 1159, column: 4, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !4276, file: !73, discriminator: 2)
!4325 = distinct !{!4325, !4277}
!4326 = !DILocation(line: 1170, column: 12, scope: !4276)
!4327 = !DILocation(line: 1171, column: 3, scope: !4276)
!4328 = !DILocation(line: 1155, column: 29, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !4272, file: !73, discriminator: 2)
!4330 = !DILocation(line: 1155, column: 3, scope: !4329)
!4331 = distinct !{!4331, !4332}
!4332 = !DILocation(line: 1155, column: 3, scope: !4266)
!4333 = !DILocation(line: 1172, column: 2, scope: !4266)
!4334 = !DILocation(line: 1151, column: 23, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4262, file: !73, discriminator: 2)
!4336 = !DILocation(line: 1151, column: 2, scope: !4335)
!4337 = distinct !{!4337, !4338}
!4338 = !DILocation(line: 1151, column: 2, scope: !4228)
!4339 = !DILocation(line: 1173, column: 1, scope: !4228)
!4340 = distinct !DISubprogram(name: "rdp_in_coord", scope: !73, file: !73, line: 57, type: !4341, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !298, !4343, !332}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!4344 = !DILocalVariable(name: "s", arg: 1, scope: !4340, file: !73, line: 57, type: !298)
!4345 = !DILocation(line: 57, column: 21, scope: !4340)
!4346 = !DILocalVariable(name: "coord", arg: 2, scope: !4340, file: !73, line: 57, type: !4343)
!4347 = !DILocation(line: 57, column: 33, scope: !4340)
!4348 = !DILocalVariable(name: "delta", arg: 3, scope: !4340, file: !73, line: 57, type: !332)
!4349 = !DILocation(line: 57, column: 48, scope: !4340)
!4350 = !DILocalVariable(name: "change", scope: !4340, file: !73, line: 59, type: !4351)
!4351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint8", file: !40, line: 40, baseType: !4352)
!4352 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!4353 = !DILocation(line: 59, column: 8, scope: !4340)
!4354 = !DILocation(line: 61, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4340, file: !73, line: 61, column: 6)
!4356 = !DILocation(line: 61, column: 6, scope: !4340)
!4357 = !DILocation(line: 63, column: 15, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !73, line: 62, column: 2)
!4359 = !DILocation(line: 63, column: 19, scope: !4358)
!4360 = !DILocation(line: 63, column: 20, scope: !4358)
!4361 = !DILocation(line: 63, column: 12, scope: !4358)
!4362 = !DILocation(line: 63, column: 10, scope: !4358)
!4363 = !DILocation(line: 64, column: 13, scope: !4358)
!4364 = !DILocation(line: 64, column: 4, scope: !4358)
!4365 = !DILocation(line: 64, column: 10, scope: !4358)
!4366 = !DILocation(line: 65, column: 2, scope: !4358)
!4367 = !DILocation(line: 68, column: 27, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !73, line: 68, column: 3)
!4369 = distinct !DILexicalBlock(scope: !4355, file: !73, line: 67, column: 2)
!4370 = !DILocation(line: 68, column: 31, scope: !4368)
!4371 = !DILocation(line: 68, column: 14, scope: !4368)
!4372 = !DILocation(line: 68, column: 6, scope: !4368)
!4373 = !DILocation(line: 68, column: 12, scope: !4368)
!4374 = !DILocation(line: 68, column: 36, scope: !4368)
!4375 = !DILocation(line: 68, column: 40, scope: !4368)
!4376 = !DILocation(line: 68, column: 42, scope: !4368)
!4377 = !DILocation(line: 70, column: 1, scope: !4340)
!4378 = distinct !DISubprogram(name: "rdp_in_colour", scope: !73, file: !73, line: 92, type: !4379, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !298, !62}
!4381 = !DILocalVariable(name: "s", arg: 1, scope: !4378, file: !73, line: 92, type: !298)
!4382 = !DILocation(line: 92, column: 22, scope: !4378)
!4383 = !DILocalVariable(name: "colour", arg: 2, scope: !4378, file: !73, line: 92, type: !62)
!4384 = !DILocation(line: 92, column: 34, scope: !4378)
!4385 = !DILocalVariable(name: "i", scope: !4378, file: !73, line: 94, type: !63)
!4386 = !DILocation(line: 94, column: 9, scope: !4378)
!4387 = !DILocation(line: 95, column: 9, scope: !4378)
!4388 = !DILocation(line: 95, column: 13, scope: !4378)
!4389 = !DILocation(line: 95, column: 14, scope: !4378)
!4390 = !DILocation(line: 95, column: 6, scope: !4378)
!4391 = !DILocation(line: 95, column: 4, scope: !4378)
!4392 = !DILocation(line: 96, column: 12, scope: !4378)
!4393 = !DILocation(line: 96, column: 3, scope: !4378)
!4394 = !DILocation(line: 96, column: 10, scope: !4378)
!4395 = !DILocation(line: 97, column: 9, scope: !4378)
!4396 = !DILocation(line: 97, column: 13, scope: !4378)
!4397 = !DILocation(line: 97, column: 14, scope: !4378)
!4398 = !DILocation(line: 97, column: 6, scope: !4378)
!4399 = !DILocation(line: 97, column: 4, scope: !4378)
!4400 = !DILocation(line: 98, column: 13, scope: !4378)
!4401 = !DILocation(line: 98, column: 15, scope: !4378)
!4402 = !DILocation(line: 98, column: 3, scope: !4378)
!4403 = !DILocation(line: 98, column: 10, scope: !4378)
!4404 = !DILocation(line: 99, column: 9, scope: !4378)
!4405 = !DILocation(line: 99, column: 13, scope: !4378)
!4406 = !DILocation(line: 99, column: 14, scope: !4378)
!4407 = !DILocation(line: 99, column: 6, scope: !4378)
!4408 = !DILocation(line: 99, column: 4, scope: !4378)
!4409 = !DILocation(line: 100, column: 13, scope: !4378)
!4410 = !DILocation(line: 100, column: 15, scope: !4378)
!4411 = !DILocation(line: 100, column: 3, scope: !4378)
!4412 = !DILocation(line: 100, column: 10, scope: !4378)
!4413 = !DILocation(line: 101, column: 1, scope: !4378)
!4414 = distinct !DISubprogram(name: "rdp_parse_brush", scope: !73, file: !73, line: 180, type: !4415, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!332, !298, !4417, !63}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!4418 = !DILocalVariable(name: "s", arg: 1, scope: !4414, file: !73, line: 180, type: !298)
!4419 = !DILocation(line: 180, column: 24, scope: !4414)
!4420 = !DILocalVariable(name: "brush", arg: 2, scope: !4414, file: !73, line: 180, type: !4417)
!4421 = !DILocation(line: 180, column: 35, scope: !4414)
!4422 = !DILocalVariable(name: "present", arg: 3, scope: !4414, file: !73, line: 180, type: !63)
!4423 = !DILocation(line: 180, column: 49, scope: !4414)
!4424 = !DILocation(line: 182, column: 6, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4414, file: !73, line: 182, column: 6)
!4426 = !DILocation(line: 182, column: 14, scope: !4425)
!4427 = !DILocation(line: 182, column: 6, scope: !4414)
!4428 = !DILocation(line: 183, column: 23, scope: !4425)
!4429 = !DILocation(line: 183, column: 27, scope: !4425)
!4430 = !DILocation(line: 183, column: 28, scope: !4425)
!4431 = !DILocation(line: 183, column: 20, scope: !4425)
!4432 = !DILocation(line: 183, column: 3, scope: !4425)
!4433 = !DILocation(line: 183, column: 10, scope: !4425)
!4434 = !DILocation(line: 183, column: 18, scope: !4425)
!4435 = !DILocation(line: 185, column: 6, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4414, file: !73, line: 185, column: 6)
!4437 = !DILocation(line: 185, column: 14, scope: !4436)
!4438 = !DILocation(line: 185, column: 6, scope: !4414)
!4439 = !DILocation(line: 186, column: 23, scope: !4436)
!4440 = !DILocation(line: 186, column: 27, scope: !4436)
!4441 = !DILocation(line: 186, column: 28, scope: !4436)
!4442 = !DILocation(line: 186, column: 20, scope: !4436)
!4443 = !DILocation(line: 186, column: 3, scope: !4436)
!4444 = !DILocation(line: 186, column: 10, scope: !4436)
!4445 = !DILocation(line: 186, column: 18, scope: !4436)
!4446 = !DILocation(line: 188, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4414, file: !73, line: 188, column: 6)
!4448 = !DILocation(line: 188, column: 14, scope: !4447)
!4449 = !DILocation(line: 188, column: 6, scope: !4414)
!4450 = !DILocation(line: 189, column: 21, scope: !4447)
!4451 = !DILocation(line: 189, column: 25, scope: !4447)
!4452 = !DILocation(line: 189, column: 26, scope: !4447)
!4453 = !DILocation(line: 189, column: 18, scope: !4447)
!4454 = !DILocation(line: 189, column: 3, scope: !4447)
!4455 = !DILocation(line: 189, column: 10, scope: !4447)
!4456 = !DILocation(line: 189, column: 16, scope: !4447)
!4457 = !DILocation(line: 191, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4414, file: !73, line: 191, column: 6)
!4459 = !DILocation(line: 191, column: 14, scope: !4458)
!4460 = !DILocation(line: 191, column: 6, scope: !4414)
!4461 = !DILocation(line: 192, column: 26, scope: !4458)
!4462 = !DILocation(line: 192, column: 30, scope: !4458)
!4463 = !DILocation(line: 192, column: 31, scope: !4458)
!4464 = !DILocation(line: 192, column: 23, scope: !4458)
!4465 = !DILocation(line: 192, column: 3, scope: !4458)
!4466 = !DILocation(line: 192, column: 10, scope: !4458)
!4467 = !DILocation(line: 192, column: 21, scope: !4458)
!4468 = !DILocation(line: 194, column: 6, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4414, file: !73, line: 194, column: 6)
!4470 = !DILocation(line: 194, column: 14, scope: !4469)
!4471 = !DILocation(line: 194, column: 6, scope: !4414)
!4472 = !DILocation(line: 195, column: 13, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !73, line: 195, column: 3)
!4474 = !DILocation(line: 195, column: 20, scope: !4473)
!4475 = !DILocation(line: 195, column: 32, scope: !4473)
!4476 = !DILocation(line: 195, column: 36, scope: !4473)
!4477 = !DILocation(line: 195, column: 5, scope: !4473)
!4478 = !DILocation(line: 195, column: 43, scope: !4473)
!4479 = !DILocation(line: 195, column: 47, scope: !4473)
!4480 = !DILocation(line: 195, column: 49, scope: !4473)
!4481 = !DILocation(line: 195, column: 55, scope: !4473)
!4482 = !DILocation(line: 197, column: 11, scope: !4414)
!4483 = !DILocation(line: 197, column: 15, scope: !4414)
!4484 = !DILocation(line: 197, column: 21, scope: !4414)
!4485 = !DILocation(line: 197, column: 25, scope: !4414)
!4486 = !DILocation(line: 197, column: 17, scope: !4414)
!4487 = !DILocation(line: 197, column: 2, scope: !4414)
!4488 = distinct !DISubprogram(name: "setup_brush", scope: !73, file: !73, line: 151, type: !4489, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4417, !4417}
!4491 = !DILocalVariable(name: "out_brush", arg: 1, scope: !4488, file: !73, line: 151, type: !4417)
!4492 = !DILocation(line: 151, column: 21, scope: !4488)
!4493 = !DILocalVariable(name: "in_brush", arg: 2, scope: !4488, file: !73, line: 151, type: !4417)
!4494 = !DILocation(line: 151, column: 40, scope: !4488)
!4495 = !DILocalVariable(name: "brush_data", scope: !4488, file: !73, line: 153, type: !118)
!4496 = !DILocation(line: 153, column: 13, scope: !4488)
!4497 = !DILocalVariable(name: "cache_idx", scope: !4488, file: !73, line: 154, type: !52)
!4498 = !DILocation(line: 154, column: 8, scope: !4488)
!4499 = !DILocalVariable(name: "colour_code", scope: !4488, file: !73, line: 155, type: !52)
!4500 = !DILocation(line: 155, column: 8, scope: !4488)
!4501 = !DILocation(line: 157, column: 9, scope: !4488)
!4502 = !DILocation(line: 157, column: 2, scope: !4488)
!4503 = !DILocation(line: 157, column: 20, scope: !4488)
!4504 = !DILocation(line: 158, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4488, file: !73, line: 158, column: 6)
!4506 = !DILocation(line: 158, column: 17, scope: !4505)
!4507 = !DILocation(line: 158, column: 23, scope: !4505)
!4508 = !DILocation(line: 158, column: 6, scope: !4488)
!4509 = !DILocation(line: 160, column: 17, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4505, file: !73, line: 159, column: 2)
!4511 = !DILocation(line: 160, column: 28, scope: !4510)
!4512 = !DILocation(line: 160, column: 34, scope: !4510)
!4513 = !DILocation(line: 160, column: 15, scope: !4510)
!4514 = !DILocation(line: 161, column: 15, scope: !4510)
!4515 = !DILocation(line: 161, column: 26, scope: !4510)
!4516 = !DILocation(line: 161, column: 13, scope: !4510)
!4517 = !DILocation(line: 162, column: 37, scope: !4510)
!4518 = !DILocation(line: 162, column: 50, scope: !4510)
!4519 = !DILocation(line: 162, column: 16, scope: !4510)
!4520 = !DILocation(line: 162, column: 14, scope: !4510)
!4521 = !DILocation(line: 163, column: 8, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4510, file: !73, line: 163, column: 7)
!4523 = !DILocation(line: 163, column: 19, scope: !4522)
!4524 = !DILocation(line: 163, column: 27, scope: !4522)
!4525 = !DILocation(line: 163, column: 31, scope: !4526)
!4526 = !DILexicalBlockFile(scope: !4522, file: !73, discriminator: 1)
!4527 = !DILocation(line: 163, column: 43, scope: !4526)
!4528 = !DILocation(line: 163, column: 48, scope: !4526)
!4529 = !DILocation(line: 163, column: 7, scope: !4526)
!4530 = !DILocation(line: 166, column: 11, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4522, file: !73, line: 164, column: 3)
!4532 = !DILocation(line: 166, column: 22, scope: !4531)
!4533 = !DILocation(line: 165, column: 4, scope: !4531)
!4534 = !DILocation(line: 167, column: 4, scope: !4531)
!4535 = !DILocation(line: 167, column: 15, scope: !4531)
!4536 = !DILocation(line: 167, column: 18, scope: !4531)
!4537 = !DILocation(line: 168, column: 11, scope: !4531)
!4538 = !DILocation(line: 168, column: 22, scope: !4531)
!4539 = !DILocation(line: 168, column: 4, scope: !4531)
!4540 = !DILocation(line: 169, column: 3, scope: !4531)
!4541 = !DILocation(line: 172, column: 20, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4522, file: !73, line: 171, column: 3)
!4543 = !DILocation(line: 172, column: 4, scope: !4542)
!4544 = !DILocation(line: 172, column: 15, scope: !4542)
!4545 = !DILocation(line: 172, column: 18, scope: !4542)
!4546 = !DILocation(line: 174, column: 3, scope: !4510)
!4547 = !DILocation(line: 174, column: 14, scope: !4510)
!4548 = !DILocation(line: 174, column: 20, scope: !4510)
!4549 = !DILocation(line: 175, column: 2, scope: !4510)
!4550 = !DILocation(line: 176, column: 1, scope: !4488)
!4551 = distinct !DISubprogram(name: "rdp_parse_pen", scope: !73, file: !73, line: 136, type: !4552, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!332, !298, !4554, !63}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!4555 = !DILocalVariable(name: "s", arg: 1, scope: !4551, file: !73, line: 136, type: !298)
!4556 = !DILocation(line: 136, column: 22, scope: !4551)
!4557 = !DILocalVariable(name: "pen", arg: 2, scope: !4551, file: !73, line: 136, type: !4554)
!4558 = !DILocation(line: 136, column: 31, scope: !4551)
!4559 = !DILocalVariable(name: "present", arg: 3, scope: !4551, file: !73, line: 136, type: !63)
!4560 = !DILocation(line: 136, column: 43, scope: !4551)
!4561 = !DILocation(line: 138, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4551, file: !73, line: 138, column: 6)
!4563 = !DILocation(line: 138, column: 14, scope: !4562)
!4564 = !DILocation(line: 138, column: 6, scope: !4551)
!4565 = !DILocation(line: 139, column: 19, scope: !4562)
!4566 = !DILocation(line: 139, column: 23, scope: !4562)
!4567 = !DILocation(line: 139, column: 24, scope: !4562)
!4568 = !DILocation(line: 139, column: 16, scope: !4562)
!4569 = !DILocation(line: 139, column: 3, scope: !4562)
!4570 = !DILocation(line: 139, column: 8, scope: !4562)
!4571 = !DILocation(line: 139, column: 14, scope: !4562)
!4572 = !DILocation(line: 141, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4551, file: !73, line: 141, column: 6)
!4574 = !DILocation(line: 141, column: 14, scope: !4573)
!4575 = !DILocation(line: 141, column: 6, scope: !4551)
!4576 = !DILocation(line: 142, column: 19, scope: !4573)
!4577 = !DILocation(line: 142, column: 23, scope: !4573)
!4578 = !DILocation(line: 142, column: 24, scope: !4573)
!4579 = !DILocation(line: 142, column: 16, scope: !4573)
!4580 = !DILocation(line: 142, column: 3, scope: !4573)
!4581 = !DILocation(line: 142, column: 8, scope: !4573)
!4582 = !DILocation(line: 142, column: 14, scope: !4573)
!4583 = !DILocation(line: 144, column: 6, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4551, file: !73, line: 144, column: 6)
!4585 = !DILocation(line: 144, column: 14, scope: !4584)
!4586 = !DILocation(line: 144, column: 6, scope: !4551)
!4587 = !DILocation(line: 145, column: 17, scope: !4584)
!4588 = !DILocation(line: 145, column: 21, scope: !4584)
!4589 = !DILocation(line: 145, column: 26, scope: !4584)
!4590 = !DILocation(line: 145, column: 3, scope: !4584)
!4591 = !DILocation(line: 147, column: 11, scope: !4551)
!4592 = !DILocation(line: 147, column: 15, scope: !4551)
!4593 = !DILocation(line: 147, column: 21, scope: !4551)
!4594 = !DILocation(line: 147, column: 25, scope: !4551)
!4595 = !DILocation(line: 147, column: 17, scope: !4551)
!4596 = !DILocation(line: 147, column: 2, scope: !4551)
!4597 = distinct !DISubprogram(name: "parse_delta", scope: !73, file: !73, line: 74, type: !4598, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !313)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!327, !51, !4600}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!4601 = !DILocalVariable(name: "buffer", arg: 1, scope: !4597, file: !73, line: 74, type: !51)
!4602 = !DILocation(line: 74, column: 21, scope: !4597)
!4603 = !DILocalVariable(name: "offset", arg: 2, scope: !4597, file: !73, line: 74, type: !4600)
!4604 = !DILocation(line: 74, column: 34, scope: !4597)
!4605 = !DILocalVariable(name: "value", scope: !4597, file: !73, line: 76, type: !327)
!4606 = !DILocation(line: 76, column: 6, scope: !4597)
!4607 = !DILocation(line: 76, column: 23, scope: !4597)
!4608 = !DILocation(line: 76, column: 30, scope: !4597)
!4609 = !DILocation(line: 76, column: 14, scope: !4597)
!4610 = !DILocalVariable(name: "two_byte", scope: !4597, file: !73, line: 77, type: !327)
!4611 = !DILocation(line: 77, column: 6, scope: !4597)
!4612 = !DILocation(line: 77, column: 17, scope: !4597)
!4613 = !DILocation(line: 77, column: 23, scope: !4597)
!4614 = !DILocation(line: 79, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4597, file: !73, line: 79, column: 6)
!4616 = !DILocation(line: 79, column: 12, scope: !4615)
!4617 = !DILocation(line: 79, column: 6, scope: !4597)
!4618 = !DILocation(line: 80, column: 9, scope: !4615)
!4619 = !DILocation(line: 80, column: 3, scope: !4615)
!4620 = !DILocation(line: 82, column: 9, scope: !4615)
!4621 = !DILocation(line: 84, column: 6, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4597, file: !73, line: 84, column: 6)
!4623 = !DILocation(line: 84, column: 6, scope: !4597)
!4624 = !DILocation(line: 85, column: 12, scope: !4622)
!4625 = !DILocation(line: 85, column: 18, scope: !4622)
!4626 = !DILocation(line: 85, column: 35, scope: !4622)
!4627 = !DILocation(line: 85, column: 42, scope: !4622)
!4628 = !DILocation(line: 85, column: 26, scope: !4622)
!4629 = !DILocation(line: 85, column: 24, scope: !4622)
!4630 = !DILocation(line: 85, column: 9, scope: !4622)
!4631 = !DILocation(line: 85, column: 3, scope: !4622)
!4632 = !DILocation(line: 87, column: 9, scope: !4597)
!4633 = !DILocation(line: 87, column: 2, scope: !4597)
