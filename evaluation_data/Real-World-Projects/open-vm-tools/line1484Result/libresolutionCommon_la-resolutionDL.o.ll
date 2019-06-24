; ModuleID = './libresolutionCommon_la-resolutionDL.o.i'
source_filename = "./libresolutionCommon_la-resolutionDL.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Udev1Interface = type { i8* (%struct.udev_device*)*, %struct.udev_device* (%struct.udev_device*, i8*, i8*)*, i8* (%struct.udev_device*, i8*)*, %struct.udev_device* (%struct.udev*, i8*)*, %struct.udev_device* (%struct.udev_device*)*, i32 (%struct.udev_enumerate*, i8*, i8*)*, i32 (%struct.udev_enumerate*, i8*)*, %struct.udev_list_entry* (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev*)*, i32 (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev_enumerate*)*, i8* (%struct.udev_list_entry*)*, %struct.udev_list_entry* (%struct.udev_list_entry*)*, %struct.udev* ()*, %struct.udev* (%struct.udev*)* }
%struct.udev_device = type opaque
%struct.udev = type opaque
%struct.udev_enumerate = type opaque
%struct.udev_list_entry = type opaque
%struct.Drm2Interface = type { i32 (i8*, i8*)*, i32 (i32)*, %struct._drmVersion* (i32)*, void (%struct._drmVersion*)*, i32 (i32)*, i32 (i32, i64, i8*, i64)* }
%struct._drmVersion = type { i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.FuncToResolv = type { i64, i8* }

@udevi = global %struct.Udev1Interface* null, align 8
@drmi = global %struct.Drm2Interface* null, align 8
@dlhandle = internal global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"libudev.so.1\00", align 1
@udev1Table = internal global [15 x %struct.FuncToResolv] [%struct.FuncToResolv { i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0) }, %struct.FuncToResolv { i64 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0) }, %struct.FuncToResolv { i64 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0) }, %struct.FuncToResolv { i64 24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct.FuncToResolv { i64 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, %struct.FuncToResolv { i64 40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct.FuncToResolv { i64 48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0) }, %struct.FuncToResolv { i64 56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0) }, %struct.FuncToResolv { i64 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.FuncToResolv { i64 72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0) }, %struct.FuncToResolv { i64 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0) }, %struct.FuncToResolv { i64 88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct.FuncToResolv { i64 96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.FuncToResolv { i64 104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0) }, %struct.FuncToResolv { i64 112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"libudev.so.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"libdrm.so.2\00", align 1
@drm2Table = internal global [6 x %struct.FuncToResolv] [%struct.FuncToResolv { i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0) }, %struct.FuncToResolv { i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }, %struct.FuncToResolv { i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0) }, %struct.FuncToResolv { i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.FuncToResolv { i64 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0) }, %struct.FuncToResolv { i64 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"resolutionCommon\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: Failed to open shared library \22%s\22.\0A\00", align 1
@__func__.resolutionDLResolve = private unnamed_addr constant [20 x i8] c"resolutionDLResolve\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: Failed to resolve %s symbol \22%s\22.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"udev_device_get_devnode\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"udev_device_get_parent_with_subsystem_devtype\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"udev_device_get_sysattr_value\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"udev_device_new_from_syspath\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"udev_device_unref\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"udev_enumerate_add_match_property\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"udev_enumerate_add_match_subsystem\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"udev_enumerate_get_list_entry\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"udev_enumerate_new\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"udev_enumerate_scan_devices\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"udev_enumerate_unref\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"udev_list_entry_get_name\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"udev_list_entry_get_next\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"udev_new\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"udev_unref\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"drmOpen\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"drmClose\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"drmGetVersion\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"drmFreeVersion\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"drmDropMaster\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"drmCommandWrite\00", align 1

; Function Attrs: nounwind uwtable
define void @resolutionDLClose() #0 !dbg !155 {
  %1 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !159
  %2 = icmp ne %struct.Udev1Interface* %1, null, !dbg !159
  br i1 %2, label %3, label %6, !dbg !161

; <label>:3:                                      ; preds = %0
  %4 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !162
  %5 = bitcast %struct.Udev1Interface* %4 to i8*, !dbg !162
  call void @free(i8* %5) #4, !dbg !164
  store %struct.Udev1Interface* null, %struct.Udev1Interface** @udevi, align 8, !dbg !165
  br label %6, !dbg !166

; <label>:6:                                      ; preds = %3, %0
  %7 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !167
  %8 = icmp ne %struct.Drm2Interface* %7, null, !dbg !167
  br i1 %8, label %9, label %12, !dbg !169

; <label>:9:                                      ; preds = %6
  %10 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !170
  %11 = bitcast %struct.Drm2Interface* %10 to i8*, !dbg !170
  call void @free(i8* %11) #4, !dbg !172
  store %struct.Drm2Interface* null, %struct.Drm2Interface** @drmi, align 8, !dbg !173
  br label %12, !dbg !174

; <label>:12:                                     ; preds = %9, %6
  %13 = load i8*, i8** @dlhandle, align 8, !dbg !175
  %14 = icmp ne i8* %13, null, !dbg !175
  br i1 %14, label %15, label %18, !dbg !177

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** @dlhandle, align 8, !dbg !178
  %17 = call i32 @dlclose(i8* %16) #4, !dbg !180
  store i8* null, i8** @dlhandle, align 8, !dbg !181
  br label %18, !dbg !182

; <label>:18:                                     ; preds = %15, %12
  ret void, !dbg !183
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i32 @dlclose(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @resolutionDLOpen() #0 !dbg !184 {
  %1 = alloca i32, align 4
  %2 = call i32 @resolutionDLResolve(i8** bitcast (%struct.Udev1Interface** @udevi to i8**), i64 120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.FuncToResolv* getelementptr inbounds ([15 x %struct.FuncToResolv], [15 x %struct.FuncToResolv]* @udev1Table, i32 0, i32 0), i32 15), !dbg !187
  %3 = icmp ne i32 %2, 0, !dbg !187
  br i1 %3, label %4, label %8, !dbg !189

; <label>:4:                                      ; preds = %0
  %5 = call i32 @resolutionDLResolve(i8** bitcast (%struct.Udev1Interface** @udevi to i8**), i64 120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.FuncToResolv* getelementptr inbounds ([15 x %struct.FuncToResolv], [15 x %struct.FuncToResolv]* @udev1Table, i32 0, i32 0), i32 15), !dbg !190
  %6 = icmp ne i32 %5, 0, !dbg !190
  br i1 %6, label %7, label %8, !dbg !191

; <label>:7:                                      ; preds = %4
  store i32 -1, i32* %1, align 4, !dbg !193
  br label %13, !dbg !193

; <label>:8:                                      ; preds = %4, %0
  %9 = call i32 @resolutionDLResolve(i8** bitcast (%struct.Drm2Interface** @drmi to i8**), i64 48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.FuncToResolv* getelementptr inbounds ([6 x %struct.FuncToResolv], [6 x %struct.FuncToResolv]* @drm2Table, i32 0, i32 0), i32 6), !dbg !194
  %10 = icmp ne i32 %9, 0, !dbg !194
  br i1 %10, label %11, label %12, !dbg !196

; <label>:11:                                     ; preds = %8
  store i32 -1, i32* %1, align 4, !dbg !197
  br label %13, !dbg !197

; <label>:12:                                     ; preds = %8
  store i32 0, i32* %1, align 4, !dbg !198
  br label %13, !dbg !198

; <label>:13:                                     ; preds = %12, %11, %7
  %14 = load i32, i32* %1, align 4, !dbg !199
  ret i32 %14, !dbg !199
}

; Function Attrs: nounwind uwtable
define internal i32 @resolutionDLResolve(i8**, i64, i8*, %struct.FuncToResolv*, i32) #0 !dbg !200 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.FuncToResolv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !205, metadata !206), !dbg !207
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !208, metadata !206), !dbg !209
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !210, metadata !206), !dbg !211
  store %struct.FuncToResolv* %3, %struct.FuncToResolv** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.FuncToResolv** %10, metadata !212, metadata !206), !dbg !213
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !214, metadata !206), !dbg !215
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !216, metadata !206), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %13, metadata !218, metadata !206), !dbg !219
  %14 = load i8**, i8*** %7, align 8, !dbg !220
  %15 = load i8*, i8** %14, align 8, !dbg !222
  %16 = icmp ne i8* %15, null, !dbg !222
  br i1 %16, label %17, label %18, !dbg !223

