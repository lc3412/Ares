; ModuleID = './vmtoolsd-serviceObj.o.i'
source_filename = "./vmtoolsd-serviceObj.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct.ToolsCoreServiceClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.ToolsCoreService = type { %struct._GObject, %union._GMutex*, %struct._GArray* }
%union._GMutex = type { i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsServiceProperty = type { i8* }
%struct.ServiceProperty = type { i32, i8*, i8* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.ToolsAppCapability = type { i32, i8*, i32, i32 }

@ToolsCore_Service_get_type.type = internal global i64 0, align 8
@ToolsCore_Service_get_type.info = internal constant %struct._GTypeInfo { i16 136, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* @ToolsCore_Service_class_init, void (i8*, i8*)* null, i8* null, i16 40, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [17 x i8] c"ToolsCoreService\00", align 1
@ToolsCoreService_RegisterProperty.PROP_ID_SEQ = internal global i32 0, align 4
@gToolsCoreServiceParentClass = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tcs_conf_reload\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tcs_dump_state\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tcs_reset\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Property '%s' was not cleaned up before shut down.\00", align 1

; Function Attrs: nounwind uwtable
define i64 @ToolsCore_Service_get_type() #0 !dbg !270 {
  %1 = load i64, i64* @ToolsCore_Service_get_type.type, align 8, !dbg !354
  %2 = icmp eq i64 %1, 0, !dbg !356
  br i1 %2, label %3, label %5, !dbg !357

; <label>:3:                                      ; preds = %0
  %4 = call i64 @g_type_register_static(i64 80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @ToolsCore_Service_get_type.info, i32 0), !dbg !358
  store i64 %4, i64* @ToolsCore_Service_get_type.type, align 8, !dbg !360
  br label %5, !dbg !361

; <label>:5:                                      ; preds = %3, %0
  %6 = load i64, i64* @ToolsCore_Service_get_type.type, align 8, !dbg !362
  ret i64 %6, !dbg !363
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCore_Service_class_init(i8*, i8*) #0 !dbg !364 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsCoreServiceClass*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !365, metadata !366), !dbg !367
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !368, metadata !366), !dbg !369
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreServiceClass** %5, metadata !370, metadata !366), !dbg !371
  %6 = load i8*, i8** %3, align 8, !dbg !372
  %7 = bitcast i8* %6 to %struct.ToolsCoreServiceClass*, !dbg !372
  store %struct.ToolsCoreServiceClass* %7, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !371
  %8 = load i8*, i8** %3, align 8, !dbg !373
  %9 = call i8* @g_type_class_peek_parent(i8* %8), !dbg !374
  store i8* %9, i8** @gToolsCoreServiceParentClass, align 8, !dbg !375
  %10 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !376
  %11 = bitcast %struct.ToolsCoreServiceClass* %10 to %struct._GTypeClass*, !dbg !377
  %12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0, !dbg !377
  %13 = load i64, i64* %12, align 8, !dbg !377
  %14 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i64 %13, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @ToolsCoreCapabilitiesAccumulator, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN, i64 68, i32 2, i64 68, i64 20), !dbg !378
  %15 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !379
  %16 = bitcast %struct.ToolsCoreServiceClass* %15 to %struct._GTypeClass*, !dbg !380
  %17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0, !dbg !380
  %18 = load i64, i64* %17, align 8, !dbg !380
  %19 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i64 %18, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68), !dbg !381
  %20 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !382
  %21 = bitcast %struct.ToolsCoreServiceClass* %20 to %struct._GTypeClass*, !dbg !383
  %22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0, !dbg !383
  %23 = load i64, i64* %22, align 8, !dbg !383
  %24 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i64 %23, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68), !dbg !384
  %25 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !385
  %26 = bitcast %struct.ToolsCoreServiceClass* %25 to %struct._GTypeClass*, !dbg !386
  %27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0, !dbg !386
  %28 = load i64, i64* %27, align 8, !dbg !386
  %29 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i64 %28, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68), !dbg !387
  %30 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !388
  %31 = bitcast %struct.ToolsCoreServiceClass* %30 to %struct._GTypeClass*, !dbg !389
  %32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0, !dbg !389
  %33 = load i64, i64* %32, align 8, !dbg !389
  %34 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 %33, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @ToolsCoreSetOptionAccumulator, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING, i64 20, i32 3, i64 68, i64 64, i64 64), !dbg !390
  %35 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !391
  %36 = bitcast %struct.ToolsCoreServiceClass* %35 to %struct._GTypeClass*, !dbg !392
  %37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0, !dbg !392
  %38 = load i64, i64* %37, align 8, !dbg !392
  %39 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 %38, i32 2, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68), !dbg !393
  %40 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !394
  %41 = bitcast %struct.ToolsCoreServiceClass* %40 to %struct._GTypeClass*, !dbg !395
  %42 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %41, i64 80), !dbg !396
  %43 = bitcast %struct._GTypeClass* %42 to %struct._GObjectClass*, !dbg !397
  %44 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %43, i32 0, i32 2, !dbg !397
  store %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)* @ToolsCoreServiceCtor, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)** %44, align 8, !dbg !398
  %45 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !399
  %46 = bitcast %struct.ToolsCoreServiceClass* %45 to %struct._GTypeClass*, !dbg !400
  %47 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %46, i64 80), !dbg !401
  %48 = bitcast %struct._GTypeClass* %47 to %struct._GObjectClass*, !dbg !402
  %49 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %48, i32 0, i32 6, !dbg !402
  store void (%struct._GObject*)* @ToolsCoreServiceDtor, void (%struct._GObject*)** %49, align 8, !dbg !403
  %50 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !404
  %51 = bitcast %struct.ToolsCoreServiceClass* %50 to %struct._GTypeClass*, !dbg !405
  %52 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %51, i64 80), !dbg !406
  %53 = bitcast %struct._GTypeClass* %52 to %struct._GObjectClass*, !dbg !407
  %54 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %53, i32 0, i32 3, !dbg !407
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @ToolsCoreServiceSetProperty, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %54, align 8, !dbg !408
  %55 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %5, align 8, !dbg !409
  %56 = bitcast %struct.ToolsCoreServiceClass* %55 to %struct._GTypeClass*, !dbg !410
  %57 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %56, i64 80), !dbg !411
  %58 = bitcast %struct._GTypeClass* %57 to %struct._GObjectClass*, !dbg !412
  %59 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %58, i32 0, i32 4, !dbg !412
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @ToolsCoreServiceGetProperty, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %59, align 8, !dbg !413
  ret void, !dbg !414
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind uwtable
define void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService*, %struct.ToolsServiceProperty*) #0 !dbg !340 {
  %3 = alloca %struct.ToolsCoreService*, align 8
  %4 = alloca %struct.ToolsServiceProperty*, align 8
  %5 = alloca %struct.ServiceProperty, align 8
  %6 = alloca %struct.ToolsCoreServiceClass*, align 8
  %7 = alloca %struct._GParamSpec*, align 8
  store %struct.ToolsCoreService* %0, %struct.ToolsCoreService** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreService** %3, metadata !415, metadata !366), !dbg !416
  store %struct.ToolsServiceProperty* %1, %struct.ToolsServiceProperty** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceProperty** %4, metadata !417, metadata !366), !dbg !418
  call void @llvm.dbg.declare(metadata %struct.ServiceProperty* %5, metadata !419, metadata !366), !dbg !420
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreServiceClass** %6, metadata !421, metadata !366), !dbg !422
  %8 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !423
  %9 = bitcast %struct.ToolsCoreService* %8 to %struct._GTypeInstance*, !dbg !424
  %10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0, !dbg !424
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %10, align 8, !dbg !424
  %12 = bitcast %struct._GTypeClass* %11 to %struct.ToolsCoreServiceClass*, !dbg !425
  store %struct.ToolsCoreServiceClass* %12, %struct.ToolsCoreServiceClass** %6, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata %struct._GParamSpec** %7, metadata !426, metadata !366), !dbg !427
  %13 = load %struct.ToolsServiceProperty*, %struct.ToolsServiceProperty** %4, align 8, !dbg !428
  %14 = getelementptr inbounds %struct.ToolsServiceProperty, %struct.ToolsServiceProperty* %13, i32 0, i32 0, !dbg !429
  %15 = load i8*, i8** %14, align 8, !dbg !429
  %16 = load %struct.ToolsServiceProperty*, %struct.ToolsServiceProperty** %4, align 8, !dbg !430
  %17 = getelementptr inbounds %struct.ToolsServiceProperty, %struct.ToolsServiceProperty* %16, i32 0, i32 0, !dbg !431
  %18 = load i8*, i8** %17, align 8, !dbg !431
  %19 = load %struct.ToolsServiceProperty*, %struct.ToolsServiceProperty** %4, align 8, !dbg !432
  %20 = getelementptr inbounds %struct.ToolsServiceProperty, %struct.ToolsServiceProperty* %19, i32 0, i32 0, !dbg !433
  %21 = load i8*, i8** %20, align 8, !dbg !433
  %22 = call %struct._GParamSpec* @g_param_spec_pointer(i8* %15, i8* %18, i8* %21, i32 3), !dbg !434
  store %struct._GParamSpec* %22, %struct._GParamSpec** %7, align 8, !dbg !427
  %23 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !435
  %24 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %23, i32 0, i32 1, !dbg !436
  %25 = load %union._GMutex*, %union._GMutex** %24, align 8, !dbg !436
  call void @g_mutex_lock(%union._GMutex* %25), !dbg !437
  %26 = load i32, i32* @ToolsCoreService_RegisterProperty.PROP_ID_SEQ, align 4, !dbg !438
  %27 = add i32 %26, 1, !dbg !438
  store i32 %27, i32* @ToolsCoreService_RegisterProperty.PROP_ID_SEQ, align 4, !dbg !438
  %28 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %5, i32 0, i32 0, !dbg !439
  store i32 %27, i32* %28, align 8, !dbg !440
  %29 = load %struct.ToolsServiceProperty*, %struct.ToolsServiceProperty** %4, align 8, !dbg !441
  %30 = getelementptr inbounds %struct.ToolsServiceProperty, %struct.ToolsServiceProperty* %29, i32 0, i32 0, !dbg !442
  %31 = load i8*, i8** %30, align 8, !dbg !442
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !443
  %33 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %5, i32 0, i32 1, !dbg !444
  store i8* %32, i8** %33, align 8, !dbg !445
  %34 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %5, i32 0, i32 2, !dbg !446
  store i8* null, i8** %34, align 8, !dbg !447
  %35 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !448
  %36 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %35, i32 0, i32 2, !dbg !449
  %37 = load %struct._GArray*, %struct._GArray** %36, align 8, !dbg !449
  %38 = bitcast %struct.ServiceProperty* %5 to i8*, !dbg !450
  %39 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %37, i8* %38, i32 1), !dbg !451
  %40 = load %struct.ToolsCoreServiceClass*, %struct.ToolsCoreServiceClass** %6, align 8, !dbg !452
  %41 = bitcast %struct.ToolsCoreServiceClass* %40 to %struct._GTypeClass*, !dbg !453
  %42 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %41, i64 80), !dbg !454
  %43 = bitcast %struct._GTypeClass* %42 to %struct._GObjectClass*, !dbg !455
  %44 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %5, i32 0, i32 0, !dbg !456
  %45 = load i32, i32* %44, align 8, !dbg !456
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %7, align 8, !dbg !457
  call void @g_object_class_install_property(%struct._GObjectClass* %43, i32 %45, %struct._GParamSpec* %46), !dbg !458
  %47 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !460
  %48 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %47, i32 0, i32 1, !dbg !461
  %49 = load %union._GMutex*, %union._GMutex** %48, align 8, !dbg !461
  call void @g_mutex_unlock(%union._GMutex* %49), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare void @g_mutex_lock(%union._GMutex*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @g_mutex_unlock(%union._GMutex*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreCapabilitiesAccumulator(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #0 !dbg !464 {
  %5 = alloca %struct._GSignalInvocationHint*, align 8
  %6 = alloca %struct._GValue*, align 8
  %7 = alloca %struct._GValue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GArray*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GArray*, align 8
  store %struct._GSignalInvocationHint* %0, %struct._GSignalInvocationHint** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSignalInvocationHint** %5, metadata !479, metadata !366), !dbg !480
  store %struct._GValue* %1, %struct._GValue** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %6, metadata !481, metadata !366), !dbg !482
  store %struct._GValue* %2, %struct._GValue** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %7, metadata !483, metadata !366), !dbg !484
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !485, metadata !366), !dbg !486
  call void @llvm.dbg.declare(metadata %struct._GArray** %9, metadata !487, metadata !366), !dbg !488
  %12 = load %struct._GValue*, %struct._GValue** %7, align 8, !dbg !489
  %13 = call i8* @g_value_get_pointer(%struct._GValue* %12), !dbg !490
  %14 = bitcast i8* %13 to %struct._GArray*, !dbg !490
  store %struct._GArray* %14, %struct._GArray** %9, align 8, !dbg !488
  %15 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !491
  %16 = icmp ne %struct._GArray* %15, null, !dbg !493
  br i1 %16, label %17, label %52, !dbg !494

