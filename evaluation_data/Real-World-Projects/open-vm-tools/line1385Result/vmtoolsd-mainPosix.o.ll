; ModuleID = './vmtoolsd-mainPosix.o.i'
source_filename = "./vmtoolsd-mainPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsServiceState = type { i8*, i8*, i64, i32, i32, i32, i8*, i8*, %struct._GPtrArray*, i8*, %struct._GModule*, i8*, %struct.RpcDebugLibData*, %struct.ToolsAppCtx, %struct._GArray*, i32, i32 }
%struct._GPtrArray = type { i8**, i32 }
%struct._GModule = type opaque
%struct.RpcDebugLibData = type { %struct._RpcChannel* (%struct.ToolsAppCtx*, %struct.RpcDebugLibData*)*, i32 (%struct.ToolsAppCtx*, i8*, i8*, %struct.RpcDebugLibData*)*, %struct.RpcDebugPlugin* }
%struct._RpcChannel = type opaque
%struct.RpcDebugPlugin = type { %struct.RpcDebugRecvMapping*, i32 (i8*, i64, i8**, i64*)*, i32 (%struct.RpcDebugMsgMapping*)*, void (%struct.ToolsAppCtx*, %struct.RpcDebugPlugin*)*, %struct.ToolsPluginData* }
%struct.RpcDebugRecvMapping = type { i8*, i32 (i8*, i64, i8**, i64*)*, i8*, i64 }
%struct.RpcDebugMsgMapping = type { i8*, i64, i32 (%struct.RpcInData*, i32)*, i32 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._GKeyFile = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.siginfo_t = type { i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon.2, [80 x i8] }
%struct.anon.2 = type { i32, i32, i32, i64, i64 }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@gState = internal global %struct.ToolsServiceState zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--background\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"--background=\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Shutting down guestrpc on signal USR1 ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**, i8**) #0 !dbg !229 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct._GSource*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._GSource*, align 8
  %16 = alloca %struct._GSource*, align 8
  %17 = alloca %struct._GSource*, align 8
  %18 = alloca %struct._GSource*, align 8
  %19 = alloca %struct._GSource*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !233, metadata !234), !dbg !235
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !236, metadata !234), !dbg !237
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !238, metadata !234), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %8, metadata !240, metadata !234), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %9, metadata !242, metadata !234), !dbg !243
  store i32 1, i32* %9, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !244, metadata !234), !dbg !245
  call void @llvm.dbg.declare(metadata %struct._GSource** %11, metadata !246, metadata !234), !dbg !319
  %20 = load i32, i32* %5, align 4, !dbg !320
  call void @Unicode_Init(i32 %20, i8*** %6, i8*** null), !dbg !321
  %21 = load i32, i32* %5, align 4, !dbg !322
  %22 = sext i32 %21 to i64, !dbg !322
  %23 = mul i64 %22, 8, !dbg !323
  %24 = call noalias i8* @g_malloc(i64 %23), !dbg !324
  %25 = bitcast i8* %24 to i8**, !dbg !324
  store i8** %25, i8*** %10, align 8, !dbg !325
  store i32 0, i32* %8, align 4, !dbg !326
  br label %26, !dbg !328

; <label>:26:                                     ; preds = %40, %3
  %27 = load i32, i32* %8, align 4, !dbg !329
  %28 = load i32, i32* %5, align 4, !dbg !332
  %29 = icmp slt i32 %27, %28, !dbg !333
  br i1 %29, label %30, label %43, !dbg !334

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %8, align 4, !dbg !335
  %32 = sext i32 %31 to i64, !dbg !337
  %33 = load i8**, i8*** %6, align 8, !dbg !337
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32, !dbg !337
  %35 = load i8*, i8** %34, align 8, !dbg !337
  %36 = load i32, i32* %8, align 4, !dbg !338
  %37 = sext i32 %36 to i64, !dbg !339
  %38 = load i8**, i8*** %10, align 8, !dbg !339
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37, !dbg !339
  store i8* %35, i8** %39, align 8, !dbg !340
  br label %40, !dbg !341

; <label>:40:                                     ; preds = %30
  %41 = load i32, i32* %8, align 4, !dbg !342
  %42 = add nsw i32 %41, 1, !dbg !342
  store i32 %42, i32* %8, align 4, !dbg !342
  br label %26, !dbg !344, !llvm.loop !345

; <label>:43:                                     ; preds = %26
  %44 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #6, !dbg !347
  call void @VMTools_ConfigLogging(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._GKeyFile* null, i32 0, i32 0), !dbg !348
  call void @VMTools_BindTextDomain(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null), !dbg !349
  %45 = load i32, i32* %5, align 4, !dbg !350
  %46 = load i8**, i8*** %10, align 8, !dbg !352
  %47 = call i32 @ToolsCore_ParseCommandLine(%struct.ToolsServiceState* @gState, i32 %45, i8** %46), !dbg !353
  %48 = icmp ne i32 %47, 0, !dbg !353
  br i1 %48, label %52, label %49, !dbg !354

; <label>:49:                                     ; preds = %43
  %50 = load i8**, i8*** %10, align 8, !dbg !355
  %51 = bitcast i8** %50 to i8*, !dbg !355
  call void @g_free(i8* %51), !dbg !357
  br label %233, !dbg !358

; <label>:52:                                     ; preds = %43
  %53 = load i8**, i8*** %10, align 8, !dbg !359
  %54 = bitcast i8** %53 to i8*, !dbg !359
  call void @g_free(i8* %54), !dbg !360
  store i8** null, i8*** %10, align 8, !dbg !361
  %55 = load i8*, i8** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 9), align 8, !dbg !362
  %56 = icmp ne i8* %55, null, !dbg !364
  br i1 %56, label %57, label %165, !dbg !365

; <label>:57:                                     ; preds = %52
  %58 = load i8**, i8*** %6, align 8, !dbg !366
  %59 = getelementptr inbounds i8*, i8** %58, i64 0, !dbg !366
  %60 = load i8*, i8** %59, align 8, !dbg !366
  %61 = call i32 @g_path_is_absolute(i8* %60), !dbg !369
  %62 = icmp ne i32 %61, 0, !dbg !369
  br i1 %62, label %90, label %63, !dbg !370

; <label>:63:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata i8** %12, metadata !371, metadata !234), !dbg !373
  %64 = load i8**, i8*** %6, align 8, !dbg !374
  %65 = getelementptr inbounds i8*, i8** %64, i64 0, !dbg !374
  %66 = load i8*, i8** %65, align 8, !dbg !374
  %67 = call i8* @g_find_program_in_path(i8* %66), !dbg !375
  store i8* %67, i8** %12, align 8, !dbg !373
  %68 = load i8*, i8** %12, align 8, !dbg !376
  %69 = icmp eq i8* %68, null, !dbg !378
  br i1 %69, label %77, label %70, !dbg !379

; <label>:70:                                     ; preds = %63
  %71 = load i8*, i8** %12, align 8, !dbg !380
  %72 = load i8**, i8*** %6, align 8, !dbg !382
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !382
  %74 = load i8*, i8** %73, align 8, !dbg !382
  %75 = call i32 @strcmp(i8* %71, i8* %74) #7, !dbg !383
  %76 = icmp eq i32 %75, 0, !dbg !384
  br i1 %76, label %77, label %86, !dbg !385

; <label>:77:                                     ; preds = %70, %63
  call void @llvm.dbg.declare(metadata i8** %13, metadata !386, metadata !234), !dbg !388
  %78 = call i8* @File_Cwd(i8* null), !dbg !389
  store i8* %78, i8** %13, align 8, !dbg !388
  %79 = load i8*, i8** %12, align 8, !dbg !390
  call void @g_free(i8* %79), !dbg !391
  %80 = load i8*, i8** %13, align 8, !dbg !392
  %81 = load i8**, i8*** %6, align 8, !dbg !393
  %82 = getelementptr inbounds i8*, i8** %81, i64 0, !dbg !393
  %83 = load i8*, i8** %82, align 8, !dbg !393
  %84 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %80, i32 47, i8* %83), !dbg !394
  store i8* %84, i8** %12, align 8, !dbg !395
  %85 = load i8*, i8** %13, align 8, !dbg !396
  call void @vm_free(i8* %85), !dbg !397
  br label %86, !dbg !398

