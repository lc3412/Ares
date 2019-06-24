; ModuleID = './[inter]src--update.o.i'
source_filename = "./[inter]src--update.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
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

@cipaction = external global %struct.cmdinfo*, align 8
@.str = private unnamed_addr constant [24 x i8] c"--%s takes no arguments\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"--%s takes at most one Packages-file argument\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"update.c\00", align 1
@__func__.updateavailable = private unnamed_addr constant [16 x i8] c"updateavailable\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown action '%d'\00", align 1
@f_noact = external global i32, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"unable to access dpkg database directory '%s' for bulk available update\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"required write access to dpkg database directory '%s' for bulk available update\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Replacing available packages info, using %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Updating available packages info, using %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Information about %d package was updated.\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Information about %d packages was updated.\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"obsolete '--%s' option; unavailable packages are automatically cleaned up\00", align 1

; Function Attrs: nounwind uwtable
define i32 @updateavailable(i8**) #0 !dbg !76 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !87, metadata !88), !dbg !89
  call void @llvm.dbg.declare(metadata i8** %3, metadata !90, metadata !88), !dbg !91
  %7 = load i8**, i8*** %2, align 8, !dbg !92
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !92
  %9 = load i8*, i8** %8, align 8, !dbg !92
  store i8* %9, i8** %3, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i8** %4, metadata !93, metadata !88), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %5, metadata !96, metadata !88), !dbg !97
  store i32 0, i32* %5, align 4, !dbg !97
  call void @modstatdb_init(), !dbg !98
  %10 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !99
  %11 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %10, i32 0, i32 6, !dbg !100
  %12 = load i32, i32* %11, align 8, !dbg !100
  switch i32 %12, label %41 [
    i32 39, label %13
    i32 40, label %22
    i32 41, label %22
  ], !dbg !101

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8, !dbg !102
  %15 = icmp ne i8* %14, null, !dbg !102
  br i1 %15, label %16, label %21, !dbg !105

; <label>:16:                                     ; preds = %13
  %17 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6, !dbg !106
  %18 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !108
  %19 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %18, i32 0, i32 0, !dbg !109
  %20 = load i8*, i8** %19, align 8, !dbg !109
  call void (i8*, ...) @badusage(i8* %17, i8* %20) #7, !dbg !110
  unreachable, !dbg !112

; <label>:21:                                     ; preds = %13
  br label %45, !dbg !113

; <label>:22:                                     ; preds = %1, %1
  %23 = load i8*, i8** %3, align 8, !dbg !114
  %24 = icmp eq i8* %23, null, !dbg !116
  br i1 %24, label %25, label %26, !dbg !117

; <label>:25:                                     ; preds = %22
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8, !dbg !118
  br label %40, !dbg !119

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %3, align 8, !dbg !120
  %28 = icmp ne i8* %27, null, !dbg !120
  br i1 %28, label %29, label %39, !dbg !122

; <label>:29:                                     ; preds = %26
  %30 = load i8**, i8*** %2, align 8, !dbg !123
  %31 = getelementptr inbounds i8*, i8** %30, i64 1, !dbg !123
  %32 = load i8*, i8** %31, align 8, !dbg !123
  %33 = icmp ne i8* %32, null, !dbg !123
  br i1 %33, label %34, label %39, !dbg !125

; <label>:34:                                     ; preds = %29
  %35 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !126
  %36 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !127
  %37 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %36, i32 0, i32 0, !dbg !128
  %38 = load i8*, i8** %37, align 8, !dbg !128
  call void (i8*, ...) @badusage(i8* %35, i8* %38) #7, !dbg !129
  unreachable, !dbg !130

; <label>:39:                                     ; preds = %29, %26
  br label %40

; <label>:40:                                     ; preds = %39, %25
  br label %45, !dbg !131

; <label>:41:                                     ; preds = %1
  %42 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !132
  %43 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %42, i32 0, i32 6, !dbg !133
  %44 = load i32, i32* %43, align 8, !dbg !133
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.updateavailable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %44) #7, !dbg !134
  unreachable, !dbg !134

; <label>:45:                                     ; preds = %40, %21
  %46 = load i32, i32* @f_noact, align 4, !dbg !135
  %47 = icmp ne i32 %46, 0, !dbg !135
  br i1 %47, label %64, label %48, !dbg !137

