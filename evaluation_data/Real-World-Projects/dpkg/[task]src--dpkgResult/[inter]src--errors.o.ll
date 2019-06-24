; ModuleID = './[inter]src--errors.o.i'
source_filename = "./[inter]src--errors.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.error_report = type { %struct.error_report*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type { i32, i32, i8, i32, i32, %struct.pkg_list* }
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type opaque

@abort_processing = global i8 0, align 1
@.str = private unnamed_addr constant [40 x i8] c"error processing package %s (--%s):\0A %s\00", align 1
@cipaction = external global %struct.cmdinfo*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"status: %s : %s : %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"error processing archive %s (--%s):\0A %s\00", align 1
@reports = internal global %struct.error_report* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Errors were encountered while processing:\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Processing was halted because there were too many errors.\0A\00", align 1
@nerrs = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"package %s was on hold, processing it anyway as you requested\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"Package %s is on hold, not touching it.  Use --force-hold to override.\0A\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"failed to allocate memory for new entry in list of failed packages: %s\00", align 1
@emergency = internal global %struct.error_report zeroinitializer, align 8
@lastreport = internal global %struct.error_report** @reports, align 8
@errabort = external global i32, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"too many errors, stopping\00", align 1

; Function Attrs: nounwind uwtable
define void @print_error_perpackage(i8*, i8*) #0 !dbg !143 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !151, metadata !152), !dbg !153
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !152), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %5, metadata !156, metadata !152), !dbg !157
  %6 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %6, i8** %5, align 8, !dbg !157
  %7 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0)) #5, !dbg !159
  %8 = load i8*, i8** %5, align 8, !dbg !160
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !161
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 0, !dbg !162
  %11 = load i8*, i8** %10, align 8, !dbg !162
  %12 = load i8*, i8** %3, align 8, !dbg !163
  call void (i8*, ...) @notice(i8* %7, i8* %8, i8* %11, i8* %12), !dbg !164
  %13 = load i8*, i8** %5, align 8, !dbg !166
  %14 = load i8*, i8** %3, align 8, !dbg !167
  call void (i8*, ...) @statusfd_send(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14), !dbg !168
  %15 = load i8*, i8** %5, align 8, !dbg !169
  call void @enqueue_error_report(i8* %15), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @notice(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @statusfd_send(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @enqueue_error_report(i8*) #0 !dbg !172 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.error_report*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !175, metadata !152), !dbg !176
  call void @llvm.dbg.declare(metadata %struct.error_report** %3, metadata !177, metadata !152), !dbg !178
  %4 = call noalias i8* @malloc(i64 16) #5, !dbg !179
  %5 = bitcast i8* %4 to %struct.error_report*, !dbg !179
  store %struct.error_report* %5, %struct.error_report** %3, align 8, !dbg !180
  %6 = load %struct.error_report*, %struct.error_report** %3, align 8, !dbg !181
  %7 = icmp ne %struct.error_report* %6, null, !dbg !181
  br i1 %7, label %13, label %8, !dbg !183

; <label>:8:                                      ; preds = %1
  %9 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !184
  %10 = call i32* @__errno_location() #1, !dbg !186
  %11 = load i32, i32* %10, align 4, !dbg !187
  %12 = call i8* @strerror(i32 %11) #5, !dbg !188
  call void (i8*, ...) @notice(i8* %9, i8* %12), !dbg !190
  store i8 1, i8* @abort_processing, align 1, !dbg !191
  store %struct.error_report* @emergency, %struct.error_report** %3, align 8, !dbg !192
  br label %13, !dbg !193

; <label>:13:                                     ; preds = %8, %1
  %14 = load i8*, i8** %2, align 8, !dbg !194
  %15 = call i8* @m_strdup(i8* %14), !dbg !195
  %16 = load %struct.error_report*, %struct.error_report** %3, align 8, !dbg !196
  %17 = getelementptr inbounds %struct.error_report, %struct.error_report* %16, i32 0, i32 1, !dbg !197
  store i8* %15, i8** %17, align 8, !dbg !198
  %18 = load %struct.error_report*, %struct.error_report** %3, align 8, !dbg !199
  %19 = getelementptr inbounds %struct.error_report, %struct.error_report* %18, i32 0, i32 0, !dbg !200
  store %struct.error_report* null, %struct.error_report** %19, align 8, !dbg !201
  %20 = load %struct.error_report*, %struct.error_report** %3, align 8, !dbg !202
  %21 = load %struct.error_report**, %struct.error_report*** @lastreport, align 8, !dbg !203
  store %struct.error_report* %20, %struct.error_report** %21, align 8, !dbg !204
  %22 = load %struct.error_report*, %struct.error_report** %3, align 8, !dbg !205
  %23 = getelementptr inbounds %struct.error_report, %struct.error_report* %22, i32 0, i32 0, !dbg !206
  store %struct.error_report** %23, %struct.error_report*** @lastreport, align 8, !dbg !207
  %24 = load i32, i32* @nerrs, align 4, !dbg !208
  %25 = add nsw i32 %24, 1, !dbg !208
  store i32 %25, i32* @nerrs, align 4, !dbg !208
  %26 = load i32, i32* @errabort, align 4, !dbg !210
  %27 = icmp slt i32 %24, %26, !dbg !211
  br i1 %27, label %28, label %29, !dbg !212

; <label>:28:                                     ; preds = %13
  br label %31, !dbg !213

; <label>:29:                                     ; preds = %13
  %30 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !215
  call void (i8*, ...) @notice(i8* %30), !dbg !216
  store i8 1, i8* @abort_processing, align 1, !dbg !218
  br label %31, !dbg !219

; <label>:31:                                     ; preds = %29, %28
  ret void, !dbg !220
}

; Function Attrs: nounwind uwtable
define void @print_error_perarchive(i8*, i8*) #0 !dbg !221 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !222, metadata !152), !dbg !223
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !224, metadata !152), !dbg !225
  call void @llvm.dbg.declare(metadata i8** %5, metadata !226, metadata !152), !dbg !227
  %6 = load i8*, i8** %4, align 8, !dbg !228
  store i8* %6, i8** %5, align 8, !dbg !227
  %7 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !229
  %8 = load i8*, i8** %5, align 8, !dbg !230
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !231
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 0, !dbg !232
  %11 = load i8*, i8** %10, align 8, !dbg !232
  %12 = load i8*, i8** %3, align 8, !dbg !233
  call void (i8*, ...) @notice(i8* %7, i8* %8, i8* %11, i8* %12), !dbg !234
  %13 = load i8*, i8** %5, align 8, !dbg !236
  %14 = load i8*, i8** %3, align 8, !dbg !237
  call void (i8*, ...) @statusfd_send(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14), !dbg !238
  %15 = load i8*, i8** %5, align 8, !dbg !239
  call void @enqueue_error_report(i8* %15), !dbg !240
  ret void, !dbg !241
}

