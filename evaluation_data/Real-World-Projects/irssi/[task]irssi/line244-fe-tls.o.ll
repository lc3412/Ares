; ModuleID = './line244-fe-tls.o.i'
source_filename = "./line244-fe-tls.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._SERVER_REC = type opaque
%struct._TLS_REC = type { i8*, i8*, i64, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i64, %struct._GSList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GString = type { i8*, i64, i64 }
%struct._TLS_CERT_ENTRY_REC = type { i8*, i8* }
%struct._TLS_CERT_REC = type { %struct._GSList*, %struct._GSList* }

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tls_verbose_connect\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"tls handshake finished\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s: %s, \00", align 1

; Function Attrs: nounwind uwtable
define void @fe_tls_init() #0 !dbg !288 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !293
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._TLS_REC*)* @tls_handshake_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !294
  ret void, !dbg !295
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tls_handshake_finished(%struct._SERVER_REC*, %struct._TLS_REC*) #0 !dbg !296 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._TLS_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  %10 = alloca %struct._TLS_CERT_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !336, metadata !337), !dbg !338
  store %struct._TLS_REC* %1, %struct._TLS_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %4, metadata !339, metadata !337), !dbg !340
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !341, metadata !337), !dbg !342
  store %struct._GSList* null, %struct._GSList** %5, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !343, metadata !337), !dbg !344
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !345, metadata !337), !dbg !346
  store %struct._GSList* null, %struct._GSList** %7, align 8, !dbg !346
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !347, metadata !337), !dbg !360
  store %struct._GString* null, %struct._GString** %8, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %9, metadata !361, metadata !337), !dbg !368
  store %struct._TLS_CERT_ENTRY_REC* null, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !368
  %11 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !369
  %12 = icmp ne i32 %11, 0, !dbg !369
  br i1 %12, label %14, label %13, !dbg !371

; <label>:13:                                     ; preds = %2
  br label %177, !dbg !372

; <label>:14:                                     ; preds = %2
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !373
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !373
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %16, i8* null, i32 262144, i32 233), !dbg !374
  %17 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !375
  %18 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %17, i32 0, i32 13, !dbg !377
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !377
  store %struct._GSList* %19, %struct._GSList** %5, align 8, !dbg !378
  br label %20, !dbg !379

; <label>:20:                                     ; preds = %114, %14
  %21 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !380
  %22 = icmp ne %struct._GSList* %21, null, !dbg !383
  br i1 %22, label %23, label %118, !dbg !384

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %10, metadata !385, metadata !337), !dbg !393
  %24 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !394
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !395
  %26 = load i8*, i8** %25, align 8, !dbg !395
  %27 = bitcast i8* %26 to %struct._TLS_CERT_REC*, !dbg !394
  store %struct._TLS_CERT_REC* %27, %struct._TLS_CERT_REC** %10, align 8, !dbg !393
  %28 = call %struct._GString* @g_string_new(i8* null), !dbg !396
  store %struct._GString* %28, %struct._GString** %8, align 8, !dbg !397
  %29 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %10, align 8, !dbg !398
  %30 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %29, i32 0, i32 0, !dbg !400
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !400
  store %struct._GSList* %31, %struct._GSList** %6, align 8, !dbg !401
  br label %32, !dbg !402

; <label>:32:                                     ; preds = %47, %23
  %33 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !403
  %34 = icmp ne %struct._GSList* %33, null, !dbg !406
  br i1 %34, label %35, label %51, !dbg !407

; <label>:35:                                     ; preds = %32
  %36 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !408
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !410
  %38 = load i8*, i8** %37, align 8, !dbg !410
  %39 = bitcast i8* %38 to %struct._TLS_CERT_ENTRY_REC*, !dbg !408
  store %struct._TLS_CERT_ENTRY_REC* %39, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !411
  %40 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !412
  %41 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !413
  %42 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %41, i32 0, i32 0, !dbg !414
  %43 = load i8*, i8** %42, align 8, !dbg !414
  %44 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !415
  %45 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %44, i32 0, i32 1, !dbg !416
  %46 = load i8*, i8** %45, align 8, !dbg !416
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %43, i8* %46), !dbg !417
  br label %47, !dbg !418

