; ModuleID = './timeutil.o.i'
source_filename = "./timeutil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._tzinfo = type { i32, i8*, i32 }
%struct.TimeUtil_Date = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.TimeUtil_TimeOfDay = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.TimeUtil_Expiration = type { i8, %struct.TimeUtil_Date, i32 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"timeutil.c\00", align 1
@TimeUtil_ProductExpiration.hard_expire = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"No Expire\00", align 1
@TimeUtilMonthDaysForYear.leap = internal constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@TimeUtilMonthDaysForYear.common = internal constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@TimeUtilFindIndexAndName.TABLE = internal global [75 x %struct._tzinfo] [%struct._tzinfo { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 -720 }, %struct._tzinfo { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 -600 }, %struct._tzinfo { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 -540 }, %struct._tzinfo { i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 -480 }, %struct._tzinfo { i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 -420 }, %struct._tzinfo { i32 13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i32 -420 }, %struct._tzinfo { i32 15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 -420 }, %struct._tzinfo { i32 20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 -360 }, %struct._tzinfo { i32 25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i32 -360 }, %struct._tzinfo { i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i32 -360 }, %struct._tzinfo { i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i32 -360 }, %struct._tzinfo { i32 35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 -300 }, %struct._tzinfo { i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i32 -300 }, %struct._tzinfo { i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 -300 }, %struct._tzinfo { i32 50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 -240 }, %struct._tzinfo { i32 55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i32 -240 }, %struct._tzinfo { i32 56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 -240 }, %struct._tzinfo { i32 60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i32 -210 }, %struct._tzinfo { i32 65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 -180 }, %struct._tzinfo { i32 70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 -180 }, %struct._tzinfo { i32 73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i32 -180 }, %struct._tzinfo { i32 75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i32 -120 }, %struct._tzinfo { i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i32 -60 }, %struct._tzinfo { i32 83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 -60 }, %struct._tzinfo { i32 85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i32 0 }, %struct._tzinfo { i32 90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i32 0 }, %struct._tzinfo { i32 110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i32 60 }, %struct._tzinfo { i32 95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 60 }, %struct._tzinfo { i32 100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i32 60 }, %struct._tzinfo { i32 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 60 }, %struct._tzinfo { i32 113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i32 60 }, %struct._tzinfo { i32 115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), i32 120 }, %struct._tzinfo { i32 150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i32 180 }, %struct._tzinfo { i32 155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i32 180 }, %struct._tzinfo { i32 158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i32 180 }, %struct._tzinfo { i32 160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i32 210 }, %struct._tzinfo { i32 145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), i32 240 }, %struct._tzinfo { i32 165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i32 240 }, %struct._tzinfo { i32 170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i32 240 }, %struct._tzinfo { i32 175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i32 270 }, %struct._tzinfo { i32 185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i32 300 }, %struct._tzinfo { i32 190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i32 330 }, %struct._tzinfo { i32 200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i32 330 }, %struct._tzinfo { i32 193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 345 }, %struct._tzinfo { i32 180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0), i32 360 }, %struct._tzinfo { i32 195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), i32 360 }, %struct._tzinfo { i32 203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i32 390 }, %struct._tzinfo { i32 201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i32 420 }, %struct._tzinfo { i32 205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0), i32 420 }, %struct._tzinfo { i32 210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), i32 480 }, %struct._tzinfo { i32 207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i32 480 }, %struct._tzinfo { i32 215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), i32 480 }, %struct._tzinfo { i32 220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), i32 480 }, %struct._tzinfo { i32 225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i32 480 }, %struct._tzinfo { i32 235, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), i32 540 }, %struct._tzinfo { i32 230, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i32 540 }, %struct._tzinfo { i32 227, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i32 540 }, %struct._tzinfo { i32 245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i32 570 }, %struct._tzinfo { i32 250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i32 570 }, %struct._tzinfo { i32 255, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0), i32 600 }, %struct._tzinfo { i32 260, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0), i32 600 }, %struct._tzinfo { i32 265, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0), i32 600 }, %struct._tzinfo { i32 240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i32 600 }, %struct._tzinfo { i32 275, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i32 0, i32 0), i32 600 }, %struct._tzinfo { i32 280, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i32 0, i32 0), i32 660 }, %struct._tzinfo { i32 270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), i32 660 }, %struct._tzinfo { i32 290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0), i32 720 }, %struct._tzinfo { i32 285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i32 720 }, %struct._tzinfo { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i32 780 }, %struct._tzinfo { i32 300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i32 780 }], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"Dateline Standard Time\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Hawaiian Standard Time\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Alaskan Standard Time\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Pacific Standard Time\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Mountain Standard Time\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Mountain Standard Time (Mexico)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"US Mountain Standard Time\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Central Standard Time\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Canada Central Standard Time\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Central Standard Time (Mexico)\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Central America Standard Time\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Eastern Standard Time\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"US Eastern Standard Time\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"SA Pacific Standard Time\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Atlantic Standard Time\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"SA Western Standard Time\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Pacific SA Standard Time\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Newfoundland Standard Time\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"E. South America Standard Time\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"SA Eastern Standard Time\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Greenland Standard Time\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Mid-Atlantic Standard Time\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Azores Standard Time\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Cape Verde Standard Time\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"GMT Standard Time\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Greenwich Standard Time\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"W. Europe Standard Time\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Central Europe Standard Time\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Central European Standard Time\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Romance Standard Time\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"W. Central Africa Standard Time\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"E. Europe Standard Time\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Egypt Standard Time\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"FLE Standard Time\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"GTB Standard Time\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Israel Standard Time\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"South Africa Standard Time\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Arab Standard Time\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"E. Africa Standard Time\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Arabic Standard Time\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Iran Standard Time\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Russian Standard Time\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Arabian Standard Time\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Caucasus Standard Time\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"Afghanistan Standard Time\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"West Asia Standard Time\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"India Standard Time\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Sri Lanka Standard Time\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Nepal Standard Time\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"Ekaterinburg Standard Time\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Central Asia Standard Time\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Myanmar Standard Time\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"N. Central Asia Standard Time\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"SE Asia Standard Time\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"China Standard Time\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"North Asia Standard Time\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Singapore Standard Time\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"Taipei Standard Time\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"W. Australia Standard Time\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Tokyo Standard Time\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"Korea Standard Time\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"North Asia East Standard Time\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"AUS Central Standard Time\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"Cen. Australia Standard Time\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"AUS Eastern Standard Time\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"E. Australia Standard Time\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Tasmania Standard Time\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Yakutsk Standard Time\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"West Pacific Standard Time\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"Central Pacific Standard Time\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"Vladivostok Standard Time\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"New Zealand Standard Time\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"Fiji Standard Time\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"Samoa Standard Time\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"Tonga Standard Time\00", align 1

; Function Attrs: nounwind uwtable
define i64 @TimeUtil_MakeTime(%struct.TimeUtil_Date*) #0 !dbg !425 {
  %2 = alloca %struct.TimeUtil_Date*, align 8
  %3 = alloca %struct.tm, align 8
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %2, metadata !430, metadata !431), !dbg !432
  call void @llvm.dbg.declare(metadata %struct.tm* %3, metadata !433, metadata !431), !dbg !447
  %4 = bitcast %struct.tm* %3 to i8*, !dbg !448
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 56, i32 8, i1 false), !dbg !448
  %5 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !449
  %6 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %5, i32 0, i32 2, !dbg !450
  %7 = load i32, i32* %6, align 4, !dbg !450
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3, !dbg !451
  store i32 %7, i32* %8, align 4, !dbg !452
  %9 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !453
  %10 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %9, i32 0, i32 1, !dbg !454
  %11 = load i32, i32* %10, align 4, !dbg !454
  %12 = sub i32 %11, 1, !dbg !455
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4, !dbg !456
  store i32 %12, i32* %13, align 8, !dbg !457
  %14 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !458
  %15 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %14, i32 0, i32 0, !dbg !459
  %16 = load i32, i32* %15, align 4, !dbg !459
  %17 = sub i32 %16, 1900, !dbg !460
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5, !dbg !461
  store i32 %17, i32* %18, align 4, !dbg !462
  %19 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !463
  %20 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %19, i32 0, i32 5, !dbg !464
  %21 = load i32, i32* %20, align 4, !dbg !464
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0, !dbg !465
  store i32 %21, i32* %22, align 8, !dbg !466
  %23 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !467
  %24 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %23, i32 0, i32 4, !dbg !468
  %25 = load i32, i32* %24, align 4, !dbg !468
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1, !dbg !469
  store i32 %25, i32* %26, align 4, !dbg !470
  %27 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !471
  %28 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %27, i32 0, i32 3, !dbg !472
  %29 = load i32, i32* %28, align 4, !dbg !472
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2, !dbg !473
  store i32 %29, i32* %30, align 8, !dbg !474
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 8, !dbg !475
  store i32 -1, i32* %31, align 8, !dbg !476
  %32 = call i64 @mktime(%struct.tm* %3) #9, !dbg !477
  ret i64 %32, !dbg !478
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #3

; Function Attrs: nounwind uwtable
define signext i8 @TimeUtil_StringToDate(%struct.TimeUtil_Date*, i8*) #0 !dbg !479 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !483, metadata !431), !dbg !484
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !485, metadata !431), !dbg !486
  %7 = load i8*, i8** %5, align 8, !dbg !487
  %8 = call i64 @strlen(i8* %7) #10, !dbg !489
  %9 = icmp eq i64 %8, 8, !dbg !490
  br i1 %9, label %10, label %14, !dbg !491

; <label>:10:                                     ; preds = %2
  %11 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !492
  %12 = load i8*, i8** %5, align 8, !dbg !494
  %13 = call signext i8 @TimeUtilLoadDate(%struct.TimeUtil_Date* %11, i8* %12), !dbg !495
  store i8 %13, i8* %3, align 1, !dbg !496
  br label %69, !dbg !496

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %5, align 8, !dbg !497
  %16 = call i64 @strlen(i8* %15) #10, !dbg !499
  %17 = icmp eq i64 %16, 10, !dbg !500
  br i1 %17, label %18, label %68, !dbg !501

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !502, metadata !431), !dbg !507
  %19 = bitcast [16 x i8]* %6 to i8*, !dbg !507
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 16, i1 false), !dbg !507
  %20 = load i8*, i8** %5, align 8, !dbg !508
  %21 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !508
  %22 = load i8, i8* %21, align 1, !dbg !508
  %23 = sext i8 %22 to i32, !dbg !508
  %24 = icmp ne i32 %23, 47, !dbg !510
  br i1 %24, label %44, label %25, !dbg !511

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %5, align 8, !dbg !512
  %27 = getelementptr inbounds i8, i8* %26, i64 7, !dbg !512
  %28 = load i8, i8* %27, align 1, !dbg !512
  %29 = sext i8 %28 to i32, !dbg !512
  %30 = icmp ne i32 %29, 47, !dbg !514
  br i1 %30, label %44, label %31, !dbg !515

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %5, align 8, !dbg !516
  %33 = getelementptr inbounds i8, i8* %32, i64 4, !dbg !516
  %34 = load i8, i8* %33, align 1, !dbg !516
  %35 = sext i8 %34 to i32, !dbg !516
  %36 = icmp ne i32 %35, 45, !dbg !517
  br i1 %36, label %44, label %37, !dbg !518

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %5, align 8, !dbg !519
  %39 = getelementptr inbounds i8, i8* %38, i64 7, !dbg !519
  %40 = load i8, i8* %39, align 1, !dbg !519
  %41 = sext i8 %40 to i32, !dbg !519
  %42 = icmp ne i32 %41, 45, !dbg !520
  br i1 %42, label %44, label %43, !dbg !521

; <label>:43:                                     ; preds = %37
  store i8 0, i8* %3, align 1, !dbg !523
  br label %69, !dbg !523

; <label>:44:                                     ; preds = %37, %31, %25, %18
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !525
  %46 = load i8*, i8** %5, align 8, !dbg !526
  %47 = call i8* @Str_Strcpy(i8* %45, i8* %46, i64 16), !dbg !527
  %48 = load i8*, i8** %5, align 8, !dbg !528
  %49 = getelementptr inbounds i8, i8* %48, i64 5, !dbg !528
  %50 = load i8, i8* %49, align 1, !dbg !528
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4, !dbg !529
  store i8 %50, i8* %51, align 4, !dbg !530
  %52 = load i8*, i8** %5, align 8, !dbg !531
  %53 = getelementptr inbounds i8, i8* %52, i64 6, !dbg !531
  %54 = load i8, i8* %53, align 1, !dbg !531
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5, !dbg !532
  store i8 %54, i8* %55, align 1, !dbg !533
  %56 = load i8*, i8** %5, align 8, !dbg !534
  %57 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !534
  %58 = load i8, i8* %57, align 1, !dbg !534
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6, !dbg !535
  store i8 %58, i8* %59, align 2, !dbg !536
  %60 = load i8*, i8** %5, align 8, !dbg !537
  %61 = getelementptr inbounds i8, i8* %60, i64 9, !dbg !537
  %62 = load i8, i8* %61, align 1, !dbg !537
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7, !dbg !538
  store i8 %62, i8* %63, align 1, !dbg !539
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8, !dbg !540
  store i8 0, i8* %64, align 8, !dbg !541
  %65 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !542
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !543
  %67 = call signext i8 @TimeUtilLoadDate(%struct.TimeUtil_Date* %65, i8* %66), !dbg !544
  store i8 %67, i8* %3, align 1, !dbg !545
  br label %69, !dbg !545

; <label>:68:                                     ; preds = %14
  store i8 0, i8* %3, align 1, !dbg !546
  br label %69, !dbg !546

; <label>:69:                                     ; preds = %68, %44, %43, %10
  %70 = load i8, i8* %3, align 1, !dbg !548
  ret i8 %70, !dbg !548
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @TimeUtilLoadDate(%struct.TimeUtil_Date*, i8*) #0 !dbg !549 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !550, metadata !431), !dbg !551
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !552, metadata !431), !dbg !553
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !554, metadata !431), !dbg !555
  %12 = bitcast [16 x i8]* %6 to i8*, !dbg !555
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 16, i1 false), !dbg !555
  call void @llvm.dbg.declare(metadata i32* %7, metadata !556, metadata !431), !dbg !557
  store i32 0, i32* %7, align 4, !dbg !557
  call void @llvm.dbg.declare(metadata i8** %8, metadata !558, metadata !431), !dbg !559
  store i8* null, i8** %8, align 8, !dbg !559
  call void @llvm.dbg.declare(metadata i32* %9, metadata !560, metadata !431), !dbg !563
  store i32 0, i32* %9, align 4, !dbg !563
  call void @llvm.dbg.declare(metadata i32* %10, metadata !564, metadata !431), !dbg !565
  store i32 0, i32* %10, align 4, !dbg !565
  call void @llvm.dbg.declare(metadata i32* %11, metadata !566, metadata !431), !dbg !567
  store i32 0, i32* %11, align 4, !dbg !567
  %13 = load i8*, i8** %5, align 8, !dbg !568
  %14 = call i64 @strlen(i8* %13) #10, !dbg !570
  %15 = icmp ne i64 %14, 8, !dbg !571
  br i1 %15, label %16, label %17, !dbg !572

; <label>:16:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !573
  br label %123, !dbg !573

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %7, align 4, !dbg !575
  br label %18, !dbg !577

; <label>:18:                                     ; preds = %41, %17
  %19 = load i32, i32* %7, align 4, !dbg !578
  %20 = sext i32 %19 to i64, !dbg !578
  %21 = load i8*, i8** %5, align 8, !dbg !581
  %22 = call i64 @strlen(i8* %21) #10, !dbg !582
  %23 = icmp ult i64 %20, %22, !dbg !583
  br i1 %23, label %24, label %44, !dbg !584

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %7, align 4, !dbg !585
  %26 = sext i32 %25 to i64, !dbg !588
  %27 = load i8*, i8** %5, align 8, !dbg !588
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !588
  %29 = load i8, i8* %28, align 1, !dbg !588
  %30 = sext i8 %29 to i32, !dbg !589
  %31 = sext i32 %30 to i64, !dbg !590
  %32 = call i16** @__ctype_b_loc() #1, !dbg !591
  %33 = load i16*, i16** %32, align 8, !dbg !592
  %34 = getelementptr inbounds i16, i16* %33, i64 %31, !dbg !590
  %35 = load i16, i16* %34, align 2, !dbg !590
  %36 = zext i16 %35 to i32, !dbg !590
  %37 = and i32 %36, 2048, !dbg !593
  %38 = icmp eq i32 %37, 0, !dbg !594
  br i1 %38, label %39, label %40, !dbg !595

; <label>:39:                                     ; preds = %24
  store i8 0, i8* %3, align 1, !dbg !596
  br label %123, !dbg !596

; <label>:40:                                     ; preds = %24
  br label %41, !dbg !598

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %7, align 4, !dbg !599
  %43 = add nsw i32 %42, 1, !dbg !599
  store i32 %43, i32* %7, align 4, !dbg !599
  br label %18, !dbg !601, !llvm.loop !602

; <label>:44:                                     ; preds = %18
  %45 = load i8*, i8** %5, align 8, !dbg !604
  %46 = getelementptr inbounds i8, i8* %45, i64 0, !dbg !604
  %47 = load i8, i8* %46, align 1, !dbg !604
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !605
  store i8 %47, i8* %48, align 16, !dbg !606
  %49 = load i8*, i8** %5, align 8, !dbg !607
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !607
  %51 = load i8, i8* %50, align 1, !dbg !607
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1, !dbg !608
  store i8 %51, i8* %52, align 1, !dbg !609
  %53 = load i8*, i8** %5, align 8, !dbg !610
  %54 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !610
  %55 = load i8, i8* %54, align 1, !dbg !610
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2, !dbg !611
  store i8 %55, i8* %56, align 2, !dbg !612
  %57 = load i8*, i8** %5, align 8, !dbg !613
  %58 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !613
  %59 = load i8, i8* %58, align 1, !dbg !613
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3, !dbg !614
  store i8 %59, i8* %60, align 1, !dbg !615
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4, !dbg !616
  store i8 0, i8* %61, align 4, !dbg !617
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !618
  %63 = call i64 @strtol(i8* %62, i8** %8, i32 10) #9, !dbg !619
  %64 = trunc i64 %63 to i32, !dbg !619
  store i32 %64, i32* %9, align 4, !dbg !620
  %65 = load i8*, i8** %8, align 8, !dbg !621
  %66 = load i8, i8* %65, align 1, !dbg !623
  %67 = sext i8 %66 to i32, !dbg !623
  %68 = icmp ne i32 %67, 0, !dbg !624
  br i1 %68, label %69, label %70, !dbg !625

; <label>:69:                                     ; preds = %44
  store i8 0, i8* %3, align 1, !dbg !626
  br label %123, !dbg !626

; <label>:70:                                     ; preds = %44
  %71 = load i8*, i8** %5, align 8, !dbg !628
  %72 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !628
  %73 = load i8, i8* %72, align 1, !dbg !628
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !629
  store i8 %73, i8* %74, align 16, !dbg !630
  %75 = load i8*, i8** %5, align 8, !dbg !631
  %76 = getelementptr inbounds i8, i8* %75, i64 5, !dbg !631
  %77 = load i8, i8* %76, align 1, !dbg !631
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1, !dbg !632
  store i8 %77, i8* %78, align 1, !dbg !633
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2, !dbg !634
  store i8 0, i8* %79, align 2, !dbg !635
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !636
  %81 = call i64 @strtol(i8* %80, i8** %8, i32 10) #9, !dbg !637
  %82 = trunc i64 %81 to i32, !dbg !637
  store i32 %82, i32* %10, align 4, !dbg !638
  %83 = load i8*, i8** %8, align 8, !dbg !639
  %84 = load i8, i8* %83, align 1, !dbg !641
  %85 = sext i8 %84 to i32, !dbg !641
  %86 = icmp ne i32 %85, 0, !dbg !642
  br i1 %86, label %87, label %88, !dbg !643

; <label>:87:                                     ; preds = %70
  store i8 0, i8* %3, align 1, !dbg !644
  br label %123, !dbg !644

; <label>:88:                                     ; preds = %70
  %89 = load i8*, i8** %5, align 8, !dbg !646
  %90 = getelementptr inbounds i8, i8* %89, i64 6, !dbg !646
  %91 = load i8, i8* %90, align 1, !dbg !646
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !647
  store i8 %91, i8* %92, align 16, !dbg !648
  %93 = load i8*, i8** %5, align 8, !dbg !649
  %94 = getelementptr inbounds i8, i8* %93, i64 7, !dbg !649
  %95 = load i8, i8* %94, align 1, !dbg !649
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1, !dbg !650
  store i8 %95, i8* %96, align 1, !dbg !651
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2, !dbg !652
  store i8 0, i8* %97, align 2, !dbg !653
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !654
  %99 = call i64 @strtol(i8* %98, i8** %8, i32 10) #9, !dbg !655
  %100 = trunc i64 %99 to i32, !dbg !655
  store i32 %100, i32* %11, align 4, !dbg !656
  %101 = load i8*, i8** %8, align 8, !dbg !657
  %102 = load i8, i8* %101, align 1, !dbg !659
  %103 = sext i8 %102 to i32, !dbg !659
  %104 = icmp ne i32 %103, 0, !dbg !660
  br i1 %104, label %105, label %106, !dbg !661

; <label>:105:                                    ; preds = %88
  store i8 0, i8* %3, align 1, !dbg !662
  br label %123, !dbg !662

; <label>:106:                                    ; preds = %88
  %107 = load i32, i32* %9, align 4, !dbg !664
  %108 = load i32, i32* %10, align 4, !dbg !666
  %109 = load i32, i32* %11, align 4, !dbg !667
  %110 = call signext i8 @TimeUtilIsValidDate(i32 %107, i32 %108, i32 %109), !dbg !668
  %111 = icmp ne i8 %110, 0, !dbg !668
  br i1 %111, label %113, label %112, !dbg !669