; <label>:17:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !224
  br label %77, !dbg !224

; <label>:18:                                     ; preds = %5
  %19 = load i64, i64* %8, align 8, !dbg !225
  %20 = call noalias i8* @malloc(i64 %19) #4, !dbg !226
  %21 = load i8**, i8*** %7, align 8, !dbg !227
  store i8* %20, i8** %21, align 8, !dbg !228
  %22 = load i8**, i8*** %7, align 8, !dbg !229
  %23 = load i8*, i8** %22, align 8, !dbg !231
  %24 = icmp ne i8* %23, null, !dbg !231
  br i1 %24, label %26, label %25, !dbg !232

; <label>:25:                                     ; preds = %18
  store i32 -1, i32* %6, align 4, !dbg !233
  br label %77, !dbg !233

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %9, align 8, !dbg !234
  %28 = call i8* @dlopen(i8* %27, i32 2) #4, !dbg !235
  store i8* %28, i8** @dlhandle, align 8, !dbg !236
  %29 = load i8*, i8** @dlhandle, align 8, !dbg !237
  %30 = icmp ne i8* %29, null, !dbg !237
  br i1 %30, label %33, label %31, !dbg !239

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %9, align 8, !dbg !240
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.resolutionDLResolve, i32 0, i32 0), i8* %32), !dbg !242
  br label %76, !dbg !243