; Function Attrs: nounwind uwtable
define i32 @reportbroken_retexitstatus(i32) #0 !dbg !242 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !245, metadata !152), !dbg !246
  %3 = load %struct.error_report*, %struct.error_report** @reports, align 8, !dbg !247
  %4 = icmp ne %struct.error_report* %3, null, !dbg !247
  br i1 %4, label %5, label %25, !dbg !249

; <label>:5:                                      ; preds = %1
  %6 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !250
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !252
  %8 = call i32 @fputs(i8* %6, %struct._IO_FILE* %7), !dbg !253
  br label %9, !dbg !255

; <label>:9:                                      ; preds = %12, %5
  %10 = load %struct.error_report*, %struct.error_report** @reports, align 8, !dbg !256
  %11 = icmp ne %struct.error_report* %10, null, !dbg !257
  br i1 %11, label %12, label %24, !dbg !257

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !258
  %14 = load %struct.error_report*, %struct.error_report** @reports, align 8, !dbg !260
  %15 = getelementptr inbounds %struct.error_report, %struct.error_report* %14, i32 0, i32 1, !dbg !261
  %16 = load i8*, i8** %15, align 8, !dbg !261
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %16), !dbg !262
  %18 = load %struct.error_report*, %struct.error_report** @reports, align 8, !dbg !263
  %19 = getelementptr inbounds %struct.error_report, %struct.error_report* %18, i32 0, i32 1, !dbg !264
  %20 = load i8*, i8** %19, align 8, !dbg !264
  call void @free(i8* %20) #5, !dbg !265
  %21 = load %struct.error_report*, %struct.error_report** @reports, align 8, !dbg !266
  %22 = getelementptr inbounds %struct.error_report, %struct.error_report* %21, i32 0, i32 0, !dbg !267
  %23 = load %struct.error_report*, %struct.error_report** %22, align 8, !dbg !267
  store %struct.error_report* %23, %struct.error_report** @reports, align 8, !dbg !268
  br label %9, !dbg !269, !llvm.loop !271

