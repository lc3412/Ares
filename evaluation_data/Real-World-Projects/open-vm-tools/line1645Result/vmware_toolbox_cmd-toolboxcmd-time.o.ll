; ModuleID = './vmware_toolbox_cmd-toolboxcmd-time.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-time.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }

@optind = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.5 = private unnamed_addr constant [259 x i8] c"@&!*@*@(help.timesync)%s: functions for controlling time synchronization on the guest OS\0AUsage: %s %s <subcommand>\0A\0ASubcommands:\0A   enable: enable time synchronization\0A   disable: disable time synchronization\0A   status: print the time synchronization status\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"@&!*@*@(option.enabled)Enabled\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"@&!*@*@(error.message)Error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"vmx.set_option %s %s %s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"synctime\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"@&!*@*@(option.disabled)Disabled\00", align 1

; Function Attrs: nounwind uwtable
define i32 @TimeSync_Command(i8**, i32, i32) #0 !dbg !6 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !17, metadata !18), !dbg !19
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !20, metadata !18), !dbg !21
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !22, metadata !18), !dbg !23
  %8 = load i32, i32* @optind, align 4, !dbg !24
  %9 = sext i32 %8 to i64, !dbg !26
  %10 = load i8**, i8*** %5, align 8, !dbg !26
  %11 = getelementptr inbounds i8*, i8** %10, i64 %9, !dbg !26
  %12 = load i8*, i8** %11, align 8, !dbg !26
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #4, !dbg !27
  %14 = icmp eq i32 %13, 0, !dbg !28
  br i1 %14, label %15, label %17, !dbg !29

; <label>:15:                                     ; preds = %3
  %16 = call i32 @TimeSyncEnable(), !dbg !30
  store i32 %16, i32* %4, align 4, !dbg !32
  br label %47, !dbg !32

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* @optind, align 4, !dbg !33
  %19 = sext i32 %18 to i64, !dbg !35
  %20 = load i8**, i8*** %5, align 8, !dbg !35
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19, !dbg !35
  %22 = load i8*, i8** %21, align 8, !dbg !35
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !36
  %24 = icmp eq i32 %23, 0, !dbg !37
  br i1 %24, label %25, label %27, !dbg !38

; <label>:25:                                     ; preds = %17
  %26 = call i32 @TimeSyncDisable(), !dbg !39
  store i32 %26, i32* %4, align 4, !dbg !41
  br label %47, !dbg !41

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* @optind, align 4, !dbg !42
  %29 = sext i32 %28 to i64, !dbg !44
  %30 = load i8**, i8*** %5, align 8, !dbg !44
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29, !dbg !44
  %32 = load i8*, i8** %31, align 8, !dbg !44
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !45
  %34 = icmp eq i32 %33, 0, !dbg !46
  br i1 %34, label %35, label %37, !dbg !47

; <label>:35:                                     ; preds = %27
  %36 = call i32 @TimeSyncStatus(), !dbg !48
  store i32 %36, i32* %4, align 4, !dbg !50
  br label %47, !dbg !50

; <label>:37:                                     ; preds = %27
  %38 = load i8**, i8*** %5, align 8, !dbg !51
  %39 = getelementptr inbounds i8*, i8** %38, i64 0, !dbg !51
  %40 = load i8*, i8** %39, align 8, !dbg !51
  %41 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)), !dbg !53
  %42 = load i32, i32* @optind, align 4, !dbg !54
  %43 = sext i32 %42 to i64, !dbg !55
  %44 = load i8**, i8*** %5, align 8, !dbg !55
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43, !dbg !55
  %46 = load i8*, i8** %45, align 8, !dbg !55
  call void @ToolsCmd_UnknownEntityError(i8* %40, i8* %41, i8* %46), !dbg !56
  store i32 64, i32* %4, align 4, !dbg !57
  br label %47, !dbg !57

; <label>:47:                                     ; preds = %37, %35, %25, %15
  %48 = load i32, i32* %4, align 4, !dbg !58
  ret i32 %48, !dbg !58
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncEnable() #0 !dbg !59 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !62, metadata !18), !dbg !63
  store i32 0, i32* %1, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i8** %2, metadata !64, metadata !18), !dbg !65
  store i8* null, i8** %2, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %3, metadata !66, metadata !18), !dbg !70
  %4 = call i32 @TimeSyncGetOldOptions(), !dbg !71
  %5 = and i32 %4, 1024, !dbg !73
  %6 = icmp ne i32 %5, 0, !dbg !73
  br i1 %6, label %10, label %7, !dbg !74

