; ModuleID = '/home/lichi/Desktop/genwqe/[task]tools--genwqe_csv2vpd/[inter]tools--genwqe_csv2vpd.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]tools--genwqe_csv2vpd/[inter]tools--genwqe_csv2vpd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@arg_index = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@output_fn = internal global [512 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@input_fn = internal global [512 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@verbose_flag = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"-crc\00", align 1
@add_crc = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"\0AInput Filename:   '%s'\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0AOutput Filename:  '%s'\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@arg_count = internal global i32 0, align 4
@arg_values = internal global [100 x i8*] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [119 x i8] c"csv2bin -i <Input CSV File> -o <Output Bin File>\0A\09-crc Add crc32 to bin file (same as from chksum).\0A\09-v Verbose mode.\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Cannot open input file '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Cannot open output file '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\0ASkipping Line (#%d) len: %d <%s>\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\0ALine (#%d): <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Token (Offset): <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"ERROR while reading Offset-Token on line %d! skipping line\0A\00", align 1
@crc_token = internal global [6 x i8] c"crc32\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Token (crc32): at offset %d <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Token (Value): <%s>\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"ERROR while reading Value-Token on line %d! skipping line\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Token %d: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Offset: <0x%04X>, Desc: <%s>, Value: <0x%02X>\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Error: fwrite %d != 1\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Close In <%s> Out <%s> Size %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"\0ACannot open '%s'\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"\0ACannot allocate %d Bytes\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%ld %d %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Error: fwrite %d of 4 Bytes\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Error: fread %d of %d Bytes\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"CRC32 Added to <%s>\0A\00", align 1
@crc32_lut = internal constant [256 x i32] [i32 0, i32 79764919, i32 159529838, i32 222504665, i32 319059676, i32 398814059, i32 445009330, i32 507990021, i32 638119352, i32 583659535, i32 797628118, i32 726387553, i32 890018660, i32 835552979, i32 1015980042, i32 944750013, i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929, i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509, i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601, i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757, i32 -1742489888, i32 -1662866601, i32 -1851683442, i32 -1788833735, i32 -1960329156, i32 -1880695413, i32 -2103051438, i32 -2040207643, i32 -1104454824, i32 -1159051537, i32 -1213636554, i32 -1284997759, i32 -1389417084, i32 -1444007885, i32 -1532160278, i32 -1603531939, i32 -734892656, i32 -789352409, i32 -575645954, i32 -646886583, i32 -952755380, i32 -1007220997, i32 -827056094, i32 -898286187, i32 -231047128, i32 -151282273, i32 -71779514, i32 -8804623, i32 -515967244, i32 -436212925, i32 -390279782, i32 -327299027, i32 881225847, i32 809987520, i32 1023691545, i32 969234094, i32 662832811, i32 591600412, i32 771767749, i32 717299826, i32 311336399, i32 374308984, i32 453813921, i32 533576470, i32 25881363, i32 88864420, i32 134795389, i32 214552010, i32 2023205639, i32 2086057648, i32 1897238633, i32 1976864222, i32 1804852699, i32 1867694188, i32 1645340341, i32 1724971778, i32 1587496639, i32 1516133128, i32 1461550545, i32 1406951526, i32 1302016099, i32 1230646740, i32 1142491917, i32 1087903418, i32 -1398421865, i32 -1469785312, i32 -1524105735, i32 -1578704818, i32 -1079922613, i32 -1151291908, i32 -1239184603, i32 -1293773166, i32 -1968362705, i32 -1905510760, i32 -2094067647, i32 -2014441994, i32 -1716953613, i32 -1654112188, i32 -1876203875, i32 -1796572374, i32 -525066777, i32 -462094256, i32 -382327159, i32 -302564546, i32 -206542021, i32 -143559028, i32 -97365931, i32 -17609246, i32 -960696225, i32 -1031934488, i32 -817968335, i32 -872425850, i32 -709327229, i32 -780559564, i32 -600130067, i32 -654598054, i32 1762451694, i32 1842216281, i32 1619975040, i32 1682949687, i32 2047383090, i32 2127137669, i32 1938468188, i32 2001449195, i32 1325665622, i32 1271206113, i32 1183200824, i32 1111960463, i32 1543535498, i32 1489069629, i32 1434599652, i32 1363369299, i32 622672798, i32 568075817, i32 748617968, i32 677256519, i32 907627842, i32 853037301, i32 1067152940, i32 995781531, i32 51762726, i32 131386257, i32 177728840, i32 240578815, i32 269590778, i32 349224269, i32 429104020, i32 491947555, i32 -248556018, i32 -168932423, i32 -122852000, i32 -60002089, i32 -500490030, i32 -420856475, i32 -341238852, i32 -278395381, i32 -685261898, i32 -739858943, i32 -559578920, i32 -630940305, i32 -1004286614, i32 -1058877219, i32 -845023740, i32 -916395085, i32 -1119974018, i32 -1174433591, i32 -1262701040, i32 -1333941337, i32 -1371866206, i32 -1426332139, i32 -1481064244, i32 -1552294533, i32 -1690935098, i32 -1611170447, i32 -1833673816, i32 -1770699233, i32 -2009983462, i32 -1930228819, i32 -2119160460, i32 -2056179517, i32 1569362073, i32 1498123566, i32 1409854455, i32 1355396672, i32 1317987909, i32 1246755826, i32 1192025387, i32 1137557660, i32 2072149281, i32 2135122070, i32 1912620623, i32 1992383480, i32 1753615357, i32 1816598090, i32 1627664531, i32 1707420964, i32 295390185, i32 358241886, i32 404320391, i32 483945776, i32 43990325, i32 106832002, i32 186451547, i32 266083308, i32 932423249, i32 861060070, i32 1041341759, i32 986742920, i32 613929101, i32 542559546, i32 756411363, i32 701822548, i32 -978770311, i32 -1050133554, i32 -869589737, i32 -924188512, i32 -693284699, i32 -764654318, i32 -550540341, i32 -605129092, i32 -475935807, i32 -413084042, i32 -366743377, i32 -287118056, i32 -257573603, i32 -194731862, i32 -114850189, i32 -35218492, i32 -1984365303, i32 -1921392450, i32 -2143631769, i32 -2063868976, i32 -1698919467, i32 -1635936670, i32 -1824608069, i32 -1744851700, i32 -1347415887, i32 -1418654458, i32 -1506661409, i32 -1561119128, i32 -1129027987, i32 -1200260134, i32 -1254728445, i32 -1309196108], align 16

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !50 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !56), !dbg !57
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !58, metadata !56), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %6, metadata !60, metadata !56), !dbg !61
  store i32 0, i32* %6, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !56), !dbg !63
  store i32 0, i32* %7, align 4, !dbg !63
  %8 = load i32, i32* %4, align 4, !dbg !64
  %9 = load i8**, i8*** %5, align 8, !dbg !65
  call void @set_args(i32 %8, i8** %9), !dbg !66
  br label %10, !dbg !67

; <label>:10:                                     ; preds = %54, %2
  %11 = load i32, i32* @arg_index, align 4, !dbg !68
  %12 = load i32, i32* %4, align 4, !dbg !70
  %13 = icmp slt i32 %11, %12, !dbg !71
  br i1 %13, label %14, label %56, !dbg !72

; <label>:14:                                     ; preds = %10
  %15 = call i8* @next_arg(), !dbg !73
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6, !dbg !76
  %17 = icmp eq i32 %16, 0, !dbg !78
  br i1 %17, label %18, label %19, !dbg !79

; <label>:18:                                     ; preds = %14
  call void @help(), !dbg !80
  call void @exit(i32 0) #7, !dbg !82
  unreachable, !dbg !82

; <label>:19:                                     ; preds = %14
  %20 = call i8* @next_arg(), !dbg !83
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !85
  %22 = icmp eq i32 %21, 0, !dbg !87
  br i1 %22, label %23, label %30, !dbg !88

; <label>:23:                                     ; preds = %19
  %24 = call i8* @get_next_arg(), !dbg !89
  %25 = call i8* @next_arg(), !dbg !91
  %26 = call i32 (i8*, i8*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)) #8, !dbg !93
  %27 = icmp eq i32 %26, 1, !dbg !95
  br i1 %27, label %28, label %29, !dbg !96

; <label>:28:                                     ; preds = %23
  store i32 1, i32* %7, align 4, !dbg !97
  br label %29, !dbg !98

; <label>:29:                                     ; preds = %28, %23
  br label %54, !dbg !99

; <label>:30:                                     ; preds = %19
  %31 = call i8* @next_arg(), !dbg !100
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !102
  %33 = icmp eq i32 %32, 0, !dbg !104
  br i1 %33, label %34, label %41, !dbg !105

; <label>:34:                                     ; preds = %30
  %35 = call i8* @get_next_arg(), !dbg !106
  %36 = call i8* @next_arg(), !dbg !108
  %37 = call i32 (i8*, i8*, ...) @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @input_fn, i32 0, i32 0)) #8, !dbg !110
  %38 = icmp eq i32 %37, 1, !dbg !112
  br i1 %38, label %39, label %40, !dbg !113

; <label>:39:                                     ; preds = %34
  store i32 1, i32* %6, align 4, !dbg !114
  br label %40, !dbg !115

; <label>:40:                                     ; preds = %39, %34
  br label %53, !dbg !116

; <label>:41:                                     ; preds = %30
  %42 = call i8* @next_arg(), !dbg !117
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !119
  %44 = icmp eq i32 %43, 0, !dbg !121
  br i1 %44, label %45, label %46, !dbg !122

; <label>:45:                                     ; preds = %41
  store i32 1, i32* @verbose_flag, align 4, !dbg !123
  br label %52, !dbg !124

; <label>:46:                                     ; preds = %41
  %47 = call i8* @next_arg(), !dbg !125
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !127
  %49 = icmp eq i32 %48, 0, !dbg !129
  br i1 %49, label %50, label %51, !dbg !130

; <label>:50:                                     ; preds = %46
  store i32 1, i32* @add_crc, align 4, !dbg !131
  br label %51, !dbg !132

; <label>:51:                                     ; preds = %50, %46
  br label %52

; <label>:52:                                     ; preds = %51, %45
  br label %53

; <label>:53:                                     ; preds = %52, %40
  br label %54

; <label>:54:                                     ; preds = %53, %29
  %55 = call i8* @get_next_arg(), !dbg !133
  br label %10, !dbg !134, !llvm.loop !136

; <label>:56:                                     ; preds = %10
  %57 = load i32, i32* @verbose_flag, align 4, !dbg !137
  %58 = icmp ne i32 %57, 0, !dbg !137
  br i1 %58, label %59, label %63, !dbg !139

; <label>:59:                                     ; preds = %56
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @input_fn, i32 0, i32 0)), !dbg !140
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)), !dbg !142
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !143
  br label %63, !dbg !144

; <label>:63:                                     ; preds = %59, %56
  %64 = load i32, i32* %6, align 4, !dbg !145
  %65 = icmp eq i32 1, %64, !dbg !147
  br i1 %65, label %66, label %71, !dbg !148

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %7, align 4, !dbg !149
  %68 = icmp eq i32 1, %67, !dbg !151
  br i1 %68, label %69, label %71, !dbg !152

; <label>:69:                                     ; preds = %66
  %70 = call i32 @convert_csv(), !dbg !153
  br label %72, !dbg !153

; <label>:71:                                     ; preds = %66, %63
  call void @help(), !dbg !154
  br label %72

; <label>:72:                                     ; preds = %71, %69
  %73 = load i32, i32* @verbose_flag, align 4, !dbg !155
  %74 = icmp ne i32 %73, 0, !dbg !155
  br i1 %74, label %75, label %77, !dbg !157

; <label>:75:                                     ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !158
  br label %77, !dbg !158