; <label>:48:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i8** %6, metadata !138, metadata !88), !dbg !140
  %49 = call i8* @dpkg_db_get_dir(), !dbg !141
  store i8* %49, i8** %6, align 8, !dbg !140
  %50 = load i8*, i8** %6, align 8, !dbg !142
  %51 = call i32 @access(i8* %50, i32 2) #6, !dbg !144
  %52 = icmp ne i32 %51, 0, !dbg !144
  br i1 %52, label %53, label %63, !dbg !145

; <label>:53:                                     ; preds = %48
  %54 = call i32* @__errno_location() #1, !dbg !146
  %55 = load i32, i32* %54, align 4, !dbg !149
  %56 = icmp ne i32 %55, 13, !dbg !150
  br i1 %56, label %57, label %60, !dbg !151

; <label>:57:                                     ; preds = %53
  %58 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !152
  %59 = load i8*, i8** %6, align 8, !dbg !153
  call void (i8*, ...) @ohshite(i8* %58, i8* %59) #7, !dbg !154
  unreachable, !dbg !156

; <label>:60:                                     ; preds = %53
  %61 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !157
  %62 = load i8*, i8** %6, align 8, !dbg !158
  call void (i8*, ...) @ohshit(i8* %61, i8* %62) #7, !dbg !159
  unreachable, !dbg !160

; <label>:63:                                     ; preds = %48
  call void @modstatdb_lock(), !dbg !161
  br label %64, !dbg !162

; <label>:64:                                     ; preds = %63, %45
  %65 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !163
  %66 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %65, i32 0, i32 6, !dbg !164
  %67 = load i32, i32* %66, align 8, !dbg !164
  switch i32 %67, label %77 [
    i32 40, label %68
    i32 41, label %72
    i32 39, label %76
  ], !dbg !165

; <label>:68:                                     ; preds = %64
  %69 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !166
  %70 = load i8*, i8** %3, align 8, !dbg !168
  %71 = call i32 (i8*, ...) @printf(i8* %69, i8* %70), !dbg !169
  br label %81, !dbg !171

; <label>:72:                                     ; preds = %64
  %73 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !172
  %74 = load i8*, i8** %3, align 8, !dbg !173
  %75 = call i32 (i8*, ...) @printf(i8* %73, i8* %74), !dbg !174
  br label %81, !dbg !175

; <label>:76:                                     ; preds = %64
  br label %81, !dbg !176

; <label>:77:                                     ; preds = %64
  %78 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !177
  %79 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %78, i32 0, i32 6, !dbg !178
  %80 = load i32, i32* %79, align 8, !dbg !178
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.updateavailable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %80) #7, !dbg !179
  unreachable, !dbg !179

; <label>:81:                                     ; preds = %76, %72, %68
  %82 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)), !dbg !180
  store i8* %82, i8** %4, align 8, !dbg !181
  %83 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !182
  %84 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %83, i32 0, i32 6, !dbg !184
  %85 = load i32, i32* %84, align 8, !dbg !184
  %86 = icmp eq i32 %85, 41, !dbg !185
  br i1 %86, label %87, label %90, !dbg !186

; <label>:87:                                     ; preds = %81
  %88 = load i8*, i8** %4, align 8, !dbg !187
  %89 = call i32 @parsedb(i8* %88, i32 582, %struct.pkginfo** null), !dbg !188
  br label %90, !dbg !188

; <label>:90:                                     ; preds = %87, %81
  %91 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !189
  %92 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %91, i32 0, i32 6, !dbg !191
  %93 = load i32, i32* %92, align 8, !dbg !191
  %94 = icmp ne i32 %93, 39, !dbg !192
  br i1 %94, label %95, label %100, !dbg !193

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %3, align 8, !dbg !194
  %97 = call i32 @parsedb(i8* %96, i32 870, %struct.pkginfo** null), !dbg !195
  %98 = load i32, i32* %5, align 4, !dbg !196
  %99 = add nsw i32 %98, %97, !dbg !196
  store i32 %99, i32* %5, align 4, !dbg !196
  br label %100, !dbg !197