; <label>:47:                                     ; preds = %35
  %48 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !419
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !421
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !421
  store %struct._GSList* %50, %struct._GSList** %6, align 8, !dbg !422
  br label %32, !dbg !423, !llvm.loop !424

; <label>:51:                                     ; preds = %32
  %52 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !426
  %53 = getelementptr inbounds %struct._GString, %struct._GString* %52, i32 0, i32 1, !dbg !428
  %54 = load i64, i64* %53, align 8, !dbg !428
  %55 = icmp ugt i64 %54, 1, !dbg !429
  br i1 %55, label %56, label %63, !dbg !430

; <label>:56:                                     ; preds = %51
  %57 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !431
  %58 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !432
  %59 = getelementptr inbounds %struct._GString, %struct._GString* %58, i32 0, i32 1, !dbg !433
  %60 = load i64, i64* %59, align 8, !dbg !433
  %61 = sub i64 %60, 2, !dbg !434
  %62 = call %struct._GString* @g_string_truncate(%struct._GString* %57, i64 %61), !dbg !435
  br label %63, !dbg !435

; <label>:63:                                     ; preds = %56, %51
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !436
  %65 = bitcast %struct._SERVER_REC* %64 to i8*, !dbg !436
  %66 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !437
  %67 = getelementptr inbounds %struct._GString, %struct._GString* %66, i32 0, i32 0, !dbg !438
  %68 = load i8*, i8** %67, align 8, !dbg !438
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %65, i8* null, i32 262144, i32 234, i8* %68), !dbg !439
  %69 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !440
  %70 = call i8* @g_string_free(%struct._GString* %69, i32 1), !dbg !441
  %71 = call %struct._GString* @g_string_new(i8* null), !dbg !442
  store %struct._GString* %71, %struct._GString** %8, align 8, !dbg !443
  %72 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %10, align 8, !dbg !444
  %73 = getelementptr inbounds %struct._TLS_CERT_REC, %struct._TLS_CERT_REC* %72, i32 0, i32 1, !dbg !446
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !446
  store %struct._GSList* %74, %struct._GSList** %7, align 8, !dbg !447
  br label %75, !dbg !448

; <label>:75:                                     ; preds = %90, %63
  %76 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !449
  %77 = icmp ne %struct._GSList* %76, null, !dbg !452
  br i1 %77, label %78, label %94, !dbg !453

; <label>:78:                                     ; preds = %75
  %79 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !454
  %80 = getelementptr inbounds %struct._GSList, %struct._GSList* %79, i32 0, i32 0, !dbg !456
  %81 = load i8*, i8** %80, align 8, !dbg !456
  %82 = bitcast i8* %81 to %struct._TLS_CERT_ENTRY_REC*, !dbg !454
  store %struct._TLS_CERT_ENTRY_REC* %82, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !457
  %83 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !458
  %84 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !459
  %85 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %84, i32 0, i32 0, !dbg !460
  %86 = load i8*, i8** %85, align 8, !dbg !460
  %87 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %9, align 8, !dbg !461
  %88 = getelementptr inbounds %struct._TLS_CERT_ENTRY_REC, %struct._TLS_CERT_ENTRY_REC* %87, i32 0, i32 1, !dbg !462
  %89 = load i8*, i8** %88, align 8, !dbg !462
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %86, i8* %89), !dbg !463
  br label %90, !dbg !464

; <label>:90:                                     ; preds = %78
  %91 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !465
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 1, !dbg !467
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !467
  store %struct._GSList* %93, %struct._GSList** %7, align 8, !dbg !468
  br label %75, !dbg !469, !llvm.loop !470

; <label>:94:                                     ; preds = %75
  %95 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !472
  %96 = getelementptr inbounds %struct._GString, %struct._GString* %95, i32 0, i32 1, !dbg !474
  %97 = load i64, i64* %96, align 8, !dbg !474
  %98 = icmp ugt i64 %97, 1, !dbg !475
  br i1 %98, label %99, label %106, !dbg !476