; <label>:86:                                     ; preds = %77, %70
  %87 = load i8*, i8** %12, align 8, !dbg !399
  %88 = load i8**, i8*** %6, align 8, !dbg !400
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !400
  store i8* %87, i8** %89, align 8, !dbg !401
  br label %90, !dbg !402

; <label>:90:                                     ; preds = %86, %57
  store i32 1, i32* %8, align 4, !dbg !403
  br label %91, !dbg !405

; <label>:91:                                     ; preds = %152, %90
  %92 = load i32, i32* %8, align 4, !dbg !406
  %93 = load i32, i32* %5, align 4, !dbg !409
  %94 = icmp slt i32 %92, %93, !dbg !410
  br i1 %94, label %95, label %155, !dbg !411

; <label>:95:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i64* %14, metadata !412, metadata !234), !dbg !414
  store i64 0, i64* %14, align 8, !dbg !414
  %96 = load i32, i32* %8, align 4, !dbg !415
  %97 = sext i32 %96 to i64, !dbg !417
  %98 = load i8**, i8*** %6, align 8, !dbg !417
  %99 = getelementptr inbounds i8*, i8** %98, i64 %97, !dbg !417
  %100 = load i8*, i8** %99, align 8, !dbg !417
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !418
  %102 = icmp eq i32 %101, 0, !dbg !419
  br i1 %102, label %111, label %103, !dbg !420

; <label>:103:                                    ; preds = %95
  %104 = load i32, i32* %8, align 4, !dbg !421
  %105 = sext i32 %104 to i64, !dbg !422
  %106 = load i8**, i8*** %6, align 8, !dbg !422
  %107 = getelementptr inbounds i8*, i8** %106, i64 %105, !dbg !422
  %108 = load i8*, i8** %107, align 8, !dbg !422
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !423
  %110 = icmp eq i32 %109, 0, !dbg !424
  br i1 %110, label %111, label %112, !dbg !425

; <label>:111:                                    ; preds = %103, %95
  store i64 2, i64* %14, align 8, !dbg !427
  br label %122, !dbg !429

; <label>:112:                                    ; preds = %103
  %113 = load i32, i32* %8, align 4, !dbg !430
  %114 = sext i32 %113 to i64, !dbg !433
  %115 = load i8**, i8*** %6, align 8, !dbg !433
  %116 = getelementptr inbounds i8*, i8** %115, i64 %114, !dbg !433
  %117 = load i8*, i8** %116, align 8, !dbg !433
  %118 = call i32 @g_str_has_prefix(i8* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !434
  %119 = icmp ne i32 %118, 0, !dbg !434
  br i1 %119, label %120, label %121, !dbg !434

; <label>:120:                                    ; preds = %112
  store i64 1, i64* %14, align 8, !dbg !435
  br label %121, !dbg !437

; <label>:121:                                    ; preds = %120, %112
  br label %122

; <label>:122:                                    ; preds = %121, %111
  %123 = load i64, i64* %14, align 8, !dbg !438
  %124 = icmp ne i64 %123, 0, !dbg !438
  br i1 %124, label %125, label %151, !dbg !440

; <label>:125:                                    ; preds = %122
  %126 = load i8**, i8*** %6, align 8, !dbg !441
  %127 = load i32, i32* %8, align 4, !dbg !443
  %128 = sext i32 %127 to i64, !dbg !444
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128, !dbg !444
  %130 = bitcast i8** %129 to i8*, !dbg !445
  %131 = load i8**, i8*** %6, align 8, !dbg !446
  %132 = load i32, i32* %8, align 4, !dbg !447
  %133 = sext i32 %132 to i64, !dbg !448
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133, !dbg !448
  %135 = load i64, i64* %14, align 8, !dbg !449
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135, !dbg !450
  %137 = bitcast i8** %136 to i8*, !dbg !445
  %138 = load i32, i32* %5, align 4, !dbg !451
  %139 = load i32, i32* %8, align 4, !dbg !452
  %140 = sub nsw i32 %138, %139, !dbg !453
  %141 = sext i32 %140 to i64, !dbg !451
  %142 = load i64, i64* %14, align 8, !dbg !454
  %143 = sub i64 %141, %142, !dbg !455
  %144 = mul i64 %143, 8, !dbg !456
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %130, i8* %137, i64 %144, i32 8, i1 false), !dbg !445
  %145 = load i32, i32* %5, align 4, !dbg !457
  %146 = sext i32 %145 to i64, !dbg !457
  %147 = load i64, i64* %14, align 8, !dbg !458
  %148 = sub i64 %146, %147, !dbg !459
  %149 = load i8**, i8*** %6, align 8, !dbg !460
  %150 = getelementptr inbounds i8*, i8** %149, i64 %148, !dbg !460
  store i8* null, i8** %150, align 8, !dbg !461
  br label %155, !dbg !462

; <label>:151:                                    ; preds = %122
  br label %152, !dbg !463

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %8, align 4, !dbg !464
  %154 = add nsw i32 %153, 1, !dbg !464
  store i32 %154, i32* %8, align 4, !dbg !464
  br label %91, !dbg !466, !llvm.loop !467

; <label>:155:                                    ; preds = %125, %91
  %156 = load i8**, i8*** %6, align 8, !dbg !469
  %157 = getelementptr inbounds i8*, i8** %156, i64 0, !dbg !469
  %158 = load i8*, i8** %157, align 8, !dbg !469
  %159 = load i8**, i8*** %6, align 8, !dbg !471
  %160 = load i8*, i8** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 9), align 8, !dbg !472
  %161 = call signext i8 @Hostinfo_Daemonize(i8* %158, i8** %159, i32 8, i8* %160, i32* null, i64 0), !dbg !473
  %162 = icmp ne i8 %161, 0, !dbg !473
  br i1 %162, label %164, label %163, !dbg !474

; <label>:163:                                    ; preds = %155
  br label %233, !dbg !475

; <label>:164:                                    ; preds = %155
  store i32 0, i32* %4, align 4, !dbg !477
  br label %235, !dbg !477

; <label>:165:                                    ; preds = %52
  call void @ToolsCore_Setup(%struct.ToolsServiceState* @gState), !dbg !478
  %166 = call %struct._GSource* @VMTools_NewSignalSource(i32 1), !dbg !479
  store %struct._GSource* %166, %struct._GSource** %11, align 8, !dbg !480
  br label %167, !dbg !481, !llvm.loop !482

; <label>:167:                                    ; preds = %165
  call void @llvm.dbg.declare(metadata %struct._GSource** %15, metadata !483, metadata !234), !dbg !485
  %168 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !486
  store %struct._GSource* %168, %struct._GSource** %15, align 8, !dbg !488
  %169 = load %struct._GSource*, %struct._GSource** %15, align 8, !dbg !489
  call void @g_source_set_callback(%struct._GSource* %169, i32 (i8*)* bitcast (i32 (%struct.siginfo_t*, i8*)* @ToolsCoreSigHUPCb to i32 (i8*)*), i8* bitcast (%struct.ToolsServiceState* @gState to i8*), void (i8*)* null), !dbg !490
  %170 = load %struct._GSource*, %struct._GSource** %15, align 8, !dbg !491
  %171 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !492
  %172 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %171), !dbg !493
  %173 = call i32 @g_source_attach(%struct._GSource* %170, %struct._GMainContext* %172), !dbg !495
  br label %174, !dbg !497

; <label>:174:                                    ; preds = %167
  %175 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !498
  call void @g_source_unref(%struct._GSource* %175), !dbg !499
  %176 = call %struct._GSource* @VMTools_NewSignalSource(i32 2), !dbg !500
  store %struct._GSource* %176, %struct._GSource** %11, align 8, !dbg !501
  br label %177, !dbg !502, !llvm.loop !503