; <label>:77:                                     ; preds = %75, %72
  call void @exit(i32 0) #7, !dbg !159
  unreachable, !dbg !159
                                                  ; No predecessors!
  %79 = load i32, i32* %3, align 4, !dbg !160
  ret i32 %79, !dbg !160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @set_args(i32, i8**) #0 !dbg !161 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !164, metadata !56), !dbg !165
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !166, metadata !56), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %5, metadata !168, metadata !56), !dbg !169
  %6 = load i32, i32* %3, align 4, !dbg !170
  store i32 %6, i32* @arg_count, align 4, !dbg !171
  store i32 0, i32* %5, align 4, !dbg !172
  br label %7, !dbg !174

; <label>:7:                                      ; preds = %20, %2
  %8 = load i32, i32* %5, align 4, !dbg !175
  %9 = load i32, i32* %3, align 4, !dbg !178
  %10 = icmp slt i32 %8, %9, !dbg !179
  br i1 %10, label %11, label %23, !dbg !180

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %5, align 4, !dbg !181
  %13 = sext i32 %12 to i64, !dbg !182
  %14 = load i8**, i8*** %4, align 8, !dbg !182
  %15 = getelementptr inbounds i8*, i8** %14, i64 %13, !dbg !182
  %16 = load i8*, i8** %15, align 8, !dbg !182
  %17 = load i32, i32* %5, align 4, !dbg !183
  %18 = sext i32 %17 to i64, !dbg !184
  %19 = getelementptr inbounds [100 x i8*], [100 x i8*]* @arg_values, i64 0, i64 %18, !dbg !184
  store i8* %16, i8** %19, align 8, !dbg !185
  br label %20, !dbg !184

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %5, align 4, !dbg !186
  %22 = add nsw i32 %21, 1, !dbg !186
  store i32 %22, i32* %5, align 4, !dbg !186
  br label %7, !dbg !188, !llvm.loop !189

; <label>:23:                                     ; preds = %7
  store i32 1, i32* @arg_index, align 4, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @next_arg() #0 !dbg !193 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @arg_index, align 4, !dbg !196
  %3 = load i32, i32* @arg_count, align 4, !dbg !198
  %4 = icmp slt i32 %2, %3, !dbg !199
  br i1 %4, label %5, label %10, !dbg !200

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @arg_index, align 4, !dbg !201
  %7 = sext i32 %6 to i64, !dbg !202
  %8 = getelementptr inbounds [100 x i8*], [100 x i8*]* @arg_values, i64 0, i64 %7, !dbg !202
  %9 = load i8*, i8** %8, align 8, !dbg !202
  store i8* %9, i8** %1, align 8, !dbg !203
  br label %11, !dbg !203

; <label>:10:                                     ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !204
  br label %11, !dbg !204

; <label>:11:                                     ; preds = %10, %5
  %12 = load i8*, i8** %1, align 8, !dbg !205
  ret i8* %12, !dbg !205
}

; Function Attrs: nounwind uwtable
define internal void @help() #0 !dbg !206 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.9, i32 0, i32 0)), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_next_arg() #0 !dbg !211 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @arg_index, align 4, !dbg !212
  %3 = load i32, i32* @arg_count, align 4, !dbg !214
  %4 = icmp slt i32 %2, %3, !dbg !215
  br i1 %4, label %5, label %11, !dbg !216

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @arg_index, align 4, !dbg !217
  %7 = add nsw i32 %6, 1, !dbg !217
  store i32 %7, i32* @arg_index, align 4, !dbg !217
  %8 = sext i32 %6 to i64, !dbg !218
  %9 = getelementptr inbounds [100 x i8*], [100 x i8*]* @arg_values, i64 0, i64 %8, !dbg !218
  %10 = load i8*, i8** %9, align 8, !dbg !218
  store i8* %10, i8** %1, align 8, !dbg !219
  br label %12, !dbg !219

; <label>:11:                                     ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !220
  br label %12, !dbg !220

; <label>:12:                                     ; preds = %11, %5
  %13 = load i8*, i8** %1, align 8, !dbg !221
  ret i8* %13, !dbg !221
}

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #4

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @convert_csv() #0 !dbg !222 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !225, metadata !56), !dbg !284
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !285, metadata !56), !dbg !286
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !287, metadata !56), !dbg !288
  call void @llvm.dbg.declare(metadata [512 x i8]* %5, metadata !289, metadata !56), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %6, metadata !291, metadata !56), !dbg !292
  store i32 0, i32* %6, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %7, metadata !293, metadata !56), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %8, metadata !295, metadata !56), !dbg !296
  store i32 0, i32* %8, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %9, metadata !297, metadata !56), !dbg !298
  call void @llvm.dbg.declare(metadata [512 x i8]* %10, metadata !299, metadata !56), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %11, metadata !301, metadata !56), !dbg !302
  store i32 0, i32* %11, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i8* %12, metadata !303, metadata !56), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %13, metadata !305, metadata !56), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %14, metadata !307, metadata !56), !dbg !308
  call void @llvm.dbg.declare(metadata i32* %15, metadata !309, metadata !56), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %16, metadata !311, metadata !56), !dbg !312
  store i32 0, i32* %16, align 4, !dbg !312
  call void @llvm.dbg.declare(metadata i32* %17, metadata !313, metadata !56), !dbg !314
  store i32 0, i32* %17, align 4, !dbg !314
  call void @llvm.dbg.declare(metadata i32* %18, metadata !315, metadata !56), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %19, metadata !318, metadata !56), !dbg !320
  store i8* null, i8** %19, align 8, !dbg !320
  %23 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @input_fn, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !321
  store %struct._IO_FILE* %23, %struct._IO_FILE** %2, align 8, !dbg !322
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !323
  %25 = icmp eq %struct._IO_FILE* %24, null, !dbg !325
  br i1 %25, label %26, label %28, !dbg !326

; <label>:26:                                     ; preds = %0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @input_fn, i32 0, i32 0)), !dbg !327
  store i32 0, i32* %1, align 4, !dbg !329
  br label %333, !dbg !329

; <label>:28:                                     ; preds = %0
  %29 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)), !dbg !330
  store %struct._IO_FILE* %29, %struct._IO_FILE** %3, align 8, !dbg !331
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !332
  %31 = icmp eq %struct._IO_FILE* %30, null, !dbg !334
  br i1 %31, label %32, label %36, !dbg !335

; <label>:32:                                     ; preds = %28
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)), !dbg !336
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !338
  %35 = call i32 @fclose(%struct._IO_FILE* %34), !dbg !339
  store i32 0, i32* %1, align 4, !dbg !340
  br label %333, !dbg !340

; <label>:36:                                     ; preds = %28
  br label %37, !dbg !341

; <label>:37:                                     ; preds = %247, %73, %36
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !342
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !344
  %40 = call i8* @fgets(i8* %38, i32 512, %struct._IO_FILE* %39), !dbg !345
  %41 = icmp ne i8* %40, null, !dbg !346
  br i1 %41, label %42, label %248, !dbg !347

; <label>:42:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %20, metadata !348, metadata !56), !dbg !350
  store i32 0, i32* %20, align 4, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %21, metadata !351, metadata !56), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %22, metadata !353, metadata !56), !dbg !354
  store i32 0, i32* %15, align 4, !dbg !355
  %43 = load i32, i32* %6, align 4, !dbg !356
  %44 = add i32 %43, 1, !dbg !356
  store i32 %44, i32* %6, align 4, !dbg !356
  store i32 0, i32* %21, align 4, !dbg !357
  store i32 0, i32* %14, align 4, !dbg !358
  %45 = load i32, i32* %14, align 4, !dbg !359
  %46 = sext i32 %45 to i64, !dbg !360
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %46, !dbg !360
  store i8 0, i8* %47, align 1, !dbg !361
  store i32 0, i32* %20, align 4, !dbg !362
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !363
  %49 = call i64 @strlen(i8* %48) #6, !dbg !364
  %50 = sub i64 %49, 2, !dbg !365
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %50, !dbg !366
  store i8 0, i8* %51, align 1, !dbg !367
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !368
  %53 = call i64 @strlen(i8* %52) #6, !dbg !369
  %54 = trunc i64 %53 to i32, !dbg !370
  store i32 %54, i32* %22, align 4, !dbg !371
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0, !dbg !372
  %56 = load i8, i8* %55, align 16, !dbg !372
  %57 = sext i8 %56 to i32, !dbg !372
  %58 = icmp ne i32 %57, 48, !dbg !374
  br i1 %58, label %65, label %59, !dbg !375

; <label>:59:                                     ; preds = %42
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 1, !dbg !376
  %61 = load i8, i8* %60, align 1, !dbg !376
  %62 = sext i8 %61 to i32, !dbg !376
  %63 = call i32 @tolower(i32 %62) #6, !dbg !378
  %64 = icmp ne i32 %63, 120, !dbg !379
  br i1 %64, label %65, label %74, !dbg !380

; <label>:65:                                     ; preds = %59, %42
  %66 = load i32, i32* @verbose_flag, align 4, !dbg !381
  %67 = icmp ne i32 %66, 0, !dbg !381
  br i1 %67, label %68, label %73, !dbg !384

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %6, align 4, !dbg !385
  %70 = load i32, i32* %22, align 4, !dbg !386
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !387
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i32 %69, i32 %70, i8* %71), !dbg !388
  br label %73, !dbg !388

; <label>:73:                                     ; preds = %68, %65
  br label %37, !dbg !389, !llvm.loop !390

; <label>:74:                                     ; preds = %59
  %75 = load i32, i32* @verbose_flag, align 4, !dbg !391
  %76 = icmp ne i32 %75, 0, !dbg !391
  br i1 %76, label %77, label %81, !dbg !393

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %6, align 4, !dbg !394
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !395
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 %78, i8* %79), !dbg !396
  br label %81, !dbg !396

; <label>:81:                                     ; preds = %77, %74
  store i32 0, i32* %13, align 4, !dbg !397
  br label %82, !dbg !399

; <label>:82:                                     ; preds = %204, %81
  %83 = load i32, i32* %13, align 4, !dbg !400
  %84 = load i32, i32* %22, align 4, !dbg !403
  %85 = icmp sle i32 %83, %84, !dbg !404
  br i1 %85, label %86, label %207, !dbg !405

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* %13, align 4, !dbg !406
  %88 = sext i32 %87 to i64, !dbg !408
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %88, !dbg !408
  %90 = load i8, i8* %89, align 1, !dbg !408
  %91 = sext i8 %90 to i32, !dbg !408
  switch i32 %91, label %191 [
    i32 44, label %92
    i32 0, label %92
  ], !dbg !409

; <label>:92:                                     ; preds = %86, %86
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !410
  %94 = call i64 @strlen(i8* %93) #6, !dbg !413
  %95 = icmp ne i64 %94, 0, !dbg !414
  br i1 %95, label %96, label %185, !dbg !415

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %20, align 4, !dbg !416
  switch i32 %97, label %176 [
    i32 0, label %98
    i32 1, label %125
    i32 6, label %131
    i32 9, label %149
  ], !dbg !418

; <label>:98:                                     ; preds = %96
  %99 = load i32, i32* @verbose_flag, align 4, !dbg !419
  %100 = icmp ne i32 %99, 0, !dbg !419
  br i1 %100, label %101, label %104, !dbg !422

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !423
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %102), !dbg !424
  br label %104, !dbg !424

; <label>:104:                                    ; preds = %101, %98
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0, !dbg !425
  %106 = load i8, i8* %105, align 16, !dbg !425
  %107 = sext i8 %106 to i32, !dbg !425
  %108 = icmp ne i32 %107, 48, !dbg !427
  br i1 %108, label %119, label %109, !dbg !428

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1, !dbg !429
  %111 = load i8, i8* %110, align 1, !dbg !429
  %112 = sext i8 %111 to i32, !dbg !429
  %113 = call i32 @tolower(i32 %112) #6, !dbg !430
  %114 = icmp ne i32 %113, 120, !dbg !431
  br i1 %114, label %119, label %115, !dbg !432

; <label>:115:                                    ; preds = %109
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 2, !dbg !433
  %117 = call i32 (i8*, i8*, ...) @sscanf(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %7) #8, !dbg !434
  %118 = icmp ne i32 %117, 1, !dbg !435
  br i1 %118, label %119, label %122, !dbg !436