; <label>:112:                                    ; preds = %106
  store i8 0, i8* %3, align 1, !dbg !670
  br label %123, !dbg !670

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* %9, align 4, !dbg !672
  %115 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !673
  %116 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %115, i32 0, i32 0, !dbg !674
  store i32 %114, i32* %116, align 4, !dbg !675
  %117 = load i32, i32* %10, align 4, !dbg !676
  %118 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !677
  %119 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %118, i32 0, i32 1, !dbg !678
  store i32 %117, i32* %119, align 4, !dbg !679
  %120 = load i32, i32* %11, align 4, !dbg !680
  %121 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !681
  %122 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %121, i32 0, i32 2, !dbg !682
  store i32 %120, i32* %122, align 4, !dbg !683
  store i8 1, i8* %3, align 1, !dbg !684
  br label %123, !dbg !684

; <label>:123:                                    ; preds = %113, %112, %105, %87, %69, %39, %16
  %124 = load i8, i8* %3, align 1, !dbg !685
  ret i8 %124, !dbg !685
}

declare i8* @Str_Strcpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @TimeUtil_DeltaDays(%struct.TimeUtil_Date*, %struct.TimeUtil_Date*) #0 !dbg !686 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca %struct.TimeUtil_Date*, align 8
  %6 = alloca %struct.TimeUtil_Date, align 4
  %7 = alloca %struct.TimeUtil_Date, align 4
  %8 = alloca %struct.TimeUtil_Date, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !689, metadata !431), !dbg !690
  store %struct.TimeUtil_Date* %1, %struct.TimeUtil_Date** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %5, metadata !691, metadata !431), !dbg !692
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %6, metadata !693, metadata !431), !dbg !694
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %7, metadata !695, metadata !431), !dbg !696
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %8, metadata !697, metadata !431), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %9, metadata !699, metadata !431), !dbg !700
  store i32 0, i32* %9, align 4, !dbg !700
  call void @llvm.dbg.declare(metadata i8* %10, metadata !701, metadata !431), !dbg !702
  store i8 0, i8* %10, align 1, !dbg !702
  call void @TimeUtilInit(%struct.TimeUtil_Date* %6), !dbg !703
  call void @TimeUtilInit(%struct.TimeUtil_Date* %7), !dbg !704
  call void @TimeUtilInit(%struct.TimeUtil_Date* %8), !dbg !705
  %11 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !706
  %12 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %11, i32 0, i32 0, !dbg !707
  %13 = load i32, i32* %12, align 4, !dbg !707
  %14 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %6, i32 0, i32 0, !dbg !708
  store i32 %13, i32* %14, align 4, !dbg !709
  %15 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !710
  %16 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %15, i32 0, i32 1, !dbg !711
  %17 = load i32, i32* %16, align 4, !dbg !711
  %18 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %6, i32 0, i32 1, !dbg !712
  store i32 %17, i32* %18, align 4, !dbg !713
  %19 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !714
  %20 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %19, i32 0, i32 2, !dbg !715
  %21 = load i32, i32* %20, align 4, !dbg !715
  %22 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %6, i32 0, i32 2, !dbg !716
  store i32 %21, i32* %22, align 4, !dbg !717
  %23 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !718
  %24 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %23, i32 0, i32 0, !dbg !719
  %25 = load i32, i32* %24, align 4, !dbg !719
  %26 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %7, i32 0, i32 0, !dbg !720
  store i32 %25, i32* %26, align 4, !dbg !721
  %27 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !722
  %28 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %27, i32 0, i32 1, !dbg !723
  %29 = load i32, i32* %28, align 4, !dbg !723
  %30 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %7, i32 0, i32 1, !dbg !724
  store i32 %29, i32* %30, align 4, !dbg !725
  %31 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !726
  %32 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %31, i32 0, i32 2, !dbg !727
  %33 = load i32, i32* %32, align 4, !dbg !727
  %34 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %7, i32 0, i32 2, !dbg !728
  store i32 %33, i32* %34, align 4, !dbg !729
  %35 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %6, %struct.TimeUtil_Date* %7), !dbg !730
  %36 = icmp ne i8 %35, 0, !dbg !730
  br i1 %36, label %41, label %37, !dbg !732

; <label>:37:                                     ; preds = %2
  %38 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %7, %struct.TimeUtil_Date* %6), !dbg !733
  %39 = icmp ne i8 %38, 0, !dbg !733
  br i1 %39, label %41, label %40, !dbg !734

; <label>:40:                                     ; preds = %37
  store i32 0, i32* %3, align 4, !dbg !736
  br label %72, !dbg !736

; <label>:41:                                     ; preds = %37, %2
  %42 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %6, %struct.TimeUtil_Date* %7), !dbg !738
  %43 = icmp ne i8 %42, 0, !dbg !738
  br i1 %43, label %44, label %45, !dbg !740

; <label>:44:                                     ; preds = %41
  store i8 0, i8* %10, align 1, !dbg !741
  br label %56, !dbg !743

; <label>:45:                                     ; preds = %41
  %46 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %7, %struct.TimeUtil_Date* %6), !dbg !744
  %47 = icmp ne i8 %46, 0, !dbg !744
  br i1 %47, label %48, label %55, !dbg !744

; <label>:48:                                     ; preds = %45
  store i8 1, i8* %10, align 1, !dbg !747
  %49 = bitcast %struct.TimeUtil_Date* %8 to i8*, !dbg !749
  %50 = bitcast %struct.TimeUtil_Date* %6 to i8*, !dbg !749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 4, i1 false), !dbg !749
  %51 = bitcast %struct.TimeUtil_Date* %6 to i8*, !dbg !750
  %52 = bitcast %struct.TimeUtil_Date* %7 to i8*, !dbg !750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 24, i32 4, i1 false), !dbg !750
  %53 = bitcast %struct.TimeUtil_Date* %7 to i8*, !dbg !751
  %54 = bitcast %struct.TimeUtil_Date* %8 to i8*, !dbg !751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 4, i1 false), !dbg !751
  br label %55, !dbg !752

; <label>:55:                                     ; preds = %48, %45
  br label %56

; <label>:56:                                     ; preds = %55, %44
  br label %57

; <label>:57:                                     ; preds = %56
  store i32 1, i32* %9, align 4, !dbg !753
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %6, i32 1), !dbg !754
  br label %58, !dbg !755

; <label>:58:                                     ; preds = %61, %57
  %59 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %6, %struct.TimeUtil_Date* %7), !dbg !756
  %60 = icmp ne i8 %59, 0, !dbg !757
  br i1 %60, label %61, label %64, !dbg !757

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %9, align 4, !dbg !758
  %63 = add nsw i32 %62, 1, !dbg !758
  store i32 %63, i32* %9, align 4, !dbg !758
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %6, i32 1), !dbg !760
  br label %58, !dbg !761, !llvm.loop !763

; <label>:64:                                     ; preds = %58
  %65 = load i8, i8* %10, align 1, !dbg !764
  %66 = icmp ne i8 %65, 0, !dbg !764
  br i1 %66, label %67, label %70, !dbg !766

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %9, align 4, !dbg !767
  %69 = sub nsw i32 0, %68, !dbg !769
  store i32 %69, i32* %3, align 4, !dbg !770
  br label %72, !dbg !770

; <label>:70:                                     ; preds = %64
  %71 = load i32, i32* %9, align 4, !dbg !771
  store i32 %71, i32* %3, align 4, !dbg !773
  br label %72, !dbg !773

; <label>:72:                                     ; preds = %70, %67, %40
  %73 = load i32, i32* %3, align 4, !dbg !774
  ret i32 %73, !dbg !774
}

; Function Attrs: nounwind uwtable
define internal void @TimeUtilInit(%struct.TimeUtil_Date*) #0 !dbg !775 {
  %2 = alloca %struct.TimeUtil_Date*, align 8
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %2, metadata !778, metadata !431), !dbg !779
  %3 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !780
  %4 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %3, i32 0, i32 0, !dbg !781
  store i32 0, i32* %4, align 4, !dbg !782
  %5 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !783
  %6 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %5, i32 0, i32 1, !dbg !784
  store i32 0, i32* %6, align 4, !dbg !785
  %7 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !786
  %8 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %7, i32 0, i32 2, !dbg !787
  store i32 0, i32* %8, align 4, !dbg !788
  %9 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !789
  %10 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %9, i32 0, i32 3, !dbg !790
  store i32 0, i32* %10, align 4, !dbg !791
  %11 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !792
  %12 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %11, i32 0, i32 4, !dbg !793
  store i32 0, i32* %12, align 4, !dbg !794
  %13 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %2, align 8, !dbg !795
  %14 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %13, i32 0, i32 5, !dbg !796
  store i32 0, i32* %14, align 4, !dbg !797
  ret void, !dbg !798
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date*, %struct.TimeUtil_Date*) #0 !dbg !799 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca %struct.TimeUtil_Date*, align 8
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !802, metadata !431), !dbg !803
  store %struct.TimeUtil_Date* %1, %struct.TimeUtil_Date** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %5, metadata !804, metadata !431), !dbg !805
  %6 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !806
  %7 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %6, i32 0, i32 0, !dbg !808
  %8 = load i32, i32* %7, align 4, !dbg !808
  %9 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !809
  %10 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %9, i32 0, i32 0, !dbg !810
  %11 = load i32, i32* %10, align 4, !dbg !810
  %12 = icmp ult i32 %8, %11, !dbg !811
  br i1 %12, label %13, label %14, !dbg !812

; <label>:13:                                     ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !813
  br label %105, !dbg !813

; <label>:14:                                     ; preds = %2
  %15 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !815
  %16 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %15, i32 0, i32 0, !dbg !817
  %17 = load i32, i32* %16, align 4, !dbg !817
  %18 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !818
  %19 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %18, i32 0, i32 0, !dbg !819
  %20 = load i32, i32* %19, align 4, !dbg !819
  %21 = icmp ugt i32 %17, %20, !dbg !820
  br i1 %21, label %22, label %23, !dbg !821

; <label>:22:                                     ; preds = %14
  store i8 0, i8* %3, align 1, !dbg !822
  br label %105, !dbg !822

; <label>:23:                                     ; preds = %14
  %24 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !824
  %25 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %24, i32 0, i32 1, !dbg !826
  %26 = load i32, i32* %25, align 4, !dbg !826
  %27 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !827
  %28 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %27, i32 0, i32 1, !dbg !828
  %29 = load i32, i32* %28, align 4, !dbg !828
  %30 = icmp ult i32 %26, %29, !dbg !829
  br i1 %30, label %31, label %32, !dbg !830

; <label>:31:                                     ; preds = %23
  store i8 1, i8* %3, align 1, !dbg !831
  br label %105, !dbg !831

; <label>:32:                                     ; preds = %23
  %33 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !833
  %34 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %33, i32 0, i32 1, !dbg !835
  %35 = load i32, i32* %34, align 4, !dbg !835
  %36 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !836
  %37 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %36, i32 0, i32 1, !dbg !837
  %38 = load i32, i32* %37, align 4, !dbg !837
  %39 = icmp ugt i32 %35, %38, !dbg !838
  br i1 %39, label %40, label %41, !dbg !839

; <label>:40:                                     ; preds = %32
  store i8 0, i8* %3, align 1, !dbg !840
  br label %105, !dbg !840

; <label>:41:                                     ; preds = %32
  %42 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !842
  %43 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %42, i32 0, i32 2, !dbg !844
  %44 = load i32, i32* %43, align 4, !dbg !844
  %45 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !845
  %46 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %45, i32 0, i32 2, !dbg !846
  %47 = load i32, i32* %46, align 4, !dbg !846
  %48 = icmp ult i32 %44, %47, !dbg !847
  br i1 %48, label %49, label %50, !dbg !848

; <label>:49:                                     ; preds = %41
  store i8 1, i8* %3, align 1, !dbg !849
  br label %105, !dbg !849

; <label>:50:                                     ; preds = %41
  %51 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !851
  %52 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %51, i32 0, i32 2, !dbg !853
  %53 = load i32, i32* %52, align 4, !dbg !853
  %54 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !854
  %55 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %54, i32 0, i32 2, !dbg !855
  %56 = load i32, i32* %55, align 4, !dbg !855
  %57 = icmp ugt i32 %53, %56, !dbg !856
  br i1 %57, label %58, label %59, !dbg !857

; <label>:58:                                     ; preds = %50
  store i8 0, i8* %3, align 1, !dbg !858
  br label %105, !dbg !858

; <label>:59:                                     ; preds = %50
  %60 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !860
  %61 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %60, i32 0, i32 3, !dbg !862
  %62 = load i32, i32* %61, align 4, !dbg !862
  %63 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !863
  %64 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %63, i32 0, i32 3, !dbg !864
  %65 = load i32, i32* %64, align 4, !dbg !864
  %66 = icmp ult i32 %62, %65, !dbg !865
  br i1 %66, label %67, label %68, !dbg !866

; <label>:67:                                     ; preds = %59
  store i8 1, i8* %3, align 1, !dbg !867
  br label %105, !dbg !867

; <label>:68:                                     ; preds = %59
  %69 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !869
  %70 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %69, i32 0, i32 3, !dbg !871
  %71 = load i32, i32* %70, align 4, !dbg !871
  %72 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !872
  %73 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %72, i32 0, i32 3, !dbg !873
  %74 = load i32, i32* %73, align 4, !dbg !873
  %75 = icmp ugt i32 %71, %74, !dbg !874
  br i1 %75, label %76, label %77, !dbg !875

; <label>:76:                                     ; preds = %68
  store i8 0, i8* %3, align 1, !dbg !876
  br label %105, !dbg !876

; <label>:77:                                     ; preds = %68
  %78 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !878
  %79 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %78, i32 0, i32 4, !dbg !880
  %80 = load i32, i32* %79, align 4, !dbg !880
  %81 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !881
  %82 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %81, i32 0, i32 4, !dbg !882
  %83 = load i32, i32* %82, align 4, !dbg !882
  %84 = icmp ult i32 %80, %83, !dbg !883
  br i1 %84, label %85, label %86, !dbg !884

; <label>:85:                                     ; preds = %77
  store i8 1, i8* %3, align 1, !dbg !885
  br label %105, !dbg !885

; <label>:86:                                     ; preds = %77
  %87 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !887
  %88 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %87, i32 0, i32 4, !dbg !889
  %89 = load i32, i32* %88, align 4, !dbg !889
  %90 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !890
  %91 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %90, i32 0, i32 4, !dbg !891
  %92 = load i32, i32* %91, align 4, !dbg !891
  %93 = icmp ugt i32 %89, %92, !dbg !892
  br i1 %93, label %94, label %95, !dbg !893

; <label>:94:                                     ; preds = %86
  store i8 0, i8* %3, align 1, !dbg !894
  br label %105, !dbg !894

; <label>:95:                                     ; preds = %86
  %96 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !896
  %97 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %96, i32 0, i32 5, !dbg !898
  %98 = load i32, i32* %97, align 4, !dbg !898
  %99 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %5, align 8, !dbg !899
  %100 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %99, i32 0, i32 5, !dbg !900
  %101 = load i32, i32* %100, align 4, !dbg !900
  %102 = icmp ult i32 %98, %101, !dbg !901
  br i1 %102, label %103, label %104, !dbg !902

; <label>:103:                                    ; preds = %95
  store i8 1, i8* %3, align 1, !dbg !903
  br label %105, !dbg !903

; <label>:104:                                    ; preds = %95
  store i8 0, i8* %3, align 1, !dbg !905
  br label %105, !dbg !905

; <label>:105:                                    ; preds = %104, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %106 = load i8, i8* %3, align 1, !dbg !906
  ret i8 %106, !dbg !906
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @TimeUtil_DaysAdd(%struct.TimeUtil_Date*, i32) #0 !dbg !907 {
  %3 = alloca %struct.TimeUtil_Date*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %3, metadata !910, metadata !431), !dbg !911
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !912, metadata !431), !dbg !913
  call void @llvm.dbg.declare(metadata i32** %5, metadata !914, metadata !431), !dbg !915
  call void @llvm.dbg.declare(metadata i32* %6, metadata !916, metadata !431), !dbg !917
  %7 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !918
  %8 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %7, i32 0, i32 0, !dbg !919
  %9 = load i32, i32* %8, align 4, !dbg !919
  %10 = call i32* @TimeUtilMonthDaysForYear(i32 %9), !dbg !920
  store i32* %10, i32** %5, align 8, !dbg !921
  store i32 0, i32* %6, align 4, !dbg !922
  br label %11, !dbg !924

; <label>:11:                                     ; preds = %55, %2
  %12 = load i32, i32* %6, align 4, !dbg !925
  %13 = load i32, i32* %4, align 4, !dbg !928
  %14 = icmp ult i32 %12, %13, !dbg !929
  br i1 %14, label %15, label %58, !dbg !930

; <label>:15:                                     ; preds = %11
  %16 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !931
  %17 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %16, i32 0, i32 2, !dbg !933
  %18 = load i32, i32* %17, align 4, !dbg !934
  %19 = add i32 %18, 1, !dbg !934
  store i32 %19, i32* %17, align 4, !dbg !934
  %20 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !935
  %21 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %20, i32 0, i32 2, !dbg !937
  %22 = load i32, i32* %21, align 4, !dbg !937
  %23 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !938
  %24 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %23, i32 0, i32 1, !dbg !939
  %25 = load i32, i32* %24, align 4, !dbg !939
  %26 = zext i32 %25 to i64, !dbg !940
  %27 = load i32*, i32** %5, align 8, !dbg !940
  %28 = getelementptr inbounds i32, i32* %27, i64 %26, !dbg !940
  %29 = load i32, i32* %28, align 4, !dbg !940
  %30 = icmp ugt i32 %22, %29, !dbg !941
  br i1 %30, label %31, label %54, !dbg !942

; <label>:31:                                     ; preds = %15
  %32 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !943
  %33 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %32, i32 0, i32 2, !dbg !945
  store i32 1, i32* %33, align 4, !dbg !946
  %34 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !947
  %35 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %34, i32 0, i32 1, !dbg !948
  %36 = load i32, i32* %35, align 4, !dbg !949
  %37 = add i32 %36, 1, !dbg !949
  store i32 %37, i32* %35, align 4, !dbg !949
  %38 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !950
  %39 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %38, i32 0, i32 1, !dbg !952
  %40 = load i32, i32* %39, align 4, !dbg !952
  %41 = icmp ugt i32 %40, 12, !dbg !953
  br i1 %41, label %42, label %53, !dbg !954

; <label>:42:                                     ; preds = %31
  %43 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !955
  %44 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %43, i32 0, i32 1, !dbg !957
  store i32 1, i32* %44, align 4, !dbg !958
  %45 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !959
  %46 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %45, i32 0, i32 0, !dbg !960
  %47 = load i32, i32* %46, align 4, !dbg !961
  %48 = add i32 %47, 1, !dbg !961
  store i32 %48, i32* %46, align 4, !dbg !961
  %49 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !962
  %50 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %49, i32 0, i32 0, !dbg !963
  %51 = load i32, i32* %50, align 4, !dbg !963
  %52 = call i32* @TimeUtilMonthDaysForYear(i32 %51), !dbg !964
  store i32* %52, i32** %5, align 8, !dbg !965
  br label %53, !dbg !966

; <label>:53:                                     ; preds = %42, %31
  br label %54, !dbg !967

; <label>:54:                                     ; preds = %53, %15
  br label %55, !dbg !968

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %6, align 4, !dbg !969
  %57 = add i32 %56, 1, !dbg !969
  store i32 %57, i32* %6, align 4, !dbg !969
  br label %11, !dbg !971, !llvm.loop !972

; <label>:58:                                     ; preds = %11
  ret void, !dbg !974
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeUtil_DaysSubtract(%struct.TimeUtil_Date*, i32) #0 !dbg !975 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TimeUtil_Date, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TimeUtil_Date, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !978, metadata !431), !dbg !979
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !980, metadata !431), !dbg !981
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %6, metadata !982, metadata !431), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %7, metadata !984, metadata !431), !dbg !985
  store i32 0, i32* %7, align 4, !dbg !985
  call void @llvm.dbg.declare(metadata i32* %8, metadata !986, metadata !431), !dbg !987
  store i32 0, i32* %8, align 4, !dbg !987
  call void @llvm.dbg.declare(metadata i32* %9, metadata !988, metadata !431), !dbg !989
  store i32 0, i32* %9, align 4, !dbg !989
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %10, metadata !990, metadata !431), !dbg !991
  call void @llvm.dbg.declare(metadata i32* %11, metadata !992, metadata !431), !dbg !993
  store i32 0, i32* %11, align 4, !dbg !993
  call void @llvm.dbg.declare(metadata i32* %12, metadata !994, metadata !431), !dbg !995
  store i32 0, i32* %12, align 4, !dbg !995
  call void @llvm.dbg.declare(metadata i32* %13, metadata !996, metadata !431), !dbg !997
  store i32 0, i32* %13, align 4, !dbg !997
  call void @llvm.dbg.declare(metadata i32* %14, metadata !998, metadata !431), !dbg !999
  %15 = load i32, i32* %5, align 4, !dbg !1000
  store i32 %15, i32* %14, align 4, !dbg !999
  call void @TimeUtilInit(%struct.TimeUtil_Date* %6), !dbg !1001
  call void @TimeUtilInit(%struct.TimeUtil_Date* %10), !dbg !1002
  %16 = load i32, i32* %14, align 4, !dbg !1003
  %17 = add i32 %16, 3, !dbg !1004
  %18 = load i32, i32* %14, align 4, !dbg !1005
  %19 = udiv i32 %18, 365, !dbg !1006
  %20 = mul i32 2, %19, !dbg !1007
  %21 = add i32 %17, %20, !dbg !1008
  store i32 %21, i32* %14, align 4, !dbg !1009
  %22 = load i32, i32* %14, align 4, !dbg !1010
  %23 = udiv i32 %22, 365, !dbg !1011
  store i32 %23, i32* %7, align 4, !dbg !1012
  %24 = load i32, i32* %14, align 4, !dbg !1013
  %25 = urem i32 %24, 365, !dbg !1014
  store i32 %25, i32* %14, align 4, !dbg !1015
  %26 = load i32, i32* %14, align 4, !dbg !1016
  %27 = udiv i32 %26, 30, !dbg !1017
  store i32 %27, i32* %8, align 4, !dbg !1018
  %28 = load i32, i32* %14, align 4, !dbg !1019
  %29 = urem i32 %28, 30, !dbg !1020
  store i32 %29, i32* %9, align 4, !dbg !1021
  %30 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1022
  %31 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %30, i32 0, i32 2, !dbg !1023
  %32 = load i32, i32* %31, align 4, !dbg !1023
  %33 = load i32, i32* %9, align 4, !dbg !1024
  %34 = sub i32 %32, %33, !dbg !1025
  store i32 %34, i32* %13, align 4, !dbg !1026
  br label %35, !dbg !1027