; <label>:7:                                      ; preds = %0
  %8 = call i32 @TimeSyncSet(i8 signext 1, i8** %2, i64* %3), !dbg !75
  %9 = icmp ne i32 %8, 0, !dbg !75
  br i1 %9, label %10, label %12, !dbg !76

; <label>:10:                                     ; preds = %7, %0
  %11 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !78
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %11), !dbg !80
  br label %15, !dbg !82

; <label>:12:                                     ; preds = %7
  %13 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)), !dbg !83
  %14 = load i8*, i8** %2, align 8, !dbg !85
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %13, i8* %14), !dbg !86
  store i32 1, i32* %1, align 4, !dbg !88
  br label %15

; <label>:15:                                     ; preds = %12, %10
  %16 = load i8*, i8** %2, align 8, !dbg !89
  call void @vm_free(i8* %16), !dbg !90
  %17 = load i32, i32* %1, align 4, !dbg !91
  ret i32 %17, !dbg !92
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncDisable() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !94, metadata !18), !dbg !95
  store i32 0, i32* %1, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata i8** %2, metadata !96, metadata !18), !dbg !97
  store i8* null, i8** %2, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i64* %3, metadata !98, metadata !18), !dbg !99
  %4 = call i32 @TimeSyncGetOldOptions(), !dbg !100
  %5 = and i32 %4, 1024, !dbg !102
  %6 = icmp ne i32 %5, 0, !dbg !102
  br i1 %6, label %7, label %10, !dbg !103

; <label>:7:                                      ; preds = %0
  %8 = call i32 @TimeSyncSet(i8 signext 0, i8** %2, i64* %3), !dbg !104
  %9 = icmp ne i32 %8, 0, !dbg !104
  br i1 %9, label %10, label %12, !dbg !105

; <label>:10:                                     ; preds = %7, %0
  %11 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)), !dbg !107
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %11), !dbg !109
  br label %15, !dbg !111

; <label>:12:                                     ; preds = %7
  %13 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)), !dbg !112
  %14 = load i8*, i8** %2, align 8, !dbg !114
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %13, i8* %14), !dbg !115
  store i32 1, i32* %1, align 4, !dbg !117
  br label %15

; <label>:15:                                     ; preds = %12, %10
  %16 = load i8*, i8** %2, align 8, !dbg !118
  call void @vm_free(i8* %16), !dbg !119
  %17 = load i32, i32* %1, align 4, !dbg !120
  ret i32 %17, !dbg !121
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncStatus() #0 !dbg !122 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !123, metadata !18), !dbg !126
  store i8 0, i8* %2, align 1, !dbg !126
  %3 = call i32 @TimeSyncGetOldOptions(), !dbg !127
  %4 = and i32 %3, 1024, !dbg !129
  %5 = icmp ne i32 %4, 0, !dbg !129
  br i1 %5, label %6, label %7, !dbg !130

; <label>:6:                                      ; preds = %0
  store i8 1, i8* %2, align 1, !dbg !131
  br label %7, !dbg !133

; <label>:7:                                      ; preds = %6, %0
  %8 = load i8, i8* %2, align 1, !dbg !134
  %9 = icmp ne i8 %8, 0, !dbg !134
  br i1 %9, label %10, label %12, !dbg !136

; <label>:10:                                     ; preds = %7
  %11 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !137
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %11), !dbg !139
  store i32 0, i32* %1, align 4, !dbg !141
  br label %14, !dbg !141

; <label>:12:                                     ; preds = %7
  %13 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)), !dbg !142
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %13), !dbg !144
  store i32 69, i32* %1, align 4, !dbg !146
  br label %14, !dbg !146

; <label>:14:                                     ; preds = %12, %10
  %15 = load i32, i32* %1, align 4, !dbg !147
  ret i32 %15, !dbg !147
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #3

