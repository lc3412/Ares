; ModuleID = './line372-terminfo-core.o.i'
source_filename = "./line372-terminfo-core.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._TERM_REC = type { void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32, i32)*, {}*, void (%struct._TERM_REC*, i32, i32, i32)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*, i8, i32)*, {}*, {}*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)*, {}*, {}*, {}*, void (%struct._TERM_REC*)*, [1024 x i8], [1024 x i8], %struct._IO_FILE*, %struct._IO_FILE*, %struct.termios, %struct.termios, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.TERMINFO_REC = type { i8*, i8*, i32, i32 }
%struct._GString = type { i8*, i64, i64 }

@terminfo_setup_colors.ansitab = internal constant [16 x i8] c"\00\04\02\06\01\05\03\07\08\0C\0A\0E\09\0D\0B\0F", align 16
@.str = private unnamed_addr constant [6 x i8] c"\1B[%dm\00", align 1
@current_term = common global %struct._TERM_REC* null, align 8
@term_color256map = external global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\1B[?2004h\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[?2004l\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"TERM environment not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"setupterm() failed for TERM=%s: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Terminal doesn't support cursor movement\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Terminal doesn't support scrolling\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Terminal doesn't support clearing screen\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Terminal doesn't support clearing to end of line\0A\00", align 1
@tcaps = internal global [43 x %struct.TERMINFO_REC] [%struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 2320 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 1, i32 2324 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 2, i32 2328 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2, i32 2336 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 2344 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 2, i32 2352 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 2, i32 2360 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 2368 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 2376 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 2, i32 2384 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 2, i32 2392 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 2, i32 2400 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 2, i32 2408 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 2416 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 2, i32 2424 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 2, i32 2432 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 2, i32 2440 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 2, i32 2448 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 2, i32 2456 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 2, i32 2464 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 2, i32 2472 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 2, i32 2480 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 2, i32 2488 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 2, i32 2496 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i32 2, i32 2504 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 2512 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 2, i32 2520 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i32 2, i32 2528 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i32 2, i32 2536 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, i32 2544 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 2, i32 2552 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 2, i32 2560 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 2, i32 2568 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i32 2, i32 2576 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i32 2, i32 2584 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i32 2, i32 2592 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i32 2, i32 2600 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32 2, i32 2608 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i32 2, i32 2616 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i32 2, i32 2624 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i32 2, i32 2656 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i32 2, i32 2664 }, %struct.TERMINFO_REC { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i32 2, i32 2672 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"cols\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"smcup\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ti\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"rmcup\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"te\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"cup\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"hpa\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"vpa\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"vh\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"cub1\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"cuf1\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"civis\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"cnorm\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"csr\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"wind\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"wi\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"rin\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ind\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"indn\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"il\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"AL\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"il1\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"DL\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dl1\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"el\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"rp\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"Co\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"sgr0\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"smul\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"rmul\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"smso\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"rmso\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"sitm\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"ritm\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"ZR\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"blink\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"mb\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"mr\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"setaf\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"setab\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"setf\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"Sf\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"setb\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"Sb\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"bel\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"smkx\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"rmkx\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"ke\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @terminfo_setup_colors(%struct._TERM_REC*, i32) #0 !dbg !195 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !215, metadata !216), !dbg !217
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !218, metadata !216), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %5, metadata !220, metadata !216), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %6, metadata !222, metadata !216), !dbg !223
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !224
  call void @terminfo_colors_deinit(%struct._TERM_REC* %7), !dbg !225
  %8 = load i32, i32* %4, align 4, !dbg !226
  %9 = icmp ne i32 %8, 0, !dbg !226
  br i1 %9, label %10, label %23, !dbg !228

; <label>:10:                                     ; preds = %2
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !229
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 61, !dbg !231
  %13 = load i8*, i8** %12, align 8, !dbg !231
  %14 = icmp eq i8* %13, null, !dbg !232
  br i1 %14, label %15, label %23, !dbg !233

; <label>:15:                                     ; preds = %10
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !234
  %17 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %16, i32 0, i32 59, !dbg !236
  %18 = load i8*, i8** %17, align 8, !dbg !236
  %19 = icmp eq i8* %18, null, !dbg !237
  br i1 %19, label %20, label %23, !dbg !238

; <label>:20:                                     ; preds = %15
  %21 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !239
  %22 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %21, i32 0, i32 48, !dbg !240
  store i32 8, i32* %22, align 8, !dbg !241
  br label %23, !dbg !239

; <label>:23:                                     ; preds = %20, %15, %10, %2
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !242
  %25 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %24, i32 0, i32 61, !dbg !244
  %26 = load i8*, i8** %25, align 8, !dbg !244
  %27 = icmp ne i8* %26, null, !dbg !242
  br i1 %27, label %36, label %28, !dbg !245

; <label>:28:                                     ; preds = %23
  %29 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !246
  %30 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %29, i32 0, i32 59, !dbg !248
  %31 = load i8*, i8** %30, align 8, !dbg !248
  %32 = icmp ne i8* %31, null, !dbg !246
  br i1 %32, label %36, label %33, !dbg !249

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %4, align 4, !dbg !250
  %35 = icmp ne i32 %34, 0, !dbg !250
  br i1 %35, label %36, label %64, !dbg !252

; <label>:36:                                     ; preds = %33, %28, %23
  %37 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !253
  %38 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %37, i32 0, i32 48, !dbg !254
  %39 = load i32, i32* %38, align 8, !dbg !254
  %40 = icmp sgt i32 %39, 0, !dbg !255
  br i1 %40, label %41, label %64, !dbg !256

; <label>:41:                                     ; preds = %36
  %42 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !258
  %43 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %42, i32 0, i32 48, !dbg !260
  %44 = load i32, i32* %43, align 8, !dbg !260
  %45 = sext i32 %44 to i64, !dbg !261
  %46 = call noalias i8* @g_malloc0_n(i64 %45, i64 8), !dbg !262
  %47 = bitcast i8* %46 to i8**, !dbg !263
  %48 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !264
  %49 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %48, i32 0, i32 63, !dbg !265
  store i8** %47, i8*** %49, align 8, !dbg !266
  %50 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !267
  %51 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %50, i32 0, i32 48, !dbg !268
  %52 = load i32, i32* %51, align 8, !dbg !268
  %53 = sext i32 %52 to i64, !dbg !269
  %54 = call noalias i8* @g_malloc0_n(i64 %53, i64 8), !dbg !270
  %55 = bitcast i8* %54 to i8**, !dbg !271
  %56 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !272
  %57 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %56, i32 0, i32 64, !dbg !273
  store i8** %55, i8*** %57, align 8, !dbg !274
  %58 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !275
  %59 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %58, i32 0, i32 7, !dbg !276
  %60 = bitcast {}** %59 to void (%struct._TERM_REC*, i32)**, !dbg !276
  store void (%struct._TERM_REC*, i32)* @_set_fg, void (%struct._TERM_REC*, i32)** %60, align 8, !dbg !277
  %61 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !278
  %62 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %61, i32 0, i32 8, !dbg !279
  %63 = bitcast {}** %62 to void (%struct._TERM_REC*, i32)**, !dbg !279
  store void (%struct._TERM_REC*, i32)* @_set_bg, void (%struct._TERM_REC*, i32)** %63, align 8, !dbg !280
  br label %73, !dbg !281

; <label>:64:                                     ; preds = %36, %33
  %65 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !282
  %66 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %65, i32 0, i32 48, !dbg !284
  store i32 0, i32* %66, align 8, !dbg !285
  %67 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !286
  %68 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %67, i32 0, i32 8, !dbg !287
  %69 = bitcast {}** %68 to void (%struct._TERM_REC*, i32)**, !dbg !287
  store void (%struct._TERM_REC*, i32)* @_ignore_parm, void (%struct._TERM_REC*, i32)** %69, align 8, !dbg !288
  %70 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !289
  %71 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %70, i32 0, i32 7, !dbg !290
  %72 = bitcast {}** %71 to void (%struct._TERM_REC*, i32)**, !dbg !290
  store void (%struct._TERM_REC*, i32)* @_ignore_parm, void (%struct._TERM_REC*, i32)** %72, align 8, !dbg !291
  br label %73

; <label>:73:                                     ; preds = %64, %41
  %74 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !292
  %75 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %74, i32 0, i32 59, !dbg !294
  %76 = load i8*, i8** %75, align 8, !dbg !294
  %77 = icmp ne i8* %76, null, !dbg !292
  br i1 %77, label %78, label %114, !dbg !295

; <label>:78:                                     ; preds = %73
  store i32 0, i32* %5, align 4, !dbg !296
  br label %79, !dbg !299

; <label>:79:                                     ; preds = %110, %78
  %80 = load i32, i32* %5, align 4, !dbg !300
  %81 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !303
  %82 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %81, i32 0, i32 48, !dbg !304
  %83 = load i32, i32* %82, align 8, !dbg !304
  %84 = icmp ult i32 %80, %83, !dbg !305
  br i1 %84, label %85, label %113, !dbg !306

; <label>:85:                                     ; preds = %79
  %86 = load i32, i32* %5, align 4, !dbg !307
  %87 = icmp ult i32 %86, 16, !dbg !309
  br i1 %87, label %88, label %94, !dbg !307

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %5, align 4, !dbg !310
  %90 = zext i32 %89 to i64, !dbg !312
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* @terminfo_setup_colors.ansitab, i64 0, i64 %90, !dbg !312
  %92 = load i8, i8* %91, align 1, !dbg !312
  %93 = sext i8 %92 to i32, !dbg !312
  br label %96, !dbg !313

; <label>:94:                                     ; preds = %85
  %95 = load i32, i32* %5, align 4, !dbg !314
  br label %96, !dbg !316

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i32 [ %93, %88 ], [ %95, %94 ], !dbg !317
  store i32 %97, i32* %6, align 4, !dbg !319
  %98 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !320
  %99 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %98, i32 0, i32 59, !dbg !321
  %100 = load i8*, i8** %99, align 8, !dbg !321
  %101 = load i32, i32* %6, align 4, !dbg !322
  %102 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %100, i32 %101, i32 0), !dbg !323
  %103 = call noalias i8* @g_strdup(i8* %102), !dbg !324
  %104 = load i32, i32* %5, align 4, !dbg !325
  %105 = zext i32 %104 to i64, !dbg !326
  %106 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !326
  %107 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %106, i32 0, i32 63, !dbg !327
  %108 = load i8**, i8*** %107, align 8, !dbg !327
  %109 = getelementptr inbounds i8*, i8** %108, i64 %105, !dbg !326
  store i8* %103, i8** %109, align 8, !dbg !328
  br label %110, !dbg !329

; <label>:110:                                    ; preds = %96
  %111 = load i32, i32* %5, align 4, !dbg !330
  %112 = add i32 %111, 1, !dbg !330
  store i32 %112, i32* %5, align 4, !dbg !330
  br label %79, !dbg !332, !llvm.loop !333

; <label>:113:                                    ; preds = %79
  br label %170, !dbg !335

; <label>:114:                                    ; preds = %73
  %115 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !336
  %116 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %115, i32 0, i32 61, !dbg !339
  %117 = load i8*, i8** %116, align 8, !dbg !339
  %118 = icmp ne i8* %117, null, !dbg !336
  br i1 %118, label %119, label %143, !dbg !336

; <label>:119:                                    ; preds = %114
  store i32 0, i32* %5, align 4, !dbg !340
  br label %120, !dbg !343

; <label>:120:                                    ; preds = %139, %119
  %121 = load i32, i32* %5, align 4, !dbg !344
  %122 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !347
  %123 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %122, i32 0, i32 48, !dbg !348
  %124 = load i32, i32* %123, align 8, !dbg !348
  %125 = icmp ult i32 %121, %124, !dbg !349
  br i1 %125, label %126, label %142, !dbg !350

; <label>:126:                                    ; preds = %120
  %127 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !351
  %128 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %127, i32 0, i32 61, !dbg !352
  %129 = load i8*, i8** %128, align 8, !dbg !352
  %130 = load i32, i32* %5, align 4, !dbg !353
  %131 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %129, i32 %130, i32 0), !dbg !354
  %132 = call noalias i8* @g_strdup(i8* %131), !dbg !355
  %133 = load i32, i32* %5, align 4, !dbg !356
  %134 = zext i32 %133 to i64, !dbg !357
  %135 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !357
  %136 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %135, i32 0, i32 63, !dbg !358
  %137 = load i8**, i8*** %136, align 8, !dbg !358
  %138 = getelementptr inbounds i8*, i8** %137, i64 %134, !dbg !357
  store i8* %132, i8** %138, align 8, !dbg !359
  br label %139, !dbg !357

; <label>:139:                                    ; preds = %126
  %140 = load i32, i32* %5, align 4, !dbg !360
  %141 = add i32 %140, 1, !dbg !360
  store i32 %141, i32* %5, align 4, !dbg !360
  br label %120, !dbg !362, !llvm.loop !363

; <label>:142:                                    ; preds = %120
  br label %169, !dbg !365

; <label>:143:                                    ; preds = %114
  %144 = load i32, i32* %4, align 4, !dbg !366
  %145 = icmp ne i32 %144, 0, !dbg !366
  br i1 %145, label %146, label %168, !dbg !366

; <label>:146:                                    ; preds = %143
  store i32 0, i32* %5, align 4, !dbg !369
  br label %147, !dbg !372

; <label>:147:                                    ; preds = %164, %146
  %148 = load i32, i32* %5, align 4, !dbg !373
  %149 = icmp ult i32 %148, 8, !dbg !376
  br i1 %149, label %150, label %167, !dbg !377

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %5, align 4, !dbg !378
  %152 = zext i32 %151 to i64, !dbg !379
  %153 = getelementptr inbounds [16 x i8], [16 x i8]* @terminfo_setup_colors.ansitab, i64 0, i64 %152, !dbg !379
  %154 = load i8, i8* %153, align 1, !dbg !379
  %155 = sext i8 %154 to i32, !dbg !379
  %156 = add nsw i32 30, %155, !dbg !380
  %157 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %156), !dbg !381
  %158 = load i32, i32* %5, align 4, !dbg !382
  %159 = zext i32 %158 to i64, !dbg !383
  %160 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !383
  %161 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %160, i32 0, i32 63, !dbg !384
  %162 = load i8**, i8*** %161, align 8, !dbg !384
  %163 = getelementptr inbounds i8*, i8** %162, i64 %159, !dbg !383
  store i8* %157, i8** %163, align 8, !dbg !385
  br label %164, !dbg !383

; <label>:164:                                    ; preds = %150
  %165 = load i32, i32* %5, align 4, !dbg !386
  %166 = add i32 %165, 1, !dbg !386
  store i32 %166, i32* %5, align 4, !dbg !386
  br label %147, !dbg !388, !llvm.loop !389

; <label>:167:                                    ; preds = %147
  br label %168, !dbg !391

; <label>:168:                                    ; preds = %167, %143
  br label %169

; <label>:169:                                    ; preds = %168, %142
  br label %170

; <label>:170:                                    ; preds = %169, %113
  %171 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !392
  %172 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %171, i32 0, i32 60, !dbg !394
  %173 = load i8*, i8** %172, align 8, !dbg !394
  %174 = icmp ne i8* %173, null, !dbg !392
  br i1 %174, label %175, label %211, !dbg !395

; <label>:175:                                    ; preds = %170
  store i32 0, i32* %5, align 4, !dbg !396
  br label %176, !dbg !399

; <label>:176:                                    ; preds = %207, %175
  %177 = load i32, i32* %5, align 4, !dbg !400
  %178 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !403
  %179 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %178, i32 0, i32 48, !dbg !404
  %180 = load i32, i32* %179, align 8, !dbg !404
  %181 = icmp ult i32 %177, %180, !dbg !405
  br i1 %181, label %182, label %210, !dbg !406

; <label>:182:                                    ; preds = %176
  %183 = load i32, i32* %5, align 4, !dbg !407
  %184 = icmp ult i32 %183, 16, !dbg !409
  br i1 %184, label %185, label %191, !dbg !407

; <label>:185:                                    ; preds = %182
  %186 = load i32, i32* %5, align 4, !dbg !410
  %187 = zext i32 %186 to i64, !dbg !412
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* @terminfo_setup_colors.ansitab, i64 0, i64 %187, !dbg !412
  %189 = load i8, i8* %188, align 1, !dbg !412
  %190 = sext i8 %189 to i32, !dbg !412
  br label %193, !dbg !413

; <label>:191:                                    ; preds = %182
  %192 = load i32, i32* %5, align 4, !dbg !414
  br label %193, !dbg !416

; <label>:193:                                    ; preds = %191, %185
  %194 = phi i32 [ %190, %185 ], [ %192, %191 ], !dbg !417
  store i32 %194, i32* %6, align 4, !dbg !419
  %195 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !420
  %196 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %195, i32 0, i32 60, !dbg !421
  %197 = load i8*, i8** %196, align 8, !dbg !421
  %198 = load i32, i32* %6, align 4, !dbg !422
  %199 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %197, i32 %198, i32 0), !dbg !423
  %200 = call noalias i8* @g_strdup(i8* %199), !dbg !424
  %201 = load i32, i32* %5, align 4, !dbg !425
  %202 = zext i32 %201 to i64, !dbg !426
  %203 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !426
  %204 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %203, i32 0, i32 64, !dbg !427
  %205 = load i8**, i8*** %204, align 8, !dbg !427
  %206 = getelementptr inbounds i8*, i8** %205, i64 %202, !dbg !426
  store i8* %200, i8** %206, align 8, !dbg !428
  br label %207, !dbg !429

; <label>:207:                                    ; preds = %193
  %208 = load i32, i32* %5, align 4, !dbg !430
  %209 = add i32 %208, 1, !dbg !430
  store i32 %209, i32* %5, align 4, !dbg !430
  br label %176, !dbg !432, !llvm.loop !433

; <label>:210:                                    ; preds = %176
  br label %267, !dbg !435

; <label>:211:                                    ; preds = %170
  %212 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !436
  %213 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %212, i32 0, i32 62, !dbg !439
  %214 = load i8*, i8** %213, align 8, !dbg !439
  %215 = icmp ne i8* %214, null, !dbg !436
  br i1 %215, label %216, label %240, !dbg !436

; <label>:216:                                    ; preds = %211
  store i32 0, i32* %5, align 4, !dbg !440
  br label %217, !dbg !443

; <label>:217:                                    ; preds = %236, %216
  %218 = load i32, i32* %5, align 4, !dbg !444
  %219 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !447
  %220 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %219, i32 0, i32 48, !dbg !448
  %221 = load i32, i32* %220, align 8, !dbg !448
  %222 = icmp ult i32 %218, %221, !dbg !449
  br i1 %222, label %223, label %239, !dbg !450

; <label>:223:                                    ; preds = %217
  %224 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !451
  %225 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %224, i32 0, i32 62, !dbg !452
  %226 = load i8*, i8** %225, align 8, !dbg !452
  %227 = load i32, i32* %5, align 4, !dbg !453
  %228 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %226, i32 %227, i32 0), !dbg !454
  %229 = call noalias i8* @g_strdup(i8* %228), !dbg !455
  %230 = load i32, i32* %5, align 4, !dbg !456
  %231 = zext i32 %230 to i64, !dbg !457
  %232 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !457
  %233 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %232, i32 0, i32 64, !dbg !458
  %234 = load i8**, i8*** %233, align 8, !dbg !458
  %235 = getelementptr inbounds i8*, i8** %234, i64 %231, !dbg !457
  store i8* %229, i8** %235, align 8, !dbg !459
  br label %236, !dbg !457

; <label>:236:                                    ; preds = %223
  %237 = load i32, i32* %5, align 4, !dbg !460
  %238 = add i32 %237, 1, !dbg !460
  store i32 %238, i32* %5, align 4, !dbg !460
  br label %217, !dbg !462, !llvm.loop !463

; <label>:239:                                    ; preds = %217
  br label %266, !dbg !465

; <label>:240:                                    ; preds = %211
  %241 = load i32, i32* %4, align 4, !dbg !466
  %242 = icmp ne i32 %241, 0, !dbg !466
  br i1 %242, label %243, label %265, !dbg !466

; <label>:243:                                    ; preds = %240
  store i32 0, i32* %5, align 4, !dbg !469
  br label %244, !dbg !472

; <label>:244:                                    ; preds = %261, %243
  %245 = load i32, i32* %5, align 4, !dbg !473
  %246 = icmp ult i32 %245, 8, !dbg !476
  br i1 %246, label %247, label %264, !dbg !477

; <label>:247:                                    ; preds = %244
  %248 = load i32, i32* %5, align 4, !dbg !478
  %249 = zext i32 %248 to i64, !dbg !479
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* @terminfo_setup_colors.ansitab, i64 0, i64 %249, !dbg !479
  %251 = load i8, i8* %250, align 1, !dbg !479
  %252 = sext i8 %251 to i32, !dbg !479
  %253 = add nsw i32 40, %252, !dbg !480
  %254 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %253), !dbg !481
  %255 = load i32, i32* %5, align 4, !dbg !482
  %256 = zext i32 %255 to i64, !dbg !483
  %257 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !483
  %258 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %257, i32 0, i32 64, !dbg !484
  %259 = load i8**, i8*** %258, align 8, !dbg !484
  %260 = getelementptr inbounds i8*, i8** %259, i64 %256, !dbg !483
  store i8* %254, i8** %260, align 8, !dbg !485
  br label %261, !dbg !483

; <label>:261:                                    ; preds = %247
  %262 = load i32, i32* %5, align 4, !dbg !486
  %263 = add i32 %262, 1, !dbg !486
  store i32 %263, i32* %5, align 4, !dbg !486
  br label %244, !dbg !488, !llvm.loop !489

; <label>:264:                                    ; preds = %244
  br label %265, !dbg !491

; <label>:265:                                    ; preds = %264, %240
  br label %266

; <label>:266:                                    ; preds = %265, %239
  br label %267

; <label>:267:                                    ; preds = %266, %210
  ret void, !dbg !492
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @terminfo_colors_deinit(%struct._TERM_REC*) #0 !dbg !493 {
  %2 = alloca %struct._TERM_REC*, align 8
  %3 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !494, metadata !216), !dbg !495
  call void @llvm.dbg.declare(metadata i32* %3, metadata !496, metadata !216), !dbg !497
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !498
  %5 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %4, i32 0, i32 63, !dbg !500
  %6 = load i8**, i8*** %5, align 8, !dbg !500
  %7 = icmp ne i8** %6, null, !dbg !501
  br i1 %7, label %8, label %62, !dbg !502

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !503
  br label %9, !dbg !506

; <label>:9:                                      ; preds = %30, %8
  %10 = load i32, i32* %3, align 4, !dbg !507
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !510
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 48, !dbg !511
  %13 = load i32, i32* %12, align 8, !dbg !511
  %14 = icmp slt i32 %10, %13, !dbg !512
  br i1 %14, label %15, label %33, !dbg !513

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !514
  %17 = sext i32 %16 to i64, !dbg !516
  %18 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !516
  %19 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %18, i32 0, i32 63, !dbg !517
  %20 = load i8**, i8*** %19, align 8, !dbg !517
  %21 = getelementptr inbounds i8*, i8** %20, i64 %17, !dbg !516
  %22 = load i8*, i8** %21, align 8, !dbg !516
  call void @g_free(i8* %22), !dbg !518
  %23 = load i32, i32* %3, align 4, !dbg !519
  %24 = sext i32 %23 to i64, !dbg !520
  %25 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !520
  %26 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %25, i32 0, i32 64, !dbg !521
  %27 = load i8**, i8*** %26, align 8, !dbg !521
  %28 = getelementptr inbounds i8*, i8** %27, i64 %24, !dbg !520
  %29 = load i8*, i8** %28, align 8, !dbg !520
  call void @g_free(i8* %29), !dbg !522
  br label %30, !dbg !523

; <label>:30:                                     ; preds = %15
  %31 = load i32, i32* %3, align 4, !dbg !524
  %32 = add nsw i32 %31, 1, !dbg !524
  store i32 %32, i32* %3, align 4, !dbg !524
  br label %9, !dbg !526, !llvm.loop !527

; <label>:33:                                     ; preds = %9
  br label %34, !dbg !529, !llvm.loop !530

; <label>:34:                                     ; preds = %33
  %35 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !531
  %36 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %35, i32 0, i32 63, !dbg !535
  %37 = load i8**, i8*** %36, align 8, !dbg !535
  %38 = icmp ne i8** %37, null, !dbg !531
  br i1 %38, label %39, label %46, !dbg !531

; <label>:39:                                     ; preds = %34
  %40 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !536
  %41 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %40, i32 0, i32 63, !dbg !539
  %42 = load i8**, i8*** %41, align 8, !dbg !539
  %43 = bitcast i8** %42 to i8*, !dbg !536
  call void @g_free(i8* %43), !dbg !540
  %44 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !541
  %45 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %44, i32 0, i32 63, !dbg !542
  store i8** null, i8*** %45, align 8, !dbg !543
  br label %46, !dbg !544

; <label>:46:                                     ; preds = %39, %34
  br label %47, !dbg !545

; <label>:47:                                     ; preds = %46
  br label %48, !dbg !547, !llvm.loop !548

; <label>:48:                                     ; preds = %47
  %49 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !549
  %50 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %49, i32 0, i32 64, !dbg !553
  %51 = load i8**, i8*** %50, align 8, !dbg !553
  %52 = icmp ne i8** %51, null, !dbg !549
  br i1 %52, label %53, label %60, !dbg !549

; <label>:53:                                     ; preds = %48
  %54 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !554
  %55 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %54, i32 0, i32 64, !dbg !557
  %56 = load i8**, i8*** %55, align 8, !dbg !557
  %57 = bitcast i8** %56 to i8*, !dbg !554
  call void @g_free(i8* %57), !dbg !558
  %58 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !559
  %59 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %58, i32 0, i32 64, !dbg !560
  store i8** null, i8*** %59, align 8, !dbg !561
  br label %60, !dbg !562

; <label>:60:                                     ; preds = %53, %48
  br label %61, !dbg !563

; <label>:61:                                     ; preds = %60
  br label %62, !dbg !565

; <label>:62:                                     ; preds = %61, %1
  ret void, !dbg !566
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @_set_fg(%struct._TERM_REC*, i32) #0 !dbg !567 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !568, metadata !216), !dbg !569
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !570, metadata !216), !dbg !571
  %5 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !572
  %6 = load i32, i32* %4, align 4, !dbg !573
  %7 = call i32 @color256(%struct._TERM_REC* %5, i32 %6), !dbg !574
  %8 = sext i32 %7 to i64, !dbg !575
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !575
  %10 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %9, i32 0, i32 63, !dbg !576
  %11 = load i8**, i8*** %10, align 8, !dbg !576
  %12 = getelementptr inbounds i8*, i8** %11, i64 %8, !dbg !575
  %13 = load i8*, i8** %12, align 8, !dbg !575
  %14 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %13), !dbg !577
  %15 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %14, i32 0, i32 (i32)* @term_putchar), !dbg !579
  ret void, !dbg !581
}

; Function Attrs: nounwind uwtable
define internal void @_set_bg(%struct._TERM_REC*, i32) #0 !dbg !582 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !583, metadata !216), !dbg !584
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !585, metadata !216), !dbg !586
  %5 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !587
  %6 = load i32, i32* %4, align 4, !dbg !588
  %7 = call i32 @color256(%struct._TERM_REC* %5, i32 %6), !dbg !589
  %8 = sext i32 %7 to i64, !dbg !590
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !590
  %10 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %9, i32 0, i32 64, !dbg !591
  %11 = load i8**, i8*** %10, align 8, !dbg !591
  %12 = getelementptr inbounds i8*, i8** %11, i64 %8, !dbg !590
  %13 = load i8*, i8** %12, align 8, !dbg !590
  %14 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %13), !dbg !592
  %15 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %14, i32 0, i32 (i32)* @term_putchar), !dbg !594
  ret void, !dbg !596
}

; Function Attrs: nounwind uwtable
define internal void @_ignore_parm(%struct._TERM_REC*, i32) #0 !dbg !597 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !598, metadata !216), !dbg !599
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !600, metadata !216), !dbg !601
  ret void, !dbg !602
}

declare noalias i8* @g_strdup(i8*) #2

declare i8* @tparm(...) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @terminfo_cont(%struct._TERM_REC*) #0 !dbg !603 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !604, metadata !216), !dbg !605
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !606
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 25, !dbg !608
  %5 = load i8*, i8** %4, align 8, !dbg !608
  %6 = icmp ne i8* %5, null, !dbg !606
  br i1 %6, label %7, label %13, !dbg !609

; <label>:7:                                      ; preds = %1
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !610
  %9 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %8, i32 0, i32 25, !dbg !611
  %10 = load i8*, i8** %9, align 8, !dbg !611
  %11 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %10), !dbg !612
  %12 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %11, i32 0, i32 (i32)* @term_putchar), !dbg !613
  br label %13, !dbg !615

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !616
  %15 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %14, i32 0, i32 69, !dbg !618
  %16 = load i32, i32* %15, align 8, !dbg !618
  %17 = icmp ne i32 %16, 0, !dbg !616
  br i1 %17, label %18, label %20, !dbg !619

; <label>:18:                                     ; preds = %13
  %19 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !620
  call void @terminfo_set_appkey_mode(%struct._TERM_REC* %19, i32 1), !dbg !621
  br label %20, !dbg !621

; <label>:20:                                     ; preds = %18, %13
  %21 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !622
  %22 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %21, i32 0, i32 70, !dbg !624
  %23 = load i32, i32* %22, align 4, !dbg !624
  %24 = icmp ne i32 %23, 0, !dbg !622
  br i1 %24, label %25, label %26, !dbg !625

; <label>:25:                                     ; preds = %20
  call void @term_dec_set_bracketed_paste_mode(i32 1), !dbg !626
  br label %26, !dbg !626

; <label>:26:                                     ; preds = %25, %20
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !627
  call void @terminfo_input_init(%struct._TERM_REC* %27), !dbg !628
  ret void, !dbg !629
}

declare i32 @tputs(...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_putchar(i32) #3 !dbg !630 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !633, metadata !216), !dbg !634
  %3 = load i32, i32* %2, align 4, !dbg !635
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !636
  %5 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %4, i32 0, i32 20, !dbg !637
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !637
  %7 = call i32 @fputc(i32 %3, %struct._IO_FILE* %6), !dbg !638
  ret i32 %7, !dbg !639
}

; Function Attrs: nounwind uwtable
define internal void @terminfo_set_appkey_mode(%struct._TERM_REC*, i32) #0 !dbg !640 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !641, metadata !216), !dbg !642
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !643, metadata !216), !dbg !644
  %5 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !645
  %6 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %5, i32 0, i32 67, !dbg !647
  %7 = load i8*, i8** %6, align 8, !dbg !647
  %8 = icmp ne i8* %7, null, !dbg !645
  br i1 %8, label %9, label %29, !dbg !648

; <label>:9:                                      ; preds = %2
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !649
  %11 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %10, i32 0, i32 68, !dbg !651
  %12 = load i8*, i8** %11, align 8, !dbg !651
  %13 = icmp ne i8* %12, null, !dbg !649
  br i1 %13, label %14, label %29, !dbg !652

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %4, align 4, !dbg !653
  %16 = icmp ne i32 %15, 0, !dbg !653
  br i1 %16, label %17, label %21, !dbg !653

; <label>:17:                                     ; preds = %14
  %18 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !654
  %19 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %18, i32 0, i32 67, !dbg !655
  %20 = load i8*, i8** %19, align 8, !dbg !655
  br label %25, !dbg !656

; <label>:21:                                     ; preds = %14
  %22 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !657
  %23 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %22, i32 0, i32 68, !dbg !659
  %24 = load i8*, i8** %23, align 8, !dbg !659
  br label %25, !dbg !660

; <label>:25:                                     ; preds = %21, %17
  %26 = phi i8* [ %20, %17 ], [ %24, %21 ], !dbg !661
  %27 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %26), !dbg !663
  %28 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %27, i32 0, i32 (i32)* @term_putchar), !dbg !664
  br label %29, !dbg !666

; <label>:29:                                     ; preds = %25, %9, %2
  ret void, !dbg !667
}

; Function Attrs: nounwind uwtable
define internal void @term_dec_set_bracketed_paste_mode(i32) #0 !dbg !668 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !671, metadata !216), !dbg !672
  %3 = load i32, i32* %2, align 4, !dbg !673
  %4 = icmp ne i32 %3, 0, !dbg !673
  br i1 %4, label %5, label %7, !dbg !675

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 (i32)* @term_putchar), !dbg !676
  br label %9, !dbg !676

; <label>:7:                                      ; preds = %1
  %8 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 (i32)* @term_putchar), !dbg !677
  br label %9

; <label>:9:                                      ; preds = %7, %5
  ret void, !dbg !678
}

; Function Attrs: nounwind uwtable
define internal void @terminfo_input_init(%struct._TERM_REC*) #0 !dbg !679 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !680, metadata !216), !dbg !681
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !682
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 19, !dbg !683
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !683
  %6 = call i32 @fileno(%struct._IO_FILE* %5) #6, !dbg !684
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !685
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 21, !dbg !686
  %9 = call i32 @tcsetattr(i32 %6, i32 1, %struct.termios* %8) #6, !dbg !687
  ret void, !dbg !689
}

; Function Attrs: nounwind uwtable
define void @terminfo_stop(%struct._TERM_REC*) #0 !dbg !690 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !691, metadata !216), !dbg !692
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !693
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 9, !dbg !694
  %5 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %4, align 8, !dbg !694
  %6 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !695
  call void %5(%struct._TERM_REC* %6), !dbg !693
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !696
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 0, !dbg !697
  %9 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %8, align 8, !dbg !697
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !698
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !699
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 24, !dbg !700
  %13 = load i32, i32* %12, align 4, !dbg !700
  %14 = sub nsw i32 %13, 1, !dbg !701
  call void %9(%struct._TERM_REC* %10, i32 0, i32 %14), !dbg !696
  %15 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !702
  %16 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %15, i32 0, i32 70, !dbg !704
  %17 = load i32, i32* %16, align 4, !dbg !704
  %18 = icmp ne i32 %17, 0, !dbg !702
  br i1 %18, label %19, label %20, !dbg !705

; <label>:19:                                     ; preds = %1
  call void @term_dec_set_bracketed_paste_mode(i32 0), !dbg !706
  br label %20, !dbg !706

; <label>:20:                                     ; preds = %19, %1
  %21 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !707
  %22 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %21, i32 0, i32 26, !dbg !709
  %23 = load i8*, i8** %22, align 8, !dbg !709
  %24 = icmp ne i8* %23, null, !dbg !707
  br i1 %24, label %25, label %31, !dbg !710

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !711
  %27 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %26, i32 0, i32 26, !dbg !712
  %28 = load i8*, i8** %27, align 8, !dbg !712
  %29 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %28), !dbg !713
  %30 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %29, i32 0, i32 (i32)* @term_putchar), !dbg !714
  br label %31, !dbg !716

; <label>:31:                                     ; preds = %25, %20
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !717
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 69, !dbg !719
  %34 = load i32, i32* %33, align 8, !dbg !719
  %35 = icmp ne i32 %34, 0, !dbg !717
  br i1 %35, label %36, label %38, !dbg !720

; <label>:36:                                     ; preds = %31
  %37 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !721
  call void @terminfo_set_appkey_mode(%struct._TERM_REC* %37, i32 0), !dbg !722
  br label %38, !dbg !722

; <label>:38:                                     ; preds = %36, %31
  %39 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !723
  call void @terminfo_input_deinit(%struct._TERM_REC* %39), !dbg !724
  %40 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !725
  %41 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %40, i32 0, i32 20, !dbg !726
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8, !dbg !726
  %43 = call i32 @fflush(%struct._IO_FILE* %42), !dbg !727
  ret void, !dbg !728
}