; <label>:35:                                     ; preds = %38, %2
  %36 = load i32, i32* %13, align 4, !dbg !1028
  %37 = icmp sle i32 %36, 0, !dbg !1030
  br i1 %37, label %38, label %43, !dbg !1031

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %13, align 4, !dbg !1032
  %40 = add nsw i32 %39, 30, !dbg !1034
  store i32 %40, i32* %13, align 4, !dbg !1035
  %41 = load i32, i32* %8, align 4, !dbg !1036
  %42 = add nsw i32 %41, 1, !dbg !1036
  store i32 %42, i32* %8, align 4, !dbg !1036
  br label %35, !dbg !1037, !llvm.loop !1039

; <label>:43:                                     ; preds = %35
  %44 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1040
  %45 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %44, i32 0, i32 1, !dbg !1041
  %46 = load i32, i32* %45, align 4, !dbg !1041
  %47 = load i32, i32* %8, align 4, !dbg !1042
  %48 = sub i32 %46, %47, !dbg !1043
  store i32 %48, i32* %12, align 4, !dbg !1044
  br label %49, !dbg !1045

; <label>:49:                                     ; preds = %52, %43
  %50 = load i32, i32* %12, align 4, !dbg !1046
  %51 = icmp sle i32 %50, 0, !dbg !1047
  br i1 %51, label %52, label %57, !dbg !1048

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %12, align 4, !dbg !1049
  %54 = add nsw i32 %53, 12, !dbg !1051
  store i32 %54, i32* %12, align 4, !dbg !1052
  %55 = load i32, i32* %7, align 4, !dbg !1053
  %56 = add nsw i32 %55, 1, !dbg !1053
  store i32 %56, i32* %7, align 4, !dbg !1053
  br label %49, !dbg !1054, !llvm.loop !1055

; <label>:57:                                     ; preds = %49
  %58 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1056
  %59 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %58, i32 0, i32 0, !dbg !1057
  %60 = load i32, i32* %59, align 4, !dbg !1057
  %61 = load i32, i32* %7, align 4, !dbg !1058
  %62 = sub i32 %60, %61, !dbg !1059
  store i32 %62, i32* %11, align 4, !dbg !1060
  %63 = load i32, i32* %11, align 4, !dbg !1061
  %64 = icmp sle i32 %63, 0, !dbg !1063
  br i1 %64, label %65, label %66, !dbg !1064

; <label>:65:                                     ; preds = %57
  store i8 0, i8* %3, align 1, !dbg !1065
  br label %113, !dbg !1065

; <label>:66:                                     ; preds = %57
  %67 = load i32, i32* %13, align 4, !dbg !1067
  %68 = icmp sgt i32 %67, 28, !dbg !1069
  br i1 %68, label %69, label %73, !dbg !1070

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %12, align 4, !dbg !1071
  %71 = icmp eq i32 %70, 2, !dbg !1073
  br i1 %71, label %72, label %73, !dbg !1074

; <label>:72:                                     ; preds = %69
  store i32 28, i32* %13, align 4, !dbg !1075
  br label %73, !dbg !1077

; <label>:73:                                     ; preds = %72, %69, %66
  %74 = load i32, i32* %11, align 4, !dbg !1078
  %75 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 0, !dbg !1079
  store i32 %74, i32* %75, align 4, !dbg !1080
  %76 = load i32, i32* %12, align 4, !dbg !1081
  %77 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 1, !dbg !1082
  store i32 %76, i32* %77, align 4, !dbg !1083
  %78 = load i32, i32* %13, align 4, !dbg !1084
  %79 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 2, !dbg !1085
  store i32 %78, i32* %79, align 4, !dbg !1086
  %80 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1087
  %81 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %80, i32 0, i32 3, !dbg !1088
  %82 = load i32, i32* %81, align 4, !dbg !1088
  %83 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 3, !dbg !1089
  store i32 %82, i32* %83, align 4, !dbg !1090
  %84 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1091
  %85 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %84, i32 0, i32 4, !dbg !1092
  %86 = load i32, i32* %85, align 4, !dbg !1092
  %87 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 4, !dbg !1093
  store i32 %86, i32* %87, align 4, !dbg !1094
  %88 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1095
  %89 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %88, i32 0, i32 5, !dbg !1096
  %90 = load i32, i32* %89, align 4, !dbg !1096
  %91 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 5, !dbg !1097
  store i32 %90, i32* %91, align 4, !dbg !1098
  %92 = bitcast %struct.TimeUtil_Date* %6 to i8*, !dbg !1099
  %93 = bitcast %struct.TimeUtil_Date* %10 to i8*, !dbg !1099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 24, i32 4, i1 false), !dbg !1099
  %94 = load i32, i32* %5, align 4, !dbg !1100
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %6, i32 %94), !dbg !1101
  br label %95, !dbg !1102

; <label>:95:                                     ; preds = %99, %73
  %96 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1103
  %97 = call signext i8 @TimeUtil_DateLowerThan(%struct.TimeUtil_Date* %6, %struct.TimeUtil_Date* %96), !dbg !1104
  %98 = icmp ne i8 %97, 0, !dbg !1105
  br i1 %98, label %99, label %100, !dbg !1105

; <label>:99:                                     ; preds = %95
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %6, i32 1), !dbg !1106
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %10, i32 1), !dbg !1108
  br label %95, !dbg !1109, !llvm.loop !1110

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 0, !dbg !1111
  %102 = load i32, i32* %101, align 4, !dbg !1111
  %103 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1112
  %104 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %103, i32 0, i32 0, !dbg !1113
  store i32 %102, i32* %104, align 4, !dbg !1114
  %105 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 1, !dbg !1115
  %106 = load i32, i32* %105, align 4, !dbg !1115
  %107 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1116
  %108 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %107, i32 0, i32 1, !dbg !1117
  store i32 %106, i32* %108, align 4, !dbg !1118
  %109 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %10, i32 0, i32 2, !dbg !1119
  %110 = load i32, i32* %109, align 4, !dbg !1119
  %111 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1120
  %112 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %111, i32 0, i32 2, !dbg !1121
  store i32 %110, i32* %112, align 4, !dbg !1122
  store i8 1, i8* %3, align 1, !dbg !1123
  br label %113, !dbg !1123

; <label>:113:                                    ; preds = %100, %65
  %114 = load i8, i8* %3, align 1, !dbg !1124
  ret i8 %114, !dbg !1124
}

; Function Attrs: nounwind uwtable
define internal i32* @TimeUtilMonthDaysForYear(i32) #0 !dbg !398 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1125, metadata !431), !dbg !1126
  %3 = load i32, i32* %2, align 4, !dbg !1127
  %4 = urem i32 %3, 4, !dbg !1128
  %5 = icmp eq i32 %4, 0, !dbg !1129
  br i1 %5, label %6, label %16, !dbg !1130

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !1131
  %8 = urem i32 %7, 100, !dbg !1133
  %9 = icmp ne i32 %8, 0, !dbg !1134
  br i1 %9, label %14, label %10, !dbg !1135

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %2, align 4, !dbg !1136
  %12 = urem i32 %11, 400, !dbg !1138
  %13 = icmp eq i32 %12, 0, !dbg !1139
  br label %14, !dbg !1140

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br label %16

; <label>:16:                                     ; preds = %14, %1
  %17 = phi i1 [ false, %1 ], [ %15, %14 ]
  %18 = select i1 %17, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @TimeUtilMonthDaysForYear.leap, i32 0, i32 0), i32* getelementptr inbounds ([13 x i32], [13 x i32]* @TimeUtilMonthDaysForYear.common, i32 0, i32 0), !dbg !1141
  ret i32* %18, !dbg !1143
}

; Function Attrs: nounwind uwtable
define void @TimeUtil_PopulateWithCurrent(i8 signext, %struct.TimeUtil_Date*) #0 !dbg !1144 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Date*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1147, metadata !431), !dbg !1148
  store %struct.TimeUtil_Date* %1, %struct.TimeUtil_Date** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %4, metadata !1149, metadata !431), !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.tm** %5, metadata !1151, metadata !431), !dbg !1153
  call void @llvm.dbg.declare(metadata %struct.tm* %6, metadata !1154, metadata !431), !dbg !1155
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1156, metadata !431), !dbg !1157
  %8 = call i64 @time(i64* null) #9, !dbg !1158
  store i64 %8, i64* %7, align 8, !dbg !1159
  %9 = load i8, i8* %3, align 1, !dbg !1160
  %10 = icmp ne i8 %9, 0, !dbg !1160
  br i1 %10, label %11, label %13, !dbg !1162

; <label>:11:                                     ; preds = %2
  %12 = call %struct.tm* @localtime_r(i64* %7, %struct.tm* %6) #9, !dbg !1163
  store %struct.tm* %12, %struct.tm** %5, align 8, !dbg !1165
  br label %15, !dbg !1166

; <label>:13:                                     ; preds = %2
  %14 = call %struct.tm* @gmtime_r(i64* %7, %struct.tm* %6) #9, !dbg !1167
  store %struct.tm* %14, %struct.tm** %5, align 8, !dbg !1169
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1170
  %17 = icmp ne %struct.tm* %16, null, !dbg !1173
  %18 = xor i1 %17, true, !dbg !1173
  %19 = zext i1 %18 to i32, !dbg !1173
  %20 = sext i32 %19 to i64, !dbg !1174
  %21 = icmp ne i64 %20, 0, !dbg !1175
  br i1 %21, label %22, label %23, !dbg !1176

; <label>:22:                                     ; preds = %15
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 488) #11, !dbg !1177
  unreachable, !dbg !1177

; <label>:23:                                     ; preds = %15
  %24 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1180
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 5, !dbg !1181
  %26 = load i32, i32* %25, align 4, !dbg !1181
  %27 = add nsw i32 1900, %26, !dbg !1182
  %28 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1183
  %29 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %28, i32 0, i32 0, !dbg !1184
  store i32 %27, i32* %29, align 4, !dbg !1185
  %30 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1186
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 4, !dbg !1187
  %32 = load i32, i32* %31, align 8, !dbg !1187
  %33 = add nsw i32 %32, 1, !dbg !1188
  %34 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1189
  %35 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %34, i32 0, i32 1, !dbg !1190
  store i32 %33, i32* %35, align 4, !dbg !1191
  %36 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1192
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 3, !dbg !1193
  %38 = load i32, i32* %37, align 4, !dbg !1193
  %39 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1194
  %40 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %39, i32 0, i32 2, !dbg !1195
  store i32 %38, i32* %40, align 4, !dbg !1196
  %41 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1197
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 2, !dbg !1198
  %43 = load i32, i32* %42, align 8, !dbg !1198
  %44 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1199
  %45 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %44, i32 0, i32 3, !dbg !1200
  store i32 %43, i32* %45, align 4, !dbg !1201
  %46 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1202
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 1, !dbg !1203
  %48 = load i32, i32* %47, align 4, !dbg !1203
  %49 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1204
  %50 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %49, i32 0, i32 4, !dbg !1205
  store i32 %48, i32* %50, align 4, !dbg !1206
  %51 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !1207
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 0, !dbg !1208
  %53 = load i32, i32* %52, align 8, !dbg !1208
  %54 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %4, align 8, !dbg !1209
  %55 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %54, i32 0, i32 5, !dbg !1210
  store i32 %53, i32* %55, align 4, !dbg !1211
  ret void, !dbg !1212
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #3

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

; Function Attrs: nounwind uwtable
define void @TimeUtil_GetTimeOfDay(%struct.TimeUtil_TimeOfDay*) #0 !dbg !1213 {
  %2 = alloca %struct.TimeUtil_TimeOfDay*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.TimeUtil_TimeOfDay* %0, %struct.TimeUtil_TimeOfDay** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_TimeOfDay** %2, metadata !1222, metadata !431), !dbg !1223
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1224, metadata !431), !dbg !1231
  %4 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #9, !dbg !1232
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !1233
  %6 = load i64, i64* %5, align 8, !dbg !1233
  %7 = load %struct.TimeUtil_TimeOfDay*, %struct.TimeUtil_TimeOfDay** %2, align 8, !dbg !1234
  %8 = getelementptr inbounds %struct.TimeUtil_TimeOfDay, %struct.TimeUtil_TimeOfDay* %7, i32 0, i32 0, !dbg !1235
  store i64 %6, i64* %8, align 8, !dbg !1236
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !1237
  %10 = load i64, i64* %9, align 8, !dbg !1237
  %11 = load %struct.TimeUtil_TimeOfDay*, %struct.TimeUtil_TimeOfDay** %2, align 8, !dbg !1238
  %12 = getelementptr inbounds %struct.TimeUtil_TimeOfDay, %struct.TimeUtil_TimeOfDay* %11, i32 0, i32 1, !dbg !1239
  store i64 %10, i64* %12, align 8, !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define i32 @TimeUtil_DaysLeft(%struct.TimeUtil_Date*) #0 !dbg !1242 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TimeUtil_Date*, align 8
  %4 = alloca %struct.TimeUtil_Date, align 4
  %5 = alloca i32, align 4
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %3, metadata !1245, metadata !431), !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date* %4, metadata !1247, metadata !431), !dbg !1248
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1249, metadata !431), !dbg !1250
  call void @TimeUtil_PopulateWithCurrent(i8 signext 1, %struct.TimeUtil_Date* %4), !dbg !1251
  store i32 0, i32* %5, align 4, !dbg !1252
  br label %6, !dbg !1254

; <label>:6:                                      ; preds = %54, %1
  %7 = load i32, i32* %5, align 4, !dbg !1255
  %8 = icmp ult i32 %7, 4097, !dbg !1258
  br i1 %8, label %9, label %57, !dbg !1259

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 0, !dbg !1260
  %11 = load i32, i32* %10, align 4, !dbg !1260
  %12 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1263
  %13 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %12, i32 0, i32 0, !dbg !1264
  %14 = load i32, i32* %13, align 4, !dbg !1264
  %15 = icmp ugt i32 %11, %14, !dbg !1265
  br i1 %15, label %51, label %16, !dbg !1266

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 0, !dbg !1267
  %18 = load i32, i32* %17, align 4, !dbg !1267
  %19 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1268
  %20 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %19, i32 0, i32 0, !dbg !1269
  %21 = load i32, i32* %20, align 4, !dbg !1269
  %22 = icmp eq i32 %18, %21, !dbg !1270
  br i1 %22, label %23, label %30, !dbg !1271

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 1, !dbg !1272
  %25 = load i32, i32* %24, align 4, !dbg !1272
  %26 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1274
  %27 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %26, i32 0, i32 1, !dbg !1275
  %28 = load i32, i32* %27, align 4, !dbg !1275
  %29 = icmp ugt i32 %25, %28, !dbg !1276
  br i1 %29, label %51, label %30, !dbg !1277

; <label>:30:                                     ; preds = %23, %16
  %31 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 0, !dbg !1278
  %32 = load i32, i32* %31, align 4, !dbg !1278
  %33 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1279
  %34 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %33, i32 0, i32 0, !dbg !1280
  %35 = load i32, i32* %34, align 4, !dbg !1280
  %36 = icmp eq i32 %32, %35, !dbg !1281
  br i1 %36, label %37, label %53, !dbg !1282

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 1, !dbg !1283
  %39 = load i32, i32* %38, align 4, !dbg !1283
  %40 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1284
  %41 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %40, i32 0, i32 1, !dbg !1285
  %42 = load i32, i32* %41, align 4, !dbg !1285
  %43 = icmp eq i32 %39, %42, !dbg !1286
  br i1 %43, label %44, label %53, !dbg !1287

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %4, i32 0, i32 2, !dbg !1288
  %46 = load i32, i32* %45, align 4, !dbg !1288
  %47 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1290
  %48 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %47, i32 0, i32 2, !dbg !1291
  %49 = load i32, i32* %48, align 4, !dbg !1291
  %50 = icmp uge i32 %46, %49, !dbg !1292
  br i1 %50, label %51, label %53, !dbg !1293

; <label>:51:                                     ; preds = %44, %23, %9
  %52 = load i32, i32* %5, align 4, !dbg !1295
  store i32 %52, i32* %2, align 4, !dbg !1297
  br label %58, !dbg !1297

; <label>:53:                                     ; preds = %44, %37, %30
  call void @TimeUtil_DaysAdd(%struct.TimeUtil_Date* %4, i32 1), !dbg !1298
  br label %54, !dbg !1299

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %5, align 4, !dbg !1300
  %56 = add i32 %55, 1, !dbg !1300
  store i32 %56, i32* %5, align 4, !dbg !1300
  br label %6, !dbg !1302, !llvm.loop !1303

; <label>:57:                                     ; preds = %6
  store i32 4097, i32* %2, align 4, !dbg !1305
  br label %58, !dbg !1305

; <label>:58:                                     ; preds = %57, %51
  %59 = load i32, i32* %2, align 4, !dbg !1306
  ret i32 %59, !dbg !1306
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeUtil_ExpirationLowerThan(%struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration*) #0 !dbg !1307 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TimeUtil_Expiration*, align 8
  %5 = alloca %struct.TimeUtil_Expiration*, align 8
  store %struct.TimeUtil_Expiration* %0, %struct.TimeUtil_Expiration** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Expiration** %4, metadata !1312, metadata !431), !dbg !1313
  store %struct.TimeUtil_Expiration* %1, %struct.TimeUtil_Expiration** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Expiration** %5, metadata !1314, metadata !431), !dbg !1315
  %6 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1316
  %7 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %6, i32 0, i32 0, !dbg !1318
  %8 = load i8, i8* %7, align 4, !dbg !1318
  %9 = sext i8 %8 to i32, !dbg !1316
  %10 = icmp eq i32 %9, 0, !dbg !1319
  br i1 %10, label %11, label %12, !dbg !1320

; <label>:11:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !1321
  br label %75, !dbg !1321

; <label>:12:                                     ; preds = %2
  %13 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1323
  %14 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %13, i32 0, i32 0, !dbg !1325
  %15 = load i8, i8* %14, align 4, !dbg !1325
  %16 = sext i8 %15 to i32, !dbg !1323
  %17 = icmp eq i32 %16, 0, !dbg !1326
  br i1 %17, label %18, label %19, !dbg !1327

; <label>:18:                                     ; preds = %12
  store i8 1, i8* %3, align 1, !dbg !1328
  br label %75, !dbg !1328

; <label>:19:                                     ; preds = %12
  %20 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1330
  %21 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %20, i32 0, i32 1, !dbg !1332
  %22 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %21, i32 0, i32 0, !dbg !1333
  %23 = load i32, i32* %22, align 4, !dbg !1333
  %24 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1334
  %25 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %24, i32 0, i32 1, !dbg !1335
  %26 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %25, i32 0, i32 0, !dbg !1336
  %27 = load i32, i32* %26, align 4, !dbg !1336
  %28 = icmp ult i32 %23, %27, !dbg !1337
  br i1 %28, label %29, label %30, !dbg !1338

; <label>:29:                                     ; preds = %19
  store i8 1, i8* %3, align 1, !dbg !1339
  br label %75, !dbg !1339

; <label>:30:                                     ; preds = %19
  %31 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1341
  %32 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %31, i32 0, i32 1, !dbg !1343
  %33 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %32, i32 0, i32 0, !dbg !1344
  %34 = load i32, i32* %33, align 4, !dbg !1344
  %35 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1345
  %36 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %35, i32 0, i32 1, !dbg !1346
  %37 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %36, i32 0, i32 0, !dbg !1347
  %38 = load i32, i32* %37, align 4, !dbg !1347
  %39 = icmp ugt i32 %34, %38, !dbg !1348
  br i1 %39, label %40, label %41, !dbg !1349

; <label>:40:                                     ; preds = %30
  store i8 0, i8* %3, align 1, !dbg !1350
  br label %75, !dbg !1350

; <label>:41:                                     ; preds = %30
  %42 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1352
  %43 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %42, i32 0, i32 1, !dbg !1354
  %44 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %43, i32 0, i32 1, !dbg !1355
  %45 = load i32, i32* %44, align 4, !dbg !1355
  %46 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1356
  %47 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %46, i32 0, i32 1, !dbg !1357
  %48 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %47, i32 0, i32 1, !dbg !1358
  %49 = load i32, i32* %48, align 4, !dbg !1358
  %50 = icmp ult i32 %45, %49, !dbg !1359
  br i1 %50, label %51, label %52, !dbg !1360

; <label>:51:                                     ; preds = %41
  store i8 1, i8* %3, align 1, !dbg !1361
  br label %75, !dbg !1361

; <label>:52:                                     ; preds = %41
  %53 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1363
  %54 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %53, i32 0, i32 1, !dbg !1365
  %55 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %54, i32 0, i32 1, !dbg !1366
  %56 = load i32, i32* %55, align 4, !dbg !1366
  %57 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1367
  %58 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %57, i32 0, i32 1, !dbg !1368
  %59 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %58, i32 0, i32 1, !dbg !1369
  %60 = load i32, i32* %59, align 4, !dbg !1369
  %61 = icmp ugt i32 %56, %60, !dbg !1370
  br i1 %61, label %62, label %63, !dbg !1371

; <label>:62:                                     ; preds = %52
  store i8 0, i8* %3, align 1, !dbg !1372
  br label %75, !dbg !1372

; <label>:63:                                     ; preds = %52
  %64 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %4, align 8, !dbg !1374
  %65 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %64, i32 0, i32 1, !dbg !1376
  %66 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %65, i32 0, i32 2, !dbg !1377
  %67 = load i32, i32* %66, align 4, !dbg !1377
  %68 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %5, align 8, !dbg !1378
  %69 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %68, i32 0, i32 1, !dbg !1379
  %70 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %69, i32 0, i32 2, !dbg !1380
  %71 = load i32, i32* %70, align 4, !dbg !1380
  %72 = icmp ult i32 %67, %71, !dbg !1381
  br i1 %72, label %73, label %74, !dbg !1382

; <label>:73:                                     ; preds = %63
  store i8 1, i8* %3, align 1, !dbg !1383
  br label %75, !dbg !1383

; <label>:74:                                     ; preds = %63
  store i8 0, i8* %3, align 1, !dbg !1385
  br label %75, !dbg !1385