declare i8* @VMTools_GetString(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @TimeSync_Help(i8*, i8*) #0 !dbg !148 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !153, metadata !18), !dbg !154
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !18), !dbg !156
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.5, i32 0, i32 0)), !dbg !157
  %6 = load i8*, i8** %4, align 8, !dbg !158
  %7 = load i8*, i8** %3, align 8, !dbg !159
  %8 = load i8*, i8** %4, align 8, !dbg !160
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !161
  ret void, !dbg !163
}

declare void @g_print(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncGetOldOptions() #0 !dbg !164 {
  %1 = alloca %union.Backdoor_proto, align 8
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %1, metadata !171, metadata !18), !dbg !353
  %2 = bitcast %union.Backdoor_proto* %1 to %struct.anon*, !dbg !354
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 2, !dbg !355
  %4 = bitcast %union.anon.2* %3 to %struct.anon.3*, !dbg !356
  %5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i32 0, i32 0, !dbg !357
  store i16 13, i16* %5, align 8, !dbg !358
  call void @Backdoor(%union.Backdoor_proto* %1), !dbg !359
  %6 = bitcast %union.Backdoor_proto* %1 to %struct.anon.14*, !dbg !360
  %7 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 0, !dbg !361
  %8 = bitcast %union.anon.15* %7 to i32*, !dbg !362
  %9 = load i32, i32* %8, align 8, !dbg !362
  ret i32 %9, !dbg !363
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncSet(i8 signext, i8**, i64*) #0 !dbg !364 {
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !368, metadata !18), !dbg !369
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !370, metadata !18), !dbg !371
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !372, metadata !18), !dbg !373
  call void @llvm.dbg.declare(metadata i8** %7, metadata !374, metadata !18), !dbg !377
  %8 = load i8, i8* %4, align 1, !dbg !378
  %9 = icmp ne i8 %8, 0, !dbg !379
  %10 = xor i1 %9, true, !dbg !379
  %11 = select i1 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), !dbg !379
  %12 = load i8, i8* %4, align 1, !dbg !380
  %13 = sext i8 %12 to i32, !dbg !380
  %14 = icmp ne i32 %13, 0, !dbg !380
  %15 = select i1 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), !dbg !380
  %16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %11, i8* %15), !dbg !381
  store i8* %16, i8** %7, align 8, !dbg !377
  %17 = load i8*, i8** %7, align 8, !dbg !382
  %18 = load i8*, i8** %7, align 8, !dbg !383
  %19 = call i64 @strlen(i8* %18) #4, !dbg !384
  %20 = add i64 %19, 1, !dbg !385
  %21 = load i8**, i8*** %5, align 8, !dbg !386
  %22 = load i64*, i64** %6, align 8, !dbg !387
  %23 = call i32 @ToolsCmd_SendRPC(i8* %17, i64 %20, i8** %21, i64* %22), !dbg !388
  ret i32 %23, !dbg !390
}

declare void @ToolsCmd_Print(i8*, ...) #3

declare void @ToolsCmd_PrintErr(i8*, ...) #3

declare void @vm_free(i8*) #3