; <label>:99:                                     ; preds = %94
  %100 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !477
  %101 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !478
  %102 = getelementptr inbounds %struct._GString, %struct._GString* %101, i32 0, i32 1, !dbg !479
  %103 = load i64, i64* %102, align 8, !dbg !479
  %104 = sub i64 %103, 2, !dbg !480
  %105 = call %struct._GString* @g_string_truncate(%struct._GString* %100, i64 %104), !dbg !481
  br label %106, !dbg !481

; <label>:106:                                    ; preds = %99, %94
  %107 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !482
  %108 = bitcast %struct._SERVER_REC* %107 to i8*, !dbg !482
  %109 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !483
  %110 = getelementptr inbounds %struct._GString, %struct._GString* %109, i32 0, i32 0, !dbg !484
  %111 = load i8*, i8** %110, align 8, !dbg !484
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %108, i8* null, i32 262144, i32 235, i8* %111), !dbg !485
  %112 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !486
  %113 = call i8* @g_string_free(%struct._GString* %112, i32 1), !dbg !487
  br label %114, !dbg !488

; <label>:114:                                    ; preds = %106
  %115 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !489
  %116 = getelementptr inbounds %struct._GSList, %struct._GSList* %115, i32 0, i32 1, !dbg !491
  %117 = load %struct._GSList*, %struct._GSList** %116, align 8, !dbg !491
  store %struct._GSList* %117, %struct._GSList** %5, align 8, !dbg !492
  br label %20, !dbg !493, !llvm.loop !494

; <label>:118:                                    ; preds = %20
  %119 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !496
  %120 = bitcast %struct._SERVER_REC* %119 to i8*, !dbg !496
  %121 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !497
  %122 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %121, i32 0, i32 0, !dbg !498
  %123 = load i8*, i8** %122, align 8, !dbg !498
  %124 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !499
  %125 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %124, i32 0, i32 2, !dbg !500
  %126 = load i64, i64* %125, align 8, !dbg !500
  %127 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !501
  %128 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %127, i32 0, i32 1, !dbg !502
  %129 = load i8*, i8** %128, align 8, !dbg !502
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %120, i8* null, i32 262144, i32 238, i8* %123, i64 %126, i8* %129), !dbg !503
  %130 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !504
  %131 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %130, i32 0, i32 11, !dbg !506
  %132 = load i8*, i8** %131, align 8, !dbg !506
  %133 = icmp ne i8* %132, null, !dbg !507
  br i1 %133, label %134, label %143, !dbg !508

; <label>:134:                                    ; preds = %118
  %135 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !509
  %136 = bitcast %struct._SERVER_REC* %135 to i8*, !dbg !509
  %137 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !510
  %138 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %137, i32 0, i32 12, !dbg !511
  %139 = load i64, i64* %138, align 8, !dbg !511
  %140 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !512
  %141 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %140, i32 0, i32 11, !dbg !513
  %142 = load i8*, i8** %141, align 8, !dbg !513
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %136, i8* null, i32 262144, i32 230, i64 %139, i8* %142), !dbg !514
  br label %146, !dbg !514

; <label>:143:                                    ; preds = %118
  %144 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !515
  %145 = bitcast %struct._SERVER_REC* %144 to i8*, !dbg !515
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %145, i8* null, i32 262144, i32 231), !dbg !516
  br label %146

