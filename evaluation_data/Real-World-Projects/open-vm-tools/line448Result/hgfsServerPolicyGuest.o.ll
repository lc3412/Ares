; ModuleID = './hgfsServerPolicyGuest.o.i'
source_filename = "./hgfsServerPolicyGuest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsServerPolicyState = type { %struct.DblLnkLst_Links }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsServerResEnumCallbacks = type { i8* ()*, i8 (i8*, i8**, i64*, i8*)*, i8 (i8*)* }
%struct.HgfsSharedFolder = type { %struct.DblLnkLst_Links, i8*, i8*, i8*, i64, i64, i64, i8, i8, i32, i32 }
%struct.State = type { %struct.DblLnkLst_Links* }

@myState = internal global %struct.HgfsServerPolicyState zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s:%s:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hgfsd\00", align 1
@__FUNCTION__.HgfsServerPolicy_Init = private unnamed_addr constant [22 x i8] c"HgfsServerPolicy_Init\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"HgfsServerPolicy_Init: memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__FUNCTION__.HgfsServerPolicy_GetSharePath = private unnamed_addr constant [30 x i8] c"HgfsServerPolicy_GetSharePath\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"HgfsServerPolicy_GetSharePath: No matching share name\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"HgfsServerPolicy_GetSharePath: Read access denied\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"HgfsServerPolicy_GetSharePath: Write access denied\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"HgfsServerPolicy_GetSharePath: Read/write access denied\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"HgfsServerPolicy_GetSharePath: Invalid mode\0A\00", align 1
@__FUNCTION__.HgfsServerPolicy_ProcessCPName = private unnamed_addr constant [31 x i8] c"HgfsServerPolicy_ProcessCPName\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: No matching share name\0A\00", align 1
@__FUNCTION__.HgfsServerPolicy_GetShareOptions = private unnamed_addr constant [33 x i8] c"HgfsServerPolicy_GetShareOptions\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"HgfsServerPolicy_GetShareOptions: get first component failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"HgfsServerPolicy_GetShareOptions: No matching share name.\0A\00", align 1
@__FUNCTION__.HgfsServerPolicy_GetShareMode = private unnamed_addr constant [30 x i8] c"HgfsServerPolicy_GetShareMode\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"HgfsServerPolicy_GetShareMode: No matching share name\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"HgfsServerPolicy_GetShareMode: Invalid access mode\0A\00", align 1
@__FUNCTION__.HgfsServerPolicyEnumSharesInit = private unnamed_addr constant [31 x i8] c"HgfsServerPolicyEnumSharesInit\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"HgfsServerPolicyEnumSharesInit: couldn't allocate state\0A\00", align 1
@__FUNCTION__.HgfsServerPolicyEnumSharesGet = private unnamed_addr constant [30 x i8] c"HgfsServerPolicyEnumSharesGet\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"HgfsServerPolicyEnumSharesGet: Share name is \22%s\22\0A\00", align 1
@__FUNCTION__.HgfsServerPolicyGetShare = private unnamed_addr constant [25 x i8] c"HgfsServerPolicyGetShare\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"HgfsServerPolicyGetShare: couldn't allocate tempName\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerPolicy_Init(void (%struct.DblLnkLst_Links*)*, %struct.HgfsServerResEnumCallbacks*) #0 !dbg !86 {
  %3 = alloca i8, align 1
  %4 = alloca void (%struct.DblLnkLst_Links*)*, align 8
  %5 = alloca %struct.HgfsServerResEnumCallbacks*, align 8
  %6 = alloca %struct.HgfsSharedFolder*, align 8
  store void (%struct.DblLnkLst_Links*)* %0, void (%struct.DblLnkLst_Links*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (%struct.DblLnkLst_Links*)** %4, metadata !115, metadata !116), !dbg !117
  store %struct.HgfsServerResEnumCallbacks* %1, %struct.HgfsServerResEnumCallbacks** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerResEnumCallbacks** %5, metadata !118, metadata !116), !dbg !119
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %6, metadata !120, metadata !116), !dbg !121
  call void @DblLnkLst_Init(%struct.DblLnkLst_Links* getelementptr inbounds (%struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* @myState, i32 0, i32 0)), !dbg !122
  %7 = call noalias i8* @malloc(i64 80) #7, !dbg !123
  %8 = bitcast i8* %7 to %struct.HgfsSharedFolder*, !dbg !124
  store %struct.HgfsSharedFolder* %8, %struct.HgfsSharedFolder** %6, align 8, !dbg !125
  %9 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !126
  %10 = icmp ne %struct.HgfsSharedFolder* %9, null, !dbg !126
  br i1 %10, label %14, label %11, !dbg !128

; <label>:11:                                     ; preds = %2
  br label %12, !dbg !129, !llvm.loop !131

; <label>:12:                                     ; preds = %11
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsServerPolicy_Init, i32 0, i32 0)), !dbg !132
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !137
  br label %13, !dbg !139

; <label>:13:                                     ; preds = %12
  store i8 0, i8* %3, align 1, !dbg !140
  br label %47, !dbg !140

; <label>:14:                                     ; preds = %2
  %15 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !141
  %16 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %15, i32 0, i32 0, !dbg !142
  call void @DblLnkLst_Init(%struct.DblLnkLst_Links* %16), !dbg !143
  %17 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !144
  %18 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %17, i32 0, i32 2, !dbg !145
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8, !dbg !146
  %19 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !147
  %20 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %19, i32 0, i32 1, !dbg !148
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %20, align 8, !dbg !149
  %21 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !150
  %22 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %21, i32 0, i32 7, !dbg !151
  store i8 1, i8* %22, align 8, !dbg !152
  %23 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !153
  %24 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %23, i32 0, i32 8, !dbg !154
  store i8 1, i8* %24, align 1, !dbg !155
  %25 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !156
  %26 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %25, i32 0, i32 2, !dbg !157
  %27 = load i8*, i8** %26, align 8, !dbg !157
  %28 = call i64 @strlen(i8* %27) #8, !dbg !158
  %29 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !159
  %30 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %29, i32 0, i32 6, !dbg !160
  store i64 %28, i64* %30, align 8, !dbg !161
  %31 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !162
  %32 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %31, i32 0, i32 1, !dbg !163
  %33 = load i8*, i8** %32, align 8, !dbg !163
  %34 = call i64 @strlen(i8* %33) #8, !dbg !164
  %35 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !165
  %36 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %35, i32 0, i32 5, !dbg !166
  store i64 %34, i64* %36, align 8, !dbg !167
  %37 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !168
  %38 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %37, i32 0, i32 10, !dbg !169
  store i32 -1, i32* %38, align 8, !dbg !170
  %39 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %6, align 8, !dbg !171
  %40 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %39, i32 0, i32 0, !dbg !172
  call void @DblLnkLst_LinkLast(%struct.DblLnkLst_Links* getelementptr inbounds (%struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* @myState, i32 0, i32 0), %struct.DblLnkLst_Links* %40), !dbg !173
  %41 = load %struct.HgfsServerResEnumCallbacks*, %struct.HgfsServerResEnumCallbacks** %5, align 8, !dbg !174
  %42 = getelementptr inbounds %struct.HgfsServerResEnumCallbacks, %struct.HgfsServerResEnumCallbacks* %41, i32 0, i32 0, !dbg !175
  store i8* ()* @HgfsServerPolicyEnumSharesInit, i8* ()** %42, align 8, !dbg !176
  %43 = load %struct.HgfsServerResEnumCallbacks*, %struct.HgfsServerResEnumCallbacks** %5, align 8, !dbg !177
  %44 = getelementptr inbounds %struct.HgfsServerResEnumCallbacks, %struct.HgfsServerResEnumCallbacks* %43, i32 0, i32 1, !dbg !178
  store i8 (i8*, i8**, i64*, i8*)* @HgfsServerPolicyEnumSharesGet, i8 (i8*, i8**, i64*, i8*)** %44, align 8, !dbg !179
  %45 = load %struct.HgfsServerResEnumCallbacks*, %struct.HgfsServerResEnumCallbacks** %5, align 8, !dbg !180
  %46 = getelementptr inbounds %struct.HgfsServerResEnumCallbacks, %struct.HgfsServerResEnumCallbacks* %45, i32 0, i32 2, !dbg !181
  store i8 (i8*)* @HgfsServerPolicyEnumSharesExit, i8 (i8*)** %46, align 8, !dbg !182
  store i8 1, i8* %3, align 1, !dbg !183
  br label %47, !dbg !183

; <label>:47:                                     ; preds = %14, %13
  %48 = load i8, i8* %3, align 1, !dbg !184
  ret i8 %48, !dbg !184
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Init(%struct.DblLnkLst_Links*) #2 !dbg !185 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !186, metadata !116), !dbg !187
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !188
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !189
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !190
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %5, align 8, !dbg !191
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !192
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !193
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %7, align 8, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @Debug(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_LinkLast(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #2 !dbg !196 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !199, metadata !116), !dbg !200
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !201, metadata !116), !dbg !202
  %5 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !203
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !204
  call void @DblLnkLst_Link(%struct.DblLnkLst_Links* %5, %struct.DblLnkLst_Links* %6), !dbg !205
  ret void, !dbg !206
}

; Function Attrs: nounwind uwtable
define internal i8* @HgfsServerPolicyEnumSharesInit() #0 !dbg !207 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.State*, align 8
  call void @llvm.dbg.declare(metadata %struct.State** %2, metadata !208, metadata !116), !dbg !209
  %3 = call noalias i8* @malloc(i64 8) #7, !dbg !210
  %4 = bitcast i8* %3 to %struct.State*, !dbg !210
  store %struct.State* %4, %struct.State** %2, align 8, !dbg !211
  %5 = load %struct.State*, %struct.State** %2, align 8, !dbg !212
  %6 = icmp ne %struct.State* %5, null, !dbg !212
  br i1 %6, label %10, label %7, !dbg !214

; <label>:7:                                      ; preds = %0
  br label %8, !dbg !215, !llvm.loop !217

; <label>:8:                                      ; preds = %7
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.HgfsServerPolicyEnumSharesInit, i32 0, i32 0)), !dbg !218
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i32 0, i32 0)), !dbg !223
  br label %9, !dbg !225

; <label>:9:                                      ; preds = %8
  store i8* null, i8** %1, align 8, !dbg !226
  br label %16, !dbg !226

; <label>:10:                                     ; preds = %0
  %11 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** getelementptr inbounds (%struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* @myState, i32 0, i32 0, i32 1), align 8, !dbg !227
  %12 = load %struct.State*, %struct.State** %2, align 8, !dbg !228
  %13 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 0, !dbg !229
  store %struct.DblLnkLst_Links* %11, %struct.DblLnkLst_Links** %13, align 8, !dbg !230
  %14 = load %struct.State*, %struct.State** %2, align 8, !dbg !231
  %15 = bitcast %struct.State* %14 to i8*, !dbg !231
  store i8* %15, i8** %1, align 8, !dbg !232
  br label %16, !dbg !232

; <label>:16:                                     ; preds = %10, %9
  %17 = load i8*, i8** %1, align 8, !dbg !233
  ret i8* %17, !dbg !233
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsServerPolicyEnumSharesGet(i8*, i8**, i64*, i8*) #0 !dbg !234 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.State*, align 8
  %11 = alloca %struct.HgfsSharedFolder*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !235, metadata !116), !dbg !236
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !237, metadata !116), !dbg !238
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !239, metadata !116), !dbg !240
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !241, metadata !116), !dbg !242
  call void @llvm.dbg.declare(metadata %struct.State** %10, metadata !243, metadata !116), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %11, metadata !245, metadata !116), !dbg !246
  %12 = load i8*, i8** %6, align 8, !dbg !247
  %13 = bitcast i8* %12 to %struct.State*, !dbg !248
  store %struct.State* %13, %struct.State** %10, align 8, !dbg !249
  %14 = load %struct.State*, %struct.State** %10, align 8, !dbg !250
  %15 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 0, !dbg !252
  %16 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %15, align 8, !dbg !252
  %17 = icmp eq %struct.DblLnkLst_Links* %16, getelementptr inbounds (%struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* @myState, i32 0, i32 0), !dbg !253
  br i1 %17, label %18, label %20, !dbg !254

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %9, align 8, !dbg !255
  store i8 1, i8* %19, align 1, !dbg !257
  store i8 1, i8* %5, align 1, !dbg !258
  br label %46, !dbg !258

