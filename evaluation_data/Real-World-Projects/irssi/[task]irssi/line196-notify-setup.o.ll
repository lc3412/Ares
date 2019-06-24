; ModuleID = './line196-notify-setup.o.i'
source_filename = "./line196-notify-setup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }

@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str = private unnamed_addr constant [9 x i8] c"notifies\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"away_check\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ircnets\00", align 1
@notifies = external global %struct._GSList*, align 8

; Function Attrs: nounwind uwtable
define void @notifylist_add_config(%struct.NOTIFYLIST_REC*) #0 !dbg !28 {
  %2 = alloca %struct.NOTIFYLIST_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  store %struct.NOTIFYLIST_REC* %0, %struct.NOTIFYLIST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %2, metadata !33, metadata !34), !dbg !35
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !36, metadata !34), !dbg !45
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !46
  %5 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1), !dbg !47
  store %struct._CONFIG_NODE* %5, %struct._CONFIG_NODE** %3, align 8, !dbg !48
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !49
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !50
  %8 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !51
  %9 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %8, i32 0, i32 0, !dbg !52
  %10 = load i8*, i8** %9, align 8, !dbg !52
  %11 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %6, %struct._CONFIG_NODE* %7, i8* %10, i32 2), !dbg !53
  store %struct._CONFIG_NODE* %11, %struct._CONFIG_NODE** %3, align 8, !dbg !54
  %12 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !55
  %13 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %12, i32 0, i32 2, !dbg !57
  %14 = load i8, i8* %13, align 8, !dbg !57
  %15 = and i8 %14, 1, !dbg !57
  %16 = zext i8 %15 to i32, !dbg !57
  %17 = icmp ne i32 %16, 0, !dbg !55
  br i1 %17, label %18, label %21, !dbg !58

; <label>:18:                                     ; preds = %1
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !59
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !60
  call void @config_node_set_bool(%struct._CONFIG_REC* %19, %struct._CONFIG_NODE* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1), !dbg !61
  br label %24, !dbg !61

; <label>:21:                                     ; preds = %1
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !62
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !63
  call void @config_node_set_str(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !64
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !65
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !66
  call void @config_node_set_str(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null), !dbg !67
  %27 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !68
  %28 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %27, i32 0, i32 1, !dbg !70
  %29 = load i8**, i8*** %28, align 8, !dbg !70
  %30 = icmp ne i8** %29, null, !dbg !71
  br i1 %30, label %31, label %46, !dbg !72

; <label>:31:                                     ; preds = %24
  %32 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !73
  %33 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %32, i32 0, i32 1, !dbg !75
  %34 = load i8**, i8*** %33, align 8, !dbg !75
  %35 = load i8*, i8** %34, align 8, !dbg !76
  %36 = icmp ne i8* %35, null, !dbg !77
  br i1 %36, label %37, label %46, !dbg !78

; <label>:37:                                     ; preds = %31
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !79
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !81
  %40 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %38, %struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 3), !dbg !82
  store %struct._CONFIG_NODE* %40, %struct._CONFIG_NODE** %3, align 8, !dbg !83
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !84
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !85
  %43 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !86
  %44 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %43, i32 0, i32 1, !dbg !87
  %45 = load i8**, i8*** %44, align 8, !dbg !87
  call void @config_node_add_list(%struct._CONFIG_REC* %41, %struct._CONFIG_NODE* %42, i8** %45), !dbg !88
  br label %46, !dbg !89

; <label>:46:                                     ; preds = %37, %31, %24
  ret void, !dbg !90
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_add_list(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8**) #2