; <label>:75:                                     ; preds = %74, %73, %62, %51, %40, %29, %18, %11
  %76 = load i8, i8* %3, align 1, !dbg !1386
  ret i8 %76, !dbg !1386
}

; Function Attrs: nounwind uwtable
define void @TimeUtil_ProductExpiration(%struct.TimeUtil_Expiration*) #0 !dbg !372 {
  %2 = alloca %struct.TimeUtil_Expiration*, align 8
  store %struct.TimeUtil_Expiration* %0, %struct.TimeUtil_Expiration** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Expiration** %2, metadata !1387, metadata !431), !dbg !1388
  %3 = load i8*, i8** @TimeUtil_ProductExpiration.hard_expire, align 8, !dbg !1389
  %4 = load %struct.TimeUtil_Expiration*, %struct.TimeUtil_Expiration** %2, align 8, !dbg !1390
  %5 = getelementptr inbounds %struct.TimeUtil_Expiration, %struct.TimeUtil_Expiration* %4, i32 0, i32 0, !dbg !1391
  store i8 0, i8* %5, align 4, !dbg !1392
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define i8* @TimeUtil_GetTimeFormat(i64, i8 signext, i8 signext) #0 !dbg !1394 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca [26 x i8], align 16
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1397, metadata !431), !dbg !1398
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1399, metadata !431), !dbg !1400
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1401, metadata !431), !dbg !1402
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1403, metadata !431), !dbg !1404
  call void @llvm.dbg.declare(metadata [26 x i8]* %8, metadata !1405, metadata !431), !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1410, metadata !431), !dbg !1412
  %10 = load i64, i64* %4, align 8, !dbg !1413
  store i64 %10, i64* %9, align 8, !dbg !1412
  %11 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i32 0, i32 0, !dbg !1414
  %12 = call i8* @ctime_r(i64* %9, i8* %11) #9, !dbg !1415
  %13 = call i8* @UtilSafeStrdup0(i8* %12), !dbg !1416
  store i8* %13, i8** %7, align 8, !dbg !1418
  %14 = load i8*, i8** %7, align 8, !dbg !1419
  %15 = icmp ne i8* %14, null, !dbg !1421
  br i1 %15, label %16, label %22, !dbg !1422

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %7, align 8, !dbg !1423
  %18 = call i64 @strlen(i8* %17) #10, !dbg !1425
  %19 = sub i64 %18, 1, !dbg !1426
  %20 = load i8*, i8** %7, align 8, !dbg !1427
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !1427
  store i8 0, i8* %21, align 1, !dbg !1428
  br label %22, !dbg !1429

; <label>:22:                                     ; preds = %16, %3
  %23 = load i8*, i8** %7, align 8, !dbg !1430
  ret i8* %23, !dbg !1431
}

declare i8* @UtilSafeStrdup0(i8*) #5

; Function Attrs: nounwind
declare i8* @ctime_r(i64*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @TimeUtil_NtTimeToUnixTime(%struct.timespec*, i64) #0 !dbg !1432 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %4, metadata !1441, metadata !431), !dbg !1442
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1443, metadata !431), !dbg !1444
  %6 = load i64, i64* %5, align 8, !dbg !1445
  %7 = icmp ult i64 %6, 116444736000000000, !dbg !1447
  br i1 %7, label %8, label %13, !dbg !1448

; <label>:8:                                      ; preds = %2
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !1449
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0, !dbg !1451
  store i64 0, i64* %10, align 8, !dbg !1452
  %11 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !1453
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1, !dbg !1454
  store i64 0, i64* %12, align 8, !dbg !1455
  store i32 -1, i32* %3, align 4, !dbg !1456
  br label %25, !dbg !1456

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %5, align 8, !dbg !1457
  %15 = sub i64 %14, 116444736000000000, !dbg !1458
  %16 = udiv i64 %15, 10000000, !dbg !1459
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !1460
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0, !dbg !1461
  store i64 %16, i64* %18, align 8, !dbg !1462
  %19 = load i64, i64* %5, align 8, !dbg !1463
  %20 = sub i64 %19, 116444736000000000, !dbg !1464
  %21 = urem i64 %20, 10000000, !dbg !1465
  %22 = mul i64 %21, 100, !dbg !1466
  %23 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !1467
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1, !dbg !1468
  store i64 %22, i64* %24, align 8, !dbg !1469
  store i32 0, i32* %3, align 4, !dbg !1470
  br label %25, !dbg !1470

; <label>:25:                                     ; preds = %13, %8
  %26 = load i32, i32* %3, align 4, !dbg !1471
  ret i32 %26, !dbg !1471
}

; Function Attrs: nounwind uwtable
define i64 @TimeUtil_UnixTimeToNtTime(i64, i64) #0 !dbg !1472 {
  %3 = alloca %struct.timespec, align 8
  %4 = bitcast %struct.timespec* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !1475, metadata !431), !dbg !1476
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !1477
  %8 = load i64, i64* %7, align 8, !dbg !1477
  %9 = mul nsw i64 %8, 10000000, !dbg !1478
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !1479
  %11 = load i64, i64* %10, align 8, !dbg !1479
  %12 = sdiv i64 %11, 100, !dbg !1480
  %13 = add nsw i64 %9, %12, !dbg !1481
  %14 = add i64 %13, 116444736000000000, !dbg !1482
  ret i64 %14, !dbg !1483
}

; Function Attrs: nounwind uwtable
define i32 @TimeUtil_GetLocalWindowsTimeZoneIndexAndName(i8**) #0 !dbg !1484 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1488, metadata !431), !dbg !1489
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1490, metadata !431), !dbg !1491
  store i32 0, i32* %3, align 4, !dbg !1491
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1492, metadata !431), !dbg !1493
  store i32 -1, i32* %4, align 4, !dbg !1493
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1494, metadata !431), !dbg !1495
  store i8* null, i8** %5, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1496, metadata !431), !dbg !1497
  store i8* null, i8** %6, align 8, !dbg !1497
  %9 = load i8**, i8*** %2, align 8, !dbg !1498
  store i8* null, i8** %9, align 8, !dbg !1499
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1500, metadata !431), !dbg !1502
  %10 = call i64 @time(i64* null) #9, !dbg !1503
  store i64 %10, i64* %7, align 8, !dbg !1502
  call void @llvm.dbg.declare(metadata %struct.tm* %8, metadata !1504, metadata !431), !dbg !1505
  %11 = call %struct.tm* @localtime_r(i64* %7, %struct.tm* %8) #9, !dbg !1506
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 9, !dbg !1507
  %13 = load i64, i64* %12, align 8, !dbg !1507
  %14 = sdiv i64 %13, 60, !dbg !1508
  %15 = trunc i64 %14 to i32, !dbg !1509
  store i32 %15, i32* %3, align 4, !dbg !1510
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 8, !dbg !1511
  %17 = load i32, i32* %16, align 8, !dbg !1511
  %18 = icmp ne i32 %17, 0, !dbg !1513
  br i1 %18, label %19, label %22, !dbg !1514

; <label>:19:                                     ; preds = %1
  %20 = load i32, i32* %3, align 4, !dbg !1515
  %21 = sub nsw i32 %20, 60, !dbg !1515
  store i32 %21, i32* %3, align 4, !dbg !1515
  br label %22, !dbg !1517

; <label>:22:                                     ; preds = %19, %1
  store i32 -1, i32* %4, align 4, !dbg !1518
  %23 = load i32, i32* %3, align 4, !dbg !1519
  %24 = load i8*, i8** %6, align 8, !dbg !1520
  %25 = call i32 @TimeUtilFindIndexAndName(i32 %23, i8* %24, i8** %5), !dbg !1521
  store i32 %25, i32* %4, align 4, !dbg !1522
  %26 = load i32, i32* %4, align 4, !dbg !1523
  %27 = icmp sge i32 %26, 0, !dbg !1525
  br i1 %27, label %28, label %32, !dbg !1526

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %5, align 8, !dbg !1527
  %30 = call i8* @Unicode_AllocWithUTF8(i8* %29), !dbg !1529
  %31 = load i8**, i8*** %2, align 8, !dbg !1530
  store i8* %30, i8** %31, align 8, !dbg !1531
  br label %32, !dbg !1532

; <label>:32:                                     ; preds = %28, %22
  %33 = load i8*, i8** %6, align 8, !dbg !1533
  call void @free(i8* %33) #9, !dbg !1534
  store i8* null, i8** %6, align 8, !dbg !1535
  %34 = load i32, i32* %4, align 4, !dbg !1536
  ret i32 %34, !dbg !1537
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeUtilFindIndexAndName(i32, i8*, i8**) #0 !dbg !408 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1538, metadata !431), !dbg !1539
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1540, metadata !431), !dbg !1541
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1542, metadata !431), !dbg !1543
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1544, metadata !431), !dbg !1547
  store i64 75, i64* %8, align 8, !dbg !1547
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1548, metadata !431), !dbg !1549
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1550, metadata !431), !dbg !1551
  store i32 -1, i32* %10, align 4, !dbg !1551
  %11 = load i8**, i8*** %7, align 8, !dbg !1552
  store i8* null, i8** %11, align 8, !dbg !1553
  store i64 0, i64* %9, align 8, !dbg !1554
  br label %12, !dbg !1556

; <label>:12:                                     ; preds = %72, %3
  %13 = load i64, i64* %9, align 8, !dbg !1557
  %14 = load i64, i64* %8, align 8, !dbg !1560
  %15 = icmp ult i64 %13, %14, !dbg !1561
  br i1 %15, label %16, label %75, !dbg !1562

; <label>:16:                                     ; preds = %12
  %17 = load i64, i64* %9, align 8, !dbg !1563
  %18 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %17, !dbg !1566
  %19 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %18, i32 0, i32 2, !dbg !1567
  %20 = load i32, i32* %19, align 8, !dbg !1567
  %21 = load i32, i32* %5, align 4, !dbg !1568
  %22 = icmp eq i32 %20, %21, !dbg !1569
  br i1 %22, label %23, label %71, !dbg !1570

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %9, align 8, !dbg !1571
  %25 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %24, !dbg !1573
  %26 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %25, i32 0, i32 0, !dbg !1574
  %27 = load i32, i32* %26, align 8, !dbg !1574
  store i32 %27, i32* %10, align 4, !dbg !1575
  %28 = load i64, i64* %9, align 8, !dbg !1576
  %29 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %28, !dbg !1577
  %30 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %29, i32 0, i32 1, !dbg !1578
  %31 = load i8*, i8** %30, align 8, !dbg !1578
  %32 = load i8**, i8*** %7, align 8, !dbg !1579
  store i8* %31, i8** %32, align 8, !dbg !1580
  br label %33, !dbg !1581

; <label>:33:                                     ; preds = %67, %23
  %34 = load i8*, i8** %6, align 8, !dbg !1582
  %35 = icmp ne i8* %34, null, !dbg !1584
  br i1 %35, label %36, label %47, !dbg !1585

; <label>:36:                                     ; preds = %33
  %37 = load i64, i64* %9, align 8, !dbg !1586
  %38 = load i64, i64* %8, align 8, !dbg !1587
  %39 = icmp ult i64 %37, %38, !dbg !1588
  br i1 %39, label %40, label %47, !dbg !1589

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %9, align 8, !dbg !1590
  %42 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %41, !dbg !1591
  %43 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %42, i32 0, i32 2, !dbg !1592
  %44 = load i32, i32* %43, align 8, !dbg !1592
  %45 = load i32, i32* %5, align 4, !dbg !1593
  %46 = icmp eq i32 %44, %45, !dbg !1594
  br label %47

; <label>:47:                                     ; preds = %40, %36, %33
  %48 = phi i1 [ false, %36 ], [ false, %33 ], [ %46, %40 ]
  br i1 %48, label %49, label %70, !dbg !1595

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %6, align 8, !dbg !1597
  %51 = load i64, i64* %9, align 8, !dbg !1600
  %52 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %51, !dbg !1601
  %53 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %52, i32 0, i32 1, !dbg !1602
  %54 = load i8*, i8** %53, align 8, !dbg !1602
  %55 = call i32 @strcmp(i8* %50, i8* %54) #10, !dbg !1603
  %56 = icmp eq i32 %55, 0, !dbg !1604
  br i1 %56, label %57, label %67, !dbg !1605

; <label>:57:                                     ; preds = %49
  %58 = load i64, i64* %9, align 8, !dbg !1606
  %59 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %58, !dbg !1608
  %60 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %59, i32 0, i32 1, !dbg !1609
  %61 = load i8*, i8** %60, align 8, !dbg !1609
  %62 = load i8**, i8*** %7, align 8, !dbg !1610
  store i8* %61, i8** %62, align 8, !dbg !1611
  %63 = load i64, i64* %9, align 8, !dbg !1612
  %64 = getelementptr inbounds [75 x %struct._tzinfo], [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE, i64 0, i64 %63, !dbg !1613
  %65 = getelementptr inbounds %struct._tzinfo, %struct._tzinfo* %64, i32 0, i32 0, !dbg !1614
  %66 = load i32, i32* %65, align 8, !dbg !1614
  store i32 %66, i32* %4, align 4, !dbg !1615
  br label %77, !dbg !1615

; <label>:67:                                     ; preds = %49
  %68 = load i64, i64* %9, align 8, !dbg !1616
  %69 = add i64 %68, 1, !dbg !1616
  store i64 %69, i64* %9, align 8, !dbg !1616
  br label %33, !dbg !1617, !llvm.loop !1619

; <label>:70:                                     ; preds = %47
  br label %75, !dbg !1620

; <label>:71:                                     ; preds = %16
  br label %72, !dbg !1621

; <label>:72:                                     ; preds = %71
  %73 = load i64, i64* %9, align 8, !dbg !1622
  %74 = add i64 %73, 1, !dbg !1622
  store i64 %74, i64* %9, align 8, !dbg !1622
  br label %12, !dbg !1624, !llvm.loop !1625

; <label>:75:                                     ; preds = %70, %12
  %76 = load i32, i32* %10, align 4, !dbg !1627
  store i32 %76, i32* %4, align 4, !dbg !1628
  br label %77, !dbg !1628

; <label>:77:                                     ; preds = %75, %57
  %78 = load i32, i32* %4, align 4, !dbg !1629
  ret i32 %78, !dbg !1629
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_AllocWithUTF8(i8*) #7 !dbg !1630 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1634, metadata !431), !dbg !1635
  %3 = load i8*, i8** %2, align 8, !dbg !1636
  %4 = call i8* @Unicode_AllocWithLength(i8* %3, i64 -1, i32 0), !dbg !1637
  ret i8* %4, !dbg !1638
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @TimeUtil_SecondsSinceEpoch(%struct.TimeUtil_Date*) #0 !dbg !1639 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TimeUtil_Date*, align 8
  %4 = alloca %struct.tm, align 8
  store %struct.TimeUtil_Date* %0, %struct.TimeUtil_Date** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeUtil_Date** %3, metadata !1642, metadata !431), !dbg !1643
  call void @llvm.dbg.declare(metadata %struct.tm* %4, metadata !1644, metadata !431), !dbg !1645
  %5 = bitcast %struct.tm* %4 to i8*, !dbg !1645
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false), !dbg !1645
  %6 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1646
  %7 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %6, i32 0, i32 0, !dbg !1648
  %8 = load i32, i32* %7, align 4, !dbg !1648
  %9 = icmp ult i32 %8, 1970, !dbg !1649
  br i1 %9, label %10, label %11, !dbg !1650

; <label>:10:                                     ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !1651
  br label %39, !dbg !1651

; <label>:11:                                     ; preds = %1
  %12 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1653
  %13 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %12, i32 0, i32 0, !dbg !1654
  %14 = load i32, i32* %13, align 4, !dbg !1654
  %15 = sub i32 %14, 1900, !dbg !1655
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5, !dbg !1656
  store i32 %15, i32* %16, align 4, !dbg !1657
  %17 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1658
  %18 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %17, i32 0, i32 1, !dbg !1659
  %19 = load i32, i32* %18, align 4, !dbg !1659
  %20 = sub i32 %19, 1, !dbg !1660
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4, !dbg !1661
  store i32 %20, i32* %21, align 8, !dbg !1662
  %22 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1663
  %23 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %22, i32 0, i32 2, !dbg !1664
  %24 = load i32, i32* %23, align 4, !dbg !1664
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3, !dbg !1665
  store i32 %24, i32* %25, align 4, !dbg !1666
  %26 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1667
  %27 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %26, i32 0, i32 3, !dbg !1668
  %28 = load i32, i32* %27, align 4, !dbg !1668
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2, !dbg !1669
  store i32 %28, i32* %29, align 8, !dbg !1670
  %30 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1671
  %31 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %30, i32 0, i32 4, !dbg !1672
  %32 = load i32, i32* %31, align 4, !dbg !1672
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1, !dbg !1673
  store i32 %32, i32* %33, align 4, !dbg !1674
  %34 = load %struct.TimeUtil_Date*, %struct.TimeUtil_Date** %3, align 8, !dbg !1675
  %35 = getelementptr inbounds %struct.TimeUtil_Date, %struct.TimeUtil_Date* %34, i32 0, i32 5, !dbg !1676
  %36 = load i32, i32* %35, align 4, !dbg !1676
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0, !dbg !1677
  store i32 %36, i32* %37, align 8, !dbg !1678
  %38 = call i64 @timegm(%struct.tm* %4) #9, !dbg !1679
  store i64 %38, i64* %2, align 8, !dbg !1680
  br label %39, !dbg !1680

; <label>:39:                                     ; preds = %11, %10
  %40 = load i64, i64* %2, align 8, !dbg !1681
  ret i64 %40, !dbg !1681
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) #3

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @TimeUtilIsValidDate(i32, i32, i32) #0 !dbg !1682 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1685, metadata !431), !dbg !1686
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1687, metadata !431), !dbg !1688
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1689, metadata !431), !dbg !1690
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1691, metadata !431), !dbg !1692
  %9 = load i32, i32* %5, align 4, !dbg !1693
  %10 = call i32* @TimeUtilMonthDaysForYear(i32 %9), !dbg !1694
  store i32* %10, i32** %8, align 8, !dbg !1695
  %11 = load i32, i32* %5, align 4, !dbg !1696
  %12 = icmp uge i32 %11, 1, !dbg !1698
  br i1 %12, label %13, label %31, !dbg !1699

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4, !dbg !1700
  %15 = icmp uge i32 %14, 1, !dbg !1701
  br i1 %15, label %16, label %31, !dbg !1702

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %6, align 4, !dbg !1703
  %18 = icmp ule i32 %17, 12, !dbg !1705
  br i1 %18, label %19, label %31, !dbg !1706

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1707
  %21 = icmp uge i32 %20, 1, !dbg !1708
  br i1 %21, label %22, label %31, !dbg !1709

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %7, align 4, !dbg !1710
  %24 = load i32, i32* %6, align 4, !dbg !1711
  %25 = zext i32 %24 to i64, !dbg !1712
  %26 = load i32*, i32** %8, align 8, !dbg !1712
  %27 = getelementptr inbounds i32, i32* %26, i64 %25, !dbg !1712
  %28 = load i32, i32* %27, align 4, !dbg !1712
  %29 = icmp ule i32 %23, %28, !dbg !1713
  br i1 %29, label %30, label %31, !dbg !1714

; <label>:30:                                     ; preds = %22
  store i8 1, i8* %4, align 1, !dbg !1716
  br label %32, !dbg !1716

; <label>:31:                                     ; preds = %22, %19, %16, %13, %3
  store i8 0, i8* %4, align 1, !dbg !1718
  br label %32, !dbg !1718