; <label>:17:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !495, metadata !366), !dbg !497
  call void @llvm.dbg.declare(metadata %struct._GArray** %11, metadata !498, metadata !366), !dbg !499
  %18 = load %struct._GValue*, %struct._GValue** %6, align 8, !dbg !500
  %19 = call i8* @g_value_get_pointer(%struct._GValue* %18), !dbg !501
  %20 = bitcast i8* %19 to %struct._GArray*, !dbg !501
  store %struct._GArray* %20, %struct._GArray** %11, align 8, !dbg !499
  %21 = load %struct._GArray*, %struct._GArray** %11, align 8, !dbg !502
  %22 = icmp eq %struct._GArray* %21, null, !dbg !504
  br i1 %22, label %23, label %28, !dbg !505

; <label>:23:                                     ; preds = %17
  %24 = call %struct._GArray* @g_array_new(i32 0, i32 1, i32 24), !dbg !506
  store %struct._GArray* %24, %struct._GArray** %11, align 8, !dbg !508
  %25 = load %struct._GValue*, %struct._GValue** %6, align 8, !dbg !509
  %26 = load %struct._GArray*, %struct._GArray** %11, align 8, !dbg !510
  %27 = bitcast %struct._GArray* %26 to i8*, !dbg !510
  call void @g_value_set_pointer(%struct._GValue* %25, i8* %27), !dbg !511
  br label %28, !dbg !512

; <label>:28:                                     ; preds = %23, %17
  store i32 0, i32* %10, align 4, !dbg !513
  br label %29, !dbg !515

; <label>:29:                                     ; preds = %46, %28
  %30 = load i32, i32* %10, align 4, !dbg !516
  %31 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !519
  %32 = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 1, !dbg !520
  %33 = load i32, i32* %32, align 8, !dbg !520
  %34 = icmp ult i32 %30, %33, !dbg !521
  br i1 %34, label %35, label %49, !dbg !522

; <label>:35:                                     ; preds = %29
  %36 = load %struct._GArray*, %struct._GArray** %11, align 8, !dbg !523
  %37 = load i32, i32* %10, align 4, !dbg !525
  %38 = zext i32 %37 to i64, !dbg !526
  %39 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !527
  %40 = getelementptr inbounds %struct._GArray, %struct._GArray* %39, i32 0, i32 0, !dbg !528
  %41 = load i8*, i8** %40, align 8, !dbg !528
  %42 = bitcast i8* %41 to %struct.ToolsAppCapability*, !dbg !529
  %43 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %42, i64 %38, !dbg !526
  %44 = bitcast %struct.ToolsAppCapability* %43 to i8*, !dbg !530
  %45 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %36, i8* %44, i32 1), !dbg !531
  br label %46, !dbg !532

; <label>:46:                                     ; preds = %35
  %47 = load i32, i32* %10, align 4, !dbg !533
  %48 = add i32 %47, 1, !dbg !533
  store i32 %48, i32* %10, align 4, !dbg !533
  br label %29, !dbg !535, !llvm.loop !536

; <label>:49:                                     ; preds = %29
  %50 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !538
  %51 = call i8* @g_array_free(%struct._GArray* %50, i32 1), !dbg !539
  br label %52, !dbg !540

; <label>:52:                                     ; preds = %49, %4
  ret i32 1, !dbg !541
}

declare void @g_cclosure_user_marshal_POINTER__POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreSetOptionAccumulator(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #0 !dbg !542 {
  %5 = alloca %struct._GSignalInvocationHint*, align 8
  %6 = alloca %struct._GValue*, align 8
  %7 = alloca %struct._GValue*, align 8
  %8 = alloca i8*, align 8
  store %struct._GSignalInvocationHint* %0, %struct._GSignalInvocationHint** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSignalInvocationHint** %5, metadata !543, metadata !366), !dbg !544
  store %struct._GValue* %1, %struct._GValue** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %6, metadata !545, metadata !366), !dbg !546
  store %struct._GValue* %2, %struct._GValue** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %7, metadata !547, metadata !366), !dbg !548
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !549, metadata !366), !dbg !550
  %9 = load %struct._GValue*, %struct._GValue** %6, align 8, !dbg !551
  %10 = call i32 @g_value_get_boolean(%struct._GValue* %9), !dbg !553
  %11 = icmp ne i32 %10, 0, !dbg !553
  br i1 %11, label %16, label %12, !dbg !554

; <label>:12:                                     ; preds = %4
  %13 = load %struct._GValue*, %struct._GValue** %6, align 8, !dbg !555
  %14 = load %struct._GValue*, %struct._GValue** %7, align 8, !dbg !557
  %15 = call i32 @g_value_get_boolean(%struct._GValue* %14), !dbg !558
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15), !dbg !559
  br label %16, !dbg !561

; <label>:16:                                     ; preds = %12, %4
  ret i32 1, !dbg !562
}