declare void @Backdoor(%union.Backdoor_proto*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i32 @ToolsCmd_SendRPC(i8*, i64, i8**, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-time.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "TimeSync_Command", scope: !7, file: !7, line: 214, type: !8, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "toolboxcmd-time.c", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10, !14}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !15, line: 50, baseType: !16)
!15 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !15, line: 49, baseType: !10)
!17 = !DILocalVariable(name: "argv", arg: 1, scope: !6, file: !7, line: 214, type: !11)
!18 = !DIExpression()
!19 = !DILocation(line: 214, column: 25, scope: !6)
!20 = !DILocalVariable(name: "argc", arg: 2, scope: !6, file: !7, line: 215, type: !10)
!21 = !DILocation(line: 215, column: 22, scope: !6)
!22 = !DILocalVariable(name: "quiet", arg: 3, scope: !6, file: !7, line: 216, type: !14)
!23 = !DILocation(line: 216, column: 27, scope: !6)
!24 = !DILocation(line: 218, column: 20, scope: !25)
!25 = distinct !DILexicalBlock(scope: !6, file: !7, line: 218, column: 8)
!26 = !DILocation(line: 218, column: 15, scope: !25)
!27 = !DILocation(line: 218, column: 8, scope: !25)
!28 = !DILocation(line: 218, column: 39, scope: !25)
!29 = !DILocation(line: 218, column: 8, scope: !6)
!30 = !DILocation(line: 219, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !25, file: !7, line: 218, column: 45)
!32 = !DILocation(line: 219, column: 7, scope: !31)
!33 = !DILocation(line: 220, column: 27, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !7, line: 220, column: 15)
!35 = !DILocation(line: 220, column: 22, scope: !34)
!36 = !DILocation(line: 220, column: 15, scope: !34)
!37 = !DILocation(line: 220, column: 47, scope: !34)
!38 = !DILocation(line: 220, column: 15, scope: !25)
!39 = !DILocation(line: 221, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !7, line: 220, column: 53)
!41 = !DILocation(line: 221, column: 7, scope: !40)
!42 = !DILocation(line: 222, column: 27, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !7, line: 222, column: 15)
!44 = !DILocation(line: 222, column: 22, scope: !43)
!45 = !DILocation(line: 222, column: 15, scope: !43)
!46 = !DILocation(line: 222, column: 46, scope: !43)
!47 = !DILocation(line: 222, column: 15, scope: !34)
!48 = !DILocation(line: 223, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !7, line: 222, column: 52)
!50 = !DILocation(line: 223, column: 7, scope: !49)
!51 = !DILocation(line: 225, column: 35, scope: !52)
!52 = distinct !DILexicalBlock(scope: !43, file: !7, line: 224, column: 11)
!53 = !DILocation(line: 226, column: 35, scope: !52)
!54 = !DILocation(line: 227, column: 40, scope: !52)
!55 = !DILocation(line: 227, column: 35, scope: !52)
!56 = !DILocation(line: 225, column: 7, scope: !52)
!57 = !DILocation(line: 228, column: 7, scope: !52)
!58 = !DILocation(line: 230, column: 1, scope: !6)
!59 = distinct !DISubprogram(name: "TimeSyncEnable", scope: !7, file: !7, line: 107, type: !60, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{!10}
!62 = !DILocalVariable(name: "ret", scope: !59, file: !7, line: 109, type: !10)
!63 = !DILocation(line: 109, column: 8, scope: !59)
!64 = !DILocalVariable(name: "reply", scope: !59, file: !7, line: 110, type: !12)
!65 = !DILocation(line: 110, column: 10, scope: !59)
!66 = !DILocalVariable(name: "replyLen", scope: !59, file: !7, line: 111, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 216, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!69 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!70 = !DILocation(line: 111, column: 11, scope: !59)
!71 = !DILocation(line: 113, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !59, file: !7, line: 113, column: 8)
!73 = !DILocation(line: 113, column: 33, scope: !72)
!74 = !DILocation(line: 113, column: 42, scope: !72)
!75 = !DILocation(line: 114, column: 8, scope: !72)
!76 = !DILocation(line: 113, column: 8, scope: !77)
!77 = !DILexicalBlockFile(scope: !59, file: !7, discriminator: 1)
!78 = !DILocation(line: 115, column: 30, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !7, line: 114, column: 48)
!80 = !DILocation(line: 115, column: 7, scope: !81)
!81 = !DILexicalBlockFile(scope: !79, file: !7, discriminator: 1)
!82 = !DILocation(line: 116, column: 4, scope: !79)
!83 = !DILocation(line: 117, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !7, line: 116, column: 11)
!85 = !DILocation(line: 117, column: 107, scope: !84)
!86 = !DILocation(line: 117, column: 7, scope: !87)
!87 = !DILexicalBlockFile(scope: !84, file: !7, discriminator: 1)
!88 = !DILocation(line: 118, column: 11, scope: !84)
!89 = !DILocation(line: 121, column: 12, scope: !59)
!90 = !DILocation(line: 121, column: 4, scope: !59)
!91 = !DILocation(line: 122, column: 11, scope: !59)
!92 = !DILocation(line: 122, column: 4, scope: !59)
!93 = distinct !DISubprogram(name: "TimeSyncDisable", scope: !7, file: !7, line: 143, type: !60, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DILocalVariable(name: "ret", scope: !93, file: !7, line: 145, type: !10)
!95 = !DILocation(line: 145, column: 8, scope: !93)
!96 = !DILocalVariable(name: "reply", scope: !93, file: !7, line: 146, type: !12)
!97 = !DILocation(line: 146, column: 10, scope: !93)
!98 = !DILocalVariable(name: "replyLen", scope: !93, file: !7, line: 147, type: !67)
!99 = !DILocation(line: 147, column: 11, scope: !93)
!100 = !DILocation(line: 149, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !7, line: 149, column: 8)
!102 = !DILocation(line: 149, column: 34, scope: !101)
!103 = !DILocation(line: 149, column: 43, scope: !101)
!104 = !DILocation(line: 150, column: 8, scope: !101)
!105 = !DILocation(line: 149, column: 8, scope: !106)
!106 = !DILexicalBlockFile(scope: !93, file: !7, discriminator: 1)
!107 = !DILocation(line: 151, column: 30, scope: !108)
!108 = distinct !DILexicalBlock(scope: !101, file: !7, line: 150, column: 45)
!109 = !DILocation(line: 151, column: 7, scope: !110)
!110 = !DILexicalBlockFile(scope: !108, file: !7, discriminator: 1)
!111 = !DILocation(line: 152, column: 4, scope: !108)
!112 = !DILocation(line: 153, column: 25, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !7, line: 152, column: 11)
!114 = !DILocation(line: 153, column: 107, scope: !113)
!115 = !DILocation(line: 153, column: 7, scope: !116)
!116 = !DILexicalBlockFile(scope: !113, file: !7, discriminator: 1)
!117 = !DILocation(line: 154, column: 11, scope: !113)
!118 = !DILocation(line: 157, column: 12, scope: !93)
!119 = !DILocation(line: 157, column: 4, scope: !93)
!120 = !DILocation(line: 158, column: 11, scope: !93)
!121 = !DILocation(line: 158, column: 4, scope: !93)
!122 = distinct !DISubprogram(name: "TimeSyncStatus", scope: !7, file: !7, line: 180, type: !60, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!123 = !DILocalVariable(name: "status", scope: !122, file: !7, line: 182, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !125, line: 230, baseType: !13)
!125 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!126 = !DILocation(line: 182, column: 9, scope: !122)
!127 = !DILocation(line: 183, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !7, line: 183, column: 8)
!129 = !DILocation(line: 183, column: 32, scope: !128)
!130 = !DILocation(line: 183, column: 8, scope: !122)
!131 = !DILocation(line: 184, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !7, line: 183, column: 41)
!133 = !DILocation(line: 185, column: 4, scope: !132)
!134 = !DILocation(line: 186, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !122, file: !7, line: 186, column: 8)
!136 = !DILocation(line: 186, column: 8, scope: !122)
!137 = !DILocation(line: 187, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !7, line: 186, column: 16)
!139 = !DILocation(line: 187, column: 7, scope: !140)
!140 = !DILexicalBlockFile(scope: !138, file: !7, discriminator: 1)
!141 = !DILocation(line: 188, column: 7, scope: !138)
!142 = !DILocation(line: 190, column: 30, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !7, line: 189, column: 11)
!144 = !DILocation(line: 190, column: 7, scope: !145)
!145 = !DILexicalBlockFile(scope: !143, file: !7, discriminator: 1)
!146 = !DILocation(line: 191, column: 7, scope: !143)
!147 = !DILocation(line: 193, column: 1, scope: !122)
!148 = distinct !DISubprogram(name: "TimeSync_Help", scope: !7, file: !7, line: 250, type: !149, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!153 = !DILocalVariable(name: "progName", arg: 1, scope: !148, file: !7, line: 250, type: !151)
!154 = !DILocation(line: 250, column: 27, scope: !148)
!155 = !DILocalVariable(name: "cmd", arg: 2, scope: !148, file: !7, line: 251, type: !151)
!156 = !DILocation(line: 251, column: 27, scope: !148)
!157 = !DILocation(line: 253, column: 12, scope: !148)
!158 = !DILocation(line: 259, column: 12, scope: !148)
!159 = !DILocation(line: 259, column: 17, scope: !148)
!160 = !DILocation(line: 259, column: 27, scope: !148)
!161 = !DILocation(line: 253, column: 4, scope: !162)
!162 = !DILexicalBlockFile(scope: !148, file: !7, discriminator: 1)
!163 = !DILocation(line: 260, column: 1, scope: !148)
!164 = distinct !DISubprogram(name: "TimeSyncGetOldOptions", scope: !7, file: !7, line: 51, type: !165, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!165 = !DISubroutineType(types: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !125, line: 173, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 51, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!170 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!171 = !DILocalVariable(name: "bp", scope: !164, file: !7, line: 53, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !173, line: 102, baseType: !174)
!173 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1645")
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !173, line: 85, size: 384, align: 64, elements: !175)
!175 = !{!176, !260}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !174, file: !173, line: 93, baseType: !177, size: 384, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !173, line: 86, size: 384, align: 64, elements: !178)
!178 = !{!179, !199, !200, !215, !230, !245}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !177, file: !173, line: 87, baseType: !180, size: 64, align: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !173, line: 87, size: 64, align: 64, elements: !181)
!181 = !{!182, !190, !191, !196}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !180, file: !173, line: 87, baseType: !183, size: 32, align: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !173, line: 87, size: 32, align: 16, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !183, file: !173, line: 87, baseType: !186, size: 16, align: 16)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !125, line: 175, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !169, line: 49, baseType: !188)
!188 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !183, file: !173, line: 87, baseType: !186, size: 16, align: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !180, file: !173, line: 87, baseType: !167, size: 32, align: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !180, file: !173, line: 87, baseType: !192, size: 64, align: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !173, line: 87, size: 64, align: 32, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !192, file: !173, line: 87, baseType: !167, size: 32, align: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !192, file: !173, line: 87, baseType: !167, size: 32, align: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !180, file: !173, line: 87, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !125, line: 171, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !169, line: 55, baseType: !69)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !173, line: 88, baseType: !67, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !177, file: !173, line: 89, baseType: !201, size: 64, align: 64, offset: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !173, line: 89, size: 64, align: 64, elements: !202)
!202 = !{!203, !208, !209, !214}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !201, file: !173, line: 89, baseType: !204, size: 32, align: 16)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !201, file: !173, line: 89, size: 32, align: 16, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !204, file: !173, line: 89, baseType: !186, size: 16, align: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !204, file: !173, line: 89, baseType: !186, size: 16, align: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !201, file: !173, line: 89, baseType: !167, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !201, file: !173, line: 89, baseType: !210, size: 64, align: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !201, file: !173, line: 89, size: 64, align: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !210, file: !173, line: 89, baseType: !167, size: 32, align: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !210, file: !173, line: 89, baseType: !167, size: 32, align: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !201, file: !173, line: 89, baseType: !197, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !177, file: !173, line: 90, baseType: !216, size: 64, align: 64, offset: 192)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !173, line: 90, size: 64, align: 64, elements: !217)
!217 = !{!218, !223, !224, !229}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !216, file: !173, line: 90, baseType: !219, size: 32, align: 16)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !173, line: 90, size: 32, align: 16, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !219, file: !173, line: 90, baseType: !186, size: 16, align: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !219, file: !173, line: 90, baseType: !186, size: 16, align: 16, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !216, file: !173, line: 90, baseType: !167, size: 32, align: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !216, file: !173, line: 90, baseType: !225, size: 64, align: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !173, line: 90, size: 64, align: 32, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !225, file: !173, line: 90, baseType: !167, size: 32, align: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !225, file: !173, line: 90, baseType: !167, size: 32, align: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !216, file: !173, line: 90, baseType: !197, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !177, file: !173, line: 91, baseType: !231, size: 64, align: 64, offset: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !173, line: 91, size: 64, align: 64, elements: !232)
!232 = !{!233, !238, !239, !244}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !231, file: !173, line: 91, baseType: !234, size: 32, align: 16)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !173, line: 91, size: 32, align: 16, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !234, file: !173, line: 91, baseType: !186, size: 16, align: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !234, file: !173, line: 91, baseType: !186, size: 16, align: 16, offset: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !231, file: !173, line: 91, baseType: !167, size: 32, align: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !231, file: !173, line: 91, baseType: !240, size: 64, align: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !173, line: 91, size: 64, align: 32, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !240, file: !173, line: 91, baseType: !167, size: 32, align: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !240, file: !173, line: 91, baseType: !167, size: 32, align: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !231, file: !173, line: 91, baseType: !197, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !177, file: !173, line: 92, baseType: !246, size: 64, align: 64, offset: 320)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !173, line: 92, size: 64, align: 64, elements: !247)
!247 = !{!248, !253, !254, !259}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !246, file: !173, line: 92, baseType: !249, size: 32, align: 16)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !173, line: 92, size: 32, align: 16, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !249, file: !173, line: 92, baseType: !186, size: 16, align: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !249, file: !173, line: 92, baseType: !186, size: 16, align: 16, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !246, file: !173, line: 92, baseType: !167, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !246, file: !173, line: 92, baseType: !255, size: 64, align: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !173, line: 92, size: 64, align: 32, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !255, file: !173, line: 92, baseType: !167, size: 32, align: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !255, file: !173, line: 92, baseType: !167, size: 32, align: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !246, file: !173, line: 92, baseType: !197, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !174, file: !173, line: 101, baseType: !261, size: 384, align: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !173, line: 94, size: 384, align: 64, elements: !262)
!262 = !{!263, !278, !293, !308, !323, !338}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !261, file: !173, line: 95, baseType: !264, size: 64, align: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 95, size: 64, align: 64, elements: !265)
!265 = !{!266, !271, !272, !277}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !264, file: !173, line: 95, baseType: !267, size: 32, align: 16)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !173, line: 95, size: 32, align: 16, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !267, file: !173, line: 95, baseType: !186, size: 16, align: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !267, file: !173, line: 95, baseType: !186, size: 16, align: 16, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !264, file: !173, line: 95, baseType: !167, size: 32, align: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !264, file: !173, line: 95, baseType: !273, size: 64, align: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !173, line: 95, size: 64, align: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !273, file: !173, line: 95, baseType: !167, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !273, file: !173, line: 95, baseType: !167, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !264, file: !173, line: 95, baseType: !197, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !261, file: !173, line: 96, baseType: !279, size: 64, align: 64, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 96, size: 64, align: 64, elements: !280)
!280 = !{!281, !286, !287, !292}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !279, file: !173, line: 96, baseType: !282, size: 32, align: 16)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !173, line: 96, size: 32, align: 16, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !282, file: !173, line: 96, baseType: !186, size: 16, align: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !282, file: !173, line: 96, baseType: !186, size: 16, align: 16, offset: 16)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !279, file: !173, line: 96, baseType: !167, size: 32, align: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !279, file: !173, line: 96, baseType: !288, size: 64, align: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !173, line: 96, size: 64, align: 32, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !288, file: !173, line: 96, baseType: !167, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !288, file: !173, line: 96, baseType: !167, size: 32, align: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !279, file: !173, line: 96, baseType: !197, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !261, file: !173, line: 97, baseType: !294, size: 64, align: 64, offset: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 97, size: 64, align: 64, elements: !295)
!295 = !{!296, !301, !302, !307}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !294, file: !173, line: 97, baseType: !297, size: 32, align: 16)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !173, line: 97, size: 32, align: 16, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !297, file: !173, line: 97, baseType: !186, size: 16, align: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !297, file: !173, line: 97, baseType: !186, size: 16, align: 16, offset: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !294, file: !173, line: 97, baseType: !167, size: 32, align: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !294, file: !173, line: 97, baseType: !303, size: 64, align: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !173, line: 97, size: 64, align: 32, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !303, file: !173, line: 97, baseType: !167, size: 32, align: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !303, file: !173, line: 97, baseType: !167, size: 32, align: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !294, file: !173, line: 97, baseType: !197, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !261, file: !173, line: 98, baseType: !309, size: 64, align: 64, offset: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 98, size: 64, align: 64, elements: !310)
!310 = !{!311, !316, !317, !322}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !309, file: !173, line: 98, baseType: !312, size: 32, align: 16)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !309, file: !173, line: 98, size: 32, align: 16, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !312, file: !173, line: 98, baseType: !186, size: 16, align: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !312, file: !173, line: 98, baseType: !186, size: 16, align: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !309, file: !173, line: 98, baseType: !167, size: 32, align: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !309, file: !173, line: 98, baseType: !318, size: 64, align: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !309, file: !173, line: 98, size: 64, align: 32, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !318, file: !173, line: 98, baseType: !167, size: 32, align: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !318, file: !173, line: 98, baseType: !167, size: 32, align: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !309, file: !173, line: 98, baseType: !197, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !261, file: !173, line: 99, baseType: !324, size: 64, align: 64, offset: 256)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 99, size: 64, align: 64, elements: !325)
!325 = !{!326, !331, !332, !337}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !324, file: !173, line: 99, baseType: !327, size: 32, align: 16)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !173, line: 99, size: 32, align: 16, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !327, file: !173, line: 99, baseType: !186, size: 16, align: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !327, file: !173, line: 99, baseType: !186, size: 16, align: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !324, file: !173, line: 99, baseType: !167, size: 32, align: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !324, file: !173, line: 99, baseType: !333, size: 64, align: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !173, line: 99, size: 64, align: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !333, file: !173, line: 99, baseType: !167, size: 32, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !333, file: !173, line: 99, baseType: !167, size: 32, align: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !324, file: !173, line: 99, baseType: !197, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !261, file: !173, line: 100, baseType: !339, size: 64, align: 64, offset: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !173, line: 100, size: 64, align: 64, elements: !340)
!340 = !{!341, !346, !347, !352}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !339, file: !173, line: 100, baseType: !342, size: 32, align: 16)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !173, line: 100, size: 32, align: 16, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !342, file: !173, line: 100, baseType: !186, size: 16, align: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !342, file: !173, line: 100, baseType: !186, size: 16, align: 16, offset: 16)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !339, file: !173, line: 100, baseType: !167, size: 32, align: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !339, file: !173, line: 100, baseType: !348, size: 64, align: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !173, line: 100, size: 64, align: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !348, file: !173, line: 100, baseType: !167, size: 32, align: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !348, file: !173, line: 100, baseType: !167, size: 32, align: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !339, file: !173, line: 100, baseType: !197, size: 64, align: 64)
!353 = !DILocation(line: 53, column: 19, scope: !164)
!354 = !DILocation(line: 54, column: 7, scope: !164)
!355 = !DILocation(line: 54, column: 10, scope: !164)
!356 = !DILocation(line: 54, column: 13, scope: !164)
!357 = !DILocation(line: 54, column: 19, scope: !164)
!358 = !DILocation(line: 54, column: 23, scope: !164)
!359 = !DILocation(line: 55, column: 4, scope: !164)
!360 = !DILocation(line: 56, column: 14, scope: !164)
!361 = !DILocation(line: 56, column: 18, scope: !164)
!362 = !DILocation(line: 56, column: 21, scope: !164)
!363 = !DILocation(line: 56, column: 4, scope: !164)
!364 = distinct !DISubprogram(name: "TimeSyncSet", scope: !7, file: !7, line: 78, type: !365, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!365 = !DISubroutineType(types: !366)
!366 = !{!14, !124, !11, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!368 = !DILocalVariable(name: "enable", arg: 1, scope: !364, file: !7, line: 78, type: !124)
!369 = !DILocation(line: 78, column: 18, scope: !364)
!370 = !DILocalVariable(name: "reply", arg: 2, scope: !364, file: !7, line: 79, type: !11)
!371 = !DILocation(line: 79, column: 20, scope: !364)
!372 = !DILocalVariable(name: "replyLen", arg: 3, scope: !364, file: !7, line: 80, type: !367)
!373 = !DILocation(line: 80, column: 21, scope: !364)
!374 = !DILocalVariable(name: "msg", scope: !364, file: !7, line: 82, type: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !15, line: 46, baseType: !13)
!377 = !DILocation(line: 82, column: 11, scope: !364)
!378 = !DILocation(line: 84, column: 34, scope: !364)
!379 = !DILocation(line: 84, column: 33, scope: !364)
!380 = !DILocation(line: 85, column: 33, scope: !364)
!381 = !DILocation(line: 82, column: 17, scope: !364)
!382 = !DILocation(line: 86, column: 28, scope: !364)
!383 = !DILocation(line: 86, column: 40, scope: !364)
!384 = !DILocation(line: 86, column: 33, scope: !364)
!385 = !DILocation(line: 86, column: 45, scope: !364)
!386 = !DILocation(line: 86, column: 50, scope: !364)
!387 = !DILocation(line: 86, column: 57, scope: !364)
!388 = !DILocation(line: 86, column: 11, scope: !389)
!389 = !DILexicalBlockFile(scope: !364, file: !7, discriminator: 1)
!390 = !DILocation(line: 86, column: 4, scope: !364)
