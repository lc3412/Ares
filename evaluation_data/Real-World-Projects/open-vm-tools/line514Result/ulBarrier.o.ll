; ModuleID = './ulBarrier.o.i'
source_filename = "./ulBarrier.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MXUserBarrier = type { %struct.MXUserHeader, %struct.MXUserExclLock*, i32, i32, [2 x %struct.BarrierContext] }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXUserExclLock = type opaque
%struct.BarrierContext = type { i32, %struct.MXUserCondVar* }
%struct.MXUserCondVar = type opaque
%struct.Atomic_uint64 = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"Barrier-%p\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Attempted destroy on barrier while in use\0A\00", align 1
@__FUNCTION__.MXUser_DestroyBarrier = private unnamed_addr constant [22 x i8] c"MXUser_DestroyBarrier\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: Barrier @ 0x%p\0A\00", align 1
@__FUNCTION__.MXUserDumpBarrier = private unnamed_addr constant [18 x i8] c"MXUserDumpBarrier\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09signature 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09name %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\09rank 0x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\09serial number %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09lock 0x%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09configured count %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"\09current context %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09context[%u] count %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\09context[%u] condVar 0x%p\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.MXUserBarrier* @MXUser_CreateBarrier(i8*, i32, i32) #0 !dbg !83 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.MXUserBarrier*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !89, metadata !90), !dbg !91
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !92, metadata !90), !dbg !93
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !94, metadata !90), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %7, metadata !96, metadata !90), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %8, metadata !98, metadata !90), !dbg !99
  %9 = call i8* @UtilSafeCalloc0(i64 1, i64 104), !dbg !100
  %10 = bitcast i8* %9 to %struct.MXUserBarrier*, !dbg !100
  store %struct.MXUserBarrier* %10, %struct.MXUserBarrier** %8, align 8, !dbg !101
  %11 = load i8*, i8** %4, align 8, !dbg !102
  %12 = icmp eq i8* %11, null, !dbg !104
  br i1 %12, label %13, label %16, !dbg !105

; <label>:13:                                     ; preds = %3
  %14 = call i8* @llvm.returnaddress(i32 0), !dbg !106
  %15 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !108
  store i8* %15, i8** %7, align 8, !dbg !110
  br label %19, !dbg !111

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %4, align 8, !dbg !112
  %18 = call i8* @UtilSafeStrdup0(i8* %17), !dbg !114
  store i8* %18, i8** %7, align 8, !dbg !115
  br label %19

; <label>:19:                                     ; preds = %16, %13
  %20 = load i8*, i8** %7, align 8, !dbg !116
  %21 = load i32, i32* %5, align 4, !dbg !117
  %22 = call %struct.MXUserExclLock* @MXUser_CreateExclLock(i8* %20, i32 %21), !dbg !118
  %23 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !119
  %24 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %23, i32 0, i32 1, !dbg !120
  store %struct.MXUserExclLock* %22, %struct.MXUserExclLock** %24, align 8, !dbg !121
  %25 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !122
  %26 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %25, i32 0, i32 1, !dbg !123
  %27 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %26, align 8, !dbg !123
  %28 = call %struct.MXUserCondVar* @MXUser_CreateCondVarExclLock(%struct.MXUserExclLock* %27), !dbg !124
  %29 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !125
  %30 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %29, i32 0, i32 4, !dbg !126
  %31 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %30, i64 0, i64 0, !dbg !125
  %32 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %31, i32 0, i32 1, !dbg !127
  store %struct.MXUserCondVar* %28, %struct.MXUserCondVar** %32, align 8, !dbg !128
  %33 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !129
  %34 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %33, i32 0, i32 1, !dbg !130
  %35 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %34, align 8, !dbg !130
  %36 = call %struct.MXUserCondVar* @MXUser_CreateCondVarExclLock(%struct.MXUserExclLock* %35), !dbg !131
  %37 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !132
  %38 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %37, i32 0, i32 4, !dbg !133
  %39 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %38, i64 0, i64 1, !dbg !132
  %40 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %39, i32 0, i32 1, !dbg !134
  store %struct.MXUserCondVar* %36, %struct.MXUserCondVar** %40, align 8, !dbg !135
  %41 = load i32, i32* %6, align 4, !dbg !136
  %42 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !137
  %43 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %42, i32 0, i32 2, !dbg !138
  store i32 %41, i32* %43, align 8, !dbg !139
  %44 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !140
  %45 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %44, i32 0, i32 3, !dbg !141
  store volatile i32 0, i32* %45, align 4, !dbg !142
  %46 = call i32 @MXUserGetSignature(i32 7), !dbg !143
  %47 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !144
  %48 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %47, i32 0, i32 0, !dbg !145
  %49 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %48, i32 0, i32 0, !dbg !146
  store i32 %46, i32* %49, align 8, !dbg !147
  %50 = load i8*, i8** %7, align 8, !dbg !148
  %51 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !149
  %52 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %51, i32 0, i32 0, !dbg !150
  %53 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %52, i32 0, i32 1, !dbg !151
  store i8* %50, i8** %53, align 8, !dbg !152
  %54 = load i32, i32* %5, align 4, !dbg !153
  %55 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !154
  %56 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %55, i32 0, i32 0, !dbg !155
  %57 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %56, i32 0, i32 2, !dbg !156
  store i32 %54, i32* %57, align 8, !dbg !157
  %58 = call i32 @MXUserAllocSerialNumber(), !dbg !158
  %59 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !159
  %60 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %59, i32 0, i32 0, !dbg !160
  %61 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %60, i32 0, i32 3, !dbg !161
  %62 = bitcast %struct.anon* %61 to i32*, !dbg !162
  %63 = load i32, i32* %62, align 4, !dbg !163
  %64 = and i32 %58, 16777215, !dbg !163
  %65 = and i32 %63, -16777216, !dbg !163
  %66 = or i32 %65, %64, !dbg !163
  store i32 %66, i32* %62, align 4, !dbg !163
  %67 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !164
  %68 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %67, i32 0, i32 0, !dbg !165
  %69 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %68, i32 0, i32 4, !dbg !166
  store void (%struct.MXUserHeader*)* @MXUserDumpBarrier, void (%struct.MXUserHeader*)** %69, align 8, !dbg !167
  %70 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !168
  %71 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %70, i32 0, i32 0, !dbg !169
  %72 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %71, i32 0, i32 5, !dbg !170
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %72, align 8, !dbg !171
  %73 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !172
  %74 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %73, i32 0, i32 0, !dbg !173
  call void @MXUserAddToList(%struct.MXUserHeader* %74), !dbg !174
  %75 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %8, align 8, !dbg !175
  ret %struct.MXUserBarrier* %75, !dbg !176
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32) #1

declare i8* @UtilSafeStrdup0(i8*) #2

declare %struct.MXUserExclLock* @MXUser_CreateExclLock(i8*, i32) #2

declare %struct.MXUserCondVar* @MXUser_CreateCondVarExclLock(%struct.MXUserExclLock*) #2

declare i32 @MXUserGetSignature(i32) #2

declare i32 @MXUserAllocSerialNumber() #2