declare void @g_cclosure_user_marshal_BOOLEAN__POINTER_STRING_STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GObject* @ToolsCoreServiceCtor(i64, i32, %struct._GObjectConstructParam*) #0 !dbg !563 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GObjectConstructParam*, align 8
  %7 = alloca %struct._GObject*, align 8
  %8 = alloca %struct.ToolsCoreService*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !564, metadata !366), !dbg !565
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !566, metadata !366), !dbg !567
  store %struct._GObjectConstructParam* %2, %struct._GObjectConstructParam** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GObjectConstructParam** %6, metadata !568, metadata !366), !dbg !569
  call void @llvm.dbg.declare(metadata %struct._GObject** %7, metadata !570, metadata !366), !dbg !571
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreService** %8, metadata !572, metadata !366), !dbg !573
  %9 = load i8*, i8** @gToolsCoreServiceParentClass, align 8, !dbg !574
  %10 = bitcast i8* %9 to %struct._GTypeClass*, !dbg !575
  %11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80), !dbg !576
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GObjectClass*, !dbg !577
  %13 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 2, !dbg !577
  %14 = load %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)** %13, align 8, !dbg !577
  %15 = load i64, i64* %4, align 8, !dbg !578
  %16 = load i32, i32* %5, align 4, !dbg !579
  %17 = load %struct._GObjectConstructParam*, %struct._GObjectConstructParam** %6, align 8, !dbg !580
  %18 = call %struct._GObject* %14(i64 %15, i32 %16, %struct._GObjectConstructParam* %17), !dbg !581
  store %struct._GObject* %18, %struct._GObject** %7, align 8, !dbg !583
  %19 = load %struct._GObject*, %struct._GObject** %7, align 8, !dbg !584
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*, !dbg !585
  %21 = call i64 @ToolsCore_Service_get_type(), !dbg !586
  %22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %21), !dbg !587
  %23 = bitcast %struct._GTypeInstance* %22 to %struct.ToolsCoreService*, !dbg !588
  store %struct.ToolsCoreService* %23, %struct.ToolsCoreService** %8, align 8, !dbg !589
  %24 = call %union._GMutex* @g_mutex_new(), !dbg !590
  %25 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %8, align 8, !dbg !591
  %26 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %25, i32 0, i32 1, !dbg !592
  store %union._GMutex* %24, %union._GMutex** %26, align 8, !dbg !593
  %27 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 24), !dbg !594
  %28 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %8, align 8, !dbg !595
  %29 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %28, i32 0, i32 2, !dbg !596
  store %struct._GArray* %27, %struct._GArray** %29, align 8, !dbg !597
  %30 = load %struct._GObject*, %struct._GObject** %7, align 8, !dbg !598
  ret %struct._GObject* %30, !dbg !599
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreServiceDtor(%struct._GObject*) #0 !dbg !600 {
  %2 = alloca %struct._GObject*, align 8
  %3 = alloca %struct.ToolsCoreService*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ServiceProperty*, align 8
  store %struct._GObject* %0, %struct._GObject** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GObject** %2, metadata !601, metadata !366), !dbg !602
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreService** %3, metadata !603, metadata !366), !dbg !604
  %6 = load %struct._GObject*, %struct._GObject** %2, align 8, !dbg !605
  %7 = bitcast %struct._GObject* %6 to %struct.ToolsCoreService*, !dbg !606
  store %struct.ToolsCoreService* %7, %struct.ToolsCoreService** %3, align 8, !dbg !604
  call void @llvm.dbg.declare(metadata i32* %4, metadata !607, metadata !366), !dbg !608
  store i32 0, i32* %4, align 4, !dbg !609
  br label %8, !dbg !611

; <label>:8:                                      ; preds = %38, %1
  %9 = load i32, i32* %4, align 4, !dbg !612
  %10 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !615
  %11 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %10, i32 0, i32 2, !dbg !616
  %12 = load %struct._GArray*, %struct._GArray** %11, align 8, !dbg !616
  %13 = getelementptr inbounds %struct._GArray, %struct._GArray* %12, i32 0, i32 1, !dbg !617
  %14 = load i32, i32* %13, align 8, !dbg !617
  %15 = icmp ult i32 %9, %14, !dbg !618
  br i1 %15, label %16, label %41, !dbg !619

; <label>:16:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.ServiceProperty** %5, metadata !620, metadata !366), !dbg !622
  %17 = load i32, i32* %4, align 4, !dbg !623
  %18 = zext i32 %17 to i64, !dbg !624
  %19 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !625
  %20 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %19, i32 0, i32 2, !dbg !626
  %21 = load %struct._GArray*, %struct._GArray** %20, align 8, !dbg !626
  %22 = getelementptr inbounds %struct._GArray, %struct._GArray* %21, i32 0, i32 0, !dbg !627
  %23 = load i8*, i8** %22, align 8, !dbg !627
  %24 = bitcast i8* %23 to %struct.ServiceProperty*, !dbg !628
  %25 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %24, i64 %18, !dbg !624
  store %struct.ServiceProperty* %25, %struct.ServiceProperty** %5, align 8, !dbg !622
  %26 = load %struct.ServiceProperty*, %struct.ServiceProperty** %5, align 8, !dbg !629
  %27 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %26, i32 0, i32 2, !dbg !631
  %28 = load i8*, i8** %27, align 8, !dbg !631
  %29 = icmp ne i8* %28, null, !dbg !632
  br i1 %29, label %30, label %34, !dbg !633

; <label>:30:                                     ; preds = %16
  %31 = load %struct.ServiceProperty*, %struct.ServiceProperty** %5, align 8, !dbg !634
  %32 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %31, i32 0, i32 1, !dbg !636
  %33 = load i8*, i8** %32, align 8, !dbg !636
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8* %33), !dbg !637
  br label %34, !dbg !638

; <label>:34:                                     ; preds = %30, %16
  %35 = load %struct.ServiceProperty*, %struct.ServiceProperty** %5, align 8, !dbg !639
  %36 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %35, i32 0, i32 1, !dbg !640
  %37 = load i8*, i8** %36, align 8, !dbg !640
  call void @g_free(i8* %37), !dbg !641
  br label %38, !dbg !642

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %4, align 4, !dbg !643
  %40 = add i32 %39, 1, !dbg !643
  store i32 %40, i32* %4, align 4, !dbg !643
  br label %8, !dbg !645, !llvm.loop !646

; <label>:41:                                     ; preds = %8
  %42 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !648
  %43 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %42, i32 0, i32 2, !dbg !649
  %44 = load %struct._GArray*, %struct._GArray** %43, align 8, !dbg !649
  %45 = call i8* @g_array_free(%struct._GArray* %44, i32 1), !dbg !650
  %46 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %3, align 8, !dbg !651
  %47 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %46, i32 0, i32 1, !dbg !652
  %48 = load %union._GMutex*, %union._GMutex** %47, align 8, !dbg !652
  call void @g_mutex_free(%union._GMutex* %48), !dbg !653
  ret void, !dbg !654
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreServiceSetProperty(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #0 !dbg !655 {
  %5 = alloca %struct._GObject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GValue*, align 8
  %8 = alloca %struct._GParamSpec*, align 8
  %9 = alloca %struct.ServiceProperty*, align 8
  %10 = alloca %struct.ToolsCoreService*, align 8
  store %struct._GObject* %0, %struct._GObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GObject** %5, metadata !656, metadata !366), !dbg !657
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !658, metadata !366), !dbg !659
  store %struct._GValue* %2, %struct._GValue** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %7, metadata !660, metadata !366), !dbg !661
  store %struct._GParamSpec* %3, %struct._GParamSpec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GParamSpec** %8, metadata !662, metadata !366), !dbg !663
  call void @llvm.dbg.declare(metadata %struct.ServiceProperty** %9, metadata !664, metadata !366), !dbg !665
  store %struct.ServiceProperty* null, %struct.ServiceProperty** %9, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreService** %10, metadata !666, metadata !366), !dbg !667
  %11 = load %struct._GObject*, %struct._GObject** %5, align 8, !dbg !668
  %12 = bitcast %struct._GObject* %11 to %struct.ToolsCoreService*, !dbg !669
  store %struct.ToolsCoreService* %12, %struct.ToolsCoreService** %10, align 8, !dbg !667
  %13 = load i32, i32* %6, align 4, !dbg !670
  %14 = sub i32 %13, 1, !dbg !670
  store i32 %14, i32* %6, align 4, !dbg !670
  %15 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %10, align 8, !dbg !671
  %16 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %15, i32 0, i32 1, !dbg !672
  %17 = load %union._GMutex*, %union._GMutex** %16, align 8, !dbg !672
  call void @g_mutex_lock(%union._GMutex* %17), !dbg !673
  %18 = load i32, i32* %6, align 4, !dbg !674
  %19 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %10, align 8, !dbg !676
  %20 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %19, i32 0, i32 2, !dbg !677
  %21 = load %struct._GArray*, %struct._GArray** %20, align 8, !dbg !677
  %22 = getelementptr inbounds %struct._GArray, %struct._GArray* %21, i32 0, i32 1, !dbg !678
  %23 = load i32, i32* %22, align 8, !dbg !678
  %24 = icmp ult i32 %18, %23, !dbg !679
  br i1 %24, label %25, label %39, !dbg !680

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %6, align 4, !dbg !681
  %27 = zext i32 %26 to i64, !dbg !683
  %28 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %10, align 8, !dbg !684
  %29 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %28, i32 0, i32 2, !dbg !685
  %30 = load %struct._GArray*, %struct._GArray** %29, align 8, !dbg !685
  %31 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 0, !dbg !686
  %32 = load i8*, i8** %31, align 8, !dbg !686
  %33 = bitcast i8* %32 to %struct.ServiceProperty*, !dbg !687
  %34 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %33, i64 %27, !dbg !683
  store %struct.ServiceProperty* %34, %struct.ServiceProperty** %9, align 8, !dbg !688
  %35 = load %struct._GValue*, %struct._GValue** %7, align 8, !dbg !689
  %36 = call i8* @g_value_get_pointer(%struct._GValue* %35), !dbg !690
  %37 = load %struct.ServiceProperty*, %struct.ServiceProperty** %9, align 8, !dbg !691
  %38 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %37, i32 0, i32 2, !dbg !692
  store i8* %36, i8** %38, align 8, !dbg !693
  br label %39, !dbg !694

; <label>:39:                                     ; preds = %25, %4
  %40 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %10, align 8, !dbg !695
  %41 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %40, i32 0, i32 1, !dbg !696
  %42 = load %union._GMutex*, %union._GMutex** %41, align 8, !dbg !696
  call void @g_mutex_unlock(%union._GMutex* %42), !dbg !697
  %43 = load %struct.ServiceProperty*, %struct.ServiceProperty** %9, align 8, !dbg !698
  %44 = icmp ne %struct.ServiceProperty* %43, null, !dbg !700
  br i1 %44, label %45, label %50, !dbg !701

; <label>:45:                                     ; preds = %39
  %46 = load %struct._GObject*, %struct._GObject** %5, align 8, !dbg !702
  %47 = load %struct.ServiceProperty*, %struct.ServiceProperty** %9, align 8, !dbg !704
  %48 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %47, i32 0, i32 1, !dbg !705
  %49 = load i8*, i8** %48, align 8, !dbg !705
  call void @g_object_notify(%struct._GObject* %46, i8* %49), !dbg !706
  br label %50, !dbg !707