; <label>:100:                                    ; preds = %95, %90
  %101 = load i32, i32* @f_noact, align 4, !dbg !198
  %102 = icmp ne i32 %101, 0, !dbg !198
  br i1 %102, label %105, label %103, !dbg !200

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %4, align 8, !dbg !201
  call void @writedb(i8* %104, i32 1), !dbg !203
  call void @modstatdb_unlock(), !dbg !204
  br label %105, !dbg !205

; <label>:105:                                    ; preds = %103, %100
  %106 = load i8*, i8** %4, align 8, !dbg !206
  call void @free(i8* %106) #6, !dbg !207
  %107 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !208
  %108 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %107, i32 0, i32 6, !dbg !210
  %109 = load i32, i32* %108, align 8, !dbg !210
  %110 = icmp ne i32 %109, 39, !dbg !211
  br i1 %110, label %111, label %117, !dbg !212

; <label>:111:                                    ; preds = %105
  %112 = load i32, i32* %5, align 4, !dbg !213
  %113 = sext i32 %112 to i64, !dbg !213
  %114 = call i8* @ngettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i64 %113) #6, !dbg !214
  %115 = load i32, i32* %5, align 4, !dbg !215
  %116 = call i32 (i8*, ...) @printf(i8* %114, i32 %115), !dbg !216
  br label %117, !dbg !218

; <label>:117:                                    ; preds = %111, %105
  call void @modstatdb_done(), !dbg !219
  ret i32 0, !dbg !220
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @modstatdb_init() #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

declare i8* @dpkg_db_get_dir() #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #3

declare void @modstatdb_lock() #2

declare i32 @printf(i8*, ...) #2

declare i8* @dpkg_db_get_path(i8*) #2

declare i32 @parsedb(i8*, i32, %struct.pkginfo**) #2

declare void @writedb(i8*, i32) #2

declare void @modstatdb_unlock() #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare void @modstatdb_done() #2

; Function Attrs: nounwind uwtable
define i32 @forgetold(i8**) #0 !dbg !221 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !222, metadata !88), !dbg !223
  %3 = load i8**, i8*** %2, align 8, !dbg !224
  %4 = load i8*, i8** %3, align 8, !dbg !226
  %5 = icmp ne i8* %4, null, !dbg !226
  br i1 %5, label %6, label %11, !dbg !227

; <label>:6:                                      ; preds = %1
  %7 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #6, !dbg !228
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !229
  %9 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %8, i32 0, i32 0, !dbg !230
  %10 = load i8*, i8** %9, align 8, !dbg !230
  call void (i8*, ...) @badusage(i8* %7, i8* %10) #7, !dbg !231
  unreachable, !dbg !233

; <label>:11:                                     ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !234
  %13 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !235
  %14 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %13, i32 0, i32 0, !dbg !236
  %15 = load i8*, i8** %14, align 8, !dbg !236
  call void (i8*, ...) @warning(i8* %12, i8* %15), !dbg !237
  ret i32 0, !dbg !239
}