; Function Attrs: nounwind uwtable
define internal void @MXUserDumpBarrier(%struct.MXUserHeader*) #0 !dbg !177 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MXUserBarrier*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !181, metadata !90), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %3, metadata !183, metadata !90), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %4, metadata !185, metadata !90), !dbg !186
  %5 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !187
  %6 = bitcast %struct.MXUserHeader* %5 to %struct.MXUserBarrier*, !dbg !188
  store %struct.MXUserBarrier* %6, %struct.MXUserBarrier** %4, align 8, !dbg !186
  %7 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !189
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.MXUserDumpBarrier, i32 0, i32 0), %struct.MXUserBarrier* %7), !dbg !190
  %8 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !191
  %9 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %8, i32 0, i32 0, !dbg !192
  %10 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %9, i32 0, i32 0, !dbg !193
  %11 = load i32, i32* %10, align 8, !dbg !193
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %11), !dbg !194
  %12 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !195
  %13 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %12, i32 0, i32 0, !dbg !196
  %14 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %13, i32 0, i32 1, !dbg !197
  %15 = load i8*, i8** %14, align 8, !dbg !197
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* %15), !dbg !198
  %16 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !199
  %17 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %16, i32 0, i32 0, !dbg !200
  %18 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %17, i32 0, i32 2, !dbg !201
  %19 = load i32, i32* %18, align 8, !dbg !201
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %19), !dbg !202
  %20 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !203
  %21 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %20, i32 0, i32 0, !dbg !204
  %22 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %21, i32 0, i32 3, !dbg !205
  %23 = bitcast %struct.anon* %22 to i32*, !dbg !206
  %24 = load i32, i32* %23, align 4, !dbg !206
  %25 = and i32 %24, 16777215, !dbg !206
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 %25), !dbg !207
  %26 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !208
  %27 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %26, i32 0, i32 1, !dbg !209
  %28 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %27, align 8, !dbg !209
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct.MXUserExclLock* %28), !dbg !210
  %29 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !211
  %30 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %29, i32 0, i32 2, !dbg !212
  %31 = load i32, i32* %30, align 8, !dbg !212
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %31), !dbg !213
  %32 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !214
  %33 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %32, i32 0, i32 3, !dbg !215
  %34 = load volatile i32, i32* %33, align 4, !dbg !215
  store i32 %34, i32* %3, align 4, !dbg !216
  %35 = load i32, i32* %3, align 4, !dbg !217
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %35), !dbg !218
  %36 = load i32, i32* %3, align 4, !dbg !219
  %37 = load i32, i32* %3, align 4, !dbg !220
  %38 = zext i32 %37 to i64, !dbg !221
  %39 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !221
  %40 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %39, i32 0, i32 4, !dbg !222
  %41 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %40, i64 0, i64 %38, !dbg !221
  %42 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %41, i32 0, i32 0, !dbg !223
  %43 = load i32, i32* %42, align 8, !dbg !223
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 %36, i32 %43), !dbg !224
  %44 = load i32, i32* %3, align 4, !dbg !225
  %45 = load i32, i32* %3, align 4, !dbg !226
  %46 = zext i32 %45 to i64, !dbg !227
  %47 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !227
  %48 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %47, i32 0, i32 4, !dbg !228
  %49 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %48, i64 0, i64 %46, !dbg !227
  %50 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %49, i32 0, i32 1, !dbg !229
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %44, %struct.MXUserCondVar** %50), !dbg !230
  %51 = load i32, i32* %3, align 4, !dbg !231
  %52 = add i32 %51, 1, !dbg !232
  %53 = and i32 %52, 1, !dbg !233
  store i32 %53, i32* %3, align 4, !dbg !234
  %54 = load i32, i32* %3, align 4, !dbg !235
  %55 = load i32, i32* %3, align 4, !dbg !236
  %56 = zext i32 %55 to i64, !dbg !237
  %57 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !237
  %58 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %57, i32 0, i32 4, !dbg !238
  %59 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %58, i64 0, i64 %56, !dbg !237
  %60 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %59, i32 0, i32 0, !dbg !239
  %61 = load i32, i32* %60, align 8, !dbg !239
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 %54, i32 %61), !dbg !240
  %62 = load i32, i32* %3, align 4, !dbg !241
  %63 = load i32, i32* %3, align 4, !dbg !242
  %64 = zext i32 %63 to i64, !dbg !243
  %65 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %4, align 8, !dbg !243
  %66 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %65, i32 0, i32 4, !dbg !244
  %67 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %66, i64 0, i64 %64, !dbg !243
  %68 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %67, i32 0, i32 1, !dbg !245
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %62, %struct.MXUserCondVar** %68), !dbg !246
  ret void, !dbg !247
}

declare void @MXUserAddToList(%struct.MXUserHeader*) #2

; Function Attrs: nounwind uwtable
define void @MXUser_DestroyBarrier(%struct.MXUserBarrier*) #0 !dbg !248 {
  %2 = alloca %struct.MXUserBarrier*, align 8
  store %struct.MXUserBarrier* %0, %struct.MXUserBarrier** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %2, metadata !251, metadata !90), !dbg !252
  %3 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !253
  %4 = icmp ne %struct.MXUserBarrier* %3, null, !dbg !255
  %5 = xor i1 %4, true, !dbg !256
  %6 = xor i1 %5, true, !dbg !257
  %7 = zext i1 %6 to i32, !dbg !257
  %8 = sext i32 %7 to i64, !dbg !257
  %9 = icmp ne i64 %8, 0, !dbg !258
  br i1 %9, label %10, label %57, !dbg !259

; <label>:10:                                     ; preds = %1
  %11 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !260
  %12 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %11, i32 0, i32 0, !dbg !262
  call void @MXUserValidateHeader(%struct.MXUserHeader* %12, i32 7), !dbg !263
  %13 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !264
  %14 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %13, i32 0, i32 4, !dbg !266
  %15 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %14, i64 0, i64 0, !dbg !264
  %16 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %15, i32 0, i32 0, !dbg !267
  %17 = load i32, i32* %16, align 8, !dbg !267
  %18 = icmp ne i32 %17, 0, !dbg !268
  br i1 %18, label %26, label %19, !dbg !269

; <label>:19:                                     ; preds = %10
  %20 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !270
  %21 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %20, i32 0, i32 4, !dbg !271
  %22 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %21, i64 0, i64 1, !dbg !270
  %23 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %22, i32 0, i32 0, !dbg !272
  %24 = load i32, i32* %23, align 8, !dbg !272
  %25 = icmp ne i32 %24, 0, !dbg !273
  br i1 %25, label %26, label %29, !dbg !274

; <label>:26:                                     ; preds = %19, %10
  %27 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !276
  %28 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %27, i32 0, i32 0, !dbg !278
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.MXUser_DestroyBarrier, i32 0, i32 0)), !dbg !279
  br label %29, !dbg !280