; <label>:33:                                     ; preds = %26
  store i32 0, i32* %13, align 4, !dbg !244
  br label %34, !dbg !246

; <label>:34:                                     ; preds = %72, %33
  %35 = load i32, i32* %13, align 4, !dbg !247
  %36 = load i32, i32* %11, align 4, !dbg !250
  %37 = icmp slt i32 %35, %36, !dbg !251
  br i1 %37, label %38, label %75, !dbg !252

; <label>:38:                                     ; preds = %34
  %39 = load i8**, i8*** %7, align 8, !dbg !253
  %40 = load i8*, i8** %39, align 8, !dbg !255
  %41 = ptrtoint i8* %40 to i64, !dbg !256
  %42 = load i32, i32* %13, align 4, !dbg !257
  %43 = sext i32 %42 to i64, !dbg !258
  %44 = load %struct.FuncToResolv*, %struct.FuncToResolv** %10, align 8, !dbg !258
  %45 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %44, i64 %43, !dbg !258
  %46 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %45, i32 0, i32 0, !dbg !259
  %47 = load i64, i64* %46, align 8, !dbg !259
  %48 = add i64 %41, %47, !dbg !260
  %49 = inttoptr i64 %48 to i8*, !dbg !261
  %50 = bitcast i8* %49 to i8**, !dbg !261
  store i8** %50, i8*** %12, align 8, !dbg !262
  %51 = load i8*, i8** @dlhandle, align 8, !dbg !263
  %52 = load i32, i32* %13, align 4, !dbg !264
  %53 = sext i32 %52 to i64, !dbg !265
  %54 = load %struct.FuncToResolv*, %struct.FuncToResolv** %10, align 8, !dbg !265
  %55 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %54, i64 %53, !dbg !265
  %56 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %55, i32 0, i32 1, !dbg !266
  %57 = load i8*, i8** %56, align 8, !dbg !266
  %58 = call i8* @dlsym(i8* %51, i8* %57) #4, !dbg !267
  %59 = load i8**, i8*** %12, align 8, !dbg !268
  store i8* %58, i8** %59, align 8, !dbg !269
  %60 = load i8**, i8*** %12, align 8, !dbg !270
  %61 = load i8*, i8** %60, align 8, !dbg !272
  %62 = icmp ne i8* %61, null, !dbg !272
  br i1 %62, label %71, label %63, !dbg !273