; <label>:146:                                    ; preds = %143, %134
  %147 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !517
  %148 = bitcast %struct._SERVER_REC* %147 to i8*, !dbg !517
  %149 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !518
  %150 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %149, i32 0, i32 6, !dbg !519
  %151 = load i64, i64* %150, align 8, !dbg !519
  %152 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !520
  %153 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %152, i32 0, i32 3, !dbg !521
  %154 = load i8*, i8** %153, align 8, !dbg !521
  %155 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !522
  %156 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %155, i32 0, i32 10, !dbg !523
  %157 = load i8*, i8** %156, align 8, !dbg !523
  %158 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !524
  %159 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %158, i32 0, i32 9, !dbg !525
  %160 = load i8*, i8** %159, align 8, !dbg !525
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %148, i8* null, i32 262144, i32 232, i64 %151, i8* %154, i8* %157, i8* %160), !dbg !526
  %161 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !527
  %162 = bitcast %struct._SERVER_REC* %161 to i8*, !dbg !527
  %163 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !528
  %164 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %163, i32 0, i32 4, !dbg !529
  %165 = load i8*, i8** %164, align 8, !dbg !529
  %166 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !530
  %167 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %166, i32 0, i32 5, !dbg !531
  %168 = load i8*, i8** %167, align 8, !dbg !531
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %162, i8* null, i32 262144, i32 236, i8* %165, i8* %168), !dbg !532
  %169 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !533
  %170 = bitcast %struct._SERVER_REC* %169 to i8*, !dbg !533
  %171 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !534
  %172 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %171, i32 0, i32 7, !dbg !535
  %173 = load i8*, i8** %172, align 8, !dbg !535
  %174 = load %struct._TLS_REC*, %struct._TLS_REC** %4, align 8, !dbg !536
  %175 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %174, i32 0, i32 8, !dbg !537
  %176 = load i8*, i8** %175, align 8, !dbg !537
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %170, i8* null, i32 262144, i32 237, i8* %173, i8* %176), !dbg !538
  br label %177, !dbg !539

; <label>:177:                                    ; preds = %146, %13
  ret void, !dbg !540
}