; <label>:119:                                    ; preds = %115, %109, %104
  store i32 1, i32* %15, align 4, !dbg !438
  %120 = load i32, i32* %6, align 4, !dbg !440
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), i32 %120), !dbg !441
  br label %204, !dbg !442

; <label>:122:                                    ; preds = %115
  %123 = load i32, i32* %21, align 4, !dbg !443
  %124 = add nsw i32 %123, 1, !dbg !443
  store i32 %124, i32* %21, align 4, !dbg !443
  br label %184, !dbg !444

; <label>:125:                                    ; preds = %96
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !445
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !446
  %128 = call i8* @strcpy(i8* %126, i8* %127) #8, !dbg !447
  %129 = load i32, i32* %21, align 4, !dbg !448
  %130 = add nsw i32 %129, 1, !dbg !448
  store i32 %130, i32* %21, align 4, !dbg !448
  br label %184, !dbg !449

; <label>:131:                                    ; preds = %96
  %132 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !450
  %133 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @crc_token, i32 0, i32 0), i8* %132, i64 5) #6, !dbg !452
  %134 = icmp eq i32 0, %133, !dbg !453
  br i1 %134, label %135, label %148, !dbg !454

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %8, align 4, !dbg !455
  %137 = icmp eq i32 0, %136, !dbg !458
  br i1 %137, label %138, label %147, !dbg !459

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* @verbose_flag, align 4, !dbg !460
  %140 = icmp ne i32 %139, 0, !dbg !460
  br i1 %140, label %141, label %145, !dbg !463

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %7, align 4, !dbg !464
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !465
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i32 %142, i8* %143), !dbg !466
  br label %145, !dbg !466

; <label>:145:                                    ; preds = %141, %138
  %146 = load i32, i32* %7, align 4, !dbg !467
  store i32 %146, i32* %8, align 4, !dbg !468
  br label %147, !dbg !469

; <label>:147:                                    ; preds = %145, %135
  br label %148, !dbg !470

; <label>:148:                                    ; preds = %147, %131
  br label %184, !dbg !471

; <label>:149:                                    ; preds = %96
  %150 = load i32, i32* @verbose_flag, align 4, !dbg !472
  %151 = icmp ne i32 %150, 0, !dbg !472
  br i1 %151, label %152, label %155, !dbg !474

; <label>:152:                                    ; preds = %149
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !475
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* %153), !dbg !476
  br label %155, !dbg !476

; <label>:155:                                    ; preds = %152, %149
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0, !dbg !477
  %157 = load i8, i8* %156, align 16, !dbg !477
  %158 = sext i8 %157 to i32, !dbg !477
  %159 = icmp ne i32 %158, 48, !dbg !479
  br i1 %159, label %170, label %160, !dbg !480

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1, !dbg !481
  %162 = load i8, i8* %161, align 1, !dbg !481
  %163 = sext i8 %162 to i32, !dbg !481
  %164 = call i32 @tolower(i32 %163) #6, !dbg !482
  %165 = icmp ne i32 %164, 120, !dbg !483
  br i1 %165, label %170, label %166, !dbg !484

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 2, !dbg !485
  %168 = call i32 (i8*, i8*, ...) @sscanf(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %9) #8, !dbg !486
  %169 = icmp ne i32 %168, 1, !dbg !487
  br i1 %169, label %170, label %173, !dbg !488

; <label>:170:                                    ; preds = %166, %160, %155
  store i32 1, i32* %15, align 4, !dbg !489
  %171 = load i32, i32* %6, align 4, !dbg !491
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 %171), !dbg !492
  br label %204, !dbg !493

; <label>:173:                                    ; preds = %166
  %174 = load i32, i32* %21, align 4, !dbg !494
  %175 = add nsw i32 %174, 1, !dbg !494
  store i32 %175, i32* %21, align 4, !dbg !494
  br label %184, !dbg !495

; <label>:176:                                    ; preds = %96
  %177 = load i32, i32* @verbose_flag, align 4, !dbg !496
  %178 = icmp ne i32 %177, 0, !dbg !496
  br i1 %178, label %179, label %183, !dbg !498

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %20, align 4, !dbg !499
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !500
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 %180, i8* %181), !dbg !501
  br label %183, !dbg !501

; <label>:183:                                    ; preds = %179, %176
  br label %184, !dbg !502

; <label>:184:                                    ; preds = %183, %173, %148, %125, %122
  br label %185, !dbg !503

; <label>:185:                                    ; preds = %184, %92
  store i32 0, i32* %14, align 4, !dbg !504
  %186 = load i32, i32* %14, align 4, !dbg !505
  %187 = sext i32 %186 to i64, !dbg !506
  %188 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %187, !dbg !506
  store i8 0, i8* %188, align 1, !dbg !507
  %189 = load i32, i32* %20, align 4, !dbg !508
  %190 = add nsw i32 %189, 1, !dbg !508
  store i32 %190, i32* %20, align 4, !dbg !508
  br label %203, !dbg !509

; <label>:191:                                    ; preds = %86
  %192 = load i32, i32* %13, align 4, !dbg !510
  %193 = sext i32 %192 to i64, !dbg !511
  %194 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %193, !dbg !511
  %195 = load i8, i8* %194, align 1, !dbg !511
  %196 = load i32, i32* %14, align 4, !dbg !512
  %197 = add nsw i32 %196, 1, !dbg !512
  store i32 %197, i32* %14, align 4, !dbg !512
  %198 = sext i32 %196 to i64, !dbg !513
  %199 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %198, !dbg !513
  store i8 %195, i8* %199, align 1, !dbg !514
  %200 = load i32, i32* %14, align 4, !dbg !515
  %201 = sext i32 %200 to i64, !dbg !516
  %202 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %201, !dbg !516
  store i8 0, i8* %202, align 1, !dbg !517
  br label %203, !dbg !518

; <label>:203:                                    ; preds = %191, %185
  br label %204, !dbg !519

; <label>:204:                                    ; preds = %203, %170, %119
  %205 = load i32, i32* %13, align 4, !dbg !520
  %206 = add nsw i32 %205, 1, !dbg !520
  store i32 %206, i32* %13, align 4, !dbg !520
  br label %82, !dbg !522, !llvm.loop !523

; <label>:207:                                    ; preds = %82
  %208 = load i32, i32* %15, align 4, !dbg !525
  %209 = icmp ne i32 %208, 0, !dbg !525
  br i1 %209, label %247, label %210, !dbg !527

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %21, align 4, !dbg !528
  %212 = icmp eq i32 %211, 3, !dbg !530
  br i1 %212, label %216, label %213, !dbg !531

; <label>:213:                                    ; preds = %210
  %214 = load i32, i32* %21, align 4, !dbg !532
  %215 = icmp eq i32 %214, 2, !dbg !534
  br i1 %215, label %216, label %247, !dbg !535

; <label>:216:                                    ; preds = %213, %210
  %217 = load i32, i32* @verbose_flag, align 4, !dbg !536
  %218 = icmp ne i32 %217, 0, !dbg !536
  br i1 %218, label %219, label %224, !dbg !539

; <label>:219:                                    ; preds = %216
  %220 = load i32, i32* %7, align 4, !dbg !540
  %221 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !541
  %222 = load i32, i32* %9, align 4, !dbg !542
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i32 0, i32 0), i32 %220, i8* %221, i32 %222), !dbg !543
  br label %224, !dbg !543

; <label>:224:                                    ; preds = %219, %216
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !544
  %226 = load i32, i32* %7, align 4, !dbg !545
  %227 = sext i32 %226 to i64, !dbg !545
  %228 = call i32 @fseek(%struct._IO_FILE* %225, i64 %227, i32 0), !dbg !546
  %229 = load i32, i32* %9, align 4, !dbg !547
  %230 = trunc i32 %229 to i8, !dbg !548
  store i8 %230, i8* %12, align 1, !dbg !549
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !550
  %232 = call i64 @fwrite(i8* %12, i64 1, i64 1, %struct._IO_FILE* %231), !dbg !551
  %233 = trunc i64 %232 to i32, !dbg !551
  store i32 %233, i32* %17, align 4, !dbg !552
  %234 = load i32, i32* %17, align 4, !dbg !553
  %235 = icmp ne i32 1, %234, !dbg !555
  br i1 %235, label %236, label %239, !dbg !556

; <label>:236:                                    ; preds = %224
  %237 = load i32, i32* %17, align 4, !dbg !557
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i32 %237), !dbg !558
  br label %239, !dbg !558

; <label>:239:                                    ; preds = %236, %224
  %240 = load i32, i32* %7, align 4, !dbg !559
  %241 = load i32, i32* %16, align 4, !dbg !561
  %242 = icmp sgt i32 %240, %241, !dbg !562
  br i1 %242, label %243, label %246, !dbg !563

; <label>:243:                                    ; preds = %239
  %244 = load i32, i32* %7, align 4, !dbg !564
  %245 = add nsw i32 %244, 1, !dbg !565
  store i32 %245, i32* %16, align 4, !dbg !566
  br label %246, !dbg !567

; <label>:246:                                    ; preds = %243, %239
  br label %247, !dbg !568

; <label>:247:                                    ; preds = %246, %213, %207
  br label %37, !dbg !569, !llvm.loop !390

; <label>:248:                                    ; preds = %37
  %249 = load i32, i32* @verbose_flag, align 4, !dbg !571
  %250 = icmp ne i32 %249, 0, !dbg !571
  br i1 %250, label %251, label %254, !dbg !573

; <label>:251:                                    ; preds = %248
  %252 = load i32, i32* %16, align 4, !dbg !574
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @input_fn, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0), i32 %252), !dbg !575
  br label %254, !dbg !575

; <label>:254:                                    ; preds = %251, %248
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !576
  %256 = call i32 @fclose(%struct._IO_FILE* %255), !dbg !577
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !578
  %258 = call i32 @fclose(%struct._IO_FILE* %257), !dbg !579
  %259 = load i32, i32* @add_crc, align 4, !dbg !580
  %260 = icmp eq i32 1, %259, !dbg !582
  br i1 %260, label %261, label %332, !dbg !583

; <label>:261:                                    ; preds = %254
  %262 = load i32, i32* %8, align 4, !dbg !584
  %263 = icmp ne i32 0, %262, !dbg !586
  br i1 %263, label %264, label %332, !dbg !587

; <label>:264:                                    ; preds = %261
  %265 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)), !dbg !588
  store %struct._IO_FILE* %265, %struct._IO_FILE** %3, align 8, !dbg !590
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !591
  %267 = icmp eq %struct._IO_FILE* %266, null, !dbg !593
  br i1 %267, label %268, label %270, !dbg !594

; <label>:268:                                    ; preds = %264
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)), !dbg !595
  store i32 0, i32* %1, align 4, !dbg !597
  br label %333, !dbg !597

; <label>:270:                                    ; preds = %264
  %271 = load i32, i32* %16, align 4, !dbg !598
  %272 = sext i32 %271 to i64, !dbg !598
  %273 = call noalias i8* @malloc(i64 %272) #8, !dbg !599
  store i8* %273, i8** %19, align 8, !dbg !600
  %274 = load i8*, i8** %19, align 8, !dbg !601
  %275 = icmp eq i8* null, %274, !dbg !603
  br i1 %275, label %276, label %281, !dbg !604

; <label>:276:                                    ; preds = %270
  %277 = load i32, i32* %16, align 4, !dbg !605
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i32 %277), !dbg !607
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !608
  %280 = call i32 @fclose(%struct._IO_FILE* %279), !dbg !609
  store i32 0, i32* %1, align 4, !dbg !610
  br label %333, !dbg !610

; <label>:281:                                    ; preds = %270
  %282 = load i8*, i8** %19, align 8, !dbg !611
  %283 = load i32, i32* %16, align 4, !dbg !612
  %284 = sext i32 %283 to i64, !dbg !612
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !613
  %286 = call i64 @fread(i8* %282, i64 1, i64 %284, %struct._IO_FILE* %285), !dbg !614
  %287 = trunc i64 %286 to i32, !dbg !614
  store i32 %287, i32* %17, align 4, !dbg !615
  %288 = load i32, i32* %17, align 4, !dbg !616
  %289 = load i32, i32* %16, align 4, !dbg !618
  %290 = icmp eq i32 %288, %289, !dbg !619
  br i1 %290, label %291, label %319, !dbg !620

