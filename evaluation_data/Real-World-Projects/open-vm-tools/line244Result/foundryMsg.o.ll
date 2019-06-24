; ModuleID = './foundryMsg.o.i'
source_filename = "./foundryMsg.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VixCommandInfo = type { i32, i8*, i32, i8 }
%struct.VixCommandResponseHeader = type <{ %struct.VixMsgHeader, i64, i32, i32, i32, i32, i32 }>
%struct.VixMsgHeader = type <{ i32, i16, i32, i32, i32, i32, i8 }>
%struct.VixCommandRequestHeader = type <{ %struct.VixMsgHeader, i32, i32, i32, i64, i32, i32 }>
%struct.VixMsgWriteVariableRequest = type <{ %struct.VixCommandRequestHeader, i32, i32, i32, i32 }>
%struct.VixPropertyListImpl = type { %struct.VixPropertyValue* }
%struct.VixPropertyValue = type { i32, i32, %union.anon, i8, i8, %struct.VixPropertyValue* }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.VixCommandGenericRequest = type <{ %struct.VixCommandRequestHeader, i32, i32 }>
%struct.VMAutomationMsgParser = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vixCommandInfoTable = internal constant [209 x %struct.VixCommandInfo] [%struct.VixCommandInfo { i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, i8 1 }, %struct.VixCommandInfo { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i32 0, i32 0), i32 3, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.75, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.86, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.97, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.98, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.99, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.101, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.103, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo zeroinitializer, %struct.VixCommandInfo { i32 169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.108, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.109, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 173, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.110, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.112, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.113, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.115, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.116, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.118, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.119, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 184, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.121, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.123, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 188, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 189, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.126, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.127, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.131, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.133, i32 0, i32 0), i32 2, i8 1 }, %struct.VixCommandInfo { i32 197, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.134, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.135, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.136, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 200, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.137, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.141, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.142, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.143, i32 0, i32 0), i32 1, i8 1 }, %struct.VixCommandInfo { i32 207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.144, i32 0, i32 0), i32 1, i8 1 }], align 16
@.str.1 = private unnamed_addr constant [62 x i8] c"%s: Mismatch or NULL in command with op code %d at index %d.\0A\00", align 1
@__FUNCTION__.VixMsg_ValidateCommandInfoTable = private unnamed_addr constant [32 x i8] c"VixMsg_ValidateCommandInfoTable\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Unrecognized op\00", align 1
@__FUNCTION__.VixMsg_ParseSimpleResponseWithString = private unnamed_addr constant [37 x i8] c"VixMsg_ParseSimpleResponseWithString\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@__FUNCTION__.VMAutomation_VerifyRequestLength = private unnamed_addr constant [33 x i8] c"VMAutomation_VerifyRequestLength\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"%s(%u): Message has only %zu bytes available when looking for %zu bytes od data.\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"%s(%u): Retrieved an array of string with trailing garbage.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s(%u): String is too long.\0A\00", align 1
@PlainToObfuscatedCharMap = internal global [256 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foundryMsg.c\00", align 1
@VixMsgInitializeObfuscationMapping.initializedTable = internal global i8 0, align 1
@ObfuscatedToPlainCharMap = internal global [256 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [20 x i8] c"VIX_COMMAND_UNKNOWN\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"VIX_COMMAND_VM_POWERON\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"VIX_COMMAND_VM_POWEROFF\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"VIX_COMMAND_VM_RESET\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"VIX_COMMAND_VM_SUSPEND\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"VIX_COMMAND_RUN_PROGRAM\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"VIX_COMMAND_KEYSTROKES\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_READ_REGISTRY\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_WRITE_REGISTRY\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"VIX_COMMAND_COPY_FILE_FROM_GUEST_TO_HOST\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"VIX_COMMAND_COPY_FILE_FROM_HOST_TO_GUEST\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_CREATE_SNAPSHOT\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_REMOVE_SNAPSHOT\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_REVERT_TO_SNAPSHOT\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"VIX_COMMAND_VM_CLONE\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_DELETE_GUEST_FILE\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_GUEST_FILE_EXISTS\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"VIX_COMMAND_FIND_VM\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_CALL_PROCEDURE\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_REGISTRY_KEY_EXISTS\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_WIN32_WINDOW_MESSAGE\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"VIX_COMMAND_CONSOLIDATE_SNAPSHOTS\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_INSTALL_TOOLS\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_CANCEL_INSTALL_TOOLS\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"VIX_COMMAND_UPGRADE_VIRTUAL_HARDWARE\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"VIX_COMMAND_RELOAD_VM\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"VIX_COMMAND_DELETE_VM\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_WAIT_FOR_TOOLS\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"VIX_COMMAND_CREATE_RUNNING_VM_SNAPSHOT\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"VIX_COMMAND_CONSOLIDATE_RUNNING_VM_SNAPSHOT\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"VIX_COMMAND_GET_NUM_SHARED_FOLDERS\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"VIX_COMMAND_GET_SHARED_FOLDER_STATE\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"VIX_COMMAND_EDIT_SHARED_FOLDER_STATE\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_REMOVE_SHARED_FOLDER\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_ADD_SHARED_FOLDER\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_RUN_SCRIPT_IN_GUEST\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"VIX_COMMAND_OPEN_VM\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_GET_HANDLE_STATE\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_CREATE_WORKING_COPY\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_DISCARD_WORKING_COPY\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_SAVE_WORKING_COPY\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_CAPTURE_SCREEN\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_GET_TOOLS_STATE\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"VIX_COMMAND_CHANGE_SCREEN_RESOLUTION\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_DIRECTORY_EXISTS\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"VIX_COMMAND_DELETE_GUEST_REGISTRY_KEY\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"VIX_COMMAND_DELETE_GUEST_DIRECTORY\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"VIX_COMMAND_DELETE_GUEST_EMPTY_DIRECTORY\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"VIX_COMMAND_CREATE_TEMPORARY_FILE\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_LIST_PROCESSES\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_MOVE_GUEST_FILE\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_CREATE_DIRECTORY\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_CHECK_USER_ACCOUNT\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_LIST_DIRECTORY\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"VIX_COMMAND_REGISTER_VM\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_UNREGISTER_VM\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"VIX_CREATE_SESSION_KEY_COMMAND\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"VMXI_HGFS_SEND_PACKET_COMMAND\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"VIX_COMMAND_KILL_PROCESS\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_LOGOUT_IN_GUEST\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_READ_VARIABLE\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_WRITE_VARIABLE\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_CONNECT_DEVICE\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_IS_DEVICE_CONNECTED\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_GET_FILE_INFO\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_SET_FILE_INFO\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"VIX_COMMAND_MOUSE_EVENTS\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"VIX_COMMAND_OPEN_TEAM\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_ANSWER_MESSAGE\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"VIX_COMMAND_ENABLE_SHARED_FOLDERS\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_MOUNT_HGFS_FOLDERS\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_HOT_EXTEND_DISK\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"VIX_COMMAND_CONNECT_HOST\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_CREATE_LINKED_CLONE\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_SAMPLE_COMMAND\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"VIX_COMMAND_GET_GUEST_NETWORKING_CONFIG\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"VIX_COMMAND_SET_GUEST_NETWORKING_CONFIG\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"VIX_COMMAND_VM_PAUSE\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"VIX_COMMAND_VM_UNPAUSE\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_GET_PERFORMANCE_DATA\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"VIX_COMMAND_GET_SNAPSHOT_SCREENSHOT\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"VIX_COMMAND_WAIT_FOR_USER_ACTION_IN_GUEST\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"VIX_COMMAND_CHANGE_VIRTUAL_HARDWARE\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"VIX_COMMAND_HOT_PLUG_CPU\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"VIX_COMMAND_HOT_PLUG_MEMORY\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_HOT_ADD_DEVICE\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_HOT_REMOVE_DEVICE\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_GET_VMX_DEVICE_STATE\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_SET_SNAPSHOT_INFO\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_SNAPSHOT_SET_MRU\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"VIX_COMMAND_LOGOUT_HOST\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_HOT_PLUG_BEGIN_BATCH\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"VIX_COMMAND_HOT_PLUG_COMMIT_BATCH\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_TRANSFER_CONNECTION\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_TRANSFER_REQUEST\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_TRANSFER_FINAL_DATA\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"VIX_COMMAND_LIST_FILESYSTEMS\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"VIX_COMMAND_CHANGE_DISPLAY_TOPOLOGY\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_SUSPEND_AND_RESUME\00", align 1
@.str.109 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_REMOVE_BULK_SNAPSHOT\00", align 1
@.str.110 = private unnamed_addr constant [43 x i8] c"VIX_COMMAND_COPY_FILE_FROM_READER_TO_GUEST\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_GENERATE_NONCE\00", align 1
@.str.112 = private unnamed_addr constant [42 x i8] c"VIX_COMMAND_CHANGE_DISPLAY_TOPOLOGY_MODES\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_QUERY_CHILDREN\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"VIX_COMMAND_LIST_FILES\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_CREATE_DIRECTORY_EX\00", align 1
@.str.116 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_MOVE_GUEST_FILE_EX\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_MOVE_GUEST_DIRECTORY\00", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"VIX_COMMAND_CREATE_TEMPORARY_FILE_EX\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"VIX_COMMAND_CREATE_TEMPORARY_DIRECTORY\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"VIX_COMMAND_SET_GUEST_FILE_ATTRIBUTES\00", align 1
@.str.121 = private unnamed_addr constant [43 x i8] c"VIX_COMMAND_COPY_FILE_FROM_GUEST_TO_READER\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"VIX_COMMAND_START_PROGRAM\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_LIST_PROCESSES_EX\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_READ_ENV_VARIABLES\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"VIX_COMMAND_INITIATE_FILE_TRANSFER_FROM_GUEST\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"VIX_COMMAND_INITIATE_FILE_TRANSFER_TO_GUEST\00", align 1
@.str.127 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_ACQUIRE_CREDENTIALS\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_RELEASE_CREDENTIALS\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_VALIDATE_CREDENTIALS\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_TERMINATE_PROCESS\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_DELETE_GUEST_FILE_EX\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"VIX_COMMAND_DELETE_GUEST_DIRECTORY_EX\00", align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"VIX_COMMAND_HOT_CHANGE_MONITOR_TYPE\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"VIX_COMMAND_ADD_AUTH_ALIAS\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"VIX_COMMAND_REMOVE_AUTH_ALIAS\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"VIX_COMMAND_LIST_AUTH_PROVIDER_ALIASES\00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"VIX_COMMAND_LIST_AUTH_MAPPED_ALIASES\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_CREATE_REGISTRY_KEY\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_LIST_REGISTRY_KEYS\00", align 1
@.str.140 = private unnamed_addr constant [32 x i8] c"VIX_COMMAND_DELETE_REGISTRY_KEY\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"VIX_COMMAND_SET_REGISTRY_VALUE\00", align 1
@.str.142 = private unnamed_addr constant [33 x i8] c"VIX_COMMAND_LIST_REGISTRY_VALUES\00", align 1
@.str.143 = private unnamed_addr constant [34 x i8] c"VIX_COMMAND_DELETE_REGISTRY_VALUE\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"VIX_COMMAND_REMOVE_AUTH_ALIAS_BY_CERT\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"%s:%d, header information mismatch.\0A\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"%s:%d, %s too short.\0A\00", align 1
@.str.147 = private unnamed_addr constant [65 x i8] c"%s(%u): %s header length %u is not supported (%zu is required).\0A\00", align 1
@.str.148 = private unnamed_addr constant [51 x i8] c"%s(%u): Message body too short to contain string.\0A\00", align 1
@.str.149 = private unnamed_addr constant [67 x i8] c"%s(%u): Variable string is not NUL terminated before message end.\0A\00", align 1
@.str.150 = private unnamed_addr constant [60 x i8] c"%s(%u): Retrieved fixed string \22%s\22 with trailing garbage.\0A\00", align 1
@.str.151 = private unnamed_addr constant [48 x i8] c"%s(%u): Variable string is not an UTF8 string.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.VixCommandResponseHeader* @VixMsg_AllocResponseMsg(%struct.VixCommandRequestHeader*, i64, i32, i64, i8*, i64*) #0 !dbg !872 {
  %7 = alloca %struct.VixCommandResponseHeader*, align 8
  %8 = alloca %struct.VixCommandRequestHeader*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.VixCommandResponseHeader*, align 8
  %16 = alloca i64, align 8
  store %struct.VixCommandRequestHeader* %0, %struct.VixCommandRequestHeader** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %8, metadata !884, metadata !885), !dbg !886
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !887, metadata !885), !dbg !888
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !889, metadata !885), !dbg !890
  store i64 %3, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !891, metadata !885), !dbg !892
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !893, metadata !885), !dbg !894
  store i64* %5, i64** %13, align 8
  call void @llvm.dbg.declare(metadata i64** %13, metadata !895, metadata !885), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %14, metadata !897, metadata !885), !dbg !898
  store i8* null, i8** %14, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata %struct.VixCommandResponseHeader** %15, metadata !899, metadata !885), !dbg !900
  call void @llvm.dbg.declare(metadata i64* %16, metadata !901, metadata !885), !dbg !902
  %17 = load i64, i64* %11, align 8, !dbg !903
  %18 = add i64 51, %17, !dbg !904
  store i64 %18, i64* %16, align 8, !dbg !905
  %19 = load i64, i64* %16, align 8, !dbg !906
  %20 = icmp ugt i64 %19, 16777216, !dbg !908
  br i1 %20, label %21, label %22, !dbg !909

; <label>:21:                                     ; preds = %6
  store %struct.VixCommandResponseHeader* null, %struct.VixCommandResponseHeader** %7, align 8, !dbg !910
  br label %50, !dbg !910

; <label>:22:                                     ; preds = %6
  %23 = load i64, i64* %16, align 8, !dbg !912
  %24 = call i8* @UtilSafeMalloc0(i64 %23), !dbg !913
  store i8* %24, i8** %14, align 8, !dbg !914
  %25 = load i8*, i8** %14, align 8, !dbg !915
  %26 = bitcast i8* %25 to %struct.VixCommandResponseHeader*, !dbg !916
  store %struct.VixCommandResponseHeader* %26, %struct.VixCommandResponseHeader** %15, align 8, !dbg !917
  %27 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %15, align 8, !dbg !918
  %28 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %8, align 8, !dbg !919
  %29 = load i64, i64* %9, align 8, !dbg !920
  %30 = load i32, i32* %10, align 4, !dbg !921
  %31 = load i64, i64* %16, align 8, !dbg !922
  call void @VixMsg_InitResponseMsg(%struct.VixCommandResponseHeader* %27, %struct.VixCommandRequestHeader* %28, i64 %29, i32 %30, i64 %31), !dbg !923
  %32 = load i64, i64* %11, align 8, !dbg !924
  %33 = icmp ugt i64 %32, 0, !dbg !926
  br i1 %33, label %34, label %42, !dbg !927

; <label>:34:                                     ; preds = %22
  %35 = load i8*, i8** %12, align 8, !dbg !928
  %36 = icmp ne i8* %35, null, !dbg !930
  br i1 %36, label %37, label %42, !dbg !931

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %14, align 8, !dbg !932
  %39 = getelementptr inbounds i8, i8* %38, i64 51, !dbg !934
  %40 = load i8*, i8** %12, align 8, !dbg !935
  %41 = load i64, i64* %11, align 8, !dbg !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %41, i32 1, i1 false), !dbg !937
  br label %42, !dbg !938

; <label>:42:                                     ; preds = %37, %34, %22
  %43 = load i64*, i64** %13, align 8, !dbg !939
  %44 = icmp ne i64* null, %43, !dbg !941
  br i1 %44, label %45, label %48, !dbg !942

; <label>:45:                                     ; preds = %42
  %46 = load i64, i64* %16, align 8, !dbg !943
  %47 = load i64*, i64** %13, align 8, !dbg !945
  store i64 %46, i64* %47, align 8, !dbg !946
  br label %48, !dbg !947

; <label>:48:                                     ; preds = %45, %42
  %49 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %15, align 8, !dbg !948
  store %struct.VixCommandResponseHeader* %49, %struct.VixCommandResponseHeader** %7, align 8, !dbg !949
  br label %50, !dbg !949

; <label>:50:                                     ; preds = %48, %21
  %51 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %7, align 8, !dbg !950
  ret %struct.VixCommandResponseHeader* %51, !dbg !950
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define void @VixMsg_InitResponseMsg(%struct.VixCommandResponseHeader*, %struct.VixCommandRequestHeader*, i64, i32, i64) #0 !dbg !951 {
  %6 = alloca %struct.VixCommandResponseHeader*, align 8
  %7 = alloca %struct.VixCommandRequestHeader*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.VixCommandResponseHeader* %0, %struct.VixCommandResponseHeader** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandResponseHeader** %6, metadata !954, metadata !885), !dbg !955
  store %struct.VixCommandRequestHeader* %1, %struct.VixCommandRequestHeader** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %7, metadata !956, metadata !885), !dbg !957
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !958, metadata !885), !dbg !959
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !960, metadata !885), !dbg !961
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !962, metadata !885), !dbg !963
  call void @llvm.dbg.declare(metadata i64* %11, metadata !964, metadata !885), !dbg !965
  %12 = load i64, i64* %10, align 8, !dbg !966
  %13 = sub i64 %12, 51, !dbg !967
  store i64 %13, i64* %11, align 8, !dbg !968
  %14 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !969
  %15 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %14, i32 0, i32 0, !dbg !970
  %16 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %15, i32 0, i32 0, !dbg !971
  store i32 -804454399, i32* %16, align 1, !dbg !972
  %17 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !973
  %18 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %17, i32 0, i32 0, !dbg !974
  %19 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %18, i32 0, i32 1, !dbg !975
  store i16 5, i16* %19, align 1, !dbg !976
  %20 = load i64, i64* %10, align 8, !dbg !977
  %21 = trunc i64 %20 to i32, !dbg !977
  %22 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !978
  %23 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %22, i32 0, i32 0, !dbg !979
  %24 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %23, i32 0, i32 2, !dbg !980
  store i32 %21, i32* %24, align 1, !dbg !981
  %25 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !982
  %26 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %25, i32 0, i32 0, !dbg !983
  %27 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %26, i32 0, i32 3, !dbg !984
  store i32 51, i32* %27, align 1, !dbg !985
  %28 = load i64, i64* %11, align 8, !dbg !986
  %29 = trunc i64 %28 to i32, !dbg !986
  %30 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !987
  %31 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %30, i32 0, i32 0, !dbg !988
  %32 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %31, i32 0, i32 4, !dbg !989
  store i32 %29, i32* %32, align 1, !dbg !990
  %33 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !991
  %34 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %33, i32 0, i32 0, !dbg !992
  %35 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %34, i32 0, i32 5, !dbg !993
  store i32 0, i32* %35, align 1, !dbg !994
  %36 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !995
  %37 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %36, i32 0, i32 0, !dbg !996
  %38 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %37, i32 0, i32 6, !dbg !997
  store i8 0, i8* %38, align 1, !dbg !998
  %39 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !999
  %40 = icmp ne %struct.VixCommandRequestHeader* null, %39, !dbg !1001
  br i1 %40, label %41, label %47, !dbg !1002

; <label>:41:                                     ; preds = %5
  %42 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1003
  %43 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %42, i32 0, i32 4, !dbg !1005
  %44 = load i64, i64* %43, align 1, !dbg !1005
  %45 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1006
  %46 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %45, i32 0, i32 1, !dbg !1007
  store i64 %44, i64* %46, align 1, !dbg !1008
  br label %50, !dbg !1009

; <label>:47:                                     ; preds = %5
  %48 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1010
  %49 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %48, i32 0, i32 1, !dbg !1012
  store i64 0, i64* %49, align 1, !dbg !1013
  br label %50

; <label>:50:                                     ; preds = %47, %41
  %51 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1014
  %52 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %51, i32 0, i32 2, !dbg !1015
  store i32 0, i32* %52, align 1, !dbg !1016
  %53 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1017
  %54 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %53, i32 0, i32 3, !dbg !1018
  store i32 -1, i32* %54, align 1, !dbg !1019
  %55 = load i64, i64* %8, align 8, !dbg !1020
  %56 = trunc i64 %55 to i32, !dbg !1020
  %57 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1021
  %58 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %57, i32 0, i32 4, !dbg !1022
  store i32 %56, i32* %58, align 1, !dbg !1023
  %59 = load i32, i32* %9, align 4, !dbg !1024
  %60 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1025
  %61 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %60, i32 0, i32 5, !dbg !1026
  store i32 %59, i32* %61, align 1, !dbg !1027
  %62 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %6, align 8, !dbg !1028
  %63 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %62, i32 0, i32 6, !dbg !1029
  store i32 0, i32* %63, align 1, !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.VixCommandRequestHeader* @VixMsg_AllocRequestMsg(i64, i32, i64, i32, i8*) #0 !dbg !1032 {
  %6 = alloca %struct.VixCommandRequestHeader*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.VixCommandRequestHeader*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1036, metadata !885), !dbg !1037
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1038, metadata !885), !dbg !1039
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1040, metadata !885), !dbg !1041
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1042, metadata !885), !dbg !1043
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1044, metadata !885), !dbg !1045
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1046, metadata !885), !dbg !1047
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %13, metadata !1048, metadata !885), !dbg !1049
  store %struct.VixCommandRequestHeader* null, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1049
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1050, metadata !885), !dbg !1051
  store i64 0, i64* %14, align 8, !dbg !1051
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1052, metadata !885), !dbg !1053
  store i64 0, i64* %15, align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1054, metadata !885), !dbg !1055
  %17 = load i32, i32* %10, align 4, !dbg !1056
  %18 = icmp eq i32 1, %17, !dbg !1058
  br i1 %18, label %34, label %19, !dbg !1059

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %10, align 4, !dbg !1060
  %21 = icmp eq i32 6, %20, !dbg !1062
  br i1 %21, label %34, label %22, !dbg !1063

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %10, align 4, !dbg !1064
  %24 = icmp eq i32 7, %23, !dbg !1065
  br i1 %24, label %34, label %25, !dbg !1066

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %10, align 4, !dbg !1067
  %27 = icmp eq i32 9, %26, !dbg !1068
  br i1 %27, label %34, label %28, !dbg !1069

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %10, align 4, !dbg !1070
  %30 = icmp eq i32 10, %29, !dbg !1071
  br i1 %30, label %34, label %31, !dbg !1072

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %10, align 4, !dbg !1073
  %33 = icmp eq i32 11, %32, !dbg !1074
  br i1 %33, label %34, label %46, !dbg !1075

; <label>:34:                                     ; preds = %31, %28, %25, %22, %19, %5
  %35 = load i8*, i8** %11, align 8, !dbg !1077
  %36 = icmp ne i8* null, %35, !dbg !1080
  br i1 %36, label %37, label %43, !dbg !1081

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %11, align 8, !dbg !1082
  %39 = call i64 @strlen(i8* %38) #9, !dbg !1084
  store i64 %39, i64* %14, align 8, !dbg !1085
  %40 = load i64, i64* %14, align 8, !dbg !1086
  %41 = load i64, i64* %15, align 8, !dbg !1087
  %42 = add i64 %41, %40, !dbg !1087
  store i64 %42, i64* %15, align 8, !dbg !1087
  br label %43, !dbg !1088

; <label>:43:                                     ; preds = %37, %34
  %44 = load i64, i64* %15, align 8, !dbg !1089
  %45 = add i64 %44, 1, !dbg !1089
  store i64 %45, i64* %15, align 8, !dbg !1089
  br label %47, !dbg !1090

; <label>:46:                                     ; preds = %31
  store i64 0, i64* %15, align 8, !dbg !1091
  br label %47

; <label>:47:                                     ; preds = %46, %43
  %48 = load i64, i64* %7, align 8, !dbg !1093
  %49 = load i64, i64* %15, align 8, !dbg !1094
  %50 = add i64 %48, %49, !dbg !1095
  store i64 %50, i64* %12, align 8, !dbg !1096
  %51 = load i64, i64* %12, align 8, !dbg !1097
  %52 = icmp ugt i64 %51, 65536, !dbg !1099
  br i1 %52, label %53, label %54, !dbg !1100

; <label>:53:                                     ; preds = %47
  store %struct.VixCommandRequestHeader* null, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1101
  br label %151, !dbg !1101

; <label>:54:                                     ; preds = %47
  %55 = load i64, i64* %12, align 8, !dbg !1103
  %56 = call i8* @UtilSafeCalloc0(i64 1, i64 %55), !dbg !1104
  %57 = bitcast i8* %56 to %struct.VixCommandRequestHeader*, !dbg !1105
  store %struct.VixCommandRequestHeader* %57, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1106
  %58 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1107
  %59 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %58, i32 0, i32 0, !dbg !1108
  %60 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %59, i32 0, i32 0, !dbg !1109
  store i32 -804454399, i32* %60, align 1, !dbg !1110
  %61 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1111
  %62 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %61, i32 0, i32 0, !dbg !1112
  %63 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %62, i32 0, i32 1, !dbg !1113
  store i16 5, i16* %63, align 1, !dbg !1114
  %64 = load i64, i64* %7, align 8, !dbg !1115
  %65 = load i64, i64* %15, align 8, !dbg !1116
  %66 = add i64 %64, %65, !dbg !1117
  %67 = trunc i64 %66 to i32, !dbg !1115
  %68 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1118
  %69 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %68, i32 0, i32 0, !dbg !1119
  %70 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %69, i32 0, i32 2, !dbg !1120
  store i32 %67, i32* %70, align 1, !dbg !1121
  %71 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1122
  %72 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %71, i32 0, i32 0, !dbg !1123
  %73 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %72, i32 0, i32 3, !dbg !1124
  store i32 51, i32* %73, align 1, !dbg !1125
  %74 = load i64, i64* %7, align 8, !dbg !1126
  %75 = sub i64 %74, 51, !dbg !1127
  %76 = trunc i64 %75 to i32, !dbg !1126
  %77 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1128
  %78 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %77, i32 0, i32 0, !dbg !1129
  %79 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %78, i32 0, i32 4, !dbg !1130
  store i32 %76, i32* %79, align 1, !dbg !1131
  %80 = load i64, i64* %15, align 8, !dbg !1132
  %81 = trunc i64 %80 to i32, !dbg !1132
  %82 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1133
  %83 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %82, i32 0, i32 0, !dbg !1134
  %84 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %83, i32 0, i32 5, !dbg !1135
  store i32 %81, i32* %84, align 1, !dbg !1136
  %85 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1137
  %86 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %85, i32 0, i32 0, !dbg !1138
  %87 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %86, i32 0, i32 6, !dbg !1139
  store i8 1, i8* %87, align 1, !dbg !1140
  %88 = load i32, i32* %8, align 4, !dbg !1141
  %89 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1142
  %90 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %89, i32 0, i32 1, !dbg !1143
  store i32 %88, i32* %90, align 1, !dbg !1144
  %91 = load i64, i64* %9, align 8, !dbg !1145
  %92 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1146
  %93 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %92, i32 0, i32 4, !dbg !1147
  store i64 %91, i64* %93, align 1, !dbg !1148
  %94 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1149
  %95 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %94, i32 0, i32 3, !dbg !1150
  store i32 -1, i32* %95, align 1, !dbg !1151
  %96 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1152
  %97 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %96, i32 0, i32 2, !dbg !1153
  store i32 0, i32* %97, align 1, !dbg !1154
  %98 = load i32, i32* %10, align 4, !dbg !1155
  %99 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1156
  %100 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %99, i32 0, i32 6, !dbg !1157
  store i32 %98, i32* %100, align 1, !dbg !1158
  %101 = load i32, i32* %10, align 4, !dbg !1159
  %102 = icmp eq i32 1, %101, !dbg !1161
  br i1 %102, label %118, label %103, !dbg !1162

; <label>:103:                                    ; preds = %54
  %104 = load i32, i32* %10, align 4, !dbg !1163
  %105 = icmp eq i32 6, %104, !dbg !1165
  br i1 %105, label %118, label %106, !dbg !1166

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %10, align 4, !dbg !1167
  %108 = icmp eq i32 7, %107, !dbg !1168
  br i1 %108, label %118, label %109, !dbg !1169

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %10, align 4, !dbg !1170
  %111 = icmp eq i32 9, %110, !dbg !1171
  br i1 %111, label %118, label %112, !dbg !1172

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %10, align 4, !dbg !1173
  %114 = icmp eq i32 10, %113, !dbg !1174
  br i1 %114, label %118, label %115, !dbg !1175

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* %10, align 4, !dbg !1176
  %117 = icmp eq i32 11, %116, !dbg !1177
  br i1 %117, label %118, label %149, !dbg !1178

; <label>:118:                                    ; preds = %115, %112, %109, %106, %103, %54
  %119 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1179
  %120 = bitcast %struct.VixCommandRequestHeader* %119 to i8*, !dbg !1181
  store i8* %120, i8** %16, align 8, !dbg !1182
  %121 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1183
  %122 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %121, i32 0, i32 0, !dbg !1184
  %123 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %122, i32 0, i32 3, !dbg !1185
  %124 = load i32, i32* %123, align 1, !dbg !1185
  %125 = load i8*, i8** %16, align 8, !dbg !1186
  %126 = zext i32 %124 to i64, !dbg !1186
  %127 = getelementptr inbounds i8, i8* %125, i64 %126, !dbg !1186
  store i8* %127, i8** %16, align 8, !dbg !1186
  %128 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1187
  %129 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %128, i32 0, i32 0, !dbg !1188
  %130 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %129, i32 0, i32 4, !dbg !1189
  %131 = load i32, i32* %130, align 1, !dbg !1189
  %132 = load i8*, i8** %16, align 8, !dbg !1190
  %133 = zext i32 %131 to i64, !dbg !1190
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !1190
  store i8* %134, i8** %16, align 8, !dbg !1190
  %135 = load i8*, i8** %11, align 8, !dbg !1191
  %136 = icmp ne i8* null, %135, !dbg !1193
  br i1 %136, label %137, label %146, !dbg !1194

; <label>:137:                                    ; preds = %118
  %138 = load i8*, i8** %16, align 8, !dbg !1195
  %139 = load i8*, i8** %11, align 8, !dbg !1197
  %140 = load i64, i64* %14, align 8, !dbg !1198
  %141 = add i64 %140, 1, !dbg !1199
  %142 = call i8* @Str_Strcpy(i8* %138, i8* %139, i64 %141), !dbg !1200
  %143 = load i64, i64* %14, align 8, !dbg !1201
  %144 = load i8*, i8** %16, align 8, !dbg !1202
  %145 = getelementptr inbounds i8, i8* %144, i64 %143, !dbg !1202
  store i8* %145, i8** %16, align 8, !dbg !1202
  br label %146, !dbg !1203

; <label>:146:                                    ; preds = %137, %118
  %147 = load i8*, i8** %16, align 8, !dbg !1204
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !1204
  store i8* %148, i8** %16, align 8, !dbg !1204
  store i8 0, i8* %147, align 1, !dbg !1205
  br label %149, !dbg !1206

; <label>:149:                                    ; preds = %146, %115
  %150 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %13, align 8, !dbg !1207
  store %struct.VixCommandRequestHeader* %150, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1208
  br label %151, !dbg !1208

; <label>:151:                                    ; preds = %149, %53
  %152 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1209
  ret %struct.VixCommandRequestHeader* %152, !dbg !1209
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ValidateMessage(i8*, i64) #0 !dbg !1210 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.VixMsgHeader*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1213, metadata !885), !dbg !1214
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1215, metadata !885), !dbg !1216
  call void @llvm.dbg.declare(metadata %struct.VixMsgHeader** %6, metadata !1217, metadata !885), !dbg !1220
  %7 = load i8*, i8** %4, align 8, !dbg !1221
  %8 = icmp eq i8* null, %7, !dbg !1223
  br i1 %8, label %12, label %9, !dbg !1224

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %5, align 8, !dbg !1225
  %11 = icmp ult i64 %10, 23, !dbg !1227
  br i1 %11, label %12, label %13, !dbg !1228

; <label>:12:                                     ; preds = %9, %2
  store i64 10000, i64* %3, align 8, !dbg !1229
  br label %59, !dbg !1229

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !1231
  %15 = bitcast i8* %14 to %struct.VixMsgHeader*, !dbg !1231
  store %struct.VixMsgHeader* %15, %struct.VixMsgHeader** %6, align 8, !dbg !1232
  %16 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1233
  %17 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %16, i32 0, i32 0, !dbg !1235
  %18 = load i32, i32* %17, align 1, !dbg !1235
  %19 = icmp ne i32 -804454399, %18, !dbg !1236
  br i1 %19, label %57, label %20, !dbg !1237

; <label>:20:                                     ; preds = %13
  %21 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1238
  %22 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %21, i32 0, i32 3, !dbg !1240
  %23 = load i32, i32* %22, align 1, !dbg !1240
  %24 = zext i32 %23 to i64, !dbg !1238
  %25 = icmp ult i64 %24, 23, !dbg !1241
  br i1 %25, label %57, label %26, !dbg !1242

; <label>:26:                                     ; preds = %20
  %27 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1243
  %28 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %27, i32 0, i32 2, !dbg !1244
  %29 = load i32, i32* %28, align 1, !dbg !1244
  %30 = zext i32 %29 to i64, !dbg !1243
  %31 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1245
  %32 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %31, i32 0, i32 3, !dbg !1246
  %33 = load i32, i32* %32, align 1, !dbg !1246
  %34 = zext i32 %33 to i64, !dbg !1247
  %35 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1248
  %36 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %35, i32 0, i32 4, !dbg !1249
  %37 = load i32, i32* %36, align 1, !dbg !1249
  %38 = zext i32 %37 to i64, !dbg !1248
  %39 = add i64 %34, %38, !dbg !1250
  %40 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1251
  %41 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %40, i32 0, i32 5, !dbg !1252
  %42 = load i32, i32* %41, align 1, !dbg !1252
  %43 = zext i32 %42 to i64, !dbg !1251
  %44 = add i64 %39, %43, !dbg !1253
  %45 = icmp ult i64 %30, %44, !dbg !1254
  br i1 %45, label %57, label %46, !dbg !1255

; <label>:46:                                     ; preds = %26
  %47 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1256
  %48 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %47, i32 0, i32 2, !dbg !1257
  %49 = load i32, i32* %48, align 1, !dbg !1257
  %50 = icmp ugt i32 %49, 16777216, !dbg !1258
  br i1 %50, label %57, label %51, !dbg !1259

; <label>:51:                                     ; preds = %46
  %52 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %6, align 8, !dbg !1260
  %53 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %52, i32 0, i32 1, !dbg !1261
  %54 = load i16, i16* %53, align 1, !dbg !1261
  %55 = zext i16 %54 to i32, !dbg !1260
  %56 = icmp ne i32 5, %55, !dbg !1262
  br i1 %56, label %57, label %58, !dbg !1263

; <label>:57:                                     ; preds = %51, %46, %26, %20, %13
  store i64 10000, i64* %3, align 8, !dbg !1265
  br label %59, !dbg !1265

; <label>:58:                                     ; preds = %51
  store i64 0, i64* %3, align 8, !dbg !1267
  br label %59, !dbg !1267

; <label>:59:                                     ; preds = %58, %57, %12
  %60 = load i64, i64* %3, align 8, !dbg !1268
  ret i64 %60, !dbg !1268
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ValidateRequestMsg(i8*, i64) #0 !dbg !1269 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.VixCommandRequestHeader*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1270, metadata !885), !dbg !1271
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1272, metadata !885), !dbg !1273
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1274, metadata !885), !dbg !1275
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %7, metadata !1276, metadata !885), !dbg !1277
  %8 = load i8*, i8** %4, align 8, !dbg !1278
  %9 = load i64, i64* %5, align 8, !dbg !1279
  %10 = call i64 @VixMsg_ValidateMessage(i8* %8, i64 %9), !dbg !1280
  store i64 %10, i64* %6, align 8, !dbg !1281
  %11 = load i64, i64* %6, align 8, !dbg !1282
  %12 = icmp ne i64 0, %11, !dbg !1284
  br i1 %12, label %13, label %15, !dbg !1285

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %6, align 8, !dbg !1286
  store i64 %14, i64* %3, align 8, !dbg !1288
  br label %74, !dbg !1288

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1289
  %17 = bitcast i8* %16 to %struct.VixCommandRequestHeader*, !dbg !1289
  store %struct.VixCommandRequestHeader* %17, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1290
  %18 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1291
  %19 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %18, i32 0, i32 0, !dbg !1293
  %20 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %19, i32 0, i32 3, !dbg !1294
  %21 = load i32, i32* %20, align 1, !dbg !1294
  %22 = zext i32 %21 to i64, !dbg !1291
  %23 = icmp ult i64 %22, 51, !dbg !1295
  br i1 %23, label %24, label %25, !dbg !1296

; <label>:24:                                     ; preds = %15
  store i64 10000, i64* %3, align 8, !dbg !1297
  br label %74, !dbg !1297

; <label>:25:                                     ; preds = %15
  %26 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1299
  %27 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %26, i32 0, i32 0, !dbg !1301
  %28 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %27, i32 0, i32 2, !dbg !1302
  %29 = load i32, i32* %28, align 1, !dbg !1302
  %30 = icmp ugt i32 %29, 65536, !dbg !1303
  br i1 %30, label %31, label %32, !dbg !1304

; <label>:31:                                     ; preds = %25
  store i64 10000, i64* %3, align 8, !dbg !1305
  br label %74, !dbg !1305

; <label>:32:                                     ; preds = %25
  %33 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1307
  %34 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %33, i32 0, i32 0, !dbg !1309
  %35 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %34, i32 0, i32 6, !dbg !1310
  %36 = load i8, i8* %35, align 1, !dbg !1310
  %37 = zext i8 %36 to i32, !dbg !1307
  %38 = and i32 1, %37, !dbg !1311
  %39 = icmp ne i32 %38, 0, !dbg !1311
  br i1 %39, label %41, label %40, !dbg !1312

; <label>:40:                                     ; preds = %32
  store i64 10000, i64* %3, align 8, !dbg !1313
  br label %74, !dbg !1313

; <label>:41:                                     ; preds = %32
  %42 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1315
  %43 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %42, i32 0, i32 2, !dbg !1317
  %44 = load i32, i32* %43, align 1, !dbg !1317
  %45 = and i32 16, %44, !dbg !1318
  %46 = icmp ne i32 %45, 0, !dbg !1318
  br i1 %46, label %47, label %73, !dbg !1319

; <label>:47:                                     ; preds = %41
  %48 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1320
  %49 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %48, i32 0, i32 0, !dbg !1321
  %50 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %49, i32 0, i32 2, !dbg !1322
  %51 = load i32, i32* %50, align 1, !dbg !1322
  %52 = zext i32 %51 to i64, !dbg !1320
  %53 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1323
  %54 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %53, i32 0, i32 0, !dbg !1324
  %55 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %54, i32 0, i32 3, !dbg !1325
  %56 = load i32, i32* %55, align 1, !dbg !1325
  %57 = zext i32 %56 to i64, !dbg !1326
  %58 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1327
  %59 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %58, i32 0, i32 0, !dbg !1328
  %60 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %59, i32 0, i32 4, !dbg !1329
  %61 = load i32, i32* %60, align 1, !dbg !1329
  %62 = zext i32 %61 to i64, !dbg !1327
  %63 = add i64 %57, %62, !dbg !1330
  %64 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %7, align 8, !dbg !1331
  %65 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %64, i32 0, i32 0, !dbg !1332
  %66 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %65, i32 0, i32 5, !dbg !1333
  %67 = load i32, i32* %66, align 1, !dbg !1333
  %68 = zext i32 %67 to i64, !dbg !1331
  %69 = add i64 %63, %68, !dbg !1334
  %70 = add i64 %69, 44, !dbg !1335
  %71 = icmp ult i64 %52, %70, !dbg !1336
  br i1 %71, label %72, label %73, !dbg !1337

; <label>:72:                                     ; preds = %47
  store i64 10000, i64* %3, align 8, !dbg !1339
  br label %74, !dbg !1339

; <label>:73:                                     ; preds = %47, %41
  store i64 0, i64* %3, align 8, !dbg !1341
  br label %74, !dbg !1341

; <label>:74:                                     ; preds = %73, %72, %40, %31, %24, %13
  %75 = load i64, i64* %3, align 8, !dbg !1342
  ret i64 %75, !dbg !1342
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ValidateResponseMsg(i8*, i64) #0 !dbg !1343 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.VixCommandResponseHeader*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1344, metadata !885), !dbg !1345
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1346, metadata !885), !dbg !1347
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1348, metadata !885), !dbg !1349
  call void @llvm.dbg.declare(metadata %struct.VixCommandResponseHeader** %7, metadata !1350, metadata !885), !dbg !1353
  %8 = load i8*, i8** %4, align 8, !dbg !1354
  %9 = icmp eq i8* null, %8, !dbg !1356
  br i1 %9, label %13, label %10, !dbg !1357

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1358
  %12 = icmp ult i64 %11, 51, !dbg !1360
  br i1 %12, label %13, label %14, !dbg !1361

; <label>:13:                                     ; preds = %10, %2
  store i64 10000, i64* %3, align 8, !dbg !1362
  br label %42, !dbg !1362

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %4, align 8, !dbg !1364
  %16 = load i64, i64* %5, align 8, !dbg !1365
  %17 = call i64 @VixMsg_ValidateMessage(i8* %15, i64 %16), !dbg !1366
  store i64 %17, i64* %6, align 8, !dbg !1367
  %18 = load i64, i64* %6, align 8, !dbg !1368
  %19 = icmp ne i64 0, %18, !dbg !1370
  br i1 %19, label %20, label %22, !dbg !1371

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %6, align 8, !dbg !1372
  store i64 %21, i64* %3, align 8, !dbg !1374
  br label %42, !dbg !1374

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1375
  %24 = bitcast i8* %23 to %struct.VixCommandResponseHeader*, !dbg !1375
  store %struct.VixCommandResponseHeader* %24, %struct.VixCommandResponseHeader** %7, align 8, !dbg !1376
  %25 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %7, align 8, !dbg !1377
  %26 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %25, i32 0, i32 0, !dbg !1379
  %27 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %26, i32 0, i32 3, !dbg !1380
  %28 = load i32, i32* %27, align 1, !dbg !1380
  %29 = zext i32 %28 to i64, !dbg !1377
  %30 = icmp ult i64 %29, 51, !dbg !1381
  br i1 %30, label %31, label %32, !dbg !1382

; <label>:31:                                     ; preds = %22
  store i64 10000, i64* %3, align 8, !dbg !1383
  br label %42, !dbg !1383

; <label>:32:                                     ; preds = %22
  %33 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %7, align 8, !dbg !1385
  %34 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %33, i32 0, i32 0, !dbg !1387
  %35 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %34, i32 0, i32 6, !dbg !1388
  %36 = load i8, i8* %35, align 1, !dbg !1388
  %37 = zext i8 %36 to i32, !dbg !1385
  %38 = and i32 1, %37, !dbg !1389
  %39 = icmp ne i32 %38, 0, !dbg !1389
  br i1 %39, label %40, label %41, !dbg !1390

; <label>:40:                                     ; preds = %32
  store i64 10000, i64* %3, align 8, !dbg !1391
  br label %42, !dbg !1391

; <label>:41:                                     ; preds = %32
  store i64 0, i64* %3, align 8, !dbg !1393
  br label %42, !dbg !1393

; <label>:42:                                     ; preds = %41, %40, %31, %20, %13
  %43 = load i64, i64* %3, align 8, !dbg !1394
  ret i64 %43, !dbg !1394
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ParseWriteVariableRequest(%struct.VixMsgWriteVariableRequest*, i8**, i8**) #0 !dbg !1395 {
  %4 = alloca %struct.VixMsgWriteVariableRequest*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.VixMsgWriteVariableRequest* %0, %struct.VixMsgWriteVariableRequest** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixMsgWriteVariableRequest** %4, metadata !1410, metadata !885), !dbg !1411
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1412, metadata !885), !dbg !1413
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1414, metadata !885), !dbg !1415
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1416, metadata !885), !dbg !1417
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1418, metadata !885), !dbg !1419
  store i8* null, i8** %8, align 8, !dbg !1419
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1420, metadata !885), !dbg !1421
  store i8* null, i8** %9, align 8, !dbg !1421
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1422, metadata !885), !dbg !1423
  %11 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1424
  %12 = icmp eq %struct.VixMsgWriteVariableRequest* null, %11, !dbg !1426
  br i1 %12, label %19, label %13, !dbg !1427

; <label>:13:                                     ; preds = %3
  %14 = load i8**, i8*** %5, align 8, !dbg !1428
  %15 = icmp eq i8** null, %14, !dbg !1430
  br i1 %15, label %19, label %16, !dbg !1431

; <label>:16:                                     ; preds = %13
  %17 = load i8**, i8*** %6, align 8, !dbg !1432
  %18 = icmp eq i8** null, %17, !dbg !1434
  br i1 %18, label %19, label %20, !dbg !1435

; <label>:19:                                     ; preds = %16, %13, %3
  store i64 1, i64* %7, align 8, !dbg !1436
  br label %110, !dbg !1438

; <label>:20:                                     ; preds = %16
  %21 = load i8**, i8*** %5, align 8, !dbg !1439
  store i8* null, i8** %21, align 8, !dbg !1440
  %22 = load i8**, i8*** %6, align 8, !dbg !1441
  store i8* null, i8** %22, align 8, !dbg !1442
  %23 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1443
  %24 = bitcast %struct.VixMsgWriteVariableRequest* %23 to i8*, !dbg !1443
  %25 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1444
  %26 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %25, i32 0, i32 0, !dbg !1445
  %27 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %26, i32 0, i32 0, !dbg !1446
  %28 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %27, i32 0, i32 2, !dbg !1447
  %29 = load i32, i32* %28, align 1, !dbg !1447
  %30 = zext i32 %29 to i64, !dbg !1444
  %31 = call i64 @VixMsg_ValidateRequestMsg(i8* %24, i64 %30), !dbg !1448
  store i64 %31, i64* %7, align 8, !dbg !1449
  %32 = load i64, i64* %7, align 8, !dbg !1450
  %33 = icmp ne i64 0, %32, !dbg !1452
  br i1 %33, label %34, label %35, !dbg !1453

; <label>:34:                                     ; preds = %20
  br label %110, !dbg !1454

; <label>:35:                                     ; preds = %20
  %36 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1456
  %37 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %36, i32 0, i32 0, !dbg !1458
  %38 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %37, i32 0, i32 0, !dbg !1459
  %39 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %38, i32 0, i32 2, !dbg !1460
  %40 = load i32, i32* %39, align 1, !dbg !1460
  %41 = zext i32 %40 to i64, !dbg !1456
  %42 = icmp ult i64 %41, 67, !dbg !1461
  br i1 %42, label %43, label %44, !dbg !1462

; <label>:43:                                     ; preds = %35
  store i64 10001, i64* %7, align 8, !dbg !1463
  br label %110, !dbg !1465

; <label>:44:                                     ; preds = %35
  %45 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1466
  %46 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %45, i32 0, i32 0, !dbg !1467
  %47 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %46, i32 0, i32 0, !dbg !1468
  %48 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %47, i32 0, i32 3, !dbg !1469
  %49 = load i32, i32* %48, align 1, !dbg !1469
  %50 = zext i32 %49 to i64, !dbg !1470
  %51 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1471
  %52 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %51, i32 0, i32 0, !dbg !1472
  %53 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %52, i32 0, i32 0, !dbg !1473
  %54 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %53, i32 0, i32 4, !dbg !1474
  %55 = load i32, i32* %54, align 1, !dbg !1474
  %56 = zext i32 %55 to i64, !dbg !1471
  %57 = add i64 %50, %56, !dbg !1475
  store i64 %57, i64* %10, align 8, !dbg !1476
  %58 = load i64, i64* %10, align 8, !dbg !1477
  %59 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1479
  %60 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %59, i32 0, i32 3, !dbg !1480
  %61 = load i32, i32* %60, align 1, !dbg !1480
  %62 = zext i32 %61 to i64, !dbg !1479
  %63 = add i64 67, %62, !dbg !1481
  %64 = add i64 %63, 1, !dbg !1482
  %65 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1483
  %66 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %65, i32 0, i32 4, !dbg !1484
  %67 = load i32, i32* %66, align 1, !dbg !1484
  %68 = zext i32 %67 to i64, !dbg !1483
  %69 = add i64 %64, %68, !dbg !1485
  %70 = add i64 %69, 1, !dbg !1486
  %71 = icmp ult i64 %58, %70, !dbg !1487
  br i1 %71, label %72, label %73, !dbg !1488

; <label>:72:                                     ; preds = %44
  store i64 10001, i64* %7, align 8, !dbg !1489
  br label %110, !dbg !1491

; <label>:73:                                     ; preds = %44
  %74 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1492
  %75 = bitcast %struct.VixMsgWriteVariableRequest* %74 to i8*, !dbg !1493
  %76 = getelementptr inbounds i8, i8* %75, i64 67, !dbg !1494
  store i8* %76, i8** %8, align 8, !dbg !1495
  %77 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1496
  %78 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %77, i32 0, i32 3, !dbg !1498
  %79 = load i32, i32* %78, align 1, !dbg !1498
  %80 = zext i32 %79 to i64, !dbg !1499
  %81 = load i8*, i8** %8, align 8, !dbg !1499
  %82 = getelementptr inbounds i8, i8* %81, i64 %80, !dbg !1499
  %83 = load i8, i8* %82, align 1, !dbg !1499
  %84 = sext i8 %83 to i32, !dbg !1499
  %85 = icmp ne i32 0, %84, !dbg !1500
  br i1 %85, label %86, label %87, !dbg !1501

; <label>:86:                                     ; preds = %73
  store i64 10001, i64* %7, align 8, !dbg !1502
  br label %110, !dbg !1504

; <label>:87:                                     ; preds = %73
  %88 = load i8*, i8** %8, align 8, !dbg !1505
  %89 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1506
  %90 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %89, i32 0, i32 3, !dbg !1507
  %91 = load i32, i32* %90, align 1, !dbg !1507
  %92 = zext i32 %91 to i64, !dbg !1508
  %93 = getelementptr inbounds i8, i8* %88, i64 %92, !dbg !1508
  %94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !1509
  store i8* %94, i8** %9, align 8, !dbg !1510
  %95 = load %struct.VixMsgWriteVariableRequest*, %struct.VixMsgWriteVariableRequest** %4, align 8, !dbg !1511
  %96 = getelementptr inbounds %struct.VixMsgWriteVariableRequest, %struct.VixMsgWriteVariableRequest* %95, i32 0, i32 4, !dbg !1513
  %97 = load i32, i32* %96, align 1, !dbg !1513
  %98 = zext i32 %97 to i64, !dbg !1514
  %99 = load i8*, i8** %9, align 8, !dbg !1514
  %100 = getelementptr inbounds i8, i8* %99, i64 %98, !dbg !1514
  %101 = load i8, i8* %100, align 1, !dbg !1514
  %102 = sext i8 %101 to i32, !dbg !1514
  %103 = icmp ne i32 0, %102, !dbg !1515
  br i1 %103, label %104, label %105, !dbg !1516

; <label>:104:                                    ; preds = %87
  store i64 10001, i64* %7, align 8, !dbg !1517
  br label %110, !dbg !1519

; <label>:105:                                    ; preds = %87
  %106 = load i8*, i8** %8, align 8, !dbg !1520
  %107 = load i8**, i8*** %5, align 8, !dbg !1521
  store i8* %106, i8** %107, align 8, !dbg !1522
  %108 = load i8*, i8** %9, align 8, !dbg !1523
  %109 = load i8**, i8*** %6, align 8, !dbg !1524
  store i8* %108, i8** %109, align 8, !dbg !1525
  store i64 0, i64* %7, align 8, !dbg !1526
  br label %110, !dbg !1527

; <label>:110:                                    ; preds = %105, %104, %86, %72, %43, %34, %19
  %111 = load i64, i64* %7, align 8, !dbg !1528
  ret i64 %111, !dbg !1529
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ObfuscateNamePassword(i8*, i8*, i8**) #0 !dbg !1530 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1533, metadata !885), !dbg !1534
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1535, metadata !885), !dbg !1536
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1537, metadata !885), !dbg !1538
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1539, metadata !885), !dbg !1540
  store i64 0, i64* %7, align 8, !dbg !1540
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1541, metadata !885), !dbg !1542
  store i8* null, i8** %8, align 8, !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1543, metadata !885), !dbg !1544
  store i8* null, i8** %9, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1545, metadata !885), !dbg !1546
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1547, metadata !885), !dbg !1548
  store i64 0, i64* %11, align 8, !dbg !1548
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1549, metadata !885), !dbg !1550
  store i64 0, i64* %12, align 8, !dbg !1550
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1551, metadata !885), !dbg !1552
  store i64 0, i64* %13, align 8, !dbg !1552
  %14 = load i8*, i8** %4, align 8, !dbg !1553
  %15 = icmp ne i8* null, %14, !dbg !1555
  br i1 %15, label %16, label %19, !dbg !1556

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %4, align 8, !dbg !1557
  %18 = call i64 @strlen(i8* %17) #9, !dbg !1559
  store i64 %18, i64* %12, align 8, !dbg !1560
  br label %19, !dbg !1561

; <label>:19:                                     ; preds = %16, %3
  %20 = load i8*, i8** %5, align 8, !dbg !1562
  %21 = icmp ne i8* null, %20, !dbg !1564
  br i1 %21, label %22, label %25, !dbg !1565

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1566
  %24 = call i64 @strlen(i8* %23) #9, !dbg !1568
  store i64 %24, i64* %13, align 8, !dbg !1569
  br label %25, !dbg !1570

; <label>:25:                                     ; preds = %22, %19
  %26 = load i64, i64* %12, align 8, !dbg !1571
  %27 = add i64 %26, 1, !dbg !1572
  %28 = load i64, i64* %13, align 8, !dbg !1573
  %29 = add i64 %27, %28, !dbg !1574
  %30 = add i64 %29, 1, !dbg !1575
  store i64 %30, i64* %11, align 8, !dbg !1576
  %31 = load i64, i64* %11, align 8, !dbg !1577
  %32 = call i8* @VixMsg_MallocClientData(i64 %31), !dbg !1578
  store i8* %32, i8** %8, align 8, !dbg !1579
  %33 = load i8*, i8** %8, align 8, !dbg !1580
  %34 = icmp eq i8* %33, null, !dbg !1582
  br i1 %34, label %35, label %36, !dbg !1583

; <label>:35:                                     ; preds = %25
  store i64 2, i64* %7, align 8, !dbg !1584
  br label %73, !dbg !1586

; <label>:36:                                     ; preds = %25
  %37 = load i8*, i8** %8, align 8, !dbg !1587
  store i8* %37, i8** %10, align 8, !dbg !1588
  %38 = load i8*, i8** %4, align 8, !dbg !1589
  %39 = icmp ne i8* null, %38, !dbg !1591
  br i1 %39, label %40, label %49, !dbg !1592

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %10, align 8, !dbg !1593
  %42 = load i8*, i8** %4, align 8, !dbg !1595
  %43 = load i64, i64* %12, align 8, !dbg !1596
  %44 = add i64 %43, 1, !dbg !1597
  %45 = call i8* @Str_Strcpy(i8* %41, i8* %42, i64 %44), !dbg !1598
  %46 = load i64, i64* %12, align 8, !dbg !1599
  %47 = load i8*, i8** %10, align 8, !dbg !1600
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !1600
  store i8* %48, i8** %10, align 8, !dbg !1600
  br label %49, !dbg !1601

; <label>:49:                                     ; preds = %40, %36
  %50 = load i8*, i8** %10, align 8, !dbg !1602
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !1602
  store i8* %51, i8** %10, align 8, !dbg !1602
  store i8 0, i8* %50, align 1, !dbg !1603
  %52 = load i8*, i8** %5, align 8, !dbg !1604
  %53 = icmp ne i8* null, %52, !dbg !1606
  br i1 %53, label %54, label %63, !dbg !1607

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %10, align 8, !dbg !1608
  %56 = load i8*, i8** %5, align 8, !dbg !1610
  %57 = load i64, i64* %13, align 8, !dbg !1611
  %58 = add i64 %57, 1, !dbg !1612
  %59 = call i8* @Str_Strcpy(i8* %55, i8* %56, i64 %58), !dbg !1613
  %60 = load i64, i64* %13, align 8, !dbg !1614
  %61 = load i8*, i8** %10, align 8, !dbg !1615
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1615
  store i8* %62, i8** %10, align 8, !dbg !1615
  br label %63, !dbg !1616

; <label>:63:                                     ; preds = %54, %49
  %64 = load i8*, i8** %10, align 8, !dbg !1617
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !1617
  store i8* %65, i8** %10, align 8, !dbg !1617
  store i8 0, i8* %64, align 1, !dbg !1618
  %66 = load i8*, i8** %8, align 8, !dbg !1619
  %67 = load i64, i64* %11, align 8, !dbg !1620
  %68 = call i64 @VixMsgEncodeBuffer(i8* %66, i64 %67, i8 signext 0, i8** %9), !dbg !1621
  store i64 %68, i64* %7, align 8, !dbg !1622
  %69 = load i64, i64* %7, align 8, !dbg !1623
  %70 = icmp ne i64 %69, 0, !dbg !1625
  br i1 %70, label %71, label %72, !dbg !1626

; <label>:71:                                     ; preds = %63
  br label %73, !dbg !1627

; <label>:72:                                     ; preds = %63
  br label %73, !dbg !1629

; <label>:73:                                     ; preds = %72, %71, %35
  %74 = load i8*, i8** %8, align 8, !dbg !1631
  %75 = load i64, i64* %11, align 8, !dbg !1632
  call void @Util_ZeroFree(i8* %74, i64 %75), !dbg !1633
  %76 = load i64, i64* %7, align 8, !dbg !1634
  %77 = icmp eq i64 %76, 0, !dbg !1636
  br i1 %77, label %78, label %81, !dbg !1637

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %9, align 8, !dbg !1638
  %80 = load i8**, i8*** %6, align 8, !dbg !1640
  store i8* %79, i8** %80, align 8, !dbg !1641
  br label %81, !dbg !1642

; <label>:81:                                     ; preds = %78, %73
  %82 = load i64, i64* %7, align 8, !dbg !1643
  ret i64 %82, !dbg !1644
}

; Function Attrs: nounwind uwtable
define i8* @VixMsg_MallocClientData(i64) #0 !dbg !1645 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1648, metadata !885), !dbg !1649
  %3 = load i64, i64* %2, align 8, !dbg !1650
  %4 = call noalias i8* @malloc(i64 %3) #10, !dbg !1651
  ret i8* %4, !dbg !1652
}

; Function Attrs: nounwind uwtable
define internal i64 @VixMsgEncodeBuffer(i8*, i64, i8 signext, i8**) #0 !dbg !1653 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1656, metadata !885), !dbg !1657
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1658, metadata !885), !dbg !1659
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1660, metadata !885), !dbg !1661
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1662, metadata !885), !dbg !1663
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1664, metadata !885), !dbg !1665
  store i64 0, i64* %9, align 8, !dbg !1665
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1666, metadata !885), !dbg !1667
  store i8* null, i8** %10, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1668, metadata !885), !dbg !1669
  store i8* null, i8** %11, align 8, !dbg !1669
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1670, metadata !885), !dbg !1671
  store i64 0, i64* %12, align 8, !dbg !1671
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1672, metadata !885), !dbg !1673
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1674, metadata !885), !dbg !1675
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1676, metadata !885), !dbg !1677
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1678, metadata !885), !dbg !1679
  %17 = load i8*, i8** %5, align 8, !dbg !1680
  %18 = load i64, i64* %6, align 8, !dbg !1681
  %19 = call i64 @Base64_EncodedLength(i8* %17, i64 %18), !dbg !1682
  store i64 %19, i64* %16, align 8, !dbg !1683
  %20 = load i64, i64* %16, align 8, !dbg !1684
  %21 = call i8* @VixMsg_MallocClientData(i64 %20), !dbg !1685
  store i8* %21, i8** %10, align 8, !dbg !1686
  %22 = load i8*, i8** %10, align 8, !dbg !1687
  %23 = icmp eq i8* %22, null, !dbg !1689
  br i1 %23, label %24, label %25, !dbg !1690

; <label>:24:                                     ; preds = %4
  store i64 2, i64* %9, align 8, !dbg !1691
  br label %106, !dbg !1693

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %5, align 8, !dbg !1694
  %27 = load i64, i64* %6, align 8, !dbg !1696
  %28 = load i8*, i8** %10, align 8, !dbg !1697
  %29 = load i64, i64* %16, align 8, !dbg !1698
  %30 = call signext i8 @Base64_Encode(i8* %26, i64 %27, i8* %28, i64 %29, i64* %16), !dbg !1699
  %31 = icmp ne i8 %30, 0, !dbg !1699
  br i1 %31, label %33, label %32, !dbg !1700

; <label>:32:                                     ; preds = %25
  store i64 1, i64* %9, align 8, !dbg !1701
  br label %106, !dbg !1703

; <label>:33:                                     ; preds = %25
  call void @VixMsgInitializeObfuscationMapping(), !dbg !1704
  %34 = load i64, i64* %16, align 8, !dbg !1705
  %35 = mul i64 %34, 2, !dbg !1706
  store i64 %35, i64* %12, align 8, !dbg !1707
  %36 = load i8, i8* %7, align 1, !dbg !1708
  %37 = icmp ne i8 %36, 0, !dbg !1708
  br i1 %37, label %38, label %41, !dbg !1710

; <label>:38:                                     ; preds = %33
  %39 = load i64, i64* %12, align 8, !dbg !1711
  %40 = add i64 %39, 1, !dbg !1711
  store i64 %40, i64* %12, align 8, !dbg !1711
  br label %41, !dbg !1713

; <label>:41:                                     ; preds = %38, %33
  %42 = load i64, i64* %12, align 8, !dbg !1714
  %43 = add i64 %42, 1, !dbg !1715
  %44 = call i8* @VixMsg_MallocClientData(i64 %43), !dbg !1716
  store i8* %44, i8** %11, align 8, !dbg !1717
  %45 = load i8*, i8** %11, align 8, !dbg !1718
  %46 = icmp eq i8* %45, null, !dbg !1720
  br i1 %46, label %47, label %48, !dbg !1721

; <label>:47:                                     ; preds = %41
  store i64 2, i64* %9, align 8, !dbg !1722
  br label %106, !dbg !1724

; <label>:48:                                     ; preds = %41
  %49 = load i8*, i8** %11, align 8, !dbg !1725
  store i8* %49, i8** %15, align 8, !dbg !1726
  %50 = load i8*, i8** %10, align 8, !dbg !1727
  store i8* %50, i8** %13, align 8, !dbg !1728
  %51 = load i8*, i8** %10, align 8, !dbg !1729
  %52 = load i64, i64* %16, align 8, !dbg !1730
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !1731
  store i8* %53, i8** %14, align 8, !dbg !1732
  %54 = load i8, i8* %7, align 1, !dbg !1733
  %55 = icmp ne i8 %54, 0, !dbg !1733
  br i1 %55, label %56, label %59, !dbg !1735

; <label>:56:                                     ; preds = %48
  %57 = load i8*, i8** %15, align 8, !dbg !1736
  %58 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !1736
  store i8* %58, i8** %15, align 8, !dbg !1736
  store i8 97, i8* %57, align 1, !dbg !1738
  br label %59, !dbg !1739

; <label>:59:                                     ; preds = %56, %48
  br label %60, !dbg !1740

; <label>:60:                                     ; preds = %88, %59
  %61 = load i8*, i8** %13, align 8, !dbg !1741
  %62 = load i8*, i8** %14, align 8, !dbg !1743
  %63 = icmp ult i8* %61, %62, !dbg !1744
  br i1 %63, label %64, label %91, !dbg !1745

; <label>:64:                                     ; preds = %60
  %65 = load i8*, i8** %13, align 8, !dbg !1746
  %66 = load i8, i8* %65, align 1, !dbg !1749
  %67 = sext i8 %66 to i32, !dbg !1750
  %68 = zext i32 %67 to i64, !dbg !1751
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 %68, !dbg !1751
  %70 = load i8, i8* %69, align 1, !dbg !1751
  %71 = icmp ne i8 %70, 0, !dbg !1751
  br i1 %71, label %72, label %83, !dbg !1752

; <label>:72:                                     ; preds = %64
  %73 = load i8*, i8** %15, align 8, !dbg !1753
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !1753
  store i8* %74, i8** %15, align 8, !dbg !1753
  store i8 92, i8* %73, align 1, !dbg !1755
  %75 = load i8*, i8** %13, align 8, !dbg !1756
  %76 = load i8, i8* %75, align 1, !dbg !1757
  %77 = sext i8 %76 to i32, !dbg !1758
  %78 = zext i32 %77 to i64, !dbg !1759
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 %78, !dbg !1759
  %80 = load i8, i8* %79, align 1, !dbg !1759
  %81 = load i8*, i8** %15, align 8, !dbg !1760
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !1760
  store i8* %82, i8** %15, align 8, !dbg !1760
  store i8 %80, i8* %81, align 1, !dbg !1761
  br label %88, !dbg !1762

; <label>:83:                                     ; preds = %64
  %84 = load i8*, i8** %13, align 8, !dbg !1763
  %85 = load i8, i8* %84, align 1, !dbg !1765
  %86 = load i8*, i8** %15, align 8, !dbg !1766
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !1766
  store i8* %87, i8** %15, align 8, !dbg !1766
  store i8 %85, i8* %86, align 1, !dbg !1767
  br label %88

; <label>:88:                                     ; preds = %83, %72
  %89 = load i8*, i8** %13, align 8, !dbg !1768
  %90 = getelementptr inbounds i8, i8* %89, i32 1, !dbg !1768
  store i8* %90, i8** %13, align 8, !dbg !1768
  br label %60, !dbg !1769, !llvm.loop !1771

; <label>:91:                                     ; preds = %60
  %92 = load i8*, i8** %15, align 8, !dbg !1772
  %93 = load i8*, i8** %11, align 8, !dbg !1775
  %94 = ptrtoint i8* %92 to i64, !dbg !1776
  %95 = ptrtoint i8* %93 to i64, !dbg !1776
  %96 = sub i64 %94, %95, !dbg !1776
  %97 = load i64, i64* %12, align 8, !dbg !1777
  %98 = icmp ule i64 %96, %97, !dbg !1778
  %99 = xor i1 %98, true, !dbg !1779
  %100 = zext i1 %99 to i32, !dbg !1779
  %101 = sext i32 %100 to i64, !dbg !1780
  %102 = icmp ne i64 %101, 0, !dbg !1781
  br i1 %102, label %103, label %104, !dbg !1782

; <label>:103:                                    ; preds = %91
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 1283) #11, !dbg !1783
  unreachable, !dbg !1783

; <label>:104:                                    ; preds = %91
  %105 = load i8*, i8** %15, align 8, !dbg !1786
  store i8 0, i8* %105, align 1, !dbg !1787
  br label %106, !dbg !1788

; <label>:106:                                    ; preds = %104, %47, %32, %24
  %107 = load i8*, i8** %10, align 8, !dbg !1789
  call void @free(i8* %107) #10, !dbg !1790
  %108 = load i64, i64* %9, align 8, !dbg !1791
  %109 = icmp eq i64 %108, 0, !dbg !1793
  br i1 %109, label %110, label %113, !dbg !1794

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %11, align 8, !dbg !1795
  %112 = load i8**, i8*** %8, align 8, !dbg !1797
  store i8* %111, i8** %112, align 8, !dbg !1798
  br label %113, !dbg !1799

; <label>:113:                                    ; preds = %110, %106
  %114 = load i64, i64* %9, align 8, !dbg !1800
  ret i64 %114, !dbg !1801
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_ZeroFree(i8*, i64) #5 !dbg !1802 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1806, metadata !885), !dbg !1807
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1808, metadata !885), !dbg !1809
  %6 = load i8*, i8** %3, align 8, !dbg !1810
  %7 = icmp ne i8* %6, null, !dbg !1812
  br i1 %7, label %8, label %16, !dbg !1813

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1814, metadata !885), !dbg !1816
  %9 = call i32* @__errno_location() #1, !dbg !1817
  %10 = load i32, i32* %9, align 4, !dbg !1818
  store i32 %10, i32* %5, align 4, !dbg !1816
  %11 = load i8*, i8** %3, align 8, !dbg !1819
  %12 = load i64, i64* %4, align 8, !dbg !1820
  call void @Util_Zero(i8* %11, i64 %12), !dbg !1821
  %13 = load i8*, i8** %3, align 8, !dbg !1822
  call void @free(i8* %13) #10, !dbg !1823
  %14 = load i32, i32* %5, align 4, !dbg !1824
  %15 = call i32* @__errno_location() #1, !dbg !1825
  store i32 %14, i32* %15, align 4, !dbg !1826
  br label %16, !dbg !1827

; <label>:16:                                     ; preds = %8, %2
  ret void, !dbg !1828
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_DeObfuscateNamePassword(i8*, i8**, i8**) #0 !dbg !1829 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1832, metadata !885), !dbg !1833
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1834, metadata !885), !dbg !1835
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1836, metadata !885), !dbg !1837
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1838, metadata !885), !dbg !1839
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1840, metadata !885), !dbg !1841
  store i8* null, i8** %8, align 8, !dbg !1841
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1842, metadata !885), !dbg !1843
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1844, metadata !885), !dbg !1845
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1846, metadata !885), !dbg !1847
  store i8* null, i8** %11, align 8, !dbg !1847
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1848, metadata !885), !dbg !1849
  store i8* null, i8** %12, align 8, !dbg !1849
  %15 = load i8*, i8** %4, align 8, !dbg !1850
  %16 = call i64 @VixMsgDecodeBuffer(i8* %15, i8 signext 0, i8** %8, i64* %10), !dbg !1851
  store i64 %16, i64* %7, align 8, !dbg !1852
  %17 = load i64, i64* %7, align 8, !dbg !1853
  %18 = icmp ne i64 %17, 0, !dbg !1855
  br i1 %18, label %19, label %20, !dbg !1856

; <label>:19:                                     ; preds = %3
  br label %52, !dbg !1857

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %8, align 8, !dbg !1859
  store i8* %21, i8** %9, align 8, !dbg !1860
  %22 = load i8**, i8*** %5, align 8, !dbg !1861
  %23 = icmp ne i8** null, %22, !dbg !1863
  br i1 %23, label %24, label %31, !dbg !1864

; <label>:24:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1865, metadata !885), !dbg !1867
  %25 = load i8*, i8** %9, align 8, !dbg !1868
  %26 = call i8* @VixMsg_StrdupClientData(i8* %25, i8* %13), !dbg !1869
  store i8* %26, i8** %11, align 8, !dbg !1870
  %27 = load i8, i8* %13, align 1, !dbg !1871
  %28 = icmp ne i8 %27, 0, !dbg !1871
  br i1 %28, label %29, label %30, !dbg !1873

; <label>:29:                                     ; preds = %24
  store i64 2, i64* %7, align 8, !dbg !1874
  br label %52, !dbg !1876

; <label>:30:                                     ; preds = %24
  br label %31, !dbg !1877

; <label>:31:                                     ; preds = %30, %20
  %32 = load i8*, i8** %9, align 8, !dbg !1878
  %33 = load i8*, i8** %9, align 8, !dbg !1879
  %34 = call i64 @strlen(i8* %33) #9, !dbg !1880
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !1881
  store i8* %35, i8** %9, align 8, !dbg !1882
  %36 = load i8*, i8** %9, align 8, !dbg !1883
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !1883
  store i8* %37, i8** %9, align 8, !dbg !1883
  %38 = load i8**, i8*** %6, align 8, !dbg !1884
  %39 = icmp ne i8** null, %38, !dbg !1886
  br i1 %39, label %40, label %47, !dbg !1887

; <label>:40:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1888, metadata !885), !dbg !1890
  %41 = load i8*, i8** %9, align 8, !dbg !1891
  %42 = call i8* @VixMsg_StrdupClientData(i8* %41, i8* %14), !dbg !1892
  store i8* %42, i8** %12, align 8, !dbg !1893
  %43 = load i8, i8* %14, align 1, !dbg !1894
  %44 = icmp ne i8 %43, 0, !dbg !1894
  br i1 %44, label %45, label %46, !dbg !1896

; <label>:45:                                     ; preds = %40
  store i64 2, i64* %7, align 8, !dbg !1897
  br label %52, !dbg !1899

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !1900

; <label>:47:                                     ; preds = %46, %31
  %48 = load i8*, i8** %11, align 8, !dbg !1901
  %49 = load i8**, i8*** %5, align 8, !dbg !1902
  store i8* %48, i8** %49, align 8, !dbg !1903
  store i8* null, i8** %11, align 8, !dbg !1904
  %50 = load i8*, i8** %12, align 8, !dbg !1905
  %51 = load i8**, i8*** %6, align 8, !dbg !1906
  store i8* %50, i8** %51, align 8, !dbg !1907
  store i8* null, i8** %12, align 8, !dbg !1908
  br label %52, !dbg !1909

; <label>:52:                                     ; preds = %47, %45, %29, %19
  %53 = load i8*, i8** %8, align 8, !dbg !1910
  %54 = load i64, i64* %10, align 8, !dbg !1911
  call void @Util_ZeroFree(i8* %53, i64 %54), !dbg !1912
  %55 = load i8*, i8** %11, align 8, !dbg !1913
  call void @Util_ZeroFreeString(i8* %55), !dbg !1914
  %56 = load i8*, i8** %12, align 8, !dbg !1915
  call void @Util_ZeroFreeString(i8* %56), !dbg !1916
  %57 = load i64, i64* %7, align 8, !dbg !1917
  ret i64 %57, !dbg !1918
}

; Function Attrs: nounwind uwtable
define internal i64 @VixMsgDecodeBuffer(i8*, i8 signext, i8**, i64*) #0 !dbg !1919 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1922, metadata !885), !dbg !1923
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1924, metadata !885), !dbg !1925
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1926, metadata !885), !dbg !1927
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1928, metadata !885), !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1930, metadata !885), !dbg !1931
  store i64 0, i64* %9, align 8, !dbg !1931
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1932, metadata !885), !dbg !1933
  store i8* null, i8** %10, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1934, metadata !885), !dbg !1935
  store i8* null, i8** %11, align 8, !dbg !1935
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1936, metadata !885), !dbg !1937
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1938, metadata !885), !dbg !1939
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1940, metadata !885), !dbg !1941
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1942, metadata !885), !dbg !1943
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1944, metadata !885), !dbg !1945
  %17 = load i64*, i64** %8, align 8, !dbg !1946
  %18 = icmp ne i64* null, %17, !dbg !1948
  br i1 %18, label %19, label %21, !dbg !1949

; <label>:19:                                     ; preds = %4
  %20 = load i64*, i64** %8, align 8, !dbg !1950
  store i64 0, i64* %20, align 8, !dbg !1952
  br label %21, !dbg !1953

; <label>:21:                                     ; preds = %19, %4
  call void @VixMsgInitializeObfuscationMapping(), !dbg !1954
  %22 = load i8*, i8** %5, align 8, !dbg !1955
  %23 = call i8* @VixMsg_StrdupClientData(i8* %22, i8* %16), !dbg !1956
  store i8* %23, i8** %10, align 8, !dbg !1957
  %24 = load i8, i8* %16, align 1, !dbg !1958
  %25 = icmp ne i8 %24, 0, !dbg !1958
  br i1 %25, label %26, label %27, !dbg !1960

; <label>:26:                                     ; preds = %21
  store i64 2, i64* %9, align 8, !dbg !1961
  br label %124, !dbg !1963

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %10, align 8, !dbg !1964
  store i8* %28, i8** %13, align 8, !dbg !1965
  %29 = load i8*, i8** %10, align 8, !dbg !1966
  store i8* %29, i8** %12, align 8, !dbg !1967
  br label %30, !dbg !1968

; <label>:30:                                     ; preds = %70, %27
  %31 = load i8*, i8** %12, align 8, !dbg !1969
  %32 = load i8, i8* %31, align 1, !dbg !1971
  %33 = icmp ne i8 %32, 0, !dbg !1972
  br i1 %33, label %34, label %73, !dbg !1972

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %12, align 8, !dbg !1973
  %36 = load i8, i8* %35, align 1, !dbg !1976
  %37 = sext i8 %36 to i32, !dbg !1976
  %38 = icmp eq i32 92, %37, !dbg !1977
  br i1 %38, label %39, label %65, !dbg !1978

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %12, align 8, !dbg !1979
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !1979
  store i8* %41, i8** %12, align 8, !dbg !1979
  %42 = load i8*, i8** %12, align 8, !dbg !1981
  %43 = load i8, i8* %42, align 1, !dbg !1983
  %44 = sext i8 %43 to i32, !dbg !1983
  %45 = icmp eq i32 0, %44, !dbg !1984
  br i1 %45, label %55, label %46, !dbg !1985

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %12, align 8, !dbg !1986
  %48 = load i8, i8* %47, align 1, !dbg !1988
  %49 = sext i8 %48 to i32, !dbg !1989
  %50 = zext i32 %49 to i64, !dbg !1990
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 %50, !dbg !1990
  %52 = load i8, i8* %51, align 1, !dbg !1990
  %53 = sext i8 %52 to i32, !dbg !1990
  %54 = icmp eq i32 0, %53, !dbg !1991
  br i1 %54, label %55, label %56, !dbg !1992

; <label>:55:                                     ; preds = %46, %39
  br label %124, !dbg !1994

; <label>:56:                                     ; preds = %46
  %57 = load i8*, i8** %12, align 8, !dbg !1996
  %58 = load i8, i8* %57, align 1, !dbg !1997
  %59 = sext i8 %58 to i32, !dbg !1998
  %60 = zext i32 %59 to i64, !dbg !1999
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 %60, !dbg !1999
  %62 = load i8, i8* %61, align 1, !dbg !1999
  %63 = load i8*, i8** %13, align 8, !dbg !2000
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !2000
  store i8* %64, i8** %13, align 8, !dbg !2000
  store i8 %62, i8* %63, align 1, !dbg !2001
  br label %70, !dbg !2002

; <label>:65:                                     ; preds = %34
  %66 = load i8*, i8** %12, align 8, !dbg !2003
  %67 = load i8, i8* %66, align 1, !dbg !2005
  %68 = load i8*, i8** %13, align 8, !dbg !2006
  %69 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !2006
  store i8* %69, i8** %13, align 8, !dbg !2006
  store i8 %67, i8* %68, align 1, !dbg !2007
  br label %70

; <label>:70:                                     ; preds = %65, %56
  %71 = load i8*, i8** %12, align 8, !dbg !2008
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !2008
  store i8* %72, i8** %12, align 8, !dbg !2008
  br label %30, !dbg !2009, !llvm.loop !2011

; <label>:73:                                     ; preds = %30
  %74 = load i8*, i8** %13, align 8, !dbg !2012
  store i8 0, i8* %74, align 1, !dbg !2013
  %75 = load i8*, i8** %10, align 8, !dbg !2014
  %76 = load i8*, i8** %13, align 8, !dbg !2015
  %77 = load i8*, i8** %10, align 8, !dbg !2016
  %78 = ptrtoint i8* %76 to i64, !dbg !2017
  %79 = ptrtoint i8* %77 to i64, !dbg !2017
  %80 = sub i64 %78, %79, !dbg !2017
  %81 = call i64 @Base64_DecodedLength(i8* %75, i64 %80), !dbg !2018
  store i64 %81, i64* %14, align 8, !dbg !2019
  %82 = load i8, i8* %6, align 1, !dbg !2020
  %83 = icmp ne i8 %82, 0, !dbg !2020
  br i1 %83, label %84, label %87, !dbg !2022

; <label>:84:                                     ; preds = %73
  %85 = load i64, i64* %14, align 8, !dbg !2023
  %86 = add i64 %85, 1, !dbg !2023
  store i64 %86, i64* %14, align 8, !dbg !2023
  br label %87, !dbg !2025

; <label>:87:                                     ; preds = %84, %73
  %88 = load i64, i64* %14, align 8, !dbg !2026
  %89 = call i8* @UtilSafeMalloc0(i64 %88), !dbg !2027
  store i8* %89, i8** %11, align 8, !dbg !2028
  %90 = load i8*, i8** %10, align 8, !dbg !2029
  %91 = load i8*, i8** %11, align 8, !dbg !2031
  %92 = load i64, i64* %14, align 8, !dbg !2032
  %93 = call signext i8 @Base64_Decode(i8* %90, i8* %91, i64 %92, i64* %15), !dbg !2033
  %94 = icmp ne i8 %93, 0, !dbg !2033
  br i1 %94, label %95, label %99, !dbg !2034

; <label>:95:                                     ; preds = %87
  %96 = load i64, i64* %15, align 8, !dbg !2035
  %97 = load i64, i64* %14, align 8, !dbg !2037
  %98 = icmp ugt i64 %96, %97, !dbg !2038
  br i1 %98, label %99, label %101, !dbg !2039

; <label>:99:                                     ; preds = %95, %87
  %100 = load i8*, i8** %11, align 8, !dbg !2040
  call void @free(i8* %100) #10, !dbg !2042
  store i8* null, i8** %11, align 8, !dbg !2043
  br label %124, !dbg !2044

; <label>:101:                                    ; preds = %95
  %102 = load i8, i8* %6, align 1, !dbg !2045
  %103 = icmp ne i8 %102, 0, !dbg !2045
  br i1 %103, label %104, label %117, !dbg !2047

; <label>:104:                                    ; preds = %101
  %105 = load i64, i64* %15, align 8, !dbg !2048
  %106 = load i64, i64* %14, align 8, !dbg !2052
  %107 = icmp ult i64 %105, %106, !dbg !2053
  %108 = xor i1 %107, true, !dbg !2054
  %109 = zext i1 %108 to i32, !dbg !2054
  %110 = sext i32 %109 to i64, !dbg !2055
  %111 = icmp ne i64 %110, 0, !dbg !2056
  br i1 %111, label %112, label %113, !dbg !2057

; <label>:112:                                    ; preds = %104
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 1420) #11, !dbg !2058
  unreachable, !dbg !2058

; <label>:113:                                    ; preds = %104
  %114 = load i64, i64* %15, align 8, !dbg !2061
  %115 = load i8*, i8** %11, align 8, !dbg !2062
  %116 = getelementptr inbounds i8, i8* %115, i64 %114, !dbg !2062
  store i8 0, i8* %116, align 1, !dbg !2063
  br label %117, !dbg !2064

; <label>:117:                                    ; preds = %113, %101
  %118 = load i64*, i64** %8, align 8, !dbg !2065
  %119 = icmp ne i64* null, %118, !dbg !2067
  br i1 %119, label %120, label %123, !dbg !2068

; <label>:120:                                    ; preds = %117
  %121 = load i64, i64* %15, align 8, !dbg !2069
  %122 = load i64*, i64** %8, align 8, !dbg !2071
  store i64 %121, i64* %122, align 8, !dbg !2072
  br label %123, !dbg !2073

; <label>:123:                                    ; preds = %120, %117
  br label %124, !dbg !2074

; <label>:124:                                    ; preds = %123, %99, %55, %26
  %125 = load i8*, i8** %10, align 8, !dbg !2076
  call void @free(i8* %125) #10, !dbg !2077
  %126 = load i64, i64* %9, align 8, !dbg !2078
  %127 = icmp eq i64 %126, 0, !dbg !2080
  br i1 %127, label %128, label %131, !dbg !2081

; <label>:128:                                    ; preds = %124
  %129 = load i8*, i8** %11, align 8, !dbg !2082
  %130 = load i8**, i8*** %7, align 8, !dbg !2084
  store i8* %129, i8** %130, align 8, !dbg !2085
  br label %131, !dbg !2086

; <label>:131:                                    ; preds = %128, %124
  %132 = load i64, i64* %9, align 8, !dbg !2087
  ret i64 %132, !dbg !2088
}

; Function Attrs: nounwind uwtable
define i8* @VixMsg_StrdupClientData(i8*, i8*) #0 !dbg !2089 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2093, metadata !885), !dbg !2094
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2095, metadata !885), !dbg !2096
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2097, metadata !885), !dbg !2098
  store i8* null, i8** %5, align 8, !dbg !2098
  %6 = load i8*, i8** %4, align 8, !dbg !2099
  %7 = icmp eq i8* null, %6, !dbg !2101
  br i1 %7, label %8, label %9, !dbg !2102

; <label>:8:                                      ; preds = %2
  br label %22, !dbg !2103

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !2105
  store i8 0, i8* %10, align 1, !dbg !2106
  %11 = load i8*, i8** %3, align 8, !dbg !2107
  %12 = icmp ne i8* null, %11, !dbg !2109
  br i1 %12, label %13, label %21, !dbg !2110

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !2111
  %15 = call noalias i8* @strdup(i8* %14) #10, !dbg !2113
  store i8* %15, i8** %5, align 8, !dbg !2114
  %16 = load i8*, i8** %5, align 8, !dbg !2115
  %17 = icmp eq i8* null, %16, !dbg !2117
  br i1 %17, label %18, label %20, !dbg !2118

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8, !dbg !2119
  store i8 1, i8* %19, align 1, !dbg !2121
  br label %20, !dbg !2122

; <label>:20:                                     ; preds = %18, %13
  br label %21, !dbg !2123

; <label>:21:                                     ; preds = %20, %9
  br label %22, !dbg !2124

; <label>:22:                                     ; preds = %21, %8
  %23 = load i8*, i8** %5, align 8, !dbg !2126
  ret i8* %23, !dbg !2127
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_ZeroFreeString(i8*) #5 !dbg !2128 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2131, metadata !885), !dbg !2132
  %4 = load i8*, i8** %2, align 8, !dbg !2133
  %5 = icmp ne i8* %4, null, !dbg !2135
  br i1 %5, label %6, label %13, !dbg !2136

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2137, metadata !885), !dbg !2139
  %7 = call i32* @__errno_location() #1, !dbg !2140
  %8 = load i32, i32* %7, align 4, !dbg !2141
  store i32 %8, i32* %3, align 4, !dbg !2139
  %9 = load i8*, i8** %2, align 8, !dbg !2142
  call void @Util_ZeroString(i8* %9), !dbg !2143
  %10 = load i8*, i8** %2, align 8, !dbg !2144
  call void @free(i8* %10) #10, !dbg !2145
  %11 = load i32, i32* %3, align 4, !dbg !2146
  %12 = call i32* @__errno_location() #1, !dbg !2147
  store i32 %11, i32* %12, align 4, !dbg !2148
  br label %13, !dbg !2149

; <label>:13:                                     ; preds = %6, %1
  ret void, !dbg !2150
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_EncodeString(i8*, i8**) #0 !dbg !2151 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2154, metadata !885), !dbg !2155
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2156, metadata !885), !dbg !2157
  %5 = load i8*, i8** %3, align 8, !dbg !2158
  %6 = icmp eq i8* null, %5, !dbg !2160
  br i1 %6, label %7, label %8, !dbg !2161

; <label>:7:                                      ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %3, align 8, !dbg !2162
  br label %8, !dbg !2164

; <label>:8:                                      ; preds = %7, %2
  %9 = load i8*, i8** %3, align 8, !dbg !2165
  %10 = load i8*, i8** %3, align 8, !dbg !2166
  %11 = call i64 @strlen(i8* %10) #9, !dbg !2167
  %12 = load i8**, i8*** %4, align 8, !dbg !2168
  %13 = call i64 @VixMsgEncodeBuffer(i8* %9, i64 %11, i8 signext 1, i8** %12), !dbg !2169
  ret i64 %13, !dbg !2171
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_DecodeString(i8*, i8**) #0 !dbg !2172 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2173, metadata !885), !dbg !2174
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2175, metadata !885), !dbg !2176
  %6 = load i8*, i8** %4, align 8, !dbg !2177
  %7 = icmp eq i8* null, %6, !dbg !2179
  br i1 %7, label %13, label %8, !dbg !2180

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2181
  %10 = load i8, i8* %9, align 1, !dbg !2183
  %11 = sext i8 %10 to i32, !dbg !2183
  %12 = icmp ne i32 97, %11, !dbg !2184
  br i1 %12, label %13, label %15, !dbg !2185

; <label>:13:                                     ; preds = %8, %2
  %14 = load i8**, i8*** %5, align 8, !dbg !2186
  store i8* null, i8** %14, align 8, !dbg !2188
  store i64 3, i64* %3, align 8, !dbg !2189
  br label %20, !dbg !2189

; <label>:15:                                     ; preds = %8
  %16 = load i8*, i8** %4, align 8, !dbg !2190
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !2191
  %18 = load i8**, i8*** %5, align 8, !dbg !2192
  %19 = call i64 @VixMsgDecodeBuffer(i8* %17, i8 signext 1, i8** %18, i64* null), !dbg !2193
  store i64 %19, i64* %3, align 8, !dbg !2194
  br label %20, !dbg !2194

; <label>:20:                                     ; preds = %15, %13
  %21 = load i64, i64* %3, align 8, !dbg !2195
  ret i64 %21, !dbg !2195
}

; Function Attrs: nounwind uwtable
define signext i8 @VixMsg_ValidateCommandInfoTable() #0 !dbg !2196 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2199, metadata !885), !dbg !2200
  br label %3, !dbg !2201, !llvm.loop !2202

; <label>:3:                                      ; preds = %0
  br label %4, !dbg !2203

; <label>:4:                                      ; preds = %3
  store i32 0, i32* %2, align 4, !dbg !2206
  br label %5, !dbg !2208

; <label>:5:                                      ; preds = %41, %4
  %6 = load i32, i32* %2, align 4, !dbg !2209
  %7 = sext i32 %6 to i64, !dbg !2209
  %8 = icmp ult i64 %7, 209, !dbg !2212
  br i1 %8, label %9, label %44, !dbg !2213

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %2, align 4, !dbg !2214
  %11 = sext i32 %10 to i64, !dbg !2217
  %12 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %11, !dbg !2217
  %13 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %12, i32 0, i32 3, !dbg !2218
  %14 = load i8, i8* %13, align 4, !dbg !2218
  %15 = sext i8 %14 to i32, !dbg !2217
  %16 = icmp ne i32 %15, 0, !dbg !2217
  br i1 %16, label %17, label %40, !dbg !2219

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %2, align 4, !dbg !2220
  %19 = sext i32 %18 to i64, !dbg !2221
  %20 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %19, !dbg !2221
  %21 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %20, i32 0, i32 0, !dbg !2222
  %22 = load i32, i32* %21, align 8, !dbg !2222
  %23 = load i32, i32* %2, align 4, !dbg !2223
  %24 = sub nsw i32 %23, 1, !dbg !2224
  %25 = icmp ne i32 %22, %24, !dbg !2225
  br i1 %25, label %33, label %26, !dbg !2226

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %2, align 4, !dbg !2227
  %28 = sext i32 %27 to i64, !dbg !2228
  %29 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %28, !dbg !2228
  %30 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %29, i32 0, i32 1, !dbg !2229
  %31 = load i8*, i8** %30, align 8, !dbg !2229
  %32 = icmp eq i8* null, %31, !dbg !2230
  br i1 %32, label %33, label %40, !dbg !2231

; <label>:33:                                     ; preds = %26, %17
  %34 = load i32, i32* %2, align 4, !dbg !2233
  %35 = sext i32 %34 to i64, !dbg !2235
  %36 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %35, !dbg !2235
  %37 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %36, i32 0, i32 0, !dbg !2236
  %38 = load i32, i32* %37, align 8, !dbg !2236
  %39 = load i32, i32* %2, align 4, !dbg !2237
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.VixMsg_ValidateCommandInfoTable, i32 0, i32 0), i32 %38, i32 %39), !dbg !2238
  store i8 0, i8* %1, align 1, !dbg !2239
  br label %45, !dbg !2239

; <label>:40:                                     ; preds = %26, %9
  br label %41, !dbg !2240

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %2, align 4, !dbg !2241
  %43 = add nsw i32 %42, 1, !dbg !2241
  store i32 %43, i32* %2, align 4, !dbg !2241
  br label %5, !dbg !2243, !llvm.loop !2244

; <label>:44:                                     ; preds = %5
  store i8 1, i8* %1, align 1, !dbg !2246
  br label %45, !dbg !2246

; <label>:45:                                     ; preds = %44, %33
  %46 = load i8, i8* %1, align 1, !dbg !2247
  ret i8 %46, !dbg !2247
}

declare void @Warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @VixAsyncOp_GetDebugStrForOpCode(i32) #0 !dbg !2248 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.VixCommandInfo*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2251, metadata !885), !dbg !2252
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2253, metadata !885), !dbg !2254
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8, !dbg !2254
  call void @llvm.dbg.declare(metadata %struct.VixCommandInfo** %4, metadata !2255, metadata !885), !dbg !2257
  %5 = load i32, i32* %2, align 4, !dbg !2258
  %6 = call %struct.VixCommandInfo* @VixGetCommandInfoForOpCode(i32 %5), !dbg !2259
  store %struct.VixCommandInfo* %6, %struct.VixCommandInfo** %4, align 8, !dbg !2260
  %7 = load %struct.VixCommandInfo*, %struct.VixCommandInfo** %4, align 8, !dbg !2261
  %8 = icmp ne %struct.VixCommandInfo* null, %7, !dbg !2263
  br i1 %8, label %9, label %13, !dbg !2264

; <label>:9:                                      ; preds = %1
  %10 = load %struct.VixCommandInfo*, %struct.VixCommandInfo** %4, align 8, !dbg !2265
  %11 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %10, i32 0, i32 1, !dbg !2267
  %12 = load i8*, i8** %11, align 8, !dbg !2267
  store i8* %12, i8** %3, align 8, !dbg !2268
  br label %13, !dbg !2269

; <label>:13:                                     ; preds = %9, %1
  %14 = load i8*, i8** %3, align 8, !dbg !2270
  ret i8* %14, !dbg !2271
}

; Function Attrs: nounwind uwtable
define internal %struct.VixCommandInfo* @VixGetCommandInfoForOpCode(i32) #0 !dbg !2272 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.VixCommandInfo*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2275, metadata !885), !dbg !2276
  call void @llvm.dbg.declare(metadata %struct.VixCommandInfo** %3, metadata !2277, metadata !885), !dbg !2278
  store %struct.VixCommandInfo* null, %struct.VixCommandInfo** %3, align 8, !dbg !2278
  %4 = load i32, i32* %2, align 4, !dbg !2279
  %5 = icmp sge i32 %4, -1, !dbg !2281
  br i1 %5, label %6, label %23, !dbg !2282

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !2283
  %8 = icmp slt i32 %7, 208, !dbg !2284
  br i1 %8, label %9, label %23, !dbg !2285

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4, !dbg !2287
  %11 = add nsw i32 %10, 1, !dbg !2290
  %12 = sext i32 %11 to i64, !dbg !2291
  %13 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %12, !dbg !2291
  %14 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %13, i32 0, i32 3, !dbg !2292
  %15 = load i8, i8* %14, align 4, !dbg !2292
  %16 = icmp ne i8 %15, 0, !dbg !2291
  br i1 %16, label %17, label %22, !dbg !2293

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %2, align 4, !dbg !2294
  %19 = add nsw i32 %18, 1, !dbg !2296
  %20 = sext i32 %19 to i64, !dbg !2297
  %21 = getelementptr inbounds [209 x %struct.VixCommandInfo], [209 x %struct.VixCommandInfo]* @vixCommandInfoTable, i64 0, i64 %20, !dbg !2297
  store %struct.VixCommandInfo* %21, %struct.VixCommandInfo** %3, align 8, !dbg !2298
  br label %22, !dbg !2299

; <label>:22:                                     ; preds = %17, %9
  br label %23, !dbg !2300

; <label>:23:                                     ; preds = %22, %6, %1
  %24 = load %struct.VixCommandInfo*, %struct.VixCommandInfo** %3, align 8, !dbg !2301
  ret %struct.VixCommandInfo* %24, !dbg !2302
}

; Function Attrs: nounwind uwtable
define i32 @VixMsg_GetCommandSecurityCategory(i32) #0 !dbg !2303 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.VixCommandInfo*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2306, metadata !885), !dbg !2307
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2308, metadata !885), !dbg !2309
  store i32 0, i32* %3, align 4, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.VixCommandInfo** %4, metadata !2310, metadata !885), !dbg !2311
  %5 = load i32, i32* %2, align 4, !dbg !2312
  %6 = call %struct.VixCommandInfo* @VixGetCommandInfoForOpCode(i32 %5), !dbg !2313
  store %struct.VixCommandInfo* %6, %struct.VixCommandInfo** %4, align 8, !dbg !2314
  %7 = load %struct.VixCommandInfo*, %struct.VixCommandInfo** %4, align 8, !dbg !2315
  %8 = icmp ne %struct.VixCommandInfo* null, %7, !dbg !2317
  br i1 %8, label %9, label %13, !dbg !2318

; <label>:9:                                      ; preds = %1
  %10 = load %struct.VixCommandInfo*, %struct.VixCommandInfo** %4, align 8, !dbg !2319
  %11 = getelementptr inbounds %struct.VixCommandInfo, %struct.VixCommandInfo* %10, i32 0, i32 2, !dbg !2321
  %12 = load i32, i32* %11, align 8, !dbg !2321
  store i32 %12, i32* %3, align 4, !dbg !2322
  br label %13, !dbg !2323

; <label>:13:                                     ; preds = %9, %1
  %14 = load i32, i32* %3, align 4, !dbg !2324
  ret i32 %14, !dbg !2325
}

; Function Attrs: nounwind uwtable
define i64 @VixMsg_AllocGenericRequestMsg(i32, i64, i32, i8*, i32, %struct.VixPropertyListImpl*, %struct.VixCommandGenericRequest**) #0 !dbg !2326 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.VixPropertyListImpl*, align 8
  %14 = alloca %struct.VixCommandGenericRequest**, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.VixCommandGenericRequest*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2362, metadata !885), !dbg !2363
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2364, metadata !885), !dbg !2365
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2366, metadata !885), !dbg !2367
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2368, metadata !885), !dbg !2369
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2370, metadata !885), !dbg !2371
  store %struct.VixPropertyListImpl* %5, %struct.VixPropertyListImpl** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %13, metadata !2372, metadata !885), !dbg !2373
  store %struct.VixCommandGenericRequest** %6, %struct.VixCommandGenericRequest*** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandGenericRequest*** %14, metadata !2374, metadata !885), !dbg !2375
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2376, metadata !885), !dbg !2377
  call void @llvm.dbg.declare(metadata %struct.VixCommandGenericRequest** %16, metadata !2378, metadata !885), !dbg !2379
  store %struct.VixCommandGenericRequest* null, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2379
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2380, metadata !885), !dbg !2381
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2382, metadata !885), !dbg !2383
  store i8* null, i8** %18, align 8, !dbg !2383
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2384, metadata !885), !dbg !2385
  store i64 0, i64* %19, align 8, !dbg !2385
  %21 = load %struct.VixCommandGenericRequest**, %struct.VixCommandGenericRequest*** %14, align 8, !dbg !2386
  %22 = icmp eq %struct.VixCommandGenericRequest** null, %21, !dbg !2388
  br i1 %22, label %23, label %24, !dbg !2389

; <label>:23:                                     ; preds = %7
  store i64 1, i64* %15, align 8, !dbg !2390
  br label %68, !dbg !2392

; <label>:24:                                     ; preds = %7
  %25 = load %struct.VixCommandGenericRequest**, %struct.VixCommandGenericRequest*** %14, align 8, !dbg !2393
  store %struct.VixCommandGenericRequest* null, %struct.VixCommandGenericRequest** %25, align 8, !dbg !2394
  %26 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %13, align 8, !dbg !2395
  %27 = icmp ne %struct.VixPropertyListImpl* null, %26, !dbg !2397
  br i1 %27, label %28, label %35, !dbg !2398

; <label>:28:                                     ; preds = %24
  %29 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %13, align 8, !dbg !2399
  %30 = call i64 @VixPropertyList_Serialize(%struct.VixPropertyListImpl* %29, i8 signext 0, i64* %19, i8** %18), !dbg !2401
  store i64 %30, i64* %15, align 8, !dbg !2402
  %31 = load i64, i64* %15, align 8, !dbg !2403
  %32 = icmp ne i64 0, %31, !dbg !2405
  br i1 %32, label %33, label %34, !dbg !2406

; <label>:33:                                     ; preds = %28
  br label %68, !dbg !2407

; <label>:34:                                     ; preds = %28
  br label %35, !dbg !2409

; <label>:35:                                     ; preds = %34, %24
  %36 = load i64, i64* %19, align 8, !dbg !2410
  %37 = add i64 59, %36, !dbg !2411
  store i64 %37, i64* %17, align 8, !dbg !2412
  %38 = load i64, i64* %17, align 8, !dbg !2413
  %39 = load i32, i32* %8, align 4, !dbg !2414
  %40 = load i64, i64* %9, align 8, !dbg !2415
  %41 = load i32, i32* %10, align 4, !dbg !2416
  %42 = load i8*, i8** %11, align 8, !dbg !2417
  %43 = call %struct.VixCommandRequestHeader* @VixMsg_AllocRequestMsg(i64 %38, i32 %39, i64 %40, i32 %41, i8* %42), !dbg !2418
  %44 = bitcast %struct.VixCommandRequestHeader* %43 to %struct.VixCommandGenericRequest*, !dbg !2419
  store %struct.VixCommandGenericRequest* %44, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2420
  %45 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2421
  %46 = icmp eq %struct.VixCommandGenericRequest* null, %45, !dbg !2423
  br i1 %46, label %47, label %48, !dbg !2424

; <label>:47:                                     ; preds = %35
  store i64 1, i64* %15, align 8, !dbg !2425
  br label %68, !dbg !2427

; <label>:48:                                     ; preds = %35
  %49 = load i32, i32* %12, align 4, !dbg !2428
  %50 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2429
  %51 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %50, i32 0, i32 1, !dbg !2430
  store i32 %49, i32* %51, align 1, !dbg !2431
  %52 = load i64, i64* %19, align 8, !dbg !2432
  %53 = trunc i64 %52 to i32, !dbg !2432
  %54 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2433
  %55 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %54, i32 0, i32 2, !dbg !2434
  store i32 %53, i32* %55, align 1, !dbg !2435
  %56 = load i8*, i8** %18, align 8, !dbg !2436
  %57 = icmp ne i8* null, %56, !dbg !2438
  br i1 %57, label %58, label %65, !dbg !2439

; <label>:58:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2440, metadata !885), !dbg !2442
  %59 = load %struct.VixCommandGenericRequest**, %struct.VixCommandGenericRequest*** %14, align 8, !dbg !2443
  %60 = bitcast %struct.VixCommandGenericRequest** %59 to i8*, !dbg !2444
  %61 = getelementptr inbounds i8, i8* %60, i64 8, !dbg !2445
  store i8* %61, i8** %20, align 8, !dbg !2442
  %62 = load i8*, i8** %20, align 8, !dbg !2446
  %63 = load i8*, i8** %18, align 8, !dbg !2447
  %64 = load i64, i64* %19, align 8, !dbg !2448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false), !dbg !2449
  br label %65, !dbg !2450

; <label>:65:                                     ; preds = %58, %48
  %66 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %16, align 8, !dbg !2451
  %67 = load %struct.VixCommandGenericRequest**, %struct.VixCommandGenericRequest*** %14, align 8, !dbg !2452
  store %struct.VixCommandGenericRequest* %66, %struct.VixCommandGenericRequest** %67, align 8, !dbg !2453
  store i64 0, i64* %15, align 8, !dbg !2454
  br label %68, !dbg !2455

; <label>:68:                                     ; preds = %65, %47, %33, %23
  %69 = load i8*, i8** %18, align 8, !dbg !2456
  call void @free(i8* %69) #10, !dbg !2457
  %70 = load i64, i64* %15, align 8, !dbg !2458
  ret i64 %70, !dbg !2459
}

declare i64 @VixPropertyList_Serialize(%struct.VixPropertyListImpl*, i8 signext, i64*, i8**) #2

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ParseGenericRequestMsg(%struct.VixCommandGenericRequest*, i32*, %struct.VixPropertyListImpl*) #0 !dbg !2460 {
  %4 = alloca %struct.VixCommandGenericRequest*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.VixPropertyListImpl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.VixCommandGenericRequest* %0, %struct.VixCommandGenericRequest** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandGenericRequest** %4, metadata !2466, metadata !885), !dbg !2467
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2468, metadata !885), !dbg !2469
  store %struct.VixPropertyListImpl* %2, %struct.VixPropertyListImpl** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %6, metadata !2470, metadata !885), !dbg !2471
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2472, metadata !885), !dbg !2473
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2474, metadata !885), !dbg !2475
  %10 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2476
  %11 = icmp eq %struct.VixCommandGenericRequest* null, %10, !dbg !2478
  br i1 %11, label %18, label %12, !dbg !2479

; <label>:12:                                     ; preds = %3
  %13 = load i32*, i32** %5, align 8, !dbg !2480
  %14 = icmp eq i32* null, %13, !dbg !2482
  br i1 %14, label %18, label %15, !dbg !2483

; <label>:15:                                     ; preds = %12
  %16 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !2484
  %17 = icmp eq %struct.VixPropertyListImpl* null, %16, !dbg !2486
  br i1 %17, label %18, label %19, !dbg !2487

; <label>:18:                                     ; preds = %15, %12, %3
  store i64 1, i64* %7, align 8, !dbg !2488
  br label %90, !dbg !2490

; <label>:19:                                     ; preds = %15
  %20 = load i32*, i32** %5, align 8, !dbg !2491
  store i32 0, i32* %20, align 4, !dbg !2492
  %21 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !2493
  call void @VixPropertyList_Initialize(%struct.VixPropertyListImpl* %21), !dbg !2494
  %22 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2495
  %23 = bitcast %struct.VixCommandGenericRequest* %22 to i8*, !dbg !2495
  %24 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2496
  %25 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %24, i32 0, i32 0, !dbg !2497
  %26 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %25, i32 0, i32 0, !dbg !2498
  %27 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %26, i32 0, i32 2, !dbg !2499
  %28 = load i32, i32* %27, align 1, !dbg !2499
  %29 = zext i32 %28 to i64, !dbg !2496
  %30 = call i64 @VixMsg_ValidateRequestMsg(i8* %23, i64 %29), !dbg !2500
  store i64 %30, i64* %7, align 8, !dbg !2501
  %31 = load i64, i64* %7, align 8, !dbg !2502
  %32 = icmp ne i64 0, %31, !dbg !2504
  br i1 %32, label %33, label %34, !dbg !2505

; <label>:33:                                     ; preds = %19
  br label %90, !dbg !2506

; <label>:34:                                     ; preds = %19
  %35 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2508
  %36 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %35, i32 0, i32 0, !dbg !2510
  %37 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %36, i32 0, i32 0, !dbg !2511
  %38 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %37, i32 0, i32 2, !dbg !2512
  %39 = load i32, i32* %38, align 1, !dbg !2512
  %40 = zext i32 %39 to i64, !dbg !2508
  %41 = icmp ult i64 %40, 59, !dbg !2513
  br i1 %41, label %42, label %43, !dbg !2514

; <label>:42:                                     ; preds = %34
  store i64 10001, i64* %7, align 8, !dbg !2515
  br label %90, !dbg !2517

; <label>:43:                                     ; preds = %34
  %44 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2518
  %45 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %44, i32 0, i32 0, !dbg !2519
  %46 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %45, i32 0, i32 0, !dbg !2520
  %47 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %46, i32 0, i32 3, !dbg !2521
  %48 = load i32, i32* %47, align 1, !dbg !2521
  %49 = zext i32 %48 to i64, !dbg !2522
  %50 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2523
  %51 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %50, i32 0, i32 0, !dbg !2524
  %52 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %51, i32 0, i32 0, !dbg !2525
  %53 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %52, i32 0, i32 4, !dbg !2526
  %54 = load i32, i32* %53, align 1, !dbg !2526
  %55 = zext i32 %54 to i64, !dbg !2523
  %56 = add i64 %49, %55, !dbg !2527
  store i64 %56, i64* %8, align 8, !dbg !2528
  %57 = load i64, i64* %8, align 8, !dbg !2529
  %58 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2531
  %59 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %58, i32 0, i32 2, !dbg !2532
  %60 = load i32, i32* %59, align 1, !dbg !2532
  %61 = zext i32 %60 to i64, !dbg !2531
  %62 = add i64 59, %61, !dbg !2533
  %63 = icmp ult i64 %57, %62, !dbg !2534
  br i1 %63, label %64, label %65, !dbg !2535

; <label>:64:                                     ; preds = %43
  store i64 10001, i64* %7, align 8, !dbg !2536
  br label %90, !dbg !2538

; <label>:65:                                     ; preds = %43
  %66 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2539
  %67 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %66, i32 0, i32 2, !dbg !2541
  %68 = load i32, i32* %67, align 1, !dbg !2541
  %69 = icmp ugt i32 %68, 0, !dbg !2542
  br i1 %69, label %70, label %85, !dbg !2543

; <label>:70:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2544, metadata !885), !dbg !2546
  %71 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2547
  %72 = bitcast %struct.VixCommandGenericRequest* %71 to i8*, !dbg !2548
  %73 = getelementptr inbounds i8, i8* %72, i64 59, !dbg !2549
  store i8* %73, i8** %9, align 8, !dbg !2546
  %74 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !2550
  %75 = load i8*, i8** %9, align 8, !dbg !2551
  %76 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2552
  %77 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %76, i32 0, i32 2, !dbg !2553
  %78 = load i32, i32* %77, align 1, !dbg !2553
  %79 = zext i32 %78 to i64, !dbg !2552
  %80 = call i64 @VixPropertyList_Deserialize(%struct.VixPropertyListImpl* %74, i8* %75, i64 %79, i32 0), !dbg !2554
  store i64 %80, i64* %7, align 8, !dbg !2555
  %81 = load i64, i64* %7, align 8, !dbg !2556
  %82 = icmp ne i64 0, %81, !dbg !2558
  br i1 %82, label %83, label %84, !dbg !2559

; <label>:83:                                     ; preds = %70
  br label %90, !dbg !2560

; <label>:84:                                     ; preds = %70
  br label %85, !dbg !2562

; <label>:85:                                     ; preds = %84, %65
  %86 = load %struct.VixCommandGenericRequest*, %struct.VixCommandGenericRequest** %4, align 8, !dbg !2563
  %87 = getelementptr inbounds %struct.VixCommandGenericRequest, %struct.VixCommandGenericRequest* %86, i32 0, i32 1, !dbg !2564
  %88 = load i32, i32* %87, align 1, !dbg !2564
  %89 = load i32*, i32** %5, align 8, !dbg !2565
  store i32 %88, i32* %89, align 4, !dbg !2566
  store i64 0, i64* %7, align 8, !dbg !2567
  br label %90, !dbg !2568

; <label>:90:                                     ; preds = %85, %83, %64, %42, %33, %18
  %91 = load i64, i64* %7, align 8, !dbg !2569
  ret i64 %91, !dbg !2570
}

declare void @VixPropertyList_Initialize(%struct.VixPropertyListImpl*) #2

declare i64 @VixPropertyList_Deserialize(%struct.VixPropertyListImpl*, i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i64 @VixMsg_ParseSimpleResponseWithString(%struct.VixCommandResponseHeader*, i8**) #0 !dbg !2571 {
  %3 = alloca %struct.VixCommandResponseHeader*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.VMAutomationMsgParser, align 8
  store %struct.VixCommandResponseHeader* %0, %struct.VixCommandResponseHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandResponseHeader** %3, metadata !2575, metadata !885), !dbg !2576
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2577, metadata !885), !dbg !2578
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2579, metadata !885), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser* %6, metadata !2581, metadata !885), !dbg !2587
  %7 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %3, align 8, !dbg !2588
  %8 = call i64 @__VMAutomationMsgParserInitResponse(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__FUNCTION__.VixMsg_ParseSimpleResponseWithString, i32 0, i32 0), i32 1781, %struct.VMAutomationMsgParser* %6, %struct.VixCommandResponseHeader* %7, i64 51), !dbg !2589
  store i64 %8, i64* %5, align 8, !dbg !2590
  %9 = load i64, i64* %5, align 8, !dbg !2591
  %10 = icmp ne i64 0, %9, !dbg !2593
  br i1 %10, label %11, label %12, !dbg !2594

; <label>:11:                                     ; preds = %2
  br label %20, !dbg !2595

; <label>:12:                                     ; preds = %2
  %13 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %3, align 8, !dbg !2597
  %14 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %13, i32 0, i32 0, !dbg !2598
  %15 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %14, i32 0, i32 4, !dbg !2599
  %16 = load i32, i32* %15, align 1, !dbg !2599
  %17 = zext i32 %16 to i64, !dbg !2597
  %18 = load i8**, i8*** %4, align 8, !dbg !2600
  %19 = call i64 @__VMAutomationMsgParserGetOptionalString(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__FUNCTION__.VixMsg_ParseSimpleResponseWithString, i32 0, i32 0), i32 1788, %struct.VMAutomationMsgParser* %6, i64 %17, i8** %18), !dbg !2601
  store i64 %19, i64* %5, align 8, !dbg !2602
  br label %20, !dbg !2603

; <label>:20:                                     ; preds = %12, %11
  %21 = load i64, i64* %5, align 8, !dbg !2604
  ret i64 %21, !dbg !2605
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserInitResponse(i8*, i32, %struct.VMAutomationMsgParser*, %struct.VixCommandResponseHeader*, i64) #0 !dbg !2606 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.VMAutomationMsgParser*, align 8
  %9 = alloca %struct.VixCommandResponseHeader*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2610, metadata !885), !dbg !2611
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2612, metadata !885), !dbg !2613
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %8, metadata !2614, metadata !885), !dbg !2615
  store %struct.VixCommandResponseHeader* %3, %struct.VixCommandResponseHeader** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandResponseHeader** %9, metadata !2616, metadata !885), !dbg !2617
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2618, metadata !885), !dbg !2619
  %11 = load i8*, i8** %6, align 8, !dbg !2620
  %12 = load i32, i32* %7, align 4, !dbg !2621
  %13 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %8, align 8, !dbg !2622
  %14 = load %struct.VixCommandResponseHeader*, %struct.VixCommandResponseHeader** %9, align 8, !dbg !2623
  %15 = getelementptr inbounds %struct.VixCommandResponseHeader, %struct.VixCommandResponseHeader* %14, i32 0, i32 0, !dbg !2624
  %16 = load i64, i64* %10, align 8, !dbg !2625
  %17 = call i64 @VMAutomationMsgParserInit(i8* %11, i32 %12, %struct.VMAutomationMsgParser* %13, %struct.VixMsgHeader* %15, i64 51, i64 %16, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)), !dbg !2626
  ret i64 %17, !dbg !2627
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserGetOptionalString(i8*, i32, %struct.VMAutomationMsgParser*, i64, i8**) #0 !dbg !2628 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.VMAutomationMsgParser*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2631, metadata !885), !dbg !2632
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2633, metadata !885), !dbg !2634
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %9, metadata !2635, metadata !885), !dbg !2636
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2637, metadata !885), !dbg !2638
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2639, metadata !885), !dbg !2640
  %14 = load i64, i64* %10, align 8, !dbg !2641
  %15 = icmp ne i64 %14, 0, !dbg !2641
  br i1 %15, label %16, label %39, !dbg !2643

; <label>:16:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2644, metadata !885), !dbg !2646
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2647, metadata !885), !dbg !2648
  %17 = load i8*, i8** %7, align 8, !dbg !2649
  %18 = load i32, i32* %8, align 4, !dbg !2650
  %19 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !2651
  %20 = load i64, i64* %10, align 8, !dbg !2652
  %21 = call i64 @__VMAutomationMsgParserGetData(i8* %17, i32 %18, %struct.VMAutomationMsgParser* %19, i64 %20, i8** %13), !dbg !2653
  store i64 %21, i64* %12, align 8, !dbg !2654
  %22 = load i64, i64* %12, align 8, !dbg !2655
  %23 = icmp ne i64 0, %22, !dbg !2657
  br i1 %23, label %24, label %26, !dbg !2658

; <label>:24:                                     ; preds = %16
  %25 = load i64, i64* %12, align 8, !dbg !2659
  store i64 %25, i64* %6, align 8, !dbg !2661
  br label %42, !dbg !2661

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %7, align 8, !dbg !2662
  %28 = load i32, i32* %8, align 4, !dbg !2663
  %29 = load i8*, i8** %13, align 8, !dbg !2664
  %30 = load i64, i64* %10, align 8, !dbg !2665
  %31 = call i64 @__VMAutomationValidateString(i8* %27, i32 %28, i8* %29, i64 %30), !dbg !2666
  store i64 %31, i64* %12, align 8, !dbg !2667
  %32 = load i64, i64* %12, align 8, !dbg !2668
  %33 = icmp ne i64 0, %32, !dbg !2670
  br i1 %33, label %34, label %36, !dbg !2671

; <label>:34:                                     ; preds = %26
  %35 = load i64, i64* %12, align 8, !dbg !2672
  store i64 %35, i64* %6, align 8, !dbg !2674
  br label %42, !dbg !2674

; <label>:36:                                     ; preds = %26
  %37 = load i8*, i8** %13, align 8, !dbg !2675
  %38 = load i8**, i8*** %11, align 8, !dbg !2676
  store i8* %37, i8** %38, align 8, !dbg !2677
  br label %41, !dbg !2678

; <label>:39:                                     ; preds = %5
  %40 = load i8**, i8*** %11, align 8, !dbg !2679
  store i8* null, i8** %40, align 8, !dbg !2681
  br label %41

; <label>:41:                                     ; preds = %39, %36
  store i64 0, i64* %6, align 8, !dbg !2682
  br label %42, !dbg !2682

; <label>:42:                                     ; preds = %41, %34, %24
  %43 = load i64, i64* %6, align 8, !dbg !2683
  ret i64 %43, !dbg !2683
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: nounwind uwtable
define i8* @VixMsg_ReallocClientData(i8*, i64) #0 !dbg !2684 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2687, metadata !885), !dbg !2688
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2689, metadata !885), !dbg !2690
  %5 = load i8*, i8** %3, align 8, !dbg !2691
  %6 = load i64, i64* %4, align 8, !dbg !2692
  %7 = call i8* @realloc(i8* %5, i64 %6) #10, !dbg !2693
  ret i8* %7, !dbg !2694
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #6

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #6

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserInitRequest(i8*, i32, %struct.VMAutomationMsgParser*, %struct.VixCommandRequestHeader*, i64) #0 !dbg !2695 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.VMAutomationMsgParser*, align 8
  %9 = alloca %struct.VixCommandRequestHeader*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2698, metadata !885), !dbg !2699
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2700, metadata !885), !dbg !2701
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %8, metadata !2702, metadata !885), !dbg !2703
  store %struct.VixCommandRequestHeader* %3, %struct.VixCommandRequestHeader** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %9, metadata !2704, metadata !885), !dbg !2705
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2706, metadata !885), !dbg !2707
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2708, metadata !885), !dbg !2709
  store i64 0, i64* %11, align 8, !dbg !2709
  %12 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %9, align 8, !dbg !2710
  %13 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %12, i32 0, i32 2, !dbg !2712
  %14 = load i32, i32* %13, align 1, !dbg !2712
  %15 = and i32 16, %14, !dbg !2713
  %16 = icmp ne i32 %15, 0, !dbg !2713
  br i1 %16, label %17, label %18, !dbg !2714

; <label>:17:                                     ; preds = %5
  store i64 44, i64* %11, align 8, !dbg !2715
  br label %19, !dbg !2717

; <label>:18:                                     ; preds = %5
  store i64 0, i64* %11, align 8, !dbg !2718
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i8*, i8** %6, align 8, !dbg !2720
  %21 = load i32, i32* %7, align 4, !dbg !2721
  %22 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %8, align 8, !dbg !2722
  %23 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %9, align 8, !dbg !2723
  %24 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %23, i32 0, i32 0, !dbg !2724
  %25 = load i64, i64* %10, align 8, !dbg !2725
  %26 = load i64, i64* %11, align 8, !dbg !2726
  %27 = call i64 @VMAutomationMsgParserInit(i8* %20, i32 %21, %struct.VMAutomationMsgParser* %22, %struct.VixMsgHeader* %24, i64 51, i64 %25, i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !2727
  ret i64 %27, !dbg !2728
}

; Function Attrs: nounwind uwtable
define internal i64 @VMAutomationMsgParserInit(i8*, i32, %struct.VMAutomationMsgParser*, %struct.VixMsgHeader*, i64, i64, i64, i8*) #0 !dbg !2729 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.VMAutomationMsgParser*, align 8
  %13 = alloca %struct.VixMsgHeader*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2732, metadata !885), !dbg !2733
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2734, metadata !885), !dbg !2735
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %12, metadata !2736, metadata !885), !dbg !2737
  store %struct.VixMsgHeader* %3, %struct.VixMsgHeader** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.VixMsgHeader** %13, metadata !2738, metadata !885), !dbg !2739
  store i64 %4, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2740, metadata !885), !dbg !2741
  store i64 %5, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2742, metadata !885), !dbg !2743
  store i64 %6, i64* %16, align 8
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2744, metadata !885), !dbg !2745
  store i8* %7, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2746, metadata !885), !dbg !2747
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2748, metadata !885), !dbg !2749
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2750, metadata !885), !dbg !2751
  %21 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2752
  %22 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %21, i32 0, i32 3, !dbg !2753
  %23 = load i32, i32* %22, align 1, !dbg !2753
  %24 = zext i32 %23 to i64, !dbg !2754
  %25 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2755
  %26 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %25, i32 0, i32 4, !dbg !2756
  %27 = load i32, i32* %26, align 1, !dbg !2756
  %28 = zext i32 %27 to i64, !dbg !2757
  %29 = add nsw i64 %24, %28, !dbg !2758
  %30 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2759
  %31 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %30, i32 0, i32 5, !dbg !2760
  %32 = load i32, i32* %31, align 1, !dbg !2760
  %33 = zext i32 %32 to i64, !dbg !2761
  %34 = add nsw i64 %29, %33, !dbg !2762
  %35 = load i64, i64* %16, align 8, !dbg !2763
  %36 = add nsw i64 %34, %35, !dbg !2764
  store i64 %36, i64* %19, align 8, !dbg !2751
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2765, metadata !885), !dbg !2766
  %37 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2767
  %38 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %37, i32 0, i32 3, !dbg !2768
  %39 = load i32, i32* %38, align 1, !dbg !2768
  %40 = zext i32 %39 to i64, !dbg !2769
  %41 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2770
  %42 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %41, i32 0, i32 4, !dbg !2771
  %43 = load i32, i32* %42, align 1, !dbg !2771
  %44 = zext i32 %43 to i64, !dbg !2772
  %45 = add nsw i64 %40, %44, !dbg !2773
  %46 = load i64, i64* %15, align 8, !dbg !2774
  %47 = sub nsw i64 %45, %46, !dbg !2775
  store i64 %47, i64* %20, align 8, !dbg !2766
  %48 = load i64, i64* %19, align 8, !dbg !2776
  %49 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2778
  %50 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %49, i32 0, i32 2, !dbg !2779
  %51 = load i32, i32* %50, align 1, !dbg !2779
  %52 = zext i32 %51 to i64, !dbg !2780
  %53 = icmp ne i64 %48, %52, !dbg !2781
  br i1 %53, label %54, label %55, !dbg !2782

; <label>:54:                                     ; preds = %8
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 2131), !dbg !2783
  store i64 10000, i64* %9, align 8, !dbg !2785
  br label %100, !dbg !2785

; <label>:55:                                     ; preds = %8
  %56 = load i64, i64* %20, align 8, !dbg !2786
  %57 = icmp slt i64 %56, 0, !dbg !2788
  br i1 %57, label %58, label %60, !dbg !2789

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %17, align 8, !dbg !2790
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 2136, i8* %59), !dbg !2792
  store i64 10000, i64* %9, align 8, !dbg !2793
  br label %100, !dbg !2793

; <label>:60:                                     ; preds = %55
  %61 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2794
  %62 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %61, i32 0, i32 3, !dbg !2796
  %63 = load i32, i32* %62, align 1, !dbg !2796
  %64 = zext i32 %63 to i64, !dbg !2794
  %65 = load i64, i64* %14, align 8, !dbg !2797
  %66 = icmp ne i64 %64, %65, !dbg !2798
  br i1 %66, label %67, label %75, !dbg !2799

; <label>:67:                                     ; preds = %60
  %68 = load i8*, i8** %10, align 8, !dbg !2800
  %69 = load i32, i32* %11, align 4, !dbg !2802
  %70 = load i8*, i8** %17, align 8, !dbg !2803
  %71 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2804
  %72 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %71, i32 0, i32 3, !dbg !2805
  %73 = load i32, i32* %72, align 1, !dbg !2805
  %74 = load i64, i64* %14, align 8, !dbg !2806
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.147, i32 0, i32 0), i8* %68, i32 %69, i8* %70, i32 %73, i64 %74), !dbg !2807
  store i64 10000, i64* %9, align 8, !dbg !2808
  br label %100, !dbg !2808

; <label>:75:                                     ; preds = %60
  %76 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2809
  %77 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %76, i32 0, i32 3, !dbg !2810
  %78 = load i32, i32* %77, align 1, !dbg !2810
  %79 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2811
  %80 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %79, i32 0, i32 4, !dbg !2812
  %81 = load i32, i32* %80, align 1, !dbg !2812
  %82 = add i32 %78, %81, !dbg !2813
  store i32 %82, i32* %18, align 4, !dbg !2814
  %83 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %12, align 8, !dbg !2815
  %84 = icmp ne %struct.VMAutomationMsgParser* %83, null, !dbg !2815
  br i1 %84, label %85, label %99, !dbg !2817

; <label>:85:                                     ; preds = %75
  %86 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2818
  %87 = bitcast %struct.VixMsgHeader* %86 to i8*, !dbg !2820
  %88 = load i64, i64* %15, align 8, !dbg !2821
  %89 = getelementptr inbounds i8, i8* %87, i64 %88, !dbg !2822
  %90 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %12, align 8, !dbg !2823
  %91 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %90, i32 0, i32 0, !dbg !2824
  store i8* %89, i8** %91, align 8, !dbg !2825
  %92 = load %struct.VixMsgHeader*, %struct.VixMsgHeader** %13, align 8, !dbg !2826
  %93 = bitcast %struct.VixMsgHeader* %92 to i8*, !dbg !2827
  %94 = load i32, i32* %18, align 4, !dbg !2828
  %95 = zext i32 %94 to i64, !dbg !2829
  %96 = getelementptr inbounds i8, i8* %93, i64 %95, !dbg !2829
  %97 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %12, align 8, !dbg !2830
  %98 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %97, i32 0, i32 1, !dbg !2831
  store i8* %96, i8** %98, align 8, !dbg !2832
  br label %99, !dbg !2833

; <label>:99:                                     ; preds = %85, %75
  store i64 0, i64* %9, align 8, !dbg !2834
  br label %100, !dbg !2834

; <label>:100:                                    ; preds = %99, %67, %58, %54
  %101 = load i64, i64* %9, align 8, !dbg !2835
  ret i64 %101, !dbg !2835
}

; Function Attrs: nounwind uwtable
define i64 @VMAutomation_VerifyRequestLength(%struct.VixCommandRequestHeader*, i64) #0 !dbg !2836 {
  %3 = alloca %struct.VixCommandRequestHeader*, align 8
  %4 = alloca i64, align 8
  store %struct.VixCommandRequestHeader* %0, %struct.VixCommandRequestHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %3, metadata !2839, metadata !885), !dbg !2840
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2841, metadata !885), !dbg !2842
  %5 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %3, align 8, !dbg !2843
  %6 = load i64, i64* %4, align 8, !dbg !2844
  %7 = call i64 @__VMAutomationMsgParserInitRequest(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__FUNCTION__.VMAutomation_VerifyRequestLength, i32 0, i32 0), i32 2188, %struct.VMAutomationMsgParser* null, %struct.VixCommandRequestHeader* %5, i64 %6), !dbg !2845
  ret i64 %7, !dbg !2846
}

; Function Attrs: nounwind uwtable
define i8* @VMAutomationMsgParserGetRemainingData(%struct.VMAutomationMsgParser*, i64*) #0 !dbg !2847 {
  %3 = alloca %struct.VMAutomationMsgParser*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  store %struct.VMAutomationMsgParser* %0, %struct.VMAutomationMsgParser** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %3, metadata !2850, metadata !885), !dbg !2851
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !2852, metadata !885), !dbg !2853
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2854, metadata !885), !dbg !2855
  %6 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %3, align 8, !dbg !2856
  %7 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %6, i32 0, i32 1, !dbg !2857
  %8 = load i8*, i8** %7, align 8, !dbg !2857
  %9 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %3, align 8, !dbg !2858
  %10 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %9, i32 0, i32 0, !dbg !2859
  %11 = load i8*, i8** %10, align 8, !dbg !2859
  %12 = ptrtoint i8* %8 to i64, !dbg !2860
  %13 = ptrtoint i8* %11 to i64, !dbg !2860
  %14 = sub i64 %12, %13, !dbg !2860
  %15 = load i64*, i64** %4, align 8, !dbg !2861
  store i64 %14, i64* %15, align 8, !dbg !2862
  %16 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %3, align 8, !dbg !2863
  %17 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %16, i32 0, i32 0, !dbg !2864
  %18 = load i8*, i8** %17, align 8, !dbg !2864
  store i8* %18, i8** %5, align 8, !dbg !2865
  %19 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %3, align 8, !dbg !2866
  %20 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %19, i32 0, i32 1, !dbg !2867
  %21 = load i8*, i8** %20, align 8, !dbg !2867
  %22 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %3, align 8, !dbg !2868
  %23 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %22, i32 0, i32 0, !dbg !2869
  store i8* %21, i8** %23, align 8, !dbg !2870
  %24 = load i8*, i8** %5, align 8, !dbg !2871
  ret i8* %24, !dbg !2872
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserGetData(i8*, i32, %struct.VMAutomationMsgParser*, i64, i8**) #0 !dbg !2873 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.VMAutomationMsgParser*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2874, metadata !885), !dbg !2875
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2876, metadata !885), !dbg !2877
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %9, metadata !2878, metadata !885), !dbg !2879
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2880, metadata !885), !dbg !2881
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2882, metadata !885), !dbg !2883
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2884, metadata !885), !dbg !2885
  %13 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !2886
  %14 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %13, i32 0, i32 1, !dbg !2887
  %15 = load i8*, i8** %14, align 8, !dbg !2887
  %16 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !2888
  %17 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %16, i32 0, i32 0, !dbg !2889
  %18 = load i8*, i8** %17, align 8, !dbg !2889
  %19 = ptrtoint i8* %15 to i64, !dbg !2890
  %20 = ptrtoint i8* %18 to i64, !dbg !2890
  %21 = sub i64 %19, %20, !dbg !2890
  store i64 %21, i64* %12, align 8, !dbg !2891
  %22 = load i64, i64* %12, align 8, !dbg !2892
  %23 = load i64, i64* %10, align 8, !dbg !2894
  %24 = icmp ult i64 %22, %23, !dbg !2895
  br i1 %24, label %25, label %30, !dbg !2896

; <label>:25:                                     ; preds = %5
  %26 = load i8*, i8** %7, align 8, !dbg !2897
  %27 = load i32, i32* %8, align 4, !dbg !2899
  %28 = load i64, i64* %12, align 8, !dbg !2900
  %29 = load i64, i64* %10, align 8, !dbg !2901
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0), i8* %26, i32 %27, i64 %28, i64 %29), !dbg !2902
  store i64 10001, i64* %6, align 8, !dbg !2903
  br label %44, !dbg !2903

; <label>:30:                                     ; preds = %5
  %31 = load i8**, i8*** %11, align 8, !dbg !2904
  %32 = icmp ne i8** %31, null, !dbg !2904
  br i1 %32, label %33, label %38, !dbg !2906

; <label>:33:                                     ; preds = %30
  %34 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !2907
  %35 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %34, i32 0, i32 0, !dbg !2909
  %36 = load i8*, i8** %35, align 8, !dbg !2909
  %37 = load i8**, i8*** %11, align 8, !dbg !2910
  store i8* %36, i8** %37, align 8, !dbg !2911
  br label %38, !dbg !2912

; <label>:38:                                     ; preds = %33, %30
  %39 = load i64, i64* %10, align 8, !dbg !2913
  %40 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !2914
  %41 = getelementptr inbounds %struct.VMAutomationMsgParser, %struct.VMAutomationMsgParser* %40, i32 0, i32 0, !dbg !2915
  %42 = load i8*, i8** %41, align 8, !dbg !2916
  %43 = getelementptr inbounds i8, i8* %42, i64 %39, !dbg !2916
  store i8* %43, i8** %41, align 8, !dbg !2916
  store i64 0, i64* %6, align 8, !dbg !2917
  br label %44, !dbg !2917

; <label>:44:                                     ; preds = %38, %25
  %45 = load i64, i64* %6, align 8, !dbg !2918
  ret i64 %45, !dbg !2918
}

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @__VMAutomationValidateString(i8*, i32, i8*, i64) #0 !dbg !2919 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2922, metadata !885), !dbg !2923
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2924, metadata !885), !dbg !2925
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2926, metadata !885), !dbg !2927
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2928, metadata !885), !dbg !2929
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2930, metadata !885), !dbg !2931
  %11 = load i64, i64* %9, align 8, !dbg !2932
  %12 = icmp ult i64 %11, 1, !dbg !2934
  br i1 %12, label %13, label %16, !dbg !2935

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !2936
  %15 = load i32, i32* %7, align 4, !dbg !2938
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.148, i32 0, i32 0), i8* %14, i32 %15), !dbg !2939
  store i64 10001, i64* %5, align 8, !dbg !2940
  br label %44, !dbg !2940

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %8, align 8, !dbg !2941
  %18 = load i64, i64* %9, align 8, !dbg !2942
  %19 = call i64 @Str_Strlen(i8* %17, i64 %18), !dbg !2943
  store i64 %19, i64* %10, align 8, !dbg !2944
  %20 = load i64, i64* %10, align 8, !dbg !2945
  %21 = load i64, i64* %9, align 8, !dbg !2947
  %22 = icmp uge i64 %20, %21, !dbg !2948
  br i1 %22, label %23, label %26, !dbg !2949

; <label>:23:                                     ; preds = %16
  %24 = load i8*, i8** %6, align 8, !dbg !2950
  %25 = load i32, i32* %7, align 4, !dbg !2952
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.149, i32 0, i32 0), i8* %24, i32 %25), !dbg !2953
  store i64 10001, i64* %5, align 8, !dbg !2954
  br label %44, !dbg !2954

; <label>:26:                                     ; preds = %16
  %27 = load i64, i64* %10, align 8, !dbg !2955
  %28 = add i64 %27, 1, !dbg !2957
  %29 = load i64, i64* %9, align 8, !dbg !2958
  %30 = icmp ne i64 %28, %29, !dbg !2959
  br i1 %30, label %31, label %35, !dbg !2960

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %6, align 8, !dbg !2961
  %33 = load i32, i32* %7, align 4, !dbg !2963
  %34 = load i8*, i8** %8, align 8, !dbg !2964
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.150, i32 0, i32 0), i8* %32, i32 %33, i8* %34), !dbg !2965
  store i64 10001, i64* %5, align 8, !dbg !2966
  br label %44, !dbg !2966

; <label>:35:                                     ; preds = %26
  %36 = load i8*, i8** %8, align 8, !dbg !2967
  %37 = load i64, i64* %10, align 8, !dbg !2969
  %38 = call signext i8 @Unicode_IsBufferValid(i8* %36, i64 %37, i32 0), !dbg !2970
  %39 = icmp ne i8 %38, 0, !dbg !2970
  br i1 %39, label %43, label %40, !dbg !2971

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %6, align 8, !dbg !2972
  %42 = load i32, i32* %7, align 4, !dbg !2974
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.151, i32 0, i32 0), i8* %41, i32 %42), !dbg !2975
  store i64 27, i64* %5, align 8, !dbg !2976
  br label %44, !dbg !2976

; <label>:43:                                     ; preds = %35
  store i64 0, i64* %5, align 8, !dbg !2977
  br label %44, !dbg !2977

; <label>:44:                                     ; preds = %43, %40, %31, %23, %13
  %45 = load i64, i64* %5, align 8, !dbg !2978
  ret i64 %45, !dbg !2978
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserGetOptionalStrings(i8*, i32, %struct.VMAutomationMsgParser*, i32, i64, i8**) #0 !dbg !2979 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.VMAutomationMsgParser*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2982, metadata !885), !dbg !2983
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2984, metadata !885), !dbg !2985
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %10, metadata !2986, metadata !885), !dbg !2987
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2988, metadata !885), !dbg !2989
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2990, metadata !885), !dbg !2991
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !2992, metadata !885), !dbg !2993
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2994, metadata !885), !dbg !2995
  store i64 0, i64* %14, align 8, !dbg !2995
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2996, metadata !885), !dbg !2997
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2998, metadata !885), !dbg !2999
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3000, metadata !885), !dbg !3001
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3002, metadata !885), !dbg !3003
  %19 = load i32, i32* %11, align 4, !dbg !3004
  %20 = icmp eq i32 0, %19, !dbg !3006
  br i1 %20, label %21, label %23, !dbg !3007

; <label>:21:                                     ; preds = %6
  %22 = load i8**, i8*** %13, align 8, !dbg !3008
  store i8* null, i8** %22, align 8, !dbg !3010
  br label %70, !dbg !3011

; <label>:23:                                     ; preds = %6
  %24 = load i8*, i8** %8, align 8, !dbg !3012
  %25 = load i32, i32* %9, align 4, !dbg !3013
  %26 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %10, align 8, !dbg !3014
  %27 = load i64, i64* %12, align 8, !dbg !3015
  %28 = call i64 @__VMAutomationMsgParserGetData(i8* %24, i32 %25, %struct.VMAutomationMsgParser* %26, i64 %27, i8** %15), !dbg !3016
  store i64 %28, i64* %14, align 8, !dbg !3017
  %29 = load i64, i64* %14, align 8, !dbg !3018
  %30 = icmp ne i64 0, %29, !dbg !3020
  br i1 %30, label %31, label %33, !dbg !3021

; <label>:31:                                     ; preds = %23
  %32 = load i64, i64* %14, align 8, !dbg !3022
  store i64 %32, i64* %7, align 8, !dbg !3024
  br label %72, !dbg !3024

; <label>:33:                                     ; preds = %23
  %34 = load i8*, i8** %15, align 8, !dbg !3025
  store i8* %34, i8** %16, align 8, !dbg !3026
  store i32 0, i32* %17, align 4, !dbg !3027
  br label %35, !dbg !3029

; <label>:35:                                     ; preds = %58, %33
  %36 = load i32, i32* %17, align 4, !dbg !3030
  %37 = load i32, i32* %11, align 4, !dbg !3033
  %38 = icmp ult i32 %36, %37, !dbg !3034
  br i1 %38, label %39, label %61, !dbg !3035

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %8, align 8, !dbg !3036
  %41 = load i32, i32* %9, align 4, !dbg !3038
  %42 = load i8*, i8** %15, align 8, !dbg !3039
  %43 = load i64, i64* %12, align 8, !dbg !3040
  %44 = call i64 @__VMAutomationValidateStringInBuffer(i8* %40, i32 %41, i8* %42, i64 %43, i64* %18), !dbg !3041
  store i64 %44, i64* %14, align 8, !dbg !3042
  %45 = load i64, i64* %14, align 8, !dbg !3043
  %46 = icmp ne i64 0, %45, !dbg !3045
  br i1 %46, label %47, label %49, !dbg !3046

; <label>:47:                                     ; preds = %39
  %48 = load i64, i64* %14, align 8, !dbg !3047
  store i64 %48, i64* %7, align 8, !dbg !3049
  br label %72, !dbg !3049

; <label>:49:                                     ; preds = %39
  %50 = load i64, i64* %18, align 8, !dbg !3050
  %51 = add i64 %50, 1, !dbg !3051
  %52 = load i8*, i8** %15, align 8, !dbg !3052
  %53 = getelementptr inbounds i8, i8* %52, i64 %51, !dbg !3052
  store i8* %53, i8** %15, align 8, !dbg !3052
  %54 = load i64, i64* %18, align 8, !dbg !3053
  %55 = add i64 %54, 1, !dbg !3054
  %56 = load i64, i64* %12, align 8, !dbg !3055
  %57 = sub i64 %56, %55, !dbg !3055
  store i64 %57, i64* %12, align 8, !dbg !3055
  br label %58, !dbg !3056

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* %17, align 4, !dbg !3057
  %60 = add nsw i32 %59, 1, !dbg !3057
  store i32 %60, i32* %17, align 4, !dbg !3057
  br label %35, !dbg !3059, !llvm.loop !3060

; <label>:61:                                     ; preds = %35
  %62 = load i64, i64* %12, align 8, !dbg !3062
  %63 = icmp ne i64 %62, 0, !dbg !3064
  br i1 %63, label %64, label %67, !dbg !3065

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %8, align 8, !dbg !3066
  %66 = load i32, i32* %9, align 4, !dbg !3068
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i32 0, i32 0), i8* %65, i32 %66), !dbg !3069
  store i64 10001, i64* %7, align 8, !dbg !3070
  br label %72, !dbg !3070

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %16, align 8, !dbg !3071
  %69 = load i8**, i8*** %13, align 8, !dbg !3072
  store i8* %68, i8** %69, align 8, !dbg !3073
  br label %70, !dbg !3074

; <label>:70:                                     ; preds = %67, %21
  %71 = load i64, i64* %14, align 8, !dbg !3075
  store i64 %71, i64* %7, align 8, !dbg !3076
  br label %72, !dbg !3076

; <label>:72:                                     ; preds = %70, %64, %47, %31
  %73 = load i64, i64* %7, align 8, !dbg !3077
  ret i64 %73, !dbg !3077
}

; Function Attrs: nounwind uwtable
define internal i64 @__VMAutomationValidateStringInBuffer(i8*, i32, i8*, i64, i64*) #0 !dbg !3078 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3081, metadata !885), !dbg !3082
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3083, metadata !885), !dbg !3084
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3085, metadata !885), !dbg !3086
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3087, metadata !885), !dbg !3088
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !3089, metadata !885), !dbg !3090
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3091, metadata !885), !dbg !3092
  %13 = load i64, i64* %10, align 8, !dbg !3093
  %14 = icmp ult i64 %13, 1, !dbg !3095
  br i1 %14, label %15, label %18, !dbg !3096

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %7, align 8, !dbg !3097
  %17 = load i32, i32* %8, align 4, !dbg !3099
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.148, i32 0, i32 0), i8* %16, i32 %17), !dbg !3100
  store i64 10001, i64* %6, align 8, !dbg !3101
  br label %39, !dbg !3101

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3102
  %20 = load i64, i64* %10, align 8, !dbg !3103
  %21 = call i64 @Str_Strlen(i8* %19, i64 %20), !dbg !3104
  store i64 %21, i64* %12, align 8, !dbg !3105
  %22 = load i64, i64* %12, align 8, !dbg !3106
  %23 = load i64*, i64** %11, align 8, !dbg !3107
  store i64 %22, i64* %23, align 8, !dbg !3108
  %24 = load i64, i64* %12, align 8, !dbg !3109
  %25 = load i64, i64* %10, align 8, !dbg !3111
  %26 = icmp uge i64 %24, %25, !dbg !3112
  br i1 %26, label %27, label %30, !dbg !3113

; <label>:27:                                     ; preds = %18
  %28 = load i8*, i8** %7, align 8, !dbg !3114
  %29 = load i32, i32* %8, align 4, !dbg !3116
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.149, i32 0, i32 0), i8* %28, i32 %29), !dbg !3117
  store i64 10001, i64* %6, align 8, !dbg !3118
  br label %39, !dbg !3118

; <label>:30:                                     ; preds = %18
  %31 = load i8*, i8** %9, align 8, !dbg !3119
  %32 = load i64, i64* %12, align 8, !dbg !3121
  %33 = call signext i8 @Unicode_IsBufferValid(i8* %31, i64 %32, i32 0), !dbg !3122
  %34 = icmp ne i8 %33, 0, !dbg !3122
  br i1 %34, label %38, label %35, !dbg !3123

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %7, align 8, !dbg !3124
  %37 = load i32, i32* %8, align 4, !dbg !3126
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.151, i32 0, i32 0), i8* %36, i32 %37), !dbg !3127
  store i64 27, i64* %6, align 8, !dbg !3128
  br label %39, !dbg !3128

; <label>:38:                                     ; preds = %30
  store i64 0, i64* %6, align 8, !dbg !3129
  br label %39, !dbg !3129

; <label>:39:                                     ; preds = %38, %35, %27, %15
  %40 = load i64, i64* %6, align 8, !dbg !3130
  ret i64 %40, !dbg !3130
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserGetString(i8*, i32, %struct.VMAutomationMsgParser*, i64, i8**) #0 !dbg !3131 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.VMAutomationMsgParser*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3132, metadata !885), !dbg !3133
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3134, metadata !885), !dbg !3135
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %9, metadata !3136, metadata !885), !dbg !3137
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3138, metadata !885), !dbg !3139
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3140, metadata !885), !dbg !3141
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3142, metadata !885), !dbg !3143
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3144, metadata !885), !dbg !3145
  %14 = load i64, i64* %10, align 8, !dbg !3146
  %15 = add i64 %14, 1, !dbg !3146
  store i64 %15, i64* %10, align 8, !dbg !3146
  %16 = load i64, i64* %10, align 8, !dbg !3147
  %17 = icmp ne i64 %16, 0, !dbg !3147
  br i1 %17, label %21, label %18, !dbg !3149

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %7, align 8, !dbg !3150
  %20 = load i32, i32* %8, align 4, !dbg !3152
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %19, i32 %20), !dbg !3153
  store i64 3, i64* %6, align 8, !dbg !3154
  br label %44, !dbg !3154

; <label>:21:                                     ; preds = %5
  %22 = load i8*, i8** %7, align 8, !dbg !3155
  %23 = load i32, i32* %8, align 4, !dbg !3156
  %24 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %9, align 8, !dbg !3157
  %25 = load i64, i64* %10, align 8, !dbg !3158
  %26 = call i64 @__VMAutomationMsgParserGetData(i8* %22, i32 %23, %struct.VMAutomationMsgParser* %24, i64 %25, i8** %13), !dbg !3159
  store i64 %26, i64* %12, align 8, !dbg !3160
  %27 = load i64, i64* %12, align 8, !dbg !3161
  %28 = icmp ne i64 0, %27, !dbg !3163
  br i1 %28, label %29, label %31, !dbg !3164

; <label>:29:                                     ; preds = %21
  %30 = load i64, i64* %12, align 8, !dbg !3165
  store i64 %30, i64* %6, align 8, !dbg !3167
  br label %44, !dbg !3167

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %7, align 8, !dbg !3168
  %33 = load i32, i32* %8, align 4, !dbg !3169
  %34 = load i8*, i8** %13, align 8, !dbg !3170
  %35 = load i64, i64* %10, align 8, !dbg !3171
  %36 = call i64 @__VMAutomationValidateString(i8* %32, i32 %33, i8* %34, i64 %35), !dbg !3172
  store i64 %36, i64* %12, align 8, !dbg !3173
  %37 = load i64, i64* %12, align 8, !dbg !3174
  %38 = icmp ne i64 0, %37, !dbg !3176
  br i1 %38, label %39, label %41, !dbg !3177

; <label>:39:                                     ; preds = %31
  %40 = load i64, i64* %12, align 8, !dbg !3178
  store i64 %40, i64* %6, align 8, !dbg !3180
  br label %44, !dbg !3180

; <label>:41:                                     ; preds = %31
  %42 = load i8*, i8** %13, align 8, !dbg !3181
  %43 = load i8**, i8*** %11, align 8, !dbg !3182
  store i8* %42, i8** %43, align 8, !dbg !3183
  store i64 0, i64* %6, align 8, !dbg !3184
  br label %44, !dbg !3184

; <label>:44:                                     ; preds = %41, %39, %29, %18
  %45 = load i64, i64* %6, align 8, !dbg !3185
  ret i64 %45, !dbg !3185
}

; Function Attrs: nounwind uwtable
define i64 @__VMAutomationMsgParserGetPropertyList(i8*, i32, %struct.VMAutomationMsgParser*, i64, %struct.VixPropertyListImpl*) #0 !dbg !3186 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.VMAutomationMsgParser*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyListImpl*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3189, metadata !885), !dbg !3190
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3191, metadata !885), !dbg !3192
  store %struct.VMAutomationMsgParser* %2, %struct.VMAutomationMsgParser** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VMAutomationMsgParser** %8, metadata !3193, metadata !885), !dbg !3194
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3195, metadata !885), !dbg !3196
  store %struct.VixPropertyListImpl* %4, %struct.VixPropertyListImpl** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %10, metadata !3197, metadata !885), !dbg !3198
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3199, metadata !885), !dbg !3200
  store i64 0, i64* %11, align 8, !dbg !3201
  %13 = load i64, i64* %9, align 8, !dbg !3202
  %14 = icmp ne i64 %13, 0, !dbg !3202
  br i1 %14, label %15, label %29, !dbg !3204

; <label>:15:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3205, metadata !885), !dbg !3207
  %16 = load i8*, i8** %6, align 8, !dbg !3208
  %17 = load i32, i32* %7, align 4, !dbg !3209
  %18 = load %struct.VMAutomationMsgParser*, %struct.VMAutomationMsgParser** %8, align 8, !dbg !3210
  %19 = load i64, i64* %9, align 8, !dbg !3211
  %20 = call i64 @__VMAutomationMsgParserGetData(i8* %16, i32 %17, %struct.VMAutomationMsgParser* %18, i64 %19, i8** %12), !dbg !3212
  store i64 %20, i64* %11, align 8, !dbg !3213
  %21 = load i64, i64* %11, align 8, !dbg !3214
  %22 = icmp eq i64 0, %21, !dbg !3216
  br i1 %22, label %23, label %28, !dbg !3217

; <label>:23:                                     ; preds = %15
  %24 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %10, align 8, !dbg !3218
  %25 = load i8*, i8** %12, align 8, !dbg !3220
  %26 = load i64, i64* %9, align 8, !dbg !3221
  %27 = call i64 @VixPropertyList_Deserialize(%struct.VixPropertyListImpl* %24, i8* %25, i64 %26, i32 0), !dbg !3222
  store i64 %27, i64* %11, align 8, !dbg !3223
  br label %28, !dbg !3224

; <label>:28:                                     ; preds = %23, %15
  br label %29, !dbg !3225

; <label>:29:                                     ; preds = %28, %5
  %30 = load i64, i64* %11, align 8, !dbg !3226
  ret i64 %30, !dbg !3227
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_Zero(i8*, i64) #5 !dbg !3228 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3229, metadata !885), !dbg !3230
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3231, metadata !885), !dbg !3232
  %5 = load i8*, i8** %3, align 8, !dbg !3233
  %6 = icmp ne i8* %5, null, !dbg !3235
  br i1 %6, label %7, label %10, !dbg !3236

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3237
  %9 = load i64, i64* %4, align 8, !dbg !3239
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %9, i32 1, i1 false), !dbg !3240
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** %3) #10, !dbg !3241, !srcloc !3242
  br label %10, !dbg !3243

; <label>:10:                                     ; preds = %7, %2
  ret void, !dbg !3244
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_ZeroString(i8*) #5 !dbg !3245 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3246, metadata !885), !dbg !3247
  %3 = load i8*, i8** %2, align 8, !dbg !3248
  %4 = icmp ne i8* %3, null, !dbg !3250
  br i1 %4, label %5, label %9, !dbg !3251

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !3252
  %7 = load i8*, i8** %2, align 8, !dbg !3254
  %8 = call i64 @strlen(i8* %7) #9, !dbg !3255
  call void @Util_Zero(i8* %6, i64 %8), !dbg !3256
  br label %9, !dbg !3258

; <label>:9:                                      ; preds = %5, %1
  ret void, !dbg !3259
}

declare i64 @Base64_EncodedLength(i8*, i64) #2

declare signext i8 @Base64_Encode(i8*, i64, i8*, i64, i64*) #2

; Function Attrs: nounwind uwtable
define internal void @VixMsgInitializeObfuscationMapping() #0 !dbg !844 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !3260, metadata !885), !dbg !3261
  %2 = load i8, i8* @VixMsgInitializeObfuscationMapping.initializedTable, align 1, !dbg !3262
  %3 = icmp ne i8 %2, 0, !dbg !3262
  br i1 %3, label %4, label %5, !dbg !3264

; <label>:4:                                      ; preds = %0
  br label %18, !dbg !3265

; <label>:5:                                      ; preds = %0
  store i64 0, i64* %1, align 8, !dbg !3267
  br label %6, !dbg !3269

; <label>:6:                                      ; preds = %14, %5
  %7 = load i64, i64* %1, align 8, !dbg !3270
  %8 = icmp ult i64 %7, 256, !dbg !3273
  br i1 %8, label %9, label %17, !dbg !3274

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %1, align 8, !dbg !3275
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 %10, !dbg !3277
  store i8 0, i8* %11, align 1, !dbg !3278
  %12 = load i64, i64* %1, align 8, !dbg !3279
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 %12, !dbg !3280
  store i8 0, i8* %13, align 1, !dbg !3281
  br label %14, !dbg !3282

; <label>:14:                                     ; preds = %9
  %15 = load i64, i64* %1, align 8, !dbg !3283
  %16 = add i64 %15, 1, !dbg !3283
  store i64 %16, i64* %1, align 8, !dbg !3283
  br label %6, !dbg !3285, !llvm.loop !3286

; <label>:17:                                     ; preds = %6
  store i8 49, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 92), align 4, !dbg !3288
  store i8 50, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 39), align 1, !dbg !3289
  store i8 51, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 34), align 2, !dbg !3290
  store i8 52, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 32), align 16, !dbg !3291
  store i8 53, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 13), align 1, !dbg !3292
  store i8 54, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 10), align 2, !dbg !3293
  store i8 55, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PlainToObfuscatedCharMap, i64 0, i64 9), align 1, !dbg !3294
  store i8 92, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 49), align 1, !dbg !3295
  store i8 39, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 50), align 2, !dbg !3296
  store i8 34, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 51), align 1, !dbg !3297
  store i8 32, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 52), align 4, !dbg !3298
  store i8 13, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 53), align 1, !dbg !3299
  store i8 10, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 54), align 2, !dbg !3300
  store i8 9, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ObfuscatedToPlainCharMap, i64 0, i64 55), align 1, !dbg !3301
  store i8 1, i8* @VixMsgInitializeObfuscationMapping.initializedTable, align 1, !dbg !3302
  br label %18, !dbg !3303

; <label>:18:                                     ; preds = %17, %4
  ret void, !dbg !3304
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #8

declare i64 @Base64_DecodedLength(i8*, i64) #2

declare signext i8 @Base64_Decode(i8*, i8*, i64, i64*) #2

declare i64 @Str_Strlen(i8*, i64) #2

declare signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!869, !870}
!llvm.ident = !{!871}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !778, globals: !842)
!1 = !DIFile(filename: "foundryMsg.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!2 = !{!3, !13, !282, !293, !299, !304, !445}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VixCommonCommandOptionValues", file: !4, line: 88, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixCommands.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "VIX_COMMAND_REQUEST", value: 1)
!7 = !DIEnumerator(name: "VIX_COMMAND_REPORT_EVENT", value: 2)
!8 = !DIEnumerator(name: "VIX_COMMAND_FORWARD_TO_GUEST", value: 4)
!9 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_STRING", value: 8)
!10 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_INTEGER_STRING", value: 16)
!11 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_PROPERTY_LIST", value: 64)
!12 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_BINARY", value: 128)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 87, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vix.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!16 = !DIEnumerator(name: "VIX_OK", value: 0)
!17 = !DIEnumerator(name: "VIX_E_FAIL", value: 1)
!18 = !DIEnumerator(name: "VIX_E_OUT_OF_MEMORY", value: 2)
!19 = !DIEnumerator(name: "VIX_E_INVALID_ARG", value: 3)
!20 = !DIEnumerator(name: "VIX_E_FILE_NOT_FOUND", value: 4)
!21 = !DIEnumerator(name: "VIX_E_OBJECT_IS_BUSY", value: 5)
!22 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED", value: 6)
!23 = !DIEnumerator(name: "VIX_E_FILE_ERROR", value: 7)
!24 = !DIEnumerator(name: "VIX_E_DISK_FULL", value: 8)
!25 = !DIEnumerator(name: "VIX_E_INCORRECT_FILE_TYPE", value: 9)
!26 = !DIEnumerator(name: "VIX_E_CANCELLED", value: 10)
!27 = !DIEnumerator(name: "VIX_E_FILE_READ_ONLY", value: 11)
!28 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_EXISTS", value: 12)
!29 = !DIEnumerator(name: "VIX_E_FILE_ACCESS_ERROR", value: 13)
!30 = !DIEnumerator(name: "VIX_E_REQUIRES_LARGE_FILES", value: 14)
!31 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_LOCKED", value: 15)
!32 = !DIEnumerator(name: "VIX_E_VMDB", value: 16)
!33 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_REMOTE_OBJECT", value: 20)
!34 = !DIEnumerator(name: "VIX_E_FILE_TOO_BIG", value: 21)
!35 = !DIEnumerator(name: "VIX_E_FILE_NAME_INVALID", value: 22)
!36 = !DIEnumerator(name: "VIX_E_ALREADY_EXISTS", value: 23)
!37 = !DIEnumerator(name: "VIX_E_BUFFER_TOOSMALL", value: 24)
!38 = !DIEnumerator(name: "VIX_E_OBJECT_NOT_FOUND", value: 25)
!39 = !DIEnumerator(name: "VIX_E_HOST_NOT_CONNECTED", value: 26)
!40 = !DIEnumerator(name: "VIX_E_INVALID_UTF8_STRING", value: 27)
!41 = !DIEnumerator(name: "VIX_E_OPERATION_ALREADY_IN_PROGRESS", value: 31)
!42 = !DIEnumerator(name: "VIX_E_UNFINISHED_JOB", value: 29)
!43 = !DIEnumerator(name: "VIX_E_NEED_KEY", value: 30)
!44 = !DIEnumerator(name: "VIX_E_LICENSE", value: 32)
!45 = !DIEnumerator(name: "VIX_E_VM_HOST_DISCONNECTED", value: 34)
!46 = !DIEnumerator(name: "VIX_E_AUTHENTICATION_FAIL", value: 35)
!47 = !DIEnumerator(name: "VIX_E_HOST_CONNECTION_LOST", value: 36)
!48 = !DIEnumerator(name: "VIX_E_DUPLICATE_NAME", value: 41)
!49 = !DIEnumerator(name: "VIX_E_ARGUMENT_TOO_BIG", value: 44)
!50 = !DIEnumerator(name: "VIX_E_INVALID_HANDLE", value: 1000)
!51 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_HANDLE_TYPE", value: 1001)
!52 = !DIEnumerator(name: "VIX_E_TOO_MANY_HANDLES", value: 1002)
!53 = !DIEnumerator(name: "VIX_E_NOT_FOUND", value: 2000)
!54 = !DIEnumerator(name: "VIX_E_TYPE_MISMATCH", value: 2001)
!55 = !DIEnumerator(name: "VIX_E_INVALID_XML", value: 2002)
!56 = !DIEnumerator(name: "VIX_E_TIMEOUT_WAITING_FOR_TOOLS", value: 3000)
!57 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND", value: 3001)
!58 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_GUEST", value: 3003)
!59 = !DIEnumerator(name: "VIX_E_PROGRAM_NOT_STARTED", value: 3004)
!60 = !DIEnumerator(name: "VIX_E_CANNOT_START_READ_ONLY_VM", value: 3005)
!61 = !DIEnumerator(name: "VIX_E_VM_NOT_RUNNING", value: 3006)
!62 = !DIEnumerator(name: "VIX_E_VM_IS_RUNNING", value: 3007)
!63 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_VM", value: 3008)
!64 = !DIEnumerator(name: "VIX_E_POWEROP_SCRIPTS_NOT_AVAILABLE", value: 3009)
!65 = !DIEnumerator(name: "VIX_E_NO_GUEST_OS_INSTALLED", value: 3010)
!66 = !DIEnumerator(name: "VIX_E_VM_INSUFFICIENT_HOST_MEMORY", value: 3011)
!67 = !DIEnumerator(name: "VIX_E_SUSPEND_ERROR", value: 3012)
!68 = !DIEnumerator(name: "VIX_E_VM_NOT_ENOUGH_CPUS", value: 3013)
!69 = !DIEnumerator(name: "VIX_E_HOST_USER_PERMISSIONS", value: 3014)
!70 = !DIEnumerator(name: "VIX_E_GUEST_USER_PERMISSIONS", value: 3015)
!71 = !DIEnumerator(name: "VIX_E_TOOLS_NOT_RUNNING", value: 3016)
!72 = !DIEnumerator(name: "VIX_E_GUEST_OPERATIONS_PROHIBITED", value: 3017)
!73 = !DIEnumerator(name: "VIX_E_ANON_GUEST_OPERATIONS_PROHIBITED", value: 3018)
!74 = !DIEnumerator(name: "VIX_E_ROOT_GUEST_OPERATIONS_PROHIBITED", value: 3019)
!75 = !DIEnumerator(name: "VIX_E_MISSING_ANON_GUEST_ACCOUNT", value: 3023)
!76 = !DIEnumerator(name: "VIX_E_CANNOT_AUTHENTICATE_WITH_GUEST", value: 3024)
!77 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND_IN_GUEST", value: 3025)
!78 = !DIEnumerator(name: "VIX_E_CONSOLE_GUEST_OPERATIONS_PROHIBITED", value: 3026)
!79 = !DIEnumerator(name: "VIX_E_MUST_BE_CONSOLE_USER", value: 3027)
!80 = !DIEnumerator(name: "VIX_E_VMX_MSG_DIALOG_AND_NO_UI", value: 3028)
!81 = !DIEnumerator(name: "VIX_E_OPERATION_NOT_ALLOWED_FOR_LOGIN_TYPE", value: 3031)
!82 = !DIEnumerator(name: "VIX_E_LOGIN_TYPE_NOT_SUPPORTED", value: 3032)
!83 = !DIEnumerator(name: "VIX_E_EMPTY_PASSWORD_NOT_ALLOWED_IN_GUEST", value: 3033)
!84 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_NOT_PRESENT", value: 3034)
!85 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_USER_MISMATCH", value: 3035)
!86 = !DIEnumerator(name: "VIX_E_CANNOT_POWER_ON_VM", value: 3041)
!87 = !DIEnumerator(name: "VIX_E_NO_DISPLAY_SERVER", value: 3043)
!88 = !DIEnumerator(name: "VIX_E_TOO_MANY_LOGONS", value: 3046)
!89 = !DIEnumerator(name: "VIX_E_INVALID_AUTHENTICATION_SESSION", value: 3047)
!90 = !DIEnumerator(name: "VIX_E_VM_NOT_FOUND", value: 4000)
!91 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_FOR_VM_VERSION", value: 4001)
!92 = !DIEnumerator(name: "VIX_E_CANNOT_READ_VM_CONFIG", value: 4002)
!93 = !DIEnumerator(name: "VIX_E_TEMPLATE_VM", value: 4003)
!94 = !DIEnumerator(name: "VIX_E_VM_ALREADY_LOADED", value: 4004)
!95 = !DIEnumerator(name: "VIX_E_VM_ALREADY_UP_TO_DATE", value: 4006)
!96 = !DIEnumerator(name: "VIX_E_VM_UNSUPPORTED_GUEST", value: 4011)
!97 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_PROPERTY", value: 6000)
!98 = !DIEnumerator(name: "VIX_E_INVALID_PROPERTY_VALUE", value: 6001)
!99 = !DIEnumerator(name: "VIX_E_READ_ONLY_PROPERTY", value: 6002)
!100 = !DIEnumerator(name: "VIX_E_MISSING_REQUIRED_PROPERTY", value: 6003)
!101 = !DIEnumerator(name: "VIX_E_INVALID_SERIALIZED_DATA", value: 6004)
!102 = !DIEnumerator(name: "VIX_E_PROPERTY_TYPE_MISMATCH", value: 6005)
!103 = !DIEnumerator(name: "VIX_E_BAD_VM_INDEX", value: 8000)
!104 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_HEADER", value: 10000)
!105 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_BODY", value: 10001)
!106 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INVAL", value: 13000)
!107 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUMPER", value: 13001)
!108 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLIB", value: 13002)
!109 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOTFOUND", value: 13003)
!110 = !DIEnumerator(name: "VIX_E_SNAPSHOT_EXISTS", value: 13004)
!111 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VERSION", value: 13005)
!112 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOPERM", value: 13006)
!113 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CONFIG", value: 13007)
!114 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOCHANGE", value: 13008)
!115 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CHECKPOINT", value: 13009)
!116 = !DIEnumerator(name: "VIX_E_SNAPSHOT_LOCKED", value: 13010)
!117 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INCONSISTENT", value: 13011)
!118 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NAMETOOLONG", value: 13012)
!119 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VIXFILE", value: 13013)
!120 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLOCKED", value: 13014)
!121 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUPLICATEDDISK", value: 13015)
!122 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INDEPENDENTDISK", value: 13016)
!123 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NONUNIQUE_NAME", value: 13017)
!124 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MEMORY_ON_INDEPENDENT_DISK", value: 13018)
!125 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MAXSNAPSHOTS", value: 13019)
!126 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MIN_FREE_SPACE", value: 13020)
!127 = !DIEnumerator(name: "VIX_E_SNAPSHOT_HIERARCHY_TOODEEP", value: 13021)
!128 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOT_REVERTABLE", value: 13024)
!129 = !DIEnumerator(name: "VIX_E_HOST_DISK_INVALID_VALUE", value: 14003)
!130 = !DIEnumerator(name: "VIX_E_HOST_DISK_SECTORSIZE", value: 14004)
!131 = !DIEnumerator(name: "VIX_E_HOST_FILE_ERROR_EOF", value: 14005)
!132 = !DIEnumerator(name: "VIX_E_HOST_NETBLKDEV_HANDSHAKE", value: 14006)
!133 = !DIEnumerator(name: "VIX_E_HOST_SOCKET_CREATION_ERROR", value: 14007)
!134 = !DIEnumerator(name: "VIX_E_HOST_SERVER_NOT_FOUND", value: 14008)
!135 = !DIEnumerator(name: "VIX_E_HOST_NETWORK_CONN_REFUSED", value: 14009)
!136 = !DIEnumerator(name: "VIX_E_HOST_TCP_SOCKET_ERROR", value: 14010)
!137 = !DIEnumerator(name: "VIX_E_HOST_TCP_CONN_LOST", value: 14011)
!138 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_VOLUME", value: 14012)
!139 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_INIT", value: 14013)
!140 = !DIEnumerator(name: "VIX_E_DISK_INVAL", value: 16000)
!141 = !DIEnumerator(name: "VIX_E_DISK_NOINIT", value: 16001)
!142 = !DIEnumerator(name: "VIX_E_DISK_NOIO", value: 16002)
!143 = !DIEnumerator(name: "VIX_E_DISK_PARTIALCHAIN", value: 16003)
!144 = !DIEnumerator(name: "VIX_E_DISK_NEEDSREPAIR", value: 16006)
!145 = !DIEnumerator(name: "VIX_E_DISK_OUTOFRANGE", value: 16007)
!146 = !DIEnumerator(name: "VIX_E_DISK_CID_MISMATCH", value: 16008)
!147 = !DIEnumerator(name: "VIX_E_DISK_CANTSHRINK", value: 16009)
!148 = !DIEnumerator(name: "VIX_E_DISK_PARTMISMATCH", value: 16010)
!149 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDISKVERSION", value: 16011)
!150 = !DIEnumerator(name: "VIX_E_DISK_OPENPARENT", value: 16012)
!151 = !DIEnumerator(name: "VIX_E_DISK_NOTSUPPORTED", value: 16013)
!152 = !DIEnumerator(name: "VIX_E_DISK_NEEDKEY", value: 16014)
!153 = !DIEnumerator(name: "VIX_E_DISK_NOKEYOVERRIDE", value: 16015)
!154 = !DIEnumerator(name: "VIX_E_DISK_NOTENCRYPTED", value: 16016)
!155 = !DIEnumerator(name: "VIX_E_DISK_NOKEY", value: 16017)
!156 = !DIEnumerator(name: "VIX_E_DISK_INVALIDPARTITIONTABLE", value: 16018)
!157 = !DIEnumerator(name: "VIX_E_DISK_NOTNORMAL", value: 16019)
!158 = !DIEnumerator(name: "VIX_E_DISK_NOTENCDESC", value: 16020)
!159 = !DIEnumerator(name: "VIX_E_DISK_NEEDVMFS", value: 16022)
!160 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOBIG", value: 16024)
!161 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYOPENFILES", value: 16027)
!162 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYREDO", value: 16028)
!163 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOSMALL", value: 16029)
!164 = !DIEnumerator(name: "VIX_E_DISK_INVALIDCHAIN", value: 16030)
!165 = !DIEnumerator(name: "VIX_E_DISK_KEY_NOTFOUND", value: 16052)
!166 = !DIEnumerator(name: "VIX_E_DISK_SUBSYSTEM_INIT_FAIL", value: 16053)
!167 = !DIEnumerator(name: "VIX_E_DISK_INVALID_CONNECTION", value: 16054)
!168 = !DIEnumerator(name: "VIX_E_DISK_ENCODING", value: 16061)
!169 = !DIEnumerator(name: "VIX_E_DISK_CANTREPAIR", value: 16062)
!170 = !DIEnumerator(name: "VIX_E_DISK_INVALIDDISK", value: 16063)
!171 = !DIEnumerator(name: "VIX_E_DISK_NOLICENSE", value: 16064)
!172 = !DIEnumerator(name: "VIX_E_DISK_NODEVICE", value: 16065)
!173 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDEVICE", value: 16066)
!174 = !DIEnumerator(name: "VIX_E_DISK_CAPACITY_MISMATCH", value: 16067)
!175 = !DIEnumerator(name: "VIX_E_DISK_PARENT_NOTALLOWED", value: 16068)
!176 = !DIEnumerator(name: "VIX_E_DISK_ATTACH_ROOTLINK", value: 16069)
!177 = !DIEnumerator(name: "VIX_E_CRYPTO_UNKNOWN_ALGORITHM", value: 17000)
!178 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_BUFFER_SIZE", value: 17001)
!179 = !DIEnumerator(name: "VIX_E_CRYPTO_INVALID_OPERATION", value: 17002)
!180 = !DIEnumerator(name: "VIX_E_CRYPTO_RANDOM_DEVICE", value: 17003)
!181 = !DIEnumerator(name: "VIX_E_CRYPTO_NEED_PASSWORD", value: 17004)
!182 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_PASSWORD", value: 17005)
!183 = !DIEnumerator(name: "VIX_E_CRYPTO_NOT_IN_DICTIONARY", value: 17006)
!184 = !DIEnumerator(name: "VIX_E_CRYPTO_NO_CRYPTO", value: 17007)
!185 = !DIEnumerator(name: "VIX_E_CRYPTO_ERROR", value: 17008)
!186 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_FORMAT", value: 17009)
!187 = !DIEnumerator(name: "VIX_E_CRYPTO_LOCKED", value: 17010)
!188 = !DIEnumerator(name: "VIX_E_CRYPTO_EMPTY", value: 17011)
!189 = !DIEnumerator(name: "VIX_E_CRYPTO_KEYSAFE_LOCATOR", value: 17012)
!190 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_HOST", value: 18000)
!191 = !DIEnumerator(name: "VIX_E_NOT_FOR_REMOTE_HOST", value: 18001)
!192 = !DIEnumerator(name: "VIX_E_INVALID_HOSTNAME_SPECIFICATION", value: 18002)
!193 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_ERROR", value: 19000)
!194 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_BAD_FORMAT", value: 19001)
!195 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_COMPRESSION_FAIL", value: 19002)
!196 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_LARGE_DATA", value: 19003)
!197 = !DIEnumerator(name: "VIX_E_GUEST_VOLUMES_NOT_FROZEN", value: 20000)
!198 = !DIEnumerator(name: "VIX_E_NOT_A_FILE", value: 20001)
!199 = !DIEnumerator(name: "VIX_E_NOT_A_DIRECTORY", value: 20002)
!200 = !DIEnumerator(name: "VIX_E_NO_SUCH_PROCESS", value: 20003)
!201 = !DIEnumerator(name: "VIX_E_FILE_NAME_TOO_LONG", value: 20004)
!202 = !DIEnumerator(name: "VIX_E_OPERATION_DISABLED", value: 20005)
!203 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_IMAGE", value: 21000)
!204 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_INACCESIBLE", value: 21001)
!205 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_DEVICE", value: 21002)
!206 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_DEVICE_NOT_CONNECTED", value: 21003)
!207 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_CANCELLED", value: 21004)
!208 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_INIT_FAILED", value: 21005)
!209 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_AUTO_NOT_SUPPORTED", value: 21006)
!210 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_GUEST_NOT_READY", value: 21007)
!211 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_SIG_CHECK_FAILED", value: 21008)
!212 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ERROR", value: 21009)
!213 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ALREADY_UP_TO_DATE", value: 21010)
!214 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IN_PROGRESS", value: 21011)
!215 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_COPY_FAILED", value: 21012)
!216 = !DIEnumerator(name: "VIX_E_WRAPPER_WORKSTATION_NOT_INSTALLED", value: 22001)
!217 = !DIEnumerator(name: "VIX_E_WRAPPER_VERSION_NOT_FOUND", value: 22002)
!218 = !DIEnumerator(name: "VIX_E_WRAPPER_SERVICEPROVIDER_NOT_FOUND", value: 22003)
!219 = !DIEnumerator(name: "VIX_E_WRAPPER_PLAYER_NOT_INSTALLED", value: 22004)
!220 = !DIEnumerator(name: "VIX_E_WRAPPER_RUNTIME_NOT_INSTALLED", value: 22005)
!221 = !DIEnumerator(name: "VIX_E_WRAPPER_MULTIPLE_SERVICEPROVIDERS", value: 22006)
!222 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_NOT_FOUND", value: 24000)
!223 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_IN_USE", value: 24001)
!224 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_FOUND", value: 24002)
!225 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_MOUNTED", value: 24003)
!226 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_IS_MOUNTED", value: 24004)
!227 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_SAFE", value: 24005)
!228 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_CANT_OPEN", value: 24006)
!229 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_READ_PARTS", value: 24007)
!230 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT_APP_NOT_FOUND", value: 24008)
!231 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT", value: 24009)
!232 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_MOUNTABLE_PARTITONS", value: 24010)
!233 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_RANGE", value: 24011)
!234 = !DIEnumerator(name: "VIX_E_MNTAPI_PERM", value: 24012)
!235 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT", value: 24013)
!236 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT_LOCKED", value: 24014)
!237 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_HANDLES", value: 24015)
!238 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_MAKE_VAR_DIR", value: 24016)
!239 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_ROOT", value: 24017)
!240 = !DIEnumerator(name: "VIX_E_MNTAPI_LOOP_FAILED", value: 24018)
!241 = !DIEnumerator(name: "VIX_E_MNTAPI_DAEMON", value: 24019)
!242 = !DIEnumerator(name: "VIX_E_MNTAPI_INTERNAL", value: 24020)
!243 = !DIEnumerator(name: "VIX_E_MNTAPI_SYSTEM", value: 24021)
!244 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_CONNECTION_DETAILS", value: 24022)
!245 = !DIEnumerator(name: "VIX_E_MNTAPI_INCOMPATIBLE_VERSION", value: 24300)
!246 = !DIEnumerator(name: "VIX_E_MNTAPI_OS_ERROR", value: 24301)
!247 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_IN_USE", value: 24302)
!248 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_ALREADY_ASSIGNED", value: 24303)
!249 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_MOUNTED", value: 24304)
!250 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_ALREADY_MOUNTED", value: 24305)
!251 = !DIEnumerator(name: "VIX_E_MNTAPI_FORMAT_FAILURE", value: 24306)
!252 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_DRIVER", value: 24307)
!253 = !DIEnumerator(name: "VIX_E_MNTAPI_ALREADY_OPENED", value: 24308)
!254 = !DIEnumerator(name: "VIX_E_MNTAPI_ITEM_NOT_FOUND", value: 24309)
!255 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_BOOT_LOADER", value: 24310)
!256 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_OS", value: 24311)
!257 = !DIEnumerator(name: "VIX_E_MNTAPI_CODECONVERSION", value: 24312)
!258 = !DIEnumerator(name: "VIX_E_MNTAPI_REGWRITE_ERROR", value: 24313)
!259 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPORTED_FT_VOLUME", value: 24314)
!260 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_NOT_FOUND", value: 24315)
!261 = !DIEnumerator(name: "VIX_E_MNTAPI_PUTFILE_ERROR", value: 24316)
!262 = !DIEnumerator(name: "VIX_E_MNTAPI_GETFILE_ERROR", value: 24317)
!263 = !DIEnumerator(name: "VIX_E_MNTAPI_REG_NOT_OPENED", value: 24318)
!264 = !DIEnumerator(name: "VIX_E_MNTAPI_REGDELKEY_ERROR", value: 24319)
!265 = !DIEnumerator(name: "VIX_E_MNTAPI_CREATE_PARTITIONTABLE_ERROR", value: 24320)
!266 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_FAILURE", value: 24321)
!267 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_WRITABLE", value: 24322)
!268 = !DIEnumerator(name: "VIX_ASYNC", value: 25000)
!269 = !DIEnumerator(name: "VIX_E_ASYNC_MIXEDMODE_UNSUPPORTED", value: 26000)
!270 = !DIEnumerator(name: "VIX_E_NET_HTTP_UNSUPPORTED_PROTOCOL", value: 30001)
!271 = !DIEnumerator(name: "VIX_E_NET_HTTP_URL_MALFORMAT", value: 30003)
!272 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_PROXY", value: 30005)
!273 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_HOST", value: 30006)
!274 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_CONNECT", value: 30007)
!275 = !DIEnumerator(name: "VIX_E_NET_HTTP_HTTP_RETURNED_ERROR", value: 30022)
!276 = !DIEnumerator(name: "VIX_E_NET_HTTP_OPERATION_TIMEDOUT", value: 30028)
!277 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_CONNECT_ERROR", value: 30035)
!278 = !DIEnumerator(name: "VIX_E_NET_HTTP_TOO_MANY_REDIRECTS", value: 30047)
!279 = !DIEnumerator(name: "VIX_E_NET_HTTP_TRANSFER", value: 30200)
!280 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_SECURITY", value: 30201)
!281 = !DIEnumerator(name: "VIX_E_NET_HTTP_GENERIC", value: 30202)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 105, size: 32, align: 32, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292}
!284 = !DIEnumerator(name: "VIX_REQUESTMSG_ONLY_RELOAD_NETWORKS", value: 1)
!285 = !DIEnumerator(name: "VIX_REQUESTMSG_RETURN_ON_INITIATING_TOOLS_UPGRADE", value: 2)
!286 = !DIEnumerator(name: "VIX_REQUESTMSG_RUN_IN_ANY_VMX_STATE", value: 4)
!287 = !DIEnumerator(name: "VIX_REQUESTMSG_REQUIRES_INTERACTIVE_ENVIRONMENT", value: 8)
!288 = !DIEnumerator(name: "VIX_REQUESTMSG_INCLUDES_AUTH_DATA_V1", value: 16)
!289 = !DIEnumerator(name: "VIX_REQUESTMSG_REQUIRES_VMDB_NOTIFICATION", value: 32)
!290 = !DIEnumerator(name: "VIX_REQUESTMSG_ESCAPE_XML_DATA", value: 64)
!291 = !DIEnumerator(name: "VIX_REQUESTMSG_HAS_HASHED_SHARED_SECRET", value: 128)
!292 = !DIEnumerator(name: "VIX_REQUESTMSG_VIGOR_COMMAND", value: 256)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VixCommandSecurityCategory", file: !4, line: 2090, size: 32, align: 32, elements: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DIEnumerator(name: "VIX_COMMAND_CATEGORY_UNKNOWN", value: 0)
!296 = !DIEnumerator(name: "VIX_COMMAND_CATEGORY_ALWAYS_ALLOWED", value: 1)
!297 = !DIEnumerator(name: "VIX_COMMAND_CATEGORY_PRIVILEGED", value: 2)
!298 = !DIEnumerator(name: "VIX_COMMAND_CATEGORY_MIXED", value: 3)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VixPropertyListBadEncodingAction", file: !300, line: 369, size: 32, align: 32, elements: !301)
!300 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixOpenSource.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!301 = !{!302, !303}
!302 = !DIEnumerator(name: "VIX_PROPERTY_LIST_BAD_ENCODING_ERROR", value: 0)
!303 = !DIEnumerator(name: "VIX_PROPERTY_LIST_BAD_ENCODING_ESCAPE", value: 1)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 2128, size: 32, align: 32, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!306 = !DIEnumerator(name: "VIX_COMMAND_UNKNOWN", value: -1)
!307 = !DIEnumerator(name: "VIX_COMMAND_VM_POWERON", value: 0)
!308 = !DIEnumerator(name: "VIX_COMMAND_VM_POWEROFF", value: 1)
!309 = !DIEnumerator(name: "VIX_COMMAND_VM_RESET", value: 2)
!310 = !DIEnumerator(name: "VIX_COMMAND_VM_SUSPEND", value: 3)
!311 = !DIEnumerator(name: "VIX_COMMAND_RUN_PROGRAM", value: 4)
!312 = !DIEnumerator(name: "VIX_COMMAND_KEYSTROKES", value: 7)
!313 = !DIEnumerator(name: "VIX_COMMAND_READ_REGISTRY", value: 8)
!314 = !DIEnumerator(name: "VIX_COMMAND_WRITE_REGISTRY", value: 10)
!315 = !DIEnumerator(name: "VIX_COMMAND_COPY_FILE_FROM_GUEST_TO_HOST", value: 12)
!316 = !DIEnumerator(name: "VIX_COMMAND_COPY_FILE_FROM_HOST_TO_GUEST", value: 13)
!317 = !DIEnumerator(name: "VIX_COMMAND_CREATE_SNAPSHOT", value: 14)
!318 = !DIEnumerator(name: "VIX_COMMAND_REMOVE_SNAPSHOT", value: 15)
!319 = !DIEnumerator(name: "VIX_COMMAND_REVERT_TO_SNAPSHOT", value: 16)
!320 = !DIEnumerator(name: "VIX_COMMAND_VM_CLONE", value: 17)
!321 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_FILE", value: 18)
!322 = !DIEnumerator(name: "VIX_COMMAND_GUEST_FILE_EXISTS", value: 19)
!323 = !DIEnumerator(name: "VIX_COMMAND_FIND_VM", value: 20)
!324 = !DIEnumerator(name: "VIX_COMMAND_CALL_PROCEDURE", value: 21)
!325 = !DIEnumerator(name: "VIX_COMMAND_REGISTRY_KEY_EXISTS", value: 22)
!326 = !DIEnumerator(name: "VIX_COMMAND_WIN32_WINDOW_MESSAGE", value: 23)
!327 = !DIEnumerator(name: "VIX_COMMAND_CONSOLIDATE_SNAPSHOTS", value: 24)
!328 = !DIEnumerator(name: "VIX_COMMAND_INSTALL_TOOLS", value: 25)
!329 = !DIEnumerator(name: "VIX_COMMAND_CANCEL_INSTALL_TOOLS", value: 26)
!330 = !DIEnumerator(name: "VIX_COMMAND_UPGRADE_VIRTUAL_HARDWARE", value: 27)
!331 = !DIEnumerator(name: "VIX_COMMAND_SET_NIC_BANDWIDTH", value: 28)
!332 = !DIEnumerator(name: "VIX_COMMAND_RELOAD_VM", value: 31)
!333 = !DIEnumerator(name: "VIX_COMMAND_DELETE_VM", value: 32)
!334 = !DIEnumerator(name: "VIX_COMMAND_WAIT_FOR_TOOLS", value: 38)
!335 = !DIEnumerator(name: "VIX_COMMAND_CREATE_RUNNING_VM_SNAPSHOT", value: 39)
!336 = !DIEnumerator(name: "VIX_COMMAND_CONSOLIDATE_RUNNING_VM_SNAPSHOT", value: 40)
!337 = !DIEnumerator(name: "VIX_COMMAND_GET_NUM_SHARED_FOLDERS", value: 41)
!338 = !DIEnumerator(name: "VIX_COMMAND_GET_SHARED_FOLDER_STATE", value: 42)
!339 = !DIEnumerator(name: "VIX_COMMAND_EDIT_SHARED_FOLDER_STATE", value: 43)
!340 = !DIEnumerator(name: "VIX_COMMAND_REMOVE_SHARED_FOLDER", value: 44)
!341 = !DIEnumerator(name: "VIX_COMMAND_ADD_SHARED_FOLDER", value: 45)
!342 = !DIEnumerator(name: "VIX_COMMAND_RUN_SCRIPT_IN_GUEST", value: 46)
!343 = !DIEnumerator(name: "VIX_COMMAND_OPEN_VM", value: 47)
!344 = !DIEnumerator(name: "VIX_COMMAND_GET_HANDLE_STATE", value: 50)
!345 = !DIEnumerator(name: "VIX_COMMAND_CREATE_WORKING_COPY", value: 55)
!346 = !DIEnumerator(name: "VIX_COMMAND_DISCARD_WORKING_COPY", value: 56)
!347 = !DIEnumerator(name: "VIX_COMMAND_SAVE_WORKING_COPY", value: 57)
!348 = !DIEnumerator(name: "VIX_COMMAND_CAPTURE_SCREEN", value: 58)
!349 = !DIEnumerator(name: "VIX_COMMAND_GET_TOOLS_STATE", value: 62)
!350 = !DIEnumerator(name: "VIX_COMMAND_CHANGE_SCREEN_RESOLUTION", value: 69)
!351 = !DIEnumerator(name: "VIX_COMMAND_DIRECTORY_EXISTS", value: 70)
!352 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_REGISTRY_KEY", value: 71)
!353 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_DIRECTORY", value: 72)
!354 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_EMPTY_DIRECTORY", value: 73)
!355 = !DIEnumerator(name: "VIX_COMMAND_CREATE_TEMPORARY_FILE", value: 74)
!356 = !DIEnumerator(name: "VIX_COMMAND_LIST_PROCESSES", value: 75)
!357 = !DIEnumerator(name: "VIX_COMMAND_MOVE_GUEST_FILE", value: 76)
!358 = !DIEnumerator(name: "VIX_COMMAND_CREATE_DIRECTORY", value: 77)
!359 = !DIEnumerator(name: "VIX_COMMAND_CHECK_USER_ACCOUNT", value: 78)
!360 = !DIEnumerator(name: "VIX_COMMAND_LIST_DIRECTORY", value: 79)
!361 = !DIEnumerator(name: "VIX_COMMAND_REGISTER_VM", value: 80)
!362 = !DIEnumerator(name: "VIX_COMMAND_UNREGISTER_VM", value: 81)
!363 = !DIEnumerator(name: "VIX_CREATE_SESSION_KEY_COMMAND", value: 83)
!364 = !DIEnumerator(name: "VMXI_HGFS_SEND_PACKET_COMMAND", value: 84)
!365 = !DIEnumerator(name: "VIX_COMMAND_KILL_PROCESS", value: 85)
!366 = !DIEnumerator(name: "VIX_COMMAND_LOGOUT_IN_GUEST", value: 87)
!367 = !DIEnumerator(name: "VIX_COMMAND_READ_VARIABLE", value: 88)
!368 = !DIEnumerator(name: "VIX_COMMAND_WRITE_VARIABLE", value: 89)
!369 = !DIEnumerator(name: "VIX_COMMAND_CONNECT_DEVICE", value: 92)
!370 = !DIEnumerator(name: "VIX_COMMAND_IS_DEVICE_CONNECTED", value: 93)
!371 = !DIEnumerator(name: "VIX_COMMAND_GET_FILE_INFO", value: 94)
!372 = !DIEnumerator(name: "VIX_COMMAND_SET_FILE_INFO", value: 95)
!373 = !DIEnumerator(name: "VIX_COMMAND_MOUSE_EVENTS", value: 96)
!374 = !DIEnumerator(name: "VIX_COMMAND_OPEN_TEAM", value: 97)
!375 = !DIEnumerator(name: "VIX_COMMAND_ANSWER_MESSAGE", value: 99)
!376 = !DIEnumerator(name: "VIX_COMMAND_ENABLE_SHARED_FOLDERS", value: 100)
!377 = !DIEnumerator(name: "VIX_COMMAND_MOUNT_HGFS_FOLDERS", value: 101)
!378 = !DIEnumerator(name: "VIX_COMMAND_HOT_EXTEND_DISK", value: 102)
!379 = !DIEnumerator(name: "VIX_COMMAND_CONNECT_HOST", value: 110)
!380 = !DIEnumerator(name: "VIX_COMMAND_CREATE_LINKED_CLONE", value: 112)
!381 = !DIEnumerator(name: "VIX_COMMAND_SAMPLE_COMMAND", value: 115)
!382 = !DIEnumerator(name: "VIX_COMMAND_GET_GUEST_NETWORKING_CONFIG", value: 116)
!383 = !DIEnumerator(name: "VIX_COMMAND_SET_GUEST_NETWORKING_CONFIG", value: 117)
!384 = !DIEnumerator(name: "VIX_COMMAND_VM_PAUSE", value: 122)
!385 = !DIEnumerator(name: "VIX_COMMAND_VM_UNPAUSE", value: 123)
!386 = !DIEnumerator(name: "VIX_COMMAND_GET_PERFORMANCE_DATA", value: 128)
!387 = !DIEnumerator(name: "VIX_COMMAND_GET_SNAPSHOT_SCREENSHOT", value: 130)
!388 = !DIEnumerator(name: "VIX_COMMAND_WAIT_FOR_USER_ACTION_IN_GUEST", value: 132)
!389 = !DIEnumerator(name: "VIX_COMMAND_CHANGE_VIRTUAL_HARDWARE", value: 135)
!390 = !DIEnumerator(name: "VIX_COMMAND_HOT_PLUG_CPU", value: 136)
!391 = !DIEnumerator(name: "VIX_COMMAND_HOT_PLUG_MEMORY", value: 137)
!392 = !DIEnumerator(name: "VIX_COMMAND_HOT_ADD_DEVICE", value: 138)
!393 = !DIEnumerator(name: "VIX_COMMAND_HOT_REMOVE_DEVICE", value: 139)
!394 = !DIEnumerator(name: "VIX_COMMAND_GET_VMX_DEVICE_STATE", value: 151)
!395 = !DIEnumerator(name: "VIX_COMMAND_SET_SNAPSHOT_INFO", value: 155)
!396 = !DIEnumerator(name: "VIX_COMMAND_SNAPSHOT_SET_MRU", value: 156)
!397 = !DIEnumerator(name: "VIX_COMMAND_LOGOUT_HOST", value: 157)
!398 = !DIEnumerator(name: "VIX_COMMAND_HOT_PLUG_BEGIN_BATCH", value: 158)
!399 = !DIEnumerator(name: "VIX_COMMAND_HOT_PLUG_COMMIT_BATCH", value: 159)
!400 = !DIEnumerator(name: "VIX_COMMAND_TRANSFER_CONNECTION", value: 160)
!401 = !DIEnumerator(name: "VIX_COMMAND_TRANSFER_REQUEST", value: 161)
!402 = !DIEnumerator(name: "VIX_COMMAND_TRANSFER_FINAL_DATA", value: 162)
!403 = !DIEnumerator(name: "VIX_COMMAND_LIST_FILESYSTEMS", value: 169)
!404 = !DIEnumerator(name: "VIX_COMMAND_CHANGE_DISPLAY_TOPOLOGY", value: 170)
!405 = !DIEnumerator(name: "VIX_COMMAND_SUSPEND_AND_RESUME", value: 171)
!406 = !DIEnumerator(name: "VIX_COMMAND_REMOVE_BULK_SNAPSHOT", value: 172)
!407 = !DIEnumerator(name: "VIX_COMMAND_COPY_FILE_FROM_READER_TO_GUEST", value: 173)
!408 = !DIEnumerator(name: "VIX_COMMAND_GENERATE_NONCE", value: 174)
!409 = !DIEnumerator(name: "VIX_COMMAND_CHANGE_DISPLAY_TOPOLOGY_MODES", value: 175)
!410 = !DIEnumerator(name: "VIX_COMMAND_QUERY_CHILDREN", value: 176)
!411 = !DIEnumerator(name: "VIX_COMMAND_LIST_FILES", value: 177)
!412 = !DIEnumerator(name: "VIX_COMMAND_CREATE_DIRECTORY_EX", value: 178)
!413 = !DIEnumerator(name: "VIX_COMMAND_MOVE_GUEST_FILE_EX", value: 179)
!414 = !DIEnumerator(name: "VIX_COMMAND_MOVE_GUEST_DIRECTORY", value: 180)
!415 = !DIEnumerator(name: "VIX_COMMAND_CREATE_TEMPORARY_FILE_EX", value: 181)
!416 = !DIEnumerator(name: "VIX_COMMAND_CREATE_TEMPORARY_DIRECTORY", value: 182)
!417 = !DIEnumerator(name: "VIX_COMMAND_SET_GUEST_FILE_ATTRIBUTES", value: 183)
!418 = !DIEnumerator(name: "VIX_COMMAND_COPY_FILE_FROM_GUEST_TO_READER", value: 184)
!419 = !DIEnumerator(name: "VIX_COMMAND_START_PROGRAM", value: 185)
!420 = !DIEnumerator(name: "VIX_COMMAND_LIST_PROCESSES_EX", value: 186)
!421 = !DIEnumerator(name: "VIX_COMMAND_READ_ENV_VARIABLES", value: 187)
!422 = !DIEnumerator(name: "VIX_COMMAND_INITIATE_FILE_TRANSFER_FROM_GUEST", value: 188)
!423 = !DIEnumerator(name: "VIX_COMMAND_INITIATE_FILE_TRANSFER_TO_GUEST", value: 189)
!424 = !DIEnumerator(name: "VIX_COMMAND_ACQUIRE_CREDENTIALS", value: 190)
!425 = !DIEnumerator(name: "VIX_COMMAND_RELEASE_CREDENTIALS", value: 191)
!426 = !DIEnumerator(name: "VIX_COMMAND_VALIDATE_CREDENTIALS", value: 192)
!427 = !DIEnumerator(name: "VIX_COMMAND_TERMINATE_PROCESS", value: 193)
!428 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_FILE_EX", value: 194)
!429 = !DIEnumerator(name: "VIX_COMMAND_DELETE_GUEST_DIRECTORY_EX", value: 195)
!430 = !DIEnumerator(name: "VIX_COMMAND_HOT_CHANGE_MONITOR_TYPE", value: 196)
!431 = !DIEnumerator(name: "VIX_COMMAND_ADD_AUTH_ALIAS", value: 197)
!432 = !DIEnumerator(name: "VIX_COMMAND_REMOVE_AUTH_ALIAS", value: 198)
!433 = !DIEnumerator(name: "VIX_COMMAND_LIST_AUTH_PROVIDER_ALIASES", value: 199)
!434 = !DIEnumerator(name: "VIX_COMMAND_LIST_AUTH_MAPPED_ALIASES", value: 200)
!435 = !DIEnumerator(name: "VIX_COMMAND_CREATE_REGISTRY_KEY", value: 201)
!436 = !DIEnumerator(name: "VIX_COMMAND_LIST_REGISTRY_KEYS", value: 202)
!437 = !DIEnumerator(name: "VIX_COMMAND_DELETE_REGISTRY_KEY", value: 203)
!438 = !DIEnumerator(name: "VIX_COMMAND_SET_REGISTRY_VALUE", value: 204)
!439 = !DIEnumerator(name: "VIX_COMMAND_LIST_REGISTRY_VALUES", value: 205)
!440 = !DIEnumerator(name: "VIX_COMMAND_DELETE_REGISTRY_VALUE", value: 206)
!441 = !DIEnumerator(name: "VIX_COMMAND_REMOVE_AUTH_ALIAS_BY_CERT", value: 207)
!442 = !DIEnumerator(name: "VIX_COMMAND_LAST_NORMAL_COMMAND", value: 208)
!443 = !DIEnumerator(name: "VIX_TEST_UNSUPPORTED_TOOLS_OPCODE_COMMAND", value: 998)
!444 = !DIEnumerator(name: "VIX_TEST_UNSUPPORTED_VMX_OPCODE_COMMAND", value: 999)
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !446, line: 58, size: 32, align: 32, elements: !447)
!446 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!448 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!449 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!450 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!451 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!452 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!453 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!454 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!455 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!456 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!457 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!458 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!459 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!460 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!461 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!462 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!463 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!464 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!465 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!466 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!467 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!468 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!469 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!470 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!471 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!472 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!473 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!474 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!475 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!476 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!477 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!478 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!479 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!480 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!481 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!482 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!483 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!484 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!485 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!486 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!487 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!488 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!489 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!490 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!491 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!492 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!493 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!494 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!495 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!496 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!497 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!498 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!499 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!500 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!501 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!502 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!503 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!504 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!505 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!506 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!507 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!508 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!509 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!510 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!511 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!512 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!513 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!514 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!515 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!516 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!517 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!518 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!519 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!520 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!521 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!522 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!523 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!524 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!525 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!526 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!527 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!528 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!529 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!530 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!531 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!532 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!533 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!534 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!535 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!536 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!537 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!538 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!539 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!540 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!541 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!542 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!543 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!544 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!545 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!546 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!547 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!548 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!549 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!550 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!551 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!552 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!553 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!554 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!555 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!556 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!557 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!558 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!559 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!560 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!561 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!562 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!563 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!564 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!565 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!566 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!567 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!568 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!569 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!570 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!571 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!572 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!573 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!574 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!575 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!576 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!577 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!578 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!579 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!580 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!581 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!582 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!583 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!584 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!585 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!586 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!587 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!588 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!589 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!590 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!591 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!592 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!593 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!594 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!595 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!596 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!597 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!598 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!599 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!600 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!601 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!602 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!603 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!604 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!605 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!606 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!607 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!608 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!609 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!610 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!611 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!612 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!613 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!614 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!615 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!616 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!617 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!618 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!619 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!620 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!621 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!622 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!623 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!624 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!625 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!626 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!627 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!628 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!629 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!630 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!631 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!632 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!633 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!634 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!635 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!636 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!637 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!638 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!639 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!640 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!641 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!642 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!643 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!644 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!645 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!646 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!647 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!648 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!649 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!650 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!651 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!652 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!653 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!654 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!655 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!656 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!657 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!658 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!659 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!660 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!661 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!662 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!663 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!664 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!665 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!666 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!667 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!668 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!669 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!670 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!671 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!672 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!673 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!674 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!675 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!676 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!677 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!678 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!679 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!680 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!681 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!682 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!683 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!684 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!685 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!686 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!687 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!688 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!689 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!690 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!691 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!692 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!693 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!694 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!695 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!696 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!697 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!698 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!699 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!700 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!701 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!702 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!703 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!704 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!705 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!706 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!707 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!708 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!709 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!710 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!711 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!712 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!713 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!714 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!715 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!716 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!717 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!718 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!719 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!720 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!721 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!722 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!723 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!724 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!725 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!726 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!727 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!728 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!729 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!730 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!731 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!732 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!733 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!734 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!735 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!736 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!737 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!738 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!739 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!740 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!741 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!742 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!743 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!744 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!745 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!746 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!747 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!748 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!749 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!750 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!751 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!752 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!753 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!754 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!755 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!756 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!757 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!758 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!759 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!760 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!761 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!762 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!763 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!764 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!765 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!766 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!767 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!768 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!769 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!770 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!771 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!772 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!773 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!774 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!775 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!776 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!777 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!778 = !{!779, !814, !815, !826, !806, !828, !835, !837, !792, !839}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandResponseHeader", file: !4, line: 215, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixCommandResponseHeader", file: !4, line: 201, size: 408, align: 8, elements: !782)
!782 = !{!783, !805, !809, !810, !811, !812, !813}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "commonHeader", scope: !781, file: !4, line: 202, baseType: !784, size: 184, align: 8)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixMsgHeader", file: !4, line: 170, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixMsgHeader", file: !4, line: 158, size: 184, align: 8, elements: !786)
!786 = !{!787, !793, !797, !798, !799, !800, !801}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !785, file: !4, line: 159, baseType: !788, size: 32, align: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !789, line: 173, baseType: !790)
!789 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !791, line: 51, baseType: !792)
!791 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!792 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "messageVersion", scope: !785, file: !4, line: 160, baseType: !794, size: 16, align: 16, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !789, line: 175, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !791, line: 49, baseType: !796)
!796 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "totalMessageLength", scope: !785, file: !4, line: 162, baseType: !788, size: 32, align: 32, offset: 48)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "headerLength", scope: !785, file: !4, line: 163, baseType: !788, size: 32, align: 32, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bodyLength", scope: !785, file: !4, line: 164, baseType: !788, size: 32, align: 32, offset: 112)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "credentialLength", scope: !785, file: !4, line: 165, baseType: !788, size: 32, align: 32, offset: 144)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "commonFlags", scope: !785, file: !4, line: 167, baseType: !802, size: 8, align: 8, offset: 176)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !789, line: 177, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !791, line: 48, baseType: !804)
!804 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "requestCookie", scope: !781, file: !4, line: 204, baseType: !806, size: 64, align: 64, offset: 184)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !789, line: 171, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !791, line: 55, baseType: !808)
!808 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "responseFlags", scope: !781, file: !4, line: 206, baseType: !788, size: 32, align: 32, offset: 248)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !781, file: !4, line: 208, baseType: !788, size: 32, align: 32, offset: 280)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !781, file: !4, line: 210, baseType: !788, size: 32, align: 32, offset: 312)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "additionalError", scope: !781, file: !4, line: 211, baseType: !788, size: 32, align: 32, offset: 344)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "errorDataLength", scope: !781, file: !4, line: 212, baseType: !788, size: 32, align: 32, offset: 376)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandRequestHeader", file: !4, line: 196, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixCommandRequestHeader", file: !4, line: 182, size: 408, align: 8, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "commonHeader", scope: !817, file: !4, line: 183, baseType: !784, size: 184, align: 8)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "opCode", scope: !817, file: !4, line: 185, baseType: !788, size: 32, align: 32, offset: 184)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "requestFlags", scope: !817, file: !4, line: 186, baseType: !788, size: 32, align: 32, offset: 216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "timeOut", scope: !817, file: !4, line: 188, baseType: !788, size: 32, align: 32, offset: 248)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !817, file: !4, line: 190, baseType: !806, size: 64, align: 64, offset: 280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "clientHandleId", scope: !817, file: !4, line: 191, baseType: !788, size: 32, align: 32, offset: 344)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "userCredentialType", scope: !817, file: !4, line: 193, baseType: !788, size: 32, align: 32, offset: 376)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandGenericRequest", file: !4, line: 2083, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixCommandGenericRequest", file: !4, line: 2075, size: 472, align: 8, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !830, file: !4, line: 2076, baseType: !816, size: 408, align: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !830, file: !4, line: 2078, baseType: !788, size: 32, align: 32, offset: 408)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "propertyListSize", scope: !830, file: !4, line: 2079, baseType: !788, size: 32, align: 32, offset: 440)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !789, line: 172, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !791, line: 40, baseType: !841)
!841 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!842 = !{!843, !850, !854, !855}
!843 = distinct !DIGlobalVariable(name: "initializedTable", scope: !844, file: !845, line: 972, type: !849, isLocal: true, isDefinition: true, variable: i8* @VixMsgInitializeObfuscationMapping.initializedTable)
!844 = distinct !DISubprogram(name: "VixMsgInitializeObfuscationMapping", scope: !845, file: !845, line: 969, type: !846, isLocal: true, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!845 = !DIFile(filename: "foundryMsg.c", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!846 = !DISubroutineType(types: !847)
!847 = !{null}
!848 = !{}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !789, line: 230, baseType: !827)
!850 = distinct !DIGlobalVariable(name: "ObfuscatedToPlainCharMap", scope: !0, file: !845, line: 38, type: !851, isLocal: true, isDefinition: true, variable: [256 x i8]* @ObfuscatedToPlainCharMap)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 2048, align: 8, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 256)
!854 = distinct !DIGlobalVariable(name: "PlainToObfuscatedCharMap", scope: !0, file: !845, line: 37, type: !851, isLocal: true, isDefinition: true, variable: [256 x i8]* @PlainToObfuscatedCharMap)
!855 = distinct !DIGlobalVariable(name: "vixCommandInfoTable", scope: !0, file: !845, line: 73, type: !856, isLocal: true, isDefinition: true, variable: [209 x %struct.VixCommandInfo]* @vixCommandInfoTable)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 40128, align: 64, elements: !867)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandInfo", file: !845, line: 51, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixCommandInfo", file: !845, line: 46, size: 192, align: 64, elements: !860)
!860 = !{!861, !863, !864, !866}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "opCode", scope: !859, file: !845, line: 47, baseType: !862, size: 32, align: 32)
!862 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "commandName", scope: !859, file: !845, line: 48, baseType: !835, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !859, file: !845, line: 49, baseType: !865, size: 32, align: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandSecurityCategory", file: !4, line: 2115, baseType: !293)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !859, file: !845, line: 50, baseType: !849, size: 8, align: 8, offset: 160)
!867 = !{!868}
!868 = !DISubrange(count: 209)
!869 = !{i32 2, !"Dwarf Version", i32 4}
!870 = !{i32 2, !"Debug Info Version", i32 3}
!871 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!872 = distinct !DISubprogram(name: "VixMsg_AllocResponseMsg", scope: !845, file: !845, line: 503, type: !873, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!873 = !DISubroutineType(types: !874)
!874 = !{!875, !876, !878, !788, !879, !881, !883}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixError", file: !14, line: 79, baseType: !806)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !880, line: 216, baseType: !808)
!880 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!884 = !DILocalVariable(name: "requestHeader", arg: 1, scope: !872, file: !845, line: 503, type: !876)
!885 = !DIExpression()
!886 = !DILocation(line: 503, column: 56, scope: !872)
!887 = !DILocalVariable(name: "error", arg: 2, scope: !872, file: !845, line: 504, type: !878)
!888 = !DILocation(line: 504, column: 34, scope: !872)
!889 = !DILocalVariable(name: "additionalError", arg: 3, scope: !872, file: !845, line: 505, type: !788)
!890 = !DILocation(line: 505, column: 32, scope: !872)
!891 = !DILocalVariable(name: "responseBodyLength", arg: 4, scope: !872, file: !845, line: 506, type: !879)
!892 = !DILocation(line: 506, column: 32, scope: !872)
!893 = !DILocalVariable(name: "responseBody", arg: 5, scope: !872, file: !845, line: 507, type: !881)
!894 = !DILocation(line: 507, column: 37, scope: !872)
!895 = !DILocalVariable(name: "responseMsgLength", arg: 6, scope: !872, file: !845, line: 508, type: !883)
!896 = !DILocation(line: 508, column: 33, scope: !872)
!897 = !DILocalVariable(name: "responseBuffer", scope: !872, file: !845, line: 510, type: !826)
!898 = !DILocation(line: 510, column: 10, scope: !872)
!899 = !DILocalVariable(name: "responseHeader", scope: !872, file: !845, line: 511, type: !779)
!900 = !DILocation(line: 511, column: 30, scope: !872)
!901 = !DILocalVariable(name: "totalMessageSize", scope: !872, file: !845, line: 512, type: !879)
!902 = !DILocation(line: 512, column: 11, scope: !872)
!903 = !DILocation(line: 519, column: 58, scope: !872)
!904 = !DILocation(line: 519, column: 56, scope: !872)
!905 = !DILocation(line: 519, column: 21, scope: !872)
!906 = !DILocation(line: 520, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !872, file: !845, line: 520, column: 8)
!908 = !DILocation(line: 520, column: 25, scope: !907)
!909 = !DILocation(line: 520, column: 8, scope: !872)
!910 = !DILocation(line: 528, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !845, line: 520, column: 47)
!912 = !DILocation(line: 531, column: 38, scope: !872)
!913 = !DILocation(line: 531, column: 21, scope: !872)
!914 = !DILocation(line: 531, column: 19, scope: !872)
!915 = !DILocation(line: 532, column: 50, scope: !872)
!916 = !DILocation(line: 532, column: 21, scope: !872)
!917 = !DILocation(line: 532, column: 19, scope: !872)
!918 = !DILocation(line: 534, column: 27, scope: !872)
!919 = !DILocation(line: 535, column: 27, scope: !872)
!920 = !DILocation(line: 536, column: 27, scope: !872)
!921 = !DILocation(line: 537, column: 27, scope: !872)
!922 = !DILocation(line: 538, column: 27, scope: !872)
!923 = !DILocation(line: 534, column: 4, scope: !872)
!924 = !DILocation(line: 540, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !872, file: !845, line: 540, column: 8)
!926 = !DILocation(line: 540, column: 28, scope: !925)
!927 = !DILocation(line: 540, column: 33, scope: !925)
!928 = !DILocation(line: 540, column: 37, scope: !929)
!929 = !DILexicalBlockFile(scope: !925, file: !845, discriminator: 1)
!930 = !DILocation(line: 540, column: 36, scope: !929)
!931 = !DILocation(line: 540, column: 8, scope: !929)
!932 = !DILocation(line: 541, column: 14, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !845, line: 540, column: 52)
!934 = !DILocation(line: 541, column: 29, scope: !933)
!935 = !DILocation(line: 542, column: 14, scope: !933)
!936 = !DILocation(line: 543, column: 14, scope: !933)
!937 = !DILocation(line: 541, column: 7, scope: !933)
!938 = !DILocation(line: 544, column: 4, scope: !933)
!939 = !DILocation(line: 546, column: 15, scope: !940)
!940 = distinct !DILexicalBlock(scope: !872, file: !845, line: 546, column: 7)
!941 = !DILocation(line: 546, column: 12, scope: !940)
!942 = !DILocation(line: 546, column: 7, scope: !872)
!943 = !DILocation(line: 547, column: 28, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !845, line: 546, column: 34)
!945 = !DILocation(line: 547, column: 8, scope: !944)
!946 = !DILocation(line: 547, column: 26, scope: !944)
!947 = !DILocation(line: 548, column: 4, scope: !944)
!948 = !DILocation(line: 550, column: 11, scope: !872)
!949 = !DILocation(line: 550, column: 4, scope: !872)
!950 = !DILocation(line: 551, column: 1, scope: !872)
!951 = distinct !DISubprogram(name: "VixMsg_InitResponseMsg", scope: !845, file: !845, line: 571, type: !952, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !779, !876, !878, !788, !879}
!954 = !DILocalVariable(name: "responseHeader", arg: 1, scope: !951, file: !845, line: 571, type: !779)
!955 = !DILocation(line: 571, column: 50, scope: !951)
!956 = !DILocalVariable(name: "requestHeader", arg: 2, scope: !951, file: !845, line: 572, type: !876)
!957 = !DILocation(line: 572, column: 55, scope: !951)
!958 = !DILocalVariable(name: "error", arg: 3, scope: !951, file: !845, line: 573, type: !878)
!959 = !DILocation(line: 573, column: 33, scope: !951)
!960 = !DILocalVariable(name: "additionalError", arg: 4, scope: !951, file: !845, line: 574, type: !788)
!961 = !DILocation(line: 574, column: 31, scope: !951)
!962 = !DILocalVariable(name: "totalMessageSize", arg: 5, scope: !951, file: !845, line: 575, type: !879)
!963 = !DILocation(line: 575, column: 31, scope: !951)
!964 = !DILocalVariable(name: "responseBodyLength", scope: !951, file: !845, line: 577, type: !879)
!965 = !DILocation(line: 577, column: 11, scope: !951)
!966 = !DILocation(line: 582, column: 25, scope: !951)
!967 = !DILocation(line: 582, column: 42, scope: !951)
!968 = !DILocation(line: 582, column: 23, scope: !951)
!969 = !DILocation(line: 587, column: 4, scope: !951)
!970 = !DILocation(line: 587, column: 20, scope: !951)
!971 = !DILocation(line: 587, column: 33, scope: !951)
!972 = !DILocation(line: 587, column: 39, scope: !951)
!973 = !DILocation(line: 588, column: 4, scope: !951)
!974 = !DILocation(line: 588, column: 20, scope: !951)
!975 = !DILocation(line: 588, column: 33, scope: !951)
!976 = !DILocation(line: 588, column: 48, scope: !951)
!977 = !DILocation(line: 589, column: 54, scope: !951)
!978 = !DILocation(line: 589, column: 4, scope: !951)
!979 = !DILocation(line: 589, column: 20, scope: !951)
!980 = !DILocation(line: 589, column: 33, scope: !951)
!981 = !DILocation(line: 589, column: 52, scope: !951)
!982 = !DILocation(line: 590, column: 4, scope: !951)
!983 = !DILocation(line: 590, column: 20, scope: !951)
!984 = !DILocation(line: 590, column: 33, scope: !951)
!985 = !DILocation(line: 590, column: 46, scope: !951)
!986 = !DILocation(line: 591, column: 46, scope: !951)
!987 = !DILocation(line: 591, column: 4, scope: !951)
!988 = !DILocation(line: 591, column: 20, scope: !951)
!989 = !DILocation(line: 591, column: 33, scope: !951)
!990 = !DILocation(line: 591, column: 44, scope: !951)
!991 = !DILocation(line: 592, column: 4, scope: !951)
!992 = !DILocation(line: 592, column: 20, scope: !951)
!993 = !DILocation(line: 592, column: 33, scope: !951)
!994 = !DILocation(line: 592, column: 50, scope: !951)
!995 = !DILocation(line: 593, column: 4, scope: !951)
!996 = !DILocation(line: 593, column: 20, scope: !951)
!997 = !DILocation(line: 593, column: 33, scope: !951)
!998 = !DILocation(line: 593, column: 45, scope: !951)
!999 = !DILocation(line: 594, column: 15, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !951, file: !845, line: 594, column: 7)
!1001 = !DILocation(line: 594, column: 12, scope: !1000)
!1002 = !DILocation(line: 594, column: 7, scope: !951)
!1003 = !DILocation(line: 595, column: 39, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !845, line: 594, column: 30)
!1005 = !DILocation(line: 595, column: 54, scope: !1004)
!1006 = !DILocation(line: 595, column: 7, scope: !1004)
!1007 = !DILocation(line: 595, column: 23, scope: !1004)
!1008 = !DILocation(line: 595, column: 37, scope: !1004)
!1009 = !DILocation(line: 596, column: 4, scope: !1004)
!1010 = !DILocation(line: 597, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !845, line: 596, column: 11)
!1012 = !DILocation(line: 597, column: 23, scope: !1011)
!1013 = !DILocation(line: 597, column: 37, scope: !1011)
!1014 = !DILocation(line: 599, column: 4, scope: !951)
!1015 = !DILocation(line: 599, column: 20, scope: !951)
!1016 = !DILocation(line: 599, column: 34, scope: !951)
!1017 = !DILocation(line: 600, column: 4, scope: !951)
!1018 = !DILocation(line: 600, column: 20, scope: !951)
!1019 = !DILocation(line: 600, column: 29, scope: !951)
!1020 = !DILocation(line: 601, column: 28, scope: !951)
!1021 = !DILocation(line: 601, column: 4, scope: !951)
!1022 = !DILocation(line: 601, column: 20, scope: !951)
!1023 = !DILocation(line: 601, column: 26, scope: !951)
!1024 = !DILocation(line: 602, column: 38, scope: !951)
!1025 = !DILocation(line: 602, column: 4, scope: !951)
!1026 = !DILocation(line: 602, column: 20, scope: !951)
!1027 = !DILocation(line: 602, column: 36, scope: !951)
!1028 = !DILocation(line: 603, column: 4, scope: !951)
!1029 = !DILocation(line: 603, column: 20, scope: !951)
!1030 = !DILocation(line: 603, column: 36, scope: !951)
!1031 = !DILocation(line: 604, column: 1, scope: !951)
!1032 = distinct !DISubprogram(name: "VixMsg_AllocRequestMsg", scope: !845, file: !845, line: 624, type: !1033, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!1035, !879, !862, !806, !862, !835}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!1036 = !DILocalVariable(name: "msgHeaderAndBodyLength", arg: 1, scope: !1032, file: !845, line: 624, type: !879)
!1037 = !DILocation(line: 624, column: 31, scope: !1032)
!1038 = !DILocalVariable(name: "opCode", arg: 2, scope: !1032, file: !845, line: 625, type: !862)
!1039 = !DILocation(line: 625, column: 28, scope: !1032)
!1040 = !DILocalVariable(name: "cookie", arg: 3, scope: !1032, file: !845, line: 626, type: !806)
!1041 = !DILocation(line: 626, column: 31, scope: !1032)
!1042 = !DILocalVariable(name: "credentialType", arg: 4, scope: !1032, file: !845, line: 627, type: !862)
!1043 = !DILocation(line: 627, column: 28, scope: !1032)
!1044 = !DILocalVariable(name: "credential", arg: 5, scope: !1032, file: !845, line: 628, type: !835)
!1045 = !DILocation(line: 628, column: 36, scope: !1032)
!1046 = !DILocalVariable(name: "totalMessageSize", scope: !1032, file: !845, line: 630, type: !879)
!1047 = !DILocation(line: 630, column: 11, scope: !1032)
!1048 = !DILocalVariable(name: "commandRequest", scope: !1032, file: !845, line: 631, type: !815)
!1049 = !DILocation(line: 631, column: 29, scope: !1032)
!1050 = !DILocalVariable(name: "providedCredentialLength", scope: !1032, file: !845, line: 632, type: !879)
!1051 = !DILocation(line: 632, column: 11, scope: !1032)
!1052 = !DILocalVariable(name: "totalCredentialLength", scope: !1032, file: !845, line: 633, type: !879)
!1053 = !DILocation(line: 633, column: 11, scope: !1032)
!1054 = !DILocalVariable(name: "destPtr", scope: !1032, file: !845, line: 634, type: !826)
!1055 = !DILocation(line: 634, column: 10, scope: !1032)
!1056 = !DILocation(line: 636, column: 14, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1032, file: !845, line: 636, column: 8)
!1058 = !DILocation(line: 636, column: 11, scope: !1057)
!1059 = !DILocation(line: 637, column: 7, scope: !1057)
!1060 = !DILocation(line: 637, column: 16, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1057, file: !845, discriminator: 1)
!1062 = !DILocation(line: 637, column: 13, scope: !1061)
!1063 = !DILocation(line: 638, column: 7, scope: !1057)
!1064 = !DILocation(line: 638, column: 16, scope: !1061)
!1065 = !DILocation(line: 638, column: 13, scope: !1061)
!1066 = !DILocation(line: 639, column: 7, scope: !1057)
!1067 = !DILocation(line: 639, column: 16, scope: !1061)
!1068 = !DILocation(line: 639, column: 13, scope: !1061)
!1069 = !DILocation(line: 640, column: 7, scope: !1057)
!1070 = !DILocation(line: 640, column: 17, scope: !1061)
!1071 = !DILocation(line: 640, column: 14, scope: !1061)
!1072 = !DILocation(line: 641, column: 7, scope: !1057)
!1073 = !DILocation(line: 641, column: 17, scope: !1061)
!1074 = !DILocation(line: 641, column: 14, scope: !1061)
!1075 = !DILocation(line: 636, column: 8, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1032, file: !845, discriminator: 1)
!1077 = !DILocation(line: 645, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !845, line: 645, column: 10)
!1079 = distinct !DILexicalBlock(scope: !1057, file: !845, line: 641, column: 34)
!1080 = !DILocation(line: 645, column: 15, scope: !1078)
!1081 = !DILocation(line: 645, column: 10, scope: !1079)
!1082 = !DILocation(line: 646, column: 44, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !845, line: 645, column: 30)
!1084 = !DILocation(line: 646, column: 37, scope: !1083)
!1085 = !DILocation(line: 646, column: 35, scope: !1083)
!1086 = !DILocation(line: 647, column: 35, scope: !1083)
!1087 = !DILocation(line: 647, column: 32, scope: !1083)
!1088 = !DILocation(line: 648, column: 7, scope: !1083)
!1089 = !DILocation(line: 652, column: 29, scope: !1079)
!1090 = !DILocation(line: 653, column: 4, scope: !1079)
!1091 = !DILocation(line: 654, column: 29, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1057, file: !845, line: 653, column: 11)
!1093 = !DILocation(line: 657, column: 23, scope: !1032)
!1094 = !DILocation(line: 657, column: 48, scope: !1032)
!1095 = !DILocation(line: 657, column: 46, scope: !1032)
!1096 = !DILocation(line: 657, column: 21, scope: !1032)
!1097 = !DILocation(line: 658, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1032, file: !845, line: 658, column: 8)
!1099 = !DILocation(line: 658, column: 25, scope: !1098)
!1100 = !DILocation(line: 658, column: 8, scope: !1032)
!1101 = !DILocation(line: 666, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !845, line: 658, column: 34)
!1103 = !DILocation(line: 670, column: 47, scope: !1032)
!1104 = !DILocation(line: 670, column: 25, scope: !1032)
!1105 = !DILocation(line: 669, column: 21, scope: !1032)
!1106 = !DILocation(line: 669, column: 19, scope: !1032)
!1107 = !DILocation(line: 672, column: 4, scope: !1032)
!1108 = !DILocation(line: 672, column: 20, scope: !1032)
!1109 = !DILocation(line: 672, column: 33, scope: !1032)
!1110 = !DILocation(line: 672, column: 39, scope: !1032)
!1111 = !DILocation(line: 673, column: 4, scope: !1032)
!1112 = !DILocation(line: 673, column: 20, scope: !1032)
!1113 = !DILocation(line: 673, column: 33, scope: !1032)
!1114 = !DILocation(line: 673, column: 48, scope: !1032)
!1115 = !DILocation(line: 675, column: 7, scope: !1032)
!1116 = !DILocation(line: 675, column: 32, scope: !1032)
!1117 = !DILocation(line: 675, column: 30, scope: !1032)
!1118 = !DILocation(line: 674, column: 4, scope: !1032)
!1119 = !DILocation(line: 674, column: 20, scope: !1032)
!1120 = !DILocation(line: 674, column: 33, scope: !1032)
!1121 = !DILocation(line: 674, column: 52, scope: !1032)
!1122 = !DILocation(line: 676, column: 4, scope: !1032)
!1123 = !DILocation(line: 676, column: 20, scope: !1032)
!1124 = !DILocation(line: 676, column: 33, scope: !1032)
!1125 = !DILocation(line: 676, column: 46, scope: !1032)
!1126 = !DILocation(line: 677, column: 46, scope: !1032)
!1127 = !DILocation(line: 677, column: 69, scope: !1032)
!1128 = !DILocation(line: 677, column: 4, scope: !1032)
!1129 = !DILocation(line: 677, column: 20, scope: !1032)
!1130 = !DILocation(line: 677, column: 33, scope: !1032)
!1131 = !DILocation(line: 677, column: 44, scope: !1032)
!1132 = !DILocation(line: 679, column: 52, scope: !1032)
!1133 = !DILocation(line: 679, column: 4, scope: !1032)
!1134 = !DILocation(line: 679, column: 20, scope: !1032)
!1135 = !DILocation(line: 679, column: 33, scope: !1032)
!1136 = !DILocation(line: 679, column: 50, scope: !1032)
!1137 = !DILocation(line: 680, column: 4, scope: !1032)
!1138 = !DILocation(line: 680, column: 20, scope: !1032)
!1139 = !DILocation(line: 680, column: 33, scope: !1032)
!1140 = !DILocation(line: 680, column: 45, scope: !1032)
!1141 = !DILocation(line: 682, column: 29, scope: !1032)
!1142 = !DILocation(line: 682, column: 4, scope: !1032)
!1143 = !DILocation(line: 682, column: 20, scope: !1032)
!1144 = !DILocation(line: 682, column: 27, scope: !1032)
!1145 = !DILocation(line: 683, column: 29, scope: !1032)
!1146 = !DILocation(line: 683, column: 4, scope: !1032)
!1147 = !DILocation(line: 683, column: 20, scope: !1032)
!1148 = !DILocation(line: 683, column: 27, scope: !1032)
!1149 = !DILocation(line: 684, column: 4, scope: !1032)
!1150 = !DILocation(line: 684, column: 20, scope: !1032)
!1151 = !DILocation(line: 684, column: 28, scope: !1032)
!1152 = !DILocation(line: 685, column: 4, scope: !1032)
!1153 = !DILocation(line: 685, column: 20, scope: !1032)
!1154 = !DILocation(line: 685, column: 33, scope: !1032)
!1155 = !DILocation(line: 687, column: 41, scope: !1032)
!1156 = !DILocation(line: 687, column: 4, scope: !1032)
!1157 = !DILocation(line: 687, column: 20, scope: !1032)
!1158 = !DILocation(line: 687, column: 39, scope: !1032)
!1159 = !DILocation(line: 689, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1032, file: !845, line: 689, column: 8)
!1161 = !DILocation(line: 689, column: 11, scope: !1160)
!1162 = !DILocation(line: 690, column: 10, scope: !1160)
!1163 = !DILocation(line: 690, column: 19, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1160, file: !845, discriminator: 1)
!1165 = !DILocation(line: 690, column: 16, scope: !1164)
!1166 = !DILocation(line: 691, column: 10, scope: !1160)
!1167 = !DILocation(line: 691, column: 19, scope: !1164)
!1168 = !DILocation(line: 691, column: 16, scope: !1164)
!1169 = !DILocation(line: 692, column: 10, scope: !1160)
!1170 = !DILocation(line: 692, column: 19, scope: !1164)
!1171 = !DILocation(line: 692, column: 16, scope: !1164)
!1172 = !DILocation(line: 693, column: 10, scope: !1160)
!1173 = !DILocation(line: 693, column: 20, scope: !1164)
!1174 = !DILocation(line: 693, column: 17, scope: !1164)
!1175 = !DILocation(line: 694, column: 10, scope: !1160)
!1176 = !DILocation(line: 694, column: 20, scope: !1164)
!1177 = !DILocation(line: 694, column: 17, scope: !1164)
!1178 = !DILocation(line: 689, column: 8, scope: !1076)
!1179 = !DILocation(line: 695, column: 26, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1160, file: !845, line: 694, column: 37)
!1181 = !DILocation(line: 695, column: 17, scope: !1180)
!1182 = !DILocation(line: 695, column: 15, scope: !1180)
!1183 = !DILocation(line: 696, column: 18, scope: !1180)
!1184 = !DILocation(line: 696, column: 34, scope: !1180)
!1185 = !DILocation(line: 696, column: 47, scope: !1180)
!1186 = !DILocation(line: 696, column: 15, scope: !1180)
!1187 = !DILocation(line: 697, column: 18, scope: !1180)
!1188 = !DILocation(line: 697, column: 34, scope: !1180)
!1189 = !DILocation(line: 697, column: 47, scope: !1180)
!1190 = !DILocation(line: 697, column: 15, scope: !1180)
!1191 = !DILocation(line: 698, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1180, file: !845, line: 698, column: 10)
!1193 = !DILocation(line: 698, column: 15, scope: !1192)
!1194 = !DILocation(line: 698, column: 10, scope: !1180)
!1195 = !DILocation(line: 699, column: 21, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !845, line: 698, column: 30)
!1197 = !DILocation(line: 699, column: 30, scope: !1196)
!1198 = !DILocation(line: 699, column: 42, scope: !1196)
!1199 = !DILocation(line: 699, column: 67, scope: !1196)
!1200 = !DILocation(line: 699, column: 10, scope: !1196)
!1201 = !DILocation(line: 700, column: 21, scope: !1196)
!1202 = !DILocation(line: 700, column: 18, scope: !1196)
!1203 = !DILocation(line: 701, column: 7, scope: !1196)
!1204 = !DILocation(line: 702, column: 16, scope: !1180)
!1205 = !DILocation(line: 702, column: 20, scope: !1180)
!1206 = !DILocation(line: 703, column: 4, scope: !1180)
!1207 = !DILocation(line: 705, column: 11, scope: !1032)
!1208 = !DILocation(line: 705, column: 4, scope: !1032)
!1209 = !DILocation(line: 706, column: 1, scope: !1032)
!1210 = distinct !DISubprogram(name: "VixMsg_ValidateMessage", scope: !845, file: !845, line: 725, type: !1211, isLocal: false, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!878, !881, !879}
!1213 = !DILocalVariable(name: "vMsg", arg: 1, scope: !1210, file: !845, line: 725, type: !881)
!1214 = !DILocation(line: 725, column: 36, scope: !1210)
!1215 = !DILocalVariable(name: "msgLength", arg: 2, scope: !1210, file: !845, line: 726, type: !879)
!1216 = !DILocation(line: 726, column: 31, scope: !1210)
!1217 = !DILocalVariable(name: "message", scope: !1210, file: !845, line: 728, type: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!1220 = !DILocation(line: 728, column: 24, scope: !1210)
!1221 = !DILocation(line: 730, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1210, file: !845, line: 730, column: 8)
!1223 = !DILocation(line: 730, column: 13, scope: !1222)
!1224 = !DILocation(line: 730, column: 22, scope: !1222)
!1225 = !DILocation(line: 730, column: 26, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1222, file: !845, discriminator: 1)
!1227 = !DILocation(line: 730, column: 36, scope: !1226)
!1228 = !DILocation(line: 730, column: 8, scope: !1226)
!1229 = !DILocation(line: 731, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !845, line: 730, column: 56)
!1231 = !DILocation(line: 749, column: 14, scope: !1210)
!1232 = !DILocation(line: 749, column: 12, scope: !1210)
!1233 = !DILocation(line: 750, column: 23, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1210, file: !845, line: 750, column: 8)
!1235 = !DILocation(line: 750, column: 32, scope: !1234)
!1236 = !DILocation(line: 750, column: 20, scope: !1234)
!1237 = !DILocation(line: 751, column: 10, scope: !1234)
!1238 = !DILocation(line: 751, column: 14, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1234, file: !845, discriminator: 1)
!1240 = !DILocation(line: 751, column: 23, scope: !1239)
!1241 = !DILocation(line: 751, column: 36, scope: !1239)
!1242 = !DILocation(line: 752, column: 10, scope: !1234)
!1243 = !DILocation(line: 752, column: 14, scope: !1239)
!1244 = !DILocation(line: 752, column: 23, scope: !1239)
!1245 = !DILocation(line: 753, column: 27, scope: !1234)
!1246 = !DILocation(line: 753, column: 36, scope: !1234)
!1247 = !DILocation(line: 753, column: 19, scope: !1234)
!1248 = !DILocation(line: 753, column: 51, scope: !1234)
!1249 = !DILocation(line: 753, column: 60, scope: !1234)
!1250 = !DILocation(line: 753, column: 49, scope: !1234)
!1251 = !DILocation(line: 753, column: 73, scope: !1234)
!1252 = !DILocation(line: 753, column: 82, scope: !1234)
!1253 = !DILocation(line: 753, column: 71, scope: !1234)
!1254 = !DILocation(line: 753, column: 16, scope: !1234)
!1255 = !DILocation(line: 754, column: 10, scope: !1234)
!1256 = !DILocation(line: 754, column: 14, scope: !1239)
!1257 = !DILocation(line: 754, column: 23, scope: !1239)
!1258 = !DILocation(line: 754, column: 42, scope: !1239)
!1259 = !DILocation(line: 755, column: 10, scope: !1234)
!1260 = !DILocation(line: 755, column: 19, scope: !1239)
!1261 = !DILocation(line: 755, column: 28, scope: !1239)
!1262 = !DILocation(line: 755, column: 16, scope: !1239)
!1263 = !DILocation(line: 750, column: 8, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1210, file: !845, discriminator: 1)
!1265 = !DILocation(line: 756, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1234, file: !845, line: 755, column: 45)
!1267 = !DILocation(line: 759, column: 4, scope: !1210)
!1268 = !DILocation(line: 760, column: 1, scope: !1210)
!1269 = distinct !DISubprogram(name: "VixMsg_ValidateRequestMsg", scope: !845, file: !845, line: 779, type: !1211, isLocal: false, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1270 = !DILocalVariable(name: "vMsg", arg: 1, scope: !1269, file: !845, line: 779, type: !881)
!1271 = !DILocation(line: 779, column: 39, scope: !1269)
!1272 = !DILocalVariable(name: "msgLength", arg: 2, scope: !1269, file: !845, line: 780, type: !879)
!1273 = !DILocation(line: 780, column: 34, scope: !1269)
!1274 = !DILocalVariable(name: "err", scope: !1269, file: !845, line: 782, type: !878)
!1275 = !DILocation(line: 782, column: 13, scope: !1269)
!1276 = !DILocalVariable(name: "message", scope: !1269, file: !845, line: 783, type: !876)
!1277 = !DILocation(line: 783, column: 35, scope: !1269)
!1278 = !DILocation(line: 785, column: 33, scope: !1269)
!1279 = !DILocation(line: 785, column: 39, scope: !1269)
!1280 = !DILocation(line: 785, column: 10, scope: !1269)
!1281 = !DILocation(line: 785, column: 8, scope: !1269)
!1282 = !DILocation(line: 786, column: 18, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1269, file: !845, line: 786, column: 8)
!1284 = !DILocation(line: 786, column: 15, scope: !1283)
!1285 = !DILocation(line: 786, column: 8, scope: !1269)
!1286 = !DILocation(line: 787, column: 14, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !845, line: 786, column: 23)
!1288 = !DILocation(line: 787, column: 7, scope: !1287)
!1289 = !DILocation(line: 793, column: 14, scope: !1269)
!1290 = !DILocation(line: 793, column: 12, scope: !1269)
!1291 = !DILocation(line: 794, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1269, file: !845, line: 794, column: 8)
!1293 = !DILocation(line: 794, column: 17, scope: !1292)
!1294 = !DILocation(line: 794, column: 30, scope: !1292)
!1295 = !DILocation(line: 794, column: 43, scope: !1292)
!1296 = !DILocation(line: 794, column: 8, scope: !1269)
!1297 = !DILocation(line: 795, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !845, line: 794, column: 78)
!1299 = !DILocation(line: 798, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1269, file: !845, line: 798, column: 8)
!1301 = !DILocation(line: 798, column: 17, scope: !1300)
!1302 = !DILocation(line: 798, column: 30, scope: !1300)
!1303 = !DILocation(line: 798, column: 49, scope: !1300)
!1304 = !DILocation(line: 798, column: 8, scope: !1269)
!1305 = !DILocation(line: 799, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !845, line: 798, column: 58)
!1307 = !DILocation(line: 802, column: 32, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1269, file: !845, line: 802, column: 8)
!1309 = !DILocation(line: 802, column: 41, scope: !1308)
!1310 = !DILocation(line: 802, column: 54, scope: !1308)
!1311 = !DILocation(line: 802, column: 30, scope: !1308)
!1312 = !DILocation(line: 802, column: 8, scope: !1269)
!1313 = !DILocation(line: 803, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !845, line: 802, column: 68)
!1315 = !DILocation(line: 806, column: 48, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1269, file: !845, line: 806, column: 8)
!1317 = !DILocation(line: 806, column: 57, scope: !1316)
!1318 = !DILocation(line: 806, column: 46, scope: !1316)
!1319 = !DILocation(line: 806, column: 71, scope: !1316)
!1320 = !DILocation(line: 807, column: 9, scope: !1316)
!1321 = !DILocation(line: 807, column: 18, scope: !1316)
!1322 = !DILocation(line: 807, column: 31, scope: !1316)
!1323 = !DILocation(line: 808, column: 19, scope: !1316)
!1324 = !DILocation(line: 808, column: 28, scope: !1316)
!1325 = !DILocation(line: 808, column: 41, scope: !1316)
!1326 = !DILocation(line: 808, column: 11, scope: !1316)
!1327 = !DILocation(line: 809, column: 11, scope: !1316)
!1328 = !DILocation(line: 809, column: 20, scope: !1316)
!1329 = !DILocation(line: 809, column: 33, scope: !1316)
!1330 = !DILocation(line: 808, column: 54, scope: !1316)
!1331 = !DILocation(line: 810, column: 11, scope: !1316)
!1332 = !DILocation(line: 810, column: 20, scope: !1316)
!1333 = !DILocation(line: 810, column: 33, scope: !1316)
!1334 = !DILocation(line: 809, column: 44, scope: !1316)
!1335 = !DILocation(line: 810, column: 50, scope: !1316)
!1336 = !DILocation(line: 807, column: 50, scope: !1316)
!1337 = !DILocation(line: 806, column: 8, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1269, file: !845, discriminator: 1)
!1339 = !DILocation(line: 812, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1316, file: !845, line: 811, column: 39)
!1341 = !DILocation(line: 815, column: 4, scope: !1269)
!1342 = !DILocation(line: 816, column: 1, scope: !1269)
!1343 = distinct !DISubprogram(name: "VixMsg_ValidateResponseMsg", scope: !845, file: !845, line: 835, type: !1211, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1344 = !DILocalVariable(name: "vMsg", arg: 1, scope: !1343, file: !845, line: 835, type: !881)
!1345 = !DILocation(line: 835, column: 40, scope: !1343)
!1346 = !DILocalVariable(name: "msgLength", arg: 2, scope: !1343, file: !845, line: 836, type: !879)
!1347 = !DILocation(line: 836, column: 35, scope: !1343)
!1348 = !DILocalVariable(name: "err", scope: !1343, file: !845, line: 838, type: !878)
!1349 = !DILocation(line: 838, column: 13, scope: !1343)
!1350 = !DILocalVariable(name: "message", scope: !1343, file: !845, line: 839, type: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64, align: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!1353 = !DILocation(line: 839, column: 36, scope: !1343)
!1354 = !DILocation(line: 841, column: 16, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1343, file: !845, line: 841, column: 8)
!1356 = !DILocation(line: 841, column: 13, scope: !1355)
!1357 = !DILocation(line: 841, column: 22, scope: !1355)
!1358 = !DILocation(line: 841, column: 26, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1355, file: !845, discriminator: 1)
!1360 = !DILocation(line: 841, column: 36, scope: !1359)
!1361 = !DILocation(line: 841, column: 8, scope: !1359)
!1362 = !DILocation(line: 842, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1355, file: !845, line: 841, column: 56)
!1364 = !DILocation(line: 845, column: 33, scope: !1343)
!1365 = !DILocation(line: 845, column: 39, scope: !1343)
!1366 = !DILocation(line: 845, column: 10, scope: !1343)
!1367 = !DILocation(line: 845, column: 8, scope: !1343)
!1368 = !DILocation(line: 846, column: 18, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1343, file: !845, line: 846, column: 8)
!1370 = !DILocation(line: 846, column: 15, scope: !1369)
!1371 = !DILocation(line: 846, column: 8, scope: !1343)
!1372 = !DILocation(line: 847, column: 14, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !845, line: 846, column: 23)
!1374 = !DILocation(line: 847, column: 7, scope: !1373)
!1375 = !DILocation(line: 853, column: 14, scope: !1343)
!1376 = !DILocation(line: 853, column: 12, scope: !1343)
!1377 = !DILocation(line: 854, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1343, file: !845, line: 854, column: 8)
!1379 = !DILocation(line: 854, column: 17, scope: !1378)
!1380 = !DILocation(line: 854, column: 30, scope: !1378)
!1381 = !DILocation(line: 854, column: 43, scope: !1378)
!1382 = !DILocation(line: 854, column: 8, scope: !1343)
!1383 = !DILocation(line: 855, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !845, line: 854, column: 79)
!1385 = !DILocation(line: 858, column: 30, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1343, file: !845, line: 858, column: 8)
!1387 = !DILocation(line: 858, column: 39, scope: !1386)
!1388 = !DILocation(line: 858, column: 52, scope: !1386)
!1389 = !DILocation(line: 858, column: 28, scope: !1386)
!1390 = !DILocation(line: 858, column: 8, scope: !1343)
!1391 = !DILocation(line: 859, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !845, line: 858, column: 65)
!1393 = !DILocation(line: 862, column: 4, scope: !1343)
!1394 = !DILocation(line: 863, column: 1, scope: !1343)
!1395 = distinct !DISubprogram(name: "VixMsg_ParseWriteVariableRequest", scope: !845, file: !845, line: 887, type: !1396, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!878, !1398, !1409, !1409}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixMsgWriteVariableRequest", file: !4, line: 1384, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixMsgWriteVariableRequest", file: !4, line: 1374, size: 536, align: 8, elements: !1401)
!1401 = !{!1402, !1403, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1400, file: !4, line: 1375, baseType: !816, size: 408, align: 8)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "variableType", scope: !1400, file: !4, line: 1377, baseType: !1404, size: 32, align: 32, offset: 408)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !789, line: 174, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !791, line: 38, baseType: !862)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1400, file: !4, line: 1378, baseType: !1404, size: 32, align: 32, offset: 440)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nameLength", scope: !1400, file: !4, line: 1380, baseType: !788, size: 32, align: 32, offset: 472)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "valueLength", scope: !1400, file: !4, line: 1381, baseType: !788, size: 32, align: 32, offset: 504)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!1410 = !DILocalVariable(name: "msg", arg: 1, scope: !1395, file: !845, line: 887, type: !1398)
!1411 = !DILocation(line: 887, column: 62, scope: !1395)
!1412 = !DILocalVariable(name: "valueName", arg: 2, scope: !1395, file: !845, line: 888, type: !1409)
!1413 = !DILocation(line: 888, column: 41, scope: !1395)
!1414 = !DILocalVariable(name: "value", arg: 3, scope: !1395, file: !845, line: 889, type: !1409)
!1415 = !DILocation(line: 889, column: 41, scope: !1395)
!1416 = !DILocalVariable(name: "err", scope: !1395, file: !845, line: 891, type: !878)
!1417 = !DILocation(line: 891, column: 13, scope: !1395)
!1418 = !DILocalVariable(name: "valueNameLocal", scope: !1395, file: !845, line: 892, type: !826)
!1419 = !DILocation(line: 892, column: 10, scope: !1395)
!1420 = !DILocalVariable(name: "valueLocal", scope: !1395, file: !845, line: 893, type: !826)
!1421 = !DILocation(line: 893, column: 10, scope: !1395)
!1422 = !DILocalVariable(name: "headerAndBodyLength", scope: !1395, file: !845, line: 894, type: !806)
!1423 = !DILocation(line: 894, column: 11, scope: !1395)
!1424 = !DILocation(line: 896, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 896, column: 8)
!1426 = !DILocation(line: 896, column: 13, scope: !1425)
!1427 = !DILocation(line: 896, column: 21, scope: !1425)
!1428 = !DILocation(line: 896, column: 33, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1425, file: !845, discriminator: 1)
!1430 = !DILocation(line: 896, column: 30, scope: !1429)
!1431 = !DILocation(line: 896, column: 44, scope: !1429)
!1432 = !DILocation(line: 896, column: 56, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1425, file: !845, discriminator: 2)
!1434 = !DILocation(line: 896, column: 53, scope: !1433)
!1435 = !DILocation(line: 896, column: 8, scope: !1433)
!1436 = !DILocation(line: 898, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1425, file: !845, line: 896, column: 64)
!1438 = !DILocation(line: 899, column: 7, scope: !1437)
!1439 = !DILocation(line: 902, column: 5, scope: !1395)
!1440 = !DILocation(line: 902, column: 15, scope: !1395)
!1441 = !DILocation(line: 903, column: 5, scope: !1395)
!1442 = !DILocation(line: 903, column: 11, scope: !1395)
!1443 = !DILocation(line: 910, column: 36, scope: !1395)
!1444 = !DILocation(line: 911, column: 36, scope: !1395)
!1445 = !DILocation(line: 911, column: 41, scope: !1395)
!1446 = !DILocation(line: 911, column: 48, scope: !1395)
!1447 = !DILocation(line: 911, column: 61, scope: !1395)
!1448 = !DILocation(line: 910, column: 10, scope: !1395)
!1449 = !DILocation(line: 910, column: 8, scope: !1395)
!1450 = !DILocation(line: 912, column: 18, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 912, column: 8)
!1452 = !DILocation(line: 912, column: 15, scope: !1451)
!1453 = !DILocation(line: 912, column: 8, scope: !1395)
!1454 = !DILocation(line: 913, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !845, line: 912, column: 23)
!1456 = !DILocation(line: 916, column: 8, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 916, column: 8)
!1458 = !DILocation(line: 916, column: 13, scope: !1457)
!1459 = !DILocation(line: 916, column: 20, scope: !1457)
!1460 = !DILocation(line: 916, column: 33, scope: !1457)
!1461 = !DILocation(line: 916, column: 52, scope: !1457)
!1462 = !DILocation(line: 916, column: 8, scope: !1395)
!1463 = !DILocation(line: 917, column: 11, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1457, file: !845, line: 916, column: 67)
!1465 = !DILocation(line: 918, column: 7, scope: !1464)
!1466 = !DILocation(line: 921, column: 35, scope: !1395)
!1467 = !DILocation(line: 921, column: 40, scope: !1395)
!1468 = !DILocation(line: 921, column: 47, scope: !1395)
!1469 = !DILocation(line: 921, column: 60, scope: !1395)
!1470 = !DILocation(line: 921, column: 26, scope: !1395)
!1471 = !DILocation(line: 922, column: 31, scope: !1395)
!1472 = !DILocation(line: 922, column: 36, scope: !1395)
!1473 = !DILocation(line: 922, column: 43, scope: !1395)
!1474 = !DILocation(line: 922, column: 56, scope: !1395)
!1475 = !DILocation(line: 922, column: 29, scope: !1395)
!1476 = !DILocation(line: 921, column: 24, scope: !1395)
!1477 = !DILocation(line: 924, column: 8, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 924, column: 8)
!1479 = !DILocation(line: 925, column: 36, scope: !1478)
!1480 = !DILocation(line: 925, column: 41, scope: !1478)
!1481 = !DILocation(line: 925, column: 34, scope: !1478)
!1482 = !DILocation(line: 925, column: 52, scope: !1478)
!1483 = !DILocation(line: 926, column: 36, scope: !1478)
!1484 = !DILocation(line: 926, column: 41, scope: !1478)
!1485 = !DILocation(line: 926, column: 34, scope: !1478)
!1486 = !DILocation(line: 926, column: 53, scope: !1478)
!1487 = !DILocation(line: 924, column: 28, scope: !1478)
!1488 = !DILocation(line: 924, column: 8, scope: !1395)
!1489 = !DILocation(line: 927, column: 11, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1478, file: !845, line: 926, column: 59)
!1491 = !DILocation(line: 928, column: 7, scope: !1490)
!1492 = !DILocation(line: 931, column: 31, scope: !1395)
!1493 = !DILocation(line: 931, column: 22, scope: !1395)
!1494 = !DILocation(line: 931, column: 36, scope: !1395)
!1495 = !DILocation(line: 931, column: 19, scope: !1395)
!1496 = !DILocation(line: 932, column: 31, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 932, column: 8)
!1498 = !DILocation(line: 932, column: 36, scope: !1497)
!1499 = !DILocation(line: 932, column: 16, scope: !1497)
!1500 = !DILocation(line: 932, column: 13, scope: !1497)
!1501 = !DILocation(line: 932, column: 8, scope: !1395)
!1502 = !DILocation(line: 933, column: 11, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !845, line: 932, column: 49)
!1504 = !DILocation(line: 934, column: 7, scope: !1503)
!1505 = !DILocation(line: 937, column: 17, scope: !1395)
!1506 = !DILocation(line: 937, column: 34, scope: !1395)
!1507 = !DILocation(line: 937, column: 39, scope: !1395)
!1508 = !DILocation(line: 937, column: 32, scope: !1395)
!1509 = !DILocation(line: 937, column: 50, scope: !1395)
!1510 = !DILocation(line: 937, column: 15, scope: !1395)
!1511 = !DILocation(line: 938, column: 27, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1395, file: !845, line: 938, column: 8)
!1513 = !DILocation(line: 938, column: 32, scope: !1512)
!1514 = !DILocation(line: 938, column: 16, scope: !1512)
!1515 = !DILocation(line: 938, column: 13, scope: !1512)
!1516 = !DILocation(line: 938, column: 8, scope: !1395)
!1517 = !DILocation(line: 939, column: 11, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1512, file: !845, line: 938, column: 46)
!1519 = !DILocation(line: 940, column: 7, scope: !1518)
!1520 = !DILocation(line: 943, column: 17, scope: !1395)
!1521 = !DILocation(line: 943, column: 5, scope: !1395)
!1522 = !DILocation(line: 943, column: 15, scope: !1395)
!1523 = !DILocation(line: 944, column: 13, scope: !1395)
!1524 = !DILocation(line: 944, column: 5, scope: !1395)
!1525 = !DILocation(line: 944, column: 11, scope: !1395)
!1526 = !DILocation(line: 945, column: 8, scope: !1395)
!1527 = !DILocation(line: 945, column: 4, scope: !1395)
!1528 = !DILocation(line: 949, column: 11, scope: !1395)
!1529 = !DILocation(line: 949, column: 4, scope: !1395)
!1530 = distinct !DISubprogram(name: "VixMsg_ObfuscateNamePassword", scope: !845, file: !845, line: 1032, type: !1531, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!878, !835, !835, !1409}
!1533 = !DILocalVariable(name: "userName", arg: 1, scope: !1530, file: !845, line: 1032, type: !835)
!1534 = !DILocation(line: 1032, column: 42, scope: !1530)
!1535 = !DILocalVariable(name: "password", arg: 2, scope: !1530, file: !845, line: 1033, type: !835)
!1536 = !DILocation(line: 1033, column: 42, scope: !1530)
!1537 = !DILocalVariable(name: "result", arg: 3, scope: !1530, file: !845, line: 1034, type: !1409)
!1538 = !DILocation(line: 1034, column: 37, scope: !1530)
!1539 = !DILocalVariable(name: "err", scope: !1530, file: !845, line: 1036, type: !878)
!1540 = !DILocation(line: 1036, column: 13, scope: !1530)
!1541 = !DILocalVariable(name: "packedBuffer", scope: !1530, file: !845, line: 1037, type: !826)
!1542 = !DILocation(line: 1037, column: 10, scope: !1530)
!1543 = !DILocalVariable(name: "resultString", scope: !1530, file: !845, line: 1038, type: !826)
!1544 = !DILocation(line: 1038, column: 10, scope: !1530)
!1545 = !DILocalVariable(name: "destPtr", scope: !1530, file: !845, line: 1039, type: !826)
!1546 = !DILocation(line: 1039, column: 10, scope: !1530)
!1547 = !DILocalVariable(name: "packedBufferLength", scope: !1530, file: !845, line: 1040, type: !879)
!1548 = !DILocation(line: 1040, column: 11, scope: !1530)
!1549 = !DILocalVariable(name: "nameLength", scope: !1530, file: !845, line: 1041, type: !879)
!1550 = !DILocation(line: 1041, column: 11, scope: !1530)
!1551 = !DILocalVariable(name: "passwordLength", scope: !1530, file: !845, line: 1042, type: !879)
!1552 = !DILocation(line: 1042, column: 11, scope: !1530)
!1553 = !DILocation(line: 1044, column: 15, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1044, column: 7)
!1555 = !DILocation(line: 1044, column: 12, scope: !1554)
!1556 = !DILocation(line: 1044, column: 7, scope: !1530)
!1557 = !DILocation(line: 1045, column: 27, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !845, line: 1044, column: 25)
!1559 = !DILocation(line: 1045, column: 20, scope: !1558)
!1560 = !DILocation(line: 1045, column: 18, scope: !1558)
!1561 = !DILocation(line: 1046, column: 4, scope: !1558)
!1562 = !DILocation(line: 1047, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1047, column: 7)
!1564 = !DILocation(line: 1047, column: 12, scope: !1563)
!1565 = !DILocation(line: 1047, column: 7, scope: !1530)
!1566 = !DILocation(line: 1048, column: 31, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !845, line: 1047, column: 25)
!1568 = !DILocation(line: 1048, column: 24, scope: !1567)
!1569 = !DILocation(line: 1048, column: 22, scope: !1567)
!1570 = !DILocation(line: 1049, column: 4, scope: !1567)
!1571 = !DILocation(line: 1053, column: 25, scope: !1530)
!1572 = !DILocation(line: 1053, column: 36, scope: !1530)
!1573 = !DILocation(line: 1053, column: 42, scope: !1530)
!1574 = !DILocation(line: 1053, column: 40, scope: !1530)
!1575 = !DILocation(line: 1053, column: 57, scope: !1530)
!1576 = !DILocation(line: 1053, column: 23, scope: !1530)
!1577 = !DILocation(line: 1054, column: 43, scope: !1530)
!1578 = !DILocation(line: 1054, column: 19, scope: !1530)
!1579 = !DILocation(line: 1054, column: 17, scope: !1530)
!1580 = !DILocation(line: 1055, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1055, column: 8)
!1582 = !DILocation(line: 1055, column: 21, scope: !1581)
!1583 = !DILocation(line: 1055, column: 8, scope: !1530)
!1584 = !DILocation(line: 1056, column: 11, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !845, line: 1055, column: 29)
!1586 = !DILocation(line: 1057, column: 7, scope: !1585)
!1587 = !DILocation(line: 1060, column: 14, scope: !1530)
!1588 = !DILocation(line: 1060, column: 12, scope: !1530)
!1589 = !DILocation(line: 1061, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1061, column: 7)
!1591 = !DILocation(line: 1061, column: 12, scope: !1590)
!1592 = !DILocation(line: 1061, column: 7, scope: !1530)
!1593 = !DILocation(line: 1062, column: 18, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !845, line: 1061, column: 25)
!1595 = !DILocation(line: 1062, column: 27, scope: !1594)
!1596 = !DILocation(line: 1062, column: 37, scope: !1594)
!1597 = !DILocation(line: 1062, column: 48, scope: !1594)
!1598 = !DILocation(line: 1062, column: 7, scope: !1594)
!1599 = !DILocation(line: 1063, column: 18, scope: !1594)
!1600 = !DILocation(line: 1063, column: 15, scope: !1594)
!1601 = !DILocation(line: 1064, column: 4, scope: !1594)
!1602 = !DILocation(line: 1065, column: 13, scope: !1530)
!1603 = !DILocation(line: 1065, column: 17, scope: !1530)
!1604 = !DILocation(line: 1066, column: 15, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1066, column: 7)
!1606 = !DILocation(line: 1066, column: 12, scope: !1605)
!1607 = !DILocation(line: 1066, column: 7, scope: !1530)
!1608 = !DILocation(line: 1067, column: 18, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !845, line: 1066, column: 25)
!1610 = !DILocation(line: 1067, column: 27, scope: !1609)
!1611 = !DILocation(line: 1067, column: 37, scope: !1609)
!1612 = !DILocation(line: 1067, column: 52, scope: !1609)
!1613 = !DILocation(line: 1067, column: 7, scope: !1609)
!1614 = !DILocation(line: 1068, column: 18, scope: !1609)
!1615 = !DILocation(line: 1068, column: 15, scope: !1609)
!1616 = !DILocation(line: 1069, column: 4, scope: !1609)
!1617 = !DILocation(line: 1070, column: 13, scope: !1530)
!1618 = !DILocation(line: 1070, column: 17, scope: !1530)
!1619 = !DILocation(line: 1072, column: 29, scope: !1530)
!1620 = !DILocation(line: 1072, column: 43, scope: !1530)
!1621 = !DILocation(line: 1072, column: 10, scope: !1530)
!1622 = !DILocation(line: 1072, column: 8, scope: !1530)
!1623 = !DILocation(line: 1074, column: 8, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1074, column: 8)
!1625 = !DILocation(line: 1074, column: 12, scope: !1624)
!1626 = !DILocation(line: 1074, column: 8, scope: !1530)
!1627 = !DILocation(line: 1075, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !845, line: 1074, column: 23)
!1629 = !DILocation(line: 1074, column: 15, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1624, file: !845, discriminator: 1)
!1631 = !DILocation(line: 1079, column: 18, scope: !1530)
!1632 = !DILocation(line: 1079, column: 32, scope: !1530)
!1633 = !DILocation(line: 1079, column: 4, scope: !1530)
!1634 = !DILocation(line: 1081, column: 8, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1530, file: !845, line: 1081, column: 8)
!1636 = !DILocation(line: 1081, column: 12, scope: !1635)
!1637 = !DILocation(line: 1081, column: 8, scope: !1530)
!1638 = !DILocation(line: 1082, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !845, line: 1081, column: 23)
!1640 = !DILocation(line: 1082, column: 8, scope: !1639)
!1641 = !DILocation(line: 1082, column: 15, scope: !1639)
!1642 = !DILocation(line: 1083, column: 4, scope: !1639)
!1643 = !DILocation(line: 1085, column: 11, scope: !1530)
!1644 = !DILocation(line: 1085, column: 4, scope: !1530)
!1645 = distinct !DISubprogram(name: "VixMsg_MallocClientData", scope: !845, file: !845, line: 1812, type: !1646, isLocal: false, isDefinition: true, scopeLine: 1813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!814, !879}
!1648 = !DILocalVariable(name: "size", arg: 1, scope: !1645, file: !845, line: 1812, type: !879)
!1649 = !DILocation(line: 1812, column: 32, scope: !1645)
!1650 = !DILocation(line: 1814, column: 18, scope: !1645)
!1651 = !DILocation(line: 1814, column: 11, scope: !1645)
!1652 = !DILocation(line: 1814, column: 4, scope: !1645)
!1653 = distinct !DISubprogram(name: "VixMsgEncodeBuffer", scope: !845, file: !845, line: 1209, type: !1654, isLocal: true, isDefinition: true, scopeLine: 1213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!878, !837, !879, !849, !1409}
!1656 = !DILocalVariable(name: "buffer", arg: 1, scope: !1653, file: !845, line: 1209, type: !837)
!1657 = !DILocation(line: 1209, column: 33, scope: !1653)
!1658 = !DILocalVariable(name: "bufferLength", arg: 2, scope: !1653, file: !845, line: 1210, type: !879)
!1659 = !DILocation(line: 1210, column: 27, scope: !1653)
!1660 = !DILocalVariable(name: "includeEncodingId", arg: 3, scope: !1653, file: !845, line: 1211, type: !849)
!1661 = !DILocation(line: 1211, column: 25, scope: !1653)
!1662 = !DILocalVariable(name: "result", arg: 4, scope: !1653, file: !845, line: 1212, type: !1409)
!1663 = !DILocation(line: 1212, column: 28, scope: !1653)
!1664 = !DILocalVariable(name: "err", scope: !1653, file: !845, line: 1214, type: !878)
!1665 = !DILocation(line: 1214, column: 13, scope: !1653)
!1666 = !DILocalVariable(name: "base64String", scope: !1653, file: !845, line: 1215, type: !826)
!1667 = !DILocation(line: 1215, column: 10, scope: !1653)
!1668 = !DILocalVariable(name: "resultString", scope: !1653, file: !845, line: 1216, type: !826)
!1669 = !DILocation(line: 1216, column: 10, scope: !1653)
!1670 = !DILocalVariable(name: "resultBufferLength", scope: !1653, file: !845, line: 1217, type: !879)
!1671 = !DILocation(line: 1217, column: 11, scope: !1653)
!1672 = !DILocalVariable(name: "srcPtr", scope: !1653, file: !845, line: 1218, type: !826)
!1673 = !DILocation(line: 1218, column: 10, scope: !1653)
!1674 = !DILocalVariable(name: "endSrcPtr", scope: !1653, file: !845, line: 1219, type: !826)
!1675 = !DILocation(line: 1219, column: 10, scope: !1653)
!1676 = !DILocalVariable(name: "destPtr", scope: !1653, file: !845, line: 1220, type: !826)
!1677 = !DILocation(line: 1220, column: 10, scope: !1653)
!1678 = !DILocalVariable(name: "base64Length", scope: !1653, file: !845, line: 1221, type: !879)
!1679 = !DILocation(line: 1221, column: 11, scope: !1653)
!1680 = !DILocation(line: 1223, column: 56, scope: !1653)
!1681 = !DILocation(line: 1224, column: 40, scope: !1653)
!1682 = !DILocation(line: 1223, column: 19, scope: !1653)
!1683 = !DILocation(line: 1223, column: 17, scope: !1653)
!1684 = !DILocation(line: 1225, column: 43, scope: !1653)
!1685 = !DILocation(line: 1225, column: 19, scope: !1653)
!1686 = !DILocation(line: 1225, column: 17, scope: !1653)
!1687 = !DILocation(line: 1226, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1226, column: 8)
!1689 = !DILocation(line: 1226, column: 21, scope: !1688)
!1690 = !DILocation(line: 1226, column: 8, scope: !1653)
!1691 = !DILocation(line: 1227, column: 11, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !845, line: 1226, column: 29)
!1693 = !DILocation(line: 1228, column: 7, scope: !1692)
!1694 = !DILocation(line: 1231, column: 40, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1231, column: 8)
!1696 = !DILocation(line: 1232, column: 24, scope: !1695)
!1697 = !DILocation(line: 1233, column: 24, scope: !1695)
!1698 = !DILocation(line: 1234, column: 24, scope: !1695)
!1699 = !DILocation(line: 1231, column: 10, scope: !1695)
!1700 = !DILocation(line: 1231, column: 8, scope: !1653)
!1701 = !DILocation(line: 1236, column: 11, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !845, line: 1235, column: 41)
!1703 = !DILocation(line: 1237, column: 7, scope: !1702)
!1704 = !DILocation(line: 1240, column: 4, scope: !1653)
!1705 = !DILocation(line: 1245, column: 25, scope: !1653)
!1706 = !DILocation(line: 1245, column: 38, scope: !1653)
!1707 = !DILocation(line: 1245, column: 23, scope: !1653)
!1708 = !DILocation(line: 1246, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1246, column: 8)
!1710 = !DILocation(line: 1246, column: 8, scope: !1653)
!1711 = !DILocation(line: 1247, column: 25, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !845, line: 1246, column: 27)
!1713 = !DILocation(line: 1248, column: 4, scope: !1712)
!1714 = !DILocation(line: 1250, column: 43, scope: !1653)
!1715 = !DILocation(line: 1250, column: 62, scope: !1653)
!1716 = !DILocation(line: 1250, column: 19, scope: !1653)
!1717 = !DILocation(line: 1250, column: 17, scope: !1653)
!1718 = !DILocation(line: 1251, column: 8, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1251, column: 8)
!1720 = !DILocation(line: 1251, column: 21, scope: !1719)
!1721 = !DILocation(line: 1251, column: 8, scope: !1653)
!1722 = !DILocation(line: 1252, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !845, line: 1251, column: 29)
!1724 = !DILocation(line: 1253, column: 7, scope: !1723)
!1725 = !DILocation(line: 1256, column: 14, scope: !1653)
!1726 = !DILocation(line: 1256, column: 12, scope: !1653)
!1727 = !DILocation(line: 1257, column: 13, scope: !1653)
!1728 = !DILocation(line: 1257, column: 11, scope: !1653)
!1729 = !DILocation(line: 1258, column: 16, scope: !1653)
!1730 = !DILocation(line: 1258, column: 31, scope: !1653)
!1731 = !DILocation(line: 1258, column: 29, scope: !1653)
!1732 = !DILocation(line: 1258, column: 14, scope: !1653)
!1733 = !DILocation(line: 1260, column: 8, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1260, column: 8)
!1735 = !DILocation(line: 1260, column: 8, scope: !1653)
!1736 = !DILocation(line: 1265, column: 16, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !845, line: 1260, column: 27)
!1738 = !DILocation(line: 1265, column: 20, scope: !1737)
!1739 = !DILocation(line: 1266, column: 4, scope: !1737)
!1740 = !DILocation(line: 1271, column: 4, scope: !1653)
!1741 = !DILocation(line: 1271, column: 11, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1653, file: !845, discriminator: 1)
!1743 = !DILocation(line: 1271, column: 20, scope: !1742)
!1744 = !DILocation(line: 1271, column: 18, scope: !1742)
!1745 = !DILocation(line: 1271, column: 4, scope: !1742)
!1746 = !DILocation(line: 1273, column: 53, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !845, line: 1273, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1272, column: 4)
!1749 = !DILocation(line: 1273, column: 52, scope: !1747)
!1750 = !DILocation(line: 1273, column: 36, scope: !1747)
!1751 = !DILocation(line: 1273, column: 11, scope: !1747)
!1752 = !DILocation(line: 1273, column: 11, scope: !1748)
!1753 = !DILocation(line: 1274, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1747, file: !845, line: 1273, column: 63)
!1755 = !DILocation(line: 1274, column: 23, scope: !1754)
!1756 = !DILocation(line: 1275, column: 67, scope: !1754)
!1757 = !DILocation(line: 1275, column: 66, scope: !1754)
!1758 = !DILocation(line: 1275, column: 50, scope: !1754)
!1759 = !DILocation(line: 1275, column: 25, scope: !1754)
!1760 = !DILocation(line: 1275, column: 19, scope: !1754)
!1761 = !DILocation(line: 1275, column: 23, scope: !1754)
!1762 = !DILocation(line: 1276, column: 7, scope: !1754)
!1763 = !DILocation(line: 1277, column: 26, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1747, file: !845, line: 1276, column: 14)
!1765 = !DILocation(line: 1277, column: 25, scope: !1764)
!1766 = !DILocation(line: 1277, column: 19, scope: !1764)
!1767 = !DILocation(line: 1277, column: 23, scope: !1764)
!1768 = !DILocation(line: 1280, column: 13, scope: !1748)
!1769 = !DILocation(line: 1271, column: 4, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1653, file: !845, discriminator: 2)
!1771 = distinct !{!1771, !1740}
!1772 = !DILocation(line: 1283, column: 31, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !845, line: 1283, column: 10)
!1774 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1283, column: 5)
!1775 = !DILocation(line: 1283, column: 41, scope: !1773)
!1776 = !DILocation(line: 1283, column: 39, scope: !1773)
!1777 = !DILocation(line: 1283, column: 58, scope: !1773)
!1778 = !DILocation(line: 1283, column: 55, scope: !1773)
!1779 = !DILocation(line: 1283, column: 28, scope: !1773)
!1780 = !DILocation(line: 1283, column: 27, scope: !1773)
!1781 = !DILocation(line: 1283, column: 10, scope: !1773)
!1782 = !DILocation(line: 1283, column: 10, scope: !1774)
!1783 = !DILocation(line: 1283, column: 86, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !845, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1773, file: !845, line: 1283, column: 84)
!1786 = !DILocation(line: 1284, column: 5, scope: !1653)
!1787 = !DILocation(line: 1284, column: 13, scope: !1653)
!1788 = !DILocation(line: 1284, column: 4, scope: !1653)
!1789 = !DILocation(line: 1287, column: 9, scope: !1653)
!1790 = !DILocation(line: 1287, column: 4, scope: !1653)
!1791 = !DILocation(line: 1289, column: 8, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1653, file: !845, line: 1289, column: 8)
!1793 = !DILocation(line: 1289, column: 12, scope: !1792)
!1794 = !DILocation(line: 1289, column: 8, scope: !1653)
!1795 = !DILocation(line: 1290, column: 17, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !845, line: 1289, column: 23)
!1797 = !DILocation(line: 1290, column: 8, scope: !1796)
!1798 = !DILocation(line: 1290, column: 15, scope: !1796)
!1799 = !DILocation(line: 1291, column: 4, scope: !1796)
!1800 = !DILocation(line: 1293, column: 11, scope: !1653)
!1801 = !DILocation(line: 1293, column: 4, scope: !1653)
!1802 = distinct !DISubprogram(name: "Util_ZeroFree", scope: !1803, file: !1803, line: 237, type: !1804, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1803 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/utilZero.h", directory: "/home/lichi/Desktop/open-vm-tools/line244")
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !814, !879}
!1806 = !DILocalVariable(name: "buf", arg: 1, scope: !1802, file: !1803, line: 237, type: !814)
!1807 = !DILocation(line: 237, column: 21, scope: !1802)
!1808 = !DILocalVariable(name: "bufSize", arg: 2, scope: !1802, file: !1803, line: 238, type: !879)
!1809 = !DILocation(line: 238, column: 22, scope: !1802)
!1810 = !DILocation(line: 240, column: 8, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1802, file: !1803, line: 240, column: 8)
!1812 = !DILocation(line: 240, column: 12, scope: !1811)
!1813 = !DILocation(line: 240, column: 8, scope: !1802)
!1814 = !DILocalVariable(name: "err", scope: !1815, file: !1803, line: 242, type: !862)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !1803, line: 240, column: 20)
!1816 = !DILocation(line: 242, column: 11, scope: !1815)
!1817 = !DILocation(line: 242, column: 18, scope: !1815)
!1818 = !DILocation(line: 242, column: 17, scope: !1815)
!1819 = !DILocation(line: 243, column: 17, scope: !1815)
!1820 = !DILocation(line: 243, column: 22, scope: !1815)
!1821 = !DILocation(line: 243, column: 7, scope: !1815)
!1822 = !DILocation(line: 244, column: 12, scope: !1815)
!1823 = !DILocation(line: 244, column: 7, scope: !1815)
!1824 = !DILocation(line: 245, column: 14, scope: !1815)
!1825 = !DILocation(line: 245, column: 8, scope: !1815)
!1826 = !DILocation(line: 245, column: 12, scope: !1815)
!1827 = !DILocation(line: 246, column: 4, scope: !1815)
!1828 = !DILocation(line: 247, column: 1, scope: !1802)
!1829 = distinct !DISubprogram(name: "VixMsg_DeObfuscateNamePassword", scope: !845, file: !845, line: 1107, type: !1830, isLocal: false, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!878, !835, !1409, !1409}
!1832 = !DILocalVariable(name: "packagedName", arg: 1, scope: !1829, file: !845, line: 1107, type: !835)
!1833 = !DILocation(line: 1107, column: 44, scope: !1829)
!1834 = !DILocalVariable(name: "userNameResult", arg: 2, scope: !1829, file: !845, line: 1108, type: !1409)
!1835 = !DILocation(line: 1108, column: 39, scope: !1829)
!1836 = !DILocalVariable(name: "passwordResult", arg: 3, scope: !1829, file: !845, line: 1109, type: !1409)
!1837 = !DILocation(line: 1109, column: 39, scope: !1829)
!1838 = !DILocalVariable(name: "err", scope: !1829, file: !845, line: 1111, type: !878)
!1839 = !DILocation(line: 1111, column: 13, scope: !1829)
!1840 = !DILocalVariable(name: "packedString", scope: !1829, file: !845, line: 1112, type: !826)
!1841 = !DILocation(line: 1112, column: 10, scope: !1829)
!1842 = !DILocalVariable(name: "srcPtr", scope: !1829, file: !845, line: 1113, type: !826)
!1843 = !DILocation(line: 1113, column: 10, scope: !1829)
!1844 = !DILocalVariable(name: "packedStringLength", scope: !1829, file: !845, line: 1114, type: !879)
!1845 = !DILocation(line: 1114, column: 11, scope: !1829)
!1846 = !DILocalVariable(name: "userName", scope: !1829, file: !845, line: 1115, type: !826)
!1847 = !DILocation(line: 1115, column: 10, scope: !1829)
!1848 = !DILocalVariable(name: "passwd", scope: !1829, file: !845, line: 1116, type: !826)
!1849 = !DILocation(line: 1116, column: 10, scope: !1829)
!1850 = !DILocation(line: 1118, column: 29, scope: !1829)
!1851 = !DILocation(line: 1118, column: 10, scope: !1829)
!1852 = !DILocation(line: 1118, column: 8, scope: !1829)
!1853 = !DILocation(line: 1120, column: 8, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1829, file: !845, line: 1120, column: 8)
!1855 = !DILocation(line: 1120, column: 12, scope: !1854)
!1856 = !DILocation(line: 1120, column: 8, scope: !1829)
!1857 = !DILocation(line: 1121, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !845, line: 1120, column: 23)
!1859 = !DILocation(line: 1124, column: 13, scope: !1829)
!1860 = !DILocation(line: 1124, column: 11, scope: !1829)
!1861 = !DILocation(line: 1125, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1829, file: !845, line: 1125, column: 7)
!1863 = !DILocation(line: 1125, column: 12, scope: !1862)
!1864 = !DILocation(line: 1125, column: 7, scope: !1829)
!1865 = !DILocalVariable(name: "allocateFailed", scope: !1866, file: !845, line: 1126, type: !849)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !845, line: 1125, column: 31)
!1867 = !DILocation(line: 1126, column: 12, scope: !1866)
!1868 = !DILocation(line: 1127, column: 42, scope: !1866)
!1869 = !DILocation(line: 1127, column: 18, scope: !1866)
!1870 = !DILocation(line: 1127, column: 16, scope: !1866)
!1871 = !DILocation(line: 1128, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !845, line: 1128, column: 11)
!1873 = !DILocation(line: 1128, column: 11, scope: !1866)
!1874 = !DILocation(line: 1129, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !845, line: 1128, column: 27)
!1876 = !DILocation(line: 1130, column: 10, scope: !1875)
!1877 = !DILocation(line: 1132, column: 4, scope: !1866)
!1878 = !DILocation(line: 1133, column: 13, scope: !1829)
!1879 = !DILocation(line: 1133, column: 29, scope: !1829)
!1880 = !DILocation(line: 1133, column: 22, scope: !1829)
!1881 = !DILocation(line: 1133, column: 20, scope: !1829)
!1882 = !DILocation(line: 1133, column: 11, scope: !1829)
!1883 = !DILocation(line: 1134, column: 10, scope: !1829)
!1884 = !DILocation(line: 1135, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1829, file: !845, line: 1135, column: 7)
!1886 = !DILocation(line: 1135, column: 12, scope: !1885)
!1887 = !DILocation(line: 1135, column: 7, scope: !1829)
!1888 = !DILocalVariable(name: "allocateFailed", scope: !1889, file: !845, line: 1136, type: !849)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !845, line: 1135, column: 31)
!1890 = !DILocation(line: 1136, column: 12, scope: !1889)
!1891 = !DILocation(line: 1137, column: 40, scope: !1889)
!1892 = !DILocation(line: 1137, column: 16, scope: !1889)
!1893 = !DILocation(line: 1137, column: 14, scope: !1889)
!1894 = !DILocation(line: 1138, column: 11, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !845, line: 1138, column: 11)
!1896 = !DILocation(line: 1138, column: 11, scope: !1889)
!1897 = !DILocation(line: 1139, column: 14, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !845, line: 1138, column: 27)
!1899 = !DILocation(line: 1140, column: 10, scope: !1898)
!1900 = !DILocation(line: 1142, column: 4, scope: !1889)
!1901 = !DILocation(line: 1144, column: 22, scope: !1829)
!1902 = !DILocation(line: 1144, column: 5, scope: !1829)
!1903 = !DILocation(line: 1144, column: 20, scope: !1829)
!1904 = !DILocation(line: 1145, column: 13, scope: !1829)
!1905 = !DILocation(line: 1146, column: 22, scope: !1829)
!1906 = !DILocation(line: 1146, column: 5, scope: !1829)
!1907 = !DILocation(line: 1146, column: 20, scope: !1829)
!1908 = !DILocation(line: 1147, column: 11, scope: !1829)
!1909 = !DILocation(line: 1147, column: 4, scope: !1829)
!1910 = !DILocation(line: 1150, column: 18, scope: !1829)
!1911 = !DILocation(line: 1150, column: 32, scope: !1829)
!1912 = !DILocation(line: 1150, column: 4, scope: !1829)
!1913 = !DILocation(line: 1151, column: 24, scope: !1829)
!1914 = !DILocation(line: 1151, column: 4, scope: !1829)
!1915 = !DILocation(line: 1152, column: 24, scope: !1829)
!1916 = !DILocation(line: 1152, column: 4, scope: !1829)
!1917 = !DILocation(line: 1154, column: 11, scope: !1829)
!1918 = !DILocation(line: 1154, column: 4, scope: !1829)
!1919 = distinct !DISubprogram(name: "VixMsgDecodeBuffer", scope: !845, file: !845, line: 1348, type: !1920, isLocal: true, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!878, !835, !849, !1409, !883}
!1922 = !DILocalVariable(name: "str", arg: 1, scope: !1919, file: !845, line: 1348, type: !835)
!1923 = !DILocation(line: 1348, column: 32, scope: !1919)
!1924 = !DILocalVariable(name: "nullTerminateResult", arg: 2, scope: !1919, file: !845, line: 1349, type: !849)
!1925 = !DILocation(line: 1349, column: 25, scope: !1919)
!1926 = !DILocalVariable(name: "result", arg: 3, scope: !1919, file: !845, line: 1350, type: !1409)
!1927 = !DILocation(line: 1350, column: 27, scope: !1919)
!1928 = !DILocalVariable(name: "bufferLength", arg: 4, scope: !1919, file: !845, line: 1351, type: !883)
!1929 = !DILocation(line: 1351, column: 28, scope: !1919)
!1930 = !DILocalVariable(name: "err", scope: !1919, file: !845, line: 1353, type: !878)
!1931 = !DILocation(line: 1353, column: 13, scope: !1919)
!1932 = !DILocalVariable(name: "base64String", scope: !1919, file: !845, line: 1354, type: !826)
!1933 = !DILocation(line: 1354, column: 10, scope: !1919)
!1934 = !DILocalVariable(name: "resultStr", scope: !1919, file: !845, line: 1355, type: !826)
!1935 = !DILocation(line: 1355, column: 10, scope: !1919)
!1936 = !DILocalVariable(name: "srcPtr", scope: !1919, file: !845, line: 1356, type: !826)
!1937 = !DILocation(line: 1356, column: 10, scope: !1919)
!1938 = !DILocalVariable(name: "destPtr", scope: !1919, file: !845, line: 1357, type: !826)
!1939 = !DILocation(line: 1357, column: 10, scope: !1919)
!1940 = !DILocalVariable(name: "resultStrAllocatedLength", scope: !1919, file: !845, line: 1358, type: !879)
!1941 = !DILocation(line: 1358, column: 11, scope: !1919)
!1942 = !DILocalVariable(name: "resultStrLogicalLength", scope: !1919, file: !845, line: 1359, type: !879)
!1943 = !DILocation(line: 1359, column: 11, scope: !1919)
!1944 = !DILocalVariable(name: "allocateFailed", scope: !1919, file: !845, line: 1360, type: !849)
!1945 = !DILocation(line: 1360, column: 9, scope: !1919)
!1946 = !DILocation(line: 1362, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1362, column: 7)
!1948 = !DILocation(line: 1362, column: 12, scope: !1947)
!1949 = !DILocation(line: 1362, column: 7, scope: !1919)
!1950 = !DILocation(line: 1363, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !845, line: 1362, column: 29)
!1952 = !DILocation(line: 1363, column: 21, scope: !1951)
!1953 = !DILocation(line: 1364, column: 4, scope: !1951)
!1954 = !DILocation(line: 1370, column: 4, scope: !1919)
!1955 = !DILocation(line: 1371, column: 43, scope: !1919)
!1956 = !DILocation(line: 1371, column: 19, scope: !1919)
!1957 = !DILocation(line: 1371, column: 17, scope: !1919)
!1958 = !DILocation(line: 1372, column: 8, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1372, column: 8)
!1960 = !DILocation(line: 1372, column: 8, scope: !1919)
!1961 = !DILocation(line: 1373, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !845, line: 1372, column: 24)
!1963 = !DILocation(line: 1374, column: 7, scope: !1962)
!1964 = !DILocation(line: 1376, column: 14, scope: !1919)
!1965 = !DILocation(line: 1376, column: 12, scope: !1919)
!1966 = !DILocation(line: 1377, column: 13, scope: !1919)
!1967 = !DILocation(line: 1377, column: 11, scope: !1919)
!1968 = !DILocation(line: 1379, column: 4, scope: !1919)
!1969 = !DILocation(line: 1379, column: 12, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1919, file: !845, discriminator: 1)
!1971 = !DILocation(line: 1379, column: 11, scope: !1970)
!1972 = !DILocation(line: 1379, column: 4, scope: !1970)
!1973 = !DILocation(line: 1380, column: 20, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !845, line: 1380, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1379, column: 20)
!1976 = !DILocation(line: 1380, column: 19, scope: !1974)
!1977 = !DILocation(line: 1380, column: 16, scope: !1974)
!1978 = !DILocation(line: 1380, column: 11, scope: !1975)
!1979 = !DILocation(line: 1381, column: 16, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1974, file: !845, line: 1380, column: 28)
!1981 = !DILocation(line: 1386, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !845, line: 1386, column: 14)
!1983 = !DILocation(line: 1386, column: 20, scope: !1982)
!1984 = !DILocation(line: 1386, column: 17, scope: !1982)
!1985 = !DILocation(line: 1387, column: 17, scope: !1982)
!1986 = !DILocation(line: 1387, column: 68, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1982, file: !845, discriminator: 1)
!1988 = !DILocation(line: 1387, column: 67, scope: !1987)
!1989 = !DILocation(line: 1387, column: 51, scope: !1987)
!1990 = !DILocation(line: 1387, column: 26, scope: !1987)
!1991 = !DILocation(line: 1387, column: 23, scope: !1987)
!1992 = !DILocation(line: 1386, column: 14, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1980, file: !845, discriminator: 1)
!1994 = !DILocation(line: 1388, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1982, file: !845, line: 1387, column: 79)
!1996 = !DILocation(line: 1390, column: 67, scope: !1980)
!1997 = !DILocation(line: 1390, column: 66, scope: !1980)
!1998 = !DILocation(line: 1390, column: 50, scope: !1980)
!1999 = !DILocation(line: 1390, column: 25, scope: !1980)
!2000 = !DILocation(line: 1390, column: 19, scope: !1980)
!2001 = !DILocation(line: 1390, column: 23, scope: !1980)
!2002 = !DILocation(line: 1391, column: 7, scope: !1980)
!2003 = !DILocation(line: 1392, column: 26, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1974, file: !845, line: 1391, column: 14)
!2005 = !DILocation(line: 1392, column: 25, scope: !2004)
!2006 = !DILocation(line: 1392, column: 19, scope: !2004)
!2007 = !DILocation(line: 1392, column: 23, scope: !2004)
!2008 = !DILocation(line: 1394, column: 13, scope: !1975)
!2009 = !DILocation(line: 1379, column: 4, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1919, file: !845, discriminator: 2)
!2011 = distinct !{!2011, !1968}
!2012 = !DILocation(line: 1396, column: 5, scope: !1919)
!2013 = !DILocation(line: 1396, column: 13, scope: !1919)
!2014 = !DILocation(line: 1402, column: 52, scope: !1919)
!2015 = !DILocation(line: 1403, column: 52, scope: !1919)
!2016 = !DILocation(line: 1403, column: 62, scope: !1919)
!2017 = !DILocation(line: 1403, column: 60, scope: !1919)
!2018 = !DILocation(line: 1402, column: 31, scope: !1919)
!2019 = !DILocation(line: 1402, column: 29, scope: !1919)
!2020 = !DILocation(line: 1404, column: 8, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1404, column: 8)
!2022 = !DILocation(line: 1404, column: 8, scope: !1919)
!2023 = !DILocation(line: 1405, column: 32, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !845, line: 1404, column: 29)
!2025 = !DILocation(line: 1406, column: 4, scope: !2024)
!2026 = !DILocation(line: 1408, column: 33, scope: !1919)
!2027 = !DILocation(line: 1408, column: 16, scope: !1919)
!2028 = !DILocation(line: 1408, column: 14, scope: !1919)
!2029 = !DILocation(line: 1409, column: 23, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1409, column: 8)
!2031 = !DILocation(line: 1410, column: 23, scope: !2030)
!2032 = !DILocation(line: 1411, column: 23, scope: !2030)
!2033 = !DILocation(line: 1409, column: 9, scope: !2030)
!2034 = !DILocation(line: 1413, column: 11, scope: !2030)
!2035 = !DILocation(line: 1413, column: 15, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2030, file: !845, discriminator: 1)
!2037 = !DILocation(line: 1413, column: 40, scope: !2036)
!2038 = !DILocation(line: 1413, column: 38, scope: !2036)
!2039 = !DILocation(line: 1409, column: 8, scope: !1970)
!2040 = !DILocation(line: 1414, column: 12, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2030, file: !845, line: 1413, column: 67)
!2042 = !DILocation(line: 1414, column: 7, scope: !2041)
!2043 = !DILocation(line: 1415, column: 17, scope: !2041)
!2044 = !DILocation(line: 1416, column: 7, scope: !2041)
!2045 = !DILocation(line: 1419, column: 8, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1419, column: 8)
!2047 = !DILocation(line: 1419, column: 8, scope: !1919)
!2048 = !DILocation(line: 1420, column: 33, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !845, line: 1420, column: 13)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !845, line: 1420, column: 8)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !845, line: 1419, column: 29)
!2052 = !DILocation(line: 1420, column: 58, scope: !2049)
!2053 = !DILocation(line: 1420, column: 56, scope: !2049)
!2054 = !DILocation(line: 1420, column: 31, scope: !2049)
!2055 = !DILocation(line: 1420, column: 30, scope: !2049)
!2056 = !DILocation(line: 1420, column: 13, scope: !2049)
!2057 = !DILocation(line: 1420, column: 13, scope: !2050)
!2058 = !DILocation(line: 1420, column: 92, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2060, file: !845, discriminator: 1)
!2060 = distinct !DILexicalBlock(scope: !2049, file: !845, line: 1420, column: 90)
!2061 = !DILocation(line: 1421, column: 17, scope: !2051)
!2062 = !DILocation(line: 1421, column: 7, scope: !2051)
!2063 = !DILocation(line: 1421, column: 41, scope: !2051)
!2064 = !DILocation(line: 1422, column: 4, scope: !2051)
!2065 = !DILocation(line: 1424, column: 15, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1424, column: 7)
!2067 = !DILocation(line: 1424, column: 12, scope: !2066)
!2068 = !DILocation(line: 1424, column: 7, scope: !1919)
!2069 = !DILocation(line: 1425, column: 23, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !845, line: 1424, column: 29)
!2071 = !DILocation(line: 1425, column: 8, scope: !2070)
!2072 = !DILocation(line: 1425, column: 21, scope: !2070)
!2073 = !DILocation(line: 1426, column: 4, scope: !2070)
!2074 = !DILocation(line: 1424, column: 15, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2066, file: !845, discriminator: 1)
!2076 = !DILocation(line: 1429, column: 9, scope: !1919)
!2077 = !DILocation(line: 1429, column: 4, scope: !1919)
!2078 = !DILocation(line: 1431, column: 8, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1919, file: !845, line: 1431, column: 8)
!2080 = !DILocation(line: 1431, column: 12, scope: !2079)
!2081 = !DILocation(line: 1431, column: 8, scope: !1919)
!2082 = !DILocation(line: 1432, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !845, line: 1431, column: 23)
!2084 = !DILocation(line: 1432, column: 8, scope: !2083)
!2085 = !DILocation(line: 1432, column: 15, scope: !2083)
!2086 = !DILocation(line: 1433, column: 4, scope: !2083)
!2087 = !DILocation(line: 1435, column: 11, scope: !1919)
!2088 = !DILocation(line: 1435, column: 4, scope: !1919)
!2089 = distinct !DISubprogram(name: "VixMsg_StrdupClientData", scope: !845, file: !845, line: 1859, type: !2090, isLocal: false, isDefinition: true, scopeLine: 1861, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!826, !835, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64, align: 64)
!2093 = !DILocalVariable(name: "s", arg: 1, scope: !2089, file: !845, line: 1859, type: !835)
!2094 = !DILocation(line: 1859, column: 37, scope: !2089)
!2095 = !DILocalVariable(name: "allocateFailed", arg: 2, scope: !2089, file: !845, line: 1860, type: !2092)
!2096 = !DILocation(line: 1860, column: 31, scope: !2089)
!2097 = !DILocalVariable(name: "newString", scope: !2089, file: !845, line: 1862, type: !826)
!2098 = !DILocation(line: 1862, column: 10, scope: !2089)
!2099 = !DILocation(line: 1865, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2089, file: !845, line: 1865, column: 7)
!2101 = !DILocation(line: 1865, column: 12, scope: !2100)
!2102 = !DILocation(line: 1865, column: 7, scope: !2089)
!2103 = !DILocation(line: 1866, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !845, line: 1865, column: 31)
!2105 = !DILocation(line: 1869, column: 5, scope: !2089)
!2106 = !DILocation(line: 1869, column: 20, scope: !2089)
!2107 = !DILocation(line: 1871, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2089, file: !845, line: 1871, column: 7)
!2109 = !DILocation(line: 1871, column: 12, scope: !2108)
!2110 = !DILocation(line: 1871, column: 7, scope: !2089)
!2111 = !DILocation(line: 1875, column: 29, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !845, line: 1871, column: 18)
!2113 = !DILocation(line: 1875, column: 22, scope: !2112)
!2114 = !DILocation(line: 1875, column: 20, scope: !2112)
!2115 = !DILocation(line: 1877, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !845, line: 1877, column: 10)
!2117 = !DILocation(line: 1877, column: 15, scope: !2116)
!2118 = !DILocation(line: 1877, column: 10, scope: !2112)
!2119 = !DILocation(line: 1878, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !845, line: 1877, column: 29)
!2121 = !DILocation(line: 1878, column: 26, scope: !2120)
!2122 = !DILocation(line: 1879, column: 7, scope: !2120)
!2123 = !DILocation(line: 1880, column: 4, scope: !2112)
!2124 = !DILocation(line: 1871, column: 15, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2108, file: !845, discriminator: 1)
!2126 = !DILocation(line: 1883, column: 11, scope: !2089)
!2127 = !DILocation(line: 1883, column: 4, scope: !2089)
!2128 = distinct !DISubprogram(name: "Util_ZeroFreeString", scope: !1803, file: !1803, line: 268, type: !2129, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !826}
!2131 = !DILocalVariable(name: "str", arg: 1, scope: !2128, file: !1803, line: 268, type: !826)
!2132 = !DILocation(line: 268, column: 27, scope: !2128)
!2133 = !DILocation(line: 270, column: 8, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !1803, line: 270, column: 8)
!2135 = !DILocation(line: 270, column: 12, scope: !2134)
!2136 = !DILocation(line: 270, column: 8, scope: !2128)
!2137 = !DILocalVariable(name: "err", scope: !2138, file: !1803, line: 272, type: !862)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !1803, line: 270, column: 20)
!2139 = !DILocation(line: 272, column: 11, scope: !2138)
!2140 = !DILocation(line: 272, column: 18, scope: !2138)
!2141 = !DILocation(line: 272, column: 17, scope: !2138)
!2142 = !DILocation(line: 273, column: 23, scope: !2138)
!2143 = !DILocation(line: 273, column: 7, scope: !2138)
!2144 = !DILocation(line: 274, column: 12, scope: !2138)
!2145 = !DILocation(line: 274, column: 7, scope: !2138)
!2146 = !DILocation(line: 275, column: 14, scope: !2138)
!2147 = !DILocation(line: 275, column: 8, scope: !2138)
!2148 = !DILocation(line: 275, column: 12, scope: !2138)
!2149 = !DILocation(line: 276, column: 4, scope: !2138)
!2150 = !DILocation(line: 277, column: 1, scope: !2128)
!2151 = distinct !DISubprogram(name: "VixMsg_EncodeString", scope: !845, file: !845, line: 1178, type: !2152, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!878, !835, !1409}
!2154 = !DILocalVariable(name: "str", arg: 1, scope: !2151, file: !845, line: 1178, type: !835)
!2155 = !DILocation(line: 1178, column: 33, scope: !2151)
!2156 = !DILocalVariable(name: "result", arg: 2, scope: !2151, file: !845, line: 1179, type: !1409)
!2157 = !DILocation(line: 1179, column: 28, scope: !2151)
!2158 = !DILocation(line: 1181, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2151, file: !845, line: 1181, column: 7)
!2160 = !DILocation(line: 1181, column: 12, scope: !2159)
!2161 = !DILocation(line: 1181, column: 7, scope: !2151)
!2162 = !DILocation(line: 1182, column: 11, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !845, line: 1181, column: 20)
!2164 = !DILocation(line: 1183, column: 4, scope: !2163)
!2165 = !DILocation(line: 1185, column: 30, scope: !2151)
!2166 = !DILocation(line: 1185, column: 42, scope: !2151)
!2167 = !DILocation(line: 1185, column: 35, scope: !2151)
!2168 = !DILocation(line: 1185, column: 51, scope: !2151)
!2169 = !DILocation(line: 1185, column: 11, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2151, file: !845, discriminator: 1)
!2171 = !DILocation(line: 1185, column: 4, scope: !2151)
!2172 = distinct !DISubprogram(name: "VixMsg_DecodeString", scope: !845, file: !845, line: 1314, type: !2152, isLocal: false, isDefinition: true, scopeLine: 1316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2173 = !DILocalVariable(name: "str", arg: 1, scope: !2172, file: !845, line: 1314, type: !835)
!2174 = !DILocation(line: 1314, column: 33, scope: !2172)
!2175 = !DILocalVariable(name: "result", arg: 2, scope: !2172, file: !845, line: 1315, type: !1409)
!2176 = !DILocation(line: 1315, column: 28, scope: !2172)
!2177 = !DILocation(line: 1321, column: 16, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !845, line: 1321, column: 8)
!2179 = !DILocation(line: 1321, column: 13, scope: !2178)
!2180 = !DILocation(line: 1321, column: 21, scope: !2178)
!2181 = !DILocation(line: 1321, column: 33, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2178, file: !845, discriminator: 1)
!2183 = !DILocation(line: 1321, column: 32, scope: !2182)
!2184 = !DILocation(line: 1321, column: 29, scope: !2182)
!2185 = !DILocation(line: 1321, column: 8, scope: !2182)
!2186 = !DILocation(line: 1322, column: 8, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2178, file: !845, line: 1321, column: 39)
!2188 = !DILocation(line: 1322, column: 15, scope: !2187)
!2189 = !DILocation(line: 1323, column: 7, scope: !2187)
!2190 = !DILocation(line: 1326, column: 30, scope: !2172)
!2191 = !DILocation(line: 1326, column: 34, scope: !2172)
!2192 = !DILocation(line: 1326, column: 42, scope: !2172)
!2193 = !DILocation(line: 1326, column: 11, scope: !2172)
!2194 = !DILocation(line: 1326, column: 4, scope: !2172)
!2195 = !DILocation(line: 1327, column: 1, scope: !2172)
!2196 = distinct !DISubprogram(name: "VixMsg_ValidateCommandInfoTable", scope: !845, file: !845, line: 1458, type: !2197, isLocal: false, isDefinition: true, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!849}
!2199 = !DILocalVariable(name: "i", scope: !2196, file: !845, line: 1460, type: !862)
!2200 = !DILocation(line: 1460, column: 8, scope: !2196)
!2201 = !DILocation(line: 1470, column: 4, scope: !2196)
!2202 = distinct !{!2202, !2201}
!2203 = !DILocation(line: 1470, column: 205, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !845, discriminator: 1)
!2205 = distinct !DILexicalBlock(scope: !2196, file: !845, line: 1470, column: 7)
!2206 = !DILocation(line: 1478, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2196, file: !845, line: 1478, column: 4)
!2208 = !DILocation(line: 1478, column: 9, scope: !2207)
!2209 = !DILocation(line: 1478, column: 16, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !845, discriminator: 1)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !845, line: 1478, column: 4)
!2212 = !DILocation(line: 1478, column: 18, scope: !2210)
!2213 = !DILocation(line: 1478, column: 4, scope: !2210)
!2214 = !DILocation(line: 1479, column: 31, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !845, line: 1479, column: 11)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !845, line: 1478, column: 89)
!2217 = !DILocation(line: 1479, column: 11, scope: !2215)
!2218 = !DILocation(line: 1479, column: 34, scope: !2215)
!2219 = !DILocation(line: 1479, column: 39, scope: !2215)
!2220 = !DILocation(line: 1480, column: 33, scope: !2215)
!2221 = !DILocation(line: 1480, column: 13, scope: !2215)
!2222 = !DILocation(line: 1480, column: 36, scope: !2215)
!2223 = !DILocation(line: 1480, column: 47, scope: !2215)
!2224 = !DILocation(line: 1480, column: 49, scope: !2215)
!2225 = !DILocation(line: 1480, column: 43, scope: !2215)
!2226 = !DILocation(line: 1480, column: 55, scope: !2215)
!2227 = !DILocation(line: 1481, column: 40, scope: !2215)
!2228 = !DILocation(line: 1481, column: 20, scope: !2215)
!2229 = !DILocation(line: 1481, column: 43, scope: !2215)
!2230 = !DILocation(line: 1481, column: 17, scope: !2215)
!2231 = !DILocation(line: 1479, column: 11, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2216, file: !845, discriminator: 1)
!2233 = !DILocation(line: 1484, column: 52, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2215, file: !845, line: 1481, column: 58)
!2235 = !DILocation(line: 1484, column: 32, scope: !2234)
!2236 = !DILocation(line: 1484, column: 55, scope: !2234)
!2237 = !DILocation(line: 1484, column: 63, scope: !2234)
!2238 = !DILocation(line: 1482, column: 10, scope: !2234)
!2239 = !DILocation(line: 1485, column: 10, scope: !2234)
!2240 = !DILocation(line: 1487, column: 4, scope: !2216)
!2241 = !DILocation(line: 1478, column: 85, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2211, file: !845, discriminator: 2)
!2243 = !DILocation(line: 1478, column: 4, scope: !2242)
!2244 = distinct !{!2244, !2245}
!2245 = !DILocation(line: 1478, column: 4, scope: !2196)
!2246 = !DILocation(line: 1489, column: 4, scope: !2196)
!2247 = !DILocation(line: 1490, column: 1, scope: !2196)
!2248 = distinct !DISubprogram(name: "VixAsyncOp_GetDebugStrForOpCode", scope: !845, file: !845, line: 1511, type: !2249, isLocal: false, isDefinition: true, scopeLine: 1512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!835, !862}
!2251 = !DILocalVariable(name: "opCode", arg: 1, scope: !2248, file: !845, line: 1511, type: !862)
!2252 = !DILocation(line: 1511, column: 37, scope: !2248)
!2253 = !DILocalVariable(name: "opName", scope: !2248, file: !845, line: 1513, type: !835)
!2254 = !DILocation(line: 1513, column: 16, scope: !2248)
!2255 = !DILocalVariable(name: "commandInfo", scope: !2248, file: !845, line: 1514, type: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!2257 = !DILocation(line: 1514, column: 26, scope: !2248)
!2258 = !DILocation(line: 1516, column: 45, scope: !2248)
!2259 = !DILocation(line: 1516, column: 18, scope: !2248)
!2260 = !DILocation(line: 1516, column: 16, scope: !2248)
!2261 = !DILocation(line: 1517, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2248, file: !845, line: 1517, column: 7)
!2263 = !DILocation(line: 1517, column: 12, scope: !2262)
!2264 = !DILocation(line: 1517, column: 7, scope: !2248)
!2265 = !DILocation(line: 1518, column: 16, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !845, line: 1517, column: 28)
!2267 = !DILocation(line: 1518, column: 29, scope: !2266)
!2268 = !DILocation(line: 1518, column: 14, scope: !2266)
!2269 = !DILocation(line: 1520, column: 4, scope: !2266)
!2270 = !DILocation(line: 1522, column: 11, scope: !2248)
!2271 = !DILocation(line: 1522, column: 4, scope: !2248)
!2272 = distinct !DISubprogram(name: "VixGetCommandInfoForOpCode", scope: !845, file: !845, line: 1576, type: !2273, isLocal: true, isDefinition: true, scopeLine: 1577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2256, !862}
!2275 = !DILocalVariable(name: "opCode", arg: 1, scope: !2272, file: !845, line: 1576, type: !862)
!2276 = !DILocation(line: 1576, column: 32, scope: !2272)
!2277 = !DILocalVariable(name: "commandInfo", scope: !2272, file: !845, line: 1578, type: !2256)
!2278 = !DILocation(line: 1578, column: 26, scope: !2272)
!2279 = !DILocation(line: 1580, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2272, file: !845, line: 1580, column: 8)
!2281 = !DILocation(line: 1580, column: 16, scope: !2280)
!2282 = !DILocation(line: 1580, column: 40, scope: !2280)
!2283 = !DILocation(line: 1581, column: 9, scope: !2280)
!2284 = !DILocation(line: 1581, column: 16, scope: !2280)
!2285 = !DILocation(line: 1580, column: 8, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2272, file: !845, discriminator: 1)
!2287 = !DILocation(line: 1583, column: 31, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !845, line: 1583, column: 11)
!2289 = distinct !DILexicalBlock(scope: !2280, file: !845, line: 1581, column: 52)
!2290 = !DILocation(line: 1583, column: 38, scope: !2288)
!2291 = !DILocation(line: 1583, column: 11, scope: !2288)
!2292 = !DILocation(line: 1583, column: 43, scope: !2288)
!2293 = !DILocation(line: 1583, column: 11, scope: !2289)
!2294 = !DILocation(line: 1584, column: 45, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2288, file: !845, line: 1583, column: 49)
!2296 = !DILocation(line: 1584, column: 52, scope: !2295)
!2297 = !DILocation(line: 1584, column: 25, scope: !2295)
!2298 = !DILocation(line: 1584, column: 22, scope: !2295)
!2299 = !DILocation(line: 1585, column: 7, scope: !2295)
!2300 = !DILocation(line: 1586, column: 4, scope: !2289)
!2301 = !DILocation(line: 1588, column: 11, scope: !2272)
!2302 = !DILocation(line: 1588, column: 4, scope: !2272)
!2303 = distinct !DISubprogram(name: "VixMsg_GetCommandSecurityCategory", scope: !845, file: !845, line: 1544, type: !2304, isLocal: false, isDefinition: true, scopeLine: 1545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!865, !862}
!2306 = !DILocalVariable(name: "opCode", arg: 1, scope: !2303, file: !845, line: 1544, type: !862)
!2307 = !DILocation(line: 1544, column: 39, scope: !2303)
!2308 = !DILocalVariable(name: "category", scope: !2303, file: !845, line: 1546, type: !865)
!2309 = !DILocation(line: 1546, column: 31, scope: !2303)
!2310 = !DILocalVariable(name: "commandInfo", scope: !2303, file: !845, line: 1547, type: !2256)
!2311 = !DILocation(line: 1547, column: 26, scope: !2303)
!2312 = !DILocation(line: 1549, column: 45, scope: !2303)
!2313 = !DILocation(line: 1549, column: 18, scope: !2303)
!2314 = !DILocation(line: 1549, column: 16, scope: !2303)
!2315 = !DILocation(line: 1550, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2303, file: !845, line: 1550, column: 7)
!2317 = !DILocation(line: 1550, column: 12, scope: !2316)
!2318 = !DILocation(line: 1550, column: 7, scope: !2303)
!2319 = !DILocation(line: 1551, column: 18, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !845, line: 1550, column: 28)
!2321 = !DILocation(line: 1551, column: 31, scope: !2320)
!2322 = !DILocation(line: 1551, column: 16, scope: !2320)
!2323 = !DILocation(line: 1552, column: 4, scope: !2320)
!2324 = !DILocation(line: 1554, column: 11, scope: !2303)
!2325 = !DILocation(line: 1554, column: 4, scope: !2303)
!2326 = distinct !DISubprogram(name: "VixMsg_AllocGenericRequestMsg", scope: !845, file: !845, line: 1613, type: !2327, isLocal: false, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!878, !862, !806, !862, !835, !862, !2329, !2361}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64, align: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyListImpl", file: !300, line: 362, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixPropertyListImpl", file: !300, line: 359, size: 64, align: 64, elements: !2332)
!2332 = !{!2333}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2331, file: !300, line: 361, baseType: !2334, size: 64, align: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64, align: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyValue", file: !300, line: 353, baseType: !2336)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixPropertyValue", file: !300, line: 332, size: 320, align: 64, elements: !2337)
!2337 = !{!2338, !2339, !2341, !2357, !2358, !2359}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "propertyID", scope: !2336, file: !300, line: 334, baseType: !862, size: 32, align: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2336, file: !300, line: 335, baseType: !2340, size: 32, align: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyType", file: !14, line: 425, baseType: !862)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2336, file: !300, line: 348, baseType: !2342, size: 128, align: 64, offset: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2336, file: !300, line: 337, size: 128, align: 64, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2350, !2356}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "boolValue", scope: !2342, file: !300, line: 338, baseType: !849, size: 8, align: 8)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "strValue", scope: !2342, file: !300, line: 339, baseType: !826, size: 64, align: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "intValue", scope: !2342, file: !300, line: 340, baseType: !862, size: 32, align: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "int64Value", scope: !2342, file: !300, line: 341, baseType: !839, size: 64, align: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "handleValue", scope: !2342, file: !300, line: 342, baseType: !2349, size: 32, align: 32)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixHandle", file: !14, line: 43, baseType: !862)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "blobValue", scope: !2342, file: !300, line: 346, baseType: !2351, size: 128, align: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2342, file: !300, line: 343, size: 128, align: 64, elements: !2352)
!2352 = !{!2353, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "blobContents", scope: !2351, file: !300, line: 344, baseType: !2354, size: 64, align: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "blobSize", scope: !2351, file: !300, line: 345, baseType: !862, size: 32, align: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrValue", scope: !2342, file: !300, line: 347, baseType: !814, size: 64, align: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "isDirty", scope: !2336, file: !300, line: 350, baseType: !849, size: 8, align: 8, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "isSensitive", scope: !2336, file: !300, line: 351, baseType: !849, size: 8, align: 8, offset: 200)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2336, file: !300, line: 352, baseType: !2360, size: 64, align: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64, align: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64, align: 64)
!2362 = !DILocalVariable(name: "opCode", arg: 1, scope: !2326, file: !845, line: 1613, type: !862)
!2363 = !DILocation(line: 1613, column: 35, scope: !2326)
!2364 = !DILocalVariable(name: "cookie", arg: 2, scope: !2326, file: !845, line: 1614, type: !806)
!2365 = !DILocation(line: 1614, column: 38, scope: !2326)
!2366 = !DILocalVariable(name: "credentialType", arg: 3, scope: !2326, file: !845, line: 1615, type: !862)
!2367 = !DILocation(line: 1615, column: 35, scope: !2326)
!2368 = !DILocalVariable(name: "userNamePassword", arg: 4, scope: !2326, file: !845, line: 1616, type: !835)
!2369 = !DILocation(line: 1616, column: 43, scope: !2326)
!2370 = !DILocalVariable(name: "options", arg: 5, scope: !2326, file: !845, line: 1617, type: !862)
!2371 = !DILocation(line: 1617, column: 35, scope: !2326)
!2372 = !DILocalVariable(name: "propertyList", arg: 6, scope: !2326, file: !845, line: 1618, type: !2329)
!2373 = !DILocation(line: 1618, column: 52, scope: !2326)
!2374 = !DILocalVariable(name: "request", arg: 7, scope: !2326, file: !845, line: 1619, type: !2361)
!2375 = !DILocation(line: 1619, column: 58, scope: !2326)
!2376 = !DILocalVariable(name: "err", scope: !2326, file: !845, line: 1621, type: !878)
!2377 = !DILocation(line: 1621, column: 13, scope: !2326)
!2378 = !DILocalVariable(name: "requestLocal", scope: !2326, file: !845, line: 1622, type: !828)
!2379 = !DILocation(line: 1622, column: 30, scope: !2326)
!2380 = !DILocalVariable(name: "msgHeaderAndBodyLength", scope: !2326, file: !845, line: 1623, type: !879)
!2381 = !DILocation(line: 1623, column: 11, scope: !2326)
!2382 = !DILocalVariable(name: "serializedBufferBody", scope: !2326, file: !845, line: 1624, type: !826)
!2383 = !DILocation(line: 1624, column: 10, scope: !2326)
!2384 = !DILocalVariable(name: "serializedBufferLength", scope: !2326, file: !845, line: 1625, type: !879)
!2385 = !DILocation(line: 1625, column: 11, scope: !2326)
!2386 = !DILocation(line: 1627, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2326, file: !845, line: 1627, column: 7)
!2388 = !DILocation(line: 1627, column: 12, scope: !2387)
!2389 = !DILocation(line: 1627, column: 7, scope: !2326)
!2390 = !DILocation(line: 1629, column: 11, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !845, line: 1627, column: 24)
!2392 = !DILocation(line: 1630, column: 7, scope: !2391)
!2393 = !DILocation(line: 1633, column: 5, scope: !2326)
!2394 = !DILocation(line: 1633, column: 13, scope: !2326)
!2395 = !DILocation(line: 1635, column: 15, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2326, file: !845, line: 1635, column: 7)
!2397 = !DILocation(line: 1635, column: 12, scope: !2396)
!2398 = !DILocation(line: 1635, column: 7, scope: !2326)
!2399 = !DILocation(line: 1636, column: 39, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !845, line: 1635, column: 29)
!2401 = !DILocation(line: 1636, column: 13, scope: !2400)
!2402 = !DILocation(line: 1636, column: 11, scope: !2400)
!2403 = !DILocation(line: 1640, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2400, file: !845, line: 1640, column: 11)
!2405 = !DILocation(line: 1640, column: 18, scope: !2404)
!2406 = !DILocation(line: 1640, column: 11, scope: !2400)
!2407 = !DILocation(line: 1641, column: 10, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !845, line: 1640, column: 26)
!2409 = !DILocation(line: 1643, column: 4, scope: !2400)
!2410 = !DILocation(line: 1645, column: 53, scope: !2326)
!2411 = !DILocation(line: 1645, column: 51, scope: !2326)
!2412 = !DILocation(line: 1645, column: 27, scope: !2326)
!2413 = !DILocation(line: 1647, column: 30, scope: !2326)
!2414 = !DILocation(line: 1648, column: 30, scope: !2326)
!2415 = !DILocation(line: 1649, column: 30, scope: !2326)
!2416 = !DILocation(line: 1650, column: 30, scope: !2326)
!2417 = !DILocation(line: 1651, column: 30, scope: !2326)
!2418 = !DILocation(line: 1647, column: 7, scope: !2326)
!2419 = !DILocation(line: 1646, column: 19, scope: !2326)
!2420 = !DILocation(line: 1646, column: 17, scope: !2326)
!2421 = !DILocation(line: 1652, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2326, file: !845, line: 1652, column: 7)
!2423 = !DILocation(line: 1652, column: 12, scope: !2422)
!2424 = !DILocation(line: 1652, column: 7, scope: !2326)
!2425 = !DILocation(line: 1653, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !845, line: 1652, column: 29)
!2427 = !DILocation(line: 1654, column: 7, scope: !2426)
!2428 = !DILocation(line: 1657, column: 28, scope: !2326)
!2429 = !DILocation(line: 1657, column: 4, scope: !2326)
!2430 = !DILocation(line: 1657, column: 18, scope: !2326)
!2431 = !DILocation(line: 1657, column: 26, scope: !2326)
!2432 = !DILocation(line: 1658, column: 37, scope: !2326)
!2433 = !DILocation(line: 1658, column: 4, scope: !2326)
!2434 = !DILocation(line: 1658, column: 18, scope: !2326)
!2435 = !DILocation(line: 1658, column: 35, scope: !2326)
!2436 = !DILocation(line: 1660, column: 15, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2326, file: !845, line: 1660, column: 7)
!2438 = !DILocation(line: 1660, column: 12, scope: !2437)
!2439 = !DILocation(line: 1660, column: 7, scope: !2326)
!2440 = !DILocalVariable(name: "dst", scope: !2441, file: !845, line: 1661, type: !826)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !845, line: 1660, column: 37)
!2442 = !DILocation(line: 1661, column: 13, scope: !2441)
!2443 = !DILocation(line: 1661, column: 27, scope: !2441)
!2444 = !DILocation(line: 1661, column: 19, scope: !2441)
!2445 = !DILocation(line: 1661, column: 35, scope: !2441)
!2446 = !DILocation(line: 1662, column: 14, scope: !2441)
!2447 = !DILocation(line: 1662, column: 19, scope: !2441)
!2448 = !DILocation(line: 1662, column: 41, scope: !2441)
!2449 = !DILocation(line: 1662, column: 7, scope: !2441)
!2450 = !DILocation(line: 1663, column: 4, scope: !2441)
!2451 = !DILocation(line: 1665, column: 15, scope: !2326)
!2452 = !DILocation(line: 1665, column: 5, scope: !2326)
!2453 = !DILocation(line: 1665, column: 13, scope: !2326)
!2454 = !DILocation(line: 1666, column: 8, scope: !2326)
!2455 = !DILocation(line: 1666, column: 4, scope: !2326)
!2456 = !DILocation(line: 1669, column: 9, scope: !2326)
!2457 = !DILocation(line: 1669, column: 4, scope: !2326)
!2458 = !DILocation(line: 1671, column: 11, scope: !2326)
!2459 = !DILocation(line: 1671, column: 4, scope: !2326)
!2460 = distinct !DISubprogram(name: "VixMsg_ParseGenericRequestMsg", scope: !845, file: !845, line: 1693, type: !2461, isLocal: false, isDefinition: true, scopeLine: 1696, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!878, !2463, !2465, !2329}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64, align: 64)
!2464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!2466 = !DILocalVariable(name: "request", arg: 1, scope: !2460, file: !845, line: 1693, type: !2463)
!2467 = !DILocation(line: 1693, column: 63, scope: !2460)
!2468 = !DILocalVariable(name: "options", arg: 2, scope: !2460, file: !845, line: 1694, type: !2465)
!2469 = !DILocation(line: 1694, column: 36, scope: !2460)
!2470 = !DILocalVariable(name: "propertyList", arg: 3, scope: !2460, file: !845, line: 1695, type: !2329)
!2471 = !DILocation(line: 1695, column: 52, scope: !2460)
!2472 = !DILocalVariable(name: "err", scope: !2460, file: !845, line: 1697, type: !878)
!2473 = !DILocation(line: 1697, column: 13, scope: !2460)
!2474 = !DILocalVariable(name: "headerAndBodyLength", scope: !2460, file: !845, line: 1698, type: !806)
!2475 = !DILocation(line: 1698, column: 11, scope: !2460)
!2476 = !DILocation(line: 1700, column: 16, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2460, file: !845, line: 1700, column: 8)
!2478 = !DILocation(line: 1700, column: 13, scope: !2477)
!2479 = !DILocation(line: 1700, column: 25, scope: !2477)
!2480 = !DILocation(line: 1700, column: 37, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2477, file: !845, discriminator: 1)
!2482 = !DILocation(line: 1700, column: 34, scope: !2481)
!2483 = !DILocation(line: 1700, column: 46, scope: !2481)
!2484 = !DILocation(line: 1700, column: 58, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2477, file: !845, discriminator: 2)
!2486 = !DILocation(line: 1700, column: 55, scope: !2485)
!2487 = !DILocation(line: 1700, column: 8, scope: !2485)
!2488 = !DILocation(line: 1702, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2477, file: !845, line: 1700, column: 73)
!2490 = !DILocation(line: 1703, column: 7, scope: !2489)
!2491 = !DILocation(line: 1706, column: 5, scope: !2460)
!2492 = !DILocation(line: 1706, column: 13, scope: !2460)
!2493 = !DILocation(line: 1707, column: 31, scope: !2460)
!2494 = !DILocation(line: 1707, column: 4, scope: !2460)
!2495 = !DILocation(line: 1714, column: 36, scope: !2460)
!2496 = !DILocation(line: 1715, column: 36, scope: !2460)
!2497 = !DILocation(line: 1715, column: 45, scope: !2460)
!2498 = !DILocation(line: 1715, column: 52, scope: !2460)
!2499 = !DILocation(line: 1715, column: 65, scope: !2460)
!2500 = !DILocation(line: 1714, column: 10, scope: !2460)
!2501 = !DILocation(line: 1714, column: 8, scope: !2460)
!2502 = !DILocation(line: 1716, column: 18, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2460, file: !845, line: 1716, column: 8)
!2504 = !DILocation(line: 1716, column: 15, scope: !2503)
!2505 = !DILocation(line: 1716, column: 8, scope: !2460)
!2506 = !DILocation(line: 1717, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !845, line: 1716, column: 23)
!2508 = !DILocation(line: 1720, column: 8, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2460, file: !845, line: 1720, column: 8)
!2510 = !DILocation(line: 1720, column: 17, scope: !2509)
!2511 = !DILocation(line: 1720, column: 24, scope: !2509)
!2512 = !DILocation(line: 1720, column: 37, scope: !2509)
!2513 = !DILocation(line: 1720, column: 56, scope: !2509)
!2514 = !DILocation(line: 1720, column: 8, scope: !2460)
!2515 = !DILocation(line: 1721, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !845, line: 1720, column: 75)
!2517 = !DILocation(line: 1722, column: 7, scope: !2516)
!2518 = !DILocation(line: 1725, column: 35, scope: !2460)
!2519 = !DILocation(line: 1725, column: 44, scope: !2460)
!2520 = !DILocation(line: 1725, column: 51, scope: !2460)
!2521 = !DILocation(line: 1725, column: 64, scope: !2460)
!2522 = !DILocation(line: 1725, column: 26, scope: !2460)
!2523 = !DILocation(line: 1726, column: 9, scope: !2460)
!2524 = !DILocation(line: 1726, column: 18, scope: !2460)
!2525 = !DILocation(line: 1726, column: 25, scope: !2460)
!2526 = !DILocation(line: 1726, column: 38, scope: !2460)
!2527 = !DILocation(line: 1726, column: 7, scope: !2460)
!2528 = !DILocation(line: 1725, column: 24, scope: !2460)
!2529 = !DILocation(line: 1728, column: 8, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2460, file: !845, line: 1728, column: 8)
!2531 = !DILocation(line: 1729, column: 33, scope: !2530)
!2532 = !DILocation(line: 1729, column: 42, scope: !2530)
!2533 = !DILocation(line: 1729, column: 31, scope: !2530)
!2534 = !DILocation(line: 1728, column: 28, scope: !2530)
!2535 = !DILocation(line: 1728, column: 8, scope: !2460)
!2536 = !DILocation(line: 1730, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !845, line: 1729, column: 61)
!2538 = !DILocation(line: 1731, column: 7, scope: !2537)
!2539 = !DILocation(line: 1734, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2460, file: !845, line: 1734, column: 8)
!2541 = !DILocation(line: 1734, column: 17, scope: !2540)
!2542 = !DILocation(line: 1734, column: 34, scope: !2540)
!2543 = !DILocation(line: 1734, column: 8, scope: !2460)
!2544 = !DILocalVariable(name: "serializedBuffer", scope: !2545, file: !845, line: 1735, type: !835)
!2545 = distinct !DILexicalBlock(scope: !2540, file: !845, line: 1734, column: 39)
!2546 = !DILocation(line: 1735, column: 19, scope: !2545)
!2547 = !DILocation(line: 1735, column: 53, scope: !2545)
!2548 = !DILocation(line: 1735, column: 38, scope: !2545)
!2549 = !DILocation(line: 1735, column: 61, scope: !2545)
!2550 = !DILocation(line: 1737, column: 41, scope: !2545)
!2551 = !DILocation(line: 1738, column: 41, scope: !2545)
!2552 = !DILocation(line: 1739, column: 41, scope: !2545)
!2553 = !DILocation(line: 1739, column: 50, scope: !2545)
!2554 = !DILocation(line: 1737, column: 13, scope: !2545)
!2555 = !DILocation(line: 1737, column: 11, scope: !2545)
!2556 = !DILocation(line: 1741, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !845, line: 1741, column: 11)
!2558 = !DILocation(line: 1741, column: 18, scope: !2557)
!2559 = !DILocation(line: 1741, column: 11, scope: !2545)
!2560 = !DILocation(line: 1742, column: 10, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !845, line: 1741, column: 26)
!2562 = !DILocation(line: 1744, column: 4, scope: !2545)
!2563 = !DILocation(line: 1746, column: 15, scope: !2460)
!2564 = !DILocation(line: 1746, column: 24, scope: !2460)
!2565 = !DILocation(line: 1746, column: 5, scope: !2460)
!2566 = !DILocation(line: 1746, column: 13, scope: !2460)
!2567 = !DILocation(line: 1747, column: 8, scope: !2460)
!2568 = !DILocation(line: 1747, column: 4, scope: !2460)
!2569 = !DILocation(line: 1751, column: 11, scope: !2460)
!2570 = !DILocation(line: 1751, column: 4, scope: !2460)
!2571 = distinct !DISubprogram(name: "VixMsg_ParseSimpleResponseWithString", scope: !845, file: !845, line: 1775, type: !2572, isLocal: false, isDefinition: true, scopeLine: 1777, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!878, !1351, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64, align: 64)
!2575 = !DILocalVariable(name: "response", arg: 1, scope: !2571, file: !845, line: 1775, type: !1351)
!2576 = !DILocation(line: 1775, column: 70, scope: !2571)
!2577 = !DILocalVariable(name: "result", arg: 2, scope: !2571, file: !845, line: 1776, type: !2574)
!2578 = !DILocation(line: 1776, column: 51, scope: !2571)
!2579 = !DILocalVariable(name: "err", scope: !2571, file: !845, line: 1778, type: !878)
!2580 = !DILocation(line: 1778, column: 13, scope: !2571)
!2581 = !DILocalVariable(name: "parser", scope: !2571, file: !845, line: 1779, type: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMAutomationMsgParser", file: !4, line: 2579, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 2576, size: 128, align: 64, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "currentPtr", scope: !2583, file: !4, line: 2577, baseType: !835, size: 64, align: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "endPtr", scope: !2583, file: !4, line: 2578, baseType: !835, size: 64, align: 64, offset: 64)
!2587 = !DILocation(line: 1779, column: 26, scope: !2571)
!2588 = !DILocation(line: 1781, column: 75, scope: !2571)
!2589 = !DILocation(line: 1781, column: 10, scope: !2571)
!2590 = !DILocation(line: 1781, column: 8, scope: !2571)
!2591 = !DILocation(line: 1782, column: 18, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2571, file: !845, line: 1782, column: 8)
!2593 = !DILocation(line: 1782, column: 15, scope: !2592)
!2594 = !DILocation(line: 1782, column: 8, scope: !2571)
!2595 = !DILocation(line: 1783, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !845, line: 1782, column: 23)
!2597 = !DILocation(line: 1786, column: 21, scope: !2571)
!2598 = !DILocation(line: 1786, column: 31, scope: !2571)
!2599 = !DILocation(line: 1786, column: 44, scope: !2571)
!2600 = !DILocation(line: 1786, column: 56, scope: !2571)
!2601 = !DILocation(line: 1786, column: 10, scope: !2571)
!2602 = !DILocation(line: 1786, column: 8, scope: !2571)
!2603 = !DILocation(line: 1786, column: 4, scope: !2571)
!2604 = !DILocation(line: 1791, column: 11, scope: !2571)
!2605 = !DILocation(line: 1791, column: 4, scope: !2571)
!2606 = distinct !DISubprogram(name: "__VMAutomationMsgParserInitResponse", scope: !845, file: !845, line: 2083, type: !2607, isLocal: false, isDefinition: true, scopeLine: 2088, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!878, !835, !792, !2609, !1351, !879}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64, align: 64)
!2610 = !DILocalVariable(name: "caller", arg: 1, scope: !2606, file: !845, line: 2083, type: !835)
!2611 = !DILocation(line: 2083, column: 49, scope: !2606)
!2612 = !DILocalVariable(name: "line", arg: 2, scope: !2606, file: !845, line: 2084, type: !792)
!2613 = !DILocation(line: 2084, column: 50, scope: !2606)
!2614 = !DILocalVariable(name: "state", arg: 3, scope: !2606, file: !845, line: 2085, type: !2609)
!2615 = !DILocation(line: 2085, column: 60, scope: !2606)
!2616 = !DILocalVariable(name: "msg", arg: 4, scope: !2606, file: !845, line: 2086, type: !1351)
!2617 = !DILocation(line: 2086, column: 69, scope: !2606)
!2618 = !DILocalVariable(name: "fixedLength", arg: 5, scope: !2606, file: !845, line: 2087, type: !879)
!2619 = !DILocation(line: 2087, column: 44, scope: !2606)
!2620 = !DILocation(line: 2089, column: 37, scope: !2606)
!2621 = !DILocation(line: 2089, column: 45, scope: !2606)
!2622 = !DILocation(line: 2089, column: 51, scope: !2606)
!2623 = !DILocation(line: 2089, column: 59, scope: !2606)
!2624 = !DILocation(line: 2089, column: 64, scope: !2606)
!2625 = !DILocation(line: 2090, column: 50, scope: !2606)
!2626 = !DILocation(line: 2089, column: 11, scope: !2606)
!2627 = !DILocation(line: 2089, column: 4, scope: !2606)
!2628 = distinct !DISubprogram(name: "__VMAutomationMsgParserGetOptionalString", scope: !845, file: !845, line: 2286, type: !2629, isLocal: false, isDefinition: true, scopeLine: 2291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!878, !835, !792, !2609, !879, !2574}
!2631 = !DILocalVariable(name: "caller", arg: 1, scope: !2628, file: !845, line: 2286, type: !835)
!2632 = !DILocation(line: 2286, column: 54, scope: !2628)
!2633 = !DILocalVariable(name: "line", arg: 2, scope: !2628, file: !845, line: 2287, type: !792)
!2634 = !DILocation(line: 2287, column: 55, scope: !2628)
!2635 = !DILocalVariable(name: "state", arg: 3, scope: !2628, file: !845, line: 2288, type: !2609)
!2636 = !DILocation(line: 2288, column: 65, scope: !2628)
!2637 = !DILocalVariable(name: "length", arg: 4, scope: !2628, file: !845, line: 2289, type: !879)
!2638 = !DILocation(line: 2289, column: 49, scope: !2628)
!2639 = !DILocalVariable(name: "result", arg: 5, scope: !2628, file: !845, line: 2290, type: !2574)
!2640 = !DILocation(line: 2290, column: 55, scope: !2628)
!2641 = !DILocation(line: 2292, column: 8, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2628, file: !845, line: 2292, column: 8)
!2643 = !DILocation(line: 2292, column: 8, scope: !2628)
!2644 = !DILocalVariable(name: "err", scope: !2645, file: !845, line: 2293, type: !878)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !845, line: 2292, column: 16)
!2646 = !DILocation(line: 2293, column: 16, scope: !2645)
!2647 = !DILocalVariable(name: "string", scope: !2645, file: !845, line: 2294, type: !835)
!2648 = !DILocation(line: 2294, column: 19, scope: !2645)
!2649 = !DILocation(line: 2296, column: 44, scope: !2645)
!2650 = !DILocation(line: 2296, column: 52, scope: !2645)
!2651 = !DILocation(line: 2296, column: 58, scope: !2645)
!2652 = !DILocation(line: 2296, column: 65, scope: !2645)
!2653 = !DILocation(line: 2296, column: 13, scope: !2645)
!2654 = !DILocation(line: 2296, column: 11, scope: !2645)
!2655 = !DILocation(line: 2298, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2645, file: !845, line: 2298, column: 11)
!2657 = !DILocation(line: 2298, column: 18, scope: !2656)
!2658 = !DILocation(line: 2298, column: 11, scope: !2645)
!2659 = !DILocation(line: 2299, column: 17, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !845, line: 2298, column: 26)
!2661 = !DILocation(line: 2299, column: 10, scope: !2660)
!2662 = !DILocation(line: 2301, column: 42, scope: !2645)
!2663 = !DILocation(line: 2301, column: 50, scope: !2645)
!2664 = !DILocation(line: 2301, column: 56, scope: !2645)
!2665 = !DILocation(line: 2301, column: 64, scope: !2645)
!2666 = !DILocation(line: 2301, column: 13, scope: !2645)
!2667 = !DILocation(line: 2301, column: 11, scope: !2645)
!2668 = !DILocation(line: 2302, column: 21, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2645, file: !845, line: 2302, column: 11)
!2670 = !DILocation(line: 2302, column: 18, scope: !2669)
!2671 = !DILocation(line: 2302, column: 11, scope: !2645)
!2672 = !DILocation(line: 2303, column: 17, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !845, line: 2302, column: 26)
!2674 = !DILocation(line: 2303, column: 10, scope: !2673)
!2675 = !DILocation(line: 2305, column: 17, scope: !2645)
!2676 = !DILocation(line: 2305, column: 8, scope: !2645)
!2677 = !DILocation(line: 2305, column: 15, scope: !2645)
!2678 = !DILocation(line: 2306, column: 4, scope: !2645)
!2679 = !DILocation(line: 2307, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2642, file: !845, line: 2306, column: 11)
!2681 = !DILocation(line: 2307, column: 15, scope: !2680)
!2682 = !DILocation(line: 2309, column: 4, scope: !2628)
!2683 = !DILocation(line: 2310, column: 1, scope: !2628)
!2684 = distinct !DISubprogram(name: "VixMsg_ReallocClientData", scope: !845, file: !845, line: 1835, type: !2685, isLocal: false, isDefinition: true, scopeLine: 1837, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!814, !814, !879}
!2687 = !DILocalVariable(name: "ptr", arg: 1, scope: !2684, file: !845, line: 1835, type: !814)
!2688 = !DILocation(line: 1835, column: 32, scope: !2684)
!2689 = !DILocalVariable(name: "size", arg: 2, scope: !2684, file: !845, line: 1836, type: !879)
!2690 = !DILocation(line: 1836, column: 33, scope: !2684)
!2691 = !DILocation(line: 1838, column: 19, scope: !2684)
!2692 = !DILocation(line: 1838, column: 24, scope: !2684)
!2693 = !DILocation(line: 1838, column: 11, scope: !2684)
!2694 = !DILocation(line: 1838, column: 4, scope: !2684)
!2695 = distinct !DISubprogram(name: "__VMAutomationMsgParserInitRequest", scope: !845, file: !845, line: 2040, type: !2696, isLocal: false, isDefinition: true, scopeLine: 2045, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!878, !835, !792, !2609, !876, !879}
!2698 = !DILocalVariable(name: "caller", arg: 1, scope: !2695, file: !845, line: 2040, type: !835)
!2699 = !DILocation(line: 2040, column: 48, scope: !2695)
!2700 = !DILocalVariable(name: "line", arg: 2, scope: !2695, file: !845, line: 2041, type: !792)
!2701 = !DILocation(line: 2041, column: 49, scope: !2695)
!2702 = !DILocalVariable(name: "state", arg: 3, scope: !2695, file: !845, line: 2042, type: !2609)
!2703 = !DILocation(line: 2042, column: 59, scope: !2695)
!2704 = !DILocalVariable(name: "msg", arg: 4, scope: !2695, file: !845, line: 2043, type: !876)
!2705 = !DILocation(line: 2043, column: 67, scope: !2695)
!2706 = !DILocalVariable(name: "fixedLength", arg: 5, scope: !2695, file: !845, line: 2044, type: !879)
!2707 = !DILocation(line: 2044, column: 43, scope: !2695)
!2708 = !DILocalVariable(name: "miscDataLength", scope: !2695, file: !845, line: 2046, type: !879)
!2709 = !DILocation(line: 2046, column: 11, scope: !2695)
!2710 = !DILocation(line: 2053, column: 47, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2695, file: !845, line: 2053, column: 8)
!2712 = !DILocation(line: 2053, column: 52, scope: !2711)
!2713 = !DILocation(line: 2053, column: 45, scope: !2711)
!2714 = !DILocation(line: 2053, column: 8, scope: !2695)
!2715 = !DILocation(line: 2054, column: 22, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !845, line: 2053, column: 66)
!2717 = !DILocation(line: 2055, column: 4, scope: !2716)
!2718 = !DILocation(line: 2056, column: 22, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2711, file: !845, line: 2055, column: 11)
!2720 = !DILocation(line: 2059, column: 37, scope: !2695)
!2721 = !DILocation(line: 2059, column: 45, scope: !2695)
!2722 = !DILocation(line: 2059, column: 51, scope: !2695)
!2723 = !DILocation(line: 2059, column: 59, scope: !2695)
!2724 = !DILocation(line: 2059, column: 64, scope: !2695)
!2725 = !DILocation(line: 2060, column: 50, scope: !2695)
!2726 = !DILocation(line: 2060, column: 63, scope: !2695)
!2727 = !DILocation(line: 2059, column: 11, scope: !2695)
!2728 = !DILocation(line: 2059, column: 4, scope: !2695)
!2729 = distinct !DISubprogram(name: "VMAutomationMsgParserInit", scope: !845, file: !845, line: 2112, type: !2730, isLocal: true, isDefinition: true, scopeLine: 2120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!878, !835, !792, !2609, !1218, !879, !879, !879, !835}
!2732 = !DILocalVariable(name: "caller", arg: 1, scope: !2729, file: !845, line: 2112, type: !835)
!2733 = !DILocation(line: 2112, column: 39, scope: !2729)
!2734 = !DILocalVariable(name: "line", arg: 2, scope: !2729, file: !845, line: 2113, type: !792)
!2735 = !DILocation(line: 2113, column: 40, scope: !2729)
!2736 = !DILocalVariable(name: "state", arg: 3, scope: !2729, file: !845, line: 2114, type: !2609)
!2737 = !DILocation(line: 2114, column: 50, scope: !2729)
!2738 = !DILocalVariable(name: "msg", arg: 4, scope: !2729, file: !845, line: 2115, type: !1218)
!2739 = !DILocation(line: 2115, column: 47, scope: !2729)
!2740 = !DILocalVariable(name: "headerLength", arg: 5, scope: !2729, file: !845, line: 2116, type: !879)
!2741 = !DILocation(line: 2116, column: 34, scope: !2729)
!2742 = !DILocalVariable(name: "fixedLength", arg: 6, scope: !2729, file: !845, line: 2117, type: !879)
!2743 = !DILocation(line: 2117, column: 34, scope: !2729)
!2744 = !DILocalVariable(name: "miscDataLength", arg: 7, scope: !2729, file: !845, line: 2118, type: !879)
!2745 = !DILocation(line: 2118, column: 34, scope: !2729)
!2746 = !DILocalVariable(name: "packetType", arg: 8, scope: !2729, file: !845, line: 2119, type: !835)
!2747 = !DILocation(line: 2119, column: 39, scope: !2729)
!2748 = !DILocalVariable(name: "headerAndBodyLength", scope: !2729, file: !845, line: 2121, type: !788)
!2749 = !DILocation(line: 2121, column: 11, scope: !2729)
!2750 = !DILocalVariable(name: "computedTotalLength", scope: !2729, file: !845, line: 2123, type: !839)
!2751 = !DILocation(line: 2123, column: 10, scope: !2729)
!2752 = !DILocation(line: 2123, column: 39, scope: !2729)
!2753 = !DILocation(line: 2123, column: 44, scope: !2729)
!2754 = !DILocation(line: 2123, column: 32, scope: !2729)
!2755 = !DILocation(line: 2124, column: 14, scope: !2729)
!2756 = !DILocation(line: 2124, column: 19, scope: !2729)
!2757 = !DILocation(line: 2124, column: 7, scope: !2729)
!2758 = !DILocation(line: 2123, column: 57, scope: !2729)
!2759 = !DILocation(line: 2124, column: 39, scope: !2729)
!2760 = !DILocation(line: 2124, column: 44, scope: !2729)
!2761 = !DILocation(line: 2124, column: 32, scope: !2729)
!2762 = !DILocation(line: 2124, column: 30, scope: !2729)
!2763 = !DILocation(line: 2125, column: 14, scope: !2729)
!2764 = !DILocation(line: 2124, column: 61, scope: !2729)
!2765 = !DILocalVariable(name: "extBodySize", scope: !2729, file: !845, line: 2127, type: !839)
!2766 = !DILocation(line: 2127, column: 10, scope: !2729)
!2767 = !DILocation(line: 2127, column: 31, scope: !2729)
!2768 = !DILocation(line: 2127, column: 36, scope: !2729)
!2769 = !DILocation(line: 2127, column: 24, scope: !2729)
!2770 = !DILocation(line: 2127, column: 58, scope: !2729)
!2771 = !DILocation(line: 2127, column: 63, scope: !2729)
!2772 = !DILocation(line: 2127, column: 51, scope: !2729)
!2773 = !DILocation(line: 2127, column: 49, scope: !2729)
!2774 = !DILocation(line: 2128, column: 14, scope: !2729)
!2775 = !DILocation(line: 2127, column: 74, scope: !2729)
!2776 = !DILocation(line: 2130, column: 8, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2729, file: !845, line: 2130, column: 8)
!2778 = !DILocation(line: 2130, column: 38, scope: !2777)
!2779 = !DILocation(line: 2130, column: 43, scope: !2777)
!2780 = !DILocation(line: 2130, column: 31, scope: !2777)
!2781 = !DILocation(line: 2130, column: 28, scope: !2777)
!2782 = !DILocation(line: 2130, column: 8, scope: !2729)
!2783 = !DILocation(line: 2131, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !845, line: 2130, column: 63)
!2785 = !DILocation(line: 2132, column: 7, scope: !2784)
!2786 = !DILocation(line: 2135, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2729, file: !845, line: 2135, column: 8)
!2788 = !DILocation(line: 2135, column: 20, scope: !2787)
!2789 = !DILocation(line: 2135, column: 8, scope: !2729)
!2790 = !DILocation(line: 2136, column: 59, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !845, line: 2135, column: 25)
!2792 = !DILocation(line: 2136, column: 7, scope: !2791)
!2793 = !DILocation(line: 2137, column: 7, scope: !2791)
!2794 = !DILocation(line: 2146, column: 8, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2729, file: !845, line: 2146, column: 8)
!2796 = !DILocation(line: 2146, column: 13, scope: !2795)
!2797 = !DILocation(line: 2146, column: 29, scope: !2795)
!2798 = !DILocation(line: 2146, column: 26, scope: !2795)
!2799 = !DILocation(line: 2146, column: 8, scope: !2729)
!2800 = !DILocation(line: 2149, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2795, file: !845, line: 2146, column: 43)
!2802 = !DILocation(line: 2149, column: 19, scope: !2801)
!2803 = !DILocation(line: 2149, column: 25, scope: !2801)
!2804 = !DILocation(line: 2149, column: 37, scope: !2801)
!2805 = !DILocation(line: 2149, column: 42, scope: !2801)
!2806 = !DILocation(line: 2149, column: 56, scope: !2801)
!2807 = !DILocation(line: 2147, column: 7, scope: !2801)
!2808 = !DILocation(line: 2150, column: 7, scope: !2801)
!2809 = !DILocation(line: 2157, column: 26, scope: !2729)
!2810 = !DILocation(line: 2157, column: 31, scope: !2729)
!2811 = !DILocation(line: 2157, column: 46, scope: !2729)
!2812 = !DILocation(line: 2157, column: 51, scope: !2729)
!2813 = !DILocation(line: 2157, column: 44, scope: !2729)
!2814 = !DILocation(line: 2157, column: 24, scope: !2729)
!2815 = !DILocation(line: 2159, column: 8, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2729, file: !845, line: 2159, column: 8)
!2817 = !DILocation(line: 2159, column: 8, scope: !2729)
!2818 = !DILocation(line: 2160, column: 41, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !845, line: 2159, column: 15)
!2820 = !DILocation(line: 2160, column: 27, scope: !2819)
!2821 = !DILocation(line: 2160, column: 47, scope: !2819)
!2822 = !DILocation(line: 2160, column: 45, scope: !2819)
!2823 = !DILocation(line: 2160, column: 7, scope: !2819)
!2824 = !DILocation(line: 2160, column: 14, scope: !2819)
!2825 = !DILocation(line: 2160, column: 25, scope: !2819)
!2826 = !DILocation(line: 2161, column: 37, scope: !2819)
!2827 = !DILocation(line: 2161, column: 23, scope: !2819)
!2828 = !DILocation(line: 2161, column: 43, scope: !2819)
!2829 = !DILocation(line: 2161, column: 41, scope: !2819)
!2830 = !DILocation(line: 2161, column: 7, scope: !2819)
!2831 = !DILocation(line: 2161, column: 14, scope: !2819)
!2832 = !DILocation(line: 2161, column: 21, scope: !2819)
!2833 = !DILocation(line: 2162, column: 4, scope: !2819)
!2834 = !DILocation(line: 2163, column: 4, scope: !2729)
!2835 = !DILocation(line: 2164, column: 1, scope: !2729)
!2836 = distinct !DISubprogram(name: "VMAutomation_VerifyRequestLength", scope: !845, file: !845, line: 2185, type: !2837, isLocal: false, isDefinition: true, scopeLine: 2187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!878, !876, !879}
!2839 = !DILocalVariable(name: "request", arg: 1, scope: !2836, file: !845, line: 2185, type: !876)
!2840 = !DILocation(line: 2185, column: 65, scope: !2836)
!2841 = !DILocalVariable(name: "fixedLength", arg: 2, scope: !2836, file: !845, line: 2186, type: !879)
!2842 = !DILocation(line: 2186, column: 41, scope: !2836)
!2843 = !DILocation(line: 2188, column: 12, scope: !2836)
!2844 = !DILocation(line: 2188, column: 21, scope: !2836)
!2845 = !DILocation(line: 2188, column: 11, scope: !2836)
!2846 = !DILocation(line: 2188, column: 4, scope: !2836)
!2847 = distinct !DISubprogram(name: "VMAutomationMsgParserGetRemainingData", scope: !845, file: !845, line: 2209, type: !2848, isLocal: false, isDefinition: true, scopeLine: 2211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!881, !2609, !883}
!2850 = !DILocalVariable(name: "state", arg: 1, scope: !2847, file: !845, line: 2209, type: !2609)
!2851 = !DILocation(line: 2209, column: 62, scope: !2847)
!2852 = !DILocalVariable(name: "length", arg: 2, scope: !2847, file: !845, line: 2210, type: !883)
!2853 = !DILocation(line: 2210, column: 47, scope: !2847)
!2854 = !DILocalVariable(name: "data", scope: !2847, file: !845, line: 2212, type: !881)
!2855 = !DILocation(line: 2212, column: 16, scope: !2847)
!2856 = !DILocation(line: 2214, column: 14, scope: !2847)
!2857 = !DILocation(line: 2214, column: 21, scope: !2847)
!2858 = !DILocation(line: 2214, column: 30, scope: !2847)
!2859 = !DILocation(line: 2214, column: 37, scope: !2847)
!2860 = !DILocation(line: 2214, column: 28, scope: !2847)
!2861 = !DILocation(line: 2214, column: 5, scope: !2847)
!2862 = !DILocation(line: 2214, column: 12, scope: !2847)
!2863 = !DILocation(line: 2215, column: 11, scope: !2847)
!2864 = !DILocation(line: 2215, column: 18, scope: !2847)
!2865 = !DILocation(line: 2215, column: 9, scope: !2847)
!2866 = !DILocation(line: 2216, column: 24, scope: !2847)
!2867 = !DILocation(line: 2216, column: 31, scope: !2847)
!2868 = !DILocation(line: 2216, column: 4, scope: !2847)
!2869 = !DILocation(line: 2216, column: 11, scope: !2847)
!2870 = !DILocation(line: 2216, column: 22, scope: !2847)
!2871 = !DILocation(line: 2218, column: 11, scope: !2847)
!2872 = !DILocation(line: 2218, column: 4, scope: !2847)
!2873 = distinct !DISubprogram(name: "__VMAutomationMsgParserGetData", scope: !845, file: !845, line: 2240, type: !2629, isLocal: false, isDefinition: true, scopeLine: 2245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2874 = !DILocalVariable(name: "caller", arg: 1, scope: !2873, file: !845, line: 2240, type: !835)
!2875 = !DILocation(line: 2240, column: 44, scope: !2873)
!2876 = !DILocalVariable(name: "line", arg: 2, scope: !2873, file: !845, line: 2241, type: !792)
!2877 = !DILocation(line: 2241, column: 45, scope: !2873)
!2878 = !DILocalVariable(name: "state", arg: 3, scope: !2873, file: !845, line: 2242, type: !2609)
!2879 = !DILocation(line: 2242, column: 55, scope: !2873)
!2880 = !DILocalVariable(name: "length", arg: 4, scope: !2873, file: !845, line: 2243, type: !879)
!2881 = !DILocation(line: 2243, column: 39, scope: !2873)
!2882 = !DILocalVariable(name: "result", arg: 5, scope: !2873, file: !845, line: 2244, type: !2574)
!2883 = !DILocation(line: 2244, column: 45, scope: !2873)
!2884 = !DILocalVariable(name: "available", scope: !2873, file: !845, line: 2246, type: !879)
!2885 = !DILocation(line: 2246, column: 11, scope: !2873)
!2886 = !DILocation(line: 2248, column: 16, scope: !2873)
!2887 = !DILocation(line: 2248, column: 23, scope: !2873)
!2888 = !DILocation(line: 2248, column: 32, scope: !2873)
!2889 = !DILocation(line: 2248, column: 39, scope: !2873)
!2890 = !DILocation(line: 2248, column: 30, scope: !2873)
!2891 = !DILocation(line: 2248, column: 14, scope: !2873)
!2892 = !DILocation(line: 2251, column: 8, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2873, file: !845, line: 2251, column: 8)
!2894 = !DILocation(line: 2251, column: 20, scope: !2893)
!2895 = !DILocation(line: 2251, column: 18, scope: !2893)
!2896 = !DILocation(line: 2251, column: 8, scope: !2873)
!2897 = !DILocation(line: 2254, column: 11, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !845, line: 2251, column: 28)
!2899 = !DILocation(line: 2254, column: 19, scope: !2898)
!2900 = !DILocation(line: 2254, column: 25, scope: !2898)
!2901 = !DILocation(line: 2254, column: 36, scope: !2898)
!2902 = !DILocation(line: 2252, column: 7, scope: !2898)
!2903 = !DILocation(line: 2255, column: 7, scope: !2898)
!2904 = !DILocation(line: 2258, column: 8, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2873, file: !845, line: 2258, column: 8)
!2906 = !DILocation(line: 2258, column: 8, scope: !2873)
!2907 = !DILocation(line: 2259, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !845, line: 2258, column: 16)
!2909 = !DILocation(line: 2259, column: 24, scope: !2908)
!2910 = !DILocation(line: 2259, column: 8, scope: !2908)
!2911 = !DILocation(line: 2259, column: 15, scope: !2908)
!2912 = !DILocation(line: 2260, column: 4, scope: !2908)
!2913 = !DILocation(line: 2261, column: 25, scope: !2873)
!2914 = !DILocation(line: 2261, column: 4, scope: !2873)
!2915 = !DILocation(line: 2261, column: 11, scope: !2873)
!2916 = !DILocation(line: 2261, column: 22, scope: !2873)
!2917 = !DILocation(line: 2262, column: 4, scope: !2873)
!2918 = !DILocation(line: 2263, column: 1, scope: !2873)
!2919 = distinct !DISubprogram(name: "__VMAutomationValidateString", scope: !845, file: !845, line: 1905, type: !2920, isLocal: true, isDefinition: true, scopeLine: 1909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!878, !835, !792, !835, !879}
!2922 = !DILocalVariable(name: "caller", arg: 1, scope: !2919, file: !845, line: 1905, type: !835)
!2923 = !DILocation(line: 1905, column: 42, scope: !2919)
!2924 = !DILocalVariable(name: "line", arg: 2, scope: !2919, file: !845, line: 1906, type: !792)
!2925 = !DILocation(line: 1906, column: 43, scope: !2919)
!2926 = !DILocalVariable(name: "buffer", arg: 3, scope: !2919, file: !845, line: 1907, type: !835)
!2927 = !DILocation(line: 1907, column: 42, scope: !2919)
!2928 = !DILocalVariable(name: "available", arg: 4, scope: !2919, file: !845, line: 1908, type: !879)
!2929 = !DILocation(line: 1908, column: 37, scope: !2919)
!2930 = !DILocalVariable(name: "stringLength", scope: !2919, file: !845, line: 1910, type: !879)
!2931 = !DILocation(line: 1910, column: 11, scope: !2919)
!2932 = !DILocation(line: 1915, column: 8, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2919, file: !845, line: 1915, column: 8)
!2934 = !DILocation(line: 1915, column: 18, scope: !2933)
!2935 = !DILocation(line: 1915, column: 8, scope: !2919)
!2936 = !DILocation(line: 1916, column: 66, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !845, line: 1915, column: 23)
!2938 = !DILocation(line: 1916, column: 74, scope: !2937)
!2939 = !DILocation(line: 1916, column: 7, scope: !2937)
!2940 = !DILocation(line: 1917, column: 7, scope: !2937)
!2941 = !DILocation(line: 1925, column: 30, scope: !2919)
!2942 = !DILocation(line: 1925, column: 38, scope: !2919)
!2943 = !DILocation(line: 1925, column: 19, scope: !2919)
!2944 = !DILocation(line: 1925, column: 17, scope: !2919)
!2945 = !DILocation(line: 1926, column: 8, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2919, file: !845, line: 1926, column: 8)
!2947 = !DILocation(line: 1926, column: 24, scope: !2946)
!2948 = !DILocation(line: 1926, column: 21, scope: !2946)
!2949 = !DILocation(line: 1926, column: 8, scope: !2919)
!2950 = !DILocation(line: 1928, column: 36, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !845, line: 1926, column: 35)
!2952 = !DILocation(line: 1928, column: 44, scope: !2951)
!2953 = !DILocation(line: 1927, column: 7, scope: !2951)
!2954 = !DILocation(line: 1929, column: 7, scope: !2951)
!2955 = !DILocation(line: 1937, column: 8, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2919, file: !845, line: 1937, column: 8)
!2957 = !DILocation(line: 1937, column: 21, scope: !2956)
!2958 = !DILocation(line: 1937, column: 28, scope: !2956)
!2959 = !DILocation(line: 1937, column: 25, scope: !2956)
!2960 = !DILocation(line: 1937, column: 8, scope: !2919)
!2961 = !DILocation(line: 1939, column: 34, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !845, line: 1937, column: 39)
!2963 = !DILocation(line: 1939, column: 42, scope: !2962)
!2964 = !DILocation(line: 1939, column: 48, scope: !2962)
!2965 = !DILocation(line: 1938, column: 7, scope: !2962)
!2966 = !DILocation(line: 1940, column: 7, scope: !2962)
!2967 = !DILocation(line: 1948, column: 31, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2919, file: !845, line: 1948, column: 8)
!2969 = !DILocation(line: 1948, column: 39, scope: !2968)
!2970 = !DILocation(line: 1948, column: 9, scope: !2968)
!2971 = !DILocation(line: 1948, column: 8, scope: !2919)
!2972 = !DILocation(line: 1949, column: 63, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !845, line: 1948, column: 76)
!2974 = !DILocation(line: 1949, column: 71, scope: !2973)
!2975 = !DILocation(line: 1949, column: 7, scope: !2973)
!2976 = !DILocation(line: 1950, column: 7, scope: !2973)
!2977 = !DILocation(line: 1953, column: 4, scope: !2919)
!2978 = !DILocation(line: 1954, column: 1, scope: !2919)
!2979 = distinct !DISubprogram(name: "__VMAutomationMsgParserGetOptionalStrings", scope: !845, file: !845, line: 2333, type: !2980, isLocal: false, isDefinition: true, scopeLine: 2339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!878, !835, !792, !2609, !788, !879, !2574}
!2982 = !DILocalVariable(name: "caller", arg: 1, scope: !2979, file: !845, line: 2333, type: !835)
!2983 = !DILocation(line: 2333, column: 55, scope: !2979)
!2984 = !DILocalVariable(name: "line", arg: 2, scope: !2979, file: !845, line: 2334, type: !792)
!2985 = !DILocation(line: 2334, column: 56, scope: !2979)
!2986 = !DILocalVariable(name: "state", arg: 3, scope: !2979, file: !845, line: 2335, type: !2609)
!2987 = !DILocation(line: 2335, column: 56, scope: !2979)
!2988 = !DILocalVariable(name: "count", arg: 4, scope: !2979, file: !845, line: 2336, type: !788)
!2989 = !DILocation(line: 2336, column: 50, scope: !2979)
!2990 = !DILocalVariable(name: "length", arg: 5, scope: !2979, file: !845, line: 2337, type: !879)
!2991 = !DILocation(line: 2337, column: 50, scope: !2979)
!2992 = !DILocalVariable(name: "result", arg: 6, scope: !2979, file: !845, line: 2338, type: !2574)
!2993 = !DILocation(line: 2338, column: 56, scope: !2979)
!2994 = !DILocalVariable(name: "err", scope: !2979, file: !845, line: 2340, type: !878)
!2995 = !DILocation(line: 2340, column: 13, scope: !2979)
!2996 = !DILocalVariable(name: "buffer", scope: !2979, file: !845, line: 2341, type: !835)
!2997 = !DILocation(line: 2341, column: 16, scope: !2979)
!2998 = !DILocalVariable(name: "theResult", scope: !2979, file: !845, line: 2342, type: !835)
!2999 = !DILocation(line: 2342, column: 16, scope: !2979)
!3000 = !DILocalVariable(name: "i", scope: !2979, file: !845, line: 2343, type: !862)
!3001 = !DILocation(line: 2343, column: 8, scope: !2979)
!3002 = !DILocalVariable(name: "strLen", scope: !2979, file: !845, line: 2344, type: !879)
!3003 = !DILocation(line: 2344, column: 11, scope: !2979)
!3004 = !DILocation(line: 2346, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2979, file: !845, line: 2346, column: 8)
!3006 = !DILocation(line: 2346, column: 10, scope: !3005)
!3007 = !DILocation(line: 2346, column: 8, scope: !2979)
!3008 = !DILocation(line: 2347, column: 8, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !845, line: 2346, column: 20)
!3010 = !DILocation(line: 2347, column: 15, scope: !3009)
!3011 = !DILocation(line: 2348, column: 7, scope: !3009)
!3012 = !DILocation(line: 2351, column: 41, scope: !2979)
!3013 = !DILocation(line: 2351, column: 49, scope: !2979)
!3014 = !DILocation(line: 2351, column: 55, scope: !2979)
!3015 = !DILocation(line: 2351, column: 62, scope: !2979)
!3016 = !DILocation(line: 2351, column: 10, scope: !2979)
!3017 = !DILocation(line: 2351, column: 8, scope: !2979)
!3018 = !DILocation(line: 2353, column: 18, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2979, file: !845, line: 2353, column: 8)
!3020 = !DILocation(line: 2353, column: 15, scope: !3019)
!3021 = !DILocation(line: 2353, column: 8, scope: !2979)
!3022 = !DILocation(line: 2354, column: 14, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !845, line: 2353, column: 23)
!3024 = !DILocation(line: 2354, column: 7, scope: !3023)
!3025 = !DILocation(line: 2357, column: 16, scope: !2979)
!3026 = !DILocation(line: 2357, column: 14, scope: !2979)
!3027 = !DILocation(line: 2359, column: 11, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2979, file: !845, line: 2359, column: 4)
!3029 = !DILocation(line: 2359, column: 9, scope: !3028)
!3030 = !DILocation(line: 2359, column: 16, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3032, file: !845, discriminator: 1)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !845, line: 2359, column: 4)
!3033 = !DILocation(line: 2359, column: 20, scope: !3031)
!3034 = !DILocation(line: 2359, column: 18, scope: !3031)
!3035 = !DILocation(line: 2359, column: 4, scope: !3031)
!3036 = !DILocation(line: 2360, column: 50, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !845, line: 2359, column: 32)
!3038 = !DILocation(line: 2360, column: 58, scope: !3037)
!3039 = !DILocation(line: 2361, column: 50, scope: !3037)
!3040 = !DILocation(line: 2361, column: 58, scope: !3037)
!3041 = !DILocation(line: 2360, column: 13, scope: !3037)
!3042 = !DILocation(line: 2360, column: 11, scope: !3037)
!3043 = !DILocation(line: 2362, column: 21, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3037, file: !845, line: 2362, column: 11)
!3045 = !DILocation(line: 2362, column: 18, scope: !3044)
!3046 = !DILocation(line: 2362, column: 11, scope: !3037)
!3047 = !DILocation(line: 2363, column: 17, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !845, line: 2362, column: 26)
!3049 = !DILocation(line: 2363, column: 10, scope: !3048)
!3050 = !DILocation(line: 2366, column: 18, scope: !3037)
!3051 = !DILocation(line: 2366, column: 25, scope: !3037)
!3052 = !DILocation(line: 2366, column: 14, scope: !3037)
!3053 = !DILocation(line: 2367, column: 18, scope: !3037)
!3054 = !DILocation(line: 2367, column: 25, scope: !3037)
!3055 = !DILocation(line: 2367, column: 14, scope: !3037)
!3056 = !DILocation(line: 2368, column: 4, scope: !3037)
!3057 = !DILocation(line: 2359, column: 27, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3032, file: !845, discriminator: 2)
!3059 = !DILocation(line: 2359, column: 4, scope: !3058)
!3060 = distinct !{!3060, !3061}
!3061 = !DILocation(line: 2359, column: 4, scope: !2979)
!3062 = !DILocation(line: 2375, column: 8, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2979, file: !845, line: 2375, column: 8)
!3064 = !DILocation(line: 2375, column: 15, scope: !3063)
!3065 = !DILocation(line: 2375, column: 8, scope: !2979)
!3066 = !DILocation(line: 2377, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !845, line: 2375, column: 21)
!3068 = !DILocation(line: 2377, column: 19, scope: !3067)
!3069 = !DILocation(line: 2376, column: 7, scope: !3067)
!3070 = !DILocation(line: 2378, column: 7, scope: !3067)
!3071 = !DILocation(line: 2381, column: 14, scope: !2979)
!3072 = !DILocation(line: 2381, column: 5, scope: !2979)
!3073 = !DILocation(line: 2381, column: 12, scope: !2979)
!3074 = !DILocation(line: 2381, column: 4, scope: !2979)
!3075 = !DILocation(line: 2385, column: 11, scope: !2979)
!3076 = !DILocation(line: 2385, column: 4, scope: !2979)
!3077 = !DILocation(line: 2386, column: 1, scope: !2979)
!3078 = distinct !DISubprogram(name: "__VMAutomationValidateStringInBuffer", scope: !845, file: !845, line: 1977, type: !3079, isLocal: true, isDefinition: true, scopeLine: 1982, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!878, !835, !792, !835, !879, !883}
!3081 = !DILocalVariable(name: "caller", arg: 1, scope: !3078, file: !845, line: 1977, type: !835)
!3082 = !DILocation(line: 1977, column: 50, scope: !3078)
!3083 = !DILocalVariable(name: "line", arg: 2, scope: !3078, file: !845, line: 1978, type: !792)
!3084 = !DILocation(line: 1978, column: 51, scope: !3078)
!3085 = !DILocalVariable(name: "buffer", arg: 3, scope: !3078, file: !845, line: 1979, type: !835)
!3086 = !DILocation(line: 1979, column: 50, scope: !3078)
!3087 = !DILocalVariable(name: "available", arg: 4, scope: !3078, file: !845, line: 1980, type: !879)
!3088 = !DILocation(line: 1980, column: 45, scope: !3078)
!3089 = !DILocalVariable(name: "strLen", arg: 5, scope: !3078, file: !845, line: 1981, type: !883)
!3090 = !DILocation(line: 1981, column: 46, scope: !3078)
!3091 = !DILocalVariable(name: "stringLength", scope: !3078, file: !845, line: 1983, type: !879)
!3092 = !DILocation(line: 1983, column: 11, scope: !3078)
!3093 = !DILocation(line: 1988, column: 8, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3078, file: !845, line: 1988, column: 8)
!3095 = !DILocation(line: 1988, column: 18, scope: !3094)
!3096 = !DILocation(line: 1988, column: 8, scope: !3078)
!3097 = !DILocation(line: 1989, column: 66, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !845, line: 1988, column: 23)
!3099 = !DILocation(line: 1989, column: 74, scope: !3098)
!3100 = !DILocation(line: 1989, column: 7, scope: !3098)
!3101 = !DILocation(line: 1990, column: 7, scope: !3098)
!3102 = !DILocation(line: 1998, column: 30, scope: !3078)
!3103 = !DILocation(line: 1998, column: 38, scope: !3078)
!3104 = !DILocation(line: 1998, column: 19, scope: !3078)
!3105 = !DILocation(line: 1998, column: 17, scope: !3078)
!3106 = !DILocation(line: 1999, column: 14, scope: !3078)
!3107 = !DILocation(line: 1999, column: 5, scope: !3078)
!3108 = !DILocation(line: 1999, column: 12, scope: !3078)
!3109 = !DILocation(line: 2001, column: 8, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3078, file: !845, line: 2001, column: 8)
!3111 = !DILocation(line: 2001, column: 24, scope: !3110)
!3112 = !DILocation(line: 2001, column: 21, scope: !3110)
!3113 = !DILocation(line: 2001, column: 8, scope: !3078)
!3114 = !DILocation(line: 2003, column: 36, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !845, line: 2001, column: 35)
!3116 = !DILocation(line: 2003, column: 44, scope: !3115)
!3117 = !DILocation(line: 2002, column: 7, scope: !3115)
!3118 = !DILocation(line: 2004, column: 7, scope: !3115)
!3119 = !DILocation(line: 2012, column: 31, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3078, file: !845, line: 2012, column: 8)
!3121 = !DILocation(line: 2012, column: 39, scope: !3120)
!3122 = !DILocation(line: 2012, column: 9, scope: !3120)
!3123 = !DILocation(line: 2012, column: 8, scope: !3078)
!3124 = !DILocation(line: 2013, column: 63, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !845, line: 2012, column: 76)
!3126 = !DILocation(line: 2013, column: 71, scope: !3125)
!3127 = !DILocation(line: 2013, column: 7, scope: !3125)
!3128 = !DILocation(line: 2014, column: 7, scope: !3125)
!3129 = !DILocation(line: 2017, column: 4, scope: !3078)
!3130 = !DILocation(line: 2018, column: 1, scope: !3078)
!3131 = distinct !DISubprogram(name: "__VMAutomationMsgParserGetString", scope: !845, file: !845, line: 2410, type: !2629, isLocal: false, isDefinition: true, scopeLine: 2415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!3132 = !DILocalVariable(name: "caller", arg: 1, scope: !3131, file: !845, line: 2410, type: !835)
!3133 = !DILocation(line: 2410, column: 46, scope: !3131)
!3134 = !DILocalVariable(name: "line", arg: 2, scope: !3131, file: !845, line: 2411, type: !792)
!3135 = !DILocation(line: 2411, column: 47, scope: !3131)
!3136 = !DILocalVariable(name: "state", arg: 3, scope: !3131, file: !845, line: 2412, type: !2609)
!3137 = !DILocation(line: 2412, column: 57, scope: !3131)
!3138 = !DILocalVariable(name: "length", arg: 4, scope: !3131, file: !845, line: 2413, type: !879)
!3139 = !DILocation(line: 2413, column: 41, scope: !3131)
!3140 = !DILocalVariable(name: "result", arg: 5, scope: !3131, file: !845, line: 2414, type: !2574)
!3141 = !DILocation(line: 2414, column: 47, scope: !3131)
!3142 = !DILocalVariable(name: "err", scope: !3131, file: !845, line: 2416, type: !878)
!3143 = !DILocation(line: 2416, column: 13, scope: !3131)
!3144 = !DILocalVariable(name: "string", scope: !3131, file: !845, line: 2417, type: !835)
!3145 = !DILocation(line: 2417, column: 16, scope: !3131)
!3146 = !DILocation(line: 2419, column: 10, scope: !3131)
!3147 = !DILocation(line: 2420, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3131, file: !845, line: 2420, column: 8)
!3149 = !DILocation(line: 2420, column: 8, scope: !3131)
!3150 = !DILocation(line: 2421, column: 44, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !845, line: 2420, column: 17)
!3152 = !DILocation(line: 2421, column: 52, scope: !3151)
!3153 = !DILocation(line: 2421, column: 7, scope: !3151)
!3154 = !DILocation(line: 2422, column: 7, scope: !3151)
!3155 = !DILocation(line: 2424, column: 41, scope: !3131)
!3156 = !DILocation(line: 2424, column: 49, scope: !3131)
!3157 = !DILocation(line: 2424, column: 55, scope: !3131)
!3158 = !DILocation(line: 2424, column: 62, scope: !3131)
!3159 = !DILocation(line: 2424, column: 10, scope: !3131)
!3160 = !DILocation(line: 2424, column: 8, scope: !3131)
!3161 = !DILocation(line: 2426, column: 18, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3131, file: !845, line: 2426, column: 8)
!3163 = !DILocation(line: 2426, column: 15, scope: !3162)
!3164 = !DILocation(line: 2426, column: 8, scope: !3131)
!3165 = !DILocation(line: 2427, column: 14, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !845, line: 2426, column: 23)
!3167 = !DILocation(line: 2427, column: 7, scope: !3166)
!3168 = !DILocation(line: 2429, column: 39, scope: !3131)
!3169 = !DILocation(line: 2429, column: 47, scope: !3131)
!3170 = !DILocation(line: 2429, column: 53, scope: !3131)
!3171 = !DILocation(line: 2429, column: 61, scope: !3131)
!3172 = !DILocation(line: 2429, column: 10, scope: !3131)
!3173 = !DILocation(line: 2429, column: 8, scope: !3131)
!3174 = !DILocation(line: 2430, column: 18, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3131, file: !845, line: 2430, column: 8)
!3176 = !DILocation(line: 2430, column: 15, scope: !3175)
!3177 = !DILocation(line: 2430, column: 8, scope: !3131)
!3178 = !DILocation(line: 2431, column: 14, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !845, line: 2430, column: 23)
!3180 = !DILocation(line: 2431, column: 7, scope: !3179)
!3181 = !DILocation(line: 2434, column: 14, scope: !3131)
!3182 = !DILocation(line: 2434, column: 5, scope: !3131)
!3183 = !DILocation(line: 2434, column: 12, scope: !3131)
!3184 = !DILocation(line: 2435, column: 4, scope: !3131)
!3185 = !DILocation(line: 2436, column: 1, scope: !3131)
!3186 = distinct !DISubprogram(name: "__VMAutomationMsgParserGetPropertyList", scope: !845, file: !845, line: 2457, type: !3187, isLocal: false, isDefinition: true, scopeLine: 2462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!878, !835, !792, !2609, !879, !2329}
!3189 = !DILocalVariable(name: "caller", arg: 1, scope: !3186, file: !845, line: 2457, type: !835)
!3190 = !DILocation(line: 2457, column: 52, scope: !3186)
!3191 = !DILocalVariable(name: "line", arg: 2, scope: !3186, file: !845, line: 2458, type: !792)
!3192 = !DILocation(line: 2458, column: 53, scope: !3186)
!3193 = !DILocalVariable(name: "state", arg: 3, scope: !3186, file: !845, line: 2459, type: !2609)
!3194 = !DILocation(line: 2459, column: 63, scope: !3186)
!3195 = !DILocalVariable(name: "length", arg: 4, scope: !3186, file: !845, line: 2460, type: !879)
!3196 = !DILocation(line: 2460, column: 47, scope: !3186)
!3197 = !DILocalVariable(name: "propList", arg: 5, scope: !3186, file: !845, line: 2461, type: !2329)
!3198 = !DILocation(line: 2461, column: 61, scope: !3186)
!3199 = !DILocalVariable(name: "err", scope: !3186, file: !845, line: 2463, type: !878)
!3200 = !DILocation(line: 2463, column: 13, scope: !3186)
!3201 = !DILocation(line: 2465, column: 8, scope: !3186)
!3202 = !DILocation(line: 2466, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3186, file: !845, line: 2466, column: 8)
!3204 = !DILocation(line: 2466, column: 8, scope: !3186)
!3205 = !DILocalVariable(name: "data", scope: !3206, file: !845, line: 2467, type: !835)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !845, line: 2466, column: 16)
!3207 = !DILocation(line: 2467, column: 19, scope: !3206)
!3208 = !DILocation(line: 2469, column: 44, scope: !3206)
!3209 = !DILocation(line: 2469, column: 52, scope: !3206)
!3210 = !DILocation(line: 2469, column: 58, scope: !3206)
!3211 = !DILocation(line: 2469, column: 65, scope: !3206)
!3212 = !DILocation(line: 2469, column: 13, scope: !3206)
!3213 = !DILocation(line: 2469, column: 11, scope: !3206)
!3214 = !DILocation(line: 2471, column: 21, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !845, line: 2471, column: 11)
!3216 = !DILocation(line: 2471, column: 18, scope: !3215)
!3217 = !DILocation(line: 2471, column: 11, scope: !3206)
!3218 = !DILocation(line: 2472, column: 44, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !845, line: 2471, column: 26)
!3220 = !DILocation(line: 2472, column: 54, scope: !3219)
!3221 = !DILocation(line: 2472, column: 60, scope: !3219)
!3222 = !DILocation(line: 2472, column: 16, scope: !3219)
!3223 = !DILocation(line: 2472, column: 14, scope: !3219)
!3224 = !DILocation(line: 2474, column: 7, scope: !3219)
!3225 = !DILocation(line: 2475, column: 4, scope: !3206)
!3226 = !DILocation(line: 2477, column: 11, scope: !3186)
!3227 = !DILocation(line: 2477, column: 4, scope: !3186)
!3228 = distinct !DISubprogram(name: "Util_Zero", scope: !1803, file: !1803, line: 170, type: !1804, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!3229 = !DILocalVariable(name: "buf", arg: 1, scope: !3228, file: !1803, line: 170, type: !814)
!3230 = !DILocation(line: 170, column: 17, scope: !3228)
!3231 = !DILocalVariable(name: "bufSize", arg: 2, scope: !3228, file: !1803, line: 171, type: !879)
!3232 = !DILocation(line: 171, column: 18, scope: !3228)
!3233 = !DILocation(line: 173, column: 8, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3228, file: !1803, line: 173, column: 8)
!3235 = !DILocation(line: 173, column: 12, scope: !3234)
!3236 = !DILocation(line: 173, column: 8, scope: !3228)
!3237 = !DILocation(line: 181, column: 14, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !1803, line: 173, column: 20)
!3239 = !DILocation(line: 181, column: 22, scope: !3238)
!3240 = !DILocation(line: 181, column: 7, scope: !3238)
!3241 = !DILocation(line: 186, column: 7, scope: !3238)
!3242 = !{i32 87955}
!3243 = !DILocation(line: 189, column: 4, scope: !3238)
!3244 = !DILocation(line: 190, column: 1, scope: !3228)
!3245 = distinct !DISubprogram(name: "Util_ZeroString", scope: !1803, file: !1803, line: 210, type: !2129, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !848)
!3246 = !DILocalVariable(name: "str", arg: 1, scope: !3245, file: !1803, line: 210, type: !826)
!3247 = !DILocation(line: 210, column: 23, scope: !3245)
!3248 = !DILocation(line: 212, column: 8, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !1803, line: 212, column: 8)
!3250 = !DILocation(line: 212, column: 12, scope: !3249)
!3251 = !DILocation(line: 212, column: 8, scope: !3245)
!3252 = !DILocation(line: 213, column: 17, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !1803, line: 212, column: 20)
!3254 = !DILocation(line: 213, column: 29, scope: !3253)
!3255 = !DILocation(line: 213, column: 22, scope: !3253)
!3256 = !DILocation(line: 213, column: 7, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3253, file: !1803, discriminator: 1)
!3258 = !DILocation(line: 214, column: 4, scope: !3253)
!3259 = !DILocation(line: 215, column: 1, scope: !3245)
!3260 = !DILocalVariable(name: "charIndex", scope: !844, file: !845, line: 971, type: !879)
!3261 = !DILocation(line: 971, column: 11, scope: !844)
!3262 = !DILocation(line: 974, column: 8, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !844, file: !845, line: 974, column: 8)
!3264 = !DILocation(line: 974, column: 8, scope: !844)
!3265 = !DILocation(line: 975, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !845, line: 974, column: 26)
!3267 = !DILocation(line: 978, column: 19, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !844, file: !845, line: 978, column: 4)
!3269 = !DILocation(line: 978, column: 9, scope: !3268)
!3270 = !DILocation(line: 978, column: 24, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3272, file: !845, discriminator: 1)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !845, line: 978, column: 4)
!3273 = !DILocation(line: 978, column: 34, scope: !3271)
!3274 = !DILocation(line: 978, column: 4, scope: !3271)
!3275 = !DILocation(line: 979, column: 32, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3272, file: !845, line: 978, column: 83)
!3277 = !DILocation(line: 979, column: 7, scope: !3276)
!3278 = !DILocation(line: 979, column: 43, scope: !3276)
!3279 = !DILocation(line: 980, column: 32, scope: !3276)
!3280 = !DILocation(line: 980, column: 7, scope: !3276)
!3281 = !DILocation(line: 980, column: 43, scope: !3276)
!3282 = !DILocation(line: 981, column: 4, scope: !3276)
!3283 = !DILocation(line: 978, column: 79, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3272, file: !845, discriminator: 2)
!3285 = !DILocation(line: 978, column: 4, scope: !3284)
!3286 = distinct !{!3286, !3287}
!3287 = !DILocation(line: 978, column: 4, scope: !844)
!3288 = !DILocation(line: 983, column: 35, scope: !844)
!3289 = !DILocation(line: 984, column: 35, scope: !844)
!3290 = !DILocation(line: 985, column: 35, scope: !844)
!3291 = !DILocation(line: 986, column: 34, scope: !844)
!3292 = !DILocation(line: 987, column: 35, scope: !844)
!3293 = !DILocation(line: 988, column: 35, scope: !844)
!3294 = !DILocation(line: 989, column: 35, scope: !844)
!3295 = !DILocation(line: 991, column: 34, scope: !844)
!3296 = !DILocation(line: 992, column: 34, scope: !844)
!3297 = !DILocation(line: 993, column: 34, scope: !844)
!3298 = !DILocation(line: 994, column: 34, scope: !844)
!3299 = !DILocation(line: 995, column: 34, scope: !844)
!3300 = !DILocation(line: 996, column: 34, scope: !844)
!3301 = !DILocation(line: 997, column: 34, scope: !844)
!3302 = !DILocation(line: 999, column: 21, scope: !844)
!3303 = !DILocation(line: 1000, column: 1, scope: !844)
!3304 = !DILocation(line: 1000, column: 1, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !844, file: !845, discriminator: 1)