declare void @warning(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !71)
!1 = !DIFile(filename: "[inter]src--update.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !49, !67}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !4, line: 68, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "main.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!6 = !DIEnumerator(name: "act_unset", value: 0)
!7 = !DIEnumerator(name: "act_unpack", value: 1)
!8 = !DIEnumerator(name: "act_configure", value: 2)
!9 = !DIEnumerator(name: "act_install", value: 3)
!10 = !DIEnumerator(name: "act_triggers", value: 4)
!11 = !DIEnumerator(name: "act_remove", value: 5)
!12 = !DIEnumerator(name: "act_purge", value: 6)
!13 = !DIEnumerator(name: "act_verify", value: 7)
!14 = !DIEnumerator(name: "act_commandfd", value: 8)
!15 = !DIEnumerator(name: "act_status", value: 9)
!16 = !DIEnumerator(name: "act_listpackages", value: 10)
!17 = !DIEnumerator(name: "act_listfiles", value: 11)
!18 = !DIEnumerator(name: "act_searchfiles", value: 12)
!19 = !DIEnumerator(name: "act_controlpath", value: 13)
!20 = !DIEnumerator(name: "act_controllist", value: 14)
!21 = !DIEnumerator(name: "act_controlshow", value: 15)
!22 = !DIEnumerator(name: "act_cmpversions", value: 16)
!23 = !DIEnumerator(name: "act_arch_add", value: 17)
!24 = !DIEnumerator(name: "act_arch_remove", value: 18)
!25 = !DIEnumerator(name: "act_printarch", value: 19)
!26 = !DIEnumerator(name: "act_printforeignarches", value: 20)
!27 = !DIEnumerator(name: "act_assertpredep", value: 21)
!28 = !DIEnumerator(name: "act_assertepoch", value: 22)
!29 = !DIEnumerator(name: "act_assertlongfilenames", value: 23)
!30 = !DIEnumerator(name: "act_assertmulticonrep", value: 24)
!31 = !DIEnumerator(name: "act_assertmultiarch", value: 25)
!32 = !DIEnumerator(name: "act_assertverprovides", value: 26)
!33 = !DIEnumerator(name: "act_validate_pkgname", value: 27)
!34 = !DIEnumerator(name: "act_validate_trigname", value: 28)
!35 = !DIEnumerator(name: "act_validate_archname", value: 29)
!36 = !DIEnumerator(name: "act_validate_version", value: 30)
!37 = !DIEnumerator(name: "act_audit", value: 31)
!38 = !DIEnumerator(name: "act_unpackchk", value: 32)
!39 = !DIEnumerator(name: "act_predeppackage", value: 33)
!40 = !DIEnumerator(name: "act_getselections", value: 34)
!41 = !DIEnumerator(name: "act_setselections", value: 35)
!42 = !DIEnumerator(name: "act_clearselections", value: 36)
!43 = !DIEnumerator(name: "act_avail", value: 37)
!44 = !DIEnumerator(name: "act_printavail", value: 38)
!45 = !DIEnumerator(name: "act_avclear", value: 39)
!46 = !DIEnumerator(name: "act_avreplace", value: 40)
!47 = !DIEnumerator(name: "act_avmerge", value: 41)
!48 = !DIEnumerator(name: "act_forgetold", value: 42)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !50, line: 328, size: 32, align: 32, elements: !51)
!50 = !DIFile(filename: "../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!52 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!53 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!54 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!55 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!56 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!57 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!58 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!59 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!60 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!61 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!62 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!63 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!64 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!65 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!66 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writedb_flags", file: !50, line: 445, size: 32, align: 32, elements: !68)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "wdb_dump_available", value: 1)
!70 = !DIEnumerator(name: "wdb_must_sync", value: 2)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!73 = !{i32 2, !"Dwarf Version", i32 4}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "updateavailable", scope: !77, file: !77, line: 38, type: !78, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !86)
!77 = !DIFile(filename: "update.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !81}
!80 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !{}
!87 = !DILocalVariable(name: "argv", arg: 1, scope: !76, file: !77, line: 38, type: !81)
!88 = !DIExpression()
!89 = !DILocation(line: 38, column: 36, scope: !76)
!90 = !DILocalVariable(name: "sourcefile", scope: !76, file: !77, line: 40, type: !83)
!91 = !DILocation(line: 40, column: 15, scope: !76)
!92 = !DILocation(line: 40, column: 27, scope: !76)
!93 = !DILocalVariable(name: "availfile", scope: !76, file: !77, line: 41, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!95 = !DILocation(line: 41, column: 9, scope: !76)
!96 = !DILocalVariable(name: "count", scope: !76, file: !77, line: 42, type: !80)
!97 = !DILocation(line: 42, column: 7, scope: !76)
!98 = !DILocation(line: 44, column: 3, scope: !76)
!99 = !DILocation(line: 46, column: 11, scope: !76)
!100 = !DILocation(line: 46, column: 22, scope: !76)
!101 = !DILocation(line: 46, column: 3, scope: !76)
!102 = !DILocation(line: 48, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !77, line: 48, column: 9)
!104 = distinct !DILexicalBlock(scope: !76, file: !77, line: 46, column: 31)
!105 = !DILocation(line: 48, column: 9, scope: !104)
!106 = !DILocation(line: 48, column: 30, scope: !107)
!107 = !DILexicalBlockFile(scope: !103, file: !77, discriminator: 1)
!108 = !DILocation(line: 48, column: 65, scope: !107)
!109 = !DILocation(line: 48, column: 76, scope: !107)
!110 = !DILocation(line: 48, column: 21, scope: !111)
!111 = !DILexicalBlockFile(scope: !107, file: !77, discriminator: 2)
!112 = !DILocation(line: 48, column: 21, scope: !107)
!113 = !DILocation(line: 49, column: 5, scope: !104)
!114 = !DILocation(line: 51, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !77, line: 51, column: 9)
!116 = !DILocation(line: 51, column: 20, scope: !115)
!117 = !DILocation(line: 51, column: 9, scope: !104)
!118 = !DILocation(line: 52, column: 18, scope: !115)
!119 = !DILocation(line: 52, column: 7, scope: !115)
!120 = !DILocation(line: 53, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !77, line: 53, column: 14)
!122 = !DILocation(line: 53, column: 25, scope: !121)
!123 = !DILocation(line: 53, column: 28, scope: !124)
!124 = !DILexicalBlockFile(scope: !121, file: !77, discriminator: 1)
!125 = !DILocation(line: 53, column: 14, scope: !124)
!126 = !DILocation(line: 54, column: 16, scope: !121)
!127 = !DILocation(line: 55, column: 16, scope: !121)
!128 = !DILocation(line: 55, column: 27, scope: !121)
!129 = !DILocation(line: 54, column: 7, scope: !124)
!130 = !DILocation(line: 54, column: 7, scope: !121)
!131 = !DILocation(line: 56, column: 5, scope: !104)
!132 = !DILocation(line: 58, column: 67, scope: !104)
!133 = !DILocation(line: 58, column: 78, scope: !104)
!134 = !DILocation(line: 58, column: 5, scope: !104)
!135 = !DILocation(line: 61, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !76, file: !77, line: 61, column: 7)
!137 = !DILocation(line: 61, column: 7, scope: !76)
!138 = !DILocalVariable(name: "dbdir", scope: !139, file: !77, line: 62, type: !83)
!139 = distinct !DILexicalBlock(scope: !136, file: !77, line: 61, column: 17)
!140 = !DILocation(line: 62, column: 17, scope: !139)
!141 = !DILocation(line: 62, column: 25, scope: !139)
!142 = !DILocation(line: 64, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !77, line: 64, column: 9)
!144 = !DILocation(line: 64, column: 9, scope: !143)
!145 = !DILocation(line: 64, column: 9, scope: !139)
!146 = !DILocation(line: 65, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !77, line: 65, column: 10)
!148 = distinct !DILexicalBlock(scope: !143, file: !77, line: 64, column: 29)
!149 = !DILocation(line: 65, column: 11, scope: !147)
!150 = !DILocation(line: 65, column: 16, scope: !147)
!151 = !DILocation(line: 65, column: 10, scope: !148)
!152 = !DILocation(line: 66, column: 17, scope: !147)
!153 = !DILocation(line: 67, column: 17, scope: !147)
!154 = !DILocation(line: 66, column: 9, scope: !155)
!155 = !DILexicalBlockFile(scope: !147, file: !77, discriminator: 1)
!156 = !DILocation(line: 66, column: 9, scope: !147)
!157 = !DILocation(line: 69, column: 16, scope: !147)
!158 = !DILocation(line: 70, column: 16, scope: !147)
!159 = !DILocation(line: 69, column: 9, scope: !155)
!160 = !DILocation(line: 69, column: 9, scope: !147)
!161 = !DILocation(line: 72, column: 5, scope: !139)
!162 = !DILocation(line: 73, column: 3, scope: !139)
!163 = !DILocation(line: 75, column: 11, scope: !76)
!164 = !DILocation(line: 75, column: 22, scope: !76)
!165 = !DILocation(line: 75, column: 3, scope: !76)
!166 = !DILocation(line: 77, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !76, file: !77, line: 75, column: 31)
!168 = !DILocation(line: 77, column: 70, scope: !167)
!169 = !DILocation(line: 77, column: 5, scope: !170)
!170 = !DILexicalBlockFile(scope: !167, file: !77, discriminator: 1)
!171 = !DILocation(line: 78, column: 5, scope: !167)
!172 = !DILocation(line: 80, column: 12, scope: !167)
!173 = !DILocation(line: 80, column: 69, scope: !167)
!174 = !DILocation(line: 80, column: 5, scope: !170)
!175 = !DILocation(line: 81, column: 5, scope: !167)
!176 = !DILocation(line: 83, column: 5, scope: !167)
!177 = !DILocation(line: 85, column: 67, scope: !167)
!178 = !DILocation(line: 85, column: 78, scope: !167)
!179 = !DILocation(line: 85, column: 5, scope: !167)
!180 = !DILocation(line: 88, column: 15, scope: !76)
!181 = !DILocation(line: 88, column: 13, scope: !76)
!182 = !DILocation(line: 90, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !76, file: !77, line: 90, column: 7)
!184 = !DILocation(line: 90, column: 18, scope: !183)
!185 = !DILocation(line: 90, column: 26, scope: !183)
!186 = !DILocation(line: 90, column: 7, scope: !76)
!187 = !DILocation(line: 91, column: 13, scope: !183)
!188 = !DILocation(line: 91, column: 5, scope: !183)
!189 = !DILocation(line: 93, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !76, file: !77, line: 93, column: 7)
!191 = !DILocation(line: 93, column: 18, scope: !190)
!192 = !DILocation(line: 93, column: 26, scope: !190)
!193 = !DILocation(line: 93, column: 7, scope: !76)
!194 = !DILocation(line: 94, column: 22, scope: !190)
!195 = !DILocation(line: 94, column: 14, scope: !190)
!196 = !DILocation(line: 94, column: 11, scope: !190)
!197 = !DILocation(line: 94, column: 5, scope: !190)
!198 = !DILocation(line: 98, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !76, file: !77, line: 98, column: 7)
!200 = !DILocation(line: 98, column: 7, scope: !76)
!201 = !DILocation(line: 99, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !77, line: 98, column: 17)
!203 = !DILocation(line: 99, column: 5, scope: !202)
!204 = !DILocation(line: 100, column: 5, scope: !202)
!205 = !DILocation(line: 101, column: 3, scope: !202)
!206 = !DILocation(line: 103, column: 8, scope: !76)
!207 = !DILocation(line: 103, column: 3, scope: !76)
!208 = !DILocation(line: 105, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !76, file: !77, line: 105, column: 7)
!210 = !DILocation(line: 105, column: 18, scope: !209)
!211 = !DILocation(line: 105, column: 26, scope: !209)
!212 = !DILocation(line: 105, column: 7, scope: !76)
!213 = !DILocation(line: 106, column: 116, scope: !209)
!214 = !DILocation(line: 106, column: 12, scope: !209)
!215 = !DILocation(line: 107, column: 71, scope: !209)
!216 = !DILocation(line: 106, column: 5, scope: !217)
!217 = !DILexicalBlockFile(scope: !209, file: !77, discriminator: 1)
!218 = !DILocation(line: 106, column: 5, scope: !209)
!219 = !DILocation(line: 109, column: 3, scope: !76)
!220 = !DILocation(line: 111, column: 3, scope: !76)
!221 = distinct !DISubprogram(name: "forgetold", scope: !77, file: !77, line: 115, type: !78, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !86)
!222 = !DILocalVariable(name: "argv", arg: 1, scope: !221, file: !77, line: 115, type: !81)
!223 = !DILocation(line: 115, column: 30, scope: !221)
!224 = !DILocation(line: 117, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !77, line: 117, column: 7)
!226 = !DILocation(line: 117, column: 7, scope: !225)
!227 = !DILocation(line: 117, column: 7, scope: !221)
!228 = !DILocation(line: 118, column: 14, scope: !225)
!229 = !DILocation(line: 118, column: 50, scope: !225)
!230 = !DILocation(line: 118, column: 61, scope: !225)
!231 = !DILocation(line: 118, column: 5, scope: !232)
!232 = !DILexicalBlockFile(scope: !225, file: !77, discriminator: 1)
!233 = !DILocation(line: 118, column: 5, scope: !225)
!234 = !DILocation(line: 120, column: 11, scope: !221)
!235 = !DILocation(line: 121, column: 11, scope: !221)
!236 = !DILocation(line: 121, column: 22, scope: !221)
!237 = !DILocation(line: 120, column: 3, scope: !238)
!238 = !DILexicalBlockFile(scope: !221, file: !77, discriminator: 1)
!239 = !DILocation(line: 123, column: 3, scope: !221)