; <label>:50:                                     ; preds = %45, %39
  ret void, !dbg !708
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreServiceGetProperty(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #0 !dbg !709 {
  %5 = alloca %struct._GObject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GValue*, align 8
  %8 = alloca %struct._GParamSpec*, align 8
  %9 = alloca %struct.ToolsCoreService*, align 8
  %10 = alloca %struct.ServiceProperty*, align 8
  store %struct._GObject* %0, %struct._GObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GObject** %5, metadata !710, metadata !366), !dbg !711
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !712, metadata !366), !dbg !713
  store %struct._GValue* %2, %struct._GValue** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GValue** %7, metadata !714, metadata !366), !dbg !715
  store %struct._GParamSpec* %3, %struct._GParamSpec** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GParamSpec** %8, metadata !716, metadata !366), !dbg !717
  call void @llvm.dbg.declare(metadata %struct.ToolsCoreService** %9, metadata !718, metadata !366), !dbg !719
  %11 = load %struct._GObject*, %struct._GObject** %5, align 8, !dbg !720
  %12 = bitcast %struct._GObject* %11 to %struct.ToolsCoreService*, !dbg !721
  store %struct.ToolsCoreService* %12, %struct.ToolsCoreService** %9, align 8, !dbg !719
  %13 = load i32, i32* %6, align 4, !dbg !722
  %14 = sub i32 %13, 1, !dbg !722
  store i32 %14, i32* %6, align 4, !dbg !722
  %15 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %9, align 8, !dbg !723
  %16 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %15, i32 0, i32 1, !dbg !724
  %17 = load %union._GMutex*, %union._GMutex** %16, align 8, !dbg !724
  call void @g_mutex_lock(%union._GMutex* %17), !dbg !725
  %18 = load i32, i32* %6, align 4, !dbg !726
  %19 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %9, align 8, !dbg !728
  %20 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %19, i32 0, i32 2, !dbg !729
  %21 = load %struct._GArray*, %struct._GArray** %20, align 8, !dbg !729
  %22 = getelementptr inbounds %struct._GArray, %struct._GArray* %21, i32 0, i32 1, !dbg !730
  %23 = load i32, i32* %22, align 8, !dbg !730
  %24 = icmp ult i32 %18, %23, !dbg !731
  br i1 %24, label %25, label %39, !dbg !732

; <label>:25:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.ServiceProperty** %10, metadata !733, metadata !366), !dbg !735
  %26 = load i32, i32* %6, align 4, !dbg !736
  %27 = zext i32 %26 to i64, !dbg !737
  %28 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %9, align 8, !dbg !738
  %29 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %28, i32 0, i32 2, !dbg !739
  %30 = load %struct._GArray*, %struct._GArray** %29, align 8, !dbg !739
  %31 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 0, !dbg !740
  %32 = load i8*, i8** %31, align 8, !dbg !740
  %33 = bitcast i8* %32 to %struct.ServiceProperty*, !dbg !741
  %34 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %33, i64 %27, !dbg !737
  store %struct.ServiceProperty* %34, %struct.ServiceProperty** %10, align 8, !dbg !735
  %35 = load %struct._GValue*, %struct._GValue** %7, align 8, !dbg !742
  %36 = load %struct.ServiceProperty*, %struct.ServiceProperty** %10, align 8, !dbg !743
  %37 = getelementptr inbounds %struct.ServiceProperty, %struct.ServiceProperty* %36, i32 0, i32 2, !dbg !744
  %38 = load i8*, i8** %37, align 8, !dbg !744
  call void @g_value_set_pointer(%struct._GValue* %35, i8* %38), !dbg !745
  br label %39, !dbg !746

