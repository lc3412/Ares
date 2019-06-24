; ModuleID = './vmware_toolbox_cmd-toolboxcmd-stat.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-stat.o.i"
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._VMGuestLibHandle = type opaque

@optind = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"hosttime\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sessionid\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"balloon\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"memlimit\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memres\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cpures\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"cpulimit\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.13 = private unnamed_addr constant [869 x i8] c"@&!*@*@(help.stat)%s: print useful guest and host information\0AUsage: %s %s <subcommand>\0A\0ASubcommands:\0A   hosttime: print the host time\0A   speed: print the CPU speed in MHz\0AESX guests only subcommands:\0A   sessionid: print the current session id\0A   balloon: print memory ballooning information\0A   swap: print memory swapping information\0A   memlimit: print memory limit information\0A   memres: print memory reservation information\0A   cpures: print CPU reservation information\0A   cpulimit: print CPU limit information\0A   raw [<encoding> <stat name>]: print raw stat information\0A      <encoding> can be one of 'text', 'json', 'xml', 'yaml'.\0A      <stat name> includes session, host, resources, vscsi and\0A      vnet (Some stats like vscsi are two words, e.g. 'vscsi scsi0:0').\0A      Prints the available stats if <encoding> and <stat name>\0A      arguments are not specified.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"@&!*@*@(stat.gettime.failed)Unable to get host time.\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%d %b %Y %H:%M:%S\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"@&!*@*@(stat.formattime.failed)Unable to format host time.\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"@&!*@*@(stat.getsession.failed)Failed to get session ID: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"@&!*@*@(stat.openhandle.failed)OpenHandle failed: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"@&!*@*@(stat.update.failed)UpdateInfo failed: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"@&!*@*@(stat.balloon.failed)Failed to get ballooned memory: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"@&!*@*@(stat.memoryBalloon.info)%u MB\0A\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"@&!*@*@(stat.memswap.failed)Failed to get swapped memory: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"@&!*@*@(stat.memorySwapped.info)%u MB\0A\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"@&!*@*@(stat.maxmem.failed)Failed to get memory limit: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"@&!*@*@(stat.memoryLimit.info)%u MB\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"@&!*@*@(stat.memres.failed)Failed to get memory reservation: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"@&!*@*@(stat.memoryReservation.info)%u MB\0A\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"@&!*@*@(stat.cpumin.failed)Failed to get CPU minimum: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"@&!*@*@(stat.cpuReservation.info)%u MHz\0A\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"@&!*@*@(stat.cpumax.failed)Failed to get CPU limit: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"@&!*@*@(stat.cpuLimit.info)%u MHz\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"@&!*@*@(stat.getspeed.failed)Unable to get processor speed.\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"@&!*@*@(stat.processorSpeed.info)%u MHz\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"@&!*@*@(stat.get.failed)Failed to get stat: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Stat_Command(i8**, i32, i32) #0 !dbg !28 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !39, metadata !40), !dbg !41
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !40), !dbg !43
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !40), !dbg !45
  %8 = load i32, i32* @optind, align 4, !dbg !46
  %9 = sext i32 %8 to i64, !dbg !48
  %10 = load i8**, i8*** %5, align 8, !dbg !48
  %11 = getelementptr inbounds i8*, i8** %10, i64 %9, !dbg !48
  %12 = load i8*, i8** %11, align 8, !dbg !48
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5, !dbg !49
  %14 = icmp eq i32 %13, 0, !dbg !50
  br i1 %14, label %15, label %17, !dbg !51

; <label>:15:                                     ; preds = %3
  %16 = call i32 @StatHostTime(), !dbg !52
  store i32 %16, i32* %4, align 4, !dbg !54
  br label %159, !dbg !54

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* @optind, align 4, !dbg !55
  %19 = sext i32 %18 to i64, !dbg !57
  %20 = load i8**, i8*** %5, align 8, !dbg !57
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19, !dbg !57
  %22 = load i8*, i8** %21, align 8, !dbg !57
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !58
  %24 = icmp eq i32 %23, 0, !dbg !59
  br i1 %24, label %25, label %27, !dbg !60

; <label>:25:                                     ; preds = %17
  %26 = call i32 @StatGetSessionID(), !dbg !61
  store i32 %26, i32* %4, align 4, !dbg !63
  br label %159, !dbg !63

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* @optind, align 4, !dbg !64
  %29 = sext i32 %28 to i64, !dbg !66
  %30 = load i8**, i8*** %5, align 8, !dbg !66
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29, !dbg !66
  %32 = load i8*, i8** %31, align 8, !dbg !66
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !67
  %34 = icmp eq i32 %33, 0, !dbg !68
  br i1 %34, label %35, label %37, !dbg !69

; <label>:35:                                     ; preds = %27
  %36 = call i32 @StatGetMemoryBallooned(), !dbg !70
  store i32 %36, i32* %4, align 4, !dbg !72
  br label %159, !dbg !72

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* @optind, align 4, !dbg !73
  %39 = sext i32 %38 to i64, !dbg !75
  %40 = load i8**, i8*** %5, align 8, !dbg !75
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39, !dbg !75
  %42 = load i8*, i8** %41, align 8, !dbg !75
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !76
  %44 = icmp eq i32 %43, 0, !dbg !77
  br i1 %44, label %45, label %47, !dbg !78

; <label>:45:                                     ; preds = %37
  %46 = call i32 @StatGetMemorySwapped(), !dbg !79
  store i32 %46, i32* %4, align 4, !dbg !81
  br label %159, !dbg !81

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* @optind, align 4, !dbg !82
  %49 = sext i32 %48 to i64, !dbg !84
  %50 = load i8**, i8*** %5, align 8, !dbg !84
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49, !dbg !84
  %52 = load i8*, i8** %51, align 8, !dbg !84
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !85
  %54 = icmp eq i32 %53, 0, !dbg !86
  br i1 %54, label %55, label %57, !dbg !87

; <label>:55:                                     ; preds = %47
  %56 = call i32 @StatGetMemoryLimit(), !dbg !88
  store i32 %56, i32* %4, align 4, !dbg !90
  br label %159, !dbg !90

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* @optind, align 4, !dbg !91
  %59 = sext i32 %58 to i64, !dbg !93
  %60 = load i8**, i8*** %5, align 8, !dbg !93
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59, !dbg !93
  %62 = load i8*, i8** %61, align 8, !dbg !93
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !94
  %64 = icmp eq i32 %63, 0, !dbg !95
  br i1 %64, label %65, label %67, !dbg !96

; <label>:65:                                     ; preds = %57
  %66 = call i32 @StatGetMemoryReservation(), !dbg !97
  store i32 %66, i32* %4, align 4, !dbg !99
  br label %159, !dbg !99

; <label>:67:                                     ; preds = %57
  %68 = load i32, i32* @optind, align 4, !dbg !100
  %69 = sext i32 %68 to i64, !dbg !102
  %70 = load i8**, i8*** %5, align 8, !dbg !102
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69, !dbg !102
  %72 = load i8*, i8** %71, align 8, !dbg !102
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !103
  %74 = icmp eq i32 %73, 0, !dbg !104
  br i1 %74, label %75, label %77, !dbg !105

; <label>:75:                                     ; preds = %67
  %76 = call i32 @StatGetCpuReservation(), !dbg !106
  store i32 %76, i32* %4, align 4, !dbg !108
  br label %159, !dbg !108

; <label>:77:                                     ; preds = %67
  %78 = load i32, i32* @optind, align 4, !dbg !109
  %79 = sext i32 %78 to i64, !dbg !111
  %80 = load i8**, i8*** %5, align 8, !dbg !111
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79, !dbg !111
  %82 = load i8*, i8** %81, align 8, !dbg !111
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !112
  %84 = icmp eq i32 %83, 0, !dbg !113
  br i1 %84, label %85, label %87, !dbg !114

; <label>:85:                                     ; preds = %77
  %86 = call i32 @StatGetCpuLimit(), !dbg !115
  store i32 %86, i32* %4, align 4, !dbg !117
  br label %159, !dbg !117

; <label>:87:                                     ; preds = %77
  %88 = load i32, i32* @optind, align 4, !dbg !118
  %89 = sext i32 %88 to i64, !dbg !120
  %90 = load i8**, i8*** %5, align 8, !dbg !120
  %91 = getelementptr inbounds i8*, i8** %90, i64 %89, !dbg !120
  %92 = load i8*, i8** %91, align 8, !dbg !120
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !121
  %94 = icmp eq i32 %93, 0, !dbg !122
  br i1 %94, label %95, label %97, !dbg !123

; <label>:95:                                     ; preds = %87
  %96 = call i32 @StatProcessorSpeed(), !dbg !124
  store i32 %96, i32* %4, align 4, !dbg !126
  br label %159, !dbg !126

; <label>:97:                                     ; preds = %87
  %98 = load i32, i32* @optind, align 4, !dbg !127
  %99 = sext i32 %98 to i64, !dbg !129
  %100 = load i8**, i8*** %5, align 8, !dbg !129
  %101 = getelementptr inbounds i8*, i8** %100, i64 %99, !dbg !129
  %102 = load i8*, i8** %101, align 8, !dbg !129
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !130
  %104 = icmp eq i32 %103, 0, !dbg !131
  br i1 %104, label %105, label %149, !dbg !132

; <label>:105:                                    ; preds = %97
  %106 = load i32, i32* @optind, align 4, !dbg !133
  %107 = add nsw i32 %106, 1, !dbg !135
  %108 = load i32, i32* %6, align 4, !dbg !136
  %109 = icmp slt i32 %107, %108, !dbg !137
  br i1 %109, label %110, label %117, !dbg !138

; <label>:110:                                    ; preds = %105
  %111 = load i32, i32* @optind, align 4, !dbg !139
  %112 = add nsw i32 %111, 1, !dbg !141
  %113 = sext i32 %112 to i64, !dbg !142
  %114 = load i8**, i8*** %5, align 8, !dbg !142
  %115 = getelementptr inbounds i8*, i8** %114, i64 %113, !dbg !142
  %116 = load i8*, i8** %115, align 8, !dbg !142
  br label %118, !dbg !143

; <label>:117:                                    ; preds = %105
  br label %118, !dbg !144

; <label>:118:                                    ; preds = %117, %110
  %119 = phi i8* [ %116, %110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %117 ], !dbg !146
  %120 = load i32, i32* @optind, align 4, !dbg !148
  %121 = add nsw i32 %120, 2, !dbg !149
  %122 = load i32, i32* %6, align 4, !dbg !150
  %123 = icmp slt i32 %121, %122, !dbg !151
  br i1 %123, label %124, label %131, !dbg !152

; <label>:124:                                    ; preds = %118
  %125 = load i32, i32* @optind, align 4, !dbg !153
  %126 = add nsw i32 %125, 2, !dbg !154
  %127 = sext i32 %126 to i64, !dbg !155
  %128 = load i8**, i8*** %5, align 8, !dbg !155
  %129 = getelementptr inbounds i8*, i8** %128, i64 %127, !dbg !155
  %130 = load i8*, i8** %129, align 8, !dbg !155
  br label %132, !dbg !156

; <label>:131:                                    ; preds = %118
  br label %132, !dbg !157

; <label>:132:                                    ; preds = %131, %124
  %133 = phi i8* [ %130, %124 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %131 ], !dbg !158
  %134 = load i32, i32* @optind, align 4, !dbg !159
  %135 = add nsw i32 %134, 3, !dbg !160
  %136 = load i32, i32* %6, align 4, !dbg !161
  %137 = icmp slt i32 %135, %136, !dbg !162
  br i1 %137, label %138, label %145, !dbg !163

; <label>:138:                                    ; preds = %132
  %139 = load i32, i32* @optind, align 4, !dbg !164
  %140 = add nsw i32 %139, 3, !dbg !165
  %141 = sext i32 %140 to i64, !dbg !166
  %142 = load i8**, i8*** %5, align 8, !dbg !166
  %143 = getelementptr inbounds i8*, i8** %142, i64 %141, !dbg !166
  %144 = load i8*, i8** %143, align 8, !dbg !166
  br label %146, !dbg !167

; <label>:145:                                    ; preds = %132
  br label %146, !dbg !168