; Function Attrs: nounwind uwtable
define void @notifylist_remove_config(%struct.NOTIFYLIST_REC*) #0 !dbg !91 {
  %2 = alloca %struct.NOTIFYLIST_REC*, align 8
  store %struct.NOTIFYLIST_REC* %0, %struct.NOTIFYLIST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %2, metadata !92, metadata !34), !dbg !93
  %3 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !94
  %4 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !95
  %5 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %4, i32 0, i32 0, !dbg !96
  %6 = load i8*, i8** %5, align 8, !dbg !96
  %7 = call i32 @config_set_str(%struct._CONFIG_REC* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %6, i8* null), !dbg !97
  ret void, !dbg !98
}

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @notifylist_read_config() #0 !dbg !99 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct.NOTIFYLIST_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !102, metadata !34), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %2, metadata !104, metadata !34), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !106, metadata !34), !dbg !116
  call void @notifylist_destroy_all(), !dbg !117
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !118
  %5 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !119
  store %struct._CONFIG_NODE* %5, %struct._CONFIG_NODE** %1, align 8, !dbg !120
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !121
  %7 = icmp eq %struct._CONFIG_NODE* %6, null, !dbg !123
  br i1 %7, label %8, label %9, !dbg !124

; <label>:8:                                      ; preds = %0
  br label %65, !dbg !125

; <label>:9:                                      ; preds = %0
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !127
  %11 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %10, i32 0, i32 2, !dbg !128
  %12 = load i8*, i8** %11, align 8, !dbg !128
  %13 = bitcast i8* %12 to %struct._GSList*, !dbg !127
  %14 = call %struct._GSList* @config_node_first(%struct._GSList* %13), !dbg !129
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !130
  br label %15, !dbg !131

; <label>:15:                                     ; preds = %62, %9
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !132
  %17 = icmp ne %struct._GSList* %16, null, !dbg !136
  br i1 %17, label %18, label %65, !dbg !137

; <label>:18:                                     ; preds = %15
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !138
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !140
  %21 = load i8*, i8** %20, align 8, !dbg !140
  %22 = bitcast i8* %21 to %struct._CONFIG_NODE*, !dbg !138
  store %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE** %1, align 8, !dbg !141
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !142
  %24 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %23, i32 0, i32 0, !dbg !144
  %25 = load i32, i32* %24, align 8, !dbg !144
  %26 = icmp ne i32 %25, 2, !dbg !145
  br i1 %26, label %27, label %28, !dbg !146

; <label>:27:                                     ; preds = %18
  br label %62, !dbg !147

; <label>:28:                                     ; preds = %18
  %29 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !148
  %30 = bitcast i8* %29 to %struct.NOTIFYLIST_REC*, !dbg !149
  store %struct.NOTIFYLIST_REC* %30, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !150
  %31 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !151
  %32 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !152
  %33 = bitcast %struct.NOTIFYLIST_REC* %32 to i8*, !dbg !152
  %34 = call %struct._GSList* @g_slist_append(%struct._GSList* %31, i8* %33), !dbg !153
  store %struct._GSList* %34, %struct._GSList** @notifies, align 8, !dbg !154
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !155
  %36 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %35, i32 0, i32 1, !dbg !156
  %37 = load i8*, i8** %36, align 8, !dbg !156
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !157
  %39 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !158
  %40 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %39, i32 0, i32 0, !dbg !159
  store i8* %38, i8** %40, align 8, !dbg !160
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !161
  %42 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !162
  %43 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !163
  %44 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %43, i32 0, i32 2, !dbg !164
  %45 = trunc i32 %42 to i8, !dbg !165
  %46 = load i8, i8* %44, align 8, !dbg !165
  %47 = and i8 %45, 1, !dbg !165
  %48 = and i8 %46, -2, !dbg !165
  %49 = or i8 %48, %47, !dbg !165
  store i8 %49, i8* %44, align 8, !dbg !165
  %50 = zext i8 %47 to i32, !dbg !165
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !166
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !167
  %53 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %51, %struct._CONFIG_NODE* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 -1), !dbg !168
  store %struct._CONFIG_NODE* %53, %struct._CONFIG_NODE** %1, align 8, !dbg !169
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !170
  %55 = icmp ne %struct._CONFIG_NODE* %54, null, !dbg !172
  br i1 %55, label %56, label %61, !dbg !173