; Function Attrs: nounwind uwtable
define internal void @terminfo_input_deinit(%struct._TERM_REC*) #0 !dbg !729 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !730, metadata !216), !dbg !731
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !732
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 19, !dbg !733
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !733
  %6 = call i32 @fileno(%struct._IO_FILE* %5) #6, !dbg !734
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !735
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 22, !dbg !736
  %9 = call i32 @tcsetattr(i32 %6, i32 1, %struct.termios* %8) #6, !dbg !737
  ret void, !dbg !739
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @term_set_appkey_mode(i32) #0 !dbg !740 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !741, metadata !216), !dbg !742
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !743
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 69, !dbg !745
  %5 = load i32, i32* %4, align 8, !dbg !745
  %6 = load i32, i32* %2, align 4, !dbg !746
  %7 = icmp eq i32 %5, %6, !dbg !747
  br i1 %7, label %8, label %9, !dbg !748

; <label>:8:                                      ; preds = %1
  br label %15, !dbg !749

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !750
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !751
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 69, !dbg !752
  store i32 %10, i32* %12, align 8, !dbg !753
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !754
  %14 = load i32, i32* %2, align 4, !dbg !755
  call void @terminfo_set_appkey_mode(%struct._TERM_REC* %13, i32 %14), !dbg !756
  br label %15, !dbg !757

; <label>:15:                                     ; preds = %9, %8
  ret void, !dbg !758
}

; Function Attrs: nounwind uwtable
define void @term_set_bracketed_paste_mode(i32) #0 !dbg !760 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !761, metadata !216), !dbg !762
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !763
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 70, !dbg !765
  %5 = load i32, i32* %4, align 4, !dbg !765
  %6 = load i32, i32* %2, align 4, !dbg !766
  %7 = icmp eq i32 %5, %6, !dbg !767
  br i1 %7, label %8, label %9, !dbg !768

; <label>:8:                                      ; preds = %1
  br label %14, !dbg !769

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !770
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !771
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 70, !dbg !772
  store i32 %10, i32* %12, align 4, !dbg !773
  %13 = load i32, i32* %2, align 4, !dbg !774
  call void @term_dec_set_bracketed_paste_mode(i32 %13), !dbg !775
  br label %14, !dbg !776

; <label>:14:                                     ; preds = %9, %8
  ret void, !dbg !777
}

; Function Attrs: nounwind uwtable
define %struct._TERM_REC* @terminfo_core_init(%struct._IO_FILE*, %struct._IO_FILE*) #0 !dbg !779 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._TERM_REC*, align 8
  %6 = alloca %struct._TERM_REC*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !782, metadata !216), !dbg !783
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !784, metadata !216), !dbg !785
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %5, metadata !786, metadata !216), !dbg !787
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %6, metadata !788, metadata !216), !dbg !789
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !790
  store %struct._TERM_REC* %7, %struct._TERM_REC** %5, align 8, !dbg !791
  %8 = call noalias i8* @g_malloc0_n(i64 1, i64 2688), !dbg !792
  %9 = bitcast i8* %8 to %struct._TERM_REC*, !dbg !793
  store %struct._TERM_REC* %9, %struct._TERM_REC** %6, align 8, !dbg !794
  store %struct._TERM_REC* %9, %struct._TERM_REC** @current_term, align 8, !dbg !795
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !796
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !797
  %12 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %11, i32 0, i32 19, !dbg !798
  store %struct._IO_FILE* %10, %struct._IO_FILE** %12, align 8, !dbg !799
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !800
  %14 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !801
  %15 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %14, i32 0, i32 20, !dbg !802
  store %struct._IO_FILE* %13, %struct._IO_FILE** %15, align 8, !dbg !803
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !804
  %17 = call i32 @term_setup(%struct._TERM_REC* %16), !dbg !806
  %18 = icmp ne i32 %17, 0, !dbg !806
  br i1 %18, label %22, label %19, !dbg !807

; <label>:19:                                     ; preds = %2
  %20 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !808
  %21 = bitcast %struct._TERM_REC* %20 to i8*, !dbg !808
  call void @g_free(i8* %21), !dbg !810
  store %struct._TERM_REC* null, %struct._TERM_REC** %6, align 8, !dbg !811
  br label %22, !dbg !812

; <label>:22:                                     ; preds = %19, %2
  %23 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !813
  store %struct._TERM_REC* %23, %struct._TERM_REC** @current_term, align 8, !dbg !814
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !815
  ret %struct._TERM_REC* %24, !dbg !816
}

; Function Attrs: nounwind uwtable
define internal i32 @term_setup(%struct._TERM_REC*) #0 !dbg !817 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !820, metadata !216), !dbg !821
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !822, metadata !216), !dbg !834
  call void @llvm.dbg.declare(metadata i32* %5, metadata !835, metadata !216), !dbg !836
  call void @llvm.dbg.declare(metadata i8** %6, metadata !837, metadata !216), !dbg !838
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !839
  store i8* %7, i8** %6, align 8, !dbg !840
  %8 = load i8*, i8** %6, align 8, !dbg !841
  %9 = icmp eq i8* %8, null, !dbg !843
  br i1 %9, label %10, label %13, !dbg !844

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !845
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)), !dbg !847
  store i32 0, i32* %2, align 4, !dbg !848
  br label %395, !dbg !848

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %6, align 8, !dbg !849
  %15 = call i32 (i8*, i32, i32*, ...) bitcast (i32 (...)* @setupterm to i32 (i8*, i32, i32*, ...)*)(i8* %14, i32 1, i32* %5), !dbg !851
  %16 = icmp ne i32 %15, 0, !dbg !852
  br i1 %16, label %17, label %22, !dbg !853

; <label>:17:                                     ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !854
  %19 = load i8*, i8** %6, align 8, !dbg !856
  %20 = load i32, i32* %5, align 4, !dbg !857
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %19, i32 %20), !dbg !858
  store i32 0, i32* %2, align 4, !dbg !859
  br label %395, !dbg !859

; <label>:22:                                     ; preds = %13
  %23 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !860
  call void @term_fill_capabilities(%struct._TERM_REC* %23), !dbg !861
  %24 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !862
  %25 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %24, i32 0, i32 27, !dbg !864
  %26 = load i8*, i8** %25, align 8, !dbg !864
  %27 = icmp ne i8* %26, null, !dbg !862
  br i1 %27, label %28, label %31, !dbg !865

; <label>:28:                                     ; preds = %22
  %29 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !866
  %30 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %29, i32 0, i32 0, !dbg !867
  store void (%struct._TERM_REC*, i32, i32)* @_move_cup, void (%struct._TERM_REC*, i32, i32)** %30, align 8, !dbg !868
  br label %48, !dbg !866

; <label>:31:                                     ; preds = %22
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !869
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 28, !dbg !871
  %34 = load i8*, i8** %33, align 8, !dbg !871
  %35 = icmp ne i8* %34, null, !dbg !869
  br i1 %35, label %36, label %44, !dbg !872

; <label>:36:                                     ; preds = %31
  %37 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !873
  %38 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %37, i32 0, i32 29, !dbg !875
  %39 = load i8*, i8** %38, align 8, !dbg !875
  %40 = icmp ne i8* %39, null, !dbg !873
  br i1 %40, label %41, label %44, !dbg !876

; <label>:41:                                     ; preds = %36
  %42 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !877
  %43 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %42, i32 0, i32 0, !dbg !878
  store void (%struct._TERM_REC*, i32, i32)* @_move_pa, void (%struct._TERM_REC*, i32, i32)** %43, align 8, !dbg !879
  br label %47, !dbg !877

; <label>:44:                                     ; preds = %36, %31
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !880
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)), !dbg !882
  store i32 0, i32* %2, align 4, !dbg !883
  br label %395, !dbg !883

; <label>:47:                                     ; preds = %41
  br label %48

; <label>:48:                                     ; preds = %47, %28
  %49 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !884
  %50 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %49, i32 0, i32 1, !dbg !885
  store void (%struct._TERM_REC*, i32, i32, i32, i32)* @_move_relative, void (%struct._TERM_REC*, i32, i32, i32, i32)** %50, align 8, !dbg !886
  %51 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !887
  %52 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %51, i32 0, i32 32, !dbg !888
  %53 = load i8*, i8** %52, align 8, !dbg !888
  %54 = icmp ne i8* %53, null, !dbg !887
  br i1 %54, label %55, label %60, !dbg !889

; <label>:55:                                     ; preds = %48
  %56 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !890
  %57 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %56, i32 0, i32 33, !dbg !892
  %58 = load i8*, i8** %57, align 8, !dbg !892
  %59 = icmp ne i8* %58, null, !dbg !893
  br label %60

; <label>:60:                                     ; preds = %55, %48
  %61 = phi i1 [ false, %48 ], [ %59, %55 ]
  %62 = select i1 %61, void (%struct._TERM_REC*, i32)* @_set_cursor_visible, void (%struct._TERM_REC*, i32)* @_ignore_parm, !dbg !894
  %63 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !896
  %64 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %63, i32 0, i32 2, !dbg !897
  %65 = bitcast {}** %64 to void (%struct._TERM_REC*, i32)**, !dbg !897
  store void (%struct._TERM_REC*, i32)* %62, void (%struct._TERM_REC*, i32)** %65, align 8, !dbg !898
  %66 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !899
  %67 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %66, i32 0, i32 34, !dbg !901
  %68 = load i8*, i8** %67, align 8, !dbg !901
  %69 = icmp ne i8* %68, null, !dbg !899
  br i1 %69, label %75, label %70, !dbg !902

; <label>:70:                                     ; preds = %60
  %71 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !903
  %72 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %71, i32 0, i32 35, !dbg !905
  %73 = load i8*, i8** %72, align 8, !dbg !905
  %74 = icmp ne i8* %73, null, !dbg !903
  br i1 %74, label %75, label %88, !dbg !906

; <label>:75:                                     ; preds = %70, %60
  %76 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !907
  %77 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %76, i32 0, i32 37, !dbg !909
  %78 = load i8*, i8** %77, align 8, !dbg !909
  %79 = icmp ne i8* %78, null, !dbg !907
  br i1 %79, label %80, label %88, !dbg !910

; <label>:80:                                     ; preds = %75
  %81 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !911
  %82 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %81, i32 0, i32 39, !dbg !913
  %83 = load i8*, i8** %82, align 8, !dbg !913
  %84 = icmp ne i8* %83, null, !dbg !911
  br i1 %84, label %85, label %88, !dbg !914

; <label>:85:                                     ; preds = %80
  %86 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !915
  %87 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %86, i32 0, i32 3, !dbg !916
  store void (%struct._TERM_REC*, i32, i32, i32)* @_scroll_region, void (%struct._TERM_REC*, i32, i32, i32)** %87, align 8, !dbg !917
  br label %154, !dbg !915

; <label>:88:                                     ; preds = %80, %75, %70
  %89 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !918
  %90 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %89, i32 0, i32 40, !dbg !920
  %91 = load i8*, i8** %90, align 8, !dbg !920
  %92 = icmp ne i8* %91, null, !dbg !918
  br i1 %92, label %93, label %101, !dbg !921

; <label>:93:                                     ; preds = %88
  %94 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !922
  %95 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %94, i32 0, i32 42, !dbg !924
  %96 = load i8*, i8** %95, align 8, !dbg !924
  %97 = icmp ne i8* %96, null, !dbg !922
  br i1 %97, label %98, label %101, !dbg !925

; <label>:98:                                     ; preds = %93
  %99 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !926
  %100 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %99, i32 0, i32 3, !dbg !927
  store void (%struct._TERM_REC*, i32, i32, i32)* @_scroll_line, void (%struct._TERM_REC*, i32, i32, i32)** %100, align 8, !dbg !928
  br label %153, !dbg !926

; <label>:101:                                    ; preds = %93, %88
  %102 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !929
  %103 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %102, i32 0, i32 34, !dbg !931
  %104 = load i8*, i8** %103, align 8, !dbg !931
  %105 = icmp ne i8* %104, null, !dbg !929
  br i1 %105, label %111, label %106, !dbg !932

; <label>:106:                                    ; preds = %101
  %107 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !933
  %108 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %107, i32 0, i32 35, !dbg !935
  %109 = load i8*, i8** %108, align 8, !dbg !935
  %110 = icmp ne i8* %109, null, !dbg !933
  br i1 %110, label %111, label %124, !dbg !936

; <label>:111:                                    ; preds = %106, %101
  %112 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !937
  %113 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %112, i32 0, i32 36, !dbg !939
  %114 = load i8*, i8** %113, align 8, !dbg !939
  %115 = icmp ne i8* %114, null, !dbg !937
  br i1 %115, label %116, label %124, !dbg !940

; <label>:116:                                    ; preds = %111
  %117 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !941
  %118 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %117, i32 0, i32 38, !dbg !943
  %119 = load i8*, i8** %118, align 8, !dbg !943
  %120 = icmp ne i8* %119, null, !dbg !941
  br i1 %120, label %121, label %124, !dbg !944

; <label>:121:                                    ; preds = %116
  %122 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !945
  %123 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %122, i32 0, i32 3, !dbg !946
  store void (%struct._TERM_REC*, i32, i32, i32)* @_scroll_region_1, void (%struct._TERM_REC*, i32, i32, i32)** %123, align 8, !dbg !947
  br label %152, !dbg !945

; <label>:124:                                    ; preds = %116, %111, %106
  %125 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !948
  %126 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %125, i32 0, i32 3, !dbg !950
  %127 = load void (%struct._TERM_REC*, i32, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32)** %126, align 8, !dbg !950
  %128 = icmp eq void (%struct._TERM_REC*, i32, i32, i32)* %127, null, !dbg !951
  br i1 %128, label %129, label %142, !dbg !952

; <label>:129:                                    ; preds = %124
  %130 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !953
  %131 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %130, i32 0, i32 41, !dbg !955
  %132 = load i8*, i8** %131, align 8, !dbg !955
  %133 = icmp ne i8* %132, null, !dbg !953
  br i1 %133, label %134, label %142, !dbg !956

; <label>:134:                                    ; preds = %129
  %135 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !957
  %136 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %135, i32 0, i32 43, !dbg !959
  %137 = load i8*, i8** %136, align 8, !dbg !959
  %138 = icmp ne i8* %137, null, !dbg !957
  br i1 %138, label %139, label %142, !dbg !960

; <label>:139:                                    ; preds = %134
  %140 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !961
  %141 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %140, i32 0, i32 3, !dbg !962
  store void (%struct._TERM_REC*, i32, i32, i32)* @_scroll_line_1, void (%struct._TERM_REC*, i32, i32, i32)** %141, align 8, !dbg !963
  br label %151, !dbg !961

; <label>:142:                                    ; preds = %134, %129, %124
  %143 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !964
  %144 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %143, i32 0, i32 3, !dbg !966
  %145 = load void (%struct._TERM_REC*, i32, i32, i32)*, void (%struct._TERM_REC*, i32, i32, i32)** %144, align 8, !dbg !966
  %146 = icmp eq void (%struct._TERM_REC*, i32, i32, i32)* %145, null, !dbg !967
  br i1 %146, label %147, label %150, !dbg !968

; <label>:147:                                    ; preds = %142
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !969
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0)), !dbg !971
  store i32 0, i32* %2, align 4, !dbg !972
  br label %395, !dbg !972

; <label>:150:                                    ; preds = %142
  br label %151

; <label>:151:                                    ; preds = %150, %139
  br label %152

; <label>:152:                                    ; preds = %151, %121
  br label %153

; <label>:153:                                    ; preds = %152, %98
  br label %154

; <label>:154:                                    ; preds = %153, %85
  %155 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !973
  %156 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %155, i32 0, i32 44, !dbg !975
  %157 = load i8*, i8** %156, align 8, !dbg !975
  %158 = icmp ne i8* %157, null, !dbg !973
  br i1 %158, label %159, label %162, !dbg !976

; <label>:159:                                    ; preds = %154
  %160 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !977
  %161 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %160, i32 0, i32 4, !dbg !978
  store void (%struct._TERM_REC*)* @_clear_screen, void (%struct._TERM_REC*)** %161, align 8, !dbg !979
  br label %192, !dbg !977

; <label>:162:                                    ; preds = %154
  %163 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !980
  %164 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %163, i32 0, i32 45, !dbg !982
  %165 = load i8*, i8** %164, align 8, !dbg !982
  %166 = icmp ne i8* %165, null, !dbg !980
  br i1 %166, label %167, label %170, !dbg !983

; <label>:167:                                    ; preds = %162
  %168 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !984
  %169 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %168, i32 0, i32 4, !dbg !985
  store void (%struct._TERM_REC*)* @_clear_eos, void (%struct._TERM_REC*)** %169, align 8, !dbg !986
  br label %191, !dbg !984

; <label>:170:                                    ; preds = %162
  %171 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !987
  %172 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %171, i32 0, i32 42, !dbg !989
  %173 = load i8*, i8** %172, align 8, !dbg !989
  %174 = icmp ne i8* %173, null, !dbg !987
  br i1 %174, label %175, label %178, !dbg !990

; <label>:175:                                    ; preds = %170
  %176 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !991
  %177 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %176, i32 0, i32 4, !dbg !992
  store void (%struct._TERM_REC*)* @_clear_del, void (%struct._TERM_REC*)** %177, align 8, !dbg !993
  br label %190, !dbg !991

; <label>:178:                                    ; preds = %170
  %179 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !994
  %180 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %179, i32 0, i32 43, !dbg !996
  %181 = load i8*, i8** %180, align 8, !dbg !996
  %182 = icmp ne i8* %181, null, !dbg !994
  br i1 %182, label %183, label %186, !dbg !997

; <label>:183:                                    ; preds = %178
  %184 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !998
  %185 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %184, i32 0, i32 4, !dbg !999
  store void (%struct._TERM_REC*)* @_clear_del_1, void (%struct._TERM_REC*)** %185, align 8, !dbg !1000
  br label %189, !dbg !998

; <label>:186:                                    ; preds = %178
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1001
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0)), !dbg !1003
  store i32 0, i32* %2, align 4, !dbg !1004
  br label %395, !dbg !1004

; <label>:189:                                    ; preds = %183
  br label %190

; <label>:190:                                    ; preds = %189, %175
  br label %191

; <label>:191:                                    ; preds = %190, %167
  br label %192

; <label>:192:                                    ; preds = %191, %159
  %193 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1005
  %194 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %193, i32 0, i32 46, !dbg !1007
  %195 = load i8*, i8** %194, align 8, !dbg !1007
  %196 = icmp ne i8* %195, null, !dbg !1005
  br i1 %196, label %197, label %200, !dbg !1008

; <label>:197:                                    ; preds = %192
  %198 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1009
  %199 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %198, i32 0, i32 5, !dbg !1010
  store void (%struct._TERM_REC*)* @_clrtoeol, void (%struct._TERM_REC*)** %199, align 8, !dbg !1011
  br label %203, !dbg !1009

; <label>:200:                                    ; preds = %192
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1012
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0)), !dbg !1014
  store i32 0, i32* %2, align 4, !dbg !1015
  br label %395, !dbg !1015

; <label>:203:                                    ; preds = %197
  %204 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1016
  %205 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %204, i32 0, i32 47, !dbg !1018
  %206 = load i8*, i8** %205, align 8, !dbg !1018
  %207 = icmp ne i8* %206, null, !dbg !1016
  br i1 %207, label %208, label %211, !dbg !1019

; <label>:208:                                    ; preds = %203
  %209 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1020
  %210 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %209, i32 0, i32 6, !dbg !1021
  store void (%struct._TERM_REC*, i8, i32)* @_repeat, void (%struct._TERM_REC*, i8, i32)** %210, align 8, !dbg !1022
  br label %214, !dbg !1020

; <label>:211:                                    ; preds = %203
  %212 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1023
  %213 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %212, i32 0, i32 6, !dbg !1024
  store void (%struct._TERM_REC*, i8, i32)* @_repeat_manual, void (%struct._TERM_REC*, i8, i32)** %213, align 8, !dbg !1025
  br label %214

; <label>:214:                                    ; preds = %211, %208
  %215 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1026
  %216 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %215, i32 0, i32 57, !dbg !1027
  %217 = load i8*, i8** %216, align 8, !dbg !1027
  %218 = icmp ne i8* %217, null, !dbg !1026
  %219 = select i1 %218, void (%struct._TERM_REC*)* @_set_blink, void (%struct._TERM_REC*)* @_ignore, !dbg !1026
  %220 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1028
  %221 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %220, i32 0, i32 10, !dbg !1029
  store void (%struct._TERM_REC*)* %219, void (%struct._TERM_REC*)** %221, align 8, !dbg !1030
  %222 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1031
  %223 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %222, i32 0, i32 56, !dbg !1032
  %224 = load i8*, i8** %223, align 8, !dbg !1032
  %225 = icmp ne i8* %224, null, !dbg !1031
  %226 = select i1 %225, void (%struct._TERM_REC*)* @_set_bold, void (%struct._TERM_REC*)* @_ignore, !dbg !1031
  %227 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1033
  %228 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %227, i32 0, i32 11, !dbg !1034
  store void (%struct._TERM_REC*)* %226, void (%struct._TERM_REC*)** %228, align 8, !dbg !1035
  %229 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1036
  %230 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %229, i32 0, i32 58, !dbg !1037
  %231 = load i8*, i8** %230, align 8, !dbg !1037
  %232 = icmp ne i8* %231, null, !dbg !1036
  br i1 %232, label %233, label %234, !dbg !1036

; <label>:233:                                    ; preds = %214
  br label %240, !dbg !1038

; <label>:234:                                    ; preds = %214
  %235 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1039
  %236 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %235, i32 0, i32 52, !dbg !1040
  %237 = load i8*, i8** %236, align 8, !dbg !1040
  %238 = icmp ne i8* %237, null, !dbg !1039
  %239 = select i1 %238, void (%struct._TERM_REC*)* @_set_standout_on, void (%struct._TERM_REC*)* @_ignore, !dbg !1039
  br label %240, !dbg !1041

; <label>:240:                                    ; preds = %234, %233
  %241 = phi void (%struct._TERM_REC*)* [ @_set_reverse, %233 ], [ %239, %234 ], !dbg !1042
  %242 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1044
  %243 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %242, i32 0, i32 12, !dbg !1045
  store void (%struct._TERM_REC*)* %241, void (%struct._TERM_REC*)** %243, align 8, !dbg !1046
  %244 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1047
  %245 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %244, i32 0, i32 50, !dbg !1048
  %246 = load i8*, i8** %245, align 8, !dbg !1048
  %247 = icmp ne i8* %246, null, !dbg !1047
  br i1 %247, label %248, label %253, !dbg !1049

; <label>:248:                                    ; preds = %240
  %249 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1050
  %250 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %249, i32 0, i32 51, !dbg !1051
  %251 = load i8*, i8** %250, align 8, !dbg !1051
  %252 = icmp ne i8* %251, null, !dbg !1052
  br label %253

; <label>:253:                                    ; preds = %248, %240
  %254 = phi i1 [ false, %240 ], [ %252, %248 ]
  %255 = select i1 %254, void (%struct._TERM_REC*, i32)* @_set_uline, void (%struct._TERM_REC*, i32)* @_ignore_parm, !dbg !1053
  %256 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1054
  %257 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %256, i32 0, i32 13, !dbg !1055
  %258 = bitcast {}** %257 to void (%struct._TERM_REC*, i32)**, !dbg !1055
  store void (%struct._TERM_REC*, i32)* %255, void (%struct._TERM_REC*, i32)** %258, align 8, !dbg !1056
  %259 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1057
  %260 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %259, i32 0, i32 52, !dbg !1058
  %261 = load i8*, i8** %260, align 8, !dbg !1058
  %262 = icmp ne i8* %261, null, !dbg !1057
  br i1 %262, label %263, label %268, !dbg !1059

; <label>:263:                                    ; preds = %253
  %264 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1060
  %265 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %264, i32 0, i32 53, !dbg !1061
  %266 = load i8*, i8** %265, align 8, !dbg !1061
  %267 = icmp ne i8* %266, null, !dbg !1062
  br label %268

; <label>:268:                                    ; preds = %263, %253
  %269 = phi i1 [ false, %253 ], [ %267, %263 ]
  %270 = select i1 %269, void (%struct._TERM_REC*, i32)* @_set_standout, void (%struct._TERM_REC*, i32)* @_ignore_parm, !dbg !1063
  %271 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1064
  %272 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %271, i32 0, i32 14, !dbg !1065
  %273 = bitcast {}** %272 to void (%struct._TERM_REC*, i32)**, !dbg !1065
  store void (%struct._TERM_REC*, i32)* %270, void (%struct._TERM_REC*, i32)** %273, align 8, !dbg !1066
  %274 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1067
  %275 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %274, i32 0, i32 54, !dbg !1068
  %276 = load i8*, i8** %275, align 8, !dbg !1068
  %277 = icmp ne i8* %276, null, !dbg !1067
  br i1 %277, label %278, label %283, !dbg !1069

; <label>:278:                                    ; preds = %268
  %279 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1070
  %280 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %279, i32 0, i32 55, !dbg !1071
  %281 = load i8*, i8** %280, align 8, !dbg !1071
  %282 = icmp ne i8* %281, null, !dbg !1072
  br label %283

; <label>:283:                                    ; preds = %278, %268
  %284 = phi i1 [ false, %268 ], [ %282, %278 ]
  %285 = select i1 %284, void (%struct._TERM_REC*, i32)* @_set_italic, void (%struct._TERM_REC*, i32)* @_ignore_parm, !dbg !1073
  %286 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1074
  %287 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %286, i32 0, i32 15, !dbg !1075
  %288 = bitcast {}** %287 to void (%struct._TERM_REC*, i32)**, !dbg !1075
  store void (%struct._TERM_REC*, i32)* %285, void (%struct._TERM_REC*, i32)** %288, align 8, !dbg !1076
  %289 = call %struct._GString* @g_string_new(i8* null), !dbg !1077
  store %struct._GString* %289, %struct._GString** %4, align 8, !dbg !1078
  %290 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1079
  %291 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %290, i32 0, i32 49, !dbg !1081
  %292 = load i8*, i8** %291, align 8, !dbg !1081
  %293 = icmp ne i8* %292, null, !dbg !1079
  br i1 %293, label %294, label %300, !dbg !1082

; <label>:294:                                    ; preds = %283
  %295 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1083
  %296 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1084
  %297 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %296, i32 0, i32 49, !dbg !1085
  %298 = load i8*, i8** %297, align 8, !dbg !1085
  %299 = call %struct._GString* @g_string_append(%struct._GString* %295, i8* %298), !dbg !1086
  br label %300, !dbg !1086

; <label>:300:                                    ; preds = %294, %283
  %301 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1087
  %302 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %301, i32 0, i32 51, !dbg !1089
  %303 = load i8*, i8** %302, align 8, !dbg !1089
  %304 = icmp ne i8* %303, null, !dbg !1087
  br i1 %304, label %305, label %325, !dbg !1090

; <label>:305:                                    ; preds = %300
  %306 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1091
  %307 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %306, i32 0, i32 49, !dbg !1093
  %308 = load i8*, i8** %307, align 8, !dbg !1093
  %309 = icmp eq i8* %308, null, !dbg !1094
  br i1 %309, label %319, label %310, !dbg !1095

; <label>:310:                                    ; preds = %305
  %311 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1096
  %312 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %311, i32 0, i32 51, !dbg !1098
  %313 = load i8*, i8** %312, align 8, !dbg !1098
  %314 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1099
  %315 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %314, i32 0, i32 49, !dbg !1100
  %316 = load i8*, i8** %315, align 8, !dbg !1100
  %317 = call i32 @g_strcmp0(i8* %313, i8* %316), !dbg !1101
  %318 = icmp ne i32 %317, 0, !dbg !1102
  br i1 %318, label %319, label %325, !dbg !1103

; <label>:319:                                    ; preds = %310, %305
  %320 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1104
  %321 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1105
  %322 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %321, i32 0, i32 51, !dbg !1106
  %323 = load i8*, i8** %322, align 8, !dbg !1106
  %324 = call %struct._GString* @g_string_append(%struct._GString* %320, i8* %323), !dbg !1107
  br label %325, !dbg !1107

; <label>:325:                                    ; preds = %319, %310, %300
  %326 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1108
  %327 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %326, i32 0, i32 53, !dbg !1110
  %328 = load i8*, i8** %327, align 8, !dbg !1110
  %329 = icmp ne i8* %328, null, !dbg !1108
  br i1 %329, label %330, label %350, !dbg !1111

; <label>:330:                                    ; preds = %325
  %331 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1112
  %332 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %331, i32 0, i32 49, !dbg !1114
  %333 = load i8*, i8** %332, align 8, !dbg !1114
  %334 = icmp eq i8* %333, null, !dbg !1115
  br i1 %334, label %344, label %335, !dbg !1116

; <label>:335:                                    ; preds = %330
  %336 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1117
  %337 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %336, i32 0, i32 53, !dbg !1119
  %338 = load i8*, i8** %337, align 8, !dbg !1119
  %339 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1120
  %340 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %339, i32 0, i32 49, !dbg !1121
  %341 = load i8*, i8** %340, align 8, !dbg !1121
  %342 = call i32 @g_strcmp0(i8* %338, i8* %341), !dbg !1122
  %343 = icmp ne i32 %342, 0, !dbg !1123
  br i1 %343, label %344, label %350, !dbg !1124

; <label>:344:                                    ; preds = %335, %330
  %345 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1125
  %346 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1126
  %347 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %346, i32 0, i32 53, !dbg !1127
  %348 = load i8*, i8** %347, align 8, !dbg !1127
  %349 = call %struct._GString* @g_string_append(%struct._GString* %345, i8* %348), !dbg !1128
  br label %350, !dbg !1128

; <label>:350:                                    ; preds = %344, %335, %325
  %351 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1129
  %352 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %351, i32 0, i32 55, !dbg !1131
  %353 = load i8*, i8** %352, align 8, !dbg !1131
  %354 = icmp ne i8* %353, null, !dbg !1129
  br i1 %354, label %355, label %375, !dbg !1132

; <label>:355:                                    ; preds = %350
  %356 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1133
  %357 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %356, i32 0, i32 49, !dbg !1135
  %358 = load i8*, i8** %357, align 8, !dbg !1135
  %359 = icmp eq i8* %358, null, !dbg !1136
  br i1 %359, label %369, label %360, !dbg !1137

; <label>:360:                                    ; preds = %355
  %361 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1138
  %362 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %361, i32 0, i32 55, !dbg !1140
  %363 = load i8*, i8** %362, align 8, !dbg !1140
  %364 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1141
  %365 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %364, i32 0, i32 49, !dbg !1142
  %366 = load i8*, i8** %365, align 8, !dbg !1142
  %367 = call i32 @g_strcmp0(i8* %363, i8* %366), !dbg !1143
  %368 = icmp ne i32 %367, 0, !dbg !1144
  br i1 %368, label %369, label %375, !dbg !1145

; <label>:369:                                    ; preds = %360, %355
  %370 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1146
  %371 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1147
  %372 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %371, i32 0, i32 55, !dbg !1148
  %373 = load i8*, i8** %372, align 8, !dbg !1148
  %374 = call %struct._GString* @g_string_append(%struct._GString* %370, i8* %373), !dbg !1149
  br label %375, !dbg !1149

; <label>:375:                                    ; preds = %369, %360, %350
  %376 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1150
  %377 = getelementptr inbounds %struct._GString, %struct._GString* %376, i32 0, i32 0, !dbg !1151
  %378 = load i8*, i8** %377, align 8, !dbg !1151
  %379 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1152
  %380 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %379, i32 0, i32 65, !dbg !1153
  store i8* %378, i8** %380, align 8, !dbg !1154
  %381 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1155
  %382 = call i8* @g_string_free(%struct._GString* %381, i32 0), !dbg !1156
  %383 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1157
  %384 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %383, i32 0, i32 9, !dbg !1158
  store void (%struct._TERM_REC*)* @_set_normal, void (%struct._TERM_REC*)** %384, align 8, !dbg !1159
  %385 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1160
  %386 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %385, i32 0, i32 66, !dbg !1161
  %387 = load i8*, i8** %386, align 8, !dbg !1161
  %388 = icmp ne i8* %387, null, !dbg !1160
  %389 = select i1 %388, void (%struct._TERM_REC*)* @_beep, void (%struct._TERM_REC*)* @_ignore, !dbg !1160
  %390 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1162
  %391 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %390, i32 0, i32 16, !dbg !1163
  store void (%struct._TERM_REC*)* %389, void (%struct._TERM_REC*)** %391, align 8, !dbg !1164
  %392 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1165
  call void @terminfo_setup_colors(%struct._TERM_REC* %392, i32 0), !dbg !1166
  %393 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1167
  call void @terminfo_input_init0(%struct._TERM_REC* %393), !dbg !1168
  %394 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1169
  call void @terminfo_cont(%struct._TERM_REC* %394), !dbg !1170
  store i32 1, i32* %2, align 4, !dbg !1171
  br label %395, !dbg !1171

; <label>:395:                                    ; preds = %375, %200, %186, %147, %44, %17, %10
  %396 = load i32, i32* %2, align 4, !dbg !1172
  ret i32 %396, !dbg !1172
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @terminfo_core_deinit(%struct._TERM_REC*) #0 !dbg !1173 {
  %2 = alloca %struct._TERM_REC*, align 8
  %3 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !1174, metadata !216), !dbg !1175
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !1176, metadata !216), !dbg !1177
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** @current_term, align 8, !dbg !1178
  store %struct._TERM_REC* %4, %struct._TERM_REC** %3, align 8, !dbg !1179
  %5 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1180
  store %struct._TERM_REC* %5, %struct._TERM_REC** @current_term, align 8, !dbg !1181
  %6 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1182
  %7 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %6, i32 0, i32 9, !dbg !1183
  %8 = load void (%struct._TERM_REC*)*, void (%struct._TERM_REC*)** %7, align 8, !dbg !1183
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1184
  call void %8(%struct._TERM_REC* %9), !dbg !1182
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1185
  store %struct._TERM_REC* %10, %struct._TERM_REC** @current_term, align 8, !dbg !1186
  %11 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1187
  call void @terminfo_stop(%struct._TERM_REC* %11), !dbg !1188
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1189
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 65, !dbg !1190
  %14 = load i8*, i8** %13, align 8, !dbg !1190
  call void @g_free(i8* %14), !dbg !1191
  %15 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1192
  call void @terminfo_colors_deinit(%struct._TERM_REC* %15), !dbg !1193
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1194
  %17 = bitcast %struct._TERM_REC* %16 to i8*, !dbg !1194
  call void @g_free(i8* %17), !dbg !1195
  ret void, !dbg !1196
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @color256(%struct._TERM_REC*, i32) #3 !dbg !1197 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._TERM_REC*, align 8
  %5 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %4, metadata !1203, metadata !216), !dbg !1204
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1205, metadata !216), !dbg !1206
  %6 = load i32, i32* %5, align 4, !dbg !1207
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1209
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 48, !dbg !1210
  %9 = load i32, i32* %8, align 8, !dbg !1210
  %10 = icmp slt i32 %6, %9, !dbg !1211
  br i1 %10, label %11, label %13, !dbg !1212

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !1213
  store i32 %12, i32* %3, align 4, !dbg !1214
  br label %40, !dbg !1214

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !1215
  %15 = icmp slt i32 %14, 16, !dbg !1217
  br i1 %15, label %16, label %22, !dbg !1218

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !1219
  %18 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1220
  %19 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %18, i32 0, i32 48, !dbg !1221
  %20 = load i32, i32* %19, align 8, !dbg !1221
  %21 = srem i32 %17, %20, !dbg !1222
  store i32 %21, i32* %3, align 4, !dbg !1223
  br label %40, !dbg !1223

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %5, align 4, !dbg !1224
  %24 = icmp slt i32 %23, 256, !dbg !1226
  br i1 %24, label %25, label %34, !dbg !1227

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4, !dbg !1228
  %27 = sext i32 %26 to i64, !dbg !1229
  %28 = getelementptr inbounds [0 x i32], [0 x i32]* @term_color256map, i64 0, i64 %27, !dbg !1229
  %29 = load i32, i32* %28, align 4, !dbg !1229
  %30 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1230
  %31 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %30, i32 0, i32 48, !dbg !1231
  %32 = load i32, i32* %31, align 8, !dbg !1231
  %33 = srem i32 %29, %32, !dbg !1232
  store i32 %33, i32* %3, align 4, !dbg !1233
  br label %40, !dbg !1233

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %5, align 4, !dbg !1234
  %36 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1235
  %37 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %36, i32 0, i32 48, !dbg !1236
  %38 = load i32, i32* %37, align 8, !dbg !1236
  %39 = srem i32 %35, %38, !dbg !1237
  store i32 %39, i32* %3, align 4, !dbg !1238
  br label %40, !dbg !1238