; <label>:24:                                     ; preds = %9
  br label %25, !dbg !272

; <label>:25:                                     ; preds = %24, %1
  %26 = load i8, i8* @abort_processing, align 1, !dbg !273
  %27 = trunc i8 %26 to i1, !dbg !273
  br i1 %27, label %28, label %32, !dbg !275

; <label>:28:                                     ; preds = %25
  %29 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !276
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !278
  %31 = call i32 @fputs(i8* %29, %struct._IO_FILE* %30), !dbg !279
  br label %32, !dbg !281

; <label>:32:                                     ; preds = %28, %25
  %33 = load i32, i32* @nerrs, align 4, !dbg !282
  %34 = icmp ne i32 %33, 0, !dbg !282
  br i1 %34, label %35, label %36, !dbg !282

; <label>:35:                                     ; preds = %32
  br label %38, !dbg !283

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %2, align 4, !dbg !285
  br label %38, !dbg !287

; <label>:38:                                     ; preds = %36, %35
  %39 = phi i32 [ 1, %35 ], [ %37, %36 ], !dbg !288
  ret i32 %39, !dbg !290
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @skip_due_to_hold(%struct.pkginfo*) #0 !dbg !291 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.pkginfo*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !442, metadata !152), !dbg !443
  %4 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !444
  %5 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %4, i32 0, i32 2, !dbg !446
  %6 = load i32, i32* %5, align 8, !dbg !446
  %7 = icmp ne i32 %6, 2, !dbg !447
  br i1 %7, label %8, label %9, !dbg !448

; <label>:8:                                      ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !449
  br label %20, !dbg !449

; <label>:9:                                      ; preds = %1
  %10 = call zeroext i1 @in_force(i32 32768), !dbg !450
  br i1 %10, label %11, label %15, !dbg !452

; <label>:11:                                     ; preds = %9
  %12 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !453
  %13 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !455
  %14 = call i8* @pkg_name(%struct.pkginfo* %13, i32 1), !dbg !456
  call void (i8*, ...) @notice(i8* %12, i8* %14), !dbg !457
  store i1 false, i1* %2, align 1, !dbg !459
  br label %20, !dbg !459

; <label>:15:                                     ; preds = %9
  %16 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !460
  %17 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !461
  %18 = call i8* @pkg_name(%struct.pkginfo* %17, i32 1), !dbg !462
  %19 = call i32 (i8*, ...) @printf(i8* %16, i8* %18), !dbg !463
  store i1 true, i1* %2, align 1, !dbg !465
  br label %20, !dbg !465

; <label>:20:                                     ; preds = %15, %11, %8
  %21 = load i1, i1* %2, align 1, !dbg !466
  ret i1 %21, !dbg !466
}

declare zeroext i1 @in_force(i32) #2