; <label>:29:                                     ; preds = %26, %19
  %30 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !281
  %31 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %30, i32 0, i32 0, !dbg !282
  %32 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %31, i32 0, i32 0, !dbg !283
  store i32 0, i32* %32, align 8, !dbg !284
  %33 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !285
  %34 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %33, i32 0, i32 0, !dbg !286
  call void @MXUserRemoveFromList(%struct.MXUserHeader* %34), !dbg !287
  %35 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !288
  %36 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %35, i32 0, i32 4, !dbg !289
  %37 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %36, i64 0, i64 0, !dbg !288
  %38 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %37, i32 0, i32 1, !dbg !290
  %39 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %38, align 8, !dbg !290
  call void @MXUser_DestroyCondVar(%struct.MXUserCondVar* %39), !dbg !291
  %40 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !292
  %41 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %40, i32 0, i32 4, !dbg !293
  %42 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %41, i64 0, i64 1, !dbg !292
  %43 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %42, i32 0, i32 1, !dbg !294
  %44 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %43, align 8, !dbg !294
  call void @MXUser_DestroyCondVar(%struct.MXUserCondVar* %44), !dbg !295
  %45 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !296
  %46 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %45, i32 0, i32 1, !dbg !297
  %47 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %46, align 8, !dbg !297
  call void @MXUser_DestroyExclLock(%struct.MXUserExclLock* %47), !dbg !298
  %48 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !299
  %49 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %48, i32 0, i32 0, !dbg !300
  %50 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %49, i32 0, i32 1, !dbg !301
  %51 = load i8*, i8** %50, align 8, !dbg !301
  call void @free(i8* %51) #5, !dbg !302
  %52 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !303
  %53 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %52, i32 0, i32 0, !dbg !304
  %54 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %53, i32 0, i32 1, !dbg !305
  store i8* null, i8** %54, align 8, !dbg !306
  %55 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !307
  %56 = bitcast %struct.MXUserBarrier* %55 to i8*, !dbg !307
  call void @free(i8* %56) #5, !dbg !308
  br label %57, !dbg !309

; <label>:57:                                     ; preds = %29, %1
  ret void, !dbg !310
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserValidateHeader(%struct.MXUserHeader*, i32) #3 !dbg !311 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !315, metadata !90), !dbg !316
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !317, metadata !90), !dbg !318
  ret void, !dbg !319
}

declare void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #2

declare void @MXUserRemoveFromList(%struct.MXUserHeader*) #2

declare void @MXUser_DestroyCondVar(%struct.MXUserCondVar*) #2

declare void @MXUser_DestroyExclLock(%struct.MXUserExclLock*) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @MXUser_EnterBarrier(%struct.MXUserBarrier*) #0 !dbg !320 {
  %2 = alloca %struct.MXUserBarrier*, align 8
  %3 = alloca %struct.BarrierContext*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserBarrier* %0, %struct.MXUserBarrier** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %2, metadata !321, metadata !90), !dbg !322
  call void @llvm.dbg.declare(metadata %struct.BarrierContext** %3, metadata !323, metadata !90), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %4, metadata !326, metadata !90), !dbg !327
  %5 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !328
  %6 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %5, i32 0, i32 0, !dbg !329
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 7), !dbg !330
  %7 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !331
  %8 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %7, i32 0, i32 1, !dbg !332
  %9 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %8, align 8, !dbg !332
  call void @MXUser_AcquireExclLock(%struct.MXUserExclLock* %9), !dbg !333
  %10 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !334
  %11 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %10, i32 0, i32 3, !dbg !335
  %12 = load volatile i32, i32* %11, align 4, !dbg !335
  store i32 %12, i32* %4, align 4, !dbg !336
  %13 = load i32, i32* %4, align 4, !dbg !337
  %14 = zext i32 %13 to i64, !dbg !338
  %15 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !338
  %16 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %15, i32 0, i32 4, !dbg !339
  %17 = getelementptr inbounds [2 x %struct.BarrierContext], [2 x %struct.BarrierContext]* %16, i64 0, i64 %14, !dbg !338
  store %struct.BarrierContext* %17, %struct.BarrierContext** %3, align 8, !dbg !340
  %18 = load %struct.BarrierContext*, %struct.BarrierContext** %3, align 8, !dbg !341
  %19 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %18, i32 0, i32 0, !dbg !342
  %20 = load i32, i32* %19, align 8, !dbg !343
  %21 = add i32 %20, 1, !dbg !343
  store i32 %21, i32* %19, align 8, !dbg !343
  %22 = load %struct.BarrierContext*, %struct.BarrierContext** %3, align 8, !dbg !344
  %23 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %22, i32 0, i32 0, !dbg !346
  %24 = load i32, i32* %23, align 8, !dbg !346
  %25 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !347
  %26 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %25, i32 0, i32 2, !dbg !348
  %27 = load i32, i32* %26, align 8, !dbg !348
  %28 = icmp eq i32 %24, %27, !dbg !349
  br i1 %28, label %29, label %38, !dbg !350

; <label>:29:                                     ; preds = %1
  %30 = load i32, i32* %4, align 4, !dbg !351
  %31 = add i32 %30, 1, !dbg !353
  %32 = and i32 %31, 1, !dbg !354
  %33 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !355
  %34 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %33, i32 0, i32 3, !dbg !356
  store volatile i32 %32, i32* %34, align 4, !dbg !357
  %35 = load %struct.BarrierContext*, %struct.BarrierContext** %3, align 8, !dbg !358
  %36 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %35, i32 0, i32 1, !dbg !359
  %37 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %36, align 8, !dbg !359
  call void @MXUser_BroadcastCondVar(%struct.MXUserCondVar* %37), !dbg !360
  br label %53, !dbg !361

; <label>:38:                                     ; preds = %1
  br label %39, !dbg !362

; <label>:39:                                     ; preds = %45, %38
  %40 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !364
  %41 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %40, i32 0, i32 3, !dbg !366
  %42 = load volatile i32, i32* %41, align 4, !dbg !366
  %43 = load i32, i32* %4, align 4, !dbg !367
  %44 = icmp eq i32 %42, %43, !dbg !368
  br i1 %44, label %45, label %52, !dbg !369

; <label>:45:                                     ; preds = %39
  %46 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !370
  %47 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %46, i32 0, i32 1, !dbg !372
  %48 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %47, align 8, !dbg !372
  %49 = load %struct.BarrierContext*, %struct.BarrierContext** %3, align 8, !dbg !373
  %50 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %49, i32 0, i32 1, !dbg !374
  %51 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %50, align 8, !dbg !374
  call void @MXUser_WaitCondVarExclLock(%struct.MXUserExclLock* %48, %struct.MXUserCondVar* %51), !dbg !375
  br label %39, !dbg !376, !llvm.loop !378

; <label>:52:                                     ; preds = %39
  br label %53

; <label>:53:                                     ; preds = %52, %29
  %54 = load %struct.BarrierContext*, %struct.BarrierContext** %3, align 8, !dbg !379
  %55 = getelementptr inbounds %struct.BarrierContext, %struct.BarrierContext* %54, i32 0, i32 0, !dbg !380
  %56 = load i32, i32* %55, align 8, !dbg !381
  %57 = add i32 %56, -1, !dbg !381
  store i32 %57, i32* %55, align 8, !dbg !381
  %58 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %2, align 8, !dbg !382
  %59 = getelementptr inbounds %struct.MXUserBarrier, %struct.MXUserBarrier* %58, i32 0, i32 1, !dbg !383
  %60 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %59, align 8, !dbg !383
  call void @MXUser_ReleaseExclLock(%struct.MXUserExclLock* %60), !dbg !384
  ret void, !dbg !385
}

declare void @MXUser_AcquireExclLock(%struct.MXUserExclLock*) #2