; <label>:40:                                     ; preds = %34, %25, %16, %11
  %41 = load i32, i32* %3, align 4, !dbg !1239
  ret i32 %41, !dbg !1239
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @setupterm(...) #2

; Function Attrs: nounwind uwtable
define internal void @term_fill_capabilities(%struct._TERM_REC*) #0 !dbg !1240 {
  %2 = alloca %struct._TERM_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !1241, metadata !216), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1243, metadata !216), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1245, metadata !216), !dbg !1246
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1247, metadata !216), !dbg !1248
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1249, metadata !216), !dbg !1250
  store i32 0, i32* %3, align 4, !dbg !1251
  br label %7, !dbg !1253

; <label>:7:                                      ; preds = %64, %1
  %8 = load i32, i32* %3, align 4, !dbg !1254
  %9 = sext i32 %8 to i64, !dbg !1254
  %10 = icmp ult i64 %9, 43, !dbg !1257
  br i1 %10, label %11, label %67, !dbg !1258

; <label>:11:                                     ; preds = %7
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !1259
  %13 = bitcast %struct._TERM_REC* %12 to i8*, !dbg !1261
  %14 = load i32, i32* %3, align 4, !dbg !1262
  %15 = sext i32 %14 to i64, !dbg !1263
  %16 = getelementptr inbounds [43 x %struct.TERMINFO_REC], [43 x %struct.TERMINFO_REC]* @tcaps, i64 0, i64 %15, !dbg !1263
  %17 = getelementptr inbounds %struct.TERMINFO_REC, %struct.TERMINFO_REC* %16, i32 0, i32 3, !dbg !1264
  %18 = load i32, i32* %17, align 4, !dbg !1264
  %19 = zext i32 %18 to i64, !dbg !1265
  %20 = getelementptr inbounds i8, i8* %13, i64 %19, !dbg !1266
  store i8* %20, i8** %6, align 8, !dbg !1267
  %21 = load i32, i32* %3, align 4, !dbg !1268
  %22 = sext i32 %21 to i64, !dbg !1269
  %23 = getelementptr inbounds [43 x %struct.TERMINFO_REC], [43 x %struct.TERMINFO_REC]* @tcaps, i64 0, i64 %22, !dbg !1269
  %24 = getelementptr inbounds %struct.TERMINFO_REC, %struct.TERMINFO_REC* %23, i32 0, i32 2, !dbg !1270
  %25 = load i32, i32* %24, align 8, !dbg !1270
  switch i32 %25, label %63 [
    i32 0, label %26
    i32 1, label %36
    i32 2, label %46
  ], !dbg !1271

; <label>:26:                                     ; preds = %11
  %27 = load i32, i32* %3, align 4, !dbg !1272
  %28 = sext i32 %27 to i64, !dbg !1274
  %29 = getelementptr inbounds [43 x %struct.TERMINFO_REC], [43 x %struct.TERMINFO_REC]* @tcaps, i64 0, i64 %28, !dbg !1274
  %30 = getelementptr inbounds %struct.TERMINFO_REC, %struct.TERMINFO_REC* %29, i32 0, i32 0, !dbg !1275
  %31 = load i8*, i8** %30, align 8, !dbg !1275
  %32 = call i32 (i8*, ...) bitcast (i32 (...)* @tigetflag to i32 (i8*, ...)*)(i8* %31), !dbg !1276
  store i32 %32, i32* %4, align 4, !dbg !1277
  %33 = load i32, i32* %4, align 4, !dbg !1278
  %34 = load i8*, i8** %6, align 8, !dbg !1279
  %35 = bitcast i8* %34 to i32*, !dbg !1280
  store i32 %33, i32* %35, align 4, !dbg !1281
  br label %63, !dbg !1282

; <label>:36:                                     ; preds = %11
  %37 = load i32, i32* %3, align 4, !dbg !1283
  %38 = sext i32 %37 to i64, !dbg !1284
  %39 = getelementptr inbounds [43 x %struct.TERMINFO_REC], [43 x %struct.TERMINFO_REC]* @tcaps, i64 0, i64 %38, !dbg !1284
  %40 = getelementptr inbounds %struct.TERMINFO_REC, %struct.TERMINFO_REC* %39, i32 0, i32 0, !dbg !1285
  %41 = load i8*, i8** %40, align 8, !dbg !1285
  %42 = call i32 (i8*, ...) bitcast (i32 (...)* @tigetnum to i32 (i8*, ...)*)(i8* %41), !dbg !1286
  store i32 %42, i32* %4, align 4, !dbg !1287
  %43 = load i32, i32* %4, align 4, !dbg !1288
  %44 = load i8*, i8** %6, align 8, !dbg !1289
  %45 = bitcast i8* %44 to i32*, !dbg !1290
  store i32 %43, i32* %45, align 4, !dbg !1291
  br label %63, !dbg !1292

; <label>:46:                                     ; preds = %11
  %47 = load i32, i32* %3, align 4, !dbg !1293
  %48 = sext i32 %47 to i64, !dbg !1294
  %49 = getelementptr inbounds [43 x %struct.TERMINFO_REC], [43 x %struct.TERMINFO_REC]* @tcaps, i64 0, i64 %48, !dbg !1294
  %50 = getelementptr inbounds %struct.TERMINFO_REC, %struct.TERMINFO_REC* %49, i32 0, i32 0, !dbg !1295
  %51 = load i8*, i8** %50, align 8, !dbg !1295
  %52 = call i8* (i8*, ...) bitcast (i8* (...)* @tigetstr to i8* (i8*, ...)*)(i8* %51), !dbg !1296
  store i8* %52, i8** %5, align 8, !dbg !1297
  %53 = load i8*, i8** %5, align 8, !dbg !1298
  %54 = icmp eq i8* %53, inttoptr (i64 -1 to i8*), !dbg !1300
  br i1 %54, label %55, label %58, !dbg !1301

; <label>:55:                                     ; preds = %46
  %56 = load i8*, i8** %6, align 8, !dbg !1302
  %57 = bitcast i8* %56 to i8**, !dbg !1303
  store i8* null, i8** %57, align 8, !dbg !1304
  br label %62, !dbg !1305

; <label>:58:                                     ; preds = %46
  %59 = load i8*, i8** %5, align 8, !dbg !1306
  %60 = load i8*, i8** %6, align 8, !dbg !1307
  %61 = bitcast i8* %60 to i8**, !dbg !1308
  store i8* %59, i8** %61, align 8, !dbg !1309
  br label %62

; <label>:62:                                     ; preds = %58, %55
  br label %63, !dbg !1310

; <label>:63:                                     ; preds = %11, %62, %36, %26
  br label %64, !dbg !1311

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %3, align 4, !dbg !1312
  %66 = add nsw i32 %65, 1, !dbg !1312
  store i32 %66, i32* %3, align 4, !dbg !1312
  br label %7, !dbg !1314, !llvm.loop !1315

; <label>:67:                                     ; preds = %7
  ret void, !dbg !1317
}

; Function Attrs: nounwind uwtable
define internal void @_move_cup(%struct._TERM_REC*, i32, i32) #0 !dbg !1318 {
  %4 = alloca %struct._TERM_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %4, metadata !1319, metadata !216), !dbg !1320
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1321, metadata !216), !dbg !1322
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1323, metadata !216), !dbg !1324
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1325
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 27, !dbg !1326
  %9 = load i8*, i8** %8, align 8, !dbg !1326
  %10 = load i32, i32* %6, align 4, !dbg !1327
  %11 = load i32, i32* %5, align 4, !dbg !1328
  %12 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %9, i32 %10, i32 %11), !dbg !1329
  %13 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %12, i32 0, i32 (i32)* @term_putchar), !dbg !1330
  ret void, !dbg !1332
}

; Function Attrs: nounwind uwtable
define internal void @_move_pa(%struct._TERM_REC*, i32, i32) #0 !dbg !1333 {
  %4 = alloca %struct._TERM_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %4, metadata !1334, metadata !216), !dbg !1335
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1336, metadata !216), !dbg !1337
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1338, metadata !216), !dbg !1339
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1340
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 28, !dbg !1341
  %9 = load i8*, i8** %8, align 8, !dbg !1341
  %10 = load i32, i32* %5, align 4, !dbg !1342
  %11 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, ...)*)(i8* %9, i32 %10), !dbg !1343
  %12 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %11, i32 0, i32 (i32)* @term_putchar), !dbg !1344
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !1346
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 29, !dbg !1347
  %15 = load i8*, i8** %14, align 8, !dbg !1347
  %16 = load i32, i32* %6, align 4, !dbg !1348
  %17 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, ...)*)(i8* %15, i32 %16), !dbg !1349
  %18 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %17, i32 0, i32 (i32)* @term_putchar), !dbg !1350
  ret void, !dbg !1351
}

; Function Attrs: nounwind uwtable
define internal void @_move_relative(%struct._TERM_REC*, i32, i32, i32, i32) #0 !dbg !1352 {
  %6 = alloca %struct._TERM_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %6, metadata !1353, metadata !216), !dbg !1354
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1355, metadata !216), !dbg !1356
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1357, metadata !216), !dbg !1358
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1359, metadata !216), !dbg !1360
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1361, metadata !216), !dbg !1362
  %11 = load i32, i32* %7, align 4, !dbg !1363
  %12 = icmp eq i32 %11, 0, !dbg !1365
  br i1 %12, label %13, label %23, !dbg !1366

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %9, align 4, !dbg !1367
  %15 = icmp eq i32 %14, 0, !dbg !1369
  br i1 %15, label %16, label %23, !dbg !1370

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %10, align 4, !dbg !1371
  %18 = load i32, i32* %8, align 4, !dbg !1373
  %19 = add nsw i32 %18, 1, !dbg !1374
  %20 = icmp eq i32 %17, %19, !dbg !1375
  br i1 %20, label %21, label %23, !dbg !1376

; <label>:21:                                     ; preds = %16
  %22 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 (i32)* @term_putchar), !dbg !1377
  br label %102, !dbg !1379

; <label>:23:                                     ; preds = %16, %13, %5
  %24 = load i32, i32* %7, align 4, !dbg !1380
  %25 = icmp sgt i32 %24, 0, !dbg !1382
  br i1 %25, label %26, label %67, !dbg !1383

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %10, align 4, !dbg !1384
  %28 = load i32, i32* %8, align 4, !dbg !1386
  %29 = icmp eq i32 %27, %28, !dbg !1387
  br i1 %29, label %30, label %67, !dbg !1388

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %9, align 4, !dbg !1389
  %32 = load i32, i32* %7, align 4, !dbg !1392
  %33 = sub nsw i32 %32, 1, !dbg !1393
  %34 = icmp eq i32 %31, %33, !dbg !1394
  br i1 %34, label %35, label %46, !dbg !1395

; <label>:35:                                     ; preds = %30
  %36 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1396
  %37 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %36, i32 0, i32 30, !dbg !1398
  %38 = load i8*, i8** %37, align 8, !dbg !1398
  %39 = icmp ne i8* %38, null, !dbg !1396
  br i1 %39, label %40, label %46, !dbg !1399

; <label>:40:                                     ; preds = %35
  %41 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1400
  %42 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %41, i32 0, i32 30, !dbg !1402
  %43 = load i8*, i8** %42, align 8, !dbg !1402
  %44 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %43), !dbg !1403
  %45 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %44, i32 0, i32 (i32)* @term_putchar), !dbg !1404
  br label %102, !dbg !1406

; <label>:46:                                     ; preds = %35, %30
  %47 = load i32, i32* %9, align 4, !dbg !1407
  %48 = load i32, i32* %7, align 4, !dbg !1409
  %49 = add nsw i32 %48, 1, !dbg !1410
  %50 = icmp eq i32 %47, %49, !dbg !1411
  br i1 %50, label %51, label %66, !dbg !1412

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %10, align 4, !dbg !1413
  %53 = load i32, i32* %8, align 4, !dbg !1415
  %54 = icmp eq i32 %52, %53, !dbg !1416
  br i1 %54, label %55, label %66, !dbg !1417

; <label>:55:                                     ; preds = %51
  %56 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1418
  %57 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %56, i32 0, i32 31, !dbg !1420
  %58 = load i8*, i8** %57, align 8, !dbg !1420
  %59 = icmp ne i8* %58, null, !dbg !1418
  br i1 %59, label %60, label %66, !dbg !1421

; <label>:60:                                     ; preds = %55
  %61 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1422
  %62 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %61, i32 0, i32 31, !dbg !1424
  %63 = load i8*, i8** %62, align 8, !dbg !1424
  %64 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %63), !dbg !1425
  %65 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %64, i32 0, i32 (i32)* @term_putchar), !dbg !1426
  br label %102, !dbg !1428

; <label>:66:                                     ; preds = %55, %51, %46
  br label %67, !dbg !1429

; <label>:67:                                     ; preds = %66, %26, %23
  %68 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1430
  %69 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %68, i32 0, i32 27, !dbg !1432
  %70 = load i8*, i8** %69, align 8, !dbg !1432
  %71 = icmp ne i8* %70, null, !dbg !1430
  br i1 %71, label %72, label %80, !dbg !1433

; <label>:72:                                     ; preds = %67
  %73 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1434
  %74 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %73, i32 0, i32 27, !dbg !1436
  %75 = load i8*, i8** %74, align 8, !dbg !1436
  %76 = load i32, i32* %10, align 4, !dbg !1437
  %77 = load i32, i32* %9, align 4, !dbg !1438
  %78 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %75, i32 %76, i32 %77), !dbg !1439
  %79 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %78, i32 0, i32 (i32)* @term_putchar), !dbg !1440
  br label %102, !dbg !1442

; <label>:80:                                     ; preds = %67
  %81 = load i32, i32* %8, align 4, !dbg !1443
  %82 = load i32, i32* %10, align 4, !dbg !1445
  %83 = icmp ne i32 %81, %82, !dbg !1446
  br i1 %83, label %84, label %91, !dbg !1447

; <label>:84:                                     ; preds = %80
  %85 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1448
  %86 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %85, i32 0, i32 29, !dbg !1449
  %87 = load i8*, i8** %86, align 8, !dbg !1449
  %88 = load i32, i32* %10, align 4, !dbg !1450
  %89 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, ...)*)(i8* %87, i32 %88), !dbg !1451
  %90 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %89, i32 0, i32 (i32)* @term_putchar), !dbg !1452
  br label %91, !dbg !1454

; <label>:91:                                     ; preds = %84, %80
  %92 = load i32, i32* %7, align 4, !dbg !1455
  %93 = load i32, i32* %9, align 4, !dbg !1457
  %94 = icmp ne i32 %92, %93, !dbg !1458
  br i1 %94, label %95, label %102, !dbg !1459

; <label>:95:                                     ; preds = %91
  %96 = load %struct._TERM_REC*, %struct._TERM_REC** %6, align 8, !dbg !1460
  %97 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %96, i32 0, i32 28, !dbg !1461
  %98 = load i8*, i8** %97, align 8, !dbg !1461
  %99 = load i32, i32* %9, align 4, !dbg !1462
  %100 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, ...)*)(i8* %98, i32 %99), !dbg !1463
  %101 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %100, i32 0, i32 (i32)* @term_putchar), !dbg !1464
  br label %102, !dbg !1466

; <label>:102:                                    ; preds = %21, %40, %60, %72, %95, %91
  ret void, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal void @_set_cursor_visible(%struct._TERM_REC*, i32) #0 !dbg !1468 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !1469, metadata !216), !dbg !1470
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1471, metadata !216), !dbg !1472
  %5 = load i32, i32* %4, align 4, !dbg !1473
  %6 = icmp ne i32 %5, 0, !dbg !1473
  br i1 %6, label %7, label %11, !dbg !1473

; <label>:7:                                      ; preds = %2
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1474
  %9 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %8, i32 0, i32 33, !dbg !1476
  %10 = load i8*, i8** %9, align 8, !dbg !1476
  br label %15, !dbg !1477

; <label>:11:                                     ; preds = %2
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !1478
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 32, !dbg !1480
  %14 = load i8*, i8** %13, align 8, !dbg !1480
  br label %15, !dbg !1481

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i8* [ %10, %7 ], [ %14, %11 ], !dbg !1482
  %17 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %16), !dbg !1484
  %18 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %17, i32 0, i32 (i32)* @term_putchar), !dbg !1485
  ret void, !dbg !1487
}

; Function Attrs: nounwind uwtable
define internal void @_scroll_region(%struct._TERM_REC*, i32, i32, i32) #0 !dbg !1488 {
  %5 = alloca %struct._TERM_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %5, metadata !1489, metadata !216), !dbg !1490
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1491, metadata !216), !dbg !1492
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1493, metadata !216), !dbg !1494
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1495, metadata !216), !dbg !1496
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1497
  %10 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %9, i32 0, i32 34, !dbg !1499
  %11 = load i8*, i8** %10, align 8, !dbg !1499
  %12 = icmp ne i8* %11, null, !dbg !1500
  br i1 %12, label %13, label %21, !dbg !1501

; <label>:13:                                     ; preds = %4
  %14 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1502
  %15 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %14, i32 0, i32 34, !dbg !1504
  %16 = load i8*, i8** %15, align 8, !dbg !1504
  %17 = load i32, i32* %6, align 4, !dbg !1505
  %18 = load i32, i32* %7, align 4, !dbg !1506
  %19 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %16, i32 %17, i32 %18), !dbg !1507
  %20 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %19, i32 0, i32 (i32)* @term_putchar), !dbg !1508
  br label %39, !dbg !1510

; <label>:21:                                     ; preds = %4
  %22 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1511
  %23 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %22, i32 0, i32 35, !dbg !1514
  %24 = load i8*, i8** %23, align 8, !dbg !1514
  %25 = icmp ne i8* %24, null, !dbg !1515
  br i1 %25, label %26, label %38, !dbg !1516

; <label>:26:                                     ; preds = %21
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1517
  %28 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %27, i32 0, i32 35, !dbg !1519
  %29 = load i8*, i8** %28, align 8, !dbg !1519
  %30 = load i32, i32* %6, align 4, !dbg !1520
  %31 = load i32, i32* %7, align 4, !dbg !1521
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1522
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 23, !dbg !1523
  %34 = load i32, i32* %33, align 8, !dbg !1523
  %35 = sub nsw i32 %34, 1, !dbg !1524
  %36 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %29, i32 %30, i32 %31, i32 0, i32 %35), !dbg !1525
  %37 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %36, i32 0, i32 (i32)* @term_putchar), !dbg !1526
  br label %38, !dbg !1528

; <label>:38:                                     ; preds = %26, %21
  br label %39

; <label>:39:                                     ; preds = %38, %13
  %40 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1529
  %41 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %40, i32 0, i32 0, !dbg !1530
  %42 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %41, align 8, !dbg !1530
  %43 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1531
  %44 = load i32, i32* %6, align 4, !dbg !1532
  call void %42(%struct._TERM_REC* %43, i32 0, i32 %44), !dbg !1529
  %45 = load i32, i32* %8, align 4, !dbg !1533
  %46 = icmp sgt i32 %45, 0, !dbg !1535
  br i1 %46, label %47, label %60, !dbg !1536

; <label>:47:                                     ; preds = %39
  %48 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1537
  %49 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %48, i32 0, i32 0, !dbg !1539
  %50 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %49, align 8, !dbg !1539
  %51 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1540
  %52 = load i32, i32* %7, align 4, !dbg !1541
  call void %50(%struct._TERM_REC* %51, i32 0, i32 %52), !dbg !1537
  %53 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1542
  %54 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %53, i32 0, i32 39, !dbg !1543
  %55 = load i8*, i8** %54, align 8, !dbg !1543
  %56 = load i32, i32* %8, align 4, !dbg !1544
  %57 = load i32, i32* %8, align 4, !dbg !1545
  %58 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %55, i32 %56, i32 %57), !dbg !1546
  %59 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %58, i32 0, i32 (i32)* @term_putchar), !dbg !1547
  br label %79, !dbg !1549

; <label>:60:                                     ; preds = %39
  %61 = load i32, i32* %8, align 4, !dbg !1550
  %62 = icmp slt i32 %61, 0, !dbg !1553
  br i1 %62, label %63, label %78, !dbg !1550

; <label>:63:                                     ; preds = %60
  %64 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1554
  %65 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %64, i32 0, i32 0, !dbg !1556
  %66 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %65, align 8, !dbg !1556
  %67 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1557
  %68 = load i32, i32* %6, align 4, !dbg !1558
  call void %66(%struct._TERM_REC* %67, i32 0, i32 %68), !dbg !1554
  %69 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1559
  %70 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %69, i32 0, i32 37, !dbg !1560
  %71 = load i8*, i8** %70, align 8, !dbg !1560
  %72 = load i32, i32* %8, align 4, !dbg !1561
  %73 = sub nsw i32 0, %72, !dbg !1562
  %74 = load i32, i32* %8, align 4, !dbg !1563
  %75 = sub nsw i32 0, %74, !dbg !1564
  %76 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %71, i32 %73, i32 %75), !dbg !1565
  %77 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %76, i32 0, i32 (i32)* @term_putchar), !dbg !1566
  br label %78, !dbg !1568

; <label>:78:                                     ; preds = %63, %60
  br label %79

; <label>:79:                                     ; preds = %78, %47
  %80 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1569
  %81 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %80, i32 0, i32 34, !dbg !1571
  %82 = load i8*, i8** %81, align 8, !dbg !1571
  %83 = icmp ne i8* %82, null, !dbg !1572
  br i1 %83, label %84, label %94, !dbg !1573

; <label>:84:                                     ; preds = %79
  %85 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1574
  %86 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %85, i32 0, i32 34, !dbg !1576
  %87 = load i8*, i8** %86, align 8, !dbg !1576
  %88 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1577
  %89 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %88, i32 0, i32 24, !dbg !1578
  %90 = load i32, i32* %89, align 4, !dbg !1578
  %91 = sub nsw i32 %90, 1, !dbg !1579
  %92 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %87, i32 0, i32 %91), !dbg !1580
  %93 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %92, i32 0, i32 (i32)* @term_putchar), !dbg !1581
  br label %114, !dbg !1583

; <label>:94:                                     ; preds = %79
  %95 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1584
  %96 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %95, i32 0, i32 35, !dbg !1587
  %97 = load i8*, i8** %96, align 8, !dbg !1587
  %98 = icmp ne i8* %97, null, !dbg !1588
  br i1 %98, label %99, label %113, !dbg !1589

; <label>:99:                                     ; preds = %94
  %100 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1590
  %101 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %100, i32 0, i32 35, !dbg !1592
  %102 = load i8*, i8** %101, align 8, !dbg !1592
  %103 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1593
  %104 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %103, i32 0, i32 24, !dbg !1594
  %105 = load i32, i32* %104, align 4, !dbg !1594
  %106 = sub nsw i32 %105, 1, !dbg !1595
  %107 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1596
  %108 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %107, i32 0, i32 23, !dbg !1597
  %109 = load i32, i32* %108, align 8, !dbg !1597
  %110 = sub nsw i32 %109, 1, !dbg !1598
  %111 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %102, i32 0, i32 %106, i32 0, i32 %110), !dbg !1599
  %112 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %111, i32 0, i32 (i32)* @term_putchar), !dbg !1600
  br label %113, !dbg !1602

; <label>:113:                                    ; preds = %99, %94
  br label %114

; <label>:114:                                    ; preds = %113, %84
  ret void, !dbg !1603
}

; Function Attrs: nounwind uwtable
define internal void @_scroll_line(%struct._TERM_REC*, i32, i32, i32) #0 !dbg !1604 {
  %5 = alloca %struct._TERM_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %5, metadata !1605, metadata !216), !dbg !1606
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1607, metadata !216), !dbg !1608
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1609, metadata !216), !dbg !1610
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1611, metadata !216), !dbg !1612
  %9 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1613
  %10 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %9, i32 0, i32 34, !dbg !1615
  %11 = load i8*, i8** %10, align 8, !dbg !1615
  %12 = icmp ne i8* %11, null, !dbg !1616
  br i1 %12, label %13, label %21, !dbg !1617

; <label>:13:                                     ; preds = %4
  %14 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1618
  %15 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %14, i32 0, i32 34, !dbg !1620
  %16 = load i8*, i8** %15, align 8, !dbg !1620
  %17 = load i32, i32* %6, align 4, !dbg !1621
  %18 = load i32, i32* %7, align 4, !dbg !1622
  %19 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %16, i32 %17, i32 %18), !dbg !1623
  %20 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %19, i32 0, i32 (i32)* @term_putchar), !dbg !1624
  br label %39, !dbg !1626

; <label>:21:                                     ; preds = %4
  %22 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1627
  %23 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %22, i32 0, i32 35, !dbg !1630
  %24 = load i8*, i8** %23, align 8, !dbg !1630
  %25 = icmp ne i8* %24, null, !dbg !1631
  br i1 %25, label %26, label %38, !dbg !1632

; <label>:26:                                     ; preds = %21
  %27 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1633
  %28 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %27, i32 0, i32 35, !dbg !1635
  %29 = load i8*, i8** %28, align 8, !dbg !1635
  %30 = load i32, i32* %6, align 4, !dbg !1636
  %31 = load i32, i32* %7, align 4, !dbg !1637
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1638
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 23, !dbg !1639
  %34 = load i32, i32* %33, align 8, !dbg !1639
  %35 = sub nsw i32 %34, 1, !dbg !1640
  %36 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %29, i32 %30, i32 %31, i32 0, i32 %35), !dbg !1641
  %37 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %36, i32 0, i32 (i32)* @term_putchar), !dbg !1642
  br label %38, !dbg !1644

; <label>:38:                                     ; preds = %26, %21
  br label %39

; <label>:39:                                     ; preds = %38, %13
  %40 = load i32, i32* %8, align 4, !dbg !1645
  %41 = icmp sgt i32 %40, 0, !dbg !1647
  br i1 %41, label %42, label %70, !dbg !1648

; <label>:42:                                     ; preds = %39
  %43 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1649
  %44 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %43, i32 0, i32 0, !dbg !1651
  %45 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %44, align 8, !dbg !1651
  %46 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1652
  %47 = load i32, i32* %6, align 4, !dbg !1653
  call void %45(%struct._TERM_REC* %46, i32 0, i32 %47), !dbg !1649
  %48 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1654
  %49 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %48, i32 0, i32 42, !dbg !1655
  %50 = load i8*, i8** %49, align 8, !dbg !1655
  %51 = load i32, i32* %8, align 4, !dbg !1656
  %52 = load i32, i32* %8, align 4, !dbg !1657
  %53 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %50, i32 %51, i32 %52), !dbg !1658
  %54 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %53, i32 0, i32 (i32)* @term_putchar), !dbg !1659
  %55 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1661
  %56 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %55, i32 0, i32 0, !dbg !1662
  %57 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %56, align 8, !dbg !1662
  %58 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1663
  %59 = load i32, i32* %7, align 4, !dbg !1664
  %60 = load i32, i32* %8, align 4, !dbg !1665
  %61 = sub nsw i32 %59, %60, !dbg !1666
  %62 = add nsw i32 %61, 1, !dbg !1667
  call void %57(%struct._TERM_REC* %58, i32 0, i32 %62), !dbg !1661
  %63 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1668
  %64 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %63, i32 0, i32 40, !dbg !1669
  %65 = load i8*, i8** %64, align 8, !dbg !1669
  %66 = load i32, i32* %8, align 4, !dbg !1670
  %67 = load i32, i32* %8, align 4, !dbg !1671
  %68 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %65, i32 %66, i32 %67), !dbg !1672
  %69 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %68, i32 0, i32 (i32)* @term_putchar), !dbg !1673
  br label %106, !dbg !1674

; <label>:70:                                     ; preds = %39
  %71 = load i32, i32* %8, align 4, !dbg !1675
  %72 = icmp slt i32 %71, 0, !dbg !1678
  br i1 %72, label %73, label %105, !dbg !1675

; <label>:73:                                     ; preds = %70
  %74 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1679
  %75 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %74, i32 0, i32 0, !dbg !1681
  %76 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %75, align 8, !dbg !1681
  %77 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1682
  %78 = load i32, i32* %7, align 4, !dbg !1683
  %79 = load i32, i32* %8, align 4, !dbg !1684
  %80 = add nsw i32 %78, %79, !dbg !1685
  %81 = add nsw i32 %80, 1, !dbg !1686
  call void %76(%struct._TERM_REC* %77, i32 0, i32 %81), !dbg !1679
  %82 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1687
  %83 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %82, i32 0, i32 42, !dbg !1688
  %84 = load i8*, i8** %83, align 8, !dbg !1688
  %85 = load i32, i32* %8, align 4, !dbg !1689
  %86 = sub nsw i32 0, %85, !dbg !1690
  %87 = load i32, i32* %8, align 4, !dbg !1691
  %88 = sub nsw i32 0, %87, !dbg !1692
  %89 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %84, i32 %86, i32 %88), !dbg !1693
  %90 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %89, i32 0, i32 (i32)* @term_putchar), !dbg !1694
  %91 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1696
  %92 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %91, i32 0, i32 0, !dbg !1697
  %93 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %92, align 8, !dbg !1697
  %94 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1698
  %95 = load i32, i32* %6, align 4, !dbg !1699
  call void %93(%struct._TERM_REC* %94, i32 0, i32 %95), !dbg !1696
  %96 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1700
  %97 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %96, i32 0, i32 40, !dbg !1701
  %98 = load i8*, i8** %97, align 8, !dbg !1701
  %99 = load i32, i32* %8, align 4, !dbg !1702
  %100 = sub nsw i32 0, %99, !dbg !1703
  %101 = load i32, i32* %8, align 4, !dbg !1704
  %102 = sub nsw i32 0, %101, !dbg !1705
  %103 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %98, i32 %100, i32 %102), !dbg !1706
  %104 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %103, i32 0, i32 (i32)* @term_putchar), !dbg !1707
  br label %105, !dbg !1708

; <label>:105:                                    ; preds = %73, %70
  br label %106

; <label>:106:                                    ; preds = %105, %42
  %107 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1709
  %108 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %107, i32 0, i32 34, !dbg !1711
  %109 = load i8*, i8** %108, align 8, !dbg !1711
  %110 = icmp ne i8* %109, null, !dbg !1712
  br i1 %110, label %111, label %121, !dbg !1713

; <label>:111:                                    ; preds = %106
  %112 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1714
  %113 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %112, i32 0, i32 34, !dbg !1716
  %114 = load i8*, i8** %113, align 8, !dbg !1716
  %115 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1717
  %116 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %115, i32 0, i32 24, !dbg !1718
  %117 = load i32, i32* %116, align 4, !dbg !1718
  %118 = sub nsw i32 %117, 1, !dbg !1719
  %119 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %114, i32 0, i32 %118), !dbg !1720
  %120 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %119, i32 0, i32 (i32)* @term_putchar), !dbg !1721
  br label %141, !dbg !1723

; <label>:121:                                    ; preds = %106
  %122 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1724
  %123 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %122, i32 0, i32 35, !dbg !1727
  %124 = load i8*, i8** %123, align 8, !dbg !1727
  %125 = icmp ne i8* %124, null, !dbg !1728
  br i1 %125, label %126, label %140, !dbg !1729

; <label>:126:                                    ; preds = %121
  %127 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1730
  %128 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %127, i32 0, i32 35, !dbg !1732
  %129 = load i8*, i8** %128, align 8, !dbg !1732
  %130 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1733
  %131 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %130, i32 0, i32 24, !dbg !1734
  %132 = load i32, i32* %131, align 4, !dbg !1734
  %133 = sub nsw i32 %132, 1, !dbg !1735
  %134 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1736
  %135 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %134, i32 0, i32 23, !dbg !1737
  %136 = load i32, i32* %135, align 8, !dbg !1737
  %137 = sub nsw i32 %136, 1, !dbg !1738
  %138 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %129, i32 0, i32 %133, i32 0, i32 %137), !dbg !1739
  %139 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %138, i32 0, i32 (i32)* @term_putchar), !dbg !1740
  br label %140, !dbg !1742

; <label>:140:                                    ; preds = %126, %121
  br label %141

; <label>:141:                                    ; preds = %140, %111
  ret void, !dbg !1743
}

; Function Attrs: nounwind uwtable
define internal void @_scroll_region_1(%struct._TERM_REC*, i32, i32, i32) #0 !dbg !1744 {
  %5 = alloca %struct._TERM_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %5, metadata !1745, metadata !216), !dbg !1746
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1747, metadata !216), !dbg !1748
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1749, metadata !216), !dbg !1750
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1751, metadata !216), !dbg !1752
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1753, metadata !216), !dbg !1754
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1755
  %11 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %10, i32 0, i32 34, !dbg !1757
  %12 = load i8*, i8** %11, align 8, !dbg !1757
  %13 = icmp ne i8* %12, null, !dbg !1758
  br i1 %13, label %14, label %22, !dbg !1759

; <label>:14:                                     ; preds = %4
  %15 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1760
  %16 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %15, i32 0, i32 34, !dbg !1762
  %17 = load i8*, i8** %16, align 8, !dbg !1762
  %18 = load i32, i32* %6, align 4, !dbg !1763
  %19 = load i32, i32* %7, align 4, !dbg !1764
  %20 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %17, i32 %18, i32 %19), !dbg !1765
  %21 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %20, i32 0, i32 (i32)* @term_putchar), !dbg !1766
  br label %40, !dbg !1768

; <label>:22:                                     ; preds = %4
  %23 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1769
  %24 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %23, i32 0, i32 35, !dbg !1772
  %25 = load i8*, i8** %24, align 8, !dbg !1772
  %26 = icmp ne i8* %25, null, !dbg !1773
  br i1 %26, label %27, label %39, !dbg !1774

; <label>:27:                                     ; preds = %22
  %28 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1775
  %29 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %28, i32 0, i32 35, !dbg !1777
  %30 = load i8*, i8** %29, align 8, !dbg !1777
  %31 = load i32, i32* %6, align 4, !dbg !1778
  %32 = load i32, i32* %7, align 4, !dbg !1779
  %33 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1780
  %34 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %33, i32 0, i32 23, !dbg !1781
  %35 = load i32, i32* %34, align 8, !dbg !1781
  %36 = sub nsw i32 %35, 1, !dbg !1782
  %37 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %30, i32 %31, i32 %32, i32 0, i32 %36), !dbg !1783
  %38 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %37, i32 0, i32 (i32)* @term_putchar), !dbg !1784
  br label %39, !dbg !1786