declare i8* @pkg_name(%struct.pkginfo*, i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @m_strdup(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!140, !141}
!llvm.ident = !{!142}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !123)
!1 = !DIFile(filename: "[inter]src--errors.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !81, !86, !117}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "dep_suggests", value: 0)
!7 = !DIEnumerator(name: "dep_recommends", value: 1)
!8 = !DIEnumerator(name: "dep_depends", value: 2)
!9 = !DIEnumerator(name: "dep_predepends", value: 3)
!10 = !DIEnumerator(name: "dep_breaks", value: 4)
!11 = !DIEnumerator(name: "dep_conflicts", value: 5)
!12 = !DIEnumerator(name: "dep_provides", value: 6)
!13 = !DIEnumerator(name: "dep_replaces", value: 7)
!14 = !DIEnumerator(name: "dep_enhances", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !16, line: 37, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!19 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!20 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!21 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!22 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!23 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!24 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!25 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !27, line: 61, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!30 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!31 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!32 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!33 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!34 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!38 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!39 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!40 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!41 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!42 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!46 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!50 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!51 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!52 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!53 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!54 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!55 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!56 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!60 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!61 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!62 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!63 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!64 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!65 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!66 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_istobe", file: !74, line: 34, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "PKG_ISTOBE_NORMAL", value: 0)
!77 = !DIEnumerator(name: "PKG_ISTOBE_REMOVE", value: 1)
!78 = !DIEnumerator(name: "PKG_ISTOBE_INSTALLNEW", value: 2)
!79 = !DIEnumerator(name: "PKG_ISTOBE_DECONFIGURE", value: 3)
!80 = !DIEnumerator(name: "PKG_ISTOBE_PREINSTALL", value: 4)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_cycle_color", file: !74, line: 47, size: 32, align: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "PKG_CYCLE_WHITE", value: 0)
!84 = !DIEnumerator(name: "PKG_CYCLE_GRAY", value: 1)
!85 = !DIEnumerator(name: "PKG_CYCLE_BLACK", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !87, line: 28, size: 32, align: 32, elements: !88)
!87 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!89 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!90 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!91 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!92 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!93 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!94 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!95 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!96 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!97 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!98 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!99 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!100 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!101 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!102 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!103 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!104 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!105 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!106 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!107 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!108 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!109 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!110 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!111 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!112 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!113 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!114 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!115 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!116 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "pnaw_never", value: 0)
!120 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!121 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!122 = !DIEnumerator(name: "pnaw_always", value: 3)
!123 = !{!124, !127, !135, !137, !138}
!124 = distinct !DIGlobalVariable(name: "abort_processing", scope: !0, file: !125, line: 44, type: !126, isLocal: false, isDefinition: true, variable: i8* @abort_processing)
!125 = !DIFile(filename: "errors.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!126 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!127 = distinct !DIGlobalVariable(name: "emergency", scope: !0, file: !125, line: 55, type: !128, isLocal: true, isDefinition: true, variable: %struct.error_report* @emergency)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_report", file: !125, line: 48, size: 128, align: 64, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !125, line: 49, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !128, file: !125, line: 50, baseType: !133, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!135 = distinct !DIGlobalVariable(name: "lastreport", scope: !0, file: !125, line: 54, type: !136, isLocal: true, isDefinition: true, variable: %struct.error_report*** @lastreport)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!137 = distinct !DIGlobalVariable(name: "reports", scope: !0, file: !125, line: 53, type: !131, isLocal: true, isDefinition: true, variable: %struct.error_report** @reports)
!138 = distinct !DIGlobalVariable(name: "nerrs", scope: !0, file: !125, line: 46, type: !139, isLocal: true, isDefinition: true, variable: i32* @nerrs)
!139 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!140 = !{i32 2, !"Dwarf Version", i32 4}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!143 = distinct !DISubprogram(name: "print_error_perpackage", scope: !125, file: !125, line: 80, type: !144, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !150)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!150 = !{}
!151 = !DILocalVariable(name: "emsg", arg: 1, scope: !143, file: !125, line: 80, type: !146)
!152 = !DIExpression()
!153 = !DILocation(line: 80, column: 36, scope: !143)
!154 = !DILocalVariable(name: "data", arg: 2, scope: !143, file: !125, line: 80, type: !148)
!155 = !DILocation(line: 80, column: 54, scope: !143)
!156 = !DILocalVariable(name: "pkgname", scope: !143, file: !125, line: 82, type: !146)
!157 = !DILocation(line: 82, column: 15, scope: !143)
!158 = !DILocation(line: 82, column: 25, scope: !143)
!159 = !DILocation(line: 84, column: 10, scope: !143)
!160 = !DILocation(line: 85, column: 10, scope: !143)
!161 = !DILocation(line: 85, column: 19, scope: !143)
!162 = !DILocation(line: 85, column: 30, scope: !143)
!163 = !DILocation(line: 85, column: 37, scope: !143)
!164 = !DILocation(line: 84, column: 3, scope: !165)
!165 = !DILexicalBlockFile(scope: !143, file: !125, discriminator: 1)
!166 = !DILocation(line: 87, column: 41, scope: !143)
!167 = !DILocation(line: 87, column: 59, scope: !143)
!168 = !DILocation(line: 87, column: 3, scope: !143)
!169 = !DILocation(line: 89, column: 24, scope: !143)
!170 = !DILocation(line: 89, column: 3, scope: !143)
!171 = !DILocation(line: 90, column: 1, scope: !143)
!172 = distinct !DISubprogram(name: "enqueue_error_report", scope: !125, file: !125, line: 58, type: !173, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !150)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !146}
!175 = !DILocalVariable(name: "arg", arg: 1, scope: !172, file: !125, line: 58, type: !146)
!176 = !DILocation(line: 58, column: 34, scope: !172)
!177 = !DILocalVariable(name: "nr", scope: !172, file: !125, line: 60, type: !131)
!178 = !DILocation(line: 60, column: 24, scope: !172)
!179 = !DILocation(line: 62, column: 8, scope: !172)
!180 = !DILocation(line: 62, column: 6, scope: !172)
!181 = !DILocation(line: 63, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !172, file: !125, line: 63, column: 7)
!183 = !DILocation(line: 63, column: 7, scope: !172)
!184 = !DILocation(line: 64, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !125, line: 63, column: 12)
!186 = !DILocation(line: 65, column: 22, scope: !185)
!187 = !DILocation(line: 65, column: 21, scope: !185)
!188 = !DILocation(line: 65, column: 12, scope: !189)
!189 = !DILexicalBlockFile(scope: !185, file: !125, discriminator: 1)
!190 = !DILocation(line: 64, column: 5, scope: !189)
!191 = !DILocation(line: 66, column: 22, scope: !185)
!192 = !DILocation(line: 67, column: 7, scope: !185)
!193 = !DILocation(line: 68, column: 3, scope: !185)
!194 = !DILocation(line: 69, column: 23, scope: !172)
!195 = !DILocation(line: 69, column: 14, scope: !172)
!196 = !DILocation(line: 69, column: 3, scope: !172)
!197 = !DILocation(line: 69, column: 7, scope: !172)
!198 = !DILocation(line: 69, column: 12, scope: !172)
!199 = !DILocation(line: 70, column: 3, scope: !172)
!200 = !DILocation(line: 70, column: 7, scope: !172)
!201 = !DILocation(line: 70, column: 12, scope: !172)
!202 = !DILocation(line: 71, column: 16, scope: !172)
!203 = !DILocation(line: 71, column: 4, scope: !172)
!204 = !DILocation(line: 71, column: 14, scope: !172)
!205 = !DILocation(line: 72, column: 16, scope: !172)
!206 = !DILocation(line: 72, column: 20, scope: !172)
!207 = !DILocation(line: 72, column: 13, scope: !172)
!208 = !DILocation(line: 74, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !172, file: !125, line: 74, column: 7)
!210 = !DILocation(line: 74, column: 17, scope: !209)
!211 = !DILocation(line: 74, column: 15, scope: !209)
!212 = !DILocation(line: 74, column: 7, scope: !172)
!213 = !DILocation(line: 74, column: 27, scope: !214)
!214 = !DILexicalBlockFile(scope: !209, file: !125, discriminator: 1)
!215 = !DILocation(line: 75, column: 10, scope: !172)
!216 = !DILocation(line: 75, column: 3, scope: !217)
!217 = !DILexicalBlockFile(scope: !172, file: !125, discriminator: 1)
!218 = !DILocation(line: 76, column: 20, scope: !172)
!219 = !DILocation(line: 77, column: 1, scope: !172)
!220 = !DILocation(line: 77, column: 1, scope: !217)
!221 = distinct !DISubprogram(name: "print_error_perarchive", scope: !125, file: !125, line: 93, type: !144, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !150)
!222 = !DILocalVariable(name: "emsg", arg: 1, scope: !221, file: !125, line: 93, type: !146)
!223 = !DILocation(line: 93, column: 36, scope: !221)
!224 = !DILocalVariable(name: "data", arg: 2, scope: !221, file: !125, line: 93, type: !148)
!225 = !DILocation(line: 93, column: 54, scope: !221)
!226 = !DILocalVariable(name: "filename", scope: !221, file: !125, line: 95, type: !146)
!227 = !DILocation(line: 95, column: 15, scope: !221)
!228 = !DILocation(line: 95, column: 26, scope: !221)
!229 = !DILocation(line: 97, column: 10, scope: !221)
!230 = !DILocation(line: 98, column: 10, scope: !221)
!231 = !DILocation(line: 98, column: 20, scope: !221)
!232 = !DILocation(line: 98, column: 31, scope: !221)
!233 = !DILocation(line: 98, column: 38, scope: !221)
!234 = !DILocation(line: 97, column: 3, scope: !235)
!235 = !DILexicalBlockFile(scope: !221, file: !125, discriminator: 1)
!236 = !DILocation(line: 100, column: 41, scope: !221)
!237 = !DILocation(line: 100, column: 60, scope: !221)
!238 = !DILocation(line: 100, column: 3, scope: !221)
!239 = !DILocation(line: 102, column: 24, scope: !221)
!240 = !DILocation(line: 102, column: 3, scope: !221)
!241 = !DILocation(line: 103, column: 1, scope: !221)
!242 = distinct !DISubprogram(name: "reportbroken_retexitstatus", scope: !125, file: !125, line: 106, type: !243, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !150)
!243 = !DISubroutineType(types: !244)
!244 = !{!139, !139}
!245 = !DILocalVariable(name: "ret", arg: 1, scope: !242, file: !125, line: 106, type: !139)
!246 = !DILocation(line: 106, column: 32, scope: !242)
!247 = !DILocation(line: 108, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !125, line: 108, column: 7)
!249 = !DILocation(line: 108, column: 7, scope: !242)
!250 = !DILocation(line: 109, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !125, line: 108, column: 16)
!252 = !DILocation(line: 109, column: 59, scope: !251)
!253 = !DILocation(line: 109, column: 5, scope: !254)
!254 = !DILexicalBlockFile(scope: !251, file: !125, discriminator: 1)
!255 = !DILocation(line: 110, column: 5, scope: !251)
!256 = !DILocation(line: 110, column: 12, scope: !254)
!257 = !DILocation(line: 110, column: 5, scope: !254)
!258 = !DILocation(line: 111, column: 14, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !125, line: 110, column: 21)
!260 = !DILocation(line: 111, column: 29, scope: !259)
!261 = !DILocation(line: 111, column: 38, scope: !259)
!262 = !DILocation(line: 111, column: 7, scope: !259)
!263 = !DILocation(line: 112, column: 12, scope: !259)
!264 = !DILocation(line: 112, column: 21, scope: !259)
!265 = !DILocation(line: 112, column: 7, scope: !259)
!266 = !DILocation(line: 113, column: 16, scope: !259)
!267 = !DILocation(line: 113, column: 25, scope: !259)
!268 = !DILocation(line: 113, column: 14, scope: !259)
!269 = !DILocation(line: 110, column: 5, scope: !270)
!270 = !DILexicalBlockFile(scope: !251, file: !125, discriminator: 2)
!271 = distinct !{!271, !255}
!272 = !DILocation(line: 115, column: 3, scope: !251)
!273 = !DILocation(line: 116, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !242, file: !125, line: 116, column: 7)
!275 = !DILocation(line: 116, column: 7, scope: !242)
!276 = !DILocation(line: 117, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !125, line: 116, column: 25)
!278 = !DILocation(line: 117, column: 75, scope: !277)
!279 = !DILocation(line: 117, column: 5, scope: !280)
!280 = !DILexicalBlockFile(scope: !277, file: !125, discriminator: 1)
!281 = !DILocation(line: 118, column: 3, scope: !277)
!282 = !DILocation(line: 119, column: 10, scope: !242)
!283 = !DILocation(line: 119, column: 10, scope: !284)
!284 = !DILexicalBlockFile(scope: !242, file: !125, discriminator: 1)
!285 = !DILocation(line: 119, column: 22, scope: !286)
!286 = !DILexicalBlockFile(scope: !242, file: !125, discriminator: 2)
!287 = !DILocation(line: 119, column: 10, scope: !286)
!288 = !DILocation(line: 119, column: 10, scope: !289)
!289 = !DILexicalBlockFile(scope: !242, file: !125, discriminator: 3)
!290 = !DILocation(line: 119, column: 3, scope: !289)
!291 = distinct !DISubprogram(name: "skip_due_to_hold", scope: !125, file: !125, line: 123, type: !292, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !150)
!292 = !DISubroutineType(types: !293)
!293 = !{!126, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !296)
!296 = !{!297, !344, !345, !346, !347, !348, !349, !350, !351, !352, !382, !383, !399, !408, !424, !425, !431, !434, !440, !441}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !295, file: !4, line: 196, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !300)
!300 = !{!301, !302, !303, !304, !343}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !4, line: 243, baseType: !298, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !4, line: 244, baseType: !146, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !299, file: !4, line: 245, baseType: !295, size: 3072, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !299, file: !4, line: 249, baseType: !305, size: 128, align: 64, offset: 3200)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !4, line: 246, size: 128, align: 64, elements: !306)
!306 = !{!307, !342}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !305, file: !4, line: 247, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !310)
!310 = !{!311, !319, !320, !321, !322, !323, !332, !339, !340, !341}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !309, file: !4, line: 64, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !314)
!314 = !{!315, !316, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !313, file: !4, line: 57, baseType: !294, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !4, line: 58, baseType: !312, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !313, file: !4, line: 59, baseType: !308, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !309, file: !4, line: 65, baseType: !298, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !4, line: 66, baseType: !308, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !309, file: !4, line: 66, baseType: !308, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !309, file: !4, line: 66, baseType: !308, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !309, file: !4, line: 67, baseType: !324, size: 64, align: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !327)
!327 = !{!328, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !16, line: 49, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !16, line: 50, baseType: !146, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !309, file: !4, line: 68, baseType: !333, size: 192, align: 64, offset: 384)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !334)
!334 = !{!335, !337, !338}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !333, file: !27, line: 44, baseType: !336, size: 32, align: 32)
!336 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !333, file: !27, line: 46, baseType: !146, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !333, file: !27, line: 48, baseType: !146, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !309, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !309, file: !4, line: 70, baseType: !126, size: 8, align: 8, offset: 608)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !309, file: !4, line: 71, baseType: !126, size: 8, align: 8, offset: 616)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !305, file: !4, line: 248, baseType: !308, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !299, file: !4, line: 250, baseType: !139, size: 32, align: 32, offset: 3328)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !295, file: !4, line: 197, baseType: !294, size: 64, align: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !295, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !295, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !295, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !295, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !295, file: !4, line: 204, baseType: !146, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !295, file: !4, line: 205, baseType: !146, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !295, file: !4, line: 206, baseType: !333, size: 192, align: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !295, file: !4, line: 207, baseType: !353, size: 960, align: 64, offset: 576)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !375}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !353, file: !4, line: 108, baseType: !312, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !353, file: !4, line: 110, baseType: !126, size: 8, align: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !353, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !353, file: !4, line: 112, baseType: !324, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !353, file: !4, line: 115, baseType: !146, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !353, file: !4, line: 116, baseType: !146, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !353, file: !4, line: 117, baseType: !146, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !353, file: !4, line: 118, baseType: !146, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !353, file: !4, line: 119, baseType: !146, size: 64, align: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !353, file: !4, line: 120, baseType: !146, size: 64, align: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !353, file: !4, line: 121, baseType: !146, size: 64, align: 64, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !353, file: !4, line: 122, baseType: !333, size: 192, align: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !353, file: !4, line: 123, baseType: !368, size: 64, align: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !4, line: 81, baseType: !368, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !4, line: 82, baseType: !146, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !369, file: !4, line: 83, baseType: !146, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !369, file: !4, line: 84, baseType: !126, size: 8, align: 8, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !353, file: !4, line: 124, baseType: !376, size: 64, align: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !4, line: 75, baseType: !376, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !4, line: 76, baseType: !146, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !4, line: 77, baseType: !146, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !295, file: !4, line: 208, baseType: !353, size: 960, align: 64, offset: 1536)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !295, file: !4, line: 209, baseType: !384, size: 64, align: 64, offset: 2496)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !74, line: 53, size: 256, align: 64, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "istobe", scope: !385, file: !74, line: 54, baseType: !73, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !385, file: !74, line: 57, baseType: !81, size: 32, align: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !385, file: !74, line: 59, baseType: !126, size: 8, align: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "replacingfilesandsaid", scope: !385, file: !74, line: 61, baseType: !139, size: 32, align: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_seen", scope: !385, file: !74, line: 62, baseType: !139, size: 32, align: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "trigprocdeferred", scope: !385, file: !74, line: 65, baseType: !393, size: 64, align: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !395, line: 34, size: 128, align: 64, elements: !396)
!395 = !DIFile(filename: "../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 35, baseType: !393, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !394, file: !395, line: 36, baseType: !294, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !295, file: !4, line: 211, baseType: !400, size: 64, align: 64, offset: 2560)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !402)
!402 = !{!403, !404, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !4, line: 88, baseType: !400, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !4, line: 89, baseType: !146, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !401, file: !4, line: 90, baseType: !146, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !401, file: !4, line: 91, baseType: !146, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !401, file: !4, line: 92, baseType: !146, size: 64, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !295, file: !4, line: 216, baseType: !409, size: 128, align: 64, offset: 2624)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !4, line: 213, size: 128, align: 64, elements: !410)
!410 = !{!411, !423}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !409, file: !4, line: 215, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !414)
!414 = !{!415, !416, !417, !418}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !413, file: !4, line: 143, baseType: !294, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !413, file: !4, line: 143, baseType: !294, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !413, file: !4, line: 144, baseType: !412, size: 64, align: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !413, file: !4, line: 147, baseType: !419, size: 128, align: 64, offset: 192)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !4, line: 145, size: 128, align: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !4, line: 146, baseType: !412, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !4, line: 146, baseType: !412, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !409, file: !4, line: 215, baseType: !412, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !295, file: !4, line: 219, baseType: !412, size: 64, align: 64, offset: 2752)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !295, file: !4, line: 220, baseType: !426, size: 64, align: 64, offset: 2816)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !4, line: 135, baseType: !426, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !4, line: 136, baseType: !146, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !295, file: !4, line: 231, baseType: !432, size: 64, align: 64, offset: 2880)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !295, file: !4, line: 232, baseType: !435, size: 64, align: 64, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !436, line: 86, baseType: !437)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !438, line: 131, baseType: !439)
!438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!439 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !295, file: !4, line: 233, baseType: !126, size: 8, align: 8, offset: 3008)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !295, file: !4, line: 236, baseType: !126, size: 8, align: 8, offset: 3016)
!442 = !DILocalVariable(name: "pkg", arg: 1, scope: !291, file: !125, line: 123, type: !294)
!443 = !DILocation(line: 123, column: 34, scope: !291)
!444 = !DILocation(line: 125, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !291, file: !125, line: 125, column: 7)
!446 = !DILocation(line: 125, column: 12, scope: !445)
!447 = !DILocation(line: 125, column: 17, scope: !445)
!448 = !DILocation(line: 125, column: 7, scope: !291)
!449 = !DILocation(line: 126, column: 5, scope: !445)
!450 = !DILocation(line: 127, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !291, file: !125, line: 127, column: 7)
!452 = !DILocation(line: 127, column: 7, scope: !291)
!453 = !DILocation(line: 128, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !125, line: 127, column: 29)
!455 = !DILocation(line: 129, column: 21, scope: !454)
!456 = !DILocation(line: 129, column: 12, scope: !454)
!457 = !DILocation(line: 128, column: 5, scope: !458)
!458 = !DILexicalBlockFile(scope: !454, file: !125, discriminator: 1)
!459 = !DILocation(line: 130, column: 5, scope: !454)
!460 = !DILocation(line: 132, column: 10, scope: !291)
!461 = !DILocation(line: 133, column: 19, scope: !291)
!462 = !DILocation(line: 133, column: 10, scope: !291)
!463 = !DILocation(line: 132, column: 3, scope: !464)
!464 = !DILexicalBlockFile(scope: !291, file: !125, discriminator: 1)
!465 = !DILocation(line: 134, column: 3, scope: !291)
!466 = !DILocation(line: 135, column: 1, scope: !291)