; <label>:20:                                     ; preds = %4
  %21 = load %struct.State*, %struct.State** %10, align 8, !dbg !259
  %22 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 0, !dbg !260
  %23 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %22, align 8, !dbg !260
  %24 = bitcast %struct.DblLnkLst_Links* %23 to i8*, !dbg !261
  %25 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !262
  %26 = bitcast i8* %25 to %struct.HgfsSharedFolder*, !dbg !263
  store %struct.HgfsSharedFolder* %26, %struct.HgfsSharedFolder** %11, align 8, !dbg !264
  %27 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %11, align 8, !dbg !265
  %28 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %27, i32 0, i32 0, !dbg !266
  %29 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %28, i32 0, i32 1, !dbg !267
  %30 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %29, align 8, !dbg !267
  %31 = load %struct.State*, %struct.State** %10, align 8, !dbg !268
  %32 = getelementptr inbounds %struct.State, %struct.State* %31, i32 0, i32 0, !dbg !269
  store %struct.DblLnkLst_Links* %30, %struct.DblLnkLst_Links** %32, align 8, !dbg !270
  %33 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %11, align 8, !dbg !271
  %34 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %33, i32 0, i32 1, !dbg !272
  %35 = load i8*, i8** %34, align 8, !dbg !272
  %36 = load i8**, i8*** %7, align 8, !dbg !273
  store i8* %35, i8** %36, align 8, !dbg !274
  %37 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %11, align 8, !dbg !275
  %38 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %37, i32 0, i32 5, !dbg !276
  %39 = load i64, i64* %38, align 8, !dbg !276
  %40 = load i64*, i64** %8, align 8, !dbg !277
  store i64 %39, i64* %40, align 8, !dbg !278
  br label %41, !dbg !279, !llvm.loop !280

; <label>:41:                                     ; preds = %20
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicyEnumSharesGet, i32 0, i32 0)), !dbg !281
  %42 = load i8**, i8*** %7, align 8, !dbg !286
  %43 = load i8*, i8** %42, align 8, !dbg !287
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i8* %43), !dbg !288
  br label %44, !dbg !290

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %9, align 8, !dbg !291
  store i8 0, i8* %45, align 1, !dbg !292
  store i8 1, i8* %5, align 1, !dbg !293
  br label %46, !dbg !293

; <label>:46:                                     ; preds = %44, %18
  %47 = load i8, i8* %5, align 1, !dbg !294
  ret i8 %47, !dbg !294
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsServerPolicyEnumSharesExit(i8*) #0 !dbg !295 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.State*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !296, metadata !116), !dbg !297
  call void @llvm.dbg.declare(metadata %struct.State** %3, metadata !298, metadata !116), !dbg !299
  %4 = load i8*, i8** %2, align 8, !dbg !300
  %5 = bitcast i8* %4 to %struct.State*, !dbg !301
  store %struct.State* %5, %struct.State** %3, align 8, !dbg !302
  %6 = load %struct.State*, %struct.State** %3, align 8, !dbg !303
  %7 = bitcast %struct.State* %6 to i8*, !dbg !303
  call void @free(i8* %7) #7, !dbg !304
  ret i8 1, !dbg !305
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerPolicy_Cleanup() #0 !dbg !306 {
  call void @HgfsServerPolicyDestroyShares(%struct.DblLnkLst_Links* getelementptr inbounds (%struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* @myState, i32 0, i32 0)), !dbg !309
  ret i8 1, !dbg !310
}

; Function Attrs: nounwind uwtable
define internal void @HgfsServerPolicyDestroyShares(%struct.DblLnkLst_Links*) #0 !dbg !311 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  %3 = alloca %struct.HgfsSharedFolder*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !312, metadata !116), !dbg !313
  br label %4, !dbg !314

; <label>:4:                                      ; preds = %10, %1
  %5 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !315
  %6 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %5, i32 0, i32 1, !dbg !317
  %7 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %6, align 8, !dbg !317
  %8 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !318
  %9 = icmp ne %struct.DblLnkLst_Links* %7, %8, !dbg !319
  br i1 %9, label %10, label %20, !dbg !320

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %3, metadata !321, metadata !116), !dbg !323
  %11 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !324
  %12 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %11, i32 0, i32 1, !dbg !325
  %13 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %12, align 8, !dbg !325
  %14 = bitcast %struct.DblLnkLst_Links* %13 to i8*, !dbg !326
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !327
  %16 = bitcast i8* %15 to %struct.HgfsSharedFolder*, !dbg !328
  store %struct.HgfsSharedFolder* %16, %struct.HgfsSharedFolder** %3, align 8, !dbg !329
  %17 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %3, align 8, !dbg !330
  %18 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %17, i32 0, i32 0, !dbg !331
  call void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links* %18), !dbg !332
  %19 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %3, align 8, !dbg !333
  call void @HgfsServerPolicyDestroyShare(%struct.HgfsSharedFolder* %19), !dbg !334
  br label %4, !dbg !335, !llvm.loop !337

; <label>:20:                                     ; preds = %4
  ret void, !dbg !338
}

; Function Attrs: nounwind uwtable
define i32 @HgfsServerPolicy_GetSharePath(i8*, i64, i32, i64*, i8**) #0 !dbg !339 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.HgfsSharedFolder*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !344, metadata !116), !dbg !345
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !346, metadata !116), !dbg !347
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !348, metadata !116), !dbg !349
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !350, metadata !116), !dbg !351
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !352, metadata !116), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %12, metadata !354, metadata !116), !dbg !355
  %13 = load i8*, i8** %7, align 8, !dbg !356
  %14 = load i64, i64* %8, align 8, !dbg !357
  %15 = call %struct.HgfsSharedFolder* @HgfsServerPolicyGetShare(%struct.HgfsServerPolicyState* @myState, i8* %13, i64 %14), !dbg !358
  store %struct.HgfsSharedFolder* %15, %struct.HgfsSharedFolder** %12, align 8, !dbg !359
  %16 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !360
  %17 = icmp ne %struct.HgfsSharedFolder* %16, null, !dbg !360
  br i1 %17, label %21, label %18, !dbg !362

; <label>:18:                                     ; preds = %5
  br label %19, !dbg !363, !llvm.loop !365

; <label>:19:                                     ; preds = %18
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetSharePath, i32 0, i32 0)), !dbg !366
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0)), !dbg !371
  br label %20, !dbg !373

; <label>:20:                                     ; preds = %19
  store i32 7, i32* %6, align 4, !dbg !374
  br label %68, !dbg !374

; <label>:21:                                     ; preds = %5
  %22 = load i32, i32* %9, align 4, !dbg !375
  %23 = and i32 %22, 3, !dbg !376
  switch i32 %23, label %56 [
    i32 0, label %24
    i32 1, label %33
    i32 2, label %42
  ], !dbg !377

; <label>:24:                                     ; preds = %21
  %25 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !378
  %26 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %25, i32 0, i32 7, !dbg !381
  %27 = load i8, i8* %26, align 8, !dbg !381
  %28 = icmp ne i8 %27, 0, !dbg !378
  br i1 %28, label %32, label %29, !dbg !382

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !383, !llvm.loop !385

; <label>:30:                                     ; preds = %29
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetSharePath, i32 0, i32 0)), !dbg !386
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0)), !dbg !391
  br label %31, !dbg !393

; <label>:31:                                     ; preds = %30
  store i32 8, i32* %6, align 4, !dbg !394
  br label %68, !dbg !394

; <label>:32:                                     ; preds = %24
  br label %59, !dbg !395

; <label>:33:                                     ; preds = %21
  %34 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !396
  %35 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %34, i32 0, i32 8, !dbg !398
  %36 = load i8, i8* %35, align 1, !dbg !398
  %37 = icmp ne i8 %36, 0, !dbg !396
  br i1 %37, label %41, label %38, !dbg !399

; <label>:38:                                     ; preds = %33
  br label %39, !dbg !400, !llvm.loop !402

; <label>:39:                                     ; preds = %38
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetSharePath, i32 0, i32 0)), !dbg !403
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0)), !dbg !408
  br label %40, !dbg !410

; <label>:40:                                     ; preds = %39
  store i32 8, i32* %6, align 4, !dbg !411
  br label %68, !dbg !411

; <label>:41:                                     ; preds = %33
  br label %59, !dbg !412

; <label>:42:                                     ; preds = %21
  %43 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !413
  %44 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %43, i32 0, i32 7, !dbg !415
  %45 = load i8, i8* %44, align 8, !dbg !415
  %46 = icmp ne i8 %45, 0, !dbg !413
  br i1 %46, label %47, label %52, !dbg !416

; <label>:47:                                     ; preds = %42
  %48 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !417
  %49 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %48, i32 0, i32 8, !dbg !419
  %50 = load i8, i8* %49, align 1, !dbg !419
  %51 = icmp ne i8 %50, 0, !dbg !417
  br i1 %51, label %55, label %52, !dbg !420

; <label>:52:                                     ; preds = %47, %42
  br label %53, !dbg !421, !llvm.loop !423

; <label>:53:                                     ; preds = %52
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetSharePath, i32 0, i32 0)), !dbg !424
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0)), !dbg !429
  br label %54, !dbg !431

; <label>:54:                                     ; preds = %53
  store i32 8, i32* %6, align 4, !dbg !432
  br label %68, !dbg !432

; <label>:55:                                     ; preds = %47
  br label %59, !dbg !433

; <label>:56:                                     ; preds = %21
  br label %57, !dbg !434, !llvm.loop !435

; <label>:57:                                     ; preds = %56
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetSharePath, i32 0, i32 0)), !dbg !436
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0)), !dbg !441
  br label %58, !dbg !443

; <label>:58:                                     ; preds = %57
  store i32 1, i32* %6, align 4, !dbg !444
  br label %68, !dbg !444

; <label>:59:                                     ; preds = %55, %41, %32
  %60 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !445
  %61 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %60, i32 0, i32 6, !dbg !446
  %62 = load i64, i64* %61, align 8, !dbg !446
  %63 = load i64*, i64** %10, align 8, !dbg !447
  store i64 %62, i64* %63, align 8, !dbg !448
  %64 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %12, align 8, !dbg !449
  %65 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %64, i32 0, i32 2, !dbg !450
  %66 = load i8*, i8** %65, align 8, !dbg !450
  %67 = load i8**, i8*** %11, align 8, !dbg !451
  store i8* %66, i8** %67, align 8, !dbg !452
  store i32 0, i32* %6, align 4, !dbg !453
  br label %68, !dbg !453

; <label>:68:                                     ; preds = %59, %58, %54, %40, %31, %20
  %69 = load i32, i32* %6, align 4, !dbg !454
  ret i32 %69, !dbg !454
}

; Function Attrs: nounwind uwtable
define internal %struct.HgfsSharedFolder* @HgfsServerPolicyGetShare(%struct.HgfsServerPolicyState*, i8*, i64) #0 !dbg !455 {
  %4 = alloca %struct.HgfsSharedFolder*, align 8
  %5 = alloca %struct.HgfsServerPolicyState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.DblLnkLst_Links*, align 8
  %9 = alloca %struct.HgfsSharedFolder*, align 8
  %10 = alloca %struct.HgfsSharedFolder*, align 8
  %11 = alloca i8*, align 8
  store %struct.HgfsServerPolicyState* %0, %struct.HgfsServerPolicyState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerPolicyState** %5, metadata !459, metadata !116), !dbg !460
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !461, metadata !116), !dbg !462
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !463, metadata !116), !dbg !464
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %8, metadata !465, metadata !116), !dbg !466
  %12 = load %struct.HgfsServerPolicyState*, %struct.HgfsServerPolicyState** %5, align 8, !dbg !467
  %13 = getelementptr inbounds %struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* %12, i32 0, i32 0, !dbg !469
  %14 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %13, i32 0, i32 1, !dbg !470
  %15 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !470
  store %struct.DblLnkLst_Links* %15, %struct.DblLnkLst_Links** %8, align 8, !dbg !471
  br label %16, !dbg !472

; <label>:16:                                     ; preds = %42, %3
  %17 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !473
  %18 = load %struct.HgfsServerPolicyState*, %struct.HgfsServerPolicyState** %5, align 8, !dbg !476
  %19 = getelementptr inbounds %struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* %18, i32 0, i32 0, !dbg !477
  %20 = icmp ne %struct.DblLnkLst_Links* %17, %19, !dbg !478
  br i1 %20, label %21, label %46, !dbg !479

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %9, metadata !480, metadata !116), !dbg !482
  %22 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !483
  %23 = bitcast %struct.DblLnkLst_Links* %22 to i8*, !dbg !484
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !485
  %25 = bitcast i8* %24 to %struct.HgfsSharedFolder*, !dbg !486
  store %struct.HgfsSharedFolder* %25, %struct.HgfsSharedFolder** %9, align 8, !dbg !487
  %26 = load i64, i64* %7, align 8, !dbg !488
  %27 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %9, align 8, !dbg !490
  %28 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %27, i32 0, i32 5, !dbg !491
  %29 = load i64, i64* %28, align 8, !dbg !491
  %30 = icmp eq i64 %26, %29, !dbg !492
  br i1 %30, label %31, label %41, !dbg !493

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %6, align 8, !dbg !494
  %33 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %9, align 8, !dbg !495
  %34 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %33, i32 0, i32 1, !dbg !496
  %35 = load i8*, i8** %34, align 8, !dbg !496
  %36 = load i64, i64* %7, align 8, !dbg !497
  %37 = call i32 @memcmp(i8* %32, i8* %35, i64 %36) #8, !dbg !498
  %38 = icmp ne i32 %37, 0, !dbg !498
  br i1 %38, label %41, label %39, !dbg !499