declare void @MXUser_BroadcastCondVar(%struct.MXUserCondVar*) #2

declare void @MXUser_WaitCondVarExclLock(%struct.MXUserExclLock*, %struct.MXUserCondVar*) #2

declare void @MXUser_ReleaseExclLock(%struct.MXUserExclLock*) #2

; Function Attrs: nounwind uwtable
define %struct.MXUserBarrier* @MXUser_CreateSingletonBarrier(%struct.Atomic_uint64*, i8*, i32, i32) #0 !dbg !386 {
  %5 = alloca %struct.Atomic_uint64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.MXUserBarrier*, align 8
  %10 = alloca %struct.MXUserBarrier*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %5, metadata !397, metadata !90), !dbg !398
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !399, metadata !90), !dbg !400
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !401, metadata !90), !dbg !402
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !403, metadata !90), !dbg !404
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %9, metadata !405, metadata !90), !dbg !406
  %11 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !407
  %12 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %11), !dbg !408
  %13 = bitcast i8* %12 to %struct.MXUserBarrier*, !dbg !408
  store %struct.MXUserBarrier* %13, %struct.MXUserBarrier** %9, align 8, !dbg !409
  %14 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %9, align 8, !dbg !410
  %15 = icmp eq %struct.MXUserBarrier* %14, null, !dbg !412
  %16 = zext i1 %15 to i32, !dbg !412
  %17 = sext i32 %16 to i64, !dbg !413
  %18 = icmp ne i64 %17, 0, !dbg !414
  br i1 %18, label %19, label %38, !dbg !415

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MXUserBarrier** %10, metadata !416, metadata !90), !dbg !418
  %20 = load i8*, i8** %6, align 8, !dbg !419
  %21 = load i32, i32* %7, align 4, !dbg !420
  %22 = load i32, i32* %8, align 4, !dbg !421
  %23 = call %struct.MXUserBarrier* @MXUser_CreateBarrier(i8* %20, i32 %21, i32 %22), !dbg !422
  store %struct.MXUserBarrier* %23, %struct.MXUserBarrier** %10, align 8, !dbg !418
  %24 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !423
  %25 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %10, align 8, !dbg !424
  %26 = bitcast %struct.MXUserBarrier* %25 to i8*, !dbg !425
  %27 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %24, i8* null, i8* %26), !dbg !426
  %28 = bitcast i8* %27 to %struct.MXUserBarrier*, !dbg !426
  store %struct.MXUserBarrier* %28, %struct.MXUserBarrier** %9, align 8, !dbg !427
  %29 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %9, align 8, !dbg !428
  %30 = icmp ne %struct.MXUserBarrier* %29, null, !dbg !428
  br i1 %30, label %31, label %33, !dbg !430

; <label>:31:                                     ; preds = %19
  %32 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %10, align 8, !dbg !431
  call void @MXUser_DestroyBarrier(%struct.MXUserBarrier* %32), !dbg !433
  br label %37, !dbg !434

; <label>:33:                                     ; preds = %19
  %34 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !435
  %35 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %34), !dbg !437
  %36 = bitcast i8* %35 to %struct.MXUserBarrier*, !dbg !437
  store %struct.MXUserBarrier* %36, %struct.MXUserBarrier** %9, align 8, !dbg !438
  br label %37

; <label>:37:                                     ; preds = %33, %31
  br label %38, !dbg !439

; <label>:38:                                     ; preds = %37, %4
  %39 = load %struct.MXUserBarrier*, %struct.MXUserBarrier** %9, align 8, !dbg !440
  ret %struct.MXUserBarrier* %39, !dbg !441
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #3 !dbg !442 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !447, metadata !90), !dbg !448
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !449
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !450
  %5 = inttoptr i64 %4 to i8*, !dbg !451
  ret i8* %5, !dbg !452
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #3 !dbg !453 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !458, metadata !90), !dbg !459
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !460, metadata !90), !dbg !461
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !462, metadata !90), !dbg !463
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !464
  %8 = load i8*, i8** %5, align 8, !dbg !465
  %9 = ptrtoint i8* %8 to i64, !dbg !466
  %10 = load i8*, i8** %6, align 8, !dbg !467
  %11 = ptrtoint i8* %10 to i64, !dbg !468
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !469
  %13 = inttoptr i64 %12 to i8*, !dbg !470
  ret i8* %13, !dbg !471
}