; <label>:39:                                     ; preds = %27, %22
  br label %40

; <label>:40:                                     ; preds = %39, %14
  %41 = load i32, i32* %8, align 4, !dbg !1787
  %42 = icmp sgt i32 %41, 0, !dbg !1789
  br i1 %42, label %43, label %63, !dbg !1790

; <label>:43:                                     ; preds = %40
  %44 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1791
  %45 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %44, i32 0, i32 0, !dbg !1793
  %46 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %45, align 8, !dbg !1793
  %47 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1794
  %48 = load i32, i32* %7, align 4, !dbg !1795
  call void %46(%struct._TERM_REC* %47, i32 0, i32 %48), !dbg !1791
  store i32 0, i32* %9, align 4, !dbg !1796
  br label %49, !dbg !1798

; <label>:49:                                     ; preds = %59, %43
  %50 = load i32, i32* %9, align 4, !dbg !1799
  %51 = load i32, i32* %8, align 4, !dbg !1802
  %52 = icmp slt i32 %50, %51, !dbg !1803
  br i1 %52, label %53, label %62, !dbg !1804

; <label>:53:                                     ; preds = %49
  %54 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1805
  %55 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %54, i32 0, i32 38, !dbg !1806
  %56 = load i8*, i8** %55, align 8, !dbg !1806
  %57 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %56), !dbg !1807
  %58 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %57, i32 0, i32 (i32)* @term_putchar), !dbg !1808
  br label %59, !dbg !1809

; <label>:59:                                     ; preds = %53
  %60 = load i32, i32* %9, align 4, !dbg !1810
  %61 = add nsw i32 %60, 1, !dbg !1810
  store i32 %61, i32* %9, align 4, !dbg !1810
  br label %49, !dbg !1812, !llvm.loop !1813

; <label>:62:                                     ; preds = %49
  br label %87, !dbg !1815

; <label>:63:                                     ; preds = %40
  %64 = load i32, i32* %8, align 4, !dbg !1816
  %65 = icmp slt i32 %64, 0, !dbg !1819
  br i1 %65, label %66, label %86, !dbg !1816

; <label>:66:                                     ; preds = %63
  %67 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1820
  %68 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %67, i32 0, i32 0, !dbg !1822
  %69 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %68, align 8, !dbg !1822
  %70 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1823
  %71 = load i32, i32* %6, align 4, !dbg !1824
  call void %69(%struct._TERM_REC* %70, i32 0, i32 %71), !dbg !1820
  %72 = load i32, i32* %8, align 4, !dbg !1825
  store i32 %72, i32* %9, align 4, !dbg !1827
  br label %73, !dbg !1828

; <label>:73:                                     ; preds = %82, %66
  %74 = load i32, i32* %9, align 4, !dbg !1829
  %75 = icmp slt i32 %74, 0, !dbg !1832
  br i1 %75, label %76, label %85, !dbg !1833

; <label>:76:                                     ; preds = %73
  %77 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1834
  %78 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %77, i32 0, i32 36, !dbg !1835
  %79 = load i8*, i8** %78, align 8, !dbg !1835
  %80 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %79), !dbg !1836
  %81 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %80, i32 0, i32 (i32)* @term_putchar), !dbg !1837
  br label %82, !dbg !1838

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* %9, align 4, !dbg !1839
  %84 = add nsw i32 %83, 1, !dbg !1839
  store i32 %84, i32* %9, align 4, !dbg !1839
  br label %73, !dbg !1841, !llvm.loop !1842

; <label>:85:                                     ; preds = %73
  br label %86, !dbg !1844

; <label>:86:                                     ; preds = %85, %63
  br label %87

; <label>:87:                                     ; preds = %86, %62
  %88 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1845
  %89 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %88, i32 0, i32 34, !dbg !1847
  %90 = load i8*, i8** %89, align 8, !dbg !1847
  %91 = icmp ne i8* %90, null, !dbg !1848
  br i1 %91, label %92, label %102, !dbg !1849

; <label>:92:                                     ; preds = %87
  %93 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1850
  %94 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %93, i32 0, i32 34, !dbg !1852
  %95 = load i8*, i8** %94, align 8, !dbg !1852
  %96 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1853
  %97 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %96, i32 0, i32 24, !dbg !1854
  %98 = load i32, i32* %97, align 4, !dbg !1854
  %99 = sub nsw i32 %98, 1, !dbg !1855
  %100 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %95, i32 0, i32 %99), !dbg !1856
  %101 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %100, i32 0, i32 (i32)* @term_putchar), !dbg !1857
  br label %122, !dbg !1859

; <label>:102:                                    ; preds = %87
  %103 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1860
  %104 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %103, i32 0, i32 35, !dbg !1863
  %105 = load i8*, i8** %104, align 8, !dbg !1863
  %106 = icmp ne i8* %105, null, !dbg !1864
  br i1 %106, label %107, label %121, !dbg !1865

; <label>:107:                                    ; preds = %102
  %108 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1866
  %109 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %108, i32 0, i32 35, !dbg !1868
  %110 = load i8*, i8** %109, align 8, !dbg !1868
  %111 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1869
  %112 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %111, i32 0, i32 24, !dbg !1870
  %113 = load i32, i32* %112, align 4, !dbg !1870
  %114 = sub nsw i32 %113, 1, !dbg !1871
  %115 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1872
  %116 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %115, i32 0, i32 23, !dbg !1873
  %117 = load i32, i32* %116, align 8, !dbg !1873
  %118 = sub nsw i32 %117, 1, !dbg !1874
  %119 = call i8* (i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, i32, i32, ...)*)(i8* %110, i32 0, i32 %114, i32 0, i32 %118), !dbg !1875
  %120 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %119, i32 0, i32 (i32)* @term_putchar), !dbg !1876
  br label %121, !dbg !1878

; <label>:121:                                    ; preds = %107, %102
  br label %122

; <label>:122:                                    ; preds = %121, %92
  ret void, !dbg !1879
}

; Function Attrs: nounwind uwtable
define internal void @_scroll_line_1(%struct._TERM_REC*, i32, i32, i32) #0 !dbg !1880 {
  %5 = alloca %struct._TERM_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %5, metadata !1881, metadata !216), !dbg !1882
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1883, metadata !216), !dbg !1884
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1885, metadata !216), !dbg !1886
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1887, metadata !216), !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1889, metadata !216), !dbg !1890
  %10 = load i32, i32* %8, align 4, !dbg !1891
  %11 = icmp sgt i32 %10, 0, !dbg !1893
  br i1 %11, label %12, label %54, !dbg !1894

; <label>:12:                                     ; preds = %4
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1895
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 0, !dbg !1897
  %15 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %14, align 8, !dbg !1897
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1898
  %17 = load i32, i32* %6, align 4, !dbg !1899
  call void %15(%struct._TERM_REC* %16, i32 0, i32 %17), !dbg !1895
  store i32 0, i32* %9, align 4, !dbg !1900
  br label %18, !dbg !1902

; <label>:18:                                     ; preds = %28, %12
  %19 = load i32, i32* %9, align 4, !dbg !1903
  %20 = load i32, i32* %8, align 4, !dbg !1906
  %21 = icmp slt i32 %19, %20, !dbg !1907
  br i1 %21, label %22, label %31, !dbg !1908

; <label>:22:                                     ; preds = %18
  %23 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1909
  %24 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %23, i32 0, i32 43, !dbg !1910
  %25 = load i8*, i8** %24, align 8, !dbg !1910
  %26 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %25), !dbg !1911
  %27 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %26, i32 0, i32 (i32)* @term_putchar), !dbg !1912
  br label %28, !dbg !1913

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %9, align 4, !dbg !1914
  %30 = add nsw i32 %29, 1, !dbg !1914
  store i32 %30, i32* %9, align 4, !dbg !1914
  br label %18, !dbg !1916, !llvm.loop !1917

; <label>:31:                                     ; preds = %18
  %32 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1919
  %33 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %32, i32 0, i32 0, !dbg !1920
  %34 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %33, align 8, !dbg !1920
  %35 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1921
  %36 = load i32, i32* %7, align 4, !dbg !1922
  %37 = load i32, i32* %8, align 4, !dbg !1923
  %38 = sub nsw i32 %36, %37, !dbg !1924
  %39 = add nsw i32 %38, 1, !dbg !1925
  call void %34(%struct._TERM_REC* %35, i32 0, i32 %39), !dbg !1919
  store i32 0, i32* %9, align 4, !dbg !1926
  br label %40, !dbg !1928

; <label>:40:                                     ; preds = %50, %31
  %41 = load i32, i32* %9, align 4, !dbg !1929
  %42 = load i32, i32* %8, align 4, !dbg !1932
  %43 = icmp slt i32 %41, %42, !dbg !1933
  br i1 %43, label %44, label %53, !dbg !1934

; <label>:44:                                     ; preds = %40
  %45 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1935
  %46 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %45, i32 0, i32 41, !dbg !1936
  %47 = load i8*, i8** %46, align 8, !dbg !1936
  %48 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %47), !dbg !1937
  %49 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %48, i32 0, i32 (i32)* @term_putchar), !dbg !1938
  br label %50, !dbg !1939

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %9, align 4, !dbg !1940
  %52 = add nsw i32 %51, 1, !dbg !1940
  store i32 %52, i32* %9, align 4, !dbg !1940
  br label %40, !dbg !1942, !llvm.loop !1943

; <label>:53:                                     ; preds = %40
  br label %100, !dbg !1945

; <label>:54:                                     ; preds = %4
  %55 = load i32, i32* %8, align 4, !dbg !1946
  %56 = icmp slt i32 %55, 0, !dbg !1949
  br i1 %56, label %57, label %99, !dbg !1946

; <label>:57:                                     ; preds = %54
  %58 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1950
  %59 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %58, i32 0, i32 0, !dbg !1952
  %60 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %59, align 8, !dbg !1952
  %61 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1953
  %62 = load i32, i32* %7, align 4, !dbg !1954
  %63 = load i32, i32* %8, align 4, !dbg !1955
  %64 = add nsw i32 %62, %63, !dbg !1956
  %65 = add nsw i32 %64, 1, !dbg !1957
  call void %60(%struct._TERM_REC* %61, i32 0, i32 %65), !dbg !1950
  %66 = load i32, i32* %8, align 4, !dbg !1958
  store i32 %66, i32* %9, align 4, !dbg !1960
  br label %67, !dbg !1961

; <label>:67:                                     ; preds = %76, %57
  %68 = load i32, i32* %9, align 4, !dbg !1962
  %69 = icmp slt i32 %68, 0, !dbg !1965
  br i1 %69, label %70, label %79, !dbg !1966

; <label>:70:                                     ; preds = %67
  %71 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1967
  %72 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %71, i32 0, i32 43, !dbg !1968
  %73 = load i8*, i8** %72, align 8, !dbg !1968
  %74 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %73), !dbg !1969
  %75 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %74, i32 0, i32 (i32)* @term_putchar), !dbg !1970
  br label %76, !dbg !1971

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %9, align 4, !dbg !1972
  %78 = add nsw i32 %77, 1, !dbg !1972
  store i32 %78, i32* %9, align 4, !dbg !1972
  br label %67, !dbg !1974, !llvm.loop !1975

; <label>:79:                                     ; preds = %67
  %80 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1977
  %81 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %80, i32 0, i32 0, !dbg !1978
  %82 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %81, align 8, !dbg !1978
  %83 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1979
  %84 = load i32, i32* %6, align 4, !dbg !1980
  call void %82(%struct._TERM_REC* %83, i32 0, i32 %84), !dbg !1977
  %85 = load i32, i32* %8, align 4, !dbg !1981
  store i32 %85, i32* %9, align 4, !dbg !1983
  br label %86, !dbg !1984

; <label>:86:                                     ; preds = %95, %79
  %87 = load i32, i32* %9, align 4, !dbg !1985
  %88 = icmp slt i32 %87, 0, !dbg !1988
  br i1 %88, label %89, label %98, !dbg !1989

; <label>:89:                                     ; preds = %86
  %90 = load %struct._TERM_REC*, %struct._TERM_REC** %5, align 8, !dbg !1990
  %91 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %90, i32 0, i32 41, !dbg !1991
  %92 = load i8*, i8** %91, align 8, !dbg !1991
  %93 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %92), !dbg !1992
  %94 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %93, i32 0, i32 (i32)* @term_putchar), !dbg !1993
  br label %95, !dbg !1994

; <label>:95:                                     ; preds = %89
  %96 = load i32, i32* %9, align 4, !dbg !1995
  %97 = add nsw i32 %96, 1, !dbg !1995
  store i32 %97, i32* %9, align 4, !dbg !1995
  br label %86, !dbg !1997, !llvm.loop !1998

; <label>:98:                                     ; preds = %86
  br label %99, !dbg !2000

; <label>:99:                                     ; preds = %98, %54
  br label %100

; <label>:100:                                    ; preds = %99, %53
  ret void, !dbg !2001
}

; Function Attrs: nounwind uwtable
define internal void @_clear_screen(%struct._TERM_REC*) #0 !dbg !2002 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2003, metadata !216), !dbg !2004
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2005
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 44, !dbg !2006
  %5 = load i8*, i8** %4, align 8, !dbg !2006
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2007
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2008
  ret void, !dbg !2010
}

; Function Attrs: nounwind uwtable
define internal void @_clear_eos(%struct._TERM_REC*) #0 !dbg !2011 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2012, metadata !216), !dbg !2013
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2014
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 0, !dbg !2015
  %5 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %4, align 8, !dbg !2015
  %6 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2016
  call void %5(%struct._TERM_REC* %6, i32 0, i32 0), !dbg !2014
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2017
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 45, !dbg !2018
  %9 = load i8*, i8** %8, align 8, !dbg !2018
  %10 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %9), !dbg !2019
  %11 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %10, i32 0, i32 (i32)* @term_putchar), !dbg !2020
  ret void, !dbg !2022
}

; Function Attrs: nounwind uwtable
define internal void @_clear_del(%struct._TERM_REC*) #0 !dbg !2023 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2024, metadata !216), !dbg !2025
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2026
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 0, !dbg !2027
  %5 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %4, align 8, !dbg !2027
  %6 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2028
  call void %5(%struct._TERM_REC* %6, i32 0, i32 0), !dbg !2026
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2029
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 42, !dbg !2030
  %9 = load i8*, i8** %8, align 8, !dbg !2030
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2031
  %11 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %10, i32 0, i32 24, !dbg !2032
  %12 = load i32, i32* %11, align 4, !dbg !2032
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2033
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 24, !dbg !2034
  %15 = load i32, i32* %14, align 4, !dbg !2034
  %16 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %9, i32 %12, i32 %15), !dbg !2035
  %17 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %16, i32 0, i32 (i32)* @term_putchar), !dbg !2036
  ret void, !dbg !2038
}

; Function Attrs: nounwind uwtable
define internal void @_clear_del_1(%struct._TERM_REC*) #0 !dbg !2039 {
  %2 = alloca %struct._TERM_REC*, align 8
  %3 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2040, metadata !216), !dbg !2041
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2042, metadata !216), !dbg !2043
  %4 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2044
  %5 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %4, i32 0, i32 0, !dbg !2045
  %6 = load void (%struct._TERM_REC*, i32, i32)*, void (%struct._TERM_REC*, i32, i32)** %5, align 8, !dbg !2045
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2046
  call void %6(%struct._TERM_REC* %7, i32 0, i32 0), !dbg !2044
  store i32 0, i32* %3, align 4, !dbg !2047
  br label %8, !dbg !2049

; <label>:8:                                      ; preds = %20, %1
  %9 = load i32, i32* %3, align 4, !dbg !2050
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2053
  %11 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %10, i32 0, i32 24, !dbg !2054
  %12 = load i32, i32* %11, align 4, !dbg !2054
  %13 = icmp slt i32 %9, %12, !dbg !2055
  br i1 %13, label %14, label %23, !dbg !2056

; <label>:14:                                     ; preds = %8
  %15 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2057
  %16 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %15, i32 0, i32 43, !dbg !2058
  %17 = load i8*, i8** %16, align 8, !dbg !2058
  %18 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %17), !dbg !2059
  %19 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %18, i32 0, i32 (i32)* @term_putchar), !dbg !2060
  br label %20, !dbg !2061

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %3, align 4, !dbg !2062
  %22 = add nsw i32 %21, 1, !dbg !2062
  store i32 %22, i32* %3, align 4, !dbg !2062
  br label %8, !dbg !2064, !llvm.loop !2065

; <label>:23:                                     ; preds = %8
  ret void, !dbg !2067
}

; Function Attrs: nounwind uwtable
define internal void @_clrtoeol(%struct._TERM_REC*) #0 !dbg !2068 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2069, metadata !216), !dbg !2070
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2071
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 46, !dbg !2072
  %5 = load i8*, i8** %4, align 8, !dbg !2072
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2073
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2074
  ret void, !dbg !2076
}

; Function Attrs: nounwind uwtable
define internal void @_repeat(%struct._TERM_REC*, i8 signext, i32) #0 !dbg !2077 {
  %4 = alloca %struct._TERM_REC*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %4, metadata !2078, metadata !216), !dbg !2079
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2080, metadata !216), !dbg !2081
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2082, metadata !216), !dbg !2083
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !2084
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 47, !dbg !2085
  %9 = load i8*, i8** %8, align 8, !dbg !2085
  %10 = load i8, i8* %5, align 1, !dbg !2086
  %11 = sext i8 %10 to i32, !dbg !2086
  %12 = load i32, i32* %6, align 4, !dbg !2087
  %13 = call i8* (i8*, i32, i32, ...) bitcast (i8* (...)* @tparm to i8* (i8*, i32, i32, ...)*)(i8* %9, i32 %11, i32 %12), !dbg !2088
  %14 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %13, i32 0, i32 (i32)* @term_putchar), !dbg !2089
  ret void, !dbg !2091
}

; Function Attrs: nounwind uwtable
define internal void @_repeat_manual(%struct._TERM_REC*, i8 signext, i32) #0 !dbg !2092 {
  %4 = alloca %struct._TERM_REC*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %4, metadata !2093, metadata !216), !dbg !2094
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2095, metadata !216), !dbg !2096
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2097, metadata !216), !dbg !2098
  br label %7, !dbg !2099

; <label>:7:                                      ; preds = %10, %3
  %8 = load i32, i32* %6, align 4, !dbg !2100
  %9 = icmp sgt i32 %8, 0, !dbg !2102
  br i1 %9, label %10, label %19, !dbg !2103

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* %5, align 1, !dbg !2104
  %12 = sext i8 %11 to i32, !dbg !2104
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** %4, align 8, !dbg !2104
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 20, !dbg !2106
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !2106
  %16 = call i32 @_IO_putc(i32 %12, %struct._IO_FILE* %15), !dbg !2104
  %17 = load i32, i32* %6, align 4, !dbg !2107
  %18 = add nsw i32 %17, -1, !dbg !2107
  store i32 %18, i32* %6, align 4, !dbg !2107
  br label %7, !dbg !2108, !llvm.loop !2110

; <label>:19:                                     ; preds = %7
  ret void, !dbg !2111
}

; Function Attrs: nounwind uwtable
define internal void @_set_blink(%struct._TERM_REC*) #0 !dbg !2112 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2113, metadata !216), !dbg !2114
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2115
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 57, !dbg !2116
  %5 = load i8*, i8** %4, align 8, !dbg !2116
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2117
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2118
  ret void, !dbg !2120
}

; Function Attrs: nounwind uwtable
define internal void @_ignore(%struct._TERM_REC*) #0 !dbg !2121 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2122, metadata !216), !dbg !2123
  ret void, !dbg !2124
}

; Function Attrs: nounwind uwtable
define internal void @_set_bold(%struct._TERM_REC*) #0 !dbg !2125 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2126, metadata !216), !dbg !2127
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2128
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 56, !dbg !2129
  %5 = load i8*, i8** %4, align 8, !dbg !2129
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2130
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2131
  ret void, !dbg !2133
}

; Function Attrs: nounwind uwtable
define internal void @_set_reverse(%struct._TERM_REC*) #0 !dbg !2134 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2135, metadata !216), !dbg !2136
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2137
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 58, !dbg !2138
  %5 = load i8*, i8** %4, align 8, !dbg !2138
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2139
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2140
  ret void, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal void @_set_standout_on(%struct._TERM_REC*) #0 !dbg !2143 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2144, metadata !216), !dbg !2145
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2146
  call void @_set_standout(%struct._TERM_REC* %3, i32 1), !dbg !2147
  ret void, !dbg !2148
}

; Function Attrs: nounwind uwtable
define internal void @_set_uline(%struct._TERM_REC*, i32) #0 !dbg !2149 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !2150, metadata !216), !dbg !2151
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2152, metadata !216), !dbg !2153
  %5 = load i32, i32* %4, align 4, !dbg !2154
  %6 = icmp ne i32 %5, 0, !dbg !2154
  br i1 %6, label %7, label %11, !dbg !2154

; <label>:7:                                      ; preds = %2
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2155
  %9 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %8, i32 0, i32 50, !dbg !2157
  %10 = load i8*, i8** %9, align 8, !dbg !2157
  br label %15, !dbg !2158

; <label>:11:                                     ; preds = %2
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2159
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 51, !dbg !2161
  %14 = load i8*, i8** %13, align 8, !dbg !2161
  br label %15, !dbg !2162

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i8* [ %10, %7 ], [ %14, %11 ], !dbg !2163
  %17 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %16), !dbg !2165
  %18 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %17, i32 0, i32 (i32)* @term_putchar), !dbg !2166
  ret void, !dbg !2168
}

; Function Attrs: nounwind uwtable
define internal void @_set_standout(%struct._TERM_REC*, i32) #0 !dbg !2169 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !2170, metadata !216), !dbg !2171
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2172, metadata !216), !dbg !2173
  %5 = load i32, i32* %4, align 4, !dbg !2174
  %6 = icmp ne i32 %5, 0, !dbg !2174
  br i1 %6, label %7, label %11, !dbg !2174

; <label>:7:                                      ; preds = %2
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2175
  %9 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %8, i32 0, i32 52, !dbg !2177
  %10 = load i8*, i8** %9, align 8, !dbg !2177
  br label %15, !dbg !2178

; <label>:11:                                     ; preds = %2
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2179
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 53, !dbg !2181
  %14 = load i8*, i8** %13, align 8, !dbg !2181
  br label %15, !dbg !2182

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i8* [ %10, %7 ], [ %14, %11 ], !dbg !2183
  %17 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %16), !dbg !2185
  %18 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %17, i32 0, i32 (i32)* @term_putchar), !dbg !2186
  ret void, !dbg !2188
}

; Function Attrs: nounwind uwtable
define internal void @_set_italic(%struct._TERM_REC*, i32) #0 !dbg !2189 {
  %3 = alloca %struct._TERM_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._TERM_REC* %0, %struct._TERM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %3, metadata !2190, metadata !216), !dbg !2191
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2192, metadata !216), !dbg !2193
  %5 = load i32, i32* %4, align 4, !dbg !2194
  %6 = icmp ne i32 %5, 0, !dbg !2194
  br i1 %6, label %7, label %11, !dbg !2194

; <label>:7:                                      ; preds = %2
  %8 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2195
  %9 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %8, i32 0, i32 54, !dbg !2197
  %10 = load i8*, i8** %9, align 8, !dbg !2197
  br label %15, !dbg !2198

; <label>:11:                                     ; preds = %2
  %12 = load %struct._TERM_REC*, %struct._TERM_REC** %3, align 8, !dbg !2199
  %13 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %12, i32 0, i32 55, !dbg !2201
  %14 = load i8*, i8** %13, align 8, !dbg !2201
  br label %15, !dbg !2202

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i8* [ %10, %7 ], [ %14, %11 ], !dbg !2203
  %17 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %16), !dbg !2205
  %18 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %17, i32 0, i32 (i32)* @term_putchar), !dbg !2206
  ret void, !dbg !2208
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @_set_normal(%struct._TERM_REC*) #0 !dbg !2209 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2210, metadata !216), !dbg !2211
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2212
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 65, !dbg !2213
  %5 = load i8*, i8** %4, align 8, !dbg !2213
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2214
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2215
  ret void, !dbg !2217
}

; Function Attrs: nounwind uwtable
define internal void @_beep(%struct._TERM_REC*) #0 !dbg !2218 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2219, metadata !216), !dbg !2220
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2221
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 66, !dbg !2222
  %5 = load i8*, i8** %4, align 8, !dbg !2222
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @tparm to i8* (i8*, ...)*)(i8* %5), !dbg !2223
  %7 = call i32 (i8*, i32, i32 (i32)*, ...) bitcast (i32 (...)* @tputs to i32 (i8*, i32, i32 (i32)*, ...)*)(i8* %6, i32 0, i32 (i32)* @term_putchar), !dbg !2224
  ret void, !dbg !2226
}

; Function Attrs: nounwind uwtable
define internal void @terminfo_input_init0(%struct._TERM_REC*) #0 !dbg !2227 {
  %2 = alloca %struct._TERM_REC*, align 8
  store %struct._TERM_REC* %0, %struct._TERM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TERM_REC** %2, metadata !2228, metadata !216), !dbg !2229
  %3 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2230
  %4 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %3, i32 0, i32 19, !dbg !2231
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2231
  %6 = call i32 @fileno(%struct._IO_FILE* %5) #6, !dbg !2232
  %7 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2233
  %8 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %7, i32 0, i32 22, !dbg !2234
  %9 = call i32 @tcgetattr(i32 %6, %struct.termios* %8) #6, !dbg !2235
  %10 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2237
  %11 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %10, i32 0, i32 21, !dbg !2238
  %12 = bitcast %struct.termios* %11 to i8*, !dbg !2239
  %13 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2240
  %14 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %13, i32 0, i32 22, !dbg !2241
  %15 = bitcast %struct.termios* %14 to i8*, !dbg !2239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 60, i32 4, i1 false), !dbg !2239
  %16 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2242
  %17 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %16, i32 0, i32 21, !dbg !2243
  %18 = getelementptr inbounds %struct.termios, %struct.termios* %17, i32 0, i32 3, !dbg !2244
  %19 = load i32, i32* %18, align 4, !dbg !2245
  %20 = and i32 %19, -11, !dbg !2245
  store i32 %20, i32* %18, align 4, !dbg !2245
  %21 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2246
  %22 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %21, i32 0, i32 21, !dbg !2247
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 0, !dbg !2248
  %24 = load i32, i32* %23, align 8, !dbg !2249
  %25 = and i32 %24, -5377, !dbg !2249
  store i32 %25, i32* %23, align 8, !dbg !2249
  %26 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2250
  %27 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %26, i32 0, i32 21, !dbg !2251
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %27, i32 0, i32 5, !dbg !2252
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 6, !dbg !2250
  store i8 1, i8* %29, align 1, !dbg !2253
  %30 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2254
  %31 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %30, i32 0, i32 21, !dbg !2255
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %31, i32 0, i32 5, !dbg !2256
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %32, i64 0, i64 5, !dbg !2254
  store i8 0, i8* %33, align 1, !dbg !2257
  %34 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2258
  %35 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %34, i32 0, i32 21, !dbg !2259
  %36 = getelementptr inbounds %struct.termios, %struct.termios* %35, i32 0, i32 5, !dbg !2260
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %36, i64 0, i64 0, !dbg !2258
  store i8 0, i8* %37, align 1, !dbg !2261
  %38 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2262
  %39 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %38, i32 0, i32 21, !dbg !2263
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %39, i32 0, i32 5, !dbg !2264
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %40, i64 0, i64 1, !dbg !2262
  store i8 0, i8* %41, align 1, !dbg !2265
  %42 = load %struct._TERM_REC*, %struct._TERM_REC** %2, align 8, !dbg !2266
  %43 = getelementptr inbounds %struct._TERM_REC, %struct._TERM_REC* %42, i32 0, i32 21, !dbg !2267
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %43, i32 0, i32 5, !dbg !2268
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %44, i64 0, i64 10, !dbg !2266
  store i8 0, i8* %45, align 1, !dbg !2269
  ret void, !dbg !2270
}

declare i32 @tigetflag(...) #2

declare i32 @tigetnum(...) #2