; <label>:63:                                     ; preds = %38
  %64 = load i8*, i8** %9, align 8, !dbg !274
  %65 = load i32, i32* %13, align 4, !dbg !276
  %66 = sext i32 %65 to i64, !dbg !277
  %67 = load %struct.FuncToResolv*, %struct.FuncToResolv** %10, align 8, !dbg !277
  %68 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %67, i64 %66, !dbg !277
  %69 = getelementptr inbounds %struct.FuncToResolv, %struct.FuncToResolv* %68, i32 0, i32 1, !dbg !278
  %70 = load i8*, i8** %69, align 8, !dbg !278
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.resolutionDLResolve, i32 0, i32 0), i8* %64, i8* %70), !dbg !279
  br label %76, !dbg !280

; <label>:71:                                     ; preds = %38
  br label %72, !dbg !281

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %13, align 4, !dbg !282
  %74 = add nsw i32 %73, 1, !dbg !282
  store i32 %74, i32* %13, align 4, !dbg !282
  br label %34, !dbg !284, !llvm.loop !285

; <label>:75:                                     ; preds = %34
  store i32 0, i32* %6, align 4, !dbg !287
  br label %77, !dbg !287

; <label>:76:                                     ; preds = %63, %31
  call void @resolutionDLClose(), !dbg !288
  store i32 -1, i32* %6, align 4, !dbg !289
  br label %77, !dbg !289