; <label>:146:                                    ; preds = %145, %138
  %147 = phi i8* [ %144, %138 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %145 ], !dbg !169
  %148 = call i32 @StatGetRaw(i8* %119, i8* %133, i8* %147), !dbg !170
  store i32 %148, i32* %4, align 4, !dbg !172
  br label %159, !dbg !172

; <label>:149:                                    ; preds = %97
  %150 = load i8**, i8*** %5, align 8, !dbg !173
  %151 = getelementptr inbounds i8*, i8** %150, i64 0, !dbg !173
  %152 = load i8*, i8** %151, align 8, !dbg !173
  %153 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)), !dbg !175
  %154 = load i32, i32* @optind, align 4, !dbg !176
  %155 = sext i32 %154 to i64, !dbg !177
  %156 = load i8**, i8*** %5, align 8, !dbg !177
  %157 = getelementptr inbounds i8*, i8** %156, i64 %155, !dbg !177
  %158 = load i8*, i8** %157, align 8, !dbg !177
  call void @ToolsCmd_UnknownEntityError(i8* %152, i8* %153, i8* %158), !dbg !178
  store i32 64, i32* %4, align 4, !dbg !179
  br label %159, !dbg !179

; <label>:159:                                    ; preds = %149, %146, %95, %85, %75, %65, %55, %45, %35, %25, %15
  %160 = load i32, i32* %4, align 4, !dbg !180
  ret i32 %160, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @StatHostTime() #0 !dbg !181 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %union.Backdoor_proto, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !184, metadata !40), !dbg !189
  call void @llvm.dbg.declare(metadata i64* %3, metadata !190, metadata !40), !dbg !191
  call void @llvm.dbg.declare(metadata i64* %4, metadata !192, metadata !40), !dbg !197
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !198, metadata !40), !dbg !202
  call void @llvm.dbg.declare(metadata i8** %6, metadata !203, metadata !40), !dbg !206
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %7, metadata !207, metadata !40), !dbg !392
  %8 = bitcast %union.Backdoor_proto* %7 to %struct.anon*, !dbg !393
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 2, !dbg !394
  %10 = bitcast %union.anon.2* %9 to %struct.anon.3*, !dbg !395
  %11 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %10, i32 0, i32 0, !dbg !396
  store i16 46, i16* %11, align 8, !dbg !397
  call void @Backdoor(%union.Backdoor_proto* %7), !dbg !398
  %12 = bitcast %union.Backdoor_proto* %7 to %struct.anon.14*, !dbg !399
  %13 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 0, !dbg !401
  %14 = bitcast %union.anon.15* %13 to i32*, !dbg !402
  %15 = load i32, i32* %14, align 8, !dbg !402
  %16 = icmp eq i32 %15, 1447909480, !dbg !403
  br i1 %16, label %17, label %30, !dbg !404

; <label>:17:                                     ; preds = %0
  %18 = bitcast %union.Backdoor_proto* %7 to %struct.anon.14*, !dbg !405
  %19 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %18, i32 0, i32 4, !dbg !407
  %20 = bitcast %union.anon.27* %19 to i32*, !dbg !408
  %21 = load i32, i32* %20, align 8, !dbg !408
  %22 = zext i32 %21 to i64, !dbg !409
  %23 = shl i64 %22, 32, !dbg !410
  %24 = bitcast %union.Backdoor_proto* %7 to %struct.anon.14*, !dbg !411
  %25 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %24, i32 0, i32 3, !dbg !412
  %26 = bitcast %union.anon.24* %25 to i32*, !dbg !413
  %27 = load i32, i32* %26, align 8, !dbg !413
  %28 = zext i32 %27 to i64, !dbg !414
  %29 = or i64 %23, %28, !dbg !415
  store i64 %29, i64* %2, align 8, !dbg !416
  br label %40, !dbg !417

; <label>:30:                                     ; preds = %0
  %31 = bitcast %union.Backdoor_proto* %7 to %struct.anon*, !dbg !418
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 2, !dbg !420
  %33 = bitcast %union.anon.2* %32 to %struct.anon.3*, !dbg !421
  %34 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %33, i32 0, i32 0, !dbg !422
  store i16 23, i16* %34, align 8, !dbg !423
  call void @Backdoor(%union.Backdoor_proto* %7), !dbg !424
  %35 = bitcast %union.Backdoor_proto* %7 to %struct.anon.14*, !dbg !425
  %36 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %35, i32 0, i32 0, !dbg !426
  %37 = bitcast %union.anon.15* %36 to i32*, !dbg !427
  %38 = load i32, i32* %37, align 8, !dbg !427
  %39 = zext i32 %38 to i64, !dbg !428
  store i64 %39, i64* %2, align 8, !dbg !429
  br label %40

; <label>:40:                                     ; preds = %30, %17
  %41 = bitcast %union.Backdoor_proto* %7 to %struct.anon.14*, !dbg !430
  %42 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %41, i32 0, i32 1, !dbg !431
  %43 = bitcast %union.anon.18* %42 to i32*, !dbg !432
  %44 = load i32, i32* %43, align 8, !dbg !432
  %45 = zext i32 %44 to i64, !dbg !433
  store i64 %45, i64* %3, align 8, !dbg !434
  %46 = load i64, i64* %2, align 8, !dbg !435
  %47 = icmp sle i64 %46, 0, !dbg !437
  br i1 %47, label %48, label %50, !dbg !438

; <label>:48:                                     ; preds = %40
  %49 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0)), !dbg !439
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %49), !dbg !441
  store i32 75, i32* %1, align 4, !dbg !442
  br label %71, !dbg !442

; <label>:50:                                     ; preds = %40
  %51 = load i64, i64* %2, align 8, !dbg !443
  %52 = load i64, i64* %3, align 8, !dbg !444
  %53 = sdiv i64 %52, 1000000, !dbg !445
  %54 = add nsw i64 %51, %53, !dbg !446
  store i64 %54, i64* %4, align 8, !dbg !447
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !448
  %56 = call %struct.tm* @localtime(i64* %4) #6, !dbg !450
  %57 = call i64 @strftime(i8* %55, i64 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), %struct.tm* %56) #6, !dbg !451
  %58 = icmp eq i64 %57, 0, !dbg !453
  br i1 %58, label %59, label %61, !dbg !454

; <label>:59:                                     ; preds = %50
  %60 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0)), !dbg !455
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %60), !dbg !457
  store i32 75, i32* %1, align 4, !dbg !458
  br label %71, !dbg !458

; <label>:61:                                     ; preds = %50
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !459
  %63 = call noalias i8* @g_locale_to_utf8(i8* %62, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !460
  store i8* %63, i8** %6, align 8, !dbg !461
  %64 = load i8*, i8** %6, align 8, !dbg !462
  %65 = icmp eq i8* %64, null, !dbg !464
  br i1 %65, label %66, label %68, !dbg !465

; <label>:66:                                     ; preds = %61
  %67 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0)), !dbg !466
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %67), !dbg !468
  store i32 75, i32* %1, align 4, !dbg !469
  br label %71, !dbg !469

; <label>:68:                                     ; preds = %61
  %69 = load i8*, i8** %6, align 8, !dbg !470
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %69), !dbg !471
  %70 = load i8*, i8** %6, align 8, !dbg !472
  call void @g_free(i8* %70), !dbg !473
  store i32 0, i32* %1, align 4, !dbg !474
  br label %71, !dbg !474

; <label>:71:                                     ; preds = %68, %66, %59, %48
  %72 = load i32, i32* %1, align 4, !dbg !475
  ret i32 %72, !dbg !475
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetSessionID() #0 !dbg !476 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !477, metadata !40), !dbg !478
  store i32 0, i32* %2, align 4, !dbg !478
  call void @llvm.dbg.declare(metadata i64* %3, metadata !479, metadata !40), !dbg !480
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !481, metadata !40), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %5, metadata !486, metadata !40), !dbg !488
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !489
  store i32 %6, i32* %2, align 4, !dbg !490
  %7 = load i32, i32* %2, align 4, !dbg !491
  %8 = icmp ne i32 %7, 0, !dbg !491
  br i1 %8, label %9, label %11, !dbg !493

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !494
  store i32 %10, i32* %1, align 4, !dbg !496
  br label %26, !dbg !496

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !497
  %13 = call i32 @VMGuestLib_GetSessionId(%struct._VMGuestLibHandle* %12, i64* %3), !dbg !498
  store i32 %13, i32* %5, align 4, !dbg !499
  %14 = load i32, i32* %5, align 4, !dbg !500
  %15 = icmp ne i32 %14, 0, !dbg !502
  br i1 %15, label %16, label %20, !dbg !503

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0)), !dbg !504
  %18 = load i32, i32* %5, align 4, !dbg !506
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !507
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !508
  store i32 75, i32* %2, align 4, !dbg !510
  br label %22, !dbg !511

; <label>:20:                                     ; preds = %11
  %21 = load i64, i64* %3, align 8, !dbg !512
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i64 %21), !dbg !514
  br label %22

; <label>:22:                                     ; preds = %20, %16
  %23 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !515
  %24 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %23), !dbg !516
  %25 = load i32, i32* %2, align 4, !dbg !517
  store i32 %25, i32* %1, align 4, !dbg !518
  br label %26, !dbg !518