; <label>:177:                                    ; preds = %174
  call void @llvm.dbg.declare(metadata %struct._GSource** %16, metadata !504, metadata !234), !dbg !506
  %178 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !507
  store %struct._GSource* %178, %struct._GSource** %16, align 8, !dbg !509
  %179 = load %struct._GSource*, %struct._GSource** %16, align 8, !dbg !510
  %180 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !511
  %181 = bitcast %struct._GMainLoop* %180 to i8*, !dbg !512
  call void @g_source_set_callback(%struct._GSource* %179, i32 (i8*)* bitcast (i32 (%struct.siginfo_t*, i8*)* @ToolsCoreSigHandler to i32 (i8*)*), i8* %181, void (i8*)* null), !dbg !513
  %182 = load %struct._GSource*, %struct._GSource** %16, align 8, !dbg !514
  %183 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !515
  %184 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %183), !dbg !516
  %185 = call i32 @g_source_attach(%struct._GSource* %182, %struct._GMainContext* %184), !dbg !518
  br label %186, !dbg !520

; <label>:186:                                    ; preds = %177
  %187 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !521
  call void @g_source_unref(%struct._GSource* %187), !dbg !522
  %188 = call %struct._GSource* @VMTools_NewSignalSource(i32 3), !dbg !523
  store %struct._GSource* %188, %struct._GSource** %11, align 8, !dbg !524
  br label %189, !dbg !525, !llvm.loop !526

; <label>:189:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata %struct._GSource** %17, metadata !527, metadata !234), !dbg !529
  %190 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !530
  store %struct._GSource* %190, %struct._GSource** %17, align 8, !dbg !532
  %191 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !533
  %192 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !534
  %193 = bitcast %struct._GMainLoop* %192 to i8*, !dbg !535
  call void @g_source_set_callback(%struct._GSource* %191, i32 (i8*)* bitcast (i32 (%struct.siginfo_t*, i8*)* @ToolsCoreSigHandler to i32 (i8*)*), i8* %193, void (i8*)* null), !dbg !536
  %194 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !537
  %195 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !538
  %196 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %195), !dbg !539
  %197 = call i32 @g_source_attach(%struct._GSource* %194, %struct._GMainContext* %196), !dbg !541
  br label %198, !dbg !543

; <label>:198:                                    ; preds = %189
  %199 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !544
  call void @g_source_unref(%struct._GSource* %199), !dbg !545
  %200 = call %struct._GSource* @VMTools_NewSignalSource(i32 15), !dbg !546
  store %struct._GSource* %200, %struct._GSource** %11, align 8, !dbg !547
  br label %201, !dbg !548, !llvm.loop !549

; <label>:201:                                    ; preds = %198
  call void @llvm.dbg.declare(metadata %struct._GSource** %18, metadata !550, metadata !234), !dbg !552
  %202 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !553
  store %struct._GSource* %202, %struct._GSource** %18, align 8, !dbg !555
  %203 = load %struct._GSource*, %struct._GSource** %18, align 8, !dbg !556
  %204 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !557
  %205 = bitcast %struct._GMainLoop* %204 to i8*, !dbg !558
  call void @g_source_set_callback(%struct._GSource* %203, i32 (i8*)* bitcast (i32 (%struct.siginfo_t*, i8*)* @ToolsCoreSigHandler to i32 (i8*)*), i8* %205, void (i8*)* null), !dbg !559
  %206 = load %struct._GSource*, %struct._GSource** %18, align 8, !dbg !560
  %207 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !561
  %208 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %207), !dbg !562
  %209 = call i32 @g_source_attach(%struct._GSource* %206, %struct._GMainContext* %208), !dbg !564
  br label %210, !dbg !566

; <label>:210:                                    ; preds = %201
  %211 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !567
  call void @g_source_unref(%struct._GSource* %211), !dbg !568
  %212 = call %struct._GSource* @VMTools_NewSignalSource(i32 10), !dbg !569
  store %struct._GSource* %212, %struct._GSource** %11, align 8, !dbg !570
  br label %213, !dbg !571, !llvm.loop !572

; <label>:213:                                    ; preds = %210
  call void @llvm.dbg.declare(metadata %struct._GSource** %19, metadata !573, metadata !234), !dbg !575
  %214 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !576
  store %struct._GSource* %214, %struct._GSource** %19, align 8, !dbg !578
  %215 = load %struct._GSource*, %struct._GSource** %19, align 8, !dbg !579
  call void @g_source_set_callback(%struct._GSource* %215, i32 (i8*)* bitcast (i32 (%struct.siginfo_t*, i8*)* @ToolsCoreSigUsrHandler to i32 (i8*)*), i8* null, void (i8*)* null), !dbg !580
  %216 = load %struct._GSource*, %struct._GSource** %19, align 8, !dbg !581
  %217 = load %struct._GMainLoop*, %struct._GMainLoop** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 4), align 8, !dbg !582
  %218 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %217), !dbg !583
  %219 = call i32 @g_source_attach(%struct._GSource* %216, %struct._GMainContext* %218), !dbg !585
  br label %220, !dbg !587

; <label>:220:                                    ; preds = %213
  %221 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !588
  call void @g_source_unref(%struct._GSource* %221), !dbg !589
  %222 = call void (i32)* @signal(i32 12, void (i32)* inttoptr (i64 1 to void (i32)*)) #6, !dbg !590
  %223 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #6, !dbg !591
  %224 = load i8**, i8*** %7, align 8, !dbg !592
  %225 = call i8** @System_GetNativeEnviron(i8** %224), !dbg !593
  store i8** %225, i8*** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 9), align 8, !dbg !594
  call void @ToolsCoreWorkAroundLoop(%struct.ToolsServiceState* @gState, i32 1), !dbg !595
  %226 = call i32 @ToolsCore_Run(%struct.ToolsServiceState* @gState), !dbg !596
  store i32 %226, i32* %9, align 4, !dbg !597
  call void @ToolsCoreWorkAroundLoop(%struct.ToolsServiceState* @gState, i32 0), !dbg !598
  %227 = load i8*, i8** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 9), align 8, !dbg !599
  %228 = icmp ne i8* %227, null, !dbg !601
  br i1 %228, label %229, label %232, !dbg !602

; <label>:229:                                    ; preds = %220
  %230 = load i8*, i8** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 9), align 8, !dbg !603
  %231 = call i32 @g_unlink(i8* %230), !dbg !605
  br label %232, !dbg !606

; <label>:232:                                    ; preds = %229, %220
  br label %233, !dbg !607

; <label>:233:                                    ; preds = %232, %163, %49
  %234 = load i32, i32* %9, align 4, !dbg !609
  store i32 %234, i32* %4, align 4, !dbg !610
  br label %235, !dbg !610

; <label>:235:                                    ; preds = %233, %164
  %236 = load i32, i32* %4, align 4, !dbg !611
  ret i32 %236, !dbg !611
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Unicode_Init(i32, i8***, i8***) #2

declare noalias i8* @g_malloc(i64) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

declare void @VMTools_ConfigLogging(i8*, %struct._GKeyFile*, i32, i32) #2

declare void @VMTools_BindTextDomain(i8*, i8*, i8*) #2

declare i32 @ToolsCore_ParseCommandLine(%struct.ToolsServiceState*, i32, i8**) #2

declare void @g_free(i8*) #2

declare i32 @g_path_is_absolute(i8*) #2

declare i8* @g_find_program_in_path(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @File_Cwd(i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @vm_free(i8*) #2

declare i32 @g_str_has_prefix(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare signext i8 @Hostinfo_Daemonize(i8*, i8**, i32, i8*, i32*, i64) #2

declare void @ToolsCore_Setup(%struct.ToolsServiceState*) #2

declare %struct._GSource* @VMTools_NewSignalSource(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreSigHUPCb(%struct.siginfo_t*, i8*) #0 !dbg !612 {
  %3 = alloca %struct.siginfo_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.siginfo_t* %0, %struct.siginfo_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %3, metadata !687, metadata !234), !dbg !688
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !689, metadata !234), !dbg !690
  %5 = load i8*, i8** %4, align 8, !dbg !691
  %6 = bitcast i8* %5 to %struct.ToolsServiceState*, !dbg !691
  call void @ToolsCore_ReloadConfig(%struct.ToolsServiceState* %6, i32 1), !dbg !692
  ret i32 1, !dbg !693
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreSigHandler(%struct.siginfo_t*, i8*) #0 !dbg !694 {
  %3 = alloca %struct.siginfo_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.siginfo_t* %0, %struct.siginfo_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %3, metadata !695, metadata !234), !dbg !696
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !697, metadata !234), !dbg !698
  %5 = load i8*, i8** %4, align 8, !dbg !699
  %6 = bitcast i8* %5 to %struct._GMainLoop*, !dbg !700
  call void @g_main_loop_quit(%struct._GMainLoop* %6), !dbg !701
  ret i32 0, !dbg !702
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreSigUsrHandler(%struct.siginfo_t*, i8*) #0 !dbg !703 {
  %3 = alloca %struct.siginfo_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.siginfo_t* %0, %struct.siginfo_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %3, metadata !704, metadata !234), !dbg !705
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !706, metadata !234), !dbg !707
  call void @ToolsCore_DumpState(%struct.ToolsServiceState* @gState), !dbg !708
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)), !dbg !709
  %5 = load i8*, i8** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 1), align 8, !dbg !710
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !712
  %7 = icmp eq i32 %6, 0, !dbg !713
  br i1 %7, label %8, label %10, !dbg !714

