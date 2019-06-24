; ModuleID = './unicodeSimpleOperations.o.i'
source_filename = "./unicodeSimpleOperations.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unicodeSimpleOperations.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: invalid UTF8 string @ %p\0A\00", align 1
@__FUNCTION__.Unicode_FindSubstrInRange = private unnamed_addr constant [26 x i8] c"Unicode_FindSubstrInRange\00", align 1
@__FUNCTION__.Unicode_FindLastSubstrInRange = private unnamed_addr constant [30 x i8] c"Unicode_FindLastSubstrInRange\00", align 1
@__FUNCTION__.Unicode_Substr = private unnamed_addr constant [15 x i8] c"Unicode_Substr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @Unicode_LengthInCodePoints(i8*) #0 !dbg !357 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !370, metadata !371), !dbg !372
  %3 = load i8*, i8** %2, align 8, !dbg !373
  %4 = call i32 @CodeSet_LengthInCodePoints(i8* %3), !dbg !374
  %5 = sext i32 %4 to i64, !dbg !374
  ret i64 %5, !dbg !375
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @CodeSet_LengthInCodePoints(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #0 !dbg !376 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i16*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i16, align 2
  %28 = alloca i64, align 8
  %29 = alloca i16, align 2
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !381, metadata !371), !dbg !382
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !383, metadata !371), !dbg !384
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !385, metadata !371), !dbg !386
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !387, metadata !371), !dbg !388
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !389, metadata !371), !dbg !390
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !391, metadata !371), !dbg !392
  store i8 %6, i8* %14, align 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !393, metadata !371), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %15, metadata !395, metadata !371), !dbg !396
  store i32 -1, i32* %15, align 4, !dbg !396
  call void @llvm.dbg.declare(metadata i8** %16, metadata !397, metadata !371), !dbg !398
  store i8* null, i8** %16, align 8, !dbg !398
  call void @llvm.dbg.declare(metadata i8** %17, metadata !399, metadata !371), !dbg !400
  store i8* null, i8** %17, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata i16** %18, metadata !401, metadata !371), !dbg !402
  store i16* null, i16** %18, align 8, !dbg !402
  call void @llvm.dbg.declare(metadata i16** %19, metadata !403, metadata !371), !dbg !404
  store i16* null, i16** %19, align 8, !dbg !404
  call void @llvm.dbg.declare(metadata i64* %20, metadata !405, metadata !371), !dbg !406
  store i64 0, i64* %20, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata i64* %21, metadata !407, metadata !371), !dbg !408
  call void @llvm.dbg.declare(metadata i16* %22, metadata !409, metadata !371), !dbg !410
  call void @llvm.dbg.declare(metadata i16* %23, metadata !411, metadata !371), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %24, metadata !413, metadata !371), !dbg !414
  call void @llvm.dbg.declare(metadata i32* %25, metadata !415, metadata !371), !dbg !416
  %30 = load i64, i64* %9, align 8, !dbg !417
  %31 = icmp ne i64 %30, 0, !dbg !419
  br i1 %31, label %35, label %32, !dbg !420

; <label>:32:                                     ; preds = %7
  %33 = load i64, i64* %10, align 8, !dbg !421
  %34 = icmp ne i64 %33, -1, !dbg !423
  br i1 %34, label %35, label %45, !dbg !424

; <label>:35:                                     ; preds = %32, %7
  %36 = load i8*, i8** %8, align 8, !dbg !425
  %37 = load i64, i64* %9, align 8, !dbg !427
  %38 = load i64, i64* %10, align 8, !dbg !428
  %39 = call i8* @Unicode_Substr(i8* %36, i64 %37, i64 %38), !dbg !429
  store i8* %39, i8** %16, align 8, !dbg !430
  %40 = load i8*, i8** %16, align 8, !dbg !431
  %41 = icmp ne i8* %40, null, !dbg !431
  br i1 %41, label %43, label %42, !dbg !433

; <label>:42:                                     ; preds = %35
  br label %206, !dbg !434

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %16, align 8, !dbg !436
  store i8* %44, i8** %8, align 8, !dbg !437
  br label %45, !dbg !438

; <label>:45:                                     ; preds = %43, %32
  %46 = load i64, i64* %12, align 8, !dbg !439
  %47 = icmp ne i64 %46, 0, !dbg !441
  br i1 %47, label %51, label %48, !dbg !442

; <label>:48:                                     ; preds = %45
  %49 = load i64, i64* %13, align 8, !dbg !443
  %50 = icmp ne i64 %49, -1, !dbg !445
  br i1 %50, label %51, label %61, !dbg !446

; <label>:51:                                     ; preds = %48, %45
  %52 = load i8*, i8** %11, align 8, !dbg !447
  %53 = load i64, i64* %12, align 8, !dbg !449
  %54 = load i64, i64* %13, align 8, !dbg !450
  %55 = call i8* @Unicode_Substr(i8* %52, i64 %53, i64 %54), !dbg !451
  store i8* %55, i8** %17, align 8, !dbg !452
  %56 = load i8*, i8** %17, align 8, !dbg !453
  %57 = icmp ne i8* %56, null, !dbg !453
  br i1 %57, label %59, label %58, !dbg !455

; <label>:58:                                     ; preds = %51
  br label %206, !dbg !456

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %17, align 8, !dbg !458
  store i8* %60, i8** %11, align 8, !dbg !459
  br label %61, !dbg !460

; <label>:61:                                     ; preds = %59, %48
  %62 = load i8*, i8** %8, align 8, !dbg !461
  %63 = call i16* @Unicode_GetAllocUTF16(i8* %62), !dbg !462
  store i16* %63, i16** %18, align 8, !dbg !463
  %64 = load i16*, i16** %18, align 8, !dbg !464
  %65 = icmp ne i16* %64, null, !dbg !464
  br i1 %65, label %67, label %66, !dbg !466

; <label>:66:                                     ; preds = %61
  br label %206, !dbg !467

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %11, align 8, !dbg !469
  %69 = call i16* @Unicode_GetAllocUTF16(i8* %68), !dbg !470
  store i16* %69, i16** %19, align 8, !dbg !471
  %70 = load i16*, i16** %19, align 8, !dbg !472
  %71 = icmp ne i16* %70, null, !dbg !472
  br i1 %71, label %73, label %72, !dbg !474

; <label>:72:                                     ; preds = %67
  br label %206, !dbg !475

; <label>:73:                                     ; preds = %67
  br label %74, !dbg !477

; <label>:74:                                     ; preds = %73, %102
  %75 = load i16*, i16** %18, align 8, !dbg !478
  %76 = load i64, i64* %20, align 8, !dbg !480
  %77 = getelementptr inbounds i16, i16* %75, i64 %76, !dbg !481
  %78 = load i16, i16* %77, align 2, !dbg !482
  store i16 %78, i16* %22, align 2, !dbg !483
  %79 = load i16*, i16** %19, align 8, !dbg !484
  %80 = load i64, i64* %20, align 8, !dbg !485
  %81 = getelementptr inbounds i16, i16* %79, i64 %80, !dbg !486
  %82 = load i16, i16* %81, align 2, !dbg !487
  store i16 %82, i16* %23, align 2, !dbg !488
  %83 = load i8, i8* %14, align 1, !dbg !489
  %84 = icmp ne i8 %83, 0, !dbg !489
  br i1 %84, label %85, label %90, !dbg !491

; <label>:85:                                     ; preds = %74
  %86 = load i16, i16* %22, align 2, !dbg !492
  %87 = call zeroext i16 @UnicodeSimpleCaseFold(i16 zeroext %86), !dbg !494
  store i16 %87, i16* %22, align 2, !dbg !495
  %88 = load i16, i16* %23, align 2, !dbg !496
  %89 = call zeroext i16 @UnicodeSimpleCaseFold(i16 zeroext %88), !dbg !497
  store i16 %89, i16* %23, align 2, !dbg !498
  br label %90, !dbg !499

; <label>:90:                                     ; preds = %85, %74
  %91 = load i16, i16* %22, align 2, !dbg !500
  %92 = zext i16 %91 to i32, !dbg !500
  %93 = load i16, i16* %23, align 2, !dbg !502
  %94 = zext i16 %93 to i32, !dbg !502
  %95 = icmp ne i32 %92, %94, !dbg !503
  br i1 %95, label %96, label %97, !dbg !504

; <label>:96:                                     ; preds = %90
  br label %105, !dbg !505

; <label>:97:                                     ; preds = %90
  %98 = load i16, i16* %22, align 2, !dbg !507
  %99 = zext i16 %98 to i32, !dbg !507
  %100 = icmp eq i32 %99, 0, !dbg !509
  br i1 %100, label %101, label %102, !dbg !510

; <label>:101:                                    ; preds = %97
  store i32 0, i32* %15, align 4, !dbg !511
  br label %206, !dbg !513

; <label>:102:                                    ; preds = %97
  %103 = load i64, i64* %20, align 8, !dbg !514
  %104 = add nsw i64 %103, 1, !dbg !514
  store i64 %104, i64* %20, align 8, !dbg !514
  br label %74, !dbg !515, !llvm.loop !517

; <label>:105:                                    ; preds = %96
  %106 = load i16, i16* %22, align 2, !dbg !518
  %107 = zext i16 %106 to i32, !dbg !520
  %108 = and i32 %107, -2048, !dbg !521
  %109 = icmp eq i32 %108, 55296, !dbg !522
  br i1 %109, label %110, label %146, !dbg !523

; <label>:110:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata i64* %26, metadata !524, metadata !371), !dbg !526
  %111 = load i16*, i16** %18, align 8, !dbg !527
  %112 = call i64 @Unicode_UTF16Strlen(i16* %111), !dbg !528
  store i64 %112, i64* %26, align 8, !dbg !526
  %113 = load i64, i64* %20, align 8, !dbg !529
  store i64 %113, i64* %21, align 8, !dbg !530
  %114 = load i64, i64* %21, align 8, !dbg !531
  %115 = add nsw i64 %114, 1, !dbg !531
  store i64 %115, i64* %21, align 8, !dbg !531
  %116 = load i16*, i16** %18, align 8, !dbg !533
  %117 = getelementptr inbounds i16, i16* %116, i64 %114, !dbg !534
  %118 = load i16, i16* %117, align 2, !dbg !534
  %119 = zext i16 %118 to i32, !dbg !534
  store i32 %119, i32* %24, align 4, !dbg !535
  %120 = load i32, i32* %24, align 4, !dbg !536
  %121 = and i32 %120, -1024, !dbg !538
  %122 = icmp eq i32 %121, 55296, !dbg !539
  br i1 %122, label %123, label %145, !dbg !540

; <label>:123:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata i16* %27, metadata !541, metadata !371), !dbg !543
  %124 = load i64, i64* %21, align 8, !dbg !544
  %125 = load i64, i64* %26, align 8, !dbg !547
  %126 = icmp slt i64 %124, %125, !dbg !548
  br i1 %126, label %127, label %144, !dbg !549

; <label>:127:                                    ; preds = %123
  %128 = load i64, i64* %21, align 8, !dbg !550
  %129 = load i16*, i16** %18, align 8, !dbg !552
  %130 = getelementptr inbounds i16, i16* %129, i64 %128, !dbg !553
  %131 = load i16, i16* %130, align 2, !dbg !553
  store i16 %131, i16* %27, align 2, !dbg !554
  %132 = zext i16 %131 to i32, !dbg !555
  %133 = and i32 %132, -1024, !dbg !556
  %134 = icmp eq i32 %133, 56320, !dbg !557
  br i1 %134, label %135, label %144, !dbg !558

; <label>:135:                                    ; preds = %127
  %136 = load i64, i64* %21, align 8, !dbg !559
  %137 = add nsw i64 %136, 1, !dbg !559
  store i64 %137, i64* %21, align 8, !dbg !559
  %138 = load i32, i32* %24, align 4, !dbg !562
  %139 = shl i32 %138, 10, !dbg !563
  %140 = load i16, i16* %27, align 2, !dbg !564
  %141 = zext i16 %140 to i32, !dbg !565
  %142 = add i32 %139, %141, !dbg !566
  %143 = sub i32 %142, 56613888, !dbg !567
  store i32 %143, i32* %24, align 4, !dbg !568
  br label %144, !dbg !569

; <label>:144:                                    ; preds = %135, %127, %123
  br label %145, !dbg !570

; <label>:145:                                    ; preds = %144, %110
  br label %149, !dbg !572

; <label>:146:                                    ; preds = %105
  %147 = load i16, i16* %22, align 2, !dbg !573
  %148 = zext i16 %147 to i32, !dbg !573
  store i32 %148, i32* %24, align 4, !dbg !575
  br label %149

; <label>:149:                                    ; preds = %146, %145
  %150 = load i16, i16* %23, align 2, !dbg !576
  %151 = zext i16 %150 to i32, !dbg !578
  %152 = and i32 %151, -2048, !dbg !579
  %153 = icmp eq i32 %152, 55296, !dbg !580
  br i1 %153, label %154, label %190, !dbg !581