; <label>:26:                                     ; preds = %22, %9
  %27 = load i32, i32* %1, align 4, !dbg !519
  ret i32 %27, !dbg !519
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetMemoryBallooned() #0 !dbg !520 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !521, metadata !40), !dbg !522
  store i32 0, i32* %2, align 4, !dbg !522
  call void @llvm.dbg.declare(metadata i32* %3, metadata !523, metadata !40), !dbg !524
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !525, metadata !40), !dbg !526
  call void @llvm.dbg.declare(metadata i32* %5, metadata !527, metadata !40), !dbg !528
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !529
  store i32 %6, i32* %2, align 4, !dbg !530
  %7 = load i32, i32* %2, align 4, !dbg !531
  %8 = icmp ne i32 %7, 0, !dbg !531
  br i1 %8, label %9, label %11, !dbg !533

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !534
  store i32 %10, i32* %1, align 4, !dbg !536
  br label %27, !dbg !536

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !537
  %13 = call i32 @VMGuestLib_GetMemBalloonedMB(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !538
  store i32 %13, i32* %5, align 4, !dbg !539
  %14 = load i32, i32* %5, align 4, !dbg !540
  %15 = icmp ne i32 %14, 0, !dbg !542
  br i1 %15, label %16, label %20, !dbg !543

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i32 0, i32 0)), !dbg !544
  %18 = load i32, i32* %5, align 4, !dbg !546
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !547
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !548
  store i32 75, i32* %2, align 4, !dbg !550
  br label %23, !dbg !551

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0)), !dbg !552
  %22 = load i32, i32* %3, align 4, !dbg !554
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !555
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !557
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !558
  %26 = load i32, i32* %2, align 4, !dbg !559
  store i32 %26, i32* %1, align 4, !dbg !560
  br label %27, !dbg !560

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !561
  ret i32 %28, !dbg !561
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetMemorySwapped() #0 !dbg !562 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !563, metadata !40), !dbg !564
  store i32 0, i32* %2, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata i32* %3, metadata !565, metadata !40), !dbg !566
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !567, metadata !40), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %5, metadata !569, metadata !40), !dbg !570
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !571
  store i32 %6, i32* %2, align 4, !dbg !572
  %7 = load i32, i32* %2, align 4, !dbg !573
  %8 = icmp ne i32 %7, 0, !dbg !573
  br i1 %8, label %9, label %11, !dbg !575

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !576
  store i32 %10, i32* %1, align 4, !dbg !578
  br label %27, !dbg !578

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !579
  %13 = call i32 @VMGuestLib_GetMemSwappedMB(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !580
  store i32 %13, i32* %5, align 4, !dbg !581
  %14 = load i32, i32* %5, align 4, !dbg !582
  %15 = icmp ne i32 %14, 0, !dbg !584
  br i1 %15, label %16, label %20, !dbg !585

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i32 0, i32 0)), !dbg !586
  %18 = load i32, i32* %5, align 4, !dbg !588
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !589
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !590
  store i32 75, i32* %2, align 4, !dbg !592
  br label %23, !dbg !593

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0)), !dbg !594
  %22 = load i32, i32* %3, align 4, !dbg !596
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !597
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !599
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !600
  %26 = load i32, i32* %2, align 4, !dbg !601
  store i32 %26, i32* %1, align 4, !dbg !602
  br label %27, !dbg !602

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !603
  ret i32 %28, !dbg !603
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetMemoryLimit() #0 !dbg !604 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !605, metadata !40), !dbg !606
  store i32 0, i32* %2, align 4, !dbg !606
  call void @llvm.dbg.declare(metadata i32* %3, metadata !607, metadata !40), !dbg !608
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !609, metadata !40), !dbg !610
  call void @llvm.dbg.declare(metadata i32* %5, metadata !611, metadata !40), !dbg !612
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !613
  store i32 %6, i32* %2, align 4, !dbg !614
  %7 = load i32, i32* %2, align 4, !dbg !615
  %8 = icmp ne i32 %7, 0, !dbg !615
  br i1 %8, label %9, label %11, !dbg !617

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !618
  store i32 %10, i32* %1, align 4, !dbg !620
  br label %27, !dbg !620

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !621
  %13 = call i32 @VMGuestLib_GetMemLimitMB(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !622
  store i32 %13, i32* %5, align 4, !dbg !623
  %14 = load i32, i32* %5, align 4, !dbg !624
  %15 = icmp ne i32 %14, 0, !dbg !626
  br i1 %15, label %16, label %20, !dbg !627

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i32 0, i32 0)), !dbg !628
  %18 = load i32, i32* %5, align 4, !dbg !630
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !631
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !632
  store i32 75, i32* %2, align 4, !dbg !634
  br label %23, !dbg !635

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0)), !dbg !636
  %22 = load i32, i32* %3, align 4, !dbg !638
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !639
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !641
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !642
  %26 = load i32, i32* %2, align 4, !dbg !643
  store i32 %26, i32* %1, align 4, !dbg !644
  br label %27, !dbg !644

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !645
  ret i32 %28, !dbg !645
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetMemoryReservation() #0 !dbg !646 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !647, metadata !40), !dbg !648
  store i32 0, i32* %2, align 4, !dbg !648
  call void @llvm.dbg.declare(metadata i32* %3, metadata !649, metadata !40), !dbg !650
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !651, metadata !40), !dbg !652
  call void @llvm.dbg.declare(metadata i32* %5, metadata !653, metadata !40), !dbg !654
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !655
  store i32 %6, i32* %2, align 4, !dbg !656
  %7 = load i32, i32* %2, align 4, !dbg !657
  %8 = icmp ne i32 %7, 0, !dbg !657
  br i1 %8, label %9, label %11, !dbg !659

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !660
  store i32 %10, i32* %1, align 4, !dbg !662
  br label %27, !dbg !662

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !663
  %13 = call i32 @VMGuestLib_GetMemReservationMB(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !664
  store i32 %13, i32* %5, align 4, !dbg !665
  %14 = load i32, i32* %5, align 4, !dbg !666
  %15 = icmp ne i32 %14, 0, !dbg !668
  br i1 %15, label %16, label %20, !dbg !669

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0)), !dbg !670
  %18 = load i32, i32* %5, align 4, !dbg !672
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !673
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !674
  store i32 75, i32* %2, align 4, !dbg !676
  br label %23, !dbg !677

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0)), !dbg !678
  %22 = load i32, i32* %3, align 4, !dbg !680
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !681
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !683
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !684
  %26 = load i32, i32* %2, align 4, !dbg !685
  store i32 %26, i32* %1, align 4, !dbg !686
  br label %27, !dbg !686

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !687
  ret i32 %28, !dbg !687
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetCpuReservation() #0 !dbg !688 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !689, metadata !40), !dbg !690
  store i32 0, i32* %2, align 4, !dbg !690
  call void @llvm.dbg.declare(metadata i32* %3, metadata !691, metadata !40), !dbg !692
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !693, metadata !40), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %5, metadata !695, metadata !40), !dbg !696
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !697
  store i32 %6, i32* %2, align 4, !dbg !698
  %7 = load i32, i32* %2, align 4, !dbg !699
  %8 = icmp ne i32 %7, 0, !dbg !699
  br i1 %8, label %9, label %11, !dbg !701

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !702
  store i32 %10, i32* %1, align 4, !dbg !704
  br label %27, !dbg !704

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !705
  %13 = call i32 @VMGuestLib_GetCpuReservationMHz(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !706
  store i32 %13, i32* %5, align 4, !dbg !707
  %14 = load i32, i32* %5, align 4, !dbg !708
  %15 = icmp ne i32 %14, 0, !dbg !710
  br i1 %15, label %16, label %20, !dbg !711

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0)), !dbg !712
  %18 = load i32, i32* %5, align 4, !dbg !714
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !715
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !716
  store i32 75, i32* %2, align 4, !dbg !718
  br label %23, !dbg !719

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0)), !dbg !720
  %22 = load i32, i32* %3, align 4, !dbg !722
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !723
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !725
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !726
  %26 = load i32, i32* %2, align 4, !dbg !727
  store i32 %26, i32* %1, align 4, !dbg !728
  br label %27, !dbg !728

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !729
  ret i32 %28, !dbg !729
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetCpuLimit() #0 !dbg !730 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !731, metadata !40), !dbg !732
  store i32 0, i32* %2, align 4, !dbg !732
  call void @llvm.dbg.declare(metadata i32* %3, metadata !733, metadata !40), !dbg !734
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !735, metadata !40), !dbg !736
  call void @llvm.dbg.declare(metadata i32* %5, metadata !737, metadata !40), !dbg !738
  %6 = call i32 @OpenHandle(%struct._VMGuestLibHandle** %4, i32* %5), !dbg !739
  store i32 %6, i32* %2, align 4, !dbg !740
  %7 = load i32, i32* %2, align 4, !dbg !741
  %8 = icmp ne i32 %7, 0, !dbg !741
  br i1 %8, label %9, label %11, !dbg !743

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !744
  store i32 %10, i32* %1, align 4, !dbg !746
  br label %27, !dbg !746

; <label>:11:                                     ; preds = %0
  %12 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !747
  %13 = call i32 @VMGuestLib_GetCpuLimitMHz(%struct._VMGuestLibHandle* %12, i32* %3), !dbg !748
  store i32 %13, i32* %5, align 4, !dbg !749
  %14 = load i32, i32* %5, align 4, !dbg !750
  %15 = icmp ne i32 %14, 0, !dbg !752
  br i1 %15, label %16, label %20, !dbg !753

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i32 0, i32 0)), !dbg !754
  %18 = load i32, i32* %5, align 4, !dbg !756
  %19 = call i8* @VMGuestLib_GetErrorText(i32 %18), !dbg !757
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %17, i8* %19), !dbg !758
  store i32 75, i32* %2, align 4, !dbg !760
  br label %23, !dbg !761

; <label>:20:                                     ; preds = %11
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0)), !dbg !762
  %22 = load i32, i32* %3, align 4, !dbg !764
  call void (i8*, ...) @g_print(i8* %21, i32 %22), !dbg !765
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !767
  %25 = call i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle* %24), !dbg !768
  %26 = load i32, i32* %2, align 4, !dbg !769
  store i32 %26, i32* %1, align 4, !dbg !770
  br label %27, !dbg !770

; <label>:27:                                     ; preds = %23, %9
  %28 = load i32, i32* %1, align 4, !dbg !771
  ret i32 %28, !dbg !771
}

; Function Attrs: nounwind uwtable
define internal i32 @StatProcessorSpeed() #0 !dbg !772 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.Backdoor_proto, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !773, metadata !40), !dbg !776
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %3, metadata !777, metadata !40), !dbg !778
  %4 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !779
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 2, !dbg !780
  %6 = bitcast %union.anon.2* %5 to %struct.anon.3*, !dbg !781
  %7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !782
  store i16 1, i16* %7, align 8, !dbg !783
  call void @Backdoor(%union.Backdoor_proto* %3), !dbg !784
  %8 = bitcast %union.Backdoor_proto* %3 to %struct.anon.14*, !dbg !785
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0, !dbg !786
  %10 = bitcast %union.anon.15* %9 to i32*, !dbg !787
  %11 = load i32, i32* %10, align 8, !dbg !787
  store i32 %11, i32* %2, align 4, !dbg !788
  %12 = load i32, i32* %2, align 4, !dbg !789
  %13 = icmp sle i32 %12, 0, !dbg !791
  br i1 %13, label %14, label %16, !dbg !792

; <label>:14:                                     ; preds = %0
  %15 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i32 0, i32 0)), !dbg !793
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %15), !dbg !795
  store i32 75, i32* %1, align 4, !dbg !796
  br label %19, !dbg !796

; <label>:16:                                     ; preds = %0
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0)), !dbg !797
  %18 = load i32, i32* %2, align 4, !dbg !798
  call void (i8*, ...) @g_print(i8* %17, i32 %18), !dbg !799
  store i32 0, i32* %1, align 4, !dbg !801
  br label %19, !dbg !801

; <label>:19:                                     ; preds = %16, %14
  %20 = load i32, i32* %1, align 4, !dbg !802
  ret i32 %20, !dbg !802
}

; Function Attrs: nounwind uwtable
define internal i32 @StatGetRaw(i8*, i8*, i8*) #0 !dbg !803 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !808, metadata !40), !dbg !809
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !810, metadata !40), !dbg !811
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !812, metadata !40), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %7, metadata !814, metadata !40), !dbg !815
  store i32 0, i32* %7, align 4, !dbg !815
  call void @llvm.dbg.declare(metadata i32* %8, metadata !816, metadata !40), !dbg !817
  call void @llvm.dbg.declare(metadata i8** %9, metadata !818, metadata !40), !dbg !819
  store i8* null, i8** %9, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata i64* %10, metadata !820, metadata !40), !dbg !821
  store i64 0, i64* %10, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i8** %11, metadata !822, metadata !40), !dbg !823
  %12 = load i8*, i8** %5, align 8, !dbg !824
  %13 = load i8*, i8** %6, align 8, !dbg !825
  %14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* %12, i8* %13), !dbg !826
  store i8* %14, i8** %11, align 8, !dbg !823
  %15 = load i8*, i8** %4, align 8, !dbg !827
  %16 = load i8*, i8** %11, align 8, !dbg !828
  %17 = call i32 @VMGuestLib_StatGet(i8* %15, i8* %16, i8** %9, i64* %10), !dbg !829
  store i32 %17, i32* %8, align 4, !dbg !830
  %18 = load i32, i32* %8, align 4, !dbg !831
  %19 = icmp ne i32 %18, 0, !dbg !833
  br i1 %19, label %20, label %24, !dbg !834

; <label>:20:                                     ; preds = %3
  %21 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i32 0, i32 0)), !dbg !835
  %22 = load i32, i32* %8, align 4, !dbg !837
  %23 = call i8* @VMGuestLib_GetErrorText(i32 %22), !dbg !838
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %21, i8* %23), !dbg !839
  store i32 75, i32* %7, align 4, !dbg !841
  br label %28, !dbg !842

; <label>:24:                                     ; preds = %3
  %25 = load i64, i64* %10, align 8, !dbg !843
  %26 = trunc i64 %25 to i32, !dbg !845
  %27 = load i8*, i8** %9, align 8, !dbg !846
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %26, i8* %27), !dbg !847
  br label %28

; <label>:28:                                     ; preds = %24, %20
  %29 = load i8*, i8** %9, align 8, !dbg !848
  %30 = load i64, i64* %10, align 8, !dbg !849
  call void @VMGuestLib_StatFree(i8* %29, i64 %30), !dbg !850
  %31 = load i8*, i8** %11, align 8, !dbg !851
  call void @g_free(i8* %31), !dbg !852
  %32 = load i32, i32* %7, align 4, !dbg !853
  ret i32 %32, !dbg !854
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #3