; <label>:77:                                     ; preds = %76, %75, %25, %17
  %78 = load i32, i32* %6, align 4, !dbg !290
  ret i32 %78, !dbg !290
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #1

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!152, !153}
!llvm.ident = !{!154}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !19)
!1 = !DIFile(filename: "libresolutionCommon_la-resolutionDL.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1484")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1484")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !{!16, !17, !18}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !{!20, !98, !137, !138, !148}
!20 = distinct !DIGlobalVariable(name: "udevi", scope: !0, file: !21, line: 77, type: !22, isLocal: false, isDefinition: true, variable: %struct.Udev1Interface** @udevi)
!21 = !DIFile(filename: "resolutionDL.c", directory: "/home/lichi/Desktop/open-vm-tools/line1484")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Udev1Interface", file: !24, line: 47, size: 960, align: 64, elements: !25)
!24 = !DIFile(filename: "resolutionDL.h", directory: "/home/lichi/Desktop/open-vm-tools/line1484")
!25 = !{!26, !35, !39, !43, !49, !53, !60, !64, !70, !74, !78, !82, !86, !90, !94}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_device_get_devnode", scope: !23, file: !24, line: 49, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !33}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_device", file: !24, line: 35, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_device_get_parent_with_subsystem_devtype", scope: !23, file: !24, line: 51, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!33, !33, !30, !30}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_device_get_sysattr_value", scope: !23, file: !24, line: 54, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!30, !33, !30}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_device_new_from_syspath", scope: !23, file: !24, line: 56, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!33, !47, !30}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev", file: !24, line: 34, flags: DIFlagFwdDecl)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_device_unref", scope: !23, file: !24, line: 58, baseType: !50, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!33, !33}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_add_match_property", scope: !23, file: !24, line: 60, baseType: !54, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !58, !30, !30}
!57 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_enumerate", file: !24, line: 36, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_add_match_subsystem", scope: !23, file: !24, line: 63, baseType: !61, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!57, !58, !30}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_get_list_entry", scope: !23, file: !24, line: 65, baseType: !65, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !58}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_list_entry", file: !24, line: 64, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_new", scope: !23, file: !24, line: 67, baseType: !71, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!58, !47}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_scan_devices", scope: !23, file: !24, line: 69, baseType: !75, size: 64, align: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!57, !58}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_enumerate_unref", scope: !23, file: !24, line: 71, baseType: !79, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!58, !58}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_list_entry_get_name", scope: !23, file: !24, line: 73, baseType: !83, size: 64, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!30, !68}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_list_entry_get_next", scope: !23, file: !24, line: 75, baseType: !87, size: 64, align: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!68, !68}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !23, file: !24, line: 77, baseType: !91, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!47}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unref", scope: !23, file: !24, line: 79, baseType: !95, size: 64, align: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!47, !47}
!98 = distinct !DIGlobalVariable(name: "drmi", scope: !0, file: !21, line: 78, type: !99, isLocal: false, isDefinition: true, variable: %struct.Drm2Interface** @drmi)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Drm2Interface", file: !24, line: 146, size: 384, align: 64, elements: !101)
!101 = !{!102, !106, !110, !128, !132, !133}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Open", scope: !100, file: !24, line: 147, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!57, !30, !30}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Close", scope: !100, file: !24, line: 148, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!57, !57}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "GetVersion", scope: !100, file: !24, line: 149, baseType: !111, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !57}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmVersionPtr", file: !24, line: 102, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_drmVersion", file: !24, line: 92, size: 448, align: 64, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !124, !125, !126, !127}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !116, file: !24, line: 93, baseType: !57, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !116, file: !24, line: 94, baseType: !57, size: 32, align: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "version_patchlevel", scope: !116, file: !24, line: 95, baseType: !57, size: 32, align: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !116, file: !24, line: 96, baseType: !57, size: 32, align: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !24, line: 97, baseType: !123, size: 64, align: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "date_len", scope: !116, file: !24, line: 98, baseType: !57, size: 32, align: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !116, file: !24, line: 99, baseType: !123, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !116, file: !24, line: 100, baseType: !57, size: 32, align: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !116, file: !24, line: 101, baseType: !123, size: 64, align: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "FreeVersion", scope: !100, file: !24, line: 150, baseType: !129, size: 64, align: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !114}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "DropMaster", scope: !100, file: !24, line: 151, baseType: !107, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "CommandWrite", scope: !100, file: !24, line: 152, baseType: !134, size: 64, align: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!57, !57, !18, !16, !18}
!137 = distinct !DIGlobalVariable(name: "dlhandle", scope: !0, file: !21, line: 80, type: !16, isLocal: true, isDefinition: true, variable: i8** @dlhandle)
!138 = distinct !DIGlobalVariable(name: "udev1Table", scope: !0, file: !21, line: 50, type: !139, isLocal: true, isDefinition: true, variable: [15 x %struct.FuncToResolv]* @udev1Table)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1920, align: 64, elements: !146)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FuncToResolv", file: !21, line: 36, size: 128, align: 64, elements: !141)
!141 = !{!142, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !140, file: !21, line: 37, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 216, baseType: !18)
!144 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1484")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !21, line: 38, baseType: !30, size: 64, align: 64, offset: 64)
!146 = !{!147}
!147 = !DISubrange(count: 15)
!148 = distinct !DIGlobalVariable(name: "drm2Table", scope: !0, file: !21, line: 68, type: !149, isLocal: true, isDefinition: true, variable: [6 x %struct.FuncToResolv]* @drm2Table)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 768, align: 64, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 6)
!152 = !{i32 2, !"Dwarf Version", i32 4}
!153 = !{i32 2, !"Debug Info Version", i32 3}
!154 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!155 = distinct !DISubprogram(name: "resolutionDLClose", scope: !21, file: !21, line: 96, type: !156, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null}
!158 = !{}
!159 = !DILocation(line: 98, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !21, line: 98, column: 9)
!161 = !DILocation(line: 98, column: 9, scope: !155)
!162 = !DILocation(line: 99, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !21, line: 98, column: 16)
!164 = !DILocation(line: 99, column: 2, scope: !163)
!165 = !DILocation(line: 100, column: 8, scope: !163)
!166 = !DILocation(line: 101, column: 5, scope: !163)
!167 = !DILocation(line: 103, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !155, file: !21, line: 103, column: 9)
!169 = !DILocation(line: 103, column: 9, scope: !155)
!170 = !DILocation(line: 104, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !21, line: 103, column: 15)
!172 = !DILocation(line: 104, column: 2, scope: !171)
!173 = !DILocation(line: 105, column: 7, scope: !171)
!174 = !DILocation(line: 106, column: 5, scope: !171)
!175 = !DILocation(line: 108, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !155, file: !21, line: 108, column: 9)
!177 = !DILocation(line: 108, column: 9, scope: !155)
!178 = !DILocation(line: 109, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !21, line: 108, column: 19)
!180 = !DILocation(line: 109, column: 2, scope: !179)
!181 = !DILocation(line: 110, column: 11, scope: !179)
!182 = !DILocation(line: 111, column: 5, scope: !179)
!183 = !DILocation(line: 112, column: 1, scope: !155)
!184 = distinct !DISubprogram(name: "resolutionDLOpen", scope: !21, file: !21, line: 191, type: !185, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !158)
!185 = !DISubroutineType(types: !186)
!186 = !{!57}
!187 = !DILocation(line: 194, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !21, line: 194, column: 9)
!189 = !DILocation(line: 195, column: 66, scope: !188)
!190 = !DILocation(line: 196, column: 2, scope: !188)
!191 = !DILocation(line: 194, column: 9, scope: !192)
!192 = !DILexicalBlockFile(scope: !184, file: !21, discriminator: 1)
!193 = !DILocation(line: 198, column: 2, scope: !188)
!194 = !DILocation(line: 200, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !184, file: !21, line: 200, column: 9)
!196 = !DILocation(line: 200, column: 9, scope: !184)
!197 = !DILocation(line: 202, column: 2, scope: !195)
!198 = !DILocation(line: 204, column: 5, scope: !184)
!199 = !DILocation(line: 205, column: 1, scope: !184)
!200 = distinct !DISubprogram(name: "resolutionDLResolve", scope: !21, file: !21, line: 130, type: !201, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !158)
!201 = !DISubroutineType(types: !202)
!202 = !{!57, !17, !143, !30, !203, !57}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!205 = !DILocalVariable(name: "ptr", arg: 1, scope: !200, file: !21, line: 130, type: !17)
!206 = !DIExpression()
!207 = !DILocation(line: 130, column: 28, scope: !200)
!208 = !DILocalVariable(name: "size", arg: 2, scope: !200, file: !21, line: 132, type: !143)
!209 = !DILocation(line: 132, column: 14, scope: !200)
!210 = !DILocalVariable(name: "name", arg: 3, scope: !200, file: !21, line: 133, type: !30)
!211 = !DILocation(line: 133, column: 18, scope: !200)
!212 = !DILocalVariable(name: "table", arg: 4, scope: !200, file: !21, line: 134, type: !203)
!213 = !DILocation(line: 134, column: 33, scope: !200)
!214 = !DILocalVariable(name: "numEntries", arg: 5, scope: !200, file: !21, line: 136, type: !57)
!215 = !DILocation(line: 136, column: 11, scope: !200)
!216 = !DILocalVariable(name: "func_ptr", scope: !200, file: !21, line: 139, type: !17)
!217 = !DILocation(line: 139, column: 12, scope: !200)
!218 = !DILocalVariable(name: "i", scope: !200, file: !21, line: 140, type: !57)
!219 = !DILocation(line: 140, column: 9, scope: !200)
!220 = !DILocation(line: 142, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !200, file: !21, line: 142, column: 9)
!222 = !DILocation(line: 142, column: 9, scope: !221)
!223 = !DILocation(line: 142, column: 9, scope: !200)
!224 = !DILocation(line: 143, column: 2, scope: !221)
!225 = !DILocation(line: 145, column: 19, scope: !200)
!226 = !DILocation(line: 145, column: 12, scope: !200)
!227 = !DILocation(line: 145, column: 6, scope: !200)
!228 = !DILocation(line: 145, column: 10, scope: !200)
!229 = !DILocation(line: 146, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !200, file: !21, line: 146, column: 9)
!231 = !DILocation(line: 146, column: 10, scope: !230)
!232 = !DILocation(line: 146, column: 9, scope: !200)
!233 = !DILocation(line: 147, column: 2, scope: !230)
!234 = !DILocation(line: 149, column: 23, scope: !200)
!235 = !DILocation(line: 149, column: 16, scope: !200)
!236 = !DILocation(line: 149, column: 14, scope: !200)
!237 = !DILocation(line: 150, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !200, file: !21, line: 150, column: 9)
!239 = !DILocation(line: 150, column: 9, scope: !200)
!240 = !DILocation(line: 151, column: 105, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !21, line: 150, column: 20)
!242 = !DILocation(line: 151, column: 2, scope: !241)
!243 = !DILocation(line: 153, column: 2, scope: !241)
!244 = !DILocation(line: 156, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !200, file: !21, line: 156, column: 5)
!246 = !DILocation(line: 156, column: 10, scope: !245)
!247 = !DILocation(line: 156, column: 17, scope: !248)
!248 = !DILexicalBlockFile(scope: !249, file: !21, discriminator: 1)
!249 = distinct !DILexicalBlock(scope: !245, file: !21, line: 156, column: 5)
!250 = !DILocation(line: 156, column: 21, scope: !248)
!251 = !DILocation(line: 156, column: 19, scope: !248)
!252 = !DILocation(line: 156, column: 5, scope: !248)
!253 = !DILocation(line: 157, column: 40, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !21, line: 156, column: 38)
!255 = !DILocation(line: 157, column: 39, scope: !254)
!256 = !DILocation(line: 157, column: 23, scope: !254)
!257 = !DILocation(line: 157, column: 52, scope: !254)
!258 = !DILocation(line: 157, column: 46, scope: !254)
!259 = !DILocation(line: 157, column: 55, scope: !254)
!260 = !DILocation(line: 157, column: 44, scope: !254)
!261 = !DILocation(line: 157, column: 13, scope: !254)
!262 = !DILocation(line: 157, column: 11, scope: !254)
!263 = !DILocation(line: 158, column: 20, scope: !254)
!264 = !DILocation(line: 158, column: 36, scope: !254)
!265 = !DILocation(line: 158, column: 30, scope: !254)
!266 = !DILocation(line: 158, column: 39, scope: !254)
!267 = !DILocation(line: 158, column: 14, scope: !254)
!268 = !DILocation(line: 158, column: 3, scope: !254)
!269 = !DILocation(line: 158, column: 12, scope: !254)
!270 = !DILocation(line: 159, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !254, file: !21, line: 159, column: 6)
!272 = !DILocation(line: 159, column: 7, scope: !271)
!273 = !DILocation(line: 159, column: 6, scope: !254)
!274 = !DILocation(line: 160, column: 107, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !21, line: 159, column: 18)
!276 = !DILocation(line: 160, column: 118, scope: !275)
!277 = !DILocation(line: 160, column: 112, scope: !275)
!278 = !DILocation(line: 160, column: 121, scope: !275)
!279 = !DILocation(line: 160, column: 6, scope: !275)
!280 = !DILocation(line: 162, column: 6, scope: !275)
!281 = !DILocation(line: 164, column: 5, scope: !254)
!282 = !DILocation(line: 156, column: 33, scope: !283)
!283 = !DILexicalBlockFile(scope: !249, file: !21, discriminator: 2)
!284 = !DILocation(line: 156, column: 5, scope: !283)
!285 = distinct !{!285, !286}
!286 = !DILocation(line: 156, column: 5, scope: !200)
!287 = !DILocation(line: 166, column: 5, scope: !200)
!288 = !DILocation(line: 169, column: 5, scope: !200)
!289 = !DILocation(line: 171, column: 5, scope: !200)
!290 = !DILocation(line: 172, column: 1, scope: !200)