declare void @Warning(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #3 !dbg !472 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !477, metadata !90), !dbg !478
  call void @llvm.dbg.declare(metadata i64* %3, metadata !479, metadata !90), !dbg !480
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !481
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !482
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #5, !dbg !483, !srcloc !484
  store i64 %6, i64* %3, align 8, !dbg !483
  %7 = load i64, i64* %3, align 8, !dbg !485
  ret i64 %7, !dbg !486
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #3 !dbg !487 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !491, metadata !90), !dbg !492
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !493, metadata !90), !dbg !494
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !495, metadata !90), !dbg !496
  call void @llvm.dbg.declare(metadata i64* %7, metadata !497, metadata !90), !dbg !498
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !499
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !500
  %10 = load i64, i64* %6, align 8, !dbg !501
  %11 = load i64, i64* %5, align 8, !dbg !502
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #5, !dbg !503, !srcloc !504
  store i64 %12, i64* %7, align 8, !dbg !503
  %13 = load i64, i64* %7, align 8, !dbg !505
  ret i64 %13, !dbg !506
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "ulBarrier.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "MXUSER_TYPE_NEVER_USE", value: 0)
!7 = !DIEnumerator(name: "MXUSER_TYPE_RW", value: 1)
!8 = !DIEnumerator(name: "MXUSER_TYPE_REC", value: 2)
!9 = !DIEnumerator(name: "MXUSER_TYPE_RANK", value: 3)
!10 = !DIEnumerator(name: "MXUSER_TYPE_EXCL", value: 4)
!11 = !DIEnumerator(name: "MXUSER_TYPE_SEMA", value: 5)
!12 = !DIEnumerator(name: "MXUSER_TYPE_CONDVAR", value: 6)
!13 = !DIEnumerator(name: "MXUSER_TYPE_BARRIER", value: 7)
!14 = !DIEnumerator(name: "MXUSER_TYPE_EVENT", value: 8)
!15 = !{!16, !17, !76, !78}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBarrier", file: !19, line: 45, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserBarrier", file: !21, line: 33, size: 832, align: 64, elements: !22)
!21 = !DIFile(filename: "ulBarrier.c", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!22 = !{!23, !57, !61, !62, !64}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !20, file: !21, line: 35, baseType: !24, size: 448, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !26)
!26 = !{!27, !33, !36, !38, !43, !48, !49}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !25, file: !4, line: 457, baseType: !28, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !29, line: 173, baseType: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 51, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 458, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !25, file: !4, line: 459, baseType: !37, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !29, line: 1167, baseType: !28)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !25, file: !4, line: 464, baseType: !39, size: 32, align: 32, offset: 160)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !4, line: 461, size: 32, align: 32, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !39, file: !4, line: 462, baseType: !32, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !39, file: !4, line: 463, baseType: !32, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !25, file: !4, line: 466, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !25, file: !4, line: 467, baseType: !44, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !25, file: !4, line: 468, baseType: !50, size: 128, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !51, line: 42, size: 128, align: 64, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !51, line: 43, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !51, line: 44, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !20, file: !21, line: 36, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !19, line: 38, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !19, line: 38, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "configCount", scope: !20, file: !21, line: 37, baseType: !28, size: 32, align: 32, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "curContext", scope: !20, file: !21, line: 38, baseType: !63, size: 32, align: 32, offset: 544)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "contexts", scope: !20, file: !21, line: 39, baseType: !65, size: 256, align: 64, offset: 576)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, align: 64, elements: !74)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "BarrierContext", file: !21, line: 31, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BarrierContext", file: !21, line: 25, size: 128, align: 64, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !67, file: !21, line: 27, baseType: !28, size: 32, align: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "condVar", scope: !67, file: !21, line: 28, baseType: !71, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !19, line: 42, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !19, line: 42, flags: DIFlagFwdDecl)
!74 = !{!75}
!75 = !DISubrange(count: 2)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 122, baseType: !77)
!77 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !29, line: 171, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 55, baseType: !77)
!80 = !{i32 2, !"Dwarf Version", i32 4}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!83 = distinct !DISubprogram(name: "MXUser_CreateBarrier", scope: !21, file: !21, line: 112, type: !84, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{!17, !86, !37, !28}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!88 = !{}
!89 = !DILocalVariable(name: "userName", arg: 1, scope: !83, file: !21, line: 112, type: !86)
!90 = !DIExpression()
!91 = !DILocation(line: 112, column: 34, scope: !83)
!92 = !DILocalVariable(name: "rank", arg: 2, scope: !83, file: !21, line: 113, type: !37)
!93 = !DILocation(line: 113, column: 30, scope: !83)
!94 = !DILocalVariable(name: "count", arg: 3, scope: !83, file: !21, line: 114, type: !28)
!95 = !DILocation(line: 114, column: 29, scope: !83)
!96 = !DILocalVariable(name: "properName", scope: !83, file: !21, line: 116, type: !34)
!97 = !DILocation(line: 116, column: 10, scope: !83)
!98 = !DILocalVariable(name: "barrier", scope: !83, file: !21, line: 117, type: !17)
!99 = !DILocation(line: 117, column: 19, scope: !83)
!100 = !DILocation(line: 121, column: 14, scope: !83)
!101 = !DILocation(line: 121, column: 12, scope: !83)
!102 = !DILocation(line: 123, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !83, file: !21, line: 123, column: 8)
!104 = !DILocation(line: 123, column: 17, scope: !103)
!105 = !DILocation(line: 123, column: 8, scope: !83)
!106 = !DILocation(line: 124, column: 56, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !21, line: 123, column: 25)
!108 = !DILocation(line: 124, column: 20, scope: !109)
!109 = !DILexicalBlockFile(scope: !107, file: !21, discriminator: 1)
!110 = !DILocation(line: 124, column: 18, scope: !107)
!111 = !DILocation(line: 125, column: 4, scope: !107)
!112 = !DILocation(line: 126, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !103, file: !21, line: 125, column: 11)
!114 = !DILocation(line: 126, column: 20, scope: !113)
!115 = !DILocation(line: 126, column: 18, scope: !113)
!116 = !DILocation(line: 129, column: 42, scope: !83)
!117 = !DILocation(line: 129, column: 54, scope: !83)
!118 = !DILocation(line: 129, column: 20, scope: !83)
!119 = !DILocation(line: 129, column: 4, scope: !83)
!120 = !DILocation(line: 129, column: 13, scope: !83)
!121 = !DILocation(line: 129, column: 18, scope: !83)
!122 = !DILocation(line: 130, column: 64, scope: !83)
!123 = !DILocation(line: 130, column: 73, scope: !83)
!124 = !DILocation(line: 130, column: 35, scope: !83)
!125 = !DILocation(line: 130, column: 4, scope: !83)
!126 = !DILocation(line: 130, column: 13, scope: !83)
!127 = !DILocation(line: 130, column: 25, scope: !83)
!128 = !DILocation(line: 130, column: 33, scope: !83)
!129 = !DILocation(line: 131, column: 64, scope: !83)
!130 = !DILocation(line: 131, column: 73, scope: !83)
!131 = !DILocation(line: 131, column: 35, scope: !83)
!132 = !DILocation(line: 131, column: 4, scope: !83)
!133 = !DILocation(line: 131, column: 13, scope: !83)
!134 = !DILocation(line: 131, column: 25, scope: !83)
!135 = !DILocation(line: 131, column: 33, scope: !83)
!136 = !DILocation(line: 133, column: 27, scope: !83)
!137 = !DILocation(line: 133, column: 4, scope: !83)
!138 = !DILocation(line: 133, column: 13, scope: !83)
!139 = !DILocation(line: 133, column: 25, scope: !83)
!140 = !DILocation(line: 134, column: 4, scope: !83)
!141 = !DILocation(line: 134, column: 13, scope: !83)
!142 = !DILocation(line: 134, column: 24, scope: !83)
!143 = !DILocation(line: 136, column: 32, scope: !83)
!144 = !DILocation(line: 136, column: 4, scope: !83)
!145 = !DILocation(line: 136, column: 13, scope: !83)
!146 = !DILocation(line: 136, column: 20, scope: !83)
!147 = !DILocation(line: 136, column: 30, scope: !83)
!148 = !DILocation(line: 137, column: 27, scope: !83)
!149 = !DILocation(line: 137, column: 4, scope: !83)
!150 = !DILocation(line: 137, column: 13, scope: !83)
!151 = !DILocation(line: 137, column: 20, scope: !83)
!152 = !DILocation(line: 137, column: 25, scope: !83)
!153 = !DILocation(line: 138, column: 27, scope: !83)
!154 = !DILocation(line: 138, column: 4, scope: !83)
!155 = !DILocation(line: 138, column: 13, scope: !83)
!156 = !DILocation(line: 138, column: 20, scope: !83)
!157 = !DILocation(line: 138, column: 25, scope: !83)
!158 = !DILocation(line: 139, column: 40, scope: !83)
!159 = !DILocation(line: 139, column: 4, scope: !83)
!160 = !DILocation(line: 139, column: 13, scope: !83)
!161 = !DILocation(line: 139, column: 20, scope: !83)
!162 = !DILocation(line: 139, column: 25, scope: !83)
!163 = !DILocation(line: 139, column: 38, scope: !83)
!164 = !DILocation(line: 140, column: 4, scope: !83)
!165 = !DILocation(line: 140, column: 13, scope: !83)
!166 = !DILocation(line: 140, column: 20, scope: !83)
!167 = !DILocation(line: 140, column: 29, scope: !83)
!168 = !DILocation(line: 141, column: 4, scope: !83)
!169 = !DILocation(line: 141, column: 13, scope: !83)
!170 = !DILocation(line: 141, column: 20, scope: !83)
!171 = !DILocation(line: 141, column: 30, scope: !83)
!172 = !DILocation(line: 143, column: 21, scope: !83)
!173 = !DILocation(line: 143, column: 30, scope: !83)
!174 = !DILocation(line: 143, column: 4, scope: !83)
!175 = !DILocation(line: 145, column: 11, scope: !83)
!176 = !DILocation(line: 145, column: 4, scope: !83)
!177 = distinct !DISubprogram(name: "MXUserDumpBarrier", scope: !21, file: !21, line: 60, type: !178, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!181 = !DILocalVariable(name: "header", arg: 1, scope: !177, file: !21, line: 60, type: !180)
!182 = !DILocation(line: 60, column: 33, scope: !177)
!183 = !DILocalVariable(name: "curContext", scope: !177, file: !21, line: 62, type: !28)
!184 = !DILocation(line: 62, column: 11, scope: !177)
!185 = !DILocalVariable(name: "barrier", scope: !177, file: !21, line: 63, type: !17)
!186 = !DILocation(line: 63, column: 19, scope: !177)
!187 = !DILocation(line: 63, column: 47, scope: !177)
!188 = !DILocation(line: 63, column: 29, scope: !177)
!189 = !DILocation(line: 65, column: 50, scope: !177)
!190 = !DILocation(line: 65, column: 4, scope: !177)
!191 = !DILocation(line: 67, column: 34, scope: !177)
!192 = !DILocation(line: 67, column: 43, scope: !177)
!193 = !DILocation(line: 67, column: 50, scope: !177)
!194 = !DILocation(line: 67, column: 4, scope: !177)
!195 = !DILocation(line: 68, column: 27, scope: !177)
!196 = !DILocation(line: 68, column: 36, scope: !177)
!197 = !DILocation(line: 68, column: 43, scope: !177)
!198 = !DILocation(line: 68, column: 4, scope: !177)
!199 = !DILocation(line: 69, column: 29, scope: !177)
!200 = !DILocation(line: 69, column: 38, scope: !177)
!201 = !DILocation(line: 69, column: 45, scope: !177)
!202 = !DILocation(line: 69, column: 4, scope: !177)
!203 = !DILocation(line: 70, column: 36, scope: !177)
!204 = !DILocation(line: 70, column: 45, scope: !177)
!205 = !DILocation(line: 70, column: 52, scope: !177)
!206 = !DILocation(line: 70, column: 57, scope: !177)
!207 = !DILocation(line: 70, column: 4, scope: !177)
!208 = !DILocation(line: 72, column: 29, scope: !177)
!209 = !DILocation(line: 72, column: 38, scope: !177)
!210 = !DILocation(line: 72, column: 4, scope: !177)
!211 = !DILocation(line: 73, column: 39, scope: !177)
!212 = !DILocation(line: 73, column: 48, scope: !177)
!213 = !DILocation(line: 73, column: 4, scope: !177)
!214 = !DILocation(line: 74, column: 17, scope: !177)
!215 = !DILocation(line: 74, column: 26, scope: !177)
!216 = !DILocation(line: 74, column: 15, scope: !177)
!217 = !DILocation(line: 76, column: 38, scope: !177)
!218 = !DILocation(line: 76, column: 4, scope: !177)
!219 = !DILocation(line: 78, column: 40, scope: !177)
!220 = !DILocation(line: 79, column: 30, scope: !177)
!221 = !DILocation(line: 79, column: 12, scope: !177)
!222 = !DILocation(line: 79, column: 21, scope: !177)
!223 = !DILocation(line: 79, column: 42, scope: !177)
!224 = !DILocation(line: 78, column: 4, scope: !177)
!225 = !DILocation(line: 80, column: 44, scope: !177)
!226 = !DILocation(line: 81, column: 31, scope: !177)
!227 = !DILocation(line: 81, column: 13, scope: !177)
!228 = !DILocation(line: 81, column: 22, scope: !177)
!229 = !DILocation(line: 81, column: 43, scope: !177)
!230 = !DILocation(line: 80, column: 4, scope: !177)
!231 = !DILocation(line: 83, column: 18, scope: !177)
!232 = !DILocation(line: 83, column: 29, scope: !177)
!233 = !DILocation(line: 83, column: 34, scope: !177)
!234 = !DILocation(line: 83, column: 15, scope: !177)
!235 = !DILocation(line: 85, column: 40, scope: !177)
!236 = !DILocation(line: 86, column: 30, scope: !177)
!237 = !DILocation(line: 86, column: 12, scope: !177)
!238 = !DILocation(line: 86, column: 21, scope: !177)
!239 = !DILocation(line: 86, column: 42, scope: !177)
!240 = !DILocation(line: 85, column: 4, scope: !177)
!241 = !DILocation(line: 87, column: 44, scope: !177)
!242 = !DILocation(line: 88, column: 31, scope: !177)
!243 = !DILocation(line: 88, column: 13, scope: !177)
!244 = !DILocation(line: 88, column: 22, scope: !177)
!245 = !DILocation(line: 88, column: 43, scope: !177)
!246 = !DILocation(line: 87, column: 4, scope: !177)
!247 = !DILocation(line: 89, column: 1, scope: !177)
!248 = distinct !DISubprogram(name: "MXUser_DestroyBarrier", scope: !21, file: !21, line: 166, type: !249, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !17}
!251 = !DILocalVariable(name: "barrier", arg: 1, scope: !248, file: !21, line: 166, type: !17)
!252 = !DILocation(line: 166, column: 38, scope: !248)
!253 = !DILocation(line: 168, column: 28, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !21, line: 168, column: 8)
!255 = !DILocation(line: 168, column: 36, scope: !254)
!256 = !DILocation(line: 168, column: 26, scope: !254)
!257 = !DILocation(line: 168, column: 25, scope: !254)
!258 = !DILocation(line: 168, column: 8, scope: !254)
!259 = !DILocation(line: 168, column: 8, scope: !248)
!260 = !DILocation(line: 169, column: 29, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !21, line: 168, column: 14)
!262 = !DILocation(line: 169, column: 38, scope: !261)
!263 = !DILocation(line: 169, column: 7, scope: !261)
!264 = !DILocation(line: 171, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !21, line: 171, column: 11)
!266 = !DILocation(line: 171, column: 21, scope: !265)
!267 = !DILocation(line: 171, column: 33, scope: !265)
!268 = !DILocation(line: 171, column: 39, scope: !265)
!269 = !DILocation(line: 171, column: 45, scope: !265)
!270 = !DILocation(line: 172, column: 12, scope: !265)
!271 = !DILocation(line: 172, column: 21, scope: !265)
!272 = !DILocation(line: 172, column: 33, scope: !265)
!273 = !DILocation(line: 172, column: 39, scope: !265)
!274 = !DILocation(line: 171, column: 11, scope: !275)
!275 = !DILexicalBlockFile(scope: !261, file: !21, discriminator: 1)
!276 = !DILocation(line: 173, column: 30, scope: !277)
!277 = distinct !DILexicalBlock(scope: !265, file: !21, line: 172, column: 46)
!278 = !DILocation(line: 173, column: 39, scope: !277)
!279 = !DILocation(line: 173, column: 10, scope: !277)
!280 = !DILocation(line: 176, column: 7, scope: !277)
!281 = !DILocation(line: 178, column: 7, scope: !261)
!282 = !DILocation(line: 178, column: 16, scope: !261)
!283 = !DILocation(line: 178, column: 23, scope: !261)
!284 = !DILocation(line: 178, column: 33, scope: !261)
!285 = !DILocation(line: 180, column: 29, scope: !261)
!286 = !DILocation(line: 180, column: 38, scope: !261)
!287 = !DILocation(line: 180, column: 7, scope: !261)
!288 = !DILocation(line: 182, column: 29, scope: !261)
!289 = !DILocation(line: 182, column: 38, scope: !261)
!290 = !DILocation(line: 182, column: 50, scope: !261)
!291 = !DILocation(line: 182, column: 7, scope: !261)
!292 = !DILocation(line: 183, column: 29, scope: !261)
!293 = !DILocation(line: 183, column: 38, scope: !261)
!294 = !DILocation(line: 183, column: 50, scope: !261)
!295 = !DILocation(line: 183, column: 7, scope: !261)
!296 = !DILocation(line: 184, column: 30, scope: !261)
!297 = !DILocation(line: 184, column: 39, scope: !261)
!298 = !DILocation(line: 184, column: 7, scope: !261)
!299 = !DILocation(line: 186, column: 12, scope: !261)
!300 = !DILocation(line: 186, column: 21, scope: !261)
!301 = !DILocation(line: 186, column: 28, scope: !261)
!302 = !DILocation(line: 186, column: 7, scope: !261)
!303 = !DILocation(line: 187, column: 7, scope: !261)
!304 = !DILocation(line: 187, column: 16, scope: !261)
!305 = !DILocation(line: 187, column: 23, scope: !261)
!306 = !DILocation(line: 187, column: 28, scope: !261)
!307 = !DILocation(line: 188, column: 12, scope: !261)
!308 = !DILocation(line: 188, column: 7, scope: !261)
!309 = !DILocation(line: 189, column: 4, scope: !261)
!310 = !DILocation(line: 190, column: 1, scope: !248)
!311 = distinct !DISubprogram(name: "MXUserValidateHeader", scope: !4, file: !4, line: 507, type: !312, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !180, !314}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!315 = !DILocalVariable(name: "header", arg: 1, scope: !311, file: !4, line: 507, type: !180)
!316 = !DILocation(line: 507, column: 36, scope: !311)
!317 = !DILocalVariable(name: "objectType", arg: 2, scope: !311, file: !4, line: 508, type: !314)
!318 = !DILocation(line: 508, column: 39, scope: !311)
!319 = !DILocation(line: 510, column: 4, scope: !311)
!320 = distinct !DISubprogram(name: "MXUser_EnterBarrier", scope: !21, file: !21, line: 216, type: !249, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!321 = !DILocalVariable(name: "barrier", arg: 1, scope: !320, file: !21, line: 216, type: !17)
!322 = !DILocation(line: 216, column: 36, scope: !320)
!323 = !DILocalVariable(name: "ptr", scope: !320, file: !21, line: 218, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!325 = !DILocation(line: 218, column: 20, scope: !320)
!326 = !DILocalVariable(name: "context", scope: !320, file: !21, line: 219, type: !28)
!327 = !DILocation(line: 219, column: 11, scope: !320)
!328 = !DILocation(line: 222, column: 26, scope: !320)
!329 = !DILocation(line: 222, column: 35, scope: !320)
!330 = !DILocation(line: 222, column: 4, scope: !320)
!331 = !DILocation(line: 224, column: 27, scope: !320)
!332 = !DILocation(line: 224, column: 36, scope: !320)
!333 = !DILocation(line: 224, column: 4, scope: !320)
!334 = !DILocation(line: 226, column: 14, scope: !320)
!335 = !DILocation(line: 226, column: 23, scope: !320)
!336 = !DILocation(line: 226, column: 12, scope: !320)
!337 = !DILocation(line: 227, column: 29, scope: !320)
!338 = !DILocation(line: 227, column: 11, scope: !320)
!339 = !DILocation(line: 227, column: 20, scope: !320)
!340 = !DILocation(line: 227, column: 8, scope: !320)
!341 = !DILocation(line: 229, column: 4, scope: !320)
!342 = !DILocation(line: 229, column: 9, scope: !320)
!343 = !DILocation(line: 229, column: 14, scope: !320)
!344 = !DILocation(line: 231, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !320, file: !21, line: 231, column: 8)
!346 = !DILocation(line: 231, column: 13, scope: !345)
!347 = !DILocation(line: 231, column: 22, scope: !345)
!348 = !DILocation(line: 231, column: 31, scope: !345)
!349 = !DILocation(line: 231, column: 19, scope: !345)
!350 = !DILocation(line: 231, column: 8, scope: !320)
!351 = !DILocation(line: 242, column: 30, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !21, line: 231, column: 44)
!353 = !DILocation(line: 242, column: 38, scope: !352)
!354 = !DILocation(line: 242, column: 43, scope: !352)
!355 = !DILocation(line: 242, column: 7, scope: !352)
!356 = !DILocation(line: 242, column: 16, scope: !352)
!357 = !DILocation(line: 242, column: 27, scope: !352)
!358 = !DILocation(line: 246, column: 31, scope: !352)
!359 = !DILocation(line: 246, column: 36, scope: !352)
!360 = !DILocation(line: 246, column: 7, scope: !352)
!361 = !DILocation(line: 247, column: 4, scope: !352)
!362 = !DILocation(line: 253, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !345, file: !21, line: 247, column: 11)
!364 = !DILocation(line: 253, column: 14, scope: !365)
!365 = !DILexicalBlockFile(scope: !363, file: !21, discriminator: 1)
!366 = !DILocation(line: 253, column: 23, scope: !365)
!367 = !DILocation(line: 253, column: 37, scope: !365)
!368 = !DILocation(line: 253, column: 34, scope: !365)
!369 = !DILocation(line: 253, column: 7, scope: !365)
!370 = !DILocation(line: 254, column: 37, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !21, line: 253, column: 46)
!372 = !DILocation(line: 254, column: 46, scope: !371)
!373 = !DILocation(line: 254, column: 52, scope: !371)
!374 = !DILocation(line: 254, column: 57, scope: !371)
!375 = !DILocation(line: 254, column: 10, scope: !371)
!376 = !DILocation(line: 253, column: 7, scope: !377)
!377 = !DILexicalBlockFile(scope: !363, file: !21, discriminator: 2)
!378 = distinct !{!378, !362}
!379 = !DILocation(line: 258, column: 4, scope: !320)
!380 = !DILocation(line: 258, column: 9, scope: !320)
!381 = !DILocation(line: 258, column: 14, scope: !320)
!382 = !DILocation(line: 260, column: 27, scope: !320)
!383 = !DILocation(line: 260, column: 36, scope: !320)
!384 = !DILocation(line: 260, column: 4, scope: !320)
!385 = !DILocation(line: 261, column: 1, scope: !320)
!386 = distinct !DISubprogram(name: "MXUser_CreateSingletonBarrier", scope: !21, file: !21, line: 284, type: !387, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!387 = !DISubroutineType(types: !388)
!388 = !{!17, !389, !86, !37, !28}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !391, line: 3829, baseType: !392)
!391 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line514")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !391, line: 139, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !391, line: 137, size: 64, align: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !393, file: !391, line: 138, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!397 = !DILocalVariable(name: "barrierStorage", arg: 1, scope: !386, file: !21, line: 284, type: !389)
!398 = !DILocation(line: 284, column: 43, scope: !386)
!399 = !DILocalVariable(name: "name", arg: 2, scope: !386, file: !21, line: 285, type: !86)
!400 = !DILocation(line: 285, column: 43, scope: !386)
!401 = !DILocalVariable(name: "rank", arg: 3, scope: !386, file: !21, line: 286, type: !37)
!402 = !DILocation(line: 286, column: 39, scope: !386)
!403 = !DILocalVariable(name: "count", arg: 4, scope: !386, file: !21, line: 287, type: !28)
!404 = !DILocation(line: 287, column: 38, scope: !386)
!405 = !DILocalVariable(name: "barrier", scope: !386, file: !21, line: 289, type: !17)
!406 = !DILocation(line: 289, column: 19, scope: !386)
!407 = !DILocation(line: 293, column: 29, scope: !386)
!408 = !DILocation(line: 293, column: 14, scope: !386)
!409 = !DILocation(line: 293, column: 12, scope: !386)
!410 = !DILocation(line: 295, column: 26, scope: !411)
!411 = distinct !DILexicalBlock(scope: !386, file: !21, line: 295, column: 8)
!412 = !DILocation(line: 295, column: 34, scope: !411)
!413 = !DILocation(line: 295, column: 25, scope: !411)
!414 = !DILocation(line: 295, column: 8, scope: !411)
!415 = !DILocation(line: 295, column: 8, scope: !386)
!416 = !DILocalVariable(name: "newBarrier", scope: !417, file: !21, line: 296, type: !17)
!417 = distinct !DILexicalBlock(scope: !411, file: !21, line: 295, column: 14)
!418 = !DILocation(line: 296, column: 22, scope: !417)
!419 = !DILocation(line: 296, column: 56, scope: !417)
!420 = !DILocation(line: 296, column: 62, scope: !417)
!421 = !DILocation(line: 296, column: 68, scope: !417)
!422 = !DILocation(line: 296, column: 35, scope: !417)
!423 = !DILocation(line: 298, column: 44, scope: !417)
!424 = !DILocation(line: 299, column: 53, scope: !417)
!425 = !DILocation(line: 299, column: 44, scope: !417)
!426 = !DILocation(line: 298, column: 17, scope: !417)
!427 = !DILocation(line: 298, column: 15, scope: !417)
!428 = !DILocation(line: 301, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !417, file: !21, line: 301, column: 11)
!430 = !DILocation(line: 301, column: 11, scope: !417)
!431 = !DILocation(line: 302, column: 32, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !21, line: 301, column: 20)
!433 = !DILocation(line: 302, column: 10, scope: !432)
!434 = !DILocation(line: 303, column: 7, scope: !432)
!435 = !DILocation(line: 304, column: 35, scope: !436)
!436 = distinct !DILexicalBlock(scope: !429, file: !21, line: 303, column: 14)
!437 = !DILocation(line: 304, column: 20, scope: !436)
!438 = !DILocation(line: 304, column: 18, scope: !436)
!439 = !DILocation(line: 306, column: 4, scope: !417)
!440 = !DILocation(line: 308, column: 11, scope: !386)
!441 = !DILocation(line: 308, column: 4, scope: !386)
!442 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !391, file: !391, line: 3829, type: !443, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!443 = !DISubroutineType(types: !444)
!444 = !{!16, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!447 = !DILocalVariable(name: "var", arg: 1, scope: !442, file: !391, line: 3829, type: !445)
!448 = !DILocation(line: 3829, column: 368, scope: !442)
!449 = !DILocation(line: 3829, column: 415, scope: !442)
!450 = !DILocation(line: 3829, column: 401, scope: !442)
!451 = !DILocation(line: 3829, column: 382, scope: !442)
!452 = !DILocation(line: 3829, column: 375, scope: !442)
!453 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !391, file: !391, line: 3829, type: !454, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!454 = !DISubroutineType(types: !455)
!455 = !{!16, !389, !456, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!458 = !DILocalVariable(name: "var", arg: 1, scope: !453, file: !391, line: 3829, type: !389)
!459 = !DILocation(line: 3829, column: 757, scope: !453)
!460 = !DILocalVariable(name: "oldVal", arg: 2, scope: !453, file: !391, line: 3829, type: !456)
!461 = !DILocation(line: 3829, column: 775, scope: !453)
!462 = !DILocalVariable(name: "newVal", arg: 3, scope: !453, file: !391, line: 3829, type: !456)
!463 = !DILocation(line: 3829, column: 796, scope: !453)
!464 = !DILocation(line: 3829, column: 858, scope: !453)
!465 = !DILocation(line: 3829, column: 882, scope: !453)
!466 = !DILocation(line: 3829, column: 871, scope: !453)
!467 = !DILocation(line: 3829, column: 909, scope: !453)
!468 = !DILocation(line: 3829, column: 898, scope: !453)
!469 = !DILocation(line: 3829, column: 832, scope: !453)
!470 = !DILocation(line: 3829, column: 813, scope: !453)
!471 = !DILocation(line: 3829, column: 806, scope: !453)
!472 = distinct !DISubprogram(name: "Atomic_Read64", scope: !391, file: !391, line: 2143, type: !473, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!473 = !DISubroutineType(types: !474)
!474 = !{!78, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!477 = !DILocalVariable(name: "var", arg: 1, scope: !472, file: !391, line: 2143, type: !475)
!478 = !DILocation(line: 2143, column: 36, scope: !472)
!479 = !DILocalVariable(name: "value", scope: !472, file: !391, line: 2146, type: !78)
!480 = !DILocation(line: 2146, column: 11, scope: !472)
!481 = !DILocation(line: 2160, column: 14, scope: !472)
!482 = !DILocation(line: 2160, column: 19, scope: !472)
!483 = !DILocation(line: 2157, column: 4, scope: !472)
!484 = !{i32 134666}
!485 = !DILocation(line: 2213, column: 11, scope: !472)
!486 = !DILocation(line: 2213, column: 4, scope: !472)
!487 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !391, file: !391, line: 1190, type: !488, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!488 = !DISubroutineType(types: !489)
!489 = !{!78, !490, !78, !78}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!491 = !DILocalVariable(name: "var", arg: 1, scope: !487, file: !391, line: 1190, type: !490)
!492 = !DILocation(line: 1190, column: 42, scope: !487)
!493 = !DILocalVariable(name: "oldVal", arg: 2, scope: !487, file: !391, line: 1191, type: !78)
!494 = !DILocation(line: 1191, column: 34, scope: !487)
!495 = !DILocalVariable(name: "newVal", arg: 3, scope: !487, file: !391, line: 1192, type: !78)
!496 = !DILocation(line: 1192, column: 34, scope: !487)
!497 = !DILocalVariable(name: "val", scope: !487, file: !391, line: 1240, type: !78)
!498 = !DILocation(line: 1240, column: 11, scope: !487)
!499 = !DILocation(line: 1246, column: 15, scope: !487)
!500 = !DILocation(line: 1246, column: 20, scope: !487)
!501 = !DILocation(line: 1247, column: 14, scope: !487)
!502 = !DILocation(line: 1248, column: 14, scope: !487)
!503 = !DILocation(line: 1243, column: 4, scope: !487)
!504 = !{i32 127108}
!505 = !DILocation(line: 1251, column: 11, scope: !487)
!506 = !DILocation(line: 1251, column: 4, scope: !487)