declare i8* @VMTools_GetString(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @Stat_Help(i8*, i8*) #0 !dbg !855 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !858, metadata !40), !dbg !859
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !860, metadata !40), !dbg !861
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([869 x i8], [869 x i8]* @.str.13, i32 0, i32 0)), !dbg !862
  %6 = load i8*, i8** %4, align 8, !dbg !863
  %7 = load i8*, i8** %3, align 8, !dbg !864
  %8 = load i8*, i8** %4, align 8, !dbg !865
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !866
  ret void, !dbg !868
}

declare void @g_print(i8*, ...) #3

declare void @Backdoor(%union.Backdoor_proto*) #3

declare void @ToolsCmd_PrintErr(i8*, ...) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

declare noalias i8* @g_locale_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @OpenHandle(%struct._VMGuestLibHandle**, i32*) #0 !dbg !869 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle**, align 8
  %5 = alloca i32*, align 8
  store %struct._VMGuestLibHandle** %0, %struct._VMGuestLibHandle*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle*** %4, metadata !874, metadata !40), !dbg !875
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !876, metadata !40), !dbg !877
  %6 = load %struct._VMGuestLibHandle**, %struct._VMGuestLibHandle*** %4, align 8, !dbg !878
  %7 = call i32 @VMGuestLib_OpenHandle(%struct._VMGuestLibHandle** %6), !dbg !879
  %8 = load i32*, i32** %5, align 8, !dbg !880
  store i32 %7, i32* %8, align 4, !dbg !881
  %9 = load i32*, i32** %5, align 8, !dbg !882
  %10 = load i32, i32* %9, align 4, !dbg !884
  %11 = icmp ne i32 %10, 0, !dbg !885
  br i1 %11, label %12, label %17, !dbg !886

; <label>:12:                                     ; preds = %2
  %13 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0)), !dbg !887
  %14 = load i32*, i32** %5, align 8, !dbg !889
  %15 = load i32, i32* %14, align 4, !dbg !890
  %16 = call i8* @VMGuestLib_GetErrorText(i32 %15), !dbg !891
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %13, i8* %16), !dbg !892
  store i32 69, i32* %3, align 4, !dbg !894
  br label %31, !dbg !894

; <label>:17:                                     ; preds = %2
  %18 = load %struct._VMGuestLibHandle**, %struct._VMGuestLibHandle*** %4, align 8, !dbg !895
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %18, align 8, !dbg !896
  %20 = call i32 @VMGuestLib_UpdateInfo(%struct._VMGuestLibHandle* %19), !dbg !897
  %21 = load i32*, i32** %5, align 8, !dbg !898
  store i32 %20, i32* %21, align 4, !dbg !899
  %22 = load i32*, i32** %5, align 8, !dbg !900
  %23 = load i32, i32* %22, align 4, !dbg !902
  %24 = icmp ne i32 %23, 0, !dbg !903
  br i1 %24, label %25, label %30, !dbg !904

; <label>:25:                                     ; preds = %17
  %26 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0)), !dbg !905
  %27 = load i32*, i32** %5, align 8, !dbg !907
  %28 = load i32, i32* %27, align 4, !dbg !908
  %29 = call i8* @VMGuestLib_GetErrorText(i32 %28), !dbg !909
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %26, i8* %29), !dbg !910
  store i32 75, i32* %3, align 4, !dbg !912
  br label %31, !dbg !912

; <label>:30:                                     ; preds = %17
  store i32 0, i32* %3, align 4, !dbg !913
  br label %31, !dbg !913

; <label>:31:                                     ; preds = %30, %25, %12
  %32 = load i32, i32* %3, align 4, !dbg !914
  ret i32 %32, !dbg !914
}

declare i32 @VMGuestLib_GetSessionId(%struct._VMGuestLibHandle*, i64*) #3

declare i8* @VMGuestLib_GetErrorText(i32) #3

declare i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle*) #3

declare i32 @VMGuestLib_OpenHandle(%struct._VMGuestLibHandle**) #3

declare i32 @VMGuestLib_UpdateInfo(%struct._VMGuestLibHandle*) #3

declare i32 @VMGuestLib_GetMemBalloonedMB(%struct._VMGuestLibHandle*, i32*) #3

declare i32 @VMGuestLib_GetMemSwappedMB(%struct._VMGuestLibHandle*, i32*) #3

declare i32 @VMGuestLib_GetMemLimitMB(%struct._VMGuestLibHandle*, i32*) #3

declare i32 @VMGuestLib_GetMemReservationMB(%struct._VMGuestLibHandle*, i32*) #3

declare i32 @VMGuestLib_GetCpuReservationMHz(%struct._VMGuestLibHandle*, i32*) #3