; <label>:39:                                     ; preds = %31
  %40 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %9, align 8, !dbg !501
  store %struct.HgfsSharedFolder* %40, %struct.HgfsSharedFolder** %4, align 8, !dbg !503
  br label %98, !dbg !503

; <label>:41:                                     ; preds = %31, %21
  br label %42, !dbg !504

; <label>:42:                                     ; preds = %41
  %43 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !505
  %44 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %43, i32 0, i32 1, !dbg !507
  %45 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %44, align 8, !dbg !507
  store %struct.DblLnkLst_Links* %45, %struct.DblLnkLst_Links** %8, align 8, !dbg !508
  br label %16, !dbg !509, !llvm.loop !510

; <label>:46:                                     ; preds = %16
  %47 = load %struct.HgfsServerPolicyState*, %struct.HgfsServerPolicyState** %5, align 8, !dbg !512
  %48 = getelementptr inbounds %struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* %47, i32 0, i32 0, !dbg !514
  %49 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %48, i32 0, i32 1, !dbg !515
  %50 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %49, align 8, !dbg !515
  store %struct.DblLnkLst_Links* %50, %struct.DblLnkLst_Links** %8, align 8, !dbg !516
  br label %51, !dbg !517

; <label>:51:                                     ; preds = %93, %46
  %52 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !518
  %53 = load %struct.HgfsServerPolicyState*, %struct.HgfsServerPolicyState** %5, align 8, !dbg !521
  %54 = getelementptr inbounds %struct.HgfsServerPolicyState, %struct.HgfsServerPolicyState* %53, i32 0, i32 0, !dbg !522
  %55 = icmp ne %struct.DblLnkLst_Links* %52, %54, !dbg !523
  br i1 %55, label %56, label %97, !dbg !524

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %10, metadata !525, metadata !116), !dbg !527
  call void @llvm.dbg.declare(metadata i8** %11, metadata !528, metadata !116), !dbg !529
  %57 = load i64, i64* %7, align 8, !dbg !530
  %58 = add i64 %57, 1, !dbg !532
  %59 = call noalias i8* @malloc(i64 %58) #7, !dbg !533
  store i8* %59, i8** %11, align 8, !dbg !534
  %60 = icmp ne i8* %59, null, !dbg !534
  br i1 %60, label %64, label %61, !dbg !535

; <label>:61:                                     ; preds = %56
  br label %62, !dbg !536, !llvm.loop !538

; <label>:62:                                     ; preds = %61
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsServerPolicyGetShare, i32 0, i32 0)), !dbg !539
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0)), !dbg !544
  br label %63, !dbg !546

; <label>:63:                                     ; preds = %62
  store %struct.HgfsSharedFolder* null, %struct.HgfsSharedFolder** %4, align 8, !dbg !547
  br label %98, !dbg !547

; <label>:64:                                     ; preds = %56
  %65 = load i8*, i8** %11, align 8, !dbg !548
  %66 = load i8*, i8** %6, align 8, !dbg !549
  %67 = load i64, i64* %7, align 8, !dbg !550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 %67, i32 1, i1 false), !dbg !551
  %68 = load i64, i64* %7, align 8, !dbg !552
  %69 = load i8*, i8** %11, align 8, !dbg !553
  %70 = getelementptr inbounds i8, i8* %69, i64 %68, !dbg !553
  store i8 0, i8* %70, align 1, !dbg !554
  %71 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !555
  %72 = bitcast %struct.DblLnkLst_Links* %71 to i8*, !dbg !556
  %73 = getelementptr inbounds i8, i8* %72, i64 0, !dbg !557
  %74 = bitcast i8* %73 to %struct.HgfsSharedFolder*, !dbg !558
  store %struct.HgfsSharedFolder* %74, %struct.HgfsSharedFolder** %10, align 8, !dbg !559
  %75 = load i64, i64* %7, align 8, !dbg !560
  %76 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %10, align 8, !dbg !562
  %77 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %76, i32 0, i32 5, !dbg !563
  %78 = load i64, i64* %77, align 8, !dbg !563
  %79 = icmp eq i64 %75, %78, !dbg !564
  br i1 %79, label %80, label %91, !dbg !565

; <label>:80:                                     ; preds = %64
  %81 = load i8*, i8** %11, align 8, !dbg !566
  %82 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %10, align 8, !dbg !567
  %83 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %82, i32 0, i32 1, !dbg !568
  %84 = load i8*, i8** %83, align 8, !dbg !568
  %85 = load i64, i64* %7, align 8, !dbg !569
  %86 = call i32 @strncasecmp(i8* %81, i8* %84, i64 %85) #8, !dbg !570
  %87 = icmp ne i32 %86, 0, !dbg !570
  br i1 %87, label %91, label %88, !dbg !571

; <label>:88:                                     ; preds = %80
  %89 = load i8*, i8** %11, align 8, !dbg !573
  call void @free(i8* %89) #7, !dbg !575
  %90 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %10, align 8, !dbg !576
  store %struct.HgfsSharedFolder* %90, %struct.HgfsSharedFolder** %4, align 8, !dbg !577
  br label %98, !dbg !577

; <label>:91:                                     ; preds = %80, %64
  %92 = load i8*, i8** %11, align 8, !dbg !578
  call void @free(i8* %92) #7, !dbg !579
  br label %93, !dbg !580

; <label>:93:                                     ; preds = %91
  %94 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !581
  %95 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %94, i32 0, i32 1, !dbg !583
  %96 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %95, align 8, !dbg !583
  store %struct.DblLnkLst_Links* %96, %struct.DblLnkLst_Links** %8, align 8, !dbg !584
  br label %51, !dbg !585, !llvm.loop !586

; <label>:97:                                     ; preds = %51
  store %struct.HgfsSharedFolder* null, %struct.HgfsSharedFolder** %4, align 8, !dbg !588
  br label %98, !dbg !588

; <label>:98:                                     ; preds = %97, %88, %63, %39
  %99 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %4, align 8, !dbg !589
  ret %struct.HgfsSharedFolder* %99, !dbg !589
}

; Function Attrs: nounwind uwtable
define i32 @HgfsServerPolicy_ProcessCPName(i8*, i64, i8*, i8*, i32*, i8**) #0 !dbg !590 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.HgfsSharedFolder*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !594, metadata !116), !dbg !595
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !596, metadata !116), !dbg !597
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !598, metadata !116), !dbg !599
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !600, metadata !116), !dbg !601
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !602, metadata !116), !dbg !603
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !604, metadata !116), !dbg !605
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %14, metadata !606, metadata !116), !dbg !607
  %15 = load i8*, i8** %8, align 8, !dbg !608
  %16 = load i64, i64* %9, align 8, !dbg !609
  %17 = call %struct.HgfsSharedFolder* @HgfsServerPolicyGetShare(%struct.HgfsServerPolicyState* @myState, i8* %15, i64 %16), !dbg !610
  store %struct.HgfsSharedFolder* %17, %struct.HgfsSharedFolder** %14, align 8, !dbg !611
  %18 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %14, align 8, !dbg !612
  %19 = icmp ne %struct.HgfsSharedFolder* %18, null, !dbg !612
  br i1 %19, label %23, label %20, !dbg !614

; <label>:20:                                     ; preds = %6
  br label %21, !dbg !615, !llvm.loop !617

; <label>:21:                                     ; preds = %20
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.HgfsServerPolicy_ProcessCPName, i32 0, i32 0)), !dbg !618
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.HgfsServerPolicy_ProcessCPName, i32 0, i32 0)), !dbg !623
  br label %22, !dbg !625

; <label>:22:                                     ; preds = %21
  store i32 7, i32* %7, align 4, !dbg !626
  br label %40, !dbg !626

; <label>:23:                                     ; preds = %6
  %24 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %14, align 8, !dbg !627
  %25 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %24, i32 0, i32 7, !dbg !628
  %26 = load i8, i8* %25, align 8, !dbg !628
  %27 = load i8*, i8** %10, align 8, !dbg !629
  store i8 %26, i8* %27, align 1, !dbg !630
  %28 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %14, align 8, !dbg !631
  %29 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %28, i32 0, i32 8, !dbg !632
  %30 = load i8, i8* %29, align 1, !dbg !632
  %31 = load i8*, i8** %11, align 8, !dbg !633
  store i8 %30, i8* %31, align 1, !dbg !634
  %32 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %14, align 8, !dbg !635
  %33 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %32, i32 0, i32 2, !dbg !636
  %34 = load i8*, i8** %33, align 8, !dbg !636
  %35 = load i8**, i8*** %13, align 8, !dbg !637
  store i8* %34, i8** %35, align 8, !dbg !638
  %36 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %14, align 8, !dbg !639
  %37 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %36, i32 0, i32 10, !dbg !640
  %38 = load i32, i32* %37, align 8, !dbg !640
  %39 = load i32*, i32** %12, align 8, !dbg !641
  store i32 %38, i32* %39, align 4, !dbg !642
  store i32 0, i32* %7, align 4, !dbg !643
  br label %40, !dbg !643

; <label>:40:                                     ; preds = %23, %22
  %41 = load i32, i32* %7, align 4, !dbg !644
  ret i32 %41, !dbg !644
}

; Function Attrs: nounwind uwtable
define i32 @HgfsServerPolicy_GetShareOptions(i8*, i64, i32*) #0 !dbg !645 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.HgfsSharedFolder*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !649, metadata !116), !dbg !650
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !651, metadata !116), !dbg !652
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !653, metadata !116), !dbg !654
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %8, metadata !655, metadata !116), !dbg !656
  call void @llvm.dbg.declare(metadata i8** %9, metadata !657, metadata !116), !dbg !658
  call void @llvm.dbg.declare(metadata i8** %10, metadata !659, metadata !116), !dbg !660
  call void @llvm.dbg.declare(metadata i32* %11, metadata !661, metadata !116), !dbg !663
  %12 = load i8*, i8** %5, align 8, !dbg !664
  %13 = load i64, i64* %6, align 8, !dbg !665
  %14 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !666
  store i8* %14, i8** %9, align 8, !dbg !667
  %15 = load i8*, i8** %5, align 8, !dbg !668
  %16 = load i8*, i8** %9, align 8, !dbg !669
  %17 = call i32 @CPName_GetComponent(i8* %15, i8* %16, i8** %10), !dbg !670
  store i32 %17, i32* %11, align 4, !dbg !671
  %18 = load i32, i32* %11, align 4, !dbg !672
  %19 = icmp slt i32 %18, 0, !dbg !674
  br i1 %19, label %20, label %23, !dbg !675

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !676, !llvm.loop !678

; <label>:21:                                     ; preds = %20
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__FUNCTION__.HgfsServerPolicy_GetShareOptions, i32 0, i32 0)), !dbg !679
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0)), !dbg !684
  br label %22, !dbg !686

; <label>:22:                                     ; preds = %21
  store i32 1, i32* %4, align 4, !dbg !687
  br label %38, !dbg !687

; <label>:23:                                     ; preds = %3
  %24 = load i8*, i8** %5, align 8, !dbg !688
  %25 = load i32, i32* %11, align 4, !dbg !689
  %26 = sext i32 %25 to i64, !dbg !689
  %27 = call %struct.HgfsSharedFolder* @HgfsServerPolicyGetShare(%struct.HgfsServerPolicyState* @myState, i8* %24, i64 %26), !dbg !690
  store %struct.HgfsSharedFolder* %27, %struct.HgfsSharedFolder** %8, align 8, !dbg !691
  %28 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !692
  %29 = icmp ne %struct.HgfsSharedFolder* %28, null, !dbg !692
  br i1 %29, label %33, label %30, !dbg !694

; <label>:30:                                     ; preds = %23
  br label %31, !dbg !695, !llvm.loop !697

; <label>:31:                                     ; preds = %30
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__FUNCTION__.HgfsServerPolicy_GetShareOptions, i32 0, i32 0)), !dbg !698
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0)), !dbg !703
  br label %32, !dbg !705

; <label>:32:                                     ; preds = %31
  store i32 7, i32* %4, align 4, !dbg !706
  br label %38, !dbg !706

; <label>:33:                                     ; preds = %23
  %34 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !707
  %35 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %34, i32 0, i32 9, !dbg !708
  %36 = load i32, i32* %35, align 4, !dbg !708
  %37 = load i32*, i32** %7, align 8, !dbg !709
  store i32 %36, i32* %37, align 4, !dbg !710
  store i32 0, i32* %4, align 4, !dbg !711
  br label %38, !dbg !711

; <label>:38:                                     ; preds = %33, %32, %22
  %39 = load i32, i32* %4, align 4, !dbg !712
  ret i32 %39, !dbg !712
}

declare i32 @CPName_GetComponent(i8*, i8*, i8**) #4

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerPolicy_IsShareOptionSet(i32, i32) #0 !dbg !713 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !716, metadata !116), !dbg !717
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !718, metadata !116), !dbg !719
  %5 = load i32, i32* %3, align 4, !dbg !720
  %6 = load i32, i32* %4, align 4, !dbg !721
  %7 = and i32 %5, %6, !dbg !722
  %8 = load i32, i32* %4, align 4, !dbg !723
  %9 = icmp eq i32 %7, %8, !dbg !724
  %10 = zext i1 %9 to i32, !dbg !724
  %11 = trunc i32 %10 to i8, !dbg !725
  ret i8 %11, !dbg !726
}