; <label>:291:                                    ; preds = %281
  %292 = load i8*, i8** %19, align 8, !dbg !621
  %293 = load i32, i32* %16, align 4, !dbg !623
  %294 = sext i32 %293 to i64, !dbg !623
  %295 = call i64 @memcrc(i8* %292, i64 %294), !dbg !624
  %296 = trunc i64 %295 to i32, !dbg !624
  store i32 %296, i32* %11, align 4, !dbg !625
  %297 = load i32, i32* %11, align 4, !dbg !626
  %298 = zext i32 %297 to i64, !dbg !627
  %299 = load i32, i32* %16, align 4, !dbg !628
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i64 %298, i32 %299, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)), !dbg !629
  %301 = call i32 @sos0_endianness(), !dbg !630
  store i32 %301, i32* %18, align 4, !dbg !631
  %302 = load i32, i32* %18, align 4, !dbg !632
  %303 = load i32, i32* %11, align 4, !dbg !633
  %304 = call i32 @endian_big_uint32(i32 %302, i32 %303), !dbg !634
  store i32 %304, i32* %11, align 4, !dbg !635
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !636
  %306 = load i32, i32* %8, align 4, !dbg !637
  %307 = zext i32 %306 to i64, !dbg !637
  %308 = call i32 @fseek(%struct._IO_FILE* %305, i64 %307, i32 0), !dbg !638
  %309 = bitcast i32* %11 to i8*, !dbg !639
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !640
  %311 = call i64 @fwrite(i8* %309, i64 1, i64 4, %struct._IO_FILE* %310), !dbg !641
  %312 = trunc i64 %311 to i32, !dbg !641
  store i32 %312, i32* %17, align 4, !dbg !642
  %313 = load i32, i32* %17, align 4, !dbg !643
  %314 = icmp ne i32 4, %313, !dbg !645
  br i1 %314, label %315, label %318, !dbg !646

; <label>:315:                                    ; preds = %291
  %316 = load i32, i32* %17, align 4, !dbg !647
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 %316), !dbg !648
  br label %318, !dbg !648

; <label>:318:                                    ; preds = %315, %291
  br label %323, !dbg !649

; <label>:319:                                    ; preds = %281
  %320 = load i32, i32* %17, align 4, !dbg !650
  %321 = load i32, i32* %16, align 4, !dbg !652
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %320, i32 %321), !dbg !653
  br label %323

; <label>:323:                                    ; preds = %319, %318
  %324 = load i8*, i8** %19, align 8, !dbg !654
  call void @free(i8* %324) #8, !dbg !655
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !656
  %326 = call i32 @fclose(%struct._IO_FILE* %325), !dbg !657
  %327 = load i32, i32* @verbose_flag, align 4, !dbg !658
  %328 = icmp ne i32 %327, 0, !dbg !658
  br i1 %328, label %329, label %331, !dbg !660

; <label>:329:                                    ; preds = %323
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @output_fn, i32 0, i32 0)), !dbg !661
  br label %331, !dbg !661

; <label>:331:                                    ; preds = %329, %323
  br label %332, !dbg !662

; <label>:332:                                    ; preds = %331, %261, %254
  store i32 1, i32* %1, align 4, !dbg !663
  br label %333, !dbg !663

; <label>:333:                                    ; preds = %332, %276, %268, %32, %26
  %334 = load i32, i32* %1, align 4, !dbg !664
  ret i32 %334, !dbg !664
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare i32 @fclose(%struct._IO_FILE*) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: nounwind uwtable
define internal i64 @memcrc(i8*, i64) #0 !dbg !665 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !670, metadata !56), !dbg !671
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !672, metadata !56), !dbg !673
  call void @llvm.dbg.declare(metadata i32* %5, metadata !674, metadata !56), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %6, metadata !676, metadata !56), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %7, metadata !678, metadata !56), !dbg !679
  store i32 0, i32* %7, align 4, !dbg !679
  %8 = load i64, i64* %4, align 8, !dbg !680
  %9 = trunc i64 %8 to i32, !dbg !680
  store i32 %9, i32* %5, align 4, !dbg !682
  br label %10, !dbg !683

; <label>:10:                                     ; preds = %28, %2
  %11 = load i32, i32* %5, align 4, !dbg !684
  %12 = icmp ugt i32 %11, 0, !dbg !687
  br i1 %12, label %13, label %31, !dbg !688

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %3, align 8, !dbg !689
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !689
  store i8* %15, i8** %3, align 8, !dbg !689
  %16 = load i8, i8* %14, align 1, !dbg !691
  %17 = zext i8 %16 to i32, !dbg !692
  store i32 %17, i32* %6, align 4, !dbg !693
  %18 = load i32, i32* %7, align 4, !dbg !694
  %19 = shl i32 %18, 8, !dbg !695
  %20 = load i32, i32* %7, align 4, !dbg !696
  %21 = lshr i32 %20, 24, !dbg !697
  %22 = load i32, i32* %6, align 4, !dbg !698
  %23 = xor i32 %21, %22, !dbg !699
  %24 = zext i32 %23 to i64, !dbg !700
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_lut, i64 0, i64 %24, !dbg !700
  %26 = load i32, i32* %25, align 4, !dbg !700
  %27 = xor i32 %19, %26, !dbg !701
  store i32 %27, i32* %7, align 4, !dbg !702
  br label %28, !dbg !703

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %5, align 4, !dbg !704
  %30 = add i32 %29, -1, !dbg !704
  store i32 %30, i32* %5, align 4, !dbg !704
  br label %10, !dbg !706, !llvm.loop !707

; <label>:31:                                     ; preds = %10
  br label %32, !dbg !709

; <label>:32:                                     ; preds = %35, %31
  %33 = load i64, i64* %4, align 8, !dbg !710
  %34 = icmp ne i64 %33, 0, !dbg !712
  br i1 %34, label %35, label %51, !dbg !713

; <label>:35:                                     ; preds = %32
  %36 = load i64, i64* %4, align 8, !dbg !714
  %37 = and i64 %36, 255, !dbg !716
  %38 = trunc i64 %37 to i32, !dbg !714
  store i32 %38, i32* %6, align 4, !dbg !717
  %39 = load i64, i64* %4, align 8, !dbg !718
  %40 = lshr i64 %39, 8, !dbg !718
  store i64 %40, i64* %4, align 8, !dbg !718
  %41 = load i32, i32* %7, align 4, !dbg !719
  %42 = shl i32 %41, 8, !dbg !720
  %43 = load i32, i32* %7, align 4, !dbg !721
  %44 = lshr i32 %43, 24, !dbg !722
  %45 = load i32, i32* %6, align 4, !dbg !723
  %46 = xor i32 %44, %45, !dbg !724
  %47 = zext i32 %46 to i64, !dbg !725
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_lut, i64 0, i64 %47, !dbg !725
  %49 = load i32, i32* %48, align 4, !dbg !725
  %50 = xor i32 %42, %49, !dbg !726
  store i32 %50, i32* %7, align 4, !dbg !727
  br label %32, !dbg !728, !llvm.loop !730

; <label>:51:                                     ; preds = %32
  %52 = load i32, i32* %7, align 4, !dbg !731
  %53 = xor i32 %52, -1, !dbg !732
  %54 = zext i32 %53 to i64, !dbg !732
  ret i64 %54, !dbg !733
}

; Function Attrs: nounwind uwtable
define internal i32 @sos0_endianness() #0 !dbg !734 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !737, metadata !56), !dbg !741
  call void @llvm.dbg.declare(metadata i16* %3, metadata !742, metadata !56), !dbg !743
  store i16 1, i16* %2, align 2, !dbg !744
  %4 = bitcast i16* %2 to i8*, !dbg !745
  %5 = load i8, i8* %4, align 2, !dbg !745
  %6 = sext i8 %5 to i16, !dbg !745
  store i16 %6, i16* %3, align 2, !dbg !746
  %7 = load i16, i16* %3, align 2, !dbg !747
  %8 = sext i16 %7 to i32, !dbg !747
  %9 = icmp eq i32 %8, 1, !dbg !749
  br i1 %9, label %10, label %11, !dbg !750

; <label>:10:                                     ; preds = %0
  store i32 11, i32* %1, align 4, !dbg !751
  br label %12, !dbg !751

; <label>:11:                                     ; preds = %0
  store i32 10, i32* %1, align 4, !dbg !752
  br label %12, !dbg !752

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %1, align 4, !dbg !753
  ret i32 %13, !dbg !753
}

; Function Attrs: nounwind uwtable
define internal i32 @endian_big_uint32(i32, i32) #0 !dbg !754 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !757, metadata !56), !dbg !758
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !759, metadata !56), !dbg !760
  call void @llvm.dbg.declare(metadata i32* %5, metadata !761, metadata !56), !dbg !762
  store i32 0, i32* %5, align 4, !dbg !762
  %6 = load i32, i32* %3, align 4, !dbg !763
  %7 = icmp eq i32 %6, 11, !dbg !765
  br i1 %7, label %8, label %29, !dbg !766

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !767
  %10 = lshr i32 %9, 24, !dbg !769
  %11 = and i32 %10, 255, !dbg !770
  %12 = load i32, i32* %5, align 4, !dbg !771
  %13 = or i32 %12, %11, !dbg !771
  store i32 %13, i32* %5, align 4, !dbg !771
  %14 = load i32, i32* %4, align 4, !dbg !772
  %15 = lshr i32 %14, 8, !dbg !773
  %16 = and i32 %15, 65280, !dbg !774
  %17 = load i32, i32* %5, align 4, !dbg !775
  %18 = or i32 %17, %16, !dbg !775
  store i32 %18, i32* %5, align 4, !dbg !775
  %19 = load i32, i32* %4, align 4, !dbg !776
  %20 = shl i32 %19, 8, !dbg !777
  %21 = and i32 %20, 16711680, !dbg !778
  %22 = load i32, i32* %5, align 4, !dbg !779
  %23 = or i32 %22, %21, !dbg !779
  store i32 %23, i32* %5, align 4, !dbg !779
  %24 = load i32, i32* %4, align 4, !dbg !780
  %25 = shl i32 %24, 24, !dbg !781
  %26 = and i32 %25, -16777216, !dbg !782
  %27 = load i32, i32* %5, align 4, !dbg !783
  %28 = or i32 %27, %26, !dbg !783
  store i32 %28, i32* %5, align 4, !dbg !783
  br label %31, !dbg !784

; <label>:29:                                     ; preds = %2
  %30 = load i32, i32* %4, align 4, !dbg !785
  store i32 %30, i32* %5, align 4, !dbg !787
  br label %31