; <label>:154:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata i64* %28, metadata !582, metadata !371), !dbg !584
  %155 = load i16*, i16** %19, align 8, !dbg !585
  %156 = call i64 @Unicode_UTF16Strlen(i16* %155), !dbg !586
  store i64 %156, i64* %28, align 8, !dbg !584
  %157 = load i64, i64* %20, align 8, !dbg !587
  store i64 %157, i64* %21, align 8, !dbg !588
  %158 = load i64, i64* %21, align 8, !dbg !589
  %159 = add nsw i64 %158, 1, !dbg !589
  store i64 %159, i64* %21, align 8, !dbg !589
  %160 = load i16*, i16** %19, align 8, !dbg !591
  %161 = getelementptr inbounds i16, i16* %160, i64 %158, !dbg !592
  %162 = load i16, i16* %161, align 2, !dbg !592
  %163 = zext i16 %162 to i32, !dbg !592
  store i32 %163, i32* %25, align 4, !dbg !593
  %164 = load i32, i32* %25, align 4, !dbg !594
  %165 = and i32 %164, -1024, !dbg !596
  %166 = icmp eq i32 %165, 55296, !dbg !597
  br i1 %166, label %167, label %189, !dbg !598

; <label>:167:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i16* %29, metadata !599, metadata !371), !dbg !601
  %168 = load i64, i64* %21, align 8, !dbg !602
  %169 = load i64, i64* %28, align 8, !dbg !605
  %170 = icmp slt i64 %168, %169, !dbg !606
  br i1 %170, label %171, label %188, !dbg !607

; <label>:171:                                    ; preds = %167
  %172 = load i64, i64* %21, align 8, !dbg !608
  %173 = load i16*, i16** %19, align 8, !dbg !610
  %174 = getelementptr inbounds i16, i16* %173, i64 %172, !dbg !611
  %175 = load i16, i16* %174, align 2, !dbg !611
  store i16 %175, i16* %29, align 2, !dbg !612
  %176 = zext i16 %175 to i32, !dbg !613
  %177 = and i32 %176, -1024, !dbg !614
  %178 = icmp eq i32 %177, 56320, !dbg !615
  br i1 %178, label %179, label %188, !dbg !616

; <label>:179:                                    ; preds = %171
  %180 = load i64, i64* %21, align 8, !dbg !617
  %181 = add nsw i64 %180, 1, !dbg !617
  store i64 %181, i64* %21, align 8, !dbg !617
  %182 = load i32, i32* %25, align 4, !dbg !620
  %183 = shl i32 %182, 10, !dbg !621
  %184 = load i16, i16* %29, align 2, !dbg !622
  %185 = zext i16 %184 to i32, !dbg !623
  %186 = add i32 %183, %185, !dbg !624
  %187 = sub i32 %186, 56613888, !dbg !625
  store i32 %187, i32* %25, align 4, !dbg !626
  br label %188, !dbg !627

; <label>:188:                                    ; preds = %179, %171, %167
  br label %189, !dbg !628

; <label>:189:                                    ; preds = %188, %154
  br label %193, !dbg !630

; <label>:190:                                    ; preds = %149
  %191 = load i16, i16* %23, align 2, !dbg !631
  %192 = zext i16 %191 to i32, !dbg !631
  store i32 %192, i32* %25, align 4, !dbg !633
  br label %193

; <label>:193:                                    ; preds = %190, %189
  %194 = load i32, i32* %24, align 4, !dbg !634
  %195 = load i32, i32* %25, align 4, !dbg !636
  %196 = icmp ult i32 %194, %195, !dbg !637
  br i1 %196, label %197, label %198, !dbg !638

; <label>:197:                                    ; preds = %193
  store i32 -1, i32* %15, align 4, !dbg !639
  br label %205, !dbg !641

; <label>:198:                                    ; preds = %193
  %199 = load i32, i32* %24, align 4, !dbg !642
  %200 = load i32, i32* %25, align 4, !dbg !645
  %201 = icmp ugt i32 %199, %200, !dbg !646
  br i1 %201, label %202, label %203, !dbg !642

; <label>:202:                                    ; preds = %198
  store i32 1, i32* %15, align 4, !dbg !647
  br label %204, !dbg !649

; <label>:203:                                    ; preds = %198
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 222) #7, !dbg !650
  unreachable, !dbg !650

; <label>:204:                                    ; preds = %202
  br label %205

; <label>:205:                                    ; preds = %204, %197
  br label %206, !dbg !652

; <label>:206:                                    ; preds = %205, %101, %72, %66, %58, %42
  %207 = load i16*, i16** %18, align 8, !dbg !654
  %208 = bitcast i16* %207 to i8*, !dbg !654
  call void @free(i8* %208) #6, !dbg !655
  %209 = load i16*, i16** %19, align 8, !dbg !656
  %210 = bitcast i16* %209 to i8*, !dbg !656
  call void @free(i8* %210) #6, !dbg !657
  %211 = load i8*, i8** %16, align 8, !dbg !658
  call void @free(i8* %211) #6, !dbg !659
  %212 = load i8*, i8** %17, align 8, !dbg !660
  call void @free(i8* %212) #6, !dbg !661
  %213 = load i32, i32* %15, align 4, !dbg !662
  ret i32 %213, !dbg !663
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_Substr(i8*, i64, i64) #0 !dbg !664 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !667, metadata !371), !dbg !668
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !669, metadata !371), !dbg !670
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !671, metadata !371), !dbg !672
  call void @llvm.dbg.declare(metadata i8** %7, metadata !673, metadata !371), !dbg !674
  call void @llvm.dbg.declare(metadata i32* %8, metadata !675, metadata !371), !dbg !676
  call void @llvm.dbg.declare(metadata i32** %9, metadata !677, metadata !371), !dbg !679
  store i32* null, i32** %9, align 8, !dbg !679
  %10 = load i8*, i8** %4, align 8, !dbg !680
  %11 = bitcast i32** %9 to i8**, !dbg !682
  %12 = call signext i8 @CodeSet_UTF8ToUTF32(i8* %10, i8** %11), !dbg !683
  %13 = icmp ne i8 %12, 0, !dbg !683
  br i1 %13, label %16, label %14, !dbg !684

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %4, align 8, !dbg !685
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.Unicode_Substr, i32 0, i32 0), i8* %15) #7, !dbg !687
  unreachable, !dbg !687

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !688
  br label %17, !dbg !689

; <label>:17:                                     ; preds = %24, %16
  %18 = load i32, i32* %8, align 4, !dbg !690
  %19 = zext i32 %18 to i64, !dbg !692
  %20 = load i32*, i32** %9, align 8, !dbg !692
  %21 = getelementptr inbounds i32, i32* %20, i64 %19, !dbg !692
  %22 = load i32, i32* %21, align 4, !dbg !692
  %23 = icmp ne i32 %22, 0, !dbg !693
  br i1 %23, label %24, label %27, !dbg !694

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %8, align 4, !dbg !695
  %26 = add i32 %25, 1, !dbg !695
  store i32 %26, i32* %8, align 4, !dbg !695
  br label %17, !dbg !697, !llvm.loop !699

; <label>:27:                                     ; preds = %17
  %28 = load i64, i64* %5, align 8, !dbg !700
  %29 = icmp slt i64 %28, 0, !dbg !702
  br i1 %29, label %35, label %30, !dbg !703

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %5, align 8, !dbg !704
  %32 = load i32, i32* %8, align 4, !dbg !706
  %33 = zext i32 %32 to i64, !dbg !706
  %34 = icmp sgt i64 %31, %33, !dbg !707
  br i1 %34, label %35, label %38, !dbg !708

; <label>:35:                                     ; preds = %30, %27
  %36 = load i32, i32* %8, align 4, !dbg !709
  %37 = zext i32 %36 to i64, !dbg !709
  store i64 %37, i64* %5, align 8, !dbg !711
  br label %38, !dbg !712

; <label>:38:                                     ; preds = %35, %30
  %39 = load i64, i64* %6, align 8, !dbg !713
  %40 = icmp slt i64 %39, 0, !dbg !715
  br i1 %40, label %48, label %41, !dbg !716

; <label>:41:                                     ; preds = %38
  %42 = load i64, i64* %5, align 8, !dbg !717
  %43 = load i64, i64* %6, align 8, !dbg !719
  %44 = add nsw i64 %42, %43, !dbg !720
  %45 = load i32, i32* %8, align 4, !dbg !721
  %46 = zext i32 %45 to i64, !dbg !721
  %47 = icmp sgt i64 %44, %46, !dbg !722
  br i1 %47, label %48, label %53, !dbg !723

; <label>:48:                                     ; preds = %41, %38
  %49 = load i32, i32* %8, align 4, !dbg !724
  %50 = zext i32 %49 to i64, !dbg !724
  %51 = load i64, i64* %5, align 8, !dbg !726
  %52 = sub nsw i64 %50, %51, !dbg !727
  store i64 %52, i64* %6, align 8, !dbg !728
  br label %53, !dbg !729

; <label>:53:                                     ; preds = %48, %41
  %54 = load i64, i64* %5, align 8, !dbg !730
  %55 = load i64, i64* %6, align 8, !dbg !731
  %56 = add nsw i64 %54, %55, !dbg !732
  %57 = load i32*, i32** %9, align 8, !dbg !733
  %58 = getelementptr inbounds i32, i32* %57, i64 %56, !dbg !733
  store i32 0, i32* %58, align 4, !dbg !734
  %59 = load i64, i64* %5, align 8, !dbg !735
  %60 = load i32*, i32** %9, align 8, !dbg !736
  %61 = getelementptr inbounds i32, i32* %60, i64 %59, !dbg !736
  %62 = bitcast i32* %61 to i8*, !dbg !737
  %63 = call signext i8 @CodeSet_UTF32ToUTF8(i8* %62, i8** %7), !dbg !738
  %64 = load i32*, i32** %9, align 8, !dbg !739
  %65 = bitcast i32* %64 to i8*, !dbg !739
  call void @free(i8* %65) #6, !dbg !740
  %66 = load i8*, i8** %7, align 8, !dbg !741
  ret i8* %66, !dbg !742
}

; Function Attrs: inlinehint nounwind uwtable
define internal i16* @Unicode_GetAllocUTF16(i8*) #3 !dbg !743 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !747, metadata !371), !dbg !748
  %3 = load i8*, i8** %2, align 8, !dbg !749
  %4 = call i8* @Unicode_GetAllocBytes(i8* %3, i32 1), !dbg !750
  %5 = bitcast i8* %4 to i16*, !dbg !751
  ret i16* %5, !dbg !752
}

declare zeroext i16 @UnicodeSimpleCaseFold(i16 zeroext) #2

declare i64 @Unicode_UTF16Strlen(i16*) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i64 @Unicode_FindSubstrInRange(i8*, i64, i64, i8*, i64, i64) #0 !dbg !753 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !756, metadata !371), !dbg !757
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !758, metadata !371), !dbg !759
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !760, metadata !371), !dbg !761
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !762, metadata !371), !dbg !763
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !764, metadata !371), !dbg !765
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !766, metadata !371), !dbg !767
  call void @llvm.dbg.declare(metadata i64* %13, metadata !768, metadata !371), !dbg !769
  call void @llvm.dbg.declare(metadata i32** %14, metadata !770, metadata !371), !dbg !771
  store i32* null, i32** %14, align 8, !dbg !771
  call void @llvm.dbg.declare(metadata i32** %15, metadata !772, metadata !371), !dbg !773
  store i32* null, i32** %15, align 8, !dbg !773
  %20 = load i8*, i8** %7, align 8, !dbg !774
  %21 = bitcast i32** %14 to i8**, !dbg !776
  %22 = call signext i8 @CodeSet_UTF8ToUTF32(i8* %20, i8** %21), !dbg !777
  %23 = icmp ne i8 %22, 0, !dbg !777
  br i1 %23, label %26, label %24, !dbg !778

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %7, align 8, !dbg !779
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.Unicode_FindSubstrInRange, i32 0, i32 0), i8* %25) #7, !dbg !781
  unreachable, !dbg !781

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** %10, align 8, !dbg !782
  %28 = bitcast i32** %15 to i8**, !dbg !784
  %29 = call signext i8 @CodeSet_UTF8ToUTF32(i8* %27, i8** %28), !dbg !785
  %30 = icmp ne i8 %29, 0, !dbg !785
  br i1 %30, label %33, label %31, !dbg !786

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %10, align 8, !dbg !787
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.Unicode_FindSubstrInRange, i32 0, i32 0), i8* %32) #7, !dbg !789
  unreachable, !dbg !789

; <label>:33:                                     ; preds = %26
  %34 = load i64, i64* %9, align 8, !dbg !790
  %35 = icmp slt i64 %34, 0, !dbg !792
  br i1 %35, label %36, label %41, !dbg !793

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %7, align 8, !dbg !794
  %38 = call i64 @Unicode_LengthInCodePoints(i8* %37), !dbg !796
  %39 = load i64, i64* %8, align 8, !dbg !797
  %40 = sub nsw i64 %38, %39, !dbg !798
  store i64 %40, i64* %9, align 8, !dbg !799
  br label %41, !dbg !800

; <label>:41:                                     ; preds = %36, %33
  %42 = load i64, i64* %12, align 8, !dbg !801
  %43 = icmp slt i64 %42, 0, !dbg !803
  br i1 %43, label %44, label %49, !dbg !804

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %10, align 8, !dbg !805
  %46 = call i64 @Unicode_LengthInCodePoints(i8* %45), !dbg !807
  %47 = load i64, i64* %11, align 8, !dbg !808
  %48 = sub nsw i64 %46, %47, !dbg !809
  store i64 %48, i64* %12, align 8, !dbg !810
  br label %49, !dbg !811