declare i32 @VMGuestLib_GetCpuLimitMHz(%struct._VMGuestLibHandle*, i32*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i32 @VMGuestLib_StatGet(i8*, i8*, i8**, i64*) #3

declare void @VMGuestLib_StatFree(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-stat.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmGuestLib.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !DIEnumerator(name: "VMGUESTLIB_ERROR_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "VMGUESTLIB_ERROR_OTHER", value: 1)
!8 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_RUNNING_IN_VM", value: 2)
!9 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_ENABLED", value: 3)
!10 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_AVAILABLE", value: 4)
!11 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NO_INFO", value: 5)
!12 = !DIEnumerator(name: "VMGUESTLIB_ERROR_MEMORY", value: 6)
!13 = !DIEnumerator(name: "VMGUESTLIB_ERROR_BUFFER_TOO_SMALL", value: 7)
!14 = !DIEnumerator(name: "VMGUESTLIB_ERROR_INVALID_HANDLE", value: 8)
!15 = !DIEnumerator(name: "VMGUESTLIB_ERROR_INVALID_ARG", value: 9)
!16 = !DIEnumerator(name: "VMGUESTLIB_ERROR_UNSUPPORTED_VERSION", value: 10)
!17 = !{!18, !23, !24}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !19, line: 171, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 55, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "Stat_Command", scope: !29, file: !29, line: 545, type: !30, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!29 = !DIFile(filename: "toolboxcmd-stat.c", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!30 = !DISubroutineType(types: !31)
!31 = !{!24, !32, !24, !35}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !36, line: 50, baseType: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !36, line: 49, baseType: !24)
!38 = !{}
!39 = !DILocalVariable(name: "argv", arg: 1, scope: !28, file: !29, line: 545, type: !32)
!40 = !DIExpression()
!41 = !DILocation(line: 545, column: 21, scope: !28)
!42 = !DILocalVariable(name: "argc", arg: 2, scope: !28, file: !29, line: 546, type: !24)
!43 = !DILocation(line: 546, column: 18, scope: !28)
!44 = !DILocalVariable(name: "quiet", arg: 3, scope: !28, file: !29, line: 547, type: !35)
!45 = !DILocation(line: 547, column: 23, scope: !28)
!46 = !DILocation(line: 549, column: 20, scope: !47)
!47 = distinct !DILexicalBlock(scope: !28, file: !29, line: 549, column: 8)
!48 = !DILocation(line: 549, column: 15, scope: !47)
!49 = !DILocation(line: 549, column: 8, scope: !47)
!50 = !DILocation(line: 549, column: 41, scope: !47)
!51 = !DILocation(line: 549, column: 8, scope: !28)
!52 = !DILocation(line: 550, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !47, file: !29, line: 549, column: 47)
!54 = !DILocation(line: 550, column: 7, scope: !53)
!55 = !DILocation(line: 551, column: 27, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !29, line: 551, column: 15)
!57 = !DILocation(line: 551, column: 22, scope: !56)
!58 = !DILocation(line: 551, column: 15, scope: !56)
!59 = !DILocation(line: 551, column: 49, scope: !56)
!60 = !DILocation(line: 551, column: 15, scope: !47)
!61 = !DILocation(line: 552, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !29, line: 551, column: 55)
!63 = !DILocation(line: 552, column: 7, scope: !62)
!64 = !DILocation(line: 553, column: 27, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !29, line: 553, column: 15)
!66 = !DILocation(line: 553, column: 22, scope: !65)
!67 = !DILocation(line: 553, column: 15, scope: !65)
!68 = !DILocation(line: 553, column: 47, scope: !65)
!69 = !DILocation(line: 553, column: 15, scope: !56)
!70 = !DILocation(line: 554, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !29, line: 553, column: 53)
!72 = !DILocation(line: 554, column: 7, scope: !71)
!73 = !DILocation(line: 555, column: 27, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !29, line: 555, column: 15)
!75 = !DILocation(line: 555, column: 22, scope: !74)
!76 = !DILocation(line: 555, column: 15, scope: !74)
!77 = !DILocation(line: 555, column: 44, scope: !74)
!78 = !DILocation(line: 555, column: 15, scope: !65)
!79 = !DILocation(line: 556, column: 14, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !29, line: 555, column: 50)
!81 = !DILocation(line: 556, column: 7, scope: !80)
!82 = !DILocation(line: 557, column: 27, scope: !83)
!83 = distinct !DILexicalBlock(scope: !74, file: !29, line: 557, column: 15)
!84 = !DILocation(line: 557, column: 22, scope: !83)
!85 = !DILocation(line: 557, column: 15, scope: !83)
!86 = !DILocation(line: 557, column: 48, scope: !83)
!87 = !DILocation(line: 557, column: 15, scope: !74)
!88 = !DILocation(line: 558, column: 14, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !29, line: 557, column: 54)
!90 = !DILocation(line: 558, column: 7, scope: !89)
!91 = !DILocation(line: 559, column: 27, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !29, line: 559, column: 15)
!93 = !DILocation(line: 559, column: 22, scope: !92)
!94 = !DILocation(line: 559, column: 15, scope: !92)
!95 = !DILocation(line: 559, column: 46, scope: !92)
!96 = !DILocation(line: 559, column: 15, scope: !83)
!97 = !DILocation(line: 560, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !29, line: 559, column: 52)
!99 = !DILocation(line: 560, column: 7, scope: !98)
!100 = !DILocation(line: 561, column: 27, scope: !101)
!101 = distinct !DILexicalBlock(scope: !92, file: !29, line: 561, column: 15)
!102 = !DILocation(line: 561, column: 22, scope: !101)
!103 = !DILocation(line: 561, column: 15, scope: !101)
!104 = !DILocation(line: 561, column: 46, scope: !101)
!105 = !DILocation(line: 561, column: 15, scope: !92)
!106 = !DILocation(line: 562, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !29, line: 561, column: 52)
!108 = !DILocation(line: 562, column: 7, scope: !107)
!109 = !DILocation(line: 563, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !29, line: 563, column: 15)
!111 = !DILocation(line: 563, column: 22, scope: !110)
!112 = !DILocation(line: 563, column: 15, scope: !110)
!113 = !DILocation(line: 563, column: 48, scope: !110)
!114 = !DILocation(line: 563, column: 15, scope: !101)
!115 = !DILocation(line: 564, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !29, line: 563, column: 54)
!117 = !DILocation(line: 564, column: 7, scope: !116)
!118 = !DILocation(line: 565, column: 27, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !29, line: 565, column: 15)
!120 = !DILocation(line: 565, column: 22, scope: !119)
!121 = !DILocation(line: 565, column: 15, scope: !119)
!122 = !DILocation(line: 565, column: 45, scope: !119)
!123 = !DILocation(line: 565, column: 15, scope: !110)
!124 = !DILocation(line: 566, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !29, line: 565, column: 51)
!126 = !DILocation(line: 566, column: 7, scope: !125)
!127 = !DILocation(line: 567, column: 27, scope: !128)
!128 = distinct !DILexicalBlock(scope: !119, file: !29, line: 567, column: 15)
!129 = !DILocation(line: 567, column: 22, scope: !128)
!130 = !DILocation(line: 567, column: 15, scope: !128)
!131 = !DILocation(line: 567, column: 43, scope: !128)
!132 = !DILocation(line: 567, column: 15, scope: !119)
!133 = !DILocation(line: 568, column: 26, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !29, line: 567, column: 49)
!135 = !DILocation(line: 568, column: 33, scope: !134)
!136 = !DILocation(line: 568, column: 39, scope: !134)
!137 = !DILocation(line: 568, column: 37, scope: !134)
!138 = !DILocation(line: 568, column: 25, scope: !134)
!139 = !DILocation(line: 568, column: 52, scope: !140)
!140 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 1)
!141 = !DILocation(line: 568, column: 59, scope: !140)
!142 = !DILocation(line: 568, column: 47, scope: !140)
!143 = !DILocation(line: 568, column: 25, scope: !140)
!144 = !DILocation(line: 568, column: 25, scope: !145)
!145 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 2)
!146 = !DILocation(line: 568, column: 25, scope: !147)
!147 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 3)
!148 = !DILocation(line: 569, column: 26, scope: !134)
!149 = !DILocation(line: 569, column: 33, scope: !134)
!150 = !DILocation(line: 569, column: 39, scope: !134)
!151 = !DILocation(line: 569, column: 37, scope: !134)
!152 = !DILocation(line: 569, column: 25, scope: !134)
!153 = !DILocation(line: 569, column: 52, scope: !140)
!154 = !DILocation(line: 569, column: 59, scope: !140)
!155 = !DILocation(line: 569, column: 47, scope: !140)
!156 = !DILocation(line: 569, column: 25, scope: !140)
!157 = !DILocation(line: 569, column: 25, scope: !145)
!158 = !DILocation(line: 569, column: 25, scope: !147)
!159 = !DILocation(line: 570, column: 26, scope: !134)
!160 = !DILocation(line: 570, column: 33, scope: !134)
!161 = !DILocation(line: 570, column: 39, scope: !134)
!162 = !DILocation(line: 570, column: 37, scope: !134)
!163 = !DILocation(line: 570, column: 25, scope: !134)
!164 = !DILocation(line: 570, column: 52, scope: !140)
!165 = !DILocation(line: 570, column: 59, scope: !140)
!166 = !DILocation(line: 570, column: 47, scope: !140)
!167 = !DILocation(line: 570, column: 25, scope: !140)
!168 = !DILocation(line: 570, column: 25, scope: !145)
!169 = !DILocation(line: 570, column: 25, scope: !147)
!170 = !DILocation(line: 568, column: 14, scope: !171)
!171 = !DILexicalBlockFile(scope: !134, file: !29, discriminator: 4)
!172 = !DILocation(line: 568, column: 7, scope: !171)
!173 = !DILocation(line: 572, column: 35, scope: !174)
!174 = distinct !DILexicalBlock(scope: !128, file: !29, line: 571, column: 11)
!175 = !DILocation(line: 573, column: 35, scope: !174)
!176 = !DILocation(line: 574, column: 40, scope: !174)
!177 = !DILocation(line: 574, column: 35, scope: !174)
!178 = !DILocation(line: 572, column: 7, scope: !174)
!179 = !DILocation(line: 575, column: 7, scope: !174)
!180 = !DILocation(line: 577, column: 1, scope: !28)
!181 = distinct !DISubprogram(name: "StatHostTime", scope: !29, file: !29, line: 127, type: !182, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!182 = !DISubroutineType(types: !183)
!183 = !{!24}
!184 = !DILocalVariable(name: "hostSecs", scope: !181, file: !29, line: 129, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !19, line: 172, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !187, line: 197, baseType: !188)
!187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!188 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!189 = !DILocation(line: 129, column: 10, scope: !181)
!190 = !DILocalVariable(name: "hostUsecs", scope: !181, file: !29, line: 130, type: !185)
!191 = !DILocation(line: 130, column: 10, scope: !181)
!192 = !DILocalVariable(name: "sec", scope: !181, file: !29, line: 131, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !194, line: 75, baseType: !195)
!194 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !196, line: 139, baseType: !188)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!197 = !DILocation(line: 131, column: 11, scope: !181)
!198 = !DILocalVariable(name: "buf", scope: !181, file: !29, line: 132, type: !199)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, align: 8, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 256)
!202 = !DILocation(line: 132, column: 9, scope: !181)
!203 = !DILocalVariable(name: "timeUtf8", scope: !181, file: !29, line: 133, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !36, line: 46, baseType: !34)
!206 = !DILocation(line: 133, column: 11, scope: !181)
!207 = !DILocalVariable(name: "bp", scope: !181, file: !29, line: 134, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !209, line: 102, baseType: !210)
!209 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !209, line: 85, size: 384, align: 64, elements: !211)
!211 = !{!212, !299}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !210, file: !209, line: 93, baseType: !213, size: 384, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !209, line: 86, size: 384, align: 64, elements: !214)
!214 = !{!215, !236, !239, !254, !269, !284}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !213, file: !209, line: 87, baseType: !216, size: 64, align: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !209, line: 87, size: 64, align: 64, elements: !217)
!217 = !{!218, !226, !230, !235}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !216, file: !209, line: 87, baseType: !219, size: 32, align: 16)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !209, line: 87, size: 32, align: 16, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !219, file: !209, line: 87, baseType: !222, size: 16, align: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !19, line: 175, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 49, baseType: !224)
!224 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !219, file: !209, line: 87, baseType: !222, size: 16, align: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !216, file: !209, line: 87, baseType: !227, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !19, line: 173, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 51, baseType: !229)
!229 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !216, file: !209, line: 87, baseType: !231, size: 64, align: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !209, line: 87, size: 64, align: 32, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !231, file: !209, line: 87, baseType: !227, size: 32, align: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !231, file: !209, line: 87, baseType: !227, size: 32, align: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !216, file: !209, line: 87, baseType: !18, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !209, line: 88, baseType: !237, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !238, line: 216, baseType: !22)
!238 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1643")
!239 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !213, file: !209, line: 89, baseType: !240, size: 64, align: 64, offset: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !209, line: 89, size: 64, align: 64, elements: !241)
!241 = !{!242, !247, !248, !253}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !240, file: !209, line: 89, baseType: !243, size: 32, align: 16)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !209, line: 89, size: 32, align: 16, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !243, file: !209, line: 89, baseType: !222, size: 16, align: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !243, file: !209, line: 89, baseType: !222, size: 16, align: 16, offset: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !240, file: !209, line: 89, baseType: !227, size: 32, align: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !240, file: !209, line: 89, baseType: !249, size: 64, align: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !209, line: 89, size: 64, align: 32, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !249, file: !209, line: 89, baseType: !227, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !249, file: !209, line: 89, baseType: !227, size: 32, align: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !240, file: !209, line: 89, baseType: !18, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !213, file: !209, line: 90, baseType: !255, size: 64, align: 64, offset: 192)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !209, line: 90, size: 64, align: 64, elements: !256)
!256 = !{!257, !262, !263, !268}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !255, file: !209, line: 90, baseType: !258, size: 32, align: 16)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !209, line: 90, size: 32, align: 16, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !258, file: !209, line: 90, baseType: !222, size: 16, align: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !258, file: !209, line: 90, baseType: !222, size: 16, align: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !255, file: !209, line: 90, baseType: !227, size: 32, align: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !255, file: !209, line: 90, baseType: !264, size: 64, align: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !209, line: 90, size: 64, align: 32, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !264, file: !209, line: 90, baseType: !227, size: 32, align: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !264, file: !209, line: 90, baseType: !227, size: 32, align: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !255, file: !209, line: 90, baseType: !18, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !213, file: !209, line: 91, baseType: !270, size: 64, align: 64, offset: 256)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !209, line: 91, size: 64, align: 64, elements: !271)
!271 = !{!272, !277, !278, !283}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !270, file: !209, line: 91, baseType: !273, size: 32, align: 16)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !209, line: 91, size: 32, align: 16, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !273, file: !209, line: 91, baseType: !222, size: 16, align: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !273, file: !209, line: 91, baseType: !222, size: 16, align: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !270, file: !209, line: 91, baseType: !227, size: 32, align: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !270, file: !209, line: 91, baseType: !279, size: 64, align: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !209, line: 91, size: 64, align: 32, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !279, file: !209, line: 91, baseType: !227, size: 32, align: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !279, file: !209, line: 91, baseType: !227, size: 32, align: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !270, file: !209, line: 91, baseType: !18, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !213, file: !209, line: 92, baseType: !285, size: 64, align: 64, offset: 320)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !209, line: 92, size: 64, align: 64, elements: !286)
!286 = !{!287, !292, !293, !298}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !285, file: !209, line: 92, baseType: !288, size: 32, align: 16)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !209, line: 92, size: 32, align: 16, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !288, file: !209, line: 92, baseType: !222, size: 16, align: 16)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !288, file: !209, line: 92, baseType: !222, size: 16, align: 16, offset: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !285, file: !209, line: 92, baseType: !227, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !285, file: !209, line: 92, baseType: !294, size: 64, align: 32)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !209, line: 92, size: 64, align: 32, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !294, file: !209, line: 92, baseType: !227, size: 32, align: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !294, file: !209, line: 92, baseType: !227, size: 32, align: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !285, file: !209, line: 92, baseType: !18, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !210, file: !209, line: 101, baseType: !300, size: 384, align: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !209, line: 94, size: 384, align: 64, elements: !301)
!301 = !{!302, !317, !332, !347, !362, !377}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !300, file: !209, line: 95, baseType: !303, size: 64, align: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 95, size: 64, align: 64, elements: !304)
!304 = !{!305, !310, !311, !316}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !303, file: !209, line: 95, baseType: !306, size: 32, align: 16)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !209, line: 95, size: 32, align: 16, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !306, file: !209, line: 95, baseType: !222, size: 16, align: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !306, file: !209, line: 95, baseType: !222, size: 16, align: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !303, file: !209, line: 95, baseType: !227, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !303, file: !209, line: 95, baseType: !312, size: 64, align: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !209, line: 95, size: 64, align: 32, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !312, file: !209, line: 95, baseType: !227, size: 32, align: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !312, file: !209, line: 95, baseType: !227, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !303, file: !209, line: 95, baseType: !18, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !300, file: !209, line: 96, baseType: !318, size: 64, align: 64, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 96, size: 64, align: 64, elements: !319)
!319 = !{!320, !325, !326, !331}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !318, file: !209, line: 96, baseType: !321, size: 32, align: 16)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !209, line: 96, size: 32, align: 16, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !321, file: !209, line: 96, baseType: !222, size: 16, align: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !321, file: !209, line: 96, baseType: !222, size: 16, align: 16, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !318, file: !209, line: 96, baseType: !227, size: 32, align: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !318, file: !209, line: 96, baseType: !327, size: 64, align: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !209, line: 96, size: 64, align: 32, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !327, file: !209, line: 96, baseType: !227, size: 32, align: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !327, file: !209, line: 96, baseType: !227, size: 32, align: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !318, file: !209, line: 96, baseType: !18, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !300, file: !209, line: 97, baseType: !333, size: 64, align: 64, offset: 128)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 97, size: 64, align: 64, elements: !334)
!334 = !{!335, !340, !341, !346}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !333, file: !209, line: 97, baseType: !336, size: 32, align: 16)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !209, line: 97, size: 32, align: 16, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !336, file: !209, line: 97, baseType: !222, size: 16, align: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !336, file: !209, line: 97, baseType: !222, size: 16, align: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !333, file: !209, line: 97, baseType: !227, size: 32, align: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !333, file: !209, line: 97, baseType: !342, size: 64, align: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !209, line: 97, size: 64, align: 32, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !342, file: !209, line: 97, baseType: !227, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !342, file: !209, line: 97, baseType: !227, size: 32, align: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !333, file: !209, line: 97, baseType: !18, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !300, file: !209, line: 98, baseType: !348, size: 64, align: 64, offset: 192)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 98, size: 64, align: 64, elements: !349)
!349 = !{!350, !355, !356, !361}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !348, file: !209, line: 98, baseType: !351, size: 32, align: 16)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !209, line: 98, size: 32, align: 16, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !351, file: !209, line: 98, baseType: !222, size: 16, align: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !351, file: !209, line: 98, baseType: !222, size: 16, align: 16, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !348, file: !209, line: 98, baseType: !227, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !348, file: !209, line: 98, baseType: !357, size: 64, align: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !209, line: 98, size: 64, align: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !357, file: !209, line: 98, baseType: !227, size: 32, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !357, file: !209, line: 98, baseType: !227, size: 32, align: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !348, file: !209, line: 98, baseType: !18, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !300, file: !209, line: 99, baseType: !363, size: 64, align: 64, offset: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 99, size: 64, align: 64, elements: !364)
!364 = !{!365, !370, !371, !376}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !363, file: !209, line: 99, baseType: !366, size: 32, align: 16)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !209, line: 99, size: 32, align: 16, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !366, file: !209, line: 99, baseType: !222, size: 16, align: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !366, file: !209, line: 99, baseType: !222, size: 16, align: 16, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !363, file: !209, line: 99, baseType: !227, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !363, file: !209, line: 99, baseType: !372, size: 64, align: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !209, line: 99, size: 64, align: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !372, file: !209, line: 99, baseType: !227, size: 32, align: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !372, file: !209, line: 99, baseType: !227, size: 32, align: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !363, file: !209, line: 99, baseType: !18, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !300, file: !209, line: 100, baseType: !378, size: 64, align: 64, offset: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !209, line: 100, size: 64, align: 64, elements: !379)
!379 = !{!380, !385, !386, !391}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !378, file: !209, line: 100, baseType: !381, size: 32, align: 16)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !209, line: 100, size: 32, align: 16, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !381, file: !209, line: 100, baseType: !222, size: 16, align: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !381, file: !209, line: 100, baseType: !222, size: 16, align: 16, offset: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !378, file: !209, line: 100, baseType: !227, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !378, file: !209, line: 100, baseType: !387, size: 64, align: 32)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !209, line: 100, size: 64, align: 32, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !387, file: !209, line: 100, baseType: !227, size: 32, align: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !387, file: !209, line: 100, baseType: !227, size: 32, align: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !378, file: !209, line: 100, baseType: !18, size: 64, align: 64)
!392 = !DILocation(line: 134, column: 19, scope: !181)
!393 = !DILocation(line: 136, column: 7, scope: !181)
!394 = !DILocation(line: 136, column: 10, scope: !181)
!395 = !DILocation(line: 136, column: 13, scope: !181)
!396 = !DILocation(line: 136, column: 19, scope: !181)
!397 = !DILocation(line: 136, column: 23, scope: !181)
!398 = !DILocation(line: 137, column: 4, scope: !181)
!399 = !DILocation(line: 138, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !181, file: !29, line: 138, column: 8)
!401 = !DILocation(line: 138, column: 15, scope: !400)
!402 = !DILocation(line: 138, column: 18, scope: !400)
!403 = !DILocation(line: 138, column: 23, scope: !400)
!404 = !DILocation(line: 138, column: 8, scope: !181)
!405 = !DILocation(line: 139, column: 30, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !29, line: 138, column: 38)
!407 = !DILocation(line: 139, column: 34, scope: !406)
!408 = !DILocation(line: 139, column: 37, scope: !406)
!409 = !DILocation(line: 139, column: 19, scope: !406)
!410 = !DILocation(line: 139, column: 42, scope: !406)
!411 = !DILocation(line: 139, column: 54, scope: !406)
!412 = !DILocation(line: 139, column: 58, scope: !406)
!413 = !DILocation(line: 139, column: 61, scope: !406)
!414 = !DILocation(line: 139, column: 51, scope: !406)
!415 = !DILocation(line: 139, column: 49, scope: !406)
!416 = !DILocation(line: 139, column: 16, scope: !406)
!417 = !DILocation(line: 140, column: 4, scope: !406)
!418 = !DILocation(line: 142, column: 10, scope: !419)
!419 = distinct !DILexicalBlock(scope: !400, file: !29, line: 140, column: 11)
!420 = !DILocation(line: 142, column: 13, scope: !419)
!421 = !DILocation(line: 142, column: 16, scope: !419)
!422 = !DILocation(line: 142, column: 22, scope: !419)
!423 = !DILocation(line: 142, column: 26, scope: !419)
!424 = !DILocation(line: 143, column: 7, scope: !419)
!425 = !DILocation(line: 144, column: 21, scope: !419)
!426 = !DILocation(line: 144, column: 25, scope: !419)
!427 = !DILocation(line: 144, column: 28, scope: !419)
!428 = !DILocation(line: 144, column: 18, scope: !419)
!429 = !DILocation(line: 144, column: 16, scope: !419)
!430 = !DILocation(line: 146, column: 19, scope: !181)
!431 = !DILocation(line: 146, column: 23, scope: !181)
!432 = !DILocation(line: 146, column: 26, scope: !181)
!433 = !DILocation(line: 146, column: 16, scope: !181)
!434 = !DILocation(line: 146, column: 14, scope: !181)
!435 = !DILocation(line: 148, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !181, file: !29, line: 148, column: 8)
!437 = !DILocation(line: 148, column: 17, scope: !436)
!438 = !DILocation(line: 148, column: 8, scope: !181)
!439 = !DILocation(line: 150, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !29, line: 148, column: 23)
!441 = !DILocation(line: 149, column: 7, scope: !440)
!442 = !DILocation(line: 151, column: 7, scope: !440)
!443 = !DILocation(line: 154, column: 10, scope: !181)
!444 = !DILocation(line: 154, column: 22, scope: !181)
!445 = !DILocation(line: 154, column: 32, scope: !181)
!446 = !DILocation(line: 154, column: 19, scope: !181)
!447 = !DILocation(line: 154, column: 8, scope: !181)
!448 = !DILocation(line: 155, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !181, file: !29, line: 155, column: 8)
!450 = !DILocation(line: 155, column: 55, scope: !449)
!451 = !DILocation(line: 155, column: 8, scope: !452)
!452 = !DILexicalBlockFile(scope: !449, file: !29, discriminator: 1)
!453 = !DILocation(line: 155, column: 72, scope: !449)
!454 = !DILocation(line: 155, column: 8, scope: !181)
!455 = !DILocation(line: 157, column: 25, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !29, line: 155, column: 78)
!457 = !DILocation(line: 156, column: 7, scope: !456)
!458 = !DILocation(line: 158, column: 7, scope: !456)
!459 = !DILocation(line: 161, column: 32, scope: !181)
!460 = !DILocation(line: 161, column: 15, scope: !181)
!461 = !DILocation(line: 161, column: 13, scope: !181)
!462 = !DILocation(line: 162, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !181, file: !29, line: 162, column: 8)
!464 = !DILocation(line: 162, column: 17, scope: !463)
!465 = !DILocation(line: 162, column: 8, scope: !181)
!466 = !DILocation(line: 164, column: 25, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !29, line: 162, column: 25)
!468 = !DILocation(line: 163, column: 7, scope: !467)
!469 = !DILocation(line: 165, column: 7, scope: !467)
!470 = !DILocation(line: 168, column: 20, scope: !181)
!471 = !DILocation(line: 168, column: 4, scope: !181)
!472 = !DILocation(line: 169, column: 11, scope: !181)
!473 = !DILocation(line: 169, column: 4, scope: !181)
!474 = !DILocation(line: 170, column: 4, scope: !181)
!475 = !DILocation(line: 171, column: 1, scope: !181)
!476 = distinct !DISubprogram(name: "StatGetSessionID", scope: !29, file: !29, line: 193, type: !182, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!477 = !DILocalVariable(name: "exitStatus", scope: !476, file: !29, line: 195, type: !24)
!478 = !DILocation(line: 195, column: 8, scope: !476)
!479 = !DILocalVariable(name: "session", scope: !476, file: !29, line: 196, type: !18)
!480 = !DILocation(line: 196, column: 11, scope: !476)
!481 = !DILocalVariable(name: "glHandle", scope: !476, file: !29, line: 197, type: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibHandle", file: !4, line: 74, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_VMGuestLibHandle", file: !4, line: 73, flags: DIFlagFwdDecl)
!485 = !DILocation(line: 197, column: 21, scope: !476)
!486 = !DILocalVariable(name: "glError", scope: !476, file: !29, line: 198, type: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibError", file: !4, line: 55, baseType: !3)
!488 = !DILocation(line: 198, column: 20, scope: !476)
!489 = !DILocation(line: 200, column: 17, scope: !476)
!490 = !DILocation(line: 200, column: 15, scope: !476)
!491 = !DILocation(line: 201, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !476, file: !29, line: 201, column: 8)
!493 = !DILocation(line: 201, column: 8, scope: !476)
!494 = !DILocation(line: 202, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !29, line: 201, column: 20)
!496 = !DILocation(line: 202, column: 7, scope: !495)
!497 = !DILocation(line: 204, column: 38, scope: !476)
!498 = !DILocation(line: 204, column: 14, scope: !476)
!499 = !DILocation(line: 204, column: 12, scope: !476)
!500 = !DILocation(line: 205, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !476, file: !29, line: 205, column: 8)
!502 = !DILocation(line: 205, column: 16, scope: !501)
!503 = !DILocation(line: 205, column: 8, scope: !476)
!504 = !DILocation(line: 206, column: 25, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !29, line: 205, column: 45)
!506 = !DILocation(line: 208, column: 49, scope: !505)
!507 = !DILocation(line: 208, column: 25, scope: !505)
!508 = !DILocation(line: 206, column: 7, scope: !509)
!509 = !DILexicalBlockFile(scope: !505, file: !29, discriminator: 1)
!510 = !DILocation(line: 209, column: 18, scope: !505)
!511 = !DILocation(line: 210, column: 4, scope: !505)
!512 = !DILocation(line: 211, column: 30, scope: !513)
!513 = distinct !DILexicalBlock(scope: !501, file: !29, line: 210, column: 11)
!514 = !DILocation(line: 211, column: 7, scope: !513)
!515 = !DILocation(line: 213, column: 27, scope: !476)
!516 = !DILocation(line: 213, column: 4, scope: !476)
!517 = !DILocation(line: 214, column: 11, scope: !476)
!518 = !DILocation(line: 214, column: 4, scope: !476)
!519 = !DILocation(line: 215, column: 1, scope: !476)
!520 = distinct !DISubprogram(name: "StatGetMemoryBallooned", scope: !29, file: !29, line: 237, type: !182, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!521 = !DILocalVariable(name: "exitStatus", scope: !520, file: !29, line: 239, type: !24)
!522 = !DILocation(line: 239, column: 8, scope: !520)
!523 = !DILocalVariable(name: "memBallooned", scope: !520, file: !29, line: 240, type: !227)
!524 = !DILocation(line: 240, column: 11, scope: !520)
!525 = !DILocalVariable(name: "glHandle", scope: !520, file: !29, line: 241, type: !482)
!526 = !DILocation(line: 241, column: 21, scope: !520)
!527 = !DILocalVariable(name: "glError", scope: !520, file: !29, line: 242, type: !487)
!528 = !DILocation(line: 242, column: 20, scope: !520)
!529 = !DILocation(line: 244, column: 17, scope: !520)
!530 = !DILocation(line: 244, column: 15, scope: !520)
!531 = !DILocation(line: 245, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !520, file: !29, line: 245, column: 8)
!533 = !DILocation(line: 245, column: 8, scope: !520)
!534 = !DILocation(line: 246, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !29, line: 245, column: 20)
!536 = !DILocation(line: 246, column: 7, scope: !535)
!537 = !DILocation(line: 248, column: 43, scope: !520)
!538 = !DILocation(line: 248, column: 14, scope: !520)
!539 = !DILocation(line: 248, column: 12, scope: !520)
!540 = !DILocation(line: 249, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !520, file: !29, line: 249, column: 8)
!542 = !DILocation(line: 249, column: 16, scope: !541)
!543 = !DILocation(line: 249, column: 8, scope: !520)
!544 = !DILocation(line: 250, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !29, line: 249, column: 45)
!546 = !DILocation(line: 252, column: 49, scope: !545)
!547 = !DILocation(line: 252, column: 25, scope: !545)
!548 = !DILocation(line: 250, column: 7, scope: !549)
!549 = !DILexicalBlockFile(scope: !545, file: !29, discriminator: 1)
!550 = !DILocation(line: 253, column: 18, scope: !545)
!551 = !DILocation(line: 254, column: 4, scope: !545)
!552 = !DILocation(line: 255, column: 15, scope: !553)
!553 = distinct !DILexicalBlock(scope: !541, file: !29, line: 254, column: 11)
!554 = !DILocation(line: 255, column: 103, scope: !553)
!555 = !DILocation(line: 255, column: 7, scope: !556)
!556 = !DILexicalBlockFile(scope: !553, file: !29, discriminator: 1)
!557 = !DILocation(line: 257, column: 27, scope: !520)
!558 = !DILocation(line: 257, column: 4, scope: !520)
!559 = !DILocation(line: 258, column: 11, scope: !520)
!560 = !DILocation(line: 258, column: 4, scope: !520)
!561 = !DILocation(line: 259, column: 1, scope: !520)
!562 = distinct !DISubprogram(name: "StatGetMemorySwapped", scope: !29, file: !29, line: 326, type: !182, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!563 = !DILocalVariable(name: "exitStatus", scope: !562, file: !29, line: 328, type: !24)
!564 = !DILocation(line: 328, column: 8, scope: !562)
!565 = !DILocalVariable(name: "memSwapped", scope: !562, file: !29, line: 329, type: !227)
!566 = !DILocation(line: 329, column: 11, scope: !562)
!567 = !DILocalVariable(name: "glHandle", scope: !562, file: !29, line: 330, type: !482)
!568 = !DILocation(line: 330, column: 21, scope: !562)
!569 = !DILocalVariable(name: "glError", scope: !562, file: !29, line: 331, type: !487)
!570 = !DILocation(line: 331, column: 20, scope: !562)
!571 = !DILocation(line: 333, column: 17, scope: !562)
!572 = !DILocation(line: 333, column: 15, scope: !562)
!573 = !DILocation(line: 334, column: 8, scope: !574)
!574 = distinct !DILexicalBlock(scope: !562, file: !29, line: 334, column: 8)
!575 = !DILocation(line: 334, column: 8, scope: !562)
!576 = !DILocation(line: 335, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !29, line: 334, column: 20)
!578 = !DILocation(line: 335, column: 7, scope: !577)
!579 = !DILocation(line: 337, column: 41, scope: !562)
!580 = !DILocation(line: 337, column: 14, scope: !562)
!581 = !DILocation(line: 337, column: 12, scope: !562)
!582 = !DILocation(line: 338, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !562, file: !29, line: 338, column: 8)
!584 = !DILocation(line: 338, column: 16, scope: !583)
!585 = !DILocation(line: 338, column: 8, scope: !562)
!586 = !DILocation(line: 339, column: 25, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !29, line: 338, column: 45)
!588 = !DILocation(line: 341, column: 49, scope: !587)
!589 = !DILocation(line: 341, column: 25, scope: !587)
!590 = !DILocation(line: 339, column: 7, scope: !591)
!591 = !DILexicalBlockFile(scope: !587, file: !29, discriminator: 1)
!592 = !DILocation(line: 342, column: 18, scope: !587)
!593 = !DILocation(line: 343, column: 4, scope: !587)
!594 = !DILocation(line: 344, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !29, line: 343, column: 11)
!596 = !DILocation(line: 344, column: 103, scope: !595)
!597 = !DILocation(line: 344, column: 7, scope: !598)
!598 = !DILexicalBlockFile(scope: !595, file: !29, discriminator: 1)
!599 = !DILocation(line: 346, column: 27, scope: !562)
!600 = !DILocation(line: 346, column: 4, scope: !562)
!601 = !DILocation(line: 347, column: 11, scope: !562)
!602 = !DILocation(line: 347, column: 4, scope: !562)
!603 = !DILocation(line: 348, column: 1, scope: !562)
!604 = distinct !DISubprogram(name: "StatGetMemoryLimit", scope: !29, file: !29, line: 370, type: !182, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!605 = !DILocalVariable(name: "exitStatus", scope: !604, file: !29, line: 372, type: !24)
!606 = !DILocation(line: 372, column: 8, scope: !604)
!607 = !DILocalVariable(name: "memLimit", scope: !604, file: !29, line: 373, type: !227)
!608 = !DILocation(line: 373, column: 11, scope: !604)
!609 = !DILocalVariable(name: "glHandle", scope: !604, file: !29, line: 374, type: !482)
!610 = !DILocation(line: 374, column: 21, scope: !604)
!611 = !DILocalVariable(name: "glError", scope: !604, file: !29, line: 375, type: !487)
!612 = !DILocation(line: 375, column: 20, scope: !604)
!613 = !DILocation(line: 377, column: 17, scope: !604)
!614 = !DILocation(line: 377, column: 15, scope: !604)
!615 = !DILocation(line: 378, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !604, file: !29, line: 378, column: 8)
!617 = !DILocation(line: 378, column: 8, scope: !604)
!618 = !DILocation(line: 379, column: 14, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !29, line: 378, column: 20)
!620 = !DILocation(line: 379, column: 7, scope: !619)
!621 = !DILocation(line: 381, column: 39, scope: !604)
!622 = !DILocation(line: 381, column: 14, scope: !604)
!623 = !DILocation(line: 381, column: 12, scope: !604)
!624 = !DILocation(line: 382, column: 8, scope: !625)
!625 = distinct !DILexicalBlock(scope: !604, file: !29, line: 382, column: 8)
!626 = !DILocation(line: 382, column: 16, scope: !625)
!627 = !DILocation(line: 382, column: 8, scope: !604)
!628 = !DILocation(line: 383, column: 25, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !29, line: 382, column: 45)
!630 = !DILocation(line: 385, column: 49, scope: !629)
!631 = !DILocation(line: 385, column: 25, scope: !629)
!632 = !DILocation(line: 383, column: 7, scope: !633)
!633 = !DILexicalBlockFile(scope: !629, file: !29, discriminator: 1)
!634 = !DILocation(line: 386, column: 18, scope: !629)
!635 = !DILocation(line: 387, column: 4, scope: !629)
!636 = !DILocation(line: 388, column: 15, scope: !637)
!637 = distinct !DILexicalBlock(scope: !625, file: !29, line: 387, column: 11)
!638 = !DILocation(line: 388, column: 101, scope: !637)
!639 = !DILocation(line: 388, column: 7, scope: !640)
!640 = !DILexicalBlockFile(scope: !637, file: !29, discriminator: 1)
!641 = !DILocation(line: 390, column: 27, scope: !604)
!642 = !DILocation(line: 390, column: 4, scope: !604)
!643 = !DILocation(line: 391, column: 11, scope: !604)
!644 = !DILocation(line: 391, column: 4, scope: !604)
!645 = !DILocation(line: 392, column: 1, scope: !604)
!646 = distinct !DISubprogram(name: "StatGetMemoryReservation", scope: !29, file: !29, line: 281, type: !182, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!647 = !DILocalVariable(name: "exitStatus", scope: !646, file: !29, line: 283, type: !24)
!648 = !DILocation(line: 283, column: 8, scope: !646)
!649 = !DILocalVariable(name: "memReservation", scope: !646, file: !29, line: 284, type: !227)
!650 = !DILocation(line: 284, column: 11, scope: !646)
!651 = !DILocalVariable(name: "glHandle", scope: !646, file: !29, line: 285, type: !482)
!652 = !DILocation(line: 285, column: 21, scope: !646)
!653 = !DILocalVariable(name: "glError", scope: !646, file: !29, line: 286, type: !487)
!654 = !DILocation(line: 286, column: 20, scope: !646)
!655 = !DILocation(line: 288, column: 17, scope: !646)
!656 = !DILocation(line: 288, column: 15, scope: !646)
!657 = !DILocation(line: 289, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !646, file: !29, line: 289, column: 8)
!659 = !DILocation(line: 289, column: 8, scope: !646)
!660 = !DILocation(line: 290, column: 14, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !29, line: 289, column: 20)
!662 = !DILocation(line: 290, column: 7, scope: !661)
!663 = !DILocation(line: 292, column: 45, scope: !646)
!664 = !DILocation(line: 292, column: 14, scope: !646)
!665 = !DILocation(line: 292, column: 12, scope: !646)
!666 = !DILocation(line: 293, column: 8, scope: !667)
!667 = distinct !DILexicalBlock(scope: !646, file: !29, line: 293, column: 8)
!668 = !DILocation(line: 293, column: 16, scope: !667)
!669 = !DILocation(line: 293, column: 8, scope: !646)
!670 = !DILocation(line: 294, column: 25, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !29, line: 293, column: 45)
!672 = !DILocation(line: 296, column: 49, scope: !671)
!673 = !DILocation(line: 296, column: 25, scope: !671)
!674 = !DILocation(line: 294, column: 7, scope: !675)
!675 = !DILexicalBlockFile(scope: !671, file: !29, discriminator: 1)
!676 = !DILocation(line: 297, column: 18, scope: !671)
!677 = !DILocation(line: 298, column: 4, scope: !671)
!678 = !DILocation(line: 299, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !667, file: !29, line: 298, column: 11)
!680 = !DILocation(line: 299, column: 107, scope: !679)
!681 = !DILocation(line: 299, column: 7, scope: !682)
!682 = !DILexicalBlockFile(scope: !679, file: !29, discriminator: 1)
!683 = !DILocation(line: 301, column: 27, scope: !646)
!684 = !DILocation(line: 301, column: 4, scope: !646)
!685 = !DILocation(line: 302, column: 11, scope: !646)
!686 = !DILocation(line: 302, column: 4, scope: !646)
!687 = !DILocation(line: 303, column: 1, scope: !646)
!688 = distinct !DISubprogram(name: "StatGetCpuReservation", scope: !29, file: !29, line: 414, type: !182, isLocal: true, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!689 = !DILocalVariable(name: "exitStatus", scope: !688, file: !29, line: 416, type: !24)
!690 = !DILocation(line: 416, column: 8, scope: !688)
!691 = !DILocalVariable(name: "cpuReservation", scope: !688, file: !29, line: 417, type: !227)
!692 = !DILocation(line: 417, column: 11, scope: !688)
!693 = !DILocalVariable(name: "glHandle", scope: !688, file: !29, line: 418, type: !482)
!694 = !DILocation(line: 418, column: 21, scope: !688)
!695 = !DILocalVariable(name: "glError", scope: !688, file: !29, line: 419, type: !487)
!696 = !DILocation(line: 419, column: 20, scope: !688)
!697 = !DILocation(line: 421, column: 17, scope: !688)
!698 = !DILocation(line: 421, column: 15, scope: !688)
!699 = !DILocation(line: 422, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !688, file: !29, line: 422, column: 8)
!701 = !DILocation(line: 422, column: 8, scope: !688)
!702 = !DILocation(line: 423, column: 14, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !29, line: 422, column: 20)
!704 = !DILocation(line: 423, column: 7, scope: !703)
!705 = !DILocation(line: 425, column: 46, scope: !688)
!706 = !DILocation(line: 425, column: 14, scope: !688)
!707 = !DILocation(line: 425, column: 12, scope: !688)
!708 = !DILocation(line: 426, column: 8, scope: !709)
!709 = distinct !DILexicalBlock(scope: !688, file: !29, line: 426, column: 8)
!710 = !DILocation(line: 426, column: 16, scope: !709)
!711 = !DILocation(line: 426, column: 8, scope: !688)
!712 = !DILocation(line: 427, column: 25, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !29, line: 426, column: 45)
!714 = !DILocation(line: 429, column: 49, scope: !713)
!715 = !DILocation(line: 429, column: 25, scope: !713)
!716 = !DILocation(line: 427, column: 7, scope: !717)
!717 = !DILexicalBlockFile(scope: !713, file: !29, discriminator: 1)
!718 = !DILocation(line: 430, column: 18, scope: !713)
!719 = !DILocation(line: 431, column: 4, scope: !713)
!720 = !DILocation(line: 432, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !709, file: !29, line: 431, column: 11)
!722 = !DILocation(line: 432, column: 105, scope: !721)
!723 = !DILocation(line: 432, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !721, file: !29, discriminator: 1)
!725 = !DILocation(line: 434, column: 27, scope: !688)
!726 = !DILocation(line: 434, column: 4, scope: !688)
!727 = !DILocation(line: 435, column: 11, scope: !688)
!728 = !DILocation(line: 435, column: 4, scope: !688)
!729 = !DILocation(line: 436, column: 1, scope: !688)
!730 = distinct !DISubprogram(name: "StatGetCpuLimit", scope: !29, file: !29, line: 458, type: !182, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!731 = !DILocalVariable(name: "exitStatus", scope: !730, file: !29, line: 460, type: !24)
!732 = !DILocation(line: 460, column: 8, scope: !730)
!733 = !DILocalVariable(name: "cpuLimit", scope: !730, file: !29, line: 461, type: !227)
!734 = !DILocation(line: 461, column: 11, scope: !730)
!735 = !DILocalVariable(name: "glHandle", scope: !730, file: !29, line: 462, type: !482)
!736 = !DILocation(line: 462, column: 21, scope: !730)
!737 = !DILocalVariable(name: "glError", scope: !730, file: !29, line: 463, type: !487)
!738 = !DILocation(line: 463, column: 20, scope: !730)
!739 = !DILocation(line: 465, column: 17, scope: !730)
!740 = !DILocation(line: 465, column: 15, scope: !730)
!741 = !DILocation(line: 466, column: 8, scope: !742)
!742 = distinct !DILexicalBlock(scope: !730, file: !29, line: 466, column: 8)
!743 = !DILocation(line: 466, column: 8, scope: !730)
!744 = !DILocation(line: 467, column: 14, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !29, line: 466, column: 20)
!746 = !DILocation(line: 467, column: 7, scope: !745)
!747 = !DILocation(line: 469, column: 40, scope: !730)
!748 = !DILocation(line: 469, column: 14, scope: !730)
!749 = !DILocation(line: 469, column: 12, scope: !730)
!750 = !DILocation(line: 470, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !730, file: !29, line: 470, column: 8)
!752 = !DILocation(line: 470, column: 16, scope: !751)
!753 = !DILocation(line: 470, column: 8, scope: !730)
!754 = !DILocation(line: 471, column: 25, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !29, line: 470, column: 45)
!756 = !DILocation(line: 473, column: 49, scope: !755)
!757 = !DILocation(line: 473, column: 25, scope: !755)
!758 = !DILocation(line: 471, column: 7, scope: !759)
!759 = !DILexicalBlockFile(scope: !755, file: !29, discriminator: 1)
!760 = !DILocation(line: 474, column: 18, scope: !755)
!761 = !DILocation(line: 475, column: 4, scope: !755)
!762 = !DILocation(line: 476, column: 15, scope: !763)
!763 = distinct !DILexicalBlock(scope: !751, file: !29, line: 475, column: 11)
!764 = !DILocation(line: 476, column: 99, scope: !763)
!765 = !DILocation(line: 476, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !763, file: !29, discriminator: 1)
!767 = !DILocation(line: 478, column: 27, scope: !730)
!768 = !DILocation(line: 478, column: 4, scope: !730)
!769 = !DILocation(line: 479, column: 11, scope: !730)
!770 = !DILocation(line: 479, column: 4, scope: !730)
!771 = !DILocation(line: 480, column: 1, scope: !730)
!772 = distinct !DISubprogram(name: "StatProcessorSpeed", scope: !29, file: !29, line: 92, type: !182, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!773 = !DILocalVariable(name: "speed", scope: !772, file: !29, line: 94, type: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !19, line: 174, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 196, baseType: !24)
!776 = !DILocation(line: 94, column: 10, scope: !772)
!777 = !DILocalVariable(name: "bp", scope: !772, file: !29, line: 95, type: !208)
!778 = !DILocation(line: 95, column: 19, scope: !772)
!779 = !DILocation(line: 96, column: 7, scope: !772)
!780 = !DILocation(line: 96, column: 10, scope: !772)
!781 = !DILocation(line: 96, column: 13, scope: !772)
!782 = !DILocation(line: 96, column: 19, scope: !772)
!783 = !DILocation(line: 96, column: 23, scope: !772)
!784 = !DILocation(line: 97, column: 4, scope: !772)
!785 = !DILocation(line: 98, column: 15, scope: !772)
!786 = !DILocation(line: 98, column: 19, scope: !772)
!787 = !DILocation(line: 98, column: 22, scope: !772)
!788 = !DILocation(line: 98, column: 10, scope: !772)
!789 = !DILocation(line: 99, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !772, file: !29, line: 99, column: 8)
!791 = !DILocation(line: 99, column: 14, scope: !790)
!792 = !DILocation(line: 99, column: 8, scope: !772)
!793 = !DILocation(line: 101, column: 25, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !29, line: 99, column: 20)
!795 = !DILocation(line: 100, column: 7, scope: !794)
!796 = !DILocation(line: 102, column: 7, scope: !794)
!797 = !DILocation(line: 104, column: 12, scope: !772)
!798 = !DILocation(line: 104, column: 102, scope: !772)
!799 = !DILocation(line: 104, column: 4, scope: !800)
!800 = !DILexicalBlockFile(scope: !772, file: !29, discriminator: 1)
!801 = !DILocation(line: 105, column: 4, scope: !772)
!802 = !DILocation(line: 106, column: 1, scope: !772)
!803 = distinct !DISubprogram(name: "StatGetRaw", scope: !29, file: !29, line: 502, type: !804, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!804 = !DISubroutineType(types: !805)
!805 = !{!24, !806, !806, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!808 = !DILocalVariable(name: "encoding", arg: 1, scope: !803, file: !29, line: 502, type: !806)
!809 = !DILocation(line: 502, column: 24, scope: !803)
!810 = !DILocalVariable(name: "stat", arg: 2, scope: !803, file: !29, line: 503, type: !806)
!811 = !DILocation(line: 503, column: 24, scope: !803)
!812 = !DILocalVariable(name: "param", arg: 3, scope: !803, file: !29, line: 504, type: !806)
!813 = !DILocation(line: 504, column: 24, scope: !803)
!814 = !DILocalVariable(name: "exitStatus", scope: !803, file: !29, line: 506, type: !24)
!815 = !DILocation(line: 506, column: 8, scope: !803)
!816 = !DILocalVariable(name: "glError", scope: !803, file: !29, line: 507, type: !487)
!817 = !DILocation(line: 507, column: 20, scope: !803)
!818 = !DILocalVariable(name: "result", scope: !803, file: !29, line: 508, type: !33)
!819 = !DILocation(line: 508, column: 10, scope: !803)
!820 = !DILocalVariable(name: "resultSize", scope: !803, file: !29, line: 509, type: !237)
!821 = !DILocation(line: 509, column: 11, scope: !803)
!822 = !DILocalVariable(name: "arg", scope: !803, file: !29, line: 510, type: !33)
!823 = !DILocation(line: 510, column: 10, scope: !803)
!824 = !DILocation(line: 510, column: 41, scope: !803)
!825 = !DILocation(line: 510, column: 47, scope: !803)
!826 = !DILocation(line: 510, column: 16, scope: !803)
!827 = !DILocation(line: 512, column: 33, scope: !803)
!828 = !DILocation(line: 512, column: 43, scope: !803)
!829 = !DILocation(line: 512, column: 14, scope: !803)
!830 = !DILocation(line: 512, column: 12, scope: !803)
!831 = !DILocation(line: 513, column: 8, scope: !832)
!832 = distinct !DILexicalBlock(scope: !803, file: !29, line: 513, column: 8)
!833 = !DILocation(line: 513, column: 16, scope: !832)
!834 = !DILocation(line: 513, column: 8, scope: !803)
!835 = !DILocation(line: 514, column: 25, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !29, line: 513, column: 45)
!837 = !DILocation(line: 516, column: 49, scope: !836)
!838 = !DILocation(line: 516, column: 25, scope: !836)
!839 = !DILocation(line: 514, column: 7, scope: !840)
!840 = !DILexicalBlockFile(scope: !836, file: !29, discriminator: 1)
!841 = !DILocation(line: 517, column: 18, scope: !836)
!842 = !DILocation(line: 518, column: 4, scope: !836)
!843 = !DILocation(line: 519, column: 27, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !29, line: 518, column: 11)
!845 = !DILocation(line: 519, column: 22, scope: !844)
!846 = !DILocation(line: 519, column: 39, scope: !844)
!847 = !DILocation(line: 519, column: 7, scope: !844)
!848 = !DILocation(line: 521, column: 24, scope: !803)
!849 = !DILocation(line: 521, column: 32, scope: !803)
!850 = !DILocation(line: 521, column: 4, scope: !803)
!851 = !DILocation(line: 522, column: 11, scope: !803)
!852 = !DILocation(line: 522, column: 4, scope: !803)
!853 = !DILocation(line: 523, column: 11, scope: !803)
!854 = !DILocation(line: 523, column: 4, scope: !803)
!855 = distinct !DISubprogram(name: "Stat_Help", scope: !29, file: !29, line: 597, type: !856, isLocal: false, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !806, !806}
!858 = !DILocalVariable(name: "progName", arg: 1, scope: !855, file: !29, line: 597, type: !806)
!859 = !DILocation(line: 597, column: 23, scope: !855)
!860 = !DILocalVariable(name: "cmd", arg: 2, scope: !855, file: !29, line: 598, type: !806)
!861 = !DILocation(line: 598, column: 23, scope: !855)
!862 = !DILocation(line: 600, column: 12, scope: !855)
!863 = !DILocation(line: 619, column: 12, scope: !855)
!864 = !DILocation(line: 619, column: 17, scope: !855)
!865 = !DILocation(line: 619, column: 27, scope: !855)
!866 = !DILocation(line: 600, column: 4, scope: !867)
!867 = !DILexicalBlockFile(scope: !855, file: !29, discriminator: 1)
!868 = !DILocation(line: 620, column: 1, scope: !855)
!869 = distinct !DISubprogram(name: "OpenHandle", scope: !29, file: !29, line: 51, type: !870, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !38)
!870 = !DISubroutineType(types: !871)
!871 = !{!24, !872, !873}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!874 = !DILocalVariable(name: "glHandle", arg: 1, scope: !869, file: !29, line: 51, type: !872)
!875 = !DILocation(line: 51, column: 30, scope: !869)
!876 = !DILocalVariable(name: "glError", arg: 2, scope: !869, file: !29, line: 52, type: !873)
!877 = !DILocation(line: 52, column: 29, scope: !869)
!878 = !DILocation(line: 54, column: 37, scope: !869)
!879 = !DILocation(line: 54, column: 15, scope: !869)
!880 = !DILocation(line: 54, column: 5, scope: !869)
!881 = !DILocation(line: 54, column: 13, scope: !869)
!882 = !DILocation(line: 55, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !869, file: !29, line: 55, column: 8)
!884 = !DILocation(line: 55, column: 8, scope: !883)
!885 = !DILocation(line: 55, column: 17, scope: !883)
!886 = !DILocation(line: 55, column: 8, scope: !869)
!887 = !DILocation(line: 56, column: 25, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !29, line: 55, column: 46)
!889 = !DILocation(line: 58, column: 50, scope: !888)
!890 = !DILocation(line: 58, column: 49, scope: !888)
!891 = !DILocation(line: 58, column: 25, scope: !888)
!892 = !DILocation(line: 56, column: 7, scope: !893)
!893 = !DILexicalBlockFile(scope: !888, file: !29, discriminator: 1)
!894 = !DILocation(line: 59, column: 7, scope: !888)
!895 = !DILocation(line: 61, column: 38, scope: !869)
!896 = !DILocation(line: 61, column: 37, scope: !869)
!897 = !DILocation(line: 61, column: 15, scope: !869)
!898 = !DILocation(line: 61, column: 5, scope: !869)
!899 = !DILocation(line: 61, column: 13, scope: !869)
!900 = !DILocation(line: 62, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !869, file: !29, line: 62, column: 8)
!902 = !DILocation(line: 62, column: 8, scope: !901)
!903 = !DILocation(line: 62, column: 17, scope: !901)
!904 = !DILocation(line: 62, column: 8, scope: !869)
!905 = !DILocation(line: 63, column: 25, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !29, line: 62, column: 46)
!907 = !DILocation(line: 65, column: 50, scope: !906)
!908 = !DILocation(line: 65, column: 49, scope: !906)
!909 = !DILocation(line: 65, column: 25, scope: !906)
!910 = !DILocation(line: 63, column: 7, scope: !911)
!911 = !DILexicalBlockFile(scope: !906, file: !29, discriminator: 1)
!912 = !DILocation(line: 66, column: 7, scope: !906)
!913 = !DILocation(line: 68, column: 4, scope: !869)
!914 = !DILocation(line: 71, column: 1, scope: !869)