; <label>:56:                                     ; preds = %28
  %57 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !174
  %58 = call i8** @config_node_get_list(%struct._CONFIG_NODE* %57), !dbg !176
  %59 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !177
  %60 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %59, i32 0, i32 1, !dbg !178
  store i8** %58, i8*** %60, align 8, !dbg !179
  br label %61, !dbg !177

; <label>:61:                                     ; preds = %56, %28
  br label %62, !dbg !180

; <label>:62:                                     ; preds = %61, %27
  %63 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !181
  %64 = call %struct._GSList* @config_node_next(%struct._GSList* %63), !dbg !183
  store %struct._GSList* %64, %struct._GSList** %3, align 8, !dbg !184
  br label %15, !dbg !185, !llvm.loop !186

; <label>:65:                                     ; preds = %8, %15
  ret void, !dbg !187
}

declare void @notifylist_destroy_all() #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare i8** @config_node_get_list(%struct._CONFIG_NODE*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "line196-notify-setup.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!7 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!8 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!9 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!10 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!11 = !{!12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFYLIST_REC", file: !15, line: 10, baseType: !16)
!15 = !DIFile(filename: "notifylist.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 4, size: 192, align: 64, elements: !17)
!17 = !{!18, !21, !23}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !16, file: !15, line: 5, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ircnets", scope: !16, file: !15, line: 6, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "away_check", scope: !16, file: !15, line: 9, baseType: !24, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "notifylist_add_config", scope: !29, file: !29, line: 28, type: !30, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !32)
!29 = !DIFile(filename: "notify-setup.c", directory: "/home/lichi/Desktop/irssi/task1")
!30 = !DISubroutineType(types: !31)
!31 = !{null, !13}
!32 = !{}
!33 = !DILocalVariable(name: "rec", arg: 1, scope: !28, file: !29, line: 28, type: !13)
!34 = !DIExpression()
!35 = !DILocation(line: 28, column: 44, scope: !28)
!36 = !DILocalVariable(name: "node", scope: !28, file: !29, line: 30, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !4, line: 17, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !4, line: 20, size: 192, align: 64, elements: !40)
!40 = !{!41, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !4, line: 21, baseType: !42, size: 32, align: 32)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !39, file: !4, line: 22, baseType: !19, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !4, line: 23, baseType: !12, size: 64, align: 64, offset: 128)
!45 = !DILocation(line: 30, column: 15, scope: !28)
!46 = !DILocation(line: 32, column: 30, scope: !28)
!47 = !DILocation(line: 32, column: 9, scope: !28)
!48 = !DILocation(line: 32, column: 7, scope: !28)
!49 = !DILocation(line: 33, column: 29, scope: !28)
!50 = !DILocation(line: 33, column: 41, scope: !28)
!51 = !DILocation(line: 33, column: 47, scope: !28)
!52 = !DILocation(line: 33, column: 52, scope: !28)
!53 = !DILocation(line: 33, column: 9, scope: !28)
!54 = !DILocation(line: 33, column: 7, scope: !28)
!55 = !DILocation(line: 35, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !28, file: !29, line: 35, column: 6)
!57 = !DILocation(line: 35, column: 11, scope: !56)
!58 = !DILocation(line: 35, column: 6, scope: !28)
!59 = !DILocation(line: 36, column: 24, scope: !56)
!60 = !DILocation(line: 36, column: 36, scope: !56)
!61 = !DILocation(line: 36, column: 3, scope: !56)
!62 = !DILocation(line: 38, column: 23, scope: !56)
!63 = !DILocation(line: 38, column: 35, scope: !56)
!64 = !DILocation(line: 38, column: 3, scope: !56)
!65 = !DILocation(line: 40, column: 22, scope: !28)
!66 = !DILocation(line: 40, column: 34, scope: !28)
!67 = !DILocation(line: 40, column: 2, scope: !28)
!68 = !DILocation(line: 41, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !28, file: !29, line: 41, column: 6)
!70 = !DILocation(line: 41, column: 11, scope: !69)
!71 = !DILocation(line: 41, column: 19, scope: !69)
!72 = !DILocation(line: 41, column: 26, scope: !69)
!73 = !DILocation(line: 41, column: 30, scope: !74)
!74 = !DILexicalBlockFile(scope: !69, file: !29, discriminator: 1)
!75 = !DILocation(line: 41, column: 35, scope: !74)
!76 = !DILocation(line: 41, column: 29, scope: !74)
!77 = !DILocation(line: 41, column: 43, scope: !74)
!78 = !DILocation(line: 41, column: 6, scope: !74)
!79 = !DILocation(line: 42, column: 30, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !29, line: 41, column: 52)
!81 = !DILocation(line: 42, column: 42, scope: !80)
!82 = !DILocation(line: 42, column: 10, scope: !80)
!83 = !DILocation(line: 42, column: 8, scope: !80)
!84 = !DILocation(line: 43, column: 24, scope: !80)
!85 = !DILocation(line: 43, column: 36, scope: !80)
!86 = !DILocation(line: 43, column: 42, scope: !80)
!87 = !DILocation(line: 43, column: 47, scope: !80)
!88 = !DILocation(line: 43, column: 3, scope: !80)
!89 = !DILocation(line: 44, column: 2, scope: !80)
!90 = !DILocation(line: 45, column: 1, scope: !28)
!91 = distinct !DISubprogram(name: "notifylist_remove_config", scope: !29, file: !29, line: 47, type: !30, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !32)
!92 = !DILocalVariable(name: "rec", arg: 1, scope: !91, file: !29, line: 47, type: !13)
!93 = !DILocation(line: 47, column: 47, scope: !91)
!94 = !DILocation(line: 49, column: 17, scope: !91)
!95 = !DILocation(line: 49, column: 41, scope: !91)
!96 = !DILocation(line: 49, column: 46, scope: !91)
!97 = !DILocation(line: 49, column: 2, scope: !91)
!98 = !DILocation(line: 50, column: 1, scope: !91)
!99 = distinct !DISubprogram(name: "notifylist_read_config", scope: !29, file: !29, line: 52, type: !100, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !32)
!100 = !DISubroutineType(types: !101)
!101 = !{null}
!102 = !DILocalVariable(name: "node", scope: !99, file: !29, line: 54, type: !37)
!103 = !DILocation(line: 54, column: 15, scope: !99)
!104 = !DILocalVariable(name: "rec", scope: !99, file: !29, line: 55, type: !13)
!105 = !DILocation(line: 55, column: 18, scope: !99)
!106 = !DILocalVariable(name: "tmp", scope: !99, file: !29, line: 56, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !109, line: 37, baseType: !110)
!109 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !109, line: 39, size: 128, align: 64, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !110, file: !109, line: 41, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !114, line: 77, baseType: !12)
!114 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !109, line: 42, baseType: !107, size: 64, align: 64, offset: 64)
!116 = !DILocation(line: 56, column: 10, scope: !99)
!117 = !DILocation(line: 58, column: 2, scope: !99)
!118 = !DILocation(line: 60, column: 30, scope: !99)
!119 = !DILocation(line: 60, column: 9, scope: !99)
!120 = !DILocation(line: 60, column: 7, scope: !99)
!121 = !DILocation(line: 61, column: 6, scope: !122)
!122 = distinct !DILexicalBlock(scope: !99, file: !29, line: 61, column: 6)
!123 = !DILocation(line: 61, column: 11, scope: !122)
!124 = !DILocation(line: 61, column: 6, scope: !99)
!125 = !DILocation(line: 61, column: 19, scope: !126)
!126 = !DILexicalBlockFile(scope: !122, file: !29, discriminator: 1)
!127 = !DILocation(line: 63, column: 26, scope: !99)
!128 = !DILocation(line: 63, column: 32, scope: !99)
!129 = !DILocation(line: 63, column: 8, scope: !99)
!130 = !DILocation(line: 63, column: 6, scope: !99)
!131 = !DILocation(line: 64, column: 2, scope: !99)
!132 = !DILocation(line: 64, column: 9, scope: !133)
!133 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 1)
!134 = distinct !DILexicalBlock(scope: !135, file: !29, line: 64, column: 2)
!135 = distinct !DILexicalBlock(scope: !99, file: !29, line: 64, column: 2)
!136 = !DILocation(line: 64, column: 13, scope: !133)
!137 = !DILocation(line: 64, column: 2, scope: !133)
!138 = !DILocation(line: 65, column: 10, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !29, line: 64, column: 50)
!140 = !DILocation(line: 65, column: 15, scope: !139)
!141 = !DILocation(line: 65, column: 8, scope: !139)
!142 = !DILocation(line: 67, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !29, line: 67, column: 7)
!144 = !DILocation(line: 67, column: 13, scope: !143)
!145 = !DILocation(line: 67, column: 18, scope: !143)
!146 = !DILocation(line: 67, column: 7, scope: !139)
!147 = !DILocation(line: 68, column: 4, scope: !143)
!148 = !DILocation(line: 70, column: 29, scope: !139)
!149 = !DILocation(line: 70, column: 10, scope: !139)
!150 = !DILocation(line: 70, column: 7, scope: !139)
!151 = !DILocation(line: 71, column: 29, scope: !139)
!152 = !DILocation(line: 71, column: 39, scope: !139)
!153 = !DILocation(line: 71, column: 14, scope: !139)
!154 = !DILocation(line: 71, column: 12, scope: !139)
!155 = !DILocation(line: 73, column: 24, scope: !139)
!156 = !DILocation(line: 73, column: 30, scope: !139)
!157 = !DILocation(line: 73, column: 15, scope: !139)
!158 = !DILocation(line: 73, column: 3, scope: !139)
!159 = !DILocation(line: 73, column: 8, scope: !139)
!160 = !DILocation(line: 73, column: 13, scope: !139)
!161 = !DILocation(line: 74, column: 42, scope: !139)
!162 = !DILocation(line: 74, column: 21, scope: !139)
!163 = !DILocation(line: 74, column: 3, scope: !139)
!164 = !DILocation(line: 74, column: 8, scope: !139)
!165 = !DILocation(line: 74, column: 19, scope: !139)
!166 = !DILocation(line: 76, column: 30, scope: !139)
!167 = !DILocation(line: 76, column: 42, scope: !139)
!168 = !DILocation(line: 76, column: 10, scope: !139)
!169 = !DILocation(line: 76, column: 8, scope: !139)
!170 = !DILocation(line: 77, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !139, file: !29, line: 77, column: 7)
!172 = !DILocation(line: 77, column: 12, scope: !171)
!173 = !DILocation(line: 77, column: 7, scope: !139)
!174 = !DILocation(line: 77, column: 56, scope: !175)
!175 = !DILexicalBlockFile(scope: !171, file: !29, discriminator: 1)
!176 = !DILocation(line: 77, column: 35, scope: !175)
!177 = !DILocation(line: 77, column: 20, scope: !175)
!178 = !DILocation(line: 77, column: 25, scope: !175)
!179 = !DILocation(line: 77, column: 33, scope: !175)
!180 = !DILocation(line: 78, column: 2, scope: !139)
!181 = !DILocation(line: 64, column: 44, scope: !182)
!182 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 2)
!183 = !DILocation(line: 64, column: 27, scope: !182)
!184 = !DILocation(line: 64, column: 25, scope: !182)
!185 = !DILocation(line: 64, column: 2, scope: !182)
!186 = distinct !{!186, !131}
!187 = !DILocation(line: 79, column: 1, scope: !99)