; <label>:32:                                     ; preds = %31, %30
  %33 = load i8, i8* %4, align 1, !dbg !1719
  ret i8 %33, !dbg !1719
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!422, !423}
!llvm.ident = !{!424}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !351, globals: !370)
!1 = !DIFile(filename: "timeutil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!2 = !{!3, !336}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!6 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!7 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!8 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!9 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!10 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!11 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!12 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!13 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!14 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!15 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!16 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!17 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!18 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!19 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!20 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!21 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!22 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!23 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!24 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!25 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!26 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!28 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!29 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!30 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!31 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!32 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!33 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!34 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!35 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!37 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!38 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!40 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!41 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!42 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!43 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!44 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!45 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!46 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!47 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!48 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!49 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!50 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!51 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!52 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!53 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!54 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!55 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!56 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!57 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!58 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!59 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!60 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!61 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!62 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!63 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!64 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!65 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!66 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!67 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!68 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!69 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!70 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!71 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!72 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!73 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!74 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!75 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!76 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!77 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!78 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!79 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!80 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!81 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!82 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!83 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!84 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!85 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!86 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!87 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!88 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!89 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!90 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!91 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!92 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!93 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!94 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!95 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!96 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!97 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!98 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!99 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!100 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!101 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!102 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!103 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!104 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!105 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!106 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!107 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!108 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!109 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!110 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!111 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!112 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!113 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!115 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!116 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!117 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!118 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!119 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!120 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!121 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!122 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!123 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!124 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!126 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!127 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!128 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!129 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!130 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!131 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!132 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!133 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!134 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!135 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!136 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!137 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!138 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!139 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!140 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!141 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!142 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!143 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!144 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!147 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!148 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!149 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!150 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!151 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!152 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!153 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!154 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!155 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!156 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!157 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!159 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!160 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!161 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!162 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!163 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!164 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!165 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!166 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!167 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!168 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!169 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!170 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!171 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!172 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!173 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!174 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!175 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!176 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!177 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!178 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!179 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!180 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!181 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!182 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!183 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!184 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!185 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!186 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!187 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!188 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!189 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!190 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!217 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!218 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!219 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!220 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!221 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!222 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!223 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!224 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!225 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!226 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!227 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!228 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!232 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!233 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!234 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!235 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!236 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!237 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!238 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!239 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!240 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!241 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!242 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!243 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!244 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!245 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!246 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!247 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!248 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!249 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!250 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!253 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!255 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!256 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!257 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!258 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!259 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!260 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!261 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!262 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!263 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!264 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!265 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!266 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!267 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!268 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!269 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!270 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!271 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!272 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!322 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!323 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!324 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!326 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!327 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!328 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!331 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!332 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!333 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!334 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!335 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 46, size: 32, align: 32, elements: !338)
!337 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!339 = !DIEnumerator(name: "_ISupper", value: 256)
!340 = !DIEnumerator(name: "_ISlower", value: 512)
!341 = !DIEnumerator(name: "_ISalpha", value: 1024)
!342 = !DIEnumerator(name: "_ISdigit", value: 2048)
!343 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!344 = !DIEnumerator(name: "_ISspace", value: 8192)
!345 = !DIEnumerator(name: "_ISprint", value: 16384)
!346 = !DIEnumerator(name: "_ISgraph", value: 32768)
!347 = !DIEnumerator(name: "_ISblank", value: 1)
!348 = !DIEnumerator(name: "_IScntrl", value: 2)
!349 = !DIEnumerator(name: "_ISpunct", value: 4)
!350 = !DIEnumerator(name: "_ISalnum", value: 8)
!351 = !{!352, !353, !358, !359, !363, !367, !368, !369}
!352 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !354, line: 75, baseType: !355)
!354 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !356, line: 139, baseType: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!357 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !360, line: 171, baseType: !361)
!360 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !362, line: 55, baseType: !352)
!362 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !360, line: 354, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !360, line: 172, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !366, line: 197, baseType: !357)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!367 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!368 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!369 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!370 = !{!371, !397, !406, !407}
!371 = distinct !DIGlobalVariable(name: "hard_expire", scope: !372, file: !373, line: 788, type: !396, isLocal: true, isDefinition: true, variable: i8** @TimeUtil_ProductExpiration.hard_expire)
!372 = distinct !DISubprogram(name: "TimeUtil_ProductExpiration", scope: !373, file: !373, line: 761, type: !374, isLocal: false, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!373 = !DIFile(filename: "timeutil.c", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeUtil_Expiration", file: !378, line: 92, baseType: !379)
!378 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/timeutil.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TimeUtil_Expiration", file: !378, line: 70, size: 256, align: 32, elements: !380)
!380 = !{!381, !384, !394}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !379, file: !378, line: 75, baseType: !382, size: 8, align: 8)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !360, line: 230, baseType: !383)
!383 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !379, file: !378, line: 84, baseType: !385, size: 192, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeUtil_Date", file: !378, line: 63, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TimeUtil_Date", file: !378, line: 56, size: 192, align: 32, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !386, file: !378, line: 57, baseType: !369, size: 32, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !386, file: !378, line: 58, baseType: !369, size: 32, align: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !386, file: !378, line: 59, baseType: !369, size: 32, align: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !386, file: !378, line: 60, baseType: !369, size: 32, align: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !386, file: !378, line: 61, baseType: !369, size: 32, align: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !386, file: !378, line: 62, baseType: !369, size: 32, align: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "daysLeft", scope: !379, file: !378, line: 91, baseType: !369, size: 32, align: 32, offset: 224)
!395 = !{}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!397 = distinct !DIGlobalVariable(name: "leap", scope: !398, file: !373, line: 1252, type: !403, isLocal: true, isDefinition: true, variable: [13 x i32]* @TimeUtilMonthDaysForYear.leap)
!398 = distinct !DISubprogram(name: "TimeUtilMonthDaysForYear", scope: !373, file: !373, line: 1250, type: !399, isLocal: true, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !369}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 416, align: 32, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 13)
!406 = distinct !DIGlobalVariable(name: "common", scope: !398, file: !373, line: 1254, type: !403, isLocal: true, isDefinition: true, variable: [13 x i32]* @TimeUtilMonthDaysForYear.common)
!407 = distinct !DIGlobalVariable(name: "TABLE", scope: !408, file: !373, line: 1372, type: !414, isLocal: true, isDefinition: true, variable: [75 x %struct._tzinfo]* @TimeUtilFindIndexAndName.TABLE)
!408 = distinct !DISubprogram(name: "TimeUtilFindIndexAndName", scope: !373, file: !373, line: 1364, type: !409, isLocal: true, isDefinition: true, scopeLine: 1367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!409 = !DISubroutineType(types: !410)
!410 = !{!367, !367, !411, !413}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 14400, align: 64, elements: !420)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tzinfo", scope: !408, file: !373, line: 1368, size: 192, align: 64, elements: !416)
!416 = !{!417, !418, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "winTzIndex", scope: !415, file: !373, line: 1369, baseType: !367, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "winTzName", scope: !415, file: !373, line: 1370, baseType: !411, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "utcStdOffMins", scope: !415, file: !373, line: 1371, baseType: !367, size: 32, align: 32, offset: 128)
!420 = !{!421}
!421 = !DISubrange(count: 75)
!422 = !{i32 2, !"Dwarf Version", i32 4}
!423 = !{i32 2, !"Debug Info Version", i32 3}
!424 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!425 = distinct !DISubprogram(name: "TimeUtil_MakeTime", scope: !373, file: !373, line: 98, type: !426, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!426 = !DISubroutineType(types: !427)
!427 = !{!353, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!430 = !DILocalVariable(name: "d", arg: 1, scope: !425, file: !373, line: 98, type: !428)
!431 = !DIExpression()
!432 = !DILocation(line: 98, column: 40, scope: !425)
!433 = !DILocalVariable(name: "t", scope: !425, file: !373, line: 100, type: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !354, line: 133, size: 448, align: 64, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !434, file: !354, line: 135, baseType: !367, size: 32, align: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !434, file: !354, line: 136, baseType: !367, size: 32, align: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !434, file: !354, line: 137, baseType: !367, size: 32, align: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !434, file: !354, line: 138, baseType: !367, size: 32, align: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !434, file: !354, line: 139, baseType: !367, size: 32, align: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !434, file: !354, line: 140, baseType: !367, size: 32, align: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !434, file: !354, line: 141, baseType: !367, size: 32, align: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !434, file: !354, line: 142, baseType: !367, size: 32, align: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !434, file: !354, line: 143, baseType: !367, size: 32, align: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !434, file: !354, line: 146, baseType: !357, size: 64, align: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !434, file: !354, line: 147, baseType: !411, size: 64, align: 64, offset: 384)
!447 = !DILocation(line: 100, column: 14, scope: !425)
!448 = !DILocation(line: 104, column: 4, scope: !425)
!449 = !DILocation(line: 106, column: 16, scope: !425)
!450 = !DILocation(line: 106, column: 19, scope: !425)
!451 = !DILocation(line: 106, column: 6, scope: !425)
!452 = !DILocation(line: 106, column: 14, scope: !425)
!453 = !DILocation(line: 107, column: 15, scope: !425)
!454 = !DILocation(line: 107, column: 18, scope: !425)
!455 = !DILocation(line: 107, column: 24, scope: !425)
!456 = !DILocation(line: 107, column: 6, scope: !425)
!457 = !DILocation(line: 107, column: 13, scope: !425)
!458 = !DILocation(line: 108, column: 16, scope: !425)
!459 = !DILocation(line: 108, column: 19, scope: !425)
!460 = !DILocation(line: 108, column: 24, scope: !425)
!461 = !DILocation(line: 108, column: 6, scope: !425)
!462 = !DILocation(line: 108, column: 14, scope: !425)
!463 = !DILocation(line: 110, column: 15, scope: !425)
!464 = !DILocation(line: 110, column: 18, scope: !425)
!465 = !DILocation(line: 110, column: 6, scope: !425)
!466 = !DILocation(line: 110, column: 13, scope: !425)
!467 = !DILocation(line: 111, column: 15, scope: !425)
!468 = !DILocation(line: 111, column: 18, scope: !425)
!469 = !DILocation(line: 111, column: 6, scope: !425)
!470 = !DILocation(line: 111, column: 13, scope: !425)
!471 = !DILocation(line: 112, column: 16, scope: !425)
!472 = !DILocation(line: 112, column: 19, scope: !425)
!473 = !DILocation(line: 112, column: 6, scope: !425)
!474 = !DILocation(line: 112, column: 14, scope: !425)
!475 = !DILocation(line: 113, column: 6, scope: !425)
!476 = !DILocation(line: 113, column: 15, scope: !425)
!477 = !DILocation(line: 115, column: 11, scope: !425)
!478 = !DILocation(line: 115, column: 4, scope: !425)
!479 = distinct !DISubprogram(name: "TimeUtil_StringToDate", scope: !373, file: !373, line: 140, type: !480, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!480 = !DISubroutineType(types: !481)
!481 = !{!382, !482, !411}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!483 = !DILocalVariable(name: "d", arg: 1, scope: !479, file: !373, line: 140, type: !482)
!484 = !DILocation(line: 140, column: 38, scope: !479)
!485 = !DILocalVariable(name: "date", arg: 2, scope: !479, file: !373, line: 141, type: !411)
!486 = !DILocation(line: 141, column: 35, scope: !479)
!487 = !DILocation(line: 148, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !373, line: 148, column: 8)
!489 = !DILocation(line: 148, column: 8, scope: !488)
!490 = !DILocation(line: 148, column: 21, scope: !488)
!491 = !DILocation(line: 148, column: 8, scope: !479)
!492 = !DILocation(line: 150, column: 31, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !373, line: 148, column: 27)
!494 = !DILocation(line: 150, column: 34, scope: !493)
!495 = !DILocation(line: 150, column: 14, scope: !493)
!496 = !DILocation(line: 150, column: 7, scope: !493)
!497 = !DILocation(line: 151, column: 22, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !373, line: 151, column: 15)
!499 = !DILocation(line: 151, column: 15, scope: !498)
!500 = !DILocation(line: 151, column: 28, scope: !498)
!501 = !DILocation(line: 151, column: 15, scope: !488)
!502 = !DILocalVariable(name: "temp", scope: !503, file: !373, line: 153, type: !504)
!503 = distinct !DILexicalBlock(scope: !498, file: !373, line: 151, column: 35)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, align: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 16)
!507 = !DILocation(line: 153, column: 12, scope: !503)
!508 = !DILocation(line: 155, column: 15, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !373, line: 155, column: 11)
!510 = !DILocation(line: 155, column: 23, scope: !509)
!511 = !DILocation(line: 155, column: 31, scope: !509)
!512 = !DILocation(line: 155, column: 35, scope: !513)
!513 = !DILexicalBlockFile(scope: !509, file: !373, discriminator: 1)
!514 = !DILocation(line: 155, column: 43, scope: !513)
!515 = !DILocation(line: 155, column: 52, scope: !513)
!516 = !DILocation(line: 156, column: 14, scope: !509)
!517 = !DILocation(line: 156, column: 22, scope: !509)
!518 = !DILocation(line: 156, column: 30, scope: !509)
!519 = !DILocation(line: 156, column: 34, scope: !513)
!520 = !DILocation(line: 156, column: 42, scope: !513)
!521 = !DILocation(line: 155, column: 11, scope: !522)
!522 = !DILexicalBlockFile(scope: !503, file: !373, discriminator: 2)
!523 = !DILocation(line: 157, column: 10, scope: !524)
!524 = distinct !DILexicalBlock(scope: !509, file: !373, line: 156, column: 53)
!525 = !DILocation(line: 160, column: 18, scope: !503)
!526 = !DILocation(line: 160, column: 24, scope: !503)
!527 = !DILocation(line: 160, column: 7, scope: !503)
!528 = !DILocation(line: 161, column: 17, scope: !503)
!529 = !DILocation(line: 161, column: 7, scope: !503)
!530 = !DILocation(line: 161, column: 15, scope: !503)
!531 = !DILocation(line: 162, column: 17, scope: !503)
!532 = !DILocation(line: 162, column: 7, scope: !503)
!533 = !DILocation(line: 162, column: 15, scope: !503)
!534 = !DILocation(line: 163, column: 17, scope: !503)
!535 = !DILocation(line: 163, column: 7, scope: !503)
!536 = !DILocation(line: 163, column: 15, scope: !503)
!537 = !DILocation(line: 164, column: 17, scope: !503)
!538 = !DILocation(line: 164, column: 7, scope: !503)
!539 = !DILocation(line: 164, column: 15, scope: !503)
!540 = !DILocation(line: 165, column: 7, scope: !503)
!541 = !DILocation(line: 165, column: 15, scope: !503)
!542 = !DILocation(line: 167, column: 31, scope: !503)
!543 = !DILocation(line: 167, column: 34, scope: !503)
!544 = !DILocation(line: 167, column: 14, scope: !503)
!545 = !DILocation(line: 167, column: 7, scope: !503)
!546 = !DILocation(line: 169, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !498, file: !373, line: 168, column: 11)
!548 = !DILocation(line: 171, column: 1, scope: !479)
!549 = distinct !DISubprogram(name: "TimeUtilLoadDate", scope: !373, file: !373, line: 1282, type: !480, isLocal: true, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!550 = !DILocalVariable(name: "d", arg: 1, scope: !549, file: !373, line: 1282, type: !482)
!551 = !DILocation(line: 1282, column: 33, scope: !549)
!552 = !DILocalVariable(name: "date", arg: 2, scope: !549, file: !373, line: 1283, type: !411)
!553 = !DILocation(line: 1283, column: 30, scope: !549)
!554 = !DILocalVariable(name: "temp", scope: !549, file: !373, line: 1285, type: !504)
!555 = !DILocation(line: 1285, column: 9, scope: !549)
!556 = !DILocalVariable(name: "i", scope: !549, file: !373, line: 1286, type: !367)
!557 = !DILocation(line: 1286, column: 8, scope: !549)
!558 = !DILocalVariable(name: "end", scope: !549, file: !373, line: 1287, type: !396)
!559 = !DILocation(line: 1287, column: 10, scope: !549)
!560 = !DILocalVariable(name: "year", scope: !549, file: !373, line: 1289, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !360, line: 174, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !366, line: 196, baseType: !367)
!563 = !DILocation(line: 1289, column: 10, scope: !549)
!564 = !DILocalVariable(name: "month", scope: !549, file: !373, line: 1290, type: !561)
!565 = !DILocation(line: 1290, column: 10, scope: !549)
!566 = !DILocalVariable(name: "day", scope: !549, file: !373, line: 1291, type: !561)
!567 = !DILocation(line: 1291, column: 10, scope: !549)
!568 = !DILocation(line: 1296, column: 15, scope: !569)
!569 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1296, column: 8)
!570 = !DILocation(line: 1296, column: 8, scope: !569)
!571 = !DILocation(line: 1296, column: 21, scope: !569)
!572 = !DILocation(line: 1296, column: 8, scope: !549)
!573 = !DILocation(line: 1297, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !569, file: !373, line: 1296, column: 27)
!575 = !DILocation(line: 1299, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1299, column: 4)
!577 = !DILocation(line: 1299, column: 9, scope: !576)
!578 = !DILocation(line: 1299, column: 16, scope: !579)
!579 = !DILexicalBlockFile(scope: !580, file: !373, discriminator: 1)
!580 = distinct !DILexicalBlock(scope: !576, file: !373, line: 1299, column: 4)
!581 = !DILocation(line: 1299, column: 27, scope: !579)
!582 = !DILocation(line: 1299, column: 20, scope: !579)
!583 = !DILocation(line: 1299, column: 18, scope: !579)
!584 = !DILocation(line: 1299, column: 4, scope: !579)
!585 = !DILocation(line: 1300, column: 21, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !373, line: 1300, column: 10)
!587 = distinct !DILexicalBlock(scope: !580, file: !373, line: 1299, column: 39)
!588 = !DILocation(line: 1300, column: 16, scope: !586)
!589 = !DILocation(line: 1300, column: 10, scope: !586)
!590 = !DILocation(line: 1300, column: 11, scope: !586)
!591 = !DILocation(line: 1300, column: 13, scope: !586)
!592 = !DILocation(line: 1300, column: 12, scope: !586)
!593 = !DILocation(line: 1300, column: 14, scope: !586)
!594 = !DILocation(line: 1300, column: 33, scope: !586)
!595 = !DILocation(line: 1300, column: 10, scope: !587)
!596 = !DILocation(line: 1301, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !586, file: !373, line: 1300, column: 39)
!598 = !DILocation(line: 1303, column: 4, scope: !587)
!599 = !DILocation(line: 1299, column: 35, scope: !600)
!600 = !DILexicalBlockFile(scope: !580, file: !373, discriminator: 2)
!601 = !DILocation(line: 1299, column: 4, scope: !600)
!602 = distinct !{!602, !603}
!603 = !DILocation(line: 1299, column: 4, scope: !549)
!604 = !DILocation(line: 1305, column: 14, scope: !549)
!605 = !DILocation(line: 1305, column: 4, scope: !549)
!606 = !DILocation(line: 1305, column: 12, scope: !549)
!607 = !DILocation(line: 1306, column: 14, scope: !549)
!608 = !DILocation(line: 1306, column: 4, scope: !549)
!609 = !DILocation(line: 1306, column: 12, scope: !549)
!610 = !DILocation(line: 1307, column: 14, scope: !549)
!611 = !DILocation(line: 1307, column: 4, scope: !549)
!612 = !DILocation(line: 1307, column: 12, scope: !549)
!613 = !DILocation(line: 1308, column: 14, scope: !549)
!614 = !DILocation(line: 1308, column: 4, scope: !549)
!615 = !DILocation(line: 1308, column: 12, scope: !549)
!616 = !DILocation(line: 1309, column: 4, scope: !549)
!617 = !DILocation(line: 1309, column: 12, scope: !549)
!618 = !DILocation(line: 1310, column: 18, scope: !549)
!619 = !DILocation(line: 1310, column: 11, scope: !549)
!620 = !DILocation(line: 1310, column: 9, scope: !549)
!621 = !DILocation(line: 1311, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1311, column: 8)
!623 = !DILocation(line: 1311, column: 8, scope: !622)
!624 = !DILocation(line: 1311, column: 13, scope: !622)
!625 = !DILocation(line: 1311, column: 8, scope: !549)
!626 = !DILocation(line: 1312, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !373, line: 1311, column: 22)
!628 = !DILocation(line: 1315, column: 14, scope: !549)
!629 = !DILocation(line: 1315, column: 4, scope: !549)
!630 = !DILocation(line: 1315, column: 12, scope: !549)
!631 = !DILocation(line: 1316, column: 14, scope: !549)
!632 = !DILocation(line: 1316, column: 4, scope: !549)
!633 = !DILocation(line: 1316, column: 12, scope: !549)
!634 = !DILocation(line: 1317, column: 4, scope: !549)
!635 = !DILocation(line: 1317, column: 12, scope: !549)
!636 = !DILocation(line: 1318, column: 19, scope: !549)
!637 = !DILocation(line: 1318, column: 12, scope: !549)
!638 = !DILocation(line: 1318, column: 10, scope: !549)
!639 = !DILocation(line: 1319, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1319, column: 8)
!641 = !DILocation(line: 1319, column: 8, scope: !640)
!642 = !DILocation(line: 1319, column: 13, scope: !640)
!643 = !DILocation(line: 1319, column: 8, scope: !549)
!644 = !DILocation(line: 1320, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !373, line: 1319, column: 22)
!646 = !DILocation(line: 1323, column: 14, scope: !549)
!647 = !DILocation(line: 1323, column: 4, scope: !549)
!648 = !DILocation(line: 1323, column: 12, scope: !549)
!649 = !DILocation(line: 1324, column: 14, scope: !549)
!650 = !DILocation(line: 1324, column: 4, scope: !549)
!651 = !DILocation(line: 1324, column: 12, scope: !549)
!652 = !DILocation(line: 1325, column: 4, scope: !549)
!653 = !DILocation(line: 1325, column: 12, scope: !549)
!654 = !DILocation(line: 1326, column: 17, scope: !549)
!655 = !DILocation(line: 1326, column: 10, scope: !549)
!656 = !DILocation(line: 1326, column: 8, scope: !549)
!657 = !DILocation(line: 1327, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1327, column: 8)
!659 = !DILocation(line: 1327, column: 8, scope: !658)
!660 = !DILocation(line: 1327, column: 13, scope: !658)
!661 = !DILocation(line: 1327, column: 8, scope: !549)
!662 = !DILocation(line: 1328, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !373, line: 1327, column: 22)
!664 = !DILocation(line: 1331, column: 44, scope: !665)
!665 = distinct !DILexicalBlock(scope: !549, file: !373, line: 1331, column: 8)
!666 = !DILocation(line: 1331, column: 65, scope: !665)
!667 = !DILocation(line: 1332, column: 44, scope: !665)
!668 = !DILocation(line: 1331, column: 9, scope: !665)
!669 = !DILocation(line: 1331, column: 8, scope: !549)
!670 = !DILocation(line: 1333, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !373, line: 1332, column: 50)
!672 = !DILocation(line: 1336, column: 29, scope: !549)
!673 = !DILocation(line: 1336, column: 4, scope: !549)
!674 = !DILocation(line: 1336, column: 7, scope: !549)
!675 = !DILocation(line: 1336, column: 12, scope: !549)
!676 = !DILocation(line: 1337, column: 30, scope: !549)
!677 = !DILocation(line: 1337, column: 4, scope: !549)
!678 = !DILocation(line: 1337, column: 7, scope: !549)
!679 = !DILocation(line: 1337, column: 13, scope: !549)
!680 = !DILocation(line: 1338, column: 28, scope: !549)
!681 = !DILocation(line: 1338, column: 4, scope: !549)
!682 = !DILocation(line: 1338, column: 7, scope: !549)
!683 = !DILocation(line: 1338, column: 11, scope: !549)
!684 = !DILocation(line: 1340, column: 4, scope: !549)
!685 = !DILocation(line: 1341, column: 1, scope: !549)
!686 = distinct !DISubprogram(name: "TimeUtil_DeltaDays", scope: !373, file: !373, line: 196, type: !687, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!687 = !DISubroutineType(types: !688)
!688 = !{!367, !428, !428}
!689 = !DILocalVariable(name: "left", arg: 1, scope: !686, file: !373, line: 196, type: !428)
!690 = !DILocation(line: 196, column: 41, scope: !686)
!691 = !DILocalVariable(name: "right", arg: 2, scope: !686, file: !373, line: 197, type: !428)
!692 = !DILocation(line: 197, column: 41, scope: !686)
!693 = !DILocalVariable(name: "temp1", scope: !686, file: !373, line: 199, type: !385)
!694 = !DILocation(line: 199, column: 18, scope: !686)
!695 = !DILocalVariable(name: "temp2", scope: !686, file: !373, line: 200, type: !385)
!696 = !DILocation(line: 200, column: 18, scope: !686)
!697 = !DILocalVariable(name: "temp", scope: !686, file: !373, line: 201, type: !385)
!698 = !DILocation(line: 201, column: 18, scope: !686)
!699 = !DILocalVariable(name: "days", scope: !686, file: !373, line: 203, type: !367)
!700 = !DILocation(line: 203, column: 8, scope: !686)
!701 = !DILocalVariable(name: "inverted", scope: !686, file: !373, line: 204, type: !382)
!702 = !DILocation(line: 204, column: 9, scope: !686)
!703 = !DILocation(line: 211, column: 4, scope: !686)
!704 = !DILocation(line: 212, column: 4, scope: !686)
!705 = !DILocation(line: 213, column: 4, scope: !686)
!706 = !DILocation(line: 215, column: 17, scope: !686)
!707 = !DILocation(line: 215, column: 23, scope: !686)
!708 = !DILocation(line: 215, column: 10, scope: !686)
!709 = !DILocation(line: 215, column: 15, scope: !686)
!710 = !DILocation(line: 216, column: 18, scope: !686)
!711 = !DILocation(line: 216, column: 24, scope: !686)
!712 = !DILocation(line: 216, column: 10, scope: !686)
!713 = !DILocation(line: 216, column: 16, scope: !686)
!714 = !DILocation(line: 217, column: 16, scope: !686)
!715 = !DILocation(line: 217, column: 22, scope: !686)
!716 = !DILocation(line: 217, column: 10, scope: !686)
!717 = !DILocation(line: 217, column: 14, scope: !686)
!718 = !DILocation(line: 218, column: 17, scope: !686)
!719 = !DILocation(line: 218, column: 24, scope: !686)
!720 = !DILocation(line: 218, column: 10, scope: !686)
!721 = !DILocation(line: 218, column: 15, scope: !686)
!722 = !DILocation(line: 219, column: 18, scope: !686)
!723 = !DILocation(line: 219, column: 25, scope: !686)
!724 = !DILocation(line: 219, column: 10, scope: !686)
!725 = !DILocation(line: 219, column: 16, scope: !686)
!726 = !DILocation(line: 220, column: 16, scope: !686)
!727 = !DILocation(line: 220, column: 23, scope: !686)
!728 = !DILocation(line: 220, column: 10, scope: !686)
!729 = !DILocation(line: 220, column: 14, scope: !686)
!730 = !DILocation(line: 222, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !686, file: !373, line: 222, column: 8)
!732 = !DILocation(line: 222, column: 48, scope: !731)
!733 = !DILocation(line: 223, column: 9, scope: !731)
!734 = !DILocation(line: 222, column: 8, scope: !735)
!735 = !DILexicalBlockFile(scope: !686, file: !373, discriminator: 1)
!736 = !DILocation(line: 224, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !731, file: !373, line: 223, column: 49)
!738 = !DILocation(line: 225, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !731, file: !373, line: 225, column: 15)
!740 = !DILocation(line: 225, column: 15, scope: !731)
!741 = !DILocation(line: 226, column: 16, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !373, line: 225, column: 55)
!743 = !DILocation(line: 227, column: 4, scope: !742)
!744 = !DILocation(line: 227, column: 15, scope: !745)
!745 = !DILexicalBlockFile(scope: !746, file: !373, discriminator: 1)
!746 = distinct !DILexicalBlock(scope: !739, file: !373, line: 227, column: 15)
!747 = !DILocation(line: 228, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !746, file: !373, line: 227, column: 55)
!749 = !DILocation(line: 229, column: 14, scope: !748)
!750 = !DILocation(line: 230, column: 15, scope: !748)
!751 = !DILocation(line: 231, column: 15, scope: !748)
!752 = !DILocation(line: 232, column: 4, scope: !748)
!753 = !DILocation(line: 234, column: 9, scope: !686)
!754 = !DILocation(line: 235, column: 4, scope: !686)
!755 = !DILocation(line: 236, column: 4, scope: !686)
!756 = !DILocation(line: 236, column: 11, scope: !735)
!757 = !DILocation(line: 236, column: 4, scope: !735)
!758 = !DILocation(line: 237, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !686, file: !373, line: 236, column: 51)
!760 = !DILocation(line: 238, column: 7, scope: !759)
!761 = !DILocation(line: 236, column: 4, scope: !762)
!762 = !DILexicalBlockFile(scope: !686, file: !373, discriminator: 2)
!763 = distinct !{!763, !755}
!764 = !DILocation(line: 241, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !686, file: !373, line: 241, column: 8)
!766 = !DILocation(line: 241, column: 8, scope: !686)
!767 = !DILocation(line: 242, column: 15, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !373, line: 241, column: 18)
!769 = !DILocation(line: 242, column: 14, scope: !768)
!770 = !DILocation(line: 242, column: 7, scope: !768)
!771 = !DILocation(line: 244, column: 14, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !373, line: 243, column: 11)
!773 = !DILocation(line: 244, column: 7, scope: !772)
!774 = !DILocation(line: 246, column: 1, scope: !686)
!775 = distinct !DISubprogram(name: "TimeUtilInit", scope: !373, file: !373, line: 1177, type: !776, isLocal: true, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !482}
!778 = !DILocalVariable(name: "d", arg: 1, scope: !775, file: !373, line: 1177, type: !482)
!779 = !DILocation(line: 1177, column: 29, scope: !775)
!780 = !DILocation(line: 1181, column: 4, scope: !775)
!781 = !DILocation(line: 1181, column: 7, scope: !775)
!782 = !DILocation(line: 1181, column: 12, scope: !775)
!783 = !DILocation(line: 1182, column: 4, scope: !775)
!784 = !DILocation(line: 1182, column: 7, scope: !775)
!785 = !DILocation(line: 1182, column: 13, scope: !775)
!786 = !DILocation(line: 1183, column: 4, scope: !775)
!787 = !DILocation(line: 1183, column: 7, scope: !775)
!788 = !DILocation(line: 1183, column: 11, scope: !775)
!789 = !DILocation(line: 1184, column: 4, scope: !775)
!790 = !DILocation(line: 1184, column: 7, scope: !775)
!791 = !DILocation(line: 1184, column: 12, scope: !775)
!792 = !DILocation(line: 1185, column: 4, scope: !775)
!793 = !DILocation(line: 1185, column: 7, scope: !775)
!794 = !DILocation(line: 1185, column: 14, scope: !775)
!795 = !DILocation(line: 1186, column: 4, scope: !775)
!796 = !DILocation(line: 1186, column: 7, scope: !775)
!797 = !DILocation(line: 1186, column: 14, scope: !775)
!798 = !DILocation(line: 1188, column: 4, scope: !775)
!799 = distinct !DISubprogram(name: "TimeUtil_DateLowerThan", scope: !373, file: !373, line: 690, type: !800, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!800 = !DISubroutineType(types: !801)
!801 = !{!382, !428, !428}
!802 = !DILocalVariable(name: "left", arg: 1, scope: !799, file: !373, line: 690, type: !428)
!803 = !DILocation(line: 690, column: 45, scope: !799)
!804 = !DILocalVariable(name: "right", arg: 2, scope: !799, file: !373, line: 691, type: !428)
!805 = !DILocation(line: 691, column: 45, scope: !799)
!806 = !DILocation(line: 696, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !799, file: !373, line: 696, column: 8)
!808 = !DILocation(line: 696, column: 14, scope: !807)
!809 = !DILocation(line: 696, column: 21, scope: !807)
!810 = !DILocation(line: 696, column: 28, scope: !807)
!811 = !DILocation(line: 696, column: 19, scope: !807)
!812 = !DILocation(line: 696, column: 8, scope: !799)
!813 = !DILocation(line: 697, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !373, line: 696, column: 34)
!815 = !DILocation(line: 700, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !799, file: !373, line: 700, column: 8)
!817 = !DILocation(line: 700, column: 14, scope: !816)
!818 = !DILocation(line: 700, column: 21, scope: !816)
!819 = !DILocation(line: 700, column: 28, scope: !816)
!820 = !DILocation(line: 700, column: 19, scope: !816)
!821 = !DILocation(line: 700, column: 8, scope: !799)
!822 = !DILocation(line: 701, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !373, line: 700, column: 34)
!824 = !DILocation(line: 704, column: 8, scope: !825)
!825 = distinct !DILexicalBlock(scope: !799, file: !373, line: 704, column: 8)
!826 = !DILocation(line: 704, column: 14, scope: !825)
!827 = !DILocation(line: 704, column: 22, scope: !825)
!828 = !DILocation(line: 704, column: 29, scope: !825)
!829 = !DILocation(line: 704, column: 20, scope: !825)
!830 = !DILocation(line: 704, column: 8, scope: !799)
!831 = !DILocation(line: 705, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !825, file: !373, line: 704, column: 36)
!833 = !DILocation(line: 708, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !799, file: !373, line: 708, column: 8)
!835 = !DILocation(line: 708, column: 14, scope: !834)
!836 = !DILocation(line: 708, column: 22, scope: !834)
!837 = !DILocation(line: 708, column: 29, scope: !834)
!838 = !DILocation(line: 708, column: 20, scope: !834)
!839 = !DILocation(line: 708, column: 8, scope: !799)
!840 = !DILocation(line: 709, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !834, file: !373, line: 708, column: 36)
!842 = !DILocation(line: 712, column: 8, scope: !843)
!843 = distinct !DILexicalBlock(scope: !799, file: !373, line: 712, column: 8)
!844 = !DILocation(line: 712, column: 14, scope: !843)
!845 = !DILocation(line: 712, column: 20, scope: !843)
!846 = !DILocation(line: 712, column: 27, scope: !843)
!847 = !DILocation(line: 712, column: 18, scope: !843)
!848 = !DILocation(line: 712, column: 8, scope: !799)
!849 = !DILocation(line: 713, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !373, line: 712, column: 32)
!851 = !DILocation(line: 716, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !799, file: !373, line: 716, column: 8)
!853 = !DILocation(line: 716, column: 14, scope: !852)
!854 = !DILocation(line: 716, column: 20, scope: !852)
!855 = !DILocation(line: 716, column: 27, scope: !852)
!856 = !DILocation(line: 716, column: 18, scope: !852)
!857 = !DILocation(line: 716, column: 8, scope: !799)
!858 = !DILocation(line: 717, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !373, line: 716, column: 32)
!860 = !DILocation(line: 720, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !799, file: !373, line: 720, column: 8)
!862 = !DILocation(line: 720, column: 14, scope: !861)
!863 = !DILocation(line: 720, column: 21, scope: !861)
!864 = !DILocation(line: 720, column: 28, scope: !861)
!865 = !DILocation(line: 720, column: 19, scope: !861)
!866 = !DILocation(line: 720, column: 8, scope: !799)
!867 = !DILocation(line: 721, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !861, file: !373, line: 720, column: 34)
!869 = !DILocation(line: 724, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !799, file: !373, line: 724, column: 8)
!871 = !DILocation(line: 724, column: 14, scope: !870)
!872 = !DILocation(line: 724, column: 21, scope: !870)
!873 = !DILocation(line: 724, column: 28, scope: !870)
!874 = !DILocation(line: 724, column: 19, scope: !870)
!875 = !DILocation(line: 724, column: 8, scope: !799)
!876 = !DILocation(line: 725, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !870, file: !373, line: 724, column: 34)
!878 = !DILocation(line: 728, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !799, file: !373, line: 728, column: 8)
!880 = !DILocation(line: 728, column: 14, scope: !879)
!881 = !DILocation(line: 728, column: 23, scope: !879)
!882 = !DILocation(line: 728, column: 30, scope: !879)
!883 = !DILocation(line: 728, column: 21, scope: !879)
!884 = !DILocation(line: 728, column: 8, scope: !799)
!885 = !DILocation(line: 729, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !879, file: !373, line: 728, column: 38)
!887 = !DILocation(line: 732, column: 8, scope: !888)
!888 = distinct !DILexicalBlock(scope: !799, file: !373, line: 732, column: 8)
!889 = !DILocation(line: 732, column: 14, scope: !888)
!890 = !DILocation(line: 732, column: 23, scope: !888)
!891 = !DILocation(line: 732, column: 30, scope: !888)
!892 = !DILocation(line: 732, column: 21, scope: !888)
!893 = !DILocation(line: 732, column: 8, scope: !799)
!894 = !DILocation(line: 733, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !888, file: !373, line: 732, column: 38)
!896 = !DILocation(line: 736, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !799, file: !373, line: 736, column: 8)
!898 = !DILocation(line: 736, column: 14, scope: !897)
!899 = !DILocation(line: 736, column: 23, scope: !897)
!900 = !DILocation(line: 736, column: 30, scope: !897)
!901 = !DILocation(line: 736, column: 21, scope: !897)
!902 = !DILocation(line: 736, column: 8, scope: !799)
!903 = !DILocation(line: 737, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !897, file: !373, line: 736, column: 38)
!905 = !DILocation(line: 740, column: 4, scope: !799)
!906 = !DILocation(line: 741, column: 1, scope: !799)
!907 = distinct !DISubprogram(name: "TimeUtil_DaysAdd", scope: !373, file: !373, line: 400, type: !908, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !482, !369}
!910 = !DILocalVariable(name: "d", arg: 1, scope: !907, file: !373, line: 400, type: !482)
!911 = !DILocation(line: 400, column: 33, scope: !907)
!912 = !DILocalVariable(name: "nr", arg: 2, scope: !907, file: !373, line: 401, type: !369)
!913 = !DILocation(line: 401, column: 31, scope: !907)
!914 = !DILocalVariable(name: "monthDays", scope: !907, file: !373, line: 403, type: !401)
!915 = !DILocation(line: 403, column: 24, scope: !907)
!916 = !DILocalVariable(name: "i", scope: !907, file: !373, line: 404, type: !369)
!917 = !DILocation(line: 404, column: 17, scope: !907)
!918 = !DILocation(line: 410, column: 41, scope: !907)
!919 = !DILocation(line: 410, column: 44, scope: !907)
!920 = !DILocation(line: 410, column: 16, scope: !907)
!921 = !DILocation(line: 410, column: 14, scope: !907)
!922 = !DILocation(line: 412, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !907, file: !373, line: 412, column: 4)
!924 = !DILocation(line: 412, column: 9, scope: !923)
!925 = !DILocation(line: 412, column: 16, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !373, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !923, file: !373, line: 412, column: 4)
!928 = !DILocation(line: 412, column: 20, scope: !926)
!929 = !DILocation(line: 412, column: 18, scope: !926)
!930 = !DILocation(line: 412, column: 4, scope: !926)
!931 = !DILocation(line: 417, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !373, line: 412, column: 29)
!933 = !DILocation(line: 417, column: 10, scope: !932)
!934 = !DILocation(line: 417, column: 13, scope: !932)
!935 = !DILocation(line: 418, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !373, line: 418, column: 11)
!937 = !DILocation(line: 418, column: 14, scope: !936)
!938 = !DILocation(line: 418, column: 30, scope: !936)
!939 = !DILocation(line: 418, column: 33, scope: !936)
!940 = !DILocation(line: 418, column: 20, scope: !936)
!941 = !DILocation(line: 418, column: 18, scope: !936)
!942 = !DILocation(line: 418, column: 11, scope: !932)
!943 = !DILocation(line: 419, column: 10, scope: !944)
!944 = distinct !DILexicalBlock(scope: !936, file: !373, line: 418, column: 41)
!945 = !DILocation(line: 419, column: 13, scope: !944)
!946 = !DILocation(line: 419, column: 17, scope: !944)
!947 = !DILocation(line: 420, column: 10, scope: !944)
!948 = !DILocation(line: 420, column: 13, scope: !944)
!949 = !DILocation(line: 420, column: 18, scope: !944)
!950 = !DILocation(line: 421, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !373, line: 421, column: 14)
!952 = !DILocation(line: 421, column: 17, scope: !951)
!953 = !DILocation(line: 421, column: 23, scope: !951)
!954 = !DILocation(line: 421, column: 14, scope: !944)
!955 = !DILocation(line: 422, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !373, line: 421, column: 29)
!957 = !DILocation(line: 422, column: 16, scope: !956)
!958 = !DILocation(line: 422, column: 22, scope: !956)
!959 = !DILocation(line: 423, column: 13, scope: !956)
!960 = !DILocation(line: 423, column: 16, scope: !956)
!961 = !DILocation(line: 423, column: 20, scope: !956)
!962 = !DILocation(line: 429, column: 50, scope: !956)
!963 = !DILocation(line: 429, column: 53, scope: !956)
!964 = !DILocation(line: 429, column: 25, scope: !956)
!965 = !DILocation(line: 429, column: 23, scope: !956)
!966 = !DILocation(line: 430, column: 10, scope: !956)
!967 = !DILocation(line: 431, column: 7, scope: !944)
!968 = !DILocation(line: 432, column: 4, scope: !932)
!969 = !DILocation(line: 412, column: 25, scope: !970)
!970 = !DILexicalBlockFile(scope: !927, file: !373, discriminator: 2)
!971 = !DILocation(line: 412, column: 4, scope: !970)
!972 = distinct !{!972, !973}
!973 = !DILocation(line: 412, column: 4, scope: !907)
!974 = !DILocation(line: 433, column: 1, scope: !907)
!975 = distinct !DISubprogram(name: "TimeUtil_DaysSubtract", scope: !373, file: !373, line: 279, type: !976, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!976 = !DISubroutineType(types: !977)
!977 = !{!382, !482, !369}
!978 = !DILocalVariable(name: "d", arg: 1, scope: !975, file: !373, line: 279, type: !482)
!979 = !DILocation(line: 279, column: 38, scope: !975)
!980 = !DILocalVariable(name: "nr", arg: 2, scope: !975, file: !373, line: 280, type: !369)
!981 = !DILocation(line: 280, column: 36, scope: !975)
!982 = !DILocalVariable(name: "temp", scope: !975, file: !373, line: 282, type: !385)
!983 = !DILocation(line: 282, column: 18, scope: !975)
!984 = !DILocalVariable(name: "subYear", scope: !975, file: !373, line: 283, type: !367)
!985 = !DILocation(line: 283, column: 8, scope: !975)
!986 = !DILocalVariable(name: "subMonth", scope: !975, file: !373, line: 284, type: !367)
!987 = !DILocation(line: 284, column: 8, scope: !975)
!988 = !DILocalVariable(name: "subDay", scope: !975, file: !373, line: 285, type: !367)
!989 = !DILocation(line: 285, column: 8, scope: !975)
!990 = !DILocalVariable(name: "estRes", scope: !975, file: !373, line: 287, type: !385)
!991 = !DILocation(line: 287, column: 18, scope: !975)
!992 = !DILocalVariable(name: "estYear", scope: !975, file: !373, line: 288, type: !367)
!993 = !DILocation(line: 288, column: 8, scope: !975)
!994 = !DILocalVariable(name: "estMonth", scope: !975, file: !373, line: 289, type: !367)
!995 = !DILocation(line: 289, column: 8, scope: !975)
!996 = !DILocalVariable(name: "estDay", scope: !975, file: !373, line: 290, type: !367)
!997 = !DILocation(line: 290, column: 8, scope: !975)
!998 = !DILocalVariable(name: "dayCount", scope: !975, file: !373, line: 292, type: !369)
!999 = !DILocation(line: 292, column: 17, scope: !975)
!1000 = !DILocation(line: 292, column: 28, scope: !975)
!1001 = !DILocation(line: 296, column: 4, scope: !975)
!1002 = !DILocation(line: 297, column: 4, scope: !975)
!1003 = !DILocation(line: 309, column: 15, scope: !975)
!1004 = !DILocation(line: 309, column: 24, scope: !975)
!1005 = !DILocation(line: 309, column: 35, scope: !975)
!1006 = !DILocation(line: 309, column: 44, scope: !975)
!1007 = !DILocation(line: 309, column: 32, scope: !975)
!1008 = !DILocation(line: 309, column: 28, scope: !975)
!1009 = !DILocation(line: 309, column: 13, scope: !975)
!1010 = !DILocation(line: 311, column: 14, scope: !975)
!1011 = !DILocation(line: 311, column: 23, scope: !975)
!1012 = !DILocation(line: 311, column: 12, scope: !975)
!1013 = !DILocation(line: 312, column: 15, scope: !975)
!1014 = !DILocation(line: 312, column: 24, scope: !975)
!1015 = !DILocation(line: 312, column: 13, scope: !975)
!1016 = !DILocation(line: 313, column: 15, scope: !975)
!1017 = !DILocation(line: 313, column: 24, scope: !975)
!1018 = !DILocation(line: 313, column: 13, scope: !975)
!1019 = !DILocation(line: 314, column: 13, scope: !975)
!1020 = !DILocation(line: 314, column: 22, scope: !975)
!1021 = !DILocation(line: 314, column: 11, scope: !975)
!1022 = !DILocation(line: 316, column: 13, scope: !975)
!1023 = !DILocation(line: 316, column: 16, scope: !975)
!1024 = !DILocation(line: 316, column: 22, scope: !975)
!1025 = !DILocation(line: 316, column: 20, scope: !975)
!1026 = !DILocation(line: 316, column: 11, scope: !975)
!1027 = !DILocation(line: 317, column: 4, scope: !975)
!1028 = !DILocation(line: 317, column: 11, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !975, file: !373, discriminator: 1)
!1030 = !DILocation(line: 317, column: 18, scope: !1029)
!1031 = !DILocation(line: 317, column: 4, scope: !1029)
!1032 = !DILocation(line: 318, column: 16, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !975, file: !373, line: 317, column: 24)
!1034 = !DILocation(line: 318, column: 23, scope: !1033)
!1035 = !DILocation(line: 318, column: 14, scope: !1033)
!1036 = !DILocation(line: 319, column: 15, scope: !1033)
!1037 = !DILocation(line: 317, column: 4, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !975, file: !373, discriminator: 2)
!1039 = distinct !{!1039, !1027}
!1040 = !DILocation(line: 321, column: 15, scope: !975)
!1041 = !DILocation(line: 321, column: 18, scope: !975)
!1042 = !DILocation(line: 321, column: 26, scope: !975)
!1043 = !DILocation(line: 321, column: 24, scope: !975)
!1044 = !DILocation(line: 321, column: 13, scope: !975)
!1045 = !DILocation(line: 322, column: 4, scope: !975)
!1046 = !DILocation(line: 322, column: 11, scope: !1029)
!1047 = !DILocation(line: 322, column: 20, scope: !1029)
!1048 = !DILocation(line: 322, column: 4, scope: !1029)
!1049 = !DILocation(line: 323, column: 18, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !975, file: !373, line: 322, column: 26)
!1051 = !DILocation(line: 323, column: 27, scope: !1050)
!1052 = !DILocation(line: 323, column: 16, scope: !1050)
!1053 = !DILocation(line: 324, column: 14, scope: !1050)
!1054 = !DILocation(line: 322, column: 4, scope: !1038)
!1055 = distinct !{!1055, !1045}
!1056 = !DILocation(line: 326, column: 14, scope: !975)
!1057 = !DILocation(line: 326, column: 17, scope: !975)
!1058 = !DILocation(line: 326, column: 24, scope: !975)
!1059 = !DILocation(line: 326, column: 22, scope: !975)
!1060 = !DILocation(line: 326, column: 12, scope: !975)
!1061 = !DILocation(line: 327, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !975, file: !373, line: 327, column: 8)
!1063 = !DILocation(line: 327, column: 16, scope: !1062)
!1064 = !DILocation(line: 327, column: 8, scope: !975)
!1065 = !DILocation(line: 328, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !373, line: 327, column: 22)
!1067 = !DILocation(line: 336, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !975, file: !373, line: 336, column: 8)
!1069 = !DILocation(line: 336, column: 16, scope: !1068)
!1070 = !DILocation(line: 336, column: 22, scope: !1068)
!1071 = !DILocation(line: 336, column: 26, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1068, file: !373, discriminator: 1)
!1073 = !DILocation(line: 336, column: 35, scope: !1072)
!1074 = !DILocation(line: 336, column: 8, scope: !1072)
!1075 = !DILocation(line: 337, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !373, line: 336, column: 42)
!1077 = !DILocation(line: 338, column: 4, scope: !1076)
!1078 = !DILocation(line: 340, column: 18, scope: !975)
!1079 = !DILocation(line: 340, column: 11, scope: !975)
!1080 = !DILocation(line: 340, column: 16, scope: !975)
!1081 = !DILocation(line: 341, column: 19, scope: !975)
!1082 = !DILocation(line: 341, column: 11, scope: !975)
!1083 = !DILocation(line: 341, column: 17, scope: !975)
!1084 = !DILocation(line: 342, column: 17, scope: !975)
!1085 = !DILocation(line: 342, column: 11, scope: !975)
!1086 = !DILocation(line: 342, column: 15, scope: !975)
!1087 = !DILocation(line: 349, column: 18, scope: !975)
!1088 = !DILocation(line: 349, column: 21, scope: !975)
!1089 = !DILocation(line: 349, column: 11, scope: !975)
!1090 = !DILocation(line: 349, column: 16, scope: !975)
!1091 = !DILocation(line: 350, column: 20, scope: !975)
!1092 = !DILocation(line: 350, column: 23, scope: !975)
!1093 = !DILocation(line: 350, column: 11, scope: !975)
!1094 = !DILocation(line: 350, column: 18, scope: !975)
!1095 = !DILocation(line: 351, column: 20, scope: !975)
!1096 = !DILocation(line: 351, column: 23, scope: !975)
!1097 = !DILocation(line: 351, column: 11, scope: !975)
!1098 = !DILocation(line: 351, column: 18, scope: !975)
!1099 = !DILocation(line: 367, column: 11, scope: !975)
!1100 = !DILocation(line: 368, column: 28, scope: !975)
!1101 = !DILocation(line: 368, column: 4, scope: !975)
!1102 = !DILocation(line: 369, column: 4, scope: !975)
!1103 = !DILocation(line: 369, column: 41, scope: !1029)
!1104 = !DILocation(line: 369, column: 11, scope: !1029)
!1105 = !DILocation(line: 369, column: 4, scope: !1029)
!1106 = !DILocation(line: 370, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !975, file: !373, line: 369, column: 45)
!1108 = !DILocation(line: 371, column: 7, scope: !1107)
!1109 = !DILocation(line: 369, column: 4, scope: !1038)
!1110 = distinct !{!1110, !1102}
!1111 = !DILocation(line: 374, column: 21, scope: !975)
!1112 = !DILocation(line: 374, column: 4, scope: !975)
!1113 = !DILocation(line: 374, column: 7, scope: !975)
!1114 = !DILocation(line: 374, column: 12, scope: !975)
!1115 = !DILocation(line: 375, column: 22, scope: !975)
!1116 = !DILocation(line: 375, column: 4, scope: !975)
!1117 = !DILocation(line: 375, column: 7, scope: !975)
!1118 = !DILocation(line: 375, column: 13, scope: !975)
!1119 = !DILocation(line: 376, column: 20, scope: !975)
!1120 = !DILocation(line: 376, column: 4, scope: !975)
!1121 = !DILocation(line: 376, column: 7, scope: !975)
!1122 = !DILocation(line: 376, column: 11, scope: !975)
!1123 = !DILocation(line: 378, column: 4, scope: !975)
!1124 = !DILocation(line: 379, column: 1, scope: !975)
!1125 = !DILocalVariable(name: "year", arg: 1, scope: !398, file: !373, line: 1250, type: !369)
!1126 = !DILocation(line: 1250, column: 39, scope: !398)
!1127 = !DILocation(line: 1257, column: 13, scope: !398)
!1128 = !DILocation(line: 1257, column: 18, scope: !398)
!1129 = !DILocation(line: 1257, column: 23, scope: !398)
!1130 = !DILocation(line: 1257, column: 28, scope: !398)
!1131 = !DILocation(line: 1257, column: 33, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !398, file: !373, discriminator: 1)
!1133 = !DILocation(line: 1257, column: 38, scope: !1132)
!1134 = !DILocation(line: 1257, column: 45, scope: !1132)
!1135 = !DILocation(line: 1257, column: 50, scope: !1132)
!1136 = !DILocation(line: 1257, column: 54, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !398, file: !373, discriminator: 2)
!1138 = !DILocation(line: 1257, column: 59, scope: !1137)
!1139 = !DILocation(line: 1257, column: 66, scope: !1137)
!1140 = !DILocation(line: 1257, column: 50, scope: !1137)
!1141 = !DILocation(line: 1257, column: 11, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !398, file: !373, discriminator: 3)
!1143 = !DILocation(line: 1257, column: 4, scope: !1142)
!1144 = distinct !DISubprogram(name: "TimeUtil_PopulateWithCurrent", scope: !373, file: !373, line: 456, type: !1145, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !382, !482}
!1147 = !DILocalVariable(name: "local", arg: 1, scope: !1144, file: !373, line: 456, type: !382)
!1148 = !DILocation(line: 456, column: 35, scope: !1144)
!1149 = !DILocalVariable(name: "d", arg: 2, scope: !1144, file: !373, line: 457, type: !482)
!1150 = !DILocation(line: 457, column: 45, scope: !1144)
!1151 = !DILocalVariable(name: "currentTime", scope: !1144, file: !373, line: 476, type: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!1153 = !DILocation(line: 476, column: 15, scope: !1144)
!1154 = !DILocalVariable(name: "tmbuf", scope: !1144, file: !373, line: 477, type: !434)
!1155 = !DILocation(line: 477, column: 14, scope: !1144)
!1156 = !DILocalVariable(name: "utcTime", scope: !1144, file: !373, line: 478, type: !353)
!1157 = !DILocation(line: 478, column: 11, scope: !1144)
!1158 = !DILocation(line: 482, column: 14, scope: !1144)
!1159 = !DILocation(line: 482, column: 12, scope: !1144)
!1160 = !DILocation(line: 483, column: 8, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1144, file: !373, line: 483, column: 8)
!1162 = !DILocation(line: 483, column: 8, scope: !1144)
!1163 = !DILocation(line: 484, column: 21, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !373, line: 483, column: 15)
!1165 = !DILocation(line: 484, column: 19, scope: !1164)
!1166 = !DILocation(line: 485, column: 4, scope: !1164)
!1167 = !DILocation(line: 486, column: 21, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !373, line: 485, column: 11)
!1169 = !DILocation(line: 486, column: 19, scope: !1168)
!1170 = !DILocation(line: 488, column: 30, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !373, line: 488, column: 10)
!1172 = distinct !DILexicalBlock(scope: !1144, file: !373, line: 488, column: 5)
!1173 = !DILocation(line: 488, column: 28, scope: !1171)
!1174 = !DILocation(line: 488, column: 27, scope: !1171)
!1175 = !DILocation(line: 488, column: 10, scope: !1171)
!1176 = !DILocation(line: 488, column: 10, scope: !1172)
!1177 = !DILocation(line: 488, column: 51, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !373, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1171, file: !373, line: 488, column: 49)
!1180 = !DILocation(line: 489, column: 21, scope: !1144)
!1181 = !DILocation(line: 489, column: 34, scope: !1144)
!1182 = !DILocation(line: 489, column: 19, scope: !1144)
!1183 = !DILocation(line: 489, column: 4, scope: !1144)
!1184 = !DILocation(line: 489, column: 7, scope: !1144)
!1185 = !DILocation(line: 489, column: 12, scope: !1144)
!1186 = !DILocation(line: 490, column: 15, scope: !1144)
!1187 = !DILocation(line: 490, column: 28, scope: !1144)
!1188 = !DILocation(line: 490, column: 35, scope: !1144)
!1189 = !DILocation(line: 490, column: 4, scope: !1144)
!1190 = !DILocation(line: 490, column: 7, scope: !1144)
!1191 = !DILocation(line: 490, column: 13, scope: !1144)
!1192 = !DILocation(line: 491, column: 13, scope: !1144)
!1193 = !DILocation(line: 491, column: 26, scope: !1144)
!1194 = !DILocation(line: 491, column: 4, scope: !1144)
!1195 = !DILocation(line: 491, column: 7, scope: !1144)
!1196 = !DILocation(line: 491, column: 11, scope: !1144)
!1197 = !DILocation(line: 492, column: 14, scope: !1144)
!1198 = !DILocation(line: 492, column: 27, scope: !1144)
!1199 = !DILocation(line: 492, column: 4, scope: !1144)
!1200 = !DILocation(line: 492, column: 7, scope: !1144)
!1201 = !DILocation(line: 492, column: 12, scope: !1144)
!1202 = !DILocation(line: 493, column: 16, scope: !1144)
!1203 = !DILocation(line: 493, column: 29, scope: !1144)
!1204 = !DILocation(line: 493, column: 4, scope: !1144)
!1205 = !DILocation(line: 493, column: 7, scope: !1144)
!1206 = !DILocation(line: 493, column: 14, scope: !1144)
!1207 = !DILocation(line: 494, column: 16, scope: !1144)
!1208 = !DILocation(line: 494, column: 29, scope: !1144)
!1209 = !DILocation(line: 494, column: 4, scope: !1144)
!1210 = !DILocation(line: 494, column: 7, scope: !1144)
!1211 = !DILocation(line: 494, column: 14, scope: !1144)
!1212 = !DILocation(line: 496, column: 1, scope: !1144)
!1213 = distinct !DISubprogram(name: "TimeUtil_GetTimeOfDay", scope: !373, file: !373, line: 520, type: !1214, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeUtil_TimeOfDay", file: !378, line: 68, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TimeUtil_TimeOfDay", file: !378, line: 65, size: 128, align: 64, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !1218, file: !378, line: 66, baseType: !352, size: 64, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "useconds", scope: !1218, file: !378, line: 67, baseType: !352, size: 64, align: 64, offset: 64)
!1222 = !DILocalVariable(name: "timeofday", arg: 1, scope: !1213, file: !373, line: 520, type: !1216)
!1223 = !DILocation(line: 520, column: 43, scope: !1213)
!1224 = !DILocalVariable(name: "curTime", scope: !1213, file: !373, line: 559, type: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1226, line: 30, size: 128, align: 64, elements: !1227)
!1226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1225, file: !1226, line: 32, baseType: !355, size: 64, align: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1225, file: !1226, line: 33, baseType: !1230, size: 64, align: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !356, line: 141, baseType: !357)
!1231 = !DILocation(line: 559, column: 19, scope: !1213)
!1232 = !DILocation(line: 563, column: 4, scope: !1213)
!1233 = !DILocation(line: 564, column: 49, scope: !1213)
!1234 = !DILocation(line: 564, column: 4, scope: !1213)
!1235 = !DILocation(line: 564, column: 15, scope: !1213)
!1236 = !DILocation(line: 564, column: 23, scope: !1213)
!1237 = !DILocation(line: 565, column: 50, scope: !1213)
!1238 = !DILocation(line: 565, column: 4, scope: !1213)
!1239 = !DILocation(line: 565, column: 15, scope: !1213)
!1240 = !DILocation(line: 565, column: 24, scope: !1213)
!1241 = !DILocation(line: 568, column: 1, scope: !1213)
!1242 = distinct !DISubprogram(name: "TimeUtil_DaysLeft", scope: !373, file: !373, line: 590, type: !1243, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!369, !428}
!1245 = !DILocalVariable(name: "d", arg: 1, scope: !1242, file: !373, line: 590, type: !428)
!1246 = !DILocation(line: 590, column: 40, scope: !1242)
!1247 = !DILocalVariable(name: "c", scope: !1242, file: !373, line: 592, type: !385)
!1248 = !DILocation(line: 592, column: 18, scope: !1242)
!1249 = !DILocalVariable(name: "i", scope: !1242, file: !373, line: 593, type: !369)
!1250 = !DILocation(line: 593, column: 17, scope: !1242)
!1251 = !DILocation(line: 596, column: 4, scope: !1242)
!1252 = !DILocation(line: 603, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1242, file: !373, line: 603, column: 4)
!1254 = !DILocation(line: 603, column: 9, scope: !1253)
!1255 = !DILocation(line: 603, column: 16, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !373, discriminator: 1)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !373, line: 603, column: 4)
!1258 = !DILocation(line: 603, column: 18, scope: !1256)
!1259 = !DILocation(line: 603, column: 4, scope: !1256)
!1260 = !DILocation(line: 604, column: 14, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !373, line: 604, column: 11)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !373, line: 603, column: 35)
!1263 = !DILocation(line: 604, column: 21, scope: !1261)
!1264 = !DILocation(line: 604, column: 24, scope: !1261)
!1265 = !DILocation(line: 604, column: 19, scope: !1261)
!1266 = !DILocation(line: 604, column: 30, scope: !1261)
!1267 = !DILocation(line: 605, column: 14, scope: !1261)
!1268 = !DILocation(line: 605, column: 22, scope: !1261)
!1269 = !DILocation(line: 605, column: 25, scope: !1261)
!1270 = !DILocation(line: 605, column: 19, scope: !1261)
!1271 = !DILocation(line: 605, column: 30, scope: !1261)
!1272 = !DILocation(line: 605, column: 35, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1261, file: !373, discriminator: 1)
!1274 = !DILocation(line: 605, column: 43, scope: !1273)
!1275 = !DILocation(line: 605, column: 46, scope: !1273)
!1276 = !DILocation(line: 605, column: 41, scope: !1273)
!1277 = !DILocation(line: 605, column: 53, scope: !1273)
!1278 = !DILocation(line: 606, column: 14, scope: !1261)
!1279 = !DILocation(line: 606, column: 22, scope: !1261)
!1280 = !DILocation(line: 606, column: 25, scope: !1261)
!1281 = !DILocation(line: 606, column: 19, scope: !1261)
!1282 = !DILocation(line: 606, column: 30, scope: !1261)
!1283 = !DILocation(line: 606, column: 35, scope: !1273)
!1284 = !DILocation(line: 606, column: 44, scope: !1273)
!1285 = !DILocation(line: 606, column: 47, scope: !1273)
!1286 = !DILocation(line: 606, column: 41, scope: !1273)
!1287 = !DILocation(line: 606, column: 53, scope: !1273)
!1288 = !DILocation(line: 606, column: 58, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1261, file: !373, discriminator: 2)
!1290 = !DILocation(line: 606, column: 65, scope: !1289)
!1291 = !DILocation(line: 606, column: 68, scope: !1289)
!1292 = !DILocation(line: 606, column: 62, scope: !1289)
!1293 = !DILocation(line: 604, column: 11, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1262, file: !373, discriminator: 1)
!1295 = !DILocation(line: 608, column: 17, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1261, file: !373, line: 606, column: 74)
!1297 = !DILocation(line: 608, column: 10, scope: !1296)
!1298 = !DILocation(line: 611, column: 7, scope: !1262)
!1299 = !DILocation(line: 612, column: 4, scope: !1262)
!1300 = !DILocation(line: 603, column: 31, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1257, file: !373, discriminator: 2)
!1302 = !DILocation(line: 603, column: 4, scope: !1301)
!1303 = distinct !{!1303, !1304}
!1304 = !DILocation(line: 603, column: 4, scope: !1242)
!1305 = !DILocation(line: 615, column: 4, scope: !1242)
!1306 = !DILocation(line: 616, column: 1, scope: !1242)
!1307 = distinct !DISubprogram(name: "TimeUtil_ExpirationLowerThan", scope: !373, file: !373, line: 637, type: !1308, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!382, !1310, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!1312 = !DILocalVariable(name: "left", arg: 1, scope: !1307, file: !373, line: 637, type: !1310)
!1313 = !DILocation(line: 637, column: 57, scope: !1307)
!1314 = !DILocalVariable(name: "right", arg: 2, scope: !1307, file: !373, line: 638, type: !1310)
!1315 = !DILocation(line: 638, column: 57, scope: !1307)
!1316 = !DILocation(line: 640, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 640, column: 8)
!1318 = !DILocation(line: 640, column: 14, scope: !1317)
!1319 = !DILocation(line: 640, column: 22, scope: !1317)
!1320 = !DILocation(line: 640, column: 8, scope: !1307)
!1321 = !DILocation(line: 641, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !373, line: 640, column: 28)
!1323 = !DILocation(line: 644, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 644, column: 8)
!1325 = !DILocation(line: 644, column: 15, scope: !1324)
!1326 = !DILocation(line: 644, column: 23, scope: !1324)
!1327 = !DILocation(line: 644, column: 8, scope: !1307)
!1328 = !DILocation(line: 645, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !373, line: 644, column: 29)
!1330 = !DILocation(line: 648, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 648, column: 8)
!1332 = !DILocation(line: 648, column: 14, scope: !1331)
!1333 = !DILocation(line: 648, column: 19, scope: !1331)
!1334 = !DILocation(line: 648, column: 26, scope: !1331)
!1335 = !DILocation(line: 648, column: 33, scope: !1331)
!1336 = !DILocation(line: 648, column: 38, scope: !1331)
!1337 = !DILocation(line: 648, column: 24, scope: !1331)
!1338 = !DILocation(line: 648, column: 8, scope: !1307)
!1339 = !DILocation(line: 649, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !373, line: 648, column: 44)
!1341 = !DILocation(line: 652, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 652, column: 8)
!1343 = !DILocation(line: 652, column: 14, scope: !1342)
!1344 = !DILocation(line: 652, column: 19, scope: !1342)
!1345 = !DILocation(line: 652, column: 26, scope: !1342)
!1346 = !DILocation(line: 652, column: 33, scope: !1342)
!1347 = !DILocation(line: 652, column: 38, scope: !1342)
!1348 = !DILocation(line: 652, column: 24, scope: !1342)
!1349 = !DILocation(line: 652, column: 8, scope: !1307)
!1350 = !DILocation(line: 653, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !373, line: 652, column: 44)
!1352 = !DILocation(line: 656, column: 8, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 656, column: 8)
!1354 = !DILocation(line: 656, column: 14, scope: !1353)
!1355 = !DILocation(line: 656, column: 19, scope: !1353)
!1356 = !DILocation(line: 656, column: 27, scope: !1353)
!1357 = !DILocation(line: 656, column: 34, scope: !1353)
!1358 = !DILocation(line: 656, column: 39, scope: !1353)
!1359 = !DILocation(line: 656, column: 25, scope: !1353)
!1360 = !DILocation(line: 656, column: 8, scope: !1307)
!1361 = !DILocation(line: 657, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !373, line: 656, column: 46)
!1363 = !DILocation(line: 660, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 660, column: 8)
!1365 = !DILocation(line: 660, column: 14, scope: !1364)
!1366 = !DILocation(line: 660, column: 19, scope: !1364)
!1367 = !DILocation(line: 660, column: 27, scope: !1364)
!1368 = !DILocation(line: 660, column: 34, scope: !1364)
!1369 = !DILocation(line: 660, column: 39, scope: !1364)
!1370 = !DILocation(line: 660, column: 25, scope: !1364)
!1371 = !DILocation(line: 660, column: 8, scope: !1307)
!1372 = !DILocation(line: 661, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !373, line: 660, column: 46)
!1374 = !DILocation(line: 664, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1307, file: !373, line: 664, column: 8)
!1376 = !DILocation(line: 664, column: 14, scope: !1375)
!1377 = !DILocation(line: 664, column: 19, scope: !1375)
!1378 = !DILocation(line: 664, column: 25, scope: !1375)
!1379 = !DILocation(line: 664, column: 32, scope: !1375)
!1380 = !DILocation(line: 664, column: 37, scope: !1375)
!1381 = !DILocation(line: 664, column: 23, scope: !1375)
!1382 = !DILocation(line: 664, column: 8, scope: !1307)
!1383 = !DILocation(line: 665, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !373, line: 664, column: 42)
!1385 = !DILocation(line: 668, column: 4, scope: !1307)
!1386 = !DILocation(line: 669, column: 1, scope: !1307)
!1387 = !DILocalVariable(name: "e", arg: 1, scope: !372, file: !373, line: 761, type: !376)
!1388 = !DILocation(line: 761, column: 49, scope: !372)
!1389 = !DILocation(line: 789, column: 11, scope: !372)
!1390 = !DILocation(line: 793, column: 4, scope: !372)
!1391 = !DILocation(line: 793, column: 7, scope: !372)
!1392 = !DILocation(line: 793, column: 15, scope: !372)
!1393 = !DILocation(line: 795, column: 1, scope: !372)
!1394 = distinct !DISubprogram(name: "TimeUtil_GetTimeFormat", scope: !373, file: !373, line: 819, type: !1395, isLocal: false, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!396, !364, !382, !382}
!1397 = !DILocalVariable(name: "utcTime", arg: 1, scope: !1394, file: !373, line: 819, type: !364)
!1398 = !DILocation(line: 819, column: 30, scope: !1394)
!1399 = !DILocalVariable(name: "showDate", arg: 2, scope: !1394, file: !373, line: 820, type: !382)
!1400 = !DILocation(line: 820, column: 29, scope: !1394)
!1401 = !DILocalVariable(name: "showTime", arg: 3, scope: !1394, file: !373, line: 821, type: !382)
!1402 = !DILocation(line: 821, column: 29, scope: !1394)
!1403 = !DILocalVariable(name: "str", scope: !1394, file: !373, line: 855, type: !396)
!1404 = !DILocation(line: 855, column: 10, scope: !1394)
!1405 = !DILocalVariable(name: "buf", scope: !1394, file: !373, line: 856, type: !1406)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 208, align: 8, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 26)
!1409 = !DILocation(line: 856, column: 9, scope: !1394)
!1410 = !DILocalVariable(name: "t", scope: !1394, file: !373, line: 857, type: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!1412 = !DILocation(line: 857, column: 17, scope: !1394)
!1413 = !DILocation(line: 857, column: 30, scope: !1394)
!1414 = !DILocation(line: 862, column: 39, scope: !1394)
!1415 = !DILocation(line: 862, column: 27, scope: !1394)
!1416 = !DILocation(line: 862, column: 10, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1394, file: !373, discriminator: 1)
!1418 = !DILocation(line: 862, column: 8, scope: !1394)
!1419 = !DILocation(line: 864, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1394, file: !373, line: 864, column: 8)
!1421 = !DILocation(line: 864, column: 12, scope: !1420)
!1422 = !DILocation(line: 864, column: 8, scope: !1394)
!1423 = !DILocation(line: 865, column: 18, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !373, line: 864, column: 20)
!1425 = !DILocation(line: 865, column: 11, scope: !1424)
!1426 = !DILocation(line: 865, column: 23, scope: !1424)
!1427 = !DILocation(line: 865, column: 7, scope: !1424)
!1428 = !DILocation(line: 865, column: 28, scope: !1424)
!1429 = !DILocation(line: 866, column: 4, scope: !1424)
!1430 = !DILocation(line: 868, column: 11, scope: !1394)
!1431 = !DILocation(line: 868, column: 4, scope: !1394)
!1432 = distinct !DISubprogram(name: "TimeUtil_NtTimeToUnixTime", scope: !373, file: !373, line: 893, type: !1433, isLocal: false, isDefinition: true, scopeLine: 895, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!367, !1435, !363}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64, align: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !354, line: 120, size: 128, align: 64, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1436, file: !354, line: 122, baseType: !355, size: 64, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1436, file: !354, line: 123, baseType: !1440, size: 64, align: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !356, line: 175, baseType: !357)
!1441 = !DILocalVariable(name: "unixTime", arg: 1, scope: !1432, file: !373, line: 893, type: !1435)
!1442 = !DILocation(line: 893, column: 44, scope: !1432)
!1443 = !DILocalVariable(name: "ntTime", arg: 2, scope: !1432, file: !373, line: 894, type: !363)
!1444 = !DILocation(line: 894, column: 38, scope: !1432)
!1445 = !DILocation(line: 912, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1432, file: !373, line: 912, column: 8)
!1447 = !DILocation(line: 912, column: 15, scope: !1446)
!1448 = !DILocation(line: 912, column: 8, scope: !1432)
!1449 = !DILocation(line: 913, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !373, line: 912, column: 70)
!1451 = !DILocation(line: 913, column: 17, scope: !1450)
!1452 = !DILocation(line: 913, column: 24, scope: !1450)
!1453 = !DILocation(line: 914, column: 7, scope: !1450)
!1454 = !DILocation(line: 914, column: 17, scope: !1450)
!1455 = !DILocation(line: 914, column: 25, scope: !1450)
!1456 = !DILocation(line: 915, column: 7, scope: !1450)
!1457 = !DILocation(line: 928, column: 24, scope: !1432)
!1458 = !DILocation(line: 928, column: 31, scope: !1432)
!1459 = !DILocation(line: 928, column: 86, scope: !1432)
!1460 = !DILocation(line: 928, column: 4, scope: !1432)
!1461 = !DILocation(line: 928, column: 14, scope: !1432)
!1462 = !DILocation(line: 928, column: 21, scope: !1432)
!1463 = !DILocation(line: 929, column: 26, scope: !1432)
!1464 = !DILocation(line: 929, column: 33, scope: !1432)
!1465 = !DILocation(line: 929, column: 88, scope: !1432)
!1466 = !DILocation(line: 929, column: 100, scope: !1432)
!1467 = !DILocation(line: 929, column: 4, scope: !1432)
!1468 = !DILocation(line: 929, column: 14, scope: !1432)
!1469 = !DILocation(line: 929, column: 22, scope: !1432)
!1470 = !DILocation(line: 932, column: 4, scope: !1432)
!1471 = !DILocation(line: 933, column: 1, scope: !1432)
!1472 = distinct !DISubprogram(name: "TimeUtil_UnixTimeToNtTime", scope: !373, file: !373, line: 953, type: !1473, isLocal: false, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!363, !1436}
!1475 = !DILocalVariable(name: "unixTime", arg: 1, scope: !1472, file: !373, line: 953, type: !1436)
!1476 = !DILocation(line: 953, column: 43, scope: !1472)
!1477 = !DILocation(line: 955, column: 32, scope: !1472)
!1478 = !DILocation(line: 955, column: 39, scope: !1472)
!1479 = !DILocation(line: 956, column: 52, scope: !1472)
!1480 = !DILocation(line: 956, column: 60, scope: !1472)
!1481 = !DILocation(line: 955, column: 50, scope: !1472)
!1482 = !DILocation(line: 956, column: 66, scope: !1472)
!1483 = !DILocation(line: 955, column: 4, scope: !1472)
!1484 = distinct !DISubprogram(name: "TimeUtil_GetLocalWindowsTimeZoneIndexAndName", scope: !373, file: !373, line: 1057, type: !1485, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!367, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!1488 = !DILocalVariable(name: "ptzName", arg: 1, scope: !1484, file: !373, line: 1057, type: !1487)
!1489 = !DILocation(line: 1057, column: 53, scope: !1484)
!1490 = !DILocalVariable(name: "utcStdOffMins", scope: !1484, file: !373, line: 1059, type: !367)
!1491 = !DILocation(line: 1059, column: 8, scope: !1484)
!1492 = !DILocalVariable(name: "winTimeZoneIndex", scope: !1484, file: !373, line: 1060, type: !367)
!1493 = !DILocation(line: 1060, column: 8, scope: !1484)
!1494 = !DILocalVariable(name: "tzNameByUTCOffset", scope: !1484, file: !373, line: 1061, type: !411)
!1495 = !DILocation(line: 1061, column: 16, scope: !1484)
!1496 = !DILocalVariable(name: "englishTzName", scope: !1484, file: !373, line: 1062, type: !396)
!1497 = !DILocation(line: 1062, column: 10, scope: !1484)
!1498 = !DILocation(line: 1064, column: 5, scope: !1484)
!1499 = !DILocation(line: 1064, column: 13, scope: !1484)
!1500 = !DILocalVariable(name: "now", scope: !1501, file: !373, line: 1107, type: !353)
!1501 = distinct !DILexicalBlock(scope: !1484, file: !373, line: 1099, column: 4)
!1502 = !DILocation(line: 1107, column: 14, scope: !1501)
!1503 = !DILocation(line: 1107, column: 20, scope: !1501)
!1504 = !DILocalVariable(name: "tim", scope: !1501, file: !373, line: 1108, type: !434)
!1505 = !DILocation(line: 1108, column: 17, scope: !1501)
!1506 = !DILocation(line: 1109, column: 7, scope: !1501)
!1507 = !DILocation(line: 1125, column: 30, scope: !1501)
!1508 = !DILocation(line: 1125, column: 39, scope: !1501)
!1509 = !DILocation(line: 1125, column: 26, scope: !1501)
!1510 = !DILocation(line: 1125, column: 24, scope: !1501)
!1511 = !DILocation(line: 1126, column: 18, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1501, file: !373, line: 1126, column: 14)
!1513 = !DILocation(line: 1126, column: 14, scope: !1512)
!1514 = !DILocation(line: 1126, column: 14, scope: !1501)
!1515 = !DILocation(line: 1127, column: 27, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !373, line: 1126, column: 28)
!1517 = !DILocation(line: 1128, column: 10, scope: !1516)
!1518 = !DILocation(line: 1132, column: 24, scope: !1501)
!1519 = !DILocation(line: 1138, column: 48, scope: !1484)
!1520 = !DILocation(line: 1138, column: 63, scope: !1484)
!1521 = !DILocation(line: 1138, column: 23, scope: !1484)
!1522 = !DILocation(line: 1138, column: 21, scope: !1484)
!1523 = !DILocation(line: 1141, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1484, file: !373, line: 1141, column: 8)
!1525 = !DILocation(line: 1141, column: 25, scope: !1524)
!1526 = !DILocation(line: 1141, column: 8, scope: !1484)
!1527 = !DILocation(line: 1142, column: 40, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !373, line: 1141, column: 31)
!1529 = !DILocation(line: 1142, column: 18, scope: !1528)
!1530 = !DILocation(line: 1142, column: 8, scope: !1528)
!1531 = !DILocation(line: 1142, column: 16, scope: !1528)
!1532 = !DILocation(line: 1143, column: 4, scope: !1528)
!1533 = !DILocation(line: 1145, column: 9, scope: !1484)
!1534 = !DILocation(line: 1145, column: 4, scope: !1484)
!1535 = !DILocation(line: 1146, column: 18, scope: !1484)
!1536 = !DILocation(line: 1148, column: 11, scope: !1484)
!1537 = !DILocation(line: 1148, column: 4, scope: !1484)
!1538 = !DILocalVariable(name: "utcStdOffMins", arg: 1, scope: !408, file: !373, line: 1364, type: !367)
!1539 = !DILocation(line: 1364, column: 30, scope: !408)
!1540 = !DILocalVariable(name: "englishTzName", arg: 2, scope: !408, file: !373, line: 1365, type: !411)
!1541 = !DILocation(line: 1365, column: 38, scope: !408)
!1542 = !DILocalVariable(name: "ptzName", arg: 3, scope: !408, file: !373, line: 1366, type: !413)
!1543 = !DILocation(line: 1366, column: 39, scope: !408)
!1544 = !DILocalVariable(name: "tableSize", scope: !408, file: !373, line: 1458, type: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1546, line: 216, baseType: !352)
!1546 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!1547 = !DILocation(line: 1458, column: 11, scope: !408)
!1548 = !DILocalVariable(name: "look", scope: !408, file: !373, line: 1459, type: !1545)
!1549 = !DILocation(line: 1459, column: 11, scope: !408)
!1550 = !DILocalVariable(name: "tzIndex", scope: !408, file: !373, line: 1460, type: !367)
!1551 = !DILocation(line: 1460, column: 8, scope: !408)
!1552 = !DILocation(line: 1462, column: 5, scope: !408)
!1553 = !DILocation(line: 1462, column: 13, scope: !408)
!1554 = !DILocation(line: 1476, column: 14, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !408, file: !373, line: 1476, column: 4)
!1556 = !DILocation(line: 1476, column: 9, scope: !1555)
!1557 = !DILocation(line: 1476, column: 19, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !373, discriminator: 1)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !373, line: 1476, column: 4)
!1560 = !DILocation(line: 1476, column: 26, scope: !1558)
!1561 = !DILocation(line: 1476, column: 24, scope: !1558)
!1562 = !DILocation(line: 1476, column: 4, scope: !1558)
!1563 = !DILocation(line: 1477, column: 17, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !373, line: 1477, column: 11)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !373, line: 1476, column: 45)
!1566 = !DILocation(line: 1477, column: 11, scope: !1564)
!1567 = !DILocation(line: 1477, column: 23, scope: !1564)
!1568 = !DILocation(line: 1477, column: 40, scope: !1564)
!1569 = !DILocation(line: 1477, column: 37, scope: !1564)
!1570 = !DILocation(line: 1477, column: 11, scope: !1565)
!1571 = !DILocation(line: 1479, column: 26, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1564, file: !373, line: 1477, column: 55)
!1573 = !DILocation(line: 1479, column: 20, scope: !1572)
!1574 = !DILocation(line: 1479, column: 32, scope: !1572)
!1575 = !DILocation(line: 1479, column: 18, scope: !1572)
!1576 = !DILocation(line: 1480, column: 27, scope: !1572)
!1577 = !DILocation(line: 1480, column: 21, scope: !1572)
!1578 = !DILocation(line: 1480, column: 33, scope: !1572)
!1579 = !DILocation(line: 1480, column: 11, scope: !1572)
!1580 = !DILocation(line: 1480, column: 19, scope: !1572)
!1581 = !DILocation(line: 1483, column: 10, scope: !1572)
!1582 = !DILocation(line: 1483, column: 17, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1572, file: !373, discriminator: 1)
!1584 = !DILocation(line: 1483, column: 31, scope: !1583)
!1585 = !DILocation(line: 1483, column: 38, scope: !1583)
!1586 = !DILocation(line: 1484, column: 17, scope: !1572)
!1587 = !DILocation(line: 1484, column: 24, scope: !1572)
!1588 = !DILocation(line: 1484, column: 22, scope: !1572)
!1589 = !DILocation(line: 1484, column: 34, scope: !1572)
!1590 = !DILocation(line: 1485, column: 23, scope: !1572)
!1591 = !DILocation(line: 1485, column: 17, scope: !1572)
!1592 = !DILocation(line: 1485, column: 29, scope: !1572)
!1593 = !DILocation(line: 1485, column: 46, scope: !1572)
!1594 = !DILocation(line: 1485, column: 43, scope: !1572)
!1595 = !DILocation(line: 1483, column: 10, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1572, file: !373, discriminator: 2)
!1597 = !DILocation(line: 1486, column: 24, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !373, line: 1486, column: 17)
!1599 = distinct !DILexicalBlock(scope: !1572, file: !373, line: 1485, column: 61)
!1600 = !DILocation(line: 1486, column: 45, scope: !1598)
!1601 = !DILocation(line: 1486, column: 39, scope: !1598)
!1602 = !DILocation(line: 1486, column: 51, scope: !1598)
!1603 = !DILocation(line: 1486, column: 17, scope: !1598)
!1604 = !DILocation(line: 1486, column: 62, scope: !1598)
!1605 = !DILocation(line: 1486, column: 17, scope: !1599)
!1606 = !DILocation(line: 1487, column: 33, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1598, file: !373, line: 1486, column: 68)
!1608 = !DILocation(line: 1487, column: 27, scope: !1607)
!1609 = !DILocation(line: 1487, column: 39, scope: !1607)
!1610 = !DILocation(line: 1487, column: 17, scope: !1607)
!1611 = !DILocation(line: 1487, column: 25, scope: !1607)
!1612 = !DILocation(line: 1488, column: 29, scope: !1607)
!1613 = !DILocation(line: 1488, column: 23, scope: !1607)
!1614 = !DILocation(line: 1488, column: 35, scope: !1607)
!1615 = !DILocation(line: 1488, column: 16, scope: !1607)
!1616 = !DILocation(line: 1491, column: 17, scope: !1599)
!1617 = !DILocation(line: 1483, column: 10, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1572, file: !373, discriminator: 3)
!1619 = distinct !{!1619, !1581}
!1620 = !DILocation(line: 1494, column: 10, scope: !1572)
!1621 = !DILocation(line: 1496, column: 4, scope: !1565)
!1622 = !DILocation(line: 1476, column: 41, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1559, file: !373, discriminator: 2)
!1624 = !DILocation(line: 1476, column: 4, scope: !1623)
!1625 = distinct !{!1625, !1626}
!1626 = !DILocation(line: 1476, column: 4, scope: !408)
!1627 = !DILocation(line: 1498, column: 11, scope: !408)
!1628 = !DILocation(line: 1498, column: 4, scope: !408)
!1629 = !DILocation(line: 1499, column: 1, scope: !408)
!1630 = distinct !DISubprogram(name: "Unicode_AllocWithUTF8", scope: !1631, file: !1631, line: 139, type: !1632, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1631 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line694")
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!396, !411}
!1634 = !DILocalVariable(name: "utf8String", arg: 1, scope: !1630, file: !1631, line: 139, type: !411)
!1635 = !DILocation(line: 139, column: 35, scope: !1630)
!1636 = !DILocation(line: 141, column: 35, scope: !1630)
!1637 = !DILocation(line: 141, column: 11, scope: !1630)
!1638 = !DILocation(line: 141, column: 4, scope: !1630)
!1639 = distinct !DISubprogram(name: "TimeUtil_SecondsSinceEpoch", scope: !373, file: !373, line: 1523, type: !1640, isLocal: false, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!353, !482}
!1642 = !DILocalVariable(name: "d", arg: 1, scope: !1639, file: !373, line: 1523, type: !482)
!1643 = !DILocation(line: 1523, column: 43, scope: !1639)
!1644 = !DILocalVariable(name: "tmval", scope: !1639, file: !373, line: 1525, type: !434)
!1645 = !DILocation(line: 1525, column: 14, scope: !1639)
!1646 = !DILocation(line: 1530, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !373, line: 1530, column: 8)
!1648 = !DILocation(line: 1530, column: 11, scope: !1647)
!1649 = !DILocation(line: 1530, column: 16, scope: !1647)
!1650 = !DILocation(line: 1530, column: 8, scope: !1639)
!1651 = !DILocation(line: 1532, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !373, line: 1530, column: 24)
!1653 = !DILocation(line: 1535, column: 20, scope: !1639)
!1654 = !DILocation(line: 1535, column: 23, scope: !1639)
!1655 = !DILocation(line: 1535, column: 28, scope: !1639)
!1656 = !DILocation(line: 1535, column: 10, scope: !1639)
!1657 = !DILocation(line: 1535, column: 18, scope: !1639)
!1658 = !DILocation(line: 1536, column: 19, scope: !1639)
!1659 = !DILocation(line: 1536, column: 22, scope: !1639)
!1660 = !DILocation(line: 1536, column: 28, scope: !1639)
!1661 = !DILocation(line: 1536, column: 10, scope: !1639)
!1662 = !DILocation(line: 1536, column: 17, scope: !1639)
!1663 = !DILocation(line: 1537, column: 20, scope: !1639)
!1664 = !DILocation(line: 1537, column: 23, scope: !1639)
!1665 = !DILocation(line: 1537, column: 10, scope: !1639)
!1666 = !DILocation(line: 1537, column: 18, scope: !1639)
!1667 = !DILocation(line: 1538, column: 20, scope: !1639)
!1668 = !DILocation(line: 1538, column: 23, scope: !1639)
!1669 = !DILocation(line: 1538, column: 10, scope: !1639)
!1670 = !DILocation(line: 1538, column: 18, scope: !1639)
!1671 = !DILocation(line: 1539, column: 19, scope: !1639)
!1672 = !DILocation(line: 1539, column: 22, scope: !1639)
!1673 = !DILocation(line: 1539, column: 10, scope: !1639)
!1674 = !DILocation(line: 1539, column: 17, scope: !1639)
!1675 = !DILocation(line: 1540, column: 19, scope: !1639)
!1676 = !DILocation(line: 1540, column: 22, scope: !1639)
!1677 = !DILocation(line: 1540, column: 10, scope: !1639)
!1678 = !DILocation(line: 1540, column: 17, scope: !1639)
!1679 = !DILocation(line: 1555, column: 11, scope: !1639)
!1680 = !DILocation(line: 1555, column: 4, scope: !1639)
!1681 = !DILocation(line: 1560, column: 1, scope: !1639)
!1682 = distinct !DISubprogram(name: "TimeUtilIsValidDate", scope: !373, file: !373, line: 1209, type: !1683, isLocal: true, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!382, !369, !369, !369}
!1685 = !DILocalVariable(name: "year", arg: 1, scope: !1682, file: !373, line: 1209, type: !369)
!1686 = !DILocation(line: 1209, column: 34, scope: !1682)
!1687 = !DILocalVariable(name: "month", arg: 2, scope: !1682, file: !373, line: 1210, type: !369)
!1688 = !DILocation(line: 1210, column: 34, scope: !1682)
!1689 = !DILocalVariable(name: "day", arg: 3, scope: !1682, file: !373, line: 1211, type: !369)
!1690 = !DILocation(line: 1211, column: 34, scope: !1682)
!1691 = !DILocalVariable(name: "monthDays", scope: !1682, file: !373, line: 1213, type: !401)
!1692 = !DILocation(line: 1213, column: 24, scope: !1682)
!1693 = !DILocation(line: 1219, column: 41, scope: !1682)
!1694 = !DILocation(line: 1219, column: 16, scope: !1682)
!1695 = !DILocation(line: 1219, column: 14, scope: !1682)
!1696 = !DILocation(line: 1221, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1682, file: !373, line: 1221, column: 8)
!1698 = !DILocation(line: 1221, column: 14, scope: !1697)
!1699 = !DILocation(line: 1221, column: 20, scope: !1697)
!1700 = !DILocation(line: 1222, column: 9, scope: !1697)
!1701 = !DILocation(line: 1222, column: 15, scope: !1697)
!1702 = !DILocation(line: 1222, column: 21, scope: !1697)
!1703 = !DILocation(line: 1222, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1697, file: !373, discriminator: 1)
!1705 = !DILocation(line: 1222, column: 31, scope: !1704)
!1706 = !DILocation(line: 1222, column: 38, scope: !1704)
!1707 = !DILocation(line: 1223, column: 9, scope: !1697)
!1708 = !DILocation(line: 1223, column: 13, scope: !1697)
!1709 = !DILocation(line: 1223, column: 19, scope: !1697)
!1710 = !DILocation(line: 1223, column: 23, scope: !1704)
!1711 = !DILocation(line: 1223, column: 40, scope: !1704)
!1712 = !DILocation(line: 1223, column: 30, scope: !1704)
!1713 = !DILocation(line: 1223, column: 27, scope: !1704)
!1714 = !DILocation(line: 1221, column: 8, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1682, file: !373, discriminator: 1)
!1716 = !DILocation(line: 1224, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !373, line: 1223, column: 49)
!1718 = !DILocation(line: 1227, column: 4, scope: !1682)
!1719 = !DILocation(line: 1228, column: 1, scope: !1682)