; <label>:39:                                     ; preds = %25, %4
  %40 = load %struct.ToolsCoreService*, %struct.ToolsCoreService** %9, align 8, !dbg !747
  %41 = getelementptr inbounds %struct.ToolsCoreService, %struct.ToolsCoreService* %40, i32 0, i32 1, !dbg !748
  %42 = load %union._GMutex*, %union._GMutex** %41, align 8, !dbg !748
  call void @g_mutex_unlock(%union._GMutex* %42), !dbg !749
  ret void, !dbg !750
}

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %union._GMutex* @g_mutex_new() #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @g_mutex_free(%union._GMutex*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!351, !352}
!llvm.ident = !{!353}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !83, globals: !268)
!1 = !DIFile(filename: "vmtoolsd-serviceObj.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!2 = !{!3, !18, !30, !36, !71}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 150, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gparam.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "G_PARAM_READABLE", value: 1)
!7 = !DIEnumerator(name: "G_PARAM_WRITABLE", value: 2)
!8 = !DIEnumerator(name: "G_PARAM_READWRITE", value: 3)
!9 = !DIEnumerator(name: "G_PARAM_CONSTRUCT", value: 4)
!10 = !DIEnumerator(name: "G_PARAM_CONSTRUCT_ONLY", value: 8)
!11 = !DIEnumerator(name: "G_PARAM_LAX_VALIDATION", value: 16)
!12 = !DIEnumerator(name: "G_PARAM_STATIC_NAME", value: 32)
!13 = !DIEnumerator(name: "G_PARAM_PRIVATE", value: 32)
!14 = !DIEnumerator(name: "G_PARAM_STATIC_NICK", value: 64)
!15 = !DIEnumerator(name: "G_PARAM_STATIC_BLURB", value: 128)
!16 = !DIEnumerator(name: "G_PARAM_EXPLICIT_NOTIFY", value: 1073741824)
!17 = !DIEnumerator(name: "G_PARAM_DEPRECATED", value: -2147483648)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 127, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gsignal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29}
!21 = !DIEnumerator(name: "G_SIGNAL_RUN_FIRST", value: 1)
!22 = !DIEnumerator(name: "G_SIGNAL_RUN_LAST", value: 2)
!23 = !DIEnumerator(name: "G_SIGNAL_RUN_CLEANUP", value: 4)
!24 = !DIEnumerator(name: "G_SIGNAL_NO_RECURSE", value: 8)
!25 = !DIEnumerator(name: "G_SIGNAL_DETAILED", value: 16)
!26 = !DIEnumerator(name: "G_SIGNAL_ACTION", value: 32)
!27 = !DIEnumerator(name: "G_SIGNAL_NO_HOOKS", value: 64)
!28 = !DIEnumerator(name: "G_SIGNAL_MUST_COLLECT", value: 128)
!29 = !DIEnumerator(name: "G_SIGNAL_DEPRECATED", value: 256)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 303, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TOOLS_CAP_OLD", value: 0)
!34 = !DIEnumerator(name: "TOOLS_CAP_OLD_NOVAL", value: 1)
!35 = !DIEnumerator(name: "TOOLS_CAP_NEW", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 44, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/capabilities.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!39 = !DIEnumerator(name: "UNITY_CAP_START_MENU", value: 0)
!40 = !DIEnumerator(name: "UNITY_CAP_VIRTUAL_DESK", value: 1)
!41 = !DIEnumerator(name: "UNITY_CAP_WORK_AREA", value: 2)
!42 = !DIEnumerator(name: "UNITY_CAP_MULTI_MON", value: 3)
!43 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_BROWSE", value: 4)
!44 = !DIEnumerator(name: "GHI_CAP_SHELL_LOCATION_HGFS", value: 5)
!45 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_RUN", value: 6)
!46 = !DIEnumerator(name: "GHI_CAP_CMD_SHELL_ACTION", value: 7)
!47 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DESKTOP", value: 8)
!48 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOCUMENTS", value: 9)
!49 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MUSIC", value: 10)
!50 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_PICTURES", value: 11)
!51 = !DIEnumerator(name: "HGFSU_CAP_DESKTOP_SHORTCUT", value: 12)
!52 = !DIEnumerator(name: "HGFSU_CAP_MAP_DRIVE", value: 13)
!53 = !DIEnumerator(name: "GHI_CAP_SET_HANDLER", value: 14)
!54 = !DIEnumerator(name: "UNITY_CAP_STATUS_UNITY_ACTIVE", value: 15)
!55 = !DIEnumerator(name: "GHI_CAP_SET_OUTLOOK_TEMP_FOLDER", value: 16)
!56 = !DIEnumerator(name: "CAP_SET_TOPO_MODES", value: 18)
!57 = !DIEnumerator(name: "GHI_CAP_TRAY_ICONS", value: 19)
!58 = !DIEnumerator(name: "GHI_CAP_SET_FOCUSED_WINDOW", value: 20)
!59 = !DIEnumerator(name: "GHI_CAP_GET_EXEC_INFO_HASH", value: 21)
!60 = !DIEnumerator(name: "UNITY_CAP_STICKY_WINDOWS", value: 22)
!61 = !DIEnumerator(name: "CAP_CHANGE_HOST_3D_AVAILABILITY_HINT", value: 23)
!62 = !DIEnumerator(name: "CAP_AUTOUPGRADE_AT_SHUTDOWN", value: 24)
!63 = !DIEnumerator(name: "GHI_CAP_AUTOLOGON", value: 25)
!64 = !DIEnumerator(name: "CAP_DESKTOP_AUTOLOCK", value: 26)
!65 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOWNLOADS", value: 28)
!66 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MOVIES", value: 29)
!67 = !DIEnumerator(name: "GHI_CAP_TOGGLE_START_UI", value: 30)
!68 = !DIEnumerator(name: "GHI_CAP_SET_DISPLAY_SCALING", value: 31)
!69 = !DIEnumerator(name: "UNITY_CAP_DISABLE_MOUSE_BUTTON_SWAPPING", value: 32)
!70 = !DIEnumerator(name: "UNITY_CAP_CARET_POSITION", value: 33)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 51, size: 32, align: 32, elements: !73)
!72 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82}
!74 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!75 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!76 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!77 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!78 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!79 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!80 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!81 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!82 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!83 = !{!84, !89, !226, !113, !227, !128, !228, !238, !260}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !85, line: 382, baseType: !86)
!85 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !87, line: 66, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!88 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreServiceClass", file: !91, line: 48, baseType: !92)
!91 = !DIFile(filename: "serviceObj.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsCoreServiceClass", file: !91, line: 46, size: 1088, align: 64, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parentClass", scope: !92, file: !91, line: 47, baseType: !95, size: 1088, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GObjectClass", file: !96, line: 188, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gobject.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GObjectClass", file: !96, line: 316, size: 1088, align: 64, elements: !98)
!98 = !{!99, !104, !115, !196, !202, !206, !210, !211, !216, !220, !221, !222}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "g_type_class", scope: !97, file: !96, line: 318, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeClass", file: !85, line: 389, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeClass", file: !85, line: 406, size: 64, align: 64, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !101, file: !85, line: 409, baseType: !84, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "construct_properties", scope: !97, file: !96, line: 321, baseType: !105, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !107, line: 37, baseType: !108)
!107 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !107, line: 39, size: 128, align: 64, elements: !109)
!109 = !{!110, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !107, line: 41, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !112, line: 77, baseType: !113)
!112 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !107, line: 42, baseType: !105, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !97, file: !96, line: 325, baseType: !116, size: 64, align: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !84, !131, !138}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GObject", file: !96, line: 187, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GObject", file: !96, line: 245, size: 192, align: 64, elements: !122)
!122 = !{!123, !129, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "g_type_instance", scope: !121, file: !96, line: 247, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeInstance", file: !85, line: 391, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeInstance", file: !85, line: 416, size: 64, align: 64, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "g_class", scope: !125, file: !85, line: 419, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !121, file: !96, line: 250, baseType: !130, size: 32, align: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !112, line: 55, baseType: !132)
!132 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !121, file: !96, line: 251, baseType: !134, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !136, line: 36, baseType: !137)
!136 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !136, line: 36, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GObjectConstructParam", file: !96, line: 191, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GObjectConstructParam", file: !96, line: 365, size: 128, align: 64, elements: !141)
!141 = !{!142, !163}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pspec", scope: !140, file: !96, line: 367, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GParamSpec", file: !4, line: 193, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GParamSpec", file: !4, line: 208, size: 576, align: 64, elements: !146)
!146 = !{!147, !148, !153, !155, !156, !157, !159, !160, !161, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "g_type_instance", scope: !145, file: !4, line: 210, baseType: !124, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !4, line: 212, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !112, line: 46, baseType: !152)
!152 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !4, line: 213, baseType: !154, size: 32, align: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GParamFlags", file: !4, line: 167, baseType: !3)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "value_type", scope: !145, file: !4, line: 214, baseType: !84, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "owner_type", scope: !145, file: !4, line: 215, baseType: !84, size: 64, align: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_nick", scope: !145, file: !4, line: 218, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_blurb", scope: !145, file: !4, line: 219, baseType: !158, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !145, file: !4, line: 220, baseType: !134, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !145, file: !4, line: 221, baseType: !131, size: 32, align: 32, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "param_id", scope: !145, file: !4, line: 222, baseType: !131, size: 32, align: 32, offset: 544)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !140, file: !96, line: 368, baseType: !164, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "GValue", file: !85, line: 386, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GValue", file: !167, line: 106, size: 192, align: 64, elements: !168)
!167 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gvalue.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !166, file: !167, line: 109, baseType: !84, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !166, file: !167, line: 122, baseType: !171, size: 128, align: 64, offset: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, align: 64, elements: !194)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !167, line: 112, size: 64, align: 64, elements: !173)
!173 = !{!174, !177, !178, !181, !183, !185, !187, !190, !193}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !172, file: !167, line: 113, baseType: !175, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !112, line: 49, baseType: !176)
!176 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint", scope: !172, file: !167, line: 114, baseType: !131, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v_long", scope: !172, file: !167, line: 115, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !112, line: 48, baseType: !180)
!180 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v_ulong", scope: !172, file: !167, line: 116, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !112, line: 54, baseType: !88)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !172, file: !167, line: 117, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !87, line: 51, baseType: !180)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v_uint64", scope: !172, file: !167, line: 118, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !87, line: 52, baseType: !88)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !172, file: !167, line: 119, baseType: !188, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfloat", file: !112, line: 57, baseType: !189)
!189 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v_double", scope: !172, file: !167, line: 120, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !112, line: 58, baseType: !192)
!192 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v_pointer", scope: !172, file: !167, line: 121, baseType: !111, size: 64, align: 64)
!194 = !{!195}
!195 = !DISubrange(count: 2)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !97, file: !96, line: 329, baseType: !197, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !119, !131, !200, !143}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !97, file: !96, line: 333, baseType: !203, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !119, !131, !164, !143}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !97, file: !96, line: 337, baseType: !207, size: 64, align: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !119}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !97, file: !96, line: 338, baseType: !207, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_properties_changed", scope: !97, file: !96, line: 340, baseType: !212, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !119, !131, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !97, file: !96, line: 344, baseType: !217, size: 64, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !119, !143}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "constructed", scope: !97, file: !96, line: 348, baseType: !207, size: 64, align: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !96, line: 351, baseType: !86, size: 64, align: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pdummy", scope: !97, file: !96, line: 354, baseType: !223, size: 384, align: 64, offset: 704)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 384, align: 64, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 6)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCapability", file: !31, line: 333, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCapability", file: !31, line: 318, size: 192, align: 64, elements: !231)
!231 = !{!232, !234, !235, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !230, file: !31, line: 320, baseType: !233, size: 32, align: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCapabilityType", file: !31, line: 307, baseType: !30)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !31, line: 325, baseType: !149, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !230, file: !31, line: 330, baseType: !236, size: 32, align: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestCapabilities", file: !37, line: 79, baseType: !36)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !31, line: 332, baseType: !131, size: 32, align: 32, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreService", file: !91, line: 44, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsCoreService", file: !91, line: 40, size: 320, align: 64, elements: !241)
!241 = !{!242, !243, !252}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !91, line: 41, baseType: !120, size: 192, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !240, file: !91, line: 42, baseType: !244, size: 64, align: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !246, line: 51, baseType: !247)
!246 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !246, line: 58, size: 64, align: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !247, file: !246, line: 61, baseType: !111, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !247, file: !246, line: 62, baseType: !251, size: 64, align: 32)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, align: 32, elements: !194)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !240, file: !91, line: 43, baseType: !253, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !255, line: 37, baseType: !256)
!255 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !255, line: 41, size: 128, align: 64, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !256, file: !255, line: 43, baseType: !158, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !256, file: !255, line: 44, baseType: !131, size: 32, align: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ServiceProperty", file: !262, line: 34, baseType: !263)
!262 = !DIFile(filename: "serviceObj.c", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ServiceProperty", file: !262, line: 30, size: 192, align: 64, elements: !264)
!264 = !{!265, !266, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !263, file: !262, line: 31, baseType: !131, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !262, line: 32, baseType: !158, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !262, line: 33, baseType: !111, size: 64, align: 64, offset: 128)
!268 = !{!269, !274, !339, !350}
!269 = distinct !DIGlobalVariable(name: "type", scope: !270, file: !262, line: 415, type: !84, isLocal: true, isDefinition: true, variable: i64* @ToolsCore_Service_get_type.type)
!270 = distinct !DISubprogram(name: "ToolsCore_Service_get_type", scope: !262, file: !262, line: 413, type: !271, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!84}
!273 = !{}
!274 = distinct !DIGlobalVariable(name: "info", scope: !270, file: !262, line: 417, type: !275, isLocal: true, isDefinition: true, variable: %struct._GTypeInfo* @ToolsCore_Service_get_type.info)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeInfo", file: !85, line: 392, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeInfo", file: !85, line: 1032, size: 576, align: 64, elements: !278)
!278 = !{!279, !282, !287, !289, !294, !296, !300, !301, !302, !307}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "class_size", scope: !277, file: !85, line: 1035, baseType: !280, size: 16, align: 16)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint16", file: !87, line: 40, baseType: !281)
!281 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "base_init", scope: !277, file: !85, line: 1037, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GBaseInitFunc", file: !85, line: 760, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !111}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "base_finalize", scope: !277, file: !85, line: 1038, baseType: !288, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "GBaseFinalizeFunc", file: !85, line: 771, baseType: !284)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "class_init", scope: !277, file: !85, line: 1041, baseType: !290, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClassInitFunc", file: !85, line: 873, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !111, !111}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "class_finalize", scope: !277, file: !85, line: 1042, baseType: !295, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "GClassFinalizeFunc", file: !85, line: 888, baseType: !291)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "class_data", scope: !277, file: !85, line: 1043, baseType: !297, size: 64, align: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !112, line: 78, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "instance_size", scope: !277, file: !85, line: 1046, baseType: !280, size: 16, align: 16, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "n_preallocs", scope: !277, file: !85, line: 1047, baseType: !280, size: 16, align: 16, offset: 400)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "instance_init", scope: !277, file: !85, line: 1048, baseType: !303, size: 64, align: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInstanceInitFunc", file: !85, line: 908, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !226, !111}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value_table", scope: !277, file: !85, line: 1051, baseType: !308, size: 64, align: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeValueTable", file: !85, line: 395, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeValueTable", file: !85, line: 1237, size: 512, align: 64, elements: !312)
!312 = !{!313, !317, !318, !322, !326, !327, !334, !335}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value_init", scope: !311, file: !85, line: 1239, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !164}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value_free", scope: !311, file: !85, line: 1240, baseType: !314, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value_copy", scope: !311, file: !85, line: 1241, baseType: !319, size: 64, align: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !200, !164}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value_peek_pointer", scope: !311, file: !85, line: 1244, baseType: !323, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!111, !200}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "collect_format", scope: !311, file: !85, line: 1245, baseType: !149, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "collect_value", scope: !311, file: !85, line: 1246, baseType: !328, size: 64, align: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!158, !164, !131, !331, !131}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeCValue", file: !85, line: 387, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_union_type, name: "_GTypeCValue", file: !85, line: 387, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "lcopy_format", scope: !311, file: !85, line: 1250, baseType: !149, size: 64, align: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lcopy_value", scope: !311, file: !85, line: 1251, baseType: !336, size: 64, align: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!158, !200, !131, !331, !131}
!339 = distinct !DIGlobalVariable(name: "PROP_ID_SEQ", scope: !340, file: !262, line: 453, type: !131, isLocal: true, isDefinition: true, variable: i32* @ToolsCoreService_RegisterProperty.PROP_ID_SEQ)
!340 = distinct !DISubprogram(name: "ToolsCoreService_RegisterProperty", scope: !262, file: !262, line: 450, type: !341, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !238, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceProperty", file: !31, line: 468, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceProperty", file: !31, line: 466, size: 64, align: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !31, line: 467, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!350 = distinct !DIGlobalVariable(name: "gToolsCoreServiceParentClass", scope: !0, file: !262, line: 36, type: !111, isLocal: true, isDefinition: true, variable: i8** @gToolsCoreServiceParentClass)
!351 = !{i32 2, !"Dwarf Version", i32 4}
!352 = !{i32 2, !"Debug Info Version", i32 3}
!353 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!354 = !DILocation(line: 416, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !270, file: !262, line: 416, column: 8)
!356 = !DILocation(line: 416, column: 13, scope: !355)
!357 = !DILocation(line: 416, column: 8, scope: !270)
!358 = !DILocation(line: 428, column: 14, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !262, line: 416, column: 19)
!360 = !DILocation(line: 428, column: 12, scope: !359)
!361 = !DILocation(line: 432, column: 4, scope: !359)
!362 = !DILocation(line: 433, column: 11, scope: !270)
!363 = !DILocation(line: 433, column: 4, scope: !270)
!364 = distinct !DISubprogram(name: "ToolsCore_Service_class_init", scope: !262, file: !262, line: 311, type: !292, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!365 = !DILocalVariable(name: "_klass", arg: 1, scope: !364, file: !262, line: 311, type: !111)
!366 = !DIExpression()
!367 = !DILocation(line: 311, column: 39, scope: !364)
!368 = !DILocalVariable(name: "klassData", arg: 2, scope: !364, file: !262, line: 312, type: !111)
!369 = !DILocation(line: 312, column: 39, scope: !364)
!370 = !DILocalVariable(name: "klass", scope: !364, file: !262, line: 314, type: !89)
!371 = !DILocation(line: 314, column: 27, scope: !364)
!372 = !DILocation(line: 314, column: 35, scope: !364)
!373 = !DILocation(line: 316, column: 60, scope: !364)
!374 = !DILocation(line: 316, column: 35, scope: !364)
!375 = !DILocation(line: 316, column: 33, scope: !364)
!376 = !DILocation(line: 319, column: 35, scope: !364)
!377 = !DILocation(line: 319, column: 44, scope: !364)
!378 = !DILocation(line: 318, column: 4, scope: !364)
!379 = !DILocation(line: 330, column: 35, scope: !364)
!380 = !DILocation(line: 330, column: 44, scope: !364)
!381 = !DILocation(line: 329, column: 4, scope: !364)
!382 = !DILocation(line: 340, column: 35, scope: !364)
!383 = !DILocation(line: 340, column: 44, scope: !364)
!384 = !DILocation(line: 339, column: 4, scope: !364)
!385 = !DILocation(line: 350, column: 35, scope: !364)
!386 = !DILocation(line: 350, column: 44, scope: !364)
!387 = !DILocation(line: 349, column: 4, scope: !364)
!388 = !DILocation(line: 360, column: 35, scope: !364)
!389 = !DILocation(line: 360, column: 44, scope: !364)
!390 = !DILocation(line: 359, column: 4, scope: !364)
!391 = !DILocation(line: 372, column: 35, scope: !364)
!392 = !DILocation(line: 372, column: 44, scope: !364)
!393 = !DILocation(line: 371, column: 4, scope: !364)
!394 = !DILocation(line: 398, column: 64, scope: !364)
!395 = !DILocation(line: 398, column: 48, scope: !364)
!396 = !DILocation(line: 398, column: 23, scope: !364)
!397 = !DILocation(line: 398, column: 104, scope: !364)
!398 = !DILocation(line: 398, column: 116, scope: !364)
!399 = !DILocation(line: 399, column: 64, scope: !364)
!400 = !DILocation(line: 399, column: 48, scope: !364)
!401 = !DILocation(line: 399, column: 23, scope: !364)
!402 = !DILocation(line: 399, column: 104, scope: !364)
!403 = !DILocation(line: 399, column: 113, scope: !364)
!404 = !DILocation(line: 400, column: 64, scope: !364)
!405 = !DILocation(line: 400, column: 48, scope: !364)
!406 = !DILocation(line: 400, column: 23, scope: !364)
!407 = !DILocation(line: 400, column: 104, scope: !364)
!408 = !DILocation(line: 400, column: 117, scope: !364)
!409 = !DILocation(line: 401, column: 64, scope: !364)
!410 = !DILocation(line: 401, column: 48, scope: !364)
!411 = !DILocation(line: 401, column: 23, scope: !364)
!412 = !DILocation(line: 401, column: 104, scope: !364)
!413 = !DILocation(line: 401, column: 117, scope: !364)
!414 = !DILocation(line: 402, column: 1, scope: !364)
!415 = !DILocalVariable(name: "obj", arg: 1, scope: !340, file: !262, line: 450, type: !238)
!416 = !DILocation(line: 450, column: 53, scope: !340)
!417 = !DILocalVariable(name: "prop", arg: 2, scope: !340, file: !262, line: 451, type: !343)
!418 = !DILocation(line: 451, column: 57, scope: !340)
!419 = !DILocalVariable(name: "sprop", scope: !340, file: !262, line: 455, type: !261)
!420 = !DILocation(line: 455, column: 20, scope: !340)
!421 = !DILocalVariable(name: "klass", scope: !340, file: !262, line: 456, type: !89)
!422 = !DILocation(line: 456, column: 27, scope: !340)
!423 = !DILocation(line: 456, column: 84, scope: !340)
!424 = !DILocation(line: 456, column: 92, scope: !340)
!425 = !DILocation(line: 456, column: 38, scope: !340)
!426 = !DILocalVariable(name: "pspec", scope: !340, file: !262, line: 457, type: !143)
!427 = !DILocation(line: 457, column: 16, scope: !340)
!428 = !DILocation(line: 457, column: 45, scope: !340)
!429 = !DILocation(line: 457, column: 51, scope: !340)
!430 = !DILocation(line: 458, column: 45, scope: !340)
!431 = !DILocation(line: 458, column: 51, scope: !340)
!432 = !DILocation(line: 459, column: 45, scope: !340)
!433 = !DILocation(line: 459, column: 51, scope: !340)
!434 = !DILocation(line: 457, column: 24, scope: !340)
!435 = !DILocation(line: 462, column: 17, scope: !340)
!436 = !DILocation(line: 462, column: 22, scope: !340)
!437 = !DILocation(line: 462, column: 4, scope: !340)
!438 = !DILocation(line: 464, column: 15, scope: !340)
!439 = !DILocation(line: 464, column: 10, scope: !340)
!440 = !DILocation(line: 464, column: 13, scope: !340)
!441 = !DILocation(line: 465, column: 26, scope: !340)
!442 = !DILocation(line: 465, column: 32, scope: !340)
!443 = !DILocation(line: 465, column: 17, scope: !340)
!444 = !DILocation(line: 465, column: 10, scope: !340)
!445 = !DILocation(line: 465, column: 15, scope: !340)
!446 = !DILocation(line: 466, column: 10, scope: !340)
!447 = !DILocation(line: 466, column: 16, scope: !340)
!448 = !DILocation(line: 467, column: 25, scope: !340)
!449 = !DILocation(line: 467, column: 30, scope: !340)
!450 = !DILocation(line: 467, column: 37, scope: !340)
!451 = !DILocation(line: 467, column: 4, scope: !340)
!452 = !DILocation(line: 468, column: 96, scope: !340)
!453 = !DILocation(line: 468, column: 80, scope: !340)
!454 = !DILocation(line: 468, column: 55, scope: !340)
!455 = !DILocation(line: 468, column: 39, scope: !340)
!456 = !DILocation(line: 468, column: 142, scope: !340)
!457 = !DILocation(line: 468, column: 146, scope: !340)
!458 = !DILocation(line: 468, column: 4, scope: !459)
!459 = !DILexicalBlockFile(scope: !340, file: !262, discriminator: 1)
!460 = !DILocation(line: 470, column: 19, scope: !340)
!461 = !DILocation(line: 470, column: 24, scope: !340)
!462 = !DILocation(line: 470, column: 4, scope: !340)
!463 = !DILocation(line: 471, column: 1, scope: !340)
!464 = distinct !DISubprogram(name: "ToolsCoreCapabilitiesAccumulator", scope: !262, file: !262, line: 76, type: !465, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !468, !164, !200, !111}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !112, line: 50, baseType: !175)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSignalInvocationHint", file: !19, line: 33, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSignalInvocationHint", file: !19, line: 223, size: 96, align: 32, elements: !471)
!471 = !{!472, !473, !477}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "signal_id", scope: !470, file: !19, line: 225, baseType: !131, size: 32, align: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "detail", scope: !470, file: !19, line: 226, baseType: !474, size: 32, align: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !475, line: 36, baseType: !476)
!475 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1389")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !87, line: 45, baseType: !132)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "run_type", scope: !470, file: !19, line: 227, baseType: !478, size: 32, align: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSignalFlags", file: !19, line: 138, baseType: !18)
!479 = !DILocalVariable(name: "ihint", arg: 1, scope: !464, file: !262, line: 76, type: !468)
!480 = !DILocation(line: 76, column: 57, scope: !464)
!481 = !DILocalVariable(name: "retval", arg: 2, scope: !464, file: !262, line: 77, type: !164)
!482 = !DILocation(line: 77, column: 42, scope: !464)
!483 = !DILocalVariable(name: "handlerRet", arg: 3, scope: !464, file: !262, line: 78, type: !200)
!484 = !DILocation(line: 78, column: 48, scope: !464)
!485 = !DILocalVariable(name: "data", arg: 4, scope: !464, file: !262, line: 79, type: !111)
!486 = !DILocation(line: 79, column: 43, scope: !464)
!487 = !DILocalVariable(name: "caps", scope: !464, file: !262, line: 81, type: !253)
!488 = !DILocation(line: 81, column: 12, scope: !464)
!489 = !DILocation(line: 81, column: 39, scope: !464)
!490 = !DILocation(line: 81, column: 19, scope: !464)
!491 = !DILocation(line: 83, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !464, file: !262, line: 83, column: 8)
!493 = !DILocation(line: 83, column: 13, scope: !492)
!494 = !DILocation(line: 83, column: 8, scope: !464)
!495 = !DILocalVariable(name: "i", scope: !496, file: !262, line: 84, type: !131)
!496 = distinct !DILexicalBlock(scope: !492, file: !262, line: 83, column: 21)
!497 = !DILocation(line: 84, column: 13, scope: !496)
!498 = !DILocalVariable(name: "acc", scope: !496, file: !262, line: 85, type: !253)
!499 = !DILocation(line: 85, column: 15, scope: !496)
!500 = !DILocation(line: 85, column: 41, scope: !496)
!501 = !DILocation(line: 85, column: 21, scope: !496)
!502 = !DILocation(line: 87, column: 11, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !262, line: 87, column: 11)
!504 = !DILocation(line: 87, column: 15, scope: !503)
!505 = !DILocation(line: 87, column: 11, scope: !496)
!506 = !DILocation(line: 88, column: 16, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !262, line: 87, column: 23)
!508 = !DILocation(line: 88, column: 14, scope: !507)
!509 = !DILocation(line: 89, column: 30, scope: !507)
!510 = !DILocation(line: 89, column: 38, scope: !507)
!511 = !DILocation(line: 89, column: 10, scope: !507)
!512 = !DILocation(line: 90, column: 7, scope: !507)
!513 = !DILocation(line: 92, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !496, file: !262, line: 92, column: 7)
!515 = !DILocation(line: 92, column: 12, scope: !514)
!516 = !DILocation(line: 92, column: 19, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !262, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !514, file: !262, line: 92, column: 7)
!519 = !DILocation(line: 92, column: 23, scope: !517)
!520 = !DILocation(line: 92, column: 29, scope: !517)
!521 = !DILocation(line: 92, column: 21, scope: !517)
!522 = !DILocation(line: 92, column: 7, scope: !517)
!523 = !DILocation(line: 93, column: 31, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !262, line: 92, column: 39)
!525 = !DILocation(line: 93, column: 87, scope: !524)
!526 = !DILocation(line: 93, column: 39, scope: !524)
!527 = !DILocation(line: 93, column: 72, scope: !524)
!528 = !DILocation(line: 93, column: 79, scope: !524)
!529 = !DILocation(line: 93, column: 40, scope: !524)
!530 = !DILocation(line: 93, column: 36, scope: !524)
!531 = !DILocation(line: 93, column: 10, scope: !524)
!532 = !DILocation(line: 94, column: 7, scope: !524)
!533 = !DILocation(line: 92, column: 35, scope: !534)
!534 = !DILexicalBlockFile(scope: !518, file: !262, discriminator: 2)
!535 = !DILocation(line: 92, column: 7, scope: !534)
!536 = distinct !{!536, !537}
!537 = !DILocation(line: 92, column: 7, scope: !496)
!538 = !DILocation(line: 96, column: 20, scope: !496)
!539 = !DILocation(line: 96, column: 7, scope: !496)
!540 = !DILocation(line: 97, column: 4, scope: !496)
!541 = !DILocation(line: 99, column: 4, scope: !464)
!542 = distinct !DISubprogram(name: "ToolsCoreSetOptionAccumulator", scope: !262, file: !262, line: 51, type: !465, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!543 = !DILocalVariable(name: "ihint", arg: 1, scope: !542, file: !262, line: 51, type: !468)
!544 = !DILocation(line: 51, column: 54, scope: !542)
!545 = !DILocalVariable(name: "retval", arg: 2, scope: !542, file: !262, line: 52, type: !164)
!546 = !DILocation(line: 52, column: 39, scope: !542)
!547 = !DILocalVariable(name: "handlerRet", arg: 3, scope: !542, file: !262, line: 53, type: !200)
!548 = !DILocation(line: 53, column: 45, scope: !542)
!549 = !DILocalVariable(name: "data", arg: 4, scope: !542, file: !262, line: 54, type: !111)
!550 = !DILocation(line: 54, column: 40, scope: !542)
!551 = !DILocation(line: 56, column: 29, scope: !552)
!552 = distinct !DILexicalBlock(scope: !542, file: !262, line: 56, column: 8)
!553 = !DILocation(line: 56, column: 9, scope: !552)
!554 = !DILocation(line: 56, column: 8, scope: !542)
!555 = !DILocation(line: 57, column: 27, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !262, line: 56, column: 38)
!557 = !DILocation(line: 57, column: 55, scope: !556)
!558 = !DILocation(line: 57, column: 35, scope: !556)
!559 = !DILocation(line: 57, column: 7, scope: !560)
!560 = !DILexicalBlockFile(scope: !556, file: !262, discriminator: 1)
!561 = !DILocation(line: 58, column: 4, scope: !556)
!562 = !DILocation(line: 59, column: 4, scope: !542)
!563 = distinct !DISubprogram(name: "ToolsCoreServiceCtor", scope: !262, file: !262, line: 251, type: !117, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!564 = !DILocalVariable(name: "type", arg: 1, scope: !563, file: !262, line: 251, type: !84)
!565 = !DILocation(line: 251, column: 28, scope: !563)
!566 = !DILocalVariable(name: "nparams", arg: 2, scope: !563, file: !262, line: 252, type: !131)
!567 = !DILocation(line: 252, column: 28, scope: !563)
!568 = !DILocalVariable(name: "params", arg: 3, scope: !563, file: !262, line: 253, type: !138)
!569 = !DILocation(line: 253, column: 45, scope: !563)
!570 = !DILocalVariable(name: "object", scope: !563, file: !262, line: 255, type: !119)
!571 = !DILocation(line: 255, column: 13, scope: !563)
!572 = !DILocalVariable(name: "self", scope: !563, file: !262, line: 256, type: !238)
!573 = !DILocation(line: 256, column: 22, scope: !563)
!574 = !DILocation(line: 258, column: 73, scope: !563)
!575 = !DILocation(line: 258, column: 57, scope: !563)
!576 = !DILocation(line: 258, column: 32, scope: !563)
!577 = !DILocation(line: 258, column: 136, scope: !563)
!578 = !DILocation(line: 258, column: 148, scope: !563)
!579 = !DILocation(line: 259, column: 71, scope: !563)
!580 = !DILocation(line: 260, column: 71, scope: !563)
!581 = !DILocation(line: 258, column: 13, scope: !582)
!582 = !DILexicalBlockFile(scope: !563, file: !262, discriminator: 1)
!583 = !DILocation(line: 258, column: 11, scope: !563)
!584 = !DILocation(line: 262, column: 81, scope: !563)
!585 = !DILocation(line: 262, column: 62, scope: !563)
!586 = !DILocation(line: 262, column: 92, scope: !563)
!587 = !DILocation(line: 262, column: 34, scope: !582)
!588 = !DILocation(line: 262, column: 14, scope: !563)
!589 = !DILocation(line: 262, column: 9, scope: !563)
!590 = !DILocation(line: 263, column: 17, scope: !563)
!591 = !DILocation(line: 263, column: 4, scope: !563)
!592 = !DILocation(line: 263, column: 10, scope: !563)
!593 = !DILocation(line: 263, column: 15, scope: !563)
!594 = !DILocation(line: 264, column: 18, scope: !563)
!595 = !DILocation(line: 264, column: 4, scope: !563)
!596 = !DILocation(line: 264, column: 10, scope: !563)
!597 = !DILocation(line: 264, column: 16, scope: !563)
!598 = !DILocation(line: 266, column: 11, scope: !563)
!599 = !DILocation(line: 266, column: 4, scope: !563)
!600 = distinct !DISubprogram(name: "ToolsCoreServiceDtor", scope: !262, file: !262, line: 284, type: !208, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!601 = !DILocalVariable(name: "object", arg: 1, scope: !600, file: !262, line: 284, type: !119)
!602 = !DILocation(line: 284, column: 31, scope: !600)
!603 = !DILocalVariable(name: "self", scope: !600, file: !262, line: 286, type: !238)
!604 = !DILocation(line: 286, column: 22, scope: !600)
!605 = !DILocation(line: 286, column: 50, scope: !600)
!606 = !DILocation(line: 286, column: 29, scope: !600)
!607 = !DILocalVariable(name: "i", scope: !600, file: !262, line: 287, type: !131)
!608 = !DILocation(line: 287, column: 10, scope: !600)
!609 = !DILocation(line: 289, column: 11, scope: !610)
!610 = distinct !DILexicalBlock(scope: !600, file: !262, line: 289, column: 4)
!611 = !DILocation(line: 289, column: 9, scope: !610)
!612 = !DILocation(line: 289, column: 16, scope: !613)
!613 = !DILexicalBlockFile(scope: !614, file: !262, discriminator: 1)
!614 = distinct !DILexicalBlock(scope: !610, file: !262, line: 289, column: 4)
!615 = !DILocation(line: 289, column: 20, scope: !613)
!616 = !DILocation(line: 289, column: 26, scope: !613)
!617 = !DILocation(line: 289, column: 33, scope: !613)
!618 = !DILocation(line: 289, column: 18, scope: !613)
!619 = !DILocation(line: 289, column: 4, scope: !613)
!620 = !DILocalVariable(name: "p", scope: !621, file: !262, line: 290, type: !260)
!621 = distinct !DILexicalBlock(scope: !614, file: !262, line: 289, column: 43)
!622 = !DILocation(line: 290, column: 24, scope: !621)
!623 = !DILocation(line: 290, column: 82, scope: !621)
!624 = !DILocation(line: 290, column: 30, scope: !621)
!625 = !DILocation(line: 290, column: 60, scope: !621)
!626 = !DILocation(line: 290, column: 66, scope: !621)
!627 = !DILocation(line: 290, column: 74, scope: !621)
!628 = !DILocation(line: 290, column: 31, scope: !621)
!629 = !DILocation(line: 291, column: 11, scope: !630)
!630 = distinct !DILexicalBlock(scope: !621, file: !262, line: 291, column: 11)
!631 = !DILocation(line: 291, column: 14, scope: !630)
!632 = !DILocation(line: 291, column: 20, scope: !630)
!633 = !DILocation(line: 291, column: 11, scope: !621)
!634 = !DILocation(line: 292, column: 104, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !262, line: 291, column: 28)
!636 = !DILocation(line: 292, column: 107, scope: !635)
!637 = !DILocation(line: 292, column: 10, scope: !635)
!638 = !DILocation(line: 294, column: 7, scope: !635)
!639 = !DILocation(line: 295, column: 14, scope: !621)
!640 = !DILocation(line: 295, column: 17, scope: !621)
!641 = !DILocation(line: 295, column: 7, scope: !621)
!642 = !DILocation(line: 296, column: 4, scope: !621)
!643 = !DILocation(line: 289, column: 39, scope: !644)
!644 = !DILexicalBlockFile(scope: !614, file: !262, discriminator: 2)
!645 = !DILocation(line: 289, column: 4, scope: !644)
!646 = distinct !{!646, !647}
!647 = !DILocation(line: 289, column: 4, scope: !600)
!648 = !DILocation(line: 298, column: 17, scope: !600)
!649 = !DILocation(line: 298, column: 23, scope: !600)
!650 = !DILocation(line: 298, column: 4, scope: !600)
!651 = !DILocation(line: 299, column: 17, scope: !600)
!652 = !DILocation(line: 299, column: 23, scope: !600)
!653 = !DILocation(line: 299, column: 4, scope: !600)
!654 = !DILocation(line: 300, column: 1, scope: !600)
!655 = distinct !DISubprogram(name: "ToolsCoreServiceSetProperty", scope: !262, file: !262, line: 210, type: !198, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!656 = !DILocalVariable(name: "object", arg: 1, scope: !655, file: !262, line: 210, type: !119)
!657 = !DILocation(line: 210, column: 38, scope: !655)
!658 = !DILocalVariable(name: "id", arg: 2, scope: !655, file: !262, line: 211, type: !131)
!659 = !DILocation(line: 211, column: 35, scope: !655)
!660 = !DILocalVariable(name: "value", arg: 3, scope: !655, file: !262, line: 212, type: !200)
!661 = !DILocation(line: 212, column: 43, scope: !655)
!662 = !DILocalVariable(name: "pspec", arg: 4, scope: !655, file: !262, line: 213, type: !143)
!663 = !DILocation(line: 213, column: 41, scope: !655)
!664 = !DILocalVariable(name: "p", scope: !655, file: !262, line: 215, type: !260)
!665 = !DILocation(line: 215, column: 21, scope: !655)
!666 = !DILocalVariable(name: "self", scope: !655, file: !262, line: 216, type: !238)
!667 = !DILocation(line: 216, column: 22, scope: !655)
!668 = !DILocation(line: 216, column: 50, scope: !655)
!669 = !DILocation(line: 216, column: 29, scope: !655)
!670 = !DILocation(line: 218, column: 7, scope: !655)
!671 = !DILocation(line: 220, column: 17, scope: !655)
!672 = !DILocation(line: 220, column: 23, scope: !655)
!673 = !DILocation(line: 220, column: 4, scope: !655)
!674 = !DILocation(line: 222, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !655, file: !262, line: 222, column: 8)
!676 = !DILocation(line: 222, column: 13, scope: !675)
!677 = !DILocation(line: 222, column: 19, scope: !675)
!678 = !DILocation(line: 222, column: 26, scope: !675)
!679 = !DILocation(line: 222, column: 11, scope: !675)
!680 = !DILocation(line: 222, column: 8, scope: !655)
!681 = !DILocation(line: 223, column: 65, scope: !682)
!682 = distinct !DILexicalBlock(scope: !675, file: !262, line: 222, column: 31)
!683 = !DILocation(line: 223, column: 13, scope: !682)
!684 = !DILocation(line: 223, column: 43, scope: !682)
!685 = !DILocation(line: 223, column: 49, scope: !682)
!686 = !DILocation(line: 223, column: 57, scope: !682)
!687 = !DILocation(line: 223, column: 14, scope: !682)
!688 = !DILocation(line: 223, column: 9, scope: !682)
!689 = !DILocation(line: 224, column: 38, scope: !682)
!690 = !DILocation(line: 224, column: 18, scope: !682)
!691 = !DILocation(line: 224, column: 7, scope: !682)
!692 = !DILocation(line: 224, column: 10, scope: !682)
!693 = !DILocation(line: 224, column: 16, scope: !682)
!694 = !DILocation(line: 225, column: 4, scope: !682)
!695 = !DILocation(line: 227, column: 19, scope: !655)
!696 = !DILocation(line: 227, column: 25, scope: !655)
!697 = !DILocation(line: 227, column: 4, scope: !655)
!698 = !DILocation(line: 229, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !655, file: !262, line: 229, column: 8)
!700 = !DILocation(line: 229, column: 10, scope: !699)
!701 = !DILocation(line: 229, column: 8, scope: !655)
!702 = !DILocation(line: 230, column: 23, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !262, line: 229, column: 18)
!704 = !DILocation(line: 230, column: 31, scope: !703)
!705 = !DILocation(line: 230, column: 34, scope: !703)
!706 = !DILocation(line: 230, column: 7, scope: !703)
!707 = !DILocation(line: 231, column: 4, scope: !703)
!708 = !DILocation(line: 232, column: 1, scope: !655)
!709 = distinct !DISubprogram(name: "ToolsCoreServiceGetProperty", scope: !262, file: !262, line: 174, type: !204, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !273)
!710 = !DILocalVariable(name: "object", arg: 1, scope: !709, file: !262, line: 174, type: !119)
!711 = !DILocation(line: 174, column: 38, scope: !709)
!712 = !DILocalVariable(name: "id", arg: 2, scope: !709, file: !262, line: 175, type: !131)
!713 = !DILocation(line: 175, column: 35, scope: !709)
!714 = !DILocalVariable(name: "value", arg: 3, scope: !709, file: !262, line: 176, type: !164)
!715 = !DILocation(line: 176, column: 37, scope: !709)
!716 = !DILocalVariable(name: "pspec", arg: 4, scope: !709, file: !262, line: 177, type: !143)
!717 = !DILocation(line: 177, column: 41, scope: !709)
!718 = !DILocalVariable(name: "self", scope: !709, file: !262, line: 179, type: !238)
!719 = !DILocation(line: 179, column: 22, scope: !709)
!720 = !DILocation(line: 179, column: 50, scope: !709)
!721 = !DILocation(line: 179, column: 29, scope: !709)
!722 = !DILocation(line: 181, column: 7, scope: !709)
!723 = !DILocation(line: 183, column: 17, scope: !709)
!724 = !DILocation(line: 183, column: 23, scope: !709)
!725 = !DILocation(line: 183, column: 4, scope: !709)
!726 = !DILocation(line: 185, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !709, file: !262, line: 185, column: 8)
!728 = !DILocation(line: 185, column: 13, scope: !727)
!729 = !DILocation(line: 185, column: 19, scope: !727)
!730 = !DILocation(line: 185, column: 26, scope: !727)
!731 = !DILocation(line: 185, column: 11, scope: !727)
!732 = !DILocation(line: 185, column: 8, scope: !709)
!733 = !DILocalVariable(name: "p", scope: !734, file: !262, line: 186, type: !260)
!734 = distinct !DILexicalBlock(scope: !727, file: !262, line: 185, column: 31)
!735 = !DILocation(line: 186, column: 24, scope: !734)
!736 = !DILocation(line: 186, column: 82, scope: !734)
!737 = !DILocation(line: 186, column: 30, scope: !734)
!738 = !DILocation(line: 186, column: 60, scope: !734)
!739 = !DILocation(line: 186, column: 66, scope: !734)
!740 = !DILocation(line: 186, column: 74, scope: !734)
!741 = !DILocation(line: 186, column: 31, scope: !734)
!742 = !DILocation(line: 187, column: 27, scope: !734)
!743 = !DILocation(line: 187, column: 34, scope: !734)
!744 = !DILocation(line: 187, column: 37, scope: !734)
!745 = !DILocation(line: 187, column: 7, scope: !734)
!746 = !DILocation(line: 188, column: 4, scope: !734)
!747 = !DILocation(line: 190, column: 19, scope: !709)
!748 = !DILocation(line: 190, column: 25, scope: !709)
!749 = !DILocation(line: 190, column: 4, scope: !709)
!750 = !DILocation(line: 191, column: 1, scope: !709)