; Function Attrs: nounwind uwtable
define i32 @HgfsServerPolicy_GetShareMode(i8*, i64, i32*) #0 !dbg !727 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.HgfsSharedFolder*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !731, metadata !116), !dbg !732
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !733, metadata !116), !dbg !734
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !735, metadata !116), !dbg !736
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %8, metadata !737, metadata !116), !dbg !738
  %9 = load i8*, i8** %5, align 8, !dbg !739
  %10 = load i64, i64* %6, align 8, !dbg !740
  %11 = call %struct.HgfsSharedFolder* @HgfsServerPolicyGetShare(%struct.HgfsServerPolicyState* @myState, i8* %9, i64 %10), !dbg !741
  store %struct.HgfsSharedFolder* %11, %struct.HgfsSharedFolder** %8, align 8, !dbg !742
  %12 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !743
  %13 = icmp ne %struct.HgfsSharedFolder* %12, null, !dbg !743
  br i1 %13, label %17, label %14, !dbg !745

; <label>:14:                                     ; preds = %3
  br label %15, !dbg !746, !llvm.loop !748

; <label>:15:                                     ; preds = %14
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetShareMode, i32 0, i32 0)), !dbg !749
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0)), !dbg !754
  br label %16, !dbg !756

; <label>:16:                                     ; preds = %15
  store i32 7, i32* %4, align 4, !dbg !757
  br label %51, !dbg !757

; <label>:17:                                     ; preds = %3
  %18 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !758
  %19 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %18, i32 0, i32 7, !dbg !760
  %20 = load i8, i8* %19, align 8, !dbg !760
  %21 = sext i8 %20 to i32, !dbg !758
  %22 = icmp ne i32 %21, 0, !dbg !758
  br i1 %22, label %23, label %31, !dbg !761

; <label>:23:                                     ; preds = %17
  %24 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !762
  %25 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %24, i32 0, i32 8, !dbg !764
  %26 = load i8, i8* %25, align 1, !dbg !764
  %27 = sext i8 %26 to i32, !dbg !762
  %28 = icmp ne i32 %27, 0, !dbg !762
  br i1 %28, label %29, label %31, !dbg !765

; <label>:29:                                     ; preds = %23
  %30 = load i32*, i32** %7, align 8, !dbg !766
  store i32 2, i32* %30, align 4, !dbg !768
  br label %50, !dbg !769

; <label>:31:                                     ; preds = %23, %17
  %32 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !770
  %33 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %32, i32 0, i32 7, !dbg !773
  %34 = load i8, i8* %33, align 8, !dbg !773
  %35 = icmp ne i8 %34, 0, !dbg !770
  br i1 %35, label %36, label %38, !dbg !770

; <label>:36:                                     ; preds = %31
  %37 = load i32*, i32** %7, align 8, !dbg !774
  store i32 0, i32* %37, align 4, !dbg !776
  br label %49, !dbg !777

; <label>:38:                                     ; preds = %31
  %39 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %8, align 8, !dbg !778
  %40 = getelementptr inbounds %struct.HgfsSharedFolder, %struct.HgfsSharedFolder* %39, i32 0, i32 8, !dbg !781
  %41 = load i8, i8* %40, align 1, !dbg !781
  %42 = icmp ne i8 %41, 0, !dbg !778
  br i1 %42, label %43, label %45, !dbg !778

; <label>:43:                                     ; preds = %38
  %44 = load i32*, i32** %7, align 8, !dbg !782
  store i32 1, i32* %44, align 4, !dbg !784
  br label %48, !dbg !785

; <label>:45:                                     ; preds = %38
  br label %46, !dbg !786, !llvm.loop !788

; <label>:46:                                     ; preds = %45
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsServerPolicy_GetShareMode, i32 0, i32 0)), !dbg !789
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0)), !dbg !794
  br label %47, !dbg !796

; <label>:47:                                     ; preds = %46
  store i32 1, i32* %4, align 4, !dbg !797
  br label %51, !dbg !797

; <label>:48:                                     ; preds = %43
  br label %49

; <label>:49:                                     ; preds = %48, %36
  br label %50

; <label>:50:                                     ; preds = %49, %29
  store i32 0, i32* %4, align 4, !dbg !798
  br label %51, !dbg !798

; <label>:51:                                     ; preds = %50, %47, %16
  %52 = load i32, i32* %4, align 4, !dbg !799
  ret i32 %52, !dbg !799
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Link(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #2 !dbg !800 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !801, metadata !116), !dbg !802
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !803, metadata !116), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !805, metadata !116), !dbg !806
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !807
  %7 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !808
  %8 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %7, i32 0, i32 0, !dbg !809
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !809
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %5, align 8, !dbg !810
  %10 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %9, i32 0, i32 1, !dbg !811
  store %struct.DblLnkLst_Links* %6, %struct.DblLnkLst_Links** %10, align 8, !dbg !812
  %11 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !813
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !814
  %13 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 0, !dbg !815
  %14 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %13, align 8, !dbg !815
  %15 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !816
  %16 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %15, i32 0, i32 0, !dbg !817
  store %struct.DblLnkLst_Links* %14, %struct.DblLnkLst_Links** %16, align 8, !dbg !818
  %17 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %14, i32 0, i32 1, !dbg !819
  store %struct.DblLnkLst_Links* %11, %struct.DblLnkLst_Links** %17, align 8, !dbg !820
  %18 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !821
  %19 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !822
  %20 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %19, i32 0, i32 0, !dbg !823
  store %struct.DblLnkLst_Links* %18, %struct.DblLnkLst_Links** %20, align 8, !dbg !824
  ret void, !dbg !825
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links*) #2 !dbg !826 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !827, metadata !116), !dbg !828
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !829
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !830
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !831
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !831
  call void @DblLnkLst_Unlink(%struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links* %6), !dbg !832
  ret void, !dbg !833
}

; Function Attrs: nounwind uwtable
define internal void @HgfsServerPolicyDestroyShare(%struct.HgfsSharedFolder*) #0 !dbg !834 {
  %2 = alloca %struct.HgfsSharedFolder*, align 8
  store %struct.HgfsSharedFolder* %0, %struct.HgfsSharedFolder** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSharedFolder** %2, metadata !837, metadata !116), !dbg !838
  %3 = load %struct.HgfsSharedFolder*, %struct.HgfsSharedFolder** %2, align 8, !dbg !839
  %4 = bitcast %struct.HgfsSharedFolder* %3 to i8*, !dbg !839
  call void @free(i8* %4) #7, !dbg !840
  ret void, !dbg !841
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #2 !dbg !842 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !843, metadata !116), !dbg !844
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !845, metadata !116), !dbg !846
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !847, metadata !116), !dbg !848
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !849
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !850
  %8 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %7, align 8, !dbg !850
  store %struct.DblLnkLst_Links* %8, %struct.DblLnkLst_Links** %5, align 8, !dbg !851
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !852
  %10 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !853
  %11 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %10, i32 0, i32 0, !dbg !854
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %11, align 8, !dbg !854
  %13 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !855
  %14 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %13, i32 0, i32 0, !dbg !856
  store %struct.DblLnkLst_Links* %12, %struct.DblLnkLst_Links** %14, align 8, !dbg !857
  %15 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 1, !dbg !858
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %15, align 8, !dbg !859
  %16 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !860
  %17 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !861
  %18 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !862
  %19 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %18, i32 0, i32 0, !dbg !863
  store %struct.DblLnkLst_Links* %17, %struct.DblLnkLst_Links** %19, align 8, !dbg !864
  %20 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %17, i32 0, i32 1, !dbg !865
  store %struct.DblLnkLst_Links* %16, %struct.DblLnkLst_Links** %20, align 8, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, globals: !77)