; <label>:31:                                     ; preds = %29, %8
  %32 = load i32, i32* %5, align 4, !dbg !788
  ret i32 %32, !dbg !789
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, globals: !22)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]tools--genwqe_csv2vpd/[inter]tools--genwqe_csv2vpd.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "genwqe_csv2vpd.c", directory: "/home/lichi/Desktop")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOS_ENDIANNESS", file: !4, line: 53, size: 32, align: 32, elements: !9)
!9 = !{!10, !11}
!10 = !DIEnumerator(name: "SOS_ENDIANNESS_BIG", value: 10)
!11 = !DIEnumerator(name: "SOS_ENDIANNESS_LITTLE", value: 11)
!12 = !{!13, !15, !16, !17, !20, !21}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 48, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!21 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !28, !29, !30, !34, !36, !37, !41}
!23 = distinct !DIGlobalVariable(name: "arg_index", scope: !0, file: !4, line: 33, type: !16, isLocal: true, isDefinition: true, variable: i32* @arg_index)
!24 = distinct !DIGlobalVariable(name: "input_fn", scope: !0, file: !4, line: 48, type: !25, isLocal: true, isDefinition: true, variable: [512 x i8]* @input_fn)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4096, align: 8, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 512)
!28 = distinct !DIGlobalVariable(name: "output_fn", scope: !0, file: !4, line: 49, type: !25, isLocal: true, isDefinition: true, variable: [512 x i8]* @output_fn)
!29 = distinct !DIGlobalVariable(name: "arg_count", scope: !0, file: !4, line: 34, type: !16, isLocal: true, isDefinition: true, variable: i32* @arg_count)
!30 = distinct !DIGlobalVariable(name: "arg_values", scope: !0, file: !4, line: 35, type: !31, isLocal: true, isDefinition: true, variable: [100 x i8*]* @arg_values)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 6400, align: 64, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 100)
!34 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !0, file: !4, line: 50, type: !35, isLocal: true, isDefinition: true, variable: i32* @verbose_flag)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !4, line: 42, baseType: !3)
!36 = distinct !DIGlobalVariable(name: "add_crc", scope: !0, file: !4, line: 51, type: !35, isLocal: true, isDefinition: true, variable: i32* @add_crc)
!37 = distinct !DIGlobalVariable(name: "crc_token", scope: !0, file: !4, line: 168, type: !38, isLocal: true, isDefinition: true, variable: [6 x i8]* @crc_token)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 48, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 6)
!41 = distinct !DIGlobalVariable(name: "crc32_lut", scope: !0, file: !4, line: 101, type: !42, isLocal: true, isDefinition: true, variable: [256 x i32]* @crc32_lut)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8192, align: 32, elements: !45)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 51, baseType: !21)
!45 = !{!46}
!46 = !DISubrange(count: 256)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!50 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 408, type: !51, isLocal: false, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!16, !16, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!54 = !{}
!55 = !DILocalVariable(name: "argc", arg: 1, scope: !50, file: !4, line: 408, type: !16)
!56 = !DIExpression()
!57 = !DILocation(line: 408, column: 14, scope: !50)
!58 = !DILocalVariable(name: "argv", arg: 2, scope: !50, file: !4, line: 408, type: !53)
!59 = !DILocation(line: 408, column: 26, scope: !50)
!60 = !DILocalVariable(name: "input_fn_set", scope: !50, file: !4, line: 410, type: !35)
!61 = !DILocation(line: 410, column: 7, scope: !50)
!62 = !DILocalVariable(name: "output_fn_set", scope: !50, file: !4, line: 411, type: !35)
!63 = !DILocation(line: 411, column: 7, scope: !50)
!64 = !DILocation(line: 413, column: 11, scope: !50)
!65 = !DILocation(line: 413, column: 17, scope: !50)
!66 = !DILocation(line: 413, column: 2, scope: !50)
!67 = !DILocation(line: 415, column: 2, scope: !50)
!68 = !DILocation(line: 415, column: 9, scope: !69)
!69 = !DILexicalBlockFile(scope: !50, file: !4, discriminator: 1)
!70 = !DILocation(line: 415, column: 21, scope: !69)
!71 = !DILocation(line: 415, column: 19, scope: !69)
!72 = !DILocation(line: 415, column: 2, scope: !69)
!73 = !DILocation(line: 416, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !4, line: 416, column: 7)
!75 = distinct !DILexicalBlock(scope: !50, file: !4, line: 415, column: 27)
!76 = !DILocation(line: 416, column: 7, scope: !77)
!77 = !DILexicalBlockFile(scope: !74, file: !4, discriminator: 1)
!78 = !DILocation(line: 416, column: 32, scope: !74)
!79 = !DILocation(line: 416, column: 7, scope: !75)
!80 = !DILocation(line: 417, column: 4, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !4, line: 416, column: 38)
!82 = !DILocation(line: 418, column: 4, scope: !81)
!83 = !DILocation(line: 420, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !4, line: 420, column: 7)
!85 = !DILocation(line: 420, column: 7, scope: !86)
!86 = !DILexicalBlockFile(scope: !84, file: !4, discriminator: 1)
!87 = !DILocation(line: 420, column: 32, scope: !84)
!88 = !DILocation(line: 420, column: 7, scope: !75)
!89 = !DILocation(line: 421, column: 4, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !4, line: 420, column: 38)
!91 = !DILocation(line: 422, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !90, file: !4, line: 422, column: 8)
!93 = !DILocation(line: 422, column: 8, scope: !94)
!94 = !DILexicalBlockFile(scope: !92, file: !4, discriminator: 1)
!95 = !DILocation(line: 423, column: 31, scope: !92)
!96 = !DILocation(line: 422, column: 8, scope: !90)
!97 = !DILocation(line: 424, column: 19, scope: !92)
!98 = !DILocation(line: 424, column: 5, scope: !92)
!99 = !DILocation(line: 425, column: 3, scope: !90)
!100 = !DILocation(line: 426, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !84, file: !4, line: 426, column: 12)
!102 = !DILocation(line: 426, column: 12, scope: !103)
!103 = !DILexicalBlockFile(scope: !101, file: !4, discriminator: 1)
!104 = !DILocation(line: 426, column: 37, scope: !101)
!105 = !DILocation(line: 426, column: 12, scope: !84)
!106 = !DILocation(line: 427, column: 4, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !4, line: 426, column: 43)
!108 = !DILocation(line: 428, column: 15, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !4, line: 428, column: 8)
!110 = !DILocation(line: 428, column: 8, scope: !111)
!111 = !DILexicalBlockFile(scope: !109, file: !4, discriminator: 1)
!112 = !DILocation(line: 429, column: 30, scope: !109)
!113 = !DILocation(line: 428, column: 8, scope: !107)
!114 = !DILocation(line: 430, column: 18, scope: !109)
!115 = !DILocation(line: 430, column: 5, scope: !109)
!116 = !DILocation(line: 431, column: 3, scope: !107)
!117 = !DILocation(line: 432, column: 19, scope: !118)
!118 = distinct !DILexicalBlock(scope: !101, file: !4, line: 432, column: 12)
!119 = !DILocation(line: 432, column: 12, scope: !120)
!120 = !DILexicalBlockFile(scope: !118, file: !4, discriminator: 1)
!121 = !DILocation(line: 432, column: 37, scope: !118)
!122 = !DILocation(line: 432, column: 12, scope: !101)
!123 = !DILocation(line: 433, column: 17, scope: !118)
!124 = !DILocation(line: 433, column: 4, scope: !118)
!125 = !DILocation(line: 434, column: 19, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !4, line: 434, column: 12)
!127 = !DILocation(line: 434, column: 12, scope: !128)
!128 = !DILexicalBlockFile(scope: !126, file: !4, discriminator: 1)
!129 = !DILocation(line: 434, column: 39, scope: !126)
!130 = !DILocation(line: 434, column: 12, scope: !118)
!131 = !DILocation(line: 435, column: 12, scope: !126)
!132 = !DILocation(line: 435, column: 4, scope: !126)
!133 = !DILocation(line: 436, column: 3, scope: !75)
!134 = !DILocation(line: 415, column: 2, scope: !135)
!135 = !DILexicalBlockFile(scope: !50, file: !4, discriminator: 2)
!136 = distinct !{!136, !67}
!137 = !DILocation(line: 439, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !50, file: !4, line: 439, column: 6)
!139 = !DILocation(line: 439, column: 6, scope: !50)
!140 = !DILocation(line: 440, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !4, line: 439, column: 20)
!142 = !DILocation(line: 441, column: 3, scope: !141)
!143 = !DILocation(line: 442, column: 3, scope: !141)
!144 = !DILocation(line: 443, column: 2, scope: !141)
!145 = !DILocation(line: 445, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !50, file: !4, line: 445, column: 6)
!147 = !DILocation(line: 445, column: 12, scope: !146)
!148 = !DILocation(line: 445, column: 29, scope: !146)
!149 = !DILocation(line: 445, column: 41, scope: !150)
!150 = !DILexicalBlockFile(scope: !146, file: !4, discriminator: 1)
!151 = !DILocation(line: 445, column: 38, scope: !150)
!152 = !DILocation(line: 445, column: 6, scope: !150)
!153 = !DILocation(line: 446, column: 3, scope: !146)
!154 = !DILocation(line: 448, column: 3, scope: !146)
!155 = !DILocation(line: 450, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !50, file: !4, line: 450, column: 6)
!157 = !DILocation(line: 450, column: 6, scope: !50)
!158 = !DILocation(line: 451, column: 3, scope: !156)
!159 = !DILocation(line: 452, column: 2, scope: !50)
!160 = !DILocation(line: 453, column: 1, scope: !50)
!161 = distinct !DISubprogram(name: "set_args", scope: !4, file: !4, line: 373, type: !162, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !16, !53}
!164 = !DILocalVariable(name: "argc", arg: 1, scope: !161, file: !4, line: 373, type: !16)
!165 = !DILocation(line: 373, column: 26, scope: !161)
!166 = !DILocalVariable(name: "argv", arg: 2, scope: !161, file: !4, line: 373, type: !53)
!167 = !DILocation(line: 373, column: 38, scope: !161)
!168 = !DILocalVariable(name: "i", scope: !161, file: !4, line: 375, type: !16)
!169 = !DILocation(line: 375, column: 6, scope: !161)
!170 = !DILocation(line: 377, column: 14, scope: !161)
!171 = !DILocation(line: 377, column: 12, scope: !161)
!172 = !DILocation(line: 378, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !4, line: 378, column: 2)
!174 = !DILocation(line: 378, column: 7, scope: !173)
!175 = !DILocation(line: 378, column: 14, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !4, discriminator: 1)
!177 = distinct !DILexicalBlock(scope: !173, file: !4, line: 378, column: 2)
!178 = !DILocation(line: 378, column: 18, scope: !176)
!179 = !DILocation(line: 378, column: 16, scope: !176)
!180 = !DILocation(line: 378, column: 2, scope: !176)
!181 = !DILocation(line: 379, column: 24, scope: !177)
!182 = !DILocation(line: 379, column: 19, scope: !177)
!183 = !DILocation(line: 379, column: 14, scope: !177)
!184 = !DILocation(line: 379, column: 3, scope: !177)
!185 = !DILocation(line: 379, column: 17, scope: !177)
!186 = !DILocation(line: 378, column: 25, scope: !187)
!187 = !DILexicalBlockFile(scope: !177, file: !4, discriminator: 2)
!188 = !DILocation(line: 378, column: 2, scope: !187)
!189 = distinct !{!189, !190}
!190 = !DILocation(line: 378, column: 2, scope: !161)
!191 = !DILocation(line: 380, column: 12, scope: !161)
!192 = !DILocation(line: 381, column: 1, scope: !161)
!193 = distinct !DISubprogram(name: "next_arg", scope: !4, file: !4, line: 383, type: !194, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!194 = !DISubroutineType(types: !195)
!195 = !{!13}
!196 = !DILocation(line: 385, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !4, line: 385, column: 6)
!198 = !DILocation(line: 385, column: 18, scope: !197)
!199 = !DILocation(line: 385, column: 16, scope: !197)
!200 = !DILocation(line: 385, column: 6, scope: !193)
!201 = !DILocation(line: 386, column: 22, scope: !197)
!202 = !DILocation(line: 386, column: 11, scope: !197)
!203 = !DILocation(line: 386, column: 3, scope: !197)
!204 = !DILocation(line: 387, column: 2, scope: !193)
!205 = !DILocation(line: 388, column: 1, scope: !193)
!206 = distinct !DISubprogram(name: "help", scope: !4, file: !4, line: 397, type: !207, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !DILocation(line: 399, column: 2, scope: !206)
!210 = !DILocation(line: 402, column: 2, scope: !206)
!211 = distinct !DISubprogram(name: "get_next_arg", scope: !4, file: !4, line: 390, type: !194, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!212 = !DILocation(line: 392, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !211, file: !4, line: 392, column: 6)
!214 = !DILocation(line: 392, column: 18, scope: !213)
!215 = !DILocation(line: 392, column: 16, scope: !213)
!216 = !DILocation(line: 392, column: 6, scope: !211)
!217 = !DILocation(line: 393, column: 31, scope: !213)
!218 = !DILocation(line: 393, column: 11, scope: !213)
!219 = !DILocation(line: 393, column: 3, scope: !213)
!220 = !DILocation(line: 394, column: 2, scope: !211)
!221 = !DILocation(line: 395, column: 1, scope: !211)
!222 = distinct !DISubprogram(name: "convert_csv", scope: !4, file: !4, line: 178, type: !223, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!223 = !DISubroutineType(types: !224)
!224 = !{!35}
!225 = !DILocalVariable(name: "ip", scope: !222, file: !4, line: 180, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 48, baseType: !229)
!228 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 241, size: 1728, align: 64, elements: !231)
!230 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !252, !253, !254, !255, !259, !261, !263, !267, !270, !272, !273, !274, !275, !276, !279, !280}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !229, file: !230, line: 242, baseType: !16, size: 32, align: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !229, file: !230, line: 247, baseType: !13, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !229, file: !230, line: 248, baseType: !13, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !229, file: !230, line: 249, baseType: !13, size: 64, align: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !229, file: !230, line: 250, baseType: !13, size: 64, align: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !229, file: !230, line: 251, baseType: !13, size: 64, align: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !229, file: !230, line: 252, baseType: !13, size: 64, align: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !229, file: !230, line: 253, baseType: !13, size: 64, align: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !229, file: !230, line: 254, baseType: !13, size: 64, align: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !229, file: !230, line: 256, baseType: !13, size: 64, align: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !229, file: !230, line: 257, baseType: !13, size: 64, align: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !229, file: !230, line: 258, baseType: !13, size: 64, align: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !229, file: !230, line: 260, baseType: !245, size: 64, align: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !230, line: 156, size: 192, align: 64, elements: !247)
!247 = !{!248, !249, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !246, file: !230, line: 157, baseType: !245, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !246, file: !230, line: 158, baseType: !250, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !246, file: !230, line: 162, baseType: !16, size: 32, align: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !229, file: !230, line: 262, baseType: !250, size: 64, align: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !229, file: !230, line: 264, baseType: !16, size: 32, align: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !229, file: !230, line: 268, baseType: !16, size: 32, align: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !229, file: !230, line: 270, baseType: !256, size: 64, align: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !257, line: 131, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!258 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !229, file: !230, line: 274, baseType: !260, size: 16, align: 16, offset: 1024)
!260 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !229, file: !230, line: 275, baseType: !262, size: 8, align: 8, offset: 1040)
!262 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !229, file: !230, line: 276, baseType: !264, size: 8, align: 8, offset: 1048)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 1)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !229, file: !230, line: 280, baseType: !268, size: 64, align: 64, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !230, line: 150, baseType: null)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !229, file: !230, line: 289, baseType: !271, size: 64, align: 64, offset: 1152)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !257, line: 132, baseType: !258)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !229, file: !230, line: 297, baseType: !15, size: 64, align: 64, offset: 1216)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !229, file: !230, line: 298, baseType: !15, size: 64, align: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !229, file: !230, line: 299, baseType: !15, size: 64, align: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !229, file: !230, line: 300, baseType: !15, size: 64, align: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !229, file: !230, line: 302, baseType: !277, size: 64, align: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 216, baseType: !20)
!278 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !229, file: !230, line: 303, baseType: !16, size: 32, align: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !229, file: !230, line: 305, baseType: !281, size: 160, align: 8, offset: 1568)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 8, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 20)
!284 = !DILocation(line: 180, column: 8, scope: !222)
!285 = !DILocalVariable(name: "op", scope: !222, file: !4, line: 180, type: !226)
!286 = !DILocation(line: 180, column: 13, scope: !222)
!287 = !DILocalVariable(name: "line", scope: !222, file: !4, line: 181, type: !25)
!288 = !DILocation(line: 181, column: 7, scope: !222)
!289 = !DILocalVariable(name: "token", scope: !222, file: !4, line: 182, type: !25)
!290 = !DILocation(line: 182, column: 7, scope: !222)
!291 = !DILocalVariable(name: "line_nr", scope: !222, file: !4, line: 183, type: !21)
!292 = !DILocation(line: 183, column: 11, scope: !222)
!293 = !DILocalVariable(name: "offset", scope: !222, file: !4, line: 184, type: !16)
!294 = !DILocation(line: 184, column: 6, scope: !222)
!295 = !DILocalVariable(name: "crc32_seek", scope: !222, file: !4, line: 185, type: !21)
!296 = !DILocation(line: 185, column: 15, scope: !222)
!297 = !DILocalVariable(name: "value", scope: !222, file: !4, line: 186, type: !21)
!298 = !DILocation(line: 186, column: 15, scope: !222)
!299 = !DILocalVariable(name: "desc", scope: !222, file: !4, line: 187, type: !25)
!300 = !DILocation(line: 187, column: 7, scope: !222)
!301 = !DILocalVariable(name: "crc32", scope: !222, file: !4, line: 188, type: !44)
!302 = !DILocation(line: 188, column: 11, scope: !222)
!303 = !DILocalVariable(name: "data", scope: !222, file: !4, line: 189, type: !17)
!304 = !DILocation(line: 189, column: 10, scope: !222)
!305 = !DILocalVariable(name: "i", scope: !222, file: !4, line: 190, type: !16)
!306 = !DILocation(line: 190, column: 6, scope: !222)
!307 = !DILocalVariable(name: "j", scope: !222, file: !4, line: 190, type: !16)
!308 = !DILocation(line: 190, column: 9, scope: !222)
!309 = !DILocalVariable(name: "parse_error", scope: !222, file: !4, line: 191, type: !35)
!310 = !DILocation(line: 191, column: 7, scope: !222)
!311 = !DILocalVariable(name: "last_byte", scope: !222, file: !4, line: 192, type: !16)
!312 = !DILocation(line: 192, column: 6, scope: !222)
!313 = !DILocalVariable(name: "nrw", scope: !222, file: !4, line: 193, type: !16)
!314 = !DILocation(line: 193, column: 6, scope: !222)
!315 = !DILocalVariable(name: "endianness", scope: !222, file: !4, line: 194, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOS_ENDIANNESS", file: !4, line: 56, baseType: !8)
!317 = !DILocation(line: 194, column: 17, scope: !222)
!318 = !DILocalVariable(name: "buffer", scope: !222, file: !4, line: 195, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!320 = !DILocation(line: 195, column: 11, scope: !222)
!321 = !DILocation(line: 197, column: 7, scope: !222)
!322 = !DILocation(line: 197, column: 5, scope: !222)
!323 = !DILocation(line: 198, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !222, file: !4, line: 198, column: 6)
!325 = !DILocation(line: 198, column: 9, scope: !324)
!326 = !DILocation(line: 198, column: 6, scope: !222)
!327 = !DILocation(line: 199, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !4, line: 198, column: 18)
!329 = !DILocation(line: 200, column: 3, scope: !328)
!330 = !DILocation(line: 203, column: 7, scope: !222)
!331 = !DILocation(line: 203, column: 5, scope: !222)
!332 = !DILocation(line: 204, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !222, file: !4, line: 204, column: 6)
!334 = !DILocation(line: 204, column: 9, scope: !333)
!335 = !DILocation(line: 204, column: 6, scope: !222)
!336 = !DILocation(line: 205, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !4, line: 204, column: 18)
!338 = !DILocation(line: 206, column: 10, scope: !337)
!339 = !DILocation(line: 206, column: 3, scope: !337)
!340 = !DILocation(line: 207, column: 3, scope: !337)
!341 = !DILocation(line: 210, column: 2, scope: !222)
!342 = !DILocation(line: 210, column: 15, scope: !343)
!343 = !DILexicalBlockFile(scope: !222, file: !4, discriminator: 1)
!344 = !DILocation(line: 210, column: 26, scope: !343)
!345 = !DILocation(line: 210, column: 9, scope: !343)
!346 = !DILocation(line: 210, column: 30, scope: !343)
!347 = !DILocation(line: 210, column: 2, scope: !343)
!348 = !DILocalVariable(name: "field_num", scope: !349, file: !4, line: 211, type: !16)
!349 = distinct !DILexicalBlock(scope: !222, file: !4, line: 210, column: 44)
!350 = !DILocation(line: 211, column: 7, scope: !349)
!351 = !DILocalVariable(name: "num_fields", scope: !349, file: !4, line: 212, type: !16)
!352 = !DILocation(line: 212, column: 7, scope: !349)
!353 = !DILocalVariable(name: "line_len", scope: !349, file: !4, line: 213, type: !16)
!354 = !DILocation(line: 213, column: 7, scope: !349)
!355 = !DILocation(line: 214, column: 15, scope: !349)
!356 = !DILocation(line: 216, column: 3, scope: !349)
!357 = !DILocation(line: 217, column: 14, scope: !349)
!358 = !DILocation(line: 218, column: 5, scope: !349)
!359 = !DILocation(line: 219, column: 9, scope: !349)
!360 = !DILocation(line: 219, column: 3, scope: !349)
!361 = !DILocation(line: 219, column: 12, scope: !349)
!362 = !DILocation(line: 220, column: 13, scope: !349)
!363 = !DILocation(line: 221, column: 15, scope: !349)
!364 = !DILocation(line: 221, column: 8, scope: !349)
!365 = !DILocation(line: 221, column: 21, scope: !349)
!366 = !DILocation(line: 221, column: 3, scope: !349)
!367 = !DILocation(line: 221, column: 26, scope: !349)
!368 = !DILocation(line: 223, column: 26, scope: !349)
!369 = !DILocation(line: 223, column: 19, scope: !349)
!370 = !DILocation(line: 223, column: 14, scope: !349)
!371 = !DILocation(line: 223, column: 12, scope: !349)
!372 = !DILocation(line: 225, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !349, file: !4, line: 225, column: 7)
!374 = !DILocation(line: 225, column: 15, scope: !373)
!375 = !DILocation(line: 225, column: 22, scope: !373)
!376 = !DILocation(line: 225, column: 33, scope: !377)
!377 = !DILexicalBlockFile(scope: !373, file: !4, discriminator: 1)
!378 = !DILocation(line: 225, column: 25, scope: !377)
!379 = !DILocation(line: 225, column: 42, scope: !377)
!380 = !DILocation(line: 225, column: 7, scope: !377)
!381 = !DILocation(line: 226, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !4, line: 226, column: 8)
!383 = distinct !DILexicalBlock(scope: !373, file: !4, line: 225, column: 50)
!384 = !DILocation(line: 226, column: 8, scope: !383)
!385 = !DILocation(line: 227, column: 53, scope: !382)
!386 = !DILocation(line: 227, column: 62, scope: !382)
!387 = !DILocation(line: 227, column: 72, scope: !382)
!388 = !DILocation(line: 227, column: 5, scope: !382)
!389 = !DILocation(line: 230, column: 4, scope: !383)
!390 = distinct !{!390, !341}
!391 = !DILocation(line: 233, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !349, file: !4, line: 233, column: 7)
!393 = !DILocation(line: 233, column: 7, scope: !349)
!394 = !DILocation(line: 234, column: 35, scope: !392)
!395 = !DILocation(line: 234, column: 44, scope: !392)
!396 = !DILocation(line: 234, column: 4, scope: !392)
!397 = !DILocation(line: 236, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !349, file: !4, line: 236, column: 3)
!399 = !DILocation(line: 236, column: 8, scope: !398)
!400 = !DILocation(line: 236, column: 15, scope: !401)
!401 = !DILexicalBlockFile(scope: !402, file: !4, discriminator: 1)
!402 = distinct !DILexicalBlock(scope: !398, file: !4, line: 236, column: 3)
!403 = !DILocation(line: 236, column: 20, scope: !401)
!404 = !DILocation(line: 236, column: 17, scope: !401)
!405 = !DILocation(line: 236, column: 3, scope: !401)
!406 = !DILocation(line: 237, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !4, line: 236, column: 35)
!408 = !DILocation(line: 237, column: 12, scope: !407)
!409 = !DILocation(line: 237, column: 4, scope: !407)
!410 = !DILocation(line: 240, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !4, line: 240, column: 9)
!412 = distinct !DILexicalBlock(scope: !407, file: !4, line: 237, column: 21)
!413 = !DILocation(line: 240, column: 9, scope: !411)
!414 = !DILocation(line: 240, column: 23, scope: !411)
!415 = !DILocation(line: 240, column: 9, scope: !412)
!416 = !DILocation(line: 241, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !4, line: 240, column: 29)
!418 = !DILocation(line: 241, column: 6, scope: !417)
!419 = !DILocation(line: 243, column: 11, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !4, line: 243, column: 11)
!421 = distinct !DILexicalBlock(scope: !417, file: !4, line: 241, column: 25)
!422 = !DILocation(line: 243, column: 11, scope: !421)
!423 = !DILocation(line: 244, column: 44, scope: !420)
!424 = !DILocation(line: 244, column: 8, scope: !420)
!425 = !DILocation(line: 247, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !4, line: 247, column: 11)
!427 = !DILocation(line: 247, column: 20, scope: !426)
!428 = !DILocation(line: 247, column: 27, scope: !426)
!429 = !DILocation(line: 248, column: 19, scope: !426)
!430 = !DILocation(line: 248, column: 11, scope: !426)
!431 = !DILocation(line: 248, column: 29, scope: !426)
!432 = !DILocation(line: 248, column: 36, scope: !426)
!433 = !DILocation(line: 249, column: 19, scope: !426)
!434 = !DILocation(line: 249, column: 11, scope: !426)
!435 = !DILocation(line: 250, column: 20, scope: !426)
!436 = !DILocation(line: 247, column: 11, scope: !437)
!437 = !DILexicalBlockFile(scope: !421, file: !4, discriminator: 1)
!438 = !DILocation(line: 252, column: 21, scope: !439)
!439 = distinct !DILexicalBlock(scope: !426, file: !4, line: 251, column: 8)
!440 = !DILocation(line: 257, column: 16, scope: !439)
!441 = !DILocation(line: 253, column: 9, scope: !439)
!442 = !DILocation(line: 258, column: 9, scope: !439)
!443 = !DILocation(line: 260, column: 17, scope: !421)
!444 = !DILocation(line: 261, column: 7, scope: !421)
!445 = !DILocation(line: 263, column: 14, scope: !421)
!446 = !DILocation(line: 263, column: 20, scope: !421)
!447 = !DILocation(line: 263, column: 7, scope: !421)
!448 = !DILocation(line: 264, column: 17, scope: !421)
!449 = !DILocation(line: 265, column: 7, scope: !421)
!450 = !DILocation(line: 268, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !421, file: !4, line: 267, column: 11)
!452 = !DILocation(line: 267, column: 16, scope: !451)
!453 = !DILocation(line: 267, column: 13, scope: !451)
!454 = !DILocation(line: 267, column: 11, scope: !421)
!455 = !DILocation(line: 269, column: 17, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !4, line: 269, column: 12)
!457 = distinct !DILexicalBlock(scope: !451, file: !4, line: 268, column: 21)
!458 = !DILocation(line: 269, column: 14, scope: !456)
!459 = !DILocation(line: 269, column: 12, scope: !457)
!460 = !DILocation(line: 270, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !4, line: 270, column: 13)
!462 = distinct !DILexicalBlock(scope: !456, file: !4, line: 269, column: 29)
!463 = !DILocation(line: 270, column: 13, scope: !462)
!464 = !DILocation(line: 271, column: 58, scope: !461)
!465 = !DILocation(line: 271, column: 66, scope: !461)
!466 = !DILocation(line: 271, column: 10, scope: !461)
!467 = !DILocation(line: 274, column: 22, scope: !462)
!468 = !DILocation(line: 274, column: 20, scope: !462)
!469 = !DILocation(line: 275, column: 8, scope: !462)
!470 = !DILocation(line: 276, column: 7, scope: !457)
!471 = !DILocation(line: 277, column: 7, scope: !421)
!472 = !DILocation(line: 279, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !421, file: !4, line: 279, column: 11)
!474 = !DILocation(line: 279, column: 11, scope: !421)
!475 = !DILocation(line: 280, column: 43, scope: !473)
!476 = !DILocation(line: 280, column: 8, scope: !473)
!477 = !DILocation(line: 283, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !421, file: !4, line: 283, column: 11)
!479 = !DILocation(line: 283, column: 20, scope: !478)
!480 = !DILocation(line: 283, column: 27, scope: !478)
!481 = !DILocation(line: 284, column: 19, scope: !478)
!482 = !DILocation(line: 284, column: 11, scope: !478)
!483 = !DILocation(line: 284, column: 29, scope: !478)
!484 = !DILocation(line: 284, column: 36, scope: !478)
!485 = !DILocation(line: 285, column: 19, scope: !478)
!486 = !DILocation(line: 285, column: 11, scope: !478)
!487 = !DILocation(line: 286, column: 22, scope: !478)
!488 = !DILocation(line: 283, column: 11, scope: !437)
!489 = !DILocation(line: 287, column: 20, scope: !490)
!490 = distinct !DILexicalBlock(scope: !478, file: !4, line: 286, column: 28)
!491 = !DILocation(line: 291, column: 15, scope: !490)
!492 = !DILocation(line: 288, column: 8, scope: !490)
!493 = !DILocation(line: 292, column: 8, scope: !490)
!494 = !DILocation(line: 294, column: 17, scope: !421)
!495 = !DILocation(line: 295, column: 7, scope: !421)
!496 = !DILocation(line: 297, column: 11, scope: !497)
!497 = distinct !DILexicalBlock(scope: !421, file: !4, line: 297, column: 11)
!498 = !DILocation(line: 297, column: 11, scope: !421)
!499 = !DILocation(line: 298, column: 38, scope: !497)
!500 = !DILocation(line: 298, column: 49, scope: !497)
!501 = !DILocation(line: 298, column: 8, scope: !497)
!502 = !DILocation(line: 301, column: 7, scope: !421)
!503 = !DILocation(line: 304, column: 5, scope: !417)
!504 = !DILocation(line: 305, column: 7, scope: !412)
!505 = !DILocation(line: 306, column: 11, scope: !412)
!506 = !DILocation(line: 306, column: 5, scope: !412)
!507 = !DILocation(line: 306, column: 14, scope: !412)
!508 = !DILocation(line: 307, column: 14, scope: !412)
!509 = !DILocation(line: 308, column: 5, scope: !412)
!510 = !DILocation(line: 310, column: 23, scope: !412)
!511 = !DILocation(line: 310, column: 18, scope: !412)
!512 = !DILocation(line: 310, column: 12, scope: !412)
!513 = !DILocation(line: 310, column: 5, scope: !412)
!514 = !DILocation(line: 310, column: 16, scope: !412)
!515 = !DILocation(line: 311, column: 11, scope: !412)
!516 = !DILocation(line: 311, column: 5, scope: !412)
!517 = !DILocation(line: 311, column: 14, scope: !412)
!518 = !DILocation(line: 312, column: 5, scope: !412)
!519 = !DILocation(line: 314, column: 3, scope: !407)
!520 = !DILocation(line: 236, column: 31, scope: !521)
!521 = !DILexicalBlockFile(scope: !402, file: !4, discriminator: 2)
!522 = !DILocation(line: 236, column: 3, scope: !521)
!523 = distinct !{!523, !524}
!524 = !DILocation(line: 236, column: 3, scope: !349)
!525 = !DILocation(line: 316, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !349, file: !4, line: 316, column: 7)
!527 = !DILocation(line: 316, column: 20, scope: !526)
!528 = !DILocation(line: 316, column: 25, scope: !529)
!529 = !DILexicalBlockFile(scope: !526, file: !4, discriminator: 1)
!530 = !DILocation(line: 316, column: 36, scope: !529)
!531 = !DILocation(line: 316, column: 42, scope: !529)
!532 = !DILocation(line: 316, column: 46, scope: !533)
!533 = !DILexicalBlockFile(scope: !526, file: !4, discriminator: 2)
!534 = !DILocation(line: 316, column: 57, scope: !533)
!535 = !DILocation(line: 316, column: 7, scope: !533)
!536 = !DILocation(line: 317, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !4, line: 317, column: 8)
!538 = distinct !DILexicalBlock(scope: !526, file: !4, line: 316, column: 65)
!539 = !DILocation(line: 317, column: 8, scope: !538)
!540 = !DILocation(line: 318, column: 66, scope: !537)
!541 = !DILocation(line: 318, column: 74, scope: !537)
!542 = !DILocation(line: 318, column: 80, scope: !537)
!543 = !DILocation(line: 318, column: 5, scope: !537)
!544 = !DILocation(line: 321, column: 10, scope: !538)
!545 = !DILocation(line: 321, column: 14, scope: !538)
!546 = !DILocation(line: 321, column: 4, scope: !538)
!547 = !DILocation(line: 322, column: 20, scope: !538)
!548 = !DILocation(line: 322, column: 11, scope: !538)
!549 = !DILocation(line: 322, column: 9, scope: !538)
!550 = !DILocation(line: 323, column: 30, scope: !538)
!551 = !DILocation(line: 323, column: 10, scope: !538)
!552 = !DILocation(line: 323, column: 8, scope: !538)
!553 = !DILocation(line: 324, column: 13, scope: !554)
!554 = distinct !DILexicalBlock(scope: !538, file: !4, line: 324, column: 8)
!555 = !DILocation(line: 324, column: 10, scope: !554)
!556 = !DILocation(line: 324, column: 8, scope: !538)
!557 = !DILocation(line: 325, column: 39, scope: !554)
!558 = !DILocation(line: 325, column: 5, scope: !554)
!559 = !DILocation(line: 326, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !538, file: !4, line: 326, column: 8)
!561 = !DILocation(line: 326, column: 17, scope: !560)
!562 = !DILocation(line: 326, column: 15, scope: !560)
!563 = !DILocation(line: 326, column: 8, scope: !538)
!564 = !DILocation(line: 327, column: 17, scope: !560)
!565 = !DILocation(line: 327, column: 24, scope: !560)
!566 = !DILocation(line: 327, column: 15, scope: !560)
!567 = !DILocation(line: 327, column: 5, scope: !560)
!568 = !DILocation(line: 328, column: 3, scope: !538)
!569 = !DILocation(line: 210, column: 2, scope: !570)
!570 = !DILexicalBlockFile(scope: !222, file: !4, discriminator: 2)
!571 = !DILocation(line: 330, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !222, file: !4, line: 330, column: 6)
!573 = !DILocation(line: 330, column: 6, scope: !222)
!574 = !DILocation(line: 331, column: 67, scope: !572)
!575 = !DILocation(line: 331, column: 3, scope: !572)
!576 = !DILocation(line: 333, column: 9, scope: !222)
!577 = !DILocation(line: 333, column: 2, scope: !222)
!578 = !DILocation(line: 334, column: 9, scope: !222)
!579 = !DILocation(line: 334, column: 2, scope: !222)
!580 = !DILocation(line: 336, column: 15, scope: !581)
!581 = distinct !DILexicalBlock(scope: !222, file: !4, line: 336, column: 6)
!582 = !DILocation(line: 336, column: 12, scope: !581)
!583 = !DILocation(line: 336, column: 24, scope: !581)
!584 = !DILocation(line: 336, column: 33, scope: !585)
!585 = !DILexicalBlockFile(scope: !581, file: !4, discriminator: 1)
!586 = !DILocation(line: 336, column: 30, scope: !585)
!587 = !DILocation(line: 336, column: 6, scope: !585)
!588 = !DILocation(line: 337, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !4, line: 336, column: 46)
!590 = !DILocation(line: 337, column: 6, scope: !589)
!591 = !DILocation(line: 338, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !4, line: 338, column: 7)
!593 = !DILocation(line: 338, column: 10, scope: !592)
!594 = !DILocation(line: 338, column: 7, scope: !589)
!595 = !DILocation(line: 339, column: 4, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !4, line: 338, column: 19)
!597 = !DILocation(line: 340, column: 4, scope: !596)
!598 = !DILocation(line: 342, column: 19, scope: !589)
!599 = !DILocation(line: 342, column: 12, scope: !589)
!600 = !DILocation(line: 342, column: 10, scope: !589)
!601 = !DILocation(line: 343, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !589, file: !4, line: 343, column: 6)
!603 = !DILocation(line: 343, column: 11, scope: !602)
!604 = !DILocation(line: 343, column: 6, scope: !589)
!605 = !DILocation(line: 344, column: 43, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !4, line: 343, column: 22)
!607 = !DILocation(line: 344, column: 4, scope: !606)
!608 = !DILocation(line: 345, column: 11, scope: !606)
!609 = !DILocation(line: 345, column: 4, scope: !606)
!610 = !DILocation(line: 346, column: 4, scope: !606)
!611 = !DILocation(line: 348, column: 15, scope: !589)
!612 = !DILocation(line: 348, column: 26, scope: !589)
!613 = !DILocation(line: 348, column: 37, scope: !589)
!614 = !DILocation(line: 348, column: 9, scope: !589)
!615 = !DILocation(line: 348, column: 7, scope: !589)
!616 = !DILocation(line: 349, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !589, file: !4, line: 349, column: 7)
!618 = !DILocation(line: 349, column: 14, scope: !617)
!619 = !DILocation(line: 349, column: 11, scope: !617)
!620 = !DILocation(line: 349, column: 7, scope: !589)
!621 = !DILocation(line: 350, column: 19, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !4, line: 349, column: 25)
!623 = !DILocation(line: 350, column: 27, scope: !622)
!624 = !DILocation(line: 350, column: 12, scope: !622)
!625 = !DILocation(line: 350, column: 10, scope: !622)
!626 = !DILocation(line: 351, column: 41, scope: !622)
!627 = !DILocation(line: 351, column: 26, scope: !622)
!628 = !DILocation(line: 351, column: 48, scope: !622)
!629 = !DILocation(line: 351, column: 4, scope: !622)
!630 = !DILocation(line: 354, column: 17, scope: !622)
!631 = !DILocation(line: 354, column: 15, scope: !622)
!632 = !DILocation(line: 355, column: 30, scope: !622)
!633 = !DILocation(line: 355, column: 42, scope: !622)
!634 = !DILocation(line: 355, column: 12, scope: !622)
!635 = !DILocation(line: 355, column: 10, scope: !622)
!636 = !DILocation(line: 357, column: 10, scope: !622)
!637 = !DILocation(line: 357, column: 14, scope: !622)
!638 = !DILocation(line: 357, column: 4, scope: !622)
!639 = !DILocation(line: 358, column: 17, scope: !622)
!640 = !DILocation(line: 358, column: 31, scope: !622)
!641 = !DILocation(line: 358, column: 10, scope: !622)
!642 = !DILocation(line: 358, column: 8, scope: !622)
!643 = !DILocation(line: 359, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !622, file: !4, line: 359, column: 8)
!645 = !DILocation(line: 359, column: 10, scope: !644)
!646 = !DILocation(line: 359, column: 8, scope: !622)
!647 = !DILocation(line: 360, column: 45, scope: !644)
!648 = !DILocation(line: 360, column: 5, scope: !644)
!649 = !DILocation(line: 361, column: 3, scope: !622)
!650 = !DILocation(line: 363, column: 11, scope: !651)
!651 = distinct !DILexicalBlock(scope: !617, file: !4, line: 361, column: 10)
!652 = !DILocation(line: 363, column: 16, scope: !651)
!653 = !DILocation(line: 362, column: 4, scope: !651)
!654 = !DILocation(line: 365, column: 8, scope: !589)
!655 = !DILocation(line: 365, column: 3, scope: !589)
!656 = !DILocation(line: 366, column: 10, scope: !589)
!657 = !DILocation(line: 366, column: 3, scope: !589)
!658 = !DILocation(line: 367, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !589, file: !4, line: 367, column: 7)
!660 = !DILocation(line: 367, column: 7, scope: !589)
!661 = !DILocation(line: 368, column: 4, scope: !659)
!662 = !DILocation(line: 369, column: 2, scope: !589)
!663 = !DILocation(line: 370, column: 2, scope: !222)
!664 = !DILocation(line: 371, column: 1, scope: !222)
!665 = distinct !DISubprogram(name: "memcrc", scope: !4, file: !4, line: 146, type: !666, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!666 = !DISubroutineType(types: !667)
!667 = !{!20, !668, !277}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!670 = !DILocalVariable(name: "b", arg: 1, scope: !665, file: !4, line: 146, type: !668)
!671 = !DILocation(line: 146, column: 50, scope: !665)
!672 = !DILocalVariable(name: "n", arg: 2, scope: !665, file: !4, line: 146, type: !277)
!673 = !DILocation(line: 146, column: 60, scope: !665)
!674 = !DILocalVariable(name: "i", scope: !665, file: !4, line: 152, type: !21)
!675 = !DILocation(line: 152, column: 20, scope: !665)
!676 = !DILocalVariable(name: "c", scope: !665, file: !4, line: 152, type: !21)
!677 = !DILocation(line: 152, column: 23, scope: !665)
!678 = !DILocalVariable(name: "s", scope: !665, file: !4, line: 152, type: !21)
!679 = !DILocation(line: 152, column: 26, scope: !665)
!680 = !DILocation(line: 154, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !665, file: !4, line: 154, column: 2)
!682 = !DILocation(line: 154, column: 9, scope: !681)
!683 = !DILocation(line: 154, column: 7, scope: !681)
!684 = !DILocation(line: 154, column: 14, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !681, file: !4, line: 154, column: 2)
!687 = !DILocation(line: 154, column: 16, scope: !685)
!688 = !DILocation(line: 154, column: 2, scope: !685)
!689 = !DILocation(line: 155, column: 20, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !4, line: 154, column: 26)
!691 = !DILocation(line: 155, column: 18, scope: !690)
!692 = !DILocation(line: 155, column: 7, scope: !690)
!693 = !DILocation(line: 155, column: 5, scope: !690)
!694 = !DILocation(line: 156, column: 8, scope: !690)
!695 = !DILocation(line: 156, column: 10, scope: !690)
!696 = !DILocation(line: 156, column: 29, scope: !690)
!697 = !DILocation(line: 156, column: 31, scope: !690)
!698 = !DILocation(line: 156, column: 40, scope: !690)
!699 = !DILocation(line: 156, column: 38, scope: !690)
!700 = !DILocation(line: 156, column: 18, scope: !690)
!701 = !DILocation(line: 156, column: 16, scope: !690)
!702 = !DILocation(line: 156, column: 5, scope: !690)
!703 = !DILocation(line: 157, column: 2, scope: !690)
!704 = !DILocation(line: 154, column: 21, scope: !705)
!705 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 2)
!706 = !DILocation(line: 154, column: 2, scope: !705)
!707 = distinct !{!707, !708}
!708 = !DILocation(line: 154, column: 2, scope: !665)
!709 = !DILocation(line: 159, column: 2, scope: !665)
!710 = !DILocation(line: 159, column: 9, scope: !711)
!711 = !DILexicalBlockFile(scope: !665, file: !4, discriminator: 1)
!712 = !DILocation(line: 159, column: 11, scope: !711)
!713 = !DILocation(line: 159, column: 2, scope: !711)
!714 = !DILocation(line: 160, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !665, file: !4, line: 159, column: 17)
!716 = !DILocation(line: 160, column: 9, scope: !715)
!717 = !DILocation(line: 160, column: 5, scope: !715)
!718 = !DILocation(line: 161, column: 5, scope: !715)
!719 = !DILocation(line: 162, column: 8, scope: !715)
!720 = !DILocation(line: 162, column: 10, scope: !715)
!721 = !DILocation(line: 162, column: 29, scope: !715)
!722 = !DILocation(line: 162, column: 31, scope: !715)
!723 = !DILocation(line: 162, column: 40, scope: !715)
!724 = !DILocation(line: 162, column: 38, scope: !715)
!725 = !DILocation(line: 162, column: 18, scope: !715)
!726 = !DILocation(line: 162, column: 16, scope: !715)
!727 = !DILocation(line: 162, column: 5, scope: !715)
!728 = !DILocation(line: 159, column: 2, scope: !729)
!729 = !DILexicalBlockFile(scope: !665, file: !4, discriminator: 2)
!730 = distinct !{!730, !709}
!731 = !DILocation(line: 164, column: 10, scope: !665)
!732 = !DILocation(line: 164, column: 9, scope: !665)
!733 = !DILocation(line: 164, column: 2, scope: !665)
!734 = distinct !DISubprogram(name: "sos0_endianness", scope: !4, file: !4, line: 62, type: !735, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!735 = !DISubroutineType(types: !736)
!736 = !{!316}
!737 = !DILocalVariable(name: "x", scope: !734, file: !4, line: 64, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !739, line: 195, baseType: !740)
!739 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop")
!740 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!741 = !DILocation(line: 64, column: 10, scope: !734)
!742 = !DILocalVariable(name: "y", scope: !734, file: !4, line: 65, type: !738)
!743 = !DILocation(line: 65, column: 10, scope: !734)
!744 = !DILocation(line: 68, column: 4, scope: !734)
!745 = !DILocation(line: 70, column: 6, scope: !734)
!746 = !DILocation(line: 70, column: 4, scope: !734)
!747 = !DILocation(line: 71, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !734, file: !4, line: 71, column: 6)
!749 = !DILocation(line: 71, column: 8, scope: !748)
!750 = !DILocation(line: 71, column: 6, scope: !734)
!751 = !DILocation(line: 72, column: 3, scope: !748)
!752 = !DILocation(line: 74, column: 3, scope: !748)
!753 = !DILocation(line: 75, column: 1, scope: !734)
!754 = distinct !DISubprogram(name: "endian_big_uint32", scope: !4, file: !4, line: 81, type: !755, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !54)
!755 = !DISubroutineType(types: !756)
!756 = !{!44, !316, !44}
!757 = !DILocalVariable(name: "endi", arg: 1, scope: !754, file: !4, line: 81, type: !316)
!758 = !DILocation(line: 81, column: 50, scope: !754)
!759 = !DILocalVariable(name: "input", arg: 2, scope: !754, file: !4, line: 81, type: !44)
!760 = !DILocation(line: 81, column: 65, scope: !754)
!761 = !DILocalVariable(name: "temp", scope: !754, file: !4, line: 83, type: !44)
!762 = !DILocation(line: 83, column: 11, scope: !754)
!763 = !DILocation(line: 86, column: 6, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !4, line: 86, column: 6)
!765 = !DILocation(line: 86, column: 11, scope: !764)
!766 = !DILocation(line: 86, column: 6, scope: !754)
!767 = !DILocation(line: 87, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !4, line: 86, column: 37)
!769 = !DILocation(line: 87, column: 19, scope: !768)
!770 = !DILocation(line: 87, column: 26, scope: !768)
!771 = !DILocation(line: 87, column: 8, scope: !768)
!772 = !DILocation(line: 88, column: 13, scope: !768)
!773 = !DILocation(line: 88, column: 19, scope: !768)
!774 = !DILocation(line: 88, column: 25, scope: !768)
!775 = !DILocation(line: 88, column: 8, scope: !768)
!776 = !DILocation(line: 89, column: 13, scope: !768)
!777 = !DILocation(line: 89, column: 19, scope: !768)
!778 = !DILocation(line: 89, column: 25, scope: !768)
!779 = !DILocation(line: 89, column: 8, scope: !768)
!780 = !DILocation(line: 90, column: 13, scope: !768)
!781 = !DILocation(line: 90, column: 19, scope: !768)
!782 = !DILocation(line: 90, column: 26, scope: !768)
!783 = !DILocation(line: 90, column: 8, scope: !768)
!784 = !DILocation(line: 91, column: 2, scope: !768)
!785 = !DILocation(line: 92, column: 10, scope: !786)
!786 = distinct !DILexicalBlock(scope: !764, file: !4, line: 91, column: 9)
!787 = !DILocation(line: 92, column: 8, scope: !786)
!788 = !DILocation(line: 94, column: 10, scope: !754)
!789 = !DILocation(line: 94, column: 2, scope: !754)