; <label>:49:                                     ; preds = %44, %41
  %50 = load i64, i64* %9, align 8, !dbg !812
  %51 = load i64, i64* %12, align 8, !dbg !814
  %52 = icmp slt i64 %50, %51, !dbg !815
  br i1 %52, label %53, label %54, !dbg !816

; <label>:53:                                     ; preds = %49
  store i64 -1, i64* %13, align 8, !dbg !817
  br label %106, !dbg !819

; <label>:54:                                     ; preds = %49
  %55 = load i64, i64* %12, align 8, !dbg !820
  %56 = icmp eq i64 %55, 0, !dbg !822
  br i1 %56, label %57, label %59, !dbg !823

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %8, align 8, !dbg !824
  store i64 %58, i64* %13, align 8, !dbg !826
  br label %106, !dbg !827

; <label>:59:                                     ; preds = %54
  %60 = load i64, i64* %8, align 8, !dbg !828
  store i64 %60, i64* %13, align 8, !dbg !830
  br label %61, !dbg !831

; <label>:61:                                     ; preds = %102, %59
  %62 = load i64, i64* %13, align 8, !dbg !832
  %63 = load i64, i64* %8, align 8, !dbg !834
  %64 = load i64, i64* %9, align 8, !dbg !835
  %65 = add nsw i64 %63, %64, !dbg !836
  %66 = load i64, i64* %12, align 8, !dbg !837
  %67 = sub nsw i64 %65, %66, !dbg !838
  %68 = icmp sle i64 %62, %67, !dbg !839
  br i1 %68, label %69, label %105, !dbg !840

; <label>:69:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata i64* %16, metadata !842, metadata !371), !dbg !844
  call void @llvm.dbg.declare(metadata i8* %17, metadata !845, metadata !371), !dbg !846
  store i8 0, i8* %17, align 1, !dbg !846
  call void @llvm.dbg.declare(metadata i64* %18, metadata !847, metadata !371), !dbg !848
  %70 = load i64, i64* %13, align 8, !dbg !849
  store i64 %70, i64* %18, align 8, !dbg !848
  call void @llvm.dbg.declare(metadata i64* %19, metadata !850, metadata !371), !dbg !851
  %71 = load i64, i64* %11, align 8, !dbg !852
  store i64 %71, i64* %19, align 8, !dbg !851
  store i64 0, i64* %16, align 8, !dbg !853
  br label %72, !dbg !855

; <label>:72:                                     ; preds = %94, %69
  %73 = load i64, i64* %16, align 8, !dbg !856
  %74 = load i64, i64* %12, align 8, !dbg !859
  %75 = icmp slt i64 %73, %74, !dbg !860
  br i1 %75, label %76, label %97, !dbg !861

; <label>:76:                                     ; preds = %72
  %77 = load i64, i64* %18, align 8, !dbg !862
  %78 = add nsw i64 %77, 1, !dbg !862
  store i64 %78, i64* %18, align 8, !dbg !862
  %79 = load i32*, i32** %14, align 8, !dbg !864
  %80 = getelementptr inbounds i32, i32* %79, i64 %77, !dbg !864
  %81 = load i32, i32* %80, align 4, !dbg !864
  %82 = load i64, i64* %19, align 8, !dbg !865
  %83 = add nsw i64 %82, 1, !dbg !865
  store i64 %83, i64* %19, align 8, !dbg !865
  %84 = load i32*, i32** %15, align 8, !dbg !866
  %85 = getelementptr inbounds i32, i32* %84, i64 %82, !dbg !866
  %86 = load i32, i32* %85, align 4, !dbg !866
  %87 = icmp eq i32 %81, %86, !dbg !867
  %88 = zext i1 %87 to i32, !dbg !867
  %89 = trunc i32 %88 to i8, !dbg !868
  store i8 %89, i8* %17, align 1, !dbg !869
  %90 = load i8, i8* %17, align 1, !dbg !870
  %91 = icmp ne i8 %90, 0, !dbg !870
  br i1 %91, label %93, label %92, !dbg !872

; <label>:92:                                     ; preds = %76
  br label %97, !dbg !873

; <label>:93:                                     ; preds = %76
  br label %94, !dbg !875

; <label>:94:                                     ; preds = %93
  %95 = load i64, i64* %16, align 8, !dbg !876
  %96 = add nsw i64 %95, 1, !dbg !876
  store i64 %96, i64* %16, align 8, !dbg !876
  br label %72, !dbg !878, !llvm.loop !879

; <label>:97:                                     ; preds = %92, %72
  %98 = load i8, i8* %17, align 1, !dbg !881
  %99 = icmp ne i8 %98, 0, !dbg !881
  br i1 %99, label %100, label %101, !dbg !883

; <label>:100:                                    ; preds = %97
  br label %106, !dbg !884

; <label>:101:                                    ; preds = %97
  br label %102, !dbg !886

; <label>:102:                                    ; preds = %101
  %103 = load i64, i64* %13, align 8, !dbg !887
  %104 = add nsw i64 %103, 1, !dbg !887
  store i64 %104, i64* %13, align 8, !dbg !887
  br label %61, !dbg !888, !llvm.loop !890

; <label>:105:                                    ; preds = %61
  store i64 -1, i64* %13, align 8, !dbg !892
  br label %106, !dbg !893

; <label>:106:                                    ; preds = %105, %100, %57, %53
  %107 = load i32*, i32** %14, align 8, !dbg !894
  %108 = bitcast i32* %107 to i8*, !dbg !894
  call void @free(i8* %108) #6, !dbg !895
  %109 = load i32*, i32** %15, align 8, !dbg !896
  %110 = bitcast i32* %109 to i8*, !dbg !896
  call void @free(i8* %110) #6, !dbg !897
  %111 = load i64, i64* %13, align 8, !dbg !898
  ret i64 %111, !dbg !899
}

declare signext i8 @CodeSet_UTF8ToUTF32(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define i64 @Unicode_FindLastSubstrInRange(i8*, i64, i64, i8*, i64, i64) #0 !dbg !900 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !901, metadata !371), !dbg !902
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !903, metadata !371), !dbg !904
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !905, metadata !371), !dbg !906
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !907, metadata !371), !dbg !908
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !909, metadata !371), !dbg !910
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !911, metadata !371), !dbg !912
  call void @llvm.dbg.declare(metadata i64* %13, metadata !913, metadata !371), !dbg !914
  call void @llvm.dbg.declare(metadata i32** %14, metadata !915, metadata !371), !dbg !916
  store i32* null, i32** %14, align 8, !dbg !916
  call void @llvm.dbg.declare(metadata i32** %15, metadata !917, metadata !371), !dbg !918
  store i32* null, i32** %15, align 8, !dbg !918
  %20 = load i8*, i8** %7, align 8, !dbg !919
  %21 = bitcast i32** %14 to i8**, !dbg !921
  %22 = call signext i8 @CodeSet_UTF8ToUTF32(i8* %20, i8** %21), !dbg !922
  %23 = icmp ne i8 %22, 0, !dbg !922
  br i1 %23, label %26, label %24, !dbg !923

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %7, align 8, !dbg !924
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.Unicode_FindLastSubstrInRange, i32 0, i32 0), i8* %25) #7, !dbg !926
  unreachable, !dbg !926

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** %10, align 8, !dbg !927
  %28 = bitcast i32** %15 to i8**, !dbg !929
  %29 = call signext i8 @CodeSet_UTF8ToUTF32(i8* %27, i8** %28), !dbg !930
  %30 = icmp ne i8 %29, 0, !dbg !930
  br i1 %30, label %33, label %31, !dbg !931

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %10, align 8, !dbg !932
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.Unicode_FindLastSubstrInRange, i32 0, i32 0), i8* %32) #7, !dbg !934
  unreachable, !dbg !934

; <label>:33:                                     ; preds = %26
  %34 = load i64, i64* %9, align 8, !dbg !935
  %35 = icmp slt i64 %34, 0, !dbg !937
  br i1 %35, label %36, label %41, !dbg !938

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %7, align 8, !dbg !939
  %38 = call i64 @Unicode_LengthInCodePoints(i8* %37), !dbg !941
  %39 = load i64, i64* %8, align 8, !dbg !942
  %40 = sub nsw i64 %38, %39, !dbg !943
  store i64 %40, i64* %9, align 8, !dbg !944
  br label %41, !dbg !945

; <label>:41:                                     ; preds = %36, %33
  %42 = load i64, i64* %12, align 8, !dbg !946
  %43 = icmp slt i64 %42, 0, !dbg !948
  br i1 %43, label %44, label %49, !dbg !949

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %10, align 8, !dbg !950
  %46 = call i64 @Unicode_LengthInCodePoints(i8* %45), !dbg !952
  %47 = load i64, i64* %11, align 8, !dbg !953
  %48 = sub nsw i64 %46, %47, !dbg !954
  store i64 %48, i64* %12, align 8, !dbg !955
  br label %49, !dbg !956

; <label>:49:                                     ; preds = %44, %41
  %50 = load i64, i64* %9, align 8, !dbg !957
  %51 = load i64, i64* %12, align 8, !dbg !959
  %52 = icmp slt i64 %50, %51, !dbg !960
  br i1 %52, label %53, label %54, !dbg !961

; <label>:53:                                     ; preds = %49
  store i64 -1, i64* %13, align 8, !dbg !962
  br label %106, !dbg !964

; <label>:54:                                     ; preds = %49
  %55 = load i64, i64* %12, align 8, !dbg !965
  %56 = icmp eq i64 %55, 0, !dbg !967
  br i1 %56, label %57, label %59, !dbg !968

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %8, align 8, !dbg !969
  store i64 %58, i64* %13, align 8, !dbg !971
  br label %106, !dbg !972

; <label>:59:                                     ; preds = %54
  %60 = load i64, i64* %8, align 8, !dbg !973
  %61 = load i64, i64* %9, align 8, !dbg !975
  %62 = add nsw i64 %60, %61, !dbg !976
  %63 = load i64, i64* %12, align 8, !dbg !977
  %64 = sub nsw i64 %62, %63, !dbg !978
  store i64 %64, i64* %13, align 8, !dbg !979
  br label %65, !dbg !980

; <label>:65:                                     ; preds = %102, %59
  %66 = load i64, i64* %13, align 8, !dbg !981
  %67 = load i64, i64* %8, align 8, !dbg !983
  %68 = icmp sge i64 %66, %67, !dbg !984
  br i1 %68, label %69, label %105, !dbg !985

; <label>:69:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i64* %16, metadata !987, metadata !371), !dbg !989
  call void @llvm.dbg.declare(metadata i8* %17, metadata !990, metadata !371), !dbg !991
  store i8 0, i8* %17, align 1, !dbg !991
  call void @llvm.dbg.declare(metadata i64* %18, metadata !992, metadata !371), !dbg !993
  %70 = load i64, i64* %13, align 8, !dbg !994
  store i64 %70, i64* %18, align 8, !dbg !993
  call void @llvm.dbg.declare(metadata i64* %19, metadata !995, metadata !371), !dbg !996
  %71 = load i64, i64* %11, align 8, !dbg !997
  store i64 %71, i64* %19, align 8, !dbg !996
  store i64 0, i64* %16, align 8, !dbg !998
  br label %72, !dbg !1000

; <label>:72:                                     ; preds = %94, %69
  %73 = load i64, i64* %16, align 8, !dbg !1001
  %74 = load i64, i64* %12, align 8, !dbg !1004
  %75 = icmp slt i64 %73, %74, !dbg !1005
  br i1 %75, label %76, label %97, !dbg !1006

; <label>:76:                                     ; preds = %72
  %77 = load i64, i64* %18, align 8, !dbg !1007
  %78 = add nsw i64 %77, 1, !dbg !1007
  store i64 %78, i64* %18, align 8, !dbg !1007
  %79 = load i32*, i32** %14, align 8, !dbg !1009
  %80 = getelementptr inbounds i32, i32* %79, i64 %77, !dbg !1009
  %81 = load i32, i32* %80, align 4, !dbg !1009
  %82 = load i64, i64* %19, align 8, !dbg !1010
  %83 = add nsw i64 %82, 1, !dbg !1010
  store i64 %83, i64* %19, align 8, !dbg !1010
  %84 = load i32*, i32** %15, align 8, !dbg !1011
  %85 = getelementptr inbounds i32, i32* %84, i64 %82, !dbg !1011
  %86 = load i32, i32* %85, align 4, !dbg !1011
  %87 = icmp eq i32 %81, %86, !dbg !1012
  %88 = zext i1 %87 to i32, !dbg !1012
  %89 = trunc i32 %88 to i8, !dbg !1013
  store i8 %89, i8* %17, align 1, !dbg !1014
  %90 = load i8, i8* %17, align 1, !dbg !1015
  %91 = icmp ne i8 %90, 0, !dbg !1015
  br i1 %91, label %93, label %92, !dbg !1017

; <label>:92:                                     ; preds = %76
  br label %97, !dbg !1018

; <label>:93:                                     ; preds = %76
  br label %94, !dbg !1020

; <label>:94:                                     ; preds = %93
  %95 = load i64, i64* %16, align 8, !dbg !1021
  %96 = add nsw i64 %95, 1, !dbg !1021
  store i64 %96, i64* %16, align 8, !dbg !1021
  br label %72, !dbg !1023, !llvm.loop !1024