; <label>:8:                                      ; preds = %2
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 5), align 8, !dbg !715
  call void @RpcChannel_Shutdown(%struct._RpcChannel* %9), !dbg !717
  store %struct._RpcChannel* null, %struct._RpcChannel** getelementptr inbounds (%struct.ToolsServiceState, %struct.ToolsServiceState* @gState, i32 0, i32 13, i32 5), align 8, !dbg !718
  br label %10, !dbg !719

; <label>:10:                                     ; preds = %8, %2
  ret i32 1, !dbg !720
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare i8** @System_GetNativeEnviron(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreWorkAroundLoop(%struct.ToolsServiceState*, i32) #0 !dbg !721 {
  %3 = alloca %struct.ToolsServiceState*, align 8
  %4 = alloca i32, align 4
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !725, metadata !234), !dbg !726
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !727, metadata !234), !dbg !728
  ret void, !dbg !729
}

declare i32 @ToolsCore_Run(%struct.ToolsServiceState*) #2

declare i32 @g_unlink(i8*) #2

declare void @ToolsCore_ReloadConfig(%struct.ToolsServiceState*, i32) #2

declare void @g_main_loop_quit(%struct._GMainLoop*) #2

declare void @ToolsCore_DumpState(%struct.ToolsServiceState*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @RpcChannel_Shutdown(%struct._RpcChannel*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!226, !227}
!llvm.ident = !{!228}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !33, globals: !53)
!1 = !DIFile(filename: "vmtoolsd-mainPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!2 = !{!3, !11, !15, !21}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "HostinfoDaemonizeFlags", file: !4, line: 123, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hostinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_DEFAULT", value: 0)
!7 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_NOCHDIR", value: 1)
!8 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_NOCLOSE", value: 2)
!9 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_EXIT", value: 4)
!10 = !DIEnumerator(name: "HOSTINFO_DAEMONIZE_LOCKPID", value: 8)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 232, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!13 = !{!14}
!14 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 339, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!18 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!19 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!20 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 51, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32}
!24 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!25 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!26 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!27 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!28 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!29 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!33 = !{!34, !35, !45, !50}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !36, line: 155, baseType: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !44}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !41, line: 50, baseType: !42)
!41 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !41, line: 49, baseType: !43)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !41, line: 77, baseType: !34)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !46, line: 85, baseType: !47)
!46 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !43}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !36, line: 56, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !36, line: 56, flags: DIFlagFwdDecl)
!53 = !{!54, !61}
!54 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !55, line: 46, type: !56, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!55 = !DIFile(filename: "mainPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, align: 8, elements: !59)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !{!60}
!60 = !DISubrange(count: 20)
!61 = distinct !DIGlobalVariable(name: "gState", scope: !0, file: !55, line: 49, type: !62, isLocal: true, isDefinition: true, variable: %struct.ToolsServiceState* @gState)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceState", file: !63, line: 100, baseType: !64)
!63 = !DIFile(filename: "toolsCoreInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceState", file: !63, line: 69, size: 1472, align: 64, elements: !65)
!65 = !{!66, !69, !70, !76, !79, !80, !81, !82, !83, !92, !93, !98, !99, !222, !223, !224, !225}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !63, line: 70, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !41, line: 46, baseType: !58)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "configFile", scope: !64, file: !63, line: 71, baseType: !67, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "configMtime", scope: !64, file: !63, line: 72, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !72, line: 75, baseType: !73)
!72 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !74, line: 139, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!75 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "configCheckTask", scope: !64, file: !63, line: 73, baseType: !77, size: 32, align: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !41, line: 55, baseType: !78)
!78 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mainService", scope: !64, file: !63, line: 74, baseType: !40, size: 32, align: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capsRegistered", scope: !64, file: !63, line: 75, baseType: !40, size: 32, align: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "commonPath", scope: !64, file: !63, line: 76, baseType: !67, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pluginPath", scope: !64, file: !63, line: 77, baseType: !67, size: 64, align: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !64, file: !63, line: 78, baseType: !84, size: 64, align: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !86, line: 39, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !86, line: 53, size: 128, align: 64, elements: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !87, file: !86, line: 55, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !86, line: 56, baseType: !77, size: 32, align: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pidFile", scope: !64, file: !63, line: 82, baseType: !67, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "debugLib", scope: !64, file: !63, line: 84, baseType: !94, size: 64, align: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !96, line: 49, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !96, line: 49, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !64, file: !63, line: 85, baseType: !67, size: 64, align: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "debugData", scope: !64, file: !63, line: 86, baseType: !100, size: 64, align: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugLibData", file: !102, line: 150, baseType: !103)
!102 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/rpcdebug.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugLibData", file: !102, line: 142, size: 192, align: 64, elements: !104)
!104 = !{!105, !138, !142}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "newDebugChannel", scope: !103, file: !102, line: 143, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !113, !137}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !111, line: 48, baseType: !112)
!111 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !111, line: 48, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !12, line: 274, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !12, line: 241, size: 576, align: 64, elements: !116)
!116 = !{!117, !119, !122, !123, !124, !125, !126, !131, !132, !133, !136}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !115, file: !12, line: 243, baseType: !118, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !12, line: 234, baseType: !11)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !12, line: 245, baseType: !120, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !115, file: !12, line: 247, baseType: !40, size: 32, align: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !115, file: !12, line: 249, baseType: !43, size: 32, align: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !115, file: !12, line: 251, baseType: !50, size: 64, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !115, file: !12, line: 253, baseType: !109, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !115, file: !12, line: 255, baseType: !127, size: 64, align: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !129, line: 48, baseType: !130)
!129 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !129, line: 48, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !115, file: !12, line: 261, baseType: !43, size: 32, align: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !115, file: !12, line: 263, baseType: !43, size: 32, align: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !115, file: !12, line: 265, baseType: !134, size: 64, align: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !115, file: !12, line: 273, baseType: !44, size: 64, align: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !103, file: !102, line: 145, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!43, !113, !44, !44, !137}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !103, file: !102, line: 149, baseType: !143, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugPlugin", file: !102, line: 126, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugPlugin", file: !102, line: 112, size: 320, align: 64, elements: !146)
!146 = !{!147, !166, !167, !196, !202}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "recvFns", scope: !145, file: !102, line: 114, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvMapping", file: !102, line: 69, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugRecvMapping", file: !102, line: 59, size: 256, align: 64, elements: !151)
!151 = !{!152, !153, !164, !165}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !102, line: 60, baseType: !67, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !150, file: !102, line: 61, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvFn", file: !102, line: 53, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!40, !158, !159, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 216, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!161 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "xdrProc", scope: !150, file: !102, line: 66, baseType: !44, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "xdrSize", scope: !150, file: !102, line: 68, baseType: !159, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dfltRecvFn", scope: !145, file: !102, line: 119, baseType: !154, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sendFn", scope: !145, file: !102, line: 121, baseType: !168, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugSendFn", file: !102, line: 102, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!40, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugMsgMapping", file: !102, line: 86, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugMsgMapping", file: !102, line: 81, size: 256, align: 64, elements: !175)
!175 = !{!176, !177, !178, !195}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !174, file: !102, line: 82, baseType: !67, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "messageLen", scope: !174, file: !102, line: 83, baseType: !159, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "validateFn", scope: !174, file: !102, line: 84, baseType: !179, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugValidateFn", file: !102, line: 77, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!40, !183, !40}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !111, line: 77, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !111, line: 51, size: 512, align: 64, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !111, line: 53, baseType: !135, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !185, file: !111, line: 58, baseType: !135, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !185, file: !111, line: 60, baseType: !159, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !185, file: !111, line: 65, baseType: !158, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !185, file: !111, line: 67, baseType: !159, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !185, file: !111, line: 72, baseType: !40, size: 32, align: 32, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !185, file: !111, line: 74, baseType: !34, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !185, file: !111, line: 76, baseType: !34, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "freeMsg", scope: !174, file: !102, line: 85, baseType: !40, size: 32, align: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "shutdownFn", scope: !145, file: !102, line: 123, baseType: !197, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugShutdownFn", file: !102, line: 105, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !113, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !145, file: !102, line: 125, baseType: !203, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !12, line: 545, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !12, line: 501, size: 256, align: 64, elements: !206)
!206 = !{!207, !208, !215, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !12, line: 503, baseType: !135, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !205, file: !12, line: 508, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !86, line: 37, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !86, line: 41, size: 128, align: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !211, file: !86, line: 43, baseType: !67, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !211, file: !86, line: 44, baseType: !77, size: 32, align: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !205, file: !12, line: 539, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!40, !113, !219, !44, !220}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !12, line: 360, baseType: !15)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !205, file: !12, line: 544, baseType: !44, size: 64, align: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !64, file: !63, line: 87, baseType: !114, size: 576, align: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !64, file: !63, line: 88, baseType: !209, size: 64, align: 64, offset: 1344)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vsockDev", scope: !64, file: !63, line: 97, baseType: !43, size: 32, align: 32, offset: 1408)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vsockFamily", scope: !64, file: !63, line: 98, baseType: !43, size: 32, align: 32, offset: 1440)
!226 = !{i32 2, !"Dwarf Version", i32 4}
!227 = !{i32 2, !"Debug Info Version", i32 3}
!228 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!229 = distinct !DISubprogram(name: "main", scope: !55, file: !55, line: 164, type: !230, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!43, !43, !162, !134}
!232 = !{}
!233 = !DILocalVariable(name: "argc", arg: 1, scope: !229, file: !55, line: 164, type: !43)
!234 = !DIExpression()
!235 = !DILocation(line: 164, column: 10, scope: !229)
!236 = !DILocalVariable(name: "argv", arg: 2, scope: !229, file: !55, line: 165, type: !162)
!237 = !DILocation(line: 165, column: 12, scope: !229)
!238 = !DILocalVariable(name: "envp", arg: 3, scope: !229, file: !55, line: 166, type: !134)
!239 = !DILocation(line: 166, column: 18, scope: !229)
!240 = !DILocalVariable(name: "i", scope: !229, file: !55, line: 168, type: !43)
!241 = !DILocation(line: 168, column: 8, scope: !229)
!242 = !DILocalVariable(name: "ret", scope: !229, file: !55, line: 169, type: !43)
!243 = !DILocation(line: 169, column: 8, scope: !229)
!244 = !DILocalVariable(name: "argvCopy", scope: !229, file: !55, line: 170, type: !162)
!245 = !DILocation(line: 170, column: 11, scope: !229)
!246 = !DILocalVariable(name: "src", scope: !229, file: !55, line: 171, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !36, line: 64, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !36, line: 171, size: 768, align: 64, elements: !250)
!250 = !{!251, !252, !267, !296, !297, !301, !302, !303, !304, !312, !313, !314, !315}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !249, file: !36, line: 174, baseType: !44, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !249, file: !36, line: 175, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !36, line: 77, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !36, line: 196, size: 192, align: 64, elements: !256)
!256 = !{!257, !261, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !255, file: !36, line: 198, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !44}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !255, file: !36, line: 199, baseType: !258, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !255, file: !36, line: 200, baseType: !263, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !44, !247, !266, !90}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !249, file: !36, line: 177, baseType: !268, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !36, line: 130, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !36, line: 214, size: 384, align: 64, elements: !272)
!272 = !{!273, !278, !282, !286, !290, !291}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !271, file: !36, line: 216, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!40, !247, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !271, file: !36, line: 218, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!40, !247}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !271, file: !36, line: 219, baseType: !283, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!40, !247, !35, !44}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !271, file: !36, line: 222, baseType: !287, size: 64, align: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !247}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !271, file: !36, line: 226, baseType: !35, size: 64, align: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !271, file: !36, line: 227, baseType: !292, size: 64, align: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !36, line: 212, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !249, file: !36, line: 178, baseType: !77, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !249, file: !36, line: 180, baseType: !298, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !36, line: 48, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !36, line: 48, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !249, file: !36, line: 182, baseType: !42, size: 32, align: 32, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !36, line: 183, baseType: !77, size: 32, align: 32, offset: 352)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !249, file: !36, line: 184, baseType: !77, size: 32, align: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !249, file: !36, line: 186, baseType: !305, size: 64, align: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !307, line: 37, baseType: !308)
!307 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !307, line: 39, size: 128, align: 64, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !308, file: !307, line: 41, baseType: !44, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !307, line: 42, baseType: !305, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !36, line: 188, baseType: !247, size: 64, align: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !36, line: 189, baseType: !247, size: 64, align: 64, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !36, line: 191, baseType: !158, size: 64, align: 64, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !249, file: !36, line: 193, baseType: !316, size: 64, align: 64, offset: 704)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !36, line: 65, baseType: !318)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !36, line: 65, flags: DIFlagFwdDecl)
!319 = !DILocation(line: 171, column: 13, scope: !229)
!320 = !DILocation(line: 173, column: 17, scope: !229)
!321 = !DILocation(line: 173, column: 4, scope: !229)
!322 = !DILocation(line: 180, column: 24, scope: !229)
!323 = !DILocation(line: 180, column: 29, scope: !229)
!324 = !DILocation(line: 180, column: 15, scope: !229)
!325 = !DILocation(line: 180, column: 13, scope: !229)
!326 = !DILocation(line: 181, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !229, file: !55, line: 181, column: 4)
!328 = !DILocation(line: 181, column: 9, scope: !327)
!329 = !DILocation(line: 181, column: 16, scope: !330)
!330 = !DILexicalBlockFile(scope: !331, file: !55, discriminator: 1)
!331 = distinct !DILexicalBlock(scope: !327, file: !55, line: 181, column: 4)
!332 = !DILocation(line: 181, column: 20, scope: !330)
!333 = !DILocation(line: 181, column: 18, scope: !330)
!334 = !DILocation(line: 181, column: 4, scope: !330)
!335 = !DILocation(line: 182, column: 26, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !55, line: 181, column: 31)
!337 = !DILocation(line: 182, column: 21, scope: !336)
!338 = !DILocation(line: 182, column: 16, scope: !336)
!339 = !DILocation(line: 182, column: 7, scope: !336)
!340 = !DILocation(line: 182, column: 19, scope: !336)
!341 = !DILocation(line: 183, column: 4, scope: !336)
!342 = !DILocation(line: 181, column: 27, scope: !343)
!343 = !DILexicalBlockFile(scope: !331, file: !55, discriminator: 2)
!344 = !DILocation(line: 181, column: 4, scope: !343)
!345 = distinct !{!345, !346}
!346 = !DILocation(line: 181, column: 4, scope: !229)
!347 = !DILocation(line: 185, column: 4, scope: !229)
!348 = !DILocation(line: 186, column: 4, scope: !229)
!349 = !DILocation(line: 187, column: 4, scope: !229)
!350 = !DILocation(line: 189, column: 45, scope: !351)
!351 = distinct !DILexicalBlock(scope: !229, file: !55, line: 189, column: 8)
!352 = !DILocation(line: 189, column: 51, scope: !351)
!353 = !DILocation(line: 189, column: 9, scope: !351)
!354 = !DILocation(line: 189, column: 8, scope: !229)
!355 = !DILocation(line: 190, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !55, line: 189, column: 62)
!357 = !DILocation(line: 190, column: 7, scope: !356)
!358 = !DILocation(line: 191, column: 7, scope: !356)
!359 = !DILocation(line: 193, column: 11, scope: !229)
!360 = !DILocation(line: 193, column: 4, scope: !229)
!361 = !DILocation(line: 194, column: 13, scope: !229)
!362 = !DILocation(line: 196, column: 15, scope: !363)
!363 = distinct !DILexicalBlock(scope: !229, file: !55, line: 196, column: 8)
!364 = !DILocation(line: 196, column: 23, scope: !363)
!365 = !DILocation(line: 196, column: 8, scope: !229)
!366 = !DILocation(line: 202, column: 31, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !55, line: 202, column: 11)
!368 = distinct !DILexicalBlock(scope: !363, file: !55, line: 196, column: 31)
!369 = !DILocation(line: 202, column: 12, scope: !367)
!370 = !DILocation(line: 202, column: 11, scope: !368)
!371 = !DILocalVariable(name: "abs", scope: !372, file: !55, line: 203, type: !67)
!372 = distinct !DILexicalBlock(scope: !367, file: !55, line: 202, column: 41)
!373 = !DILocation(line: 203, column: 17, scope: !372)
!374 = !DILocation(line: 203, column: 46, scope: !372)
!375 = !DILocation(line: 203, column: 23, scope: !372)
!376 = !DILocation(line: 204, column: 14, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !55, line: 204, column: 14)
!378 = !DILocation(line: 204, column: 18, scope: !377)
!379 = !DILocation(line: 204, column: 25, scope: !377)
!380 = !DILocation(line: 204, column: 35, scope: !381)
!381 = !DILexicalBlockFile(scope: !377, file: !55, discriminator: 1)
!382 = !DILocation(line: 204, column: 40, scope: !381)
!383 = !DILocation(line: 204, column: 28, scope: !381)
!384 = !DILocation(line: 204, column: 49, scope: !381)
!385 = !DILocation(line: 204, column: 14, scope: !381)
!386 = !DILocalVariable(name: "cwd", scope: !387, file: !55, line: 205, type: !158)
!387 = distinct !DILexicalBlock(scope: !377, file: !55, line: 204, column: 55)
!388 = !DILocation(line: 205, column: 19, scope: !387)
!389 = !DILocation(line: 205, column: 25, scope: !387)
!390 = !DILocation(line: 206, column: 20, scope: !387)
!391 = !DILocation(line: 206, column: 13, scope: !387)
!392 = !DILocation(line: 207, column: 45, scope: !387)
!393 = !DILocation(line: 207, column: 55, scope: !387)
!394 = !DILocation(line: 207, column: 19, scope: !387)
!395 = !DILocation(line: 207, column: 17, scope: !387)
!396 = !DILocation(line: 208, column: 21, scope: !387)
!397 = !DILocation(line: 208, column: 13, scope: !387)
!398 = !DILocation(line: 209, column: 10, scope: !387)
!399 = !DILocation(line: 210, column: 20, scope: !372)
!400 = !DILocation(line: 210, column: 10, scope: !372)
!401 = !DILocation(line: 210, column: 18, scope: !372)
!402 = !DILocation(line: 211, column: 7, scope: !372)
!403 = !DILocation(line: 219, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !368, file: !55, line: 219, column: 7)
!405 = !DILocation(line: 219, column: 12, scope: !404)
!406 = !DILocation(line: 219, column: 19, scope: !407)
!407 = !DILexicalBlockFile(scope: !408, file: !55, discriminator: 1)
!408 = distinct !DILexicalBlock(scope: !404, file: !55, line: 219, column: 7)
!409 = !DILocation(line: 219, column: 23, scope: !407)
!410 = !DILocation(line: 219, column: 21, scope: !407)
!411 = !DILocation(line: 219, column: 7, scope: !407)
!412 = !DILocalVariable(name: "count", scope: !413, file: !55, line: 220, type: !159)
!413 = distinct !DILexicalBlock(scope: !408, file: !55, line: 219, column: 34)
!414 = !DILocation(line: 220, column: 17, scope: !413)
!415 = !DILocation(line: 221, column: 26, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !55, line: 221, column: 14)
!417 = !DILocation(line: 221, column: 21, scope: !416)
!418 = !DILocation(line: 221, column: 14, scope: !416)
!419 = !DILocation(line: 221, column: 46, scope: !416)
!420 = !DILocation(line: 221, column: 51, scope: !416)
!421 = !DILocation(line: 222, column: 26, scope: !416)
!422 = !DILocation(line: 222, column: 21, scope: !416)
!423 = !DILocation(line: 222, column: 14, scope: !416)
!424 = !DILocation(line: 222, column: 36, scope: !416)
!425 = !DILocation(line: 221, column: 14, scope: !426)
!426 = !DILexicalBlockFile(scope: !413, file: !55, discriminator: 1)
!427 = !DILocation(line: 223, column: 19, scope: !428)
!428 = distinct !DILexicalBlock(scope: !416, file: !55, line: 222, column: 42)
!429 = !DILocation(line: 224, column: 10, scope: !428)
!430 = !DILocation(line: 224, column: 43, scope: !431)
!431 = !DILexicalBlockFile(scope: !432, file: !55, discriminator: 1)
!432 = distinct !DILexicalBlock(scope: !416, file: !55, line: 224, column: 21)
!433 = !DILocation(line: 224, column: 38, scope: !431)
!434 = !DILocation(line: 224, column: 21, scope: !431)
!435 = !DILocation(line: 225, column: 19, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !55, line: 224, column: 65)
!437 = !DILocation(line: 226, column: 10, scope: !436)
!438 = !DILocation(line: 227, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !413, file: !55, line: 227, column: 14)
!440 = !DILocation(line: 227, column: 14, scope: !413)
!441 = !DILocation(line: 228, column: 21, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !55, line: 227, column: 21)
!443 = !DILocation(line: 228, column: 28, scope: !442)
!444 = !DILocation(line: 228, column: 26, scope: !442)
!445 = !DILocation(line: 228, column: 13, scope: !442)
!446 = !DILocation(line: 228, column: 31, scope: !442)
!447 = !DILocation(line: 228, column: 38, scope: !442)
!448 = !DILocation(line: 228, column: 36, scope: !442)
!449 = !DILocation(line: 228, column: 42, scope: !442)
!450 = !DILocation(line: 228, column: 40, scope: !442)
!451 = !DILocation(line: 228, column: 50, scope: !442)
!452 = !DILocation(line: 228, column: 57, scope: !442)
!453 = !DILocation(line: 228, column: 55, scope: !442)
!454 = !DILocation(line: 228, column: 61, scope: !442)
!455 = !DILocation(line: 228, column: 59, scope: !442)
!456 = !DILocation(line: 228, column: 68, scope: !442)
!457 = !DILocation(line: 229, column: 18, scope: !442)
!458 = !DILocation(line: 229, column: 25, scope: !442)
!459 = !DILocation(line: 229, column: 23, scope: !442)
!460 = !DILocation(line: 229, column: 13, scope: !442)
!461 = !DILocation(line: 229, column: 32, scope: !442)
!462 = !DILocation(line: 230, column: 13, scope: !442)
!463 = !DILocation(line: 232, column: 7, scope: !413)
!464 = !DILocation(line: 219, column: 30, scope: !465)
!465 = !DILexicalBlockFile(scope: !408, file: !55, discriminator: 2)
!466 = !DILocation(line: 219, column: 7, scope: !465)
!467 = distinct !{!467, !468}
!468 = !DILocation(line: 219, column: 7, scope: !368)
!469 = !DILocation(line: 234, column: 31, scope: !470)
!470 = distinct !DILexicalBlock(scope: !368, file: !55, line: 234, column: 11)
!471 = !DILocation(line: 235, column: 31, scope: !470)
!472 = !DILocation(line: 237, column: 38, scope: !470)
!473 = !DILocation(line: 234, column: 12, scope: !470)
!474 = !DILocation(line: 234, column: 11, scope: !368)
!475 = !DILocation(line: 238, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !55, line: 237, column: 56)
!477 = !DILocation(line: 240, column: 7, scope: !368)
!478 = !DILocation(line: 243, column: 4, scope: !229)
!479 = !DILocation(line: 245, column: 10, scope: !229)
!480 = !DILocation(line: 245, column: 8, scope: !229)
!481 = !DILocation(line: 246, column: 4, scope: !229)
!482 = distinct !{!482, !481}
!483 = !DILocalVariable(name: "__src", scope: !484, file: !55, line: 246, type: !247)
!484 = distinct !DILexicalBlock(scope: !229, file: !55, line: 246, column: 7)
!485 = !DILocation(line: 246, column: 18, scope: !484)
!486 = !DILocation(line: 246, column: 27, scope: !487)
!487 = !DILexicalBlockFile(scope: !484, file: !55, discriminator: 1)
!488 = !DILocation(line: 246, column: 18, scope: !487)
!489 = !DILocation(line: 246, column: 55, scope: !487)
!490 = !DILocation(line: 246, column: 33, scope: !487)
!491 = !DILocation(line: 246, column: 23, scope: !487)
!492 = !DILocation(line: 246, column: 69, scope: !487)
!493 = !DILocation(line: 246, column: 30, scope: !494)
!494 = !DILexicalBlockFile(scope: !487, file: !55, discriminator: 2)
!495 = !DILocation(line: 246, column: 7, scope: !496)
!496 = !DILexicalBlockFile(scope: !487, file: !55, discriminator: 3)
!497 = !DILocation(line: 246, column: 81, scope: !487)
!498 = !DILocation(line: 248, column: 19, scope: !229)
!499 = !DILocation(line: 248, column: 4, scope: !229)
!500 = !DILocation(line: 250, column: 10, scope: !229)
!501 = !DILocation(line: 250, column: 8, scope: !229)
!502 = !DILocation(line: 251, column: 4, scope: !229)
!503 = distinct !{!503, !502}
!504 = !DILocalVariable(name: "__src", scope: !505, file: !55, line: 251, type: !247)
!505 = distinct !DILexicalBlock(scope: !229, file: !55, line: 251, column: 7)
!506 = !DILocation(line: 251, column: 18, scope: !505)
!507 = !DILocation(line: 251, column: 27, scope: !508)
!508 = !DILexicalBlockFile(scope: !505, file: !55, discriminator: 1)
!509 = !DILocation(line: 251, column: 18, scope: !508)
!510 = !DILocation(line: 251, column: 55, scope: !508)
!511 = !DILocation(line: 251, column: 111, scope: !508)
!512 = !DILocation(line: 251, column: 99, scope: !508)
!513 = !DILocation(line: 251, column: 33, scope: !508)
!514 = !DILocation(line: 251, column: 23, scope: !508)
!515 = !DILocation(line: 251, column: 69, scope: !508)
!516 = !DILocation(line: 251, column: 30, scope: !517)
!517 = !DILexicalBlockFile(scope: !508, file: !55, discriminator: 2)
!518 = !DILocation(line: 251, column: 7, scope: !519)
!519 = !DILexicalBlockFile(scope: !508, file: !55, discriminator: 3)
!520 = !DILocation(line: 251, column: 81, scope: !508)
!521 = !DILocation(line: 253, column: 19, scope: !229)
!522 = !DILocation(line: 253, column: 4, scope: !229)
!523 = !DILocation(line: 255, column: 10, scope: !229)
!524 = !DILocation(line: 255, column: 8, scope: !229)
!525 = !DILocation(line: 256, column: 4, scope: !229)
!526 = distinct !{!526, !525}
!527 = !DILocalVariable(name: "__src", scope: !528, file: !55, line: 256, type: !247)
!528 = distinct !DILexicalBlock(scope: !229, file: !55, line: 256, column: 7)
!529 = !DILocation(line: 256, column: 18, scope: !528)
!530 = !DILocation(line: 256, column: 27, scope: !531)
!531 = !DILexicalBlockFile(scope: !528, file: !55, discriminator: 1)
!532 = !DILocation(line: 256, column: 18, scope: !531)
!533 = !DILocation(line: 256, column: 55, scope: !531)
!534 = !DILocation(line: 256, column: 111, scope: !531)
!535 = !DILocation(line: 256, column: 99, scope: !531)
!536 = !DILocation(line: 256, column: 33, scope: !531)
!537 = !DILocation(line: 256, column: 23, scope: !531)
!538 = !DILocation(line: 256, column: 69, scope: !531)
!539 = !DILocation(line: 256, column: 30, scope: !540)
!540 = !DILexicalBlockFile(scope: !531, file: !55, discriminator: 2)
!541 = !DILocation(line: 256, column: 7, scope: !542)
!542 = !DILexicalBlockFile(scope: !531, file: !55, discriminator: 3)
!543 = !DILocation(line: 256, column: 81, scope: !531)
!544 = !DILocation(line: 258, column: 19, scope: !229)
!545 = !DILocation(line: 258, column: 4, scope: !229)
!546 = !DILocation(line: 261, column: 10, scope: !229)
!547 = !DILocation(line: 261, column: 8, scope: !229)
!548 = !DILocation(line: 262, column: 4, scope: !229)
!549 = distinct !{!549, !548}
!550 = !DILocalVariable(name: "__src", scope: !551, file: !55, line: 262, type: !247)
!551 = distinct !DILexicalBlock(scope: !229, file: !55, line: 262, column: 7)
!552 = !DILocation(line: 262, column: 18, scope: !551)
!553 = !DILocation(line: 262, column: 27, scope: !554)
!554 = !DILexicalBlockFile(scope: !551, file: !55, discriminator: 1)
!555 = !DILocation(line: 262, column: 18, scope: !554)
!556 = !DILocation(line: 262, column: 55, scope: !554)
!557 = !DILocation(line: 262, column: 111, scope: !554)
!558 = !DILocation(line: 262, column: 99, scope: !554)
!559 = !DILocation(line: 262, column: 33, scope: !554)
!560 = !DILocation(line: 262, column: 23, scope: !554)
!561 = !DILocation(line: 262, column: 69, scope: !554)
!562 = !DILocation(line: 262, column: 30, scope: !563)
!563 = !DILexicalBlockFile(scope: !554, file: !55, discriminator: 2)
!564 = !DILocation(line: 262, column: 7, scope: !565)
!565 = !DILexicalBlockFile(scope: !554, file: !55, discriminator: 3)
!566 = !DILocation(line: 262, column: 81, scope: !554)
!567 = !DILocation(line: 264, column: 19, scope: !229)
!568 = !DILocation(line: 264, column: 4, scope: !229)
!569 = !DILocation(line: 266, column: 10, scope: !229)
!570 = !DILocation(line: 266, column: 8, scope: !229)
!571 = !DILocation(line: 267, column: 4, scope: !229)
!572 = distinct !{!572, !571}
!573 = !DILocalVariable(name: "__src", scope: !574, file: !55, line: 267, type: !247)
!574 = distinct !DILexicalBlock(scope: !229, file: !55, line: 267, column: 7)
!575 = !DILocation(line: 267, column: 18, scope: !574)
!576 = !DILocation(line: 267, column: 27, scope: !577)
!577 = !DILexicalBlockFile(scope: !574, file: !55, discriminator: 1)
!578 = !DILocation(line: 267, column: 18, scope: !577)
!579 = !DILocation(line: 267, column: 55, scope: !577)
!580 = !DILocation(line: 267, column: 33, scope: !577)
!581 = !DILocation(line: 267, column: 23, scope: !577)
!582 = !DILocation(line: 267, column: 69, scope: !577)
!583 = !DILocation(line: 267, column: 30, scope: !584)
!584 = !DILexicalBlockFile(scope: !577, file: !55, discriminator: 2)
!585 = !DILocation(line: 267, column: 7, scope: !586)
!586 = !DILexicalBlockFile(scope: !577, file: !55, discriminator: 3)
!587 = !DILocation(line: 267, column: 81, scope: !577)
!588 = !DILocation(line: 268, column: 19, scope: !229)
!589 = !DILocation(line: 268, column: 4, scope: !229)
!590 = !DILocation(line: 271, column: 4, scope: !229)
!591 = !DILocation(line: 273, column: 4, scope: !229)
!592 = !DILocation(line: 280, column: 46, scope: !229)
!593 = !DILocation(line: 280, column: 22, scope: !229)
!594 = !DILocation(line: 280, column: 20, scope: !229)
!595 = !DILocation(line: 282, column: 4, scope: !229)
!596 = !DILocation(line: 283, column: 10, scope: !229)
!597 = !DILocation(line: 283, column: 8, scope: !229)
!598 = !DILocation(line: 284, column: 4, scope: !229)
!599 = !DILocation(line: 286, column: 15, scope: !600)
!600 = distinct !DILexicalBlock(scope: !229, file: !55, line: 286, column: 8)
!601 = !DILocation(line: 286, column: 23, scope: !600)
!602 = !DILocation(line: 286, column: 8, scope: !229)
!603 = !DILocation(line: 287, column: 23, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !55, line: 286, column: 31)
!605 = !DILocation(line: 287, column: 7, scope: !604)
!606 = !DILocation(line: 288, column: 4, scope: !604)
!607 = !DILocation(line: 286, column: 35, scope: !608)
!608 = !DILexicalBlockFile(scope: !600, file: !55, discriminator: 1)
!609 = !DILocation(line: 290, column: 11, scope: !229)
!610 = !DILocation(line: 290, column: 4, scope: !229)
!611 = !DILocation(line: 291, column: 1, scope: !229)
!612 = distinct !DISubprogram(name: "ToolsCoreSigHUPCb", scope: !55, file: !55, line: 63, type: !613, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!613 = !DISubroutineType(types: !614)
!614 = !{!40, !615, !44}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !618, line: 133, baseType: !619)
!618 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1385")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !618, line: 62, size: 1024, align: 64, elements: !620)
!620 = !{!621, !622, !623, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !619, file: !618, line: 64, baseType: !43, size: 32, align: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !619, file: !618, line: 65, baseType: !43, size: 32, align: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !619, file: !618, line: 67, baseType: !43, size: 32, align: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !619, file: !618, line: 132, baseType: !625, size: 896, align: 64, offset: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !618, line: 69, size: 896, align: 64, elements: !626)
!626 = !{!627, !631, !638, !649, !655, !665, !676, !681}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !625, file: !618, line: 71, baseType: !628, size: 896, align: 32)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 896, align: 32, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 28)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !625, file: !618, line: 78, baseType: !632, size: 64, align: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 74, size: 64, align: 32, elements: !633)
!633 = !{!634, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !632, file: !618, line: 76, baseType: !635, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !74, line: 133, baseType: !43)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !632, file: !618, line: 77, baseType: !637, size: 32, align: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !74, line: 125, baseType: !78)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !625, file: !618, line: 86, baseType: !639, size: 128, align: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 81, size: 128, align: 64, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !639, file: !618, line: 83, baseType: !43, size: 32, align: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !639, file: !618, line: 84, baseType: !43, size: 32, align: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !639, file: !618, line: 85, baseType: !644, size: 64, align: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !618, line: 36, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !618, line: 32, size: 64, align: 64, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !645, file: !618, line: 34, baseType: !43, size: 32, align: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !645, file: !618, line: 35, baseType: !34, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !625, file: !618, line: 94, baseType: !650, size: 128, align: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 89, size: 128, align: 64, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !650, file: !618, line: 91, baseType: !635, size: 32, align: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !650, file: !618, line: 92, baseType: !637, size: 32, align: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !650, file: !618, line: 93, baseType: !644, size: 64, align: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !625, file: !618, line: 104, baseType: !656, size: 256, align: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 97, size: 256, align: 64, elements: !657)
!657 = !{!658, !659, !660, !661, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !656, file: !618, line: 99, baseType: !635, size: 32, align: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !656, file: !618, line: 100, baseType: !637, size: 32, align: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !656, file: !618, line: 101, baseType: !43, size: 32, align: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !656, file: !618, line: 102, baseType: !662, size: 64, align: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !618, line: 58, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !74, line: 135, baseType: !75)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !656, file: !618, line: 103, baseType: !662, size: 64, align: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !625, file: !618, line: 116, baseType: !666, size: 256, align: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 107, size: 256, align: 64, elements: !667)
!667 = !{!668, !669, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !666, file: !618, line: 109, baseType: !34, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !666, file: !618, line: 110, baseType: !670, size: 16, align: 16, offset: 64)
!670 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !666, file: !618, line: 115, baseType: !672, size: 128, align: 64, offset: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !666, file: !618, line: 111, size: 128, align: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !672, file: !618, line: 113, baseType: !34, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !672, file: !618, line: 114, baseType: !34, size: 64, align: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !625, file: !618, line: 123, baseType: !677, size: 128, align: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 119, size: 128, align: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !677, file: !618, line: 121, baseType: !75, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !677, file: !618, line: 122, baseType: !43, size: 32, align: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !625, file: !618, line: 131, baseType: !682, size: 128, align: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !618, line: 126, size: 128, align: 64, elements: !683)
!683 = !{!684, !685, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !682, file: !618, line: 128, baseType: !34, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !682, file: !618, line: 129, baseType: !43, size: 32, align: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !682, file: !618, line: 130, baseType: !78, size: 32, align: 32, offset: 96)
!687 = !DILocalVariable(name: "info", arg: 1, scope: !612, file: !55, line: 63, type: !615)
!688 = !DILocation(line: 63, column: 36, scope: !612)
!689 = !DILocalVariable(name: "data", arg: 2, scope: !612, file: !55, line: 64, type: !44)
!690 = !DILocation(line: 64, column: 28, scope: !612)
!691 = !DILocation(line: 66, column: 27, scope: !612)
!692 = !DILocation(line: 66, column: 4, scope: !612)
!693 = !DILocation(line: 67, column: 4, scope: !612)
!694 = distinct !DISubprogram(name: "ToolsCoreSigHandler", scope: !55, file: !55, line: 82, type: !613, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!695 = !DILocalVariable(name: "info", arg: 1, scope: !694, file: !55, line: 82, type: !615)
!696 = !DILocation(line: 82, column: 38, scope: !694)
!697 = !DILocalVariable(name: "data", arg: 2, scope: !694, file: !55, line: 83, type: !44)
!698 = !DILocation(line: 83, column: 30, scope: !694)
!699 = !DILocation(line: 85, column: 34, scope: !694)
!700 = !DILocation(line: 85, column: 21, scope: !694)
!701 = !DILocation(line: 85, column: 4, scope: !694)
!702 = !DILocation(line: 86, column: 4, scope: !694)
!703 = distinct !DISubprogram(name: "ToolsCoreSigUsrHandler", scope: !55, file: !55, line: 101, type: !613, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!704 = !DILocalVariable(name: "info", arg: 1, scope: !703, file: !55, line: 101, type: !615)
!705 = !DILocation(line: 101, column: 41, scope: !703)
!706 = !DILocalVariable(name: "data", arg: 2, scope: !703, file: !55, line: 102, type: !44)
!707 = !DILocation(line: 102, column: 33, scope: !703)
!708 = !DILocation(line: 104, column: 4, scope: !703)
!709 = !DILocation(line: 106, column: 4, scope: !703)
!710 = !DILocation(line: 107, column: 31, scope: !711)
!711 = distinct !DILexicalBlock(scope: !703, file: !55, line: 107, column: 8)
!712 = !DILocation(line: 107, column: 9, scope: !711)
!713 = !DILocation(line: 107, column: 46, scope: !711)
!714 = !DILocation(line: 107, column: 8, scope: !703)
!715 = !DILocation(line: 108, column: 38, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !55, line: 107, column: 53)
!717 = !DILocation(line: 108, column: 7, scope: !716)
!718 = !DILocation(line: 109, column: 22, scope: !716)
!719 = !DILocation(line: 110, column: 4, scope: !716)
!720 = !DILocation(line: 112, column: 4, scope: !703)
!721 = distinct !DISubprogram(name: "ToolsCoreWorkAroundLoop", scope: !55, file: !55, line: 124, type: !722, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !232)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !724, !40}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!725 = !DILocalVariable(name: "state", arg: 1, scope: !721, file: !55, line: 124, type: !724)
!726 = !DILocation(line: 124, column: 44, scope: !721)
!727 = !DILocalVariable(name: "before", arg: 2, scope: !721, file: !55, line: 125, type: !40)
!728 = !DILocation(line: 125, column: 34, scope: !721)
!729 = !DILocation(line: 150, column: 1, scope: !721)