!1 = !DIFile(filename: "hgfsServerPolicyGuest.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!2 = !{!3, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/cpName.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "HGFS_NAME_STATUS_COMPLETE", value: 0)
!7 = !DIEnumerator(name: "HGFS_NAME_STATUS_FAILURE", value: 1)
!8 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_BASE", value: 2)
!9 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_ROOT", value: 3)
!10 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_DRIVE", value: 4)
!11 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_UNC", value: 5)
!12 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_UNC_MACH", value: 6)
!13 = !DIEnumerator(name: "HGFS_NAME_STATUS_DOES_NOT_EXIST", value: 7)
!14 = !DIEnumerator(name: "HGFS_NAME_STATUS_ACCESS_DENIED", value: 8)
!15 = !DIEnumerator(name: "HGFS_NAME_STATUS_SYMBOLIC_LINK", value: 9)
!16 = !DIEnumerator(name: "HGFS_NAME_STATUS_OUT_OF_MEMORY", value: 10)
!17 = !DIEnumerator(name: "HGFS_NAME_STATUS_TOO_LONG", value: 11)
!18 = !DIEnumerator(name: "HGFS_NAME_STATUS_NOT_A_DIRECTORY", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 119, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "HGFS_OPEN_MODE_READ_ONLY", value: 0)
!23 = !DIEnumerator(name: "HGFS_OPEN_MODE_WRITE_ONLY", value: 1)
!24 = !DIEnumerator(name: "HGFS_OPEN_MODE_READ_WRITE", value: 2)
!25 = !DIEnumerator(name: "HGFS_OPEN_MODE_ACCMODES", value: 3)
!26 = !{!27, !63, !65, !66, !67, !69, !70}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolder", file: !29, line: 68, baseType: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerPolicy.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSharedFolder", file: !29, line: 45, size: 640, align: 64, elements: !31)
!31 = !{!32, !40, !44, !45, !46, !50, !51, !52, !55, !56, !62}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !30, file: !29, line: 46, baseType: !33, size: 128, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !34, line: 94, baseType: !35)
!34 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !34, line: 91, size: 128, align: 64, elements: !36)
!36 = !{!37, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !35, file: !34, line: 92, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !34, line: 93, baseType: !38, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !29, line: 47, baseType: !41, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !30, file: !29, line: 48, baseType: !41, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "shareTags", scope: !30, file: !29, line: 52, baseType: !41, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "shareTagsLen", scope: !30, file: !29, line: 53, baseType: !47, size: 64, align: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 216, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!49 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nameLen", scope: !30, file: !29, line: 54, baseType: !47, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "pathLen", scope: !30, file: !29, line: 55, baseType: !47, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "readAccess", scope: !30, file: !29, line: 56, baseType: !53, size: 8, align: 8, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !54, line: 230, baseType: !43)
!54 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "writeAccess", scope: !30, file: !29, line: 57, baseType: !53, size: 8, align: 8, offset: 520)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "configOptions", scope: !30, file: !29, line: 58, baseType: !57, size: 32, align: 32, offset: 544)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShareOptions", file: !29, line: 39, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !54, line: 173, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 51, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!61 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !30, file: !29, line: 59, baseType: !63, size: 32, align: 32, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolderHandle", file: !64, line: 134, baseType: !58)
!64 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !60, line: 119, baseType: !68)
!68 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetSharesState", file: !72, line: 325, baseType: !73)
!72 = !DIFile(filename: "hgfsServerPolicyGuest.c", directory: "/home/lichi/Desktop/open-vm-tools/line448")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !72, line: 323, size: 64, align: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !72, line: 324, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!77 = !{!78}
!78 = distinct !DIGlobalVariable(name: "myState", scope: !0, file: !72, line: 71, type: !79, isLocal: true, isDefinition: true, variable: %struct.HgfsServerPolicyState* @myState)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerPolicyState", file: !72, line: 68, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerPolicyState", file: !72, line: 62, size: 128, align: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "shares", scope: !80, file: !72, line: 67, baseType: !33, size: 128, align: 64)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!86 = distinct !DISubprogram(name: "HgfsServerPolicy_Init", scope: !72, file: !72, line: 160, type: !87, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!87 = !DISubroutineType(types: !88)
!88 = !{!53, !89, !93}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsInvalidateObjectsFunc", file: !64, line: 173, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !76}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumCallbacks", file: !64, line: 153, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerResEnumCallbacks", file: !64, line: 149, size: 192, align: 64, elements: !96)
!96 = !{!97, !102, !109}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !95, file: !64, line: 150, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumInitFunc", file: !64, line: 142, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!69}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !95, file: !64, line: 151, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumGetFunc", file: !64, line: 143, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!53, !69, !65, !107, !108}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !95, file: !64, line: 152, baseType: !110, size: 64, align: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumExitFunc", file: !64, line: 147, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!53, !69}
!114 = !{}
!115 = !DILocalVariable(name: "invalidateObjects", arg: 1, scope: !86, file: !72, line: 160, type: !89)
!116 = !DIExpression()
!117 = !DILocation(line: 160, column: 49, scope: !86)
!118 = !DILocalVariable(name: "enumResources", arg: 2, scope: !86, file: !72, line: 161, type: !93)
!119 = !DILocation(line: 161, column: 51, scope: !86)
!120 = !DILocalVariable(name: "rootShare", scope: !86, file: !72, line: 163, type: !27)
!121 = !DILocation(line: 163, column: 22, scope: !86)
!122 = !DILocation(line: 171, column: 4, scope: !86)
!123 = !DILocation(line: 174, column: 36, scope: !86)
!124 = !DILocation(line: 174, column: 16, scope: !86)
!125 = !DILocation(line: 174, column: 14, scope: !86)
!126 = !DILocation(line: 175, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !86, file: !72, line: 175, column: 8)
!128 = !DILocation(line: 175, column: 8, scope: !86)
!129 = !DILocation(line: 176, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !72, line: 175, column: 20)
!131 = distinct !{!131, !129}
!132 = !DILocation(line: 176, column: 33, scope: !133)
!133 = !DILexicalBlockFile(scope: !134, file: !72, discriminator: 1)
!134 = distinct !DILexicalBlock(scope: !135, file: !72, line: 176, column: 31)
!135 = distinct !DILexicalBlock(scope: !136, file: !72, line: 176, column: 16)
!136 = distinct !DILexicalBlock(scope: !130, file: !72, line: 176, column: 10)
!137 = !DILocation(line: 176, column: 73, scope: !138)
!138 = !DILexicalBlockFile(scope: !133, file: !72, discriminator: 2)
!139 = !DILocation(line: 176, column: 136, scope: !133)
!140 = !DILocation(line: 177, column: 7, scope: !130)
!141 = !DILocation(line: 180, column: 20, scope: !86)
!142 = !DILocation(line: 180, column: 31, scope: !86)
!143 = !DILocation(line: 180, column: 4, scope: !86)
!144 = !DILocation(line: 188, column: 4, scope: !86)
!145 = !DILocation(line: 188, column: 15, scope: !86)
!146 = !DILocation(line: 188, column: 20, scope: !86)
!147 = !DILocation(line: 189, column: 4, scope: !86)
!148 = !DILocation(line: 189, column: 15, scope: !86)
!149 = !DILocation(line: 189, column: 20, scope: !86)
!150 = !DILocation(line: 190, column: 4, scope: !86)
!151 = !DILocation(line: 190, column: 15, scope: !86)
!152 = !DILocation(line: 190, column: 26, scope: !86)
!153 = !DILocation(line: 191, column: 4, scope: !86)
!154 = !DILocation(line: 191, column: 15, scope: !86)
!155 = !DILocation(line: 191, column: 27, scope: !86)
!156 = !DILocation(line: 193, column: 32, scope: !86)
!157 = !DILocation(line: 193, column: 43, scope: !86)
!158 = !DILocation(line: 193, column: 25, scope: !86)
!159 = !DILocation(line: 193, column: 4, scope: !86)
!160 = !DILocation(line: 193, column: 15, scope: !86)
!161 = !DILocation(line: 193, column: 23, scope: !86)
!162 = !DILocation(line: 194, column: 32, scope: !86)
!163 = !DILocation(line: 194, column: 43, scope: !86)
!164 = !DILocation(line: 194, column: 25, scope: !86)
!165 = !DILocation(line: 194, column: 4, scope: !86)
!166 = !DILocation(line: 194, column: 15, scope: !86)
!167 = !DILocation(line: 194, column: 23, scope: !86)
!168 = !DILocation(line: 195, column: 4, scope: !86)
!169 = !DILocation(line: 195, column: 15, scope: !86)
!170 = !DILocation(line: 195, column: 22, scope: !86)
!171 = !DILocation(line: 198, column: 41, scope: !86)
!172 = !DILocation(line: 198, column: 52, scope: !86)
!173 = !DILocation(line: 198, column: 4, scope: !86)
!174 = !DILocation(line: 203, column: 4, scope: !86)
!175 = !DILocation(line: 203, column: 19, scope: !86)
!176 = !DILocation(line: 203, column: 24, scope: !86)
!177 = !DILocation(line: 204, column: 4, scope: !86)
!178 = !DILocation(line: 204, column: 19, scope: !86)
!179 = !DILocation(line: 204, column: 23, scope: !86)
!180 = !DILocation(line: 205, column: 4, scope: !86)
!181 = !DILocation(line: 205, column: 19, scope: !86)
!182 = !DILocation(line: 205, column: 24, scope: !86)
!183 = !DILocation(line: 207, column: 4, scope: !86)
!184 = !DILocation(line: 208, column: 1, scope: !86)
!185 = distinct !DISubprogram(name: "DblLnkLst_Init", scope: !34, file: !34, line: 122, type: !91, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!186 = !DILocalVariable(name: "l", arg: 1, scope: !185, file: !34, line: 122, type: !76)
!187 = !DILocation(line: 122, column: 33, scope: !185)
!188 = !DILocation(line: 124, column: 24, scope: !185)
!189 = !DILocation(line: 124, column: 14, scope: !185)
!190 = !DILocation(line: 124, column: 17, scope: !185)
!191 = !DILocation(line: 124, column: 22, scope: !185)
!192 = !DILocation(line: 124, column: 4, scope: !185)
!193 = !DILocation(line: 124, column: 7, scope: !185)
!194 = !DILocation(line: 124, column: 12, scope: !185)
!195 = !DILocation(line: 125, column: 1, scope: !185)
!196 = distinct !DISubprogram(name: "DblLnkLst_LinkLast", scope: !34, file: !34, line: 284, type: !197, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !76, !76}
!199 = !DILocalVariable(name: "head", arg: 1, scope: !196, file: !34, line: 284, type: !76)
!200 = !DILocation(line: 284, column: 37, scope: !196)
!201 = !DILocalVariable(name: "l", arg: 2, scope: !196, file: !34, line: 285, type: !76)
!202 = !DILocation(line: 285, column: 37, scope: !196)
!203 = !DILocation(line: 287, column: 19, scope: !196)
!204 = !DILocation(line: 287, column: 25, scope: !196)
!205 = !DILocation(line: 287, column: 4, scope: !196)
!206 = !DILocation(line: 288, column: 1, scope: !196)
!207 = distinct !DISubprogram(name: "HgfsServerPolicyEnumSharesInit", scope: !72, file: !72, line: 346, type: !100, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!208 = !DILocalVariable(name: "that", scope: !207, file: !72, line: 348, type: !70)
!209 = !DILocation(line: 348, column: 20, scope: !207)
!210 = !DILocation(line: 350, column: 11, scope: !207)
!211 = !DILocation(line: 350, column: 9, scope: !207)
!212 = !DILocation(line: 351, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !207, file: !72, line: 351, column: 8)
!214 = !DILocation(line: 351, column: 8, scope: !207)
!215 = !DILocation(line: 352, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !72, line: 351, column: 15)
!217 = distinct !{!217, !215}
!218 = !DILocation(line: 352, column: 33, scope: !219)
!219 = !DILexicalBlockFile(scope: !220, file: !72, discriminator: 1)
!220 = distinct !DILexicalBlock(scope: !221, file: !72, line: 352, column: 31)
!221 = distinct !DILexicalBlock(scope: !222, file: !72, line: 352, column: 16)
!222 = distinct !DILexicalBlock(scope: !216, file: !72, line: 352, column: 10)
!223 = !DILocation(line: 352, column: 73, scope: !224)
!224 = !DILexicalBlockFile(scope: !219, file: !72, discriminator: 2)
!225 = !DILocation(line: 352, column: 144, scope: !219)
!226 = !DILocation(line: 353, column: 7, scope: !216)
!227 = !DILocation(line: 356, column: 32, scope: !207)
!228 = !DILocation(line: 356, column: 4, scope: !207)
!229 = !DILocation(line: 356, column: 10, scope: !207)
!230 = !DILocation(line: 356, column: 15, scope: !207)
!231 = !DILocation(line: 357, column: 11, scope: !207)
!232 = !DILocation(line: 357, column: 4, scope: !207)
!233 = !DILocation(line: 358, column: 1, scope: !207)
!234 = distinct !DISubprogram(name: "HgfsServerPolicyEnumSharesGet", scope: !72, file: !72, line: 384, type: !105, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!235 = !DILocalVariable(name: "data", arg: 1, scope: !234, file: !72, line: 384, type: !69)
!236 = !DILocation(line: 384, column: 37, scope: !234)
!237 = !DILocalVariable(name: "name", arg: 2, scope: !234, file: !72, line: 385, type: !65)
!238 = !DILocation(line: 385, column: 44, scope: !234)
!239 = !DILocalVariable(name: "len", arg: 3, scope: !234, file: !72, line: 386, type: !107)
!240 = !DILocation(line: 386, column: 39, scope: !234)
!241 = !DILocalVariable(name: "done", arg: 4, scope: !234, file: !72, line: 387, type: !108)
!242 = !DILocation(line: 387, column: 37, scope: !234)
!243 = !DILocalVariable(name: "that", scope: !234, file: !72, line: 389, type: !70)
!244 = !DILocation(line: 389, column: 20, scope: !234)
!245 = !DILocalVariable(name: "share", scope: !234, file: !72, line: 390, type: !27)
!246 = !DILocation(line: 390, column: 22, scope: !234)
!247 = !DILocation(line: 392, column: 29, scope: !234)
!248 = !DILocation(line: 392, column: 11, scope: !234)
!249 = !DILocation(line: 392, column: 9, scope: !234)
!250 = !DILocation(line: 398, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !234, file: !72, line: 398, column: 8)
!252 = !DILocation(line: 398, column: 14, scope: !251)
!253 = !DILocation(line: 398, column: 19, scope: !251)
!254 = !DILocation(line: 398, column: 8, scope: !234)
!255 = !DILocation(line: 400, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !72, line: 398, column: 39)
!257 = !DILocation(line: 400, column: 13, scope: !256)
!258 = !DILocation(line: 401, column: 7, scope: !256)
!259 = !DILocation(line: 404, column: 43, scope: !234)
!260 = !DILocation(line: 404, column: 49, scope: !234)
!261 = !DILocation(line: 404, column: 34, scope: !234)
!262 = !DILocation(line: 404, column: 55, scope: !234)
!263 = !DILocation(line: 404, column: 13, scope: !234)
!264 = !DILocation(line: 404, column: 10, scope: !234)
!265 = !DILocation(line: 406, column: 17, scope: !234)
!266 = !DILocation(line: 406, column: 24, scope: !234)
!267 = !DILocation(line: 406, column: 30, scope: !234)
!268 = !DILocation(line: 406, column: 4, scope: !234)
!269 = !DILocation(line: 406, column: 10, scope: !234)
!270 = !DILocation(line: 406, column: 15, scope: !234)
!271 = !DILocation(line: 407, column: 12, scope: !234)
!272 = !DILocation(line: 407, column: 19, scope: !234)
!273 = !DILocation(line: 407, column: 5, scope: !234)
!274 = !DILocation(line: 407, column: 10, scope: !234)
!275 = !DILocation(line: 408, column: 11, scope: !234)
!276 = !DILocation(line: 408, column: 18, scope: !234)
!277 = !DILocation(line: 408, column: 5, scope: !234)
!278 = !DILocation(line: 408, column: 9, scope: !234)
!279 = !DILocation(line: 409, column: 4, scope: !234)
!280 = distinct !{!280, !279}
!281 = !DILocation(line: 409, column: 30, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !72, discriminator: 1)
!283 = distinct !DILexicalBlock(scope: !284, file: !72, line: 409, column: 28)
!284 = distinct !DILexicalBlock(scope: !285, file: !72, line: 409, column: 13)
!285 = distinct !DILexicalBlock(scope: !234, file: !72, line: 409, column: 7)
!286 = !DILocation(line: 409, column: 135, scope: !282)
!287 = !DILocation(line: 409, column: 134, scope: !282)
!288 = !DILocation(line: 409, column: 70, scope: !289)
!289 = !DILexicalBlockFile(scope: !282, file: !72, discriminator: 2)
!290 = !DILocation(line: 409, column: 144, scope: !282)
!291 = !DILocation(line: 411, column: 5, scope: !234)
!292 = !DILocation(line: 411, column: 10, scope: !234)
!293 = !DILocation(line: 412, column: 4, scope: !234)
!294 = !DILocation(line: 413, column: 1, scope: !234)
!295 = distinct !DISubprogram(name: "HgfsServerPolicyEnumSharesExit", scope: !72, file: !72, line: 434, type: !112, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!296 = !DILocalVariable(name: "data", arg: 1, scope: !295, file: !72, line: 434, type: !69)
!297 = !DILocation(line: 434, column: 38, scope: !295)
!298 = !DILocalVariable(name: "that", scope: !295, file: !72, line: 436, type: !70)
!299 = !DILocation(line: 436, column: 20, scope: !295)
!300 = !DILocation(line: 438, column: 29, scope: !295)
!301 = !DILocation(line: 438, column: 11, scope: !295)
!302 = !DILocation(line: 438, column: 9, scope: !295)
!303 = !DILocation(line: 440, column: 9, scope: !295)
!304 = !DILocation(line: 440, column: 4, scope: !295)
!305 = !DILocation(line: 441, column: 4, scope: !295)
!306 = distinct !DISubprogram(name: "HgfsServerPolicy_Cleanup", scope: !72, file: !72, line: 229, type: !307, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!307 = !DISubroutineType(types: !308)
!308 = !{!53}
!309 = !DILocation(line: 231, column: 4, scope: !306)
!310 = !DILocation(line: 233, column: 4, scope: !306)
!311 = distinct !DISubprogram(name: "HgfsServerPolicyDestroyShares", scope: !72, file: !72, line: 127, type: !91, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!312 = !DILocalVariable(name: "head", arg: 1, scope: !311, file: !72, line: 127, type: !76)
!313 = !DILocation(line: 127, column: 48, scope: !311)
!314 = !DILocation(line: 131, column: 4, scope: !311)
!315 = !DILocation(line: 131, column: 11, scope: !316)
!316 = !DILexicalBlockFile(scope: !311, file: !72, discriminator: 1)
!317 = !DILocation(line: 131, column: 17, scope: !316)
!318 = !DILocation(line: 131, column: 25, scope: !316)
!319 = !DILocation(line: 131, column: 22, scope: !316)
!320 = !DILocation(line: 131, column: 4, scope: !316)
!321 = !DILocalVariable(name: "share", scope: !322, file: !72, line: 132, type: !27)
!322 = distinct !DILexicalBlock(scope: !311, file: !72, line: 131, column: 31)
!323 = !DILocation(line: 132, column: 25, scope: !322)
!324 = !DILocation(line: 134, column: 46, scope: !322)
!325 = !DILocation(line: 134, column: 52, scope: !322)
!326 = !DILocation(line: 134, column: 37, scope: !322)
!327 = !DILocation(line: 134, column: 58, scope: !322)
!328 = !DILocation(line: 134, column: 16, scope: !322)
!329 = !DILocation(line: 134, column: 13, scope: !322)
!330 = !DILocation(line: 136, column: 26, scope: !322)
!331 = !DILocation(line: 136, column: 33, scope: !322)
!332 = !DILocation(line: 136, column: 7, scope: !322)
!333 = !DILocation(line: 137, column: 36, scope: !322)
!334 = !DILocation(line: 137, column: 7, scope: !322)
!335 = !DILocation(line: 131, column: 4, scope: !336)
!336 = !DILexicalBlockFile(scope: !311, file: !72, discriminator: 2)
!337 = distinct !{!337, !314}
!338 = !DILocation(line: 139, column: 1, scope: !311)
!339 = distinct !DISubprogram(name: "HgfsServerPolicy_GetSharePath", scope: !72, file: !72, line: 467, type: !340, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !41, !47, !343, !107, !65}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNameStatus", file: !4, line: 79, baseType: !3)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpenMode", file: !20, line: 125, baseType: !19)
!344 = !DILocalVariable(name: "nameIn", arg: 1, scope: !339, file: !72, line: 467, type: !41)
!345 = !DILocation(line: 467, column: 43, scope: !339)
!346 = !DILocalVariable(name: "nameInLen", arg: 2, scope: !339, file: !72, line: 468, type: !47)
!347 = !DILocation(line: 468, column: 38, scope: !339)
!348 = !DILocalVariable(name: "mode", arg: 3, scope: !339, file: !72, line: 469, type: !343)
!349 = !DILocation(line: 469, column: 44, scope: !339)
!350 = !DILocalVariable(name: "sharePathLen", arg: 4, scope: !339, file: !72, line: 470, type: !107)
!351 = !DILocation(line: 470, column: 39, scope: !339)
!352 = !DILocalVariable(name: "sharePath", arg: 5, scope: !339, file: !72, line: 471, type: !65)
!353 = !DILocation(line: 471, column: 44, scope: !339)
!354 = !DILocalVariable(name: "myShare", scope: !339, file: !72, line: 473, type: !27)
!355 = !DILocation(line: 473, column: 22, scope: !339)
!356 = !DILocation(line: 479, column: 49, scope: !339)
!357 = !DILocation(line: 479, column: 57, scope: !339)
!358 = !DILocation(line: 479, column: 14, scope: !339)
!359 = !DILocation(line: 479, column: 12, scope: !339)
!360 = !DILocation(line: 480, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !339, file: !72, line: 480, column: 8)
!362 = !DILocation(line: 480, column: 8, scope: !339)
!363 = !DILocation(line: 481, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !72, line: 480, column: 18)
!365 = distinct !{!365, !363}
!366 = !DILocation(line: 481, column: 33, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !72, discriminator: 1)
!368 = distinct !DILexicalBlock(scope: !369, file: !72, line: 481, column: 31)
!369 = distinct !DILexicalBlock(scope: !370, file: !72, line: 481, column: 16)
!370 = distinct !DILexicalBlock(scope: !364, file: !72, line: 481, column: 10)
!371 = !DILocation(line: 481, column: 73, scope: !372)
!372 = !DILexicalBlockFile(scope: !367, file: !72, discriminator: 2)
!373 = !DILocation(line: 481, column: 142, scope: !367)
!374 = !DILocation(line: 482, column: 7, scope: !364)
!375 = !DILocation(line: 491, column: 13, scope: !339)
!376 = !DILocation(line: 491, column: 18, scope: !339)
!377 = !DILocation(line: 491, column: 4, scope: !339)
!378 = !DILocation(line: 493, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !72, line: 493, column: 11)
!380 = distinct !DILexicalBlock(scope: !339, file: !72, line: 491, column: 46)
!381 = !DILocation(line: 493, column: 21, scope: !379)
!382 = !DILocation(line: 493, column: 11, scope: !380)
!383 = !DILocation(line: 494, column: 10, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !72, line: 493, column: 33)
!385 = distinct !{!385, !383}
!386 = !DILocation(line: 494, column: 36, scope: !387)
!387 = !DILexicalBlockFile(scope: !388, file: !72, discriminator: 1)
!388 = distinct !DILexicalBlock(scope: !389, file: !72, line: 494, column: 34)
!389 = distinct !DILexicalBlock(scope: !390, file: !72, line: 494, column: 19)
!390 = distinct !DILexicalBlock(scope: !384, file: !72, line: 494, column: 13)
!391 = !DILocation(line: 494, column: 76, scope: !392)
!392 = !DILexicalBlockFile(scope: !387, file: !72, discriminator: 2)
!393 = !DILocation(line: 494, column: 141, scope: !387)
!394 = !DILocation(line: 495, column: 10, scope: !384)
!395 = !DILocation(line: 497, column: 7, scope: !380)
!396 = !DILocation(line: 500, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !380, file: !72, line: 500, column: 11)
!398 = !DILocation(line: 500, column: 21, scope: !397)
!399 = !DILocation(line: 500, column: 11, scope: !380)
!400 = !DILocation(line: 501, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !72, line: 500, column: 34)
!402 = distinct !{!402, !400}
!403 = !DILocation(line: 501, column: 36, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !72, discriminator: 1)
!405 = distinct !DILexicalBlock(scope: !406, file: !72, line: 501, column: 34)
!406 = distinct !DILexicalBlock(scope: !407, file: !72, line: 501, column: 19)
!407 = distinct !DILexicalBlock(scope: !401, file: !72, line: 501, column: 13)
!408 = !DILocation(line: 501, column: 76, scope: !409)
!409 = !DILexicalBlockFile(scope: !404, file: !72, discriminator: 2)
!410 = !DILocation(line: 501, column: 142, scope: !404)
!411 = !DILocation(line: 502, column: 10, scope: !401)
!412 = !DILocation(line: 504, column: 7, scope: !380)
!413 = !DILocation(line: 507, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !380, file: !72, line: 507, column: 11)
!415 = !DILocation(line: 507, column: 21, scope: !414)
!416 = !DILocation(line: 507, column: 32, scope: !414)
!417 = !DILocation(line: 507, column: 36, scope: !418)
!418 = !DILexicalBlockFile(scope: !414, file: !72, discriminator: 1)
!419 = !DILocation(line: 507, column: 45, scope: !418)
!420 = !DILocation(line: 507, column: 11, scope: !418)
!421 = !DILocation(line: 508, column: 10, scope: !422)
!422 = distinct !DILexicalBlock(scope: !414, file: !72, line: 507, column: 58)
!423 = distinct !{!423, !421}
!424 = !DILocation(line: 508, column: 36, scope: !425)
!425 = !DILexicalBlockFile(scope: !426, file: !72, discriminator: 1)
!426 = distinct !DILexicalBlock(scope: !427, file: !72, line: 508, column: 34)
!427 = distinct !DILexicalBlock(scope: !428, file: !72, line: 508, column: 19)
!428 = distinct !DILexicalBlock(scope: !422, file: !72, line: 508, column: 13)
!429 = !DILocation(line: 508, column: 76, scope: !430)
!430 = !DILexicalBlockFile(scope: !425, file: !72, discriminator: 2)
!431 = !DILocation(line: 508, column: 147, scope: !425)
!432 = !DILocation(line: 509, column: 10, scope: !422)
!433 = !DILocation(line: 511, column: 7, scope: !380)
!434 = !DILocation(line: 514, column: 7, scope: !380)
!435 = distinct !{!435, !434}
!436 = !DILocation(line: 514, column: 33, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !72, discriminator: 1)
!438 = distinct !DILexicalBlock(scope: !439, file: !72, line: 514, column: 31)
!439 = distinct !DILexicalBlock(scope: !440, file: !72, line: 514, column: 16)
!440 = distinct !DILexicalBlock(scope: !380, file: !72, line: 514, column: 10)
!441 = !DILocation(line: 514, column: 73, scope: !442)
!442 = !DILexicalBlockFile(scope: !437, file: !72, discriminator: 2)
!443 = !DILocation(line: 514, column: 132, scope: !437)
!444 = !DILocation(line: 515, column: 7, scope: !380)
!445 = !DILocation(line: 519, column: 20, scope: !339)
!446 = !DILocation(line: 519, column: 29, scope: !339)
!447 = !DILocation(line: 519, column: 5, scope: !339)
!448 = !DILocation(line: 519, column: 18, scope: !339)
!449 = !DILocation(line: 520, column: 17, scope: !339)
!450 = !DILocation(line: 520, column: 26, scope: !339)
!451 = !DILocation(line: 520, column: 5, scope: !339)
!452 = !DILocation(line: 520, column: 15, scope: !339)
!453 = !DILocation(line: 521, column: 4, scope: !339)
!454 = !DILocation(line: 522, column: 1, scope: !339)
!455 = distinct !DISubprogram(name: "HgfsServerPolicyGetShare", scope: !72, file: !72, line: 255, type: !456, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!456 = !DISubroutineType(types: !457)
!457 = !{!27, !458, !41, !47}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!459 = !DILocalVariable(name: "state", arg: 1, scope: !455, file: !72, line: 255, type: !458)
!460 = !DILocation(line: 255, column: 49, scope: !455)
!461 = !DILocalVariable(name: "nameIn", arg: 2, scope: !455, file: !72, line: 256, type: !41)
!462 = !DILocation(line: 256, column: 38, scope: !455)
!463 = !DILocalVariable(name: "nameInLen", arg: 3, scope: !455, file: !72, line: 257, type: !47)
!464 = !DILocation(line: 257, column: 33, scope: !455)
!465 = !DILocalVariable(name: "l", scope: !455, file: !72, line: 259, type: !76)
!466 = !DILocation(line: 259, column: 21, scope: !455)
!467 = !DILocation(line: 269, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !455, file: !72, line: 269, column: 4)
!469 = !DILocation(line: 269, column: 20, scope: !468)
!470 = !DILocation(line: 269, column: 27, scope: !468)
!471 = !DILocation(line: 269, column: 11, scope: !468)
!472 = !DILocation(line: 269, column: 9, scope: !468)
!473 = !DILocation(line: 269, column: 33, scope: !474)
!474 = !DILexicalBlockFile(scope: !475, file: !72, discriminator: 1)
!475 = distinct !DILexicalBlock(scope: !468, file: !72, line: 269, column: 4)
!476 = !DILocation(line: 269, column: 39, scope: !474)
!477 = !DILocation(line: 269, column: 46, scope: !474)
!478 = !DILocation(line: 269, column: 35, scope: !474)
!479 = !DILocation(line: 269, column: 4, scope: !474)
!480 = !DILocalVariable(name: "share", scope: !481, file: !72, line: 270, type: !27)
!481 = distinct !DILexicalBlock(scope: !475, file: !72, line: 269, column: 67)
!482 = !DILocation(line: 270, column: 25, scope: !481)
!483 = !DILocation(line: 272, column: 46, scope: !481)
!484 = !DILocation(line: 272, column: 37, scope: !481)
!485 = !DILocation(line: 272, column: 49, scope: !481)
!486 = !DILocation(line: 272, column: 16, scope: !481)
!487 = !DILocation(line: 272, column: 13, scope: !481)
!488 = !DILocation(line: 274, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !72, line: 274, column: 11)
!490 = !DILocation(line: 274, column: 24, scope: !489)
!491 = !DILocation(line: 274, column: 31, scope: !489)
!492 = !DILocation(line: 274, column: 21, scope: !489)
!493 = !DILocation(line: 274, column: 39, scope: !489)
!494 = !DILocation(line: 275, column: 19, scope: !489)
!495 = !DILocation(line: 275, column: 27, scope: !489)
!496 = !DILocation(line: 275, column: 34, scope: !489)
!497 = !DILocation(line: 275, column: 40, scope: !489)
!498 = !DILocation(line: 275, column: 12, scope: !489)
!499 = !DILocation(line: 274, column: 11, scope: !500)
!500 = !DILexicalBlockFile(scope: !481, file: !72, discriminator: 1)
!501 = !DILocation(line: 276, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !489, file: !72, line: 275, column: 52)
!503 = !DILocation(line: 276, column: 10, scope: !502)
!504 = !DILocation(line: 278, column: 4, scope: !481)
!505 = !DILocation(line: 269, column: 58, scope: !506)
!506 = !DILexicalBlockFile(scope: !475, file: !72, discriminator: 2)
!507 = !DILocation(line: 269, column: 61, scope: !506)
!508 = !DILocation(line: 269, column: 56, scope: !506)
!509 = !DILocation(line: 269, column: 4, scope: !506)
!510 = distinct !{!510, !511}
!511 = !DILocation(line: 269, column: 4, scope: !455)
!512 = !DILocation(line: 286, column: 13, scope: !513)
!513 = distinct !DILexicalBlock(scope: !455, file: !72, line: 286, column: 4)
!514 = !DILocation(line: 286, column: 20, scope: !513)
!515 = !DILocation(line: 286, column: 27, scope: !513)
!516 = !DILocation(line: 286, column: 11, scope: !513)
!517 = !DILocation(line: 286, column: 9, scope: !513)
!518 = !DILocation(line: 286, column: 33, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !72, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !513, file: !72, line: 286, column: 4)
!521 = !DILocation(line: 286, column: 39, scope: !519)
!522 = !DILocation(line: 286, column: 46, scope: !519)
!523 = !DILocation(line: 286, column: 35, scope: !519)
!524 = !DILocation(line: 286, column: 4, scope: !519)
!525 = !DILocalVariable(name: "share", scope: !526, file: !72, line: 287, type: !27)
!526 = distinct !DILexicalBlock(scope: !520, file: !72, line: 286, column: 67)
!527 = !DILocation(line: 287, column: 25, scope: !526)
!528 = !DILocalVariable(name: "tempName", scope: !526, file: !72, line: 288, type: !66)
!529 = !DILocation(line: 288, column: 13, scope: !526)
!530 = !DILocation(line: 295, column: 39, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !72, line: 295, column: 11)
!532 = !DILocation(line: 295, column: 49, scope: !531)
!533 = !DILocation(line: 295, column: 32, scope: !531)
!534 = !DILocation(line: 295, column: 22, scope: !531)
!535 = !DILocation(line: 295, column: 11, scope: !526)
!536 = !DILocation(line: 296, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !531, file: !72, line: 295, column: 56)
!538 = distinct !{!538, !536}
!539 = !DILocation(line: 296, column: 36, scope: !540)
!540 = !DILexicalBlockFile(scope: !541, file: !72, discriminator: 1)
!541 = distinct !DILexicalBlock(scope: !542, file: !72, line: 296, column: 34)
!542 = distinct !DILexicalBlock(scope: !543, file: !72, line: 296, column: 19)
!543 = distinct !DILexicalBlock(scope: !537, file: !72, line: 296, column: 13)
!544 = !DILocation(line: 296, column: 76, scope: !545)
!545 = !DILexicalBlockFile(scope: !540, file: !72, discriminator: 2)
!546 = !DILocation(line: 296, column: 144, scope: !540)
!547 = !DILocation(line: 297, column: 10, scope: !537)
!548 = !DILocation(line: 300, column: 14, scope: !526)
!549 = !DILocation(line: 300, column: 24, scope: !526)
!550 = !DILocation(line: 300, column: 32, scope: !526)
!551 = !DILocation(line: 300, column: 7, scope: !526)
!552 = !DILocation(line: 301, column: 16, scope: !526)
!553 = !DILocation(line: 301, column: 7, scope: !526)
!554 = !DILocation(line: 301, column: 27, scope: !526)
!555 = !DILocation(line: 303, column: 46, scope: !526)
!556 = !DILocation(line: 303, column: 37, scope: !526)
!557 = !DILocation(line: 303, column: 49, scope: !526)
!558 = !DILocation(line: 303, column: 16, scope: !526)
!559 = !DILocation(line: 303, column: 13, scope: !526)
!560 = !DILocation(line: 305, column: 11, scope: !561)
!561 = distinct !DILexicalBlock(scope: !526, file: !72, line: 305, column: 11)
!562 = !DILocation(line: 305, column: 24, scope: !561)
!563 = !DILocation(line: 305, column: 31, scope: !561)
!564 = !DILocation(line: 305, column: 21, scope: !561)
!565 = !DILocation(line: 305, column: 39, scope: !561)
!566 = !DILocation(line: 309, column: 24, scope: !561)
!567 = !DILocation(line: 309, column: 34, scope: !561)
!568 = !DILocation(line: 309, column: 41, scope: !561)
!569 = !DILocation(line: 309, column: 47, scope: !561)
!570 = !DILocation(line: 309, column: 12, scope: !561)
!571 = !DILocation(line: 305, column: 11, scope: !572)
!572 = !DILexicalBlockFile(scope: !526, file: !72, discriminator: 1)
!573 = !DILocation(line: 311, column: 15, scope: !574)
!574 = distinct !DILexicalBlock(scope: !561, file: !72, line: 309, column: 59)
!575 = !DILocation(line: 311, column: 10, scope: !574)
!576 = !DILocation(line: 312, column: 17, scope: !574)
!577 = !DILocation(line: 312, column: 10, scope: !574)
!578 = !DILocation(line: 315, column: 12, scope: !526)
!579 = !DILocation(line: 315, column: 7, scope: !526)
!580 = !DILocation(line: 316, column: 4, scope: !526)
!581 = !DILocation(line: 286, column: 58, scope: !582)
!582 = !DILexicalBlockFile(scope: !520, file: !72, discriminator: 2)
!583 = !DILocation(line: 286, column: 61, scope: !582)
!584 = !DILocation(line: 286, column: 56, scope: !582)
!585 = !DILocation(line: 286, column: 4, scope: !582)
!586 = distinct !{!586, !587}
!587 = !DILocation(line: 286, column: 4, scope: !455)
!588 = !DILocation(line: 318, column: 4, scope: !455)
!589 = !DILocation(line: 319, column: 1, scope: !455)
!590 = distinct !DISubprogram(name: "HgfsServerPolicy_ProcessCPName", scope: !72, file: !72, line: 546, type: !591, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!591 = !DISubroutineType(types: !592)
!592 = !{!342, !41, !47, !108, !108, !593, !65}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!594 = !DILocalVariable(name: "nameIn", arg: 1, scope: !590, file: !72, line: 546, type: !41)
!595 = !DILocation(line: 546, column: 44, scope: !590)
!596 = !DILocalVariable(name: "nameInLen", arg: 2, scope: !590, file: !72, line: 547, type: !47)
!597 = !DILocation(line: 547, column: 39, scope: !590)
!598 = !DILocalVariable(name: "readAccess", arg: 3, scope: !590, file: !72, line: 548, type: !108)
!599 = !DILocation(line: 548, column: 38, scope: !590)
!600 = !DILocalVariable(name: "writeAccess", arg: 4, scope: !590, file: !72, line: 549, type: !108)
!601 = !DILocation(line: 549, column: 38, scope: !590)
!602 = !DILocalVariable(name: "handle", arg: 5, scope: !590, file: !72, line: 550, type: !593)
!603 = !DILocation(line: 550, column: 56, scope: !590)
!604 = !DILocalVariable(name: "shareBaseDir", arg: 6, scope: !590, file: !72, line: 551, type: !65)
!605 = !DILocation(line: 551, column: 45, scope: !590)
!606 = !DILocalVariable(name: "myShare", scope: !590, file: !72, line: 553, type: !27)
!607 = !DILocation(line: 553, column: 22, scope: !590)
!608 = !DILocation(line: 558, column: 49, scope: !590)
!609 = !DILocation(line: 558, column: 57, scope: !590)
!610 = !DILocation(line: 558, column: 14, scope: !590)
!611 = !DILocation(line: 558, column: 12, scope: !590)
!612 = !DILocation(line: 559, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !590, file: !72, line: 559, column: 8)
!614 = !DILocation(line: 559, column: 8, scope: !590)
!615 = !DILocation(line: 560, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !72, line: 559, column: 18)
!617 = distinct !{!617, !615}
!618 = !DILocation(line: 560, column: 33, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !72, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !621, file: !72, line: 560, column: 31)
!621 = distinct !DILexicalBlock(scope: !622, file: !72, line: 560, column: 16)
!622 = distinct !DILexicalBlock(scope: !616, file: !72, line: 560, column: 10)
!623 = !DILocation(line: 560, column: 73, scope: !624)
!624 = !DILexicalBlockFile(scope: !619, file: !72, discriminator: 2)
!625 = !DILocation(line: 560, column: 129, scope: !619)
!626 = !DILocation(line: 561, column: 7, scope: !616)
!627 = !DILocation(line: 564, column: 18, scope: !590)
!628 = !DILocation(line: 564, column: 27, scope: !590)
!629 = !DILocation(line: 564, column: 5, scope: !590)
!630 = !DILocation(line: 564, column: 16, scope: !590)
!631 = !DILocation(line: 565, column: 19, scope: !590)
!632 = !DILocation(line: 565, column: 28, scope: !590)
!633 = !DILocation(line: 565, column: 5, scope: !590)
!634 = !DILocation(line: 565, column: 17, scope: !590)
!635 = !DILocation(line: 566, column: 20, scope: !590)
!636 = !DILocation(line: 566, column: 29, scope: !590)
!637 = !DILocation(line: 566, column: 5, scope: !590)
!638 = !DILocation(line: 566, column: 18, scope: !590)
!639 = !DILocation(line: 567, column: 14, scope: !590)
!640 = !DILocation(line: 567, column: 23, scope: !590)
!641 = !DILocation(line: 567, column: 5, scope: !590)
!642 = !DILocation(line: 567, column: 12, scope: !590)
!643 = !DILocation(line: 568, column: 4, scope: !590)
!644 = !DILocation(line: 569, column: 1, scope: !590)
!645 = distinct !DISubprogram(name: "HgfsServerPolicy_GetShareOptions", scope: !72, file: !72, line: 591, type: !646, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!646 = !DISubroutineType(types: !647)
!647 = !{!342, !41, !47, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!649 = !DILocalVariable(name: "nameIn", arg: 1, scope: !645, file: !72, line: 591, type: !41)
!650 = !DILocation(line: 591, column: 46, scope: !645)
!651 = !DILocalVariable(name: "nameInLen", arg: 2, scope: !645, file: !72, line: 592, type: !47)
!652 = !DILocation(line: 592, column: 41, scope: !645)
!653 = !DILocalVariable(name: "configOptions", arg: 3, scope: !645, file: !72, line: 593, type: !648)
!654 = !DILocation(line: 593, column: 52, scope: !645)
!655 = !DILocalVariable(name: "share", scope: !645, file: !72, line: 595, type: !27)
!656 = !DILocation(line: 595, column: 22, scope: !645)
!657 = !DILocalVariable(name: "inEnd", scope: !645, file: !72, line: 596, type: !41)
!658 = !DILocation(line: 596, column: 16, scope: !645)
!659 = !DILocalVariable(name: "next", scope: !645, file: !72, line: 597, type: !66)
!660 = !DILocation(line: 597, column: 10, scope: !645)
!661 = !DILocalVariable(name: "len", scope: !645, file: !72, line: 598, type: !662)
!662 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!663 = !DILocation(line: 598, column: 8, scope: !645)
!664 = !DILocation(line: 603, column: 12, scope: !645)
!665 = !DILocation(line: 603, column: 21, scope: !645)
!666 = !DILocation(line: 603, column: 19, scope: !645)
!667 = !DILocation(line: 603, column: 10, scope: !645)
!668 = !DILocation(line: 604, column: 30, scope: !645)
!669 = !DILocation(line: 604, column: 38, scope: !645)
!670 = !DILocation(line: 604, column: 10, scope: !645)
!671 = !DILocation(line: 604, column: 8, scope: !645)
!672 = !DILocation(line: 605, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !645, file: !72, line: 605, column: 8)
!674 = !DILocation(line: 605, column: 12, scope: !673)
!675 = !DILocation(line: 605, column: 8, scope: !645)
!676 = !DILocation(line: 606, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !72, line: 605, column: 17)
!678 = distinct !{!678, !676}
!679 = !DILocation(line: 606, column: 33, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !72, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !682, file: !72, line: 606, column: 31)
!682 = distinct !DILexicalBlock(scope: !683, file: !72, line: 606, column: 16)
!683 = distinct !DILexicalBlock(scope: !677, file: !72, line: 606, column: 10)
!684 = !DILocation(line: 606, column: 73, scope: !685)
!685 = !DILexicalBlockFile(scope: !680, file: !72, discriminator: 2)
!686 = !DILocation(line: 606, column: 149, scope: !680)
!687 = !DILocation(line: 607, column: 7, scope: !677)
!688 = !DILocation(line: 610, column: 47, scope: !645)
!689 = !DILocation(line: 610, column: 55, scope: !645)
!690 = !DILocation(line: 610, column: 12, scope: !645)
!691 = !DILocation(line: 610, column: 10, scope: !645)
!692 = !DILocation(line: 611, column: 9, scope: !693)
!693 = distinct !DILexicalBlock(scope: !645, file: !72, line: 611, column: 8)
!694 = !DILocation(line: 611, column: 8, scope: !645)
!695 = !DILocation(line: 612, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !72, line: 611, column: 16)
!697 = distinct !{!697, !695}
!698 = !DILocation(line: 612, column: 33, scope: !699)
!699 = !DILexicalBlockFile(scope: !700, file: !72, discriminator: 1)
!700 = distinct !DILexicalBlock(scope: !701, file: !72, line: 612, column: 31)
!701 = distinct !DILexicalBlock(scope: !702, file: !72, line: 612, column: 16)
!702 = distinct !DILexicalBlock(scope: !696, file: !72, line: 612, column: 10)
!703 = !DILocation(line: 612, column: 73, scope: !704)
!704 = !DILexicalBlockFile(scope: !699, file: !72, discriminator: 2)
!705 = !DILocation(line: 612, column: 146, scope: !699)
!706 = !DILocation(line: 613, column: 7, scope: !696)
!707 = !DILocation(line: 615, column: 21, scope: !645)
!708 = !DILocation(line: 615, column: 28, scope: !645)
!709 = !DILocation(line: 615, column: 5, scope: !645)
!710 = !DILocation(line: 615, column: 19, scope: !645)
!711 = !DILocation(line: 616, column: 4, scope: !645)
!712 = !DILocation(line: 617, column: 1, scope: !645)
!713 = distinct !DISubprogram(name: "HgfsServerPolicy_IsShareOptionSet", scope: !72, file: !72, line: 638, type: !714, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!714 = !DISubroutineType(types: !715)
!715 = !{!53, !57, !58}
!716 = !DILocalVariable(name: "configOptions", arg: 1, scope: !713, file: !72, line: 638, type: !57)
!717 = !DILocation(line: 638, column: 52, scope: !713)
!718 = !DILocalVariable(name: "option", arg: 2, scope: !713, file: !72, line: 639, type: !58)
!719 = !DILocation(line: 639, column: 42, scope: !713)
!720 = !DILocation(line: 641, column: 12, scope: !713)
!721 = !DILocation(line: 641, column: 28, scope: !713)
!722 = !DILocation(line: 641, column: 26, scope: !713)
!723 = !DILocation(line: 641, column: 39, scope: !713)
!724 = !DILocation(line: 641, column: 36, scope: !713)
!725 = !DILocation(line: 641, column: 11, scope: !713)
!726 = !DILocation(line: 641, column: 4, scope: !713)
!727 = distinct !DISubprogram(name: "HgfsServerPolicy_GetShareMode", scope: !72, file: !72, line: 666, type: !728, isLocal: false, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!728 = !DISubroutineType(types: !729)
!729 = !{!342, !41, !47, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!731 = !DILocalVariable(name: "nameIn", arg: 1, scope: !727, file: !72, line: 666, type: !41)
!732 = !DILocation(line: 666, column: 43, scope: !727)
!733 = !DILocalVariable(name: "nameInLen", arg: 2, scope: !727, file: !72, line: 667, type: !47)
!734 = !DILocation(line: 667, column: 38, scope: !727)
!735 = !DILocalVariable(name: "mode", arg: 3, scope: !727, file: !72, line: 668, type: !730)
!736 = !DILocation(line: 668, column: 45, scope: !727)
!737 = !DILocalVariable(name: "share", scope: !727, file: !72, line: 670, type: !27)
!738 = !DILocation(line: 670, column: 22, scope: !727)
!739 = !DILocation(line: 675, column: 47, scope: !727)
!740 = !DILocation(line: 675, column: 55, scope: !727)
!741 = !DILocation(line: 675, column: 12, scope: !727)
!742 = !DILocation(line: 675, column: 10, scope: !727)
!743 = !DILocation(line: 676, column: 9, scope: !744)
!744 = distinct !DILexicalBlock(scope: !727, file: !72, line: 676, column: 8)
!745 = !DILocation(line: 676, column: 8, scope: !727)
!746 = !DILocation(line: 677, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !72, line: 676, column: 16)
!748 = distinct !{!748, !746}
!749 = !DILocation(line: 677, column: 33, scope: !750)
!750 = !DILexicalBlockFile(scope: !751, file: !72, discriminator: 1)
!751 = distinct !DILexicalBlock(scope: !752, file: !72, line: 677, column: 31)
!752 = distinct !DILexicalBlock(scope: !753, file: !72, line: 677, column: 16)
!753 = distinct !DILexicalBlock(scope: !747, file: !72, line: 677, column: 10)
!754 = !DILocation(line: 677, column: 73, scope: !755)
!755 = !DILexicalBlockFile(scope: !750, file: !72, discriminator: 2)
!756 = !DILocation(line: 677, column: 142, scope: !750)
!757 = !DILocation(line: 678, column: 7, scope: !747)
!758 = !DILocation(line: 684, column: 8, scope: !759)
!759 = distinct !DILexicalBlock(scope: !727, file: !72, line: 684, column: 8)
!760 = !DILocation(line: 684, column: 15, scope: !759)
!761 = !DILocation(line: 684, column: 26, scope: !759)
!762 = !DILocation(line: 684, column: 29, scope: !763)
!763 = !DILexicalBlockFile(scope: !759, file: !72, discriminator: 1)
!764 = !DILocation(line: 684, column: 36, scope: !763)
!765 = !DILocation(line: 684, column: 8, scope: !763)
!766 = !DILocation(line: 685, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !759, file: !72, line: 684, column: 49)
!768 = !DILocation(line: 685, column: 13, scope: !767)
!769 = !DILocation(line: 686, column: 4, scope: !767)
!770 = !DILocation(line: 686, column: 15, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !72, discriminator: 1)
!772 = distinct !DILexicalBlock(scope: !759, file: !72, line: 686, column: 15)
!773 = !DILocation(line: 686, column: 22, scope: !771)
!774 = !DILocation(line: 687, column: 8, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !72, line: 686, column: 34)
!776 = !DILocation(line: 687, column: 13, scope: !775)
!777 = !DILocation(line: 688, column: 4, scope: !775)
!778 = !DILocation(line: 688, column: 15, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !72, discriminator: 1)
!780 = distinct !DILexicalBlock(scope: !772, file: !72, line: 688, column: 15)
!781 = !DILocation(line: 688, column: 22, scope: !779)
!782 = !DILocation(line: 689, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !72, line: 688, column: 35)
!784 = !DILocation(line: 689, column: 13, scope: !783)
!785 = !DILocation(line: 690, column: 4, scope: !783)
!786 = !DILocation(line: 693, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !780, file: !72, line: 690, column: 11)
!788 = distinct !{!788, !786}
!789 = !DILocation(line: 693, column: 33, scope: !790)
!790 = !DILexicalBlockFile(scope: !791, file: !72, discriminator: 1)
!791 = distinct !DILexicalBlock(scope: !792, file: !72, line: 693, column: 31)
!792 = distinct !DILexicalBlock(scope: !793, file: !72, line: 693, column: 16)
!793 = distinct !DILexicalBlock(scope: !787, file: !72, line: 693, column: 10)
!794 = !DILocation(line: 693, column: 73, scope: !795)
!795 = !DILexicalBlockFile(scope: !790, file: !72, discriminator: 2)
!796 = !DILocation(line: 693, column: 139, scope: !790)
!797 = !DILocation(line: 694, column: 7, scope: !787)
!798 = !DILocation(line: 697, column: 4, scope: !727)
!799 = !DILocation(line: 698, column: 1, scope: !727)
!800 = distinct !DISubprogram(name: "DblLnkLst_Link", scope: !34, file: !34, line: 148, type: !197, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!801 = !DILocalVariable(name: "l1", arg: 1, scope: !800, file: !34, line: 148, type: !76)
!802 = !DILocation(line: 148, column: 33, scope: !800)
!803 = !DILocalVariable(name: "l2", arg: 2, scope: !800, file: !34, line: 149, type: !76)
!804 = !DILocation(line: 149, column: 33, scope: !800)
!805 = !DILocalVariable(name: "tmp", scope: !800, file: !34, line: 151, type: !76)
!806 = !DILocation(line: 151, column: 21, scope: !800)
!807 = !DILocation(line: 153, column: 29, scope: !800)
!808 = !DILocation(line: 153, column: 11, scope: !800)
!809 = !DILocation(line: 153, column: 15, scope: !800)
!810 = !DILocation(line: 153, column: 9, scope: !800)
!811 = !DILocation(line: 153, column: 22, scope: !800)
!812 = !DILocation(line: 153, column: 27, scope: !800)
!813 = !DILocation(line: 154, column: 34, scope: !800)
!814 = !DILocation(line: 154, column: 16, scope: !800)
!815 = !DILocation(line: 154, column: 20, scope: !800)
!816 = !DILocation(line: 154, column: 5, scope: !800)
!817 = !DILocation(line: 154, column: 9, scope: !800)
!818 = !DILocation(line: 154, column: 14, scope: !800)
!819 = !DILocation(line: 154, column: 27, scope: !800)
!820 = !DILocation(line: 154, column: 32, scope: !800)
!821 = !DILocation(line: 155, column: 16, scope: !800)
!822 = !DILocation(line: 155, column: 5, scope: !800)
!823 = !DILocation(line: 155, column: 9, scope: !800)
!824 = !DILocation(line: 155, column: 14, scope: !800)
!825 = !DILocation(line: 156, column: 1, scope: !800)
!826 = distinct !DISubprogram(name: "DblLnkLst_Unlink1", scope: !34, file: !34, line: 210, type: !91, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!827 = !DILocalVariable(name: "l", arg: 1, scope: !826, file: !34, line: 210, type: !76)
!828 = !DILocation(line: 210, column: 36, scope: !826)
!829 = !DILocation(line: 212, column: 21, scope: !826)
!830 = !DILocation(line: 212, column: 24, scope: !826)
!831 = !DILocation(line: 212, column: 27, scope: !826)
!832 = !DILocation(line: 212, column: 4, scope: !826)
!833 = !DILocation(line: 213, column: 1, scope: !826)
!834 = distinct !DISubprogram(name: "HgfsServerPolicyDestroyShare", scope: !72, file: !72, line: 101, type: !835, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !27}
!837 = !DILocalVariable(name: "share", arg: 1, scope: !834, file: !72, line: 101, type: !27)
!838 = !DILocation(line: 101, column: 48, scope: !834)
!839 = !DILocation(line: 105, column: 9, scope: !834)
!840 = !DILocation(line: 105, column: 4, scope: !834)
!841 = !DILocation(line: 106, column: 1, scope: !834)
!842 = distinct !DISubprogram(name: "DblLnkLst_Unlink", scope: !34, file: !34, line: 182, type: !197, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !114)
!843 = !DILocalVariable(name: "l1", arg: 1, scope: !842, file: !34, line: 182, type: !76)
!844 = !DILocation(line: 182, column: 35, scope: !842)
!845 = !DILocalVariable(name: "l2", arg: 2, scope: !842, file: !34, line: 183, type: !76)
!846 = !DILocation(line: 183, column: 35, scope: !842)
!847 = !DILocalVariable(name: "tmp", scope: !842, file: !34, line: 185, type: !76)
!848 = !DILocation(line: 185, column: 21, scope: !842)
!849 = !DILocation(line: 187, column: 10, scope: !842)
!850 = !DILocation(line: 187, column: 14, scope: !842)
!851 = !DILocation(line: 187, column: 8, scope: !842)
!852 = !DILocation(line: 188, column: 34, scope: !842)
!853 = !DILocation(line: 188, column: 16, scope: !842)
!854 = !DILocation(line: 188, column: 20, scope: !842)
!855 = !DILocation(line: 188, column: 5, scope: !842)
!856 = !DILocation(line: 188, column: 9, scope: !842)
!857 = !DILocation(line: 188, column: 14, scope: !842)
!858 = !DILocation(line: 188, column: 27, scope: !842)
!859 = !DILocation(line: 188, column: 32, scope: !842)
!860 = !DILocation(line: 189, column: 30, scope: !842)
!861 = !DILocation(line: 189, column: 16, scope: !842)
!862 = !DILocation(line: 189, column: 5, scope: !842)
!863 = !DILocation(line: 189, column: 9, scope: !842)
!864 = !DILocation(line: 189, column: 14, scope: !842)
!865 = !DILocation(line: 189, column: 23, scope: !842)
!866 = !DILocation(line: 189, column: 28, scope: !842)
!867 = !DILocation(line: 190, column: 1, scope: !842)