; <label>:97:                                     ; preds = %92, %72
  %98 = load i8, i8* %17, align 1, !dbg !1026
  %99 = icmp ne i8 %98, 0, !dbg !1026
  br i1 %99, label %100, label %101, !dbg !1028

; <label>:100:                                    ; preds = %97
  br label %106, !dbg !1029

; <label>:101:                                    ; preds = %97
  br label %102, !dbg !1031

; <label>:102:                                    ; preds = %101
  %103 = load i64, i64* %13, align 8, !dbg !1032
  %104 = add nsw i64 %103, -1, !dbg !1032
  store i64 %104, i64* %13, align 8, !dbg !1032
  br label %65, !dbg !1033, !llvm.loop !1035

; <label>:105:                                    ; preds = %65
  store i64 -1, i64* %13, align 8, !dbg !1037
  br label %106, !dbg !1038

; <label>:106:                                    ; preds = %105, %100, %57, %53
  %107 = load i32*, i32** %14, align 8, !dbg !1039
  %108 = bitcast i32* %107 to i8*, !dbg !1039
  call void @free(i8* %108) #6, !dbg !1040
  %109 = load i32*, i32** %15, align 8, !dbg !1041
  %110 = bitcast i32* %109 to i8*, !dbg !1041
  call void @free(i8* %110) #6, !dbg !1042
  %111 = load i64, i64* %13, align 8, !dbg !1043
  ret i64 %111, !dbg !1044
}

declare signext i8 @CodeSet_UTF32ToUTF8(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define i8* @Unicode_ReplaceRange(i8*, i64, i64, i8*, i64, i64) #0 !dbg !1045 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1048, metadata !371), !dbg !1049
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1050, metadata !371), !dbg !1051
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1052, metadata !371), !dbg !1053
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1054, metadata !371), !dbg !1055
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1056, metadata !371), !dbg !1057
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1058, metadata !371), !dbg !1059
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1060, metadata !371), !dbg !1061
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1062, metadata !371), !dbg !1063
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1064, metadata !371), !dbg !1065
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1066, metadata !371), !dbg !1067
  %17 = load i8*, i8** %7, align 8, !dbg !1068
  %18 = load i64, i64* %8, align 8, !dbg !1069
  %19 = call i8* @Unicode_Substr(i8* %17, i64 0, i64 %18), !dbg !1070
  store i8* %19, i8** %14, align 8, !dbg !1071
  %20 = load i8*, i8** %10, align 8, !dbg !1072
  %21 = load i64, i64* %11, align 8, !dbg !1073
  %22 = load i64, i64* %12, align 8, !dbg !1074
  %23 = call i8* @Unicode_Substr(i8* %20, i64 %21, i64 %22), !dbg !1075
  store i8* %23, i8** %15, align 8, !dbg !1076
  %24 = load i8*, i8** %7, align 8, !dbg !1077
  %25 = load i64, i64* %8, align 8, !dbg !1078
  %26 = load i64, i64* %9, align 8, !dbg !1079
  %27 = add nsw i64 %25, %26, !dbg !1080
  %28 = call i8* @Unicode_Substr(i8* %24, i64 %27, i64 -1), !dbg !1081
  store i8* %28, i8** %16, align 8, !dbg !1082
  %29 = load i8*, i8** %14, align 8, !dbg !1083
  %30 = load i8*, i8** %15, align 8, !dbg !1084
  %31 = load i8*, i8** %16, align 8, !dbg !1085
  %32 = call i8* (i8*, ...) @Unicode_Join(i8* %29, i8* %30, i8* %31, i8* null), !dbg !1086
  store i8* %32, i8** %13, align 8, !dbg !1087
  %33 = load i8*, i8** %14, align 8, !dbg !1088
  call void @free(i8* %33) #6, !dbg !1089
  %34 = load i8*, i8** %15, align 8, !dbg !1090
  call void @free(i8* %34) #6, !dbg !1091
  %35 = load i8*, i8** %16, align 8, !dbg !1092
  call void @free(i8* %35) #6, !dbg !1093
  %36 = load i8*, i8** %13, align 8, !dbg !1094
  ret i8* %36, !dbg !1095
}

; Function Attrs: nounwind uwtable
define i8* @Unicode_Join(i8*, ...) #0 !dbg !1096 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1099, metadata !371), !dbg !1100
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1101, metadata !371), !dbg !1102
  %7 = load i8*, i8** %2, align 8, !dbg !1103
  %8 = icmp eq i8* %7, null, !dbg !1105
  br i1 %8, label %9, label %10, !dbg !1106

; <label>:9:                                      ; preds = %1
  store i8* null, i8** %3, align 8, !dbg !1107
  br label %44, !dbg !1109

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !1110, metadata !371), !dbg !1125
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1126, metadata !371), !dbg !1127
  %11 = load i8*, i8** %2, align 8, !dbg !1128
  %12 = call i8* @Unicode_Duplicate(i8* %11), !dbg !1129
  store i8* %12, i8** %3, align 8, !dbg !1130
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !1131
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !1131
  call void @llvm.va_start(i8* %14), !dbg !1131
  br label %15, !dbg !1132

; <label>:15:                                     ; preds = %35, %10
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !1133
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 0, !dbg !1133
  %18 = load i32, i32* %17, align 16, !dbg !1133
  %19 = icmp ule i32 %18, 40, !dbg !1133
  br i1 %19, label %20, label %26, !dbg !1133

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 3, !dbg !1135
  %22 = load i8*, i8** %21, align 16, !dbg !1135
  %23 = getelementptr i8, i8* %22, i32 %18, !dbg !1135
  %24 = bitcast i8* %23 to i8**, !dbg !1135
  %25 = add i32 %18, 8, !dbg !1135
  store i32 %25, i32* %17, align 16, !dbg !1135
  br label %31, !dbg !1135

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 2, !dbg !1137
  %28 = load i8*, i8** %27, align 8, !dbg !1137
  %29 = bitcast i8* %28 to i8**, !dbg !1137
  %30 = getelementptr i8, i8* %28, i32 8, !dbg !1137
  store i8* %30, i8** %27, align 8, !dbg !1137
  br label %31, !dbg !1137

; <label>:31:                                     ; preds = %26, %20
  %32 = phi i8** [ %24, %20 ], [ %29, %26 ], !dbg !1139
  %33 = load i8*, i8** %32, align 8, !dbg !1139
  store i8* %33, i8** %5, align 8, !dbg !1141
  %34 = icmp ne i8* %33, null, !dbg !1142
  br i1 %34, label %35, label %41, !dbg !1143

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1144, metadata !371), !dbg !1146
  %36 = load i8*, i8** %3, align 8, !dbg !1147
  %37 = load i8*, i8** %5, align 8, !dbg !1148
  %38 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %36, i8* %37), !dbg !1149
  store i8* %38, i8** %6, align 8, !dbg !1150
  %39 = load i8*, i8** %3, align 8, !dbg !1151
  call void @free(i8* %39) #6, !dbg !1152
  %40 = load i8*, i8** %6, align 8, !dbg !1153
  store i8* %40, i8** %3, align 8, !dbg !1154
  br label %15, !dbg !1155, !llvm.loop !1157

; <label>:41:                                     ; preds = %31
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !1158
  %43 = bitcast %struct.__va_list_tag* %42 to i8*, !dbg !1158
  call void @llvm.va_end(i8* %43), !dbg !1158
  br label %44

; <label>:44:                                     ; preds = %41, %9
  %45 = load i8*, i8** %3, align 8, !dbg !1159
  ret i8* %45, !dbg !1160
}

declare i8* @Unicode_Duplicate(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind uwtable
define i8* @Unicode_Format(i8*, ...) #0 !dbg !1161 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1162, metadata !371), !dbg !1163
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1164, metadata !371), !dbg !1165
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1166, metadata !371), !dbg !1167
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1168
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !1168
  call void @llvm.va_start(i8* %6), !dbg !1168
  %7 = load i8*, i8** %2, align 8, !dbg !1169
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1170
  %9 = call i8* @Str_Vasprintf(i64* null, i8* %7, %struct.__va_list_tag* %8), !dbg !1171
  store i8* %9, i8** %4, align 8, !dbg !1172
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1173
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !1173
  call void @llvm.va_end(i8* %11), !dbg !1173
  %12 = load i8*, i8** %4, align 8, !dbg !1174
  ret i8* %12, !dbg !1175
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #2