; Function Attrs: nounwind uwtable
define void @fe_tls_deinit() #0 !dbg !542 {
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._TLS_REC*)* @tls_handshake_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !543
  ret void, !dbg !544
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @settings_get_bool(i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!285, !286}
!llvm.ident = !{!287}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !276)
!1 = !DIFile(filename: "line244-fe-tls.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34}
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
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 3, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!37 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!38 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!39 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!40 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!41 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!42 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!43 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!44 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!45 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!46 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!47 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!48 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!49 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!50 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!51 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!52 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!53 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!54 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!55 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!56 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!57 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!58 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!59 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!60 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!61 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!62 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!63 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!64 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!65 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!66 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!68 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!69 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!77 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!78 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!79 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!80 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!81 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!82 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!83 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!84 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!85 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!86 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!87 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!88 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!89 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!90 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!91 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!92 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!93 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!94 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!95 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!96 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!97 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!98 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!99 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!100 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!101 = !DIEnumerator(name: "TXT_PART", value: 64)
!102 = !DIEnumerator(name: "TXT_KICK", value: 65)
!103 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!104 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!105 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!106 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!107 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!108 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!109 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!110 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!111 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!112 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!113 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!114 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!115 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!116 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!117 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!118 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!119 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!120 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!121 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!122 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!123 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!124 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!125 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!126 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!127 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!128 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!129 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!130 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!131 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!132 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!133 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!134 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!135 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!136 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!137 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!138 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!139 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!140 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!141 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!142 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!143 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!144 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!145 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!146 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!147 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!148 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!149 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!150 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!151 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!152 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!153 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!154 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!155 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!156 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!157 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!158 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!159 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!160 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!161 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!162 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!163 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!164 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!165 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!166 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!167 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!168 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!169 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!170 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!171 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!172 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!173 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!174 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!175 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!176 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!177 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!178 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!179 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!180 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!181 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!182 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!183 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!184 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!185 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!186 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!187 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!188 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!189 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!190 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!191 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!192 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!193 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!194 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!195 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!196 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!197 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!198 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!199 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!200 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!201 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!202 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!203 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!204 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!205 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!206 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!207 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!208 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!209 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!210 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!211 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!212 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!213 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!214 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!215 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!216 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!217 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!218 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!219 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!220 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!221 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!222 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!223 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!224 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!225 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!226 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!227 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!228 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!229 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!230 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!231 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!232 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!233 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!234 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!235 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!236 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!237 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!238 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!239 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!240 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!241 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!242 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!243 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!244 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!245 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!246 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!247 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!248 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!249 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!250 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!251 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!252 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!253 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!254 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!255 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!256 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!257 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!258 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!259 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!260 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!261 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!262 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!263 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!264 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!265 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!266 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!267 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!268 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!269 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!270 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!271 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!272 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!273 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!274 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!275 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!276 = !{!277, !284}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !278, line: 9, baseType: !279)
!278 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282, !282, !282, !282, !282, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!285 = !{i32 2, !"Dwarf Version", i32 4}
!286 = !{i32 2, !"Debug Info Version", i32 3}
!287 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!288 = distinct !DISubprogram(name: "fe_tls_init", scope: !289, file: !289, line: 84, type: !290, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !292)
!289 = !DIFile(filename: "fe-tls.c", directory: "/home/lichi/Desktop/irssi/task1")
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !{}
!293 = !DILocation(line: 86, column: 2, scope: !288)
!294 = !DILocation(line: 88, column: 2, scope: !288)
!295 = !DILocation(line: 89, column: 1, scope: !288)
!296 = distinct !DISubprogram(name: "tls_handshake_finished", scope: !289, file: !289, line: 30, type: !297, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !292)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299, !303}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !301, line: 107, baseType: !302)
!301 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !301, line: 107, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_REC", file: !305, line: 26, baseType: !306)
!305 = !DIFile(filename: "../../../src/core/tls.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_REC", file: !305, line: 30, size: 896, align: 64, elements: !307)
!307 = !{!308, !311, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !306, file: !305, line: 31, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !306, file: !305, line: 32, baseType: !309, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_size", scope: !306, file: !305, line: 33, baseType: !313, size: 64, align: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !314, line: 216, baseType: !315)
!314 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_algorithm", scope: !306, file: !305, line: 35, baseType: !309, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint", scope: !306, file: !305, line: 36, baseType: !309, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint_algorithm", scope: !306, file: !305, line: 37, baseType: !309, size: 64, align: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_size", scope: !306, file: !305, line: 38, baseType: !313, size: 64, align: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint", scope: !306, file: !305, line: 40, baseType: !309, size: 64, align: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint_algorithm", scope: !306, file: !305, line: 41, baseType: !309, size: 64, align: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "not_after", scope: !306, file: !305, line: 43, baseType: !309, size: 64, align: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "not_before", scope: !306, file: !305, line: 44, baseType: !309, size: 64, align: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_algorithm", scope: !306, file: !305, line: 46, baseType: !309, size: 64, align: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_size", scope: !306, file: !305, line: 47, baseType: !313, size: 64, align: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !306, file: !305, line: 49, baseType: !327, size: 64, align: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !329, line: 37, baseType: !330)
!329 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !329, line: 39, size: 128, align: 64, elements: !331)
!331 = !{!332, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !330, file: !329, line: 41, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !334, line: 77, baseType: !284)
!334 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !329, line: 42, baseType: !327, size: 64, align: 64, offset: 64)
!336 = !DILocalVariable(name: "server", arg: 1, scope: !296, file: !289, line: 30, type: !299)
!337 = !DIExpression()
!338 = !DILocation(line: 30, column: 48, scope: !296)
!339 = !DILocalVariable(name: "tls", arg: 2, scope: !296, file: !289, line: 30, type: !303)
!340 = !DILocation(line: 30, column: 65, scope: !296)
!341 = !DILocalVariable(name: "certs", scope: !296, file: !289, line: 32, type: !327)
!342 = !DILocation(line: 32, column: 10, scope: !296)
!343 = !DILocalVariable(name: "subject", scope: !296, file: !289, line: 33, type: !327)
!344 = !DILocation(line: 33, column: 10, scope: !296)
!345 = !DILocalVariable(name: "issuer", scope: !296, file: !289, line: 34, type: !327)
!346 = !DILocation(line: 34, column: 10, scope: !296)
!347 = !DILocalVariable(name: "str", scope: !296, file: !289, line: 35, type: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !350, line: 39, baseType: !351)
!350 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !350, line: 41, size: 192, align: 64, elements: !352)
!352 = !{!353, !356, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !351, file: !350, line: 43, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !334, line: 46, baseType: !310)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !351, file: !350, line: 44, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !358, line: 66, baseType: !315)
!358 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !351, file: !350, line: 45, baseType: !357, size: 64, align: 64, offset: 128)
!360 = !DILocation(line: 35, column: 11, scope: !296)
!361 = !DILocalVariable(name: "data", scope: !296, file: !289, line: 36, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_ENTRY_REC", file: !305, line: 28, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_ENTRY_REC", file: !305, line: 57, size: 128, align: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !305, line: 58, baseType: !309, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !305, line: 59, baseType: !309, size: 64, align: 64, offset: 64)
!368 = !DILocation(line: 36, column: 22, scope: !296)
!369 = !DILocation(line: 38, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !296, file: !289, line: 38, column: 6)
!371 = !DILocation(line: 38, column: 6, scope: !296)
!372 = !DILocation(line: 39, column: 3, scope: !370)
!373 = !DILocation(line: 41, column: 39, scope: !296)
!374 = !DILocation(line: 41, column: 2, scope: !296)
!375 = !DILocation(line: 43, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !296, file: !289, line: 43, column: 2)
!377 = !DILocation(line: 43, column: 20, scope: !376)
!378 = !DILocation(line: 43, column: 13, scope: !376)
!379 = !DILocation(line: 43, column: 7, scope: !376)
!380 = !DILocation(line: 43, column: 27, scope: !381)
!381 = !DILexicalBlockFile(scope: !382, file: !289, discriminator: 1)
!382 = distinct !DILexicalBlock(scope: !376, file: !289, line: 43, column: 2)
!383 = !DILocation(line: 43, column: 33, scope: !381)
!384 = !DILocation(line: 43, column: 2, scope: !381)
!385 = !DILocalVariable(name: "tls_cert_rec", scope: !386, file: !289, line: 44, type: !387)
!386 = distinct !DILexicalBlock(scope: !382, file: !289, line: 43, column: 62)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_REC", file: !305, line: 27, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_REC", file: !305, line: 52, size: 128, align: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !389, file: !305, line: 53, baseType: !327, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !389, file: !305, line: 54, baseType: !327, size: 64, align: 64, offset: 64)
!393 = !DILocation(line: 44, column: 17, scope: !386)
!394 = !DILocation(line: 44, column: 32, scope: !386)
!395 = !DILocation(line: 44, column: 39, scope: !386)
!396 = !DILocation(line: 45, column: 9, scope: !386)
!397 = !DILocation(line: 45, column: 7, scope: !386)
!398 = !DILocation(line: 47, column: 18, scope: !399)
!399 = distinct !DILexicalBlock(scope: !386, file: !289, line: 47, column: 3)
!400 = !DILocation(line: 47, column: 32, scope: !399)
!401 = !DILocation(line: 47, column: 16, scope: !399)
!402 = !DILocation(line: 47, column: 8, scope: !399)
!403 = !DILocation(line: 47, column: 41, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !289, discriminator: 1)
!405 = distinct !DILexicalBlock(scope: !399, file: !289, line: 47, column: 3)
!406 = !DILocation(line: 47, column: 49, scope: !404)
!407 = !DILocation(line: 47, column: 3, scope: !404)
!408 = !DILocation(line: 48, column: 11, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !289, line: 47, column: 82)
!410 = !DILocation(line: 48, column: 20, scope: !409)
!411 = !DILocation(line: 48, column: 9, scope: !409)
!412 = !DILocation(line: 49, column: 27, scope: !409)
!413 = !DILocation(line: 49, column: 44, scope: !409)
!414 = !DILocation(line: 49, column: 50, scope: !409)
!415 = !DILocation(line: 49, column: 56, scope: !409)
!416 = !DILocation(line: 49, column: 62, scope: !409)
!417 = !DILocation(line: 49, column: 4, scope: !409)
!418 = !DILocation(line: 50, column: 3, scope: !409)
!419 = !DILocation(line: 47, column: 67, scope: !420)
!420 = !DILexicalBlockFile(scope: !405, file: !289, discriminator: 2)
!421 = !DILocation(line: 47, column: 76, scope: !420)
!422 = !DILocation(line: 47, column: 65, scope: !420)
!423 = !DILocation(line: 47, column: 3, scope: !420)
!424 = distinct !{!424, !425}
!425 = !DILocation(line: 47, column: 3, scope: !386)
!426 = !DILocation(line: 52, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !386, file: !289, line: 52, column: 7)
!428 = !DILocation(line: 52, column: 12, scope: !427)
!429 = !DILocation(line: 52, column: 16, scope: !427)
!430 = !DILocation(line: 52, column: 7, scope: !386)
!431 = !DILocation(line: 53, column: 22, scope: !427)
!432 = !DILocation(line: 53, column: 27, scope: !427)
!433 = !DILocation(line: 53, column: 32, scope: !427)
!434 = !DILocation(line: 53, column: 36, scope: !427)
!435 = !DILocation(line: 53, column: 4, scope: !427)
!436 = !DILocation(line: 55, column: 40, scope: !386)
!437 = !DILocation(line: 55, column: 49, scope: !386)
!438 = !DILocation(line: 55, column: 54, scope: !386)
!439 = !DILocation(line: 55, column: 3, scope: !386)
!440 = !DILocation(line: 56, column: 17, scope: !386)
!441 = !DILocation(line: 56, column: 3, scope: !386)
!442 = !DILocation(line: 58, column: 9, scope: !386)
!443 = !DILocation(line: 58, column: 7, scope: !386)
!444 = !DILocation(line: 60, column: 17, scope: !445)
!445 = distinct !DILexicalBlock(scope: !386, file: !289, line: 60, column: 3)
!446 = !DILocation(line: 60, column: 31, scope: !445)
!447 = !DILocation(line: 60, column: 15, scope: !445)
!448 = !DILocation(line: 60, column: 8, scope: !445)
!449 = !DILocation(line: 60, column: 39, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !289, discriminator: 1)
!451 = distinct !DILexicalBlock(scope: !445, file: !289, line: 60, column: 3)
!452 = !DILocation(line: 60, column: 46, scope: !450)
!453 = !DILocation(line: 60, column: 3, scope: !450)
!454 = !DILocation(line: 61, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !289, line: 60, column: 77)
!456 = !DILocation(line: 61, column: 19, scope: !455)
!457 = !DILocation(line: 61, column: 9, scope: !455)
!458 = !DILocation(line: 62, column: 27, scope: !455)
!459 = !DILocation(line: 62, column: 44, scope: !455)
!460 = !DILocation(line: 62, column: 50, scope: !455)
!461 = !DILocation(line: 62, column: 56, scope: !455)
!462 = !DILocation(line: 62, column: 62, scope: !455)
!463 = !DILocation(line: 62, column: 4, scope: !455)
!464 = !DILocation(line: 63, column: 3, scope: !455)
!465 = !DILocation(line: 60, column: 63, scope: !466)
!466 = !DILexicalBlockFile(scope: !451, file: !289, discriminator: 2)
!467 = !DILocation(line: 60, column: 71, scope: !466)
!468 = !DILocation(line: 60, column: 61, scope: !466)
!469 = !DILocation(line: 60, column: 3, scope: !466)
!470 = distinct !{!470, !471}
!471 = !DILocation(line: 60, column: 3, scope: !386)
!472 = !DILocation(line: 65, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !386, file: !289, line: 65, column: 7)
!474 = !DILocation(line: 65, column: 12, scope: !473)
!475 = !DILocation(line: 65, column: 16, scope: !473)
!476 = !DILocation(line: 65, column: 7, scope: !386)
!477 = !DILocation(line: 66, column: 22, scope: !473)
!478 = !DILocation(line: 66, column: 27, scope: !473)
!479 = !DILocation(line: 66, column: 32, scope: !473)
!480 = !DILocation(line: 66, column: 36, scope: !473)
!481 = !DILocation(line: 66, column: 4, scope: !473)
!482 = !DILocation(line: 68, column: 40, scope: !386)
!483 = !DILocation(line: 68, column: 48, scope: !386)
!484 = !DILocation(line: 68, column: 53, scope: !386)
!485 = !DILocation(line: 68, column: 3, scope: !386)
!486 = !DILocation(line: 69, column: 17, scope: !386)
!487 = !DILocation(line: 69, column: 3, scope: !386)
!488 = !DILocation(line: 70, column: 2, scope: !386)
!489 = !DILocation(line: 43, column: 49, scope: !490)
!490 = !DILexicalBlockFile(scope: !382, file: !289, discriminator: 2)
!491 = !DILocation(line: 43, column: 56, scope: !490)
!492 = !DILocation(line: 43, column: 47, scope: !490)
!493 = !DILocation(line: 43, column: 2, scope: !490)
!494 = distinct !{!494, !495}
!495 = !DILocation(line: 43, column: 2, scope: !296)
!496 = !DILocation(line: 72, column: 39, scope: !296)
!497 = !DILocation(line: 72, column: 52, scope: !296)
!498 = !DILocation(line: 72, column: 57, scope: !296)
!499 = !DILocation(line: 72, column: 75, scope: !296)
!500 = !DILocation(line: 72, column: 80, scope: !296)
!501 = !DILocation(line: 72, column: 93, scope: !296)
!502 = !DILocation(line: 72, column: 98, scope: !296)
!503 = !DILocation(line: 72, column: 2, scope: !296)
!504 = !DILocation(line: 74, column: 6, scope: !505)
!505 = distinct !DILexicalBlock(scope: !296, file: !289, line: 74, column: 6)
!506 = !DILocation(line: 74, column: 11, scope: !505)
!507 = !DILocation(line: 74, column: 35, scope: !505)
!508 = !DILocation(line: 74, column: 6, scope: !296)
!509 = !DILocation(line: 75, column: 40, scope: !505)
!510 = !DILocation(line: 75, column: 50, scope: !505)
!511 = !DILocation(line: 75, column: 55, scope: !505)
!512 = !DILocation(line: 75, column: 75, scope: !505)
!513 = !DILocation(line: 75, column: 80, scope: !505)
!514 = !DILocation(line: 75, column: 3, scope: !505)
!515 = !DILocation(line: 77, column: 40, scope: !505)
!516 = !DILocation(line: 77, column: 3, scope: !505)
!517 = !DILocation(line: 79, column: 39, scope: !296)
!518 = !DILocation(line: 79, column: 42, scope: !296)
!519 = !DILocation(line: 79, column: 47, scope: !296)
!520 = !DILocation(line: 79, column: 64, scope: !296)
!521 = !DILocation(line: 79, column: 69, scope: !296)
!522 = !DILocation(line: 79, column: 91, scope: !296)
!523 = !DILocation(line: 79, column: 96, scope: !296)
!524 = !DILocation(line: 79, column: 108, scope: !296)
!525 = !DILocation(line: 79, column: 113, scope: !296)
!526 = !DILocation(line: 79, column: 2, scope: !296)
!527 = !DILocation(line: 80, column: 39, scope: !296)
!528 = !DILocation(line: 80, column: 54, scope: !296)
!529 = !DILocation(line: 80, column: 59, scope: !296)
!530 = !DILocation(line: 80, column: 83, scope: !296)
!531 = !DILocation(line: 80, column: 88, scope: !296)
!532 = !DILocation(line: 80, column: 2, scope: !296)
!533 = !DILocation(line: 81, column: 39, scope: !296)
!534 = !DILocation(line: 81, column: 52, scope: !296)
!535 = !DILocation(line: 81, column: 57, scope: !296)
!536 = !DILocation(line: 81, column: 82, scope: !296)
!537 = !DILocation(line: 81, column: 87, scope: !296)
!538 = !DILocation(line: 81, column: 2, scope: !296)
!539 = !DILocation(line: 82, column: 1, scope: !296)
!540 = !DILocation(line: 82, column: 1, scope: !541)
!541 = !DILexicalBlockFile(scope: !296, file: !289, discriminator: 1)
!542 = distinct !DISubprogram(name: "fe_tls_deinit", scope: !289, file: !289, line: 91, type: !290, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !292)
!543 = !DILocation(line: 93, column: 2, scope: !542)
!544 = !DILocation(line: 94, column: 1, scope: !542)