declare i8* @tigetstr(...) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!212, !213}
!llvm.ident = !{!214}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !193)
!1 = !DIFile(filename: "line372-terminfo-core.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !8, !186, !188, !191, !192, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_REC", file: !10, line: 24, baseType: !11)
!10 = !DIFile(filename: "terminfo-core.h", directory: "/home/lichi/Desktop/irssi/task1")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_REC", file: !10, line: 26, size: 21504, align: 64, elements: !12)
!12 = !{!13, !18, !22, !26, !30, !34, !35, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !53, !54, !114, !115, !135, !136, !137, !138, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !11, file: !10, line: 28, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !8, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "move_relative", scope: !11, file: !10, line: 29, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !8, !17, !17, !17, !17}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "set_cursor_visible", scope: !11, file: !10, line: 30, baseType: !23, size: 64, align: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !8, !17}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !11, file: !10, line: 31, baseType: !27, size: 64, align: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !8, !17, !17, !17}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !11, file: !10, line: 33, baseType: !31, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !8}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "clrtoeol", scope: !11, file: !10, line: 34, baseType: !31, size: 64, align: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !11, file: !10, line: 35, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !8, !7, !17}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "set_fg", scope: !11, file: !10, line: 37, baseType: !23, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "set_bg", scope: !11, file: !10, line: 38, baseType: !23, size: 64, align: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "set_normal", scope: !11, file: !10, line: 39, baseType: !31, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "set_blink", scope: !11, file: !10, line: 40, baseType: !31, size: 64, align: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "set_bold", scope: !11, file: !10, line: 41, baseType: !31, size: 64, align: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "set_reverse", scope: !11, file: !10, line: 42, baseType: !31, size: 64, align: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "set_uline", scope: !11, file: !10, line: 43, baseType: !23, size: 64, align: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "set_standout", scope: !11, file: !10, line: 44, baseType: !23, size: 64, align: 64, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "set_italic", scope: !11, file: !10, line: 45, baseType: !23, size: 64, align: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "beep", scope: !11, file: !10, line: 47, baseType: !31, size: 64, align: 64, offset: 1024)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "buffer1", scope: !11, file: !10, line: 50, baseType: !50, size: 8192, align: 8, offset: 1088)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, align: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1024)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "buffer2", scope: !11, file: !10, line: 50, baseType: !50, size: 8192, align: 8, offset: 9280)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !11, file: !10, line: 52, baseType: !55, size: 64, align: 64, offset: 17472)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !57, line: 48, baseType: !58)
!57 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 241, size: 1728, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !81, !82, !83, !84, !88, !90, !92, !96, !99, !101, !102, !103, !104, !105, !109, !110}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 242, baseType: !17, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 247, baseType: !6, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 248, baseType: !6, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 249, baseType: !6, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 250, baseType: !6, size: 64, align: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 251, baseType: !6, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 252, baseType: !6, size: 64, align: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 253, baseType: !6, size: 64, align: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 254, baseType: !6, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 256, baseType: !6, size: 64, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 257, baseType: !6, size: 64, align: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 258, baseType: !6, size: 64, align: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 260, baseType: !74, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 156, size: 192, align: 64, elements: !76)
!76 = !{!77, !78, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !75, file: !59, line: 157, baseType: !74, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !75, file: !59, line: 158, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !75, file: !59, line: 162, baseType: !17, size: 32, align: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 262, baseType: !79, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 264, baseType: !17, size: 32, align: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 268, baseType: !17, size: 32, align: 32, offset: 928)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 270, baseType: !85, size: 64, align: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !86, line: 131, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 274, baseType: !89, size: 16, align: 16, offset: 1024)
!89 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 275, baseType: !91, size: 8, align: 8, offset: 1040)
!91 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 276, baseType: !93, size: 8, align: 8, offset: 1048)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 280, baseType: !97, size: 64, align: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 150, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 289, baseType: !100, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !86, line: 132, baseType: !87)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !58, file: !59, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !58, file: !59, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !58, file: !59, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !58, file: !59, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 302, baseType: !106, size: 64, align: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 216, baseType: !108)
!107 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!108 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 303, baseType: !17, size: 32, align: 32, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 305, baseType: !111, size: 160, align: 8, offset: 1568)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 20)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !11, file: !10, line: 52, baseType: !55, size: 64, align: 64, offset: 17536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tio", scope: !11, file: !10, line: 53, baseType: !116, size: 480, align: 32, offset: 17600)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !117, line: 28, size: 480, align: 32, elements: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !{!119, !122, !123, !124, !125, !128, !132, !134}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !116, file: !117, line: 30, baseType: !120, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !117, line: 25, baseType: !121)
!121 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !116, file: !117, line: 31, baseType: !120, size: 32, align: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !116, file: !117, line: 32, baseType: !120, size: 32, align: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !116, file: !117, line: 33, baseType: !120, size: 32, align: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !116, file: !117, line: 34, baseType: !126, size: 8, align: 8, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !117, line: 23, baseType: !127)
!127 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !116, file: !117, line: 35, baseType: !129, size: 256, align: 8, offset: 136)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !116, file: !117, line: 36, baseType: !133, size: 32, align: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !117, line: 24, baseType: !121)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !116, file: !117, line: 37, baseType: !133, size: 32, align: 32, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "old_tio", scope: !11, file: !10, line: 53, baseType: !116, size: 480, align: 32, offset: 18080)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !11, file: !10, line: 56, baseType: !17, size: 32, align: 32, offset: 18560)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !11, file: !10, line: 56, baseType: !17, size: 32, align: 32, offset: 18592)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smcup", scope: !11, file: !10, line: 59, baseType: !139, size: 64, align: 64, offset: 18624)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmcup", scope: !11, file: !10, line: 59, baseType: !139, size: 64, align: 64, offset: 18688)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cup", scope: !11, file: !10, line: 59, baseType: !139, size: 64, align: 64, offset: 18752)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "TI_hpa", scope: !11, file: !10, line: 60, baseType: !139, size: 64, align: 64, offset: 18816)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "TI_vpa", scope: !11, file: !10, line: 60, baseType: !139, size: 64, align: 64, offset: 18880)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cub1", scope: !11, file: !10, line: 60, baseType: !139, size: 64, align: 64, offset: 18944)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cuf1", scope: !11, file: !10, line: 60, baseType: !139, size: 64, align: 64, offset: 19008)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "TI_civis", scope: !11, file: !10, line: 61, baseType: !139, size: 64, align: 64, offset: 19072)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "TI_cnorm", scope: !11, file: !10, line: 61, baseType: !139, size: 64, align: 64, offset: 19136)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "TI_csr", scope: !11, file: !10, line: 64, baseType: !139, size: 64, align: 64, offset: 19200)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "TI_wind", scope: !11, file: !10, line: 64, baseType: !139, size: 64, align: 64, offset: 19264)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ri", scope: !11, file: !10, line: 65, baseType: !139, size: 64, align: 64, offset: 19328)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rin", scope: !11, file: !10, line: 65, baseType: !139, size: 64, align: 64, offset: 19392)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ind", scope: !11, file: !10, line: 65, baseType: !139, size: 64, align: 64, offset: 19456)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "TI_indn", scope: !11, file: !10, line: 65, baseType: !139, size: 64, align: 64, offset: 19520)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "TI_il", scope: !11, file: !10, line: 66, baseType: !139, size: 64, align: 64, offset: 19584)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "TI_il1", scope: !11, file: !10, line: 66, baseType: !139, size: 64, align: 64, offset: 19648)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "TI_dl", scope: !11, file: !10, line: 66, baseType: !139, size: 64, align: 64, offset: 19712)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "TI_dl1", scope: !11, file: !10, line: 66, baseType: !139, size: 64, align: 64, offset: 19776)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "TI_clear", scope: !11, file: !10, line: 69, baseType: !139, size: 64, align: 64, offset: 19840)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ed", scope: !11, file: !10, line: 69, baseType: !139, size: 64, align: 64, offset: 19904)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "TI_el", scope: !11, file: !10, line: 72, baseType: !139, size: 64, align: 64, offset: 19968)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rep", scope: !11, file: !10, line: 75, baseType: !139, size: 64, align: 64, offset: 20032)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "TI_colors", scope: !11, file: !10, line: 78, baseType: !17, size: 32, align: 32, offset: 20096)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "TI_sgr0", scope: !11, file: !10, line: 79, baseType: !139, size: 64, align: 64, offset: 20160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smul", scope: !11, file: !10, line: 80, baseType: !139, size: 64, align: 64, offset: 20224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmul", scope: !11, file: !10, line: 80, baseType: !139, size: 64, align: 64, offset: 20288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smso", scope: !11, file: !10, line: 81, baseType: !139, size: 64, align: 64, offset: 20352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmso", scope: !11, file: !10, line: 81, baseType: !139, size: 64, align: 64, offset: 20416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "TI_sitm", scope: !11, file: !10, line: 82, baseType: !139, size: 64, align: 64, offset: 20480)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "TI_ritm", scope: !11, file: !10, line: 82, baseType: !139, size: 64, align: 64, offset: 20544)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bold", scope: !11, file: !10, line: 83, baseType: !139, size: 64, align: 64, offset: 20608)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "TI_blink", scope: !11, file: !10, line: 83, baseType: !139, size: 64, align: 64, offset: 20672)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rev", scope: !11, file: !10, line: 83, baseType: !139, size: 64, align: 64, offset: 20736)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setaf", scope: !11, file: !10, line: 84, baseType: !139, size: 64, align: 64, offset: 20800)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setab", scope: !11, file: !10, line: 84, baseType: !139, size: 64, align: 64, offset: 20864)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setf", scope: !11, file: !10, line: 84, baseType: !139, size: 64, align: 64, offset: 20928)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "TI_setb", scope: !11, file: !10, line: 84, baseType: !139, size: 64, align: 64, offset: 20992)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "TI_fg", scope: !11, file: !10, line: 87, baseType: !5, size: 64, align: 64, offset: 21056)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bg", scope: !11, file: !10, line: 87, baseType: !5, size: 64, align: 64, offset: 21120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "TI_normal", scope: !11, file: !10, line: 87, baseType: !6, size: 64, align: 64, offset: 21184)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "TI_bel", scope: !11, file: !10, line: 90, baseType: !6, size: 64, align: 64, offset: 21248)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "TI_smkx", scope: !11, file: !10, line: 93, baseType: !139, size: 64, align: 64, offset: 21312)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "TI_rmkx", scope: !11, file: !10, line: 94, baseType: !139, size: 64, align: 64, offset: 21376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "appkey_enabled", scope: !11, file: !10, line: 97, baseType: !17, size: 32, align: 32, offset: 21440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bracketed_paste_enabled", scope: !11, file: !10, line: 98, baseType: !17, size: 32, align: 32, offset: 21472)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !187, line: 77, baseType: !4)
!187 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint8", file: !190, line: 38, baseType: !127)
!190 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !187, line: 48, baseType: !87)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!193 = !{!194, !200, !201}
!194 = distinct !DIGlobalVariable(name: "ansitab", scope: !195, file: !196, line: 450, type: !197, isLocal: true, isDefinition: true, variable: [16 x i8]* @terminfo_setup_colors.ansitab)
!195 = distinct !DISubprogram(name: "terminfo_setup_colors", scope: !196, file: !196, line: 448, type: !24, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!196 = !DIFile(filename: "terminfo-core.c", directory: "/home/lichi/Desktop/irssi/task1")
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, align: 8, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 16)
!200 = distinct !DIGlobalVariable(name: "current_term", scope: !0, file: !196, line: 39, type: !8, isLocal: false, isDefinition: true, variable: %struct._TERM_REC** @current_term)
!201 = distinct !DIGlobalVariable(name: "tcaps", scope: !0, file: !196, line: 42, type: !202, isLocal: true, isDefinition: true, variable: [43 x %struct.TERMINFO_REC]* @tcaps)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 8256, align: 64, elements: !210)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERMINFO_REC", file: !196, line: 37, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 32, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ti_name", scope: !204, file: !196, line: 33, baseType: !139, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tc_name", scope: !204, file: !196, line: 34, baseType: !139, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !196, line: 35, baseType: !17, size: 32, align: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !204, file: !196, line: 36, baseType: !121, size: 32, align: 32, offset: 160)
!210 = !{!211}
!211 = !DISubrange(count: 43)
!212 = !{i32 2, !"Dwarf Version", i32 4}
!213 = !{i32 2, !"Debug Info Version", i32 3}
!214 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!215 = !DILocalVariable(name: "term", arg: 1, scope: !195, file: !196, line: 448, type: !8)
!216 = !DIExpression()
!217 = !DILocation(line: 448, column: 38, scope: !195)
!218 = !DILocalVariable(name: "force", arg: 2, scope: !195, file: !196, line: 448, type: !17)
!219 = !DILocation(line: 448, column: 48, scope: !195)
!220 = !DILocalVariable(name: "i", scope: !195, file: !196, line: 454, type: !121)
!221 = !DILocation(line: 454, column: 15, scope: !195)
!222 = !DILocalVariable(name: "color", scope: !195, file: !196, line: 454, type: !121)
!223 = !DILocation(line: 454, column: 18, scope: !195)
!224 = !DILocation(line: 456, column: 25, scope: !195)
!225 = !DILocation(line: 456, column: 2, scope: !195)
!226 = !DILocation(line: 458, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !195, file: !196, line: 458, column: 6)
!228 = !DILocation(line: 458, column: 12, scope: !227)
!229 = !DILocation(line: 458, column: 15, scope: !230)
!230 = !DILexicalBlockFile(scope: !227, file: !196, discriminator: 1)
!231 = !DILocation(line: 458, column: 21, scope: !230)
!232 = !DILocation(line: 458, column: 29, scope: !230)
!233 = !DILocation(line: 458, column: 36, scope: !230)
!234 = !DILocation(line: 458, column: 39, scope: !235)
!235 = !DILexicalBlockFile(scope: !227, file: !196, discriminator: 2)
!236 = !DILocation(line: 458, column: 45, scope: !235)
!237 = !DILocation(line: 458, column: 54, scope: !235)
!238 = !DILocation(line: 458, column: 6, scope: !235)
!239 = !DILocation(line: 459, column: 3, scope: !227)
!240 = !DILocation(line: 459, column: 9, scope: !227)
!241 = !DILocation(line: 459, column: 19, scope: !227)
!242 = !DILocation(line: 461, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !195, file: !196, line: 461, column: 6)
!244 = !DILocation(line: 461, column: 13, scope: !243)
!245 = !DILocation(line: 461, column: 21, scope: !243)
!246 = !DILocation(line: 461, column: 24, scope: !247)
!247 = !DILexicalBlockFile(scope: !243, file: !196, discriminator: 1)
!248 = !DILocation(line: 461, column: 30, scope: !247)
!249 = !DILocation(line: 461, column: 39, scope: !247)
!250 = !DILocation(line: 461, column: 42, scope: !251)
!251 = !DILexicalBlockFile(scope: !243, file: !196, discriminator: 2)
!252 = !DILocation(line: 461, column: 49, scope: !251)
!253 = !DILocation(line: 462, column: 7, scope: !243)
!254 = !DILocation(line: 462, column: 13, scope: !243)
!255 = !DILocation(line: 462, column: 23, scope: !243)
!256 = !DILocation(line: 461, column: 6, scope: !257)
!257 = !DILexicalBlockFile(scope: !195, file: !196, discriminator: 3)
!258 = !DILocation(line: 463, column: 43, scope: !259)
!259 = distinct !DILexicalBlock(scope: !243, file: !196, line: 462, column: 28)
!260 = !DILocation(line: 463, column: 49, scope: !259)
!261 = !DILocation(line: 463, column: 42, scope: !259)
!262 = !DILocation(line: 463, column: 29, scope: !259)
!263 = !DILocation(line: 463, column: 18, scope: !259)
!264 = !DILocation(line: 463, column: 3, scope: !259)
!265 = !DILocation(line: 463, column: 9, scope: !259)
!266 = !DILocation(line: 463, column: 15, scope: !259)
!267 = !DILocation(line: 464, column: 43, scope: !259)
!268 = !DILocation(line: 464, column: 49, scope: !259)
!269 = !DILocation(line: 464, column: 42, scope: !259)
!270 = !DILocation(line: 464, column: 29, scope: !259)
!271 = !DILocation(line: 464, column: 18, scope: !259)
!272 = !DILocation(line: 464, column: 3, scope: !259)
!273 = !DILocation(line: 464, column: 9, scope: !259)
!274 = !DILocation(line: 464, column: 15, scope: !259)
!275 = !DILocation(line: 465, column: 3, scope: !259)
!276 = !DILocation(line: 465, column: 9, scope: !259)
!277 = !DILocation(line: 465, column: 16, scope: !259)
!278 = !DILocation(line: 466, column: 3, scope: !259)
!279 = !DILocation(line: 466, column: 9, scope: !259)
!280 = !DILocation(line: 466, column: 16, scope: !259)
!281 = !DILocation(line: 467, column: 2, scope: !259)
!282 = !DILocation(line: 469, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !243, file: !196, line: 467, column: 9)
!284 = !DILocation(line: 469, column: 9, scope: !283)
!285 = !DILocation(line: 469, column: 19, scope: !283)
!286 = !DILocation(line: 470, column: 18, scope: !283)
!287 = !DILocation(line: 470, column: 24, scope: !283)
!288 = !DILocation(line: 470, column: 31, scope: !283)
!289 = !DILocation(line: 470, column: 3, scope: !283)
!290 = !DILocation(line: 470, column: 9, scope: !283)
!291 = !DILocation(line: 470, column: 16, scope: !283)
!292 = !DILocation(line: 473, column: 6, scope: !293)
!293 = distinct !DILexicalBlock(scope: !195, file: !196, line: 473, column: 6)
!294 = !DILocation(line: 473, column: 12, scope: !293)
!295 = !DILocation(line: 473, column: 6, scope: !195)
!296 = !DILocation(line: 474, column: 10, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !196, line: 474, column: 3)
!298 = distinct !DILexicalBlock(scope: !293, file: !196, line: 473, column: 22)
!299 = !DILocation(line: 474, column: 8, scope: !297)
!300 = !DILocation(line: 474, column: 15, scope: !301)
!301 = !DILexicalBlockFile(scope: !302, file: !196, discriminator: 1)
!302 = distinct !DILexicalBlock(scope: !297, file: !196, line: 474, column: 3)
!303 = !DILocation(line: 474, column: 19, scope: !301)
!304 = !DILocation(line: 474, column: 25, scope: !301)
!305 = !DILocation(line: 474, column: 17, scope: !301)
!306 = !DILocation(line: 474, column: 3, scope: !301)
!307 = !DILocation(line: 475, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !196, line: 474, column: 41)
!309 = !DILocation(line: 475, column: 14, scope: !308)
!310 = !DILocation(line: 475, column: 29, scope: !311)
!311 = !DILexicalBlockFile(scope: !308, file: !196, discriminator: 1)
!312 = !DILocation(line: 475, column: 21, scope: !311)
!313 = !DILocation(line: 475, column: 12, scope: !311)
!314 = !DILocation(line: 475, column: 34, scope: !315)
!315 = !DILexicalBlockFile(scope: !308, file: !196, discriminator: 2)
!316 = !DILocation(line: 475, column: 12, scope: !315)
!317 = !DILocation(line: 475, column: 12, scope: !318)
!318 = !DILexicalBlockFile(scope: !308, file: !196, discriminator: 3)
!319 = !DILocation(line: 475, column: 10, scope: !318)
!320 = !DILocation(line: 476, column: 36, scope: !308)
!321 = !DILocation(line: 476, column: 42, scope: !308)
!322 = !DILocation(line: 476, column: 52, scope: !308)
!323 = !DILocation(line: 476, column: 30, scope: !308)
!324 = !DILocation(line: 476, column: 21, scope: !311)
!325 = !DILocation(line: 476, column: 16, scope: !308)
!326 = !DILocation(line: 476, column: 4, scope: !308)
!327 = !DILocation(line: 476, column: 10, scope: !308)
!328 = !DILocation(line: 476, column: 19, scope: !308)
!329 = !DILocation(line: 477, column: 3, scope: !308)
!330 = !DILocation(line: 474, column: 37, scope: !331)
!331 = !DILexicalBlockFile(scope: !302, file: !196, discriminator: 2)
!332 = !DILocation(line: 474, column: 3, scope: !331)
!333 = distinct !{!333, !334}
!334 = !DILocation(line: 474, column: 3, scope: !298)
!335 = !DILocation(line: 478, column: 2, scope: !298)
!336 = !DILocation(line: 478, column: 13, scope: !337)
!337 = !DILexicalBlockFile(scope: !338, file: !196, discriminator: 1)
!338 = distinct !DILexicalBlock(scope: !293, file: !196, line: 478, column: 13)
!339 = !DILocation(line: 478, column: 19, scope: !337)
!340 = !DILocation(line: 479, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !196, line: 479, column: 3)
!342 = distinct !DILexicalBlock(scope: !338, file: !196, line: 478, column: 28)
!343 = !DILocation(line: 479, column: 8, scope: !341)
!344 = !DILocation(line: 479, column: 15, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !196, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !341, file: !196, line: 479, column: 3)
!347 = !DILocation(line: 479, column: 19, scope: !345)
!348 = !DILocation(line: 479, column: 25, scope: !345)
!349 = !DILocation(line: 479, column: 17, scope: !345)
!350 = !DILocation(line: 479, column: 3, scope: !345)
!351 = !DILocation(line: 480, column: 57, scope: !346)
!352 = !DILocation(line: 480, column: 63, scope: !346)
!353 = !DILocation(line: 480, column: 72, scope: !346)
!354 = !DILocation(line: 480, column: 51, scope: !346)
!355 = !DILocation(line: 480, column: 42, scope: !345)
!356 = !DILocation(line: 480, column: 37, scope: !346)
!357 = !DILocation(line: 480, column: 25, scope: !346)
!358 = !DILocation(line: 480, column: 31, scope: !346)
!359 = !DILocation(line: 480, column: 40, scope: !346)
!360 = !DILocation(line: 479, column: 37, scope: !361)
!361 = !DILexicalBlockFile(scope: !346, file: !196, discriminator: 2)
!362 = !DILocation(line: 479, column: 3, scope: !361)
!363 = distinct !{!363, !364}
!364 = !DILocation(line: 479, column: 3, scope: !342)
!365 = !DILocation(line: 481, column: 2, scope: !342)
!366 = !DILocation(line: 481, column: 13, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !196, discriminator: 1)
!368 = distinct !DILexicalBlock(scope: !338, file: !196, line: 481, column: 13)
!369 = !DILocation(line: 482, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !196, line: 482, column: 3)
!371 = distinct !DILexicalBlock(scope: !368, file: !196, line: 481, column: 20)
!372 = !DILocation(line: 482, column: 8, scope: !370)
!373 = !DILocation(line: 482, column: 15, scope: !374)
!374 = !DILexicalBlockFile(scope: !375, file: !196, discriminator: 1)
!375 = distinct !DILexicalBlock(scope: !370, file: !196, line: 482, column: 3)
!376 = !DILocation(line: 482, column: 17, scope: !374)
!377 = !DILocation(line: 482, column: 3, scope: !374)
!378 = !DILocation(line: 483, column: 81, scope: !375)
!379 = !DILocation(line: 483, column: 73, scope: !375)
!380 = !DILocation(line: 483, column: 72, scope: !375)
!381 = !DILocation(line: 483, column: 42, scope: !375)
!382 = !DILocation(line: 483, column: 37, scope: !375)
!383 = !DILocation(line: 483, column: 25, scope: !375)
!384 = !DILocation(line: 483, column: 31, scope: !375)
!385 = !DILocation(line: 483, column: 40, scope: !375)
!386 = !DILocation(line: 482, column: 23, scope: !387)
!387 = !DILexicalBlockFile(scope: !375, file: !196, discriminator: 2)
!388 = !DILocation(line: 482, column: 3, scope: !387)
!389 = distinct !{!389, !390}
!390 = !DILocation(line: 482, column: 3, scope: !371)
!391 = !DILocation(line: 484, column: 2, scope: !371)
!392 = !DILocation(line: 486, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !195, file: !196, line: 486, column: 6)
!394 = !DILocation(line: 486, column: 12, scope: !393)
!395 = !DILocation(line: 486, column: 6, scope: !195)
!396 = !DILocation(line: 487, column: 10, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !196, line: 487, column: 3)
!398 = distinct !DILexicalBlock(scope: !393, file: !196, line: 486, column: 22)
!399 = !DILocation(line: 487, column: 8, scope: !397)
!400 = !DILocation(line: 487, column: 15, scope: !401)
!401 = !DILexicalBlockFile(scope: !402, file: !196, discriminator: 1)
!402 = distinct !DILexicalBlock(scope: !397, file: !196, line: 487, column: 3)
!403 = !DILocation(line: 487, column: 19, scope: !401)
!404 = !DILocation(line: 487, column: 25, scope: !401)
!405 = !DILocation(line: 487, column: 17, scope: !401)
!406 = !DILocation(line: 487, column: 3, scope: !401)
!407 = !DILocation(line: 488, column: 12, scope: !408)
!408 = distinct !DILexicalBlock(scope: !402, file: !196, line: 487, column: 41)
!409 = !DILocation(line: 488, column: 14, scope: !408)
!410 = !DILocation(line: 488, column: 29, scope: !411)
!411 = !DILexicalBlockFile(scope: !408, file: !196, discriminator: 1)
!412 = !DILocation(line: 488, column: 21, scope: !411)
!413 = !DILocation(line: 488, column: 12, scope: !411)
!414 = !DILocation(line: 488, column: 34, scope: !415)
!415 = !DILexicalBlockFile(scope: !408, file: !196, discriminator: 2)
!416 = !DILocation(line: 488, column: 12, scope: !415)
!417 = !DILocation(line: 488, column: 12, scope: !418)
!418 = !DILexicalBlockFile(scope: !408, file: !196, discriminator: 3)
!419 = !DILocation(line: 488, column: 10, scope: !418)
!420 = !DILocation(line: 489, column: 36, scope: !408)
!421 = !DILocation(line: 489, column: 42, scope: !408)
!422 = !DILocation(line: 489, column: 52, scope: !408)
!423 = !DILocation(line: 489, column: 30, scope: !408)
!424 = !DILocation(line: 489, column: 21, scope: !411)
!425 = !DILocation(line: 489, column: 16, scope: !408)
!426 = !DILocation(line: 489, column: 4, scope: !408)
!427 = !DILocation(line: 489, column: 10, scope: !408)
!428 = !DILocation(line: 489, column: 19, scope: !408)
!429 = !DILocation(line: 490, column: 3, scope: !408)
!430 = !DILocation(line: 487, column: 37, scope: !431)
!431 = !DILexicalBlockFile(scope: !402, file: !196, discriminator: 2)
!432 = !DILocation(line: 487, column: 3, scope: !431)
!433 = distinct !{!433, !434}
!434 = !DILocation(line: 487, column: 3, scope: !398)
!435 = !DILocation(line: 491, column: 2, scope: !398)
!436 = !DILocation(line: 491, column: 13, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !196, discriminator: 1)
!438 = distinct !DILexicalBlock(scope: !393, file: !196, line: 491, column: 13)
!439 = !DILocation(line: 491, column: 19, scope: !437)
!440 = !DILocation(line: 492, column: 10, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !196, line: 492, column: 3)
!442 = distinct !DILexicalBlock(scope: !438, file: !196, line: 491, column: 28)
!443 = !DILocation(line: 492, column: 8, scope: !441)
!444 = !DILocation(line: 492, column: 15, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !196, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !441, file: !196, line: 492, column: 3)
!447 = !DILocation(line: 492, column: 19, scope: !445)
!448 = !DILocation(line: 492, column: 25, scope: !445)
!449 = !DILocation(line: 492, column: 17, scope: !445)
!450 = !DILocation(line: 492, column: 3, scope: !445)
!451 = !DILocation(line: 493, column: 57, scope: !446)
!452 = !DILocation(line: 493, column: 63, scope: !446)
!453 = !DILocation(line: 493, column: 72, scope: !446)
!454 = !DILocation(line: 493, column: 51, scope: !446)
!455 = !DILocation(line: 493, column: 42, scope: !445)
!456 = !DILocation(line: 493, column: 37, scope: !446)
!457 = !DILocation(line: 493, column: 25, scope: !446)
!458 = !DILocation(line: 493, column: 31, scope: !446)
!459 = !DILocation(line: 493, column: 40, scope: !446)
!460 = !DILocation(line: 492, column: 37, scope: !461)
!461 = !DILexicalBlockFile(scope: !446, file: !196, discriminator: 2)
!462 = !DILocation(line: 492, column: 3, scope: !461)
!463 = distinct !{!463, !464}
!464 = !DILocation(line: 492, column: 3, scope: !442)
!465 = !DILocation(line: 494, column: 2, scope: !442)
!466 = !DILocation(line: 494, column: 13, scope: !467)
!467 = !DILexicalBlockFile(scope: !468, file: !196, discriminator: 1)
!468 = distinct !DILexicalBlock(scope: !438, file: !196, line: 494, column: 13)
!469 = !DILocation(line: 495, column: 10, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !196, line: 495, column: 3)
!471 = distinct !DILexicalBlock(scope: !468, file: !196, line: 494, column: 20)
!472 = !DILocation(line: 495, column: 8, scope: !470)
!473 = !DILocation(line: 495, column: 15, scope: !474)
!474 = !DILexicalBlockFile(scope: !475, file: !196, discriminator: 1)
!475 = distinct !DILexicalBlock(scope: !470, file: !196, line: 495, column: 3)
!476 = !DILocation(line: 495, column: 17, scope: !474)
!477 = !DILocation(line: 495, column: 3, scope: !474)
!478 = !DILocation(line: 496, column: 81, scope: !475)
!479 = !DILocation(line: 496, column: 73, scope: !475)
!480 = !DILocation(line: 496, column: 72, scope: !475)
!481 = !DILocation(line: 496, column: 42, scope: !475)
!482 = !DILocation(line: 496, column: 37, scope: !475)
!483 = !DILocation(line: 496, column: 25, scope: !475)
!484 = !DILocation(line: 496, column: 31, scope: !475)
!485 = !DILocation(line: 496, column: 40, scope: !475)
!486 = !DILocation(line: 495, column: 23, scope: !487)
!487 = !DILexicalBlockFile(scope: !475, file: !196, discriminator: 2)
!488 = !DILocation(line: 495, column: 3, scope: !487)
!489 = distinct !{!489, !490}
!490 = !DILocation(line: 495, column: 3, scope: !471)
!491 = !DILocation(line: 497, column: 2, scope: !471)
!492 = !DILocation(line: 498, column: 1, scope: !195)
!493 = distinct !DISubprogram(name: "terminfo_colors_deinit", scope: !196, file: !196, line: 431, type: !32, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!494 = !DILocalVariable(name: "term", arg: 1, scope: !493, file: !196, line: 431, type: !8)
!495 = !DILocation(line: 431, column: 46, scope: !493)
!496 = !DILocalVariable(name: "i", scope: !493, file: !196, line: 433, type: !17)
!497 = !DILocation(line: 433, column: 6, scope: !493)
!498 = !DILocation(line: 435, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !196, line: 435, column: 6)
!500 = !DILocation(line: 435, column: 13, scope: !499)
!501 = !DILocation(line: 435, column: 19, scope: !499)
!502 = !DILocation(line: 435, column: 6, scope: !493)
!503 = !DILocation(line: 436, column: 10, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !196, line: 436, column: 3)
!505 = distinct !DILexicalBlock(scope: !499, file: !196, line: 435, column: 8)
!506 = !DILocation(line: 436, column: 8, scope: !504)
!507 = !DILocation(line: 436, column: 15, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !196, discriminator: 1)
!509 = distinct !DILexicalBlock(scope: !504, file: !196, line: 436, column: 3)
!510 = !DILocation(line: 436, column: 19, scope: !508)
!511 = !DILocation(line: 436, column: 25, scope: !508)
!512 = !DILocation(line: 436, column: 17, scope: !508)
!513 = !DILocation(line: 436, column: 3, scope: !508)
!514 = !DILocation(line: 437, column: 23, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !196, line: 436, column: 41)
!516 = !DILocation(line: 437, column: 11, scope: !515)
!517 = !DILocation(line: 437, column: 17, scope: !515)
!518 = !DILocation(line: 437, column: 4, scope: !515)
!519 = !DILocation(line: 438, column: 23, scope: !515)
!520 = !DILocation(line: 438, column: 11, scope: !515)
!521 = !DILocation(line: 438, column: 17, scope: !515)
!522 = !DILocation(line: 438, column: 4, scope: !515)
!523 = !DILocation(line: 439, column: 3, scope: !515)
!524 = !DILocation(line: 436, column: 37, scope: !525)
!525 = !DILexicalBlockFile(scope: !509, file: !196, discriminator: 2)
!526 = !DILocation(line: 436, column: 3, scope: !525)
!527 = distinct !{!527, !528}
!528 = !DILocation(line: 436, column: 3, scope: !505)
!529 = !DILocation(line: 441, column: 3, scope: !505)
!530 = distinct !{!530, !529}
!531 = !DILocation(line: 441, column: 12, scope: !532)
!532 = !DILexicalBlockFile(scope: !533, file: !196, discriminator: 1)
!533 = distinct !DILexicalBlock(scope: !534, file: !196, line: 441, column: 12)
!534 = distinct !DILexicalBlock(scope: !505, file: !196, line: 441, column: 6)
!535 = !DILocation(line: 441, column: 18, scope: !532)
!536 = !DILocation(line: 441, column: 34, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !196, discriminator: 2)
!538 = distinct !DILexicalBlock(scope: !533, file: !196, line: 441, column: 25)
!539 = !DILocation(line: 441, column: 40, scope: !537)
!540 = !DILocation(line: 441, column: 27, scope: !537)
!541 = !DILocation(line: 441, column: 49, scope: !537)
!542 = !DILocation(line: 441, column: 55, scope: !537)
!543 = !DILocation(line: 441, column: 62, scope: !537)
!544 = !DILocation(line: 441, column: 4, scope: !537)
!545 = !DILocation(line: 441, column: 6, scope: !546)
!546 = !DILexicalBlockFile(scope: !534, file: !196, discriminator: 3)
!547 = !DILocation(line: 442, column: 3, scope: !505)
!548 = distinct !{!548, !547}
!549 = !DILocation(line: 442, column: 12, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !196, discriminator: 1)
!551 = distinct !DILexicalBlock(scope: !552, file: !196, line: 442, column: 12)
!552 = distinct !DILexicalBlock(scope: !505, file: !196, line: 442, column: 6)
!553 = !DILocation(line: 442, column: 18, scope: !550)
!554 = !DILocation(line: 442, column: 34, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !196, discriminator: 2)
!556 = distinct !DILexicalBlock(scope: !551, file: !196, line: 442, column: 25)
!557 = !DILocation(line: 442, column: 40, scope: !555)
!558 = !DILocation(line: 442, column: 27, scope: !555)
!559 = !DILocation(line: 442, column: 49, scope: !555)
!560 = !DILocation(line: 442, column: 55, scope: !555)
!561 = !DILocation(line: 442, column: 62, scope: !555)
!562 = !DILocation(line: 442, column: 4, scope: !555)
!563 = !DILocation(line: 442, column: 6, scope: !564)
!564 = !DILexicalBlockFile(scope: !552, file: !196, discriminator: 3)
!565 = !DILocation(line: 443, column: 2, scope: !505)
!566 = !DILocation(line: 444, column: 1, scope: !493)
!567 = distinct !DISubprogram(name: "_set_fg", scope: !196, file: !196, line: 363, type: !24, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!568 = !DILocalVariable(name: "term", arg: 1, scope: !567, file: !196, line: 363, type: !8)
!569 = !DILocation(line: 363, column: 31, scope: !567)
!570 = !DILocalVariable(name: "color", arg: 2, scope: !567, file: !196, line: 363, type: !17)
!571 = !DILocation(line: 363, column: 41, scope: !567)
!572 = !DILocation(line: 365, column: 35, scope: !567)
!573 = !DILocation(line: 365, column: 41, scope: !567)
!574 = !DILocation(line: 365, column: 26, scope: !567)
!575 = !DILocation(line: 365, column: 14, scope: !567)
!576 = !DILocation(line: 365, column: 20, scope: !567)
!577 = !DILocation(line: 365, column: 8, scope: !578)
!578 = !DILexicalBlockFile(scope: !567, file: !196, discriminator: 1)
!579 = !DILocation(line: 365, column: 2, scope: !580)
!580 = !DILexicalBlockFile(scope: !567, file: !196, discriminator: 2)
!581 = !DILocation(line: 366, column: 1, scope: !567)
!582 = distinct !DISubprogram(name: "_set_bg", scope: !196, file: !196, line: 369, type: !24, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!583 = !DILocalVariable(name: "term", arg: 1, scope: !582, file: !196, line: 369, type: !8)
!584 = !DILocation(line: 369, column: 31, scope: !582)
!585 = !DILocalVariable(name: "color", arg: 2, scope: !582, file: !196, line: 369, type: !17)
!586 = !DILocation(line: 369, column: 41, scope: !582)
!587 = !DILocation(line: 371, column: 35, scope: !582)
!588 = !DILocation(line: 371, column: 41, scope: !582)
!589 = !DILocation(line: 371, column: 26, scope: !582)
!590 = !DILocation(line: 371, column: 14, scope: !582)
!591 = !DILocation(line: 371, column: 20, scope: !582)
!592 = !DILocation(line: 371, column: 8, scope: !593)
!593 = !DILexicalBlockFile(scope: !582, file: !196, discriminator: 1)
!594 = !DILocation(line: 371, column: 2, scope: !595)
!595 = !DILexicalBlockFile(scope: !582, file: !196, discriminator: 2)
!596 = !DILocation(line: 372, column: 1, scope: !582)
!597 = distinct !DISubprogram(name: "_ignore_parm", scope: !196, file: !196, line: 384, type: !24, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!598 = !DILocalVariable(name: "term", arg: 1, scope: !597, file: !196, line: 384, type: !8)
!599 = !DILocation(line: 384, column: 36, scope: !597)
!600 = !DILocalVariable(name: "param", arg: 2, scope: !597, file: !196, line: 384, type: !17)
!601 = !DILocation(line: 384, column: 46, scope: !597)
!602 = !DILocation(line: 386, column: 1, scope: !597)
!603 = distinct !DISubprogram(name: "terminfo_cont", scope: !196, file: !196, line: 534, type: !32, isLocal: false, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!604 = !DILocalVariable(name: "term", arg: 1, scope: !603, file: !196, line: 534, type: !8)
!605 = !DILocation(line: 534, column: 30, scope: !603)
!606 = !DILocation(line: 536, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !196, line: 536, column: 6)
!608 = !DILocation(line: 536, column: 12, scope: !607)
!609 = !DILocation(line: 536, column: 6, scope: !603)
!610 = !DILocation(line: 537, column: 15, scope: !607)
!611 = !DILocation(line: 537, column: 21, scope: !607)
!612 = !DILocation(line: 537, column: 9, scope: !607)
!613 = !DILocation(line: 537, column: 3, scope: !614)
!614 = !DILexicalBlockFile(scope: !607, file: !196, discriminator: 1)
!615 = !DILocation(line: 537, column: 3, scope: !607)
!616 = !DILocation(line: 539, column: 6, scope: !617)
!617 = distinct !DILexicalBlock(scope: !603, file: !196, line: 539, column: 6)
!618 = !DILocation(line: 539, column: 12, scope: !617)
!619 = !DILocation(line: 539, column: 6, scope: !603)
!620 = !DILocation(line: 540, column: 28, scope: !617)
!621 = !DILocation(line: 540, column: 3, scope: !617)
!622 = !DILocation(line: 542, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !603, file: !196, line: 542, column: 6)
!624 = !DILocation(line: 542, column: 12, scope: !623)
!625 = !DILocation(line: 542, column: 6, scope: !603)
!626 = !DILocation(line: 543, column: 3, scope: !623)
!627 = !DILocation(line: 545, column: 29, scope: !603)
!628 = !DILocation(line: 545, column: 9, scope: !603)
!629 = !DILocation(line: 546, column: 1, scope: !603)
!630 = distinct !DISubprogram(name: "term_putchar", scope: !196, file: !196, line: 10, type: !631, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!631 = !DISubroutineType(types: !632)
!632 = !{!17, !17}
!633 = !DILocalVariable(name: "c", arg: 1, scope: !630, file: !196, line: 10, type: !17)
!634 = !DILocation(line: 10, column: 36, scope: !630)
!635 = !DILocation(line: 12, column: 22, scope: !630)
!636 = !DILocation(line: 12, column: 25, scope: !630)
!637 = !DILocation(line: 12, column: 39, scope: !630)
!638 = !DILocation(line: 12, column: 16, scope: !630)
!639 = !DILocation(line: 12, column: 9, scope: !630)
!640 = distinct !DISubprogram(name: "terminfo_set_appkey_mode", scope: !196, file: !196, line: 388, type: !24, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!641 = !DILocalVariable(name: "term", arg: 1, scope: !640, file: !196, line: 388, type: !8)
!642 = !DILocation(line: 388, column: 48, scope: !640)
!643 = !DILocalVariable(name: "set", arg: 2, scope: !640, file: !196, line: 388, type: !17)
!644 = !DILocation(line: 388, column: 58, scope: !640)
!645 = !DILocation(line: 390, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !196, line: 390, column: 6)
!647 = !DILocation(line: 390, column: 12, scope: !646)
!648 = !DILocation(line: 390, column: 20, scope: !646)
!649 = !DILocation(line: 390, column: 23, scope: !650)
!650 = !DILexicalBlockFile(scope: !646, file: !196, discriminator: 1)
!651 = !DILocation(line: 390, column: 29, scope: !650)
!652 = !DILocation(line: 390, column: 6, scope: !650)
!653 = !DILocation(line: 391, column: 15, scope: !646)
!654 = !DILocation(line: 391, column: 21, scope: !650)
!655 = !DILocation(line: 391, column: 27, scope: !650)
!656 = !DILocation(line: 391, column: 15, scope: !650)
!657 = !DILocation(line: 391, column: 37, scope: !658)
!658 = !DILexicalBlockFile(scope: !646, file: !196, discriminator: 2)
!659 = !DILocation(line: 391, column: 43, scope: !658)
!660 = !DILocation(line: 391, column: 15, scope: !658)
!661 = !DILocation(line: 391, column: 15, scope: !662)
!662 = !DILexicalBlockFile(scope: !646, file: !196, discriminator: 3)
!663 = !DILocation(line: 391, column: 9, scope: !662)
!664 = !DILocation(line: 391, column: 3, scope: !665)
!665 = !DILexicalBlockFile(scope: !662, file: !196, discriminator: 4)
!666 = !DILocation(line: 391, column: 3, scope: !662)
!667 = !DILocation(line: 392, column: 1, scope: !640)
!668 = distinct !DISubprogram(name: "term_dec_set_bracketed_paste_mode", scope: !196, file: !196, line: 394, type: !669, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !17}
!671 = !DILocalVariable(name: "enable", arg: 1, scope: !668, file: !196, line: 394, type: !17)
!672 = !DILocation(line: 394, column: 51, scope: !668)
!673 = !DILocation(line: 396, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !668, file: !196, line: 396, column: 6)
!675 = !DILocation(line: 396, column: 6, scope: !668)
!676 = !DILocation(line: 397, column: 3, scope: !674)
!677 = !DILocation(line: 399, column: 3, scope: !674)
!678 = !DILocation(line: 400, column: 1, scope: !668)
!679 = distinct !DISubprogram(name: "terminfo_input_init", scope: !196, file: !196, line: 524, type: !32, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!680 = !DILocalVariable(name: "term", arg: 1, scope: !679, file: !196, line: 524, type: !8)
!681 = !DILocation(line: 524, column: 43, scope: !679)
!682 = !DILocation(line: 526, column: 26, scope: !679)
!683 = !DILocation(line: 526, column: 32, scope: !679)
!684 = !DILocation(line: 526, column: 19, scope: !679)
!685 = !DILocation(line: 526, column: 48, scope: !679)
!686 = !DILocation(line: 526, column: 54, scope: !679)
!687 = !DILocation(line: 526, column: 9, scope: !688)
!688 = !DILexicalBlockFile(scope: !679, file: !196, discriminator: 1)
!689 = !DILocation(line: 527, column: 1, scope: !679)
!690 = distinct !DISubprogram(name: "terminfo_stop", scope: !196, file: !196, line: 548, type: !32, isLocal: false, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!691 = !DILocalVariable(name: "term", arg: 1, scope: !690, file: !196, line: 548, type: !8)
!692 = !DILocation(line: 548, column: 30, scope: !690)
!693 = !DILocation(line: 551, column: 2, scope: !690)
!694 = !DILocation(line: 551, column: 16, scope: !690)
!695 = !DILocation(line: 551, column: 27, scope: !690)
!696 = !DILocation(line: 553, column: 2, scope: !690)
!697 = !DILocation(line: 553, column: 16, scope: !690)
!698 = !DILocation(line: 553, column: 21, scope: !690)
!699 = !DILocation(line: 553, column: 38, scope: !690)
!700 = !DILocation(line: 553, column: 44, scope: !690)
!701 = !DILocation(line: 553, column: 50, scope: !690)
!702 = !DILocation(line: 555, column: 6, scope: !703)
!703 = distinct !DILexicalBlock(scope: !690, file: !196, line: 555, column: 6)
!704 = !DILocation(line: 555, column: 12, scope: !703)
!705 = !DILocation(line: 555, column: 6, scope: !690)
!706 = !DILocation(line: 556, column: 3, scope: !703)
!707 = !DILocation(line: 559, column: 6, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !196, line: 559, column: 6)
!709 = !DILocation(line: 559, column: 12, scope: !708)
!710 = !DILocation(line: 559, column: 6, scope: !690)
!711 = !DILocation(line: 560, column: 15, scope: !708)
!712 = !DILocation(line: 560, column: 21, scope: !708)
!713 = !DILocation(line: 560, column: 9, scope: !708)
!714 = !DILocation(line: 560, column: 3, scope: !715)
!715 = !DILexicalBlockFile(scope: !708, file: !196, discriminator: 1)
!716 = !DILocation(line: 560, column: 3, scope: !708)
!717 = !DILocation(line: 562, column: 6, scope: !718)
!718 = distinct !DILexicalBlock(scope: !690, file: !196, line: 562, column: 6)
!719 = !DILocation(line: 562, column: 12, scope: !718)
!720 = !DILocation(line: 562, column: 6, scope: !690)
!721 = !DILocation(line: 563, column: 28, scope: !718)
!722 = !DILocation(line: 563, column: 3, scope: !718)
!723 = !DILocation(line: 566, column: 24, scope: !690)
!724 = !DILocation(line: 566, column: 2, scope: !690)
!725 = !DILocation(line: 567, column: 16, scope: !690)
!726 = !DILocation(line: 567, column: 22, scope: !690)
!727 = !DILocation(line: 567, column: 9, scope: !690)
!728 = !DILocation(line: 568, column: 1, scope: !690)
!729 = distinct !DISubprogram(name: "terminfo_input_deinit", scope: !196, file: !196, line: 529, type: !32, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!730 = !DILocalVariable(name: "term", arg: 1, scope: !729, file: !196, line: 529, type: !8)
!731 = !DILocation(line: 529, column: 45, scope: !729)
!732 = !DILocation(line: 531, column: 26, scope: !729)
!733 = !DILocation(line: 531, column: 32, scope: !729)
!734 = !DILocation(line: 531, column: 19, scope: !729)
!735 = !DILocation(line: 531, column: 48, scope: !729)
!736 = !DILocation(line: 531, column: 54, scope: !729)
!737 = !DILocation(line: 531, column: 9, scope: !738)
!738 = !DILexicalBlockFile(scope: !729, file: !196, discriminator: 1)
!739 = !DILocation(line: 532, column: 1, scope: !729)
!740 = distinct !DISubprogram(name: "term_set_appkey_mode", scope: !196, file: !196, line: 681, type: !669, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!741 = !DILocalVariable(name: "enable", arg: 1, scope: !740, file: !196, line: 681, type: !17)
!742 = !DILocation(line: 681, column: 31, scope: !740)
!743 = !DILocation(line: 683, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !196, line: 683, column: 6)
!745 = !DILocation(line: 683, column: 20, scope: !744)
!746 = !DILocation(line: 683, column: 38, scope: !744)
!747 = !DILocation(line: 683, column: 35, scope: !744)
!748 = !DILocation(line: 683, column: 6, scope: !740)
!749 = !DILocation(line: 684, column: 3, scope: !744)
!750 = !DILocation(line: 686, column: 33, scope: !740)
!751 = !DILocation(line: 686, column: 2, scope: !740)
!752 = !DILocation(line: 686, column: 16, scope: !740)
!753 = !DILocation(line: 686, column: 31, scope: !740)
!754 = !DILocation(line: 687, column: 27, scope: !740)
!755 = !DILocation(line: 687, column: 41, scope: !740)
!756 = !DILocation(line: 687, column: 2, scope: !740)
!757 = !DILocation(line: 688, column: 1, scope: !740)
!758 = !DILocation(line: 688, column: 1, scope: !759)
!759 = !DILexicalBlockFile(scope: !740, file: !196, discriminator: 1)
!760 = distinct !DISubprogram(name: "term_set_bracketed_paste_mode", scope: !196, file: !196, line: 690, type: !669, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!761 = !DILocalVariable(name: "enable", arg: 1, scope: !760, file: !196, line: 690, type: !17)
!762 = !DILocation(line: 690, column: 40, scope: !760)
!763 = !DILocation(line: 692, column: 6, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !196, line: 692, column: 6)
!765 = !DILocation(line: 692, column: 20, scope: !764)
!766 = !DILocation(line: 692, column: 47, scope: !764)
!767 = !DILocation(line: 692, column: 44, scope: !764)
!768 = !DILocation(line: 692, column: 6, scope: !760)
!769 = !DILocation(line: 693, column: 3, scope: !764)
!770 = !DILocation(line: 695, column: 42, scope: !760)
!771 = !DILocation(line: 695, column: 2, scope: !760)
!772 = !DILocation(line: 695, column: 16, scope: !760)
!773 = !DILocation(line: 695, column: 40, scope: !760)
!774 = !DILocation(line: 696, column: 36, scope: !760)
!775 = !DILocation(line: 696, column: 2, scope: !760)
!776 = !DILocation(line: 697, column: 1, scope: !760)
!777 = !DILocation(line: 697, column: 1, scope: !778)
!778 = !DILexicalBlockFile(scope: !760, file: !196, discriminator: 1)
!779 = distinct !DISubprogram(name: "terminfo_core_init", scope: !196, file: !196, line: 699, type: !780, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!780 = !DISubroutineType(types: !781)
!781 = !{!8, !55, !55}
!782 = !DILocalVariable(name: "in", arg: 1, scope: !779, file: !196, line: 699, type: !55)
!783 = !DILocation(line: 699, column: 36, scope: !779)
!784 = !DILocalVariable(name: "out", arg: 2, scope: !779, file: !196, line: 699, type: !55)
!785 = !DILocation(line: 699, column: 46, scope: !779)
!786 = !DILocalVariable(name: "old_term", scope: !779, file: !196, line: 701, type: !8)
!787 = !DILocation(line: 701, column: 12, scope: !779)
!788 = !DILocalVariable(name: "term", scope: !779, file: !196, line: 701, type: !8)
!789 = !DILocation(line: 701, column: 23, scope: !779)
!790 = !DILocation(line: 703, column: 20, scope: !779)
!791 = !DILocation(line: 703, column: 18, scope: !779)
!792 = !DILocation(line: 704, column: 38, scope: !779)
!793 = !DILocation(line: 704, column: 25, scope: !779)
!794 = !DILocation(line: 704, column: 22, scope: !779)
!795 = !DILocation(line: 704, column: 15, scope: !779)
!796 = !DILocation(line: 706, column: 13, scope: !779)
!797 = !DILocation(line: 706, column: 2, scope: !779)
!798 = !DILocation(line: 706, column: 8, scope: !779)
!799 = !DILocation(line: 706, column: 11, scope: !779)
!800 = !DILocation(line: 707, column: 14, scope: !779)
!801 = !DILocation(line: 707, column: 2, scope: !779)
!802 = !DILocation(line: 707, column: 8, scope: !779)
!803 = !DILocation(line: 707, column: 12, scope: !779)
!804 = !DILocation(line: 709, column: 18, scope: !805)
!805 = distinct !DILexicalBlock(scope: !779, file: !196, line: 709, column: 6)
!806 = !DILocation(line: 709, column: 7, scope: !805)
!807 = !DILocation(line: 709, column: 6, scope: !779)
!808 = !DILocation(line: 710, column: 10, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !196, line: 709, column: 25)
!810 = !DILocation(line: 710, column: 3, scope: !809)
!811 = !DILocation(line: 711, column: 22, scope: !809)
!812 = !DILocation(line: 712, column: 2, scope: !809)
!813 = !DILocation(line: 714, column: 17, scope: !779)
!814 = !DILocation(line: 714, column: 15, scope: !779)
!815 = !DILocation(line: 715, column: 16, scope: !779)
!816 = !DILocation(line: 715, column: 9, scope: !779)
!817 = distinct !DISubprogram(name: "term_setup", scope: !196, file: !196, line: 570, type: !818, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!818 = !DISubroutineType(types: !819)
!819 = !{!17, !8}
!820 = !DILocalVariable(name: "term", arg: 1, scope: !817, file: !196, line: 570, type: !8)
!821 = !DILocation(line: 570, column: 33, scope: !817)
!822 = !DILocalVariable(name: "str", scope: !817, file: !196, line: 572, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !825, line: 39, baseType: !826)
!825 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !825, line: 41, size: 192, align: 64, elements: !827)
!827 = !{!828, !831, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !826, file: !825, line: 43, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !187, line: 46, baseType: !7)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !826, file: !825, line: 44, baseType: !832, size: 64, align: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !190, line: 66, baseType: !108)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !826, file: !825, line: 45, baseType: !832, size: 64, align: 64, offset: 128)
!834 = !DILocation(line: 572, column: 11, scope: !817)
!835 = !DILocalVariable(name: "err", scope: !817, file: !196, line: 573, type: !17)
!836 = !DILocation(line: 573, column: 6, scope: !817)
!837 = !DILocalVariable(name: "term_env", scope: !817, file: !196, line: 574, type: !6)
!838 = !DILocation(line: 574, column: 15, scope: !817)
!839 = !DILocation(line: 576, column: 13, scope: !817)
!840 = !DILocation(line: 576, column: 11, scope: !817)
!841 = !DILocation(line: 577, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !817, file: !196, line: 577, column: 6)
!843 = !DILocation(line: 577, column: 15, scope: !842)
!844 = !DILocation(line: 577, column: 6, scope: !817)
!845 = !DILocation(line: 578, column: 10, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !196, line: 577, column: 23)
!847 = !DILocation(line: 578, column: 3, scope: !846)
!848 = !DILocation(line: 579, column: 17, scope: !846)
!849 = !DILocation(line: 582, column: 16, scope: !850)
!850 = distinct !DILexicalBlock(scope: !817, file: !196, line: 582, column: 6)
!851 = !DILocation(line: 582, column: 6, scope: !850)
!852 = !DILocation(line: 582, column: 35, scope: !850)
!853 = !DILocation(line: 582, column: 6, scope: !817)
!854 = !DILocation(line: 583, column: 10, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !196, line: 582, column: 41)
!856 = !DILocation(line: 583, column: 58, scope: !855)
!857 = !DILocation(line: 583, column: 68, scope: !855)
!858 = !DILocation(line: 583, column: 3, scope: !855)
!859 = !DILocation(line: 584, column: 3, scope: !855)
!860 = !DILocation(line: 587, column: 32, scope: !817)
!861 = !DILocation(line: 587, column: 9, scope: !817)
!862 = !DILocation(line: 590, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !817, file: !196, line: 590, column: 6)
!864 = !DILocation(line: 590, column: 12, scope: !863)
!865 = !DILocation(line: 590, column: 6, scope: !817)
!866 = !DILocation(line: 591, column: 3, scope: !863)
!867 = !DILocation(line: 591, column: 9, scope: !863)
!868 = !DILocation(line: 591, column: 14, scope: !863)
!869 = !DILocation(line: 592, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !863, file: !196, line: 592, column: 11)
!871 = !DILocation(line: 592, column: 17, scope: !870)
!872 = !DILocation(line: 592, column: 24, scope: !870)
!873 = !DILocation(line: 592, column: 27, scope: !874)
!874 = !DILexicalBlockFile(scope: !870, file: !196, discriminator: 1)
!875 = !DILocation(line: 592, column: 33, scope: !874)
!876 = !DILocation(line: 592, column: 11, scope: !874)
!877 = !DILocation(line: 593, column: 3, scope: !870)
!878 = !DILocation(line: 593, column: 9, scope: !870)
!879 = !DILocation(line: 593, column: 14, scope: !870)
!880 = !DILocation(line: 595, column: 24, scope: !881)
!881 = distinct !DILexicalBlock(scope: !870, file: !196, line: 594, column: 7)
!882 = !DILocation(line: 595, column: 17, scope: !881)
!883 = !DILocation(line: 596, column: 3, scope: !881)
!884 = !DILocation(line: 598, column: 2, scope: !817)
!885 = !DILocation(line: 598, column: 8, scope: !817)
!886 = !DILocation(line: 598, column: 22, scope: !817)
!887 = !DILocation(line: 599, column: 29, scope: !817)
!888 = !DILocation(line: 599, column: 35, scope: !817)
!889 = !DILocation(line: 599, column: 44, scope: !817)
!890 = !DILocation(line: 599, column: 47, scope: !891)
!891 = !DILexicalBlockFile(scope: !817, file: !196, discriminator: 1)
!892 = !DILocation(line: 599, column: 53, scope: !891)
!893 = !DILocation(line: 599, column: 44, scope: !891)
!894 = !DILocation(line: 599, column: 29, scope: !895)
!895 = !DILexicalBlockFile(scope: !817, file: !196, discriminator: 2)
!896 = !DILocation(line: 599, column: 2, scope: !895)
!897 = !DILocation(line: 599, column: 8, scope: !895)
!898 = !DILocation(line: 599, column: 27, scope: !895)
!899 = !DILocation(line: 603, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !817, file: !196, line: 603, column: 6)
!901 = !DILocation(line: 603, column: 13, scope: !900)
!902 = !DILocation(line: 603, column: 20, scope: !900)
!903 = !DILocation(line: 603, column: 23, scope: !904)
!904 = !DILexicalBlockFile(scope: !900, file: !196, discriminator: 1)
!905 = !DILocation(line: 603, column: 29, scope: !904)
!906 = !DILocation(line: 603, column: 38, scope: !904)
!907 = !DILocation(line: 603, column: 41, scope: !908)
!908 = !DILexicalBlockFile(scope: !900, file: !196, discriminator: 2)
!909 = !DILocation(line: 603, column: 47, scope: !908)
!910 = !DILocation(line: 603, column: 54, scope: !908)
!911 = !DILocation(line: 603, column: 57, scope: !912)
!912 = !DILexicalBlockFile(scope: !900, file: !196, discriminator: 3)
!913 = !DILocation(line: 603, column: 63, scope: !912)
!914 = !DILocation(line: 603, column: 6, scope: !912)
!915 = !DILocation(line: 604, column: 3, scope: !900)
!916 = !DILocation(line: 604, column: 9, scope: !900)
!917 = !DILocation(line: 604, column: 16, scope: !900)
!918 = !DILocation(line: 605, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !900, file: !196, line: 605, column: 11)
!920 = !DILocation(line: 605, column: 17, scope: !919)
!921 = !DILocation(line: 605, column: 23, scope: !919)
!922 = !DILocation(line: 605, column: 26, scope: !923)
!923 = !DILexicalBlockFile(scope: !919, file: !196, discriminator: 1)
!924 = !DILocation(line: 605, column: 32, scope: !923)
!925 = !DILocation(line: 605, column: 11, scope: !923)
!926 = !DILocation(line: 606, column: 3, scope: !919)
!927 = !DILocation(line: 606, column: 9, scope: !919)
!928 = !DILocation(line: 606, column: 16, scope: !919)
!929 = !DILocation(line: 607, column: 12, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !196, line: 607, column: 11)
!931 = !DILocation(line: 607, column: 18, scope: !930)
!932 = !DILocation(line: 607, column: 25, scope: !930)
!933 = !DILocation(line: 607, column: 28, scope: !934)
!934 = !DILexicalBlockFile(scope: !930, file: !196, discriminator: 1)
!935 = !DILocation(line: 607, column: 34, scope: !934)
!936 = !DILocation(line: 607, column: 43, scope: !934)
!937 = !DILocation(line: 607, column: 46, scope: !938)
!938 = !DILexicalBlockFile(scope: !930, file: !196, discriminator: 2)
!939 = !DILocation(line: 607, column: 52, scope: !938)
!940 = !DILocation(line: 607, column: 58, scope: !938)
!941 = !DILocation(line: 607, column: 61, scope: !942)
!942 = !DILexicalBlockFile(scope: !930, file: !196, discriminator: 3)
!943 = !DILocation(line: 607, column: 67, scope: !942)
!944 = !DILocation(line: 607, column: 11, scope: !942)
!945 = !DILocation(line: 608, column: 3, scope: !930)
!946 = !DILocation(line: 608, column: 9, scope: !930)
!947 = !DILocation(line: 608, column: 16, scope: !930)
!948 = !DILocation(line: 609, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !930, file: !196, line: 609, column: 11)
!950 = !DILocation(line: 609, column: 17, scope: !949)
!951 = !DILocation(line: 609, column: 24, scope: !949)
!952 = !DILocation(line: 609, column: 31, scope: !949)
!953 = !DILocation(line: 609, column: 35, scope: !954)
!954 = !DILexicalBlockFile(scope: !949, file: !196, discriminator: 1)
!955 = !DILocation(line: 609, column: 41, scope: !954)
!956 = !DILocation(line: 609, column: 48, scope: !954)
!957 = !DILocation(line: 609, column: 51, scope: !958)
!958 = !DILexicalBlockFile(scope: !949, file: !196, discriminator: 2)
!959 = !DILocation(line: 609, column: 57, scope: !958)
!960 = !DILocation(line: 609, column: 11, scope: !958)
!961 = !DILocation(line: 610, column: 3, scope: !949)
!962 = !DILocation(line: 610, column: 9, scope: !949)
!963 = !DILocation(line: 610, column: 16, scope: !949)
!964 = !DILocation(line: 611, column: 11, scope: !965)
!965 = distinct !DILexicalBlock(scope: !949, file: !196, line: 611, column: 11)
!966 = !DILocation(line: 611, column: 17, scope: !965)
!967 = !DILocation(line: 611, column: 24, scope: !965)
!968 = !DILocation(line: 611, column: 11, scope: !949)
!969 = !DILocation(line: 612, column: 24, scope: !970)
!970 = distinct !DILexicalBlock(scope: !965, file: !196, line: 611, column: 32)
!971 = !DILocation(line: 612, column: 17, scope: !970)
!972 = !DILocation(line: 613, column: 3, scope: !970)
!973 = !DILocation(line: 617, column: 6, scope: !974)
!974 = distinct !DILexicalBlock(scope: !817, file: !196, line: 617, column: 6)
!975 = !DILocation(line: 617, column: 12, scope: !974)
!976 = !DILocation(line: 617, column: 6, scope: !817)
!977 = !DILocation(line: 618, column: 3, scope: !974)
!978 = !DILocation(line: 618, column: 9, scope: !974)
!979 = !DILocation(line: 618, column: 15, scope: !974)
!980 = !DILocation(line: 619, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !196, line: 619, column: 11)
!982 = !DILocation(line: 619, column: 17, scope: !981)
!983 = !DILocation(line: 619, column: 11, scope: !974)
!984 = !DILocation(line: 620, column: 3, scope: !981)
!985 = !DILocation(line: 620, column: 9, scope: !981)
!986 = !DILocation(line: 620, column: 15, scope: !981)
!987 = !DILocation(line: 621, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !196, line: 621, column: 11)
!989 = !DILocation(line: 621, column: 17, scope: !988)
!990 = !DILocation(line: 621, column: 11, scope: !981)
!991 = !DILocation(line: 622, column: 3, scope: !988)
!992 = !DILocation(line: 622, column: 9, scope: !988)
!993 = !DILocation(line: 622, column: 15, scope: !988)
!994 = !DILocation(line: 623, column: 11, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !196, line: 623, column: 11)
!996 = !DILocation(line: 623, column: 17, scope: !995)
!997 = !DILocation(line: 623, column: 11, scope: !988)
!998 = !DILocation(line: 624, column: 3, scope: !995)
!999 = !DILocation(line: 624, column: 9, scope: !995)
!1000 = !DILocation(line: 624, column: 15, scope: !995)
!1001 = !DILocation(line: 629, column: 24, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !995, file: !196, line: 625, column: 7)
!1003 = !DILocation(line: 629, column: 17, scope: !1002)
!1004 = !DILocation(line: 630, column: 3, scope: !1002)
!1005 = !DILocation(line: 634, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !817, file: !196, line: 634, column: 6)
!1007 = !DILocation(line: 634, column: 12, scope: !1006)
!1008 = !DILocation(line: 634, column: 6, scope: !817)
!1009 = !DILocation(line: 635, column: 3, scope: !1006)
!1010 = !DILocation(line: 635, column: 9, scope: !1006)
!1011 = !DILocation(line: 635, column: 18, scope: !1006)
!1012 = !DILocation(line: 637, column: 24, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !196, line: 636, column: 7)
!1014 = !DILocation(line: 637, column: 17, scope: !1013)
!1015 = !DILocation(line: 638, column: 3, scope: !1013)
!1016 = !DILocation(line: 642, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !817, file: !196, line: 642, column: 6)
!1018 = !DILocation(line: 642, column: 12, scope: !1017)
!1019 = !DILocation(line: 642, column: 6, scope: !817)
!1020 = !DILocation(line: 643, column: 3, scope: !1017)
!1021 = !DILocation(line: 643, column: 9, scope: !1017)
!1022 = !DILocation(line: 643, column: 16, scope: !1017)
!1023 = !DILocation(line: 645, column: 3, scope: !1017)
!1024 = !DILocation(line: 645, column: 9, scope: !1017)
!1025 = !DILocation(line: 645, column: 16, scope: !1017)
!1026 = !DILocation(line: 648, column: 20, scope: !817)
!1027 = !DILocation(line: 648, column: 26, scope: !817)
!1028 = !DILocation(line: 648, column: 2, scope: !817)
!1029 = !DILocation(line: 648, column: 8, scope: !817)
!1030 = !DILocation(line: 648, column: 18, scope: !817)
!1031 = !DILocation(line: 649, column: 19, scope: !817)
!1032 = !DILocation(line: 649, column: 25, scope: !817)
!1033 = !DILocation(line: 649, column: 2, scope: !817)
!1034 = !DILocation(line: 649, column: 8, scope: !817)
!1035 = !DILocation(line: 649, column: 17, scope: !817)
!1036 = !DILocation(line: 650, column: 22, scope: !817)
!1037 = !DILocation(line: 650, column: 28, scope: !817)
!1038 = !DILocation(line: 650, column: 22, scope: !891)
!1039 = !DILocation(line: 651, column: 3, scope: !817)
!1040 = !DILocation(line: 651, column: 9, scope: !817)
!1041 = !DILocation(line: 650, column: 22, scope: !895)
!1042 = !DILocation(line: 650, column: 22, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !817, file: !196, discriminator: 3)
!1044 = !DILocation(line: 650, column: 2, scope: !1043)
!1045 = !DILocation(line: 650, column: 8, scope: !1043)
!1046 = !DILocation(line: 650, column: 20, scope: !1043)
!1047 = !DILocation(line: 652, column: 20, scope: !817)
!1048 = !DILocation(line: 652, column: 26, scope: !817)
!1049 = !DILocation(line: 652, column: 34, scope: !817)
!1050 = !DILocation(line: 652, column: 37, scope: !891)
!1051 = !DILocation(line: 652, column: 43, scope: !891)
!1052 = !DILocation(line: 652, column: 34, scope: !891)
!1053 = !DILocation(line: 652, column: 20, scope: !895)
!1054 = !DILocation(line: 652, column: 2, scope: !895)
!1055 = !DILocation(line: 652, column: 8, scope: !895)
!1056 = !DILocation(line: 652, column: 18, scope: !895)
!1057 = !DILocation(line: 654, column: 23, scope: !817)
!1058 = !DILocation(line: 654, column: 29, scope: !817)
!1059 = !DILocation(line: 654, column: 37, scope: !817)
!1060 = !DILocation(line: 654, column: 40, scope: !891)
!1061 = !DILocation(line: 654, column: 46, scope: !891)
!1062 = !DILocation(line: 654, column: 37, scope: !891)
!1063 = !DILocation(line: 654, column: 23, scope: !895)
!1064 = !DILocation(line: 654, column: 2, scope: !895)
!1065 = !DILocation(line: 654, column: 8, scope: !895)
!1066 = !DILocation(line: 654, column: 21, scope: !895)
!1067 = !DILocation(line: 656, column: 21, scope: !817)
!1068 = !DILocation(line: 656, column: 27, scope: !817)
!1069 = !DILocation(line: 656, column: 35, scope: !817)
!1070 = !DILocation(line: 656, column: 38, scope: !891)
!1071 = !DILocation(line: 656, column: 44, scope: !891)
!1072 = !DILocation(line: 656, column: 35, scope: !891)
!1073 = !DILocation(line: 656, column: 21, scope: !895)
!1074 = !DILocation(line: 656, column: 2, scope: !895)
!1075 = !DILocation(line: 656, column: 8, scope: !895)
!1076 = !DILocation(line: 656, column: 19, scope: !895)
!1077 = !DILocation(line: 660, column: 15, scope: !817)
!1078 = !DILocation(line: 660, column: 13, scope: !817)
!1079 = !DILocation(line: 661, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !817, file: !196, line: 661, column: 6)
!1081 = !DILocation(line: 661, column: 12, scope: !1080)
!1082 = !DILocation(line: 661, column: 6, scope: !817)
!1083 = !DILocation(line: 662, column: 19, scope: !1080)
!1084 = !DILocation(line: 662, column: 24, scope: !1080)
!1085 = !DILocation(line: 662, column: 30, scope: !1080)
!1086 = !DILocation(line: 662, column: 3, scope: !1080)
!1087 = !DILocation(line: 663, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !817, file: !196, line: 663, column: 6)
!1089 = !DILocation(line: 663, column: 12, scope: !1088)
!1090 = !DILocation(line: 663, column: 20, scope: !1088)
!1091 = !DILocation(line: 663, column: 24, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1088, file: !196, discriminator: 1)
!1093 = !DILocation(line: 663, column: 30, scope: !1092)
!1094 = !DILocation(line: 663, column: 38, scope: !1092)
!1095 = !DILocation(line: 663, column: 45, scope: !1092)
!1096 = !DILocation(line: 663, column: 58, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1088, file: !196, discriminator: 2)
!1098 = !DILocation(line: 663, column: 64, scope: !1097)
!1099 = !DILocation(line: 663, column: 73, scope: !1097)
!1100 = !DILocation(line: 663, column: 79, scope: !1097)
!1101 = !DILocation(line: 663, column: 48, scope: !1097)
!1102 = !DILocation(line: 663, column: 88, scope: !1097)
!1103 = !DILocation(line: 663, column: 6, scope: !1097)
!1104 = !DILocation(line: 664, column: 19, scope: !1088)
!1105 = !DILocation(line: 664, column: 24, scope: !1088)
!1106 = !DILocation(line: 664, column: 30, scope: !1088)
!1107 = !DILocation(line: 664, column: 3, scope: !1088)
!1108 = !DILocation(line: 665, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !817, file: !196, line: 665, column: 6)
!1110 = !DILocation(line: 665, column: 12, scope: !1109)
!1111 = !DILocation(line: 665, column: 20, scope: !1109)
!1112 = !DILocation(line: 665, column: 24, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1109, file: !196, discriminator: 1)
!1114 = !DILocation(line: 665, column: 30, scope: !1113)
!1115 = !DILocation(line: 665, column: 38, scope: !1113)
!1116 = !DILocation(line: 665, column: 45, scope: !1113)
!1117 = !DILocation(line: 665, column: 58, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1109, file: !196, discriminator: 2)
!1119 = !DILocation(line: 665, column: 64, scope: !1118)
!1120 = !DILocation(line: 665, column: 73, scope: !1118)
!1121 = !DILocation(line: 665, column: 79, scope: !1118)
!1122 = !DILocation(line: 665, column: 48, scope: !1118)
!1123 = !DILocation(line: 665, column: 88, scope: !1118)
!1124 = !DILocation(line: 665, column: 6, scope: !1118)
!1125 = !DILocation(line: 666, column: 19, scope: !1109)
!1126 = !DILocation(line: 666, column: 24, scope: !1109)
!1127 = !DILocation(line: 666, column: 30, scope: !1109)
!1128 = !DILocation(line: 666, column: 3, scope: !1109)
!1129 = !DILocation(line: 667, column: 6, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !817, file: !196, line: 667, column: 6)
!1131 = !DILocation(line: 667, column: 12, scope: !1130)
!1132 = !DILocation(line: 667, column: 20, scope: !1130)
!1133 = !DILocation(line: 667, column: 24, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1130, file: !196, discriminator: 1)
!1135 = !DILocation(line: 667, column: 30, scope: !1134)
!1136 = !DILocation(line: 667, column: 38, scope: !1134)
!1137 = !DILocation(line: 667, column: 45, scope: !1134)
!1138 = !DILocation(line: 667, column: 58, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1130, file: !196, discriminator: 2)
!1140 = !DILocation(line: 667, column: 64, scope: !1139)
!1141 = !DILocation(line: 667, column: 73, scope: !1139)
!1142 = !DILocation(line: 667, column: 79, scope: !1139)
!1143 = !DILocation(line: 667, column: 48, scope: !1139)
!1144 = !DILocation(line: 667, column: 88, scope: !1139)
!1145 = !DILocation(line: 667, column: 6, scope: !1139)
!1146 = !DILocation(line: 668, column: 19, scope: !1130)
!1147 = !DILocation(line: 668, column: 24, scope: !1130)
!1148 = !DILocation(line: 668, column: 30, scope: !1130)
!1149 = !DILocation(line: 668, column: 3, scope: !1130)
!1150 = !DILocation(line: 669, column: 27, scope: !817)
!1151 = !DILocation(line: 669, column: 32, scope: !817)
!1152 = !DILocation(line: 669, column: 9, scope: !817)
!1153 = !DILocation(line: 669, column: 15, scope: !817)
!1154 = !DILocation(line: 669, column: 25, scope: !817)
!1155 = !DILocation(line: 670, column: 16, scope: !817)
!1156 = !DILocation(line: 670, column: 2, scope: !817)
!1157 = !DILocation(line: 671, column: 9, scope: !817)
!1158 = !DILocation(line: 671, column: 15, scope: !817)
!1159 = !DILocation(line: 671, column: 26, scope: !817)
!1160 = !DILocation(line: 673, column: 15, scope: !817)
!1161 = !DILocation(line: 673, column: 21, scope: !817)
!1162 = !DILocation(line: 673, column: 2, scope: !817)
!1163 = !DILocation(line: 673, column: 8, scope: !817)
!1164 = !DILocation(line: 673, column: 13, scope: !817)
!1165 = !DILocation(line: 675, column: 24, scope: !817)
!1166 = !DILocation(line: 675, column: 2, scope: !817)
!1167 = !DILocation(line: 676, column: 23, scope: !817)
!1168 = !DILocation(line: 676, column: 2, scope: !817)
!1169 = !DILocation(line: 677, column: 23, scope: !817)
!1170 = !DILocation(line: 677, column: 9, scope: !817)
!1171 = !DILocation(line: 678, column: 9, scope: !817)
!1172 = !DILocation(line: 679, column: 1, scope: !817)
!1173 = distinct !DISubprogram(name: "terminfo_core_deinit", scope: !196, file: !196, line: 718, type: !32, isLocal: false, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1174 = !DILocalVariable(name: "term", arg: 1, scope: !1173, file: !196, line: 718, type: !8)
!1175 = !DILocation(line: 718, column: 37, scope: !1173)
!1176 = !DILocalVariable(name: "old_term", scope: !1173, file: !196, line: 720, type: !8)
!1177 = !DILocation(line: 720, column: 12, scope: !1173)
!1178 = !DILocation(line: 722, column: 13, scope: !1173)
!1179 = !DILocation(line: 722, column: 11, scope: !1173)
!1180 = !DILocation(line: 723, column: 24, scope: !1173)
!1181 = !DILocation(line: 723, column: 22, scope: !1173)
!1182 = !DILocation(line: 724, column: 2, scope: !1173)
!1183 = !DILocation(line: 724, column: 8, scope: !1173)
!1184 = !DILocation(line: 724, column: 19, scope: !1173)
!1185 = !DILocation(line: 725, column: 24, scope: !1173)
!1186 = !DILocation(line: 725, column: 22, scope: !1173)
!1187 = !DILocation(line: 727, column: 23, scope: !1173)
!1188 = !DILocation(line: 727, column: 9, scope: !1173)
!1189 = !DILocation(line: 729, column: 9, scope: !1173)
!1190 = !DILocation(line: 729, column: 15, scope: !1173)
!1191 = !DILocation(line: 729, column: 2, scope: !1173)
!1192 = !DILocation(line: 730, column: 25, scope: !1173)
!1193 = !DILocation(line: 730, column: 2, scope: !1173)
!1194 = !DILocation(line: 732, column: 16, scope: !1173)
!1195 = !DILocation(line: 732, column: 9, scope: !1173)
!1196 = !DILocation(line: 733, column: 1, scope: !1173)
!1197 = distinct !DISubprogram(name: "color256", scope: !196, file: !196, line: 349, type: !1198, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!17, !1200, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1203 = !DILocalVariable(name: "term", arg: 1, scope: !1197, file: !196, line: 349, type: !1200)
!1204 = !DILocation(line: 349, column: 44, scope: !1197)
!1205 = !DILocalVariable(name: "color", arg: 2, scope: !1197, file: !196, line: 349, type: !1202)
!1206 = !DILocation(line: 349, column: 60, scope: !1197)
!1207 = !DILocation(line: 350, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1197, file: !196, line: 350, column: 6)
!1209 = !DILocation(line: 350, column: 14, scope: !1208)
!1210 = !DILocation(line: 350, column: 20, scope: !1208)
!1211 = !DILocation(line: 350, column: 12, scope: !1208)
!1212 = !DILocation(line: 350, column: 6, scope: !1197)
!1213 = !DILocation(line: 351, column: 10, scope: !1208)
!1214 = !DILocation(line: 351, column: 3, scope: !1208)
!1215 = !DILocation(line: 353, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1197, file: !196, line: 353, column: 6)
!1217 = !DILocation(line: 353, column: 12, scope: !1216)
!1218 = !DILocation(line: 353, column: 6, scope: !1197)
!1219 = !DILocation(line: 354, column: 10, scope: !1216)
!1220 = !DILocation(line: 354, column: 18, scope: !1216)
!1221 = !DILocation(line: 354, column: 24, scope: !1216)
!1222 = !DILocation(line: 354, column: 16, scope: !1216)
!1223 = !DILocation(line: 354, column: 3, scope: !1216)
!1224 = !DILocation(line: 356, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1197, file: !196, line: 356, column: 6)
!1226 = !DILocation(line: 356, column: 12, scope: !1225)
!1227 = !DILocation(line: 356, column: 6, scope: !1197)
!1228 = !DILocation(line: 357, column: 27, scope: !1225)
!1229 = !DILocation(line: 357, column: 10, scope: !1225)
!1230 = !DILocation(line: 357, column: 36, scope: !1225)
!1231 = !DILocation(line: 357, column: 42, scope: !1225)
!1232 = !DILocation(line: 357, column: 34, scope: !1225)
!1233 = !DILocation(line: 357, column: 3, scope: !1225)
!1234 = !DILocation(line: 359, column: 9, scope: !1197)
!1235 = !DILocation(line: 359, column: 17, scope: !1197)
!1236 = !DILocation(line: 359, column: 23, scope: !1197)
!1237 = !DILocation(line: 359, column: 15, scope: !1197)
!1238 = !DILocation(line: 359, column: 2, scope: !1197)
!1239 = !DILocation(line: 360, column: 1, scope: !1197)
!1240 = distinct !DISubprogram(name: "term_fill_capabilities", scope: !196, file: !196, line: 402, type: !32, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1241 = !DILocalVariable(name: "term", arg: 1, scope: !1240, file: !196, line: 402, type: !8)
!1242 = !DILocation(line: 402, column: 46, scope: !1240)
!1243 = !DILocalVariable(name: "i", scope: !1240, file: !196, line: 404, type: !17)
!1244 = !DILocation(line: 404, column: 6, scope: !1240)
!1245 = !DILocalVariable(name: "ival", scope: !1240, file: !196, line: 404, type: !17)
!1246 = !DILocation(line: 404, column: 9, scope: !1240)
!1247 = !DILocalVariable(name: "sval", scope: !1240, file: !196, line: 405, type: !6)
!1248 = !DILocation(line: 405, column: 8, scope: !1240)
!1249 = !DILocalVariable(name: "ptr", scope: !1240, file: !196, line: 406, type: !4)
!1250 = !DILocation(line: 406, column: 15, scope: !1240)
!1251 = !DILocation(line: 408, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !196, line: 408, column: 2)
!1253 = !DILocation(line: 408, column: 7, scope: !1252)
!1254 = !DILocation(line: 408, column: 14, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !196, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !196, line: 408, column: 2)
!1257 = !DILocation(line: 408, column: 16, scope: !1255)
!1258 = !DILocation(line: 408, column: 2, scope: !1255)
!1259 = !DILocation(line: 409, column: 33, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !196, line: 408, column: 55)
!1261 = !DILocation(line: 409, column: 22, scope: !1260)
!1262 = !DILocation(line: 409, column: 56, scope: !1260)
!1263 = !DILocation(line: 409, column: 50, scope: !1260)
!1264 = !DILocation(line: 409, column: 59, scope: !1260)
!1265 = !DILocation(line: 409, column: 41, scope: !1260)
!1266 = !DILocation(line: 409, column: 39, scope: !1260)
!1267 = !DILocation(line: 409, column: 7, scope: !1260)
!1268 = !DILocation(line: 411, column: 17, scope: !1260)
!1269 = !DILocation(line: 411, column: 11, scope: !1260)
!1270 = !DILocation(line: 411, column: 20, scope: !1260)
!1271 = !DILocation(line: 411, column: 3, scope: !1260)
!1272 = !DILocation(line: 413, column: 27, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1260, file: !196, line: 411, column: 26)
!1274 = !DILocation(line: 413, column: 21, scope: !1273)
!1275 = !DILocation(line: 413, column: 30, scope: !1273)
!1276 = !DILocation(line: 413, column: 11, scope: !1273)
!1277 = !DILocation(line: 413, column: 9, scope: !1273)
!1278 = !DILocation(line: 414, column: 39, scope: !1273)
!1279 = !DILocation(line: 414, column: 33, scope: !1273)
!1280 = !DILocation(line: 414, column: 26, scope: !1273)
!1281 = !DILocation(line: 414, column: 37, scope: !1273)
!1282 = !DILocation(line: 415, column: 25, scope: !1273)
!1283 = !DILocation(line: 417, column: 26, scope: !1273)
!1284 = !DILocation(line: 417, column: 20, scope: !1273)
!1285 = !DILocation(line: 417, column: 29, scope: !1273)
!1286 = !DILocation(line: 417, column: 11, scope: !1273)
!1287 = !DILocation(line: 417, column: 9, scope: !1273)
!1288 = !DILocation(line: 418, column: 39, scope: !1273)
!1289 = !DILocation(line: 418, column: 33, scope: !1273)
!1290 = !DILocation(line: 418, column: 26, scope: !1273)
!1291 = !DILocation(line: 418, column: 37, scope: !1273)
!1292 = !DILocation(line: 419, column: 25, scope: !1273)
!1293 = !DILocation(line: 421, column: 26, scope: !1273)
!1294 = !DILocation(line: 421, column: 20, scope: !1273)
!1295 = !DILocation(line: 421, column: 29, scope: !1273)
!1296 = !DILocation(line: 421, column: 11, scope: !1273)
!1297 = !DILocation(line: 421, column: 9, scope: !1273)
!1298 = !DILocation(line: 422, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1273, file: !196, line: 422, column: 8)
!1300 = !DILocation(line: 422, column: 13, scope: !1299)
!1301 = !DILocation(line: 422, column: 8, scope: !1273)
!1302 = !DILocation(line: 423, column: 15, scope: !1299)
!1303 = !DILocation(line: 423, column: 6, scope: !1299)
!1304 = !DILocation(line: 423, column: 19, scope: !1299)
!1305 = !DILocation(line: 423, column: 5, scope: !1299)
!1306 = !DILocation(line: 425, column: 21, scope: !1299)
!1307 = !DILocation(line: 425, column: 15, scope: !1299)
!1308 = !DILocation(line: 425, column: 6, scope: !1299)
!1309 = !DILocation(line: 425, column: 19, scope: !1299)
!1310 = !DILocation(line: 426, column: 25, scope: !1273)
!1311 = !DILocation(line: 428, column: 2, scope: !1260)
!1312 = !DILocation(line: 408, column: 51, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1256, file: !196, discriminator: 2)
!1314 = !DILocation(line: 408, column: 2, scope: !1313)
!1315 = distinct !{!1315, !1316}
!1316 = !DILocation(line: 408, column: 2, scope: !1240)
!1317 = !DILocation(line: 429, column: 1, scope: !1240)
!1318 = distinct !DISubprogram(name: "_move_cup", scope: !196, file: !196, line: 106, type: !15, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1319 = !DILocalVariable(name: "term", arg: 1, scope: !1318, file: !196, line: 106, type: !8)
!1320 = !DILocation(line: 106, column: 33, scope: !1318)
!1321 = !DILocalVariable(name: "x", arg: 2, scope: !1318, file: !196, line: 106, type: !17)
!1322 = !DILocation(line: 106, column: 43, scope: !1318)
!1323 = !DILocalVariable(name: "y", arg: 3, scope: !1318, file: !196, line: 106, type: !17)
!1324 = !DILocation(line: 106, column: 50, scope: !1318)
!1325 = !DILocation(line: 108, column: 14, scope: !1318)
!1326 = !DILocation(line: 108, column: 20, scope: !1318)
!1327 = !DILocation(line: 108, column: 28, scope: !1318)
!1328 = !DILocation(line: 108, column: 31, scope: !1318)
!1329 = !DILocation(line: 108, column: 8, scope: !1318)
!1330 = !DILocation(line: 108, column: 2, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1318, file: !196, discriminator: 1)
!1332 = !DILocation(line: 109, column: 1, scope: !1318)
!1333 = distinct !DISubprogram(name: "_move_pa", scope: !196, file: !196, line: 112, type: !15, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1334 = !DILocalVariable(name: "term", arg: 1, scope: !1333, file: !196, line: 112, type: !8)
!1335 = !DILocation(line: 112, column: 32, scope: !1333)
!1336 = !DILocalVariable(name: "x", arg: 2, scope: !1333, file: !196, line: 112, type: !17)
!1337 = !DILocation(line: 112, column: 42, scope: !1333)
!1338 = !DILocalVariable(name: "y", arg: 3, scope: !1333, file: !196, line: 112, type: !17)
!1339 = !DILocation(line: 112, column: 49, scope: !1333)
!1340 = !DILocation(line: 114, column: 14, scope: !1333)
!1341 = !DILocation(line: 114, column: 20, scope: !1333)
!1342 = !DILocation(line: 114, column: 28, scope: !1333)
!1343 = !DILocation(line: 114, column: 8, scope: !1333)
!1344 = !DILocation(line: 114, column: 2, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1333, file: !196, discriminator: 1)
!1346 = !DILocation(line: 115, column: 14, scope: !1333)
!1347 = !DILocation(line: 115, column: 20, scope: !1333)
!1348 = !DILocation(line: 115, column: 28, scope: !1333)
!1349 = !DILocation(line: 115, column: 8, scope: !1333)
!1350 = !DILocation(line: 115, column: 2, scope: !1345)
!1351 = !DILocation(line: 116, column: 1, scope: !1333)
!1352 = distinct !DISubprogram(name: "_move_relative", scope: !196, file: !196, line: 119, type: !20, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1353 = !DILocalVariable(name: "term", arg: 1, scope: !1352, file: !196, line: 119, type: !8)
!1354 = !DILocation(line: 119, column: 38, scope: !1352)
!1355 = !DILocalVariable(name: "oldx", arg: 2, scope: !1352, file: !196, line: 119, type: !17)
!1356 = !DILocation(line: 119, column: 48, scope: !1352)
!1357 = !DILocalVariable(name: "oldy", arg: 3, scope: !1352, file: !196, line: 119, type: !17)
!1358 = !DILocation(line: 119, column: 58, scope: !1352)
!1359 = !DILocalVariable(name: "x", arg: 4, scope: !1352, file: !196, line: 119, type: !17)
!1360 = !DILocation(line: 119, column: 68, scope: !1352)
!1361 = !DILocalVariable(name: "y", arg: 5, scope: !1352, file: !196, line: 119, type: !17)
!1362 = !DILocation(line: 119, column: 75, scope: !1352)
!1363 = !DILocation(line: 121, column: 6, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1352, file: !196, line: 121, column: 6)
!1365 = !DILocation(line: 121, column: 11, scope: !1364)
!1366 = !DILocation(line: 121, column: 16, scope: !1364)
!1367 = !DILocation(line: 121, column: 19, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1364, file: !196, discriminator: 1)
!1369 = !DILocation(line: 121, column: 21, scope: !1368)
!1370 = !DILocation(line: 121, column: 26, scope: !1368)
!1371 = !DILocation(line: 121, column: 29, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1364, file: !196, discriminator: 2)
!1373 = !DILocation(line: 121, column: 34, scope: !1372)
!1374 = !DILocation(line: 121, column: 38, scope: !1372)
!1375 = !DILocation(line: 121, column: 31, scope: !1372)
!1376 = !DILocation(line: 121, column: 6, scope: !1372)
!1377 = !DILocation(line: 124, column: 3, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1364, file: !196, line: 121, column: 42)
!1379 = !DILocation(line: 125, column: 17, scope: !1378)
!1380 = !DILocation(line: 128, column: 6, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1352, file: !196, line: 128, column: 6)
!1382 = !DILocation(line: 128, column: 11, scope: !1381)
!1383 = !DILocation(line: 128, column: 15, scope: !1381)
!1384 = !DILocation(line: 128, column: 18, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1381, file: !196, discriminator: 1)
!1386 = !DILocation(line: 128, column: 23, scope: !1385)
!1387 = !DILocation(line: 128, column: 20, scope: !1385)
!1388 = !DILocation(line: 128, column: 6, scope: !1385)
!1389 = !DILocation(line: 130, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !196, line: 130, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1381, file: !196, line: 128, column: 29)
!1392 = !DILocation(line: 130, column: 12, scope: !1390)
!1393 = !DILocation(line: 130, column: 16, scope: !1390)
!1394 = !DILocation(line: 130, column: 9, scope: !1390)
!1395 = !DILocation(line: 130, column: 19, scope: !1390)
!1396 = !DILocation(line: 130, column: 22, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1390, file: !196, discriminator: 1)
!1398 = !DILocation(line: 130, column: 28, scope: !1397)
!1399 = !DILocation(line: 130, column: 7, scope: !1397)
!1400 = !DILocation(line: 131, column: 16, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1390, file: !196, line: 130, column: 37)
!1402 = !DILocation(line: 131, column: 22, scope: !1401)
!1403 = !DILocation(line: 131, column: 10, scope: !1401)
!1404 = !DILocation(line: 131, column: 4, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1401, file: !196, discriminator: 1)
!1406 = !DILocation(line: 132, column: 25, scope: !1401)
!1407 = !DILocation(line: 134, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1391, file: !196, line: 134, column: 7)
!1409 = !DILocation(line: 134, column: 12, scope: !1408)
!1410 = !DILocation(line: 134, column: 16, scope: !1408)
!1411 = !DILocation(line: 134, column: 9, scope: !1408)
!1412 = !DILocation(line: 134, column: 19, scope: !1408)
!1413 = !DILocation(line: 134, column: 22, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1408, file: !196, discriminator: 1)
!1415 = !DILocation(line: 134, column: 27, scope: !1414)
!1416 = !DILocation(line: 134, column: 24, scope: !1414)
!1417 = !DILocation(line: 134, column: 32, scope: !1414)
!1418 = !DILocation(line: 134, column: 35, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1408, file: !196, discriminator: 2)
!1420 = !DILocation(line: 134, column: 41, scope: !1419)
!1421 = !DILocation(line: 134, column: 7, scope: !1419)
!1422 = !DILocation(line: 135, column: 16, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1408, file: !196, line: 134, column: 50)
!1424 = !DILocation(line: 135, column: 22, scope: !1423)
!1425 = !DILocation(line: 135, column: 10, scope: !1423)
!1426 = !DILocation(line: 135, column: 4, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1423, file: !196, discriminator: 1)
!1428 = !DILocation(line: 136, column: 25, scope: !1423)
!1429 = !DILocation(line: 138, column: 2, scope: !1391)
!1430 = !DILocation(line: 141, column: 6, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1352, file: !196, line: 141, column: 6)
!1432 = !DILocation(line: 141, column: 12, scope: !1431)
!1433 = !DILocation(line: 141, column: 6, scope: !1352)
!1434 = !DILocation(line: 142, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !196, line: 141, column: 20)
!1436 = !DILocation(line: 142, column: 21, scope: !1435)
!1437 = !DILocation(line: 142, column: 29, scope: !1435)
!1438 = !DILocation(line: 142, column: 32, scope: !1435)
!1439 = !DILocation(line: 142, column: 9, scope: !1435)
!1440 = !DILocation(line: 142, column: 3, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1435, file: !196, discriminator: 1)
!1442 = !DILocation(line: 143, column: 17, scope: !1435)
!1443 = !DILocation(line: 146, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1352, file: !196, line: 146, column: 6)
!1445 = !DILocation(line: 146, column: 14, scope: !1444)
!1446 = !DILocation(line: 146, column: 11, scope: !1444)
!1447 = !DILocation(line: 146, column: 6, scope: !1352)
!1448 = !DILocation(line: 147, column: 15, scope: !1444)
!1449 = !DILocation(line: 147, column: 21, scope: !1444)
!1450 = !DILocation(line: 147, column: 29, scope: !1444)
!1451 = !DILocation(line: 147, column: 9, scope: !1444)
!1452 = !DILocation(line: 147, column: 3, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1444, file: !196, discriminator: 1)
!1454 = !DILocation(line: 147, column: 3, scope: !1444)
!1455 = !DILocation(line: 148, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1352, file: !196, line: 148, column: 13)
!1457 = !DILocation(line: 148, column: 21, scope: !1456)
!1458 = !DILocation(line: 148, column: 18, scope: !1456)
!1459 = !DILocation(line: 148, column: 13, scope: !1352)
!1460 = !DILocation(line: 149, column: 15, scope: !1456)
!1461 = !DILocation(line: 149, column: 21, scope: !1456)
!1462 = !DILocation(line: 149, column: 29, scope: !1456)
!1463 = !DILocation(line: 149, column: 9, scope: !1456)
!1464 = !DILocation(line: 149, column: 3, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1456, file: !196, discriminator: 1)
!1466 = !DILocation(line: 149, column: 3, scope: !1456)
!1467 = !DILocation(line: 150, column: 1, scope: !1352)
!1468 = distinct !DISubprogram(name: "_set_cursor_visible", scope: !196, file: !196, line: 153, type: !24, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1469 = !DILocalVariable(name: "term", arg: 1, scope: !1468, file: !196, line: 153, type: !8)
!1470 = !DILocation(line: 153, column: 43, scope: !1468)
!1471 = !DILocalVariable(name: "set", arg: 2, scope: !1468, file: !196, line: 153, type: !17)
!1472 = !DILocation(line: 153, column: 53, scope: !1468)
!1473 = !DILocation(line: 155, column: 14, scope: !1468)
!1474 = !DILocation(line: 155, column: 20, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1468, file: !196, discriminator: 1)
!1476 = !DILocation(line: 155, column: 26, scope: !1475)
!1477 = !DILocation(line: 155, column: 14, scope: !1475)
!1478 = !DILocation(line: 155, column: 37, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1468, file: !196, discriminator: 2)
!1480 = !DILocation(line: 155, column: 43, scope: !1479)
!1481 = !DILocation(line: 155, column: 14, scope: !1479)
!1482 = !DILocation(line: 155, column: 14, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1468, file: !196, discriminator: 3)
!1484 = !DILocation(line: 155, column: 8, scope: !1483)
!1485 = !DILocation(line: 155, column: 2, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1483, file: !196, discriminator: 4)
!1487 = !DILocation(line: 156, column: 1, scope: !1468)
!1488 = distinct !DISubprogram(name: "_scroll_region", scope: !196, file: !196, line: 165, type: !28, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1489 = !DILocalVariable(name: "term", arg: 1, scope: !1488, file: !196, line: 165, type: !8)
!1490 = !DILocation(line: 165, column: 38, scope: !1488)
!1491 = !DILocalVariable(name: "y1", arg: 2, scope: !1488, file: !196, line: 165, type: !17)
!1492 = !DILocation(line: 165, column: 48, scope: !1488)
!1493 = !DILocalVariable(name: "y2", arg: 3, scope: !1488, file: !196, line: 165, type: !17)
!1494 = !DILocation(line: 165, column: 56, scope: !1488)
!1495 = !DILocalVariable(name: "count", arg: 4, scope: !1488, file: !196, line: 165, type: !17)
!1496 = !DILocation(line: 165, column: 64, scope: !1488)
!1497 = !DILocation(line: 168, column: 14, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1488, file: !196, line: 168, column: 13)
!1499 = !DILocation(line: 168, column: 21, scope: !1498)
!1500 = !DILocation(line: 168, column: 28, scope: !1498)
!1501 = !DILocation(line: 168, column: 13, scope: !1488)
!1502 = !DILocation(line: 168, column: 23, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1498, file: !196, discriminator: 1)
!1504 = !DILocation(line: 168, column: 30, scope: !1503)
!1505 = !DILocation(line: 168, column: 38, scope: !1503)
!1506 = !DILocation(line: 168, column: 42, scope: !1503)
!1507 = !DILocation(line: 168, column: 16, scope: !1503)
!1508 = !DILocation(line: 168, column: 10, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1503, file: !196, discriminator: 4)
!1510 = !DILocation(line: 168, column: 10, scope: !1503)
!1511 = !DILocation(line: 168, column: 75, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !196, discriminator: 2)
!1513 = distinct !DILexicalBlock(scope: !1498, file: !196, line: 168, column: 74)
!1514 = !DILocation(line: 168, column: 82, scope: !1512)
!1515 = !DILocation(line: 168, column: 90, scope: !1512)
!1516 = !DILocation(line: 168, column: 74, scope: !1512)
!1517 = !DILocation(line: 168, column: 23, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1513, file: !196, discriminator: 3)
!1519 = !DILocation(line: 168, column: 30, scope: !1518)
!1520 = !DILocation(line: 168, column: 39, scope: !1518)
!1521 = !DILocation(line: 168, column: 43, scope: !1518)
!1522 = !DILocation(line: 168, column: 51, scope: !1518)
!1523 = !DILocation(line: 168, column: 58, scope: !1518)
!1524 = !DILocation(line: 168, column: 63, scope: !1518)
!1525 = !DILocation(line: 168, column: 16, scope: !1518)
!1526 = !DILocation(line: 168, column: 10, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1518, file: !196, discriminator: 5)
!1528 = !DILocation(line: 168, column: 10, scope: !1518)
!1529 = !DILocation(line: 170, column: 2, scope: !1488)
!1530 = !DILocation(line: 170, column: 8, scope: !1488)
!1531 = !DILocation(line: 170, column: 13, scope: !1488)
!1532 = !DILocation(line: 170, column: 22, scope: !1488)
!1533 = !DILocation(line: 171, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1488, file: !196, line: 171, column: 6)
!1535 = !DILocation(line: 171, column: 12, scope: !1534)
!1536 = !DILocation(line: 171, column: 6, scope: !1488)
!1537 = !DILocation(line: 172, column: 3, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !196, line: 171, column: 17)
!1539 = !DILocation(line: 172, column: 9, scope: !1538)
!1540 = !DILocation(line: 172, column: 14, scope: !1538)
!1541 = !DILocation(line: 172, column: 23, scope: !1538)
!1542 = !DILocation(line: 173, column: 15, scope: !1538)
!1543 = !DILocation(line: 173, column: 21, scope: !1538)
!1544 = !DILocation(line: 173, column: 30, scope: !1538)
!1545 = !DILocation(line: 173, column: 37, scope: !1538)
!1546 = !DILocation(line: 173, column: 9, scope: !1538)
!1547 = !DILocation(line: 173, column: 3, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1538, file: !196, discriminator: 1)
!1549 = !DILocation(line: 174, column: 2, scope: !1538)
!1550 = !DILocation(line: 174, column: 13, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !196, discriminator: 1)
!1552 = distinct !DILexicalBlock(scope: !1534, file: !196, line: 174, column: 13)
!1553 = !DILocation(line: 174, column: 19, scope: !1551)
!1554 = !DILocation(line: 175, column: 3, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !196, line: 174, column: 24)
!1556 = !DILocation(line: 175, column: 9, scope: !1555)
!1557 = !DILocation(line: 175, column: 14, scope: !1555)
!1558 = !DILocation(line: 175, column: 23, scope: !1555)
!1559 = !DILocation(line: 176, column: 15, scope: !1555)
!1560 = !DILocation(line: 176, column: 21, scope: !1555)
!1561 = !DILocation(line: 176, column: 30, scope: !1555)
!1562 = !DILocation(line: 176, column: 29, scope: !1555)
!1563 = !DILocation(line: 176, column: 38, scope: !1555)
!1564 = !DILocation(line: 176, column: 37, scope: !1555)
!1565 = !DILocation(line: 176, column: 9, scope: !1555)
!1566 = !DILocation(line: 176, column: 3, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1555, file: !196, discriminator: 1)
!1568 = !DILocation(line: 177, column: 2, scope: !1555)
!1569 = !DILocation(line: 180, column: 14, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1488, file: !196, line: 180, column: 13)
!1571 = !DILocation(line: 180, column: 21, scope: !1570)
!1572 = !DILocation(line: 180, column: 28, scope: !1570)
!1573 = !DILocation(line: 180, column: 13, scope: !1488)
!1574 = !DILocation(line: 180, column: 23, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1570, file: !196, discriminator: 1)
!1576 = !DILocation(line: 180, column: 30, scope: !1575)
!1577 = !DILocation(line: 180, column: 41, scope: !1575)
!1578 = !DILocation(line: 180, column: 47, scope: !1575)
!1579 = !DILocation(line: 180, column: 53, scope: !1575)
!1580 = !DILocation(line: 180, column: 16, scope: !1575)
!1581 = !DILocation(line: 180, column: 10, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1575, file: !196, discriminator: 4)
!1583 = !DILocation(line: 180, column: 10, scope: !1575)
!1584 = !DILocation(line: 180, column: 86, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !196, discriminator: 2)
!1586 = distinct !DILexicalBlock(scope: !1570, file: !196, line: 180, column: 85)
!1587 = !DILocation(line: 180, column: 93, scope: !1585)
!1588 = !DILocation(line: 180, column: 101, scope: !1585)
!1589 = !DILocation(line: 180, column: 85, scope: !1585)
!1590 = !DILocation(line: 180, column: 23, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1586, file: !196, discriminator: 3)
!1592 = !DILocation(line: 180, column: 30, scope: !1591)
!1593 = !DILocation(line: 180, column: 42, scope: !1591)
!1594 = !DILocation(line: 180, column: 48, scope: !1591)
!1595 = !DILocation(line: 180, column: 54, scope: !1591)
!1596 = !DILocation(line: 180, column: 62, scope: !1591)
!1597 = !DILocation(line: 180, column: 69, scope: !1591)
!1598 = !DILocation(line: 180, column: 74, scope: !1591)
!1599 = !DILocation(line: 180, column: 16, scope: !1591)
!1600 = !DILocation(line: 180, column: 10, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1591, file: !196, discriminator: 5)
!1602 = !DILocation(line: 180, column: 10, scope: !1591)
!1603 = !DILocation(line: 181, column: 1, scope: !1488)
!1604 = distinct !DISubprogram(name: "_scroll_line", scope: !196, file: !196, line: 206, type: !28, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1605 = !DILocalVariable(name: "term", arg: 1, scope: !1604, file: !196, line: 206, type: !8)
!1606 = !DILocation(line: 206, column: 36, scope: !1604)
!1607 = !DILocalVariable(name: "y1", arg: 2, scope: !1604, file: !196, line: 206, type: !17)
!1608 = !DILocation(line: 206, column: 46, scope: !1604)
!1609 = !DILocalVariable(name: "y2", arg: 3, scope: !1604, file: !196, line: 206, type: !17)
!1610 = !DILocation(line: 206, column: 54, scope: !1604)
!1611 = !DILocalVariable(name: "count", arg: 4, scope: !1604, file: !196, line: 206, type: !17)
!1612 = !DILocation(line: 206, column: 62, scope: !1604)
!1613 = !DILocation(line: 211, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !196, line: 211, column: 13)
!1615 = !DILocation(line: 211, column: 21, scope: !1614)
!1616 = !DILocation(line: 211, column: 28, scope: !1614)
!1617 = !DILocation(line: 211, column: 13, scope: !1604)
!1618 = !DILocation(line: 211, column: 23, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1614, file: !196, discriminator: 1)
!1620 = !DILocation(line: 211, column: 30, scope: !1619)
!1621 = !DILocation(line: 211, column: 38, scope: !1619)
!1622 = !DILocation(line: 211, column: 42, scope: !1619)
!1623 = !DILocation(line: 211, column: 16, scope: !1619)
!1624 = !DILocation(line: 211, column: 10, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1619, file: !196, discriminator: 4)
!1626 = !DILocation(line: 211, column: 10, scope: !1619)
!1627 = !DILocation(line: 211, column: 75, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1629, file: !196, discriminator: 2)
!1629 = distinct !DILexicalBlock(scope: !1614, file: !196, line: 211, column: 74)
!1630 = !DILocation(line: 211, column: 82, scope: !1628)
!1631 = !DILocation(line: 211, column: 90, scope: !1628)
!1632 = !DILocation(line: 211, column: 74, scope: !1628)
!1633 = !DILocation(line: 211, column: 23, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1629, file: !196, discriminator: 3)
!1635 = !DILocation(line: 211, column: 30, scope: !1634)
!1636 = !DILocation(line: 211, column: 39, scope: !1634)
!1637 = !DILocation(line: 211, column: 43, scope: !1634)
!1638 = !DILocation(line: 211, column: 51, scope: !1634)
!1639 = !DILocation(line: 211, column: 58, scope: !1634)
!1640 = !DILocation(line: 211, column: 63, scope: !1634)
!1641 = !DILocation(line: 211, column: 16, scope: !1634)
!1642 = !DILocation(line: 211, column: 10, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1634, file: !196, discriminator: 5)
!1644 = !DILocation(line: 211, column: 10, scope: !1634)
!1645 = !DILocation(line: 213, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1604, file: !196, line: 213, column: 6)
!1647 = !DILocation(line: 213, column: 12, scope: !1646)
!1648 = !DILocation(line: 213, column: 6, scope: !1604)
!1649 = !DILocation(line: 214, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !196, line: 213, column: 17)
!1651 = !DILocation(line: 214, column: 9, scope: !1650)
!1652 = !DILocation(line: 214, column: 14, scope: !1650)
!1653 = !DILocation(line: 214, column: 23, scope: !1650)
!1654 = !DILocation(line: 215, column: 15, scope: !1650)
!1655 = !DILocation(line: 215, column: 21, scope: !1650)
!1656 = !DILocation(line: 215, column: 28, scope: !1650)
!1657 = !DILocation(line: 215, column: 35, scope: !1650)
!1658 = !DILocation(line: 215, column: 9, scope: !1650)
!1659 = !DILocation(line: 215, column: 3, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1650, file: !196, discriminator: 1)
!1661 = !DILocation(line: 216, column: 3, scope: !1650)
!1662 = !DILocation(line: 216, column: 9, scope: !1650)
!1663 = !DILocation(line: 216, column: 14, scope: !1650)
!1664 = !DILocation(line: 216, column: 23, scope: !1650)
!1665 = !DILocation(line: 216, column: 26, scope: !1650)
!1666 = !DILocation(line: 216, column: 25, scope: !1650)
!1667 = !DILocation(line: 216, column: 31, scope: !1650)
!1668 = !DILocation(line: 217, column: 15, scope: !1650)
!1669 = !DILocation(line: 217, column: 21, scope: !1650)
!1670 = !DILocation(line: 217, column: 28, scope: !1650)
!1671 = !DILocation(line: 217, column: 35, scope: !1650)
!1672 = !DILocation(line: 217, column: 9, scope: !1650)
!1673 = !DILocation(line: 217, column: 3, scope: !1660)
!1674 = !DILocation(line: 218, column: 2, scope: !1650)
!1675 = !DILocation(line: 218, column: 13, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !196, discriminator: 1)
!1677 = distinct !DILexicalBlock(scope: !1646, file: !196, line: 218, column: 13)
!1678 = !DILocation(line: 218, column: 19, scope: !1676)
!1679 = !DILocation(line: 219, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !196, line: 218, column: 24)
!1681 = !DILocation(line: 219, column: 9, scope: !1680)
!1682 = !DILocation(line: 219, column: 14, scope: !1680)
!1683 = !DILocation(line: 219, column: 23, scope: !1680)
!1684 = !DILocation(line: 219, column: 26, scope: !1680)
!1685 = !DILocation(line: 219, column: 25, scope: !1680)
!1686 = !DILocation(line: 219, column: 31, scope: !1680)
!1687 = !DILocation(line: 220, column: 15, scope: !1680)
!1688 = !DILocation(line: 220, column: 21, scope: !1680)
!1689 = !DILocation(line: 220, column: 29, scope: !1680)
!1690 = !DILocation(line: 220, column: 28, scope: !1680)
!1691 = !DILocation(line: 220, column: 37, scope: !1680)
!1692 = !DILocation(line: 220, column: 36, scope: !1680)
!1693 = !DILocation(line: 220, column: 9, scope: !1680)
!1694 = !DILocation(line: 220, column: 3, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1680, file: !196, discriminator: 1)
!1696 = !DILocation(line: 221, column: 3, scope: !1680)
!1697 = !DILocation(line: 221, column: 9, scope: !1680)
!1698 = !DILocation(line: 221, column: 14, scope: !1680)
!1699 = !DILocation(line: 221, column: 23, scope: !1680)
!1700 = !DILocation(line: 222, column: 15, scope: !1680)
!1701 = !DILocation(line: 222, column: 21, scope: !1680)
!1702 = !DILocation(line: 222, column: 29, scope: !1680)
!1703 = !DILocation(line: 222, column: 28, scope: !1680)
!1704 = !DILocation(line: 222, column: 37, scope: !1680)
!1705 = !DILocation(line: 222, column: 36, scope: !1680)
!1706 = !DILocation(line: 222, column: 9, scope: !1680)
!1707 = !DILocation(line: 222, column: 3, scope: !1695)
!1708 = !DILocation(line: 223, column: 2, scope: !1680)
!1709 = !DILocation(line: 226, column: 14, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1604, file: !196, line: 226, column: 13)
!1711 = !DILocation(line: 226, column: 21, scope: !1710)
!1712 = !DILocation(line: 226, column: 28, scope: !1710)
!1713 = !DILocation(line: 226, column: 13, scope: !1604)
!1714 = !DILocation(line: 226, column: 23, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1710, file: !196, discriminator: 1)
!1716 = !DILocation(line: 226, column: 30, scope: !1715)
!1717 = !DILocation(line: 226, column: 41, scope: !1715)
!1718 = !DILocation(line: 226, column: 47, scope: !1715)
!1719 = !DILocation(line: 226, column: 53, scope: !1715)
!1720 = !DILocation(line: 226, column: 16, scope: !1715)
!1721 = !DILocation(line: 226, column: 10, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1715, file: !196, discriminator: 4)
!1723 = !DILocation(line: 226, column: 10, scope: !1715)
!1724 = !DILocation(line: 226, column: 86, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !196, discriminator: 2)
!1726 = distinct !DILexicalBlock(scope: !1710, file: !196, line: 226, column: 85)
!1727 = !DILocation(line: 226, column: 93, scope: !1725)
!1728 = !DILocation(line: 226, column: 101, scope: !1725)
!1729 = !DILocation(line: 226, column: 85, scope: !1725)
!1730 = !DILocation(line: 226, column: 23, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1726, file: !196, discriminator: 3)
!1732 = !DILocation(line: 226, column: 30, scope: !1731)
!1733 = !DILocation(line: 226, column: 42, scope: !1731)
!1734 = !DILocation(line: 226, column: 48, scope: !1731)
!1735 = !DILocation(line: 226, column: 54, scope: !1731)
!1736 = !DILocation(line: 226, column: 62, scope: !1731)
!1737 = !DILocation(line: 226, column: 69, scope: !1731)
!1738 = !DILocation(line: 226, column: 74, scope: !1731)
!1739 = !DILocation(line: 226, column: 16, scope: !1731)
!1740 = !DILocation(line: 226, column: 10, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1731, file: !196, discriminator: 5)
!1742 = !DILocation(line: 226, column: 10, scope: !1731)
!1743 = !DILocation(line: 227, column: 1, scope: !1604)
!1744 = distinct !DISubprogram(name: "_scroll_region_1", scope: !196, file: !196, line: 184, type: !28, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1745 = !DILocalVariable(name: "term", arg: 1, scope: !1744, file: !196, line: 184, type: !8)
!1746 = !DILocation(line: 184, column: 40, scope: !1744)
!1747 = !DILocalVariable(name: "y1", arg: 2, scope: !1744, file: !196, line: 184, type: !17)
!1748 = !DILocation(line: 184, column: 50, scope: !1744)
!1749 = !DILocalVariable(name: "y2", arg: 3, scope: !1744, file: !196, line: 184, type: !17)
!1750 = !DILocation(line: 184, column: 58, scope: !1744)
!1751 = !DILocalVariable(name: "count", arg: 4, scope: !1744, file: !196, line: 184, type: !17)
!1752 = !DILocation(line: 184, column: 66, scope: !1744)
!1753 = !DILocalVariable(name: "i", scope: !1744, file: !196, line: 186, type: !17)
!1754 = !DILocation(line: 186, column: 6, scope: !1744)
!1755 = !DILocation(line: 189, column: 14, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1744, file: !196, line: 189, column: 13)
!1757 = !DILocation(line: 189, column: 21, scope: !1756)
!1758 = !DILocation(line: 189, column: 28, scope: !1756)
!1759 = !DILocation(line: 189, column: 13, scope: !1744)
!1760 = !DILocation(line: 189, column: 23, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1756, file: !196, discriminator: 1)
!1762 = !DILocation(line: 189, column: 30, scope: !1761)
!1763 = !DILocation(line: 189, column: 38, scope: !1761)
!1764 = !DILocation(line: 189, column: 42, scope: !1761)
!1765 = !DILocation(line: 189, column: 16, scope: !1761)
!1766 = !DILocation(line: 189, column: 10, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1761, file: !196, discriminator: 4)
!1768 = !DILocation(line: 189, column: 10, scope: !1761)
!1769 = !DILocation(line: 189, column: 75, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !196, discriminator: 2)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !196, line: 189, column: 74)
!1772 = !DILocation(line: 189, column: 82, scope: !1770)
!1773 = !DILocation(line: 189, column: 90, scope: !1770)
!1774 = !DILocation(line: 189, column: 74, scope: !1770)
!1775 = !DILocation(line: 189, column: 23, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1771, file: !196, discriminator: 3)
!1777 = !DILocation(line: 189, column: 30, scope: !1776)
!1778 = !DILocation(line: 189, column: 39, scope: !1776)
!1779 = !DILocation(line: 189, column: 43, scope: !1776)
!1780 = !DILocation(line: 189, column: 51, scope: !1776)
!1781 = !DILocation(line: 189, column: 58, scope: !1776)
!1782 = !DILocation(line: 189, column: 63, scope: !1776)
!1783 = !DILocation(line: 189, column: 16, scope: !1776)
!1784 = !DILocation(line: 189, column: 10, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1776, file: !196, discriminator: 5)
!1786 = !DILocation(line: 189, column: 10, scope: !1776)
!1787 = !DILocation(line: 191, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1744, file: !196, line: 191, column: 6)
!1789 = !DILocation(line: 191, column: 12, scope: !1788)
!1790 = !DILocation(line: 191, column: 6, scope: !1744)
!1791 = !DILocation(line: 192, column: 3, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !196, line: 191, column: 17)
!1793 = !DILocation(line: 192, column: 9, scope: !1792)
!1794 = !DILocation(line: 192, column: 14, scope: !1792)
!1795 = !DILocation(line: 192, column: 23, scope: !1792)
!1796 = !DILocation(line: 193, column: 10, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !196, line: 193, column: 3)
!1798 = !DILocation(line: 193, column: 8, scope: !1797)
!1799 = !DILocation(line: 193, column: 15, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !196, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !196, line: 193, column: 3)
!1802 = !DILocation(line: 193, column: 19, scope: !1800)
!1803 = !DILocation(line: 193, column: 17, scope: !1800)
!1804 = !DILocation(line: 193, column: 3, scope: !1800)
!1805 = !DILocation(line: 194, column: 16, scope: !1801)
!1806 = !DILocation(line: 194, column: 22, scope: !1801)
!1807 = !DILocation(line: 194, column: 10, scope: !1801)
!1808 = !DILocation(line: 194, column: 4, scope: !1800)
!1809 = !DILocation(line: 194, column: 4, scope: !1801)
!1810 = !DILocation(line: 193, column: 27, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1801, file: !196, discriminator: 2)
!1812 = !DILocation(line: 193, column: 3, scope: !1811)
!1813 = distinct !{!1813, !1814}
!1814 = !DILocation(line: 193, column: 3, scope: !1792)
!1815 = !DILocation(line: 195, column: 2, scope: !1792)
!1816 = !DILocation(line: 195, column: 13, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !196, discriminator: 1)
!1818 = distinct !DILexicalBlock(scope: !1788, file: !196, line: 195, column: 13)
!1819 = !DILocation(line: 195, column: 19, scope: !1817)
!1820 = !DILocation(line: 196, column: 3, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !196, line: 195, column: 24)
!1822 = !DILocation(line: 196, column: 9, scope: !1821)
!1823 = !DILocation(line: 196, column: 14, scope: !1821)
!1824 = !DILocation(line: 196, column: 23, scope: !1821)
!1825 = !DILocation(line: 197, column: 12, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !196, line: 197, column: 3)
!1827 = !DILocation(line: 197, column: 10, scope: !1826)
!1828 = !DILocation(line: 197, column: 8, scope: !1826)
!1829 = !DILocation(line: 197, column: 19, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !196, discriminator: 1)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !196, line: 197, column: 3)
!1832 = !DILocation(line: 197, column: 21, scope: !1830)
!1833 = !DILocation(line: 197, column: 3, scope: !1830)
!1834 = !DILocation(line: 198, column: 16, scope: !1831)
!1835 = !DILocation(line: 198, column: 22, scope: !1831)
!1836 = !DILocation(line: 198, column: 10, scope: !1831)
!1837 = !DILocation(line: 198, column: 4, scope: !1830)
!1838 = !DILocation(line: 198, column: 4, scope: !1831)
!1839 = !DILocation(line: 197, column: 27, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1831, file: !196, discriminator: 2)
!1841 = !DILocation(line: 197, column: 3, scope: !1840)
!1842 = distinct !{!1842, !1843}
!1843 = !DILocation(line: 197, column: 3, scope: !1821)
!1844 = !DILocation(line: 199, column: 2, scope: !1821)
!1845 = !DILocation(line: 202, column: 14, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1744, file: !196, line: 202, column: 13)
!1847 = !DILocation(line: 202, column: 21, scope: !1846)
!1848 = !DILocation(line: 202, column: 28, scope: !1846)
!1849 = !DILocation(line: 202, column: 13, scope: !1744)
!1850 = !DILocation(line: 202, column: 23, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1846, file: !196, discriminator: 1)
!1852 = !DILocation(line: 202, column: 30, scope: !1851)
!1853 = !DILocation(line: 202, column: 41, scope: !1851)
!1854 = !DILocation(line: 202, column: 47, scope: !1851)
!1855 = !DILocation(line: 202, column: 53, scope: !1851)
!1856 = !DILocation(line: 202, column: 16, scope: !1851)
!1857 = !DILocation(line: 202, column: 10, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1851, file: !196, discriminator: 4)
!1859 = !DILocation(line: 202, column: 10, scope: !1851)
!1860 = !DILocation(line: 202, column: 86, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1862, file: !196, discriminator: 2)
!1862 = distinct !DILexicalBlock(scope: !1846, file: !196, line: 202, column: 85)
!1863 = !DILocation(line: 202, column: 93, scope: !1861)
!1864 = !DILocation(line: 202, column: 101, scope: !1861)
!1865 = !DILocation(line: 202, column: 85, scope: !1861)
!1866 = !DILocation(line: 202, column: 23, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1862, file: !196, discriminator: 3)
!1868 = !DILocation(line: 202, column: 30, scope: !1867)
!1869 = !DILocation(line: 202, column: 42, scope: !1867)
!1870 = !DILocation(line: 202, column: 48, scope: !1867)
!1871 = !DILocation(line: 202, column: 54, scope: !1867)
!1872 = !DILocation(line: 202, column: 62, scope: !1867)
!1873 = !DILocation(line: 202, column: 69, scope: !1867)
!1874 = !DILocation(line: 202, column: 74, scope: !1867)
!1875 = !DILocation(line: 202, column: 16, scope: !1867)
!1876 = !DILocation(line: 202, column: 10, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1867, file: !196, discriminator: 5)
!1878 = !DILocation(line: 202, column: 10, scope: !1867)
!1879 = !DILocation(line: 203, column: 1, scope: !1744)
!1880 = distinct !DISubprogram(name: "_scroll_line_1", scope: !196, file: !196, line: 230, type: !28, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1881 = !DILocalVariable(name: "term", arg: 1, scope: !1880, file: !196, line: 230, type: !8)
!1882 = !DILocation(line: 230, column: 38, scope: !1880)
!1883 = !DILocalVariable(name: "y1", arg: 2, scope: !1880, file: !196, line: 230, type: !17)
!1884 = !DILocation(line: 230, column: 48, scope: !1880)
!1885 = !DILocalVariable(name: "y2", arg: 3, scope: !1880, file: !196, line: 230, type: !17)
!1886 = !DILocation(line: 230, column: 56, scope: !1880)
!1887 = !DILocalVariable(name: "count", arg: 4, scope: !1880, file: !196, line: 230, type: !17)
!1888 = !DILocation(line: 230, column: 64, scope: !1880)
!1889 = !DILocalVariable(name: "i", scope: !1880, file: !196, line: 232, type: !17)
!1890 = !DILocation(line: 232, column: 6, scope: !1880)
!1891 = !DILocation(line: 234, column: 6, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1880, file: !196, line: 234, column: 6)
!1893 = !DILocation(line: 234, column: 12, scope: !1892)
!1894 = !DILocation(line: 234, column: 6, scope: !1880)
!1895 = !DILocation(line: 235, column: 3, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !196, line: 234, column: 17)
!1897 = !DILocation(line: 235, column: 9, scope: !1896)
!1898 = !DILocation(line: 235, column: 14, scope: !1896)
!1899 = !DILocation(line: 235, column: 23, scope: !1896)
!1900 = !DILocation(line: 236, column: 24, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !196, line: 236, column: 17)
!1902 = !DILocation(line: 236, column: 22, scope: !1901)
!1903 = !DILocation(line: 236, column: 29, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1905, file: !196, discriminator: 1)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !196, line: 236, column: 17)
!1906 = !DILocation(line: 236, column: 33, scope: !1904)
!1907 = !DILocation(line: 236, column: 31, scope: !1904)
!1908 = !DILocation(line: 236, column: 17, scope: !1904)
!1909 = !DILocation(line: 237, column: 16, scope: !1905)
!1910 = !DILocation(line: 237, column: 22, scope: !1905)
!1911 = !DILocation(line: 237, column: 10, scope: !1905)
!1912 = !DILocation(line: 237, column: 4, scope: !1904)
!1913 = !DILocation(line: 237, column: 4, scope: !1905)
!1914 = !DILocation(line: 236, column: 41, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1905, file: !196, discriminator: 2)
!1916 = !DILocation(line: 236, column: 17, scope: !1915)
!1917 = distinct !{!1917, !1918}
!1918 = !DILocation(line: 236, column: 17, scope: !1896)
!1919 = !DILocation(line: 238, column: 3, scope: !1896)
!1920 = !DILocation(line: 238, column: 9, scope: !1896)
!1921 = !DILocation(line: 238, column: 14, scope: !1896)
!1922 = !DILocation(line: 238, column: 23, scope: !1896)
!1923 = !DILocation(line: 238, column: 26, scope: !1896)
!1924 = !DILocation(line: 238, column: 25, scope: !1896)
!1925 = !DILocation(line: 238, column: 31, scope: !1896)
!1926 = !DILocation(line: 239, column: 24, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1896, file: !196, line: 239, column: 17)
!1928 = !DILocation(line: 239, column: 22, scope: !1927)
!1929 = !DILocation(line: 239, column: 29, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1931, file: !196, discriminator: 1)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !196, line: 239, column: 17)
!1932 = !DILocation(line: 239, column: 33, scope: !1930)
!1933 = !DILocation(line: 239, column: 31, scope: !1930)
!1934 = !DILocation(line: 239, column: 17, scope: !1930)
!1935 = !DILocation(line: 240, column: 16, scope: !1931)
!1936 = !DILocation(line: 240, column: 22, scope: !1931)
!1937 = !DILocation(line: 240, column: 10, scope: !1931)
!1938 = !DILocation(line: 240, column: 4, scope: !1930)
!1939 = !DILocation(line: 240, column: 4, scope: !1931)
!1940 = !DILocation(line: 239, column: 41, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1931, file: !196, discriminator: 2)
!1942 = !DILocation(line: 239, column: 17, scope: !1941)
!1943 = distinct !{!1943, !1944}
!1944 = !DILocation(line: 239, column: 17, scope: !1896)
!1945 = !DILocation(line: 241, column: 2, scope: !1896)
!1946 = !DILocation(line: 241, column: 13, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1948, file: !196, discriminator: 1)
!1948 = distinct !DILexicalBlock(scope: !1892, file: !196, line: 241, column: 13)
!1949 = !DILocation(line: 241, column: 19, scope: !1947)
!1950 = !DILocation(line: 242, column: 3, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !196, line: 241, column: 24)
!1952 = !DILocation(line: 242, column: 9, scope: !1951)
!1953 = !DILocation(line: 242, column: 14, scope: !1951)
!1954 = !DILocation(line: 242, column: 23, scope: !1951)
!1955 = !DILocation(line: 242, column: 26, scope: !1951)
!1956 = !DILocation(line: 242, column: 25, scope: !1951)
!1957 = !DILocation(line: 242, column: 31, scope: !1951)
!1958 = !DILocation(line: 243, column: 12, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !196, line: 243, column: 3)
!1960 = !DILocation(line: 243, column: 10, scope: !1959)
!1961 = !DILocation(line: 243, column: 8, scope: !1959)
!1962 = !DILocation(line: 243, column: 19, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1964, file: !196, discriminator: 1)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !196, line: 243, column: 3)
!1965 = !DILocation(line: 243, column: 21, scope: !1963)
!1966 = !DILocation(line: 243, column: 3, scope: !1963)
!1967 = !DILocation(line: 244, column: 16, scope: !1964)
!1968 = !DILocation(line: 244, column: 22, scope: !1964)
!1969 = !DILocation(line: 244, column: 10, scope: !1964)
!1970 = !DILocation(line: 244, column: 4, scope: !1963)
!1971 = !DILocation(line: 244, column: 4, scope: !1964)
!1972 = !DILocation(line: 243, column: 27, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1964, file: !196, discriminator: 2)
!1974 = !DILocation(line: 243, column: 3, scope: !1973)
!1975 = distinct !{!1975, !1976}
!1976 = !DILocation(line: 243, column: 3, scope: !1951)
!1977 = !DILocation(line: 245, column: 3, scope: !1951)
!1978 = !DILocation(line: 245, column: 9, scope: !1951)
!1979 = !DILocation(line: 245, column: 14, scope: !1951)
!1980 = !DILocation(line: 245, column: 23, scope: !1951)
!1981 = !DILocation(line: 246, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1951, file: !196, line: 246, column: 3)
!1983 = !DILocation(line: 246, column: 10, scope: !1982)
!1984 = !DILocation(line: 246, column: 8, scope: !1982)
!1985 = !DILocation(line: 246, column: 19, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !196, discriminator: 1)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !196, line: 246, column: 3)
!1988 = !DILocation(line: 246, column: 21, scope: !1986)
!1989 = !DILocation(line: 246, column: 3, scope: !1986)
!1990 = !DILocation(line: 247, column: 16, scope: !1987)
!1991 = !DILocation(line: 247, column: 22, scope: !1987)
!1992 = !DILocation(line: 247, column: 10, scope: !1987)
!1993 = !DILocation(line: 247, column: 4, scope: !1986)
!1994 = !DILocation(line: 247, column: 4, scope: !1987)
!1995 = !DILocation(line: 246, column: 27, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1987, file: !196, discriminator: 2)
!1997 = !DILocation(line: 246, column: 3, scope: !1996)
!1998 = distinct !{!1998, !1999}
!1999 = !DILocation(line: 246, column: 3, scope: !1951)
!2000 = !DILocation(line: 248, column: 2, scope: !1951)
!2001 = !DILocation(line: 249, column: 1, scope: !1880)
!2002 = distinct !DISubprogram(name: "_clear_screen", scope: !196, file: !196, line: 252, type: !32, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2003 = !DILocalVariable(name: "term", arg: 1, scope: !2002, file: !196, line: 252, type: !8)
!2004 = !DILocation(line: 252, column: 37, scope: !2002)
!2005 = !DILocation(line: 254, column: 14, scope: !2002)
!2006 = !DILocation(line: 254, column: 20, scope: !2002)
!2007 = !DILocation(line: 254, column: 8, scope: !2002)
!2008 = !DILocation(line: 254, column: 2, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2002, file: !196, discriminator: 1)
!2010 = !DILocation(line: 255, column: 1, scope: !2002)
!2011 = distinct !DISubprogram(name: "_clear_eos", scope: !196, file: !196, line: 258, type: !32, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2012 = !DILocalVariable(name: "term", arg: 1, scope: !2011, file: !196, line: 258, type: !8)
!2013 = !DILocation(line: 258, column: 34, scope: !2011)
!2014 = !DILocation(line: 260, column: 9, scope: !2011)
!2015 = !DILocation(line: 260, column: 15, scope: !2011)
!2016 = !DILocation(line: 260, column: 20, scope: !2011)
!2017 = !DILocation(line: 261, column: 14, scope: !2011)
!2018 = !DILocation(line: 261, column: 20, scope: !2011)
!2019 = !DILocation(line: 261, column: 8, scope: !2011)
!2020 = !DILocation(line: 261, column: 2, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2011, file: !196, discriminator: 1)
!2022 = !DILocation(line: 262, column: 1, scope: !2011)
!2023 = distinct !DISubprogram(name: "_clear_del", scope: !196, file: !196, line: 265, type: !32, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2024 = !DILocalVariable(name: "term", arg: 1, scope: !2023, file: !196, line: 265, type: !8)
!2025 = !DILocation(line: 265, column: 34, scope: !2023)
!2026 = !DILocation(line: 267, column: 9, scope: !2023)
!2027 = !DILocation(line: 267, column: 15, scope: !2023)
!2028 = !DILocation(line: 267, column: 20, scope: !2023)
!2029 = !DILocation(line: 268, column: 14, scope: !2023)
!2030 = !DILocation(line: 268, column: 20, scope: !2023)
!2031 = !DILocation(line: 268, column: 27, scope: !2023)
!2032 = !DILocation(line: 268, column: 33, scope: !2023)
!2033 = !DILocation(line: 268, column: 41, scope: !2023)
!2034 = !DILocation(line: 268, column: 47, scope: !2023)
!2035 = !DILocation(line: 268, column: 8, scope: !2023)
!2036 = !DILocation(line: 268, column: 2, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2023, file: !196, discriminator: 1)
!2038 = !DILocation(line: 269, column: 1, scope: !2023)
!2039 = distinct !DISubprogram(name: "_clear_del_1", scope: !196, file: !196, line: 272, type: !32, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2040 = !DILocalVariable(name: "term", arg: 1, scope: !2039, file: !196, line: 272, type: !8)
!2041 = !DILocation(line: 272, column: 36, scope: !2039)
!2042 = !DILocalVariable(name: "i", scope: !2039, file: !196, line: 274, type: !17)
!2043 = !DILocation(line: 274, column: 6, scope: !2039)
!2044 = !DILocation(line: 276, column: 2, scope: !2039)
!2045 = !DILocation(line: 276, column: 8, scope: !2039)
!2046 = !DILocation(line: 276, column: 13, scope: !2039)
!2047 = !DILocation(line: 277, column: 16, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !196, line: 277, column: 9)
!2049 = !DILocation(line: 277, column: 14, scope: !2048)
!2050 = !DILocation(line: 277, column: 21, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !196, discriminator: 1)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !196, line: 277, column: 9)
!2053 = !DILocation(line: 277, column: 25, scope: !2051)
!2054 = !DILocation(line: 277, column: 31, scope: !2051)
!2055 = !DILocation(line: 277, column: 23, scope: !2051)
!2056 = !DILocation(line: 277, column: 9, scope: !2051)
!2057 = !DILocation(line: 278, column: 15, scope: !2052)
!2058 = !DILocation(line: 278, column: 21, scope: !2052)
!2059 = !DILocation(line: 278, column: 9, scope: !2052)
!2060 = !DILocation(line: 278, column: 3, scope: !2051)
!2061 = !DILocation(line: 278, column: 3, scope: !2052)
!2062 = !DILocation(line: 277, column: 40, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2052, file: !196, discriminator: 2)
!2064 = !DILocation(line: 277, column: 9, scope: !2063)
!2065 = distinct !{!2065, !2066}
!2066 = !DILocation(line: 277, column: 9, scope: !2039)
!2067 = !DILocation(line: 279, column: 1, scope: !2039)
!2068 = distinct !DISubprogram(name: "_clrtoeol", scope: !196, file: !196, line: 282, type: !32, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2069 = !DILocalVariable(name: "term", arg: 1, scope: !2068, file: !196, line: 282, type: !8)
!2070 = !DILocation(line: 282, column: 33, scope: !2068)
!2071 = !DILocation(line: 284, column: 14, scope: !2068)
!2072 = !DILocation(line: 284, column: 20, scope: !2068)
!2073 = !DILocation(line: 284, column: 8, scope: !2068)
!2074 = !DILocation(line: 284, column: 2, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2068, file: !196, discriminator: 1)
!2076 = !DILocation(line: 285, column: 1, scope: !2068)
!2077 = distinct !DISubprogram(name: "_repeat", scope: !196, file: !196, line: 288, type: !37, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2078 = !DILocalVariable(name: "term", arg: 1, scope: !2077, file: !196, line: 288, type: !8)
!2079 = !DILocation(line: 288, column: 31, scope: !2077)
!2080 = !DILocalVariable(name: "chr", arg: 2, scope: !2077, file: !196, line: 288, type: !7)
!2081 = !DILocation(line: 288, column: 42, scope: !2077)
!2082 = !DILocalVariable(name: "count", arg: 3, scope: !2077, file: !196, line: 288, type: !17)
!2083 = !DILocation(line: 288, column: 51, scope: !2077)
!2084 = !DILocation(line: 290, column: 14, scope: !2077)
!2085 = !DILocation(line: 290, column: 20, scope: !2077)
!2086 = !DILocation(line: 290, column: 28, scope: !2077)
!2087 = !DILocation(line: 290, column: 33, scope: !2077)
!2088 = !DILocation(line: 290, column: 8, scope: !2077)
!2089 = !DILocation(line: 290, column: 2, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2077, file: !196, discriminator: 1)
!2091 = !DILocation(line: 291, column: 1, scope: !2077)
!2092 = distinct !DISubprogram(name: "_repeat_manual", scope: !196, file: !196, line: 294, type: !37, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2093 = !DILocalVariable(name: "term", arg: 1, scope: !2092, file: !196, line: 294, type: !8)
!2094 = !DILocation(line: 294, column: 38, scope: !2092)
!2095 = !DILocalVariable(name: "chr", arg: 2, scope: !2092, file: !196, line: 294, type: !7)
!2096 = !DILocation(line: 294, column: 49, scope: !2092)
!2097 = !DILocalVariable(name: "count", arg: 3, scope: !2092, file: !196, line: 294, type: !17)
!2098 = !DILocation(line: 294, column: 58, scope: !2092)
!2099 = !DILocation(line: 296, column: 2, scope: !2092)
!2100 = !DILocation(line: 296, column: 9, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2092, file: !196, discriminator: 1)
!2102 = !DILocation(line: 296, column: 15, scope: !2101)
!2103 = !DILocation(line: 296, column: 2, scope: !2101)
!2104 = !DILocation(line: 297, column: 2, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2092, file: !196, line: 296, column: 20)
!2106 = !DILocation(line: 297, column: 8, scope: !2105)
!2107 = !DILocation(line: 298, column: 8, scope: !2105)
!2108 = !DILocation(line: 296, column: 2, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2092, file: !196, discriminator: 2)
!2110 = distinct !{!2110, !2099}
!2111 = !DILocation(line: 300, column: 1, scope: !2092)
!2112 = distinct !DISubprogram(name: "_set_blink", scope: !196, file: !196, line: 308, type: !32, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2113 = !DILocalVariable(name: "term", arg: 1, scope: !2112, file: !196, line: 308, type: !8)
!2114 = !DILocation(line: 308, column: 34, scope: !2112)
!2115 = !DILocation(line: 310, column: 14, scope: !2112)
!2116 = !DILocation(line: 310, column: 20, scope: !2112)
!2117 = !DILocation(line: 310, column: 8, scope: !2112)
!2118 = !DILocation(line: 310, column: 2, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2112, file: !196, discriminator: 1)
!2120 = !DILocation(line: 311, column: 1, scope: !2112)
!2121 = distinct !DISubprogram(name: "_ignore", scope: !196, file: !196, line: 380, type: !32, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2122 = !DILocalVariable(name: "term", arg: 1, scope: !2121, file: !196, line: 380, type: !8)
!2123 = !DILocation(line: 380, column: 31, scope: !2121)
!2124 = !DILocation(line: 382, column: 1, scope: !2121)
!2125 = distinct !DISubprogram(name: "_set_bold", scope: !196, file: !196, line: 320, type: !32, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2126 = !DILocalVariable(name: "term", arg: 1, scope: !2125, file: !196, line: 320, type: !8)
!2127 = !DILocation(line: 320, column: 33, scope: !2125)
!2128 = !DILocation(line: 322, column: 14, scope: !2125)
!2129 = !DILocation(line: 322, column: 20, scope: !2125)
!2130 = !DILocation(line: 322, column: 8, scope: !2125)
!2131 = !DILocation(line: 322, column: 2, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2125, file: !196, discriminator: 1)
!2133 = !DILocation(line: 323, column: 1, scope: !2125)
!2134 = distinct !DISubprogram(name: "_set_reverse", scope: !196, file: !196, line: 314, type: !32, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2135 = !DILocalVariable(name: "term", arg: 1, scope: !2134, file: !196, line: 314, type: !8)
!2136 = !DILocation(line: 314, column: 36, scope: !2134)
!2137 = !DILocation(line: 316, column: 14, scope: !2134)
!2138 = !DILocation(line: 316, column: 20, scope: !2134)
!2139 = !DILocation(line: 316, column: 8, scope: !2134)
!2140 = !DILocation(line: 316, column: 2, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2134, file: !196, discriminator: 1)
!2142 = !DILocation(line: 317, column: 1, scope: !2134)
!2143 = distinct !DISubprogram(name: "_set_standout_on", scope: !196, file: !196, line: 344, type: !32, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2144 = !DILocalVariable(name: "term", arg: 1, scope: !2143, file: !196, line: 344, type: !8)
!2145 = !DILocation(line: 344, column: 40, scope: !2143)
!2146 = !DILocation(line: 346, column: 16, scope: !2143)
!2147 = !DILocation(line: 346, column: 2, scope: !2143)
!2148 = !DILocation(line: 347, column: 1, scope: !2143)
!2149 = distinct !DISubprogram(name: "_set_uline", scope: !196, file: !196, line: 326, type: !24, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2150 = !DILocalVariable(name: "term", arg: 1, scope: !2149, file: !196, line: 326, type: !8)
!2151 = !DILocation(line: 326, column: 34, scope: !2149)
!2152 = !DILocalVariable(name: "set", arg: 2, scope: !2149, file: !196, line: 326, type: !17)
!2153 = !DILocation(line: 326, column: 44, scope: !2149)
!2154 = !DILocation(line: 328, column: 14, scope: !2149)
!2155 = !DILocation(line: 328, column: 20, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2149, file: !196, discriminator: 1)
!2157 = !DILocation(line: 328, column: 26, scope: !2156)
!2158 = !DILocation(line: 328, column: 14, scope: !2156)
!2159 = !DILocation(line: 328, column: 36, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2149, file: !196, discriminator: 2)
!2161 = !DILocation(line: 328, column: 42, scope: !2160)
!2162 = !DILocation(line: 328, column: 14, scope: !2160)
!2163 = !DILocation(line: 328, column: 14, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2149, file: !196, discriminator: 3)
!2165 = !DILocation(line: 328, column: 8, scope: !2164)
!2166 = !DILocation(line: 328, column: 2, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2164, file: !196, discriminator: 4)
!2168 = !DILocation(line: 329, column: 1, scope: !2149)
!2169 = distinct !DISubprogram(name: "_set_standout", scope: !196, file: !196, line: 332, type: !24, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2170 = !DILocalVariable(name: "term", arg: 1, scope: !2169, file: !196, line: 332, type: !8)
!2171 = !DILocation(line: 332, column: 37, scope: !2169)
!2172 = !DILocalVariable(name: "set", arg: 2, scope: !2169, file: !196, line: 332, type: !17)
!2173 = !DILocation(line: 332, column: 47, scope: !2169)
!2174 = !DILocation(line: 334, column: 14, scope: !2169)
!2175 = !DILocation(line: 334, column: 20, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2169, file: !196, discriminator: 1)
!2177 = !DILocation(line: 334, column: 26, scope: !2176)
!2178 = !DILocation(line: 334, column: 14, scope: !2176)
!2179 = !DILocation(line: 334, column: 36, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2169, file: !196, discriminator: 2)
!2181 = !DILocation(line: 334, column: 42, scope: !2180)
!2182 = !DILocation(line: 334, column: 14, scope: !2180)
!2183 = !DILocation(line: 334, column: 14, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2169, file: !196, discriminator: 3)
!2185 = !DILocation(line: 334, column: 8, scope: !2184)
!2186 = !DILocation(line: 334, column: 2, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2184, file: !196, discriminator: 4)
!2188 = !DILocation(line: 335, column: 1, scope: !2169)
!2189 = distinct !DISubprogram(name: "_set_italic", scope: !196, file: !196, line: 338, type: !24, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2190 = !DILocalVariable(name: "term", arg: 1, scope: !2189, file: !196, line: 338, type: !8)
!2191 = !DILocation(line: 338, column: 35, scope: !2189)
!2192 = !DILocalVariable(name: "set", arg: 2, scope: !2189, file: !196, line: 338, type: !17)
!2193 = !DILocation(line: 338, column: 45, scope: !2189)
!2194 = !DILocation(line: 340, column: 14, scope: !2189)
!2195 = !DILocation(line: 340, column: 20, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2189, file: !196, discriminator: 1)
!2197 = !DILocation(line: 340, column: 26, scope: !2196)
!2198 = !DILocation(line: 340, column: 14, scope: !2196)
!2199 = !DILocation(line: 340, column: 36, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2189, file: !196, discriminator: 2)
!2201 = !DILocation(line: 340, column: 42, scope: !2200)
!2202 = !DILocation(line: 340, column: 14, scope: !2200)
!2203 = !DILocation(line: 340, column: 14, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2189, file: !196, discriminator: 3)
!2205 = !DILocation(line: 340, column: 8, scope: !2204)
!2206 = !DILocation(line: 340, column: 2, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2204, file: !196, discriminator: 4)
!2208 = !DILocation(line: 341, column: 1, scope: !2189)
!2209 = distinct !DISubprogram(name: "_set_normal", scope: !196, file: !196, line: 303, type: !32, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2210 = !DILocalVariable(name: "term", arg: 1, scope: !2209, file: !196, line: 303, type: !8)
!2211 = !DILocation(line: 303, column: 35, scope: !2209)
!2212 = !DILocation(line: 305, column: 14, scope: !2209)
!2213 = !DILocation(line: 305, column: 20, scope: !2209)
!2214 = !DILocation(line: 305, column: 8, scope: !2209)
!2215 = !DILocation(line: 305, column: 2, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2209, file: !196, discriminator: 1)
!2217 = !DILocation(line: 306, column: 1, scope: !2209)
!2218 = distinct !DISubprogram(name: "_beep", scope: !196, file: !196, line: 375, type: !32, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2219 = !DILocalVariable(name: "term", arg: 1, scope: !2218, file: !196, line: 375, type: !8)
!2220 = !DILocation(line: 375, column: 29, scope: !2218)
!2221 = !DILocation(line: 377, column: 14, scope: !2218)
!2222 = !DILocation(line: 377, column: 20, scope: !2218)
!2223 = !DILocation(line: 377, column: 8, scope: !2218)
!2224 = !DILocation(line: 377, column: 2, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2218, file: !196, discriminator: 1)
!2226 = !DILocation(line: 378, column: 1, scope: !2218)
!2227 = distinct !DISubprogram(name: "terminfo_input_init0", scope: !196, file: !196, line: 500, type: !32, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2228 = !DILocalVariable(name: "term", arg: 1, scope: !2227, file: !196, line: 500, type: !8)
!2229 = !DILocation(line: 500, column: 44, scope: !2227)
!2230 = !DILocation(line: 502, column: 19, scope: !2227)
!2231 = !DILocation(line: 502, column: 25, scope: !2227)
!2232 = !DILocation(line: 502, column: 12, scope: !2227)
!2233 = !DILocation(line: 502, column: 31, scope: !2227)
!2234 = !DILocation(line: 502, column: 37, scope: !2227)
!2235 = !DILocation(line: 502, column: 2, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2227, file: !196, discriminator: 1)
!2237 = !DILocation(line: 503, column: 10, scope: !2227)
!2238 = !DILocation(line: 503, column: 16, scope: !2227)
!2239 = !DILocation(line: 503, column: 2, scope: !2227)
!2240 = !DILocation(line: 503, column: 22, scope: !2227)
!2241 = !DILocation(line: 503, column: 28, scope: !2227)
!2242 = !DILocation(line: 505, column: 2, scope: !2227)
!2243 = !DILocation(line: 505, column: 8, scope: !2227)
!2244 = !DILocation(line: 505, column: 12, scope: !2227)
!2245 = !DILocation(line: 505, column: 20, scope: !2227)
!2246 = !DILocation(line: 508, column: 2, scope: !2227)
!2247 = !DILocation(line: 508, column: 8, scope: !2227)
!2248 = !DILocation(line: 508, column: 12, scope: !2227)
!2249 = !DILocation(line: 508, column: 20, scope: !2227)
!2250 = !DILocation(line: 509, column: 2, scope: !2227)
!2251 = !DILocation(line: 509, column: 8, scope: !2227)
!2252 = !DILocation(line: 509, column: 12, scope: !2227)
!2253 = !DILocation(line: 509, column: 22, scope: !2227)
!2254 = !DILocation(line: 510, column: 2, scope: !2227)
!2255 = !DILocation(line: 510, column: 8, scope: !2227)
!2256 = !DILocation(line: 510, column: 12, scope: !2227)
!2257 = !DILocation(line: 510, column: 23, scope: !2227)
!2258 = !DILocation(line: 513, column: 2, scope: !2227)
!2259 = !DILocation(line: 513, column: 8, scope: !2227)
!2260 = !DILocation(line: 513, column: 12, scope: !2227)
!2261 = !DILocation(line: 513, column: 23, scope: !2227)
!2262 = !DILocation(line: 514, column: 2, scope: !2227)
!2263 = !DILocation(line: 514, column: 8, scope: !2227)
!2264 = !DILocation(line: 514, column: 12, scope: !2227)
!2265 = !DILocation(line: 514, column: 23, scope: !2227)
!2266 = !DILocation(line: 519, column: 2, scope: !2227)
!2267 = !DILocation(line: 519, column: 8, scope: !2227)
!2268 = !DILocation(line: 519, column: 12, scope: !2227)
!2269 = !DILocation(line: 519, column: 23, scope: !2227)
!2270 = !DILocation(line: 522, column: 1, scope: !2227)