declare i8* @Unicode_GetAllocBytes(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!354, !355}
!llvm.ident = !{!356}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !339)
!1 = !DIFile(filename: "unicodeSimpleOperations.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!5 = !{!6}
!6 = !DIEnumerator(name: "UNICODE_INDEX_NOT_FOUND", value: -1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!9 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!10 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!11 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!12 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!13 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!14 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!15 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!16 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!17 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!18 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!19 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!20 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!21 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!22 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!23 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!24 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!25 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!26 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!28 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!29 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!30 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!31 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!32 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!33 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!34 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!35 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!37 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!38 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!40 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!41 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!42 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!43 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!44 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!45 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!46 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!47 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!48 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!49 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!50 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!51 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!52 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!53 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!54 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!55 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!56 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!57 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!58 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!59 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!60 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!61 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!62 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!63 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!64 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!65 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!66 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!67 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!68 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!69 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!70 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!71 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!72 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!73 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!74 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!75 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!76 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!77 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!78 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!79 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!80 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!81 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!82 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!83 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!84 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!85 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!86 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!87 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!88 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!89 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!90 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!91 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!92 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!93 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!94 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!95 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!96 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!97 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!98 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!99 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!100 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!101 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!102 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!103 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!104 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!105 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!106 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!107 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!108 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!109 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!110 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!111 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!112 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!113 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!115 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!116 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!117 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!118 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!119 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!120 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!121 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!122 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!123 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!124 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!126 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!127 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!128 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!129 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!130 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!131 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!132 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!133 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!134 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!135 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!136 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!137 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!138 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!139 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!140 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!141 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!142 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!143 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!144 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!147 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!148 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!149 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!150 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!151 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!152 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!153 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!154 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!155 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!156 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!157 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!159 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!160 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!161 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!162 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!163 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!164 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!165 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!166 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!167 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!168 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!169 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!170 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!171 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!172 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!173 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!174 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!175 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!176 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!177 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!178 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!179 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!180 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!181 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!182 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!183 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!184 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!185 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!186 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!187 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!188 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!189 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!190 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!217 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!218 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!219 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!220 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!221 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!222 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!223 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!224 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!225 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!226 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!227 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!228 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!232 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!233 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!234 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!235 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!236 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!237 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!238 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!239 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!240 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!241 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!242 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!243 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!244 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!245 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!246 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!247 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!248 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!249 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!250 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!253 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!255 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!256 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!257 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!258 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!259 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!260 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!261 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!262 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!263 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!264 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!265 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!266 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!267 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!268 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!269 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!270 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!271 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!272 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!322 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!323 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!324 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!325 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!326 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!327 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!328 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!331 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!332 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!333 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!334 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!335 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!336 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!337 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!338 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!339 = !{!340, !345, !346, !348, !349}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !341, line: 173, baseType: !342)
!341 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !343, line: 51, baseType: !344)
!343 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!344 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "utf16_t", file: !341, line: 1139, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !341, line: 175, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !343, line: 49, baseType: !353)
!353 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!354 = !{i32 2, !"Dwarf Version", i32 4}
!355 = !{i32 2, !"Debug Info Version", i32 3}
!356 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!357 = distinct !DISubprogram(name: "Unicode_LengthInCodePoints", scope: !358, file: !358, line: 53, type: !359, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!358 = !DIFile(filename: "unicodeSimpleOperations.c", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !367}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeIndex", file: !4, line: 41, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !363, line: 109, baseType: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !365, line: 172, baseType: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!366 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!369 = !{}
!370 = !DILocalVariable(name: "str", arg: 1, scope: !357, file: !358, line: 53, type: !367)
!371 = !DIExpression()
!372 = !DILocation(line: 53, column: 40, scope: !357)
!373 = !DILocation(line: 55, column: 38, scope: !357)
!374 = !DILocation(line: 55, column: 11, scope: !357)
!375 = !DILocation(line: 55, column: 4, scope: !357)
!376 = distinct !DISubprogram(name: "Unicode_CompareRange", scope: !358, file: !358, line: 97, type: !377, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !367, !361, !361, !367, !361, !361, !380}
!379 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !341, line: 230, baseType: !347)
!381 = !DILocalVariable(name: "str1", arg: 1, scope: !376, file: !358, line: 97, type: !367)
!382 = !DILocation(line: 97, column: 34, scope: !376)
!383 = !DILocalVariable(name: "str1Start", arg: 2, scope: !376, file: !358, line: 98, type: !361)
!384 = !DILocation(line: 98, column: 35, scope: !376)
!385 = !DILocalVariable(name: "str1Length", arg: 3, scope: !376, file: !358, line: 99, type: !361)
!386 = !DILocation(line: 99, column: 35, scope: !376)
!387 = !DILocalVariable(name: "str2", arg: 4, scope: !376, file: !358, line: 100, type: !367)
!388 = !DILocation(line: 100, column: 34, scope: !376)
!389 = !DILocalVariable(name: "str2Start", arg: 5, scope: !376, file: !358, line: 101, type: !361)
!390 = !DILocation(line: 101, column: 35, scope: !376)
!391 = !DILocalVariable(name: "str2Length", arg: 6, scope: !376, file: !358, line: 102, type: !361)
!392 = !DILocation(line: 102, column: 35, scope: !376)
!393 = !DILocalVariable(name: "ignoreCase", arg: 7, scope: !376, file: !358, line: 103, type: !380)
!394 = !DILocation(line: 103, column: 27, scope: !376)
!395 = !DILocalVariable(name: "result", scope: !376, file: !358, line: 105, type: !379)
!396 = !DILocation(line: 105, column: 8, scope: !376)
!397 = !DILocalVariable(name: "substr1", scope: !376, file: !358, line: 106, type: !346)
!398 = !DILocation(line: 106, column: 10, scope: !376)
!399 = !DILocalVariable(name: "substr2", scope: !376, file: !358, line: 107, type: !346)
!400 = !DILocation(line: 107, column: 10, scope: !376)
!401 = !DILocalVariable(name: "str1UTF16", scope: !376, file: !358, line: 108, type: !349)
!402 = !DILocation(line: 108, column: 13, scope: !376)
!403 = !DILocalVariable(name: "str2UTF16", scope: !376, file: !358, line: 109, type: !349)
!404 = !DILocation(line: 109, column: 13, scope: !376)
!405 = !DILocalVariable(name: "i", scope: !376, file: !358, line: 110, type: !361)
!406 = !DILocation(line: 110, column: 17, scope: !376)
!407 = !DILocalVariable(name: "utf16Index", scope: !376, file: !358, line: 111, type: !361)
!408 = !DILocation(line: 111, column: 17, scope: !376)
!409 = !DILocalVariable(name: "codeUnit1", scope: !376, file: !358, line: 112, type: !350)
!410 = !DILocation(line: 112, column: 12, scope: !376)
!411 = !DILocalVariable(name: "codeUnit2", scope: !376, file: !358, line: 113, type: !350)
!412 = !DILocation(line: 113, column: 12, scope: !376)
!413 = !DILocalVariable(name: "codePoint1", scope: !376, file: !358, line: 114, type: !340)
!414 = !DILocation(line: 114, column: 11, scope: !376)
!415 = !DILocalVariable(name: "codePoint2", scope: !376, file: !358, line: 115, type: !340)
!416 = !DILocation(line: 115, column: 11, scope: !376)
!417 = !DILocation(line: 123, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !376, file: !358, line: 123, column: 8)
!419 = !DILocation(line: 123, column: 18, scope: !418)
!420 = !DILocation(line: 123, column: 23, scope: !418)
!421 = !DILocation(line: 123, column: 26, scope: !422)
!422 = !DILexicalBlockFile(scope: !418, file: !358, discriminator: 1)
!423 = !DILocation(line: 123, column: 37, scope: !422)
!424 = !DILocation(line: 123, column: 8, scope: !422)
!425 = !DILocation(line: 124, column: 32, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !358, line: 123, column: 44)
!427 = !DILocation(line: 124, column: 38, scope: !426)
!428 = !DILocation(line: 124, column: 49, scope: !426)
!429 = !DILocation(line: 124, column: 17, scope: !426)
!430 = !DILocation(line: 124, column: 15, scope: !426)
!431 = !DILocation(line: 125, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !358, line: 125, column: 11)
!433 = !DILocation(line: 125, column: 11, scope: !426)
!434 = !DILocation(line: 126, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !358, line: 125, column: 21)
!436 = !DILocation(line: 128, column: 14, scope: !426)
!437 = !DILocation(line: 128, column: 12, scope: !426)
!438 = !DILocation(line: 129, column: 4, scope: !426)
!439 = !DILocation(line: 131, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !376, file: !358, line: 131, column: 8)
!441 = !DILocation(line: 131, column: 18, scope: !440)
!442 = !DILocation(line: 131, column: 23, scope: !440)
!443 = !DILocation(line: 131, column: 26, scope: !444)
!444 = !DILexicalBlockFile(scope: !440, file: !358, discriminator: 1)
!445 = !DILocation(line: 131, column: 37, scope: !444)
!446 = !DILocation(line: 131, column: 8, scope: !444)
!447 = !DILocation(line: 132, column: 32, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !358, line: 131, column: 44)
!449 = !DILocation(line: 132, column: 38, scope: !448)
!450 = !DILocation(line: 132, column: 49, scope: !448)
!451 = !DILocation(line: 132, column: 17, scope: !448)
!452 = !DILocation(line: 132, column: 15, scope: !448)
!453 = !DILocation(line: 133, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !358, line: 133, column: 11)
!455 = !DILocation(line: 133, column: 11, scope: !448)
!456 = !DILocation(line: 134, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !358, line: 133, column: 21)
!458 = !DILocation(line: 136, column: 14, scope: !448)
!459 = !DILocation(line: 136, column: 12, scope: !448)
!460 = !DILocation(line: 137, column: 4, scope: !448)
!461 = !DILocation(line: 143, column: 38, scope: !376)
!462 = !DILocation(line: 143, column: 16, scope: !376)
!463 = !DILocation(line: 143, column: 14, scope: !376)
!464 = !DILocation(line: 144, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !376, file: !358, line: 144, column: 8)
!466 = !DILocation(line: 144, column: 8, scope: !376)
!467 = !DILocation(line: 145, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !358, line: 144, column: 20)
!469 = !DILocation(line: 148, column: 38, scope: !376)
!470 = !DILocation(line: 148, column: 16, scope: !376)
!471 = !DILocation(line: 148, column: 14, scope: !376)
!472 = !DILocation(line: 149, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !376, file: !358, line: 149, column: 8)
!474 = !DILocation(line: 149, column: 8, scope: !376)
!475 = !DILocation(line: 150, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !358, line: 149, column: 20)
!477 = !DILocation(line: 158, column: 4, scope: !376)
!478 = !DILocation(line: 159, column: 21, scope: !479)
!479 = distinct !DILexicalBlock(scope: !376, file: !358, line: 158, column: 14)
!480 = !DILocation(line: 159, column: 33, scope: !479)
!481 = !DILocation(line: 159, column: 31, scope: !479)
!482 = !DILocation(line: 159, column: 19, scope: !479)
!483 = !DILocation(line: 159, column: 17, scope: !479)
!484 = !DILocation(line: 160, column: 21, scope: !479)
!485 = !DILocation(line: 160, column: 33, scope: !479)
!486 = !DILocation(line: 160, column: 31, scope: !479)
!487 = !DILocation(line: 160, column: 19, scope: !479)
!488 = !DILocation(line: 160, column: 17, scope: !479)
!489 = !DILocation(line: 170, column: 11, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !358, line: 170, column: 11)
!491 = !DILocation(line: 170, column: 11, scope: !479)
!492 = !DILocation(line: 171, column: 44, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !358, line: 170, column: 23)
!494 = !DILocation(line: 171, column: 22, scope: !493)
!495 = !DILocation(line: 171, column: 20, scope: !493)
!496 = !DILocation(line: 172, column: 44, scope: !493)
!497 = !DILocation(line: 172, column: 22, scope: !493)
!498 = !DILocation(line: 172, column: 20, scope: !493)
!499 = !DILocation(line: 173, column: 7, scope: !493)
!500 = !DILocation(line: 175, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !479, file: !358, line: 175, column: 11)
!502 = !DILocation(line: 175, column: 24, scope: !501)
!503 = !DILocation(line: 175, column: 21, scope: !501)
!504 = !DILocation(line: 175, column: 11, scope: !479)
!505 = !DILocation(line: 176, column: 10, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !358, line: 175, column: 35)
!507 = !DILocation(line: 179, column: 11, scope: !508)
!508 = distinct !DILexicalBlock(scope: !479, file: !358, line: 179, column: 11)
!509 = !DILocation(line: 179, column: 21, scope: !508)
!510 = !DILocation(line: 179, column: 11, scope: !479)
!511 = !DILocation(line: 181, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !358, line: 179, column: 27)
!513 = !DILocation(line: 182, column: 10, scope: !512)
!514 = !DILocation(line: 185, column: 8, scope: !479)
!515 = !DILocation(line: 158, column: 4, scope: !516)
!516 = !DILexicalBlockFile(scope: !376, file: !358, discriminator: 1)
!517 = distinct !{!517, !477}
!518 = !DILocation(line: 194, column: 11, scope: !519)
!519 = distinct !DILexicalBlock(scope: !376, file: !358, line: 194, column: 8)
!520 = !DILocation(line: 194, column: 10, scope: !519)
!521 = !DILocation(line: 194, column: 21, scope: !519)
!522 = !DILocation(line: 194, column: 33, scope: !519)
!523 = !DILocation(line: 194, column: 8, scope: !376)
!524 = !DILocalVariable(name: "strUTF16Len", scope: !525, file: !358, line: 195, type: !362)
!525 = distinct !DILexicalBlock(scope: !519, file: !358, line: 194, column: 44)
!526 = !DILocation(line: 195, column: 15, scope: !525)
!527 = !DILocation(line: 195, column: 49, scope: !525)
!528 = !DILocation(line: 195, column: 29, scope: !525)
!529 = !DILocation(line: 198, column: 20, scope: !525)
!530 = !DILocation(line: 198, column: 18, scope: !525)
!531 = !DILocation(line: 201, column: 46, scope: !532)
!532 = distinct !DILexicalBlock(scope: !525, file: !358, line: 201, column: 7)
!533 = !DILocation(line: 201, column: 23, scope: !532)
!534 = !DILocation(line: 201, column: 22, scope: !532)
!535 = !DILocation(line: 201, column: 21, scope: !532)
!536 = !DILocation(line: 201, column: 57, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !358, line: 201, column: 54)
!538 = !DILocation(line: 201, column: 68, scope: !537)
!539 = !DILocation(line: 201, column: 80, scope: !537)
!540 = !DILocation(line: 201, column: 54, scope: !532)
!541 = !DILocalVariable(name: "__c2", scope: !542, file: !358, line: 201, type: !350)
!542 = distinct !DILexicalBlock(scope: !537, file: !358, line: 201, column: 91)
!543 = !DILocation(line: 201, column: 101, scope: !542)
!544 = !DILocation(line: 201, column: 111, scope: !545)
!545 = !DILexicalBlockFile(scope: !546, file: !358, discriminator: 1)
!546 = distinct !DILexicalBlock(scope: !542, file: !358, line: 201, column: 110)
!547 = !DILocation(line: 201, column: 124, scope: !545)
!548 = !DILocation(line: 201, column: 122, scope: !545)
!549 = !DILocation(line: 201, column: 137, scope: !545)
!550 = !DILocation(line: 201, column: 161, scope: !551)
!551 = !DILexicalBlockFile(scope: !546, file: !358, discriminator: 2)
!552 = !DILocation(line: 201, column: 149, scope: !551)
!553 = !DILocation(line: 201, column: 148, scope: !551)
!554 = !DILocation(line: 201, column: 147, scope: !551)
!555 = !DILocation(line: 201, column: 142, scope: !551)
!556 = !DILocation(line: 201, column: 174, scope: !551)
!557 = !DILocation(line: 201, column: 186, scope: !551)
!558 = !DILocation(line: 201, column: 110, scope: !551)
!559 = !DILocation(line: 201, column: 199, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !358, discriminator: 3)
!561 = distinct !DILexicalBlock(scope: !546, file: !358, line: 201, column: 197)
!562 = !DILocation(line: 201, column: 240, scope: !560)
!563 = !DILocation(line: 201, column: 252, scope: !560)
!564 = !DILocation(line: 201, column: 269, scope: !560)
!565 = !DILocation(line: 201, column: 260, scope: !560)
!566 = !DILocation(line: 201, column: 259, scope: !560)
!567 = !DILocation(line: 201, column: 274, scope: !560)
!568 = !DILocation(line: 201, column: 227, scope: !560)
!569 = !DILocation(line: 201, column: 309, scope: !560)
!570 = !DILocation(line: 201, column: 311, scope: !571)
!571 = !DILexicalBlockFile(scope: !542, file: !358, discriminator: 4)
!572 = !DILocation(line: 202, column: 4, scope: !525)
!573 = !DILocation(line: 204, column: 20, scope: !574)
!574 = distinct !DILexicalBlock(scope: !519, file: !358, line: 202, column: 11)
!575 = !DILocation(line: 204, column: 18, scope: !574)
!576 = !DILocation(line: 207, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !376, file: !358, line: 207, column: 8)
!578 = !DILocation(line: 207, column: 10, scope: !577)
!579 = !DILocation(line: 207, column: 21, scope: !577)
!580 = !DILocation(line: 207, column: 33, scope: !577)
!581 = !DILocation(line: 207, column: 8, scope: !376)
!582 = !DILocalVariable(name: "strUTF16Len", scope: !583, file: !358, line: 208, type: !362)
!583 = distinct !DILexicalBlock(scope: !577, file: !358, line: 207, column: 44)
!584 = !DILocation(line: 208, column: 15, scope: !583)
!585 = !DILocation(line: 208, column: 49, scope: !583)
!586 = !DILocation(line: 208, column: 29, scope: !583)
!587 = !DILocation(line: 210, column: 20, scope: !583)
!588 = !DILocation(line: 210, column: 18, scope: !583)
!589 = !DILocation(line: 211, column: 46, scope: !590)
!590 = distinct !DILexicalBlock(scope: !583, file: !358, line: 211, column: 7)
!591 = !DILocation(line: 211, column: 23, scope: !590)
!592 = !DILocation(line: 211, column: 22, scope: !590)
!593 = !DILocation(line: 211, column: 21, scope: !590)
!594 = !DILocation(line: 211, column: 57, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !358, line: 211, column: 54)
!596 = !DILocation(line: 211, column: 68, scope: !595)
!597 = !DILocation(line: 211, column: 80, scope: !595)
!598 = !DILocation(line: 211, column: 54, scope: !590)
!599 = !DILocalVariable(name: "__c2", scope: !600, file: !358, line: 211, type: !350)
!600 = distinct !DILexicalBlock(scope: !595, file: !358, line: 211, column: 91)
!601 = !DILocation(line: 211, column: 101, scope: !600)
!602 = !DILocation(line: 211, column: 111, scope: !603)
!603 = !DILexicalBlockFile(scope: !604, file: !358, discriminator: 1)
!604 = distinct !DILexicalBlock(scope: !600, file: !358, line: 211, column: 110)
!605 = !DILocation(line: 211, column: 124, scope: !603)
!606 = !DILocation(line: 211, column: 122, scope: !603)
!607 = !DILocation(line: 211, column: 137, scope: !603)
!608 = !DILocation(line: 211, column: 161, scope: !609)
!609 = !DILexicalBlockFile(scope: !604, file: !358, discriminator: 2)
!610 = !DILocation(line: 211, column: 149, scope: !609)
!611 = !DILocation(line: 211, column: 148, scope: !609)
!612 = !DILocation(line: 211, column: 147, scope: !609)
!613 = !DILocation(line: 211, column: 142, scope: !609)
!614 = !DILocation(line: 211, column: 174, scope: !609)
!615 = !DILocation(line: 211, column: 186, scope: !609)
!616 = !DILocation(line: 211, column: 110, scope: !609)
!617 = !DILocation(line: 211, column: 199, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !358, discriminator: 3)
!619 = distinct !DILexicalBlock(scope: !604, file: !358, line: 211, column: 197)
!620 = !DILocation(line: 211, column: 240, scope: !618)
!621 = !DILocation(line: 211, column: 252, scope: !618)
!622 = !DILocation(line: 211, column: 269, scope: !618)
!623 = !DILocation(line: 211, column: 260, scope: !618)
!624 = !DILocation(line: 211, column: 259, scope: !618)
!625 = !DILocation(line: 211, column: 274, scope: !618)
!626 = !DILocation(line: 211, column: 227, scope: !618)
!627 = !DILocation(line: 211, column: 309, scope: !618)
!628 = !DILocation(line: 211, column: 311, scope: !629)
!629 = !DILexicalBlockFile(scope: !600, file: !358, discriminator: 4)
!630 = !DILocation(line: 212, column: 4, scope: !583)
!631 = !DILocation(line: 213, column: 20, scope: !632)
!632 = distinct !DILexicalBlock(scope: !577, file: !358, line: 212, column: 11)
!633 = !DILocation(line: 213, column: 18, scope: !632)
!634 = !DILocation(line: 216, column: 8, scope: !635)
!635 = distinct !DILexicalBlock(scope: !376, file: !358, line: 216, column: 8)
!636 = !DILocation(line: 216, column: 21, scope: !635)
!637 = !DILocation(line: 216, column: 19, scope: !635)
!638 = !DILocation(line: 216, column: 8, scope: !376)
!639 = !DILocation(line: 217, column: 14, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !358, line: 216, column: 33)
!641 = !DILocation(line: 218, column: 4, scope: !640)
!642 = !DILocation(line: 218, column: 15, scope: !643)
!643 = !DILexicalBlockFile(scope: !644, file: !358, discriminator: 1)
!644 = distinct !DILexicalBlock(scope: !635, file: !358, line: 218, column: 15)
!645 = !DILocation(line: 218, column: 28, scope: !643)
!646 = !DILocation(line: 218, column: 26, scope: !643)
!647 = !DILocation(line: 219, column: 14, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !358, line: 218, column: 40)
!649 = !DILocation(line: 220, column: 4, scope: !648)
!650 = !DILocation(line: 222, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !644, file: !358, line: 220, column: 11)
!652 = !DILocation(line: 216, column: 21, scope: !653)
!653 = !DILexicalBlockFile(scope: !635, file: !358, discriminator: 1)
!654 = !DILocation(line: 226, column: 9, scope: !376)
!655 = !DILocation(line: 226, column: 4, scope: !376)
!656 = !DILocation(line: 227, column: 9, scope: !376)
!657 = !DILocation(line: 227, column: 4, scope: !376)
!658 = !DILocation(line: 229, column: 9, scope: !376)
!659 = !DILocation(line: 229, column: 4, scope: !376)
!660 = !DILocation(line: 230, column: 9, scope: !376)
!661 = !DILocation(line: 230, column: 4, scope: !376)
!662 = !DILocation(line: 232, column: 11, scope: !376)
!663 = !DILocation(line: 232, column: 4, scope: !376)
!664 = distinct !DISubprogram(name: "Unicode_Substr", scope: !358, file: !358, line: 513, type: !665, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!665 = !DISubroutineType(types: !666)
!666 = !{!346, !367, !361, !361}
!667 = !DILocalVariable(name: "str", arg: 1, scope: !664, file: !358, line: 513, type: !367)
!668 = !DILocation(line: 513, column: 28, scope: !664)
!669 = !DILocalVariable(name: "start", arg: 2, scope: !664, file: !358, line: 514, type: !361)
!670 = !DILocation(line: 514, column: 29, scope: !664)
!671 = !DILocalVariable(name: "length", arg: 3, scope: !664, file: !358, line: 515, type: !361)
!672 = !DILocation(line: 515, column: 29, scope: !664)
!673 = !DILocalVariable(name: "substr", scope: !664, file: !358, line: 517, type: !346)
!674 = !DILocation(line: 517, column: 10, scope: !664)
!675 = !DILocalVariable(name: "codePointLen", scope: !664, file: !358, line: 518, type: !340)
!676 = !DILocation(line: 518, column: 11, scope: !664)
!677 = !DILocalVariable(name: "utf32", scope: !664, file: !358, line: 519, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!679 = !DILocation(line: 519, column: 12, scope: !664)
!680 = !DILocation(line: 525, column: 29, scope: !681)
!681 = distinct !DILexicalBlock(scope: !664, file: !358, line: 525, column: 8)
!682 = !DILocation(line: 525, column: 34, scope: !681)
!683 = !DILocation(line: 525, column: 9, scope: !681)
!684 = !DILocation(line: 525, column: 8, scope: !664)
!685 = !DILocation(line: 526, column: 61, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !358, line: 525, column: 53)
!687 = !DILocation(line: 526, column: 7, scope: !686)
!688 = !DILocation(line: 529, column: 17, scope: !664)
!689 = !DILocation(line: 530, column: 4, scope: !664)
!690 = !DILocation(line: 530, column: 17, scope: !691)
!691 = !DILexicalBlockFile(scope: !664, file: !358, discriminator: 1)
!692 = !DILocation(line: 530, column: 11, scope: !691)
!693 = !DILocation(line: 530, column: 31, scope: !691)
!694 = !DILocation(line: 530, column: 4, scope: !691)
!695 = !DILocation(line: 531, column: 19, scope: !696)
!696 = distinct !DILexicalBlock(scope: !664, file: !358, line: 530, column: 37)
!697 = !DILocation(line: 530, column: 4, scope: !698)
!698 = !DILexicalBlockFile(scope: !664, file: !358, discriminator: 2)
!699 = distinct !{!699, !689}
!700 = !DILocation(line: 534, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !664, file: !358, line: 534, column: 8)
!702 = !DILocation(line: 534, column: 15, scope: !701)
!703 = !DILocation(line: 534, column: 20, scope: !701)
!704 = !DILocation(line: 534, column: 24, scope: !705)
!705 = !DILexicalBlockFile(scope: !701, file: !358, discriminator: 1)
!706 = !DILocation(line: 534, column: 32, scope: !705)
!707 = !DILocation(line: 534, column: 30, scope: !705)
!708 = !DILocation(line: 534, column: 8, scope: !705)
!709 = !DILocation(line: 535, column: 15, scope: !710)
!710 = distinct !DILexicalBlock(scope: !701, file: !358, line: 534, column: 47)
!711 = !DILocation(line: 535, column: 13, scope: !710)
!712 = !DILocation(line: 536, column: 4, scope: !710)
!713 = !DILocation(line: 538, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !664, file: !358, line: 538, column: 8)
!715 = !DILocation(line: 538, column: 16, scope: !714)
!716 = !DILocation(line: 538, column: 21, scope: !714)
!717 = !DILocation(line: 538, column: 26, scope: !718)
!718 = !DILexicalBlockFile(scope: !714, file: !358, discriminator: 1)
!719 = !DILocation(line: 538, column: 34, scope: !718)
!720 = !DILocation(line: 538, column: 32, scope: !718)
!721 = !DILocation(line: 538, column: 44, scope: !718)
!722 = !DILocation(line: 538, column: 42, scope: !718)
!723 = !DILocation(line: 538, column: 8, scope: !718)
!724 = !DILocation(line: 539, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !714, file: !358, line: 538, column: 59)
!726 = !DILocation(line: 539, column: 31, scope: !725)
!727 = !DILocation(line: 539, column: 29, scope: !725)
!728 = !DILocation(line: 539, column: 14, scope: !725)
!729 = !DILocation(line: 540, column: 4, scope: !725)
!730 = !DILocation(line: 542, column: 10, scope: !664)
!731 = !DILocation(line: 542, column: 18, scope: !664)
!732 = !DILocation(line: 542, column: 16, scope: !664)
!733 = !DILocation(line: 542, column: 4, scope: !664)
!734 = !DILocation(line: 542, column: 26, scope: !664)
!735 = !DILocation(line: 544, column: 40, scope: !664)
!736 = !DILocation(line: 544, column: 34, scope: !664)
!737 = !DILocation(line: 544, column: 24, scope: !664)
!738 = !DILocation(line: 544, column: 4, scope: !664)
!739 = !DILocation(line: 546, column: 9, scope: !664)
!740 = !DILocation(line: 546, column: 4, scope: !664)
!741 = !DILocation(line: 548, column: 11, scope: !664)
!742 = !DILocation(line: 548, column: 4, scope: !664)
!743 = distinct !DISubprogram(name: "Unicode_GetAllocUTF16", scope: !744, file: !744, line: 333, type: !745, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!744 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!745 = !DISubroutineType(types: !746)
!746 = !{!349, !367}
!747 = !DILocalVariable(name: "str", arg: 1, scope: !743, file: !744, line: 333, type: !367)
!748 = !DILocation(line: 333, column: 35, scope: !743)
!749 = !DILocation(line: 336, column: 45, scope: !743)
!750 = !DILocation(line: 336, column: 23, scope: !743)
!751 = !DILocation(line: 336, column: 11, scope: !743)
!752 = !DILocation(line: 336, column: 4, scope: !743)
!753 = distinct !DISubprogram(name: "Unicode_FindSubstrInRange", scope: !358, file: !358, line: 267, type: !754, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!754 = !DISubroutineType(types: !755)
!755 = !{!361, !367, !361, !361, !367, !361, !361}
!756 = !DILocalVariable(name: "str", arg: 1, scope: !753, file: !358, line: 267, type: !367)
!757 = !DILocation(line: 267, column: 39, scope: !753)
!758 = !DILocalVariable(name: "strStart", arg: 2, scope: !753, file: !358, line: 268, type: !361)
!759 = !DILocation(line: 268, column: 40, scope: !753)
!760 = !DILocalVariable(name: "strLength", arg: 3, scope: !753, file: !358, line: 269, type: !361)
!761 = !DILocation(line: 269, column: 40, scope: !753)
!762 = !DILocalVariable(name: "strToFind", arg: 4, scope: !753, file: !358, line: 270, type: !367)
!763 = !DILocation(line: 270, column: 39, scope: !753)
!764 = !DILocalVariable(name: "strToFindStart", arg: 5, scope: !753, file: !358, line: 271, type: !361)
!765 = !DILocation(line: 271, column: 40, scope: !753)
!766 = !DILocalVariable(name: "strToFindLength", arg: 6, scope: !753, file: !358, line: 272, type: !361)
!767 = !DILocation(line: 272, column: 40, scope: !753)
!768 = !DILocalVariable(name: "index", scope: !753, file: !358, line: 274, type: !361)
!769 = !DILocation(line: 274, column: 17, scope: !753)
!770 = !DILocalVariable(name: "utf32Source", scope: !753, file: !358, line: 275, type: !678)
!771 = !DILocation(line: 275, column: 12, scope: !753)
!772 = !DILocalVariable(name: "utf32Search", scope: !753, file: !358, line: 276, type: !678)
!773 = !DILocation(line: 276, column: 12, scope: !753)
!774 = !DILocation(line: 290, column: 29, scope: !775)
!775 = distinct !DILexicalBlock(scope: !753, file: !358, line: 290, column: 8)
!776 = !DILocation(line: 290, column: 34, scope: !775)
!777 = !DILocation(line: 290, column: 9, scope: !775)
!778 = !DILocation(line: 290, column: 8, scope: !753)
!779 = !DILocation(line: 291, column: 61, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !358, line: 290, column: 59)
!781 = !DILocation(line: 291, column: 7, scope: !780)
!782 = !DILocation(line: 294, column: 29, scope: !783)
!783 = distinct !DILexicalBlock(scope: !753, file: !358, line: 294, column: 8)
!784 = !DILocation(line: 294, column: 40, scope: !783)
!785 = !DILocation(line: 294, column: 9, scope: !783)
!786 = !DILocation(line: 294, column: 8, scope: !753)
!787 = !DILocation(line: 295, column: 61, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !358, line: 294, column: 65)
!789 = !DILocation(line: 295, column: 7, scope: !788)
!790 = !DILocation(line: 302, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !753, file: !358, line: 302, column: 8)
!792 = !DILocation(line: 302, column: 18, scope: !791)
!793 = !DILocation(line: 302, column: 8, scope: !753)
!794 = !DILocation(line: 303, column: 46, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !358, line: 302, column: 23)
!796 = !DILocation(line: 303, column: 19, scope: !795)
!797 = !DILocation(line: 303, column: 53, scope: !795)
!798 = !DILocation(line: 303, column: 51, scope: !795)
!799 = !DILocation(line: 303, column: 17, scope: !795)
!800 = !DILocation(line: 304, column: 4, scope: !795)
!801 = !DILocation(line: 306, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !753, file: !358, line: 306, column: 8)
!803 = !DILocation(line: 306, column: 24, scope: !802)
!804 = !DILocation(line: 306, column: 8, scope: !753)
!805 = !DILocation(line: 307, column: 52, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !358, line: 306, column: 29)
!807 = !DILocation(line: 307, column: 25, scope: !806)
!808 = !DILocation(line: 307, column: 65, scope: !806)
!809 = !DILocation(line: 307, column: 63, scope: !806)
!810 = !DILocation(line: 307, column: 23, scope: !806)
!811 = !DILocation(line: 308, column: 4, scope: !806)
!812 = !DILocation(line: 310, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !753, file: !358, line: 310, column: 8)
!814 = !DILocation(line: 310, column: 20, scope: !813)
!815 = !DILocation(line: 310, column: 18, scope: !813)
!816 = !DILocation(line: 310, column: 8, scope: !753)
!817 = !DILocation(line: 311, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !813, file: !358, line: 310, column: 37)
!819 = !DILocation(line: 312, column: 7, scope: !818)
!820 = !DILocation(line: 319, column: 8, scope: !821)
!821 = distinct !DILexicalBlock(scope: !753, file: !358, line: 319, column: 8)
!822 = !DILocation(line: 319, column: 24, scope: !821)
!823 = !DILocation(line: 319, column: 8, scope: !753)
!824 = !DILocation(line: 320, column: 15, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !358, line: 319, column: 30)
!826 = !DILocation(line: 320, column: 13, scope: !825)
!827 = !DILocation(line: 321, column: 7, scope: !825)
!828 = !DILocation(line: 329, column: 17, scope: !829)
!829 = distinct !DILexicalBlock(scope: !753, file: !358, line: 329, column: 4)
!830 = !DILocation(line: 329, column: 15, scope: !829)
!831 = !DILocation(line: 329, column: 9, scope: !829)
!832 = !DILocation(line: 330, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !358, line: 329, column: 4)
!834 = !DILocation(line: 330, column: 19, scope: !833)
!835 = !DILocation(line: 330, column: 30, scope: !833)
!836 = !DILocation(line: 330, column: 28, scope: !833)
!837 = !DILocation(line: 330, column: 42, scope: !833)
!838 = !DILocation(line: 330, column: 40, scope: !833)
!839 = !DILocation(line: 330, column: 15, scope: !833)
!840 = !DILocation(line: 329, column: 4, scope: !841)
!841 = !DILexicalBlockFile(scope: !829, file: !358, discriminator: 1)
!842 = !DILocalVariable(name: "i", scope: !843, file: !358, line: 332, type: !361)
!843 = distinct !DILexicalBlock(scope: !833, file: !358, line: 331, column: 18)
!844 = !DILocation(line: 332, column: 20, scope: !843)
!845 = !DILocalVariable(name: "match", scope: !843, file: !358, line: 333, type: !380)
!846 = !DILocation(line: 333, column: 12, scope: !843)
!847 = !DILocalVariable(name: "indexSrc", scope: !843, file: !358, line: 334, type: !361)
!848 = !DILocation(line: 334, column: 20, scope: !843)
!849 = !DILocation(line: 334, column: 31, scope: !843)
!850 = !DILocalVariable(name: "indexSrch", scope: !843, file: !358, line: 335, type: !361)
!851 = !DILocation(line: 335, column: 20, scope: !843)
!852 = !DILocation(line: 335, column: 32, scope: !843)
!853 = !DILocation(line: 337, column: 14, scope: !854)
!854 = distinct !DILexicalBlock(scope: !843, file: !358, line: 337, column: 7)
!855 = !DILocation(line: 337, column: 12, scope: !854)
!856 = !DILocation(line: 337, column: 19, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !358, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !854, file: !358, line: 337, column: 7)
!859 = !DILocation(line: 337, column: 23, scope: !857)
!860 = !DILocation(line: 337, column: 21, scope: !857)
!861 = !DILocation(line: 337, column: 7, scope: !857)
!862 = !DILocation(line: 338, column: 39, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !358, line: 337, column: 45)
!864 = !DILocation(line: 338, column: 19, scope: !863)
!865 = !DILocation(line: 338, column: 67, scope: !863)
!866 = !DILocation(line: 338, column: 46, scope: !863)
!867 = !DILocation(line: 338, column: 43, scope: !863)
!868 = !DILocation(line: 338, column: 18, scope: !863)
!869 = !DILocation(line: 338, column: 16, scope: !863)
!870 = !DILocation(line: 340, column: 15, scope: !871)
!871 = distinct !DILexicalBlock(scope: !863, file: !358, line: 340, column: 14)
!872 = !DILocation(line: 340, column: 14, scope: !863)
!873 = !DILocation(line: 341, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !358, line: 340, column: 22)
!875 = !DILocation(line: 343, column: 7, scope: !863)
!876 = !DILocation(line: 337, column: 41, scope: !877)
!877 = !DILexicalBlockFile(scope: !858, file: !358, discriminator: 2)
!878 = !DILocation(line: 337, column: 7, scope: !877)
!879 = distinct !{!879, !880}
!880 = !DILocation(line: 337, column: 7, scope: !843)
!881 = !DILocation(line: 345, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !843, file: !358, line: 345, column: 11)
!883 = !DILocation(line: 345, column: 11, scope: !843)
!884 = !DILocation(line: 346, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !358, line: 345, column: 18)
!886 = !DILocation(line: 348, column: 4, scope: !843)
!887 = !DILocation(line: 331, column: 14, scope: !833)
!888 = !DILocation(line: 329, column: 4, scope: !889)
!889 = !DILexicalBlockFile(scope: !833, file: !358, discriminator: 2)
!890 = distinct !{!890, !891}
!891 = !DILocation(line: 329, column: 4, scope: !753)
!892 = !DILocation(line: 350, column: 10, scope: !753)
!893 = !DILocation(line: 350, column: 4, scope: !753)
!894 = !DILocation(line: 354, column: 9, scope: !753)
!895 = !DILocation(line: 354, column: 4, scope: !753)
!896 = !DILocation(line: 355, column: 9, scope: !753)
!897 = !DILocation(line: 355, column: 4, scope: !753)
!898 = !DILocation(line: 357, column: 11, scope: !753)
!899 = !DILocation(line: 357, column: 4, scope: !753)
!900 = distinct !DISubprogram(name: "Unicode_FindLastSubstrInRange", scope: !358, file: !358, line: 392, type: !754, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!901 = !DILocalVariable(name: "str", arg: 1, scope: !900, file: !358, line: 392, type: !367)
!902 = !DILocation(line: 392, column: 43, scope: !900)
!903 = !DILocalVariable(name: "strStart", arg: 2, scope: !900, file: !358, line: 393, type: !361)
!904 = !DILocation(line: 393, column: 44, scope: !900)
!905 = !DILocalVariable(name: "strLength", arg: 3, scope: !900, file: !358, line: 394, type: !361)
!906 = !DILocation(line: 394, column: 44, scope: !900)
!907 = !DILocalVariable(name: "strToFind", arg: 4, scope: !900, file: !358, line: 395, type: !367)
!908 = !DILocation(line: 395, column: 43, scope: !900)
!909 = !DILocalVariable(name: "strToFindStart", arg: 5, scope: !900, file: !358, line: 396, type: !361)
!910 = !DILocation(line: 396, column: 44, scope: !900)
!911 = !DILocalVariable(name: "strToFindLength", arg: 6, scope: !900, file: !358, line: 397, type: !361)
!912 = !DILocation(line: 397, column: 44, scope: !900)
!913 = !DILocalVariable(name: "index", scope: !900, file: !358, line: 399, type: !361)
!914 = !DILocation(line: 399, column: 17, scope: !900)
!915 = !DILocalVariable(name: "utf32Source", scope: !900, file: !358, line: 400, type: !678)
!916 = !DILocation(line: 400, column: 12, scope: !900)
!917 = !DILocalVariable(name: "utf32Search", scope: !900, file: !358, line: 401, type: !678)
!918 = !DILocation(line: 401, column: 12, scope: !900)
!919 = !DILocation(line: 415, column: 29, scope: !920)
!920 = distinct !DILexicalBlock(scope: !900, file: !358, line: 415, column: 8)
!921 = !DILocation(line: 415, column: 34, scope: !920)
!922 = !DILocation(line: 415, column: 9, scope: !920)
!923 = !DILocation(line: 415, column: 8, scope: !900)
!924 = !DILocation(line: 416, column: 61, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !358, line: 415, column: 59)
!926 = !DILocation(line: 416, column: 7, scope: !925)
!927 = !DILocation(line: 419, column: 29, scope: !928)
!928 = distinct !DILexicalBlock(scope: !900, file: !358, line: 419, column: 8)
!929 = !DILocation(line: 419, column: 40, scope: !928)
!930 = !DILocation(line: 419, column: 9, scope: !928)
!931 = !DILocation(line: 419, column: 8, scope: !900)
!932 = !DILocation(line: 420, column: 61, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !358, line: 419, column: 65)
!934 = !DILocation(line: 420, column: 7, scope: !933)
!935 = !DILocation(line: 427, column: 8, scope: !936)
!936 = distinct !DILexicalBlock(scope: !900, file: !358, line: 427, column: 8)
!937 = !DILocation(line: 427, column: 18, scope: !936)
!938 = !DILocation(line: 427, column: 8, scope: !900)
!939 = !DILocation(line: 428, column: 46, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !358, line: 427, column: 23)
!941 = !DILocation(line: 428, column: 19, scope: !940)
!942 = !DILocation(line: 428, column: 53, scope: !940)
!943 = !DILocation(line: 428, column: 51, scope: !940)
!944 = !DILocation(line: 428, column: 17, scope: !940)
!945 = !DILocation(line: 429, column: 4, scope: !940)
!946 = !DILocation(line: 431, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !900, file: !358, line: 431, column: 8)
!948 = !DILocation(line: 431, column: 24, scope: !947)
!949 = !DILocation(line: 431, column: 8, scope: !900)
!950 = !DILocation(line: 432, column: 52, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !358, line: 431, column: 29)
!952 = !DILocation(line: 432, column: 25, scope: !951)
!953 = !DILocation(line: 432, column: 65, scope: !951)
!954 = !DILocation(line: 432, column: 63, scope: !951)
!955 = !DILocation(line: 432, column: 23, scope: !951)
!956 = !DILocation(line: 433, column: 4, scope: !951)
!957 = !DILocation(line: 435, column: 8, scope: !958)
!958 = distinct !DILexicalBlock(scope: !900, file: !358, line: 435, column: 8)
!959 = !DILocation(line: 435, column: 20, scope: !958)
!960 = !DILocation(line: 435, column: 18, scope: !958)
!961 = !DILocation(line: 435, column: 8, scope: !900)
!962 = !DILocation(line: 436, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !358, line: 435, column: 37)
!964 = !DILocation(line: 437, column: 7, scope: !963)
!965 = !DILocation(line: 444, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !900, file: !358, line: 444, column: 8)
!967 = !DILocation(line: 444, column: 24, scope: !966)
!968 = !DILocation(line: 444, column: 8, scope: !900)
!969 = !DILocation(line: 445, column: 15, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !358, line: 444, column: 30)
!971 = !DILocation(line: 445, column: 13, scope: !970)
!972 = !DILocation(line: 446, column: 7, scope: !970)
!973 = !DILocation(line: 454, column: 17, scope: !974)
!974 = distinct !DILexicalBlock(scope: !900, file: !358, line: 454, column: 4)
!975 = !DILocation(line: 454, column: 28, scope: !974)
!976 = !DILocation(line: 454, column: 26, scope: !974)
!977 = !DILocation(line: 454, column: 40, scope: !974)
!978 = !DILocation(line: 454, column: 38, scope: !974)
!979 = !DILocation(line: 454, column: 15, scope: !974)
!980 = !DILocation(line: 454, column: 9, scope: !974)
!981 = !DILocation(line: 455, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !974, file: !358, line: 454, column: 4)
!983 = !DILocation(line: 455, column: 18, scope: !982)
!984 = !DILocation(line: 455, column: 15, scope: !982)
!985 = !DILocation(line: 454, column: 4, scope: !986)
!986 = !DILexicalBlockFile(scope: !974, file: !358, discriminator: 1)
!987 = !DILocalVariable(name: "i", scope: !988, file: !358, line: 457, type: !361)
!988 = distinct !DILexicalBlock(scope: !982, file: !358, line: 456, column: 18)
!989 = !DILocation(line: 457, column: 20, scope: !988)
!990 = !DILocalVariable(name: "match", scope: !988, file: !358, line: 458, type: !380)
!991 = !DILocation(line: 458, column: 12, scope: !988)
!992 = !DILocalVariable(name: "indexSrc", scope: !988, file: !358, line: 459, type: !361)
!993 = !DILocation(line: 459, column: 20, scope: !988)
!994 = !DILocation(line: 459, column: 31, scope: !988)
!995 = !DILocalVariable(name: "indexSrch", scope: !988, file: !358, line: 460, type: !361)
!996 = !DILocation(line: 460, column: 20, scope: !988)
!997 = !DILocation(line: 460, column: 32, scope: !988)
!998 = !DILocation(line: 462, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !988, file: !358, line: 462, column: 7)
!1000 = !DILocation(line: 462, column: 12, scope: !999)
!1001 = !DILocation(line: 462, column: 19, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !358, discriminator: 1)
!1003 = distinct !DILexicalBlock(scope: !999, file: !358, line: 462, column: 7)
!1004 = !DILocation(line: 462, column: 23, scope: !1002)
!1005 = !DILocation(line: 462, column: 21, scope: !1002)
!1006 = !DILocation(line: 462, column: 7, scope: !1002)
!1007 = !DILocation(line: 463, column: 39, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !358, line: 462, column: 45)
!1009 = !DILocation(line: 463, column: 19, scope: !1008)
!1010 = !DILocation(line: 463, column: 67, scope: !1008)
!1011 = !DILocation(line: 463, column: 46, scope: !1008)
!1012 = !DILocation(line: 463, column: 43, scope: !1008)
!1013 = !DILocation(line: 463, column: 18, scope: !1008)
!1014 = !DILocation(line: 463, column: 16, scope: !1008)
!1015 = !DILocation(line: 465, column: 15, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1008, file: !358, line: 465, column: 14)
!1017 = !DILocation(line: 465, column: 14, scope: !1008)
!1018 = !DILocation(line: 466, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !358, line: 465, column: 22)
!1020 = !DILocation(line: 468, column: 7, scope: !1008)
!1021 = !DILocation(line: 462, column: 41, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1003, file: !358, discriminator: 2)
!1023 = !DILocation(line: 462, column: 7, scope: !1022)
!1024 = distinct !{!1024, !1025}
!1025 = !DILocation(line: 462, column: 7, scope: !988)
!1026 = !DILocation(line: 470, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !988, file: !358, line: 470, column: 11)
!1028 = !DILocation(line: 470, column: 11, scope: !988)
!1029 = !DILocation(line: 471, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !358, line: 470, column: 18)
!1031 = !DILocation(line: 473, column: 4, scope: !988)
!1032 = !DILocation(line: 456, column: 14, scope: !982)
!1033 = !DILocation(line: 454, column: 4, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !982, file: !358, discriminator: 2)
!1035 = distinct !{!1035, !1036}
!1036 = !DILocation(line: 454, column: 4, scope: !900)
!1037 = !DILocation(line: 475, column: 10, scope: !900)
!1038 = !DILocation(line: 475, column: 4, scope: !900)
!1039 = !DILocation(line: 479, column: 9, scope: !900)
!1040 = !DILocation(line: 479, column: 4, scope: !900)
!1041 = !DILocation(line: 480, column: 9, scope: !900)
!1042 = !DILocation(line: 480, column: 4, scope: !900)
!1043 = !DILocation(line: 482, column: 11, scope: !900)
!1044 = !DILocation(line: 482, column: 4, scope: !900)
!1045 = distinct !DISubprogram(name: "Unicode_ReplaceRange", scope: !358, file: !358, line: 584, type: !1046, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!346, !367, !361, !361, !367, !361, !361}
!1048 = !DILocalVariable(name: "dest", arg: 1, scope: !1045, file: !358, line: 584, type: !367)
!1049 = !DILocation(line: 584, column: 34, scope: !1045)
!1050 = !DILocalVariable(name: "destStart", arg: 2, scope: !1045, file: !358, line: 585, type: !361)
!1051 = !DILocation(line: 585, column: 35, scope: !1045)
!1052 = !DILocalVariable(name: "destLength", arg: 3, scope: !1045, file: !358, line: 586, type: !361)
!1053 = !DILocation(line: 586, column: 35, scope: !1045)
!1054 = !DILocalVariable(name: "src", arg: 4, scope: !1045, file: !358, line: 587, type: !367)
!1055 = !DILocation(line: 587, column: 34, scope: !1045)
!1056 = !DILocalVariable(name: "srcStart", arg: 5, scope: !1045, file: !358, line: 588, type: !361)
!1057 = !DILocation(line: 588, column: 35, scope: !1045)
!1058 = !DILocalVariable(name: "srcLength", arg: 6, scope: !1045, file: !358, line: 589, type: !361)
!1059 = !DILocation(line: 589, column: 35, scope: !1045)
!1060 = !DILocalVariable(name: "result", scope: !1045, file: !358, line: 591, type: !346)
!1061 = !DILocation(line: 591, column: 10, scope: !1045)
!1062 = !DILocalVariable(name: "stringOne", scope: !1045, file: !358, line: 592, type: !346)
!1063 = !DILocation(line: 592, column: 10, scope: !1045)
!1064 = !DILocalVariable(name: "stringTwo", scope: !1045, file: !358, line: 593, type: !346)
!1065 = !DILocation(line: 593, column: 10, scope: !1045)
!1066 = !DILocalVariable(name: "stringThree", scope: !1045, file: !358, line: 594, type: !346)
!1067 = !DILocation(line: 594, column: 10, scope: !1045)
!1068 = !DILocation(line: 604, column: 31, scope: !1045)
!1069 = !DILocation(line: 604, column: 40, scope: !1045)
!1070 = !DILocation(line: 604, column: 16, scope: !1045)
!1071 = !DILocation(line: 604, column: 14, scope: !1045)
!1072 = !DILocation(line: 605, column: 31, scope: !1045)
!1073 = !DILocation(line: 605, column: 36, scope: !1045)
!1074 = !DILocation(line: 605, column: 46, scope: !1045)
!1075 = !DILocation(line: 605, column: 16, scope: !1045)
!1076 = !DILocation(line: 605, column: 14, scope: !1045)
!1077 = !DILocation(line: 606, column: 33, scope: !1045)
!1078 = !DILocation(line: 606, column: 39, scope: !1045)
!1079 = !DILocation(line: 606, column: 51, scope: !1045)
!1080 = !DILocation(line: 606, column: 49, scope: !1045)
!1081 = !DILocation(line: 606, column: 18, scope: !1045)
!1082 = !DILocation(line: 606, column: 16, scope: !1045)
!1083 = !DILocation(line: 608, column: 26, scope: !1045)
!1084 = !DILocation(line: 608, column: 37, scope: !1045)
!1085 = !DILocation(line: 608, column: 48, scope: !1045)
!1086 = !DILocation(line: 608, column: 13, scope: !1045)
!1087 = !DILocation(line: 608, column: 11, scope: !1045)
!1088 = !DILocation(line: 610, column: 9, scope: !1045)
!1089 = !DILocation(line: 610, column: 4, scope: !1045)
!1090 = !DILocation(line: 611, column: 9, scope: !1045)
!1091 = !DILocation(line: 611, column: 4, scope: !1045)
!1092 = !DILocation(line: 612, column: 9, scope: !1045)
!1093 = !DILocation(line: 612, column: 4, scope: !1045)
!1094 = !DILocation(line: 614, column: 11, scope: !1045)
!1095 = !DILocation(line: 614, column: 4, scope: !1045)
!1096 = distinct !DISubprogram(name: "Unicode_Join", scope: !358, file: !358, line: 637, type: !1097, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!346, !367, null}
!1099 = !DILocalVariable(name: "first", arg: 1, scope: !1096, file: !358, line: 637, type: !367)
!1100 = !DILocation(line: 637, column: 26, scope: !1096)
!1101 = !DILocalVariable(name: "result", scope: !1096, file: !358, line: 640, type: !346)
!1102 = !DILocation(line: 640, column: 10, scope: !1096)
!1103 = !DILocation(line: 642, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !358, line: 642, column: 8)
!1105 = !DILocation(line: 642, column: 14, scope: !1104)
!1106 = !DILocation(line: 642, column: 8, scope: !1096)
!1107 = !DILocation(line: 643, column: 14, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !358, line: 642, column: 22)
!1109 = !DILocation(line: 644, column: 4, scope: !1108)
!1110 = !DILocalVariable(name: "args", scope: !1111, file: !358, line: 645, type: !1112)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !358, line: 644, column: 11)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1113, line: 98, baseType: !1114)
!1113 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1027")
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1113, line: 40, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 645, baseType: !1116)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 192, align: 64, elements: !1123)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 645, size: 192, align: 64, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1117, file: !1, line: 645, baseType: !344, size: 32, align: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1117, file: !1, line: 645, baseType: !344, size: 32, align: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1117, file: !1, line: 645, baseType: !348, size: 64, align: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1117, file: !1, line: 645, baseType: !348, size: 64, align: 64, offset: 128)
!1123 = !{!1124}
!1124 = !DISubrange(count: 1)
!1125 = !DILocation(line: 645, column: 15, scope: !1111)
!1126 = !DILocalVariable(name: "cur", scope: !1111, file: !358, line: 646, type: !367)
!1127 = !DILocation(line: 646, column: 19, scope: !1111)
!1128 = !DILocation(line: 648, column: 34, scope: !1111)
!1129 = !DILocation(line: 648, column: 16, scope: !1111)
!1130 = !DILocation(line: 648, column: 14, scope: !1111)
!1131 = !DILocation(line: 650, column: 6, scope: !1111)
!1132 = !DILocation(line: 652, column: 7, scope: !1111)
!1133 = !DILocation(line: 652, column: 20, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1111, file: !358, discriminator: 1)
!1135 = !DILocation(line: 652, column: 20, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1111, file: !358, discriminator: 2)
!1137 = !DILocation(line: 652, column: 20, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1111, file: !358, discriminator: 3)
!1139 = !DILocation(line: 652, column: 20, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1111, file: !358, discriminator: 4)
!1141 = !DILocation(line: 652, column: 19, scope: !1140)
!1142 = !DILocation(line: 652, column: 48, scope: !1140)
!1143 = !DILocation(line: 652, column: 7, scope: !1140)
!1144 = !DILocalVariable(name: "temp", scope: !1145, file: !358, line: 653, type: !346)
!1145 = distinct !DILexicalBlock(scope: !1111, file: !358, line: 652, column: 57)
!1146 = !DILocation(line: 653, column: 16, scope: !1145)
!1147 = !DILocation(line: 655, column: 40, scope: !1145)
!1148 = !DILocation(line: 655, column: 48, scope: !1145)
!1149 = !DILocation(line: 655, column: 17, scope: !1145)
!1150 = !DILocation(line: 655, column: 15, scope: !1145)
!1151 = !DILocation(line: 656, column: 15, scope: !1145)
!1152 = !DILocation(line: 656, column: 10, scope: !1145)
!1153 = !DILocation(line: 657, column: 19, scope: !1145)
!1154 = !DILocation(line: 657, column: 17, scope: !1145)
!1155 = !DILocation(line: 652, column: 7, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1111, file: !358, discriminator: 5)
!1157 = distinct !{!1157, !1132}
!1158 = !DILocation(line: 660, column: 6, scope: !1111)
!1159 = !DILocation(line: 663, column: 11, scope: !1096)
!1160 = !DILocation(line: 663, column: 4, scope: !1096)
!1161 = distinct !DISubprogram(name: "Unicode_Format", scope: !358, file: !358, line: 684, type: !1097, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !369)
!1162 = !DILocalVariable(name: "fmt", arg: 1, scope: !1161, file: !358, line: 684, type: !367)
!1163 = !DILocation(line: 684, column: 28, scope: !1161)
!1164 = !DILocalVariable(name: "args", scope: !1161, file: !358, line: 687, type: !1112)
!1165 = !DILocation(line: 687, column: 12, scope: !1161)
!1166 = !DILocalVariable(name: "p", scope: !1161, file: !358, line: 688, type: !346)
!1167 = !DILocation(line: 688, column: 10, scope: !1161)
!1168 = !DILocation(line: 690, column: 3, scope: !1161)
!1169 = !DILocation(line: 691, column: 27, scope: !1161)
!1170 = !DILocation(line: 691, column: 32, scope: !1161)
!1171 = !DILocation(line: 691, column: 8, scope: !1161)
!1172 = !DILocation(line: 691, column: 6, scope: !1161)
!1173 = !DILocation(line: 692, column: 3, scope: !1161)
!1174 = !DILocation(line: 694, column: 11, scope: !1161)
!1175 = !DILocation(line: 694, column: 4, scope: !1161)
