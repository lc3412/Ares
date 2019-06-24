; ModuleID = './hgfsServerLinux.o.i'
source_filename = "./hgfsServerLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.HgfsFileAttrInfo = type { i32, i64, i32, i64, i64, i64, i64, i64, i8, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, i32, i32, %struct.HgfsShortFileName }
%struct.HgfsShortFileName = type { i32, [48 x i8] }
%struct.timezone = type { i32, i32 }
%struct.HgfsFileOpenInfo = type { i32, i32, i64, i32, i32, i8, i8, i8, i8, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.HgfsShareInfo }
%struct.HgfsShareInfo = type { i8*, i64, i8, i8, i32 }
%struct.HgfsSessionInfo = type { %struct.DblLnkLst_Links, i8, i32, i64, i32, %struct.HgfsTransportSessionInfo*, i32, %struct.MXUserExclLock*, i32, %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.HgfsFileNode*, i32, %struct.DblLnkLst_Links, %struct.DblLnkLst_Links, i32, i32, %struct.MXUserExclLock*, %struct.HgfsSearch*, i32, %struct.DblLnkLst_Links, [65 x %struct.HgfsOpCapability], i32, %struct.HgfsAsyncRequestInfo }
%struct.HgfsTransportSessionInfo = type opaque
%struct.Atomic_uint32 = type { i32 }
%struct.HgfsFileNode = type { %struct.DblLnkLst_Links, i32, i8*, i64, i8*, i64, %struct.HgfsLocalId, i32, i32, i32, i32, i32, i32, i8*, %struct.HgfsShareInfo }
%struct.HgfsLocalId = type { i64, i64 }
%struct.MXUserExclLock = type opaque
%struct.HgfsSearch = type { %struct.DblLnkLst_Links, i32, i32, i8*, i64, i8*, i64, %struct.DirectoryEntry**, i32, i32, %struct.HgfsShareInfo }
%struct.DirectoryEntry = type { i64, i64, i16, i8, [256 x i8] }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsOpCapability = type { i32, i32 }
%struct.HgfsAsyncRequestInfo = type { %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.MXUserCondVar* }
%struct.MXUserCondVar = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rlimit = type { i64, i64 }
%struct.HgfsCreateDirInfo = type { i32, i64, i8, i8, i8, i8, i32, i8*, i32, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque

@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"hgfsServerLinux.c\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Invalid HgfsOpenMode %d\0A\00", align 1
@__FUNCTION__.HgfsServerGetOpenMode = private unnamed_addr constant [22 x i8] c"HgfsServerGetOpenMode\00", align 1
@HgfsServerOpenMode = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"hgfsServer\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s:%s:\00", align 1
@__FUNCTION__.HgfsPlatformCloseFile = private unnamed_addr constant [22 x i8] c"HgfsPlatformCloseFile\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: Could not close fd %d: %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformGetFd = private unnamed_addr constant [18 x i8] c"HgfsPlatformGetFd\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: Invalid hgfs handle.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s: Couldn't close file \22%s\22 for reopening\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: Could not update the node in the cache\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s: Couldn't open file \22%s\22: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"%s: Could not update the node -- node is not used.\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s: Could not add node to the cache\0A\00", align 1
@__FUNCTION__.HgfsPlatformValidateOpen = private unnamed_addr constant [25 x i8] c"HgfsPlatformValidateOpen\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"%s: Error: Unwritable share mode %u flags %u file \22%s\22: %d %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"%s: Error: Unreadable share flags %u file \22%s\22: %d %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%s: Error: open file \22%s\22: %d %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s: Error: stat file\22%s\22: %d %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformFilenameLookup = private unnamed_addr constant [27 x i8] c"HgfsPlatformFilenameLookup\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"%s: Case insensitive lookup, fileName: %s, flags: %u.\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%s: strdup on fileName failed.\0A\00", align 1
@__FUNCTION__.HgfsPlatformGetattrFromName = private unnamed_addr constant [28 x i8] c"HgfsPlatformGetattrFromName\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"%s: getting attrs for \22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%s: error stating file: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%s: is a directory\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"%s: is a symlink\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s: readlink returned wrong size\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s: NOT a directory or symlink\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"%s: could not resolve file aliases\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"%s: alias target is outside shared folder\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"%s: symlink target \22%s\22\0A\00", align 1
@__FUNCTION__.HgfsPlatformGetattrFromFd = private unnamed_addr constant [26 x i8] c"HgfsPlatformGetattrFromFd\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"%s: getting attrs for %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"%s: could not get HGFS handle for fd %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%s: could not get share mode fd %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"%s: could not map cached target file handle %u\0A\00", align 1
@__FUNCTION__.HgfsPlatformSetattrFromFd = private unnamed_addr constant [26 x i8] c"HgfsPlatformSetattrFromFd\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"%s: Could not get file descriptor\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"%s: error stating file %u: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: set uid %u and gid %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"%s: error chowning file %u: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"%s: set mode %o\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"%s: error chmoding file %u: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"%s: File handle is no longer valid.\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"%s: Client attempted to truncate an oplocked file\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"%s: error truncating file %u: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"%s: set size %lu\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"%s: setting new times\0A\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"%s: only owner of file %u or root can call futimes\0A\00", align 1
@.str.45 = private unnamed_addr constant [66 x i8] c"%s: Executing futimes as owner on file: %u failed with error: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [70 x i8] c"%s: Executing futimes as superuser on file: %u failed with error: %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformSetattrFromName = private unnamed_addr constant [28 x i8] c"HgfsPlatformSetattrFromName\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"%s: pathname contains a symlink\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: setting attrs for \22%s\22\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"%s: error stating file \22%s\22: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"%s: error chowning file \22%s\22: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"%s: error chmoding file \22%s\22: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"%s: error truncating file \22%s\22: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"%s: utimes error on file \22%s\22: %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformVDirStatsFs = private unnamed_addr constant [24 x i8] c"HgfsPlatformVDirStatsFs\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"%s: opened search on base\0A\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"%s: Skipping fake share %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"%s: No such share or access denied\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"%s: error getting volume information\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"%s: could not close search on base\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"%s: file access check failed\0A\00", align 1
@__FUNCTION__.HgfsPlatformSetDirEntry = private unnamed_addr constant [24 x i8] c"HgfsPlatformSetDirEntry\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"%s: about to stat \22%s\22\0A\00", align 1
@.str.63 = private unnamed_addr constant [69 x i8] c"%s: Reusing existing oplocked handle to avoid oplock break deadlock\0A\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"%s: stat FAILED %s (%d)\0A\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"%s: could not allocate space for \22%s\5C%s\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"%s: assigning %s default attributes\0A\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"%s: stat FAILED\0A\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"%s: dent name is \22%s\22 len = %u\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"%s: error %d getting dent\0A\00", align 1
@__FUNCTION__.HgfsPlatformScandir = private unnamed_addr constant [20 x i8] c"HgfsPlatformScandir\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: error in open: %d (%s)\0A\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"%s: error in getdents: %d (%s)\0A\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"%s: error in close: %d (%s)\0A\00", align 1
@__FUNCTION__.HgfsPlatformScanvdir = private unnamed_addr constant [21 x i8] c"HgfsPlatformScanvdir\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"%s: Error: init state ret %u\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"%s: Error: get next entry name ret %u\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"%s: No more names\0A\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"%s: Error: Name \22%s\22 is too long.\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"%s:  Error: realloc growing array memory ret %u\0A\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"%s: Nextfilename = \22%s\22\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"%s:  Error: allocate dentry memory ret %u\0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"%s: Error: realloc trimming array memory\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"%s: Error cleanup failed\0A\00", align 1
@__FUNCTION__.HgfsPlatformReadFile = private unnamed_addr constant [21 x i8] c"HgfsPlatformReadFile\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"%s: read fh %u, offset %lu, count %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"%s: Could not get file handle\0A\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"%s: Could not get sequenial open status\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"%s: error reading from file: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"%s: read %d bytes\0A\00", align 1
@__FUNCTION__.HgfsPlatformWriteFile = private unnamed_addr constant [22 x i8] c"HgfsPlatformWriteFile\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"%s: write fh %u offset %lu, count %u\0A\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"%s: error writing to file: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"%s: wrote %d bytes\0A\00", align 1
@__FUNCTION__.HgfsPlatformSearchDir = private unnamed_addr constant [22 x i8] c"HgfsPlatformSearchDir\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"%s: searching in \22%s\22, %s.\0A\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"%s: dir name not nul-terminated!\0A\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"%s: dirName: %s.\0A\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"%s: get first component failed\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"%s: couldn't scandir\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"%s: couldn't enumerate shares\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"%s: access check failed\0A\00", align 1
@__FUNCTION__.HgfsPlatformDeleteFileByName = private unnamed_addr constant [29 x i8] c"HgfsPlatformDeleteFileByName\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"%s: unlinking \22%s\22\0A\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"%s: error: %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformDeleteFileByHandle = private unnamed_addr constant [31 x i8] c"HgfsPlatformDeleteFileByHandle\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"%s: could not map cached file handle %u\0A\00", align 1
@__FUNCTION__.HgfsPlatformDeleteDirByName = private unnamed_addr constant [28 x i8] c"HgfsPlatformDeleteDirByName\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"%s: removing \22%s\22\0A\00", align 1
@__FUNCTION__.HgfsPlatformDeleteDirByHandle = private unnamed_addr constant [30 x i8] c"HgfsPlatformDeleteDirByHandle\00", align 1
@__FUNCTION__.HgfsPlatformRename = private unnamed_addr constant [19 x i8] c"HgfsPlatformRename\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"%s: renaming \22%s\22 to \22%s\22\0A\00", align 1
@__FUNCTION__.HgfsPlatformCreateDir = private unnamed_addr constant [22 x i8] c"HgfsPlatformCreateDir\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"%s: making dir \22%s\22, mode %o\0A\00", align 1
@__FUNCTION__.HgfsPlatformSymlinkCreate = private unnamed_addr constant [26 x i8] c"HgfsPlatformSymlinkCreate\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"%s: %s -> %s\0A\00", align 1
@__FUNCTION__.HgfsPlatformPathHasSymlink = private unnamed_addr constant [27 x i8] c"HgfsPlatformPathHasSymlink\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"%s: fileName: %s, sharePath: %s#\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"%s: failed to realloc fileDirName.\0A\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.107 = private unnamed_addr constant [42 x i8] c"%s: realpath failed: fileDirName: %s: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [61 x i8] c"%s: resolved parent do not match, parent: %s, resolved: %s#\0A\00", align 1
@__FUNCTION__.HgfsCheckFileNode = private unnamed_addr constant [18 x i8] c"HgfsCheckFileNode\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"%s: couldn't stat local file \22%s\22: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"%s: local Id mismatch\0A\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"%s: Invalid HgfsOpenFlags %d\0A\00", align 1
@__FUNCTION__.HgfsServerGetOpenFlags = private unnamed_addr constant [23 x i8] c"HgfsServerGetOpenFlags\00", align 1
@HgfsServerOpenFlags = internal constant [5 x i32] [i32 133120, i32 133632, i32 133184, i32 133312, i32 133696], align 16
@__FUNCTION__.HgfsCaseInsensitiveLookup = private unnamed_addr constant [26 x i8] c"HgfsCaseInsensitiveLookup\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"%s: failed to allocate for curDir\0A\00", align 1
@__FUNCTION__.HgfsConvertComponentCase = private unnamed_addr constant [25 x i8] c"HgfsConvertComponentCase\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"%s: failed to malloc myConvertedComponent.\0A\00", align 1
@__FUNCTION__.HgfsConstructConvertedPath = private unnamed_addr constant [27 x i8] c"HgfsConstructConvertedPath\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"%s: failed to realloc.\0A\00", align 1
@__FUNCTION__.HgfsGetSequentialOnlyFlagFromName = private unnamed_addr constant [34 x i8] c"HgfsGetSequentialOnlyFlagFromName\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"%s: Couldn't open the file \22%s\22\0A\00", align 1
@__FUNCTION__.HgfsGetSequentialOnlyFlagFromFd = private unnamed_addr constant [32 x i8] c"HgfsGetSequentialOnlyFlagFromFd\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"%s: pread returned %d, errno %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"%s: Marking the file as 'Sequential only' file\0A\00", align 1
@__FUNCTION__.HgfsStatToFileAttr = private unnamed_addr constant [19 x i8] c"HgfsStatToFileAttr\00", align 1
@.str.118 = private unnamed_addr constant [42 x i8] c"%s: done, permissions %o%o%o%o, size %lu\0A\00", align 1
@.str.119 = private unnamed_addr constant [48 x i8] c"access: %ld/%lu \0Awrite: %ld/%lu \0Aattr: %ld/%lu\0A\00", align 1
@__FUNCTION__.HgfsSetattrTimes = private unnamed_addr constant [17 x i8] c"HgfsSetattrTimes\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"%s: gettimeofday error: %s\0A\00", align 1
@__FUNCTION__.HgfsWriteCheckIORange = private unnamed_addr constant [22 x i8] c"HgfsWriteCheckIORange\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"%s: Could not get file size limit\0A\00", align 1
@.str.122 = private unnamed_addr constant [35 x i8] c"%s: File Size limits: 0x%lx 0x%lx\0A\00", align 1
@.str.123 = private unnamed_addr constant [54 x i8] c"%s: Write offset exceeds max file size limit - 0x%lx\0A\00", align 1
@.str.124 = private unnamed_addr constant [62 x i8] c"%s: Write data 0x%x bytes @ 0x%lx size exceeds max file size\0A\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"%s: Write data 0x%x bytes @ 0x%lx returns %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @futimes(i32, %struct.timeval*) #0 !dbg !560 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca [2 x %struct.timeval], align 16
  %7 = alloca [25 x i8], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !574, metadata !575), !dbg !576
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %5, metadata !577, metadata !575), !dbg !578
  call void @llvm.dbg.declare(metadata [2 x %struct.timeval]* %6, metadata !579, metadata !575), !dbg !583
  call void @llvm.dbg.declare(metadata [25 x i8]* %7, metadata !584, metadata !575), !dbg !588
  %8 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0, !dbg !589
  %9 = load %struct.timeval*, %struct.timeval** %5, align 8, !dbg !590
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, !dbg !590
  %11 = bitcast %struct.timeval* %8 to i8*, !dbg !590
  %12 = bitcast %struct.timeval* %10 to i8*, !dbg !590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !dbg !590
  %13 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 1, !dbg !591
  %14 = load %struct.timeval*, %struct.timeval** %5, align 8, !dbg !592
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i64 1, !dbg !592
  %16 = bitcast %struct.timeval* %13 to i8*, !dbg !592
  %17 = bitcast %struct.timeval* %15 to i8*, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !dbg !592
  %18 = getelementptr inbounds [25 x i8], [25 x i8]* %7, i32 0, i32 0, !dbg !593
  %19 = load i32, i32* %4, align 4, !dbg !595
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 %19) #9, !dbg !596
  %21 = icmp slt i32 %20, 0, !dbg !597
  br i1 %21, label %22, label %23, !dbg !598

; <label>:22:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !599
  br label %27, !dbg !599

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds [25 x i8], [25 x i8]* %7, i32 0, i32 0, !dbg !601
  %25 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i32 0, i32 0, !dbg !602
  %26 = call i32 @Posix_Utimes(i8* %24, %struct.timeval* %25), !dbg !603
  store i32 %26, i32* %3, align 4, !dbg !604
  br label %27, !dbg !604

; <label>:27:                                     ; preds = %23, %22
  %28 = load i32, i32* %3, align 4, !dbg !605
  ret i32 %28, !dbg !605
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @Posix_Utimes(i8*, %struct.timeval*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformConvertFromNameStatus(i32) #0 !dbg !606 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !612, metadata !575), !dbg !613
  %4 = load i32, i32* %3, align 4, !dbg !614
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %6
    i32 3, label %6
    i32 4, label %6
    i32 5, label %6
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 12, label %12
  ], !dbg !615

; <label>:5:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !616
  br label %14, !dbg !616

; <label>:6:                                      ; preds = %1, %1, %1, %1, %1, %1
  store i32 22, i32* %2, align 4, !dbg !618
  br label %14, !dbg !618

; <label>:7:                                      ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !619
  br label %14, !dbg !619

; <label>:8:                                      ; preds = %1
  store i32 13, i32* %2, align 4, !dbg !620
  br label %14, !dbg !620

; <label>:9:                                      ; preds = %1
  store i32 40, i32* %2, align 4, !dbg !621
  br label %14, !dbg !621

; <label>:10:                                     ; preds = %1
  store i32 12, i32* %2, align 4, !dbg !622
  br label %14, !dbg !622

; <label>:11:                                     ; preds = %1
  store i32 36, i32* %2, align 4, !dbg !623
  br label %14, !dbg !623

; <label>:12:                                     ; preds = %1
  store i32 20, i32* %2, align 4, !dbg !624
  br label %14, !dbg !624

; <label>:13:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 436) #10, !dbg !625
  unreachable, !dbg !625

; <label>:14:                                     ; preds = %12, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %2, align 4, !dbg !626
  ret i32 %15, !dbg !626
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @HgfsPlatformGetDefaultDirAttrs(%struct.HgfsFileAttrInfo*) #0 !dbg !627 {
  %2 = alloca %struct.HgfsFileAttrInfo*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i64, align 8
  store %struct.HgfsFileAttrInfo* %0, %struct.HgfsFileAttrInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %2, metadata !669, metadata !575), !dbg !670
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !671, metadata !575), !dbg !672
  call void @llvm.dbg.declare(metadata i64* %4, metadata !673, metadata !575), !dbg !674
  %5 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !675
  %6 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %5, i32 0, i32 2, !dbg !676
  store i32 1, i32* %6, align 8, !dbg !677
  %7 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !678
  %8 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %7, i32 0, i32 3, !dbg !679
  store i64 4192, i64* %8, align 8, !dbg !680
  %9 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #9, !dbg !681
  %10 = icmp ne i32 %9, 0, !dbg !683
  br i1 %10, label %11, label %12, !dbg !684

; <label>:11:                                     ; preds = %1
  store i64 0, i64* %4, align 8, !dbg !685
  br label %19, !dbg !687

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !688
  %14 = load i64, i64* %13, align 8, !dbg !688
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !690
  %16 = load i64, i64* %15, align 8, !dbg !690
  %17 = mul nsw i64 %16, 1000, !dbg !691
  %18 = call i64 @HgfsConvertToNtTime(i64 %14, i64 %17), !dbg !692
  store i64 %18, i64* %4, align 8, !dbg !693
  br label %19

; <label>:19:                                     ; preds = %12, %11
  %20 = load i64, i64* %4, align 8, !dbg !694
  %21 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !695
  %22 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %21, i32 0, i32 4, !dbg !696
  store i64 %20, i64* %22, align 8, !dbg !697
  %23 = load i64, i64* %4, align 8, !dbg !698
  %24 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !699
  %25 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %24, i32 0, i32 5, !dbg !700
  store i64 %23, i64* %25, align 8, !dbg !701
  %26 = load i64, i64* %4, align 8, !dbg !702
  %27 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !703
  %28 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %27, i32 0, i32 6, !dbg !704
  store i64 %26, i64* %28, align 8, !dbg !705
  %29 = load i64, i64* %4, align 8, !dbg !706
  %30 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !707
  %31 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %30, i32 0, i32 7, !dbg !708
  store i64 %29, i64* %31, align 8, !dbg !709
  %32 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !710
  %33 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %32, i32 0, i32 8, !dbg !711
  store i8 0, i8* %33, align 8, !dbg !712
  %34 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !713
  %35 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %34, i32 0, i32 9, !dbg !714
  store i8 5, i8* %35, align 1, !dbg !715
  %36 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !716
  %37 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %36, i32 0, i32 10, !dbg !717
  store i8 5, i8* %37, align 2, !dbg !718
  %38 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !719
  %39 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %38, i32 0, i32 11, !dbg !720
  store i8 5, i8* %39, align 1, !dbg !721
  %40 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %2, align 8, !dbg !722
  %41 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %40, i32 0, i32 1, !dbg !723
  store i64 1023, i64* %41, align 8, !dbg !724
  ret void, !dbg !725
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare i64 @HgfsConvertToNtTime(i64, i64) #4

; Function Attrs: nounwind uwtable
define signext i8 @HgfsPlatformInit() #0 !dbg !726 {
  ret i8 1, !dbg !730
}

; Function Attrs: nounwind uwtable
define void @HgfsPlatformDestroy() #0 !dbg !731 {
  ret void, !dbg !734
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerGetOpenMode(%struct.HgfsFileOpenInfo*, i32*) #0 !dbg !735 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.HgfsFileOpenInfo*, align 8
  %5 = alloca i32*, align 8
  store %struct.HgfsFileOpenInfo* %0, %struct.HgfsFileOpenInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileOpenInfo** %4, metadata !779, metadata !575), !dbg !780
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !781, metadata !575), !dbg !782
  %6 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !783
  %7 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %6, i32 0, i32 2, !dbg !785
  %8 = load i64, i64* %7, align 8, !dbg !785
  %9 = and i64 %8, 1, !dbg !786
  %10 = icmp eq i64 %9, 0, !dbg !787
  br i1 %10, label %11, label %13, !dbg !788

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8, !dbg !789
  store i32 0, i32* %12, align 4, !dbg !791
  store i8 1, i8* %3, align 1, !dbg !792
  br label %44, !dbg !792

; <label>:13:                                     ; preds = %2
  %14 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !793
  %15 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %14, i32 0, i32 3, !dbg !795
  %16 = load i32, i32* %15, align 8, !dbg !795
  %17 = and i32 %16, 3, !dbg !796
  %18 = icmp eq i32 %17, 0, !dbg !797
  br i1 %18, label %35, label %19, !dbg !798

; <label>:19:                                     ; preds = %13
  %20 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !799
  %21 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %20, i32 0, i32 3, !dbg !801
  %22 = load i32, i32* %21, align 8, !dbg !801
  %23 = and i32 %22, 3, !dbg !802
  %24 = icmp eq i32 %23, 1, !dbg !803
  br i1 %24, label %35, label %25, !dbg !804

; <label>:25:                                     ; preds = %19
  %26 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !805
  %27 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %26, i32 0, i32 3, !dbg !807
  %28 = load i32, i32* %27, align 8, !dbg !807
  %29 = and i32 %28, 3, !dbg !808
  %30 = icmp eq i32 %29, 2, !dbg !809
  br i1 %30, label %35, label %31, !dbg !810

; <label>:31:                                     ; preds = %25
  %32 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !811
  %33 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %32, i32 0, i32 3, !dbg !813
  %34 = load i32, i32* %33, align 8, !dbg !813
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsServerGetOpenMode, i32 0, i32 0), i32 %34), !dbg !814
  store i8 0, i8* %3, align 1, !dbg !815
  br label %44, !dbg !815

; <label>:35:                                     ; preds = %25, %19, %13
  %36 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %4, align 8, !dbg !816
  %37 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %36, i32 0, i32 3, !dbg !817
  %38 = load i32, i32* %37, align 8, !dbg !817
  %39 = and i32 %38, 3, !dbg !818
  %40 = zext i32 %39 to i64, !dbg !819
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* @HgfsServerOpenMode, i64 0, i64 %40, !dbg !819
  %42 = load i32, i32* %41, align 4, !dbg !819
  %43 = load i32*, i32** %5, align 8, !dbg !820
  store i32 %42, i32* %43, align 4, !dbg !821
  store i8 1, i8* %3, align 1, !dbg !822
  br label %44, !dbg !822

; <label>:44:                                     ; preds = %35, %31, %11
  %45 = load i8, i8* %3, align 1, !dbg !823
  ret i8 %45, !dbg !823
}

declare void @Log(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformCloseFile(i32, i8*) #0 !dbg !824 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !828, metadata !575), !dbg !829
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !830, metadata !575), !dbg !831
  %7 = load i32, i32* %4, align 4, !dbg !832
  %8 = call i32 @close(i32 %7), !dbg !834
  %9 = icmp ne i32 %8, 0, !dbg !835
  br i1 %9, label %10, label %19, !dbg !836

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !837, metadata !575), !dbg !839
  %11 = call i32* @__errno_location() #1, !dbg !840
  %12 = load i32, i32* %11, align 4, !dbg !841
  store i32 %12, i32* %6, align 4, !dbg !839
  br label %13, !dbg !842, !llvm.loop !843

; <label>:13:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCloseFile, i32 0, i32 0)), !dbg !844
  %14 = load i32, i32* %4, align 4, !dbg !849
  %15 = load i32, i32* %6, align 4, !dbg !850
  %16 = call i8* @Err_Errno2String(i32 %15), !dbg !851
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCloseFile, i32 0, i32 0), i32 %14, i8* %16), !dbg !853
  br label %17, !dbg !855

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %6, align 4, !dbg !856
  store i32 %18, i32* %3, align 4, !dbg !857
  br label %20, !dbg !857

; <label>:19:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !858
  br label %20, !dbg !858

; <label>:20:                                     ; preds = %19, %17
  %21 = load i32, i32* %3, align 4, !dbg !859
  ret i32 %21, !dbg !859
}

declare i32 @close(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @g_log(i8*, i32, i8*, ...) #4

declare i8* @Err_Errno2String(i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformGetFd(i32, %struct.HgfsSessionInfo*, i8 signext, i32*) #0 !dbg !860 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.HgfsSessionInfo*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.HgfsFileNode, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !975, metadata !575), !dbg !976
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %6, metadata !977, metadata !575), !dbg !978
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !979, metadata !575), !dbg !980
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !981, metadata !575), !dbg !982
  call void @llvm.dbg.declare(metadata i32* %9, metadata !983, metadata !575), !dbg !984
  store i32 -1, i32* %9, align 4, !dbg !984
  call void @llvm.dbg.declare(metadata i32* %10, metadata !985, metadata !575), !dbg !986
  store i32 0, i32* %10, align 4, !dbg !986
  call void @llvm.dbg.declare(metadata %struct.HgfsFileNode* %11, metadata !987, metadata !575), !dbg !988
  call void @llvm.dbg.declare(metadata i32* %12, metadata !989, metadata !575), !dbg !990
  store i32 0, i32* %12, align 4, !dbg !990
  %14 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !991
  store i8* null, i8** %14, align 8, !dbg !992
  %15 = load i32, i32* %5, align 4, !dbg !993
  %16 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !995
  %17 = call signext i8 @HgfsGetNodeCopy(i32 %15, %struct.HgfsSessionInfo* %16, i8 signext 1, %struct.HgfsFileNode* %11), !dbg !996
  %18 = icmp ne i8 %17, 0, !dbg !996
  br i1 %18, label %22, label %19, !dbg !997

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !998, !llvm.loop !1000

; <label>:20:                                     ; preds = %19
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1001
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1006
  br label %21, !dbg !1008

; <label>:21:                                     ; preds = %20
  store i32 9, i32* %12, align 4, !dbg !1009
  br label %115, !dbg !1010

; <label>:22:                                     ; preds = %4
  %23 = load i32, i32* %5, align 4, !dbg !1011
  %24 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !1013
  %25 = call signext i8 @HgfsIsCached(i32 %23, %struct.HgfsSessionInfo* %24), !dbg !1014
  %26 = icmp ne i8 %25, 0, !dbg !1014
  br i1 %26, label %27, label %62, !dbg !1015

; <label>:27:                                     ; preds = %22
  %28 = load i8, i8* %7, align 1, !dbg !1016
  %29 = sext i8 %28 to i32, !dbg !1016
  %30 = icmp ne i32 %29, 0, !dbg !1016
  br i1 %30, label %31, label %58, !dbg !1019

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 12, !dbg !1020
  %33 = load i32, i32* %32, align 4, !dbg !1020
  %34 = and i32 %33, 1, !dbg !1022
  %35 = icmp ne i32 %34, 0, !dbg !1022
  br i1 %35, label %58, label %36, !dbg !1023

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 7, !dbg !1024
  %38 = load i32, i32* %37, align 8, !dbg !1024
  %39 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 13, !dbg !1026
  %40 = load i8*, i8** %39, align 8, !dbg !1026
  %41 = call i32 @HgfsPlatformCloseFile(i32 %38, i8* %40), !dbg !1027
  store i32 %41, i32* %12, align 4, !dbg !1028
  %42 = load i32, i32* %12, align 4, !dbg !1029
  %43 = icmp ne i32 %42, 0, !dbg !1031
  br i1 %43, label %44, label %49, !dbg !1032

; <label>:44:                                     ; preds = %36
  br label %45, !dbg !1033, !llvm.loop !1035

; <label>:45:                                     ; preds = %44
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1036
  %46 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !1041
  %47 = load i8*, i8** %46, align 8, !dbg !1041
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0), i8* %47), !dbg !1042
  br label %48, !dbg !1044

; <label>:48:                                     ; preds = %45
  br label %115, !dbg !1045

; <label>:49:                                     ; preds = %36
  %50 = load i32, i32* %5, align 4, !dbg !1046
  %51 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !1048
  %52 = call signext i8 @HgfsUpdateNodeAppendFlag(i32 %50, %struct.HgfsSessionInfo* %51, i8 signext 1), !dbg !1049
  %53 = icmp ne i8 %52, 0, !dbg !1049
  br i1 %53, label %57, label %54, !dbg !1050

; <label>:54:                                     ; preds = %49
  br label %55, !dbg !1051, !llvm.loop !1053

; <label>:55:                                     ; preds = %54
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1054
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1059
  br label %56, !dbg !1061

; <label>:56:                                     ; preds = %55
  store i32 9, i32* %12, align 4, !dbg !1062
  br label %115, !dbg !1063

; <label>:57:                                     ; preds = %49
  br label %61, !dbg !1064

; <label>:58:                                     ; preds = %31, %27
  %59 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 7, !dbg !1065
  %60 = load i32, i32* %59, align 8, !dbg !1065
  store i32 %60, i32* %9, align 4, !dbg !1067
  br label %115, !dbg !1068

; <label>:61:                                     ; preds = %57
  br label %62, !dbg !1069

; <label>:62:                                     ; preds = %61, %22
  %63 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !1070
  %64 = load i8*, i8** %63, align 8, !dbg !1070
  %65 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 6, !dbg !1071
  %66 = call i32 @HgfsCheckFileNode(i8* %64, %struct.HgfsLocalId* %65), !dbg !1072
  store i32 %66, i32* %12, align 4, !dbg !1073
  %67 = load i32, i32* %12, align 4, !dbg !1074
  %68 = icmp ne i32 %67, 0, !dbg !1076
  br i1 %68, label %69, label %70, !dbg !1077

; <label>:69:                                     ; preds = %62
  br label %115, !dbg !1078

; <label>:70:                                     ; preds = %62
  %71 = call signext i8 @HgfsServerGetOpenFlags(i32 0, i32* %10), !dbg !1080
  %72 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !1081
  %73 = load i8*, i8** %72, align 8, !dbg !1081
  %74 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 8, !dbg !1082
  %75 = load i32, i32* %74, align 4, !dbg !1082
  %76 = load i32, i32* %10, align 4, !dbg !1083
  %77 = or i32 %75, %76, !dbg !1084
  %78 = load i8, i8* %7, align 1, !dbg !1085
  %79 = sext i8 %78 to i32, !dbg !1085
  %80 = icmp ne i32 %79, 0, !dbg !1085
  %81 = select i1 %80, i32 1024, i32 0, !dbg !1085
  %82 = or i32 %77, %81, !dbg !1086
  %83 = call i32 (i8*, i32, ...) @Posix_Open(i8* %73, i32 %82), !dbg !1087
  store i32 %83, i32* %9, align 4, !dbg !1088
  %84 = load i32, i32* %9, align 4, !dbg !1089
  %85 = icmp slt i32 %84, 0, !dbg !1091
  br i1 %85, label %86, label %97, !dbg !1092

; <label>:86:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1093, metadata !575), !dbg !1095
  %87 = call i32* @__errno_location() #1, !dbg !1096
  %88 = load i32, i32* %87, align 4, !dbg !1097
  store i32 %88, i32* %13, align 4, !dbg !1095
  br label %89, !dbg !1098, !llvm.loop !1099

; <label>:89:                                     ; preds = %86
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1100
  %90 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !1105
  %91 = load i8*, i8** %90, align 8, !dbg !1105
  %92 = call i32* @__errno_location() #1, !dbg !1106
  %93 = load i32, i32* %92, align 4, !dbg !1108
  %94 = call i8* @Err_Errno2String(i32 %93), !dbg !1109
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0), i8* %91, i8* %94), !dbg !1111
  br label %95, !dbg !1113

; <label>:95:                                     ; preds = %89
  %96 = load i32, i32* %13, align 4, !dbg !1114
  store i32 %96, i32* %12, align 4, !dbg !1115
  br label %115, !dbg !1116

; <label>:97:                                     ; preds = %70
  %98 = load i32, i32* %5, align 4, !dbg !1117
  %99 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !1119
  %100 = load i32, i32* %9, align 4, !dbg !1120
  %101 = call signext i8 @HgfsUpdateNodeFileDesc(i32 %98, %struct.HgfsSessionInfo* %99, i32 %100, i8* null), !dbg !1121
  %102 = icmp ne i8 %101, 0, !dbg !1121
  br i1 %102, label %106, label %103, !dbg !1122

; <label>:103:                                    ; preds = %97
  br label %104, !dbg !1123, !llvm.loop !1125

; <label>:104:                                    ; preds = %103
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1126
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1131
  br label %105, !dbg !1133

; <label>:105:                                    ; preds = %104
  store i32 9, i32* %12, align 4, !dbg !1134
  br label %115, !dbg !1135

; <label>:106:                                    ; preds = %97
  %107 = load i32, i32* %5, align 4, !dbg !1136
  %108 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !1138
  %109 = call signext i8 @HgfsAddToCache(i32 %107, %struct.HgfsSessionInfo* %108), !dbg !1139
  %110 = icmp ne i8 %109, 0, !dbg !1139
  br i1 %110, label %114, label %111, !dbg !1140

; <label>:111:                                    ; preds = %106
  br label %112, !dbg !1141, !llvm.loop !1143

; <label>:112:                                    ; preds = %111
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1144
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsPlatformGetFd, i32 0, i32 0)), !dbg !1149
  br label %113, !dbg !1151

; <label>:113:                                    ; preds = %112
  store i32 9, i32* %12, align 4, !dbg !1152
  br label %115, !dbg !1153

; <label>:114:                                    ; preds = %106
  br label %115, !dbg !1154

; <label>:115:                                    ; preds = %114, %113, %105, %95, %69, %58, %56, %48, %21
  %116 = load i32, i32* %12, align 4, !dbg !1156
  %117 = icmp eq i32 %116, 0, !dbg !1158
  br i1 %117, label %118, label %121, !dbg !1159

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %9, align 4, !dbg !1160
  %120 = load i32*, i32** %8, align 8, !dbg !1162
  store i32 %119, i32* %120, align 4, !dbg !1163
  br label %121, !dbg !1164

; <label>:121:                                    ; preds = %118, %115
  %122 = getelementptr inbounds %struct.HgfsFileNode, %struct.HgfsFileNode* %11, i32 0, i32 2, !dbg !1165
  %123 = load i8*, i8** %122, align 8, !dbg !1165
  call void @free(i8* %123) #9, !dbg !1166
  %124 = load i32, i32* %12, align 4, !dbg !1167
  ret i32 %124, !dbg !1168
}

declare signext i8 @HgfsGetNodeCopy(i32, %struct.HgfsSessionInfo*, i8 signext, %struct.HgfsFileNode*) #4

declare signext i8 @HgfsIsCached(i32, %struct.HgfsSessionInfo*) #4

declare signext i8 @HgfsUpdateNodeAppendFlag(i32, %struct.HgfsSessionInfo*, i8 signext) #4

; Function Attrs: nounwind uwtable
define internal i32 @HgfsCheckFileNode(i8*, %struct.HgfsLocalId*) #0 !dbg !1169 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsLocalId*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1174, metadata !575), !dbg !1175
  store %struct.HgfsLocalId* %1, %struct.HgfsLocalId** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsLocalId** %5, metadata !1176, metadata !575), !dbg !1177
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1178, metadata !575), !dbg !1212
  %8 = load i8*, i8** %4, align 8, !dbg !1213
  %9 = call i32 @Posix_Stat(i8* %8, %struct.stat* %6), !dbg !1215
  %10 = icmp slt i32 %9, 0, !dbg !1216
  br i1 %10, label %11, label %20, !dbg !1217

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1218, metadata !575), !dbg !1220
  %12 = call i32* @__errno_location() #1, !dbg !1221
  %13 = load i32, i32* %12, align 4, !dbg !1222
  store i32 %13, i32* %7, align 4, !dbg !1220
  br label %14, !dbg !1223, !llvm.loop !1224

; <label>:14:                                     ; preds = %11
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsCheckFileNode, i32 0, i32 0)), !dbg !1225
  %15 = load i8*, i8** %4, align 8, !dbg !1230
  %16 = load i32, i32* %7, align 4, !dbg !1231
  %17 = call i8* @Err_Errno2String(i32 %16), !dbg !1232
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsCheckFileNode, i32 0, i32 0), i8* %15, i8* %17), !dbg !1234
  br label %18, !dbg !1236

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %7, align 4, !dbg !1237
  store i32 %19, i32* %3, align 4, !dbg !1238
  br label %38, !dbg !1238

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0, !dbg !1239
  %22 = load i64, i64* %21, align 8, !dbg !1239
  %23 = load %struct.HgfsLocalId*, %struct.HgfsLocalId** %5, align 8, !dbg !1241
  %24 = getelementptr inbounds %struct.HgfsLocalId, %struct.HgfsLocalId* %23, i32 0, i32 0, !dbg !1242
  %25 = load i64, i64* %24, align 8, !dbg !1242
  %26 = icmp ne i64 %22, %25, !dbg !1243
  br i1 %26, label %34, label %27, !dbg !1244

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1, !dbg !1245
  %29 = load i64, i64* %28, align 8, !dbg !1245
  %30 = load %struct.HgfsLocalId*, %struct.HgfsLocalId** %5, align 8, !dbg !1246
  %31 = getelementptr inbounds %struct.HgfsLocalId, %struct.HgfsLocalId* %30, i32 0, i32 1, !dbg !1247
  %32 = load i64, i64* %31, align 8, !dbg !1247
  %33 = icmp ne i64 %29, %32, !dbg !1248
  br i1 %33, label %34, label %37, !dbg !1249

; <label>:34:                                     ; preds = %27, %20
  br label %35, !dbg !1251, !llvm.loop !1253

; <label>:35:                                     ; preds = %34
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsCheckFileNode, i32 0, i32 0)), !dbg !1254
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.HgfsCheckFileNode, i32 0, i32 0)), !dbg !1259
  br label %36, !dbg !1261

; <label>:36:                                     ; preds = %35
  store i32 2, i32* %3, align 4, !dbg !1262
  br label %38, !dbg !1262

; <label>:37:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !1263
  br label %38, !dbg !1263

; <label>:38:                                     ; preds = %37, %36, %18
  %39 = load i32, i32* %3, align 4, !dbg !1264
  ret i32 %39, !dbg !1264
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsServerGetOpenFlags(i32, i32*) #0 !dbg !1265 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1269, metadata !575), !dbg !1270
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1271, metadata !575), !dbg !1272
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1273, metadata !575), !dbg !1274
  store i32 5, i32* %6, align 4, !dbg !1275
  %7 = load i32, i32* %4, align 4, !dbg !1276
  %8 = load i32, i32* %6, align 4, !dbg !1278
  %9 = icmp uge i32 %7, %8, !dbg !1279
  br i1 %9, label %10, label %12, !dbg !1280

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !1281
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsServerGetOpenFlags, i32 0, i32 0), i32 %11), !dbg !1283
  store i8 0, i8* %3, align 1, !dbg !1284
  br label %18, !dbg !1284

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4, !dbg !1285
  %14 = zext i32 %13 to i64, !dbg !1286
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @HgfsServerOpenFlags, i64 0, i64 %14, !dbg !1286
  %16 = load i32, i32* %15, align 4, !dbg !1286
  %17 = load i32*, i32** %5, align 8, !dbg !1287
  store i32 %16, i32* %17, align 4, !dbg !1288
  store i8 1, i8* %3, align 1, !dbg !1289
  br label %18, !dbg !1289

; <label>:18:                                     ; preds = %12, %10
  %19 = load i8, i8* %3, align 1, !dbg !1290
  ret i8 %19, !dbg !1290
}

declare i32 @Posix_Open(i8*, i32, ...) #4

declare signext i8 @HgfsUpdateNodeFileDesc(i32, %struct.HgfsSessionInfo*, i32, i8*) #4

declare signext i8 @HgfsAddToCache(i32, %struct.HgfsSessionInfo*) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformValidateOpen(%struct.HgfsFileOpenInfo*, i8 signext, %struct.HgfsSessionInfo*, %struct.HgfsLocalId*, i32*) #0 !dbg !1291 {
  %6 = alloca %struct.HgfsFileOpenInfo*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.HgfsSessionInfo*, align 8
  %9 = alloca %struct.HgfsLocalId*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store %struct.HgfsFileOpenInfo* %0, %struct.HgfsFileOpenInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileOpenInfo** %6, metadata !1295, metadata !575), !dbg !1296
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1297, metadata !575), !dbg !1298
  store %struct.HgfsSessionInfo* %2, %struct.HgfsSessionInfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %8, metadata !1299, metadata !575), !dbg !1300
  store %struct.HgfsLocalId* %3, %struct.HgfsLocalId** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsLocalId** %9, metadata !1301, metadata !575), !dbg !1302
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1303, metadata !575), !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1305, metadata !575), !dbg !1306
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1307, metadata !575), !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1309, metadata !575), !dbg !1310
  store i32 0, i32* %13, align 4, !dbg !1310
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1311, metadata !575), !dbg !1312
  store i32 0, i32* %14, align 4, !dbg !1312
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1313, metadata !575), !dbg !1315
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1316, metadata !575), !dbg !1317
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1318, metadata !575), !dbg !1319
  store i32 0, i32* %17, align 4, !dbg !1319
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1320, metadata !575), !dbg !1321
  store i8 0, i8* %18, align 1, !dbg !1321
  %21 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1322
  %22 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %21, i32 0, i32 2, !dbg !1324
  %23 = load i64, i64* %22, align 8, !dbg !1324
  %24 = and i64 %23, 2, !dbg !1325
  %25 = icmp ne i64 %24, 0, !dbg !1325
  br i1 %25, label %26, label %30, !dbg !1322

; <label>:26:                                     ; preds = %5
  %27 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1326
  %28 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %27, i32 0, i32 4, !dbg !1327
  %29 = load i32, i32* %28, align 4, !dbg !1327
  br label %31, !dbg !1328

; <label>:30:                                     ; preds = %5
  br label %31, !dbg !1330

; <label>:31:                                     ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ], !dbg !1332
  %33 = call signext i8 @HgfsServerGetOpenFlags(i32 %32, i32* %14), !dbg !1334
  %34 = icmp ne i8 %33, 0, !dbg !1334
  br i1 %34, label %35, label %39, !dbg !1335

; <label>:35:                                     ; preds = %31
  %36 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1336
  %37 = call signext i8 @HgfsServerGetOpenMode(%struct.HgfsFileOpenInfo* %36, i32* %13), !dbg !1337
  %38 = icmp ne i8 %37, 0, !dbg !1337
  br i1 %38, label %40, label %39, !dbg !1338

; <label>:39:                                     ; preds = %35, %31
  store i32 71, i32* %17, align 4, !dbg !1340
  br label %367, !dbg !1342

; <label>:40:                                     ; preds = %35
  store i32 0, i32* %15, align 4, !dbg !1343
  %41 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1344
  %42 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %41, i32 0, i32 2, !dbg !1345
  %43 = load i64, i64* %42, align 8, !dbg !1345
  %44 = and i64 %43, 4, !dbg !1346
  %45 = icmp ne i64 %44, 0, !dbg !1346
  br i1 %45, label %46, label %52, !dbg !1344

; <label>:46:                                     ; preds = %40
  %47 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1347
  %48 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %47, i32 0, i32 5, !dbg !1348
  %49 = load i8, i8* %48, align 8, !dbg !1348
  %50 = zext i8 %49 to i32, !dbg !1347
  %51 = shl i32 %50, 9, !dbg !1349
  br label %53, !dbg !1350

; <label>:52:                                     ; preds = %40
  br label %53, !dbg !1352

; <label>:53:                                     ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ 0, %52 ], !dbg !1354
  %55 = load i32, i32* %15, align 4, !dbg !1356
  %56 = or i32 %55, %54, !dbg !1356
  store i32 %56, i32* %15, align 4, !dbg !1356
  %57 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1357
  %58 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %57, i32 0, i32 2, !dbg !1358
  %59 = load i64, i64* %58, align 8, !dbg !1358
  %60 = and i64 %59, 8, !dbg !1359
  %61 = icmp ne i64 %60, 0, !dbg !1359
  br i1 %61, label %62, label %68, !dbg !1357

; <label>:62:                                     ; preds = %53
  %63 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1360
  %64 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %63, i32 0, i32 6, !dbg !1361
  %65 = load i8, i8* %64, align 1, !dbg !1361
  %66 = zext i8 %65 to i32, !dbg !1360
  %67 = shl i32 %66, 6, !dbg !1362
  br label %69, !dbg !1363

; <label>:68:                                     ; preds = %53
  br label %69, !dbg !1364

; <label>:69:                                     ; preds = %68, %62
  %70 = phi i32 [ %67, %62 ], [ 384, %68 ], !dbg !1365
  %71 = load i32, i32* %15, align 4, !dbg !1366
  %72 = or i32 %71, %70, !dbg !1366
  store i32 %72, i32* %15, align 4, !dbg !1366
  %73 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1367
  %74 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %73, i32 0, i32 2, !dbg !1368
  %75 = load i64, i64* %74, align 8, !dbg !1368
  %76 = and i64 %75, 16, !dbg !1369
  %77 = icmp ne i64 %76, 0, !dbg !1369
  br i1 %77, label %78, label %84, !dbg !1367

; <label>:78:                                     ; preds = %69
  %79 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1370
  %80 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %79, i32 0, i32 7, !dbg !1371
  %81 = load i8, i8* %80, align 2, !dbg !1371
  %82 = zext i8 %81 to i32, !dbg !1370
  %83 = shl i32 %82, 3, !dbg !1372
  br label %88, !dbg !1373

; <label>:84:                                     ; preds = %69
  %85 = load i32, i32* %15, align 4, !dbg !1374
  %86 = and i32 %85, 448, !dbg !1375
  %87 = lshr i32 %86, 3, !dbg !1376
  br label %88, !dbg !1377

; <label>:88:                                     ; preds = %84, %78
  %89 = phi i32 [ %83, %78 ], [ %87, %84 ], !dbg !1378
  %90 = load i32, i32* %15, align 4, !dbg !1379
  %91 = or i32 %90, %89, !dbg !1379
  store i32 %91, i32* %15, align 4, !dbg !1379
  %92 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1380
  %93 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %92, i32 0, i32 2, !dbg !1381
  %94 = load i64, i64* %93, align 8, !dbg !1381
  %95 = and i64 %94, 32, !dbg !1382
  %96 = icmp ne i64 %95, 0, !dbg !1382
  br i1 %96, label %97, label %102, !dbg !1380

; <label>:97:                                     ; preds = %88
  %98 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1383
  %99 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %98, i32 0, i32 8, !dbg !1384
  %100 = load i8, i8* %99, align 1, !dbg !1384
  %101 = zext i8 %100 to i32, !dbg !1383
  br label %106, !dbg !1385

; <label>:102:                                    ; preds = %88
  %103 = load i32, i32* %15, align 4, !dbg !1386
  %104 = and i32 %103, 448, !dbg !1387
  %105 = lshr i32 %104, 6, !dbg !1388
  br label %106, !dbg !1389

; <label>:106:                                    ; preds = %102, %97
  %107 = phi i32 [ %101, %97 ], [ %105, %102 ], !dbg !1390
  %108 = load i32, i32* %15, align 4, !dbg !1391
  %109 = or i32 %108, %107, !dbg !1391
  store i32 %109, i32* %15, align 4, !dbg !1391
  %110 = load i8, i8* %7, align 1, !dbg !1392
  %111 = icmp ne i8 %110, 0, !dbg !1392
  br i1 %111, label %112, label %115, !dbg !1394

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* %14, align 4, !dbg !1395
  %114 = and i32 %113, -131073, !dbg !1395
  store i32 %114, i32* %14, align 4, !dbg !1395
  br label %115, !dbg !1397

; <label>:115:                                    ; preds = %112, %106
  store i32 0, i32* %17, align 4, !dbg !1398
  %116 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1399
  %117 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %116, i32 0, i32 19, !dbg !1401
  %118 = getelementptr inbounds %struct.HgfsShareInfo, %struct.HgfsShareInfo* %117, i32 0, i32 3, !dbg !1402
  %119 = load i8, i8* %118, align 1, !dbg !1402
  %120 = icmp ne i8 %119, 0, !dbg !1399
  br i1 %120, label %192, label %121, !dbg !1403

; <label>:121:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata i8* %19, metadata !1404, metadata !575), !dbg !1406
  store i8 0, i8* %19, align 1, !dbg !1406
  %122 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1407
  %123 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %122, i32 0, i32 2, !dbg !1409
  %124 = load i64, i64* %123, align 8, !dbg !1409
  %125 = and i64 %124, 256, !dbg !1410
  %126 = icmp ne i64 0, %125, !dbg !1411
  br i1 %126, label %127, label %135, !dbg !1412

; <label>:127:                                    ; preds = %121
  %128 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1413
  %129 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %128, i32 0, i32 11, !dbg !1414
  %130 = load i32, i32* %129, align 8, !dbg !1414
  %131 = zext i32 %130 to i64, !dbg !1413
  %132 = and i64 %131, 65536, !dbg !1415
  %133 = icmp ne i64 0, %132, !dbg !1416
  br i1 %133, label %134, label %135, !dbg !1417

; <label>:134:                                    ; preds = %127
  store i8 1, i8* %19, align 1, !dbg !1419
  br label %135, !dbg !1421

; <label>:135:                                    ; preds = %134, %127, %121
  %136 = load i32, i32* %14, align 4, !dbg !1422
  %137 = and i32 %136, 1600, !dbg !1424
  %138 = icmp ne i32 %137, 0, !dbg !1424
  br i1 %138, label %147, label %139, !dbg !1425

; <label>:139:                                    ; preds = %135
  %140 = load i32, i32* %13, align 4, !dbg !1426
  %141 = and i32 %140, 3, !dbg !1427
  %142 = icmp ne i32 %141, 0, !dbg !1427
  br i1 %142, label %147, label %143, !dbg !1428

; <label>:143:                                    ; preds = %139
  %144 = load i8, i8* %19, align 1, !dbg !1429
  %145 = sext i8 %144 to i32, !dbg !1429
  %146 = icmp ne i32 %145, 0, !dbg !1429
  br i1 %146, label %147, label %177, !dbg !1430

; <label>:147:                                    ; preds = %143, %139, %135
  %148 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1431
  %149 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %148, i32 0, i32 17, !dbg !1433
  %150 = load i8*, i8** %149, align 8, !dbg !1433
  %151 = call i32 @Posix_Access(i8* %150, i32 0), !dbg !1434
  store i32 %151, i32* %17, align 4, !dbg !1435
  %152 = load i32, i32* %17, align 4, !dbg !1436
  %153 = icmp slt i32 %152, 0, !dbg !1438
  br i1 %153, label %154, label %165, !dbg !1439

; <label>:154:                                    ; preds = %147
  %155 = call i32* @__errno_location() #1, !dbg !1440
  %156 = load i32, i32* %155, align 4, !dbg !1442
  store i32 %156, i32* %17, align 4, !dbg !1443
  %157 = load i32, i32* %17, align 4, !dbg !1444
  %158 = icmp eq i32 %157, 2, !dbg !1446
  br i1 %158, label %159, label %164, !dbg !1447

; <label>:159:                                    ; preds = %154
  %160 = load i32, i32* %14, align 4, !dbg !1448
  %161 = and i32 %160, 64, !dbg !1450
  %162 = icmp ne i32 %161, 0, !dbg !1451
  br i1 %162, label %163, label %164, !dbg !1452

; <label>:163:                                    ; preds = %159
  store i32 13, i32* %17, align 4, !dbg !1453
  br label %164, !dbg !1455

; <label>:164:                                    ; preds = %163, %159, %154
  br label %176, !dbg !1456

; <label>:165:                                    ; preds = %147
  %166 = load i32, i32* %14, align 4, !dbg !1457
  %167 = and i32 %166, 64, !dbg !1460
  %168 = icmp ne i32 %167, 0, !dbg !1460
  br i1 %168, label %169, label %174, !dbg !1461

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %14, align 4, !dbg !1462
  %171 = and i32 %170, 128, !dbg !1464
  %172 = icmp ne i32 %171, 0, !dbg !1464
  br i1 %172, label %173, label %174, !dbg !1465

; <label>:173:                                    ; preds = %169
  store i32 17, i32* %17, align 4, !dbg !1466
  br label %175, !dbg !1468

; <label>:174:                                    ; preds = %169, %165
  store i32 13, i32* %17, align 4, !dbg !1469
  br label %175

; <label>:175:                                    ; preds = %174, %173
  br label %176

; <label>:176:                                    ; preds = %175, %164
  br label %177, !dbg !1471

; <label>:177:                                    ; preds = %176, %143
  %178 = load i32, i32* %17, align 4, !dbg !1472
  %179 = icmp ne i32 %178, 0, !dbg !1474
  br i1 %179, label %180, label %191, !dbg !1475

; <label>:180:                                    ; preds = %177
  br label %181, !dbg !1476, !llvm.loop !1478

; <label>:181:                                    ; preds = %180
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0)), !dbg !1479
  %182 = load i32, i32* %13, align 4, !dbg !1484
  %183 = load i32, i32* %14, align 4, !dbg !1485
  %184 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1486
  %185 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %184, i32 0, i32 17, !dbg !1487
  %186 = load i8*, i8** %185, align 8, !dbg !1487
  %187 = load i32, i32* %17, align 4, !dbg !1488
  %188 = load i32, i32* %17, align 4, !dbg !1489
  %189 = call i8* @Err_Errno2String(i32 %188), !dbg !1490
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0), i32 %182, i32 %183, i8* %186, i32 %187, i8* %189), !dbg !1492
  br label %190, !dbg !1494

; <label>:190:                                    ; preds = %181
  br label %367, !dbg !1495

; <label>:191:                                    ; preds = %177
  br label %192, !dbg !1496

; <label>:192:                                    ; preds = %191, %115
  %193 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1497
  %194 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %193, i32 0, i32 19, !dbg !1499
  %195 = getelementptr inbounds %struct.HgfsShareInfo, %struct.HgfsShareInfo* %194, i32 0, i32 2, !dbg !1500
  %196 = load i8, i8* %195, align 8, !dbg !1500
  %197 = icmp ne i8 %196, 0, !dbg !1497
  br i1 %197, label %231, label %198, !dbg !1501

; <label>:198:                                    ; preds = %192
  %199 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1502
  %200 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %199, i32 0, i32 17, !dbg !1504
  %201 = load i8*, i8** %200, align 8, !dbg !1504
  %202 = call i32 @Posix_Access(i8* %201, i32 0), !dbg !1505
  store i32 %202, i32* %17, align 4, !dbg !1506
  %203 = load i32, i32* %17, align 4, !dbg !1507
  %204 = icmp slt i32 %203, 0, !dbg !1509
  br i1 %204, label %205, label %216, !dbg !1510

; <label>:205:                                    ; preds = %198
  %206 = call i32* @__errno_location() #1, !dbg !1511
  %207 = load i32, i32* %206, align 4, !dbg !1513
  store i32 %207, i32* %17, align 4, !dbg !1514
  %208 = load i32, i32* %17, align 4, !dbg !1515
  %209 = icmp ne i32 %208, 2, !dbg !1517
  br i1 %209, label %214, label %210, !dbg !1518

; <label>:210:                                    ; preds = %205
  %211 = load i32, i32* %14, align 4, !dbg !1519
  %212 = and i32 %211, 64, !dbg !1521
  %213 = icmp eq i32 %212, 0, !dbg !1522
  br i1 %213, label %214, label %215, !dbg !1523

; <label>:214:                                    ; preds = %210, %205
  store i32 13, i32* %17, align 4, !dbg !1524
  br label %215, !dbg !1526

; <label>:215:                                    ; preds = %214, %210
  br label %217, !dbg !1527

; <label>:216:                                    ; preds = %198
  store i32 13, i32* %17, align 4, !dbg !1528
  br label %217

; <label>:217:                                    ; preds = %216, %215
  %218 = load i32, i32* %17, align 4, !dbg !1530
  %219 = icmp ne i32 %218, 0, !dbg !1532
  br i1 %219, label %220, label %230, !dbg !1533

; <label>:220:                                    ; preds = %217
  br label %221, !dbg !1534, !llvm.loop !1536

; <label>:221:                                    ; preds = %220
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0)), !dbg !1537
  %222 = load i32, i32* %14, align 4, !dbg !1542
  %223 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1543
  %224 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %223, i32 0, i32 17, !dbg !1544
  %225 = load i8*, i8** %224, align 8, !dbg !1544
  %226 = load i32, i32* %17, align 4, !dbg !1545
  %227 = load i32, i32* %17, align 4, !dbg !1546
  %228 = call i8* @Err_Errno2String(i32 %227), !dbg !1547
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0), i32 %222, i8* %225, i32 %226, i8* %228), !dbg !1549
  br label %229, !dbg !1551

; <label>:229:                                    ; preds = %221
  br label %367, !dbg !1552

; <label>:230:                                    ; preds = %217
  br label %231, !dbg !1553

; <label>:231:                                    ; preds = %230, %192
  %232 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1554
  %233 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %232, i32 0, i32 2, !dbg !1556
  %234 = load i64, i64* %233, align 8, !dbg !1556
  %235 = and i64 %234, 64, !dbg !1557
  %236 = icmp ne i64 %235, 0, !dbg !1557
  br i1 %236, label %237, label %271, !dbg !1558

; <label>:237:                                    ; preds = %231
  %238 = load i32, i32* %14, align 4, !dbg !1559
  %239 = and i32 %238, 512, !dbg !1562
  %240 = icmp ne i32 %239, 0, !dbg !1562
  br i1 %240, label %249, label %241, !dbg !1563

; <label>:241:                                    ; preds = %237
  %242 = load i32, i32* %14, align 4, !dbg !1564
  %243 = and i32 %242, 64, !dbg !1565
  %244 = icmp ne i32 %243, 0, !dbg !1565
  br i1 %244, label %245, label %250, !dbg !1566

; <label>:245:                                    ; preds = %241
  %246 = load i32, i32* %14, align 4, !dbg !1567
  %247 = and i32 %246, 128, !dbg !1569
  %248 = icmp ne i32 %247, 0, !dbg !1569
  br i1 %248, label %249, label %250, !dbg !1570

; <label>:249:                                    ; preds = %245, %237
  store i8 1, i8* %18, align 1, !dbg !1572
  br label %270, !dbg !1574

; <label>:250:                                    ; preds = %245, %241
  %251 = load i32, i32* %14, align 4, !dbg !1575
  %252 = and i32 %251, 64, !dbg !1578
  %253 = icmp ne i32 %252, 0, !dbg !1578
  br i1 %253, label %254, label %269, !dbg !1575

; <label>:254:                                    ; preds = %250
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1579, metadata !575), !dbg !1581
  %255 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1582
  %256 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %255, i32 0, i32 17, !dbg !1583
  %257 = load i8*, i8** %256, align 8, !dbg !1583
  %258 = call i32 @Posix_Access(i8* %257, i32 0), !dbg !1584
  store i32 %258, i32* %20, align 4, !dbg !1581
  %259 = load i32, i32* %20, align 4, !dbg !1585
  %260 = icmp ne i32 %259, 0, !dbg !1586
  br i1 %260, label %261, label %265, !dbg !1587

; <label>:261:                                    ; preds = %254
  %262 = call i32* @__errno_location() #1, !dbg !1588
  %263 = load i32, i32* %262, align 4, !dbg !1590
  %264 = icmp eq i32 %263, 2, !dbg !1591
  br label %265

; <label>:265:                                    ; preds = %261, %254
  %266 = phi i1 [ false, %254 ], [ %264, %261 ]
  %267 = zext i1 %266 to i32, !dbg !1592
  %268 = trunc i32 %267 to i8, !dbg !1594
  store i8 %268, i8* %18, align 1, !dbg !1595
  br label %269, !dbg !1596

; <label>:269:                                    ; preds = %265, %250
  br label %270

; <label>:270:                                    ; preds = %269, %249
  br label %271, !dbg !1597

; <label>:271:                                    ; preds = %270, %231
  %272 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1598
  %273 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %272, i32 0, i32 17, !dbg !1599
  %274 = load i8*, i8** %273, align 8, !dbg !1599
  %275 = load i32, i32* %13, align 4, !dbg !1600
  %276 = load i32, i32* %14, align 4, !dbg !1601
  %277 = or i32 %275, %276, !dbg !1602
  %278 = load i32, i32* %15, align 4, !dbg !1603
  %279 = call i32 (i8*, i32, ...) @Posix_Open(i8* %274, i32 %277, i32 %278), !dbg !1604
  store i32 %279, i32* %12, align 4, !dbg !1605
  %280 = load i32, i32* %12, align 4, !dbg !1606
  %281 = icmp slt i32 %280, 0, !dbg !1608
  br i1 %281, label %282, label %297, !dbg !1609

; <label>:282:                                    ; preds = %271
  %283 = call i32* @__errno_location() #1, !dbg !1610
  %284 = load i32, i32* %283, align 4, !dbg !1612
  store i32 %284, i32* %17, align 4, !dbg !1613
  %285 = load i32, i32* %17, align 4, !dbg !1614
  %286 = icmp eq i32 %285, 11, !dbg !1616
  br i1 %286, label %287, label %288, !dbg !1617

; <label>:287:                                    ; preds = %282
  store i32 13, i32* %17, align 4, !dbg !1618
  br label %288, !dbg !1620

; <label>:288:                                    ; preds = %287, %282
  br label %289, !dbg !1621, !llvm.loop !1622

; <label>:289:                                    ; preds = %288
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0)), !dbg !1623
  %290 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1628
  %291 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %290, i32 0, i32 17, !dbg !1629
  %292 = load i8*, i8** %291, align 8, !dbg !1629
  %293 = load i32, i32* %17, align 4, !dbg !1630
  %294 = load i32, i32* %17, align 4, !dbg !1631
  %295 = call i8* @Err_Errno2String(i32 %294), !dbg !1632
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0), i8* %292, i32 %293, i8* %295), !dbg !1634
  br label %296, !dbg !1636

; <label>:296:                                    ; preds = %289
  br label %367, !dbg !1637

; <label>:297:                                    ; preds = %271
  %298 = load i32, i32* %12, align 4, !dbg !1638
  %299 = call i32 @fstat64(i32 %298, %struct.stat* %11) #9, !dbg !1640
  %300 = icmp slt i32 %299, 0, !dbg !1641
  br i1 %300, label %301, label %314, !dbg !1642

; <label>:301:                                    ; preds = %297
  %302 = call i32* @__errno_location() #1, !dbg !1643
  %303 = load i32, i32* %302, align 4, !dbg !1645
  store i32 %303, i32* %17, align 4, !dbg !1646
  br label %304, !dbg !1647, !llvm.loop !1648

; <label>:304:                                    ; preds = %301
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0)), !dbg !1649
  %305 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1654
  %306 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %305, i32 0, i32 17, !dbg !1655
  %307 = load i8*, i8** %306, align 8, !dbg !1655
  %308 = load i32, i32* %17, align 4, !dbg !1656
  %309 = load i32, i32* %17, align 4, !dbg !1657
  %310 = call i8* @Err_Errno2String(i32 %309), !dbg !1658
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsPlatformValidateOpen, i32 0, i32 0), i8* %307, i32 %308, i8* %310), !dbg !1660
  br label %311, !dbg !1662

; <label>:311:                                    ; preds = %304
  %312 = load i32, i32* %12, align 4, !dbg !1663
  %313 = call i32 @close(i32 %312), !dbg !1664
  br label %367, !dbg !1665

; <label>:314:                                    ; preds = %297
  %315 = load i8, i8* %18, align 1, !dbg !1666
  %316 = icmp ne i8 %315, 0, !dbg !1666
  br i1 %316, label %317, label %331, !dbg !1668

; <label>:317:                                    ; preds = %314
  %318 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1669
  %319 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %318, i32 0, i32 17, !dbg !1671
  %320 = load i8*, i8** %319, align 8, !dbg !1671
  %321 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1672
  %322 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %321, i32 0, i32 9, !dbg !1673
  %323 = load i64, i64* %322, align 8, !dbg !1673
  %324 = and i64 %323, 1, !dbg !1674
  %325 = icmp ne i64 %324, 0, !dbg !1675
  %326 = zext i1 %325 to i32, !dbg !1675
  %327 = trunc i32 %326 to i8, !dbg !1676
  %328 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 3, !dbg !1677
  %329 = load i32, i32* %328, align 8, !dbg !1677
  %330 = call i32 @HgfsSetHiddenXAttr(i8* %320, i8 signext %327, i32 %329), !dbg !1678
  br label %331, !dbg !1679

; <label>:331:                                    ; preds = %317, %314
  %332 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1680
  %333 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %332, i32 0, i32 2, !dbg !1682
  %334 = load i64, i64* %333, align 8, !dbg !1682
  %335 = and i64 %334, 1024, !dbg !1683
  %336 = icmp ne i64 %335, 0, !dbg !1683
  br i1 %336, label %337, label %353, !dbg !1684

; <label>:337:                                    ; preds = %331
  %338 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1685
  %339 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %338, i32 0, i32 13, !dbg !1687
  %340 = load i32, i32* %339, align 8, !dbg !1687
  store i32 %340, i32* %16, align 4, !dbg !1688
  %341 = load i32, i32* %12, align 4, !dbg !1689
  %342 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %8, align 8, !dbg !1691
  %343 = call signext i8 @HgfsAcquireServerLock(i32 %341, %struct.HgfsSessionInfo* %342, i32* %16), !dbg !1692
  %344 = icmp ne i8 %343, 0, !dbg !1692
  br i1 %344, label %348, label %345, !dbg !1693

; <label>:345:                                    ; preds = %337
  %346 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1694
  %347 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %346, i32 0, i32 14, !dbg !1696
  store i32 0, i32* %347, align 4, !dbg !1697
  br label %352, !dbg !1698

; <label>:348:                                    ; preds = %337
  %349 = load i32, i32* %16, align 4, !dbg !1699
  %350 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1701
  %351 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %350, i32 0, i32 14, !dbg !1702
  store i32 %349, i32* %351, align 4, !dbg !1703
  br label %352

; <label>:352:                                    ; preds = %348, %345
  br label %356, !dbg !1704

; <label>:353:                                    ; preds = %331
  %354 = load %struct.HgfsFileOpenInfo*, %struct.HgfsFileOpenInfo** %6, align 8, !dbg !1705
  %355 = getelementptr inbounds %struct.HgfsFileOpenInfo, %struct.HgfsFileOpenInfo* %354, i32 0, i32 14, !dbg !1707
  store i32 0, i32* %355, align 4, !dbg !1708
  br label %356

; <label>:356:                                    ; preds = %353, %352
  %357 = load i32, i32* %12, align 4, !dbg !1709
  %358 = load i32*, i32** %10, align 8, !dbg !1710
  store i32 %357, i32* %358, align 4, !dbg !1711
  %359 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0, !dbg !1712
  %360 = load i64, i64* %359, align 8, !dbg !1712
  %361 = load %struct.HgfsLocalId*, %struct.HgfsLocalId** %9, align 8, !dbg !1713
  %362 = getelementptr inbounds %struct.HgfsLocalId, %struct.HgfsLocalId* %361, i32 0, i32 0, !dbg !1714
  store i64 %360, i64* %362, align 8, !dbg !1715
  %363 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1, !dbg !1716
  %364 = load i64, i64* %363, align 8, !dbg !1716
  %365 = load %struct.HgfsLocalId*, %struct.HgfsLocalId** %9, align 8, !dbg !1717
  %366 = getelementptr inbounds %struct.HgfsLocalId, %struct.HgfsLocalId* %365, i32 0, i32 1, !dbg !1718
  store i64 %364, i64* %366, align 8, !dbg !1719
  br label %367, !dbg !1717

; <label>:367:                                    ; preds = %356, %311, %296, %229, %190, %39
  %368 = load i32, i32* %17, align 4, !dbg !1720
  ret i32 %368, !dbg !1721
}

declare i32 @Posix_Access(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal i32 @HgfsSetHiddenXAttr(i8*, i8 signext, i32) #0 !dbg !1722 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1725, metadata !575), !dbg !1726
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1727, metadata !575), !dbg !1728
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1729, metadata !575), !dbg !1730
  ret i32 0, !dbg !1731
}

declare signext i8 @HgfsAcquireServerLock(i32, %struct.HgfsSessionInfo*, i32*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformFilenameLookup(i8*, i64, i8*, i64, i32, i8**, i64*) #0 !dbg !1732 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1737, metadata !575), !dbg !1738
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1739, metadata !575), !dbg !1740
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1741, metadata !575), !dbg !1742
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1743, metadata !575), !dbg !1744
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1745, metadata !575), !dbg !1746
  store i8** %5, i8*** %14, align 8
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !1747, metadata !575), !dbg !1748
  store i64* %6, i64** %15, align 8
  call void @llvm.dbg.declare(metadata i64** %15, metadata !1749, metadata !575), !dbg !1750
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1751, metadata !575), !dbg !1752
  store i32 0, i32* %16, align 4, !dbg !1752
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1753, metadata !575), !dbg !1754
  store i32 0, i32* %17, align 4, !dbg !1754
  %18 = load i8**, i8*** %14, align 8, !dbg !1755
  store i8* null, i8** %18, align 8, !dbg !1756
  %19 = load i64*, i64** %15, align 8, !dbg !1757
  store i64 0, i64* %19, align 8, !dbg !1758
  %20 = load i32, i32* %13, align 4, !dbg !1759
  %21 = icmp eq i32 %20, 2, !dbg !1761
  br i1 %21, label %22, label %44, !dbg !1762

; <label>:22:                                     ; preds = %7
  %23 = load i8*, i8** %11, align 8, !dbg !1763
  %24 = call i32 @Posix_Access(i8* %23, i32 0), !dbg !1764
  %25 = icmp eq i32 %24, -1, !dbg !1765
  br i1 %25, label %26, label %44, !dbg !1766

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !1768, !llvm.loop !1770

; <label>:27:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformFilenameLookup, i32 0, i32 0)), !dbg !1771
  %28 = load i8*, i8** %11, align 8, !dbg !1776
  %29 = load i32, i32* %13, align 4, !dbg !1777
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformFilenameLookup, i32 0, i32 0), i8* %28, i32 %29), !dbg !1778
  br label %30, !dbg !1780

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %9, align 8, !dbg !1781
  %32 = load i64, i64* %10, align 8, !dbg !1782
  %33 = load i8*, i8** %11, align 8, !dbg !1783
  %34 = load i64, i64* %12, align 8, !dbg !1784
  %35 = load i8**, i8*** %14, align 8, !dbg !1785
  %36 = load i64*, i64** %15, align 8, !dbg !1786
  %37 = call i32 @HgfsCaseInsensitiveLookup(i8* %31, i64 %32, i8* %33, i64 %34, i8** %35, i64* %36), !dbg !1787
  store i32 %37, i32* %16, align 4, !dbg !1788
  %38 = load i32, i32* %16, align 4, !dbg !1789
  switch i32 %38, label %41 [
    i32 0, label %39
    i32 20, label %40
  ], !dbg !1790

; <label>:39:                                     ; preds = %30
  store i32 0, i32* %17, align 4, !dbg !1791
  br label %42, !dbg !1793

; <label>:40:                                     ; preds = %30
  store i32 12, i32* %17, align 4, !dbg !1794
  br label %42, !dbg !1795

; <label>:41:                                     ; preds = %30
  store i32 1, i32* %17, align 4, !dbg !1796
  br label %42, !dbg !1797

; <label>:42:                                     ; preds = %41, %40, %39
  %43 = load i32, i32* %17, align 4, !dbg !1798
  store i32 %43, i32* %8, align 4, !dbg !1799
  br label %59, !dbg !1799

; <label>:44:                                     ; preds = %22, %7
  %45 = load i8*, i8** %11, align 8, !dbg !1800
  %46 = call noalias i8* @strdup(i8* %45) #9, !dbg !1801
  %47 = load i8**, i8*** %14, align 8, !dbg !1802
  store i8* %46, i8** %47, align 8, !dbg !1803
  %48 = load i8**, i8*** %14, align 8, !dbg !1804
  %49 = load i8*, i8** %48, align 8, !dbg !1806
  %50 = icmp ne i8* %49, null, !dbg !1806
  br i1 %50, label %54, label %51, !dbg !1807

; <label>:51:                                     ; preds = %44
  store i32 10, i32* %17, align 4, !dbg !1808
  br label %52, !dbg !1810, !llvm.loop !1811

; <label>:52:                                     ; preds = %51
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformFilenameLookup, i32 0, i32 0)), !dbg !1812
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformFilenameLookup, i32 0, i32 0)), !dbg !1817
  br label %53, !dbg !1819

; <label>:53:                                     ; preds = %52
  br label %57, !dbg !1820

; <label>:54:                                     ; preds = %44
  %55 = load i64, i64* %12, align 8, !dbg !1821
  %56 = load i64*, i64** %15, align 8, !dbg !1823
  store i64 %55, i64* %56, align 8, !dbg !1824
  br label %57

; <label>:57:                                     ; preds = %54, %53
  %58 = load i32, i32* %17, align 4, !dbg !1825
  store i32 %58, i32* %8, align 4, !dbg !1826
  br label %59, !dbg !1826

; <label>:59:                                     ; preds = %57, %42
  %60 = load i32, i32* %8, align 4, !dbg !1827
  ret i32 %60, !dbg !1827
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsCaseInsensitiveLookup(i8*, i64, i8*, i64, i8**, i64*) #0 !dbg !1828 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1831, metadata !575), !dbg !1832
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1833, metadata !575), !dbg !1834
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1835, metadata !575), !dbg !1836
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1837, metadata !575), !dbg !1838
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1839, metadata !575), !dbg !1840
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1841, metadata !575), !dbg !1842
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1843, metadata !575), !dbg !1844
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1845, metadata !575), !dbg !1846
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1847, metadata !575), !dbg !1848
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1849, metadata !575), !dbg !1850
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1851, metadata !575), !dbg !1852
  store i8* null, i8** %17, align 8, !dbg !1852
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1853, metadata !575), !dbg !1854
  store i64 0, i64* %18, align 8, !dbg !1854
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1855, metadata !575), !dbg !1856
  store i32 0, i32* %19, align 4, !dbg !1856
  %20 = load i64, i64* %8, align 8, !dbg !1857
  %21 = add i64 %20, 1, !dbg !1858
  store i64 %21, i64* %16, align 8, !dbg !1859
  %22 = load i64, i64* %16, align 8, !dbg !1860
  %23 = call noalias i8* @malloc(i64 %22) #9, !dbg !1861
  store i8* %23, i8** %15, align 8, !dbg !1862
  %24 = load i8*, i8** %15, align 8, !dbg !1863
  %25 = icmp ne i8* %24, null, !dbg !1863
  br i1 %25, label %31, label %26, !dbg !1865

; <label>:26:                                     ; preds = %6
  %27 = call i32* @__errno_location() #1, !dbg !1866
  %28 = load i32, i32* %27, align 4, !dbg !1868
  store i32 %28, i32* %19, align 4, !dbg !1869
  br label %29, !dbg !1870, !llvm.loop !1871

; <label>:29:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsCaseInsensitiveLookup, i32 0, i32 0)), !dbg !1872
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsCaseInsensitiveLookup, i32 0, i32 0)), !dbg !1877
  br label %30, !dbg !1879

; <label>:30:                                     ; preds = %29
  br label %97, !dbg !1880

; <label>:31:                                     ; preds = %6
  %32 = load i8*, i8** %15, align 8, !dbg !1881
  %33 = load i8*, i8** %7, align 8, !dbg !1882
  %34 = load i64, i64* %16, align 8, !dbg !1883
  %35 = call i8* @Str_Strcpy(i8* %32, i8* %33, i64 %34), !dbg !1884
  %36 = load i8*, i8** %9, align 8, !dbg !1885
  %37 = load i64, i64* %8, align 8, !dbg !1886
  %38 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !1887
  store i8* %38, i8** %13, align 8, !dbg !1888
  %39 = load i8*, i8** %13, align 8, !dbg !1889
  %40 = load i8, i8* %39, align 1, !dbg !1891
  %41 = sext i8 %40 to i32, !dbg !1891
  %42 = icmp eq i32 %41, 0, !dbg !1892
  br i1 %42, label %43, label %44, !dbg !1893

; <label>:43:                                     ; preds = %31
  br label %97, !dbg !1894

; <label>:44:                                     ; preds = %31
  %45 = load i8*, i8** %13, align 8, !dbg !1896
  %46 = load i8, i8* %45, align 1, !dbg !1898
  %47 = sext i8 %46 to i32, !dbg !1898
  %48 = icmp eq i32 %47, 47, !dbg !1899
  br i1 %48, label %49, label %52, !dbg !1900

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %13, align 8, !dbg !1901
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1901
  store i8* %51, i8** %13, align 8, !dbg !1901
  br label %52, !dbg !1903

; <label>:52:                                     ; preds = %49, %44
  br label %53, !dbg !1904

; <label>:53:                                     ; preds = %52, %93
  %54 = load i8*, i8** %13, align 8, !dbg !1905
  %55 = call i8* @strchr(i8* %54, i32 47) #11, !dbg !1907
  store i8* %55, i8** %14, align 8, !dbg !1908
  %56 = load i8*, i8** %14, align 8, !dbg !1909
  %57 = icmp ne i8* %56, null, !dbg !1911
  br i1 %57, label %58, label %60, !dbg !1912

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %14, align 8, !dbg !1913
  store i8 0, i8* %59, align 1, !dbg !1915
  br label %60, !dbg !1916

; <label>:60:                                     ; preds = %58, %53
  %61 = load i8*, i8** %13, align 8, !dbg !1917
  %62 = load i8*, i8** %15, align 8, !dbg !1918
  %63 = call i32 @HgfsConvertComponentCase(i8* %61, i8* %62, i8** %17, i64* %18), !dbg !1919
  store i32 %63, i32* %19, align 4, !dbg !1920
  %64 = load i8*, i8** %14, align 8, !dbg !1921
  %65 = icmp ne i8* %64, null, !dbg !1923
  br i1 %65, label %66, label %68, !dbg !1924

; <label>:66:                                     ; preds = %60
  %67 = load i8*, i8** %14, align 8, !dbg !1925
  store i8 47, i8* %67, align 1, !dbg !1927
  br label %68, !dbg !1928

; <label>:68:                                     ; preds = %66, %60
  %69 = load i32, i32* %19, align 4, !dbg !1929
  %70 = icmp ne i32 %69, 0, !dbg !1929
  br i1 %70, label %71, label %81, !dbg !1931

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %19, align 4, !dbg !1932
  %73 = icmp eq i32 %72, 2, !dbg !1935
  br i1 %73, label %74, label %80, !dbg !1936

; <label>:74:                                     ; preds = %71
  %75 = load i8*, i8** %13, align 8, !dbg !1937
  %76 = load i8*, i8** %13, align 8, !dbg !1939
  %77 = call i64 @strlen(i8* %76) #11, !dbg !1940
  %78 = add i64 %77, 1, !dbg !1941
  %79 = call i32 @HgfsConstructConvertedPath(i8** %15, i64* %16, i8* %75, i64 %78), !dbg !1942
  store i32 %79, i32* %19, align 4, !dbg !1943
  br label %80, !dbg !1944

; <label>:80:                                     ; preds = %74, %71
  br label %96, !dbg !1945

; <label>:81:                                     ; preds = %68
  %82 = load i8*, i8** %17, align 8, !dbg !1946
  %83 = load i64, i64* %18, align 8, !dbg !1947
  %84 = call i32 @HgfsConstructConvertedPath(i8** %15, i64* %16, i8* %82, i64 %83), !dbg !1948
  store i32 %84, i32* %19, align 4, !dbg !1949
  %85 = load i32, i32* %19, align 4, !dbg !1950
  %86 = icmp ne i32 %85, 0, !dbg !1950
  br i1 %86, label %87, label %88, !dbg !1952

; <label>:87:                                     ; preds = %81
  br label %96, !dbg !1953

; <label>:88:                                     ; preds = %81
  %89 = load i8*, i8** %17, align 8, !dbg !1955
  call void @free(i8* %89) #9, !dbg !1956
  store i8* null, i8** %17, align 8, !dbg !1957
  %90 = load i8*, i8** %14, align 8, !dbg !1958
  %91 = icmp eq i8* %90, null, !dbg !1960
  br i1 %91, label %92, label %93, !dbg !1961

; <label>:92:                                     ; preds = %88
  store i32 0, i32* %19, align 4, !dbg !1962
  br label %96, !dbg !1964

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %14, align 8, !dbg !1965
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1966
  store i8* %95, i8** %13, align 8, !dbg !1967
  br label %53, !dbg !1968, !llvm.loop !1970

; <label>:96:                                     ; preds = %92, %87, %80
  br label %97, !dbg !1971

; <label>:97:                                     ; preds = %96, %43, %30
  %98 = load i32, i32* %19, align 4, !dbg !1973
  %99 = icmp eq i32 %98, 0, !dbg !1975
  br i1 %99, label %100, label %106, !dbg !1976

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %15, align 8, !dbg !1977
  %102 = load i8**, i8*** %11, align 8, !dbg !1979
  store i8* %101, i8** %102, align 8, !dbg !1980
  %103 = load i64, i64* %16, align 8, !dbg !1981
  %104 = sub i64 %103, 1, !dbg !1982
  %105 = load i64*, i64** %12, align 8, !dbg !1983
  store i64 %104, i64* %105, align 8, !dbg !1984
  br label %110, !dbg !1985

; <label>:106:                                    ; preds = %97
  %107 = load i8**, i8*** %11, align 8, !dbg !1986
  store i8* null, i8** %107, align 8, !dbg !1988
  %108 = load i64*, i64** %12, align 8, !dbg !1989
  store i64 0, i64* %108, align 8, !dbg !1990
  %109 = load i8*, i8** %15, align 8, !dbg !1991
  call void @free(i8* %109) #9, !dbg !1992
  br label %110

; <label>:110:                                    ; preds = %106, %100
  %111 = load i8*, i8** %17, align 8, !dbg !1993
  call void @free(i8* %111) #9, !dbg !1994
  %112 = load i32, i32* %19, align 4, !dbg !1995
  ret i32 %112, !dbg !1996
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @HgfsPlatformDoFilenameLookup() #0 !dbg !1997 {
  ret i8 1, !dbg !1998
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformGetattrFromName(i8*, i32, i8*, %struct.HgfsFileAttrInfo*, i8**) #0 !dbg !1999 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.HgfsFileAttrInfo*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2004, metadata !575), !dbg !2005
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2006, metadata !575), !dbg !2007
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2008, metadata !575), !dbg !2009
  store %struct.HgfsFileAttrInfo* %3, %struct.HgfsFileAttrInfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %9, metadata !2010, metadata !575), !dbg !2011
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2012, metadata !575), !dbg !2013
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2014, metadata !575), !dbg !2015
  store i32 0, i32* %11, align 4, !dbg !2015
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !2016, metadata !575), !dbg !2017
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2018, metadata !575), !dbg !2019
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2020, metadata !575), !dbg !2021
  store i8* null, i8** %14, align 8, !dbg !2021
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2022, metadata !575), !dbg !2023
  call void @llvm.dbg.declare(metadata i8* %16, metadata !2024, metadata !575), !dbg !2025
  br label %24, !dbg !2026, !llvm.loop !2027

; <label>:24:                                     ; preds = %5
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2028
  %25 = load i8*, i8** %6, align 8, !dbg !2033
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0), i8* %25), !dbg !2034
  br label %26, !dbg !2036

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %7, align 4, !dbg !2037
  %28 = call signext i8 @HgfsServerPolicy_IsShareOptionSet(i32 %27, i32 2), !dbg !2038
  store i8 %28, i8* %16, align 1, !dbg !2039
  %29 = load i8*, i8** %6, align 8, !dbg !2040
  %30 = load i8, i8* %16, align 1, !dbg !2041
  %31 = call i32 @HgfsStat(i8* %29, i8 signext %30, %struct.stat* %12, i64* %15), !dbg !2042
  store i32 %31, i32* %13, align 4, !dbg !2043
  %32 = load i32, i32* %13, align 4, !dbg !2044
  %33 = icmp ne i32 %32, 0, !dbg !2044
  br i1 %33, label %34, label %41, !dbg !2046

; <label>:34:                                     ; preds = %26
  %35 = call i32* @__errno_location() #1, !dbg !2047
  %36 = load i32, i32* %35, align 4, !dbg !2049
  store i32 %36, i32* %11, align 4, !dbg !2050
  br label %37, !dbg !2051, !llvm.loop !2052

; <label>:37:                                     ; preds = %34
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2053
  %38 = load i32, i32* %11, align 4, !dbg !2058
  %39 = call i8* @Err_Errno2String(i32 %38), !dbg !2059
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0), i8* %39), !dbg !2061
  br label %40, !dbg !2063

; <label>:40:                                     ; preds = %37
  br label %190, !dbg !2064

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !2065
  %43 = load i32, i32* %42, align 8, !dbg !2065
  %44 = and i32 %43, 61440, !dbg !2067
  %45 = icmp eq i32 %44, 16384, !dbg !2068
  br i1 %45, label %46, label %51, !dbg !2069

; <label>:46:                                     ; preds = %41
  %47 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2070
  %48 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %47, i32 0, i32 2, !dbg !2072
  store i32 1, i32* %48, align 8, !dbg !2073
  br label %49, !dbg !2074, !llvm.loop !2075

; <label>:49:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2076
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2081
  br label %50, !dbg !2083

; <label>:50:                                     ; preds = %49
  br label %141, !dbg !2084

; <label>:51:                                     ; preds = %41
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !2085
  %53 = load i32, i32* %52, align 8, !dbg !2085
  %54 = and i32 %53, 61440, !dbg !2088
  %55 = icmp eq i32 %54, 40960, !dbg !2089
  br i1 %55, label %56, label %82, !dbg !2090

; <label>:56:                                     ; preds = %51
  %57 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2091
  %58 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %57, i32 0, i32 2, !dbg !2093
  store i32 2, i32* %58, align 8, !dbg !2094
  br label %59, !dbg !2095, !llvm.loop !2096

; <label>:59:                                     ; preds = %56
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2097
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2102
  br label %60, !dbg !2104

; <label>:60:                                     ; preds = %59
  %61 = load i8**, i8*** %10, align 8, !dbg !2105
  %62 = icmp ne i8** %61, null, !dbg !2107
  br i1 %62, label %63, label %81, !dbg !2108

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %6, align 8, !dbg !2109
  %65 = call i8* @Posix_ReadLink(i8* %64), !dbg !2111
  store i8* %65, i8** %14, align 8, !dbg !2112
  %66 = load i8*, i8** %14, align 8, !dbg !2113
  %67 = icmp eq i8* %66, null, !dbg !2115
  br i1 %67, label %68, label %80, !dbg !2116

; <label>:68:                                     ; preds = %63
  %69 = call i32* @__errno_location() #1, !dbg !2117
  %70 = load i32, i32* %69, align 4, !dbg !2119
  store i32 %70, i32* %13, align 4, !dbg !2120
  br label %71, !dbg !2121, !llvm.loop !2122

; <label>:71:                                     ; preds = %68
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2123
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2128
  br label %72, !dbg !2130

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %13, align 4, !dbg !2131
  %74 = icmp ne i32 %73, 0, !dbg !2131
  br i1 %74, label %75, label %77, !dbg !2131

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %13, align 4, !dbg !2132
  br label %78, !dbg !2134

; <label>:77:                                     ; preds = %72
  br label %78, !dbg !2135

; <label>:78:                                     ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 12, %77 ], !dbg !2137
  store i32 %79, i32* %11, align 4, !dbg !2139
  br label %190, !dbg !2140

; <label>:80:                                     ; preds = %63
  br label %81, !dbg !2141

; <label>:81:                                     ; preds = %80, %60
  br label %140, !dbg !2142

; <label>:82:                                     ; preds = %51
  br label %83, !dbg !2143, !llvm.loop !2145

; <label>:83:                                     ; preds = %82
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2146
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2151
  br label %84, !dbg !2153

; <label>:84:                                     ; preds = %83
  %85 = load i8*, i8** %6, align 8, !dbg !2154
  %86 = call i32 @HgfsGetattrResolveAlias(i8* %85, i8** %14), !dbg !2156
  %87 = icmp ne i32 %86, 0, !dbg !2156
  br i1 %87, label %88, label %91, !dbg !2157

; <label>:88:                                     ; preds = %84
  br label %89, !dbg !2158, !llvm.loop !2160

; <label>:89:                                     ; preds = %88
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2161
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2166
  br label %90, !dbg !2168

; <label>:90:                                     ; preds = %89
  br label %91, !dbg !2169

; <label>:91:                                     ; preds = %90, %84
  %92 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2170
  %93 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %92, i32 0, i32 2, !dbg !2171
  store i32 0, i32* %93, align 8, !dbg !2172
  %94 = load i8*, i8** %14, align 8, !dbg !2173
  %95 = icmp ne i8* %94, null, !dbg !2175
  br i1 %95, label %96, label %139, !dbg !2176

; <label>:96:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2177, metadata !575), !dbg !2179
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2180, metadata !575), !dbg !2181
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2182, metadata !575), !dbg !2183
  %97 = load i8*, i8** %8, align 8, !dbg !2184
  %98 = load i8*, i8** %8, align 8, !dbg !2185
  %99 = call i64 @strlen(i8* %98) #11, !dbg !2186
  %100 = call i32 @HgfsServerPolicy_GetSharePath(i8* %97, i64 %99, i32 0, i64* %18, i8** %19), !dbg !2187
  store i32 %100, i32* %17, align 4, !dbg !2188
  %101 = load i32, i32* %17, align 4, !dbg !2189
  %102 = icmp eq i32 %101, 0, !dbg !2191
  br i1 %102, label %103, label %135, !dbg !2192

; <label>:103:                                    ; preds = %96
  %104 = load i64, i64* %18, align 8, !dbg !2193
  %105 = load i8*, i8** %14, align 8, !dbg !2194
  %106 = call i64 @strlen(i8* %105) #11, !dbg !2195
  %107 = icmp ult i64 %104, %106, !dbg !2196
  br i1 %107, label %108, label %135, !dbg !2197

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %19, align 8, !dbg !2198
  %110 = load i8*, i8** %14, align 8, !dbg !2199
  %111 = load i64, i64* %18, align 8, !dbg !2200
  %112 = call i32 @strncmp(i8* %109, i8* %110, i64 %111) #11, !dbg !2201
  %113 = icmp eq i32 %112, 0, !dbg !2202
  br i1 %113, label %114, label %135, !dbg !2203

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2205, metadata !575), !dbg !2207
  %115 = load i8*, i8** %6, align 8, !dbg !2208
  %116 = load i8*, i8** %14, align 8, !dbg !2209
  %117 = call i8* @HgfsServerGetTargetRelativePath(i8* %115, i8* %116), !dbg !2210
  store i8* %117, i8** %20, align 8, !dbg !2211
  %118 = load i8*, i8** %14, align 8, !dbg !2212
  call void @free(i8* %118) #9, !dbg !2213
  %119 = load i8*, i8** %20, align 8, !dbg !2214
  store i8* %119, i8** %14, align 8, !dbg !2215
  %120 = load i8*, i8** %14, align 8, !dbg !2216
  %121 = icmp ne i8* %120, null, !dbg !2218
  br i1 %121, label %122, label %131, !dbg !2219

; <label>:122:                                    ; preds = %114
  %123 = load i8*, i8** %14, align 8, !dbg !2220
  %124 = call i64 @strlen(i8* %123) #11, !dbg !2222
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8, !dbg !2223
  store i64 %124, i64* %125, align 8, !dbg !2224
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !2225
  %127 = load i32, i32* %126, align 8, !dbg !2226
  %128 = or i32 %127, 511, !dbg !2226
  store i32 %128, i32* %126, align 8, !dbg !2226
  %129 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2227
  %130 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %129, i32 0, i32 2, !dbg !2228
  store i32 2, i32* %130, align 8, !dbg !2229
  br label %134, !dbg !2230

; <label>:131:                                    ; preds = %114
  br label %132, !dbg !2231, !llvm.loop !2233

; <label>:132:                                    ; preds = %131
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2234
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2239
  br label %133, !dbg !2241

; <label>:133:                                    ; preds = %132
  br label %134

; <label>:134:                                    ; preds = %133, %122
  br label %138, !dbg !2242

; <label>:135:                                    ; preds = %108, %103, %96
  br label %136, !dbg !2243, !llvm.loop !2245

; <label>:136:                                    ; preds = %135
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2246
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2251
  br label %137, !dbg !2253

; <label>:137:                                    ; preds = %136
  br label %138

; <label>:138:                                    ; preds = %137, %134
  br label %139, !dbg !2254

; <label>:139:                                    ; preds = %138, %91
  br label %140

; <label>:140:                                    ; preds = %139, %81
  br label %141

; <label>:141:                                    ; preds = %140, %50
  %142 = load i8*, i8** %14, align 8, !dbg !2255
  %143 = icmp ne i8* %142, null, !dbg !2257
  br i1 %143, label %144, label %154, !dbg !2258

; <label>:144:                                    ; preds = %141
  %145 = load i8**, i8*** %10, align 8, !dbg !2259
  %146 = icmp ne i8** %145, null, !dbg !2261
  br i1 %146, label %147, label %154, !dbg !2262

; <label>:147:                                    ; preds = %144
  %148 = load i8*, i8** %14, align 8, !dbg !2263
  %149 = load i8**, i8*** %10, align 8, !dbg !2265
  store i8* %148, i8** %149, align 8, !dbg !2266
  store i8* null, i8** %14, align 8, !dbg !2267
  br label %150, !dbg !2268, !llvm.loop !2269

; <label>:150:                                    ; preds = %147
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0)), !dbg !2270
  %151 = load i8**, i8*** %10, align 8, !dbg !2275
  %152 = load i8*, i8** %151, align 8, !dbg !2276
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromName, i32 0, i32 0), i8* %152), !dbg !2277
  br label %153, !dbg !2279

; <label>:153:                                    ; preds = %150
  br label %154, !dbg !2280

; <label>:154:                                    ; preds = %153, %144, %141
  %155 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2281
  call void @HgfsStatToFileAttr(%struct.stat* %12, i64* %15, %struct.HgfsFileAttrInfo* %155), !dbg !2282
  %156 = load i8*, i8** %6, align 8, !dbg !2283
  %157 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2284
  call void @HgfsGetHiddenAttr(i8* %156, %struct.HgfsFileAttrInfo* %157), !dbg !2285
  %158 = load i8*, i8** %6, align 8, !dbg !2286
  %159 = load i8, i8* %16, align 1, !dbg !2287
  %160 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2288
  call void @HgfsGetSequentialOnlyFlagFromName(i8* %158, i8 signext %159, %struct.HgfsFileAttrInfo* %160), !dbg !2289
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3, !dbg !2290
  %162 = load i32, i32* %161, align 8, !dbg !2290
  %163 = and i32 %162, 61440, !dbg !2292
  %164 = icmp eq i32 %163, 40960, !dbg !2293
  br i1 %164, label %189, label %165, !dbg !2294

; <label>:165:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2295, metadata !575), !dbg !2297
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2298, metadata !575), !dbg !2299
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2300, metadata !575), !dbg !2301
  %166 = load i8*, i8** %8, align 8, !dbg !2302
  %167 = load i8*, i8** %8, align 8, !dbg !2303
  %168 = call i64 @strlen(i8* %167) #11, !dbg !2304
  %169 = call i32 @HgfsServerPolicy_GetShareMode(i8* %166, i64 %168, i32* %21), !dbg !2305
  store i32 %169, i32* %23, align 4, !dbg !2307
  %170 = load i32, i32* %23, align 4, !dbg !2308
  %171 = icmp eq i32 %170, 0, !dbg !2310
  br i1 %171, label %172, label %188, !dbg !2311

; <label>:172:                                    ; preds = %165
  %173 = load i8*, i8** %6, align 8, !dbg !2312
  %174 = load i32, i32* %21, align 4, !dbg !2313
  %175 = icmp eq i32 %174, 0, !dbg !2314
  %176 = zext i1 %175 to i32, !dbg !2314
  %177 = trunc i32 %176 to i8, !dbg !2313
  %178 = call i32 @HgfsEffectivePermissions(i8* %173, i8 signext %177, i32* %22), !dbg !2315
  %179 = icmp eq i32 %178, 0, !dbg !2316
  br i1 %179, label %180, label %188, !dbg !2317

; <label>:180:                                    ; preds = %172
  %181 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2318
  %182 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %181, i32 0, i32 1, !dbg !2320
  %183 = load i64, i64* %182, align 8, !dbg !2321
  %184 = or i64 %183, 131072, !dbg !2321
  store i64 %184, i64* %182, align 8, !dbg !2321
  %185 = load i32, i32* %22, align 4, !dbg !2322
  %186 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !2323
  %187 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %186, i32 0, i32 18, !dbg !2324
  store i32 %185, i32* %187, align 4, !dbg !2325
  br label %188, !dbg !2326

; <label>:188:                                    ; preds = %180, %172, %165
  br label %189, !dbg !2327

; <label>:189:                                    ; preds = %188, %154
  br label %190, !dbg !2328

; <label>:190:                                    ; preds = %189, %78, %40
  %191 = load i8*, i8** %14, align 8, !dbg !2330
  call void @free(i8* %191) #9, !dbg !2331
  %192 = load i32, i32* %11, align 4, !dbg !2332
  ret i32 %192, !dbg !2333
}

declare signext i8 @HgfsServerPolicy_IsShareOptionSet(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @HgfsStat(i8*, i8 signext, %struct.stat*, i64*) #0 !dbg !2334 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2339, metadata !575), !dbg !2340
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2341, metadata !575), !dbg !2342
  store %struct.stat* %2, %struct.stat** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %7, metadata !2343, metadata !575), !dbg !2344
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !2345, metadata !575), !dbg !2346
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2347, metadata !575), !dbg !2348
  %10 = load i8, i8* %6, align 1, !dbg !2349
  %11 = icmp ne i8 %10, 0, !dbg !2349
  br i1 %11, label %12, label %16, !dbg !2351

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %5, align 8, !dbg !2352
  %14 = load %struct.stat*, %struct.stat** %7, align 8, !dbg !2354
  %15 = call i32 @Posix_Stat(i8* %13, %struct.stat* %14), !dbg !2355
  store i32 %15, i32* %9, align 4, !dbg !2356
  br label %20, !dbg !2357

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %5, align 8, !dbg !2358
  %18 = load %struct.stat*, %struct.stat** %7, align 8, !dbg !2360
  %19 = call i32 @Posix_Lstat(i8* %17, %struct.stat* %18), !dbg !2361
  store i32 %19, i32* %9, align 4, !dbg !2362
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = load %struct.stat*, %struct.stat** %7, align 8, !dbg !2363
  %22 = call i64 @HgfsGetCreationTime(%struct.stat* %21), !dbg !2364
  %23 = load i64*, i64** %8, align 8, !dbg !2365
  store i64 %22, i64* %23, align 8, !dbg !2366
  %24 = load i32, i32* %9, align 4, !dbg !2367
  ret i32 %24, !dbg !2368
}

declare i8* @Posix_ReadLink(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @HgfsGetattrResolveAlias(i8*, i8**) #0 !dbg !2369 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2372, metadata !575), !dbg !2373
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2374, metadata !575), !dbg !2375
  %5 = load i8**, i8*** %4, align 8, !dbg !2376
  store i8* null, i8** %5, align 8, !dbg !2377
  ret i32 0, !dbg !2378
}

declare i32 @HgfsServerPolicy_GetSharePath(i8*, i64, i32, i64*, i8**) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

declare i8* @HgfsServerGetTargetRelativePath(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @HgfsStatToFileAttr(%struct.stat*, i64*, %struct.HgfsFileAttrInfo*) #0 !dbg !2379 {
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.HgfsFileAttrInfo*, align 8
  store %struct.stat* %0, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !2382, metadata !575), !dbg !2383
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !2384, metadata !575), !dbg !2385
  store %struct.HgfsFileAttrInfo* %2, %struct.HgfsFileAttrInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %6, metadata !2386, metadata !575), !dbg !2387
  %7 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2388
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8, !dbg !2389
  %9 = load i64, i64* %8, align 8, !dbg !2389
  %10 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2390
  %11 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %10, i32 0, i32 3, !dbg !2391
  store i64 %9, i64* %11, align 8, !dbg !2392
  %12 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2393
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 10, !dbg !2394
  %14 = load i64, i64* %13, align 8, !dbg !2394
  %15 = mul nsw i64 %14, 512, !dbg !2395
  %16 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2396
  %17 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %16, i32 0, i32 13, !dbg !2397
  store i64 %15, i64* %17, align 8, !dbg !2398
  %18 = load i64*, i64** %5, align 8, !dbg !2399
  %19 = load i64, i64* %18, align 8, !dbg !2400
  %20 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2401
  %21 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %20, i32 0, i32 4, !dbg !2402
  store i64 %19, i64* %21, align 8, !dbg !2403
  %22 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2404
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 11, !dbg !2405
  %24 = call i64 @HgfsConvertTimeSpecToNtTime(%struct.timespec* %23), !dbg !2406
  %25 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2407
  %26 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %25, i32 0, i32 5, !dbg !2408
  store i64 %24, i64* %26, align 8, !dbg !2409
  %27 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2410
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 12, !dbg !2411
  %29 = call i64 @HgfsConvertTimeSpecToNtTime(%struct.timespec* %28), !dbg !2412
  %30 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2413
  %31 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %30, i32 0, i32 6, !dbg !2414
  store i64 %29, i64* %31, align 8, !dbg !2415
  %32 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2416
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 13, !dbg !2417
  %34 = call i64 @HgfsConvertTimeSpecToNtTime(%struct.timespec* %33), !dbg !2418
  %35 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2419
  %36 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %35, i32 0, i32 7, !dbg !2420
  store i64 %34, i64* %36, align 8, !dbg !2421
  %37 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2422
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 3, !dbg !2423
  %39 = load i32, i32* %38, align 8, !dbg !2423
  %40 = and i32 %39, 3584, !dbg !2424
  %41 = lshr i32 %40, 9, !dbg !2425
  %42 = trunc i32 %41 to i8, !dbg !2426
  %43 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2427
  %44 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %43, i32 0, i32 8, !dbg !2428
  store i8 %42, i8* %44, align 8, !dbg !2429
  %45 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2430
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 3, !dbg !2431
  %47 = load i32, i32* %46, align 8, !dbg !2431
  %48 = and i32 %47, 448, !dbg !2432
  %49 = lshr i32 %48, 6, !dbg !2433
  %50 = trunc i32 %49 to i8, !dbg !2434
  %51 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2435
  %52 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %51, i32 0, i32 9, !dbg !2436
  store i8 %50, i8* %52, align 1, !dbg !2437
  %53 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2438
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 3, !dbg !2439
  %55 = load i32, i32* %54, align 8, !dbg !2439
  %56 = and i32 %55, 56, !dbg !2440
  %57 = lshr i32 %56, 3, !dbg !2441
  %58 = trunc i32 %57 to i8, !dbg !2442
  %59 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2443
  %60 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %59, i32 0, i32 10, !dbg !2444
  store i8 %58, i8* %60, align 2, !dbg !2445
  %61 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2446
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %61, i32 0, i32 3, !dbg !2447
  %63 = load i32, i32* %62, align 8, !dbg !2447
  %64 = and i32 %63, 7, !dbg !2448
  %65 = trunc i32 %64 to i8, !dbg !2446
  %66 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2449
  %67 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %66, i32 0, i32 11, !dbg !2450
  store i8 %65, i8* %67, align 1, !dbg !2451
  br label %68, !dbg !2452, !llvm.loop !2453

; <label>:68:                                     ; preds = %3
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsStatToFileAttr, i32 0, i32 0)), !dbg !2454
  %69 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2459
  %70 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %69, i32 0, i32 8, !dbg !2460
  %71 = load i8, i8* %70, align 8, !dbg !2460
  %72 = zext i8 %71 to i32, !dbg !2459
  %73 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2461
  %74 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %73, i32 0, i32 9, !dbg !2462
  %75 = load i8, i8* %74, align 1, !dbg !2462
  %76 = zext i8 %75 to i32, !dbg !2461
  %77 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2463
  %78 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %77, i32 0, i32 10, !dbg !2464
  %79 = load i8, i8* %78, align 2, !dbg !2464
  %80 = zext i8 %79 to i32, !dbg !2463
  %81 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2465
  %82 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %81, i32 0, i32 11, !dbg !2466
  %83 = load i8, i8* %82, align 1, !dbg !2466
  %84 = zext i8 %83 to i32, !dbg !2465
  %85 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2467
  %86 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %85, i32 0, i32 3, !dbg !2468
  %87 = load i64, i64* %86, align 8, !dbg !2468
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsStatToFileAttr, i32 0, i32 0), i32 %72, i32 %76, i32 %80, i32 %84, i64 %87), !dbg !2469
  br label %88, !dbg !2471

; <label>:88:                                     ; preds = %68
  br label %89, !dbg !2472, !llvm.loop !2473

; <label>:89:                                     ; preds = %88
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsStatToFileAttr, i32 0, i32 0)), !dbg !2474
  %90 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2479
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %90, i32 0, i32 11, !dbg !2480
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i32 0, i32 0, !dbg !2481
  %93 = load i64, i64* %92, align 8, !dbg !2481
  %94 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2482
  %95 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %94, i32 0, i32 5, !dbg !2481
  %96 = load i64, i64* %95, align 8, !dbg !2481
  %97 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2483
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %97, i32 0, i32 12, !dbg !2480
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %98, i32 0, i32 0, !dbg !2481
  %100 = load i64, i64* %99, align 8, !dbg !2481
  %101 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2482
  %102 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %101, i32 0, i32 6, !dbg !2481
  %103 = load i64, i64* %102, align 8, !dbg !2481
  %104 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2484
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 13, !dbg !2480
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 0, !dbg !2481
  %107 = load i64, i64* %106, align 8, !dbg !2481
  %108 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2482
  %109 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %108, i32 0, i32 7, !dbg !2481
  %110 = load i64, i64* %109, align 8, !dbg !2481
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.119, i32 0, i32 0), i64 %93, i64 %96, i64 %100, i64 %103, i64 %107, i64 %110), !dbg !2485
  br label %111, !dbg !2474

; <label>:111:                                    ; preds = %89
  %112 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2487
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %112, i32 0, i32 4, !dbg !2488
  %114 = load i32, i32* %113, align 4, !dbg !2488
  %115 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2489
  %116 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %115, i32 0, i32 14, !dbg !2490
  store i32 %114, i32* %116, align 8, !dbg !2491
  %117 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2492
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %117, i32 0, i32 5, !dbg !2493
  %119 = load i32, i32* %118, align 8, !dbg !2493
  %120 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2494
  %121 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %120, i32 0, i32 15, !dbg !2495
  store i32 %119, i32* %121, align 4, !dbg !2496
  %122 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2497
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 1, !dbg !2498
  %124 = load i64, i64* %123, align 8, !dbg !2498
  %125 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2499
  %126 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %125, i32 0, i32 16, !dbg !2500
  store i64 %124, i64* %126, align 8, !dbg !2501
  %127 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2502
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %127, i32 0, i32 0, !dbg !2503
  %129 = load i64, i64* %128, align 8, !dbg !2503
  %130 = trunc i64 %129 to i32, !dbg !2502
  %131 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2504
  %132 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %131, i32 0, i32 17, !dbg !2505
  store i32 %130, i32* %132, align 8, !dbg !2506
  %133 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2507
  %134 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %133, i32 0, i32 1, !dbg !2508
  store i64 64511, i64* %134, align 8, !dbg !2509
  ret void, !dbg !2510
}

; Function Attrs: nounwind uwtable
define internal void @HgfsGetHiddenAttr(i8*, %struct.HgfsFileAttrInfo*) #0 !dbg !2511 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.HgfsFileAttrInfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2514, metadata !575), !dbg !2515
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %4, metadata !2516, metadata !575), !dbg !2517
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2518, metadata !575), !dbg !2519
  %7 = load i8*, i8** %3, align 8, !dbg !2520
  %8 = call i8* @strrchr(i8* %7, i32 47) #11, !dbg !2521
  store i8* %8, i8** %5, align 8, !dbg !2522
  %9 = load i8*, i8** %5, align 8, !dbg !2523
  %10 = icmp ne i8* %9, null, !dbg !2525
  br i1 %10, label %11, label %40, !dbg !2526

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !2527
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !2527
  %14 = load i8, i8* %13, align 1, !dbg !2527
  %15 = sext i8 %14 to i32, !dbg !2527
  %16 = icmp eq i32 %15, 46, !dbg !2528
  br i1 %16, label %17, label %40, !dbg !2529

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %5, align 8, !dbg !2530
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !2530
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0)) #11, !dbg !2531
  %21 = icmp ne i32 %20, 0, !dbg !2532
  br i1 %21, label %22, label %40, !dbg !2533

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %5, align 8, !dbg !2534
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !2534
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #11, !dbg !2535
  %26 = icmp ne i32 %25, 0, !dbg !2536
  br i1 %26, label %27, label %40, !dbg !2537

; <label>:27:                                     ; preds = %22
  %28 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2539
  %29 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %28, i32 0, i32 1, !dbg !2541
  %30 = load i64, i64* %29, align 8, !dbg !2542
  %31 = or i64 %30, 1024, !dbg !2542
  store i64 %31, i64* %29, align 8, !dbg !2542
  %32 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2543
  %33 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %32, i32 0, i32 12, !dbg !2544
  %34 = load i64, i64* %33, align 8, !dbg !2545
  %35 = or i64 %34, 1, !dbg !2545
  store i64 %35, i64* %33, align 8, !dbg !2545
  %36 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2546
  %37 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %36, i32 0, i32 12, !dbg !2547
  %38 = load i64, i64* %37, align 8, !dbg !2548
  %39 = or i64 %38, 8, !dbg !2548
  store i64 %39, i64* %37, align 8, !dbg !2548
  br label %55, !dbg !2549

; <label>:40:                                     ; preds = %22, %17, %11, %2
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2550, metadata !575), !dbg !2552
  store i8 0, i8* %6, align 1, !dbg !2552
  %41 = load i8*, i8** %3, align 8, !dbg !2553
  %42 = call i32 @HgfsGetHiddenXAttr(i8* %41, i8* %6), !dbg !2554
  %43 = load i8, i8* %6, align 1, !dbg !2555
  %44 = icmp ne i8 %43, 0, !dbg !2555
  br i1 %44, label %45, label %54, !dbg !2557

; <label>:45:                                     ; preds = %40
  %46 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2558
  %47 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %46, i32 0, i32 1, !dbg !2560
  %48 = load i64, i64* %47, align 8, !dbg !2561
  %49 = or i64 %48, 1024, !dbg !2561
  store i64 %49, i64* %47, align 8, !dbg !2561
  %50 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2562
  %51 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %50, i32 0, i32 12, !dbg !2563
  %52 = load i64, i64* %51, align 8, !dbg !2564
  %53 = or i64 %52, 1, !dbg !2564
  store i64 %53, i64* %51, align 8, !dbg !2564
  br label %54, !dbg !2565

; <label>:54:                                     ; preds = %45, %40
  br label %55

; <label>:55:                                     ; preds = %54, %27
  ret void, !dbg !2566
}

; Function Attrs: nounwind uwtable
define internal void @HgfsGetSequentialOnlyFlagFromName(i8*, i8 signext, %struct.HgfsFileAttrInfo*) #0 !dbg !2567 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.HgfsFileAttrInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2570, metadata !575), !dbg !2571
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2572, metadata !575), !dbg !2573
  store %struct.HgfsFileAttrInfo* %2, %struct.HgfsFileAttrInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %6, metadata !2574, metadata !575), !dbg !2575
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2576, metadata !575), !dbg !2577
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2578, metadata !575), !dbg !2579
  %9 = load i8*, i8** %4, align 8, !dbg !2580
  %10 = icmp eq i8* null, %9, !dbg !2582
  br i1 %10, label %14, label %11, !dbg !2583

; <label>:11:                                     ; preds = %3
  %12 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2584
  %13 = icmp eq %struct.HgfsFileAttrInfo* null, %12, !dbg !2586
  br i1 %13, label %14, label %15, !dbg !2587

; <label>:14:                                     ; preds = %11, %3
  br label %37, !dbg !2588

; <label>:15:                                     ; preds = %11
  %16 = call signext i8 @HgfsServerGetOpenFlags(i32 0, i32* %8), !dbg !2590
  %17 = load i8, i8* %5, align 1, !dbg !2591
  %18 = icmp ne i8 %17, 0, !dbg !2591
  br i1 %18, label %19, label %22, !dbg !2593

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %8, align 4, !dbg !2594
  %21 = and i32 %20, -131073, !dbg !2594
  store i32 %21, i32* %8, align 4, !dbg !2594
  br label %22, !dbg !2596

; <label>:22:                                     ; preds = %19, %15
  %23 = load i8*, i8** %4, align 8, !dbg !2597
  %24 = load i32, i32* %8, align 4, !dbg !2598
  %25 = call i32 (i8*, i32, ...) @Posix_Open(i8* %23, i32 %24), !dbg !2599
  store i32 %25, i32* %7, align 4, !dbg !2600
  %26 = load i32, i32* %7, align 4, !dbg !2601
  %27 = icmp slt i32 %26, 0, !dbg !2603
  br i1 %27, label %28, label %32, !dbg !2604

; <label>:28:                                     ; preds = %22
  br label %29, !dbg !2605, !llvm.loop !2607

; <label>:29:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromName, i32 0, i32 0)), !dbg !2608
  %30 = load i8*, i8** %4, align 8, !dbg !2613
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromName, i32 0, i32 0), i8* %30), !dbg !2614
  br label %31, !dbg !2616

; <label>:31:                                     ; preds = %29
  br label %37, !dbg !2617

; <label>:32:                                     ; preds = %22
  %33 = load i32, i32* %7, align 4, !dbg !2618
  %34 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2619
  call void @HgfsGetSequentialOnlyFlagFromFd(i32 %33, %struct.HgfsFileAttrInfo* %34), !dbg !2620
  %35 = load i32, i32* %7, align 4, !dbg !2621
  %36 = call i32 @close(i32 %35), !dbg !2622
  br label %37, !dbg !2623

; <label>:37:                                     ; preds = %32, %31, %14
  ret void, !dbg !2624
}

declare i32 @HgfsServerPolicy_GetShareMode(i8*, i64, i32*) #4

; Function Attrs: nounwind uwtable
define internal i32 @HgfsEffectivePermissions(i8*, i8 signext, i32*) #0 !dbg !2625 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2628, metadata !575), !dbg !2629
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2630, metadata !575), !dbg !2631
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2632, metadata !575), !dbg !2633
  %7 = load i32*, i32** %6, align 8, !dbg !2634
  store i32 0, i32* %7, align 4, !dbg !2635
  %8 = load i8*, i8** %4, align 8, !dbg !2636
  %9 = call i32 @Posix_Access(i8* %8, i32 4), !dbg !2638
  %10 = icmp eq i32 %9, 0, !dbg !2639
  br i1 %10, label %11, label %15, !dbg !2640

; <label>:11:                                     ; preds = %3
  %12 = load i32*, i32** %6, align 8, !dbg !2641
  %13 = load i32, i32* %12, align 4, !dbg !2643
  %14 = or i32 %13, 4, !dbg !2643
  store i32 %14, i32* %12, align 4, !dbg !2643
  br label %15, !dbg !2644

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %4, align 8, !dbg !2645
  %17 = call i32 @Posix_Access(i8* %16, i32 1), !dbg !2647
  %18 = icmp eq i32 %17, 0, !dbg !2648
  br i1 %18, label %19, label %23, !dbg !2649

; <label>:19:                                     ; preds = %15
  %20 = load i32*, i32** %6, align 8, !dbg !2650
  %21 = load i32, i32* %20, align 4, !dbg !2652
  %22 = or i32 %21, 1, !dbg !2652
  store i32 %22, i32* %20, align 4, !dbg !2652
  br label %23, !dbg !2653

; <label>:23:                                     ; preds = %19, %15
  %24 = load i8, i8* %5, align 1, !dbg !2654
  %25 = icmp ne i8 %24, 0, !dbg !2654
  br i1 %25, label %34, label %26, !dbg !2656

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %4, align 8, !dbg !2657
  %28 = call i32 @Posix_Access(i8* %27, i32 2), !dbg !2659
  %29 = icmp eq i32 %28, 0, !dbg !2660
  br i1 %29, label %30, label %34, !dbg !2661

; <label>:30:                                     ; preds = %26
  %31 = load i32*, i32** %6, align 8, !dbg !2662
  %32 = load i32, i32* %31, align 4, !dbg !2664
  %33 = or i32 %32, 2, !dbg !2664
  store i32 %33, i32* %31, align 4, !dbg !2664
  br label %34, !dbg !2665

; <label>:34:                                     ; preds = %30, %26, %23
  ret i32 0, !dbg !2666
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformGetattrFromFd(i32, %struct.HgfsSessionInfo*, %struct.HgfsFileAttrInfo*) #0 !dbg !2667 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HgfsSessionInfo*, align 8
  %6 = alloca %struct.HgfsFileAttrInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2670, metadata !575), !dbg !2671
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %5, metadata !2672, metadata !575), !dbg !2673
  store %struct.HgfsFileAttrInfo* %2, %struct.HgfsFileAttrInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %6, metadata !2674, metadata !575), !dbg !2675
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2676, metadata !575), !dbg !2677
  store i32 0, i32* %7, align 4, !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !2678, metadata !575), !dbg !2679
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2680, metadata !575), !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2682, metadata !575), !dbg !2683
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2684, metadata !575), !dbg !2685
  store i32 -1, i32* %11, align 4, !dbg !2685
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2686, metadata !575), !dbg !2687
  store i8* null, i8** %12, align 8, !dbg !2687
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2688, metadata !575), !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2690, metadata !575), !dbg !2691
  br label %15, !dbg !2692, !llvm.loop !2693

; <label>:15:                                     ; preds = %3
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2694
  %16 = load i32, i32* %4, align 4, !dbg !2699
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0), i32 %16), !dbg !2700
  br label %17, !dbg !2702

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* %4, align 4, !dbg !2703
  %19 = call i32 @HgfsFStat(i32 %18, %struct.stat* %8, i64* %14), !dbg !2704
  store i32 %19, i32* %9, align 4, !dbg !2705
  %20 = load i32, i32* %9, align 4, !dbg !2706
  %21 = icmp ne i32 %20, 0, !dbg !2706
  br i1 %21, label %22, label %28, !dbg !2708

; <label>:22:                                     ; preds = %17
  br label %23, !dbg !2709, !llvm.loop !2711

; <label>:23:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2712
  %24 = load i32, i32* %9, align 4, !dbg !2717
  %25 = call i8* @Err_Errno2String(i32 %24), !dbg !2718
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0), i8* %25), !dbg !2720
  br label %26, !dbg !2722

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %9, align 4, !dbg !2723
  store i32 %27, i32* %7, align 4, !dbg !2724
  br label %130, !dbg !2725

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2726
  %30 = load i32, i32* %29, align 8, !dbg !2726
  %31 = and i32 %30, 61440, !dbg !2728
  %32 = icmp eq i32 %31, 16384, !dbg !2729
  br i1 %32, label %33, label %38, !dbg !2730

; <label>:33:                                     ; preds = %28
  %34 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2731
  %35 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %34, i32 0, i32 2, !dbg !2733
  store i32 1, i32* %35, align 8, !dbg !2734
  br label %36, !dbg !2735, !llvm.loop !2736

; <label>:36:                                     ; preds = %33
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2737
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2742
  br label %37, !dbg !2744

; <label>:37:                                     ; preds = %36
  br label %54, !dbg !2745

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2746
  %40 = load i32, i32* %39, align 8, !dbg !2746
  %41 = and i32 %40, 61440, !dbg !2749
  %42 = icmp eq i32 %41, 40960, !dbg !2750
  br i1 %42, label %43, label %48, !dbg !2751

; <label>:43:                                     ; preds = %38
  %44 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2752
  %45 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %44, i32 0, i32 2, !dbg !2754
  store i32 2, i32* %45, align 8, !dbg !2755
  br label %46, !dbg !2756, !llvm.loop !2757

; <label>:46:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2758
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2763
  br label %47, !dbg !2765

; <label>:47:                                     ; preds = %46
  br label %53, !dbg !2766

; <label>:48:                                     ; preds = %38
  %49 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2767
  %50 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %49, i32 0, i32 2, !dbg !2769
  store i32 0, i32* %50, align 8, !dbg !2770
  br label %51, !dbg !2771, !llvm.loop !2772

; <label>:51:                                     ; preds = %48
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2773
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2778
  br label %52, !dbg !2780

; <label>:52:                                     ; preds = %51
  br label %53

; <label>:53:                                     ; preds = %52, %47
  br label %54

; <label>:54:                                     ; preds = %53, %37
  %55 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2781
  call void @HgfsStatToFileAttr(%struct.stat* %8, i64* %14, %struct.HgfsFileAttrInfo* %55), !dbg !2782
  %56 = load i32, i32* %4, align 4, !dbg !2783
  %57 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %5, align 8, !dbg !2785
  %58 = call signext i8 @HgfsFileDesc2Handle(i32 %56, %struct.HgfsSessionInfo* %57, i32* %11), !dbg !2786
  %59 = icmp ne i8 %58, 0, !dbg !2786
  br i1 %59, label %64, label %60, !dbg !2787

; <label>:60:                                     ; preds = %54
  br label %61, !dbg !2788, !llvm.loop !2790

; <label>:61:                                     ; preds = %60
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2791
  %62 = load i32, i32* %4, align 4, !dbg !2796
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0), i32 %62), !dbg !2797
  br label %63, !dbg !2799

; <label>:63:                                     ; preds = %61
  store i32 9, i32* %7, align 4, !dbg !2800
  br label %130, !dbg !2801

; <label>:64:                                     ; preds = %54
  %65 = load i32, i32* %11, align 4, !dbg !2802
  %66 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %5, align 8, !dbg !2804
  %67 = call signext i8 @HgfsHandle2ShareMode(i32 %65, %struct.HgfsSessionInfo* %66, i32* %10), !dbg !2805
  %68 = icmp ne i8 %67, 0, !dbg !2805
  br i1 %68, label %73, label %69, !dbg !2806

; <label>:69:                                     ; preds = %64
  br label %70, !dbg !2807, !llvm.loop !2809

; <label>:70:                                     ; preds = %69
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2810
  %71 = load i32, i32* %4, align 4, !dbg !2815
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0), i32 %71), !dbg !2816
  br label %72, !dbg !2818

; <label>:72:                                     ; preds = %70
  store i32 9, i32* %7, align 4, !dbg !2819
  br label %130, !dbg !2820

; <label>:73:                                     ; preds = %64
  %74 = load i32, i32* %11, align 4, !dbg !2821
  %75 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %5, align 8, !dbg !2823
  %76 = call signext i8 @HgfsHandle2FileName(i32 %74, %struct.HgfsSessionInfo* %75, i8** %12, i64* %13), !dbg !2824
  %77 = icmp ne i8 %76, 0, !dbg !2824
  br i1 %77, label %82, label %78, !dbg !2825

; <label>:78:                                     ; preds = %73
  br label %79, !dbg !2826, !llvm.loop !2828

; <label>:79:                                     ; preds = %78
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0)), !dbg !2829
  %80 = load i32, i32* %11, align 4, !dbg !2834
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformGetattrFromFd, i32 0, i32 0), i32 %80), !dbg !2835
  br label %81, !dbg !2837

; <label>:81:                                     ; preds = %79
  store i32 9, i32* %7, align 4, !dbg !2838
  br label %130, !dbg !2839

; <label>:82:                                     ; preds = %73
  %83 = load i8*, i8** %12, align 8, !dbg !2840
  %84 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2841
  call void @HgfsGetHiddenAttr(i8* %83, %struct.HgfsFileAttrInfo* %84), !dbg !2842
  %85 = load i32, i32* %4, align 4, !dbg !2843
  %86 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2844
  call void @HgfsGetSequentialOnlyFlagFromFd(i32 %85, %struct.HgfsFileAttrInfo* %86), !dbg !2845
  %87 = load i32, i32* %10, align 4, !dbg !2846
  %88 = icmp eq i32 %87, 0, !dbg !2848
  br i1 %88, label %89, label %129, !dbg !2849

; <label>:89:                                     ; preds = %82
  %90 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2850
  %91 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %90, i32 0, i32 1, !dbg !2853
  %92 = load i64, i64* %91, align 8, !dbg !2853
  %93 = and i64 %92, 128, !dbg !2854
  %94 = icmp ne i64 %93, 0, !dbg !2854
  br i1 %94, label %95, label %102, !dbg !2855

; <label>:95:                                     ; preds = %89
  %96 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2856
  %97 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %96, i32 0, i32 9, !dbg !2858
  %98 = load i8, i8* %97, align 1, !dbg !2859
  %99 = zext i8 %98 to i32, !dbg !2859
  %100 = and i32 %99, -3, !dbg !2859
  %101 = trunc i32 %100 to i8, !dbg !2859
  store i8 %101, i8* %97, align 1, !dbg !2859
  br label %102, !dbg !2860

; <label>:102:                                    ; preds = %95, %89
  %103 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2861
  %104 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %103, i32 0, i32 1, !dbg !2863
  %105 = load i64, i64* %104, align 8, !dbg !2863
  %106 = and i64 %105, 256, !dbg !2864
  %107 = icmp ne i64 %106, 0, !dbg !2864
  br i1 %107, label %108, label %115, !dbg !2865

; <label>:108:                                    ; preds = %102
  %109 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2866
  %110 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %109, i32 0, i32 10, !dbg !2868
  %111 = load i8, i8* %110, align 2, !dbg !2869
  %112 = zext i8 %111 to i32, !dbg !2869
  %113 = and i32 %112, -3, !dbg !2869
  %114 = trunc i32 %113 to i8, !dbg !2869
  store i8 %114, i8* %110, align 2, !dbg !2869
  br label %115, !dbg !2870

; <label>:115:                                    ; preds = %108, %102
  %116 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2871
  %117 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %116, i32 0, i32 1, !dbg !2873
  %118 = load i64, i64* %117, align 8, !dbg !2873
  %119 = and i64 %118, 512, !dbg !2874
  %120 = icmp ne i64 %119, 0, !dbg !2874
  br i1 %120, label %121, label %128, !dbg !2875

; <label>:121:                                    ; preds = %115
  %122 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %6, align 8, !dbg !2876
  %123 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %122, i32 0, i32 11, !dbg !2878
  %124 = load i8, i8* %123, align 1, !dbg !2879
  %125 = zext i8 %124 to i32, !dbg !2879
  %126 = and i32 %125, -3, !dbg !2879
  %127 = trunc i32 %126 to i8, !dbg !2879
  store i8 %127, i8* %123, align 1, !dbg !2879
  br label %128, !dbg !2880

; <label>:128:                                    ; preds = %121, %115
  br label %129, !dbg !2881

; <label>:129:                                    ; preds = %128, %82
  br label %130, !dbg !2882

; <label>:130:                                    ; preds = %129, %81, %72, %63, %26
  %131 = load i8*, i8** %12, align 8, !dbg !2884
  call void @free(i8* %131) #9, !dbg !2885
  %132 = load i32, i32* %7, align 4, !dbg !2886
  ret i32 %132, !dbg !2887
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsFStat(i32, %struct.stat*, i64*) #0 !dbg !2888 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2891, metadata !575), !dbg !2892
  store %struct.stat* %1, %struct.stat** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %5, metadata !2893, metadata !575), !dbg !2894
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !2895, metadata !575), !dbg !2896
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2897, metadata !575), !dbg !2898
  store i32 0, i32* %7, align 4, !dbg !2898
  %8 = load i32, i32* %4, align 4, !dbg !2899
  %9 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !2901
  %10 = call i32 @fstat64(i32 %8, %struct.stat* %9) #9, !dbg !2902
  %11 = icmp slt i32 %10, 0, !dbg !2903
  br i1 %11, label %12, label %15, !dbg !2904

; <label>:12:                                     ; preds = %3
  %13 = call i32* @__errno_location() #1, !dbg !2905
  %14 = load i32, i32* %13, align 4, !dbg !2907
  store i32 %14, i32* %7, align 4, !dbg !2908
  br label %15, !dbg !2909

; <label>:15:                                     ; preds = %12, %3
  %16 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !2910
  %17 = call i64 @HgfsGetCreationTime(%struct.stat* %16), !dbg !2911
  %18 = load i64*, i64** %6, align 8, !dbg !2912
  store i64 %17, i64* %18, align 8, !dbg !2913
  %19 = load i32, i32* %7, align 4, !dbg !2914
  ret i32 %19, !dbg !2915
}

declare signext i8 @HgfsFileDesc2Handle(i32, %struct.HgfsSessionInfo*, i32*) #4

declare signext i8 @HgfsHandle2ShareMode(i32, %struct.HgfsSessionInfo*, i32*) #4

declare signext i8 @HgfsHandle2FileName(i32, %struct.HgfsSessionInfo*, i8**, i64*) #4

; Function Attrs: nounwind uwtable
define internal void @HgfsGetSequentialOnlyFlagFromFd(i32, %struct.HgfsFileAttrInfo*) #0 !dbg !2916 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsFileAttrInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2919, metadata !575), !dbg !2920
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %4, metadata !2921, metadata !575), !dbg !2922
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2923, metadata !575), !dbg !2924
  call void @llvm.dbg.declare(metadata [2 x i8]* %6, metadata !2925, metadata !575), !dbg !2927
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !2928, metadata !575), !dbg !2929
  %8 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2930
  %9 = icmp eq %struct.HgfsFileAttrInfo* null, %8, !dbg !2932
  br i1 %9, label %10, label %11, !dbg !2933

; <label>:10:                                     ; preds = %2
  br label %51, !dbg !2934

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %3, align 4, !dbg !2936
  %13 = call i32 @fstat64(i32 %12, %struct.stat* %7) #9, !dbg !2938
  %14 = icmp slt i32 %13, 0, !dbg !2939
  br i1 %14, label %15, label %16, !dbg !2940

; <label>:15:                                     ; preds = %11
  br label %51, !dbg !2941

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !2943
  %18 = load i32, i32* %17, align 8, !dbg !2943
  %19 = and i32 %18, 61440, !dbg !2945
  %20 = icmp eq i32 %19, 16384, !dbg !2946
  br i1 %20, label %26, label %21, !dbg !2947

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !2948
  %23 = load i32, i32* %22, align 8, !dbg !2948
  %24 = and i32 %23, 61440, !dbg !2950
  %25 = icmp eq i32 %24, 40960, !dbg !2951
  br i1 %25, label %26, label %27, !dbg !2952

; <label>:26:                                     ; preds = %21, %16
  br label %51, !dbg !2953

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %3, align 4, !dbg !2955
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i32 0, i32 0, !dbg !2956
  %30 = call i64 @pread64(i32 %28, i8* %29, i64 0, i64 0), !dbg !2957
  %31 = trunc i64 %30 to i32, !dbg !2957
  store i32 %31, i32* %5, align 4, !dbg !2958
  br label %32, !dbg !2959, !llvm.loop !2960

; <label>:32:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromFd, i32 0, i32 0)), !dbg !2961
  %33 = load i32, i32* %5, align 4, !dbg !2966
  %34 = call i32* @__errno_location() #1, !dbg !2967
  %35 = load i32, i32* %34, align 4, !dbg !2969
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromFd, i32 0, i32 0), i32 %33, i32 %35), !dbg !2970
  br label %36, !dbg !2972

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %5, align 4, !dbg !2973
  %38 = icmp eq i32 -1, %37, !dbg !2975
  br i1 %38, label %39, label %50, !dbg !2976

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno_location() #1, !dbg !2977
  %41 = load i32, i32* %40, align 4, !dbg !2979
  %42 = icmp eq i32 29, %41, !dbg !2980
  br i1 %42, label %43, label %50, !dbg !2981

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !2982, !llvm.loop !2984

; <label>:44:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromFd, i32 0, i32 0)), !dbg !2985
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.HgfsGetSequentialOnlyFlagFromFd, i32 0, i32 0)), !dbg !2990
  br label %45, !dbg !2992

; <label>:45:                                     ; preds = %44
  %46 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !2993
  %47 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %46, i32 0, i32 12, !dbg !2994
  %48 = load i64, i64* %47, align 8, !dbg !2995
  %49 = or i64 %48, 2048, !dbg !2995
  store i64 %49, i64* %47, align 8, !dbg !2995
  br label %50, !dbg !2996

; <label>:50:                                     ; preds = %45, %39, %36
  br label %51, !dbg !2997

; <label>:51:                                     ; preds = %50, %26, %15, %10
  ret void, !dbg !2998
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformSetattrFromFd(i32, %struct.HgfsSessionInfo*, %struct.HgfsFileAttrInfo*, i64, i8 signext) #0 !dbg !2999 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.HgfsSessionInfo*, align 8
  %8 = alloca %struct.HgfsFileAttrInfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 8
  %15 = alloca [2 x %struct.timeval], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3003, metadata !575), !dbg !3004
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %7, metadata !3005, metadata !575), !dbg !3006
  store %struct.HgfsFileAttrInfo* %2, %struct.HgfsFileAttrInfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %8, metadata !3007, metadata !575), !dbg !3008
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3009, metadata !575), !dbg !3010
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !3011, metadata !575), !dbg !3012
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3013, metadata !575), !dbg !3014
  store i32 0, i32* %11, align 4, !dbg !3014
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3015, metadata !575), !dbg !3016
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3017, metadata !575), !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.stat* %14, metadata !3019, metadata !575), !dbg !3020
  call void @llvm.dbg.declare(metadata [2 x %struct.timeval]* %15, metadata !3021, metadata !575), !dbg !3022
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3023, metadata !575), !dbg !3024
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3025, metadata !575), !dbg !3026
  store i32 -1, i32* %17, align 4, !dbg !3026
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3027, metadata !575), !dbg !3029
  store i32 -1, i32* %18, align 4, !dbg !3029
  call void @llvm.dbg.declare(metadata i8* %19, metadata !3030, metadata !575), !dbg !3031
  store i8 0, i8* %19, align 1, !dbg !3031
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3032, metadata !575), !dbg !3033
  store i8 0, i8* %20, align 1, !dbg !3033
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3034, metadata !575), !dbg !3035
  store i8 0, i8* %21, align 1, !dbg !3035
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3036, metadata !575), !dbg !3037
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3038, metadata !575), !dbg !3039
  %28 = load i32, i32* %6, align 4, !dbg !3040
  %29 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %7, align 8, !dbg !3041
  %30 = call i32 @HgfsPlatformGetFd(i32 %28, %struct.HgfsSessionInfo* %29, i8 signext 0, i32* %22), !dbg !3042
  store i32 %30, i32* %11, align 4, !dbg !3043
  %31 = load i32, i32* %11, align 4, !dbg !3044
  %32 = icmp ne i32 %31, 0, !dbg !3046
  br i1 %32, label %33, label %36, !dbg !3047

; <label>:33:                                     ; preds = %5
  br label %34, !dbg !3048, !llvm.loop !3050

; <label>:34:                                     ; preds = %33
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3051
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3056
  br label %35, !dbg !3058

; <label>:35:                                     ; preds = %34
  br label %247, !dbg !3059

; <label>:36:                                     ; preds = %5
  %37 = load i32, i32* %22, align 4, !dbg !3060
  %38 = call i32 @fstat64(i32 %37, %struct.stat* %14) #9, !dbg !3062
  %39 = icmp eq i32 %38, -1, !dbg !3063
  br i1 %39, label %40, label %49, !dbg !3064

; <label>:40:                                     ; preds = %36
  %41 = call i32* @__errno_location() #1, !dbg !3065
  %42 = load i32, i32* %41, align 4, !dbg !3067
  store i32 %42, i32* %13, align 4, !dbg !3068
  br label %43, !dbg !3069, !llvm.loop !3070

; <label>:43:                                     ; preds = %40
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3071
  %44 = load i32, i32* %22, align 4, !dbg !3076
  %45 = load i32, i32* %13, align 4, !dbg !3077
  %46 = call i8* @Err_Errno2String(i32 %45), !dbg !3078
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %44, i8* %46), !dbg !3080
  br label %47, !dbg !3082

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %13, align 4, !dbg !3083
  store i32 %48, i32* %11, align 4, !dbg !3084
  br label %247, !dbg !3085

; <label>:49:                                     ; preds = %36
  %50 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3086
  %51 = call signext i8 @HgfsSetattrOwnership(%struct.HgfsFileAttrInfo* %50, i32* %17, i32* %18), !dbg !3087
  store i8 %51, i8* %21, align 1, !dbg !3088
  %52 = load i8, i8* %21, align 1, !dbg !3089
  %53 = icmp ne i8 %52, 0, !dbg !3089
  br i1 %53, label %54, label %74, !dbg !3091

; <label>:54:                                     ; preds = %49
  br label %55, !dbg !3092, !llvm.loop !3094

; <label>:55:                                     ; preds = %54
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3095
  %56 = load i32, i32* %17, align 4, !dbg !3100
  %57 = load i32, i32* %18, align 4, !dbg !3101
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %56, i32 %57), !dbg !3102
  br label %58, !dbg !3104

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %22, align 4, !dbg !3105
  %60 = load i32, i32* %17, align 4, !dbg !3107
  %61 = load i32, i32* %18, align 4, !dbg !3108
  %62 = call i32 @fchown(i32 %59, i32 %60, i32 %61) #9, !dbg !3109
  %63 = icmp slt i32 %62, 0, !dbg !3110
  br i1 %63, label %64, label %73, !dbg !3111

; <label>:64:                                     ; preds = %58
  %65 = call i32* @__errno_location() #1, !dbg !3112
  %66 = load i32, i32* %65, align 4, !dbg !3114
  store i32 %66, i32* %13, align 4, !dbg !3115
  br label %67, !dbg !3116, !llvm.loop !3117

; <label>:67:                                     ; preds = %64
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3118
  %68 = load i32, i32* %22, align 4, !dbg !3123
  %69 = load i32, i32* %13, align 4, !dbg !3124
  %70 = call i8* @Err_Errno2String(i32 %69), !dbg !3125
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %68, i8* %70), !dbg !3127
  br label %71, !dbg !3129

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %13, align 4, !dbg !3130
  store i32 %72, i32* %11, align 4, !dbg !3131
  br label %73, !dbg !3132

; <label>:73:                                     ; preds = %71, %58
  br label %74, !dbg !3133

; <label>:74:                                     ; preds = %73, %49
  %75 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3134
  %76 = call signext i8 @HgfsSetattrMode(%struct.stat* %14, %struct.HgfsFileAttrInfo* %75, i32* %16), !dbg !3135
  store i8 %76, i8* %19, align 1, !dbg !3136
  %77 = load i8, i8* %19, align 1, !dbg !3137
  %78 = icmp ne i8 %77, 0, !dbg !3137
  br i1 %78, label %79, label %97, !dbg !3139

; <label>:79:                                     ; preds = %74
  br label %80, !dbg !3140, !llvm.loop !3142

; <label>:80:                                     ; preds = %79
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3143
  %81 = load i32, i32* %16, align 4, !dbg !3148
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %81), !dbg !3149
  br label %82, !dbg !3151

; <label>:82:                                     ; preds = %80
  %83 = load i32, i32* %22, align 4, !dbg !3152
  %84 = load i32, i32* %16, align 4, !dbg !3154
  %85 = call i32 @fchmod(i32 %83, i32 %84) #9, !dbg !3155
  %86 = icmp slt i32 %85, 0, !dbg !3156
  br i1 %86, label %87, label %96, !dbg !3157

; <label>:87:                                     ; preds = %82
  %88 = call i32* @__errno_location() #1, !dbg !3158
  %89 = load i32, i32* %88, align 4, !dbg !3160
  store i32 %89, i32* %13, align 4, !dbg !3161
  br label %90, !dbg !3162, !llvm.loop !3163

; <label>:90:                                     ; preds = %87
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3164
  %91 = load i32, i32* %22, align 4, !dbg !3169
  %92 = load i32, i32* %13, align 4, !dbg !3170
  %93 = call i8* @Err_Errno2String(i32 %92), !dbg !3171
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %91, i8* %93), !dbg !3173
  br label %94, !dbg !3175

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %13, align 4, !dbg !3176
  store i32 %95, i32* %11, align 4, !dbg !3177
  br label %96, !dbg !3178

; <label>:96:                                     ; preds = %94, %82
  br label %97, !dbg !3179

; <label>:97:                                     ; preds = %96, %74
  %98 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3180
  %99 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %98, i32 0, i32 1, !dbg !3182
  %100 = load i64, i64* %99, align 8, !dbg !3182
  %101 = and i64 %100, 2, !dbg !3183
  %102 = icmp ne i64 %101, 0, !dbg !3183
  br i1 %102, label %103, label %142, !dbg !3184

; <label>:103:                                    ; preds = %97
  %104 = load i32, i32* %6, align 4, !dbg !3185
  %105 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %7, align 8, !dbg !3188
  %106 = call signext i8 @HgfsHandle2ServerLock(i32 %104, %struct.HgfsSessionInfo* %105, i32* %23), !dbg !3189
  %107 = icmp ne i8 %106, 0, !dbg !3189
  br i1 %107, label %111, label %108, !dbg !3190

; <label>:108:                                    ; preds = %103
  br label %109, !dbg !3191, !llvm.loop !3193

; <label>:109:                                    ; preds = %108
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3194
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3199
  br label %110, !dbg !3201

; <label>:110:                                    ; preds = %109
  store i32 9, i32* %11, align 4, !dbg !3202
  br label %141, !dbg !3203

; <label>:111:                                    ; preds = %103
  %112 = load i32, i32* %23, align 4, !dbg !3204
  %113 = icmp ne i32 %112, 0, !dbg !3207
  br i1 %113, label %114, label %117, !dbg !3204

; <label>:114:                                    ; preds = %111
  br label %115, !dbg !3208, !llvm.loop !3210

; <label>:115:                                    ; preds = %114
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3211
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3216
  br label %116, !dbg !3218

; <label>:116:                                    ; preds = %115
  store i32 16, i32* %11, align 4, !dbg !3219
  br label %140, !dbg !3220

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %22, align 4, !dbg !3221
  %119 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3224
  %120 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %119, i32 0, i32 3, !dbg !3225
  %121 = load i64, i64* %120, align 8, !dbg !3225
  %122 = call i32 @ftruncate64(i32 %118, i64 %121) #9, !dbg !3226
  %123 = icmp slt i32 %122, 0, !dbg !3227
  br i1 %123, label %124, label %133, !dbg !3226

; <label>:124:                                    ; preds = %117
  %125 = call i32* @__errno_location() #1, !dbg !3228
  %126 = load i32, i32* %125, align 4, !dbg !3230
  store i32 %126, i32* %13, align 4, !dbg !3231
  br label %127, !dbg !3232, !llvm.loop !3233

; <label>:127:                                    ; preds = %124
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3234
  %128 = load i32, i32* %22, align 4, !dbg !3239
  %129 = load i32, i32* %13, align 4, !dbg !3240
  %130 = call i8* @Err_Errno2String(i32 %129), !dbg !3241
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %128, i8* %130), !dbg !3243
  br label %131, !dbg !3245

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %13, align 4, !dbg !3246
  store i32 %132, i32* %11, align 4, !dbg !3247
  br label %139, !dbg !3248

; <label>:133:                                    ; preds = %117
  br label %134, !dbg !3249, !llvm.loop !3251

; <label>:134:                                    ; preds = %133
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3252
  %135 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3257
  %136 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %135, i32 0, i32 3, !dbg !3258
  %137 = load i64, i64* %136, align 8, !dbg !3258
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i64 %137), !dbg !3259
  br label %138, !dbg !3261

; <label>:138:                                    ; preds = %134
  br label %139

; <label>:139:                                    ; preds = %138, %131
  br label %140

; <label>:140:                                    ; preds = %139, %116
  br label %141

; <label>:141:                                    ; preds = %140, %110
  br label %142, !dbg !3262

; <label>:142:                                    ; preds = %141, %97
  %143 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3263
  %144 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %143, i32 0, i32 1, !dbg !3265
  %145 = load i64, i64* %144, align 8, !dbg !3265
  %146 = and i64 %145, 1024, !dbg !3266
  %147 = icmp ne i64 %146, 0, !dbg !3266
  br i1 %147, label %148, label %171, !dbg !3267

; <label>:148:                                    ; preds = %142
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 3, !dbg !3268
  %150 = load i32, i32* %149, align 8, !dbg !3268
  %151 = and i32 %150, 61440, !dbg !3270
  %152 = icmp eq i32 %151, 40960, !dbg !3271
  br i1 %152, label %171, label %153, !dbg !3272

; <label>:153:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3273, metadata !575), !dbg !3275
  call void @llvm.dbg.declare(metadata i64* %25, metadata !3276, metadata !575), !dbg !3277
  %154 = load i32, i32* %6, align 4, !dbg !3278
  %155 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %7, align 8, !dbg !3280
  %156 = call signext i8 @HgfsHandle2FileName(i32 %154, %struct.HgfsSessionInfo* %155, i8** %24, i64* %25), !dbg !3281
  %157 = icmp ne i8 %156, 0, !dbg !3281
  br i1 %157, label %158, label %170, !dbg !3282

; <label>:158:                                    ; preds = %153
  %159 = load i8*, i8** %24, align 8, !dbg !3283
  %160 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3285
  %161 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %160, i32 0, i32 12, !dbg !3286
  %162 = load i64, i64* %161, align 8, !dbg !3286
  %163 = and i64 %162, 1, !dbg !3287
  %164 = icmp ne i64 %163, 0, !dbg !3288
  %165 = zext i1 %164 to i32, !dbg !3288
  %166 = trunc i32 %165 to i8, !dbg !3289
  %167 = load i32, i32* %16, align 4, !dbg !3290
  %168 = call i32 @HgfsSetHiddenXAttr(i8* %159, i8 signext %166, i32 %167), !dbg !3291
  store i32 %168, i32* %11, align 4, !dbg !3292
  %169 = load i8*, i8** %24, align 8, !dbg !3293
  call void @free(i8* %169) #9, !dbg !3294
  br label %170, !dbg !3295

; <label>:170:                                    ; preds = %158, %153
  br label %171, !dbg !3296

; <label>:171:                                    ; preds = %170, %148, %142
  %172 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %8, align 8, !dbg !3297
  %173 = load i64, i64* %9, align 8, !dbg !3298
  %174 = load i8, i8* %10, align 1, !dbg !3299
  %175 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %15, i64 0, i64 0, !dbg !3300
  %176 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %15, i64 0, i64 1, !dbg !3301
  %177 = call i32 @HgfsSetattrTimes(%struct.stat* %14, %struct.HgfsFileAttrInfo* %172, i64 %173, i8 signext %174, %struct.timeval* %175, %struct.timeval* %176, i8* %20), !dbg !3302
  store i32 %177, i32* %12, align 4, !dbg !3303
  %178 = load i32, i32* %12, align 4, !dbg !3304
  %179 = icmp eq i32 %178, 0, !dbg !3306
  br i1 %179, label %180, label %240, !dbg !3307

; <label>:180:                                    ; preds = %171
  %181 = load i8, i8* %20, align 1, !dbg !3308
  %182 = sext i8 %181 to i32, !dbg !3308
  %183 = icmp ne i32 %182, 0, !dbg !3308
  br i1 %183, label %184, label %240, !dbg !3310

; <label>:184:                                    ; preds = %180
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3311, metadata !575), !dbg !3313
  store i32 -1, i32* %26, align 4, !dbg !3313
  call void @llvm.dbg.declare(metadata i8* %27, metadata !3314, metadata !575), !dbg !3315
  store i8 0, i8* %27, align 1, !dbg !3315
  br label %185, !dbg !3316, !llvm.loop !3317

; <label>:185:                                    ; preds = %184
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3318
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3323
  br label %186, !dbg !3325

; <label>:186:                                    ; preds = %185
  %187 = call i32 @geteuid() #9, !dbg !3326
  %188 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 4, !dbg !3328
  %189 = load i32, i32* %188, align 4, !dbg !3328
  %190 = icmp ne i32 %187, %189, !dbg !3329
  br i1 %190, label %191, label %200, !dbg !3330

; <label>:191:                                    ; preds = %186
  %192 = call signext i8 @Id_IsSuperUser(), !dbg !3331
  %193 = icmp ne i8 %192, 0, !dbg !3331
  br i1 %193, label %198, label %194, !dbg !3334

; <label>:194:                                    ; preds = %191
  br label %195, !dbg !3335, !llvm.loop !3337

; <label>:195:                                    ; preds = %194
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3338
  %196 = load i32, i32* %22, align 4, !dbg !3343
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %196), !dbg !3344
  br label %197, !dbg !3346

; <label>:197:                                    ; preds = %195
  store i32 1, i32* %11, align 4, !dbg !3347
  br label %247, !dbg !3348

; <label>:198:                                    ; preds = %191
  %199 = call i32 @Id_BeginSuperUser(), !dbg !3349
  store i32 %199, i32* %26, align 4, !dbg !3350
  store i8 1, i8* %27, align 1, !dbg !3351
  br label %200, !dbg !3352

; <label>:200:                                    ; preds = %198, %186
  %201 = load i32, i32* %22, align 4, !dbg !3353
  %202 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %15, i32 0, i32 0, !dbg !3355
  %203 = call i32 @futimes(i32 %201, %struct.timeval* %202) #9, !dbg !3356
  %204 = icmp slt i32 %203, 0, !dbg !3357
  br i1 %204, label %205, label %234, !dbg !3358

; <label>:205:                                    ; preds = %200
  %206 = load i8, i8* %27, align 1, !dbg !3359
  %207 = icmp ne i8 %206, 0, !dbg !3359
  br i1 %207, label %224, label %208, !dbg !3362

; <label>:208:                                    ; preds = %205
  %209 = call i32 @Id_BeginSuperUser(), !dbg !3363
  store i32 %209, i32* %26, align 4, !dbg !3365
  store i8 1, i8* %27, align 1, !dbg !3366
  %210 = load i32, i32* %22, align 4, !dbg !3367
  %211 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %15, i32 0, i32 0, !dbg !3369
  %212 = call i32 @futimes(i32 %210, %struct.timeval* %211) #9, !dbg !3370
  %213 = icmp slt i32 %212, 0, !dbg !3371
  br i1 %213, label %214, label %223, !dbg !3372

; <label>:214:                                    ; preds = %208
  %215 = call i32* @__errno_location() #1, !dbg !3373
  %216 = load i32, i32* %215, align 4, !dbg !3375
  store i32 %216, i32* %13, align 4, !dbg !3376
  br label %217, !dbg !3377, !llvm.loop !3378

; <label>:217:                                    ; preds = %214
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3379
  %218 = load i32, i32* %22, align 4, !dbg !3384
  %219 = load i32, i32* %13, align 4, !dbg !3385
  %220 = call i8* @Err_Errno2String(i32 %219), !dbg !3386
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %218, i8* %220), !dbg !3388
  br label %221, !dbg !3390

; <label>:221:                                    ; preds = %217
  %222 = load i32, i32* %13, align 4, !dbg !3391
  store i32 %222, i32* %11, align 4, !dbg !3392
  br label %223, !dbg !3393

; <label>:223:                                    ; preds = %221, %208
  br label %233, !dbg !3394

; <label>:224:                                    ; preds = %205
  %225 = call i32* @__errno_location() #1, !dbg !3395
  %226 = load i32, i32* %225, align 4, !dbg !3397
  store i32 %226, i32* %13, align 4, !dbg !3398
  br label %227, !dbg !3399, !llvm.loop !3400

; <label>:227:                                    ; preds = %224
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0)), !dbg !3401
  %228 = load i32, i32* %22, align 4, !dbg !3406
  %229 = load i32, i32* %13, align 4, !dbg !3407
  %230 = call i8* @Err_Errno2String(i32 %229), !dbg !3408
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromFd, i32 0, i32 0), i32 %228, i8* %230), !dbg !3410
  br label %231, !dbg !3412

; <label>:231:                                    ; preds = %227
  %232 = load i32, i32* %13, align 4, !dbg !3413
  store i32 %232, i32* %11, align 4, !dbg !3414
  br label %233

; <label>:233:                                    ; preds = %231, %223
  br label %234, !dbg !3415

; <label>:234:                                    ; preds = %233, %200
  %235 = load i8, i8* %27, align 1, !dbg !3416
  %236 = icmp ne i8 %235, 0, !dbg !3416
  br i1 %236, label %237, label %239, !dbg !3418

; <label>:237:                                    ; preds = %234
  %238 = load i32, i32* %26, align 4, !dbg !3419
  call void @Id_EndSuperUser(i32 %238), !dbg !3421
  br label %239, !dbg !3422

; <label>:239:                                    ; preds = %237, %234
  br label %246, !dbg !3423

; <label>:240:                                    ; preds = %180, %171
  %241 = load i32, i32* %12, align 4, !dbg !3424
  %242 = icmp ne i32 %241, 0, !dbg !3427
  br i1 %242, label %243, label %245, !dbg !3424

; <label>:243:                                    ; preds = %240
  %244 = load i32, i32* %12, align 4, !dbg !3428
  store i32 %244, i32* %11, align 4, !dbg !3430
  br label %245, !dbg !3431

; <label>:245:                                    ; preds = %243, %240
  br label %246

; <label>:246:                                    ; preds = %245, %239
  br label %247, !dbg !3432

; <label>:247:                                    ; preds = %246, %197, %47, %35
  %248 = load i32, i32* %11, align 4, !dbg !3434
  ret i32 %248, !dbg !3435
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsSetattrOwnership(%struct.HgfsFileAttrInfo*, i32*, i32*) #0 !dbg !3436 {
  %4 = alloca %struct.HgfsFileAttrInfo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store %struct.HgfsFileAttrInfo* %0, %struct.HgfsFileAttrInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %4, metadata !3441, metadata !575), !dbg !3442
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3443, metadata !575), !dbg !3444
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3445, metadata !575), !dbg !3446
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3447, metadata !575), !dbg !3448
  store i8 0, i8* %7, align 1, !dbg !3448
  %8 = load i32*, i32** %6, align 8, !dbg !3449
  store i32 -1, i32* %8, align 4, !dbg !3450
  %9 = load i32*, i32** %5, align 8, !dbg !3451
  store i32 -1, i32* %9, align 4, !dbg !3452
  %10 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !3453
  %11 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %10, i32 0, i32 1, !dbg !3455
  %12 = load i64, i64* %11, align 8, !dbg !3455
  %13 = and i64 %12, 4096, !dbg !3456
  %14 = icmp ne i64 %13, 0, !dbg !3456
  br i1 %14, label %15, label %20, !dbg !3457

; <label>:15:                                     ; preds = %3
  %16 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !3458
  %17 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %16, i32 0, i32 14, !dbg !3460
  %18 = load i32, i32* %17, align 8, !dbg !3460
  %19 = load i32*, i32** %5, align 8, !dbg !3461
  store i32 %18, i32* %19, align 4, !dbg !3462
  store i8 1, i8* %7, align 1, !dbg !3463
  br label %20, !dbg !3464

; <label>:20:                                     ; preds = %15, %3
  %21 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !3465
  %22 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %21, i32 0, i32 1, !dbg !3467
  %23 = load i64, i64* %22, align 8, !dbg !3467
  %24 = and i64 %23, 8192, !dbg !3468
  %25 = icmp ne i64 %24, 0, !dbg !3468
  br i1 %25, label %26, label %31, !dbg !3469

; <label>:26:                                     ; preds = %20
  %27 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %4, align 8, !dbg !3470
  %28 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %27, i32 0, i32 15, !dbg !3472
  %29 = load i32, i32* %28, align 4, !dbg !3472
  %30 = load i32*, i32** %6, align 8, !dbg !3473
  store i32 %29, i32* %30, align 4, !dbg !3474
  store i8 1, i8* %7, align 1, !dbg !3475
  br label %31, !dbg !3476

; <label>:31:                                     ; preds = %26, %20
  %32 = load i8, i8* %7, align 1, !dbg !3477
  ret i8 %32, !dbg !3478
}

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsSetattrMode(%struct.stat*, %struct.HgfsFileAttrInfo*, i32*) #0 !dbg !3479 {
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.HgfsFileAttrInfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store %struct.stat* %0, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !3483, metadata !575), !dbg !3484
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %5, metadata !3485, metadata !575), !dbg !3486
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3487, metadata !575), !dbg !3488
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3489, metadata !575), !dbg !3490
  store i8 0, i8* %7, align 1, !dbg !3490
  %8 = load i32*, i32** %6, align 8, !dbg !3491
  store i32 0, i32* %8, align 4, !dbg !3492
  %9 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3493
  %10 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %9, i32 0, i32 1, !dbg !3495
  %11 = load i64, i64* %10, align 8, !dbg !3495
  %12 = and i64 %11, 64, !dbg !3496
  %13 = icmp ne i64 %12, 0, !dbg !3496
  br i1 %13, label %14, label %23, !dbg !3497

; <label>:14:                                     ; preds = %3
  %15 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3498
  %16 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %15, i32 0, i32 8, !dbg !3500
  %17 = load i8, i8* %16, align 8, !dbg !3500
  %18 = zext i8 %17 to i32, !dbg !3498
  %19 = shl i32 %18, 9, !dbg !3501
  %20 = load i32*, i32** %6, align 8, !dbg !3502
  %21 = load i32, i32* %20, align 4, !dbg !3503
  %22 = or i32 %21, %19, !dbg !3503
  store i32 %22, i32* %20, align 4, !dbg !3503
  store i8 1, i8* %7, align 1, !dbg !3504
  br label %31, !dbg !3505

; <label>:23:                                     ; preds = %3
  %24 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3506
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 3, !dbg !3508
  %26 = load i32, i32* %25, align 8, !dbg !3508
  %27 = and i32 %26, 3584, !dbg !3509
  %28 = load i32*, i32** %6, align 8, !dbg !3510
  %29 = load i32, i32* %28, align 4, !dbg !3511
  %30 = or i32 %29, %27, !dbg !3511
  store i32 %30, i32* %28, align 4, !dbg !3511
  br label %31

; <label>:31:                                     ; preds = %23, %14
  %32 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3512
  %33 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %32, i32 0, i32 1, !dbg !3514
  %34 = load i64, i64* %33, align 8, !dbg !3514
  %35 = and i64 %34, 128, !dbg !3515
  %36 = icmp ne i64 %35, 0, !dbg !3515
  br i1 %36, label %37, label %46, !dbg !3516

; <label>:37:                                     ; preds = %31
  %38 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3517
  %39 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %38, i32 0, i32 9, !dbg !3519
  %40 = load i8, i8* %39, align 1, !dbg !3519
  %41 = zext i8 %40 to i32, !dbg !3517
  %42 = shl i32 %41, 6, !dbg !3520
  %43 = load i32*, i32** %6, align 8, !dbg !3521
  %44 = load i32, i32* %43, align 4, !dbg !3522
  %45 = or i32 %44, %42, !dbg !3522
  store i32 %45, i32* %43, align 4, !dbg !3522
  store i8 1, i8* %7, align 1, !dbg !3523
  br label %54, !dbg !3524

; <label>:46:                                     ; preds = %31
  %47 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3525
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 3, !dbg !3527
  %49 = load i32, i32* %48, align 8, !dbg !3527
  %50 = and i32 %49, 448, !dbg !3528
  %51 = load i32*, i32** %6, align 8, !dbg !3529
  %52 = load i32, i32* %51, align 4, !dbg !3530
  %53 = or i32 %52, %50, !dbg !3530
  store i32 %53, i32* %51, align 4, !dbg !3530
  br label %54

; <label>:54:                                     ; preds = %46, %37
  %55 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3531
  %56 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %55, i32 0, i32 1, !dbg !3533
  %57 = load i64, i64* %56, align 8, !dbg !3533
  %58 = and i64 %57, 256, !dbg !3534
  %59 = icmp ne i64 %58, 0, !dbg !3534
  br i1 %59, label %60, label %69, !dbg !3535

; <label>:60:                                     ; preds = %54
  %61 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3536
  %62 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %61, i32 0, i32 10, !dbg !3538
  %63 = load i8, i8* %62, align 2, !dbg !3538
  %64 = zext i8 %63 to i32, !dbg !3536
  %65 = shl i32 %64, 3, !dbg !3539
  %66 = load i32*, i32** %6, align 8, !dbg !3540
  %67 = load i32, i32* %66, align 4, !dbg !3541
  %68 = or i32 %67, %65, !dbg !3541
  store i32 %68, i32* %66, align 4, !dbg !3541
  store i8 1, i8* %7, align 1, !dbg !3542
  br label %77, !dbg !3543

; <label>:69:                                     ; preds = %54
  %70 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3544
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %70, i32 0, i32 3, !dbg !3546
  %72 = load i32, i32* %71, align 8, !dbg !3546
  %73 = and i32 %72, 56, !dbg !3547
  %74 = load i32*, i32** %6, align 8, !dbg !3548
  %75 = load i32, i32* %74, align 4, !dbg !3549
  %76 = or i32 %75, %73, !dbg !3549
  store i32 %76, i32* %74, align 4, !dbg !3549
  br label %77

; <label>:77:                                     ; preds = %69, %60
  %78 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3550
  %79 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %78, i32 0, i32 1, !dbg !3552
  %80 = load i64, i64* %79, align 8, !dbg !3552
  %81 = and i64 %80, 512, !dbg !3553
  %82 = icmp ne i64 %81, 0, !dbg !3553
  br i1 %82, label %83, label %91, !dbg !3554

; <label>:83:                                     ; preds = %77
  %84 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %5, align 8, !dbg !3555
  %85 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %84, i32 0, i32 11, !dbg !3557
  %86 = load i8, i8* %85, align 1, !dbg !3557
  %87 = zext i8 %86 to i32, !dbg !3555
  %88 = load i32*, i32** %6, align 8, !dbg !3558
  %89 = load i32, i32* %88, align 4, !dbg !3559
  %90 = or i32 %89, %87, !dbg !3559
  store i32 %90, i32* %88, align 4, !dbg !3559
  store i8 1, i8* %7, align 1, !dbg !3560
  br label %99, !dbg !3561

; <label>:91:                                     ; preds = %77
  %92 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3562
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %92, i32 0, i32 3, !dbg !3564
  %94 = load i32, i32* %93, align 8, !dbg !3564
  %95 = and i32 %94, 7, !dbg !3565
  %96 = load i32*, i32** %6, align 8, !dbg !3566
  %97 = load i32, i32* %96, align 4, !dbg !3567
  %98 = or i32 %97, %95, !dbg !3567
  store i32 %98, i32* %96, align 4, !dbg !3567
  br label %99

; <label>:99:                                     ; preds = %91, %83
  %100 = load i8, i8* %7, align 1, !dbg !3568
  ret i8 %100, !dbg !3569
}

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #3

declare signext i8 @HgfsHandle2ServerLock(i32, %struct.HgfsSessionInfo*, i32*) #4

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @HgfsSetattrTimes(%struct.stat*, %struct.HgfsFileAttrInfo*, i64, i8 signext, %struct.timeval*, %struct.timeval*, i8*) #0 !dbg !3570 {
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.HgfsFileAttrInfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca %struct.timespec, align 8
  %20 = alloca %struct.timeval, align 8
  store %struct.stat* %0, %struct.stat** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %8, metadata !3575, metadata !575), !dbg !3576
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %9, metadata !3577, metadata !575), !dbg !3578
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3579, metadata !575), !dbg !3580
  store i8 %3, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3581, metadata !575), !dbg !3582
  store %struct.timeval* %4, %struct.timeval** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %12, metadata !3583, metadata !575), !dbg !3584
  store %struct.timeval* %5, %struct.timeval** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %13, metadata !3585, metadata !575), !dbg !3586
  store i8* %6, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3587, metadata !575), !dbg !3588
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3589, metadata !575), !dbg !3590
  store i32 0, i32* %15, align 4, !dbg !3590
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3591, metadata !575), !dbg !3592
  %21 = load i8*, i8** %14, align 8, !dbg !3593
  store i8 0, i8* %21, align 1, !dbg !3594
  %22 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3595
  %23 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %22, i32 0, i32 1, !dbg !3597
  %24 = load i64, i64* %23, align 8, !dbg !3597
  %25 = and i64 %24, 24, !dbg !3598
  %26 = icmp ne i64 %25, 0, !dbg !3598
  br i1 %26, label %27, label %148, !dbg !3599

; <label>:27:                                     ; preds = %7
  %28 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3600
  %29 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %28, i32 0, i32 1, !dbg !3603
  %30 = load i64, i64* %29, align 8, !dbg !3603
  %31 = and i64 %30, 24, !dbg !3604
  %32 = icmp ne i64 %31, 24, !dbg !3605
  br i1 %32, label %33, label %50, !dbg !3606

; <label>:33:                                     ; preds = %27
  %34 = load %struct.stat*, %struct.stat** %8, align 8, !dbg !3607
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 11, !dbg !3609
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0, !dbg !3610
  %37 = load i64, i64* %36, align 8, !dbg !3610
  %38 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3611
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 0, !dbg !3612
  store i64 %37, i64* %39, align 8, !dbg !3613
  %40 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3614
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 1, !dbg !3615
  store i64 0, i64* %41, align 8, !dbg !3616
  %42 = load %struct.stat*, %struct.stat** %8, align 8, !dbg !3617
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 12, !dbg !3618
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i32 0, i32 0, !dbg !3619
  %45 = load i64, i64* %44, align 8, !dbg !3619
  %46 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3620
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0, !dbg !3621
  store i64 %45, i64* %47, align 8, !dbg !3622
  %48 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3623
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 1, !dbg !3624
  store i64 0, i64* %49, align 8, !dbg !3625
  br label %50, !dbg !3626

; <label>:50:                                     ; preds = %33, %27
  %51 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3627
  %52 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %51, i32 0, i32 1, !dbg !3629
  %53 = load i64, i64* %52, align 8, !dbg !3629
  %54 = and i64 %53, 8, !dbg !3630
  %55 = icmp ne i64 %54, 0, !dbg !3630
  br i1 %55, label %56, label %98, !dbg !3631

; <label>:56:                                     ; preds = %50
  %57 = load i8, i8* %11, align 1, !dbg !3632
  %58 = icmp ne i8 %57, 0, !dbg !3632
  br i1 %58, label %77, label %59, !dbg !3635

; <label>:59:                                     ; preds = %56
  %60 = load i64, i64* %10, align 8, !dbg !3636
  %61 = and i64 %60, 1, !dbg !3638
  %62 = icmp ne i64 %61, 0, !dbg !3638
  br i1 %62, label %63, label %77, !dbg !3639

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata %struct.timespec* %17, metadata !3640, metadata !575), !dbg !3642
  %64 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3643
  %65 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %64, i32 0, i32 5, !dbg !3644
  %66 = load i64, i64* %65, align 8, !dbg !3644
  %67 = call i32 @HgfsConvertFromNtTimeNsec(%struct.timespec* %17, i64 %66), !dbg !3645
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0, !dbg !3646
  %69 = load i64, i64* %68, align 8, !dbg !3646
  %70 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3647
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i32 0, i32 0, !dbg !3648
  store i64 %69, i64* %71, align 8, !dbg !3649
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 1, !dbg !3650
  %73 = load i64, i64* %72, align 8, !dbg !3650
  %74 = sdiv i64 %73, 1000, !dbg !3651
  %75 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3652
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i32 0, i32 1, !dbg !3653
  store i64 %74, i64* %76, align 8, !dbg !3654
  br label %97, !dbg !3655

; <label>:77:                                     ; preds = %59, %56
  call void @llvm.dbg.declare(metadata %struct.timeval* %18, metadata !3656, metadata !575), !dbg !3658
  %78 = call i32 @gettimeofday(%struct.timeval* %18, %struct.timezone* null) #9, !dbg !3659
  %79 = icmp ne i32 %78, 0, !dbg !3661
  br i1 %79, label %80, label %88, !dbg !3662

; <label>:80:                                     ; preds = %77
  %81 = call i32* @__errno_location() #1, !dbg !3663
  %82 = load i32, i32* %81, align 4, !dbg !3665
  store i32 %82, i32* %16, align 4, !dbg !3666
  br label %83, !dbg !3667, !llvm.loop !3668

; <label>:83:                                     ; preds = %80
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.HgfsSetattrTimes, i32 0, i32 0)), !dbg !3669
  %84 = load i32, i32* %16, align 4, !dbg !3674
  %85 = call i8* @Err_Errno2String(i32 %84), !dbg !3675
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.HgfsSetattrTimes, i32 0, i32 0), i8* %85), !dbg !3677
  br label %86, !dbg !3679

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %16, align 4, !dbg !3680
  store i32 %87, i32* %15, align 4, !dbg !3681
  br label %149, !dbg !3682

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0, !dbg !3683
  %90 = load i64, i64* %89, align 8, !dbg !3683
  %91 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3684
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %91, i32 0, i32 0, !dbg !3685
  store i64 %90, i64* %92, align 8, !dbg !3686
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1, !dbg !3687
  %94 = load i64, i64* %93, align 8, !dbg !3687
  %95 = load %struct.timeval*, %struct.timeval** %12, align 8, !dbg !3688
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %95, i32 0, i32 1, !dbg !3689
  store i64 %94, i64* %96, align 8, !dbg !3690
  br label %97

; <label>:97:                                     ; preds = %88, %63
  br label %98, !dbg !3691

; <label>:98:                                     ; preds = %97, %50
  %99 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3692
  %100 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %99, i32 0, i32 1, !dbg !3694
  %101 = load i64, i64* %100, align 8, !dbg !3694
  %102 = and i64 %101, 16, !dbg !3695
  %103 = icmp ne i64 %102, 0, !dbg !3695
  br i1 %103, label %104, label %146, !dbg !3696

; <label>:104:                                    ; preds = %98
  %105 = load i8, i8* %11, align 1, !dbg !3697
  %106 = icmp ne i8 %105, 0, !dbg !3697
  br i1 %106, label %125, label %107, !dbg !3700

; <label>:107:                                    ; preds = %104
  %108 = load i64, i64* %10, align 8, !dbg !3701
  %109 = and i64 %108, 2, !dbg !3703
  %110 = icmp ne i64 %109, 0, !dbg !3703
  br i1 %110, label %111, label %125, !dbg !3704

; <label>:111:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.timespec* %19, metadata !3705, metadata !575), !dbg !3707
  %112 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %9, align 8, !dbg !3708
  %113 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %112, i32 0, i32 6, !dbg !3709
  %114 = load i64, i64* %113, align 8, !dbg !3709
  %115 = call i32 @HgfsConvertFromNtTimeNsec(%struct.timespec* %19, i64 %114), !dbg !3710
  %116 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0, !dbg !3711
  %117 = load i64, i64* %116, align 8, !dbg !3711
  %118 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3712
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %118, i32 0, i32 0, !dbg !3713
  store i64 %117, i64* %119, align 8, !dbg !3714
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1, !dbg !3715
  %121 = load i64, i64* %120, align 8, !dbg !3715
  %122 = sdiv i64 %121, 1000, !dbg !3716
  %123 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3717
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %123, i32 0, i32 1, !dbg !3718
  store i64 %122, i64* %124, align 8, !dbg !3719
  br label %145, !dbg !3720

; <label>:125:                                    ; preds = %107, %104
  call void @llvm.dbg.declare(metadata %struct.timeval* %20, metadata !3721, metadata !575), !dbg !3723
  %126 = call i32 @gettimeofday(%struct.timeval* %20, %struct.timezone* null) #9, !dbg !3724
  %127 = icmp ne i32 %126, 0, !dbg !3726
  br i1 %127, label %128, label %136, !dbg !3727

; <label>:128:                                    ; preds = %125
  %129 = call i32* @__errno_location() #1, !dbg !3728
  %130 = load i32, i32* %129, align 4, !dbg !3730
  store i32 %130, i32* %16, align 4, !dbg !3731
  br label %131, !dbg !3732, !llvm.loop !3733

; <label>:131:                                    ; preds = %128
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.HgfsSetattrTimes, i32 0, i32 0)), !dbg !3734
  %132 = load i32, i32* %16, align 4, !dbg !3739
  %133 = call i8* @Err_Errno2String(i32 %132), !dbg !3740
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.HgfsSetattrTimes, i32 0, i32 0), i8* %133), !dbg !3742
  br label %134, !dbg !3744

; <label>:134:                                    ; preds = %131
  %135 = load i32, i32* %16, align 4, !dbg !3745
  store i32 %135, i32* %15, align 4, !dbg !3746
  br label %149, !dbg !3747

; <label>:136:                                    ; preds = %125
  %137 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0, !dbg !3748
  %138 = load i64, i64* %137, align 8, !dbg !3748
  %139 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3749
  %140 = getelementptr inbounds %struct.timeval, %struct.timeval* %139, i32 0, i32 0, !dbg !3750
  store i64 %138, i64* %140, align 8, !dbg !3751
  %141 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1, !dbg !3752
  %142 = load i64, i64* %141, align 8, !dbg !3752
  %143 = load %struct.timeval*, %struct.timeval** %13, align 8, !dbg !3753
  %144 = getelementptr inbounds %struct.timeval, %struct.timeval* %143, i32 0, i32 1, !dbg !3754
  store i64 %142, i64* %144, align 8, !dbg !3755
  br label %145

; <label>:145:                                    ; preds = %136, %111
  br label %146, !dbg !3756

; <label>:146:                                    ; preds = %145, %98
  %147 = load i8*, i8** %14, align 8, !dbg !3757
  store i8 1, i8* %147, align 1, !dbg !3758
  br label %148, !dbg !3759

; <label>:148:                                    ; preds = %146, %7
  br label %149, !dbg !3760

; <label>:149:                                    ; preds = %148, %134, %86
  %150 = load i32, i32* %15, align 4, !dbg !3761
  ret i32 %150, !dbg !3762
}

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Id_IsSuperUser() #8 !dbg !3763 {
  %1 = call i32 @geteuid() #9, !dbg !3765
  %2 = icmp eq i32 0, %1, !dbg !3766
  %3 = zext i1 %2 to i32, !dbg !3766
  %4 = trunc i32 %3 to i8, !dbg !3767
  ret i8 %4, !dbg !3768
}

declare i32 @Id_BeginSuperUser() #4

declare void @Id_EndSuperUser(i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformSetattrFromName(i8*, %struct.HgfsFileAttrInfo*, i32, i64, i8 signext) #0 !dbg !3769 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.HgfsFileAttrInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca [2 x %struct.timeval], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3772, metadata !575), !dbg !3773
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %7, metadata !3774, metadata !575), !dbg !3775
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3776, metadata !575), !dbg !3777
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3778, metadata !575), !dbg !3779
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !3780, metadata !575), !dbg !3781
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3782, metadata !575), !dbg !3783
  store i32 0, i32* %11, align 4, !dbg !3783
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3784, metadata !575), !dbg !3785
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !3786, metadata !575), !dbg !3787
  call void @llvm.dbg.declare(metadata [2 x %struct.timeval]* %14, metadata !3788, metadata !575), !dbg !3789
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3790, metadata !575), !dbg !3791
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3792, metadata !575), !dbg !3793
  store i32 -1, i32* %16, align 4, !dbg !3793
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3794, metadata !575), !dbg !3795
  store i32 -1, i32* %17, align 4, !dbg !3795
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3796, metadata !575), !dbg !3797
  store i8 0, i8* %18, align 1, !dbg !3797
  call void @llvm.dbg.declare(metadata i8* %19, metadata !3798, metadata !575), !dbg !3799
  store i8 0, i8* %19, align 1, !dbg !3799
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3800, metadata !575), !dbg !3801
  store i8 0, i8* %20, align 1, !dbg !3801
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3802, metadata !575), !dbg !3803
  %22 = load i32, i32* %8, align 4, !dbg !3804
  %23 = call signext i8 @HgfsServerPolicy_IsShareOptionSet(i32 %22, i32 2), !dbg !3806
  %24 = icmp ne i8 %23, 0, !dbg !3806
  br i1 %24, label %33, label %25, !dbg !3807

; <label>:25:                                     ; preds = %5
  %26 = load i8*, i8** %6, align 8, !dbg !3808
  %27 = call signext i8 @File_IsSymLink(i8* %26), !dbg !3811
  %28 = icmp ne i8 %27, 0, !dbg !3811
  br i1 %28, label %29, label %32, !dbg !3812

; <label>:29:                                     ; preds = %25
  br label %30, !dbg !3813, !llvm.loop !3815

; <label>:30:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3816
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3821
  br label %31, !dbg !3823

; <label>:31:                                     ; preds = %30
  store i32 22, i32* %11, align 4, !dbg !3824
  br label %174, !dbg !3825

; <label>:32:                                     ; preds = %25
  br label %33, !dbg !3826

; <label>:33:                                     ; preds = %32, %5
  br label %34, !dbg !3827, !llvm.loop !3828

; <label>:34:                                     ; preds = %33
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3829
  %35 = load i8*, i8** %6, align 8, !dbg !3834
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %35), !dbg !3835
  br label %36, !dbg !3837

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %6, align 8, !dbg !3838
  %38 = call i32 @Posix_Lstat(i8* %37, %struct.stat* %13), !dbg !3840
  %39 = icmp eq i32 %38, -1, !dbg !3841
  br i1 %39, label %40, label %49, !dbg !3842

; <label>:40:                                     ; preds = %36
  %41 = call i32* @__errno_location() #1, !dbg !3843
  %42 = load i32, i32* %41, align 4, !dbg !3845
  store i32 %42, i32* %21, align 4, !dbg !3846
  br label %43, !dbg !3847, !llvm.loop !3848

; <label>:43:                                     ; preds = %40
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3849
  %44 = load i8*, i8** %6, align 8, !dbg !3854
  %45 = load i32, i32* %21, align 4, !dbg !3855
  %46 = call i8* @Err_Errno2String(i32 %45), !dbg !3856
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %44, i8* %46), !dbg !3858
  br label %47, !dbg !3860

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %21, align 4, !dbg !3861
  store i32 %48, i32* %11, align 4, !dbg !3862
  br label %174, !dbg !3863

; <label>:49:                                     ; preds = %36
  %50 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3864
  %51 = call signext i8 @HgfsSetattrOwnership(%struct.HgfsFileAttrInfo* %50, i32* %16, i32* %17), !dbg !3865
  store i8 %51, i8* %20, align 1, !dbg !3866
  %52 = load i8, i8* %20, align 1, !dbg !3867
  %53 = icmp ne i8 %52, 0, !dbg !3867
  br i1 %53, label %54, label %70, !dbg !3869

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %6, align 8, !dbg !3870
  %56 = load i32, i32* %16, align 4, !dbg !3873
  %57 = load i32, i32* %17, align 4, !dbg !3874
  %58 = call i32 @Posix_Lchown(i8* %55, i32 %56, i32 %57), !dbg !3875
  %59 = icmp slt i32 %58, 0, !dbg !3876
  br i1 %59, label %60, label %69, !dbg !3877

; <label>:60:                                     ; preds = %54
  %61 = call i32* @__errno_location() #1, !dbg !3878
  %62 = load i32, i32* %61, align 4, !dbg !3880
  store i32 %62, i32* %21, align 4, !dbg !3881
  br label %63, !dbg !3882, !llvm.loop !3883

; <label>:63:                                     ; preds = %60
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3884
  %64 = load i8*, i8** %6, align 8, !dbg !3889
  %65 = load i32, i32* %21, align 4, !dbg !3890
  %66 = call i8* @Err_Errno2String(i32 %65), !dbg !3891
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %64, i8* %66), !dbg !3893
  br label %67, !dbg !3895

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %21, align 4, !dbg !3896
  store i32 %68, i32* %11, align 4, !dbg !3897
  br label %69, !dbg !3898

; <label>:69:                                     ; preds = %67, %54
  br label %70, !dbg !3899

; <label>:70:                                     ; preds = %69, %49
  %71 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3900
  %72 = call signext i8 @HgfsSetattrMode(%struct.stat* %13, %struct.HgfsFileAttrInfo* %71, i32* %15), !dbg !3901
  store i8 %72, i8* %18, align 1, !dbg !3902
  %73 = load i8, i8* %18, align 1, !dbg !3903
  %74 = icmp ne i8 %73, 0, !dbg !3903
  br i1 %74, label %75, label %93, !dbg !3905

; <label>:75:                                     ; preds = %70
  br label %76, !dbg !3906, !llvm.loop !3908

; <label>:76:                                     ; preds = %75
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3909
  %77 = load i32, i32* %15, align 4, !dbg !3914
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i32 %77), !dbg !3915
  br label %78, !dbg !3917

; <label>:78:                                     ; preds = %76
  %79 = load i8*, i8** %6, align 8, !dbg !3918
  %80 = load i32, i32* %15, align 4, !dbg !3920
  %81 = call i32 @Posix_Chmod(i8* %79, i32 %80), !dbg !3921
  %82 = icmp slt i32 %81, 0, !dbg !3922
  br i1 %82, label %83, label %92, !dbg !3923

; <label>:83:                                     ; preds = %78
  %84 = call i32* @__errno_location() #1, !dbg !3924
  %85 = load i32, i32* %84, align 4, !dbg !3926
  store i32 %85, i32* %21, align 4, !dbg !3927
  br label %86, !dbg !3928, !llvm.loop !3929

; <label>:86:                                     ; preds = %83
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3930
  %87 = load i8*, i8** %6, align 8, !dbg !3935
  %88 = load i32, i32* %21, align 4, !dbg !3936
  %89 = call i8* @Err_Errno2String(i32 %88), !dbg !3937
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %87, i8* %89), !dbg !3939
  br label %90, !dbg !3941

; <label>:90:                                     ; preds = %86
  %91 = load i32, i32* %21, align 4, !dbg !3942
  store i32 %91, i32* %11, align 4, !dbg !3943
  br label %92, !dbg !3944

; <label>:92:                                     ; preds = %90, %78
  br label %93, !dbg !3945

; <label>:93:                                     ; preds = %92, %70
  %94 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3946
  %95 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %94, i32 0, i32 1, !dbg !3948
  %96 = load i64, i64* %95, align 8, !dbg !3948
  %97 = and i64 %96, 2, !dbg !3949
  %98 = icmp ne i64 %97, 0, !dbg !3949
  br i1 %98, label %99, label %122, !dbg !3950

; <label>:99:                                     ; preds = %93
  %100 = load i8*, i8** %6, align 8, !dbg !3951
  %101 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3954
  %102 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %101, i32 0, i32 3, !dbg !3955
  %103 = load i64, i64* %102, align 8, !dbg !3955
  %104 = call i32 @Posix_Truncate(i8* %100, i64 %103), !dbg !3956
  %105 = icmp slt i32 %104, 0, !dbg !3957
  br i1 %105, label %106, label %115, !dbg !3958

; <label>:106:                                    ; preds = %99
  %107 = call i32* @__errno_location() #1, !dbg !3959
  %108 = load i32, i32* %107, align 4, !dbg !3961
  store i32 %108, i32* %21, align 4, !dbg !3962
  br label %109, !dbg !3963, !llvm.loop !3964

; <label>:109:                                    ; preds = %106
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3965
  %110 = load i8*, i8** %6, align 8, !dbg !3970
  %111 = load i32, i32* %21, align 4, !dbg !3971
  %112 = call i8* @Err_Errno2String(i32 %111), !dbg !3972
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %110, i8* %112), !dbg !3974
  br label %113, !dbg !3976

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %21, align 4, !dbg !3977
  store i32 %114, i32* %11, align 4, !dbg !3978
  br label %121, !dbg !3979

; <label>:115:                                    ; preds = %99
  br label %116, !dbg !3980, !llvm.loop !3982

; <label>:116:                                    ; preds = %115
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !3983
  %117 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3988
  %118 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %117, i32 0, i32 3, !dbg !3989
  %119 = load i64, i64* %118, align 8, !dbg !3989
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i64 %119), !dbg !3990
  br label %120, !dbg !3992

; <label>:120:                                    ; preds = %116
  br label %121

; <label>:121:                                    ; preds = %120, %113
  br label %122, !dbg !3993

; <label>:122:                                    ; preds = %121, %93
  %123 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !3994
  %124 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %123, i32 0, i32 1, !dbg !3996
  %125 = load i64, i64* %124, align 8, !dbg !3996
  %126 = and i64 %125, 1024, !dbg !3997
  %127 = icmp ne i64 %126, 0, !dbg !3997
  br i1 %127, label %128, label %139, !dbg !3998

; <label>:128:                                    ; preds = %122
  %129 = load i8*, i8** %6, align 8, !dbg !3999
  %130 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !4001
  %131 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %130, i32 0, i32 12, !dbg !4002
  %132 = load i64, i64* %131, align 8, !dbg !4002
  %133 = and i64 %132, 1, !dbg !4003
  %134 = icmp ne i64 %133, 0, !dbg !4004
  %135 = zext i1 %134 to i32, !dbg !4004
  %136 = trunc i32 %135 to i8, !dbg !4005
  %137 = load i32, i32* %15, align 4, !dbg !4006
  %138 = call i32 @HgfsSetHiddenXAttr(i8* %129, i8 signext %136, i32 %137), !dbg !4007
  store i32 %138, i32* %11, align 4, !dbg !4008
  br label %139, !dbg !4009

; <label>:139:                                    ; preds = %128, %122
  %140 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %7, align 8, !dbg !4010
  %141 = load i64, i64* %9, align 8, !dbg !4011
  %142 = load i8, i8* %10, align 1, !dbg !4012
  %143 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %14, i64 0, i64 0, !dbg !4013
  %144 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %14, i64 0, i64 1, !dbg !4014
  %145 = call i32 @HgfsSetattrTimes(%struct.stat* %13, %struct.HgfsFileAttrInfo* %140, i64 %141, i8 signext %142, %struct.timeval* %143, %struct.timeval* %144, i8* %19), !dbg !4015
  store i32 %145, i32* %12, align 4, !dbg !4016
  %146 = load i32, i32* %12, align 4, !dbg !4017
  %147 = icmp eq i32 %146, 0, !dbg !4019
  br i1 %147, label %148, label %167, !dbg !4020

; <label>:148:                                    ; preds = %139
  %149 = load i8, i8* %19, align 1, !dbg !4021
  %150 = sext i8 %149 to i32, !dbg !4021
  %151 = icmp ne i32 %150, 0, !dbg !4021
  br i1 %151, label %152, label %167, !dbg !4023

; <label>:152:                                    ; preds = %148
  %153 = load i8*, i8** %6, align 8, !dbg !4024
  %154 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %14, i32 0, i32 0, !dbg !4027
  %155 = call i32 @Posix_Utimes(i8* %153, %struct.timeval* %154), !dbg !4028
  %156 = icmp slt i32 %155, 0, !dbg !4029
  br i1 %156, label %157, label %166, !dbg !4030

; <label>:157:                                    ; preds = %152
  %158 = call i32* @__errno_location() #1, !dbg !4031
  %159 = load i32, i32* %158, align 4, !dbg !4033
  store i32 %159, i32* %21, align 4, !dbg !4034
  br label %160, !dbg !4035, !llvm.loop !4036

; <label>:160:                                    ; preds = %157
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0)), !dbg !4037
  %161 = load i8*, i8** %6, align 8, !dbg !4042
  %162 = load i32, i32* %21, align 4, !dbg !4043
  %163 = call i8* @Err_Errno2String(i32 %162), !dbg !4044
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformSetattrFromName, i32 0, i32 0), i8* %161, i8* %163), !dbg !4046
  br label %164, !dbg !4048

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %21, align 4, !dbg !4049
  store i32 %165, i32* %11, align 4, !dbg !4050
  br label %166, !dbg !4051

; <label>:166:                                    ; preds = %164, %152
  br label %173, !dbg !4052

; <label>:167:                                    ; preds = %148, %139
  %168 = load i32, i32* %12, align 4, !dbg !4053
  %169 = icmp ne i32 %168, 0, !dbg !4056
  br i1 %169, label %170, label %172, !dbg !4053

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %12, align 4, !dbg !4057
  store i32 %171, i32* %11, align 4, !dbg !4059
  br label %172, !dbg !4060

; <label>:172:                                    ; preds = %170, %167
  br label %173

; <label>:173:                                    ; preds = %172, %166
  br label %174, !dbg !4061

; <label>:174:                                    ; preds = %173, %47, %31
  %175 = load i32, i32* %11, align 4, !dbg !4063
  ret i32 %175, !dbg !4064
}

declare signext i8 @File_IsSymLink(i8*) #4

declare i32 @Posix_Lstat(i8*, %struct.stat*) #4

declare i32 @Posix_Lchown(i8*, i32, i32) #4

declare i32 @Posix_Chmod(i8*, i32) #4

declare i32 @Posix_Truncate(i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformWriteWin32Stream(i32, i8*, i64, i8 signext, i32*, %struct.HgfsSessionInfo*) #0 !dbg !4065 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca %struct.HgfsSessionInfo*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4068, metadata !575), !dbg !4069
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4070, metadata !575), !dbg !4071
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4072, metadata !575), !dbg !4073
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !4074, metadata !575), !dbg !4075
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !4076, metadata !575), !dbg !4077
  store %struct.HgfsSessionInfo* %5, %struct.HgfsSessionInfo** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %12, metadata !4078, metadata !575), !dbg !4079
  ret i32 71, !dbg !4080
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformVDirStatsFs(%struct.HgfsSessionInfo*, i32, i32, i64*, i64*) #0 !dbg !4081 {
  %6 = alloca %struct.HgfsSessionInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.DirectoryEntry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.HgfsSessionInfo* %0, %struct.HgfsSessionInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %6, metadata !4085, metadata !575), !dbg !4086
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4087, metadata !575), !dbg !4088
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4089, metadata !575), !dbg !4090
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !4091, metadata !575), !dbg !4092
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4093, metadata !575), !dbg !4094
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4095, metadata !575), !dbg !4096
  store i32 0, i32* %11, align 4, !dbg !4096
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4097, metadata !575), !dbg !4098
  store i32 0, i32* %12, align 4, !dbg !4098
  call void @llvm.dbg.declare(metadata i8* %13, metadata !4099, metadata !575), !dbg !4100
  store i8 1, i8* %13, align 1, !dbg !4100
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4101, metadata !575), !dbg !4102
  store i64 0, i64* %14, align 8, !dbg !4102
  call void @llvm.dbg.declare(metadata i64* %15, metadata !4103, metadata !575), !dbg !4104
  store i64 0, i64* %15, align 8, !dbg !4104
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %16, metadata !4105, metadata !575), !dbg !4106
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4107, metadata !575), !dbg !4108
  %23 = load i32, i32* %7, align 4, !dbg !4109
  switch i32 %23, label %152 [
    i32 2, label %24
  ], !dbg !4110

; <label>:24:                                     ; preds = %5
  br label %25, !dbg !4111, !llvm.loop !4113

; <label>:25:                                     ; preds = %24
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4114
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4119
  br label %26, !dbg !4121

; <label>:26:                                     ; preds = %25
  %27 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !4122
  %28 = call i32 @HgfsServerSearchVirtualDir(i8 (i8*, i8**, i64*, i8*)* @HgfsServerResEnumGet, i8* ()* @HgfsServerResEnumInit, i8 (i8*)* @HgfsServerResEnumExit, i32 1, %struct.HgfsSessionInfo* %27, i32* %17), !dbg !4123
  store i32 %28, i32* %11, align 4, !dbg !4124
  %29 = load i32, i32* %11, align 4, !dbg !4125
  %30 = icmp ne i32 %29, 0, !dbg !4127
  br i1 %30, label %31, label %32, !dbg !4128

; <label>:31:                                     ; preds = %26
  br label %157, !dbg !4129

; <label>:32:                                     ; preds = %26
  br label %33, !dbg !4131

; <label>:33:                                     ; preds = %132, %100, %86, %63, %32
  %34 = load i32, i32* %17, align 4, !dbg !4132
  %35 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !4134
  %36 = call i32 @HgfsServerGetDirEntry(i32 %34, %struct.HgfsSessionInfo* %35, i32 -1, i8 signext 1, %struct.DirectoryEntry** %16), !dbg !4135
  store i32 %36, i32* %11, align 4, !dbg !4136
  %37 = icmp eq i32 %36, 0, !dbg !4137
  br i1 %37, label %38, label %133, !dbg !4138

; <label>:38:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i8** %18, metadata !4139, metadata !575), !dbg !4141
  call void @llvm.dbg.declare(metadata i64* %19, metadata !4142, metadata !575), !dbg !4143
  call void @llvm.dbg.declare(metadata i64* %20, metadata !4144, metadata !575), !dbg !4145
  store i64 0, i64* %20, align 8, !dbg !4145
  call void @llvm.dbg.declare(metadata i64* %21, metadata !4146, metadata !575), !dbg !4147
  store i64 0, i64* %21, align 8, !dbg !4147
  call void @llvm.dbg.declare(metadata i64* %22, metadata !4148, metadata !575), !dbg !4149
  %39 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4150
  %40 = icmp eq %struct.DirectoryEntry* null, %39, !dbg !4152
  br i1 %40, label %41, label %42, !dbg !4153

; <label>:41:                                     ; preds = %38
  br label %133, !dbg !4154

; <label>:42:                                     ; preds = %38
  %43 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4156
  %44 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %43, i32 0, i32 4, !dbg !4157
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %44, i32 0, i32 0, !dbg !4156
  %46 = call i64 @strlen(i8* %45) #11, !dbg !4158
  store i64 %46, i64* %22, align 8, !dbg !4159
  %47 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4160
  %48 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %47, i32 0, i32 4, !dbg !4162
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %48, i32 0, i32 0, !dbg !4160
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0)) #11, !dbg !4163
  %51 = icmp ne i32 %50, 0, !dbg !4163
  br i1 %51, label %52, label %58, !dbg !4164

; <label>:52:                                     ; preds = %42
  %53 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4165
  %54 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %53, i32 0, i32 4, !dbg !4167
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %54, i32 0, i32 0, !dbg !4165
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #11, !dbg !4168
  %57 = icmp ne i32 %56, 0, !dbg !4168
  br i1 %57, label %66, label %58, !dbg !4169

; <label>:58:                                     ; preds = %52, %42
  br label %59, !dbg !4170, !llvm.loop !4172

; <label>:59:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4173
  %60 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4178
  %61 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %60, i32 0, i32 4, !dbg !4179
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %61, i32 0, i32 0, !dbg !4178
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0), i8* %62), !dbg !4180
  br label %63, !dbg !4182

; <label>:63:                                     ; preds = %59
  %64 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4183
  %65 = bitcast %struct.DirectoryEntry* %64 to i8*, !dbg !4183
  call void @free(i8* %65) #9, !dbg !4184
  br label %33, !dbg !4185, !llvm.loop !4186

; <label>:66:                                     ; preds = %52
  %67 = load i64, i64* %15, align 8, !dbg !4187
  %68 = add i64 %67, 1, !dbg !4187
  store i64 %68, i64* %15, align 8, !dbg !4187
  %69 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4188
  %70 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %69, i32 0, i32 4, !dbg !4189
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %70, i32 0, i32 0, !dbg !4188
  %72 = load i64, i64* %22, align 8, !dbg !4190
  %73 = call i32 @HgfsServerPolicy_GetSharePath(i8* %71, i64 %72, i32 0, i64* %19, i8** %18), !dbg !4191
  store i32 %73, i32* %7, align 4, !dbg !4192
  %74 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %16, align 8, !dbg !4193
  %75 = bitcast %struct.DirectoryEntry* %74 to i8*, !dbg !4193
  call void @free(i8* %75) #9, !dbg !4194
  %76 = load i32, i32* %7, align 4, !dbg !4195
  %77 = icmp ne i32 %76, 0, !dbg !4197
  br i1 %77, label %78, label %89, !dbg !4198

; <label>:78:                                     ; preds = %66
  br label %79, !dbg !4199, !llvm.loop !4201

; <label>:79:                                     ; preds = %78
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4202
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4207
  br label %80, !dbg !4209

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %12, align 4, !dbg !4210
  %82 = icmp eq i32 0, %81, !dbg !4212
  br i1 %82, label %83, label %86, !dbg !4213

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %7, align 4, !dbg !4214
  %85 = call i32 @HgfsPlatformConvertFromNameStatus(i32 %84), !dbg !4216
  store i32 %85, i32* %12, align 4, !dbg !4217
  br label %86, !dbg !4218

; <label>:86:                                     ; preds = %83, %80
  %87 = load i64, i64* %14, align 8, !dbg !4219
  %88 = add i64 %87, 1, !dbg !4219
  store i64 %88, i64* %14, align 8, !dbg !4219
  br label %33, !dbg !4220, !llvm.loop !4186

; <label>:89:                                     ; preds = %66
  %90 = load i8*, i8** %18, align 8, !dbg !4221
  %91 = load i64, i64* %19, align 8, !dbg !4223
  %92 = call signext i8 @HgfsServerStatFs(i8* %90, i64 %91, i64* %20, i64* %21), !dbg !4224
  %93 = icmp ne i8 %92, 0, !dbg !4224
  br i1 %93, label %103, label %94, !dbg !4225

; <label>:94:                                     ; preds = %89
  br label %95, !dbg !4226, !llvm.loop !4228

; <label>:95:                                     ; preds = %94
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4229
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4234
  br label %96, !dbg !4236

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %12, align 4, !dbg !4237
  %98 = icmp eq i32 0, %97, !dbg !4239
  br i1 %98, label %99, label %100, !dbg !4240

; <label>:99:                                     ; preds = %96
  store i32 5, i32* %12, align 4, !dbg !4241
  br label %100, !dbg !4243

; <label>:100:                                    ; preds = %99, %96
  %101 = load i64, i64* %14, align 8, !dbg !4244
  %102 = add i64 %101, 1, !dbg !4244
  store i64 %102, i64* %14, align 8, !dbg !4244
  br label %33, !dbg !4245, !llvm.loop !4186

; <label>:103:                                    ; preds = %89
  %104 = load i32, i32* %8, align 4, !dbg !4246
  switch i32 %104, label %131 [
    i32 0, label %105
    i32 1, label %120
  ], !dbg !4247

; <label>:105:                                    ; preds = %103
  %106 = load i64*, i64** %9, align 8, !dbg !4248
  %107 = load i64, i64* %106, align 8, !dbg !4251
  %108 = load i64, i64* %20, align 8, !dbg !4252
  %109 = icmp ugt i64 %107, %108, !dbg !4253
  br i1 %109, label %114, label %110, !dbg !4254

; <label>:110:                                    ; preds = %105
  %111 = load i8, i8* %13, align 1, !dbg !4255
  %112 = sext i8 %111 to i32, !dbg !4255
  %113 = icmp ne i32 %112, 0, !dbg !4255
  br i1 %113, label %114, label %119, !dbg !4257

; <label>:114:                                    ; preds = %110, %105
  store i8 0, i8* %13, align 1, !dbg !4258
  %115 = load i64, i64* %20, align 8, !dbg !4260
  %116 = load i64*, i64** %9, align 8, !dbg !4261
  store i64 %115, i64* %116, align 8, !dbg !4262
  %117 = load i64, i64* %21, align 8, !dbg !4263
  %118 = load i64*, i64** %10, align 8, !dbg !4264
  store i64 %117, i64* %118, align 8, !dbg !4265
  br label %119, !dbg !4266

; <label>:119:                                    ; preds = %114, %110
  br label %132, !dbg !4267

; <label>:120:                                    ; preds = %103
  %121 = load i64*, i64** %9, align 8, !dbg !4268
  %122 = load i64, i64* %121, align 8, !dbg !4270
  %123 = load i64, i64* %20, align 8, !dbg !4271
  %124 = icmp ult i64 %122, %123, !dbg !4272
  br i1 %124, label %125, label %130, !dbg !4273

; <label>:125:                                    ; preds = %120
  %126 = load i64, i64* %20, align 8, !dbg !4274
  %127 = load i64*, i64** %9, align 8, !dbg !4276
  store i64 %126, i64* %127, align 8, !dbg !4277
  %128 = load i64, i64* %21, align 8, !dbg !4278
  %129 = load i64*, i64** %10, align 8, !dbg !4279
  store i64 %128, i64* %129, align 8, !dbg !4280
  br label %130, !dbg !4281

; <label>:130:                                    ; preds = %125, %120
  br label %132, !dbg !4282

; <label>:131:                                    ; preds = %103
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 3333) #10, !dbg !4283
  unreachable, !dbg !4283

; <label>:132:                                    ; preds = %130, %119
  br label %33, !dbg !4284, !llvm.loop !4186

; <label>:133:                                    ; preds = %41, %33
  %134 = load i32, i32* %17, align 4, !dbg !4286
  %135 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %6, align 8, !dbg !4288
  %136 = call signext i8 @HgfsRemoveSearch(i32 %134, %struct.HgfsSessionInfo* %135), !dbg !4289
  %137 = icmp ne i8 %136, 0, !dbg !4289
  br i1 %137, label %141, label %138, !dbg !4290

; <label>:138:                                    ; preds = %133
  br label %139, !dbg !4291, !llvm.loop !4293

; <label>:139:                                    ; preds = %138
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4294
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4299
  br label %140, !dbg !4301

; <label>:140:                                    ; preds = %139
  br label %141, !dbg !4302

; <label>:141:                                    ; preds = %140, %133
  %142 = load i64, i64* %15, align 8, !dbg !4303
  %143 = load i64, i64* %14, align 8, !dbg !4305
  %144 = icmp eq i64 %142, %143, !dbg !4306
  br i1 %144, label %145, label %151, !dbg !4307

; <label>:145:                                    ; preds = %141
  %146 = load i32, i32* %12, align 4, !dbg !4308
  %147 = icmp ne i32 %146, 0, !dbg !4311
  br i1 %147, label %148, label %150, !dbg !4312

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %12, align 4, !dbg !4313
  store i32 %149, i32* %11, align 4, !dbg !4315
  br label %150, !dbg !4316

; <label>:150:                                    ; preds = %148, %145
  br label %151, !dbg !4317

; <label>:151:                                    ; preds = %150, %141
  br label %157, !dbg !4318

; <label>:152:                                    ; preds = %5
  br label %153, !dbg !4319, !llvm.loop !4320

; <label>:153:                                    ; preds = %152
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4321
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformVDirStatsFs, i32 0, i32 0)), !dbg !4326
  br label %154, !dbg !4328

; <label>:154:                                    ; preds = %153
  %155 = load i32, i32* %7, align 4, !dbg !4329
  %156 = call i32 @HgfsPlatformConvertFromNameStatus(i32 %155), !dbg !4330
  store i32 %156, i32* %11, align 4, !dbg !4331
  br label %157, !dbg !4332

; <label>:157:                                    ; preds = %154, %151, %31
  %158 = load i32, i32* %11, align 4, !dbg !4333
  ret i32 %158, !dbg !4334
}

declare i32 @HgfsServerSearchVirtualDir(i8 (i8*, i8**, i64*, i8*)*, i8* ()*, i8 (i8*)*, i32, %struct.HgfsSessionInfo*, i32*) #4

declare signext i8 @HgfsServerResEnumGet(i8*, i8**, i64*, i8*) #4

declare i8* @HgfsServerResEnumInit() #4

declare signext i8 @HgfsServerResEnumExit(i8*) #4

declare i32 @HgfsServerGetDirEntry(i32, %struct.HgfsSessionInfo*, i32, i8 signext, %struct.DirectoryEntry**) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare signext i8 @HgfsServerStatFs(i8*, i64, i64*, i64*) #4

declare signext i8 @HgfsRemoveSearch(i32, %struct.HgfsSessionInfo*) #4

; Function Attrs: nounwind uwtable
define signext i8 @HgfsConvertToUtf8FormC(i8*, i64) #0 !dbg !4335 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4338, metadata !575), !dbg !4339
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4340, metadata !575), !dbg !4341
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4342, metadata !575), !dbg !4343
  store i64 0, i64* %5, align 8, !dbg !4344
  br label %6, !dbg !4346

; <label>:6:                                      ; preds = %19, %2
  %7 = load i64, i64* %5, align 8, !dbg !4347
  %8 = load i64, i64* %4, align 8, !dbg !4350
  %9 = icmp ult i64 %7, %8, !dbg !4351
  br i1 %9, label %10, label %22, !dbg !4352

; <label>:10:                                     ; preds = %6
  %11 = load i64, i64* %5, align 8, !dbg !4353
  %12 = load i8*, i8** %3, align 8, !dbg !4356
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !4356
  %14 = load i8, i8* %13, align 1, !dbg !4356
  %15 = sext i8 %14 to i32, !dbg !4356
  %16 = icmp eq i32 0, %15, !dbg !4357
  br i1 %16, label %17, label %18, !dbg !4358

; <label>:17:                                     ; preds = %10
  br label %22, !dbg !4359

; <label>:18:                                     ; preds = %10
  br label %19, !dbg !4361

; <label>:19:                                     ; preds = %18
  %20 = load i64, i64* %5, align 8, !dbg !4362
  %21 = add i64 %20, 1, !dbg !4362
  store i64 %21, i64* %5, align 8, !dbg !4362
  br label %6, !dbg !4364, !llvm.loop !4365

; <label>:22:                                     ; preds = %17, %6
  %23 = load i8*, i8** %3, align 8, !dbg !4367
  %24 = load i64, i64* %5, align 8, !dbg !4368
  %25 = call signext i8 @Unicode_IsBufferValid(i8* %23, i64 %24, i32 0), !dbg !4369
  ret i8 %25, !dbg !4370
}

declare signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformGetDirEntry(%struct.HgfsSearch*, %struct.HgfsSessionInfo*, i32, i8 signext, %struct.DirectoryEntry**) #0 !dbg !4371 {
  %6 = alloca %struct.HgfsSearch*, align 8
  %7 = alloca %struct.HgfsSessionInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.DirectoryEntry**, align 8
  %11 = alloca %struct.DirectoryEntry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.DirectoryEntry*, align 8
  %14 = alloca i64, align 8
  store %struct.HgfsSearch* %0, %struct.HgfsSearch** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSearch** %6, metadata !4374, metadata !575), !dbg !4375
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %7, metadata !4376, metadata !575), !dbg !4377
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4378, metadata !575), !dbg !4379
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4380, metadata !575), !dbg !4381
  store %struct.DirectoryEntry** %4, %struct.DirectoryEntry*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry*** %10, metadata !4382, metadata !575), !dbg !4383
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %11, metadata !4384, metadata !575), !dbg !4385
  store %struct.DirectoryEntry* null, %struct.DirectoryEntry** %11, align 8, !dbg !4385
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4386, metadata !575), !dbg !4387
  store i32 0, i32* %12, align 4, !dbg !4387
  %15 = load i32, i32* %8, align 4, !dbg !4388
  %16 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4390
  %17 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %16, i32 0, i32 8, !dbg !4391
  %18 = load i32, i32* %17, align 8, !dbg !4391
  %19 = icmp uge i32 %15, %18, !dbg !4392
  br i1 %19, label %20, label %21, !dbg !4393

; <label>:20:                                     ; preds = %5
  br label %106, !dbg !4394

; <label>:21:                                     ; preds = %5
  %22 = load i8, i8* %9, align 1, !dbg !4396
  %23 = icmp ne i8 %22, 0, !dbg !4396
  br i1 %23, label %24, label %67, !dbg !4398

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %8, align 4, !dbg !4399
  %26 = zext i32 %25 to i64, !dbg !4401
  %27 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4401
  %28 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %27, i32 0, i32 7, !dbg !4402
  %29 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %28, align 8, !dbg !4402
  %30 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %29, i64 %26, !dbg !4401
  %31 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %30, align 8, !dbg !4401
  store %struct.DirectoryEntry* %31, %struct.DirectoryEntry** %11, align 8, !dbg !4403
  %32 = load i32, i32* %8, align 4, !dbg !4404
  %33 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4406
  %34 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %33, i32 0, i32 8, !dbg !4407
  %35 = load i32, i32* %34, align 8, !dbg !4407
  %36 = sub i32 %35, 1, !dbg !4408
  %37 = icmp ult i32 %32, %36, !dbg !4409
  br i1 %37, label %38, label %62, !dbg !4410

; <label>:38:                                     ; preds = %24
  %39 = load i32, i32* %8, align 4, !dbg !4411
  %40 = zext i32 %39 to i64, !dbg !4413
  %41 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4413
  %42 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %41, i32 0, i32 7, !dbg !4414
  %43 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %42, align 8, !dbg !4414
  %44 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %43, i64 %40, !dbg !4413
  %45 = bitcast %struct.DirectoryEntry** %44 to i8*, !dbg !4415
  %46 = load i32, i32* %8, align 4, !dbg !4416
  %47 = add i32 %46, 1, !dbg !4417
  %48 = zext i32 %47 to i64, !dbg !4418
  %49 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4418
  %50 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %49, i32 0, i32 7, !dbg !4419
  %51 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %50, align 8, !dbg !4419
  %52 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %51, i64 %48, !dbg !4418
  %53 = bitcast %struct.DirectoryEntry** %52 to i8*, !dbg !4415
  %54 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4420
  %55 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %54, i32 0, i32 8, !dbg !4421
  %56 = load i32, i32* %55, align 8, !dbg !4421
  %57 = load i32, i32* %8, align 4, !dbg !4422
  %58 = add i32 %57, 1, !dbg !4423
  %59 = sub i32 %56, %58, !dbg !4424
  %60 = zext i32 %59 to i64, !dbg !4425
  %61 = mul i64 %60, 8, !dbg !4426
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %45, i8* %53, i64 %61, i32 8, i1 false), !dbg !4415
  br label %62, !dbg !4427

; <label>:62:                                     ; preds = %38, %24
  %63 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4428
  %64 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %63, i32 0, i32 8, !dbg !4429
  %65 = load i32, i32* %64, align 8, !dbg !4430
  %66 = add i32 %65, -1, !dbg !4430
  store i32 %66, i32* %64, align 8, !dbg !4430
  br label %105, !dbg !4431

; <label>:67:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %13, metadata !4432, metadata !575), !dbg !4434
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4435, metadata !575), !dbg !4436
  %68 = load i32, i32* %8, align 4, !dbg !4437
  %69 = zext i32 %68 to i64, !dbg !4438
  %70 = load %struct.HgfsSearch*, %struct.HgfsSearch** %6, align 8, !dbg !4438
  %71 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %70, i32 0, i32 7, !dbg !4439
  %72 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %71, align 8, !dbg !4439
  %73 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %72, i64 %69, !dbg !4438
  %74 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %73, align 8, !dbg !4438
  store %struct.DirectoryEntry* %74, %struct.DirectoryEntry** %13, align 8, !dbg !4440
  %75 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %13, align 8, !dbg !4441
  %76 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %75, i32 0, i32 4, !dbg !4442
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %76, i32 0, i32 0, !dbg !4441
  %78 = call i64 @strlen(i8* %77) #11, !dbg !4443
  store i64 %78, i64* %14, align 8, !dbg !4444
  %79 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %13, align 8, !dbg !4445
  %80 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %79, i32 0, i32 2, !dbg !4446
  %81 = load i16, i16* %80, align 8, !dbg !4446
  %82 = zext i16 %81 to i64, !dbg !4445
  %83 = call noalias i8* @malloc(i64 %82) #9, !dbg !4447
  %84 = bitcast i8* %83 to %struct.DirectoryEntry*, !dbg !4447
  store %struct.DirectoryEntry* %84, %struct.DirectoryEntry** %11, align 8, !dbg !4448
  %85 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %11, align 8, !dbg !4449
  %86 = icmp eq %struct.DirectoryEntry* %85, null, !dbg !4451
  br i1 %86, label %87, label %88, !dbg !4452

; <label>:87:                                     ; preds = %67
  store i32 12, i32* %12, align 4, !dbg !4453
  br label %106, !dbg !4455

; <label>:88:                                     ; preds = %67
  %89 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %13, align 8, !dbg !4456
  %90 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %89, i32 0, i32 2, !dbg !4457
  %91 = load i16, i16* %90, align 8, !dbg !4457
  %92 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %11, align 8, !dbg !4458
  %93 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %92, i32 0, i32 2, !dbg !4459
  store i16 %91, i16* %93, align 8, !dbg !4460
  %94 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %11, align 8, !dbg !4461
  %95 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %94, i32 0, i32 4, !dbg !4462
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %95, i32 0, i32 0, !dbg !4463
  %97 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %13, align 8, !dbg !4464
  %98 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %97, i32 0, i32 4, !dbg !4465
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %98, i32 0, i32 0, !dbg !4463
  %100 = load i64, i64* %14, align 8, !dbg !4466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %99, i64 %100, i32 1, i1 false), !dbg !4463
  %101 = load i64, i64* %14, align 8, !dbg !4467
  %102 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %11, align 8, !dbg !4468
  %103 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %102, i32 0, i32 4, !dbg !4469
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %103, i64 0, i64 %101, !dbg !4468
  store i8 0, i8* %104, align 1, !dbg !4470
  br label %105

; <label>:105:                                    ; preds = %88, %62
  br label %106, !dbg !4471

; <label>:106:                                    ; preds = %105, %87, %20
  %107 = load i32, i32* %12, align 4, !dbg !4473
  %108 = icmp eq i32 %107, 0, !dbg !4475
  br i1 %108, label %109, label %112, !dbg !4476

; <label>:109:                                    ; preds = %106
  %110 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %11, align 8, !dbg !4477
  %111 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %10, align 8, !dbg !4479
  store %struct.DirectoryEntry* %110, %struct.DirectoryEntry** %111, align 8, !dbg !4480
  br label %112, !dbg !4481

; <label>:112:                                    ; preds = %109, %106
  %113 = load i32, i32* %12, align 4, !dbg !4482
  ret i32 %113, !dbg !4483
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformSetDirEntry(%struct.HgfsSearch*, i32, %struct.HgfsSessionInfo*, %struct.DirectoryEntry*, i8 signext, %struct.HgfsFileAttrInfo*, i8**, i32*) #0 !dbg !4484 {
  %9 = alloca %struct.HgfsSearch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.HgfsSessionInfo*, align 8
  %12 = alloca %struct.DirectoryEntry*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.HgfsFileAttrInfo*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.HgfsSearch* %0, %struct.HgfsSearch** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSearch** %9, metadata !4487, metadata !575), !dbg !4488
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4489, metadata !575), !dbg !4490
  store %struct.HgfsSessionInfo* %2, %struct.HgfsSessionInfo** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %11, metadata !4491, metadata !575), !dbg !4492
  store %struct.DirectoryEntry* %3, %struct.DirectoryEntry** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %12, metadata !4493, metadata !575), !dbg !4494
  store i8 %4, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !4495, metadata !575), !dbg !4496
  store %struct.HgfsFileAttrInfo* %5, %struct.HgfsFileAttrInfo** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %14, metadata !4497, metadata !575), !dbg !4498
  store i8** %6, i8*** %15, align 8
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !4499, metadata !575), !dbg !4500
  store i32* %7, i32** %16, align 8
  call void @llvm.dbg.declare(metadata i32** %16, metadata !4501, metadata !575), !dbg !4502
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4503, metadata !575), !dbg !4504
  store i32 0, i32* %17, align 4, !dbg !4504
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4505, metadata !575), !dbg !4506
  call void @llvm.dbg.declare(metadata i8** %19, metadata !4507, metadata !575), !dbg !4508
  call void @llvm.dbg.declare(metadata i8** %20, metadata !4509, metadata !575), !dbg !4510
  call void @llvm.dbg.declare(metadata i64* %21, metadata !4511, metadata !575), !dbg !4512
  call void @llvm.dbg.declare(metadata i64* %22, metadata !4513, metadata !575), !dbg !4514
  call void @llvm.dbg.declare(metadata i32* %23, metadata !4515, metadata !575), !dbg !4516
  store i32 0, i32* %23, align 4, !dbg !4516
  call void @llvm.dbg.declare(metadata i32* %24, metadata !4517, metadata !575), !dbg !4518
  call void @llvm.dbg.declare(metadata i8* %25, metadata !4519, metadata !575), !dbg !4520
  store i8 1, i8* %25, align 1, !dbg !4520
  %28 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4521
  %29 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %28, i32 0, i32 4, !dbg !4522
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i32 0, i32 0, !dbg !4521
  %31 = call i64 @strlen(i8* %30) #11, !dbg !4523
  %32 = trunc i64 %31 to i32, !dbg !4523
  store i32 %32, i32* %18, align 4, !dbg !4524
  %33 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4525
  %34 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %33, i32 0, i32 9, !dbg !4526
  %35 = load i32, i32* %34, align 4, !dbg !4526
  switch i32 %35, label %186 [
    i32 0, label %36
    i32 1, label %132
    i32 2, label %185
  ], !dbg !4527

; <label>:36:                                     ; preds = %8
  %37 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4528
  %38 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %37, i32 0, i32 4, !dbg !4530
  %39 = load i64, i64* %38, align 8, !dbg !4530
  %40 = add i64 %39, 1, !dbg !4531
  %41 = load i32, i32* %18, align 4, !dbg !4532
  %42 = zext i32 %41 to i64, !dbg !4532
  %43 = add i64 %40, %42, !dbg !4533
  store i64 %43, i64* %22, align 8, !dbg !4534
  %44 = load i64, i64* %22, align 8, !dbg !4535
  %45 = add i64 %44, 1, !dbg !4536
  %46 = call noalias i8* @malloc(i64 %45) #9, !dbg !4537
  store i8* %46, i8** %19, align 8, !dbg !4538
  %47 = load i8*, i8** %19, align 8, !dbg !4539
  %48 = icmp ne i8* %47, null, !dbg !4539
  br i1 %48, label %49, label %122, !dbg !4541

; <label>:49:                                     ; preds = %36
  %50 = load i8*, i8** %19, align 8, !dbg !4542
  %51 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4544
  %52 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %51, i32 0, i32 3, !dbg !4545
  %53 = load i8*, i8** %52, align 8, !dbg !4545
  %54 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4546
  %55 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %54, i32 0, i32 4, !dbg !4547
  %56 = load i64, i64* %55, align 8, !dbg !4547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %53, i64 %56, i32 1, i1 false), !dbg !4548
  %57 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4549
  %58 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %57, i32 0, i32 4, !dbg !4550
  %59 = load i64, i64* %58, align 8, !dbg !4550
  %60 = load i8*, i8** %19, align 8, !dbg !4551
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !4551
  store i8 47, i8* %61, align 1, !dbg !4552
  %62 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4553
  %63 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %62, i32 0, i32 4, !dbg !4554
  %64 = load i64, i64* %63, align 8, !dbg !4554
  %65 = add i64 %64, 1, !dbg !4555
  %66 = load i8*, i8** %19, align 8, !dbg !4556
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !4556
  %68 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4557
  %69 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %68, i32 0, i32 4, !dbg !4558
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %69, i32 0, i32 0, !dbg !4559
  %71 = load i32, i32* %18, align 4, !dbg !4560
  %72 = add i32 %71, 1, !dbg !4561
  %73 = zext i32 %72 to i64, !dbg !4560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %70, i64 %73, i32 1, i1 false), !dbg !4559
  br label %74, !dbg !4562, !llvm.loop !4563

; <label>:74:                                     ; preds = %49
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4564
  %75 = load i8*, i8** %19, align 8, !dbg !4569
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i8* %75), !dbg !4570
  br label %76, !dbg !4572

; <label>:76:                                     ; preds = %74
  %77 = load i8, i8* %13, align 1, !dbg !4573
  %78 = icmp ne i8 %77, 0, !dbg !4573
  br i1 %78, label %79, label %120, !dbg !4575

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %19, align 8, !dbg !4576
  %81 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %11, align 8, !dbg !4579
  %82 = call signext i8 @HgfsFileHasServerLock(i8* %80, %struct.HgfsSessionInfo* %81, i32* %23, i32* %24), !dbg !4580
  %83 = icmp ne i8 %82, 0, !dbg !4580
  br i1 %83, label %84, label %91, !dbg !4581

; <label>:84:                                     ; preds = %79
  br label %85, !dbg !4582, !llvm.loop !4584

; <label>:85:                                     ; preds = %84
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4585
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4590
  br label %86, !dbg !4592

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %24, align 4, !dbg !4593
  %88 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %11, align 8, !dbg !4594
  %89 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4595
  %90 = call i32 @HgfsPlatformGetattrFromFd(i32 %87, %struct.HgfsSessionInfo* %88, %struct.HgfsFileAttrInfo* %89), !dbg !4596
  store i32 %90, i32* %17, align 4, !dbg !4597
  br label %99, !dbg !4598

; <label>:91:                                     ; preds = %79
  %92 = load i8*, i8** %19, align 8, !dbg !4599
  %93 = load i32, i32* %10, align 4, !dbg !4601
  %94 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4602
  %95 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %94, i32 0, i32 5, !dbg !4603
  %96 = load i8*, i8** %95, align 8, !dbg !4603
  %97 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4604
  %98 = call i32 @HgfsPlatformGetattrFromName(i8* %92, i32 %93, i8* %96, %struct.HgfsFileAttrInfo* %97, i8** null), !dbg !4605
  store i32 %98, i32* %17, align 4, !dbg !4606
  br label %99

; <label>:99:                                     ; preds = %91, %86
  %100 = load i32, i32* %17, align 4, !dbg !4607
  %101 = icmp ne i32 0, %100, !dbg !4609
  br i1 %101, label %102, label %119, !dbg !4610

; <label>:102:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata i32* %26, metadata !4611, metadata !575), !dbg !4613
  %103 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4614
  %104 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %103, i32 0, i32 0, !dbg !4615
  %105 = load i32, i32* %104, align 8, !dbg !4615
  store i32 %105, i32* %26, align 4, !dbg !4613
  br label %106, !dbg !4616, !llvm.loop !4617

; <label>:106:                                    ; preds = %102
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4618
  %107 = load i8*, i8** %19, align 8, !dbg !4623
  %108 = load i32, i32* %17, align 4, !dbg !4624
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i8* %107, i32 %108), !dbg !4625
  br label %109, !dbg !4627

; <label>:109:                                    ; preds = %106
  %110 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4628
  %111 = bitcast %struct.HgfsFileAttrInfo* %110 to i8*, !dbg !4629
  call void @llvm.memset.p0i8.i64(i8* %111, i8 0, i64 176, i32 8, i1 false), !dbg !4629
  %112 = load i32, i32* %26, align 4, !dbg !4630
  %113 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4631
  %114 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %113, i32 0, i32 0, !dbg !4632
  store i32 %112, i32* %114, align 8, !dbg !4633
  %115 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4634
  %116 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %115, i32 0, i32 2, !dbg !4635
  store i32 0, i32* %116, align 8, !dbg !4636
  %117 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4637
  %118 = getelementptr inbounds %struct.HgfsFileAttrInfo, %struct.HgfsFileAttrInfo* %117, i32 0, i32 1, !dbg !4638
  store i64 1, i64* %118, align 8, !dbg !4639
  store i32 0, i32* %17, align 4, !dbg !4640
  br label %119, !dbg !4641

; <label>:119:                                    ; preds = %109, %99
  br label %120, !dbg !4642

; <label>:120:                                    ; preds = %119, %76
  %121 = load i8*, i8** %19, align 8, !dbg !4643
  call void @free(i8* %121) #9, !dbg !4644
  br label %131, !dbg !4645

; <label>:122:                                    ; preds = %36
  br label %123, !dbg !4646, !llvm.loop !4648

; <label>:123:                                    ; preds = %122
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4649
  %124 = load %struct.HgfsSearch*, %struct.HgfsSearch** %9, align 8, !dbg !4654
  %125 = getelementptr inbounds %struct.HgfsSearch, %struct.HgfsSearch* %124, i32 0, i32 3, !dbg !4655
  %126 = load i8*, i8** %125, align 8, !dbg !4655
  %127 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4656
  %128 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %127, i32 0, i32 4, !dbg !4657
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %128, i32 0, i32 0, !dbg !4656
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i8* %126, i8* %129), !dbg !4658
  br label %130, !dbg !4660

; <label>:130:                                    ; preds = %123
  store i32 12, i32* %17, align 4, !dbg !4661
  br label %131

; <label>:131:                                    ; preds = %130, %120
  br label %187, !dbg !4662

; <label>:132:                                    ; preds = %8
  store i8 0, i8* %25, align 1, !dbg !4663
  %133 = load i8, i8* %13, align 1, !dbg !4664
  %134 = icmp ne i8 %133, 0, !dbg !4664
  br i1 %134, label %135, label %184, !dbg !4666

; <label>:135:                                    ; preds = %132
  %136 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4667
  %137 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %136, i32 0, i32 4, !dbg !4670
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %137, i32 0, i32 0, !dbg !4667
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0)) #11, !dbg !4671
  %140 = icmp eq i32 %139, 0, !dbg !4672
  br i1 %140, label %147, label %141, !dbg !4673

; <label>:141:                                    ; preds = %135
  %142 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4674
  %143 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %142, i32 0, i32 4, !dbg !4675
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %143, i32 0, i32 0, !dbg !4674
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #11, !dbg !4676
  %146 = icmp eq i32 %145, 0, !dbg !4677
  br i1 %146, label %147, label %154, !dbg !4678

; <label>:147:                                    ; preds = %141, %135
  br label %148, !dbg !4680, !llvm.loop !4682

; <label>:148:                                    ; preds = %147
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4683
  %149 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4688
  %150 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %149, i32 0, i32 4, !dbg !4689
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %150, i32 0, i32 0, !dbg !4688
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i8* %151), !dbg !4690
  br label %152, !dbg !4692

; <label>:152:                                    ; preds = %148
  %153 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4693
  call void @HgfsPlatformGetDefaultDirAttrs(%struct.HgfsFileAttrInfo* %153), !dbg !4694
  br label %183, !dbg !4695

; <label>:154:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata i32* %27, metadata !4696, metadata !575), !dbg !4698
  %155 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4699
  %156 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %155, i32 0, i32 4, !dbg !4700
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %156, i32 0, i32 0, !dbg !4699
  %158 = load i32, i32* %18, align 4, !dbg !4701
  %159 = zext i32 %158 to i64, !dbg !4701
  %160 = call i32 @HgfsServerPolicy_GetSharePath(i8* %157, i64 %159, i32 0, i64* %21, i8** %20), !dbg !4702
  store i32 %160, i32* %27, align 4, !dbg !4703
  %161 = load i32, i32* %27, align 4, !dbg !4704
  %162 = icmp eq i32 %161, 0, !dbg !4706
  br i1 %162, label %163, label %177, !dbg !4707

; <label>:163:                                    ; preds = %154
  %164 = load i8*, i8** %20, align 8, !dbg !4708
  %165 = load i32, i32* %10, align 4, !dbg !4710
  %166 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4711
  %167 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %166, i32 0, i32 4, !dbg !4712
  %168 = getelementptr inbounds [256 x i8], [256 x i8]* %167, i32 0, i32 0, !dbg !4711
  %169 = load %struct.HgfsFileAttrInfo*, %struct.HgfsFileAttrInfo** %14, align 8, !dbg !4713
  %170 = call i32 @HgfsPlatformGetattrFromName(i8* %164, i32 %165, i8* %168, %struct.HgfsFileAttrInfo* %169, i8** null), !dbg !4714
  store i32 %170, i32* %17, align 4, !dbg !4715
  %171 = load i32, i32* %17, align 4, !dbg !4716
  %172 = icmp ne i32 0, %171, !dbg !4718
  br i1 %172, label %173, label %176, !dbg !4719

; <label>:173:                                    ; preds = %163
  br label %174, !dbg !4720, !llvm.loop !4722

; <label>:174:                                    ; preds = %173
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4723
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4728
  br label %175, !dbg !4730

; <label>:175:                                    ; preds = %174
  store i32 0, i32* %17, align 4, !dbg !4731
  br label %176, !dbg !4732

; <label>:176:                                    ; preds = %175, %163
  br label %182, !dbg !4733

; <label>:177:                                    ; preds = %154
  br label %178, !dbg !4734, !llvm.loop !4736

; <label>:178:                                    ; preds = %177
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4737
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4742
  br label %179, !dbg !4744

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* %27, align 4, !dbg !4745
  %181 = call i32 @HgfsPlatformConvertFromNameStatus(i32 %180), !dbg !4746
  store i32 %181, i32* %17, align 4, !dbg !4747
  br label %182

; <label>:182:                                    ; preds = %179, %176
  br label %183

; <label>:183:                                    ; preds = %182, %152
  br label %184, !dbg !4748

; <label>:184:                                    ; preds = %183, %132
  br label %187, !dbg !4749

; <label>:185:                                    ; preds = %8
  br label %186, !dbg !4750

; <label>:186:                                    ; preds = %8, %185
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 3710) #10, !dbg !4752
  unreachable, !dbg !4752

; <label>:187:                                    ; preds = %184, %131
  %188 = load i32, i32* %17, align 4, !dbg !4753
  %189 = icmp eq i32 0, %188, !dbg !4755
  br i1 %189, label %190, label %215, !dbg !4756

; <label>:190:                                    ; preds = %187
  %191 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %12, align 8, !dbg !4757
  %192 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %191, i32 0, i32 4, !dbg !4759
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %192, i32 0, i32 0, !dbg !4760
  %194 = call i8* @UtilSafeStrdup0(i8* %193), !dbg !4761
  %195 = load i8**, i8*** %15, align 8, !dbg !4762
  store i8* %194, i8** %195, align 8, !dbg !4763
  %196 = load i8, i8* %25, align 1, !dbg !4764
  %197 = icmp ne i8 %196, 0, !dbg !4764
  br i1 %197, label %198, label %205, !dbg !4766

; <label>:198:                                    ; preds = %190
  %199 = load i8**, i8*** %15, align 8, !dbg !4767
  %200 = load i8*, i8** %199, align 8, !dbg !4769
  %201 = load i32, i32* %18, align 4, !dbg !4770
  %202 = add i32 %201, 1, !dbg !4771
  %203 = call i32 @HgfsEscape_Undo(i8* %200, i32 %202), !dbg !4772
  %204 = load i32*, i32** %16, align 8, !dbg !4773
  store i32 %203, i32* %204, align 4, !dbg !4774
  br label %208, !dbg !4775

; <label>:205:                                    ; preds = %190
  %206 = load i32, i32* %18, align 4, !dbg !4776
  %207 = load i32*, i32** %16, align 8, !dbg !4778
  store i32 %206, i32* %207, align 4, !dbg !4779
  br label %208

; <label>:208:                                    ; preds = %205, %198
  br label %209, !dbg !4780, !llvm.loop !4781

; <label>:209:                                    ; preds = %208
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4782
  %210 = load i8**, i8*** %15, align 8, !dbg !4787
  %211 = load i8*, i8** %210, align 8, !dbg !4788
  %212 = load i32*, i32** %16, align 8, !dbg !4789
  %213 = load i32, i32* %212, align 4, !dbg !4790
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i8* %211, i32 %213), !dbg !4791
  br label %214, !dbg !4793

; <label>:214:                                    ; preds = %209
  br label %221, !dbg !4794

; <label>:215:                                    ; preds = %187
  %216 = load i8**, i8*** %15, align 8, !dbg !4795
  store i8* null, i8** %216, align 8, !dbg !4797
  %217 = load i32*, i32** %16, align 8, !dbg !4798
  store i32 0, i32* %217, align 4, !dbg !4799
  br label %218, !dbg !4800, !llvm.loop !4801

; <label>:218:                                    ; preds = %215
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0)), !dbg !4802
  %219 = load i32, i32* %17, align 4, !dbg !4807
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.HgfsPlatformSetDirEntry, i32 0, i32 0), i32 %219), !dbg !4808
  br label %220, !dbg !4810

; <label>:220:                                    ; preds = %218
  br label %221

; <label>:221:                                    ; preds = %220, %214
  %222 = load i32, i32* %17, align 4, !dbg !4811
  ret i32 %222, !dbg !4812
}

declare signext i8 @HgfsFileHasServerLock(i8*, %struct.HgfsSessionInfo*, i32*, i32*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i8* @UtilSafeStrdup0(i8*) #4

declare i32 @HgfsEscape_Undo(i8*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformScandir(i8*, i64, i8 signext, %struct.DirectoryEntry***, i32*) #0 !dbg !4813 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.DirectoryEntry***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.DirectoryEntry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8192 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca %struct.DirectoryEntry*, align 8
  %20 = alloca %struct.DirectoryEntry**, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4817, metadata !575), !dbg !4818
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4819, metadata !575), !dbg !4820
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4821, metadata !575), !dbg !4822
  store %struct.DirectoryEntry*** %3, %struct.DirectoryEntry**** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry**** %9, metadata !4823, metadata !575), !dbg !4824
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !4825, metadata !575), !dbg !4826
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4827, metadata !575), !dbg !4828
  store i32 -1, i32* %11, align 4, !dbg !4828
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4829, metadata !575), !dbg !4830
  store i32 198656, i32* %12, align 4, !dbg !4830
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4831, metadata !575), !dbg !4832
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry*** %14, metadata !4833, metadata !575), !dbg !4835
  store %struct.DirectoryEntry** null, %struct.DirectoryEntry*** %14, align 8, !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4836, metadata !575), !dbg !4837
  store i32 0, i32* %15, align 4, !dbg !4837
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4838, metadata !575), !dbg !4839
  store i32 0, i32* %16, align 4, !dbg !4839
  call void @llvm.dbg.declare(metadata [8192 x i8]* %17, metadata !4840, metadata !575), !dbg !4844
  %22 = load i8, i8* %8, align 1, !dbg !4845
  %23 = icmp ne i8 %22, 0, !dbg !4845
  br i1 %23, label %24, label %27, !dbg !4847

; <label>:24:                                     ; preds = %5
  %25 = load i32, i32* %12, align 4, !dbg !4848
  %26 = and i32 %25, -131073, !dbg !4848
  store i32 %26, i32* %12, align 4, !dbg !4848
  br label %27, !dbg !4850

; <label>:27:                                     ; preds = %24, %5
  %28 = load i8*, i8** %6, align 8, !dbg !4851
  %29 = load i32, i32* %12, align 4, !dbg !4852
  %30 = call i32 (i8*, i32, ...) @Posix_Open(i8* %28, i32 %29), !dbg !4853
  store i32 %30, i32* %13, align 4, !dbg !4854
  %31 = load i32, i32* %13, align 4, !dbg !4855
  %32 = icmp slt i32 %31, 0, !dbg !4857
  br i1 %32, label %33, label %41, !dbg !4858

; <label>:33:                                     ; preds = %27
  %34 = call i32* @__errno_location() #1, !dbg !4859
  %35 = load i32, i32* %34, align 4, !dbg !4861
  store i32 %35, i32* %16, align 4, !dbg !4862
  br label %36, !dbg !4863, !llvm.loop !4864

; <label>:36:                                     ; preds = %33
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0)), !dbg !4865
  %37 = load i32, i32* %16, align 4, !dbg !4870
  %38 = load i32, i32* %16, align 4, !dbg !4871
  %39 = call i8* @Err_Errno2String(i32 %38), !dbg !4872
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0), i32 %37, i8* %39), !dbg !4874
  br label %40, !dbg !4876

; <label>:40:                                     ; preds = %36
  br label %143, !dbg !4877

; <label>:41:                                     ; preds = %27
  %42 = load i32, i32* %13, align 4, !dbg !4878
  store i32 %42, i32* %11, align 4, !dbg !4879
  br label %43, !dbg !4880

; <label>:43:                                     ; preds = %130, %41
  %44 = load i32, i32* %11, align 4, !dbg !4881
  %45 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i32 0, i32 0, !dbg !4883
  %46 = bitcast i8* %45 to %struct.DirectoryEntry*, !dbg !4884
  %47 = call i32 @getdents_linux(i32 %44, %struct.DirectoryEntry* %46, i32 8192), !dbg !4885
  store i32 %47, i32* %13, align 4, !dbg !4886
  %48 = icmp sgt i32 %47, 0, !dbg !4887
  br i1 %48, label %49, label %131, !dbg !4888

; <label>:49:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i64* %18, metadata !4889, metadata !575), !dbg !4891
  store i64 0, i64* %18, align 8, !dbg !4891
  br label %50, !dbg !4892

; <label>:50:                                     ; preds = %123, %49
  %51 = load i64, i64* %18, align 8, !dbg !4893
  %52 = load i32, i32* %13, align 4, !dbg !4895
  %53 = sext i32 %52 to i64, !dbg !4895
  %54 = icmp ult i64 %51, %53, !dbg !4896
  br i1 %54, label %55, label %130, !dbg !4897

; <label>:55:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %19, metadata !4898, metadata !575), !dbg !4900
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry*** %20, metadata !4901, metadata !575), !dbg !4902
  %56 = getelementptr inbounds [8192 x i8], [8192 x i8]* %17, i32 0, i32 0, !dbg !4903
  %57 = load i64, i64* %18, align 8, !dbg !4904
  %58 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !4905
  %59 = bitcast i8* %58 to %struct.DirectoryEntry*, !dbg !4906
  store %struct.DirectoryEntry* %59, %struct.DirectoryEntry** %19, align 8, !dbg !4907
  %60 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !4908
  %61 = bitcast %struct.DirectoryEntry** %60 to i8*, !dbg !4908
  %62 = load i32, i32* %15, align 4, !dbg !4909
  %63 = add nsw i32 %62, 1, !dbg !4910
  %64 = sext i32 %63 to i64, !dbg !4911
  %65 = mul i64 8, %64, !dbg !4912
  %66 = call i8* @realloc(i8* %61, i64 %65) #9, !dbg !4913
  %67 = bitcast i8* %66 to %struct.DirectoryEntry**, !dbg !4913
  store %struct.DirectoryEntry** %67, %struct.DirectoryEntry*** %20, align 8, !dbg !4914
  %68 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %20, align 8, !dbg !4915
  %69 = icmp eq %struct.DirectoryEntry** %68, null, !dbg !4917
  br i1 %69, label %70, label %71, !dbg !4918

; <label>:70:                                     ; preds = %55
  store i32 12, i32* %16, align 4, !dbg !4919
  br label %143, !dbg !4921

; <label>:71:                                     ; preds = %55
  %72 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %20, align 8, !dbg !4922
  store %struct.DirectoryEntry** %72, %struct.DirectoryEntry*** %14, align 8, !dbg !4923
  %73 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4924
  %74 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %73, i32 0, i32 2, !dbg !4925
  %75 = load i16, i16* %74, align 8, !dbg !4925
  %76 = zext i16 %75 to i64, !dbg !4924
  %77 = call noalias i8* @malloc(i64 %76) #9, !dbg !4926
  %78 = bitcast i8* %77 to %struct.DirectoryEntry*, !dbg !4926
  %79 = load i32, i32* %15, align 4, !dbg !4927
  %80 = sext i32 %79 to i64, !dbg !4928
  %81 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !4928
  %82 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %81, i64 %80, !dbg !4928
  store %struct.DirectoryEntry* %78, %struct.DirectoryEntry** %82, align 8, !dbg !4929
  %83 = load i32, i32* %15, align 4, !dbg !4930
  %84 = sext i32 %83 to i64, !dbg !4932
  %85 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !4932
  %86 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %85, i64 %84, !dbg !4932
  %87 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %86, align 8, !dbg !4932
  %88 = icmp eq %struct.DirectoryEntry* %87, null, !dbg !4933
  br i1 %88, label %89, label %90, !dbg !4934

; <label>:89:                                     ; preds = %71
  store i32 12, i32* %16, align 4, !dbg !4935
  br label %143, !dbg !4937

; <label>:90:                                     ; preds = %71
  %91 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4938
  %92 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %91, i32 0, i32 4, !dbg !4940
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %92, i32 0, i32 0, !dbg !4938
  %94 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4941
  %95 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %94, i32 0, i32 2, !dbg !4942
  %96 = load i16, i16* %95, align 8, !dbg !4942
  %97 = zext i16 %96 to i64, !dbg !4941
  %98 = sub i64 %97, 19, !dbg !4943
  %99 = call signext i8 @HgfsConvertToUtf8FormC(i8* %93, i64 %98), !dbg !4944
  %100 = icmp ne i8 %99, 0, !dbg !4944
  br i1 %100, label %101, label %116, !dbg !4945

; <label>:101:                                    ; preds = %90
  %102 = load i32, i32* %15, align 4, !dbg !4946
  %103 = sext i32 %102 to i64, !dbg !4948
  %104 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !4948
  %105 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %104, i64 %103, !dbg !4948
  %106 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %105, align 8, !dbg !4948
  %107 = bitcast %struct.DirectoryEntry* %106 to i8*, !dbg !4949
  %108 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4950
  %109 = bitcast %struct.DirectoryEntry* %108 to i8*, !dbg !4949
  %110 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4951
  %111 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %110, i32 0, i32 2, !dbg !4952
  %112 = load i16, i16* %111, align 8, !dbg !4952
  %113 = zext i16 %112 to i64, !dbg !4951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %109, i64 %113, i32 8, i1 false), !dbg !4949
  %114 = load i32, i32* %15, align 4, !dbg !4953
  %115 = add nsw i32 %114, 1, !dbg !4953
  store i32 %115, i32* %15, align 4, !dbg !4953
  br label %123, !dbg !4954

; <label>:116:                                    ; preds = %90
  %117 = load i32, i32* %15, align 4, !dbg !4955
  %118 = sext i32 %117 to i64, !dbg !4957
  %119 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !4957
  %120 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %119, i64 %118, !dbg !4957
  %121 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %120, align 8, !dbg !4957
  %122 = bitcast %struct.DirectoryEntry* %121 to i8*, !dbg !4957
  call void @free(i8* %122) #9, !dbg !4958
  br label %123

; <label>:123:                                    ; preds = %116, %101
  %124 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %19, align 8, !dbg !4959
  %125 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %124, i32 0, i32 2, !dbg !4960
  %126 = load i16, i16* %125, align 8, !dbg !4960
  %127 = zext i16 %126 to i64, !dbg !4959
  %128 = load i64, i64* %18, align 8, !dbg !4961
  %129 = add i64 %128, %127, !dbg !4961
  store i64 %129, i64* %18, align 8, !dbg !4961
  br label %50, !dbg !4962, !llvm.loop !4964

; <label>:130:                                    ; preds = %50
  br label %43, !dbg !4965, !llvm.loop !4967

; <label>:131:                                    ; preds = %43
  %132 = load i32, i32* %13, align 4, !dbg !4968
  %133 = icmp eq i32 %132, -1, !dbg !4970
  br i1 %133, label %134, label %142, !dbg !4971

; <label>:134:                                    ; preds = %131
  %135 = call i32* @__errno_location() #1, !dbg !4972
  %136 = load i32, i32* %135, align 4, !dbg !4974
  store i32 %136, i32* %16, align 4, !dbg !4975
  br label %137, !dbg !4976, !llvm.loop !4977

; <label>:137:                                    ; preds = %134
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0)), !dbg !4978
  %138 = load i32, i32* %16, align 4, !dbg !4983
  %139 = load i32, i32* %16, align 4, !dbg !4984
  %140 = call i8* @Err_Errno2String(i32 %139), !dbg !4985
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0), i32 %138, i8* %140), !dbg !4987
  br label %141, !dbg !4989

; <label>:141:                                    ; preds = %137
  br label %143, !dbg !4990

; <label>:142:                                    ; preds = %131
  br label %143, !dbg !4991

; <label>:143:                                    ; preds = %142, %141, %89, %70, %40
  %144 = load i32, i32* %11, align 4, !dbg !4993
  %145 = icmp ne i32 %144, -1, !dbg !4995
  br i1 %145, label %146, label %158, !dbg !4996

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %11, align 4, !dbg !4997
  %148 = call i32 @close(i32 %147), !dbg !4999
  %149 = icmp slt i32 %148, 0, !dbg !5000
  br i1 %149, label %150, label %158, !dbg !5001

; <label>:150:                                    ; preds = %146
  %151 = call i32* @__errno_location() #1, !dbg !5002
  %152 = load i32, i32* %151, align 4, !dbg !5004
  store i32 %152, i32* %16, align 4, !dbg !5005
  br label %153, !dbg !5006, !llvm.loop !5007

; <label>:153:                                    ; preds = %150
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0)), !dbg !5008
  %154 = load i32, i32* %16, align 4, !dbg !5013
  %155 = load i32, i32* %16, align 4, !dbg !5014
  %156 = call i8* @Err_Errno2String(i32 %155), !dbg !5015
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HgfsPlatformScandir, i32 0, i32 0), i32 %154, i8* %156), !dbg !5017
  br label %157, !dbg !5019

; <label>:157:                                    ; preds = %153
  br label %158, !dbg !5020

; <label>:158:                                    ; preds = %157, %146, %143
  %159 = load i32, i32* %16, align 4, !dbg !5021
  %160 = icmp ne i32 %159, 0, !dbg !5023
  br i1 %160, label %161, label %179, !dbg !5024

; <label>:161:                                    ; preds = %158
  call void @llvm.dbg.declare(metadata i64* %21, metadata !5025, metadata !575), !dbg !5027
  store i64 0, i64* %21, align 8, !dbg !5028
  br label %162, !dbg !5030

; <label>:162:                                    ; preds = %173, %161
  %163 = load i64, i64* %21, align 8, !dbg !5031
  %164 = load i32, i32* %15, align 4, !dbg !5034
  %165 = sext i32 %164 to i64, !dbg !5034
  %166 = icmp ult i64 %163, %165, !dbg !5035
  br i1 %166, label %167, label %176, !dbg !5036

; <label>:167:                                    ; preds = %162
  %168 = load i64, i64* %21, align 8, !dbg !5037
  %169 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !5039
  %170 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %169, i64 %168, !dbg !5039
  %171 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %170, align 8, !dbg !5039
  %172 = bitcast %struct.DirectoryEntry* %171 to i8*, !dbg !5039
  call void @free(i8* %172) #9, !dbg !5040
  br label %173, !dbg !5041

; <label>:173:                                    ; preds = %167
  %174 = load i64, i64* %21, align 8, !dbg !5042
  %175 = add i64 %174, 1, !dbg !5042
  store i64 %175, i64* %21, align 8, !dbg !5042
  br label %162, !dbg !5044, !llvm.loop !5045

; <label>:176:                                    ; preds = %162
  %177 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !5047
  %178 = bitcast %struct.DirectoryEntry** %177 to i8*, !dbg !5047
  call void @free(i8* %178) #9, !dbg !5048
  br label %184, !dbg !5049

; <label>:179:                                    ; preds = %158
  %180 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %14, align 8, !dbg !5050
  %181 = load %struct.DirectoryEntry***, %struct.DirectoryEntry**** %9, align 8, !dbg !5052
  store %struct.DirectoryEntry** %180, %struct.DirectoryEntry*** %181, align 8, !dbg !5053
  %182 = load i32, i32* %15, align 4, !dbg !5054
  %183 = load i32*, i32** %10, align 8, !dbg !5055
  store i32 %182, i32* %183, align 4, !dbg !5056
  br label %184

; <label>:184:                                    ; preds = %179, %176
  %185 = load i32, i32* %16, align 4, !dbg !5057
  ret i32 %185, !dbg !5058
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @getdents_linux(i32, %struct.DirectoryEntry*, i32) #8 !dbg !5059 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.DirectoryEntry*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5062, metadata !575), !dbg !5063
  store %struct.DirectoryEntry* %1, %struct.DirectoryEntry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %5, metadata !5064, metadata !575), !dbg !5065
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5066, metadata !575), !dbg !5067
  %7 = load i32, i32* %4, align 4, !dbg !5068
  %8 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %5, align 8, !dbg !5069
  %9 = load i32, i32* %6, align 4, !dbg !5070
  %10 = call i64 (i64, ...) @syscall(i64 217, i32 %7, %struct.DirectoryEntry* %8, i32 %9) #9, !dbg !5071
  %11 = trunc i64 %10 to i32, !dbg !5071
  ret i32 %11, !dbg !5072
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformScanvdir(i8 (i8*, i8**, i64*, i8*)*, i8* ()*, i8 (i8*)*, i32, %struct.DirectoryEntry***, i32*) #0 !dbg !5073 {
  %7 = alloca i8 (i8*, i8**, i64*, i8*)*, align 8
  %8 = alloca i8* ()*, align 8
  %9 = alloca i8 (i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.DirectoryEntry***, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.DirectoryEntry**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.DirectoryEntry*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store i8 (i8*, i8**, i64*, i8*)* %0, i8 (i8*, i8**, i64*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata i8 (i8*, i8**, i64*, i8*)** %7, metadata !5088, metadata !575), !dbg !5089
  store i8* ()* %1, i8* ()** %8, align 8
  call void @llvm.dbg.declare(metadata i8* ()** %8, metadata !5090, metadata !575), !dbg !5091
  store i8 (i8*)* %2, i8 (i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata i8 (i8*)** %9, metadata !5092, metadata !575), !dbg !5093
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5094, metadata !575), !dbg !5095
  store %struct.DirectoryEntry*** %4, %struct.DirectoryEntry**** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry**** %11, metadata !5096, metadata !575), !dbg !5097
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !5098, metadata !575), !dbg !5099
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5100, metadata !575), !dbg !5101
  store i32 0, i32* %13, align 4, !dbg !5101
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5102, metadata !575), !dbg !5103
  store i32 0, i32* %14, align 4, !dbg !5103
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5104, metadata !575), !dbg !5105
  store i32 0, i32* %15, align 4, !dbg !5105
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry*** %16, metadata !5106, metadata !575), !dbg !5107
  store %struct.DirectoryEntry** null, %struct.DirectoryEntry*** %16, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i8** %17, metadata !5108, metadata !575), !dbg !5109
  %27 = load i8* ()*, i8* ()** %8, align 8, !dbg !5110
  %28 = call i8* %27(), !dbg !5110
  store i8* %28, i8** %17, align 8, !dbg !5111
  %29 = load i8*, i8** %17, align 8, !dbg !5112
  %30 = icmp eq i8* null, %29, !dbg !5114
  br i1 %30, label %31, label %35, !dbg !5115

; <label>:31:                                     ; preds = %6
  store i32 12, i32* %13, align 4, !dbg !5116
  br label %32, !dbg !5118, !llvm.loop !5119

; <label>:32:                                     ; preds = %31
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5120
  %33 = load i32, i32* %13, align 4, !dbg !5125
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i32 %33), !dbg !5126
  br label %34, !dbg !5128

; <label>:34:                                     ; preds = %32
  br label %151, !dbg !5129

; <label>:35:                                     ; preds = %6
  br label %36, !dbg !5130

; <label>:36:                                     ; preds = %110, %65, %35
  call void @llvm.dbg.declare(metadata %struct.DirectoryEntry** %18, metadata !5131, metadata !575), !dbg !5135
  call void @llvm.dbg.declare(metadata i8** %19, metadata !5136, metadata !575), !dbg !5137
  call void @llvm.dbg.declare(metadata i64* %20, metadata !5138, metadata !575), !dbg !5139
  call void @llvm.dbg.declare(metadata i64* %21, metadata !5140, metadata !575), !dbg !5141
  call void @llvm.dbg.declare(metadata i64* %22, metadata !5142, metadata !575), !dbg !5143
  call void @llvm.dbg.declare(metadata i8* %23, metadata !5144, metadata !575), !dbg !5145
  store i8 0, i8* %23, align 1, !dbg !5145
  %37 = load i32, i32* %15, align 4, !dbg !5146
  %38 = icmp eq i32 %37, 0, !dbg !5148
  br i1 %38, label %39, label %40, !dbg !5149

; <label>:39:                                     ; preds = %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8** %19, align 8, !dbg !5150
  store i64 1, i64* %20, align 8, !dbg !5152
  br label %55, !dbg !5153

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %15, align 4, !dbg !5154
  %42 = icmp eq i32 %41, 1, !dbg !5157
  br i1 %42, label %43, label %44, !dbg !5154

; <label>:43:                                     ; preds = %40
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8** %19, align 8, !dbg !5158
  store i64 2, i64* %20, align 8, !dbg !5160
  br label %54, !dbg !5161

; <label>:44:                                     ; preds = %40
  %45 = load i8 (i8*, i8**, i64*, i8*)*, i8 (i8*, i8**, i64*, i8*)** %7, align 8, !dbg !5162
  %46 = load i8*, i8** %17, align 8, !dbg !5165
  %47 = call signext i8 %45(i8* %46, i8** %19, i64* %20, i8* %23), !dbg !5162
  %48 = icmp ne i8 %47, 0, !dbg !5162
  br i1 %48, label %53, label %49, !dbg !5166

; <label>:49:                                     ; preds = %44
  store i32 22, i32* %13, align 4, !dbg !5167
  br label %50, !dbg !5169, !llvm.loop !5170

; <label>:50:                                     ; preds = %49
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5171
  %51 = load i32, i32* %13, align 4, !dbg !5176
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i32 %51), !dbg !5177
  br label %52, !dbg !5179

; <label>:52:                                     ; preds = %50
  br label %151, !dbg !5180

; <label>:53:                                     ; preds = %44
  br label %54

; <label>:54:                                     ; preds = %53, %43
  br label %55

; <label>:55:                                     ; preds = %54, %39
  %56 = load i8, i8* %23, align 1, !dbg !5181
  %57 = icmp ne i8 %56, 0, !dbg !5181
  br i1 %57, label %58, label %61, !dbg !5183

; <label>:58:                                     ; preds = %55
  br label %59, !dbg !5184, !llvm.loop !5186

; <label>:59:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5187
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5192
  br label %60, !dbg !5194

; <label>:60:                                     ; preds = %59
  br label %131, !dbg !5195

; <label>:61:                                     ; preds = %55
  store i64 256, i64* %22, align 8, !dbg !5196
  %62 = load i64, i64* %20, align 8, !dbg !5197
  %63 = load i64, i64* %22, align 8, !dbg !5199
  %64 = icmp uge i64 %62, %63, !dbg !5200
  br i1 %64, label %65, label %67, !dbg !5201

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %19, align 8, !dbg !5202
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i8* %66), !dbg !5204
  br label %36, !dbg !5205, !llvm.loop !5206

; <label>:67:                                     ; preds = %61
  %68 = load i32, i32* %15, align 4, !dbg !5207
  %69 = load i32, i32* %14, align 4, !dbg !5209
  %70 = icmp eq i32 %68, %69, !dbg !5210
  br i1 %70, label %71, label %94, !dbg !5211

; <label>:71:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata i8** %24, metadata !5212, metadata !575), !dbg !5214
  %72 = load i32, i32* %14, align 4, !dbg !5215
  %73 = icmp ne i32 %72, 0, !dbg !5217
  br i1 %73, label %74, label %77, !dbg !5218

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %14, align 4, !dbg !5219
  %76 = mul i32 %75, 2, !dbg !5219
  store i32 %76, i32* %14, align 4, !dbg !5219
  br label %78, !dbg !5221

; <label>:77:                                     ; preds = %71
  store i32 100, i32* %14, align 4, !dbg !5222
  br label %78

; <label>:78:                                     ; preds = %77, %74
  %79 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5224
  %80 = bitcast %struct.DirectoryEntry** %79 to i8*, !dbg !5224
  %81 = load i32, i32* %14, align 4, !dbg !5225
  %82 = zext i32 %81 to i64, !dbg !5225
  %83 = mul i64 %82, 8, !dbg !5226
  %84 = call i8* @realloc(i8* %80, i64 %83) #9, !dbg !5227
  store i8* %84, i8** %24, align 8, !dbg !5228
  %85 = load i8*, i8** %24, align 8, !dbg !5229
  %86 = icmp eq i8* null, %85, !dbg !5231
  br i1 %86, label %87, label %91, !dbg !5232

; <label>:87:                                     ; preds = %78
  store i32 12, i32* %13, align 4, !dbg !5233
  br label %88, !dbg !5235, !llvm.loop !5236

; <label>:88:                                     ; preds = %87
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5237
  %89 = load i32, i32* %13, align 4, !dbg !5242
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i32 %89), !dbg !5243
  br label %90, !dbg !5245

; <label>:90:                                     ; preds = %88
  br label %151, !dbg !5246

; <label>:91:                                     ; preds = %78
  %92 = load i8*, i8** %24, align 8, !dbg !5247
  %93 = bitcast i8* %92 to %struct.DirectoryEntry**, !dbg !5247
  store %struct.DirectoryEntry** %93, %struct.DirectoryEntry*** %16, align 8, !dbg !5248
  br label %94, !dbg !5249

; <label>:94:                                     ; preds = %91, %67
  br label %95, !dbg !5250, !llvm.loop !5251

; <label>:95:                                     ; preds = %94
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5252
  %96 = load i8*, i8** %19, align 8, !dbg !5257
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i8* %96), !dbg !5258
  br label %97, !dbg !5260

; <label>:97:                                     ; preds = %95
  %98 = load i64, i64* %20, align 8, !dbg !5261
  %99 = add i64 19, %98, !dbg !5262
  %100 = add i64 %99, 1, !dbg !5263
  store i64 %100, i64* %21, align 8, !dbg !5264
  %101 = load i64, i64* %21, align 8, !dbg !5265
  %102 = call noalias i8* @malloc(i64 %101) #9, !dbg !5266
  %103 = bitcast i8* %102 to %struct.DirectoryEntry*, !dbg !5266
  store %struct.DirectoryEntry* %103, %struct.DirectoryEntry** %18, align 8, !dbg !5267
  %104 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %18, align 8, !dbg !5268
  %105 = icmp eq %struct.DirectoryEntry* null, %104, !dbg !5270
  br i1 %105, label %106, label %110, !dbg !5271

; <label>:106:                                    ; preds = %97
  store i32 12, i32* %13, align 4, !dbg !5272
  br label %107, !dbg !5274, !llvm.loop !5275

; <label>:107:                                    ; preds = %106
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5276
  %108 = load i32, i32* %13, align 4, !dbg !5281
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0), i32 %108), !dbg !5282
  br label %109, !dbg !5284

; <label>:109:                                    ; preds = %107
  br label %151, !dbg !5285

; <label>:110:                                    ; preds = %97
  %111 = load i64, i64* %21, align 8, !dbg !5286
  %112 = trunc i64 %111 to i16, !dbg !5287
  %113 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %18, align 8, !dbg !5288
  %114 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %113, i32 0, i32 2, !dbg !5289
  store i16 %112, i16* %114, align 8, !dbg !5290
  %115 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %18, align 8, !dbg !5291
  %116 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %115, i32 0, i32 4, !dbg !5292
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %116, i32 0, i32 0, !dbg !5293
  %118 = load i8*, i8** %19, align 8, !dbg !5294
  %119 = load i64, i64* %20, align 8, !dbg !5295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 %119, i32 1, i1 false), !dbg !5293
  %120 = load i64, i64* %20, align 8, !dbg !5296
  %121 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %18, align 8, !dbg !5297
  %122 = getelementptr inbounds %struct.DirectoryEntry, %struct.DirectoryEntry* %121, i32 0, i32 4, !dbg !5298
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %122, i64 0, i64 %120, !dbg !5297
  store i8 0, i8* %123, align 1, !dbg !5299
  %124 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %18, align 8, !dbg !5300
  %125 = load i32, i32* %15, align 4, !dbg !5301
  %126 = zext i32 %125 to i64, !dbg !5302
  %127 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5302
  %128 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %127, i64 %126, !dbg !5302
  store %struct.DirectoryEntry* %124, %struct.DirectoryEntry** %128, align 8, !dbg !5303
  %129 = load i32, i32* %15, align 4, !dbg !5304
  %130 = add i32 %129, 1, !dbg !5304
  store i32 %130, i32* %15, align 4, !dbg !5304
  br label %36, !dbg !5305, !llvm.loop !5206

; <label>:131:                                    ; preds = %60
  call void @llvm.dbg.declare(metadata i8** %25, metadata !5307, metadata !575), !dbg !5309
  %132 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5310
  %133 = bitcast %struct.DirectoryEntry** %132 to i8*, !dbg !5310
  %134 = load i32, i32* %15, align 4, !dbg !5311
  %135 = zext i32 %134 to i64, !dbg !5311
  %136 = mul i64 %135, 8, !dbg !5312
  %137 = call i8* @realloc(i8* %133, i64 %136) #9, !dbg !5313
  store i8* %137, i8** %25, align 8, !dbg !5314
  %138 = load i8*, i8** %25, align 8, !dbg !5315
  %139 = icmp ne i8* null, %138, !dbg !5317
  br i1 %139, label %140, label %143, !dbg !5318

; <label>:140:                                    ; preds = %131
  %141 = load i8*, i8** %25, align 8, !dbg !5319
  %142 = bitcast i8* %141 to %struct.DirectoryEntry**, !dbg !5319
  store %struct.DirectoryEntry** %142, %struct.DirectoryEntry*** %16, align 8, !dbg !5321
  br label %146, !dbg !5322

; <label>:143:                                    ; preds = %131
  br label %144, !dbg !5323, !llvm.loop !5325

; <label>:144:                                    ; preds = %143
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5326
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5331
  br label %145, !dbg !5333

; <label>:145:                                    ; preds = %144
  br label %146

; <label>:146:                                    ; preds = %145, %140
  %147 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5334
  %148 = load %struct.DirectoryEntry***, %struct.DirectoryEntry**** %11, align 8, !dbg !5335
  store %struct.DirectoryEntry** %147, %struct.DirectoryEntry*** %148, align 8, !dbg !5336
  %149 = load i32, i32* %15, align 4, !dbg !5337
  %150 = load i32*, i32** %12, align 8, !dbg !5338
  store i32 %149, i32* %150, align 4, !dbg !5339
  br label %151, !dbg !5340

; <label>:151:                                    ; preds = %146, %109, %90, %52, %34
  %152 = load i8*, i8** %17, align 8, !dbg !5341
  %153 = icmp ne i8* null, %152, !dbg !5343
  br i1 %153, label %154, label %163, !dbg !5344

; <label>:154:                                    ; preds = %151
  %155 = load i8 (i8*)*, i8 (i8*)** %9, align 8, !dbg !5345
  %156 = load i8*, i8** %17, align 8, !dbg !5348
  %157 = call signext i8 %155(i8* %156), !dbg !5345
  %158 = icmp ne i8 %157, 0, !dbg !5345
  br i1 %158, label %162, label %159, !dbg !5349

; <label>:159:                                    ; preds = %154
  br label %160, !dbg !5350, !llvm.loop !5352

; <label>:160:                                    ; preds = %159
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5353
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformScanvdir, i32 0, i32 0)), !dbg !5358
  br label %161, !dbg !5360

; <label>:161:                                    ; preds = %160
  br label %162, !dbg !5361

; <label>:162:                                    ; preds = %161, %154
  br label %163, !dbg !5362

; <label>:163:                                    ; preds = %162, %151
  %164 = load i32, i32* %13, align 4, !dbg !5363
  %165 = icmp ne i32 0, %164, !dbg !5365
  br i1 %165, label %166, label %184, !dbg !5366

; <label>:166:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata i32* %26, metadata !5367, metadata !575), !dbg !5369
  store i32 0, i32* %26, align 4, !dbg !5370
  br label %167, !dbg !5372

; <label>:167:                                    ; preds = %178, %166
  %168 = load i32, i32* %26, align 4, !dbg !5373
  %169 = load i32, i32* %15, align 4, !dbg !5376
  %170 = icmp ult i32 %168, %169, !dbg !5377
  br i1 %170, label %171, label %181, !dbg !5378

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %26, align 4, !dbg !5379
  %173 = zext i32 %172 to i64, !dbg !5381
  %174 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5381
  %175 = getelementptr inbounds %struct.DirectoryEntry*, %struct.DirectoryEntry** %174, i64 %173, !dbg !5381
  %176 = load %struct.DirectoryEntry*, %struct.DirectoryEntry** %175, align 8, !dbg !5381
  %177 = bitcast %struct.DirectoryEntry* %176 to i8*, !dbg !5381
  call void @free(i8* %177) #9, !dbg !5382
  br label %178, !dbg !5383

; <label>:178:                                    ; preds = %171
  %179 = load i32, i32* %26, align 4, !dbg !5384
  %180 = add i32 %179, 1, !dbg !5384
  store i32 %180, i32* %26, align 4, !dbg !5384
  br label %167, !dbg !5386, !llvm.loop !5387

; <label>:181:                                    ; preds = %167
  %182 = load %struct.DirectoryEntry**, %struct.DirectoryEntry*** %16, align 8, !dbg !5389
  %183 = bitcast %struct.DirectoryEntry** %182 to i8*, !dbg !5389
  call void @free(i8* %183) #9, !dbg !5390
  br label %184, !dbg !5391

; <label>:184:                                    ; preds = %181, %163
  %185 = load i32, i32* %13, align 4, !dbg !5392
  ret i32 %185, !dbg !5393
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformReadFile(i32, %struct.HgfsSessionInfo*, i64, i32, i8*, i32*) #0 !dbg !5394 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.HgfsSessionInfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5397, metadata !575), !dbg !5398
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %9, metadata !5399, metadata !575), !dbg !5400
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5401, metadata !575), !dbg !5402
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5403, metadata !575), !dbg !5404
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !5405, metadata !575), !dbg !5406
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !5407, metadata !575), !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5409, metadata !575), !dbg !5410
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5411, metadata !575), !dbg !5412
  store i32 0, i32* %15, align 4, !dbg !5412
  call void @llvm.dbg.declare(metadata i32* %16, metadata !5413, metadata !575), !dbg !5414
  call void @llvm.dbg.declare(metadata i8* %17, metadata !5415, metadata !575), !dbg !5416
  br label %18, !dbg !5417, !llvm.loop !5418

; <label>:18:                                     ; preds = %6
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5419
  %19 = load i32, i32* %8, align 4, !dbg !5424
  %20 = load i64, i64* %10, align 8, !dbg !5425
  %21 = load i32, i32* %11, align 4, !dbg !5426
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0), i32 %19, i64 %20, i32 %21), !dbg !5427
  br label %22, !dbg !5429

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %8, align 4, !dbg !5430
  %24 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %9, align 8, !dbg !5432
  %25 = call signext i8 @HgfsFileDesc2Handle(i32 %23, %struct.HgfsSessionInfo* %24, i32* %16), !dbg !5433
  %26 = icmp ne i8 %25, 0, !dbg !5433
  br i1 %26, label %30, label %27, !dbg !5434

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !5435, !llvm.loop !5437

; <label>:28:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5438
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5443
  br label %29, !dbg !5445

; <label>:29:                                     ; preds = %28
  store i32 9, i32* %7, align 4, !dbg !5446
  br label %74, !dbg !5446

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %16, align 4, !dbg !5447
  %32 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %9, align 8, !dbg !5449
  %33 = call signext i8 @HgfsHandleIsSequentialOpen(i32 %31, %struct.HgfsSessionInfo* %32, i8* %17), !dbg !5450
  %34 = icmp ne i8 %33, 0, !dbg !5450
  br i1 %34, label %38, label %35, !dbg !5451

; <label>:35:                                     ; preds = %30
  br label %36, !dbg !5452, !llvm.loop !5454

; <label>:36:                                     ; preds = %35
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5455
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5460
  br label %37, !dbg !5462

; <label>:37:                                     ; preds = %36
  store i32 9, i32* %7, align 4, !dbg !5463
  br label %74, !dbg !5463

; <label>:38:                                     ; preds = %30
  %39 = load i8, i8* %17, align 1, !dbg !5464
  %40 = icmp ne i8 %39, 0, !dbg !5464
  br i1 %40, label %41, label %48, !dbg !5466

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %8, align 4, !dbg !5467
  %43 = load i8*, i8** %12, align 8, !dbg !5469
  %44 = load i32, i32* %11, align 4, !dbg !5470
  %45 = zext i32 %44 to i64, !dbg !5470
  %46 = call i64 @read(i32 %42, i8* %43, i64 %45), !dbg !5471
  %47 = trunc i64 %46 to i32, !dbg !5471
  store i32 %47, i32* %14, align 4, !dbg !5472
  br label %56, !dbg !5473

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %8, align 4, !dbg !5474
  %50 = load i8*, i8** %12, align 8, !dbg !5476
  %51 = load i32, i32* %11, align 4, !dbg !5477
  %52 = zext i32 %51 to i64, !dbg !5477
  %53 = load i64, i64* %10, align 8, !dbg !5478
  %54 = call i64 @pread64(i32 %49, i8* %50, i64 %52, i64 %53), !dbg !5479
  %55 = trunc i64 %54 to i32, !dbg !5479
  store i32 %55, i32* %14, align 4, !dbg !5480
  br label %56

; <label>:56:                                     ; preds = %48, %41
  %57 = load i32, i32* %14, align 4, !dbg !5481
  %58 = icmp slt i32 %57, 0, !dbg !5483
  br i1 %58, label %59, label %66, !dbg !5484

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno_location() #1, !dbg !5485
  %61 = load i32, i32* %60, align 4, !dbg !5487
  store i32 %61, i32* %15, align 4, !dbg !5488
  br label %62, !dbg !5489, !llvm.loop !5490

; <label>:62:                                     ; preds = %59
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5491
  %63 = load i32, i32* %15, align 4, !dbg !5496
  %64 = call i8* @Err_Errno2String(i32 %63), !dbg !5497
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0), i8* %64), !dbg !5499
  br label %65, !dbg !5501

; <label>:65:                                     ; preds = %62
  br label %72, !dbg !5502

; <label>:66:                                     ; preds = %56
  br label %67, !dbg !5503, !llvm.loop !5505

; <label>:67:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0)), !dbg !5506
  %68 = load i32, i32* %14, align 4, !dbg !5511
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.HgfsPlatformReadFile, i32 0, i32 0), i32 %68), !dbg !5512
  br label %69, !dbg !5514

; <label>:69:                                     ; preds = %67
  %70 = load i32, i32* %14, align 4, !dbg !5515
  %71 = load i32*, i32** %13, align 8, !dbg !5516
  store i32 %70, i32* %71, align 4, !dbg !5517
  br label %72

; <label>:72:                                     ; preds = %69, %65
  %73 = load i32, i32* %15, align 4, !dbg !5518
  store i32 %73, i32* %7, align 4, !dbg !5519
  br label %74, !dbg !5519

; <label>:74:                                     ; preds = %72, %37, %29
  %75 = load i32, i32* %7, align 4, !dbg !5520
  ret i32 %75, !dbg !5520
}

declare signext i8 @HgfsHandleIsSequentialOpen(i32, %struct.HgfsSessionInfo*, i8*) #4

declare i64 @read(i32, i8*, i64) #4

declare i64 @pread64(i32, i8*, i64, i64) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformWriteFile(i32, %struct.HgfsSessionInfo*, i64, i32, i8 zeroext, i8 signext, i8 signext, i8*, i32*) #0 !dbg !5521 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.HgfsSessionInfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5527, metadata !575), !dbg !5528
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %12, metadata !5529, metadata !575), !dbg !5530
  store i64 %2, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !5531, metadata !575), !dbg !5532
  store i32 %3, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5533, metadata !575), !dbg !5534
  store i8 %4, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !5535, metadata !575), !dbg !5536
  store i8 %5, i8* %16, align 1
  call void @llvm.dbg.declare(metadata i8* %16, metadata !5537, metadata !575), !dbg !5538
  store i8 %6, i8* %17, align 1
  call void @llvm.dbg.declare(metadata i8* %17, metadata !5539, metadata !575), !dbg !5540
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !5541, metadata !575), !dbg !5542
  store i32* %8, i32** %19, align 8
  call void @llvm.dbg.declare(metadata i32** %19, metadata !5543, metadata !575), !dbg !5544
  call void @llvm.dbg.declare(metadata i32* %20, metadata !5545, metadata !575), !dbg !5546
  store i32 0, i32* %20, align 4, !dbg !5546
  call void @llvm.dbg.declare(metadata i32* %21, metadata !5547, metadata !575), !dbg !5548
  store i32 0, i32* %21, align 4, !dbg !5548
  br label %22, !dbg !5549, !llvm.loop !5550

; <label>:22:                                     ; preds = %9
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0)), !dbg !5551
  %23 = load i32, i32* %11, align 4, !dbg !5556
  %24 = load i64, i64* %13, align 8, !dbg !5557
  %25 = load i32, i32* %14, align 4, !dbg !5558
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0), i32 %23, i64 %24, i32 %25), !dbg !5559
  br label %26, !dbg !5561

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* %16, align 1, !dbg !5562
  %28 = icmp ne i8 %27, 0, !dbg !5562
  br i1 %28, label %38, label %29, !dbg !5564

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %13, align 8, !dbg !5565
  %31 = load i32, i32* %14, align 4, !dbg !5567
  %32 = call i32 @HgfsWriteCheckIORange(i64 %30, i32 %31), !dbg !5568
  store i32 %32, i32* %20, align 4, !dbg !5569
  %33 = load i32, i32* %20, align 4, !dbg !5570
  %34 = icmp ne i32 %33, 0, !dbg !5572
  br i1 %34, label %35, label %37, !dbg !5573

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %20, align 4, !dbg !5574
  store i32 %36, i32* %10, align 4, !dbg !5576
  br label %75, !dbg !5576

; <label>:37:                                     ; preds = %29
  br label %38, !dbg !5577

; <label>:38:                                     ; preds = %37, %26
  %39 = load i8, i8* %16, align 1, !dbg !5578
  %40 = icmp ne i8 %39, 0, !dbg !5578
  br i1 %40, label %41, label %48, !dbg !5580

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %11, align 4, !dbg !5581
  %43 = load i8*, i8** %18, align 8, !dbg !5583
  %44 = load i32, i32* %14, align 4, !dbg !5584
  %45 = zext i32 %44 to i64, !dbg !5584
  %46 = call i64 @write(i32 %42, i8* %43, i64 %45), !dbg !5585
  %47 = trunc i64 %46 to i32, !dbg !5585
  store i32 %47, i32* %21, align 4, !dbg !5586
  br label %56, !dbg !5587

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %11, align 4, !dbg !5588
  %50 = load i8*, i8** %18, align 8, !dbg !5590
  %51 = load i32, i32* %14, align 4, !dbg !5591
  %52 = zext i32 %51 to i64, !dbg !5591
  %53 = load i64, i64* %13, align 8, !dbg !5592
  %54 = call i64 @pwrite64(i32 %49, i8* %50, i64 %52, i64 %53), !dbg !5593
  %55 = trunc i64 %54 to i32, !dbg !5593
  store i32 %55, i32* %21, align 4, !dbg !5594
  br label %56

; <label>:56:                                     ; preds = %48, %41
  %57 = load i32, i32* %21, align 4, !dbg !5595
  %58 = icmp slt i32 %57, 0, !dbg !5597
  br i1 %58, label %59, label %66, !dbg !5598

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno_location() #1, !dbg !5599
  %61 = load i32, i32* %60, align 4, !dbg !5601
  store i32 %61, i32* %20, align 4, !dbg !5602
  br label %62, !dbg !5603, !llvm.loop !5604

; <label>:62:                                     ; preds = %59
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0)), !dbg !5605
  %63 = load i32, i32* %20, align 4, !dbg !5610
  %64 = call i8* @Err_Errno2String(i32 %63), !dbg !5611
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0), i8* %64), !dbg !5613
  br label %65, !dbg !5615

; <label>:65:                                     ; preds = %62
  br label %73, !dbg !5616

; <label>:66:                                     ; preds = %56
  %67 = load i32, i32* %21, align 4, !dbg !5617
  %68 = load i32*, i32** %19, align 8, !dbg !5619
  store i32 %67, i32* %68, align 4, !dbg !5620
  br label %69, !dbg !5621, !llvm.loop !5622

; <label>:69:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0)), !dbg !5623
  %70 = load i32*, i32** %19, align 8, !dbg !5628
  %71 = load i32, i32* %70, align 4, !dbg !5629
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformWriteFile, i32 0, i32 0), i32 %71), !dbg !5630
  br label %72, !dbg !5632

; <label>:72:                                     ; preds = %69
  br label %73

; <label>:73:                                     ; preds = %72, %65
  %74 = load i32, i32* %20, align 4, !dbg !5633
  store i32 %74, i32* %10, align 4, !dbg !5634
  br label %75, !dbg !5634

; <label>:75:                                     ; preds = %73, %35
  %76 = load i32, i32* %10, align 4, !dbg !5635
  ret i32 %76, !dbg !5635
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsWriteCheckIORange(i64, i32) #0 !dbg !5636 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5641, metadata !575), !dbg !5642
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5643, metadata !575), !dbg !5644
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5645, metadata !575), !dbg !5646
  store i32 0, i32* %5, align 4, !dbg !5646
  call void @llvm.dbg.declare(metadata %struct.rlimit* %6, metadata !5647, metadata !575), !dbg !5654
  %7 = call i32 @getrlimit64(i32 1, %struct.rlimit* %6) #9, !dbg !5655
  %8 = icmp slt i32 %7, 0, !dbg !5657
  br i1 %8, label %9, label %14, !dbg !5658

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #1, !dbg !5659
  %11 = load i32, i32* %10, align 4, !dbg !5661
  store i32 %11, i32* %5, align 4, !dbg !5662
  br label %12, !dbg !5663, !llvm.loop !5664

; <label>:12:                                     ; preds = %9
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5665
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5670
  br label %13, !dbg !5672

; <label>:13:                                     ; preds = %12
  br label %43, !dbg !5673

; <label>:14:                                     ; preds = %2
  br label %15, !dbg !5674, !llvm.loop !5675

; <label>:15:                                     ; preds = %14
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5676
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0, !dbg !5681
  %17 = load i64, i64* %16, align 8, !dbg !5681
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1, !dbg !5682
  %19 = load i64, i64* %18, align 8, !dbg !5682
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0), i64 %17, i64 %19), !dbg !5683
  br label %20, !dbg !5685

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0, !dbg !5686
  %22 = load i64, i64* %21, align 8, !dbg !5686
  %23 = load i64, i64* %3, align 8, !dbg !5688
  %24 = icmp ult i64 %22, %23, !dbg !5689
  br i1 %24, label %25, label %29, !dbg !5690

; <label>:25:                                     ; preds = %20
  store i32 27, i32* %5, align 4, !dbg !5691
  br label %26, !dbg !5693, !llvm.loop !5694

; <label>:26:                                     ; preds = %25
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5695
  %27 = load i64, i64* %3, align 8, !dbg !5700
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0), i64 %27), !dbg !5701
  br label %28, !dbg !5703

; <label>:28:                                     ; preds = %26
  br label %43, !dbg !5704

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0, !dbg !5705
  %31 = load i64, i64* %30, align 8, !dbg !5705
  %32 = load i64, i64* %3, align 8, !dbg !5707
  %33 = sub i64 %31, %32, !dbg !5708
  %34 = load i32, i32* %4, align 4, !dbg !5709
  %35 = zext i32 %34 to i64, !dbg !5709
  %36 = icmp ult i64 %33, %35, !dbg !5710
  br i1 %36, label %37, label %42, !dbg !5711

; <label>:37:                                     ; preds = %29
  store i32 27, i32* %5, align 4, !dbg !5712
  br label %38, !dbg !5714, !llvm.loop !5715

; <label>:38:                                     ; preds = %37
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5716
  %39 = load i32, i32* %4, align 4, !dbg !5721
  %40 = load i64, i64* %3, align 8, !dbg !5722
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0), i32 %39, i64 %40), !dbg !5723
  br label %41, !dbg !5725

; <label>:41:                                     ; preds = %38
  br label %43, !dbg !5726

; <label>:42:                                     ; preds = %29
  br label %43, !dbg !5727

; <label>:43:                                     ; preds = %42, %41, %28, %13
  br label %44, !dbg !5729, !llvm.loop !5730

; <label>:44:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0)), !dbg !5731
  %45 = load i32, i32* %4, align 4, !dbg !5736
  %46 = load i64, i64* %3, align 8, !dbg !5737
  %47 = load i32, i32* %5, align 4, !dbg !5738
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsWriteCheckIORange, i32 0, i32 0), i32 %45, i64 %46, i32 %47), !dbg !5739
  br label %48, !dbg !5741

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %5, align 4, !dbg !5742
  ret i32 %49, !dbg !5743
}

declare i64 @write(i32, i8*, i64) #4

declare i64 @pwrite64(i32, i8*, i64, i64) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformSearchDir(i32, i8*, i64, i32, %struct.HgfsShareInfo*, i8*, i32, %struct.HgfsSessionInfo*, i32*) #0 !dbg !5744 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.HgfsShareInfo*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.HgfsSessionInfo*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5749, metadata !575), !dbg !5750
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5751, metadata !575), !dbg !5752
  store i64 %2, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5753, metadata !575), !dbg !5754
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5755, metadata !575), !dbg !5756
  store %struct.HgfsShareInfo* %4, %struct.HgfsShareInfo** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsShareInfo** %14, metadata !5757, metadata !575), !dbg !5758
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !5759, metadata !575), !dbg !5760
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !5761, metadata !575), !dbg !5762
  store %struct.HgfsSessionInfo* %7, %struct.HgfsSessionInfo** %17, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %17, metadata !5763, metadata !575), !dbg !5764
  store i32* %8, i32** %18, align 8
  call void @llvm.dbg.declare(metadata i32** %18, metadata !5765, metadata !575), !dbg !5766
  call void @llvm.dbg.declare(metadata i32* %19, metadata !5767, metadata !575), !dbg !5768
  store i32 0, i32* %19, align 4, !dbg !5768
  %23 = load i32, i32* %10, align 4, !dbg !5769
  switch i32 %23, label %91 [
    i32 0, label %24
    i32 2, label %79
  ], !dbg !5770

; <label>:24:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %20, metadata !5771, metadata !575), !dbg !5774
  call void @llvm.dbg.declare(metadata i8** %21, metadata !5775, metadata !575), !dbg !5776
  call void @llvm.dbg.declare(metadata i32* %22, metadata !5777, metadata !575), !dbg !5778
  br label %25, !dbg !5779, !llvm.loop !5780

; <label>:25:                                     ; preds = %24
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5781
  %26 = load i8*, i8** %15, align 8, !dbg !5786
  %27 = load i8*, i8** %11, align 8, !dbg !5787
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0), i8* %26, i8* %27), !dbg !5788
  br label %28, !dbg !5790

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %11, align 8, !dbg !5791
  %30 = load i64, i64* %12, align 8, !dbg !5792
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !5793
  store i8* %31, i8** %20, align 8, !dbg !5794
  %32 = load i8*, i8** %11, align 8, !dbg !5795
  %33 = load i8*, i8** %20, align 8, !dbg !5796
  %34 = call i32 @CPName_GetComponent(i8* %32, i8* %33, i8** %21), !dbg !5797
  store i32 %34, i32* %22, align 4, !dbg !5798
  %35 = load i32, i32* %22, align 4, !dbg !5799
  %36 = icmp sge i32 %35, 0, !dbg !5801
  br i1 %36, label %37, label %60, !dbg !5802

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %20, align 8, !dbg !5803
  %39 = load i8, i8* %38, align 1, !dbg !5806
  %40 = sext i8 %39 to i32, !dbg !5806
  %41 = icmp ne i32 %40, 0, !dbg !5807
  br i1 %41, label %42, label %46, !dbg !5808

; <label>:42:                                     ; preds = %37
  br label %43, !dbg !5809, !llvm.loop !5811

; <label>:43:                                     ; preds = %42
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5812
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5817
  br label %44, !dbg !5819

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %20, align 8, !dbg !5820
  store i8 0, i8* %45, align 1, !dbg !5821
  br label %46, !dbg !5822

; <label>:46:                                     ; preds = %44, %37
  br label %47, !dbg !5823, !llvm.loop !5824

; <label>:47:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5825
  %48 = load i8*, i8** %11, align 8, !dbg !5830
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0), i8* %48), !dbg !5831
  br label %49, !dbg !5833

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %15, align 8, !dbg !5834
  %51 = load i32, i32* %16, align 4, !dbg !5835
  %52 = zext i32 %51 to i64, !dbg !5835
  %53 = load i8*, i8** %11, align 8, !dbg !5836
  %54 = load %struct.HgfsShareInfo*, %struct.HgfsShareInfo** %14, align 8, !dbg !5837
  %55 = getelementptr inbounds %struct.HgfsShareInfo, %struct.HgfsShareInfo* %54, i32 0, i32 0, !dbg !5838
  %56 = load i8*, i8** %55, align 8, !dbg !5838
  %57 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %17, align 8, !dbg !5839
  %58 = load i32*, i32** %18, align 8, !dbg !5840
  %59 = call i32 @HgfsServerSearchRealDir(i8* %50, i64 %52, i8* %53, i8* %56, %struct.HgfsSessionInfo* %57, i32* %58), !dbg !5841
  store i32 %59, i32* %19, align 4, !dbg !5842
  br label %63, !dbg !5843

; <label>:60:                                     ; preds = %28
  br label %61, !dbg !5844, !llvm.loop !5846

; <label>:61:                                     ; preds = %60
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5847
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5852
  br label %62, !dbg !5854

; <label>:62:                                     ; preds = %61
  store i32 2, i32* %19, align 4, !dbg !5855
  br label %63

; <label>:63:                                     ; preds = %62, %49
  %64 = load %struct.HgfsShareInfo*, %struct.HgfsShareInfo** %14, align 8, !dbg !5856
  %65 = getelementptr inbounds %struct.HgfsShareInfo, %struct.HgfsShareInfo* %64, i32 0, i32 2, !dbg !5858
  %66 = load i8, i8* %65, align 8, !dbg !5858
  %67 = icmp ne i8 %66, 0, !dbg !5856
  br i1 %67, label %72, label %68, !dbg !5859

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %19, align 4, !dbg !5860
  %70 = icmp eq i32 0, %69, !dbg !5862
  br i1 %70, label %71, label %72, !dbg !5863

; <label>:71:                                     ; preds = %68
  store i32 8, i32* %19, align 4, !dbg !5864
  br label %72, !dbg !5866

; <label>:72:                                     ; preds = %71, %68, %63
  %73 = load i32, i32* %19, align 4, !dbg !5867
  %74 = icmp ne i32 %73, 0, !dbg !5869
  br i1 %74, label %75, label %78, !dbg !5870

; <label>:75:                                     ; preds = %72
  br label %76, !dbg !5871, !llvm.loop !5873

; <label>:76:                                     ; preds = %75
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5874
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5879
  br label %77, !dbg !5881

; <label>:77:                                     ; preds = %76
  br label %78, !dbg !5882

; <label>:78:                                     ; preds = %77, %72
  br label %96, !dbg !5883

; <label>:79:                                     ; preds = %9
  br label %80, !dbg !5884, !llvm.loop !5885

; <label>:80:                                     ; preds = %79
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5886
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5891
  br label %81, !dbg !5893

; <label>:81:                                     ; preds = %80
  %82 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %17, align 8, !dbg !5894
  %83 = load i32*, i32** %18, align 8, !dbg !5895
  %84 = call i32 @HgfsServerSearchVirtualDir(i8 (i8*, i8**, i64*, i8*)* @HgfsServerResEnumGet, i8* ()* @HgfsServerResEnumInit, i8 (i8*)* @HgfsServerResEnumExit, i32 1, %struct.HgfsSessionInfo* %82, i32* %83), !dbg !5896
  store i32 %84, i32* %19, align 4, !dbg !5897
  %85 = load i32, i32* %19, align 4, !dbg !5898
  %86 = icmp ne i32 %85, 0, !dbg !5900
  br i1 %86, label %87, label %90, !dbg !5901

; <label>:87:                                     ; preds = %81
  br label %88, !dbg !5902, !llvm.loop !5904

; <label>:88:                                     ; preds = %87
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5905
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5910
  br label %89, !dbg !5912

; <label>:89:                                     ; preds = %88
  br label %90, !dbg !5913

; <label>:90:                                     ; preds = %89, %81
  br label %96, !dbg !5914

; <label>:91:                                     ; preds = %9
  br label %92, !dbg !5915, !llvm.loop !5916

; <label>:92:                                     ; preds = %91
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5917
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformSearchDir, i32 0, i32 0)), !dbg !5922
  br label %93, !dbg !5924

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %10, align 4, !dbg !5925
  %95 = call i32 @HgfsPlatformConvertFromNameStatus(i32 %94), !dbg !5926
  store i32 %95, i32* %19, align 4, !dbg !5927
  br label %96, !dbg !5928

; <label>:96:                                     ; preds = %93, %90, %78
  %97 = load i32, i32* %19, align 4, !dbg !5929
  %98 = icmp eq i32 %97, 0, !dbg !5931
  br i1 %98, label %99, label %102, !dbg !5932

; <label>:99:                                     ; preds = %96
  br label %100, !dbg !5933, !llvm.loop !5935

; <label>:100:                                    ; preds = %99
  br label %101, !dbg !5936

; <label>:101:                                    ; preds = %100
  br label %102, !dbg !5939

; <label>:102:                                    ; preds = %101, %96
  %103 = load i32, i32* %19, align 4, !dbg !5940
  ret i32 %103, !dbg !5941
}

declare i32 @CPName_GetComponent(i8*, i8*, i8**) #4

declare i32 @HgfsServerSearchRealDir(i8*, i64, i8*, i8*, %struct.HgfsSessionInfo*, i32*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformRestartSearchDir(i32, %struct.HgfsSessionInfo*, i32) #0 !dbg !5942 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HgfsSessionInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5945, metadata !575), !dbg !5946
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %5, metadata !5947, metadata !575), !dbg !5948
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5949, metadata !575), !dbg !5950
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5951, metadata !575), !dbg !5952
  %8 = load i32, i32* %6, align 4, !dbg !5953
  switch i32 %8, label %14 [
    i32 1, label %9
    i32 2, label %13
    i32 0, label %13
  ], !dbg !5954

; <label>:9:                                      ; preds = %3
  %10 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %5, align 8, !dbg !5955
  %11 = load i32, i32* %4, align 4, !dbg !5957
  %12 = call i32 @HgfsServerRestartSearchVirtualDir(i8 (i8*, i8**, i64*, i8*)* @HgfsServerResEnumGet, i8* ()* @HgfsServerResEnumInit, i8 (i8*)* @HgfsServerResEnumExit, %struct.HgfsSessionInfo* %10, i32 %11), !dbg !5958
  store i32 %12, i32* %7, align 4, !dbg !5959
  br label %15, !dbg !5960

; <label>:13:                                     ; preds = %3, %3
  br label %14, !dbg !5961

; <label>:14:                                     ; preds = %3, %13
  store i32 22, i32* %7, align 4, !dbg !5963
  br label %15, !dbg !5964

; <label>:15:                                     ; preds = %14, %9
  %16 = load i32, i32* %7, align 4, !dbg !5965
  ret i32 %16, !dbg !5966
}

declare i32 @HgfsServerRestartSearchVirtualDir(i8 (i8*, i8**, i64*, i8*)*, i8* ()*, i8 (i8*)*, %struct.HgfsSessionInfo*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformHandleIncompleteName(i32, %struct.HgfsFileAttrInfo*) #0 !dbg !5967 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsFileAttrInfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5970, metadata !575), !dbg !5971
  store %struct.HgfsFileAttrInfo* %1, %struct.HgfsFileAttrInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsFileAttrInfo** %4, metadata !5972, metadata !575), !dbg !5973
  %5 = load i32, i32* %3, align 4, !dbg !5974
  %6 = call i32 @HgfsPlatformConvertFromNameStatus(i32 %5), !dbg !5975
  ret i32 %6, !dbg !5976
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformDeleteFileByName(i8*) #0 !dbg !5977 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5980, metadata !575), !dbg !5981
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5982, metadata !575), !dbg !5983
  br label %4, !dbg !5984, !llvm.loop !5985

; <label>:4:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByName, i32 0, i32 0)), !dbg !5986
  %5 = load i8*, i8** %2, align 8, !dbg !5991
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByName, i32 0, i32 0), i8* %5), !dbg !5992
  br label %6, !dbg !5994

; <label>:6:                                      ; preds = %4
  %7 = load i8*, i8** %2, align 8, !dbg !5995
  %8 = call i32 @Posix_Unlink(i8* %7), !dbg !5996
  store i32 %8, i32* %3, align 4, !dbg !5997
  %9 = load i32, i32* %3, align 4, !dbg !5998
  %10 = icmp ne i32 %9, 0, !dbg !5998
  br i1 %10, label %11, label %18, !dbg !6000

; <label>:11:                                     ; preds = %6
  %12 = call i32* @__errno_location() #1, !dbg !6001
  %13 = load i32, i32* %12, align 4, !dbg !6003
  store i32 %13, i32* %3, align 4, !dbg !6004
  br label %14, !dbg !6005, !llvm.loop !6006

; <label>:14:                                     ; preds = %11
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByName, i32 0, i32 0)), !dbg !6007
  %15 = load i32, i32* %3, align 4, !dbg !6012
  %16 = call i8* @Err_Errno2String(i32 %15), !dbg !6013
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByName, i32 0, i32 0), i8* %16), !dbg !6015
  br label %17, !dbg !6017

; <label>:17:                                     ; preds = %14
  br label %18, !dbg !6018

; <label>:18:                                     ; preds = %17, %6
  %19 = load i32, i32* %3, align 4, !dbg !6019
  ret i32 %19, !dbg !6020
}

declare i32 @Posix_Unlink(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformDeleteFileByHandle(i32, %struct.HgfsSessionInfo*) #0 !dbg !6021 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsSessionInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6024, metadata !575), !dbg !6025
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %4, metadata !6026, metadata !575), !dbg !6027
  call void @llvm.dbg.declare(metadata i32* %5, metadata !6028, metadata !575), !dbg !6029
  call void @llvm.dbg.declare(metadata i8* %6, metadata !6030, metadata !575), !dbg !6031
  call void @llvm.dbg.declare(metadata i8* %7, metadata !6032, metadata !575), !dbg !6033
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6034, metadata !575), !dbg !6035
  call void @llvm.dbg.declare(metadata i64* %9, metadata !6036, metadata !575), !dbg !6037
  %10 = load i32, i32* %3, align 4, !dbg !6038
  %11 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %4, align 8, !dbg !6040
  %12 = call signext i8 @HgfsHandle2FileNameMode(i32 %10, %struct.HgfsSessionInfo* %11, i8* %7, i8* %6, i8** %8, i64* %9), !dbg !6041
  %13 = icmp ne i8 %12, 0, !dbg !6041
  br i1 %13, label %14, label %28, !dbg !6042

; <label>:14:                                     ; preds = %2
  %15 = load i8, i8* %7, align 1, !dbg !6043
  %16 = sext i8 %15 to i32, !dbg !6043
  %17 = icmp ne i32 %16, 0, !dbg !6043
  br i1 %17, label %18, label %25, !dbg !6046

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %6, align 1, !dbg !6047
  %20 = sext i8 %19 to i32, !dbg !6047
  %21 = icmp ne i32 %20, 0, !dbg !6047
  br i1 %21, label %22, label %25, !dbg !6049

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %8, align 8, !dbg !6050
  %24 = call i32 @HgfsPlatformDeleteFileByName(i8* %23), !dbg !6052
  store i32 %24, i32* %5, align 4, !dbg !6053
  br label %26, !dbg !6054

; <label>:25:                                     ; preds = %18, %14
  store i32 1, i32* %5, align 4, !dbg !6055
  br label %26

; <label>:26:                                     ; preds = %25, %22
  %27 = load i8*, i8** %8, align 8, !dbg !6057
  call void @free(i8* %27) #9, !dbg !6058
  br label %32, !dbg !6059

; <label>:28:                                     ; preds = %2
  br label %29, !dbg !6060, !llvm.loop !6062

; <label>:29:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByHandle, i32 0, i32 0)), !dbg !6063
  %30 = load i32, i32* %3, align 4, !dbg !6068
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.HgfsPlatformDeleteFileByHandle, i32 0, i32 0), i32 %30), !dbg !6069
  br label %31, !dbg !6071

; <label>:31:                                     ; preds = %29
  store i32 9, i32* %5, align 4, !dbg !6072
  br label %32

; <label>:32:                                     ; preds = %31, %26
  %33 = load i32, i32* %5, align 4, !dbg !6073
  ret i32 %33, !dbg !6074
}

declare signext i8 @HgfsHandle2FileNameMode(i32, %struct.HgfsSessionInfo*, i8*, i8*, i8**, i64*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformDeleteDirByName(i8*) #0 !dbg !6075 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6076, metadata !575), !dbg !6077
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6078, metadata !575), !dbg !6079
  br label %4, !dbg !6080, !llvm.loop !6081

; <label>:4:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByName, i32 0, i32 0)), !dbg !6082
  %5 = load i8*, i8** %2, align 8, !dbg !6087
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByName, i32 0, i32 0), i8* %5), !dbg !6088
  br label %6, !dbg !6090

; <label>:6:                                      ; preds = %4
  %7 = load i8*, i8** %2, align 8, !dbg !6091
  %8 = call i32 @Posix_Rmdir(i8* %7), !dbg !6092
  store i32 %8, i32* %3, align 4, !dbg !6093
  %9 = load i32, i32* %3, align 4, !dbg !6094
  %10 = icmp ne i32 %9, 0, !dbg !6094
  br i1 %10, label %11, label %18, !dbg !6096

; <label>:11:                                     ; preds = %6
  %12 = call i32* @__errno_location() #1, !dbg !6097
  %13 = load i32, i32* %12, align 4, !dbg !6099
  store i32 %13, i32* %3, align 4, !dbg !6100
  br label %14, !dbg !6101, !llvm.loop !6102

; <label>:14:                                     ; preds = %11
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByName, i32 0, i32 0)), !dbg !6103
  %15 = load i32, i32* %3, align 4, !dbg !6108
  %16 = call i8* @Err_Errno2String(i32 %15), !dbg !6109
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByName, i32 0, i32 0), i8* %16), !dbg !6111
  br label %17, !dbg !6113

; <label>:17:                                     ; preds = %14
  br label %18, !dbg !6114

; <label>:18:                                     ; preds = %17, %6
  %19 = load i32, i32* %3, align 4, !dbg !6115
  ret i32 %19, !dbg !6116
}

declare i32 @Posix_Rmdir(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformDeleteDirByHandle(i32, %struct.HgfsSessionInfo*) #0 !dbg !6117 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsSessionInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6118, metadata !575), !dbg !6119
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %4, metadata !6120, metadata !575), !dbg !6121
  call void @llvm.dbg.declare(metadata i32* %5, metadata !6122, metadata !575), !dbg !6123
  call void @llvm.dbg.declare(metadata i8* %6, metadata !6124, metadata !575), !dbg !6125
  call void @llvm.dbg.declare(metadata i8* %7, metadata !6126, metadata !575), !dbg !6127
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6128, metadata !575), !dbg !6129
  call void @llvm.dbg.declare(metadata i64* %9, metadata !6130, metadata !575), !dbg !6131
  %10 = load i32, i32* %3, align 4, !dbg !6132
  %11 = load %struct.HgfsSessionInfo*, %struct.HgfsSessionInfo** %4, align 8, !dbg !6134
  %12 = call signext i8 @HgfsHandle2FileNameMode(i32 %10, %struct.HgfsSessionInfo* %11, i8* %7, i8* %6, i8** %8, i64* %9), !dbg !6135
  %13 = icmp ne i8 %12, 0, !dbg !6135
  br i1 %13, label %14, label %28, !dbg !6136

; <label>:14:                                     ; preds = %2
  %15 = load i8, i8* %7, align 1, !dbg !6137
  %16 = sext i8 %15 to i32, !dbg !6137
  %17 = icmp ne i32 %16, 0, !dbg !6137
  br i1 %17, label %18, label %25, !dbg !6140

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %6, align 1, !dbg !6141
  %20 = sext i8 %19 to i32, !dbg !6141
  %21 = icmp ne i32 %20, 0, !dbg !6141
  br i1 %21, label %22, label %25, !dbg !6143

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %8, align 8, !dbg !6144
  %24 = call i32 @HgfsPlatformDeleteDirByName(i8* %23), !dbg !6146
  store i32 %24, i32* %5, align 4, !dbg !6147
  br label %26, !dbg !6148

; <label>:25:                                     ; preds = %18, %14
  store i32 1, i32* %5, align 4, !dbg !6149
  br label %26

; <label>:26:                                     ; preds = %25, %22
  %27 = load i8*, i8** %8, align 8, !dbg !6151
  call void @free(i8* %27) #9, !dbg !6152
  br label %32, !dbg !6153

; <label>:28:                                     ; preds = %2
  br label %29, !dbg !6154, !llvm.loop !6156

; <label>:29:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByHandle, i32 0, i32 0)), !dbg !6157
  %30 = load i32, i32* %3, align 4, !dbg !6162
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.HgfsPlatformDeleteDirByHandle, i32 0, i32 0), i32 %30), !dbg !6163
  br label %31, !dbg !6165

; <label>:31:                                     ; preds = %29
  store i32 9, i32* %5, align 4, !dbg !6166
  br label %32

; <label>:32:                                     ; preds = %31, %26
  %33 = load i32, i32* %5, align 4, !dbg !6167
  ret i32 %33, !dbg !6168
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformFileExists(i8*) #0 !dbg !6169 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6172, metadata !575), !dbg !6173
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6174, metadata !575), !dbg !6175
  %4 = load i8*, i8** %2, align 8, !dbg !6176
  %5 = call i32 @Posix_Access(i8* %4, i32 0), !dbg !6177
  store i32 %5, i32* %3, align 4, !dbg !6178
  %6 = load i32, i32* %3, align 4, !dbg !6179
  %7 = icmp eq i32 -1, %6, !dbg !6181
  br i1 %7, label %8, label %11, !dbg !6182

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !6183
  %10 = load i32, i32* %9, align 4, !dbg !6185
  store i32 %10, i32* %3, align 4, !dbg !6186
  br label %11, !dbg !6187

; <label>:11:                                     ; preds = %8, %1
  %12 = load i32, i32* %3, align 4, !dbg !6188
  ret i32 %12, !dbg !6189
}

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformRename(i8*, i32, i8*, i32, i64) #0 !dbg !6190 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !6194, metadata !575), !dbg !6195
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !6196, metadata !575), !dbg !6197
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6198, metadata !575), !dbg !6199
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !6200, metadata !575), !dbg !6201
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !6202, metadata !575), !dbg !6203
  call void @llvm.dbg.declare(metadata i32* %11, metadata !6204, metadata !575), !dbg !6205
  store i32 0, i32* %11, align 4, !dbg !6205
  %12 = load i64, i64* %10, align 8, !dbg !6206
  %13 = and i64 %12, 4, !dbg !6208
  %14 = icmp ne i64 %13, 0, !dbg !6208
  br i1 %14, label %15, label %21, !dbg !6209

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %8, align 8, !dbg !6210
  %17 = call i32 @HgfsPlatformFileExists(i8* %16), !dbg !6213
  %18 = icmp eq i32 0, %17, !dbg !6214
  br i1 %18, label %19, label %20, !dbg !6215

; <label>:19:                                     ; preds = %15
  store i32 17, i32* %11, align 4, !dbg !6216
  br label %39, !dbg !6218

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !6219

; <label>:21:                                     ; preds = %20, %5
  br label %22, !dbg !6220, !llvm.loop !6221

; <label>:22:                                     ; preds = %21
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsPlatformRename, i32 0, i32 0)), !dbg !6222
  %23 = load i8*, i8** %6, align 8, !dbg !6227
  %24 = load i8*, i8** %8, align 8, !dbg !6228
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsPlatformRename, i32 0, i32 0), i8* %23, i8* %24), !dbg !6229
  br label %25, !dbg !6231

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %6, align 8, !dbg !6232
  %27 = load i8*, i8** %8, align 8, !dbg !6233
  %28 = call i32 @Posix_Rename(i8* %26, i8* %27), !dbg !6234
  store i32 %28, i32* %11, align 4, !dbg !6235
  %29 = load i32, i32* %11, align 4, !dbg !6236
  %30 = icmp ne i32 %29, 0, !dbg !6236
  br i1 %30, label %31, label %38, !dbg !6238

; <label>:31:                                     ; preds = %25
  %32 = call i32* @__errno_location() #1, !dbg !6239
  %33 = load i32, i32* %32, align 4, !dbg !6241
  store i32 %33, i32* %11, align 4, !dbg !6242
  br label %34, !dbg !6243, !llvm.loop !6244

; <label>:34:                                     ; preds = %31
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsPlatformRename, i32 0, i32 0)), !dbg !6245
  %35 = load i32, i32* %11, align 4, !dbg !6250
  %36 = call i8* @Err_Errno2String(i32 %35), !dbg !6251
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsPlatformRename, i32 0, i32 0), i8* %36), !dbg !6253
  br label %37, !dbg !6255

; <label>:37:                                     ; preds = %34
  br label %38, !dbg !6256

; <label>:38:                                     ; preds = %37, %25
  br label %39, !dbg !6257

; <label>:39:                                     ; preds = %38, %19
  %40 = load i32, i32* %11, align 4, !dbg !6259
  ret i32 %40, !dbg !6260
}

declare i32 @Posix_Rename(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformCreateDir(%struct.HgfsCreateDirInfo*, i8*) #0 !dbg !6261 {
  %3 = alloca %struct.HgfsCreateDirInfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.HgfsCreateDirInfo* %0, %struct.HgfsCreateDirInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsCreateDirInfo** %3, metadata !6279, metadata !575), !dbg !6280
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !6281, metadata !575), !dbg !6282
  call void @llvm.dbg.declare(metadata i32* %5, metadata !6283, metadata !575), !dbg !6284
  call void @llvm.dbg.declare(metadata i32* %6, metadata !6285, metadata !575), !dbg !6286
  store i32 0, i32* %5, align 4, !dbg !6287
  %7 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6288
  %8 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %7, i32 0, i32 1, !dbg !6289
  %9 = load i64, i64* %8, align 8, !dbg !6289
  %10 = and i64 %9, 1, !dbg !6290
  %11 = icmp ne i64 %10, 0, !dbg !6290
  br i1 %11, label %12, label %18, !dbg !6288

; <label>:12:                                     ; preds = %2
  %13 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6291
  %14 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %13, i32 0, i32 2, !dbg !6292
  %15 = load i8, i8* %14, align 8, !dbg !6292
  %16 = zext i8 %15 to i32, !dbg !6291
  %17 = shl i32 %16, 9, !dbg !6293
  br label %19, !dbg !6294

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !6296

; <label>:19:                                     ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ], !dbg !6298
  %21 = load i32, i32* %5, align 4, !dbg !6300
  %22 = or i32 %21, %20, !dbg !6300
  store i32 %22, i32* %5, align 4, !dbg !6300
  %23 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6301
  %24 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %23, i32 0, i32 1, !dbg !6302
  %25 = load i64, i64* %24, align 8, !dbg !6302
  %26 = and i64 %25, 2, !dbg !6303
  %27 = icmp ne i64 %26, 0, !dbg !6303
  br i1 %27, label %28, label %34, !dbg !6301

; <label>:28:                                     ; preds = %19
  %29 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6304
  %30 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %29, i32 0, i32 3, !dbg !6305
  %31 = load i8, i8* %30, align 1, !dbg !6305
  %32 = zext i8 %31 to i32, !dbg !6304
  %33 = shl i32 %32, 6, !dbg !6306
  br label %35, !dbg !6307

; <label>:34:                                     ; preds = %19
  br label %35, !dbg !6308

; <label>:35:                                     ; preds = %34, %28
  %36 = phi i32 [ %33, %28 ], [ 448, %34 ], !dbg !6309
  %37 = load i32, i32* %5, align 4, !dbg !6310
  %38 = or i32 %37, %36, !dbg !6310
  store i32 %38, i32* %5, align 4, !dbg !6310
  %39 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6311
  %40 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %39, i32 0, i32 1, !dbg !6312
  %41 = load i64, i64* %40, align 8, !dbg !6312
  %42 = and i64 %41, 4, !dbg !6313
  %43 = icmp ne i64 %42, 0, !dbg !6313
  br i1 %43, label %44, label %50, !dbg !6311

; <label>:44:                                     ; preds = %35
  %45 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6314
  %46 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %45, i32 0, i32 4, !dbg !6315
  %47 = load i8, i8* %46, align 2, !dbg !6315
  %48 = zext i8 %47 to i32, !dbg !6314
  %49 = shl i32 %48, 3, !dbg !6316
  br label %54, !dbg !6317

; <label>:50:                                     ; preds = %35
  %51 = load i32, i32* %5, align 4, !dbg !6318
  %52 = and i32 %51, 448, !dbg !6319
  %53 = lshr i32 %52, 3, !dbg !6320
  br label %54, !dbg !6321

; <label>:54:                                     ; preds = %50, %44
  %55 = phi i32 [ %49, %44 ], [ %53, %50 ], !dbg !6322
  %56 = load i32, i32* %5, align 4, !dbg !6323
  %57 = or i32 %56, %55, !dbg !6323
  store i32 %57, i32* %5, align 4, !dbg !6323
  %58 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6324
  %59 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %58, i32 0, i32 1, !dbg !6325
  %60 = load i64, i64* %59, align 8, !dbg !6325
  %61 = and i64 %60, 8, !dbg !6326
  %62 = icmp ne i64 %61, 0, !dbg !6326
  br i1 %62, label %63, label %68, !dbg !6324

; <label>:63:                                     ; preds = %54
  %64 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6327
  %65 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %64, i32 0, i32 5, !dbg !6328
  %66 = load i8, i8* %65, align 1, !dbg !6328
  %67 = zext i8 %66 to i32, !dbg !6327
  br label %72, !dbg !6329

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %5, align 4, !dbg !6330
  %70 = and i32 %69, 448, !dbg !6331
  %71 = lshr i32 %70, 6, !dbg !6332
  br label %72, !dbg !6333

; <label>:72:                                     ; preds = %68, %63
  %73 = phi i32 [ %67, %63 ], [ %71, %68 ], !dbg !6334
  %74 = load i32, i32* %5, align 4, !dbg !6335
  %75 = or i32 %74, %73, !dbg !6335
  store i32 %75, i32* %5, align 4, !dbg !6335
  br label %76, !dbg !6336, !llvm.loop !6337

; <label>:76:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCreateDir, i32 0, i32 0)), !dbg !6338
  %77 = load i8*, i8** %4, align 8, !dbg !6343
  %78 = load i32, i32* %5, align 4, !dbg !6344
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCreateDir, i32 0, i32 0), i8* %77, i32 %78), !dbg !6345
  br label %79, !dbg !6347

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %4, align 8, !dbg !6348
  %81 = load i32, i32* %5, align 4, !dbg !6349
  %82 = call i32 @Posix_Mkdir(i8* %80, i32 %81), !dbg !6350
  store i32 %82, i32* %6, align 4, !dbg !6351
  %83 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6352
  %84 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %83, i32 0, i32 1, !dbg !6354
  %85 = load i64, i64* %84, align 8, !dbg !6354
  %86 = and i64 %85, 32, !dbg !6355
  %87 = icmp ne i64 %86, 0, !dbg !6355
  br i1 %87, label %88, label %101, !dbg !6356

; <label>:88:                                     ; preds = %79
  %89 = load %struct.HgfsCreateDirInfo*, %struct.HgfsCreateDirInfo** %3, align 8, !dbg !6357
  %90 = getelementptr inbounds %struct.HgfsCreateDirInfo, %struct.HgfsCreateDirInfo* %89, i32 0, i32 9, !dbg !6358
  %91 = load i64, i64* %90, align 8, !dbg !6358
  %92 = and i64 %91, 1, !dbg !6359
  %93 = icmp ne i64 %92, 0, !dbg !6359
  br i1 %93, label %94, label %101, !dbg !6360

; <label>:94:                                     ; preds = %88
  %95 = load i32, i32* %6, align 4, !dbg !6361
  %96 = icmp eq i32 0, %95, !dbg !6363
  br i1 %96, label %97, label %101, !dbg !6364

; <label>:97:                                     ; preds = %94
  %98 = load i8*, i8** %4, align 8, !dbg !6365
  %99 = load i32, i32* %5, align 4, !dbg !6367
  %100 = call i32 @HgfsSetHiddenXAttr(i8* %98, i8 signext 1, i32 %99), !dbg !6368
  br label %101, !dbg !6369

; <label>:101:                                    ; preds = %97, %94, %88, %79
  %102 = load i32, i32* %6, align 4, !dbg !6370
  %103 = icmp ne i32 %102, 0, !dbg !6370
  br i1 %103, label %104, label %111, !dbg !6372

; <label>:104:                                    ; preds = %101
  %105 = call i32* @__errno_location() #1, !dbg !6373
  %106 = load i32, i32* %105, align 4, !dbg !6375
  store i32 %106, i32* %6, align 4, !dbg !6376
  br label %107, !dbg !6377, !llvm.loop !6378

; <label>:107:                                    ; preds = %104
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCreateDir, i32 0, i32 0)), !dbg !6379
  %108 = load i32, i32* %6, align 4, !dbg !6384
  %109 = call i8* @Err_Errno2String(i32 %108), !dbg !6385
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsPlatformCreateDir, i32 0, i32 0), i8* %109), !dbg !6387
  br label %110, !dbg !6389

; <label>:110:                                    ; preds = %107
  br label %111, !dbg !6390

; <label>:111:                                    ; preds = %110, %101
  %112 = load i32, i32* %6, align 4, !dbg !6391
  ret i32 %112, !dbg !6392
}

declare i32 @Posix_Mkdir(i8*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformSymlinkCreate(i8*, i8*) #0 !dbg !6393 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !6396, metadata !575), !dbg !6397
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !6398, metadata !575), !dbg !6399
  call void @llvm.dbg.declare(metadata i32* %5, metadata !6400, metadata !575), !dbg !6401
  store i32 0, i32* %5, align 4, !dbg !6401
  call void @llvm.dbg.declare(metadata i32* %6, metadata !6402, metadata !575), !dbg !6403
  br label %7, !dbg !6404, !llvm.loop !6405

; <label>:7:                                      ; preds = %2
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSymlinkCreate, i32 0, i32 0)), !dbg !6406
  %8 = load i8*, i8** %3, align 8, !dbg !6411
  %9 = load i8*, i8** %4, align 8, !dbg !6412
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSymlinkCreate, i32 0, i32 0), i8* %8, i8* %9), !dbg !6413
  br label %10, !dbg !6415

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** %4, align 8, !dbg !6416
  %12 = load i8*, i8** %3, align 8, !dbg !6417
  %13 = call i32 @Posix_Symlink(i8* %11, i8* %12), !dbg !6418
  store i32 %13, i32* %6, align 4, !dbg !6419
  %14 = load i32, i32* %6, align 4, !dbg !6420
  %15 = icmp ne i32 %14, 0, !dbg !6420
  br i1 %15, label %16, label %24, !dbg !6422

; <label>:16:                                     ; preds = %10
  %17 = call i32* @__errno_location() #1, !dbg !6423
  %18 = load i32, i32* %17, align 4, !dbg !6425
  store i32 %18, i32* %5, align 4, !dbg !6426
  br label %19, !dbg !6427, !llvm.loop !6428

; <label>:19:                                     ; preds = %16
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSymlinkCreate, i32 0, i32 0)), !dbg !6429
  %20 = call i32* @__errno_location() #1, !dbg !6434
  %21 = load i32, i32* %20, align 4, !dbg !6436
  %22 = call i8* @Err_Errno2String(i32 %21), !dbg !6437
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.HgfsPlatformSymlinkCreate, i32 0, i32 0), i8* %22), !dbg !6439
  br label %23, !dbg !6441

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !6442

; <label>:24:                                     ; preds = %23, %10
  %25 = load i32, i32* %5, align 4, !dbg !6443
  ret i32 %25, !dbg !6444
}

declare i32 @Posix_Symlink(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsPlatformPathHasSymlink(i8*, i64, i8*, i64) #0 !dbg !6445 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !6448, metadata !575), !dbg !6449
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !6450, metadata !575), !dbg !6451
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !6452, metadata !575), !dbg !6453
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !6454, metadata !575), !dbg !6455
  call void @llvm.dbg.declare(metadata i8** %9, metadata !6456, metadata !575), !dbg !6457
  store i8* null, i8** %9, align 8, !dbg !6457
  call void @llvm.dbg.declare(metadata i8** %10, metadata !6458, metadata !575), !dbg !6459
  store i8* null, i8** %10, align 8, !dbg !6459
  call void @llvm.dbg.declare(metadata i32* %11, metadata !6460, metadata !575), !dbg !6461
  call void @llvm.dbg.declare(metadata i32* %12, metadata !6462, metadata !575), !dbg !6463
  store i32 0, i32* %12, align 4, !dbg !6463
  br label %14, !dbg !6464, !llvm.loop !6465

; <label>:14:                                     ; preds = %4
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0)), !dbg !6466
  %15 = load i8*, i8** %5, align 8, !dbg !6471
  %16 = load i8*, i8** %7, align 8, !dbg !6472
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0), i8* %15, i8* %16), !dbg !6473
  br label %17, !dbg !6475

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8, !dbg !6476
  %19 = icmp eq i64 %18, 0, !dbg !6478
  br i1 %19, label %28, label %20, !dbg !6479

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %8, align 8, !dbg !6480
  %22 = icmp eq i64 %21, 0, !dbg !6481
  br i1 %22, label %28, label %23, !dbg !6482

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %7, align 8, !dbg !6483
  %25 = load i8*, i8** %5, align 8, !dbg !6484
  %26 = call i32 @strcmp(i8* %24, i8* %25) #11, !dbg !6485
  %27 = icmp eq i32 %26, 0, !dbg !6486
  br i1 %27, label %28, label %29, !dbg !6487

; <label>:28:                                     ; preds = %23, %20, %17
  br label %78, !dbg !6489

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %5, align 8, !dbg !6491
  call void @File_GetPathName(i8* %30, i8** %10, i8** null), !dbg !6492
  %31 = load i8*, i8** %10, align 8, !dbg !6493
  %32 = call i64 @strlen(i8* %31) #11, !dbg !6495
  %33 = icmp eq i64 %32, 0, !dbg !6496
  br i1 %33, label %34, label %47, !dbg !6497

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata i8** %13, metadata !6498, metadata !575), !dbg !6500
  %35 = load i8*, i8** %10, align 8, !dbg !6501
  %36 = call i8* @realloc(i8* %35, i64 2) #9, !dbg !6502
  store i8* %36, i8** %13, align 8, !dbg !6503
  %37 = load i8*, i8** %13, align 8, !dbg !6504
  %38 = icmp eq i8* %37, null, !dbg !6506
  br i1 %38, label %39, label %42, !dbg !6507

; <label>:39:                                     ; preds = %34
  store i32 10, i32* %12, align 4, !dbg !6508
  br label %40, !dbg !6510, !llvm.loop !6511

; <label>:40:                                     ; preds = %39
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0)), !dbg !6512
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0)), !dbg !6517
  br label %41, !dbg !6519

; <label>:41:                                     ; preds = %40
  br label %78, !dbg !6520

; <label>:42:                                     ; preds = %34
  %43 = load i8*, i8** %13, align 8, !dbg !6521
  store i8* %43, i8** %10, align 8, !dbg !6523
  %44 = load i8*, i8** %10, align 8, !dbg !6524
  %45 = call i8* @Str_Strcpy(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i64 2), !dbg !6525
  br label %46

; <label>:46:                                     ; preds = %42
  br label %47, !dbg !6526

; <label>:47:                                     ; preds = %46, %29
  %48 = load i8*, i8** %10, align 8, !dbg !6527
  %49 = call i8* @Posix_RealPath(i8* %48), !dbg !6528
  store i8* %49, i8** %9, align 8, !dbg !6529
  %50 = load i8*, i8** %9, align 8, !dbg !6530
  %51 = icmp eq i8* %50, null, !dbg !6532
  br i1 %51, label %52, label %66, !dbg !6533

; <label>:52:                                     ; preds = %47
  %53 = call i32* @__errno_location() #1, !dbg !6534
  %54 = load i32, i32* %53, align 4, !dbg !6536
  store i32 %54, i32* %11, align 4, !dbg !6537
  %55 = load i32, i32* %11, align 4, !dbg !6538
  switch i32 %55, label %58 [
    i32 2, label %56
    i32 20, label %57
  ], !dbg !6539

; <label>:56:                                     ; preds = %52
  store i32 7, i32* %12, align 4, !dbg !6540
  br label %59, !dbg !6542

; <label>:57:                                     ; preds = %52
  store i32 12, i32* %12, align 4, !dbg !6543
  br label %59, !dbg !6544

; <label>:58:                                     ; preds = %52
  store i32 1, i32* %12, align 4, !dbg !6545
  br label %59, !dbg !6546

; <label>:59:                                     ; preds = %58, %57, %56
  br label %60, !dbg !6547, !llvm.loop !6548

; <label>:60:                                     ; preds = %59
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0)), !dbg !6549
  %61 = load i8*, i8** %10, align 8, !dbg !6554
  %62 = call i32* @__errno_location() #1, !dbg !6555
  %63 = load i32, i32* %62, align 4, !dbg !6557
  %64 = call i8* @Err_Errno2String(i32 %63), !dbg !6558
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0), i8* %61, i8* %64), !dbg !6560
  br label %65, !dbg !6562

; <label>:65:                                     ; preds = %60
  br label %78, !dbg !6563

; <label>:66:                                     ; preds = %47
  %67 = load i8*, i8** %7, align 8, !dbg !6564
  %68 = load i8*, i8** %9, align 8, !dbg !6566
  %69 = load i64, i64* %8, align 8, !dbg !6567
  %70 = call i32 @strncmp(i8* %67, i8* %68, i64 %69) #11, !dbg !6568
  %71 = icmp ne i32 %70, 0, !dbg !6569
  br i1 %71, label %72, label %77, !dbg !6570

; <label>:72:                                     ; preds = %66
  store i32 8, i32* %12, align 4, !dbg !6571
  br label %73, !dbg !6573, !llvm.loop !6574

; <label>:73:                                     ; preds = %72
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0)), !dbg !6575
  %74 = load i8*, i8** %10, align 8, !dbg !6580
  %75 = load i8*, i8** %9, align 8, !dbg !6581
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsPlatformPathHasSymlink, i32 0, i32 0), i8* %74, i8* %75), !dbg !6582
  br label %76, !dbg !6584

; <label>:76:                                     ; preds = %73
  br label %78, !dbg !6585

; <label>:77:                                     ; preds = %66
  br label %78, !dbg !6586

; <label>:78:                                     ; preds = %77, %76, %65, %41, %28
  %79 = load i8*, i8** %9, align 8, !dbg !6588
  call void @free(i8* %79) #9, !dbg !6589
  %80 = load i8*, i8** %10, align 8, !dbg !6590
  call void @free(i8* %80) #9, !dbg !6591
  %81 = load i32, i32* %12, align 4, !dbg !6592
  ret i32 %81, !dbg !6593
}

declare void @File_GetPathName(i8*, i8**, i8**) #4

declare i8* @Str_Strcpy(i8*, i8*, i64) #4

declare i8* @Posix_RealPath(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @HgfsServerWriteWin32Stream(i8*, i32, i8*, i64, %struct.HgfsSessionInfo*) #0 !dbg !6594 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.HgfsSessionInfo*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !6597, metadata !575), !dbg !6598
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !6599, metadata !575), !dbg !6600
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6601, metadata !575), !dbg !6602
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !6603, metadata !575), !dbg !6604
  store %struct.HgfsSessionInfo* %4, %struct.HgfsSessionInfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %10, metadata !6605, metadata !575), !dbg !6606
  ret i32 95, !dbg !6607
}

declare i32 @Posix_Stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind uwtable
define internal i32 @HgfsConvertComponentCase(i8*, i8*, i8**, i64*) #0 !dbg !6608 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.__dirstream*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !6611, metadata !575), !dbg !6612
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !6613, metadata !575), !dbg !6614
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !6615, metadata !575), !dbg !6616
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !6617, metadata !575), !dbg !6618
  call void @llvm.dbg.declare(metadata %struct.dirent** %9, metadata !6619, metadata !575), !dbg !6630
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %10, metadata !6631, metadata !575), !dbg !6636
  store %struct.__dirstream* null, %struct.__dirstream** %10, align 8, !dbg !6636
  call void @llvm.dbg.declare(metadata i8** %11, metadata !6637, metadata !575), !dbg !6638
  call void @llvm.dbg.declare(metadata i64* %12, metadata !6639, metadata !575), !dbg !6640
  call void @llvm.dbg.declare(metadata i8** %13, metadata !6641, metadata !575), !dbg !6642
  store i8* null, i8** %13, align 8, !dbg !6642
  call void @llvm.dbg.declare(metadata i64* %14, metadata !6643, metadata !575), !dbg !6644
  call void @llvm.dbg.declare(metadata i32* %15, metadata !6645, metadata !575), !dbg !6646
  %18 = load i8*, i8** %6, align 8, !dbg !6647
  %19 = call %struct.__dirstream* @Posix_OpenDir(i8* %18), !dbg !6648
  store %struct.__dirstream* %19, %struct.__dirstream** %10, align 8, !dbg !6649
  %20 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !6650
  %21 = icmp ne %struct.__dirstream* %20, null, !dbg !6650
  br i1 %21, label %25, label %22, !dbg !6652

; <label>:22:                                     ; preds = %4
  %23 = call i32* @__errno_location() #1, !dbg !6653
  %24 = load i32, i32* %23, align 4, !dbg !6655
  store i32 %24, i32* %15, align 4, !dbg !6656
  br label %78, !dbg !6657

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %5, align 8, !dbg !6658
  %27 = call signext i8 @Unicode_IsBufferValid(i8* %26, i64 -1, i32 0), !dbg !6660
  %28 = icmp ne i8 %27, 0, !dbg !6660
  br i1 %28, label %30, label %29, !dbg !6661

; <label>:29:                                     ; preds = %25
  store i32 22, i32* %15, align 4, !dbg !6662
  br label %78, !dbg !6664

; <label>:30:                                     ; preds = %25
  br label %31, !dbg !6665

; <label>:31:                                     ; preds = %76, %45, %30
  %32 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !6666
  %33 = call %struct.dirent* @readdir64(%struct.__dirstream* %32), !dbg !6668
  store %struct.dirent* %33, %struct.dirent** %9, align 8, !dbg !6669
  %34 = icmp ne %struct.dirent* %33, null, !dbg !6670
  br i1 %34, label %35, label %77, !dbg !6670

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %16, metadata !6671, metadata !575), !dbg !6673
  call void @llvm.dbg.declare(metadata i32* %17, metadata !6674, metadata !575), !dbg !6675
  %36 = load %struct.dirent*, %struct.dirent** %9, align 8, !dbg !6676
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4, !dbg !6677
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i32 0, i32 0, !dbg !6676
  store i8* %38, i8** %11, align 8, !dbg !6678
  %39 = load i8*, i8** %11, align 8, !dbg !6679
  %40 = call i64 @strlen(i8* %39) #11, !dbg !6680
  store i64 %40, i64* %12, align 8, !dbg !6681
  %41 = load i8*, i8** %11, align 8, !dbg !6682
  %42 = load i64, i64* %12, align 8, !dbg !6684
  %43 = call signext i8 @Unicode_IsBufferValid(i8* %41, i64 %42, i32 -1), !dbg !6685
  %44 = icmp ne i8 %43, 0, !dbg !6685
  br i1 %44, label %46, label %45, !dbg !6686

; <label>:45:                                     ; preds = %35
  br label %31, !dbg !6687, !llvm.loop !6689

; <label>:46:                                     ; preds = %35
  %47 = load i8*, i8** %11, align 8, !dbg !6690
  %48 = call i8* @Unicode_Alloc(i8* %47, i32 -1), !dbg !6691
  store i8* %48, i8** %16, align 8, !dbg !6692
  %49 = load i8*, i8** %5, align 8, !dbg !6693
  %50 = load i8*, i8** %16, align 8, !dbg !6694
  %51 = call i32 @Unicode_CompareIgnoreCase(i8* %49, i8* %50), !dbg !6695
  store i32 %51, i32* %17, align 4, !dbg !6696
  %52 = load i8*, i8** %16, align 8, !dbg !6697
  call void @free(i8* %52) #9, !dbg !6698
  %53 = load i32, i32* %17, align 4, !dbg !6699
  %54 = icmp eq i32 %53, 0, !dbg !6701
  br i1 %54, label %55, label %76, !dbg !6702

; <label>:55:                                     ; preds = %46
  %56 = load i64, i64* %12, align 8, !dbg !6703
  %57 = add i64 %56, 1, !dbg !6705
  store i64 %57, i64* %14, align 8, !dbg !6706
  %58 = load i64, i64* %14, align 8, !dbg !6707
  %59 = call noalias i8* @malloc(i64 %58) #9, !dbg !6708
  store i8* %59, i8** %13, align 8, !dbg !6709
  %60 = load i8*, i8** %13, align 8, !dbg !6710
  %61 = icmp eq i8* %60, null, !dbg !6712
  br i1 %61, label %62, label %67, !dbg !6713

; <label>:62:                                     ; preds = %55
  %63 = call i32* @__errno_location() #1, !dbg !6714
  %64 = load i32, i32* %63, align 4, !dbg !6716
  store i32 %64, i32* %15, align 4, !dbg !6717
  br label %65, !dbg !6718, !llvm.loop !6719

; <label>:65:                                     ; preds = %62
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsConvertComponentCase, i32 0, i32 0)), !dbg !6720
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsConvertComponentCase, i32 0, i32 0)), !dbg !6725
  br label %66, !dbg !6727

; <label>:66:                                     ; preds = %65
  br label %78, !dbg !6728

; <label>:67:                                     ; preds = %55
  %68 = load i8*, i8** %13, align 8, !dbg !6729
  %69 = load i8*, i8** %11, align 8, !dbg !6730
  %70 = load i64, i64* %14, align 8, !dbg !6731
  %71 = call i8* @Str_Strcpy(i8* %68, i8* %69, i64 %70), !dbg !6732
  store i32 0, i32* %15, align 4, !dbg !6733
  %72 = load i64, i64* %14, align 8, !dbg !6734
  %73 = load i64*, i64** %8, align 8, !dbg !6735
  store i64 %72, i64* %73, align 8, !dbg !6736
  %74 = load i8*, i8** %13, align 8, !dbg !6737
  %75 = load i8**, i8*** %7, align 8, !dbg !6738
  store i8* %74, i8** %75, align 8, !dbg !6739
  br label %78, !dbg !6740

; <label>:76:                                     ; preds = %46
  br label %31, !dbg !6741, !llvm.loop !6689

; <label>:77:                                     ; preds = %31
  store i32 2, i32* %15, align 4, !dbg !6743
  br label %78, !dbg !6744

; <label>:78:                                     ; preds = %77, %67, %66, %29, %22
  %79 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !6745
  %80 = icmp ne %struct.__dirstream* %79, null, !dbg !6745
  br i1 %80, label %81, label %84, !dbg !6747

; <label>:81:                                     ; preds = %78
  %82 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !6748
  %83 = call i32 @closedir(%struct.__dirstream* %82), !dbg !6750
  br label %84, !dbg !6751

; <label>:84:                                     ; preds = %81, %78
  %85 = load i32, i32* %15, align 4, !dbg !6752
  %86 = icmp ne i32 %85, 0, !dbg !6752
  br i1 %86, label %87, label %90, !dbg !6754

; <label>:87:                                     ; preds = %84
  %88 = load i8**, i8*** %7, align 8, !dbg !6755
  store i8* null, i8** %88, align 8, !dbg !6757
  %89 = load i64*, i64** %8, align 8, !dbg !6758
  store i64 0, i64* %89, align 8, !dbg !6759
  br label %90, !dbg !6760

; <label>:90:                                     ; preds = %87, %84
  %91 = load i32, i32* %15, align 4, !dbg !6761
  ret i32 %91, !dbg !6762
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsConstructConvertedPath(i8**, i64*, i8*, i64) #0 !dbg !6763 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !6766, metadata !575), !dbg !6767
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !6768, metadata !575), !dbg !6769
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6770, metadata !575), !dbg !6771
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !6772, metadata !575), !dbg !6773
  call void @llvm.dbg.declare(metadata i8** %10, metadata !6774, metadata !575), !dbg !6775
  call void @llvm.dbg.declare(metadata i64* %11, metadata !6776, metadata !575), !dbg !6777
  %13 = load i64, i64* %9, align 8, !dbg !6778
  %14 = sub i64 %13, 1, !dbg !6779
  store i64 %14, i64* %11, align 8, !dbg !6777
  %15 = load i8**, i8*** %6, align 8, !dbg !6780
  %16 = load i8*, i8** %15, align 8, !dbg !6781
  %17 = load i64*, i64** %7, align 8, !dbg !6782
  %18 = load i64, i64* %17, align 8, !dbg !6783
  %19 = load i64, i64* %11, align 8, !dbg !6784
  %20 = add i64 %18, %19, !dbg !6785
  %21 = add i64 %20, 4, !dbg !6786
  %22 = call i8* @realloc(i8* %16, i64 %21) #9, !dbg !6787
  store i8* %22, i8** %10, align 8, !dbg !6788
  %23 = load i8*, i8** %10, align 8, !dbg !6789
  %24 = icmp ne i8* %23, null, !dbg !6789
  br i1 %24, label %31, label %25, !dbg !6791

; <label>:25:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !6792, metadata !575), !dbg !6794
  %26 = call i32* @__errno_location() #1, !dbg !6795
  %27 = load i32, i32* %26, align 4, !dbg !6796
  store i32 %27, i32* %12, align 4, !dbg !6794
  br label %28, !dbg !6797, !llvm.loop !6798

; <label>:28:                                     ; preds = %25
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsConstructConvertedPath, i32 0, i32 0)), !dbg !6799
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsConstructConvertedPath, i32 0, i32 0)), !dbg !6804
  br label %29, !dbg !6806

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %12, align 4, !dbg !6807
  store i32 %30, i32* %5, align 4, !dbg !6808
  br label %49, !dbg !6808

; <label>:31:                                     ; preds = %4
  %32 = load i8*, i8** %10, align 8, !dbg !6809
  %33 = load i8**, i8*** %6, align 8, !dbg !6810
  store i8* %32, i8** %33, align 8, !dbg !6811
  %34 = load i64, i64* %11, align 8, !dbg !6812
  %35 = add i64 %34, 4, !dbg !6813
  %36 = load i64*, i64** %7, align 8, !dbg !6814
  %37 = load i64, i64* %36, align 8, !dbg !6815
  %38 = add i64 %37, %35, !dbg !6815
  store i64 %38, i64* %36, align 8, !dbg !6815
  %39 = load i8*, i8** %10, align 8, !dbg !6816
  %40 = load i64*, i64** %7, align 8, !dbg !6817
  %41 = load i64, i64* %40, align 8, !dbg !6818
  %42 = call i8* @Str_Strncat(i8* %39, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i64 2), !dbg !6819
  %43 = load i8*, i8** %10, align 8, !dbg !6820
  %44 = load i64*, i64** %7, align 8, !dbg !6821
  %45 = load i64, i64* %44, align 8, !dbg !6822
  %46 = load i8*, i8** %8, align 8, !dbg !6823
  %47 = load i64, i64* %11, align 8, !dbg !6824
  %48 = call i8* @Str_Strncat(i8* %43, i64 %45, i8* %46, i64 %47), !dbg !6825
  store i32 0, i32* %5, align 4, !dbg !6826
  br label %49, !dbg !6826

; <label>:49:                                     ; preds = %31, %29
  %50 = load i32, i32* %5, align 4, !dbg !6827
  ret i32 %50, !dbg !6827
}

declare %struct.__dirstream* @Posix_OpenDir(i8*) #4

declare %struct.dirent* @readdir64(%struct.__dirstream*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #8 !dbg !6828 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !6833, metadata !575), !dbg !6834
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !6835, metadata !575), !dbg !6836
  %5 = load i8*, i8** %3, align 8, !dbg !6837
  %6 = load i32, i32* %4, align 4, !dbg !6838
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !6839
  ret i8* %7, !dbg !6840
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Unicode_CompareIgnoreCase(i8*, i8*) #8 !dbg !6841 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !6845, metadata !575), !dbg !6846
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !6847, metadata !575), !dbg !6848
  %5 = load i8*, i8** %3, align 8, !dbg !6849
  %6 = load i8*, i8** %4, align 8, !dbg !6850
  %7 = call i32 @Unicode_CompareRange(i8* %5, i64 0, i64 -1, i8* %6, i64 0, i64 -1, i8 signext 1), !dbg !6851
  ret i32 %7, !dbg !6852
}

declare i32 @closedir(%struct.__dirstream*) #4

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #4

declare i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #4

declare i8* @Str_Strncat(i8*, i64, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i64 @HgfsGetCreationTime(%struct.stat*) #0 !dbg !6853 {
  %2 = alloca %struct.stat*, align 8
  %3 = alloca i64, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !6858, metadata !575), !dbg !6859
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6860, metadata !575), !dbg !6861
  %4 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !6862
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !6863
  %6 = call i64 @HgfsConvertTimeSpecToNtTime(%struct.timespec* %5), !dbg !6864
  store i64 %6, i64* %3, align 8, !dbg !6865
  %7 = load i64, i64* %3, align 8, !dbg !6866
  ret i64 %7, !dbg !6867
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @HgfsConvertTimeSpecToNtTime(%struct.timespec*) #8 !dbg !6868 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %2, metadata !6873, metadata !575), !dbg !6874
  %3 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !6875
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !6876
  %5 = load i64, i64* %4, align 8, !dbg !6876
  %6 = load %struct.timespec*, %struct.timespec** %2, align 8, !dbg !6877
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1, !dbg !6878
  %8 = load i64, i64* %7, align 8, !dbg !6878
  %9 = call i64 @HgfsConvertToNtTime(i64 %5, i64 %8), !dbg !6879
  ret i64 %9, !dbg !6880
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind uwtable
define internal i32 @HgfsGetHiddenXAttr(i8*, i8*) #0 !dbg !6881 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !6884, metadata !575), !dbg !6885
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !6886, metadata !575), !dbg !6887
  %5 = load i8*, i8** %4, align 8, !dbg !6888
  store i8 0, i8* %5, align 1, !dbg !6889
  ret i32 0, !dbg !6890
}

declare i32 @HgfsConvertFromNtTimeNsec(%struct.timespec*, i64) #4

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #3

; Function Attrs: nounwind
declare i32 @getrlimit64(i32, %struct.rlimit*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!557, !558}
!llvm.ident = !{!559}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !507, globals: !546)
!1 = !DIFile(filename: "hgfsServerLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!2 = !{!3, !19, !89, !95, !101, !108, !116, !128, !133, !138, !143, !148, !152, !485}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/cpName.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 68, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsProto.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!22 = !DIEnumerator(name: "HGFS_OP_OPEN", value: 0)
!23 = !DIEnumerator(name: "HGFS_OP_READ", value: 1)
!24 = !DIEnumerator(name: "HGFS_OP_WRITE", value: 2)
!25 = !DIEnumerator(name: "HGFS_OP_CLOSE", value: 3)
!26 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN", value: 4)
!27 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ", value: 5)
!28 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE", value: 6)
!29 = !DIEnumerator(name: "HGFS_OP_GETATTR", value: 7)
!30 = !DIEnumerator(name: "HGFS_OP_SETATTR", value: 8)
!31 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR", value: 9)
!32 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE", value: 10)
!33 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR", value: 11)
!34 = !DIEnumerator(name: "HGFS_OP_RENAME", value: 12)
!35 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO", value: 13)
!36 = !DIEnumerator(name: "HGFS_OP_OPEN_V2", value: 14)
!37 = !DIEnumerator(name: "HGFS_OP_GETATTR_V2", value: 15)
!38 = !DIEnumerator(name: "HGFS_OP_SETATTR_V2", value: 16)
!39 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V2", value: 17)
!40 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK", value: 18)
!41 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE", value: 19)
!42 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V2", value: 20)
!43 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V2", value: 21)
!44 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V2", value: 22)
!45 = !DIEnumerator(name: "HGFS_OP_RENAME_V2", value: 23)
!46 = !DIEnumerator(name: "HGFS_OP_OPEN_V3", value: 24)
!47 = !DIEnumerator(name: "HGFS_OP_READ_V3", value: 25)
!48 = !DIEnumerator(name: "HGFS_OP_WRITE_V3", value: 26)
!49 = !DIEnumerator(name: "HGFS_OP_CLOSE_V3", value: 27)
!50 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN_V3", value: 28)
!51 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V3", value: 29)
!52 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE_V3", value: 30)
!53 = !DIEnumerator(name: "HGFS_OP_GETATTR_V3", value: 31)
!54 = !DIEnumerator(name: "HGFS_OP_SETATTR_V3", value: 32)
!55 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V3", value: 33)
!56 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V3", value: 34)
!57 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V3", value: 35)
!58 = !DIEnumerator(name: "HGFS_OP_RENAME_V3", value: 36)
!59 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V3", value: 37)
!60 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK_V3", value: 38)
!61 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE_V3", value: 39)
!62 = !DIEnumerator(name: "HGFS_OP_WRITE_WIN32_STREAM_V3", value: 40)
!63 = !DIEnumerator(name: "HGFS_OP_CREATE_SESSION_V4", value: 41)
!64 = !DIEnumerator(name: "HGFS_OP_DESTROY_SESSION_V4", value: 42)
!65 = !DIEnumerator(name: "HGFS_OP_READ_FAST_V4", value: 43)
!66 = !DIEnumerator(name: "HGFS_OP_WRITE_FAST_V4", value: 44)
!67 = !DIEnumerator(name: "HGFS_OP_SET_WATCH_V4", value: 45)
!68 = !DIEnumerator(name: "HGFS_OP_REMOVE_WATCH_V4", value: 46)
!69 = !DIEnumerator(name: "HGFS_OP_NOTIFY_V4", value: 47)
!70 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V4", value: 48)
!71 = !DIEnumerator(name: "HGFS_OP_OPEN_V4", value: 49)
!72 = !DIEnumerator(name: "HGFS_OP_ENUMERATE_STREAMS_V4", value: 50)
!73 = !DIEnumerator(name: "HGFS_OP_GETATTR_V4", value: 51)
!74 = !DIEnumerator(name: "HGFS_OP_SETATTR_V4", value: 52)
!75 = !DIEnumerator(name: "HGFS_OP_DELETE_V4", value: 53)
!76 = !DIEnumerator(name: "HGFS_OP_LINKMOVE_V4", value: 54)
!77 = !DIEnumerator(name: "HGFS_OP_FSCTL_V4", value: 55)
!78 = !DIEnumerator(name: "HGFS_OP_ACCESS_CHECK_V4", value: 56)
!79 = !DIEnumerator(name: "HGFS_OP_FSYNC_V4", value: 57)
!80 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V4", value: 58)
!81 = !DIEnumerator(name: "HGFS_OP_OPLOCK_ACQUIRE_V4", value: 59)
!82 = !DIEnumerator(name: "HGFS_OP_OPLOCK_BREAK_V4", value: 60)
!83 = !DIEnumerator(name: "HGFS_OP_LOCK_BYTE_RANGE_V4", value: 61)
!84 = !DIEnumerator(name: "HGFS_OP_UNLOCK_BYTE_RANGE_V4", value: 62)
!85 = !DIEnumerator(name: "HGFS_OP_QUERY_EAS_V4", value: 63)
!86 = !DIEnumerator(name: "HGFS_OP_SET_EAS_V4", value: 64)
!87 = !DIEnumerator(name: "HGFS_OP_MAX", value: 65)
!88 = !DIEnumerator(name: "HGFS_OP_NEW_HEADER", value: 255)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 95, size: 32, align: 32, elements: !91)
!90 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "HGFS_FILE_TYPE_REGULAR", value: 0)
!93 = !DIEnumerator(name: "HGFS_FILE_TYPE_DIRECTORY", value: 1)
!94 = !DIEnumerator(name: "HGFS_FILE_TYPE_SYMLINK", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 119, size: 32, align: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "HGFS_OPEN_MODE_READ_ONLY", value: 0)
!98 = !DIEnumerator(name: "HGFS_OPEN_MODE_WRITE_ONLY", value: 1)
!99 = !DIEnumerator(name: "HGFS_OPEN_MODE_READ_WRITE", value: 2)
!100 = !DIEnumerator(name: "HGFS_OPEN_MODE_ACCMODES", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 194, size: 32, align: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "HGFS_OPEN", value: 0)
!104 = !DIEnumerator(name: "HGFS_OPEN_EMPTY", value: 1)
!105 = !DIEnumerator(name: "HGFS_OPEN_CREATE", value: 2)
!106 = !DIEnumerator(name: "HGFS_OPEN_CREATE_SAFE", value: 3)
!107 = !DIEnumerator(name: "HGFS_OPEN_CREATE_EMPTY", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 294, size: 32, align: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "HGFS_LOCK_NONE", value: 0)
!111 = !DIEnumerator(name: "HGFS_LOCK_OPPORTUNISTIC", value: 1)
!112 = !DIEnumerator(name: "HGFS_LOCK_EXCLUSIVE", value: 2)
!113 = !DIEnumerator(name: "HGFS_LOCK_SHARED", value: 3)
!114 = !DIEnumerator(name: "HGFS_LOCK_BATCH", value: 4)
!115 = !DIEnumerator(name: "HGFS_LOCK_LEASE", value: 5)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 51, size: 32, align: 32, elements: !118)
!117 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!120 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!121 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!122 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!123 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!124 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!125 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!126 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!127 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 297, size: 32, align: 32, elements: !130)
!129 = !DIFile(filename: "hgfsServerInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "HGFS_SESSION_STATE_OPEN", value: 0)
!132 = !DIEnumerator(name: "HGFS_SESSION_STATE_CLOSED", value: 1)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 111, size: 32, align: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "FILENODE_STATE_UNUSED", value: 0)
!136 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_CACHED", value: 1)
!137 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_NOT_CACHED", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 118, size: 32, align: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_DIR", value: 0)
!141 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_BASE", value: 1)
!142 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_OTHER", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 627, size: 32, align: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "HGFS_FILE_NAME_DEFAULT_CASE", value: 0)
!146 = !DIEnumerator(name: "HGFS_FILE_NAME_CASE_SENSITIVE", value: 1)
!147 = !DIEnumerator(name: "HGFS_FILE_NAME_CASE_INSENSITIVE", value: 2)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 129, size: 32, align: 32, elements: !149)
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "VOLUME_INFO_TYPE_MIN", value: 0)
!151 = !DIEnumerator(name: "VOLUME_INFO_TYPE_MAX", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 58, size: 32, align: 32, elements: !154)
!153 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!155 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!156 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!157 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!158 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!159 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!160 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!161 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!162 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!163 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!164 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!165 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!166 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!167 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!168 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!169 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!170 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!171 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!172 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!173 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!174 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!175 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!176 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!177 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!178 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!179 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!180 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!181 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!182 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!183 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!184 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!185 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!186 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!187 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!188 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!189 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!190 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!191 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!192 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!193 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!194 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!195 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!196 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!197 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!198 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!199 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!200 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!201 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!202 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!203 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!204 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!205 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!206 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!207 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!208 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!209 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!210 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!211 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!212 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!213 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!214 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!215 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!216 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!217 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!218 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!219 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!220 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!221 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!222 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!223 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!224 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!225 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!226 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!227 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!228 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!229 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!230 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!231 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!232 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!233 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!234 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!235 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!236 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!237 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!238 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!239 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!240 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!241 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!242 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!243 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!244 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!245 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!246 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!247 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!248 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!249 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!250 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!251 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!252 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!253 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!254 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!255 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!256 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!257 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!258 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!259 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!260 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!261 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!262 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!263 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!264 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!265 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!266 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!267 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!268 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!269 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!270 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!271 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!272 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!273 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!274 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!275 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!276 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!277 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!278 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!279 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!280 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!281 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!282 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!283 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!284 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!285 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!286 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!287 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!288 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!289 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!290 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!291 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!292 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!293 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!294 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!295 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!296 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!297 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!298 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!299 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!300 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!301 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!302 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!303 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!304 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!305 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!306 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!307 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!308 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!309 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!310 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!311 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!312 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!313 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!314 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!315 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!316 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!317 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!318 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!319 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!320 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!321 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!322 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!323 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!324 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!325 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!326 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!327 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!328 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!331 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!332 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!333 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!334 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!335 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!336 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!337 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!338 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!339 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!340 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!341 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!342 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!343 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!344 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!345 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!346 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!347 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!348 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!349 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!350 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!351 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!352 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!353 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!354 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!355 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!356 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!357 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!358 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!359 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!360 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!361 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!362 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!363 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!364 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!365 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!366 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!367 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!368 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!369 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!370 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!371 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!372 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!373 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!374 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!375 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!376 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!377 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!378 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!379 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!380 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!381 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!382 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!383 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!384 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!385 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!386 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!387 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!388 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!389 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!390 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!391 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!392 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!393 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!394 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!395 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!396 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!397 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!398 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!399 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!400 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!401 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!402 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!403 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!404 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!405 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!406 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!407 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!408 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!409 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!410 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!411 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!412 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!413 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!414 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!415 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!416 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!417 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!418 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!419 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!420 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!421 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!422 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!423 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!424 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!425 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!426 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!427 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!428 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!429 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!430 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!431 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!432 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!433 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!434 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!435 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!436 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!437 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!438 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!439 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!440 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!441 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!442 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!443 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!444 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!445 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!446 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!447 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!448 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!449 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!450 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!451 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!452 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!453 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!454 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!455 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!456 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!457 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!458 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!459 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!460 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!461 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!462 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!463 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!464 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!465 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!466 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!467 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!468 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!469 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!470 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!471 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!472 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!473 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!474 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!475 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!476 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!477 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!478 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!479 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!480 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!481 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!482 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!483 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!484 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !486, line: 31, size: 32, align: 32, elements: !487)
!486 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!488 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!489 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!490 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!491 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!492 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!493 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!494 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!495 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!496 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!497 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!498 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!499 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!500 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!501 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!502 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!503 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!504 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!505 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!506 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!507 = !{!508, !509, !514, !515, !510, !519, !521, !524, !537}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsHandle", file: !20, line: 58, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !511, line: 173, baseType: !512)
!511 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !513, line: 51, baseType: !514)
!513 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!514 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !516, line: 80, baseType: !517)
!516 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !518, line: 125, baseType: !514)
!518 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectoryEntry", file: !526, line: 95, baseType: !527)
!526 = !DIFile(filename: "hgfsServerLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DirectoryEntry", file: !526, line: 89, size: 2240, align: 64, elements: !528)
!528 = !{!529, !533, !534, !538, !542}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !527, file: !526, line: 90, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !511, line: 171, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !513, line: 55, baseType: !532)
!532 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !527, file: !526, line: 91, baseType: !530, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !527, file: !526, line: 92, baseType: !535, size: 16, align: 16, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !511, line: 175, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !513, line: 49, baseType: !537)
!537 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !527, file: !526, line: 93, baseType: !539, size: 8, align: 8, offset: 144)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !511, line: 177, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !513, line: 48, baseType: !541)
!541 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !527, file: !526, line: 94, baseType: !543, size: 2048, align: 8, offset: 152)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 2048, align: 8, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 256)
!546 = !{!547, !553}
!547 = distinct !DIGlobalVariable(name: "HgfsServerOpenMode", scope: !0, file: !526, line: 314, type: !548, isLocal: true, isDefinition: true, variable: [3 x i32]* @HgfsServerOpenMode)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 96, align: 32, elements: !551)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!551 = !{!552}
!552 = !DISubrange(count: 3)
!553 = distinct !DIGlobalVariable(name: "HgfsServerOpenFlags", scope: !0, file: !526, line: 302, type: !554, isLocal: true, isDefinition: true, variable: [5 x i32]* @HgfsServerOpenFlags)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 160, align: 32, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 5)
!557 = !{i32 2, !"Dwarf Version", i32 4}
!558 = !{i32 2, !"Debug Info Version", i32 3}
!559 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!560 = distinct !DISubprogram(name: "futimes", scope: !526, file: !526, line: 247, type: !561, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!561 = !DISubroutineType(types: !562)
!562 = !{!550, !550, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !566, line: 30, size: 128, align: 64, elements: !567)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!567 = !{!568, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !565, file: !566, line: 32, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !518, line: 139, baseType: !570)
!570 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !565, file: !566, line: 33, baseType: !572, size: 64, align: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !518, line: 141, baseType: !570)
!573 = !{}
!574 = !DILocalVariable(name: "fd", arg: 1, scope: !560, file: !526, line: 247, type: !550)
!575 = !DIExpression()
!576 = !DILocation(line: 247, column: 13, scope: !560)
!577 = !DILocalVariable(name: "times", arg: 2, scope: !560, file: !526, line: 247, type: !563)
!578 = !DILocation(line: 247, column: 38, scope: !560)
!579 = !DILocalVariable(name: "mytimes", scope: !560, file: !526, line: 255, type: !580)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 256, align: 64, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 2)
!583 = !DILocation(line: 255, column: 19, scope: !560)
!584 = !DILocalVariable(name: "nameBuffer", scope: !560, file: !526, line: 258, type: !585)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 200, align: 8, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 25)
!588 = !DILocation(line: 258, column: 9, scope: !560)
!589 = !DILocation(line: 260, column: 4, scope: !560)
!590 = !DILocation(line: 260, column: 17, scope: !560)
!591 = !DILocation(line: 261, column: 4, scope: !560)
!592 = !DILocation(line: 261, column: 17, scope: !560)
!593 = !DILocation(line: 262, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !560, file: !526, line: 262, column: 8)
!595 = !DILocation(line: 262, column: 71, scope: !594)
!596 = !DILocation(line: 262, column: 8, scope: !594)
!597 = !DILocation(line: 262, column: 75, scope: !594)
!598 = !DILocation(line: 262, column: 8, scope: !560)
!599 = !DILocation(line: 263, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !594, file: !526, line: 262, column: 80)
!601 = !DILocation(line: 265, column: 24, scope: !560)
!602 = !DILocation(line: 265, column: 36, scope: !560)
!603 = !DILocation(line: 265, column: 11, scope: !560)
!604 = !DILocation(line: 265, column: 4, scope: !560)
!605 = !DILocation(line: 269, column: 1, scope: !560)
!606 = distinct !DISubprogram(name: "HgfsPlatformConvertFromNameStatus", scope: !526, file: !526, line: 411, type: !607, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!607 = !DISubroutineType(types: !608)
!608 = !{!609, !611}
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsInternalStatus", file: !610, line: 82, baseType: !550)
!610 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsUtil.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNameStatus", file: !4, line: 79, baseType: !3)
!612 = !DILocalVariable(name: "status", arg: 1, scope: !606, file: !526, line: 411, type: !611)
!613 = !DILocation(line: 411, column: 50, scope: !606)
!614 = !DILocation(line: 413, column: 11, scope: !606)
!615 = !DILocation(line: 413, column: 4, scope: !606)
!616 = !DILocation(line: 415, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !606, file: !526, line: 413, column: 19)
!618 = !DILocation(line: 422, column: 7, scope: !617)
!619 = !DILocation(line: 424, column: 7, scope: !617)
!620 = !DILocation(line: 426, column: 7, scope: !617)
!621 = !DILocation(line: 428, column: 7, scope: !617)
!622 = !DILocation(line: 430, column: 7, scope: !617)
!623 = !DILocation(line: 432, column: 7, scope: !617)
!624 = !DILocation(line: 434, column: 7, scope: !617)
!625 = !DILocation(line: 436, column: 7, scope: !617)
!626 = !DILocation(line: 438, column: 1, scope: !606)
!627 = distinct !DISubprogram(name: "HgfsPlatformGetDefaultDirAttrs", scope: !526, file: !526, line: 459, type: !628, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileAttrInfo", file: !129, line: 464, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileAttrInfo", file: !129, line: 440, size: 1408, align: 64, elements: !633)
!633 = !{!634, !636, !638, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "requestType", scope: !632, file: !129, line: 441, baseType: !635, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOp", file: !20, line: 152, baseType: !19)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !632, file: !129, line: 442, baseType: !637, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAttrValid", file: !20, line: 434, baseType: !530)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !129, line: 443, baseType: !639, size: 32, align: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileType", file: !90, line: 99, baseType: !89)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !632, file: !129, line: 444, baseType: !530, size: 64, align: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "creationTime", scope: !632, file: !129, line: 445, baseType: !530, size: 64, align: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "accessTime", scope: !632, file: !129, line: 446, baseType: !530, size: 64, align: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "writeTime", scope: !632, file: !129, line: 447, baseType: !530, size: 64, align: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attrChangeTime", scope: !632, file: !129, line: 448, baseType: !530, size: 64, align: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "specialPerms", scope: !632, file: !129, line: 450, baseType: !646, size: 8, align: 8, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsPermissions", file: !20, line: 220, baseType: !539)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ownerPerms", scope: !632, file: !129, line: 451, baseType: !646, size: 8, align: 8, offset: 520)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "groupPerms", scope: !632, file: !129, line: 452, baseType: !646, size: 8, align: 8, offset: 528)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "otherPerms", scope: !632, file: !129, line: 453, baseType: !646, size: 8, align: 8, offset: 536)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !129, line: 454, baseType: !651, size: 64, align: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAttrFlags", file: !20, line: 385, baseType: !530)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "allocationSize", scope: !632, file: !129, line: 455, baseType: !530, size: 64, align: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "userId", scope: !632, file: !129, line: 456, baseType: !510, size: 32, align: 32, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "groupId", scope: !632, file: !129, line: 457, baseType: !510, size: 32, align: 32, offset: 736)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hostFileId", scope: !632, file: !129, line: 458, baseType: !530, size: 64, align: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "volumeId", scope: !632, file: !129, line: 459, baseType: !510, size: 32, align: 32, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "effectivePerms", scope: !632, file: !129, line: 460, baseType: !510, size: 32, align: 32, offset: 864)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "eaSize", scope: !632, file: !129, line: 461, baseType: !510, size: 32, align: 32, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reparseTag", scope: !632, file: !129, line: 462, baseType: !510, size: 32, align: 32, offset: 928)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "shortName", scope: !632, file: !129, line: 463, baseType: !661, size: 416, align: 8, offset: 960)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShortFileName", file: !20, line: 620, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsShortFileName", file: !20, line: 615, size: 416, align: 8, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !662, file: !20, line: 616, baseType: !510, size: 32, align: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !20, line: 617, baseType: !666, size: 384, align: 8, offset: 32)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 384, align: 8, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 48)
!669 = !DILocalVariable(name: "attr", arg: 1, scope: !627, file: !526, line: 459, type: !630)
!670 = !DILocation(line: 459, column: 50, scope: !627)
!671 = !DILocalVariable(name: "tv", scope: !627, file: !526, line: 461, type: !565)
!672 = !DILocation(line: 461, column: 19, scope: !627)
!673 = !DILocalVariable(name: "hgfsTime", scope: !627, file: !526, line: 462, type: !530)
!674 = !DILocation(line: 462, column: 11, scope: !627)
!675 = !DILocation(line: 466, column: 4, scope: !627)
!676 = !DILocation(line: 466, column: 10, scope: !627)
!677 = !DILocation(line: 466, column: 15, scope: !627)
!678 = !DILocation(line: 467, column: 4, scope: !627)
!679 = !DILocation(line: 467, column: 10, scope: !627)
!680 = !DILocation(line: 467, column: 15, scope: !627)
!681 = !DILocation(line: 474, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !627, file: !526, line: 474, column: 8)
!683 = !DILocation(line: 474, column: 31, scope: !682)
!684 = !DILocation(line: 474, column: 8, scope: !627)
!685 = !DILocation(line: 475, column: 16, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !526, line: 474, column: 37)
!687 = !DILocation(line: 476, column: 4, scope: !686)
!688 = !DILocation(line: 477, column: 41, scope: !689)
!689 = distinct !DILexicalBlock(scope: !682, file: !526, line: 476, column: 11)
!690 = !DILocation(line: 477, column: 52, scope: !689)
!691 = !DILocation(line: 477, column: 60, scope: !689)
!692 = !DILocation(line: 477, column: 18, scope: !689)
!693 = !DILocation(line: 477, column: 16, scope: !689)
!694 = !DILocation(line: 479, column: 25, scope: !627)
!695 = !DILocation(line: 479, column: 4, scope: !627)
!696 = !DILocation(line: 479, column: 10, scope: !627)
!697 = !DILocation(line: 479, column: 23, scope: !627)
!698 = !DILocation(line: 480, column: 23, scope: !627)
!699 = !DILocation(line: 480, column: 4, scope: !627)
!700 = !DILocation(line: 480, column: 10, scope: !627)
!701 = !DILocation(line: 480, column: 21, scope: !627)
!702 = !DILocation(line: 481, column: 22, scope: !627)
!703 = !DILocation(line: 481, column: 4, scope: !627)
!704 = !DILocation(line: 481, column: 10, scope: !627)
!705 = !DILocation(line: 481, column: 20, scope: !627)
!706 = !DILocation(line: 482, column: 27, scope: !627)
!707 = !DILocation(line: 482, column: 4, scope: !627)
!708 = !DILocation(line: 482, column: 10, scope: !627)
!709 = !DILocation(line: 482, column: 25, scope: !627)
!710 = !DILocation(line: 483, column: 4, scope: !627)
!711 = !DILocation(line: 483, column: 10, scope: !627)
!712 = !DILocation(line: 483, column: 23, scope: !627)
!713 = !DILocation(line: 484, column: 4, scope: !627)
!714 = !DILocation(line: 484, column: 10, scope: !627)
!715 = !DILocation(line: 484, column: 21, scope: !627)
!716 = !DILocation(line: 485, column: 4, scope: !627)
!717 = !DILocation(line: 485, column: 10, scope: !627)
!718 = !DILocation(line: 485, column: 21, scope: !627)
!719 = !DILocation(line: 486, column: 4, scope: !627)
!720 = !DILocation(line: 486, column: 10, scope: !627)
!721 = !DILocation(line: 486, column: 21, scope: !627)
!722 = !DILocation(line: 488, column: 4, scope: !627)
!723 = !DILocation(line: 488, column: 10, scope: !627)
!724 = !DILocation(line: 488, column: 15, scope: !627)
!725 = !DILocation(line: 498, column: 1, scope: !627)
!726 = distinct !DISubprogram(name: "HgfsPlatformInit", scope: !526, file: !526, line: 560, type: !727, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!727 = !DISubroutineType(types: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !511, line: 230, baseType: !520)
!730 = !DILocation(line: 562, column: 4, scope: !726)
!731 = distinct !DISubprogram(name: "HgfsPlatformDestroy", scope: !526, file: !526, line: 583, type: !732, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!732 = !DISubroutineType(types: !733)
!733 = !{null}
!734 = !DILocation(line: 585, column: 1, scope: !731)
!735 = distinct !DISubprogram(name: "HgfsServerGetOpenMode", scope: !526, file: !526, line: 613, type: !736, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!736 = !DISubroutineType(types: !737)
!737 = !{!729, !738, !778}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileOpenInfo", file: !129, line: 438, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileOpenInfo", file: !129, line: 417, size: 960, align: 64, elements: !741)
!741 = !{!742, !743, !744, !746, !748, !750, !751, !752, !753, !754, !755, !756, !757, !758, !760, !761, !762, !763, !764, !765}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "requestType", scope: !740, file: !129, line: 418, baseType: !635, size: 32, align: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !740, file: !129, line: 419, baseType: !509, size: 32, align: 32, offset: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !740, file: !129, line: 420, baseType: !745, size: 64, align: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpenValid", file: !20, line: 408, baseType: !530)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !740, file: !129, line: 421, baseType: !747, size: 32, align: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpenMode", file: !90, line: 125, baseType: !95)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !129, line: 422, baseType: !749, size: 32, align: 32, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpenFlags", file: !20, line: 200, baseType: !101)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "specialPerms", scope: !740, file: !129, line: 423, baseType: !646, size: 8, align: 8, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ownerPerms", scope: !740, file: !129, line: 424, baseType: !646, size: 8, align: 8, offset: 200)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "groupPerms", scope: !740, file: !129, line: 425, baseType: !646, size: 8, align: 8, offset: 208)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "otherPerms", scope: !740, file: !129, line: 426, baseType: !646, size: 8, align: 8, offset: 216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !740, file: !129, line: 427, baseType: !651, size: 64, align: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "allocationSize", scope: !740, file: !129, line: 428, baseType: !530, size: 64, align: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "desiredAccess", scope: !740, file: !129, line: 429, baseType: !510, size: 32, align: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "shareAccess", scope: !740, file: !129, line: 430, baseType: !510, size: 32, align: 32, offset: 416)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "desiredLock", scope: !740, file: !129, line: 431, baseType: !759, size: 32, align: 32, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLockType", file: !20, line: 301, baseType: !108)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "acquiredLock", scope: !740, file: !129, line: 432, baseType: !759, size: 32, align: 32, offset: 480)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cpNameSize", scope: !740, file: !129, line: 433, baseType: !510, size: 32, align: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cpName", scope: !740, file: !129, line: 434, baseType: !522, size: 64, align: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Name", scope: !740, file: !129, line: 435, baseType: !519, size: 64, align: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "caseFlags", scope: !740, file: !129, line: 436, baseType: !510, size: 32, align: 32, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !740, file: !129, line: 437, baseType: !766, size: 192, align: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShareInfo", file: !129, line: 163, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsShareInfo", file: !129, line: 145, size: 192, align: 64, elements: !768)
!768 = !{!769, !770, !773, !774, !775}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rootDir", scope: !767, file: !129, line: 147, baseType: !522, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rootDirLen", scope: !767, file: !129, line: 150, baseType: !771, size: 64, align: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !772, line: 216, baseType: !532)
!772 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!773 = !DIDerivedType(tag: DW_TAG_member, name: "readPermissions", scope: !767, file: !129, line: 153, baseType: !729, size: 8, align: 8, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "writePermissions", scope: !767, file: !129, line: 156, baseType: !729, size: 8, align: 8, offset: 136)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !767, file: !129, line: 162, baseType: !776, size: 32, align: 32, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolderHandle", file: !777, line: 134, baseType: !510)
!777 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!779 = !DILocalVariable(name: "openInfo", arg: 1, scope: !735, file: !526, line: 613, type: !738)
!780 = !DILocation(line: 613, column: 41, scope: !735)
!781 = !DILocalVariable(name: "modeOut", arg: 2, scope: !735, file: !526, line: 614, type: !778)
!782 = !DILocation(line: 614, column: 31, scope: !735)
!783 = !DILocation(line: 623, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !735, file: !526, line: 623, column: 8)
!785 = !DILocation(line: 623, column: 19, scope: !784)
!786 = !DILocation(line: 623, column: 24, scope: !784)
!787 = !DILocation(line: 623, column: 36, scope: !784)
!788 = !DILocation(line: 623, column: 8, scope: !735)
!789 = !DILocation(line: 624, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !784, file: !526, line: 623, column: 42)
!791 = !DILocation(line: 624, column: 16, scope: !790)
!792 = !DILocation(line: 625, column: 7, scope: !790)
!793 = !DILocation(line: 628, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !735, file: !526, line: 628, column: 8)
!795 = !DILocation(line: 628, column: 21, scope: !794)
!796 = !DILocation(line: 628, column: 26, scope: !794)
!797 = !DILocation(line: 628, column: 53, scope: !794)
!798 = !DILocation(line: 628, column: 81, scope: !794)
!799 = !DILocation(line: 628, column: 85, scope: !800)
!800 = !DILexicalBlockFile(scope: !794, file: !526, discriminator: 1)
!801 = !DILocation(line: 628, column: 95, scope: !800)
!802 = !DILocation(line: 628, column: 100, scope: !800)
!803 = !DILocation(line: 628, column: 127, scope: !800)
!804 = !DILocation(line: 628, column: 156, scope: !800)
!805 = !DILocation(line: 628, column: 160, scope: !806)
!806 = !DILexicalBlockFile(scope: !794, file: !526, discriminator: 2)
!807 = !DILocation(line: 628, column: 170, scope: !806)
!808 = !DILocation(line: 628, column: 175, scope: !806)
!809 = !DILocation(line: 628, column: 202, scope: !806)
!810 = !DILocation(line: 628, column: 8, scope: !806)
!811 = !DILocation(line: 629, column: 58, scope: !812)
!812 = distinct !DILexicalBlock(scope: !794, file: !526, line: 628, column: 233)
!813 = !DILocation(line: 629, column: 68, scope: !812)
!814 = !DILocation(line: 629, column: 7, scope: !812)
!815 = !DILocation(line: 631, column: 7, scope: !812)
!816 = !DILocation(line: 634, column: 35, scope: !735)
!817 = !DILocation(line: 634, column: 45, scope: !735)
!818 = !DILocation(line: 634, column: 50, scope: !735)
!819 = !DILocation(line: 634, column: 15, scope: !735)
!820 = !DILocation(line: 634, column: 5, scope: !735)
!821 = !DILocation(line: 634, column: 13, scope: !735)
!822 = !DILocation(line: 636, column: 4, scope: !735)
!823 = !DILocation(line: 637, column: 1, scope: !735)
!824 = distinct !DISubprogram(name: "HgfsPlatformCloseFile", scope: !526, file: !526, line: 658, type: !825, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!825 = !DISubroutineType(types: !826)
!826 = !{!609, !827, !508}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "fileDesc", file: !129, line: 28, baseType: !550)
!828 = !DILocalVariable(name: "fileDesc", arg: 1, scope: !824, file: !526, line: 658, type: !827)
!829 = !DILocation(line: 658, column: 32, scope: !824)
!830 = !DILocalVariable(name: "fileCtx", arg: 2, scope: !824, file: !526, line: 659, type: !508)
!831 = !DILocation(line: 659, column: 29, scope: !824)
!832 = !DILocation(line: 661, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !824, file: !526, line: 661, column: 8)
!834 = !DILocation(line: 661, column: 8, scope: !833)
!835 = !DILocation(line: 661, column: 24, scope: !833)
!836 = !DILocation(line: 661, column: 8, scope: !824)
!837 = !DILocalVariable(name: "error", scope: !838, file: !526, line: 662, type: !550)
!838 = distinct !DILexicalBlock(scope: !833, file: !526, line: 661, column: 30)
!839 = !DILocation(line: 662, column: 11, scope: !838)
!840 = !DILocation(line: 662, column: 20, scope: !838)
!841 = !DILocation(line: 662, column: 19, scope: !838)
!842 = !DILocation(line: 664, column: 7, scope: !838)
!843 = distinct !{!843, !842}
!844 = !DILocation(line: 664, column: 33, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !526, discriminator: 1)
!846 = distinct !DILexicalBlock(scope: !847, file: !526, line: 664, column: 31)
!847 = distinct !DILexicalBlock(scope: !848, file: !526, line: 664, column: 16)
!848 = distinct !DILexicalBlock(scope: !838, file: !526, line: 664, column: 10)
!849 = !DILocation(line: 664, column: 201, scope: !845)
!850 = !DILocation(line: 664, column: 228, scope: !845)
!851 = !DILocation(line: 664, column: 211, scope: !852)
!852 = !DILexicalBlockFile(scope: !845, file: !526, discriminator: 2)
!853 = !DILocation(line: 664, column: 112, scope: !854)
!854 = !DILexicalBlockFile(scope: !845, file: !526, discriminator: 3)
!855 = !DILocation(line: 664, column: 239, scope: !845)
!856 = !DILocation(line: 666, column: 14, scope: !838)
!857 = !DILocation(line: 666, column: 7, scope: !838)
!858 = !DILocation(line: 669, column: 4, scope: !824)
!859 = !DILocation(line: 670, column: 1, scope: !824)
!860 = distinct !DISubprogram(name: "HgfsPlatformGetFd", scope: !526, file: !526, line: 753, type: !861, isLocal: false, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!861 = !DISubroutineType(types: !862)
!862 = !{!609, !509, !863, !729, !974}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfo", file: !129, line: 389, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSessionInfo", file: !129, line: 309, size: 5824, align: 64, elements: !866)
!866 = !{!867, !875, !876, !878, !879, !880, !884, !886, !891, !892, !899, !900, !926, !927, !928, !929, !930, !931, !932, !951, !952, !953, !963, !964}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !865, file: !129, line: 311, baseType: !868, size: 128, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !869, line: 94, baseType: !870)
!869 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !869, line: 91, size: 128, align: 64, elements: !871)
!871 = !{!872, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !870, file: !869, line: 92, baseType: !873, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !869, line: 93, baseType: !873, size: 64, align: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "isInactive", scope: !865, file: !129, line: 313, baseType: !729, size: 8, align: 8, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !129, line: 316, baseType: !877, size: 32, align: 32, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionFlags", file: !20, line: 1834, baseType: !510)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sessionId", scope: !865, file: !129, line: 319, baseType: !530, size: 64, align: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "maxPacketSize", scope: !865, file: !129, line: 322, baseType: !510, size: 32, align: 32, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "transportSession", scope: !865, file: !129, line: 325, baseType: !881, size: 64, align: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsTransportSessionInfo", file: !129, line: 96, baseType: !883)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsTransportSessionInfo", file: !129, line: 96, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !865, file: !129, line: 328, baseType: !885, size: 32, align: 32, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfoState", file: !129, line: 300, baseType: !128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "fileIOLock", scope: !865, file: !129, line: 331, baseType: !887, size: 64, align: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !889, line: 38, baseType: !890)
!889 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !889, line: 38, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "numInvalidationAttempts", scope: !865, file: !129, line: 333, baseType: !550, size: 32, align: 32, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !865, file: !129, line: 335, baseType: !893, size: 32, align: 32, offset: 544)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !894, line: 135, baseType: !895)
!894 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !894, line: 133, size: 32, align: 32, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !895, file: !894, line: 134, baseType: !898, size: 32, align: 32)
!898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !510)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArrayLock", scope: !865, file: !129, line: 343, baseType: !887, size: 64, align: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArray", scope: !865, file: !129, line: 346, baseType: !901, size: 64, align: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileNode", file: !129, line: 227, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileNode", file: !129, line: 177, size: 1024, align: 64, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !917, !918, !919, !920, !921, !923, !924, !925}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !903, file: !129, line: 179, baseType: !868, size: 128, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !903, file: !129, line: 182, baseType: !509, size: 32, align: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Name", scope: !903, file: !129, line: 185, baseType: !519, size: 64, align: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "utf8NameLen", scope: !903, file: !129, line: 188, baseType: !771, size: 64, align: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "shareName", scope: !903, file: !129, line: 191, baseType: !519, size: 64, align: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "shareNameLen", scope: !903, file: !129, line: 194, baseType: !771, size: 64, align: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "localId", scope: !903, file: !129, line: 197, baseType: !912, size: 128, align: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLocalId", file: !129, line: 102, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsLocalId", file: !129, line: 99, size: 128, align: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "volumeId", scope: !913, file: !129, line: 100, baseType: !530, size: 64, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fileId", scope: !913, file: !129, line: 101, baseType: !530, size: 64, align: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "fileDesc", scope: !903, file: !129, line: 200, baseType: !827, size: 32, align: 32, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !903, file: !129, line: 203, baseType: !510, size: 32, align: 32, offset: 608)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "shareAccess", scope: !903, file: !129, line: 206, baseType: !510, size: 32, align: 32, offset: 640)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "serverLock", scope: !903, file: !129, line: 209, baseType: !759, size: 32, align: 32, offset: 672)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !903, file: !129, line: 212, baseType: !922, size: 32, align: 32, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileNodeState", file: !129, line: 115, baseType: !133)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !129, line: 215, baseType: !510, size: 32, align: 32, offset: 736)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fileCtx", scope: !903, file: !129, line: 223, baseType: !508, size: 64, align: 64, offset: 768)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !903, file: !129, line: 226, baseType: !766, size: 192, align: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "numNodes", scope: !865, file: !129, line: 349, baseType: !510, size: 32, align: 32, offset: 704)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFreeList", scope: !865, file: !129, line: 352, baseType: !868, size: 128, align: 64, offset: 768)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nodeCachedList", scope: !865, file: !129, line: 355, baseType: !868, size: 128, align: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedOpenNodes", scope: !865, file: !129, line: 358, baseType: !514, size: 32, align: 32, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedLockedNodes", scope: !865, file: !129, line: 361, baseType: !514, size: 32, align: 32, offset: 1056)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "searchArrayLock", scope: !865, file: !129, line: 370, baseType: !887, size: 64, align: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "searchArray", scope: !865, file: !129, line: 373, baseType: !933, size: 64, align: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSearch", file: !129, line: 283, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSearch", file: !129, line: 246, size: 768, align: 64, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944, !947, !948, !950}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !935, file: !129, line: 248, baseType: !868, size: 128, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !129, line: 251, baseType: !510, size: 32, align: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !935, file: !129, line: 254, baseType: !509, size: 32, align: 32, offset: 160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Dir", scope: !935, file: !129, line: 257, baseType: !519, size: 64, align: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "utf8DirLen", scope: !935, file: !129, line: 260, baseType: !771, size: 64, align: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareName", scope: !935, file: !129, line: 263, baseType: !519, size: 64, align: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareNameLen", scope: !935, file: !129, line: 266, baseType: !771, size: 64, align: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dents", scope: !935, file: !129, line: 269, baseType: !945, size: 64, align: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "numDents", scope: !935, file: !129, line: 272, baseType: !510, size: 32, align: 32, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !935, file: !129, line: 279, baseType: !949, size: 32, align: 32, offset: 544)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectorySearchType", file: !129, line: 123, baseType: !138)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !935, file: !129, line: 282, baseType: !766, size: 192, align: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "numSearches", scope: !865, file: !129, line: 376, baseType: !510, size: 32, align: 32, offset: 1216)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "searchFreeList", scope: !865, file: !129, line: 379, baseType: !868, size: 128, align: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "hgfsSessionCapabilities", scope: !865, file: !129, line: 383, baseType: !954, size: 4160, align: 8, offset: 1408)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 4160, align: 8, elements: !961)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapability", file: !20, line: 1808, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsOpCapability", file: !20, line: 1803, size: 64, align: 8, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !956, file: !20, line: 1804, baseType: !635, size: 32, align: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !20, line: 1805, baseType: !960, size: 32, align: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapFlags", file: !20, line: 1702, baseType: !510)
!961 = !{!962}
!962 = !DISubrange(count: 65)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCapabilities", scope: !865, file: !129, line: 385, baseType: !510, size: 32, align: 32, offset: 5568)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "asyncRequestsInfo", scope: !865, file: !129, line: 388, baseType: !965, size: 192, align: 64, offset: 5632)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAsyncRequestInfo", file: !129, line: 307, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsAsyncRequestInfo", file: !129, line: 302, size: 192, align: 64, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "requestCount", scope: !966, file: !129, line: 304, baseType: !893, size: 32, align: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !966, file: !129, line: 305, baseType: !887, size: 64, align: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "requestCountIsZero", scope: !966, file: !129, line: 306, baseType: !971, size: 64, align: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !889, line: 42, baseType: !973)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !889, line: 42, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!975 = !DILocalVariable(name: "hgfsHandle", arg: 1, scope: !860, file: !526, line: 753, type: !509)
!976 = !DILocation(line: 753, column: 30, scope: !860)
!977 = !DILocalVariable(name: "session", arg: 2, scope: !860, file: !526, line: 754, type: !863)
!978 = !DILocation(line: 754, column: 36, scope: !860)
!979 = !DILocalVariable(name: "append", arg: 3, scope: !860, file: !526, line: 755, type: !729)
!980 = !DILocation(line: 755, column: 24, scope: !860)
!981 = !DILocalVariable(name: "fd", arg: 4, scope: !860, file: !526, line: 756, type: !974)
!982 = !DILocation(line: 756, column: 29, scope: !860)
!983 = !DILocalVariable(name: "newFd", scope: !860, file: !526, line: 758, type: !550)
!984 = !DILocation(line: 758, column: 8, scope: !860)
!985 = !DILocalVariable(name: "openFlags", scope: !860, file: !526, line: 758, type: !550)
!986 = !DILocation(line: 758, column: 20, scope: !860)
!987 = !DILocalVariable(name: "node", scope: !860, file: !526, line: 759, type: !902)
!988 = !DILocation(line: 759, column: 17, scope: !860)
!989 = !DILocalVariable(name: "status", scope: !860, file: !526, line: 760, type: !609)
!990 = !DILocation(line: 760, column: 23, scope: !860)
!991 = !DILocation(line: 775, column: 9, scope: !860)
!992 = !DILocation(line: 775, column: 18, scope: !860)
!993 = !DILocation(line: 776, column: 25, scope: !994)
!994 = distinct !DILexicalBlock(scope: !860, file: !526, line: 776, column: 8)
!995 = !DILocation(line: 776, column: 37, scope: !994)
!996 = !DILocation(line: 776, column: 9, scope: !994)
!997 = !DILocation(line: 776, column: 8, scope: !860)
!998 = !DILocation(line: 778, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !526, line: 776, column: 57)
!1000 = distinct !{!1000, !998}
!1001 = !DILocation(line: 778, column: 33, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !526, discriminator: 1)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !526, line: 778, column: 31)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !526, line: 778, column: 16)
!1005 = distinct !DILexicalBlock(scope: !999, file: !526, line: 778, column: 10)
!1006 = !DILocation(line: 778, column: 112, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1002, file: !526, discriminator: 2)
!1008 = !DILocation(line: 778, column: 199, scope: !1002)
!1009 = !DILocation(line: 779, column: 14, scope: !999)
!1010 = !DILocation(line: 780, column: 7, scope: !999)
!1011 = !DILocation(line: 784, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !860, file: !526, line: 784, column: 8)
!1013 = !DILocation(line: 784, column: 33, scope: !1012)
!1014 = !DILocation(line: 784, column: 8, scope: !1012)
!1015 = !DILocation(line: 784, column: 8, scope: !860)
!1016 = !DILocation(line: 790, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !526, line: 790, column: 11)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !526, line: 784, column: 43)
!1019 = !DILocation(line: 790, column: 18, scope: !1017)
!1020 = !DILocation(line: 790, column: 28, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1017, file: !526, discriminator: 1)
!1022 = !DILocation(line: 790, column: 34, scope: !1021)
!1023 = !DILocation(line: 790, column: 11, scope: !1021)
!1024 = !DILocation(line: 791, column: 46, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !526, line: 790, column: 47)
!1026 = !DILocation(line: 791, column: 61, scope: !1025)
!1027 = !DILocation(line: 791, column: 19, scope: !1025)
!1028 = !DILocation(line: 791, column: 17, scope: !1025)
!1029 = !DILocation(line: 792, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !526, line: 792, column: 14)
!1031 = !DILocation(line: 792, column: 21, scope: !1030)
!1032 = !DILocation(line: 792, column: 14, scope: !1025)
!1033 = !DILocation(line: 793, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !526, line: 792, column: 27)
!1035 = distinct !{!1035, !1033}
!1036 = !DILocation(line: 793, column: 39, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !526, discriminator: 1)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !526, line: 793, column: 37)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !526, line: 793, column: 22)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !526, line: 793, column: 16)
!1041 = !DILocation(line: 793, column: 227, scope: !1037)
!1042 = !DILocation(line: 793, column: 118, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1037, file: !526, discriminator: 2)
!1044 = !DILocation(line: 793, column: 240, scope: !1037)
!1045 = !DILocation(line: 795, column: 13, scope: !1034)
!1046 = !DILocation(line: 802, column: 40, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1025, file: !526, line: 802, column: 14)
!1048 = !DILocation(line: 802, column: 52, scope: !1047)
!1049 = !DILocation(line: 802, column: 15, scope: !1047)
!1050 = !DILocation(line: 802, column: 14, scope: !1025)
!1051 = !DILocation(line: 803, column: 13, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !526, line: 802, column: 65)
!1053 = distinct !{!1053, !1051}
!1054 = !DILocation(line: 803, column: 39, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !526, discriminator: 1)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !526, line: 803, column: 37)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !526, line: 803, column: 22)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !526, line: 803, column: 16)
!1059 = !DILocation(line: 803, column: 118, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1055, file: !526, discriminator: 2)
!1061 = !DILocation(line: 803, column: 223, scope: !1055)
!1062 = !DILocation(line: 805, column: 20, scope: !1052)
!1063 = !DILocation(line: 806, column: 13, scope: !1052)
!1064 = !DILocation(line: 808, column: 7, scope: !1025)
!1065 = !DILocation(line: 809, column: 23, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1017, file: !526, line: 808, column: 14)
!1067 = !DILocation(line: 809, column: 16, scope: !1066)
!1068 = !DILocation(line: 810, column: 10, scope: !1066)
!1069 = !DILocation(line: 812, column: 4, scope: !1018)
!1070 = !DILocation(line: 819, column: 36, scope: !860)
!1071 = !DILocation(line: 819, column: 52, scope: !860)
!1072 = !DILocation(line: 819, column: 13, scope: !860)
!1073 = !DILocation(line: 819, column: 11, scope: !860)
!1074 = !DILocation(line: 820, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !860, file: !526, line: 820, column: 8)
!1076 = !DILocation(line: 820, column: 15, scope: !1075)
!1077 = !DILocation(line: 820, column: 8, scope: !860)
!1078 = !DILocation(line: 821, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !526, line: 820, column: 21)
!1080 = !DILocation(line: 828, column: 4, scope: !860)
!1081 = !DILocation(line: 836, column: 28, scope: !860)
!1082 = !DILocation(line: 837, column: 8, scope: !860)
!1083 = !DILocation(line: 837, column: 15, scope: !860)
!1084 = !DILocation(line: 837, column: 13, scope: !860)
!1085 = !DILocation(line: 837, column: 28, scope: !860)
!1086 = !DILocation(line: 837, column: 25, scope: !860)
!1087 = !DILocation(line: 836, column: 12, scope: !860)
!1088 = !DILocation(line: 836, column: 10, scope: !860)
!1089 = !DILocation(line: 839, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !860, file: !526, line: 839, column: 8)
!1091 = !DILocation(line: 839, column: 14, scope: !1090)
!1092 = !DILocation(line: 839, column: 8, scope: !860)
!1093 = !DILocalVariable(name: "error", scope: !1094, file: !526, line: 840, type: !550)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !526, line: 839, column: 19)
!1095 = !DILocation(line: 840, column: 11, scope: !1094)
!1096 = !DILocation(line: 840, column: 20, scope: !1094)
!1097 = !DILocation(line: 840, column: 19, scope: !1094)
!1098 = !DILocation(line: 842, column: 7, scope: !1094)
!1099 = distinct !{!1099, !1098}
!1100 = !DILocation(line: 842, column: 33, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1102, file: !526, discriminator: 1)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !526, line: 842, column: 31)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !526, line: 842, column: 16)
!1104 = distinct !DILexicalBlock(scope: !1094, file: !526, line: 842, column: 10)
!1105 = !DILocation(line: 842, column: 210, scope: !1101)
!1106 = !DILocation(line: 842, column: 8, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1101, file: !526, discriminator: 2)
!1108 = !DILocation(line: 842, column: 7, scope: !1101)
!1109 = !DILocation(line: 842, column: 220, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1101, file: !526, discriminator: 3)
!1111 = !DILocation(line: 842, column: 112, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1101, file: !526, discriminator: 4)
!1113 = !DILocation(line: 842, column: 12, scope: !1101)
!1114 = !DILocation(line: 844, column: 16, scope: !1094)
!1115 = !DILocation(line: 844, column: 14, scope: !1094)
!1116 = !DILocation(line: 845, column: 7, scope: !1094)
!1117 = !DILocation(line: 852, column: 32, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !860, file: !526, line: 852, column: 8)
!1119 = !DILocation(line: 852, column: 44, scope: !1118)
!1120 = !DILocation(line: 852, column: 53, scope: !1118)
!1121 = !DILocation(line: 852, column: 9, scope: !1118)
!1122 = !DILocation(line: 852, column: 8, scope: !860)
!1123 = !DILocation(line: 853, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !526, line: 852, column: 66)
!1125 = distinct !{!1125, !1123}
!1126 = !DILocation(line: 853, column: 33, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !526, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !526, line: 853, column: 31)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !526, line: 853, column: 16)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !526, line: 853, column: 10)
!1131 = !DILocation(line: 853, column: 112, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1127, file: !526, discriminator: 2)
!1133 = !DILocation(line: 853, column: 225, scope: !1127)
!1134 = !DILocation(line: 855, column: 14, scope: !1124)
!1135 = !DILocation(line: 856, column: 7, scope: !1124)
!1136 = !DILocation(line: 860, column: 24, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !860, file: !526, line: 860, column: 8)
!1138 = !DILocation(line: 860, column: 36, scope: !1137)
!1139 = !DILocation(line: 860, column: 9, scope: !1137)
!1140 = !DILocation(line: 860, column: 8, scope: !860)
!1141 = !DILocation(line: 861, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !526, line: 860, column: 46)
!1143 = distinct !{!1143, !1141}
!1144 = !DILocation(line: 861, column: 33, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1146, file: !526, discriminator: 1)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !526, line: 861, column: 31)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !526, line: 861, column: 16)
!1148 = distinct !DILexicalBlock(scope: !1142, file: !526, line: 861, column: 10)
!1149 = !DILocation(line: 861, column: 112, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1145, file: !526, discriminator: 2)
!1151 = !DILocation(line: 861, column: 210, scope: !1145)
!1152 = !DILocation(line: 862, column: 14, scope: !1142)
!1153 = !DILocation(line: 863, column: 7, scope: !1142)
!1154 = !DILocation(line: 860, column: 43, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1137, file: !526, discriminator: 1)
!1156 = !DILocation(line: 867, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !860, file: !526, line: 867, column: 8)
!1158 = !DILocation(line: 867, column: 15, scope: !1157)
!1159 = !DILocation(line: 867, column: 8, scope: !860)
!1160 = !DILocation(line: 868, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !526, line: 867, column: 21)
!1162 = !DILocation(line: 868, column: 8, scope: !1161)
!1163 = !DILocation(line: 868, column: 11, scope: !1161)
!1164 = !DILocation(line: 869, column: 4, scope: !1161)
!1165 = !DILocation(line: 870, column: 14, scope: !860)
!1166 = !DILocation(line: 870, column: 4, scope: !860)
!1167 = !DILocation(line: 871, column: 11, scope: !860)
!1168 = !DILocation(line: 871, column: 4, scope: !860)
!1169 = distinct !DISubprogram(name: "HgfsCheckFileNode", scope: !526, file: !526, line: 692, type: !1170, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!609, !522, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!1174 = !DILocalVariable(name: "localName", arg: 1, scope: !1169, file: !526, line: 692, type: !522)
!1175 = !DILocation(line: 692, column: 31, scope: !1169)
!1176 = !DILocalVariable(name: "localId", arg: 2, scope: !1169, file: !526, line: 693, type: !1172)
!1177 = !DILocation(line: 693, column: 38, scope: !1169)
!1178 = !DILocalVariable(name: "nodeStat", scope: !1169, file: !526, line: 695, type: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1180, line: 46, size: 1152, align: 64, elements: !1181)
!1180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!1181 = !{!1182, !1184, !1186, !1188, !1190, !1191, !1193, !1194, !1195, !1197, !1199, !1201, !1208, !1209, !1210}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1179, file: !1180, line: 48, baseType: !1183, size: 64, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !518, line: 124, baseType: !532)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1179, file: !1180, line: 53, baseType: !1185, size: 64, align: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !518, line: 127, baseType: !532)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1179, file: !1180, line: 61, baseType: !1187, size: 64, align: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !518, line: 130, baseType: !532)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1179, file: !1180, line: 62, baseType: !1189, size: 32, align: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !518, line: 129, baseType: !514)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1179, file: !1180, line: 64, baseType: !517, size: 32, align: 32, offset: 224)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1179, file: !1180, line: 65, baseType: !1192, size: 32, align: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !518, line: 126, baseType: !514)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1179, file: !1180, line: 67, baseType: !550, size: 32, align: 32, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1179, file: !1180, line: 69, baseType: !1183, size: 64, align: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1179, file: !1180, line: 74, baseType: !1196, size: 64, align: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !518, line: 131, baseType: !570)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1179, file: !1180, line: 78, baseType: !1198, size: 64, align: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !518, line: 153, baseType: !570)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1179, file: !1180, line: 80, baseType: !1200, size: 64, align: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !518, line: 158, baseType: !570)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1179, file: !1180, line: 91, baseType: !1202, size: 128, align: 64, offset: 576)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1203, line: 120, size: 128, align: 64, elements: !1204)
!1203 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1202, file: !1203, line: 122, baseType: !569, size: 64, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1202, file: !1203, line: 123, baseType: !1207, size: 64, align: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !518, line: 175, baseType: !570)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1179, file: !1180, line: 92, baseType: !1202, size: 128, align: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1179, file: !1180, line: 93, baseType: !1202, size: 128, align: 64, offset: 832)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1179, file: !1180, line: 106, baseType: !1211, size: 192, align: 64, offset: 960)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 192, align: 64, elements: !551)
!1212 = !DILocation(line: 695, column: 16, scope: !1169)
!1213 = !DILocation(line: 712, column: 19, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1169, file: !526, line: 712, column: 8)
!1215 = !DILocation(line: 712, column: 8, scope: !1214)
!1216 = !DILocation(line: 712, column: 41, scope: !1214)
!1217 = !DILocation(line: 712, column: 8, scope: !1169)
!1218 = !DILocalVariable(name: "error", scope: !1219, file: !526, line: 714, type: !550)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !526, line: 712, column: 46)
!1220 = !DILocation(line: 714, column: 11, scope: !1219)
!1221 = !DILocation(line: 714, column: 20, scope: !1219)
!1222 = !DILocation(line: 714, column: 19, scope: !1219)
!1223 = !DILocation(line: 716, column: 7, scope: !1219)
!1224 = distinct !{!1224, !1223}
!1225 = !DILocation(line: 716, column: 33, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !526, discriminator: 1)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !526, line: 716, column: 31)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !526, line: 716, column: 16)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !526, line: 716, column: 10)
!1230 = !DILocation(line: 716, column: 211, scope: !1226)
!1231 = !DILocation(line: 716, column: 239, scope: !1226)
!1232 = !DILocation(line: 716, column: 222, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1226, file: !526, discriminator: 2)
!1234 = !DILocation(line: 716, column: 112, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1226, file: !526, discriminator: 3)
!1236 = !DILocation(line: 716, column: 250, scope: !1226)
!1237 = !DILocation(line: 718, column: 14, scope: !1219)
!1238 = !DILocation(line: 718, column: 7, scope: !1219)
!1239 = !DILocation(line: 721, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1169, file: !526, line: 721, column: 8)
!1241 = !DILocation(line: 721, column: 27, scope: !1240)
!1242 = !DILocation(line: 721, column: 36, scope: !1240)
!1243 = !DILocation(line: 721, column: 24, scope: !1240)
!1244 = !DILocation(line: 721, column: 45, scope: !1240)
!1245 = !DILocation(line: 722, column: 17, scope: !1240)
!1246 = !DILocation(line: 722, column: 27, scope: !1240)
!1247 = !DILocation(line: 722, column: 36, scope: !1240)
!1248 = !DILocation(line: 722, column: 24, scope: !1240)
!1249 = !DILocation(line: 721, column: 8, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1169, file: !526, discriminator: 1)
!1251 = !DILocation(line: 723, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !526, line: 722, column: 44)
!1253 = distinct !{!1253, !1251}
!1254 = !DILocation(line: 723, column: 33, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !526, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !526, line: 723, column: 31)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !526, line: 723, column: 16)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !526, line: 723, column: 10)
!1259 = !DILocation(line: 723, column: 112, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1255, file: !526, discriminator: 2)
!1261 = !DILocation(line: 723, column: 196, scope: !1255)
!1262 = !DILocation(line: 725, column: 7, scope: !1252)
!1263 = !DILocation(line: 728, column: 4, scope: !1169)
!1264 = !DILocation(line: 729, column: 1, scope: !1169)
!1265 = distinct !DISubprogram(name: "HgfsServerGetOpenFlags", scope: !526, file: !526, line: 522, type: !1266, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!729, !749, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!1269 = !DILocalVariable(name: "flagsIn", arg: 1, scope: !1265, file: !526, line: 522, type: !749)
!1270 = !DILocation(line: 522, column: 38, scope: !1265)
!1271 = !DILocalVariable(name: "flagsOut", arg: 2, scope: !1265, file: !526, line: 523, type: !1268)
!1272 = !DILocation(line: 523, column: 29, scope: !1265)
!1273 = !DILocalVariable(name: "arraySize", scope: !1265, file: !526, line: 525, type: !514)
!1274 = !DILocation(line: 525, column: 17, scope: !1265)
!1275 = !DILocation(line: 529, column: 14, scope: !1265)
!1276 = !DILocation(line: 531, column: 22, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1265, file: !526, line: 531, column: 8)
!1278 = !DILocation(line: 531, column: 33, scope: !1277)
!1279 = !DILocation(line: 531, column: 30, scope: !1277)
!1280 = !DILocation(line: 531, column: 8, scope: !1265)
!1281 = !DILocation(line: 532, column: 59, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !526, line: 531, column: 44)
!1283 = !DILocation(line: 532, column: 7, scope: !1282)
!1284 = !DILocation(line: 534, column: 7, scope: !1282)
!1285 = !DILocation(line: 537, column: 36, scope: !1265)
!1286 = !DILocation(line: 537, column: 16, scope: !1265)
!1287 = !DILocation(line: 537, column: 5, scope: !1265)
!1288 = !DILocation(line: 537, column: 14, scope: !1265)
!1289 = !DILocation(line: 539, column: 4, scope: !1265)
!1290 = !DILocation(line: 540, column: 1, scope: !1265)
!1291 = distinct !DISubprogram(name: "HgfsPlatformValidateOpen", scope: !526, file: !526, line: 897, type: !1292, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!609, !738, !729, !863, !1294, !974}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, align: 64)
!1295 = !DILocalVariable(name: "openInfo", arg: 1, scope: !1291, file: !526, line: 897, type: !738)
!1296 = !DILocation(line: 897, column: 44, scope: !1291)
!1297 = !DILocalVariable(name: "followSymlinks", arg: 2, scope: !1291, file: !526, line: 898, type: !729)
!1298 = !DILocation(line: 898, column: 31, scope: !1291)
!1299 = !DILocalVariable(name: "session", arg: 3, scope: !1291, file: !526, line: 899, type: !863)
!1300 = !DILocation(line: 899, column: 43, scope: !1291)
!1301 = !DILocalVariable(name: "localId", arg: 4, scope: !1291, file: !526, line: 900, type: !1294)
!1302 = !DILocation(line: 900, column: 39, scope: !1291)
!1303 = !DILocalVariable(name: "fileDesc", arg: 5, scope: !1291, file: !526, line: 901, type: !974)
!1304 = !DILocation(line: 901, column: 36, scope: !1291)
!1305 = !DILocalVariable(name: "fileStat", scope: !1291, file: !526, line: 903, type: !1179)
!1306 = !DILocation(line: 903, column: 16, scope: !1291)
!1307 = !DILocalVariable(name: "fd", scope: !1291, file: !526, line: 904, type: !550)
!1308 = !DILocation(line: 904, column: 8, scope: !1291)
!1309 = !DILocalVariable(name: "openMode", scope: !1291, file: !526, line: 905, type: !550)
!1310 = !DILocation(line: 905, column: 8, scope: !1291)
!1311 = !DILocalVariable(name: "openFlags", scope: !1291, file: !526, line: 905, type: !550)
!1312 = !DILocation(line: 905, column: 22, scope: !1291)
!1313 = !DILocalVariable(name: "openPerms", scope: !1291, file: !526, line: 906, type: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !516, line: 70, baseType: !1189)
!1315 = !DILocation(line: 906, column: 11, scope: !1291)
!1316 = !DILocalVariable(name: "serverLock", scope: !1291, file: !526, line: 907, type: !759)
!1317 = !DILocation(line: 907, column: 17, scope: !1291)
!1318 = !DILocalVariable(name: "status", scope: !1291, file: !526, line: 908, type: !609)
!1319 = !DILocation(line: 908, column: 23, scope: !1291)
!1320 = !DILocalVariable(name: "needToSetAttribute", scope: !1291, file: !526, line: 909, type: !729)
!1321 = !DILocation(line: 909, column: 9, scope: !1291)
!1322 = !DILocation(line: 920, column: 32, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 920, column: 8)
!1324 = !DILocation(line: 920, column: 42, scope: !1323)
!1325 = !DILocation(line: 920, column: 47, scope: !1323)
!1326 = !DILocation(line: 921, column: 34, scope: !1323)
!1327 = !DILocation(line: 921, column: 44, scope: !1323)
!1328 = !DILocation(line: 920, column: 32, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1323, file: !526, discriminator: 1)
!1330 = !DILocation(line: 920, column: 32, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1323, file: !526, discriminator: 2)
!1332 = !DILocation(line: 920, column: 32, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1323, file: !526, discriminator: 3)
!1334 = !DILocation(line: 920, column: 9, scope: !1333)
!1335 = !DILocation(line: 922, column: 44, scope: !1323)
!1336 = !DILocation(line: 923, column: 31, scope: !1323)
!1337 = !DILocation(line: 923, column: 9, scope: !1323)
!1338 = !DILocation(line: 920, column: 8, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1291, file: !526, discriminator: 4)
!1340 = !DILocation(line: 924, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1323, file: !526, line: 923, column: 53)
!1342 = !DILocation(line: 925, column: 7, scope: !1341)
!1343 = !DILocation(line: 938, column: 14, scope: !1291)
!1344 = !DILocation(line: 939, column: 17, scope: !1291)
!1345 = !DILocation(line: 939, column: 27, scope: !1291)
!1346 = !DILocation(line: 939, column: 32, scope: !1291)
!1347 = !DILocation(line: 940, column: 19, scope: !1291)
!1348 = !DILocation(line: 940, column: 29, scope: !1291)
!1349 = !DILocation(line: 940, column: 42, scope: !1291)
!1350 = !DILocation(line: 939, column: 17, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1291, file: !526, discriminator: 1)
!1352 = !DILocation(line: 939, column: 17, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1291, file: !526, discriminator: 2)
!1354 = !DILocation(line: 939, column: 17, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1291, file: !526, discriminator: 3)
!1356 = !DILocation(line: 939, column: 14, scope: !1355)
!1357 = !DILocation(line: 941, column: 17, scope: !1291)
!1358 = !DILocation(line: 941, column: 27, scope: !1291)
!1359 = !DILocation(line: 941, column: 32, scope: !1291)
!1360 = !DILocation(line: 942, column: 19, scope: !1291)
!1361 = !DILocation(line: 942, column: 29, scope: !1291)
!1362 = !DILocation(line: 942, column: 40, scope: !1291)
!1363 = !DILocation(line: 941, column: 17, scope: !1351)
!1364 = !DILocation(line: 941, column: 17, scope: !1353)
!1365 = !DILocation(line: 941, column: 17, scope: !1355)
!1366 = !DILocation(line: 941, column: 14, scope: !1355)
!1367 = !DILocation(line: 943, column: 17, scope: !1291)
!1368 = !DILocation(line: 943, column: 27, scope: !1291)
!1369 = !DILocation(line: 943, column: 32, scope: !1291)
!1370 = !DILocation(line: 944, column: 19, scope: !1291)
!1371 = !DILocation(line: 944, column: 29, scope: !1291)
!1372 = !DILocation(line: 944, column: 40, scope: !1291)
!1373 = !DILocation(line: 943, column: 17, scope: !1351)
!1374 = !DILocation(line: 944, column: 48, scope: !1351)
!1375 = !DILocation(line: 944, column: 58, scope: !1351)
!1376 = !DILocation(line: 944, column: 68, scope: !1351)
!1377 = !DILocation(line: 943, column: 17, scope: !1353)
!1378 = !DILocation(line: 943, column: 17, scope: !1355)
!1379 = !DILocation(line: 943, column: 14, scope: !1355)
!1380 = !DILocation(line: 945, column: 17, scope: !1291)
!1381 = !DILocation(line: 945, column: 27, scope: !1291)
!1382 = !DILocation(line: 945, column: 32, scope: !1291)
!1383 = !DILocation(line: 946, column: 19, scope: !1291)
!1384 = !DILocation(line: 946, column: 29, scope: !1291)
!1385 = !DILocation(line: 945, column: 17, scope: !1351)
!1386 = !DILocation(line: 946, column: 43, scope: !1351)
!1387 = !DILocation(line: 946, column: 53, scope: !1351)
!1388 = !DILocation(line: 946, column: 63, scope: !1351)
!1389 = !DILocation(line: 945, column: 17, scope: !1353)
!1390 = !DILocation(line: 945, column: 17, scope: !1355)
!1391 = !DILocation(line: 945, column: 14, scope: !1355)
!1392 = !DILocation(line: 952, column: 8, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 952, column: 8)
!1394 = !DILocation(line: 952, column: 8, scope: !1291)
!1395 = !DILocation(line: 953, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !526, line: 952, column: 24)
!1397 = !DILocation(line: 954, column: 4, scope: !1396)
!1398 = !DILocation(line: 960, column: 11, scope: !1291)
!1399 = !DILocation(line: 961, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 961, column: 8)
!1401 = !DILocation(line: 961, column: 19, scope: !1400)
!1402 = !DILocation(line: 961, column: 29, scope: !1400)
!1403 = !DILocation(line: 961, column: 8, scope: !1291)
!1404 = !DILocalVariable(name: "deleteAccess", scope: !1405, file: !526, line: 962, type: !729)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !526, line: 961, column: 47)
!1406 = !DILocation(line: 962, column: 12, scope: !1405)
!1407 = !DILocation(line: 968, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !526, line: 968, column: 11)
!1409 = !DILocation(line: 968, column: 28, scope: !1408)
!1410 = !DILocation(line: 968, column: 33, scope: !1408)
!1411 = !DILocation(line: 968, column: 14, scope: !1408)
!1412 = !DILocation(line: 968, column: 46, scope: !1408)
!1413 = !DILocation(line: 969, column: 18, scope: !1408)
!1414 = !DILocation(line: 969, column: 28, scope: !1408)
!1415 = !DILocation(line: 969, column: 42, scope: !1408)
!1416 = !DILocation(line: 969, column: 14, scope: !1408)
!1417 = !DILocation(line: 968, column: 11, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1405, file: !526, discriminator: 1)
!1419 = !DILocation(line: 970, column: 23, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1408, file: !526, line: 969, column: 61)
!1421 = !DILocation(line: 971, column: 7, scope: !1420)
!1422 = !DILocation(line: 973, column: 12, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1405, file: !526, line: 973, column: 11)
!1424 = !DILocation(line: 973, column: 22, scope: !1423)
!1425 = !DILocation(line: 973, column: 55, scope: !1423)
!1426 = !DILocation(line: 974, column: 12, scope: !1423)
!1427 = !DILocation(line: 974, column: 21, scope: !1423)
!1428 = !DILocation(line: 974, column: 43, scope: !1423)
!1429 = !DILocation(line: 975, column: 11, scope: !1423)
!1430 = !DILocation(line: 973, column: 11, scope: !1418)
!1431 = !DILocation(line: 976, column: 32, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1423, file: !526, line: 975, column: 25)
!1433 = !DILocation(line: 976, column: 42, scope: !1432)
!1434 = !DILocation(line: 976, column: 19, scope: !1432)
!1435 = !DILocation(line: 976, column: 17, scope: !1432)
!1436 = !DILocation(line: 977, column: 14, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !526, line: 977, column: 14)
!1438 = !DILocation(line: 977, column: 21, scope: !1437)
!1439 = !DILocation(line: 977, column: 14, scope: !1432)
!1440 = !DILocation(line: 978, column: 23, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !526, line: 977, column: 26)
!1442 = !DILocation(line: 978, column: 22, scope: !1441)
!1443 = !DILocation(line: 978, column: 20, scope: !1441)
!1444 = !DILocation(line: 979, column: 17, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !526, line: 979, column: 17)
!1446 = !DILocation(line: 979, column: 24, scope: !1445)
!1447 = !DILocation(line: 979, column: 33, scope: !1445)
!1448 = !DILocation(line: 979, column: 37, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1445, file: !526, discriminator: 1)
!1450 = !DILocation(line: 979, column: 47, scope: !1449)
!1451 = !DILocation(line: 979, column: 58, scope: !1449)
!1452 = !DILocation(line: 979, column: 17, scope: !1449)
!1453 = !DILocation(line: 980, column: 23, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1445, file: !526, line: 979, column: 64)
!1455 = !DILocation(line: 981, column: 13, scope: !1454)
!1456 = !DILocation(line: 982, column: 10, scope: !1441)
!1457 = !DILocation(line: 988, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !526, line: 988, column: 17)
!1459 = distinct !DILexicalBlock(scope: !1437, file: !526, line: 982, column: 17)
!1460 = !DILocation(line: 988, column: 28, scope: !1458)
!1461 = !DILocation(line: 988, column: 38, scope: !1458)
!1462 = !DILocation(line: 988, column: 42, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1458, file: !526, discriminator: 1)
!1464 = !DILocation(line: 988, column: 52, scope: !1463)
!1465 = !DILocation(line: 988, column: 17, scope: !1463)
!1466 = !DILocation(line: 989, column: 23, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1458, file: !526, line: 988, column: 63)
!1468 = !DILocation(line: 990, column: 13, scope: !1467)
!1469 = !DILocation(line: 991, column: 23, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !526, line: 990, column: 20)
!1471 = !DILocation(line: 994, column: 7, scope: !1432)
!1472 = !DILocation(line: 995, column: 11, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1405, file: !526, line: 995, column: 11)
!1474 = !DILocation(line: 995, column: 18, scope: !1473)
!1475 = !DILocation(line: 995, column: 11, scope: !1405)
!1476 = !DILocation(line: 996, column: 10, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !526, line: 995, column: 24)
!1478 = distinct !{!1478, !1476}
!1479 = !DILocation(line: 996, column: 36, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1481, file: !526, discriminator: 1)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !526, line: 996, column: 34)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !526, line: 996, column: 19)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !526, line: 996, column: 13)
!1484 = !DILocation(line: 996, column: 238, scope: !1480)
!1485 = !DILocation(line: 996, column: 248, scope: !1480)
!1486 = !DILocation(line: 996, column: 259, scope: !1480)
!1487 = !DILocation(line: 996, column: 269, scope: !1480)
!1488 = !DILocation(line: 996, column: 279, scope: !1480)
!1489 = !DILocation(line: 996, column: 304, scope: !1480)
!1490 = !DILocation(line: 996, column: 287, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1480, file: !526, discriminator: 2)
!1492 = !DILocation(line: 996, column: 115, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1480, file: !526, discriminator: 3)
!1494 = !DILocation(line: 996, column: 316, scope: !1480)
!1495 = !DILocation(line: 999, column: 10, scope: !1477)
!1496 = !DILocation(line: 1001, column: 4, scope: !1405)
!1497 = !DILocation(line: 1003, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1003, column: 8)
!1499 = !DILocation(line: 1003, column: 19, scope: !1498)
!1500 = !DILocation(line: 1003, column: 29, scope: !1498)
!1501 = !DILocation(line: 1003, column: 8, scope: !1291)
!1502 = !DILocation(line: 1008, column: 29, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !526, line: 1003, column: 46)
!1504 = !DILocation(line: 1008, column: 39, scope: !1503)
!1505 = !DILocation(line: 1008, column: 16, scope: !1503)
!1506 = !DILocation(line: 1008, column: 14, scope: !1503)
!1507 = !DILocation(line: 1009, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !526, line: 1009, column: 11)
!1509 = !DILocation(line: 1009, column: 18, scope: !1508)
!1510 = !DILocation(line: 1009, column: 11, scope: !1503)
!1511 = !DILocation(line: 1010, column: 20, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !526, line: 1009, column: 23)
!1513 = !DILocation(line: 1010, column: 19, scope: !1512)
!1514 = !DILocation(line: 1010, column: 17, scope: !1512)
!1515 = !DILocation(line: 1011, column: 14, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !526, line: 1011, column: 14)
!1517 = !DILocation(line: 1011, column: 21, scope: !1516)
!1518 = !DILocation(line: 1011, column: 30, scope: !1516)
!1519 = !DILocation(line: 1011, column: 34, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1516, file: !526, discriminator: 1)
!1521 = !DILocation(line: 1011, column: 44, scope: !1520)
!1522 = !DILocation(line: 1011, column: 55, scope: !1520)
!1523 = !DILocation(line: 1011, column: 14, scope: !1520)
!1524 = !DILocation(line: 1012, column: 20, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1516, file: !526, line: 1011, column: 61)
!1526 = !DILocation(line: 1013, column: 10, scope: !1525)
!1527 = !DILocation(line: 1014, column: 7, scope: !1512)
!1528 = !DILocation(line: 1015, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1508, file: !526, line: 1014, column: 14)
!1530 = !DILocation(line: 1017, column: 11, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1503, file: !526, line: 1017, column: 11)
!1532 = !DILocation(line: 1017, column: 18, scope: !1531)
!1533 = !DILocation(line: 1017, column: 11, scope: !1503)
!1534 = !DILocation(line: 1018, column: 10, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !526, line: 1017, column: 24)
!1536 = distinct !{!1536, !1534}
!1537 = !DILocation(line: 1018, column: 36, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1539, file: !526, discriminator: 1)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !526, line: 1018, column: 34)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !526, line: 1018, column: 19)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !526, line: 1018, column: 13)
!1542 = !DILocation(line: 1018, column: 230, scope: !1538)
!1543 = !DILocation(line: 1018, column: 241, scope: !1538)
!1544 = !DILocation(line: 1018, column: 251, scope: !1538)
!1545 = !DILocation(line: 1018, column: 261, scope: !1538)
!1546 = !DILocation(line: 1018, column: 286, scope: !1538)
!1547 = !DILocation(line: 1018, column: 269, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1538, file: !526, discriminator: 2)
!1549 = !DILocation(line: 1018, column: 115, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1538, file: !526, discriminator: 3)
!1551 = !DILocation(line: 1018, column: 298, scope: !1538)
!1552 = !DILocation(line: 1021, column: 10, scope: !1535)
!1553 = !DILocation(line: 1023, column: 4, scope: !1503)
!1554 = !DILocation(line: 1032, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1032, column: 8)
!1556 = !DILocation(line: 1032, column: 18, scope: !1555)
!1557 = !DILocation(line: 1032, column: 23, scope: !1555)
!1558 = !DILocation(line: 1032, column: 8, scope: !1291)
!1559 = !DILocation(line: 1033, column: 12, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !526, line: 1033, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1555, file: !526, line: 1032, column: 35)
!1562 = !DILocation(line: 1033, column: 22, scope: !1560)
!1563 = !DILocation(line: 1033, column: 32, scope: !1560)
!1564 = !DILocation(line: 1034, column: 13, scope: !1560)
!1565 = !DILocation(line: 1034, column: 23, scope: !1560)
!1566 = !DILocation(line: 1034, column: 33, scope: !1560)
!1567 = !DILocation(line: 1034, column: 37, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1560, file: !526, discriminator: 1)
!1569 = !DILocation(line: 1034, column: 47, scope: !1568)
!1570 = !DILocation(line: 1033, column: 11, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1561, file: !526, discriminator: 1)
!1572 = !DILocation(line: 1035, column: 29, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !526, line: 1034, column: 59)
!1574 = !DILocation(line: 1036, column: 7, scope: !1573)
!1575 = !DILocation(line: 1036, column: 18, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1577, file: !526, discriminator: 1)
!1577 = distinct !DILexicalBlock(scope: !1560, file: !526, line: 1036, column: 18)
!1578 = !DILocation(line: 1036, column: 28, scope: !1576)
!1579 = !DILocalVariable(name: "err", scope: !1580, file: !526, line: 1037, type: !550)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !526, line: 1036, column: 38)
!1581 = !DILocation(line: 1037, column: 14, scope: !1580)
!1582 = !DILocation(line: 1037, column: 33, scope: !1580)
!1583 = !DILocation(line: 1037, column: 43, scope: !1580)
!1584 = !DILocation(line: 1037, column: 20, scope: !1580)
!1585 = !DILocation(line: 1038, column: 32, scope: !1580)
!1586 = !DILocation(line: 1038, column: 36, scope: !1580)
!1587 = !DILocation(line: 1038, column: 42, scope: !1580)
!1588 = !DILocation(line: 1038, column: 47, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1580, file: !526, discriminator: 1)
!1590 = !DILocation(line: 1038, column: 46, scope: !1589)
!1591 = !DILocation(line: 1038, column: 51, scope: !1589)
!1592 = !DILocation(line: 1038, column: 42, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1580, file: !526, discriminator: 2)
!1594 = !DILocation(line: 1038, column: 31, scope: !1593)
!1595 = !DILocation(line: 1038, column: 29, scope: !1593)
!1596 = !DILocation(line: 1039, column: 7, scope: !1580)
!1597 = !DILocation(line: 1040, column: 4, scope: !1561)
!1598 = !DILocation(line: 1045, column: 20, scope: !1291)
!1599 = !DILocation(line: 1045, column: 30, scope: !1291)
!1600 = !DILocation(line: 1046, column: 20, scope: !1291)
!1601 = !DILocation(line: 1046, column: 31, scope: !1291)
!1602 = !DILocation(line: 1046, column: 29, scope: !1291)
!1603 = !DILocation(line: 1047, column: 20, scope: !1291)
!1604 = !DILocation(line: 1045, column: 9, scope: !1291)
!1605 = !DILocation(line: 1045, column: 7, scope: !1291)
!1606 = !DILocation(line: 1048, column: 8, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1048, column: 8)
!1608 = !DILocation(line: 1048, column: 11, scope: !1607)
!1609 = !DILocation(line: 1048, column: 8, scope: !1291)
!1610 = !DILocation(line: 1049, column: 17, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !526, line: 1048, column: 16)
!1612 = !DILocation(line: 1049, column: 16, scope: !1611)
!1613 = !DILocation(line: 1049, column: 14, scope: !1611)
!1614 = !DILocation(line: 1050, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !526, line: 1050, column: 11)
!1616 = !DILocation(line: 1050, column: 18, scope: !1615)
!1617 = !DILocation(line: 1050, column: 11, scope: !1611)
!1618 = !DILocation(line: 1056, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !526, line: 1050, column: 28)
!1620 = !DILocation(line: 1057, column: 7, scope: !1619)
!1621 = !DILocation(line: 1058, column: 7, scope: !1611)
!1622 = distinct !{!1622, !1621}
!1623 = !DILocation(line: 1058, column: 33, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !526, discriminator: 1)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !526, line: 1058, column: 31)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !526, line: 1058, column: 16)
!1627 = distinct !DILexicalBlock(scope: !1611, file: !526, line: 1058, column: 10)
!1628 = !DILocation(line: 1058, column: 206, scope: !1624)
!1629 = !DILocation(line: 1058, column: 216, scope: !1624)
!1630 = !DILocation(line: 1058, column: 226, scope: !1624)
!1631 = !DILocation(line: 1058, column: 251, scope: !1624)
!1632 = !DILocation(line: 1058, column: 234, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1624, file: !526, discriminator: 2)
!1634 = !DILocation(line: 1058, column: 112, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1624, file: !526, discriminator: 3)
!1636 = !DILocation(line: 1058, column: 263, scope: !1624)
!1637 = !DILocation(line: 1060, column: 7, scope: !1611)
!1638 = !DILocation(line: 1064, column: 14, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1064, column: 8)
!1640 = !DILocation(line: 1064, column: 8, scope: !1639)
!1641 = !DILocation(line: 1064, column: 29, scope: !1639)
!1642 = !DILocation(line: 1064, column: 8, scope: !1291)
!1643 = !DILocation(line: 1065, column: 17, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !526, line: 1064, column: 34)
!1645 = !DILocation(line: 1065, column: 16, scope: !1644)
!1646 = !DILocation(line: 1065, column: 14, scope: !1644)
!1647 = !DILocation(line: 1066, column: 7, scope: !1644)
!1648 = distinct !{!1648, !1647}
!1649 = !DILocation(line: 1066, column: 33, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !526, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !526, line: 1066, column: 31)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !526, line: 1066, column: 16)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !526, line: 1066, column: 10)
!1654 = !DILocation(line: 1066, column: 205, scope: !1650)
!1655 = !DILocation(line: 1066, column: 215, scope: !1650)
!1656 = !DILocation(line: 1066, column: 225, scope: !1650)
!1657 = !DILocation(line: 1066, column: 250, scope: !1650)
!1658 = !DILocation(line: 1066, column: 233, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1650, file: !526, discriminator: 2)
!1660 = !DILocation(line: 1066, column: 112, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1650, file: !526, discriminator: 3)
!1662 = !DILocation(line: 1066, column: 262, scope: !1650)
!1663 = !DILocation(line: 1068, column: 13, scope: !1644)
!1664 = !DILocation(line: 1068, column: 7, scope: !1644)
!1665 = !DILocation(line: 1069, column: 7, scope: !1644)
!1666 = !DILocation(line: 1073, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1073, column: 8)
!1668 = !DILocation(line: 1073, column: 8, scope: !1291)
!1669 = !DILocation(line: 1074, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !526, line: 1073, column: 28)
!1671 = !DILocation(line: 1074, column: 36, scope: !1670)
!1672 = !DILocation(line: 1075, column: 27, scope: !1670)
!1673 = !DILocation(line: 1075, column: 37, scope: !1670)
!1674 = !DILocation(line: 1075, column: 42, scope: !1670)
!1675 = !DILocation(line: 1075, column: 54, scope: !1670)
!1676 = !DILocation(line: 1075, column: 26, scope: !1670)
!1677 = !DILocation(line: 1076, column: 35, scope: !1670)
!1678 = !DILocation(line: 1074, column: 7, scope: !1670)
!1679 = !DILocation(line: 1077, column: 4, scope: !1670)
!1680 = !DILocation(line: 1080, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1291, file: !526, line: 1080, column: 8)
!1682 = !DILocation(line: 1080, column: 18, scope: !1681)
!1683 = !DILocation(line: 1080, column: 23, scope: !1681)
!1684 = !DILocation(line: 1080, column: 8, scope: !1291)
!1685 = !DILocation(line: 1081, column: 20, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !526, line: 1080, column: 36)
!1687 = !DILocation(line: 1081, column: 30, scope: !1686)
!1688 = !DILocation(line: 1081, column: 18, scope: !1686)
!1689 = !DILocation(line: 1082, column: 34, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !526, line: 1082, column: 11)
!1691 = !DILocation(line: 1082, column: 38, scope: !1690)
!1692 = !DILocation(line: 1082, column: 12, scope: !1690)
!1693 = !DILocation(line: 1082, column: 11, scope: !1686)
!1694 = !DILocation(line: 1083, column: 10, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !526, line: 1082, column: 61)
!1696 = !DILocation(line: 1083, column: 20, scope: !1695)
!1697 = !DILocation(line: 1083, column: 33, scope: !1695)
!1698 = !DILocation(line: 1084, column: 7, scope: !1695)
!1699 = !DILocation(line: 1085, column: 35, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1690, file: !526, line: 1084, column: 14)
!1701 = !DILocation(line: 1085, column: 10, scope: !1700)
!1702 = !DILocation(line: 1085, column: 20, scope: !1700)
!1703 = !DILocation(line: 1085, column: 33, scope: !1700)
!1704 = !DILocation(line: 1087, column: 4, scope: !1686)
!1705 = !DILocation(line: 1088, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1681, file: !526, line: 1087, column: 11)
!1707 = !DILocation(line: 1088, column: 17, scope: !1706)
!1708 = !DILocation(line: 1088, column: 30, scope: !1706)
!1709 = !DILocation(line: 1091, column: 16, scope: !1291)
!1710 = !DILocation(line: 1091, column: 5, scope: !1291)
!1711 = !DILocation(line: 1091, column: 14, scope: !1291)
!1712 = !DILocation(line: 1094, column: 33, scope: !1291)
!1713 = !DILocation(line: 1094, column: 4, scope: !1291)
!1714 = !DILocation(line: 1094, column: 13, scope: !1291)
!1715 = !DILocation(line: 1094, column: 22, scope: !1291)
!1716 = !DILocation(line: 1095, column: 31, scope: !1291)
!1717 = !DILocation(line: 1095, column: 4, scope: !1291)
!1718 = !DILocation(line: 1095, column: 13, scope: !1291)
!1719 = !DILocation(line: 1095, column: 20, scope: !1291)
!1720 = !DILocation(line: 1098, column: 11, scope: !1291)
!1721 = !DILocation(line: 1098, column: 4, scope: !1291)
!1722 = distinct !DISubprogram(name: "HgfsSetHiddenXAttr", scope: !526, file: !526, line: 5256, type: !1723, isLocal: true, isDefinition: true, scopeLine: 5259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!609, !522, !729, !1314}
!1725 = !DILocalVariable(name: "fileName", arg: 1, scope: !1722, file: !526, line: 5256, type: !522)
!1726 = !DILocation(line: 5256, column: 32, scope: !1722)
!1727 = !DILocalVariable(name: "value", arg: 2, scope: !1722, file: !526, line: 5257, type: !729)
!1728 = !DILocation(line: 5257, column: 25, scope: !1722)
!1729 = !DILocalVariable(name: "permissions", arg: 3, scope: !1722, file: !526, line: 5258, type: !1314)
!1730 = !DILocation(line: 5258, column: 27, scope: !1722)
!1731 = !DILocation(line: 5260, column: 4, scope: !1722)
!1732 = distinct !DISubprogram(name: "HgfsPlatformFilenameLookup", scope: !526, file: !526, line: 1755, type: !1733, isLocal: false, isDefinition: true, scopeLine: 1762, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!611, !522, !771, !519, !771, !510, !1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!1737 = !DILocalVariable(name: "sharePath", arg: 1, scope: !1732, file: !526, line: 1755, type: !522)
!1738 = !DILocation(line: 1755, column: 40, scope: !1732)
!1739 = !DILocalVariable(name: "sharePathLength", arg: 2, scope: !1732, file: !526, line: 1756, type: !771)
!1740 = !DILocation(line: 1756, column: 35, scope: !1732)
!1741 = !DILocalVariable(name: "fileName", arg: 3, scope: !1732, file: !526, line: 1757, type: !519)
!1742 = !DILocation(line: 1757, column: 34, scope: !1732)
!1743 = !DILocalVariable(name: "fileNameLength", arg: 4, scope: !1732, file: !526, line: 1758, type: !771)
!1744 = !DILocation(line: 1758, column: 35, scope: !1732)
!1745 = !DILocalVariable(name: "caseFlags", arg: 5, scope: !1732, file: !526, line: 1759, type: !510)
!1746 = !DILocation(line: 1759, column: 35, scope: !1732)
!1747 = !DILocalVariable(name: "convertedFileName", arg: 6, scope: !1732, file: !526, line: 1760, type: !1735)
!1748 = !DILocation(line: 1760, column: 35, scope: !1732)
!1749 = !DILocalVariable(name: "convertedFileNameLength", arg: 7, scope: !1732, file: !526, line: 1761, type: !1736)
!1750 = !DILocation(line: 1761, column: 36, scope: !1732)
!1751 = !DILocalVariable(name: "error", scope: !1732, file: !526, line: 1763, type: !550)
!1752 = !DILocation(line: 1763, column: 8, scope: !1732)
!1753 = !DILocalVariable(name: "nameStatus", scope: !1732, file: !526, line: 1764, type: !611)
!1754 = !DILocation(line: 1764, column: 19, scope: !1732)
!1755 = !DILocation(line: 1771, column: 5, scope: !1732)
!1756 = !DILocation(line: 1771, column: 23, scope: !1732)
!1757 = !DILocation(line: 1772, column: 5, scope: !1732)
!1758 = !DILocation(line: 1772, column: 29, scope: !1732)
!1759 = !DILocation(line: 1780, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1732, file: !526, line: 1780, column: 8)
!1761 = !DILocation(line: 1780, column: 18, scope: !1760)
!1762 = !DILocation(line: 1780, column: 53, scope: !1760)
!1763 = !DILocation(line: 1781, column: 21, scope: !1760)
!1764 = !DILocation(line: 1781, column: 8, scope: !1760)
!1765 = !DILocation(line: 1781, column: 36, scope: !1760)
!1766 = !DILocation(line: 1780, column: 8, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1732, file: !526, discriminator: 1)
!1768 = !DILocation(line: 1782, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1760, file: !526, line: 1781, column: 43)
!1770 = distinct !{!1770, !1768}
!1771 = !DILocation(line: 1782, column: 33, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !526, discriminator: 1)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !526, line: 1782, column: 31)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !526, line: 1782, column: 16)
!1775 = distinct !DILexicalBlock(scope: !1769, file: !526, line: 1782, column: 10)
!1776 = !DILocation(line: 1782, column: 225, scope: !1772)
!1777 = !DILocation(line: 1782, column: 235, scope: !1772)
!1778 = !DILocation(line: 1782, column: 112, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1772, file: !526, discriminator: 2)
!1780 = !DILocation(line: 1782, column: 249, scope: !1772)
!1781 = !DILocation(line: 1784, column: 41, scope: !1769)
!1782 = !DILocation(line: 1784, column: 52, scope: !1769)
!1783 = !DILocation(line: 1785, column: 41, scope: !1769)
!1784 = !DILocation(line: 1785, column: 51, scope: !1769)
!1785 = !DILocation(line: 1786, column: 41, scope: !1769)
!1786 = !DILocation(line: 1787, column: 41, scope: !1769)
!1787 = !DILocation(line: 1784, column: 15, scope: !1769)
!1788 = !DILocation(line: 1784, column: 13, scope: !1769)
!1789 = !DILocation(line: 1792, column: 15, scope: !1769)
!1790 = !DILocation(line: 1792, column: 7, scope: !1769)
!1791 = !DILocation(line: 1799, column: 24, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1769, file: !526, line: 1792, column: 22)
!1793 = !DILocation(line: 1800, column: 13, scope: !1792)
!1794 = !DILocation(line: 1802, column: 24, scope: !1792)
!1795 = !DILocation(line: 1803, column: 13, scope: !1792)
!1796 = !DILocation(line: 1805, column: 24, scope: !1792)
!1797 = !DILocation(line: 1806, column: 13, scope: !1792)
!1798 = !DILocation(line: 1808, column: 14, scope: !1769)
!1799 = !DILocation(line: 1808, column: 7, scope: !1769)
!1800 = !DILocation(line: 1811, column: 32, scope: !1732)
!1801 = !DILocation(line: 1811, column: 25, scope: !1732)
!1802 = !DILocation(line: 1811, column: 5, scope: !1732)
!1803 = !DILocation(line: 1811, column: 23, scope: !1732)
!1804 = !DILocation(line: 1812, column: 10, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1732, file: !526, line: 1812, column: 8)
!1806 = !DILocation(line: 1812, column: 9, scope: !1805)
!1807 = !DILocation(line: 1812, column: 8, scope: !1732)
!1808 = !DILocation(line: 1813, column: 18, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !526, line: 1812, column: 29)
!1810 = !DILocation(line: 1814, column: 7, scope: !1809)
!1811 = distinct !{!1811, !1810}
!1812 = !DILocation(line: 1814, column: 33, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !526, discriminator: 1)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !526, line: 1814, column: 31)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !526, line: 1814, column: 16)
!1816 = distinct !DILexicalBlock(scope: !1809, file: !526, line: 1814, column: 10)
!1817 = !DILocation(line: 1814, column: 112, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1813, file: !526, discriminator: 2)
!1819 = !DILocation(line: 1814, column: 205, scope: !1813)
!1820 = !DILocation(line: 1815, column: 4, scope: !1809)
!1821 = !DILocation(line: 1816, column: 34, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1805, file: !526, line: 1815, column: 11)
!1823 = !DILocation(line: 1816, column: 8, scope: !1822)
!1824 = !DILocation(line: 1816, column: 32, scope: !1822)
!1825 = !DILocation(line: 1818, column: 11, scope: !1732)
!1826 = !DILocation(line: 1818, column: 4, scope: !1732)
!1827 = !DILocation(line: 1819, column: 1, scope: !1732)
!1828 = distinct !DISubprogram(name: "HgfsCaseInsensitiveLookup", scope: !526, file: !526, line: 1603, type: !1829, isLocal: true, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!550, !522, !771, !519, !771, !1735, !1736}
!1831 = !DILocalVariable(name: "sharePath", arg: 1, scope: !1828, file: !526, line: 1603, type: !522)
!1832 = !DILocation(line: 1603, column: 39, scope: !1828)
!1833 = !DILocalVariable(name: "sharePathLength", arg: 2, scope: !1828, file: !526, line: 1604, type: !771)
!1834 = !DILocation(line: 1604, column: 34, scope: !1828)
!1835 = !DILocalVariable(name: "fileName", arg: 3, scope: !1828, file: !526, line: 1605, type: !519)
!1836 = !DILocation(line: 1605, column: 33, scope: !1828)
!1837 = !DILocalVariable(name: "fileNameLength", arg: 4, scope: !1828, file: !526, line: 1606, type: !771)
!1838 = !DILocation(line: 1606, column: 34, scope: !1828)
!1839 = !DILocalVariable(name: "convertedFileName", arg: 5, scope: !1828, file: !526, line: 1607, type: !1735)
!1840 = !DILocation(line: 1607, column: 34, scope: !1828)
!1841 = !DILocalVariable(name: "convertedFileNameLength", arg: 6, scope: !1828, file: !526, line: 1608, type: !1736)
!1842 = !DILocation(line: 1608, column: 35, scope: !1828)
!1843 = !DILocalVariable(name: "currentComponent", scope: !1828, file: !526, line: 1610, type: !519)
!1844 = !DILocation(line: 1610, column: 10, scope: !1828)
!1845 = !DILocalVariable(name: "nextComponent", scope: !1828, file: !526, line: 1611, type: !519)
!1846 = !DILocation(line: 1611, column: 10, scope: !1828)
!1847 = !DILocalVariable(name: "curDir", scope: !1828, file: !526, line: 1612, type: !519)
!1848 = !DILocation(line: 1612, column: 10, scope: !1828)
!1849 = !DILocalVariable(name: "curDirSize", scope: !1828, file: !526, line: 1613, type: !771)
!1850 = !DILocation(line: 1613, column: 11, scope: !1828)
!1851 = !DILocalVariable(name: "convertedComponent", scope: !1828, file: !526, line: 1614, type: !519)
!1852 = !DILocation(line: 1614, column: 10, scope: !1828)
!1853 = !DILocalVariable(name: "convertedComponentSize", scope: !1828, file: !526, line: 1615, type: !771)
!1854 = !DILocation(line: 1615, column: 11, scope: !1828)
!1855 = !DILocalVariable(name: "error", scope: !1828, file: !526, line: 1616, type: !550)
!1856 = !DILocation(line: 1616, column: 8, scope: !1828)
!1857 = !DILocation(line: 1623, column: 17, scope: !1828)
!1858 = !DILocation(line: 1623, column: 33, scope: !1828)
!1859 = !DILocation(line: 1623, column: 15, scope: !1828)
!1860 = !DILocation(line: 1624, column: 20, scope: !1828)
!1861 = !DILocation(line: 1624, column: 13, scope: !1828)
!1862 = !DILocation(line: 1624, column: 11, scope: !1828)
!1863 = !DILocation(line: 1625, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1828, file: !526, line: 1625, column: 8)
!1865 = !DILocation(line: 1625, column: 8, scope: !1828)
!1866 = !DILocation(line: 1626, column: 16, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !526, line: 1625, column: 17)
!1868 = !DILocation(line: 1626, column: 15, scope: !1867)
!1869 = !DILocation(line: 1626, column: 13, scope: !1867)
!1870 = !DILocation(line: 1627, column: 7, scope: !1867)
!1871 = distinct !{!1871, !1870}
!1872 = !DILocation(line: 1627, column: 33, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !526, discriminator: 1)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !526, line: 1627, column: 31)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !526, line: 1627, column: 16)
!1876 = distinct !DILexicalBlock(scope: !1867, file: !526, line: 1627, column: 10)
!1877 = !DILocation(line: 1627, column: 112, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1873, file: !526, discriminator: 2)
!1879 = !DILocation(line: 1627, column: 208, scope: !1873)
!1880 = !DILocation(line: 1628, column: 7, scope: !1867)
!1881 = !DILocation(line: 1630, column: 15, scope: !1828)
!1882 = !DILocation(line: 1630, column: 23, scope: !1828)
!1883 = !DILocation(line: 1630, column: 34, scope: !1828)
!1884 = !DILocation(line: 1630, column: 4, scope: !1828)
!1885 = !DILocation(line: 1632, column: 23, scope: !1828)
!1886 = !DILocation(line: 1632, column: 34, scope: !1828)
!1887 = !DILocation(line: 1632, column: 32, scope: !1828)
!1888 = !DILocation(line: 1632, column: 21, scope: !1828)
!1889 = !DILocation(line: 1634, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1828, file: !526, line: 1634, column: 8)
!1891 = !DILocation(line: 1634, column: 8, scope: !1890)
!1892 = !DILocation(line: 1634, column: 26, scope: !1890)
!1893 = !DILocation(line: 1634, column: 8, scope: !1828)
!1894 = !DILocation(line: 1639, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !526, line: 1634, column: 35)
!1896 = !DILocation(line: 1643, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1828, file: !526, line: 1643, column: 8)
!1898 = !DILocation(line: 1643, column: 8, scope: !1897)
!1899 = !DILocation(line: 1643, column: 26, scope: !1897)
!1900 = !DILocation(line: 1643, column: 8, scope: !1828)
!1901 = !DILocation(line: 1644, column: 24, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !526, line: 1643, column: 34)
!1903 = !DILocation(line: 1645, column: 4, scope: !1902)
!1904 = !DILocation(line: 1647, column: 4, scope: !1828)
!1905 = !DILocation(line: 1649, column: 30, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1828, file: !526, line: 1647, column: 14)
!1907 = !DILocation(line: 1649, column: 23, scope: !1906)
!1908 = !DILocation(line: 1649, column: 21, scope: !1906)
!1909 = !DILocation(line: 1650, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !526, line: 1650, column: 11)
!1911 = !DILocation(line: 1650, column: 25, scope: !1910)
!1912 = !DILocation(line: 1650, column: 11, scope: !1906)
!1913 = !DILocation(line: 1651, column: 11, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !526, line: 1650, column: 33)
!1915 = !DILocation(line: 1651, column: 25, scope: !1914)
!1916 = !DILocation(line: 1652, column: 7, scope: !1914)
!1917 = !DILocation(line: 1660, column: 40, scope: !1906)
!1918 = !DILocation(line: 1660, column: 58, scope: !1906)
!1919 = !DILocation(line: 1660, column: 15, scope: !1906)
!1920 = !DILocation(line: 1660, column: 13, scope: !1906)
!1921 = !DILocation(line: 1664, column: 11, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1906, file: !526, line: 1664, column: 11)
!1923 = !DILocation(line: 1664, column: 25, scope: !1922)
!1924 = !DILocation(line: 1664, column: 11, scope: !1906)
!1925 = !DILocation(line: 1665, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !526, line: 1664, column: 33)
!1927 = !DILocation(line: 1665, column: 25, scope: !1926)
!1928 = !DILocation(line: 1666, column: 7, scope: !1926)
!1929 = !DILocation(line: 1668, column: 11, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1906, file: !526, line: 1668, column: 11)
!1931 = !DILocation(line: 1668, column: 11, scope: !1906)
!1932 = !DILocation(line: 1669, column: 14, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !526, line: 1669, column: 14)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !526, line: 1668, column: 18)
!1935 = !DILocation(line: 1669, column: 20, scope: !1933)
!1936 = !DILocation(line: 1669, column: 14, scope: !1934)
!1937 = !DILocation(line: 1677, column: 70, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !526, line: 1669, column: 30)
!1939 = !DILocation(line: 1678, column: 55, scope: !1938)
!1940 = !DILocation(line: 1678, column: 48, scope: !1938)
!1941 = !DILocation(line: 1678, column: 73, scope: !1938)
!1942 = !DILocation(line: 1677, column: 21, scope: !1938)
!1943 = !DILocation(line: 1677, column: 19, scope: !1938)
!1944 = !DILocation(line: 1679, column: 10, scope: !1938)
!1945 = !DILocation(line: 1680, column: 10, scope: !1934)
!1946 = !DILocation(line: 1684, column: 64, scope: !1906)
!1947 = !DILocation(line: 1685, column: 42, scope: !1906)
!1948 = !DILocation(line: 1684, column: 15, scope: !1906)
!1949 = !DILocation(line: 1684, column: 13, scope: !1906)
!1950 = !DILocation(line: 1686, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1906, file: !526, line: 1686, column: 11)
!1952 = !DILocation(line: 1686, column: 11, scope: !1906)
!1953 = !DILocation(line: 1687, column: 10, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !526, line: 1686, column: 18)
!1955 = !DILocation(line: 1691, column: 12, scope: !1906)
!1956 = !DILocation(line: 1691, column: 7, scope: !1906)
!1957 = !DILocation(line: 1692, column: 26, scope: !1906)
!1958 = !DILocation(line: 1695, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1906, file: !526, line: 1695, column: 11)
!1960 = !DILocation(line: 1695, column: 25, scope: !1959)
!1961 = !DILocation(line: 1695, column: 11, scope: !1906)
!1962 = !DILocation(line: 1697, column: 16, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !526, line: 1695, column: 33)
!1964 = !DILocation(line: 1698, column: 10, scope: !1963)
!1965 = !DILocation(line: 1705, column: 26, scope: !1906)
!1966 = !DILocation(line: 1705, column: 40, scope: !1906)
!1967 = !DILocation(line: 1705, column: 24, scope: !1906)
!1968 = !DILocation(line: 1647, column: 4, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1828, file: !526, discriminator: 1)
!1970 = distinct !{!1970, !1904}
!1971 = !DILocation(line: 1647, column: 4, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1828, file: !526, discriminator: 2)
!1973 = !DILocation(line: 1713, column: 8, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1828, file: !526, line: 1713, column: 8)
!1975 = !DILocation(line: 1713, column: 14, scope: !1974)
!1976 = !DILocation(line: 1713, column: 8, scope: !1828)
!1977 = !DILocation(line: 1714, column: 28, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !526, line: 1713, column: 20)
!1979 = !DILocation(line: 1714, column: 8, scope: !1978)
!1980 = !DILocation(line: 1714, column: 26, scope: !1978)
!1981 = !DILocation(line: 1715, column: 34, scope: !1978)
!1982 = !DILocation(line: 1715, column: 45, scope: !1978)
!1983 = !DILocation(line: 1715, column: 8, scope: !1978)
!1984 = !DILocation(line: 1715, column: 32, scope: !1978)
!1985 = !DILocation(line: 1716, column: 4, scope: !1978)
!1986 = !DILocation(line: 1717, column: 8, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !526, line: 1716, column: 11)
!1988 = !DILocation(line: 1717, column: 26, scope: !1987)
!1989 = !DILocation(line: 1718, column: 8, scope: !1987)
!1990 = !DILocation(line: 1718, column: 32, scope: !1987)
!1991 = !DILocation(line: 1719, column: 12, scope: !1987)
!1992 = !DILocation(line: 1719, column: 7, scope: !1987)
!1993 = !DILocation(line: 1721, column: 9, scope: !1828)
!1994 = !DILocation(line: 1721, column: 4, scope: !1828)
!1995 = !DILocation(line: 1722, column: 11, scope: !1828)
!1996 = !DILocation(line: 1722, column: 4, scope: !1828)
!1997 = distinct !DISubprogram(name: "HgfsPlatformDoFilenameLookup", scope: !526, file: !526, line: 1839, type: !727, isLocal: false, isDefinition: true, scopeLine: 1840, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!1998 = !DILocation(line: 1841, column: 4, scope: !1997)
!1999 = distinct !DISubprogram(name: "HgfsPlatformGetattrFromName", scope: !526, file: !526, line: 2185, type: !2000, isLocal: false, isDefinition: true, scopeLine: 2190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!609, !519, !2002, !519, !630, !1735}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShareOptions", file: !2003, line: 39, baseType: !510)
!2003 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerPolicy.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!2004 = !DILocalVariable(name: "fileName", arg: 1, scope: !1999, file: !526, line: 2185, type: !519)
!2005 = !DILocation(line: 2185, column: 35, scope: !1999)
!2006 = !DILocalVariable(name: "configOptions", arg: 2, scope: !1999, file: !526, line: 2186, type: !2002)
!2007 = !DILocation(line: 2186, column: 46, scope: !1999)
!2008 = !DILocalVariable(name: "shareName", arg: 3, scope: !1999, file: !526, line: 2187, type: !519)
!2009 = !DILocation(line: 2187, column: 35, scope: !1999)
!2010 = !DILocalVariable(name: "attr", arg: 4, scope: !1999, file: !526, line: 2188, type: !630)
!2011 = !DILocation(line: 2188, column: 47, scope: !1999)
!2012 = !DILocalVariable(name: "targetName", arg: 5, scope: !1999, file: !526, line: 2189, type: !1735)
!2013 = !DILocation(line: 2189, column: 36, scope: !1999)
!2014 = !DILocalVariable(name: "status", scope: !1999, file: !526, line: 2191, type: !609)
!2015 = !DILocation(line: 2191, column: 23, scope: !1999)
!2016 = !DILocalVariable(name: "stats", scope: !1999, file: !526, line: 2192, type: !1179)
!2017 = !DILocation(line: 2192, column: 16, scope: !1999)
!2018 = !DILocalVariable(name: "error", scope: !1999, file: !526, line: 2193, type: !550)
!2019 = !DILocation(line: 2193, column: 8, scope: !1999)
!2020 = !DILocalVariable(name: "myTargetName", scope: !1999, file: !526, line: 2194, type: !519)
!2021 = !DILocation(line: 2194, column: 10, scope: !1999)
!2022 = !DILocalVariable(name: "creationTime", scope: !1999, file: !526, line: 2195, type: !530)
!2023 = !DILocation(line: 2195, column: 11, scope: !1999)
!2024 = !DILocalVariable(name: "followSymlinks", scope: !1999, file: !526, line: 2196, type: !729)
!2025 = !DILocation(line: 2196, column: 9, scope: !1999)
!2026 = !DILocation(line: 2201, column: 4, scope: !1999)
!2027 = distinct !{!2027, !2026}
!2028 = !DILocation(line: 2201, column: 30, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2030, file: !526, discriminator: 1)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !526, line: 2201, column: 28)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !526, line: 2201, column: 13)
!2032 = distinct !DILexicalBlock(scope: !1999, file: !526, line: 2201, column: 7)
!2033 = !DILocation(line: 2201, column: 197, scope: !2029)
!2034 = !DILocation(line: 2201, column: 109, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2029, file: !526, discriminator: 2)
!2036 = !DILocation(line: 2201, column: 210, scope: !2029)
!2037 = !DILocation(line: 2202, column: 55, scope: !1999)
!2038 = !DILocation(line: 2202, column: 21, scope: !1999)
!2039 = !DILocation(line: 2202, column: 19, scope: !1999)
!2040 = !DILocation(line: 2205, column: 21, scope: !1999)
!2041 = !DILocation(line: 2206, column: 21, scope: !1999)
!2042 = !DILocation(line: 2205, column: 12, scope: !1999)
!2043 = !DILocation(line: 2205, column: 10, scope: !1999)
!2044 = !DILocation(line: 2209, column: 8, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1999, file: !526, line: 2209, column: 8)
!2046 = !DILocation(line: 2209, column: 8, scope: !1999)
!2047 = !DILocation(line: 2210, column: 17, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !526, line: 2209, column: 15)
!2049 = !DILocation(line: 2210, column: 16, scope: !2048)
!2050 = !DILocation(line: 2210, column: 14, scope: !2048)
!2051 = !DILocation(line: 2211, column: 7, scope: !2048)
!2052 = distinct !{!2052, !2051}
!2053 = !DILocation(line: 2211, column: 33, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !526, discriminator: 1)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !526, line: 2211, column: 31)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !526, line: 2211, column: 16)
!2057 = distinct !DILexicalBlock(scope: !2048, file: !526, line: 2211, column: 10)
!2058 = !DILocation(line: 2211, column: 215, scope: !2054)
!2059 = !DILocation(line: 2211, column: 198, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2054, file: !526, discriminator: 2)
!2061 = !DILocation(line: 2211, column: 112, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2054, file: !526, discriminator: 3)
!2063 = !DILocation(line: 2211, column: 227, scope: !2054)
!2064 = !DILocation(line: 2213, column: 7, scope: !2048)
!2065 = !DILocation(line: 2221, column: 13, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1999, file: !526, line: 2221, column: 7)
!2067 = !DILocation(line: 2221, column: 10, scope: !2066)
!2068 = !DILocation(line: 2221, column: 21, scope: !2066)
!2069 = !DILocation(line: 2221, column: 7, scope: !1999)
!2070 = !DILocation(line: 2222, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !526, line: 2221, column: 31)
!2072 = !DILocation(line: 2222, column: 13, scope: !2071)
!2073 = !DILocation(line: 2222, column: 18, scope: !2071)
!2074 = !DILocation(line: 2223, column: 7, scope: !2071)
!2075 = distinct !{!2075, !2074}
!2076 = !DILocation(line: 2223, column: 33, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !526, discriminator: 1)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !526, line: 2223, column: 31)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !526, line: 2223, column: 16)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !526, line: 2223, column: 10)
!2081 = !DILocation(line: 2223, column: 112, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2077, file: !526, discriminator: 2)
!2083 = !DILocation(line: 2223, column: 193, scope: !2077)
!2084 = !DILocation(line: 2224, column: 4, scope: !2071)
!2085 = !DILocation(line: 2224, column: 20, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !526, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2066, file: !526, line: 2224, column: 14)
!2088 = !DILocation(line: 2224, column: 17, scope: !2086)
!2089 = !DILocation(line: 2224, column: 28, scope: !2086)
!2090 = !DILocation(line: 2224, column: 14, scope: !2086)
!2091 = !DILocation(line: 2225, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !526, line: 2224, column: 38)
!2093 = !DILocation(line: 2225, column: 13, scope: !2092)
!2094 = !DILocation(line: 2225, column: 18, scope: !2092)
!2095 = !DILocation(line: 2226, column: 7, scope: !2092)
!2096 = distinct !{!2096, !2095}
!2097 = !DILocation(line: 2226, column: 33, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !526, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !526, line: 2226, column: 31)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !526, line: 2226, column: 16)
!2101 = distinct !DILexicalBlock(scope: !2092, file: !526, line: 2226, column: 10)
!2102 = !DILocation(line: 2226, column: 112, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2098, file: !526, discriminator: 2)
!2104 = !DILocation(line: 2226, column: 191, scope: !2098)
!2105 = !DILocation(line: 2232, column: 11, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2092, file: !526, line: 2232, column: 11)
!2107 = !DILocation(line: 2232, column: 22, scope: !2106)
!2108 = !DILocation(line: 2232, column: 11, scope: !2092)
!2109 = !DILocation(line: 2234, column: 40, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !526, line: 2232, column: 30)
!2111 = !DILocation(line: 2234, column: 25, scope: !2110)
!2112 = !DILocation(line: 2234, column: 23, scope: !2110)
!2113 = !DILocation(line: 2235, column: 14, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !526, line: 2235, column: 14)
!2115 = !DILocation(line: 2235, column: 27, scope: !2114)
!2116 = !DILocation(line: 2235, column: 14, scope: !2110)
!2117 = !DILocation(line: 2236, column: 22, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !526, line: 2235, column: 35)
!2119 = !DILocation(line: 2236, column: 21, scope: !2118)
!2120 = !DILocation(line: 2236, column: 19, scope: !2118)
!2121 = !DILocation(line: 2237, column: 13, scope: !2118)
!2122 = distinct !{!2122, !2121}
!2123 = !DILocation(line: 2237, column: 39, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2125, file: !526, discriminator: 1)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !526, line: 2237, column: 37)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !526, line: 2237, column: 22)
!2127 = distinct !DILexicalBlock(scope: !2118, file: !526, line: 2237, column: 16)
!2128 = !DILocation(line: 2237, column: 118, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2124, file: !526, discriminator: 2)
!2130 = !DILocation(line: 2237, column: 213, scope: !2124)
!2131 = !DILocation(line: 2245, column: 22, scope: !2118)
!2132 = !DILocation(line: 2245, column: 30, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2118, file: !526, discriminator: 1)
!2134 = !DILocation(line: 2245, column: 22, scope: !2133)
!2135 = !DILocation(line: 2245, column: 22, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2118, file: !526, discriminator: 2)
!2137 = !DILocation(line: 2245, column: 22, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2118, file: !526, discriminator: 3)
!2139 = !DILocation(line: 2245, column: 20, scope: !2138)
!2140 = !DILocation(line: 2246, column: 13, scope: !2118)
!2141 = !DILocation(line: 2248, column: 7, scope: !2110)
!2142 = !DILocation(line: 2249, column: 4, scope: !2092)
!2143 = !DILocation(line: 2263, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2087, file: !526, line: 2249, column: 11)
!2145 = distinct !{!2145, !2143}
!2146 = !DILocation(line: 2263, column: 33, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !526, discriminator: 1)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !526, line: 2263, column: 31)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !526, line: 2263, column: 16)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !526, line: 2263, column: 10)
!2151 = !DILocation(line: 2263, column: 112, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2147, file: !526, discriminator: 2)
!2153 = !DILocation(line: 2263, column: 205, scope: !2147)
!2154 = !DILocation(line: 2264, column: 35, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2144, file: !526, line: 2264, column: 11)
!2156 = !DILocation(line: 2264, column: 11, scope: !2155)
!2157 = !DILocation(line: 2264, column: 11, scope: !2144)
!2158 = !DILocation(line: 2265, column: 10, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !526, line: 2264, column: 61)
!2160 = distinct !{!2160, !2158}
!2161 = !DILocation(line: 2265, column: 36, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !526, discriminator: 1)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !526, line: 2265, column: 34)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !526, line: 2265, column: 19)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !526, line: 2265, column: 13)
!2166 = !DILocation(line: 2265, column: 115, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2162, file: !526, discriminator: 2)
!2168 = !DILocation(line: 2265, column: 212, scope: !2162)
!2169 = !DILocation(line: 2266, column: 7, scope: !2159)
!2170 = !DILocation(line: 2267, column: 7, scope: !2144)
!2171 = !DILocation(line: 2267, column: 13, scope: !2144)
!2172 = !DILocation(line: 2267, column: 18, scope: !2144)
!2173 = !DILocation(line: 2268, column: 11, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2144, file: !526, line: 2268, column: 11)
!2175 = !DILocation(line: 2268, column: 24, scope: !2174)
!2176 = !DILocation(line: 2268, column: 11, scope: !2144)
!2177 = !DILocalVariable(name: "nameStatus", scope: !2178, file: !526, line: 2277, type: !611)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !526, line: 2268, column: 32)
!2179 = !DILocation(line: 2277, column: 25, scope: !2178)
!2180 = !DILocalVariable(name: "sharePathLen", scope: !2178, file: !526, line: 2278, type: !771)
!2181 = !DILocation(line: 2278, column: 17, scope: !2178)
!2182 = !DILocalVariable(name: "sharePath", scope: !2178, file: !526, line: 2279, type: !522)
!2183 = !DILocation(line: 2279, column: 22, scope: !2178)
!2184 = !DILocation(line: 2280, column: 53, scope: !2178)
!2185 = !DILocation(line: 2281, column: 60, scope: !2178)
!2186 = !DILocation(line: 2281, column: 53, scope: !2178)
!2187 = !DILocation(line: 2280, column: 23, scope: !2178)
!2188 = !DILocation(line: 2280, column: 21, scope: !2178)
!2189 = !DILocation(line: 2285, column: 14, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2178, file: !526, line: 2285, column: 14)
!2191 = !DILocation(line: 2285, column: 25, scope: !2190)
!2192 = !DILocation(line: 2285, column: 54, scope: !2190)
!2193 = !DILocation(line: 2286, column: 14, scope: !2190)
!2194 = !DILocation(line: 2286, column: 36, scope: !2190)
!2195 = !DILocation(line: 2286, column: 29, scope: !2190)
!2196 = !DILocation(line: 2286, column: 27, scope: !2190)
!2197 = !DILocation(line: 2286, column: 50, scope: !2190)
!2198 = !DILocation(line: 2287, column: 22, scope: !2190)
!2199 = !DILocation(line: 2287, column: 33, scope: !2190)
!2200 = !DILocation(line: 2287, column: 47, scope: !2190)
!2201 = !DILocation(line: 2287, column: 14, scope: !2190)
!2202 = !DILocation(line: 2287, column: 61, scope: !2190)
!2203 = !DILocation(line: 2285, column: 14, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2178, file: !526, discriminator: 1)
!2205 = !DILocalVariable(name: "relativeName", scope: !2206, file: !526, line: 2288, type: !519)
!2206 = distinct !DILexicalBlock(scope: !2190, file: !526, line: 2287, column: 67)
!2207 = !DILocation(line: 2288, column: 19, scope: !2206)
!2208 = !DILocation(line: 2290, column: 60, scope: !2206)
!2209 = !DILocation(line: 2290, column: 70, scope: !2206)
!2210 = !DILocation(line: 2290, column: 28, scope: !2206)
!2211 = !DILocation(line: 2290, column: 26, scope: !2206)
!2212 = !DILocation(line: 2291, column: 18, scope: !2206)
!2213 = !DILocation(line: 2291, column: 13, scope: !2206)
!2214 = !DILocation(line: 2292, column: 28, scope: !2206)
!2215 = !DILocation(line: 2292, column: 26, scope: !2206)
!2216 = !DILocation(line: 2294, column: 17, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2206, file: !526, line: 2294, column: 17)
!2218 = !DILocation(line: 2294, column: 30, scope: !2217)
!2219 = !DILocation(line: 2294, column: 17, scope: !2206)
!2220 = !DILocation(line: 2301, column: 39, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !526, line: 2294, column: 38)
!2222 = !DILocation(line: 2301, column: 32, scope: !2221)
!2223 = !DILocation(line: 2301, column: 22, scope: !2221)
!2224 = !DILocation(line: 2301, column: 30, scope: !2221)
!2225 = !DILocation(line: 2302, column: 22, scope: !2221)
!2226 = !DILocation(line: 2302, column: 30, scope: !2221)
!2227 = !DILocation(line: 2303, column: 16, scope: !2221)
!2228 = !DILocation(line: 2303, column: 22, scope: !2221)
!2229 = !DILocation(line: 2303, column: 27, scope: !2221)
!2230 = !DILocation(line: 2304, column: 13, scope: !2221)
!2231 = !DILocation(line: 2305, column: 16, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2217, file: !526, line: 2304, column: 20)
!2233 = distinct !{!2233, !2231}
!2234 = !DILocation(line: 2305, column: 42, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !526, discriminator: 1)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !526, line: 2305, column: 40)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !526, line: 2305, column: 25)
!2238 = distinct !DILexicalBlock(scope: !2232, file: !526, line: 2305, column: 19)
!2239 = !DILocation(line: 2305, column: 121, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2235, file: !526, discriminator: 2)
!2241 = !DILocation(line: 2305, column: 201, scope: !2235)
!2242 = !DILocation(line: 2307, column: 10, scope: !2206)
!2243 = !DILocation(line: 2308, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2190, file: !526, line: 2307, column: 17)
!2245 = distinct !{!2245, !2243}
!2246 = !DILocation(line: 2308, column: 40, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2248, file: !526, discriminator: 1)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !526, line: 2308, column: 38)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !526, line: 2308, column: 23)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !526, line: 2308, column: 17)
!2251 = !DILocation(line: 2308, column: 119, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2247, file: !526, discriminator: 2)
!2253 = !DILocation(line: 2308, column: 223, scope: !2247)
!2254 = !DILocation(line: 2311, column: 7, scope: !2178)
!2255 = !DILocation(line: 2314, column: 8, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1999, file: !526, line: 2314, column: 8)
!2257 = !DILocation(line: 2314, column: 21, scope: !2256)
!2258 = !DILocation(line: 2314, column: 28, scope: !2256)
!2259 = !DILocation(line: 2314, column: 31, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2256, file: !526, discriminator: 1)
!2261 = !DILocation(line: 2314, column: 42, scope: !2260)
!2262 = !DILocation(line: 2314, column: 8, scope: !2260)
!2263 = !DILocation(line: 2330, column: 21, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !526, line: 2314, column: 51)
!2265 = !DILocation(line: 2330, column: 8, scope: !2264)
!2266 = !DILocation(line: 2330, column: 19, scope: !2264)
!2267 = !DILocation(line: 2331, column: 20, scope: !2264)
!2268 = !DILocation(line: 2333, column: 7, scope: !2264)
!2269 = distinct !{!2269, !2268}
!2270 = !DILocation(line: 2333, column: 33, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2272, file: !526, discriminator: 1)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !526, line: 2333, column: 31)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !526, line: 2333, column: 16)
!2274 = distinct !DILexicalBlock(scope: !2264, file: !526, line: 2333, column: 10)
!2275 = !DILocation(line: 2333, column: 198, scope: !2271)
!2276 = !DILocation(line: 2333, column: 197, scope: !2271)
!2277 = !DILocation(line: 2333, column: 112, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2271, file: !526, discriminator: 2)
!2279 = !DILocation(line: 2333, column: 213, scope: !2271)
!2280 = !DILocation(line: 2334, column: 4, scope: !2264)
!2281 = !DILocation(line: 2336, column: 46, scope: !1999)
!2282 = !DILocation(line: 2336, column: 4, scope: !1999)
!2283 = !DILocation(line: 2342, column: 22, scope: !1999)
!2284 = !DILocation(line: 2342, column: 32, scope: !1999)
!2285 = !DILocation(line: 2342, column: 4, scope: !1999)
!2286 = !DILocation(line: 2344, column: 38, scope: !1999)
!2287 = !DILocation(line: 2344, column: 48, scope: !1999)
!2288 = !DILocation(line: 2344, column: 64, scope: !1999)
!2289 = !DILocation(line: 2344, column: 4, scope: !1999)
!2290 = !DILocation(line: 2347, column: 15, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !1999, file: !526, line: 2347, column: 8)
!2292 = !DILocation(line: 2347, column: 12, scope: !2291)
!2293 = !DILocation(line: 2347, column: 23, scope: !2291)
!2294 = !DILocation(line: 2347, column: 8, scope: !1999)
!2295 = !DILocalVariable(name: "shareMode", scope: !2296, file: !526, line: 2348, type: !747)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !526, line: 2347, column: 34)
!2297 = !DILocation(line: 2348, column: 20, scope: !2296)
!2298 = !DILocalVariable(name: "permissions", scope: !2296, file: !526, line: 2349, type: !510)
!2299 = !DILocation(line: 2349, column: 14, scope: !2296)
!2300 = !DILocalVariable(name: "nameStatus", scope: !2296, file: !526, line: 2350, type: !611)
!2301 = !DILocation(line: 2350, column: 22, scope: !2296)
!2302 = !DILocation(line: 2351, column: 50, scope: !2296)
!2303 = !DILocation(line: 2351, column: 68, scope: !2296)
!2304 = !DILocation(line: 2351, column: 61, scope: !2296)
!2305 = !DILocation(line: 2351, column: 20, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2296, file: !526, discriminator: 1)
!2307 = !DILocation(line: 2351, column: 18, scope: !2296)
!2308 = !DILocation(line: 2353, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2296, file: !526, line: 2353, column: 11)
!2310 = !DILocation(line: 2353, column: 22, scope: !2309)
!2311 = !DILocation(line: 2353, column: 51, scope: !2309)
!2312 = !DILocation(line: 2354, column: 36, scope: !2309)
!2313 = !DILocation(line: 2355, column: 36, scope: !2309)
!2314 = !DILocation(line: 2355, column: 46, scope: !2309)
!2315 = !DILocation(line: 2354, column: 11, scope: !2309)
!2316 = !DILocation(line: 2356, column: 50, scope: !2309)
!2317 = !DILocation(line: 2353, column: 11, scope: !2306)
!2318 = !DILocation(line: 2357, column: 10, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2309, file: !526, line: 2356, column: 56)
!2320 = !DILocation(line: 2357, column: 16, scope: !2319)
!2321 = !DILocation(line: 2357, column: 21, scope: !2319)
!2322 = !DILocation(line: 2358, column: 33, scope: !2319)
!2323 = !DILocation(line: 2358, column: 10, scope: !2319)
!2324 = !DILocation(line: 2358, column: 16, scope: !2319)
!2325 = !DILocation(line: 2358, column: 31, scope: !2319)
!2326 = !DILocation(line: 2359, column: 7, scope: !2319)
!2327 = !DILocation(line: 2360, column: 4, scope: !2296)
!2328 = !DILocation(line: 2347, column: 31, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2291, file: !526, discriminator: 1)
!2330 = !DILocation(line: 2363, column: 9, scope: !1999)
!2331 = !DILocation(line: 2363, column: 4, scope: !1999)
!2332 = !DILocation(line: 2364, column: 11, scope: !1999)
!2333 = !DILocation(line: 2364, column: 4, scope: !1999)
!2334 = distinct !DISubprogram(name: "HgfsStat", scope: !526, file: !526, line: 1973, type: !2335, isLocal: true, isDefinition: true, scopeLine: 1977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!550, !522, !729, !2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64, align: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!2339 = !DILocalVariable(name: "fileName", arg: 1, scope: !2334, file: !526, line: 1973, type: !522)
!2340 = !DILocation(line: 1973, column: 22, scope: !2334)
!2341 = !DILocalVariable(name: "followLink", arg: 2, scope: !2334, file: !526, line: 1974, type: !729)
!2342 = !DILocation(line: 1974, column: 15, scope: !2334)
!2343 = !DILocalVariable(name: "stats", arg: 3, scope: !2334, file: !526, line: 1975, type: !2337)
!2344 = !DILocation(line: 1975, column: 23, scope: !2334)
!2345 = !DILocalVariable(name: "creationTime", arg: 4, scope: !2334, file: !526, line: 1976, type: !2338)
!2346 = !DILocation(line: 1976, column: 18, scope: !2334)
!2347 = !DILocalVariable(name: "error", scope: !2334, file: !526, line: 1978, type: !550)
!2348 = !DILocation(line: 1978, column: 8, scope: !2334)
!2349 = !DILocation(line: 1986, column: 8, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2334, file: !526, line: 1986, column: 8)
!2351 = !DILocation(line: 1986, column: 8, scope: !2334)
!2352 = !DILocation(line: 1987, column: 26, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !526, line: 1986, column: 20)
!2354 = !DILocation(line: 1987, column: 36, scope: !2353)
!2355 = !DILocation(line: 1987, column: 15, scope: !2353)
!2356 = !DILocation(line: 1987, column: 13, scope: !2353)
!2357 = !DILocation(line: 1988, column: 4, scope: !2353)
!2358 = !DILocation(line: 1989, column: 27, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2350, file: !526, line: 1988, column: 11)
!2360 = !DILocation(line: 1989, column: 37, scope: !2359)
!2361 = !DILocation(line: 1989, column: 15, scope: !2359)
!2362 = !DILocation(line: 1989, column: 13, scope: !2359)
!2363 = !DILocation(line: 1992, column: 40, scope: !2334)
!2364 = !DILocation(line: 1992, column: 20, scope: !2334)
!2365 = !DILocation(line: 1992, column: 5, scope: !2334)
!2366 = !DILocation(line: 1992, column: 18, scope: !2334)
!2367 = !DILocation(line: 1993, column: 11, scope: !2334)
!2368 = !DILocation(line: 1993, column: 4, scope: !2334)
!2369 = distinct !DISubprogram(name: "HgfsGetattrResolveAlias", scope: !526, file: !526, line: 1126, type: !2370, isLocal: true, isDefinition: true, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!609, !522, !1735}
!2372 = !DILocalVariable(name: "fileName", arg: 1, scope: !2369, file: !526, line: 1126, type: !522)
!2373 = !DILocation(line: 1126, column: 37, scope: !2369)
!2374 = !DILocalVariable(name: "targetName", arg: 2, scope: !2369, file: !526, line: 1127, type: !1735)
!2375 = !DILocation(line: 1127, column: 32, scope: !2369)
!2376 = !DILocation(line: 1130, column: 5, scope: !2369)
!2377 = !DILocation(line: 1130, column: 16, scope: !2369)
!2378 = !DILocation(line: 1131, column: 4, scope: !2369)
!2379 = distinct !DISubprogram(name: "HgfsStatToFileAttr", scope: !526, file: !526, line: 2510, type: !2380, isLocal: true, isDefinition: true, scopeLine: 2513, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2337, !2338, !630}
!2382 = !DILocalVariable(name: "stats", arg: 1, scope: !2379, file: !526, line: 2510, type: !2337)
!2383 = !DILocation(line: 2510, column: 33, scope: !2379)
!2384 = !DILocalVariable(name: "creationTime", arg: 2, scope: !2379, file: !526, line: 2511, type: !2338)
!2385 = !DILocation(line: 2511, column: 28, scope: !2379)
!2386 = !DILocalVariable(name: "attr", arg: 3, scope: !2379, file: !526, line: 2512, type: !630)
!2387 = !DILocation(line: 2512, column: 38, scope: !2379)
!2388 = !DILocation(line: 2514, column: 17, scope: !2379)
!2389 = !DILocation(line: 2514, column: 24, scope: !2379)
!2390 = !DILocation(line: 2514, column: 4, scope: !2379)
!2391 = !DILocation(line: 2514, column: 10, scope: !2379)
!2392 = !DILocation(line: 2514, column: 15, scope: !2379)
!2393 = !DILocation(line: 2515, column: 27, scope: !2379)
!2394 = !DILocation(line: 2515, column: 34, scope: !2379)
!2395 = !DILocation(line: 2515, column: 44, scope: !2379)
!2396 = !DILocation(line: 2515, column: 4, scope: !2379)
!2397 = !DILocation(line: 2515, column: 10, scope: !2379)
!2398 = !DILocation(line: 2515, column: 25, scope: !2379)
!2399 = !DILocation(line: 2516, column: 26, scope: !2379)
!2400 = !DILocation(line: 2516, column: 25, scope: !2379)
!2401 = !DILocation(line: 2516, column: 4, scope: !2379)
!2402 = !DILocation(line: 2516, column: 10, scope: !2379)
!2403 = !DILocation(line: 2516, column: 23, scope: !2379)
!2404 = !DILocation(line: 2542, column: 52, scope: !2379)
!2405 = !DILocation(line: 2542, column: 59, scope: !2379)
!2406 = !DILocation(line: 2542, column: 23, scope: !2379)
!2407 = !DILocation(line: 2542, column: 4, scope: !2379)
!2408 = !DILocation(line: 2542, column: 10, scope: !2379)
!2409 = !DILocation(line: 2542, column: 21, scope: !2379)
!2410 = !DILocation(line: 2543, column: 51, scope: !2379)
!2411 = !DILocation(line: 2543, column: 58, scope: !2379)
!2412 = !DILocation(line: 2543, column: 22, scope: !2379)
!2413 = !DILocation(line: 2543, column: 4, scope: !2379)
!2414 = !DILocation(line: 2543, column: 10, scope: !2379)
!2415 = !DILocation(line: 2543, column: 20, scope: !2379)
!2416 = !DILocation(line: 2544, column: 56, scope: !2379)
!2417 = !DILocation(line: 2544, column: 63, scope: !2379)
!2418 = !DILocation(line: 2544, column: 27, scope: !2379)
!2419 = !DILocation(line: 2544, column: 4, scope: !2379)
!2420 = !DILocation(line: 2544, column: 10, scope: !2379)
!2421 = !DILocation(line: 2544, column: 25, scope: !2379)
!2422 = !DILocation(line: 2555, column: 26, scope: !2379)
!2423 = !DILocation(line: 2555, column: 33, scope: !2379)
!2424 = !DILocation(line: 2555, column: 41, scope: !2379)
!2425 = !DILocation(line: 2555, column: 75, scope: !2379)
!2426 = !DILocation(line: 2555, column: 25, scope: !2379)
!2427 = !DILocation(line: 2555, column: 4, scope: !2379)
!2428 = !DILocation(line: 2555, column: 10, scope: !2379)
!2429 = !DILocation(line: 2555, column: 23, scope: !2379)
!2430 = !DILocation(line: 2556, column: 24, scope: !2379)
!2431 = !DILocation(line: 2556, column: 31, scope: !2379)
!2432 = !DILocation(line: 2556, column: 39, scope: !2379)
!2433 = !DILocation(line: 2556, column: 53, scope: !2379)
!2434 = !DILocation(line: 2556, column: 23, scope: !2379)
!2435 = !DILocation(line: 2556, column: 4, scope: !2379)
!2436 = !DILocation(line: 2556, column: 10, scope: !2379)
!2437 = !DILocation(line: 2556, column: 21, scope: !2379)
!2438 = !DILocation(line: 2557, column: 24, scope: !2379)
!2439 = !DILocation(line: 2557, column: 31, scope: !2379)
!2440 = !DILocation(line: 2557, column: 39, scope: !2379)
!2441 = !DILocation(line: 2557, column: 53, scope: !2379)
!2442 = !DILocation(line: 2557, column: 23, scope: !2379)
!2443 = !DILocation(line: 2557, column: 4, scope: !2379)
!2444 = !DILocation(line: 2557, column: 10, scope: !2379)
!2445 = !DILocation(line: 2557, column: 21, scope: !2379)
!2446 = !DILocation(line: 2558, column: 23, scope: !2379)
!2447 = !DILocation(line: 2558, column: 30, scope: !2379)
!2448 = !DILocation(line: 2558, column: 38, scope: !2379)
!2449 = !DILocation(line: 2558, column: 4, scope: !2379)
!2450 = !DILocation(line: 2558, column: 10, scope: !2379)
!2451 = !DILocation(line: 2558, column: 21, scope: !2379)
!2452 = !DILocation(line: 2559, column: 4, scope: !2379)
!2453 = distinct !{!2453, !2452}
!2454 = !DILocation(line: 2559, column: 30, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !526, discriminator: 1)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !526, line: 2559, column: 28)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !526, line: 2559, column: 13)
!2458 = distinct !DILexicalBlock(scope: !2379, file: !526, line: 2559, column: 7)
!2459 = !DILocation(line: 2559, column: 213, scope: !2455)
!2460 = !DILocation(line: 2559, column: 219, scope: !2455)
!2461 = !DILocation(line: 2559, column: 233, scope: !2455)
!2462 = !DILocation(line: 2559, column: 239, scope: !2455)
!2463 = !DILocation(line: 2559, column: 251, scope: !2455)
!2464 = !DILocation(line: 2559, column: 257, scope: !2455)
!2465 = !DILocation(line: 2559, column: 269, scope: !2455)
!2466 = !DILocation(line: 2559, column: 275, scope: !2455)
!2467 = !DILocation(line: 2559, column: 287, scope: !2455)
!2468 = !DILocation(line: 2559, column: 293, scope: !2455)
!2469 = !DILocation(line: 2559, column: 109, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2455, file: !526, discriminator: 2)
!2471 = !DILocation(line: 2559, column: 302, scope: !2455)
!2472 = !DILocation(line: 2571, column: 4, scope: !2379)
!2473 = distinct !{!2473, !2472}
!2474 = !DILocation(line: 2571, column: 30, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2476, file: !526, discriminator: 1)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !526, line: 2571, column: 28)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !526, line: 2571, column: 13)
!2478 = distinct !DILexicalBlock(scope: !2379, file: !526, line: 2571, column: 7)
!2479 = !DILocation(line: 2571, column: 230, scope: !2475)
!2480 = !DILocation(line: 2571, column: 3, scope: !2475)
!2481 = !DILocation(line: 2571, column: 11, scope: !2475)
!2482 = !DILocation(line: 2571, column: 5, scope: !2475)
!2483 = !DILocation(line: 2571, column: 23, scope: !2475)
!2484 = !DILocation(line: 2571, column: 22, scope: !2475)
!2485 = !DILocation(line: 2571, column: 109, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2475, file: !526, discriminator: 2)
!2487 = !DILocation(line: 2577, column: 19, scope: !2379)
!2488 = !DILocation(line: 2577, column: 26, scope: !2379)
!2489 = !DILocation(line: 2577, column: 4, scope: !2379)
!2490 = !DILocation(line: 2577, column: 10, scope: !2379)
!2491 = !DILocation(line: 2577, column: 17, scope: !2379)
!2492 = !DILocation(line: 2578, column: 20, scope: !2379)
!2493 = !DILocation(line: 2578, column: 27, scope: !2379)
!2494 = !DILocation(line: 2578, column: 4, scope: !2379)
!2495 = !DILocation(line: 2578, column: 10, scope: !2379)
!2496 = !DILocation(line: 2578, column: 18, scope: !2379)
!2497 = !DILocation(line: 2579, column: 23, scope: !2379)
!2498 = !DILocation(line: 2579, column: 30, scope: !2379)
!2499 = !DILocation(line: 2579, column: 4, scope: !2379)
!2500 = !DILocation(line: 2579, column: 10, scope: !2379)
!2501 = !DILocation(line: 2579, column: 21, scope: !2379)
!2502 = !DILocation(line: 2580, column: 21, scope: !2379)
!2503 = !DILocation(line: 2580, column: 28, scope: !2379)
!2504 = !DILocation(line: 2580, column: 4, scope: !2379)
!2505 = !DILocation(line: 2580, column: 10, scope: !2379)
!2506 = !DILocation(line: 2580, column: 19, scope: !2379)
!2507 = !DILocation(line: 2581, column: 4, scope: !2379)
!2508 = !DILocation(line: 2581, column: 10, scope: !2379)
!2509 = !DILocation(line: 2581, column: 15, scope: !2379)
!2510 = !DILocation(line: 2596, column: 1, scope: !2379)
!2511 = distinct !DISubprogram(name: "HgfsGetHiddenAttr", scope: !526, file: !526, line: 1363, type: !2512, isLocal: true, isDefinition: true, scopeLine: 1365, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !522, !630}
!2514 = !DILocalVariable(name: "fileName", arg: 1, scope: !2511, file: !526, line: 1363, type: !522)
!2515 = !DILocation(line: 1363, column: 31, scope: !2511)
!2516 = !DILocalVariable(name: "attr", arg: 2, scope: !2511, file: !526, line: 1364, type: !630)
!2517 = !DILocation(line: 1364, column: 37, scope: !2511)
!2518 = !DILocalVariable(name: "baseName", scope: !2511, file: !526, line: 1366, type: !519)
!2519 = !DILocation(line: 1366, column: 10, scope: !2511)
!2520 = !DILocation(line: 1371, column: 23, scope: !2511)
!2521 = !DILocation(line: 1371, column: 15, scope: !2511)
!2522 = !DILocation(line: 1371, column: 13, scope: !2511)
!2523 = !DILocation(line: 1373, column: 9, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2511, file: !526, line: 1373, column: 8)
!2525 = !DILocation(line: 1373, column: 18, scope: !2524)
!2526 = !DILocation(line: 1373, column: 26, scope: !2524)
!2527 = !DILocation(line: 1374, column: 9, scope: !2524)
!2528 = !DILocation(line: 1374, column: 21, scope: !2524)
!2529 = !DILocation(line: 1374, column: 29, scope: !2524)
!2530 = !DILocation(line: 1375, column: 17, scope: !2524)
!2531 = !DILocation(line: 1375, column: 9, scope: !2524)
!2532 = !DILocation(line: 1375, column: 35, scope: !2524)
!2533 = !DILocation(line: 1375, column: 41, scope: !2524)
!2534 = !DILocation(line: 1376, column: 17, scope: !2524)
!2535 = !DILocation(line: 1376, column: 9, scope: !2524)
!2536 = !DILocation(line: 1376, column: 36, scope: !2524)
!2537 = !DILocation(line: 1373, column: 8, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2511, file: !526, discriminator: 1)
!2539 = !DILocation(line: 1377, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !526, line: 1376, column: 43)
!2541 = !DILocation(line: 1377, column: 13, scope: !2540)
!2542 = !DILocation(line: 1377, column: 18, scope: !2540)
!2543 = !DILocation(line: 1378, column: 7, scope: !2540)
!2544 = !DILocation(line: 1378, column: 13, scope: !2540)
!2545 = !DILocation(line: 1378, column: 19, scope: !2540)
!2546 = !DILocation(line: 1386, column: 7, scope: !2540)
!2547 = !DILocation(line: 1386, column: 13, scope: !2540)
!2548 = !DILocation(line: 1386, column: 19, scope: !2540)
!2549 = !DILocation(line: 1387, column: 4, scope: !2540)
!2550 = !DILocalVariable(name: "isHidden", scope: !2551, file: !526, line: 1388, type: !729)
!2551 = distinct !DILexicalBlock(scope: !2524, file: !526, line: 1387, column: 11)
!2552 = !DILocation(line: 1388, column: 12, scope: !2551)
!2553 = !DILocation(line: 1395, column: 26, scope: !2551)
!2554 = !DILocation(line: 1395, column: 7, scope: !2551)
!2555 = !DILocation(line: 1396, column: 11, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2551, file: !526, line: 1396, column: 11)
!2557 = !DILocation(line: 1396, column: 11, scope: !2551)
!2558 = !DILocation(line: 1397, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !526, line: 1396, column: 21)
!2560 = !DILocation(line: 1397, column: 16, scope: !2559)
!2561 = !DILocation(line: 1397, column: 21, scope: !2559)
!2562 = !DILocation(line: 1398, column: 10, scope: !2559)
!2563 = !DILocation(line: 1398, column: 16, scope: !2559)
!2564 = !DILocation(line: 1398, column: 22, scope: !2559)
!2565 = !DILocation(line: 1399, column: 7, scope: !2559)
!2566 = !DILocation(line: 1401, column: 1, scope: !2511)
!2567 = distinct !DISubprogram(name: "HgfsGetSequentialOnlyFlagFromName", scope: !526, file: !526, line: 2053, type: !2568, isLocal: true, isDefinition: true, scopeLine: 2056, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !522, !729, !630}
!2570 = !DILocalVariable(name: "fileName", arg: 1, scope: !2567, file: !526, line: 2053, type: !522)
!2571 = !DILocation(line: 2053, column: 47, scope: !2567)
!2572 = !DILocalVariable(name: "followSymlinks", arg: 2, scope: !2567, file: !526, line: 2054, type: !729)
!2573 = !DILocation(line: 2054, column: 40, scope: !2567)
!2574 = !DILocalVariable(name: "attr", arg: 3, scope: !2567, file: !526, line: 2055, type: !630)
!2575 = !DILocation(line: 2055, column: 53, scope: !2567)
!2576 = !DILocalVariable(name: "fd", scope: !2567, file: !526, line: 2058, type: !550)
!2577 = !DILocation(line: 2058, column: 8, scope: !2567)
!2578 = !DILocalVariable(name: "openFlags", scope: !2567, file: !526, line: 2059, type: !550)
!2579 = !DILocation(line: 2059, column: 8, scope: !2567)
!2580 = !DILocation(line: 2061, column: 16, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2567, file: !526, line: 2061, column: 8)
!2582 = !DILocation(line: 2061, column: 13, scope: !2581)
!2583 = !DILocation(line: 2061, column: 26, scope: !2581)
!2584 = !DILocation(line: 2061, column: 38, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2581, file: !526, discriminator: 1)
!2586 = !DILocation(line: 2061, column: 35, scope: !2585)
!2587 = !DILocation(line: 2061, column: 8, scope: !2585)
!2588 = !DILocation(line: 2062, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2581, file: !526, line: 2061, column: 45)
!2590 = !DILocation(line: 2069, column: 4, scope: !2567)
!2591 = !DILocation(line: 2075, column: 8, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2567, file: !526, line: 2075, column: 8)
!2593 = !DILocation(line: 2075, column: 8, scope: !2567)
!2594 = !DILocation(line: 2076, column: 17, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !526, line: 2075, column: 24)
!2596 = !DILocation(line: 2077, column: 4, scope: !2595)
!2597 = !DILocation(line: 2087, column: 20, scope: !2567)
!2598 = !DILocation(line: 2087, column: 30, scope: !2567)
!2599 = !DILocation(line: 2087, column: 9, scope: !2567)
!2600 = !DILocation(line: 2087, column: 7, scope: !2567)
!2601 = !DILocation(line: 2088, column: 8, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2567, file: !526, line: 2088, column: 8)
!2603 = !DILocation(line: 2088, column: 11, scope: !2602)
!2604 = !DILocation(line: 2088, column: 8, scope: !2567)
!2605 = !DILocation(line: 2089, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !526, line: 2088, column: 16)
!2607 = distinct !{!2607, !2605}
!2608 = !DILocation(line: 2089, column: 33, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2610, file: !526, discriminator: 1)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !526, line: 2089, column: 31)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !526, line: 2089, column: 16)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !526, line: 2089, column: 10)
!2613 = !DILocation(line: 2089, column: 205, scope: !2609)
!2614 = !DILocation(line: 2089, column: 112, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2609, file: !526, discriminator: 2)
!2616 = !DILocation(line: 2089, column: 218, scope: !2609)
!2617 = !DILocation(line: 2090, column: 7, scope: !2606)
!2618 = !DILocation(line: 2092, column: 36, scope: !2567)
!2619 = !DILocation(line: 2092, column: 40, scope: !2567)
!2620 = !DILocation(line: 2092, column: 4, scope: !2567)
!2621 = !DILocation(line: 2093, column: 10, scope: !2567)
!2622 = !DILocation(line: 2093, column: 4, scope: !2567)
!2623 = !DILocation(line: 2094, column: 4, scope: !2567)
!2624 = !DILocation(line: 2096, column: 1, scope: !2567)
!2625 = distinct !DISubprogram(name: "HgfsEffectivePermissions", scope: !526, file: !526, line: 1863, type: !2626, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!609, !519, !729, !778}
!2628 = !DILocalVariable(name: "fileName", arg: 1, scope: !2625, file: !526, line: 1863, type: !519)
!2629 = !DILocation(line: 1863, column: 32, scope: !2625)
!2630 = !DILocalVariable(name: "readOnlyShare", arg: 2, scope: !2625, file: !526, line: 1864, type: !729)
!2631 = !DILocation(line: 1864, column: 31, scope: !2625)
!2632 = !DILocalVariable(name: "permissions", arg: 3, scope: !2625, file: !526, line: 1865, type: !778)
!2633 = !DILocation(line: 1865, column: 34, scope: !2625)
!2634 = !DILocation(line: 1867, column: 5, scope: !2625)
!2635 = !DILocation(line: 1867, column: 17, scope: !2625)
!2636 = !DILocation(line: 1868, column: 21, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2625, file: !526, line: 1868, column: 8)
!2638 = !DILocation(line: 1868, column: 8, scope: !2637)
!2639 = !DILocation(line: 1868, column: 36, scope: !2637)
!2640 = !DILocation(line: 1868, column: 8, scope: !2625)
!2641 = !DILocation(line: 1869, column: 8, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !526, line: 1868, column: 42)
!2643 = !DILocation(line: 1869, column: 20, scope: !2642)
!2644 = !DILocation(line: 1870, column: 4, scope: !2642)
!2645 = !DILocation(line: 1871, column: 21, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2625, file: !526, line: 1871, column: 8)
!2647 = !DILocation(line: 1871, column: 8, scope: !2646)
!2648 = !DILocation(line: 1871, column: 36, scope: !2646)
!2649 = !DILocation(line: 1871, column: 8, scope: !2625)
!2650 = !DILocation(line: 1872, column: 8, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !526, line: 1871, column: 42)
!2652 = !DILocation(line: 1872, column: 20, scope: !2651)
!2653 = !DILocation(line: 1873, column: 4, scope: !2651)
!2654 = !DILocation(line: 1874, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2625, file: !526, line: 1874, column: 8)
!2656 = !DILocation(line: 1874, column: 23, scope: !2655)
!2657 = !DILocation(line: 1874, column: 40, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2655, file: !526, discriminator: 1)
!2659 = !DILocation(line: 1874, column: 27, scope: !2658)
!2660 = !DILocation(line: 1874, column: 55, scope: !2658)
!2661 = !DILocation(line: 1874, column: 8, scope: !2658)
!2662 = !DILocation(line: 1875, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !526, line: 1874, column: 62)
!2664 = !DILocation(line: 1875, column: 20, scope: !2663)
!2665 = !DILocation(line: 1876, column: 4, scope: !2663)
!2666 = !DILocation(line: 1877, column: 4, scope: !2625)
!2667 = distinct !DISubprogram(name: "HgfsPlatformGetattrFromFd", scope: !526, file: !526, line: 2387, type: !2668, isLocal: false, isDefinition: true, scopeLine: 2390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!609, !827, !863, !630}
!2670 = !DILocalVariable(name: "fileDesc", arg: 1, scope: !2667, file: !526, line: 2387, type: !827)
!2671 = !DILocation(line: 2387, column: 36, scope: !2667)
!2672 = !DILocalVariable(name: "session", arg: 2, scope: !2667, file: !526, line: 2388, type: !863)
!2673 = !DILocation(line: 2388, column: 44, scope: !2667)
!2674 = !DILocalVariable(name: "attr", arg: 3, scope: !2667, file: !526, line: 2389, type: !630)
!2675 = !DILocation(line: 2389, column: 45, scope: !2667)
!2676 = !DILocalVariable(name: "status", scope: !2667, file: !526, line: 2391, type: !609)
!2677 = !DILocation(line: 2391, column: 23, scope: !2667)
!2678 = !DILocalVariable(name: "stats", scope: !2667, file: !526, line: 2392, type: !1179)
!2679 = !DILocation(line: 2392, column: 16, scope: !2667)
!2680 = !DILocalVariable(name: "error", scope: !2667, file: !526, line: 2393, type: !550)
!2681 = !DILocation(line: 2393, column: 8, scope: !2667)
!2682 = !DILocalVariable(name: "shareMode", scope: !2667, file: !526, line: 2394, type: !747)
!2683 = !DILocation(line: 2394, column: 17, scope: !2667)
!2684 = !DILocalVariable(name: "handle", scope: !2667, file: !526, line: 2395, type: !509)
!2685 = !DILocation(line: 2395, column: 15, scope: !2667)
!2686 = !DILocalVariable(name: "fileName", scope: !2667, file: !526, line: 2396, type: !519)
!2687 = !DILocation(line: 2396, column: 10, scope: !2667)
!2688 = !DILocalVariable(name: "fileNameLen", scope: !2667, file: !526, line: 2397, type: !771)
!2689 = !DILocation(line: 2397, column: 11, scope: !2667)
!2690 = !DILocalVariable(name: "creationTime", scope: !2667, file: !526, line: 2398, type: !530)
!2691 = !DILocation(line: 2398, column: 11, scope: !2667)
!2692 = !DILocation(line: 2403, column: 4, scope: !2667)
!2693 = distinct !{!2693, !2692}
!2694 = !DILocation(line: 2403, column: 30, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2696, file: !526, discriminator: 1)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !526, line: 2403, column: 28)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !526, line: 2403, column: 13)
!2698 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2403, column: 7)
!2699 = !DILocation(line: 2403, column: 193, scope: !2695)
!2700 = !DILocation(line: 2403, column: 109, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2695, file: !526, discriminator: 2)
!2702 = !DILocation(line: 2403, column: 206, scope: !2695)
!2703 = !DILocation(line: 2405, column: 22, scope: !2667)
!2704 = !DILocation(line: 2405, column: 12, scope: !2667)
!2705 = !DILocation(line: 2405, column: 10, scope: !2667)
!2706 = !DILocation(line: 2406, column: 8, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2406, column: 8)
!2708 = !DILocation(line: 2406, column: 8, scope: !2667)
!2709 = !DILocation(line: 2407, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !526, line: 2406, column: 15)
!2711 = distinct !{!2711, !2709}
!2712 = !DILocation(line: 2407, column: 33, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2714, file: !526, discriminator: 1)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !526, line: 2407, column: 31)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !526, line: 2407, column: 16)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !526, line: 2407, column: 10)
!2717 = !DILocation(line: 2407, column: 215, scope: !2713)
!2718 = !DILocation(line: 2407, column: 198, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2713, file: !526, discriminator: 2)
!2720 = !DILocation(line: 2407, column: 112, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2713, file: !526, discriminator: 3)
!2722 = !DILocation(line: 2407, column: 226, scope: !2713)
!2723 = !DILocation(line: 2409, column: 16, scope: !2710)
!2724 = !DILocation(line: 2409, column: 14, scope: !2710)
!2725 = !DILocation(line: 2410, column: 7, scope: !2710)
!2726 = !DILocation(line: 2417, column: 13, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2417, column: 7)
!2728 = !DILocation(line: 2417, column: 10, scope: !2727)
!2729 = !DILocation(line: 2417, column: 21, scope: !2727)
!2730 = !DILocation(line: 2417, column: 7, scope: !2667)
!2731 = !DILocation(line: 2418, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !526, line: 2417, column: 31)
!2733 = !DILocation(line: 2418, column: 13, scope: !2732)
!2734 = !DILocation(line: 2418, column: 18, scope: !2732)
!2735 = !DILocation(line: 2419, column: 7, scope: !2732)
!2736 = distinct !{!2736, !2735}
!2737 = !DILocation(line: 2419, column: 33, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2739, file: !526, discriminator: 1)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !526, line: 2419, column: 31)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !526, line: 2419, column: 16)
!2741 = distinct !DILexicalBlock(scope: !2732, file: !526, line: 2419, column: 10)
!2742 = !DILocation(line: 2419, column: 112, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2738, file: !526, discriminator: 2)
!2744 = !DILocation(line: 2419, column: 193, scope: !2738)
!2745 = !DILocation(line: 2420, column: 4, scope: !2732)
!2746 = !DILocation(line: 2420, column: 20, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2748, file: !526, discriminator: 1)
!2748 = distinct !DILexicalBlock(scope: !2727, file: !526, line: 2420, column: 14)
!2749 = !DILocation(line: 2420, column: 17, scope: !2747)
!2750 = !DILocation(line: 2420, column: 28, scope: !2747)
!2751 = !DILocation(line: 2420, column: 14, scope: !2747)
!2752 = !DILocation(line: 2421, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !526, line: 2420, column: 38)
!2754 = !DILocation(line: 2421, column: 13, scope: !2753)
!2755 = !DILocation(line: 2421, column: 18, scope: !2753)
!2756 = !DILocation(line: 2422, column: 7, scope: !2753)
!2757 = distinct !{!2757, !2756}
!2758 = !DILocation(line: 2422, column: 33, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2760, file: !526, discriminator: 1)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !526, line: 2422, column: 31)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !526, line: 2422, column: 16)
!2762 = distinct !DILexicalBlock(scope: !2753, file: !526, line: 2422, column: 10)
!2763 = !DILocation(line: 2422, column: 112, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2759, file: !526, discriminator: 2)
!2765 = !DILocation(line: 2422, column: 191, scope: !2759)
!2766 = !DILocation(line: 2424, column: 4, scope: !2753)
!2767 = !DILocation(line: 2425, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2748, file: !526, line: 2424, column: 11)
!2769 = !DILocation(line: 2425, column: 13, scope: !2768)
!2770 = !DILocation(line: 2425, column: 18, scope: !2768)
!2771 = !DILocation(line: 2426, column: 7, scope: !2768)
!2772 = distinct !{!2772, !2771}
!2773 = !DILocation(line: 2426, column: 33, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2775, file: !526, discriminator: 1)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !526, line: 2426, column: 31)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !526, line: 2426, column: 16)
!2777 = distinct !DILexicalBlock(scope: !2768, file: !526, line: 2426, column: 10)
!2778 = !DILocation(line: 2426, column: 112, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2774, file: !526, discriminator: 2)
!2780 = !DILocation(line: 2426, column: 205, scope: !2774)
!2781 = !DILocation(line: 2429, column: 46, scope: !2667)
!2782 = !DILocation(line: 2429, column: 4, scope: !2667)
!2783 = !DILocation(line: 2441, column: 29, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2441, column: 8)
!2785 = !DILocation(line: 2441, column: 39, scope: !2784)
!2786 = !DILocation(line: 2441, column: 9, scope: !2784)
!2787 = !DILocation(line: 2441, column: 8, scope: !2667)
!2788 = !DILocation(line: 2442, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !526, line: 2441, column: 58)
!2790 = distinct !{!2790, !2788}
!2791 = !DILocation(line: 2442, column: 33, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !526, discriminator: 1)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !526, line: 2442, column: 31)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !526, line: 2442, column: 16)
!2795 = distinct !DILexicalBlock(scope: !2789, file: !526, line: 2442, column: 10)
!2796 = !DILocation(line: 2442, column: 211, scope: !2792)
!2797 = !DILocation(line: 2442, column: 112, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2792, file: !526, discriminator: 2)
!2799 = !DILocation(line: 2442, column: 224, scope: !2792)
!2800 = !DILocation(line: 2443, column: 14, scope: !2789)
!2801 = !DILocation(line: 2444, column: 7, scope: !2789)
!2802 = !DILocation(line: 2447, column: 30, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2447, column: 8)
!2804 = !DILocation(line: 2447, column: 38, scope: !2803)
!2805 = !DILocation(line: 2447, column: 9, scope: !2803)
!2806 = !DILocation(line: 2447, column: 8, scope: !2667)
!2807 = !DILocation(line: 2448, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2803, file: !526, line: 2447, column: 60)
!2809 = distinct !{!2809, !2807}
!2810 = !DILocation(line: 2448, column: 33, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2812, file: !526, discriminator: 1)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !526, line: 2448, column: 31)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !526, line: 2448, column: 16)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !526, line: 2448, column: 10)
!2815 = !DILocation(line: 2448, column: 206, scope: !2811)
!2816 = !DILocation(line: 2448, column: 112, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2811, file: !526, discriminator: 2)
!2818 = !DILocation(line: 2448, column: 219, scope: !2811)
!2819 = !DILocation(line: 2449, column: 14, scope: !2808)
!2820 = !DILocation(line: 2450, column: 7, scope: !2808)
!2821 = !DILocation(line: 2453, column: 29, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2453, column: 8)
!2823 = !DILocation(line: 2453, column: 37, scope: !2822)
!2824 = !DILocation(line: 2453, column: 9, scope: !2822)
!2825 = !DILocation(line: 2453, column: 8, scope: !2667)
!2826 = !DILocation(line: 2454, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !526, line: 2453, column: 72)
!2828 = distinct !{!2828, !2826}
!2829 = !DILocation(line: 2454, column: 33, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2831, file: !526, discriminator: 1)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !526, line: 2454, column: 31)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !526, line: 2454, column: 16)
!2833 = distinct !DILexicalBlock(scope: !2827, file: !526, line: 2454, column: 10)
!2834 = !DILocation(line: 2454, column: 218, scope: !2830)
!2835 = !DILocation(line: 2454, column: 112, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2830, file: !526, discriminator: 2)
!2837 = !DILocation(line: 2454, column: 229, scope: !2830)
!2838 = !DILocation(line: 2456, column: 14, scope: !2827)
!2839 = !DILocation(line: 2457, column: 7, scope: !2827)
!2840 = !DILocation(line: 2464, column: 22, scope: !2667)
!2841 = !DILocation(line: 2464, column: 32, scope: !2667)
!2842 = !DILocation(line: 2464, column: 4, scope: !2667)
!2843 = !DILocation(line: 2466, column: 36, scope: !2667)
!2844 = !DILocation(line: 2466, column: 46, scope: !2667)
!2845 = !DILocation(line: 2466, column: 4, scope: !2667)
!2846 = !DILocation(line: 2468, column: 8, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2667, file: !526, line: 2468, column: 8)
!2848 = !DILocation(line: 2468, column: 18, scope: !2847)
!2849 = !DILocation(line: 2468, column: 8, scope: !2667)
!2850 = !DILocation(line: 2473, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !526, line: 2473, column: 11)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !526, line: 2468, column: 47)
!2853 = !DILocation(line: 2473, column: 17, scope: !2851)
!2854 = !DILocation(line: 2473, column: 22, scope: !2851)
!2855 = !DILocation(line: 2473, column: 11, scope: !2852)
!2856 = !DILocation(line: 2474, column: 10, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !526, line: 2473, column: 34)
!2858 = !DILocation(line: 2474, column: 16, scope: !2857)
!2859 = !DILocation(line: 2474, column: 27, scope: !2857)
!2860 = !DILocation(line: 2475, column: 7, scope: !2857)
!2861 = !DILocation(line: 2476, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !526, line: 2476, column: 11)
!2863 = !DILocation(line: 2476, column: 17, scope: !2862)
!2864 = !DILocation(line: 2476, column: 22, scope: !2862)
!2865 = !DILocation(line: 2476, column: 11, scope: !2852)
!2866 = !DILocation(line: 2477, column: 10, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !526, line: 2476, column: 34)
!2868 = !DILocation(line: 2477, column: 16, scope: !2867)
!2869 = !DILocation(line: 2477, column: 27, scope: !2867)
!2870 = !DILocation(line: 2478, column: 7, scope: !2867)
!2871 = !DILocation(line: 2479, column: 11, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2852, file: !526, line: 2479, column: 11)
!2873 = !DILocation(line: 2479, column: 17, scope: !2872)
!2874 = !DILocation(line: 2479, column: 22, scope: !2872)
!2875 = !DILocation(line: 2479, column: 11, scope: !2852)
!2876 = !DILocation(line: 2480, column: 10, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !526, line: 2479, column: 34)
!2878 = !DILocation(line: 2480, column: 16, scope: !2877)
!2879 = !DILocation(line: 2480, column: 27, scope: !2877)
!2880 = !DILocation(line: 2481, column: 7, scope: !2877)
!2881 = !DILocation(line: 2482, column: 4, scope: !2852)
!2882 = !DILocation(line: 2468, column: 21, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2847, file: !526, discriminator: 1)
!2884 = !DILocation(line: 2485, column: 9, scope: !2667)
!2885 = !DILocation(line: 2485, column: 4, scope: !2667)
!2886 = !DILocation(line: 2486, column: 11, scope: !2667)
!2887 = !DILocation(line: 2486, column: 4, scope: !2667)
!2888 = distinct !DISubprogram(name: "HgfsFStat", scope: !526, file: !526, line: 2019, type: !2889, isLocal: true, isDefinition: true, scopeLine: 2022, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!550, !550, !2337, !2338}
!2891 = !DILocalVariable(name: "fd", arg: 1, scope: !2888, file: !526, line: 2019, type: !550)
!2892 = !DILocation(line: 2019, column: 15, scope: !2888)
!2893 = !DILocalVariable(name: "stats", arg: 2, scope: !2888, file: !526, line: 2020, type: !2337)
!2894 = !DILocation(line: 2020, column: 24, scope: !2888)
!2895 = !DILocalVariable(name: "creationTime", arg: 3, scope: !2888, file: !526, line: 2021, type: !2338)
!2896 = !DILocation(line: 2021, column: 19, scope: !2888)
!2897 = !DILocalVariable(name: "error", scope: !2888, file: !526, line: 2023, type: !550)
!2898 = !DILocation(line: 2023, column: 8, scope: !2888)
!2899 = !DILocation(line: 2024, column: 14, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2888, file: !526, line: 2024, column: 8)
!2901 = !DILocation(line: 2024, column: 18, scope: !2900)
!2902 = !DILocation(line: 2024, column: 8, scope: !2900)
!2903 = !DILocation(line: 2024, column: 25, scope: !2900)
!2904 = !DILocation(line: 2024, column: 8, scope: !2888)
!2905 = !DILocation(line: 2025, column: 16, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !526, line: 2024, column: 30)
!2907 = !DILocation(line: 2025, column: 15, scope: !2906)
!2908 = !DILocation(line: 2025, column: 13, scope: !2906)
!2909 = !DILocation(line: 2026, column: 4, scope: !2906)
!2910 = !DILocation(line: 2027, column: 40, scope: !2888)
!2911 = !DILocation(line: 2027, column: 20, scope: !2888)
!2912 = !DILocation(line: 2027, column: 5, scope: !2888)
!2913 = !DILocation(line: 2027, column: 18, scope: !2888)
!2914 = !DILocation(line: 2028, column: 11, scope: !2888)
!2915 = !DILocation(line: 2028, column: 4, scope: !2888)
!2916 = distinct !DISubprogram(name: "HgfsGetSequentialOnlyFlagFromFd", scope: !526, file: !526, line: 2120, type: !2917, isLocal: true, isDefinition: true, scopeLine: 2122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !550, !630}
!2919 = !DILocalVariable(name: "fd", arg: 1, scope: !2916, file: !526, line: 2120, type: !550)
!2920 = !DILocation(line: 2120, column: 37, scope: !2916)
!2921 = !DILocalVariable(name: "attr", arg: 2, scope: !2916, file: !526, line: 2121, type: !630)
!2922 = !DILocation(line: 2121, column: 51, scope: !2916)
!2923 = !DILocalVariable(name: "error", scope: !2916, file: !526, line: 2124, type: !550)
!2924 = !DILocation(line: 2124, column: 8, scope: !2916)
!2925 = !DILocalVariable(name: "buffer", scope: !2916, file: !526, line: 2125, type: !2926)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 16, align: 8, elements: !581)
!2927 = !DILocation(line: 2125, column: 9, scope: !2916)
!2928 = !DILocalVariable(name: "stats", scope: !2916, file: !526, line: 2126, type: !1179)
!2929 = !DILocation(line: 2126, column: 16, scope: !2916)
!2930 = !DILocation(line: 2128, column: 15, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2916, file: !526, line: 2128, column: 7)
!2932 = !DILocation(line: 2128, column: 12, scope: !2931)
!2933 = !DILocation(line: 2128, column: 7, scope: !2916)
!2934 = !DILocation(line: 2129, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !526, line: 2128, column: 21)
!2936 = !DILocation(line: 2132, column: 14, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2916, file: !526, line: 2132, column: 8)
!2938 = !DILocation(line: 2132, column: 8, scope: !2937)
!2939 = !DILocation(line: 2132, column: 26, scope: !2937)
!2940 = !DILocation(line: 2132, column: 8, scope: !2916)
!2941 = !DILocation(line: 2133, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2937, file: !526, line: 2132, column: 31)
!2943 = !DILocation(line: 2136, column: 13, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2916, file: !526, line: 2136, column: 7)
!2945 = !DILocation(line: 2136, column: 10, scope: !2944)
!2946 = !DILocation(line: 2136, column: 21, scope: !2944)
!2947 = !DILocation(line: 2136, column: 30, scope: !2944)
!2948 = !DILocation(line: 2136, column: 39, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2944, file: !526, discriminator: 1)
!2950 = !DILocation(line: 2136, column: 36, scope: !2949)
!2951 = !DILocation(line: 2136, column: 47, scope: !2949)
!2952 = !DILocation(line: 2136, column: 7, scope: !2949)
!2953 = !DILocation(line: 2137, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2944, file: !526, line: 2136, column: 57)
!2955 = !DILocation(line: 2145, column: 18, scope: !2916)
!2956 = !DILocation(line: 2145, column: 22, scope: !2916)
!2957 = !DILocation(line: 2145, column: 12, scope: !2916)
!2958 = !DILocation(line: 2145, column: 10, scope: !2916)
!2959 = !DILocation(line: 2146, column: 4, scope: !2916)
!2960 = distinct !{!2960, !2959}
!2961 = !DILocation(line: 2146, column: 30, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !526, discriminator: 1)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !526, line: 2146, column: 28)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !526, line: 2146, column: 13)
!2965 = distinct !DILexicalBlock(scope: !2916, file: !526, line: 2146, column: 7)
!2966 = !DILocation(line: 2146, column: 200, scope: !2962)
!2967 = !DILocation(line: 2146, column: 5, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2962, file: !526, discriminator: 2)
!2969 = !DILocation(line: 2146, column: 4, scope: !2962)
!2970 = !DILocation(line: 2146, column: 109, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2962, file: !526, discriminator: 3)
!2972 = !DILocation(line: 2146, column: 8, scope: !2962)
!2973 = !DILocation(line: 2147, column: 15, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2916, file: !526, line: 2147, column: 8)
!2975 = !DILocation(line: 2147, column: 12, scope: !2974)
!2976 = !DILocation(line: 2147, column: 22, scope: !2974)
!2977 = !DILocation(line: 2147, column: 37, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2974, file: !526, discriminator: 1)
!2979 = !DILocation(line: 2147, column: 36, scope: !2978)
!2980 = !DILocation(line: 2147, column: 32, scope: !2978)
!2981 = !DILocation(line: 2147, column: 8, scope: !2978)
!2982 = !DILocation(line: 2148, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !526, line: 2147, column: 43)
!2984 = distinct !{!2984, !2982}
!2985 = !DILocation(line: 2148, column: 33, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2987, file: !526, discriminator: 1)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !526, line: 2148, column: 31)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !526, line: 2148, column: 16)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !526, line: 2148, column: 10)
!2990 = !DILocation(line: 2148, column: 112, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2986, file: !526, discriminator: 2)
!2992 = !DILocation(line: 2148, column: 221, scope: !2986)
!2993 = !DILocation(line: 2149, column: 7, scope: !2983)
!2994 = !DILocation(line: 2149, column: 13, scope: !2983)
!2995 = !DILocation(line: 2149, column: 19, scope: !2983)
!2996 = !DILocation(line: 2150, column: 4, scope: !2983)
!2997 = !DILocation(line: 2152, column: 4, scope: !2916)
!2998 = !DILocation(line: 2154, column: 1, scope: !2916)
!2999 = distinct !DISubprogram(name: "HgfsPlatformSetattrFromFd", scope: !526, file: !526, line: 2848, type: !3000, isLocal: false, isDefinition: true, scopeLine: 2853, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!609, !509, !863, !630, !3002, !729}
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAttrHint", file: !20, line: 328, baseType: !530)
!3003 = !DILocalVariable(name: "file", arg: 1, scope: !2999, file: !526, line: 2848, type: !509)
!3004 = !DILocation(line: 2848, column: 38, scope: !2999)
!3005 = !DILocalVariable(name: "session", arg: 2, scope: !2999, file: !526, line: 2849, type: !863)
!3006 = !DILocation(line: 2849, column: 44, scope: !2999)
!3007 = !DILocalVariable(name: "attr", arg: 3, scope: !2999, file: !526, line: 2850, type: !630)
!3008 = !DILocation(line: 2850, column: 45, scope: !2999)
!3009 = !DILocalVariable(name: "hints", arg: 4, scope: !2999, file: !526, line: 2851, type: !3002)
!3010 = !DILocation(line: 2851, column: 40, scope: !2999)
!3011 = !DILocalVariable(name: "useHostTime", arg: 5, scope: !2999, file: !526, line: 2852, type: !729)
!3012 = !DILocation(line: 2852, column: 32, scope: !2999)
!3013 = !DILocalVariable(name: "status", scope: !2999, file: !526, line: 2854, type: !609)
!3014 = !DILocation(line: 2854, column: 23, scope: !2999)
!3015 = !DILocalVariable(name: "timesStatus", scope: !2999, file: !526, line: 2854, type: !609)
!3016 = !DILocation(line: 2854, column: 35, scope: !2999)
!3017 = !DILocalVariable(name: "error", scope: !2999, file: !526, line: 2855, type: !550)
!3018 = !DILocation(line: 2855, column: 8, scope: !2999)
!3019 = !DILocalVariable(name: "statBuf", scope: !2999, file: !526, line: 2856, type: !1179)
!3020 = !DILocation(line: 2856, column: 16, scope: !2999)
!3021 = !DILocalVariable(name: "times", scope: !2999, file: !526, line: 2857, type: !580)
!3022 = !DILocation(line: 2857, column: 19, scope: !2999)
!3023 = !DILocalVariable(name: "newPermissions", scope: !2999, file: !526, line: 2858, type: !1314)
!3024 = !DILocation(line: 2858, column: 11, scope: !2999)
!3025 = !DILocalVariable(name: "newUid", scope: !2999, file: !526, line: 2859, type: !515)
!3026 = !DILocation(line: 2859, column: 10, scope: !2999)
!3027 = !DILocalVariable(name: "newGid", scope: !2999, file: !526, line: 2860, type: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !516, line: 65, baseType: !1192)
!3029 = !DILocation(line: 2860, column: 10, scope: !2999)
!3030 = !DILocalVariable(name: "permsChanged", scope: !2999, file: !526, line: 2861, type: !729)
!3031 = !DILocation(line: 2861, column: 9, scope: !2999)
!3032 = !DILocalVariable(name: "timesChanged", scope: !2999, file: !526, line: 2862, type: !729)
!3033 = !DILocation(line: 2862, column: 9, scope: !2999)
!3034 = !DILocalVariable(name: "idChanged", scope: !2999, file: !526, line: 2863, type: !729)
!3035 = !DILocation(line: 2863, column: 9, scope: !2999)
!3036 = !DILocalVariable(name: "fd", scope: !2999, file: !526, line: 2864, type: !550)
!3037 = !DILocation(line: 2864, column: 8, scope: !2999)
!3038 = !DILocalVariable(name: "serverLock", scope: !2999, file: !526, line: 2865, type: !759)
!3039 = !DILocation(line: 2865, column: 17, scope: !2999)
!3040 = !DILocation(line: 2870, column: 31, scope: !2999)
!3041 = !DILocation(line: 2870, column: 37, scope: !2999)
!3042 = !DILocation(line: 2870, column: 13, scope: !2999)
!3043 = !DILocation(line: 2870, column: 11, scope: !2999)
!3044 = !DILocation(line: 2871, column: 8, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2871, column: 8)
!3046 = !DILocation(line: 2871, column: 15, scope: !3045)
!3047 = !DILocation(line: 2871, column: 8, scope: !2999)
!3048 = !DILocation(line: 2872, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !526, line: 2871, column: 21)
!3050 = distinct !{!3050, !3048}
!3051 = !DILocation(line: 2872, column: 33, scope: !3052)
!3052 = !DILexicalBlockFile(scope: !3053, file: !526, discriminator: 1)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !526, line: 2872, column: 31)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !526, line: 2872, column: 16)
!3055 = distinct !DILexicalBlock(scope: !3049, file: !526, line: 2872, column: 10)
!3056 = !DILocation(line: 2872, column: 112, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3052, file: !526, discriminator: 2)
!3058 = !DILocation(line: 2872, column: 208, scope: !3052)
!3059 = !DILocation(line: 2873, column: 7, scope: !3049)
!3060 = !DILocation(line: 2877, column: 14, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2877, column: 8)
!3062 = !DILocation(line: 2877, column: 8, scope: !3061)
!3063 = !DILocation(line: 2877, column: 28, scope: !3061)
!3064 = !DILocation(line: 2877, column: 8, scope: !2999)
!3065 = !DILocation(line: 2878, column: 16, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !526, line: 2877, column: 35)
!3067 = !DILocation(line: 2878, column: 15, scope: !3066)
!3068 = !DILocation(line: 2878, column: 13, scope: !3066)
!3069 = !DILocation(line: 2879, column: 7, scope: !3066)
!3070 = distinct !{!3070, !3069}
!3071 = !DILocation(line: 2879, column: 33, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3073, file: !526, discriminator: 1)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !526, line: 2879, column: 31)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !526, line: 2879, column: 16)
!3075 = distinct !DILexicalBlock(scope: !3066, file: !526, line: 2879, column: 10)
!3076 = !DILocation(line: 2879, column: 201, scope: !3072)
!3077 = !DILocation(line: 2879, column: 222, scope: !3072)
!3078 = !DILocation(line: 2879, column: 205, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3072, file: !526, discriminator: 2)
!3080 = !DILocation(line: 2879, column: 112, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3072, file: !526, discriminator: 3)
!3082 = !DILocation(line: 2879, column: 233, scope: !3072)
!3083 = !DILocation(line: 2881, column: 16, scope: !3066)
!3084 = !DILocation(line: 2881, column: 14, scope: !3066)
!3085 = !DILocation(line: 2882, column: 7, scope: !3066)
!3086 = !DILocation(line: 2892, column: 37, scope: !2999)
!3087 = !DILocation(line: 2892, column: 16, scope: !2999)
!3088 = !DILocation(line: 2892, column: 14, scope: !2999)
!3089 = !DILocation(line: 2893, column: 8, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2893, column: 8)
!3091 = !DILocation(line: 2893, column: 8, scope: !2999)
!3092 = !DILocation(line: 2894, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !526, line: 2893, column: 19)
!3094 = distinct !{!3094, !3092}
!3095 = !DILocation(line: 2894, column: 33, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3097, file: !526, discriminator: 1)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !526, line: 2894, column: 31)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !526, line: 2894, column: 16)
!3099 = distinct !DILexicalBlock(scope: !3093, file: !526, line: 2894, column: 10)
!3100 = !DILocation(line: 2894, column: 205, scope: !3096)
!3101 = !DILocation(line: 2894, column: 213, scope: !3096)
!3102 = !DILocation(line: 2894, column: 112, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3096, file: !526, discriminator: 2)
!3104 = !DILocation(line: 2894, column: 224, scope: !3096)
!3105 = !DILocation(line: 2896, column: 18, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3093, file: !526, line: 2896, column: 11)
!3107 = !DILocation(line: 2896, column: 22, scope: !3106)
!3108 = !DILocation(line: 2896, column: 30, scope: !3106)
!3109 = !DILocation(line: 2896, column: 11, scope: !3106)
!3110 = !DILocation(line: 2896, column: 38, scope: !3106)
!3111 = !DILocation(line: 2896, column: 11, scope: !3093)
!3112 = !DILocation(line: 2897, column: 19, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3106, file: !526, line: 2896, column: 43)
!3114 = !DILocation(line: 2897, column: 18, scope: !3113)
!3115 = !DILocation(line: 2897, column: 16, scope: !3113)
!3116 = !DILocation(line: 2898, column: 10, scope: !3113)
!3117 = distinct !{!3117, !3116}
!3118 = !DILocation(line: 2898, column: 36, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3120, file: !526, discriminator: 1)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !526, line: 2898, column: 34)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !526, line: 2898, column: 19)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !526, line: 2898, column: 13)
!3123 = !DILocation(line: 2898, column: 205, scope: !3119)
!3124 = !DILocation(line: 2898, column: 226, scope: !3119)
!3125 = !DILocation(line: 2898, column: 209, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3119, file: !526, discriminator: 2)
!3127 = !DILocation(line: 2898, column: 115, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3119, file: !526, discriminator: 3)
!3129 = !DILocation(line: 2898, column: 237, scope: !3119)
!3130 = !DILocation(line: 2900, column: 19, scope: !3113)
!3131 = !DILocation(line: 2900, column: 17, scope: !3113)
!3132 = !DILocation(line: 2901, column: 7, scope: !3113)
!3133 = !DILocation(line: 2902, column: 4, scope: !3093)
!3134 = !DILocation(line: 2913, column: 45, scope: !2999)
!3135 = !DILocation(line: 2913, column: 19, scope: !2999)
!3136 = !DILocation(line: 2913, column: 17, scope: !2999)
!3137 = !DILocation(line: 2914, column: 8, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2914, column: 8)
!3139 = !DILocation(line: 2914, column: 8, scope: !2999)
!3140 = !DILocation(line: 2915, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !526, line: 2914, column: 22)
!3142 = distinct !{!3142, !3140}
!3143 = !DILocation(line: 2915, column: 33, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !3145, file: !526, discriminator: 1)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !526, line: 2915, column: 31)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !526, line: 2915, column: 16)
!3147 = distinct !DILexicalBlock(scope: !3141, file: !526, line: 2915, column: 10)
!3148 = !DILocation(line: 2915, column: 197, scope: !3144)
!3149 = !DILocation(line: 2915, column: 112, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3144, file: !526, discriminator: 2)
!3151 = !DILocation(line: 2915, column: 216, scope: !3144)
!3152 = !DILocation(line: 2917, column: 18, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3141, file: !526, line: 2917, column: 11)
!3154 = !DILocation(line: 2917, column: 22, scope: !3153)
!3155 = !DILocation(line: 2917, column: 11, scope: !3153)
!3156 = !DILocation(line: 2917, column: 38, scope: !3153)
!3157 = !DILocation(line: 2917, column: 11, scope: !3141)
!3158 = !DILocation(line: 2918, column: 19, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !526, line: 2917, column: 43)
!3160 = !DILocation(line: 2918, column: 18, scope: !3159)
!3161 = !DILocation(line: 2918, column: 16, scope: !3159)
!3162 = !DILocation(line: 2919, column: 10, scope: !3159)
!3163 = distinct !{!3163, !3162}
!3164 = !DILocation(line: 2919, column: 36, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3166, file: !526, discriminator: 1)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !526, line: 2919, column: 34)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !526, line: 2919, column: 19)
!3168 = distinct !DILexicalBlock(scope: !3159, file: !526, line: 2919, column: 13)
!3169 = !DILocation(line: 2919, column: 205, scope: !3165)
!3170 = !DILocation(line: 2919, column: 226, scope: !3165)
!3171 = !DILocation(line: 2919, column: 209, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !3165, file: !526, discriminator: 2)
!3173 = !DILocation(line: 2919, column: 115, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3165, file: !526, discriminator: 3)
!3175 = !DILocation(line: 2919, column: 237, scope: !3165)
!3176 = !DILocation(line: 2921, column: 19, scope: !3159)
!3177 = !DILocation(line: 2921, column: 17, scope: !3159)
!3178 = !DILocation(line: 2922, column: 7, scope: !3159)
!3179 = !DILocation(line: 2923, column: 4, scope: !3141)
!3180 = !DILocation(line: 2925, column: 8, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2925, column: 8)
!3182 = !DILocation(line: 2925, column: 14, scope: !3181)
!3183 = !DILocation(line: 2925, column: 19, scope: !3181)
!3184 = !DILocation(line: 2925, column: 8, scope: !2999)
!3185 = !DILocation(line: 2932, column: 34, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !526, line: 2932, column: 11)
!3187 = distinct !DILexicalBlock(scope: !3181, file: !526, line: 2925, column: 31)
!3188 = !DILocation(line: 2932, column: 40, scope: !3186)
!3189 = !DILocation(line: 2932, column: 12, scope: !3186)
!3190 = !DILocation(line: 2932, column: 11, scope: !3187)
!3191 = !DILocation(line: 2933, column: 10, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3186, file: !526, line: 2932, column: 63)
!3193 = distinct !{!3193, !3191}
!3194 = !DILocation(line: 2933, column: 36, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3196, file: !526, discriminator: 1)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !526, line: 2933, column: 34)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !526, line: 2933, column: 19)
!3198 = distinct !DILexicalBlock(scope: !3192, file: !526, line: 2933, column: 13)
!3199 = !DILocation(line: 2933, column: 115, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3195, file: !526, discriminator: 2)
!3201 = !DILocation(line: 2933, column: 213, scope: !3195)
!3202 = !DILocation(line: 2934, column: 17, scope: !3192)
!3203 = !DILocation(line: 2935, column: 7, scope: !3192)
!3204 = !DILocation(line: 2935, column: 18, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3206, file: !526, discriminator: 1)
!3206 = distinct !DILexicalBlock(scope: !3186, file: !526, line: 2935, column: 18)
!3207 = !DILocation(line: 2935, column: 29, scope: !3205)
!3208 = !DILocation(line: 2936, column: 10, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !526, line: 2935, column: 48)
!3210 = distinct !{!3210, !3208}
!3211 = !DILocation(line: 2936, column: 36, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3213, file: !526, discriminator: 1)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !526, line: 2936, column: 34)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !526, line: 2936, column: 19)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !526, line: 2936, column: 13)
!3216 = !DILocation(line: 2936, column: 115, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3212, file: !526, discriminator: 2)
!3218 = !DILocation(line: 2936, column: 227, scope: !3212)
!3219 = !DILocation(line: 2938, column: 17, scope: !3209)
!3220 = !DILocation(line: 2939, column: 7, scope: !3209)
!3221 = !DILocation(line: 2939, column: 28, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3223, file: !526, discriminator: 1)
!3223 = distinct !DILexicalBlock(scope: !3206, file: !526, line: 2939, column: 18)
!3224 = !DILocation(line: 2939, column: 32, scope: !3222)
!3225 = !DILocation(line: 2939, column: 38, scope: !3222)
!3226 = !DILocation(line: 2939, column: 18, scope: !3222)
!3227 = !DILocation(line: 2939, column: 44, scope: !3222)
!3228 = !DILocation(line: 2940, column: 19, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !526, line: 2939, column: 49)
!3230 = !DILocation(line: 2940, column: 18, scope: !3229)
!3231 = !DILocation(line: 2940, column: 16, scope: !3229)
!3232 = !DILocation(line: 2941, column: 10, scope: !3229)
!3233 = distinct !{!3233, !3232}
!3234 = !DILocation(line: 2941, column: 36, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3236, file: !526, discriminator: 1)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !526, line: 2941, column: 34)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !526, line: 2941, column: 19)
!3238 = distinct !DILexicalBlock(scope: !3229, file: !526, line: 2941, column: 13)
!3239 = !DILocation(line: 2941, column: 207, scope: !3235)
!3240 = !DILocation(line: 2941, column: 228, scope: !3235)
!3241 = !DILocation(line: 2941, column: 211, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3235, file: !526, discriminator: 2)
!3243 = !DILocation(line: 2941, column: 115, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3235, file: !526, discriminator: 3)
!3245 = !DILocation(line: 2941, column: 239, scope: !3235)
!3246 = !DILocation(line: 2943, column: 19, scope: !3229)
!3247 = !DILocation(line: 2943, column: 17, scope: !3229)
!3248 = !DILocation(line: 2944, column: 7, scope: !3229)
!3249 = !DILocation(line: 2945, column: 10, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3223, file: !526, line: 2944, column: 14)
!3251 = distinct !{!3251, !3249}
!3252 = !DILocation(line: 2945, column: 36, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3254, file: !526, discriminator: 1)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !526, line: 2945, column: 34)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !526, line: 2945, column: 19)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !526, line: 2945, column: 13)
!3257 = !DILocation(line: 2945, column: 195, scope: !3253)
!3258 = !DILocation(line: 2945, column: 201, scope: !3253)
!3259 = !DILocation(line: 2945, column: 115, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3253, file: !526, discriminator: 2)
!3261 = !DILocation(line: 2945, column: 210, scope: !3253)
!3262 = !DILocation(line: 2947, column: 4, scope: !3187)
!3263 = !DILocation(line: 2950, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2950, column: 8)
!3265 = !DILocation(line: 2950, column: 15, scope: !3264)
!3266 = !DILocation(line: 2950, column: 20, scope: !3264)
!3267 = !DILocation(line: 2950, column: 33, scope: !3264)
!3268 = !DILocation(line: 2950, column: 56, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3264, file: !526, discriminator: 1)
!3270 = !DILocation(line: 2950, column: 51, scope: !3269)
!3271 = !DILocation(line: 2950, column: 62, scope: !3269)
!3272 = !DILocation(line: 2950, column: 8, scope: !3269)
!3273 = !DILocalVariable(name: "localName", scope: !3274, file: !526, line: 2951, type: !519)
!3274 = distinct !DILexicalBlock(scope: !3264, file: !526, line: 2950, column: 74)
!3275 = !DILocation(line: 2951, column: 14, scope: !3274)
!3276 = !DILocalVariable(name: "localNameSize", scope: !3274, file: !526, line: 2952, type: !771)
!3277 = !DILocation(line: 2952, column: 15, scope: !3274)
!3278 = !DILocation(line: 2953, column: 32, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3274, file: !526, line: 2953, column: 12)
!3280 = !DILocation(line: 2953, column: 38, scope: !3279)
!3281 = !DILocation(line: 2953, column: 12, scope: !3279)
!3282 = !DILocation(line: 2953, column: 12, scope: !3274)
!3283 = !DILocation(line: 2954, column: 39, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3279, file: !526, line: 2953, column: 76)
!3285 = !DILocation(line: 2955, column: 40, scope: !3284)
!3286 = !DILocation(line: 2955, column: 46, scope: !3284)
!3287 = !DILocation(line: 2955, column: 52, scope: !3284)
!3288 = !DILocation(line: 2955, column: 64, scope: !3284)
!3289 = !DILocation(line: 2955, column: 39, scope: !3284)
!3290 = !DILocation(line: 2956, column: 39, scope: !3284)
!3291 = !DILocation(line: 2954, column: 20, scope: !3284)
!3292 = !DILocation(line: 2954, column: 18, scope: !3284)
!3293 = !DILocation(line: 2957, column: 16, scope: !3284)
!3294 = !DILocation(line: 2957, column: 11, scope: !3284)
!3295 = !DILocation(line: 2958, column: 8, scope: !3284)
!3296 = !DILocation(line: 2959, column: 4, scope: !3274)
!3297 = !DILocation(line: 2961, column: 45, scope: !2999)
!3298 = !DILocation(line: 2961, column: 51, scope: !2999)
!3299 = !DILocation(line: 2961, column: 58, scope: !2999)
!3300 = !DILocation(line: 2962, column: 36, scope: !2999)
!3301 = !DILocation(line: 2962, column: 47, scope: !2999)
!3302 = !DILocation(line: 2961, column: 18, scope: !2999)
!3303 = !DILocation(line: 2961, column: 16, scope: !2999)
!3304 = !DILocation(line: 2963, column: 8, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 2963, column: 8)
!3306 = !DILocation(line: 2963, column: 20, scope: !3305)
!3307 = !DILocation(line: 2963, column: 25, scope: !3305)
!3308 = !DILocation(line: 2963, column: 28, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3305, file: !526, discriminator: 1)
!3310 = !DILocation(line: 2963, column: 8, scope: !3309)
!3311 = !DILocalVariable(name: "uid", scope: !3312, file: !526, line: 2964, type: !515)
!3312 = distinct !DILexicalBlock(scope: !3305, file: !526, line: 2963, column: 42)
!3313 = !DILocation(line: 2964, column: 13, scope: !3312)
!3314 = !DILocalVariable(name: "switchToSuperUser", scope: !3312, file: !526, line: 2965, type: !729)
!3315 = !DILocation(line: 2965, column: 12, scope: !3312)
!3316 = !DILocation(line: 2967, column: 7, scope: !3312)
!3317 = distinct !{!3317, !3316}
!3318 = !DILocation(line: 2967, column: 33, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !526, discriminator: 1)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !526, line: 2967, column: 31)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !526, line: 2967, column: 16)
!3322 = distinct !DILexicalBlock(scope: !3312, file: !526, line: 2967, column: 10)
!3323 = !DILocation(line: 2967, column: 112, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3319, file: !526, discriminator: 2)
!3325 = !DILocation(line: 2967, column: 196, scope: !3319)
!3326 = !DILocation(line: 2975, column: 11, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3312, file: !526, line: 2975, column: 11)
!3328 = !DILocation(line: 2975, column: 32, scope: !3327)
!3329 = !DILocation(line: 2975, column: 21, scope: !3327)
!3330 = !DILocation(line: 2975, column: 11, scope: !3312)
!3331 = !DILocation(line: 2977, column: 15, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !526, line: 2977, column: 14)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !526, line: 2975, column: 40)
!3334 = !DILocation(line: 2977, column: 14, scope: !3333)
!3335 = !DILocation(line: 2978, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !526, line: 2977, column: 33)
!3337 = distinct !{!3337, !3335}
!3338 = !DILocation(line: 2978, column: 39, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !526, discriminator: 1)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !526, line: 2978, column: 37)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !526, line: 2978, column: 22)
!3342 = distinct !DILexicalBlock(scope: !3336, file: !526, line: 2978, column: 16)
!3343 = !DILocation(line: 2978, column: 228, scope: !3339)
!3344 = !DILocation(line: 2978, column: 118, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3339, file: !526, discriminator: 2)
!3346 = !DILocation(line: 2978, column: 235, scope: !3339)
!3347 = !DILocation(line: 2981, column: 20, scope: !3336)
!3348 = !DILocation(line: 2982, column: 13, scope: !3336)
!3349 = !DILocation(line: 2984, column: 16, scope: !3333)
!3350 = !DILocation(line: 2984, column: 14, scope: !3333)
!3351 = !DILocation(line: 2985, column: 28, scope: !3333)
!3352 = !DILocation(line: 2986, column: 7, scope: !3333)
!3353 = !DILocation(line: 2992, column: 19, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3312, file: !526, line: 2992, column: 11)
!3355 = !DILocation(line: 2992, column: 23, scope: !3354)
!3356 = !DILocation(line: 2992, column: 11, scope: !3354)
!3357 = !DILocation(line: 2992, column: 30, scope: !3354)
!3358 = !DILocation(line: 2992, column: 11, scope: !3312)
!3359 = !DILocation(line: 2993, column: 15, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !526, line: 2993, column: 14)
!3361 = distinct !DILexicalBlock(scope: !3354, file: !526, line: 2992, column: 35)
!3362 = !DILocation(line: 2993, column: 14, scope: !3361)
!3363 = !DILocation(line: 2998, column: 19, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3360, file: !526, line: 2993, column: 34)
!3365 = !DILocation(line: 2998, column: 17, scope: !3364)
!3366 = !DILocation(line: 2999, column: 31, scope: !3364)
!3367 = !DILocation(line: 3000, column: 25, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !526, line: 3000, column: 17)
!3369 = !DILocation(line: 3000, column: 29, scope: !3368)
!3370 = !DILocation(line: 3000, column: 17, scope: !3368)
!3371 = !DILocation(line: 3000, column: 36, scope: !3368)
!3372 = !DILocation(line: 3000, column: 17, scope: !3364)
!3373 = !DILocation(line: 3001, column: 25, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3368, file: !526, line: 3000, column: 41)
!3375 = !DILocation(line: 3001, column: 24, scope: !3374)
!3376 = !DILocation(line: 3001, column: 22, scope: !3374)
!3377 = !DILocation(line: 3002, column: 16, scope: !3374)
!3378 = distinct !{!3378, !3377}
!3379 = !DILocation(line: 3002, column: 42, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3381, file: !526, discriminator: 1)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !526, line: 3002, column: 40)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !526, line: 3002, column: 25)
!3383 = distinct !DILexicalBlock(scope: !3374, file: !526, line: 3002, column: 19)
!3384 = !DILocation(line: 3002, column: 248, scope: !3380)
!3385 = !DILocation(line: 3002, column: 269, scope: !3380)
!3386 = !DILocation(line: 3002, column: 252, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3380, file: !526, discriminator: 2)
!3388 = !DILocation(line: 3002, column: 121, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3380, file: !526, discriminator: 3)
!3390 = !DILocation(line: 3002, column: 280, scope: !3380)
!3391 = !DILocation(line: 3005, column: 25, scope: !3374)
!3392 = !DILocation(line: 3005, column: 23, scope: !3374)
!3393 = !DILocation(line: 3006, column: 13, scope: !3374)
!3394 = !DILocation(line: 3007, column: 10, scope: !3364)
!3395 = !DILocation(line: 3008, column: 22, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3360, file: !526, line: 3007, column: 17)
!3397 = !DILocation(line: 3008, column: 21, scope: !3396)
!3398 = !DILocation(line: 3008, column: 19, scope: !3396)
!3399 = !DILocation(line: 3009, column: 13, scope: !3396)
!3400 = distinct !{!3400, !3399}
!3401 = !DILocation(line: 3009, column: 39, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3403, file: !526, discriminator: 1)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !526, line: 3009, column: 37)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !526, line: 3009, column: 22)
!3405 = distinct !DILexicalBlock(scope: !3396, file: !526, line: 3009, column: 16)
!3406 = !DILocation(line: 3009, column: 249, scope: !3402)
!3407 = !DILocation(line: 3009, column: 270, scope: !3402)
!3408 = !DILocation(line: 3009, column: 253, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3402, file: !526, discriminator: 2)
!3410 = !DILocation(line: 3009, column: 118, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3402, file: !526, discriminator: 3)
!3412 = !DILocation(line: 3009, column: 281, scope: !3402)
!3413 = !DILocation(line: 3012, column: 22, scope: !3396)
!3414 = !DILocation(line: 3012, column: 20, scope: !3396)
!3415 = !DILocation(line: 3014, column: 7, scope: !3361)
!3416 = !DILocation(line: 3015, column: 11, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3312, file: !526, line: 3015, column: 11)
!3418 = !DILocation(line: 3015, column: 11, scope: !3312)
!3419 = !DILocation(line: 3016, column: 26, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !526, line: 3015, column: 30)
!3421 = !DILocation(line: 3016, column: 10, scope: !3420)
!3422 = !DILocation(line: 3017, column: 7, scope: !3420)
!3423 = !DILocation(line: 3018, column: 4, scope: !3312)
!3424 = !DILocation(line: 3018, column: 15, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3426, file: !526, discriminator: 1)
!3426 = distinct !DILexicalBlock(scope: !3305, file: !526, line: 3018, column: 15)
!3427 = !DILocation(line: 3018, column: 27, scope: !3425)
!3428 = !DILocation(line: 3019, column: 16, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !526, line: 3018, column: 33)
!3430 = !DILocation(line: 3019, column: 14, scope: !3429)
!3431 = !DILocation(line: 3020, column: 4, scope: !3429)
!3432 = !DILocation(line: 2963, column: 28, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3305, file: !526, discriminator: 2)
!3434 = !DILocation(line: 3023, column: 11, scope: !2999)
!3435 = !DILocation(line: 3023, column: 4, scope: !2999)
!3436 = distinct !DISubprogram(name: "HgfsSetattrOwnership", scope: !526, file: !526, line: 2678, type: !3437, isLocal: true, isDefinition: true, scopeLine: 2681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!729, !630, !3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64, align: 64)
!3441 = !DILocalVariable(name: "attr", arg: 1, scope: !3436, file: !526, line: 2678, type: !630)
!3442 = !DILocation(line: 2678, column: 40, scope: !3436)
!3443 = !DILocalVariable(name: "newUid", arg: 2, scope: !3436, file: !526, line: 2679, type: !3439)
!3444 = !DILocation(line: 2679, column: 29, scope: !3436)
!3445 = !DILocalVariable(name: "newGid", arg: 3, scope: !3436, file: !526, line: 2680, type: !3440)
!3446 = !DILocation(line: 2680, column: 29, scope: !3436)
!3447 = !DILocalVariable(name: "idChanged", scope: !3436, file: !526, line: 2682, type: !729)
!3448 = !DILocation(line: 2682, column: 9, scope: !3436)
!3449 = !DILocation(line: 2688, column: 15, scope: !3436)
!3450 = !DILocation(line: 2688, column: 22, scope: !3436)
!3451 = !DILocation(line: 2688, column: 5, scope: !3436)
!3452 = !DILocation(line: 2688, column: 12, scope: !3436)
!3453 = !DILocation(line: 2690, column: 8, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3436, file: !526, line: 2690, column: 8)
!3455 = !DILocation(line: 2690, column: 14, scope: !3454)
!3456 = !DILocation(line: 2690, column: 19, scope: !3454)
!3457 = !DILocation(line: 2690, column: 8, scope: !3436)
!3458 = !DILocation(line: 2691, column: 17, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3454, file: !526, line: 2690, column: 32)
!3460 = !DILocation(line: 2691, column: 23, scope: !3459)
!3461 = !DILocation(line: 2691, column: 8, scope: !3459)
!3462 = !DILocation(line: 2691, column: 15, scope: !3459)
!3463 = !DILocation(line: 2692, column: 17, scope: !3459)
!3464 = !DILocation(line: 2693, column: 4, scope: !3459)
!3465 = !DILocation(line: 2695, column: 8, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3436, file: !526, line: 2695, column: 8)
!3467 = !DILocation(line: 2695, column: 14, scope: !3466)
!3468 = !DILocation(line: 2695, column: 19, scope: !3466)
!3469 = !DILocation(line: 2695, column: 8, scope: !3436)
!3470 = !DILocation(line: 2696, column: 17, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !526, line: 2695, column: 32)
!3472 = !DILocation(line: 2696, column: 23, scope: !3471)
!3473 = !DILocation(line: 2696, column: 8, scope: !3471)
!3474 = !DILocation(line: 2696, column: 15, scope: !3471)
!3475 = !DILocation(line: 2697, column: 17, scope: !3471)
!3476 = !DILocation(line: 2698, column: 4, scope: !3471)
!3477 = !DILocation(line: 2700, column: 11, scope: !3436)
!3478 = !DILocation(line: 2700, column: 4, scope: !3436)
!3479 = distinct !DISubprogram(name: "HgfsSetattrMode", scope: !526, file: !526, line: 2619, type: !3480, isLocal: true, isDefinition: true, scopeLine: 2622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!729, !2337, !630, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64, align: 64)
!3483 = !DILocalVariable(name: "statBuf", arg: 1, scope: !3479, file: !526, line: 2619, type: !2337)
!3484 = !DILocation(line: 2619, column: 30, scope: !3479)
!3485 = !DILocalVariable(name: "attr", arg: 2, scope: !3479, file: !526, line: 2620, type: !630)
!3486 = !DILocation(line: 2620, column: 35, scope: !3479)
!3487 = !DILocalVariable(name: "newPermissions", arg: 3, scope: !3479, file: !526, line: 2621, type: !3482)
!3488 = !DILocation(line: 2621, column: 25, scope: !3479)
!3489 = !DILocalVariable(name: "permsChanged", scope: !3479, file: !526, line: 2623, type: !729)
!3490 = !DILocation(line: 2623, column: 9, scope: !3479)
!3491 = !DILocation(line: 2629, column: 5, scope: !3479)
!3492 = !DILocation(line: 2629, column: 20, scope: !3479)
!3493 = !DILocation(line: 2630, column: 8, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3479, file: !526, line: 2630, column: 8)
!3495 = !DILocation(line: 2630, column: 14, scope: !3494)
!3496 = !DILocation(line: 2630, column: 19, scope: !3494)
!3497 = !DILocation(line: 2630, column: 8, scope: !3479)
!3498 = !DILocation(line: 2631, column: 26, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !526, line: 2630, column: 31)
!3500 = !DILocation(line: 2631, column: 32, scope: !3499)
!3501 = !DILocation(line: 2631, column: 45, scope: !3499)
!3502 = !DILocation(line: 2631, column: 8, scope: !3499)
!3503 = !DILocation(line: 2631, column: 23, scope: !3499)
!3504 = !DILocation(line: 2632, column: 20, scope: !3499)
!3505 = !DILocation(line: 2633, column: 4, scope: !3499)
!3506 = !DILocation(line: 2634, column: 26, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3494, file: !526, line: 2633, column: 11)
!3508 = !DILocation(line: 2634, column: 35, scope: !3507)
!3509 = !DILocation(line: 2634, column: 43, scope: !3507)
!3510 = !DILocation(line: 2634, column: 8, scope: !3507)
!3511 = !DILocation(line: 2634, column: 23, scope: !3507)
!3512 = !DILocation(line: 2636, column: 8, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3479, file: !526, line: 2636, column: 8)
!3514 = !DILocation(line: 2636, column: 14, scope: !3513)
!3515 = !DILocation(line: 2636, column: 19, scope: !3513)
!3516 = !DILocation(line: 2636, column: 8, scope: !3479)
!3517 = !DILocation(line: 2637, column: 26, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3513, file: !526, line: 2636, column: 31)
!3519 = !DILocation(line: 2637, column: 32, scope: !3518)
!3520 = !DILocation(line: 2637, column: 43, scope: !3518)
!3521 = !DILocation(line: 2637, column: 8, scope: !3518)
!3522 = !DILocation(line: 2637, column: 23, scope: !3518)
!3523 = !DILocation(line: 2638, column: 20, scope: !3518)
!3524 = !DILocation(line: 2639, column: 4, scope: !3518)
!3525 = !DILocation(line: 2640, column: 26, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3513, file: !526, line: 2639, column: 11)
!3527 = !DILocation(line: 2640, column: 35, scope: !3526)
!3528 = !DILocation(line: 2640, column: 43, scope: !3526)
!3529 = !DILocation(line: 2640, column: 8, scope: !3526)
!3530 = !DILocation(line: 2640, column: 23, scope: !3526)
!3531 = !DILocation(line: 2642, column: 8, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3479, file: !526, line: 2642, column: 8)
!3533 = !DILocation(line: 2642, column: 14, scope: !3532)
!3534 = !DILocation(line: 2642, column: 19, scope: !3532)
!3535 = !DILocation(line: 2642, column: 8, scope: !3479)
!3536 = !DILocation(line: 2643, column: 26, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !526, line: 2642, column: 31)
!3538 = !DILocation(line: 2643, column: 32, scope: !3537)
!3539 = !DILocation(line: 2643, column: 43, scope: !3537)
!3540 = !DILocation(line: 2643, column: 8, scope: !3537)
!3541 = !DILocation(line: 2643, column: 23, scope: !3537)
!3542 = !DILocation(line: 2644, column: 20, scope: !3537)
!3543 = !DILocation(line: 2645, column: 4, scope: !3537)
!3544 = !DILocation(line: 2646, column: 26, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3532, file: !526, line: 2645, column: 11)
!3546 = !DILocation(line: 2646, column: 35, scope: !3545)
!3547 = !DILocation(line: 2646, column: 43, scope: !3545)
!3548 = !DILocation(line: 2646, column: 8, scope: !3545)
!3549 = !DILocation(line: 2646, column: 23, scope: !3545)
!3550 = !DILocation(line: 2648, column: 8, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3479, file: !526, line: 2648, column: 8)
!3552 = !DILocation(line: 2648, column: 14, scope: !3551)
!3553 = !DILocation(line: 2648, column: 19, scope: !3551)
!3554 = !DILocation(line: 2648, column: 8, scope: !3479)
!3555 = !DILocation(line: 2649, column: 26, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !526, line: 2648, column: 31)
!3557 = !DILocation(line: 2649, column: 32, scope: !3556)
!3558 = !DILocation(line: 2649, column: 8, scope: !3556)
!3559 = !DILocation(line: 2649, column: 23, scope: !3556)
!3560 = !DILocation(line: 2650, column: 20, scope: !3556)
!3561 = !DILocation(line: 2651, column: 4, scope: !3556)
!3562 = !DILocation(line: 2652, column: 26, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3551, file: !526, line: 2651, column: 11)
!3564 = !DILocation(line: 2652, column: 35, scope: !3563)
!3565 = !DILocation(line: 2652, column: 43, scope: !3563)
!3566 = !DILocation(line: 2652, column: 8, scope: !3563)
!3567 = !DILocation(line: 2652, column: 23, scope: !3563)
!3568 = !DILocation(line: 2654, column: 11, scope: !3479)
!3569 = !DILocation(line: 2654, column: 4, scope: !3479)
!3570 = distinct !DISubprogram(name: "HgfsSetattrTimes", scope: !526, file: !526, line: 2724, type: !3571, isLocal: true, isDefinition: true, scopeLine: 2731, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!609, !2337, !630, !3002, !729, !3573, !3573, !3574}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!3575 = !DILocalVariable(name: "statBuf", arg: 1, scope: !3570, file: !526, line: 2724, type: !2337)
!3576 = !DILocation(line: 2724, column: 31, scope: !3570)
!3577 = !DILocalVariable(name: "attr", arg: 2, scope: !3570, file: !526, line: 2725, type: !630)
!3578 = !DILocation(line: 2725, column: 36, scope: !3570)
!3579 = !DILocalVariable(name: "hints", arg: 3, scope: !3570, file: !526, line: 2726, type: !3002)
!3580 = !DILocation(line: 2726, column: 31, scope: !3570)
!3581 = !DILocalVariable(name: "useHostTime", arg: 4, scope: !3570, file: !526, line: 2727, type: !729)
!3582 = !DILocation(line: 2727, column: 23, scope: !3570)
!3583 = !DILocalVariable(name: "accessTime", arg: 5, scope: !3570, file: !526, line: 2728, type: !3573)
!3584 = !DILocation(line: 2728, column: 34, scope: !3570)
!3585 = !DILocalVariable(name: "modTime", arg: 6, scope: !3570, file: !526, line: 2729, type: !3573)
!3586 = !DILocation(line: 2729, column: 34, scope: !3570)
!3587 = !DILocalVariable(name: "timesChanged", arg: 7, scope: !3570, file: !526, line: 2730, type: !3574)
!3588 = !DILocation(line: 2730, column: 24, scope: !3570)
!3589 = !DILocalVariable(name: "status", scope: !3570, file: !526, line: 2732, type: !609)
!3590 = !DILocation(line: 2732, column: 23, scope: !3570)
!3591 = !DILocalVariable(name: "error", scope: !3570, file: !526, line: 2733, type: !550)
!3592 = !DILocation(line: 2733, column: 8, scope: !3570)
!3593 = !DILocation(line: 2741, column: 5, scope: !3570)
!3594 = !DILocation(line: 2741, column: 18, scope: !3570)
!3595 = !DILocation(line: 2743, column: 8, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3570, file: !526, line: 2743, column: 8)
!3597 = !DILocation(line: 2743, column: 14, scope: !3596)
!3598 = !DILocation(line: 2743, column: 19, scope: !3596)
!3599 = !DILocation(line: 2743, column: 8, scope: !3570)
!3600 = !DILocation(line: 2755, column: 12, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !526, line: 2755, column: 11)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !526, line: 2744, column: 32)
!3603 = !DILocation(line: 2755, column: 18, scope: !3601)
!3604 = !DILocation(line: 2755, column: 23, scope: !3601)
!3605 = !DILocation(line: 2757, column: 11, scope: !3601)
!3606 = !DILocation(line: 2755, column: 11, scope: !3602)
!3607 = !DILocation(line: 2763, column: 31, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3601, file: !526, line: 2757, column: 37)
!3609 = !DILocation(line: 2763, column: 39, scope: !3608)
!3610 = !DILocation(line: 2763, column: 47, scope: !3608)
!3611 = !DILocation(line: 2763, column: 10, scope: !3608)
!3612 = !DILocation(line: 2763, column: 22, scope: !3608)
!3613 = !DILocation(line: 2763, column: 29, scope: !3608)
!3614 = !DILocation(line: 2764, column: 10, scope: !3608)
!3615 = !DILocation(line: 2764, column: 22, scope: !3608)
!3616 = !DILocation(line: 2764, column: 30, scope: !3608)
!3617 = !DILocation(line: 2765, column: 28, scope: !3608)
!3618 = !DILocation(line: 2765, column: 36, scope: !3608)
!3619 = !DILocation(line: 2765, column: 44, scope: !3608)
!3620 = !DILocation(line: 2765, column: 10, scope: !3608)
!3621 = !DILocation(line: 2765, column: 19, scope: !3608)
!3622 = !DILocation(line: 2765, column: 26, scope: !3608)
!3623 = !DILocation(line: 2766, column: 10, scope: !3608)
!3624 = !DILocation(line: 2766, column: 19, scope: !3608)
!3625 = !DILocation(line: 2766, column: 27, scope: !3608)
!3626 = !DILocation(line: 2767, column: 7, scope: !3608)
!3627 = !DILocation(line: 2775, column: 11, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3602, file: !526, line: 2775, column: 11)
!3629 = !DILocation(line: 2775, column: 17, scope: !3628)
!3630 = !DILocation(line: 2775, column: 22, scope: !3628)
!3631 = !DILocation(line: 2775, column: 11, scope: !3602)
!3632 = !DILocation(line: 2776, column: 15, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !526, line: 2776, column: 14)
!3634 = distinct !DILexicalBlock(scope: !3628, file: !526, line: 2775, column: 34)
!3635 = !DILocation(line: 2776, column: 27, scope: !3633)
!3636 = !DILocation(line: 2776, column: 31, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3633, file: !526, discriminator: 1)
!3638 = !DILocation(line: 2776, column: 37, scope: !3637)
!3639 = !DILocation(line: 2776, column: 14, scope: !3637)
!3640 = !DILocalVariable(name: "ts", scope: !3641, file: !526, line: 2778, type: !1202)
!3641 = distinct !DILexicalBlock(scope: !3633, file: !526, line: 2776, column: 50)
!3642 = !DILocation(line: 2778, column: 29, scope: !3641)
!3643 = !DILocation(line: 2780, column: 44, scope: !3641)
!3644 = !DILocation(line: 2780, column: 50, scope: !3641)
!3645 = !DILocation(line: 2780, column: 13, scope: !3641)
!3646 = !DILocation(line: 2781, column: 37, scope: !3641)
!3647 = !DILocation(line: 2781, column: 13, scope: !3641)
!3648 = !DILocation(line: 2781, column: 25, scope: !3641)
!3649 = !DILocation(line: 2781, column: 32, scope: !3641)
!3650 = !DILocation(line: 2782, column: 38, scope: !3641)
!3651 = !DILocation(line: 2782, column: 46, scope: !3641)
!3652 = !DILocation(line: 2782, column: 13, scope: !3641)
!3653 = !DILocation(line: 2782, column: 25, scope: !3641)
!3654 = !DILocation(line: 2782, column: 33, scope: !3641)
!3655 = !DILocation(line: 2783, column: 10, scope: !3641)
!3656 = !DILocalVariable(name: "tv", scope: !3657, file: !526, line: 2785, type: !565)
!3657 = distinct !DILexicalBlock(scope: !3633, file: !526, line: 2783, column: 17)
!3658 = !DILocation(line: 2785, column: 28, scope: !3657)
!3659 = !DILocation(line: 2787, column: 17, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !526, line: 2787, column: 17)
!3661 = !DILocation(line: 2787, column: 40, scope: !3660)
!3662 = !DILocation(line: 2787, column: 17, scope: !3657)
!3663 = !DILocation(line: 2788, column: 25, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !526, line: 2787, column: 46)
!3665 = !DILocation(line: 2788, column: 24, scope: !3664)
!3666 = !DILocation(line: 2788, column: 22, scope: !3664)
!3667 = !DILocation(line: 2789, column: 16, scope: !3664)
!3668 = distinct !{!3668, !3667}
!3669 = !DILocation(line: 2789, column: 42, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3671, file: !526, discriminator: 1)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !526, line: 2789, column: 40)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !526, line: 2789, column: 25)
!3673 = distinct !DILexicalBlock(scope: !3664, file: !526, line: 2789, column: 19)
!3674 = !DILocation(line: 2789, column: 224, scope: !3670)
!3675 = !DILocation(line: 2789, column: 207, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3670, file: !526, discriminator: 2)
!3677 = !DILocation(line: 2789, column: 121, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3670, file: !526, discriminator: 3)
!3679 = !DILocation(line: 2789, column: 235, scope: !3670)
!3680 = !DILocation(line: 2791, column: 25, scope: !3664)
!3681 = !DILocation(line: 2791, column: 23, scope: !3664)
!3682 = !DILocation(line: 2792, column: 16, scope: !3664)
!3683 = !DILocation(line: 2795, column: 37, scope: !3657)
!3684 = !DILocation(line: 2795, column: 13, scope: !3657)
!3685 = !DILocation(line: 2795, column: 25, scope: !3657)
!3686 = !DILocation(line: 2795, column: 32, scope: !3657)
!3687 = !DILocation(line: 2796, column: 38, scope: !3657)
!3688 = !DILocation(line: 2796, column: 13, scope: !3657)
!3689 = !DILocation(line: 2796, column: 25, scope: !3657)
!3690 = !DILocation(line: 2796, column: 33, scope: !3657)
!3691 = !DILocation(line: 2798, column: 7, scope: !3634)
!3692 = !DILocation(line: 2800, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3602, file: !526, line: 2800, column: 11)
!3694 = !DILocation(line: 2800, column: 17, scope: !3693)
!3695 = !DILocation(line: 2800, column: 22, scope: !3693)
!3696 = !DILocation(line: 2800, column: 11, scope: !3602)
!3697 = !DILocation(line: 2801, column: 15, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !526, line: 2801, column: 14)
!3699 = distinct !DILexicalBlock(scope: !3693, file: !526, line: 2800, column: 34)
!3700 = !DILocation(line: 2801, column: 27, scope: !3698)
!3701 = !DILocation(line: 2801, column: 31, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3698, file: !526, discriminator: 1)
!3703 = !DILocation(line: 2801, column: 37, scope: !3702)
!3704 = !DILocation(line: 2801, column: 14, scope: !3702)
!3705 = !DILocalVariable(name: "ts", scope: !3706, file: !526, line: 2802, type: !1202)
!3706 = distinct !DILexicalBlock(scope: !3698, file: !526, line: 2801, column: 50)
!3707 = !DILocation(line: 2802, column: 29, scope: !3706)
!3708 = !DILocation(line: 2804, column: 44, scope: !3706)
!3709 = !DILocation(line: 2804, column: 50, scope: !3706)
!3710 = !DILocation(line: 2804, column: 13, scope: !3706)
!3711 = !DILocation(line: 2805, column: 34, scope: !3706)
!3712 = !DILocation(line: 2805, column: 13, scope: !3706)
!3713 = !DILocation(line: 2805, column: 22, scope: !3706)
!3714 = !DILocation(line: 2805, column: 29, scope: !3706)
!3715 = !DILocation(line: 2806, column: 35, scope: !3706)
!3716 = !DILocation(line: 2806, column: 43, scope: !3706)
!3717 = !DILocation(line: 2806, column: 13, scope: !3706)
!3718 = !DILocation(line: 2806, column: 22, scope: !3706)
!3719 = !DILocation(line: 2806, column: 30, scope: !3706)
!3720 = !DILocation(line: 2807, column: 10, scope: !3706)
!3721 = !DILocalVariable(name: "tv", scope: !3722, file: !526, line: 2808, type: !565)
!3722 = distinct !DILexicalBlock(scope: !3698, file: !526, line: 2807, column: 17)
!3723 = !DILocation(line: 2808, column: 28, scope: !3722)
!3724 = !DILocation(line: 2810, column: 17, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !526, line: 2810, column: 17)
!3726 = !DILocation(line: 2810, column: 40, scope: !3725)
!3727 = !DILocation(line: 2810, column: 17, scope: !3722)
!3728 = !DILocation(line: 2811, column: 25, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !526, line: 2810, column: 46)
!3730 = !DILocation(line: 2811, column: 24, scope: !3729)
!3731 = !DILocation(line: 2811, column: 22, scope: !3729)
!3732 = !DILocation(line: 2812, column: 16, scope: !3729)
!3733 = distinct !{!3733, !3732}
!3734 = !DILocation(line: 2812, column: 42, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3736, file: !526, discriminator: 1)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !526, line: 2812, column: 40)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !526, line: 2812, column: 25)
!3738 = distinct !DILexicalBlock(scope: !3729, file: !526, line: 2812, column: 19)
!3739 = !DILocation(line: 2812, column: 224, scope: !3735)
!3740 = !DILocation(line: 2812, column: 207, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3735, file: !526, discriminator: 2)
!3742 = !DILocation(line: 2812, column: 121, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3735, file: !526, discriminator: 3)
!3744 = !DILocation(line: 2812, column: 235, scope: !3735)
!3745 = !DILocation(line: 2814, column: 25, scope: !3729)
!3746 = !DILocation(line: 2814, column: 23, scope: !3729)
!3747 = !DILocation(line: 2815, column: 16, scope: !3729)
!3748 = !DILocation(line: 2818, column: 34, scope: !3722)
!3749 = !DILocation(line: 2818, column: 13, scope: !3722)
!3750 = !DILocation(line: 2818, column: 22, scope: !3722)
!3751 = !DILocation(line: 2818, column: 29, scope: !3722)
!3752 = !DILocation(line: 2819, column: 35, scope: !3722)
!3753 = !DILocation(line: 2819, column: 13, scope: !3722)
!3754 = !DILocation(line: 2819, column: 22, scope: !3722)
!3755 = !DILocation(line: 2819, column: 30, scope: !3722)
!3756 = !DILocation(line: 2821, column: 7, scope: !3699)
!3757 = !DILocation(line: 2822, column: 8, scope: !3602)
!3758 = !DILocation(line: 2822, column: 21, scope: !3602)
!3759 = !DILocation(line: 2823, column: 4, scope: !3602)
!3760 = !DILocation(line: 2744, column: 29, scope: !3596)
!3761 = !DILocation(line: 2826, column: 11, scope: !3570)
!3762 = !DILocation(line: 2826, column: 4, scope: !3570)
!3763 = distinct !DISubprogram(name: "Id_IsSuperUser", scope: !3764, file: !3764, line: 128, type: !727, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3764 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/su.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!3765 = !DILocation(line: 128, column: 55, scope: !3763)
!3766 = !DILocation(line: 128, column: 52, scope: !3763)
!3767 = !DILocation(line: 128, column: 50, scope: !3763)
!3768 = !DILocation(line: 128, column: 43, scope: !3763)
!3769 = distinct !DISubprogram(name: "HgfsPlatformSetattrFromName", scope: !526, file: !526, line: 3044, type: !3770, isLocal: false, isDefinition: true, scopeLine: 3049, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!609, !519, !630, !2002, !3002, !729}
!3772 = !DILocalVariable(name: "localName", arg: 1, scope: !3769, file: !526, line: 3044, type: !519)
!3773 = !DILocation(line: 3044, column: 35, scope: !3769)
!3774 = !DILocalVariable(name: "attr", arg: 2, scope: !3769, file: !526, line: 3045, type: !630)
!3775 = !DILocation(line: 3045, column: 47, scope: !3769)
!3776 = !DILocalVariable(name: "configOptions", arg: 3, scope: !3769, file: !526, line: 3046, type: !2002)
!3777 = !DILocation(line: 3046, column: 46, scope: !3769)
!3778 = !DILocalVariable(name: "hints", arg: 4, scope: !3769, file: !526, line: 3047, type: !3002)
!3779 = !DILocation(line: 3047, column: 42, scope: !3769)
!3780 = !DILocalVariable(name: "useHostTime", arg: 5, scope: !3769, file: !526, line: 3048, type: !729)
!3781 = !DILocation(line: 3048, column: 34, scope: !3769)
!3782 = !DILocalVariable(name: "status", scope: !3769, file: !526, line: 3050, type: !609)
!3783 = !DILocation(line: 3050, column: 23, scope: !3769)
!3784 = !DILocalVariable(name: "timesStatus", scope: !3769, file: !526, line: 3050, type: !609)
!3785 = !DILocation(line: 3050, column: 35, scope: !3769)
!3786 = !DILocalVariable(name: "statBuf", scope: !3769, file: !526, line: 3051, type: !1179)
!3787 = !DILocation(line: 3051, column: 16, scope: !3769)
!3788 = !DILocalVariable(name: "times", scope: !3769, file: !526, line: 3052, type: !580)
!3789 = !DILocation(line: 3052, column: 19, scope: !3769)
!3790 = !DILocalVariable(name: "newPermissions", scope: !3769, file: !526, line: 3053, type: !1314)
!3791 = !DILocation(line: 3053, column: 11, scope: !3769)
!3792 = !DILocalVariable(name: "newUid", scope: !3769, file: !526, line: 3054, type: !515)
!3793 = !DILocation(line: 3054, column: 10, scope: !3769)
!3794 = !DILocalVariable(name: "newGid", scope: !3769, file: !526, line: 3055, type: !3028)
!3795 = !DILocation(line: 3055, column: 10, scope: !3769)
!3796 = !DILocalVariable(name: "permsChanged", scope: !3769, file: !526, line: 3056, type: !729)
!3797 = !DILocation(line: 3056, column: 9, scope: !3769)
!3798 = !DILocalVariable(name: "timesChanged", scope: !3769, file: !526, line: 3057, type: !729)
!3799 = !DILocation(line: 3057, column: 9, scope: !3769)
!3800 = !DILocalVariable(name: "idChanged", scope: !3769, file: !526, line: 3058, type: !729)
!3801 = !DILocation(line: 3058, column: 9, scope: !3769)
!3802 = !DILocalVariable(name: "error", scope: !3769, file: !526, line: 3059, type: !550)
!3803 = !DILocation(line: 3059, column: 8, scope: !3769)
!3804 = !DILocation(line: 3064, column: 43, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3064, column: 8)
!3806 = !DILocation(line: 3064, column: 9, scope: !3805)
!3807 = !DILocation(line: 3064, column: 8, scope: !3769)
!3808 = !DILocation(line: 3075, column: 26, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !526, line: 3075, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3805, file: !526, line: 3065, column: 54)
!3811 = !DILocation(line: 3075, column: 11, scope: !3809)
!3812 = !DILocation(line: 3075, column: 11, scope: !3810)
!3813 = !DILocation(line: 3076, column: 10, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3809, file: !526, line: 3075, column: 38)
!3815 = distinct !{!3815, !3813}
!3816 = !DILocation(line: 3076, column: 36, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3818, file: !526, discriminator: 1)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !526, line: 3076, column: 34)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !526, line: 3076, column: 19)
!3820 = distinct !DILexicalBlock(scope: !3814, file: !526, line: 3076, column: 13)
!3821 = !DILocation(line: 3076, column: 115, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3817, file: !526, discriminator: 2)
!3823 = !DILocation(line: 3076, column: 209, scope: !3817)
!3824 = !DILocation(line: 3077, column: 17, scope: !3814)
!3825 = !DILocation(line: 3078, column: 10, scope: !3814)
!3826 = !DILocation(line: 3080, column: 4, scope: !3810)
!3827 = !DILocation(line: 3082, column: 4, scope: !3769)
!3828 = distinct !{!3828, !3827}
!3829 = !DILocation(line: 3082, column: 30, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3831, file: !526, discriminator: 1)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !526, line: 3082, column: 28)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !526, line: 3082, column: 13)
!3833 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3082, column: 7)
!3834 = !DILocation(line: 3082, column: 197, scope: !3830)
!3835 = !DILocation(line: 3082, column: 109, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3830, file: !526, discriminator: 2)
!3837 = !DILocation(line: 3082, column: 211, scope: !3830)
!3838 = !DILocation(line: 3085, column: 20, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3085, column: 8)
!3840 = !DILocation(line: 3085, column: 8, scope: !3839)
!3841 = !DILocation(line: 3085, column: 41, scope: !3839)
!3842 = !DILocation(line: 3085, column: 8, scope: !3769)
!3843 = !DILocation(line: 3086, column: 16, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3839, file: !526, line: 3085, column: 48)
!3845 = !DILocation(line: 3086, column: 15, scope: !3844)
!3846 = !DILocation(line: 3086, column: 13, scope: !3844)
!3847 = !DILocation(line: 3087, column: 7, scope: !3844)
!3848 = distinct !{!3848, !3847}
!3849 = !DILocation(line: 3087, column: 33, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3851, file: !526, discriminator: 1)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !526, line: 3087, column: 31)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !526, line: 3087, column: 16)
!3853 = distinct !DILexicalBlock(scope: !3844, file: !526, line: 3087, column: 10)
!3854 = !DILocation(line: 3087, column: 205, scope: !3850)
!3855 = !DILocation(line: 3087, column: 233, scope: !3850)
!3856 = !DILocation(line: 3087, column: 216, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3850, file: !526, discriminator: 2)
!3858 = !DILocation(line: 3087, column: 112, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3850, file: !526, discriminator: 3)
!3860 = !DILocation(line: 3087, column: 244, scope: !3850)
!3861 = !DILocation(line: 3089, column: 16, scope: !3844)
!3862 = !DILocation(line: 3089, column: 14, scope: !3844)
!3863 = !DILocation(line: 3090, column: 7, scope: !3844)
!3864 = !DILocation(line: 3100, column: 37, scope: !3769)
!3865 = !DILocation(line: 3100, column: 16, scope: !3769)
!3866 = !DILocation(line: 3100, column: 14, scope: !3769)
!3867 = !DILocation(line: 3105, column: 8, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3105, column: 8)
!3869 = !DILocation(line: 3105, column: 8, scope: !3769)
!3870 = !DILocation(line: 3106, column: 24, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !526, line: 3106, column: 11)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !526, line: 3105, column: 19)
!3873 = !DILocation(line: 3106, column: 35, scope: !3871)
!3874 = !DILocation(line: 3106, column: 43, scope: !3871)
!3875 = !DILocation(line: 3106, column: 11, scope: !3871)
!3876 = !DILocation(line: 3106, column: 51, scope: !3871)
!3877 = !DILocation(line: 3106, column: 11, scope: !3872)
!3878 = !DILocation(line: 3107, column: 19, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3871, file: !526, line: 3106, column: 56)
!3880 = !DILocation(line: 3107, column: 18, scope: !3879)
!3881 = !DILocation(line: 3107, column: 16, scope: !3879)
!3882 = !DILocation(line: 3108, column: 10, scope: !3879)
!3883 = distinct !{!3883, !3882}
!3884 = !DILocation(line: 3108, column: 36, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3886, file: !526, discriminator: 1)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !526, line: 3108, column: 34)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !526, line: 3108, column: 19)
!3888 = distinct !DILexicalBlock(scope: !3879, file: !526, line: 3108, column: 13)
!3889 = !DILocation(line: 3108, column: 209, scope: !3885)
!3890 = !DILocation(line: 3108, column: 237, scope: !3885)
!3891 = !DILocation(line: 3108, column: 220, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !3885, file: !526, discriminator: 2)
!3893 = !DILocation(line: 3108, column: 115, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3885, file: !526, discriminator: 3)
!3895 = !DILocation(line: 3108, column: 248, scope: !3885)
!3896 = !DILocation(line: 3110, column: 19, scope: !3879)
!3897 = !DILocation(line: 3110, column: 17, scope: !3879)
!3898 = !DILocation(line: 3111, column: 7, scope: !3879)
!3899 = !DILocation(line: 3112, column: 4, scope: !3872)
!3900 = !DILocation(line: 3123, column: 45, scope: !3769)
!3901 = !DILocation(line: 3123, column: 19, scope: !3769)
!3902 = !DILocation(line: 3123, column: 17, scope: !3769)
!3903 = !DILocation(line: 3124, column: 8, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3124, column: 8)
!3905 = !DILocation(line: 3124, column: 8, scope: !3769)
!3906 = !DILocation(line: 3125, column: 7, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !526, line: 3124, column: 22)
!3908 = distinct !{!3908, !3906}
!3909 = !DILocation(line: 3125, column: 33, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3911, file: !526, discriminator: 1)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !526, line: 3125, column: 31)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !526, line: 3125, column: 16)
!3913 = distinct !DILexicalBlock(scope: !3907, file: !526, line: 3125, column: 10)
!3914 = !DILocation(line: 3125, column: 197, scope: !3910)
!3915 = !DILocation(line: 3125, column: 112, scope: !3916)
!3916 = !DILexicalBlockFile(scope: !3910, file: !526, discriminator: 2)
!3917 = !DILocation(line: 3125, column: 216, scope: !3910)
!3918 = !DILocation(line: 3127, column: 23, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3907, file: !526, line: 3127, column: 11)
!3920 = !DILocation(line: 3127, column: 34, scope: !3919)
!3921 = !DILocation(line: 3127, column: 11, scope: !3919)
!3922 = !DILocation(line: 3127, column: 50, scope: !3919)
!3923 = !DILocation(line: 3127, column: 11, scope: !3907)
!3924 = !DILocation(line: 3128, column: 19, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3919, file: !526, line: 3127, column: 55)
!3926 = !DILocation(line: 3128, column: 18, scope: !3925)
!3927 = !DILocation(line: 3128, column: 16, scope: !3925)
!3928 = !DILocation(line: 3129, column: 10, scope: !3925)
!3929 = distinct !{!3929, !3928}
!3930 = !DILocation(line: 3129, column: 36, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3932, file: !526, discriminator: 1)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !526, line: 3129, column: 34)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !526, line: 3129, column: 19)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !526, line: 3129, column: 13)
!3935 = !DILocation(line: 3129, column: 209, scope: !3931)
!3936 = !DILocation(line: 3129, column: 237, scope: !3931)
!3937 = !DILocation(line: 3129, column: 220, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3931, file: !526, discriminator: 2)
!3939 = !DILocation(line: 3129, column: 115, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3931, file: !526, discriminator: 3)
!3941 = !DILocation(line: 3129, column: 248, scope: !3931)
!3942 = !DILocation(line: 3131, column: 19, scope: !3925)
!3943 = !DILocation(line: 3131, column: 17, scope: !3925)
!3944 = !DILocation(line: 3132, column: 7, scope: !3925)
!3945 = !DILocation(line: 3133, column: 4, scope: !3907)
!3946 = !DILocation(line: 3135, column: 8, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3135, column: 8)
!3948 = !DILocation(line: 3135, column: 14, scope: !3947)
!3949 = !DILocation(line: 3135, column: 19, scope: !3947)
!3950 = !DILocation(line: 3135, column: 8, scope: !3769)
!3951 = !DILocation(line: 3136, column: 26, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !526, line: 3136, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3947, file: !526, line: 3135, column: 31)
!3954 = !DILocation(line: 3136, column: 37, scope: !3952)
!3955 = !DILocation(line: 3136, column: 43, scope: !3952)
!3956 = !DILocation(line: 3136, column: 11, scope: !3952)
!3957 = !DILocation(line: 3136, column: 49, scope: !3952)
!3958 = !DILocation(line: 3136, column: 11, scope: !3953)
!3959 = !DILocation(line: 3137, column: 19, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3952, file: !526, line: 3136, column: 54)
!3961 = !DILocation(line: 3137, column: 18, scope: !3960)
!3962 = !DILocation(line: 3137, column: 16, scope: !3960)
!3963 = !DILocation(line: 3138, column: 10, scope: !3960)
!3964 = distinct !{!3964, !3963}
!3965 = !DILocation(line: 3138, column: 36, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3967, file: !526, discriminator: 1)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !526, line: 3138, column: 34)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !526, line: 3138, column: 19)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !526, line: 3138, column: 13)
!3970 = !DILocation(line: 3138, column: 211, scope: !3966)
!3971 = !DILocation(line: 3138, column: 239, scope: !3966)
!3972 = !DILocation(line: 3138, column: 222, scope: !3973)
!3973 = !DILexicalBlockFile(scope: !3966, file: !526, discriminator: 2)
!3974 = !DILocation(line: 3138, column: 115, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3966, file: !526, discriminator: 3)
!3976 = !DILocation(line: 3138, column: 250, scope: !3966)
!3977 = !DILocation(line: 3140, column: 19, scope: !3960)
!3978 = !DILocation(line: 3140, column: 17, scope: !3960)
!3979 = !DILocation(line: 3141, column: 7, scope: !3960)
!3980 = !DILocation(line: 3142, column: 10, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3952, file: !526, line: 3141, column: 14)
!3982 = distinct !{!3982, !3980}
!3983 = !DILocation(line: 3142, column: 36, scope: !3984)
!3984 = !DILexicalBlockFile(scope: !3985, file: !526, discriminator: 1)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !526, line: 3142, column: 34)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !526, line: 3142, column: 19)
!3987 = distinct !DILexicalBlock(scope: !3981, file: !526, line: 3142, column: 13)
!3988 = !DILocation(line: 3142, column: 195, scope: !3984)
!3989 = !DILocation(line: 3142, column: 201, scope: !3984)
!3990 = !DILocation(line: 3142, column: 115, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3984, file: !526, discriminator: 2)
!3992 = !DILocation(line: 3142, column: 210, scope: !3984)
!3993 = !DILocation(line: 3144, column: 4, scope: !3953)
!3994 = !DILocation(line: 3146, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3146, column: 8)
!3996 = !DILocation(line: 3146, column: 14, scope: !3995)
!3997 = !DILocation(line: 3146, column: 19, scope: !3995)
!3998 = !DILocation(line: 3146, column: 8, scope: !3769)
!3999 = !DILocation(line: 3147, column: 35, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3995, file: !526, line: 3146, column: 32)
!4001 = !DILocation(line: 3148, column: 36, scope: !4000)
!4002 = !DILocation(line: 3148, column: 42, scope: !4000)
!4003 = !DILocation(line: 3148, column: 48, scope: !4000)
!4004 = !DILocation(line: 3148, column: 60, scope: !4000)
!4005 = !DILocation(line: 3148, column: 35, scope: !4000)
!4006 = !DILocation(line: 3149, column: 35, scope: !4000)
!4007 = !DILocation(line: 3147, column: 16, scope: !4000)
!4008 = !DILocation(line: 3147, column: 14, scope: !4000)
!4009 = !DILocation(line: 3150, column: 4, scope: !4000)
!4010 = !DILocation(line: 3152, column: 45, scope: !3769)
!4011 = !DILocation(line: 3152, column: 51, scope: !3769)
!4012 = !DILocation(line: 3152, column: 58, scope: !3769)
!4013 = !DILocation(line: 3153, column: 36, scope: !3769)
!4014 = !DILocation(line: 3153, column: 47, scope: !3769)
!4015 = !DILocation(line: 3152, column: 18, scope: !3769)
!4016 = !DILocation(line: 3152, column: 16, scope: !3769)
!4017 = !DILocation(line: 3154, column: 8, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3769, file: !526, line: 3154, column: 8)
!4019 = !DILocation(line: 3154, column: 20, scope: !4018)
!4020 = !DILocation(line: 3154, column: 25, scope: !4018)
!4021 = !DILocation(line: 3154, column: 28, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !4018, file: !526, discriminator: 1)
!4023 = !DILocation(line: 3154, column: 8, scope: !4022)
!4024 = !DILocation(line: 3160, column: 24, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !526, line: 3160, column: 11)
!4026 = distinct !DILexicalBlock(scope: !4018, file: !526, line: 3154, column: 42)
!4027 = !DILocation(line: 3160, column: 35, scope: !4025)
!4028 = !DILocation(line: 3160, column: 11, scope: !4025)
!4029 = !DILocation(line: 3160, column: 42, scope: !4025)
!4030 = !DILocation(line: 3160, column: 11, scope: !4026)
!4031 = !DILocation(line: 3161, column: 19, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4025, file: !526, line: 3160, column: 47)
!4033 = !DILocation(line: 3161, column: 18, scope: !4032)
!4034 = !DILocation(line: 3161, column: 16, scope: !4032)
!4035 = !DILocation(line: 3162, column: 10, scope: !4032)
!4036 = distinct !{!4036, !4035}
!4037 = !DILocation(line: 3162, column: 36, scope: !4038)
!4038 = !DILexicalBlockFile(scope: !4039, file: !526, discriminator: 1)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !526, line: 3162, column: 34)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !526, line: 3162, column: 19)
!4041 = distinct !DILexicalBlock(scope: !4032, file: !526, line: 3162, column: 13)
!4042 = !DILocation(line: 3162, column: 210, scope: !4038)
!4043 = !DILocation(line: 3162, column: 238, scope: !4038)
!4044 = !DILocation(line: 3162, column: 221, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !4038, file: !526, discriminator: 2)
!4046 = !DILocation(line: 3162, column: 115, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !4038, file: !526, discriminator: 3)
!4048 = !DILocation(line: 3162, column: 249, scope: !4038)
!4049 = !DILocation(line: 3164, column: 19, scope: !4032)
!4050 = !DILocation(line: 3164, column: 17, scope: !4032)
!4051 = !DILocation(line: 3165, column: 7, scope: !4032)
!4052 = !DILocation(line: 3166, column: 4, scope: !4026)
!4053 = !DILocation(line: 3166, column: 15, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !4055, file: !526, discriminator: 1)
!4055 = distinct !DILexicalBlock(scope: !4018, file: !526, line: 3166, column: 15)
!4056 = !DILocation(line: 3166, column: 27, scope: !4054)
!4057 = !DILocation(line: 3167, column: 16, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4055, file: !526, line: 3166, column: 33)
!4059 = !DILocation(line: 3167, column: 14, scope: !4058)
!4060 = !DILocation(line: 3168, column: 4, scope: !4058)
!4061 = !DILocation(line: 3154, column: 28, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !4018, file: !526, discriminator: 2)
!4063 = !DILocation(line: 3171, column: 11, scope: !3769)
!4064 = !DILocation(line: 3171, column: 4, scope: !3769)
!4065 = distinct !DISubprogram(name: "HgfsPlatformWriteWin32Stream", scope: !526, file: !526, line: 3176, type: !4066, isLocal: false, isDefinition: true, scopeLine: 3182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!609, !509, !519, !771, !729, !778, !863}
!4068 = !DILocalVariable(name: "file", arg: 1, scope: !4065, file: !526, line: 3176, type: !509)
!4069 = !DILocation(line: 3176, column: 41, scope: !4065)
!4070 = !DILocalVariable(name: "dataToWrite", arg: 2, scope: !4065, file: !526, line: 3177, type: !519)
!4071 = !DILocation(line: 3177, column: 36, scope: !4065)
!4072 = !DILocalVariable(name: "requiredSize", arg: 3, scope: !4065, file: !526, line: 3178, type: !771)
!4073 = !DILocation(line: 3178, column: 37, scope: !4065)
!4074 = !DILocalVariable(name: "doSecurity", arg: 4, scope: !4065, file: !526, line: 3179, type: !729)
!4075 = !DILocation(line: 3179, column: 35, scope: !4065)
!4076 = !DILocalVariable(name: "actualSize", arg: 5, scope: !4065, file: !526, line: 3180, type: !778)
!4077 = !DILocation(line: 3180, column: 38, scope: !4065)
!4078 = !DILocalVariable(name: "session", arg: 6, scope: !4065, file: !526, line: 3181, type: !863)
!4079 = !DILocation(line: 3181, column: 47, scope: !4065)
!4080 = !DILocation(line: 3183, column: 4, scope: !4065)
!4081 = distinct !DISubprogram(name: "HgfsPlatformVDirStatsFs", scope: !526, file: !526, line: 3204, type: !4082, isLocal: false, isDefinition: true, scopeLine: 3209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!609, !863, !611, !4084, !2338, !2338}
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "VolumeInfoType", file: !129, line: 132, baseType: !148)
!4085 = !DILocalVariable(name: "session", arg: 1, scope: !4081, file: !526, line: 3204, type: !863)
!4086 = !DILocation(line: 3204, column: 42, scope: !4081)
!4087 = !DILocalVariable(name: "nameStatus", arg: 2, scope: !4081, file: !526, line: 3205, type: !611)
!4088 = !DILocation(line: 3205, column: 40, scope: !4081)
!4089 = !DILocalVariable(name: "infoType", arg: 3, scope: !4081, file: !526, line: 3206, type: !4084)
!4090 = !DILocation(line: 3206, column: 40, scope: !4081)
!4091 = !DILocalVariable(name: "outFreeBytes", arg: 4, scope: !4081, file: !526, line: 3207, type: !2338)
!4092 = !DILocation(line: 3207, column: 33, scope: !4081)
!4093 = !DILocalVariable(name: "outTotalBytes", arg: 5, scope: !4081, file: !526, line: 3208, type: !2338)
!4094 = !DILocation(line: 3208, column: 33, scope: !4081)
!4095 = !DILocalVariable(name: "status", scope: !4081, file: !526, line: 3210, type: !609)
!4096 = !DILocation(line: 3210, column: 23, scope: !4081)
!4097 = !DILocalVariable(name: "firstErr", scope: !4081, file: !526, line: 3211, type: !609)
!4098 = !DILocation(line: 3211, column: 23, scope: !4081)
!4099 = !DILocalVariable(name: "firstShare", scope: !4081, file: !526, line: 3212, type: !729)
!4100 = !DILocation(line: 3212, column: 9, scope: !4081)
!4101 = !DILocalVariable(name: "failed", scope: !4081, file: !526, line: 3213, type: !771)
!4102 = !DILocation(line: 3213, column: 11, scope: !4081)
!4103 = !DILocalVariable(name: "shares", scope: !4081, file: !526, line: 3214, type: !771)
!4104 = !DILocation(line: 3214, column: 11, scope: !4081)
!4105 = !DILocalVariable(name: "dent", scope: !4081, file: !526, line: 3215, type: !524)
!4106 = !DILocation(line: 3215, column: 20, scope: !4081)
!4107 = !DILocalVariable(name: "handle", scope: !4081, file: !526, line: 3216, type: !509)
!4108 = !DILocation(line: 3216, column: 15, scope: !4081)
!4109 = !DILocation(line: 3220, column: 12, scope: !4081)
!4110 = !DILocation(line: 3220, column: 4, scope: !4081)
!4111 = !DILocation(line: 3228, column: 7, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4081, file: !526, line: 3220, column: 24)
!4113 = distinct !{!4113, !4111}
!4114 = !DILocation(line: 3228, column: 33, scope: !4115)
!4115 = !DILexicalBlockFile(scope: !4116, file: !526, discriminator: 1)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !526, line: 3228, column: 31)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !526, line: 3228, column: 16)
!4118 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3228, column: 10)
!4119 = !DILocation(line: 3228, column: 112, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4115, file: !526, discriminator: 2)
!4121 = !DILocation(line: 3228, column: 200, scope: !4115)
!4122 = !DILocation(line: 3233, column: 43, scope: !4112)
!4123 = !DILocation(line: 3229, column: 16, scope: !4112)
!4124 = !DILocation(line: 3229, column: 14, scope: !4112)
!4125 = !DILocation(line: 3235, column: 11, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3235, column: 11)
!4127 = !DILocation(line: 3235, column: 18, scope: !4126)
!4128 = !DILocation(line: 3235, column: 11, scope: !4112)
!4129 = !DILocation(line: 3236, column: 10, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !526, line: 3235, column: 24)
!4131 = !DILocation(line: 3243, column: 7, scope: !4112)
!4132 = !DILocation(line: 3243, column: 46, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4112, file: !526, discriminator: 1)
!4134 = !DILocation(line: 3243, column: 54, scope: !4133)
!4135 = !DILocation(line: 3243, column: 24, scope: !4133)
!4136 = !DILocation(line: 3243, column: 22, scope: !4133)
!4137 = !DILocation(line: 3244, column: 57, scope: !4112)
!4138 = !DILocation(line: 3243, column: 7, scope: !4133)
!4139 = !DILocalVariable(name: "sharePath", scope: !4140, file: !526, line: 3245, type: !522)
!4140 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3244, column: 63)
!4141 = !DILocation(line: 3245, column: 22, scope: !4140)
!4142 = !DILocalVariable(name: "sharePathLen", scope: !4140, file: !526, line: 3246, type: !771)
!4143 = !DILocation(line: 3246, column: 17, scope: !4140)
!4144 = !DILocalVariable(name: "currentFreeBytes", scope: !4140, file: !526, line: 3247, type: !530)
!4145 = !DILocation(line: 3247, column: 17, scope: !4140)
!4146 = !DILocalVariable(name: "currentTotalBytes", scope: !4140, file: !526, line: 3248, type: !530)
!4147 = !DILocation(line: 3248, column: 17, scope: !4140)
!4148 = !DILocalVariable(name: "length", scope: !4140, file: !526, line: 3249, type: !771)
!4149 = !DILocation(line: 3249, column: 17, scope: !4140)
!4150 = !DILocation(line: 3251, column: 21, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4140, file: !526, line: 3251, column: 13)
!4152 = !DILocation(line: 3251, column: 18, scope: !4151)
!4153 = !DILocation(line: 3251, column: 13, scope: !4140)
!4154 = !DILocation(line: 3252, column: 13, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4151, file: !526, line: 3251, column: 27)
!4156 = !DILocation(line: 3255, column: 26, scope: !4140)
!4157 = !DILocation(line: 3255, column: 32, scope: !4140)
!4158 = !DILocation(line: 3255, column: 19, scope: !4140)
!4159 = !DILocation(line: 3255, column: 17, scope: !4140)
!4160 = !DILocation(line: 3262, column: 22, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4140, file: !526, line: 3262, column: 14)
!4162 = !DILocation(line: 3262, column: 28, scope: !4161)
!4163 = !DILocation(line: 3262, column: 15, scope: !4161)
!4164 = !DILocation(line: 3262, column: 41, scope: !4161)
!4165 = !DILocation(line: 3262, column: 52, scope: !4166)
!4166 = !DILexicalBlockFile(scope: !4161, file: !526, discriminator: 1)
!4167 = !DILocation(line: 3262, column: 58, scope: !4166)
!4168 = !DILocation(line: 3262, column: 45, scope: !4166)
!4169 = !DILocation(line: 3262, column: 14, scope: !4166)
!4170 = !DILocation(line: 3263, column: 13, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4161, file: !526, line: 3262, column: 73)
!4172 = distinct !{!4172, !4170}
!4173 = !DILocation(line: 3263, column: 39, scope: !4174)
!4174 = !DILexicalBlockFile(scope: !4175, file: !526, discriminator: 1)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !526, line: 3263, column: 37)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !526, line: 3263, column: 22)
!4177 = distinct !DILexicalBlock(scope: !4171, file: !526, line: 3263, column: 16)
!4178 = !DILocation(line: 3263, column: 204, scope: !4174)
!4179 = !DILocation(line: 3263, column: 210, scope: !4174)
!4180 = !DILocation(line: 3263, column: 118, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4174, file: !526, discriminator: 2)
!4182 = !DILocation(line: 3263, column: 221, scope: !4174)
!4183 = !DILocation(line: 3265, column: 18, scope: !4171)
!4184 = !DILocation(line: 3265, column: 13, scope: !4171)
!4185 = !DILocation(line: 3266, column: 13, scope: !4171)
!4186 = distinct !{!4186, !4131}
!4187 = !DILocation(line: 3273, column: 16, scope: !4140)
!4188 = !DILocation(line: 3283, column: 53, scope: !4140)
!4189 = !DILocation(line: 3283, column: 59, scope: !4140)
!4190 = !DILocation(line: 3283, column: 67, scope: !4140)
!4191 = !DILocation(line: 3283, column: 23, scope: !4140)
!4192 = !DILocation(line: 3283, column: 21, scope: !4140)
!4193 = !DILocation(line: 3287, column: 15, scope: !4140)
!4194 = !DILocation(line: 3287, column: 10, scope: !4140)
!4195 = !DILocation(line: 3288, column: 14, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4140, file: !526, line: 3288, column: 14)
!4197 = !DILocation(line: 3288, column: 25, scope: !4196)
!4198 = !DILocation(line: 3288, column: 14, scope: !4140)
!4199 = !DILocation(line: 3289, column: 13, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4196, file: !526, line: 3288, column: 55)
!4201 = distinct !{!4201, !4199}
!4202 = !DILocation(line: 3289, column: 39, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4204, file: !526, discriminator: 1)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !526, line: 3289, column: 37)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !526, line: 3289, column: 22)
!4206 = distinct !DILexicalBlock(scope: !4200, file: !526, line: 3289, column: 16)
!4207 = !DILocation(line: 3289, column: 118, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !4203, file: !526, discriminator: 2)
!4209 = !DILocation(line: 3289, column: 215, scope: !4203)
!4210 = !DILocation(line: 3290, column: 22, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4200, file: !526, line: 3290, column: 17)
!4212 = !DILocation(line: 3290, column: 19, scope: !4211)
!4213 = !DILocation(line: 3290, column: 17, scope: !4200)
!4214 = !DILocation(line: 3291, column: 61, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !526, line: 3290, column: 32)
!4216 = !DILocation(line: 3291, column: 27, scope: !4215)
!4217 = !DILocation(line: 3291, column: 25, scope: !4215)
!4218 = !DILocation(line: 3292, column: 13, scope: !4215)
!4219 = !DILocation(line: 3293, column: 19, scope: !4200)
!4220 = !DILocation(line: 3294, column: 13, scope: !4200)
!4221 = !DILocation(line: 3303, column: 32, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4140, file: !526, line: 3303, column: 14)
!4223 = !DILocation(line: 3303, column: 43, scope: !4222)
!4224 = !DILocation(line: 3303, column: 15, scope: !4222)
!4225 = !DILocation(line: 3303, column: 14, scope: !4140)
!4226 = !DILocation(line: 3305, column: 13, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !526, line: 3304, column: 72)
!4228 = distinct !{!4228, !4226}
!4229 = !DILocation(line: 3305, column: 39, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4231, file: !526, discriminator: 1)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !526, line: 3305, column: 37)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !526, line: 3305, column: 22)
!4233 = distinct !DILexicalBlock(scope: !4227, file: !526, line: 3305, column: 16)
!4234 = !DILocation(line: 3305, column: 118, scope: !4235)
!4235 = !DILexicalBlockFile(scope: !4230, file: !526, discriminator: 2)
!4236 = !DILocation(line: 3305, column: 217, scope: !4230)
!4237 = !DILocation(line: 3307, column: 22, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4227, file: !526, line: 3307, column: 17)
!4239 = !DILocation(line: 3307, column: 19, scope: !4238)
!4240 = !DILocation(line: 3307, column: 17, scope: !4227)
!4241 = !DILocation(line: 3308, column: 25, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4238, file: !526, line: 3307, column: 32)
!4243 = !DILocation(line: 3309, column: 13, scope: !4242)
!4244 = !DILocation(line: 3310, column: 19, scope: !4227)
!4245 = !DILocation(line: 3311, column: 13, scope: !4227)
!4246 = !DILocation(line: 3318, column: 18, scope: !4140)
!4247 = !DILocation(line: 3318, column: 10, scope: !4140)
!4248 = !DILocation(line: 3320, column: 19, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !526, line: 3320, column: 17)
!4250 = distinct !DILexicalBlock(scope: !4140, file: !526, line: 3318, column: 28)
!4251 = !DILocation(line: 3320, column: 18, scope: !4249)
!4252 = !DILocation(line: 3320, column: 34, scope: !4249)
!4253 = !DILocation(line: 3320, column: 32, scope: !4249)
!4254 = !DILocation(line: 3320, column: 52, scope: !4249)
!4255 = !DILocation(line: 3320, column: 55, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !4249, file: !526, discriminator: 1)
!4257 = !DILocation(line: 3320, column: 17, scope: !4256)
!4258 = !DILocation(line: 3321, column: 27, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4249, file: !526, line: 3320, column: 67)
!4260 = !DILocation(line: 3322, column: 32, scope: !4259)
!4261 = !DILocation(line: 3322, column: 17, scope: !4259)
!4262 = !DILocation(line: 3322, column: 30, scope: !4259)
!4263 = !DILocation(line: 3323, column: 33, scope: !4259)
!4264 = !DILocation(line: 3323, column: 17, scope: !4259)
!4265 = !DILocation(line: 3323, column: 31, scope: !4259)
!4266 = !DILocation(line: 3324, column: 13, scope: !4259)
!4267 = !DILocation(line: 3325, column: 13, scope: !4250)
!4268 = !DILocation(line: 3327, column: 19, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4250, file: !526, line: 3327, column: 17)
!4270 = !DILocation(line: 3327, column: 18, scope: !4269)
!4271 = !DILocation(line: 3327, column: 34, scope: !4269)
!4272 = !DILocation(line: 3327, column: 32, scope: !4269)
!4273 = !DILocation(line: 3327, column: 17, scope: !4250)
!4274 = !DILocation(line: 3328, column: 32, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4269, file: !526, line: 3327, column: 53)
!4276 = !DILocation(line: 3328, column: 17, scope: !4275)
!4277 = !DILocation(line: 3328, column: 30, scope: !4275)
!4278 = !DILocation(line: 3329, column: 33, scope: !4275)
!4279 = !DILocation(line: 3329, column: 17, scope: !4275)
!4280 = !DILocation(line: 3329, column: 31, scope: !4275)
!4281 = !DILocation(line: 3330, column: 13, scope: !4275)
!4282 = !DILocation(line: 3331, column: 13, scope: !4250)
!4283 = !DILocation(line: 3333, column: 13, scope: !4250)
!4284 = !DILocation(line: 3243, column: 7, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !4112, file: !526, discriminator: 2)
!4286 = !DILocation(line: 3336, column: 29, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3336, column: 11)
!4288 = !DILocation(line: 3336, column: 37, scope: !4287)
!4289 = !DILocation(line: 3336, column: 12, scope: !4287)
!4290 = !DILocation(line: 3336, column: 11, scope: !4112)
!4291 = !DILocation(line: 3337, column: 10, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4287, file: !526, line: 3336, column: 47)
!4293 = distinct !{!4293, !4291}
!4294 = !DILocation(line: 3337, column: 36, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4296, file: !526, discriminator: 1)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !526, line: 3337, column: 34)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !526, line: 3337, column: 19)
!4298 = distinct !DILexicalBlock(scope: !4292, file: !526, line: 3337, column: 13)
!4299 = !DILocation(line: 3337, column: 115, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4295, file: !526, discriminator: 2)
!4301 = !DILocation(line: 3337, column: 212, scope: !4295)
!4302 = !DILocation(line: 3338, column: 7, scope: !4292)
!4303 = !DILocation(line: 3339, column: 11, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3339, column: 11)
!4305 = !DILocation(line: 3339, column: 21, scope: !4304)
!4306 = !DILocation(line: 3339, column: 18, scope: !4304)
!4307 = !DILocation(line: 3339, column: 11, scope: !4112)
!4308 = !DILocation(line: 3340, column: 14, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !526, line: 3340, column: 14)
!4310 = distinct !DILexicalBlock(scope: !4304, file: !526, line: 3339, column: 29)
!4311 = !DILocation(line: 3340, column: 23, scope: !4309)
!4312 = !DILocation(line: 3340, column: 14, scope: !4310)
!4313 = !DILocation(line: 3345, column: 22, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4309, file: !526, line: 3340, column: 29)
!4315 = !DILocation(line: 3345, column: 20, scope: !4314)
!4316 = !DILocation(line: 3346, column: 10, scope: !4314)
!4317 = !DILocation(line: 3348, column: 7, scope: !4310)
!4318 = !DILocation(line: 3349, column: 7, scope: !4112)
!4319 = !DILocation(line: 3351, column: 7, scope: !4112)
!4320 = distinct !{!4320, !4319}
!4321 = !DILocation(line: 3351, column: 33, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4323, file: !526, discriminator: 1)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !526, line: 3351, column: 31)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !526, line: 3351, column: 16)
!4325 = distinct !DILexicalBlock(scope: !4112, file: !526, line: 3351, column: 10)
!4326 = !DILocation(line: 3351, column: 112, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4322, file: !526, discriminator: 2)
!4328 = !DILocation(line: 3351, column: 203, scope: !4322)
!4329 = !DILocation(line: 3352, column: 50, scope: !4112)
!4330 = !DILocation(line: 3352, column: 16, scope: !4112)
!4331 = !DILocation(line: 3352, column: 14, scope: !4112)
!4332 = !DILocation(line: 3353, column: 4, scope: !4112)
!4333 = !DILocation(line: 3355, column: 11, scope: !4081)
!4334 = !DILocation(line: 3355, column: 4, scope: !4081)
!4335 = distinct !DISubprogram(name: "HgfsConvertToUtf8FormC", scope: !526, file: !526, line: 3415, type: !4336, isLocal: false, isDefinition: true, scopeLine: 3417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!729, !519, !771}
!4338 = !DILocalVariable(name: "buffer", arg: 1, scope: !4335, file: !526, line: 3415, type: !519)
!4339 = !DILocation(line: 3415, column: 30, scope: !4335)
!4340 = !DILocalVariable(name: "bufferSize", arg: 2, scope: !4335, file: !526, line: 3416, type: !771)
!4341 = !DILocation(line: 3416, column: 31, scope: !4335)
!4342 = !DILocalVariable(name: "size", scope: !4335, file: !526, line: 3442, type: !771)
!4343 = !DILocation(line: 3442, column: 11, scope: !4335)
!4344 = !DILocation(line: 3449, column: 14, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4335, file: !526, line: 3449, column: 4)
!4346 = !DILocation(line: 3449, column: 9, scope: !4345)
!4347 = !DILocation(line: 3449, column: 19, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !4349, file: !526, discriminator: 1)
!4349 = distinct !DILexicalBlock(scope: !4345, file: !526, line: 3449, column: 4)
!4350 = !DILocation(line: 3449, column: 26, scope: !4348)
!4351 = !DILocation(line: 3449, column: 24, scope: !4348)
!4352 = !DILocation(line: 3449, column: 4, scope: !4348)
!4353 = !DILocation(line: 3450, column: 26, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !526, line: 3450, column: 11)
!4355 = distinct !DILexicalBlock(scope: !4349, file: !526, line: 3449, column: 47)
!4356 = !DILocation(line: 3450, column: 19, scope: !4354)
!4357 = !DILocation(line: 3450, column: 16, scope: !4354)
!4358 = !DILocation(line: 3450, column: 11, scope: !4355)
!4359 = !DILocation(line: 3451, column: 10, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4354, file: !526, line: 3450, column: 33)
!4361 = !DILocation(line: 3453, column: 4, scope: !4355)
!4362 = !DILocation(line: 3449, column: 43, scope: !4363)
!4363 = !DILexicalBlockFile(scope: !4349, file: !526, discriminator: 2)
!4364 = !DILocation(line: 3449, column: 4, scope: !4363)
!4365 = distinct !{!4365, !4366}
!4366 = !DILocation(line: 3449, column: 4, scope: !4335)
!4367 = !DILocation(line: 3455, column: 33, scope: !4335)
!4368 = !DILocation(line: 3455, column: 41, scope: !4335)
!4369 = !DILocation(line: 3455, column: 11, scope: !4335)
!4370 = !DILocation(line: 3455, column: 4, scope: !4335)
!4371 = distinct !DISubprogram(name: "HgfsPlatformGetDirEntry", scope: !526, file: !526, line: 3479, type: !4372, isLocal: false, isDefinition: true, scopeLine: 3484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!609, !933, !863, !510, !729, !945}
!4374 = !DILocalVariable(name: "search", arg: 1, scope: !4371, file: !526, line: 3479, type: !933)
!4375 = !DILocation(line: 3479, column: 37, scope: !4371)
!4376 = !DILocalVariable(name: "session", arg: 2, scope: !4371, file: !526, line: 3480, type: !863)
!4377 = !DILocation(line: 3480, column: 42, scope: !4371)
!4378 = !DILocalVariable(name: "index", arg: 3, scope: !4371, file: !526, line: 3481, type: !510)
!4379 = !DILocation(line: 3481, column: 32, scope: !4371)
!4380 = !DILocalVariable(name: "remove", arg: 4, scope: !4371, file: !526, line: 3482, type: !729)
!4381 = !DILocation(line: 3482, column: 30, scope: !4371)
!4382 = !DILocalVariable(name: "dirEntry", arg: 5, scope: !4371, file: !526, line: 3483, type: !945)
!4383 = !DILocation(line: 3483, column: 49, scope: !4371)
!4384 = !DILocalVariable(name: "dent", scope: !4371, file: !526, line: 3485, type: !524)
!4385 = !DILocation(line: 3485, column: 20, scope: !4371)
!4386 = !DILocalVariable(name: "status", scope: !4371, file: !526, line: 3486, type: !609)
!4387 = !DILocation(line: 3486, column: 23, scope: !4371)
!4388 = !DILocation(line: 3488, column: 8, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4371, file: !526, line: 3488, column: 8)
!4390 = !DILocation(line: 3488, column: 17, scope: !4389)
!4391 = !DILocation(line: 3488, column: 25, scope: !4389)
!4392 = !DILocation(line: 3488, column: 14, scope: !4389)
!4393 = !DILocation(line: 3488, column: 8, scope: !4371)
!4394 = !DILocation(line: 3489, column: 7, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4389, file: !526, line: 3488, column: 35)
!4396 = !DILocation(line: 3493, column: 8, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4371, file: !526, line: 3493, column: 8)
!4398 = !DILocation(line: 3493, column: 8, scope: !4371)
!4399 = !DILocation(line: 3499, column: 28, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4397, file: !526, line: 3493, column: 16)
!4401 = !DILocation(line: 3499, column: 14, scope: !4400)
!4402 = !DILocation(line: 3499, column: 22, scope: !4400)
!4403 = !DILocation(line: 3499, column: 12, scope: !4400)
!4404 = !DILocation(line: 3501, column: 11, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4400, file: !526, line: 3501, column: 11)
!4406 = !DILocation(line: 3501, column: 19, scope: !4405)
!4407 = !DILocation(line: 3501, column: 27, scope: !4405)
!4408 = !DILocation(line: 3501, column: 36, scope: !4405)
!4409 = !DILocation(line: 3501, column: 17, scope: !4405)
!4410 = !DILocation(line: 3501, column: 11, scope: !4400)
!4411 = !DILocation(line: 3503, column: 33, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4405, file: !526, line: 3501, column: 41)
!4413 = !DILocation(line: 3503, column: 19, scope: !4412)
!4414 = !DILocation(line: 3503, column: 27, scope: !4412)
!4415 = !DILocation(line: 3503, column: 10, scope: !4412)
!4416 = !DILocation(line: 3503, column: 56, scope: !4412)
!4417 = !DILocation(line: 3503, column: 62, scope: !4412)
!4418 = !DILocation(line: 3503, column: 42, scope: !4412)
!4419 = !DILocation(line: 3503, column: 50, scope: !4412)
!4420 = !DILocation(line: 3504, column: 19, scope: !4412)
!4421 = !DILocation(line: 3504, column: 27, scope: !4412)
!4422 = !DILocation(line: 3504, column: 39, scope: !4412)
!4423 = !DILocation(line: 3504, column: 45, scope: !4412)
!4424 = !DILocation(line: 3504, column: 36, scope: !4412)
!4425 = !DILocation(line: 3504, column: 18, scope: !4412)
!4426 = !DILocation(line: 3504, column: 51, scope: !4412)
!4427 = !DILocation(line: 3505, column: 7, scope: !4412)
!4428 = !DILocation(line: 3508, column: 7, scope: !4400)
!4429 = !DILocation(line: 3508, column: 15, scope: !4400)
!4430 = !DILocation(line: 3508, column: 23, scope: !4400)
!4431 = !DILocation(line: 3509, column: 4, scope: !4400)
!4432 = !DILocalVariable(name: "originalDent", scope: !4433, file: !526, line: 3510, type: !524)
!4433 = distinct !DILexicalBlock(scope: !4397, file: !526, line: 3509, column: 11)
!4434 = !DILocation(line: 3510, column: 23, scope: !4433)
!4435 = !DILocalVariable(name: "nameLen", scope: !4433, file: !526, line: 3511, type: !771)
!4436 = !DILocation(line: 3511, column: 14, scope: !4433)
!4437 = !DILocation(line: 3513, column: 36, scope: !4433)
!4438 = !DILocation(line: 3513, column: 22, scope: !4433)
!4439 = !DILocation(line: 3513, column: 30, scope: !4433)
!4440 = !DILocation(line: 3513, column: 20, scope: !4433)
!4441 = !DILocation(line: 3516, column: 24, scope: !4433)
!4442 = !DILocation(line: 3516, column: 38, scope: !4433)
!4443 = !DILocation(line: 3516, column: 17, scope: !4433)
!4444 = !DILocation(line: 3516, column: 15, scope: !4433)
!4445 = !DILocation(line: 3523, column: 21, scope: !4433)
!4446 = !DILocation(line: 3523, column: 35, scope: !4433)
!4447 = !DILocation(line: 3523, column: 14, scope: !4433)
!4448 = !DILocation(line: 3523, column: 12, scope: !4433)
!4449 = !DILocation(line: 3524, column: 11, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4433, file: !526, line: 3524, column: 11)
!4451 = !DILocation(line: 3524, column: 16, scope: !4450)
!4452 = !DILocation(line: 3524, column: 11, scope: !4433)
!4453 = !DILocation(line: 3525, column: 17, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4450, file: !526, line: 3524, column: 24)
!4455 = !DILocation(line: 3526, column: 10, scope: !4454)
!4456 = !DILocation(line: 3534, column: 24, scope: !4433)
!4457 = !DILocation(line: 3534, column: 38, scope: !4433)
!4458 = !DILocation(line: 3534, column: 7, scope: !4433)
!4459 = !DILocation(line: 3534, column: 13, scope: !4433)
!4460 = !DILocation(line: 3534, column: 22, scope: !4433)
!4461 = !DILocation(line: 3535, column: 14, scope: !4433)
!4462 = !DILocation(line: 3535, column: 20, scope: !4433)
!4463 = !DILocation(line: 3535, column: 7, scope: !4433)
!4464 = !DILocation(line: 3535, column: 28, scope: !4433)
!4465 = !DILocation(line: 3535, column: 42, scope: !4433)
!4466 = !DILocation(line: 3535, column: 50, scope: !4433)
!4467 = !DILocation(line: 3536, column: 20, scope: !4433)
!4468 = !DILocation(line: 3536, column: 7, scope: !4433)
!4469 = !DILocation(line: 3536, column: 13, scope: !4433)
!4470 = !DILocation(line: 3536, column: 29, scope: !4433)
!4471 = !DILocation(line: 3493, column: 8, scope: !4472)
!4472 = !DILexicalBlockFile(scope: !4397, file: !526, discriminator: 1)
!4473 = !DILocation(line: 3540, column: 8, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4371, file: !526, line: 3540, column: 8)
!4475 = !DILocation(line: 3540, column: 15, scope: !4474)
!4476 = !DILocation(line: 3540, column: 8, scope: !4371)
!4477 = !DILocation(line: 3541, column: 19, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4474, file: !526, line: 3540, column: 21)
!4479 = !DILocation(line: 3541, column: 8, scope: !4478)
!4480 = !DILocation(line: 3541, column: 17, scope: !4478)
!4481 = !DILocation(line: 3542, column: 4, scope: !4478)
!4482 = !DILocation(line: 3543, column: 11, scope: !4371)
!4483 = !DILocation(line: 3543, column: 4, scope: !4371)
!4484 = distinct !DISubprogram(name: "HgfsPlatformSetDirEntry", scope: !526, file: !526, line: 3564, type: !4485, isLocal: false, isDefinition: true, scopeLine: 3572, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!609, !933, !2002, !863, !946, !729, !630, !1735, !778}
!4487 = !DILocalVariable(name: "search", arg: 1, scope: !4484, file: !526, line: 3564, type: !933)
!4488 = !DILocation(line: 3564, column: 37, scope: !4484)
!4489 = !DILocalVariable(name: "configOptions", arg: 2, scope: !4484, file: !526, line: 3565, type: !2002)
!4490 = !DILocation(line: 3565, column: 42, scope: !4484)
!4491 = !DILocalVariable(name: "session", arg: 3, scope: !4484, file: !526, line: 3566, type: !863)
!4492 = !DILocation(line: 3566, column: 42, scope: !4484)
!4493 = !DILocalVariable(name: "dirEntry", arg: 4, scope: !4484, file: !526, line: 3567, type: !946)
!4494 = !DILocation(line: 3567, column: 48, scope: !4484)
!4495 = !DILocalVariable(name: "getAttr", arg: 5, scope: !4484, file: !526, line: 3568, type: !729)
!4496 = !DILocation(line: 3568, column: 30, scope: !4484)
!4497 = !DILocalVariable(name: "entryAttr", arg: 6, scope: !4484, file: !526, line: 3569, type: !630)
!4498 = !DILocation(line: 3569, column: 43, scope: !4484)
!4499 = !DILocalVariable(name: "entryName", arg: 7, scope: !4484, file: !526, line: 3570, type: !1735)
!4500 = !DILocation(line: 3570, column: 32, scope: !4484)
!4501 = !DILocalVariable(name: "entryNameLength", arg: 8, scope: !4484, file: !526, line: 3571, type: !778)
!4502 = !DILocation(line: 3571, column: 33, scope: !4484)
!4503 = !DILocalVariable(name: "status", scope: !4484, file: !526, line: 3573, type: !609)
!4504 = !DILocation(line: 3573, column: 23, scope: !4484)
!4505 = !DILocalVariable(name: "length", scope: !4484, file: !526, line: 3574, type: !514)
!4506 = !DILocation(line: 3574, column: 17, scope: !4484)
!4507 = !DILocalVariable(name: "fullName", scope: !4484, file: !526, line: 3575, type: !519)
!4508 = !DILocation(line: 3575, column: 10, scope: !4484)
!4509 = !DILocalVariable(name: "sharePath", scope: !4484, file: !526, line: 3576, type: !519)
!4510 = !DILocation(line: 3576, column: 10, scope: !4484)
!4511 = !DILocalVariable(name: "sharePathLen", scope: !4484, file: !526, line: 3577, type: !771)
!4512 = !DILocation(line: 3577, column: 11, scope: !4484)
!4513 = !DILocalVariable(name: "fullNameLen", scope: !4484, file: !526, line: 3578, type: !771)
!4514 = !DILocation(line: 3578, column: 11, scope: !4484)
!4515 = !DILocalVariable(name: "serverLock", scope: !4484, file: !526, line: 3579, type: !759)
!4516 = !DILocation(line: 3579, column: 17, scope: !4484)
!4517 = !DILocalVariable(name: "fileDesc", scope: !4484, file: !526, line: 3580, type: !827)
!4518 = !DILocation(line: 3580, column: 13, scope: !4484)
!4519 = !DILocalVariable(name: "unescapeName", scope: !4484, file: !526, line: 3581, type: !729)
!4520 = !DILocation(line: 3581, column: 9, scope: !4484)
!4521 = !DILocation(line: 3583, column: 20, scope: !4484)
!4522 = !DILocation(line: 3583, column: 30, scope: !4484)
!4523 = !DILocation(line: 3583, column: 13, scope: !4484)
!4524 = !DILocation(line: 3583, column: 11, scope: !4484)
!4525 = !DILocation(line: 3586, column: 12, scope: !4484)
!4526 = !DILocation(line: 3586, column: 20, scope: !4484)
!4527 = !DILocation(line: 3586, column: 4, scope: !4484)
!4528 = !DILocation(line: 3593, column: 21, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4484, file: !526, line: 3586, column: 26)
!4530 = !DILocation(line: 3593, column: 29, scope: !4529)
!4531 = !DILocation(line: 3593, column: 40, scope: !4529)
!4532 = !DILocation(line: 3593, column: 46, scope: !4529)
!4533 = !DILocation(line: 3593, column: 44, scope: !4529)
!4534 = !DILocation(line: 3593, column: 19, scope: !4529)
!4535 = !DILocation(line: 3594, column: 33, scope: !4529)
!4536 = !DILocation(line: 3594, column: 45, scope: !4529)
!4537 = !DILocation(line: 3594, column: 26, scope: !4529)
!4538 = !DILocation(line: 3594, column: 16, scope: !4529)
!4539 = !DILocation(line: 3595, column: 11, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4529, file: !526, line: 3595, column: 11)
!4541 = !DILocation(line: 3595, column: 11, scope: !4529)
!4542 = !DILocation(line: 3596, column: 17, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4540, file: !526, line: 3595, column: 21)
!4544 = !DILocation(line: 3596, column: 27, scope: !4543)
!4545 = !DILocation(line: 3596, column: 35, scope: !4543)
!4546 = !DILocation(line: 3596, column: 44, scope: !4543)
!4547 = !DILocation(line: 3596, column: 52, scope: !4543)
!4548 = !DILocation(line: 3596, column: 10, scope: !4543)
!4549 = !DILocation(line: 3597, column: 19, scope: !4543)
!4550 = !DILocation(line: 3597, column: 27, scope: !4543)
!4551 = !DILocation(line: 3597, column: 10, scope: !4543)
!4552 = !DILocation(line: 3597, column: 39, scope: !4543)
!4553 = !DILocation(line: 3598, column: 27, scope: !4543)
!4554 = !DILocation(line: 3598, column: 35, scope: !4543)
!4555 = !DILocation(line: 3598, column: 46, scope: !4543)
!4556 = !DILocation(line: 3598, column: 18, scope: !4543)
!4557 = !DILocation(line: 3598, column: 52, scope: !4543)
!4558 = !DILocation(line: 3598, column: 62, scope: !4543)
!4559 = !DILocation(line: 3598, column: 10, scope: !4543)
!4560 = !DILocation(line: 3598, column: 70, scope: !4543)
!4561 = !DILocation(line: 3598, column: 77, scope: !4543)
!4562 = !DILocation(line: 3600, column: 10, scope: !4543)
!4563 = distinct !{!4563, !4562}
!4564 = !DILocation(line: 3600, column: 36, scope: !4565)
!4565 = !DILexicalBlockFile(scope: !4566, file: !526, discriminator: 1)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !526, line: 3600, column: 34)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !526, line: 3600, column: 19)
!4568 = distinct !DILexicalBlock(scope: !4543, file: !526, line: 3600, column: 13)
!4569 = !DILocation(line: 3600, column: 199, scope: !4565)
!4570 = !DILocation(line: 3600, column: 115, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4565, file: !526, discriminator: 2)
!4572 = !DILocation(line: 3600, column: 212, scope: !4565)
!4573 = !DILocation(line: 3603, column: 14, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4543, file: !526, line: 3603, column: 14)
!4575 = !DILocation(line: 3603, column: 14, scope: !4543)
!4576 = !DILocation(line: 3619, column: 39, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !526, line: 3619, column: 17)
!4578 = distinct !DILexicalBlock(scope: !4574, file: !526, line: 3603, column: 23)
!4579 = !DILocation(line: 3619, column: 49, scope: !4577)
!4580 = !DILocation(line: 3619, column: 17, scope: !4577)
!4581 = !DILocation(line: 3619, column: 17, scope: !4578)
!4582 = !DILocation(line: 3620, column: 16, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4577, file: !526, line: 3619, column: 83)
!4584 = distinct !{!4584, !4582}
!4585 = !DILocation(line: 3620, column: 42, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !4587, file: !526, discriminator: 1)
!4587 = distinct !DILexicalBlock(scope: !4588, file: !526, line: 3620, column: 40)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !526, line: 3620, column: 25)
!4589 = distinct !DILexicalBlock(scope: !4583, file: !526, line: 3620, column: 19)
!4590 = !DILocation(line: 3620, column: 121, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4586, file: !526, discriminator: 2)
!4592 = !DILocation(line: 3620, column: 254, scope: !4586)
!4593 = !DILocation(line: 3622, column: 51, scope: !4583)
!4594 = !DILocation(line: 3622, column: 61, scope: !4583)
!4595 = !DILocation(line: 3622, column: 70, scope: !4583)
!4596 = !DILocation(line: 3622, column: 25, scope: !4583)
!4597 = !DILocation(line: 3622, column: 23, scope: !4583)
!4598 = !DILocation(line: 3623, column: 13, scope: !4583)
!4599 = !DILocation(line: 3624, column: 53, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4577, file: !526, line: 3623, column: 20)
!4601 = !DILocation(line: 3624, column: 63, scope: !4600)
!4602 = !DILocation(line: 3625, column: 53, scope: !4600)
!4603 = !DILocation(line: 3625, column: 61, scope: !4600)
!4604 = !DILocation(line: 3626, column: 53, scope: !4600)
!4605 = !DILocation(line: 3624, column: 25, scope: !4600)
!4606 = !DILocation(line: 3624, column: 23, scope: !4600)
!4607 = !DILocation(line: 3629, column: 22, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4578, file: !526, line: 3629, column: 17)
!4609 = !DILocation(line: 3629, column: 19, scope: !4608)
!4610 = !DILocation(line: 3629, column: 17, scope: !4578)
!4611 = !DILocalVariable(name: "savedOp", scope: !4612, file: !526, line: 3630, type: !635)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !526, line: 3629, column: 30)
!4613 = !DILocation(line: 3630, column: 23, scope: !4612)
!4614 = !DILocation(line: 3630, column: 33, scope: !4612)
!4615 = !DILocation(line: 3630, column: 44, scope: !4612)
!4616 = !DILocation(line: 3631, column: 16, scope: !4612)
!4617 = distinct !{!4617, !4616}
!4618 = !DILocation(line: 3631, column: 42, scope: !4619)
!4619 = !DILexicalBlockFile(scope: !4620, file: !526, discriminator: 1)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !526, line: 3631, column: 40)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !526, line: 3631, column: 25)
!4622 = distinct !DILexicalBlock(scope: !4612, file: !526, line: 3631, column: 19)
!4623 = !DILocation(line: 3631, column: 204, scope: !4619)
!4624 = !DILocation(line: 3631, column: 214, scope: !4619)
!4625 = !DILocation(line: 3631, column: 121, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4619, file: !526, discriminator: 2)
!4627 = !DILocation(line: 3631, column: 225, scope: !4619)
!4628 = !DILocation(line: 3632, column: 23, scope: !4612)
!4629 = !DILocation(line: 3632, column: 16, scope: !4612)
!4630 = !DILocation(line: 3633, column: 41, scope: !4612)
!4631 = !DILocation(line: 3633, column: 16, scope: !4612)
!4632 = !DILocation(line: 3633, column: 27, scope: !4612)
!4633 = !DILocation(line: 3633, column: 39, scope: !4612)
!4634 = !DILocation(line: 3634, column: 16, scope: !4612)
!4635 = !DILocation(line: 3634, column: 27, scope: !4612)
!4636 = !DILocation(line: 3634, column: 32, scope: !4612)
!4637 = !DILocation(line: 3635, column: 16, scope: !4612)
!4638 = !DILocation(line: 3635, column: 27, scope: !4612)
!4639 = !DILocation(line: 3635, column: 32, scope: !4612)
!4640 = !DILocation(line: 3636, column: 23, scope: !4612)
!4641 = !DILocation(line: 3637, column: 13, scope: !4612)
!4642 = !DILocation(line: 3638, column: 10, scope: !4578)
!4643 = !DILocation(line: 3640, column: 15, scope: !4543)
!4644 = !DILocation(line: 3640, column: 10, scope: !4543)
!4645 = !DILocation(line: 3641, column: 7, scope: !4543)
!4646 = !DILocation(line: 3642, column: 10, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4540, file: !526, line: 3641, column: 14)
!4648 = distinct !{!4648, !4646}
!4649 = !DILocation(line: 3642, column: 36, scope: !4650)
!4650 = !DILexicalBlockFile(scope: !4651, file: !526, discriminator: 1)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !526, line: 3642, column: 34)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !526, line: 3642, column: 19)
!4653 = distinct !DILexicalBlock(scope: !4647, file: !526, line: 3642, column: 13)
!4654 = !DILocation(line: 3642, column: 218, scope: !4650)
!4655 = !DILocation(line: 3642, column: 226, scope: !4650)
!4656 = !DILocation(line: 3642, column: 235, scope: !4650)
!4657 = !DILocation(line: 3642, column: 245, scope: !4650)
!4658 = !DILocation(line: 3642, column: 115, scope: !4659)
!4659 = !DILexicalBlockFile(scope: !4650, file: !526, discriminator: 2)
!4660 = !DILocation(line: 3642, column: 256, scope: !4650)
!4661 = !DILocation(line: 3644, column: 17, scope: !4647)
!4662 = !DILocation(line: 3646, column: 7, scope: !4529)
!4663 = !DILocation(line: 3655, column: 20, scope: !4529)
!4664 = !DILocation(line: 3656, column: 11, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4529, file: !526, line: 3656, column: 11)
!4666 = !DILocation(line: 3656, column: 11, scope: !4529)
!4667 = !DILocation(line: 3663, column: 21, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !526, line: 3663, column: 14)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !526, line: 3656, column: 20)
!4670 = !DILocation(line: 3663, column: 31, scope: !4668)
!4671 = !DILocation(line: 3663, column: 14, scope: !4668)
!4672 = !DILocation(line: 3663, column: 44, scope: !4668)
!4673 = !DILocation(line: 3663, column: 49, scope: !4668)
!4674 = !DILocation(line: 3664, column: 23, scope: !4668)
!4675 = !DILocation(line: 3664, column: 33, scope: !4668)
!4676 = !DILocation(line: 3664, column: 16, scope: !4668)
!4677 = !DILocation(line: 3664, column: 47, scope: !4668)
!4678 = !DILocation(line: 3663, column: 14, scope: !4679)
!4679 = !DILexicalBlockFile(scope: !4669, file: !526, discriminator: 1)
!4680 = !DILocation(line: 3665, column: 13, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4668, file: !526, line: 3664, column: 53)
!4682 = distinct !{!4682, !4680}
!4683 = !DILocation(line: 3665, column: 39, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4685, file: !526, discriminator: 1)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !526, line: 3665, column: 37)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !526, line: 3665, column: 22)
!4687 = distinct !DILexicalBlock(scope: !4681, file: !526, line: 3665, column: 16)
!4688 = !DILocation(line: 3665, column: 213, scope: !4684)
!4689 = !DILocation(line: 3665, column: 223, scope: !4684)
!4690 = !DILocation(line: 3665, column: 118, scope: !4691)
!4691 = !DILexicalBlockFile(scope: !4684, file: !526, discriminator: 2)
!4692 = !DILocation(line: 3665, column: 234, scope: !4684)
!4693 = !DILocation(line: 3667, column: 44, scope: !4681)
!4694 = !DILocation(line: 3667, column: 13, scope: !4681)
!4695 = !DILocation(line: 3668, column: 10, scope: !4681)
!4696 = !DILocalVariable(name: "nameStatus", scope: !4697, file: !526, line: 3669, type: !611)
!4697 = distinct !DILexicalBlock(scope: !4668, file: !526, line: 3668, column: 17)
!4698 = !DILocation(line: 3669, column: 28, scope: !4697)
!4699 = !DILocation(line: 3673, column: 46, scope: !4697)
!4700 = !DILocation(line: 3673, column: 56, scope: !4697)
!4701 = !DILocation(line: 3673, column: 64, scope: !4697)
!4702 = !DILocation(line: 3673, column: 16, scope: !4697)
!4703 = !DILocation(line: 3672, column: 24, scope: !4697)
!4704 = !DILocation(line: 3677, column: 17, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4697, file: !526, line: 3677, column: 17)
!4706 = !DILocation(line: 3677, column: 28, scope: !4705)
!4707 = !DILocation(line: 3677, column: 17, scope: !4697)
!4708 = !DILocation(line: 3688, column: 53, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !526, line: 3677, column: 58)
!4710 = !DILocation(line: 3688, column: 64, scope: !4709)
!4711 = !DILocation(line: 3689, column: 55, scope: !4709)
!4712 = !DILocation(line: 3689, column: 65, scope: !4709)
!4713 = !DILocation(line: 3689, column: 73, scope: !4709)
!4714 = !DILocation(line: 3688, column: 25, scope: !4709)
!4715 = !DILocation(line: 3688, column: 23, scope: !4709)
!4716 = !DILocation(line: 3693, column: 25, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4709, file: !526, line: 3693, column: 20)
!4718 = !DILocation(line: 3693, column: 22, scope: !4717)
!4719 = !DILocation(line: 3693, column: 20, scope: !4709)
!4720 = !DILocation(line: 3698, column: 19, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4717, file: !526, line: 3693, column: 33)
!4722 = distinct !{!4722, !4720}
!4723 = !DILocation(line: 3698, column: 45, scope: !4724)
!4724 = !DILexicalBlockFile(scope: !4725, file: !526, discriminator: 1)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !526, line: 3698, column: 43)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !526, line: 3698, column: 28)
!4727 = distinct !DILexicalBlock(scope: !4721, file: !526, line: 3698, column: 22)
!4728 = !DILocation(line: 3698, column: 124, scope: !4729)
!4729 = !DILexicalBlockFile(scope: !4724, file: !526, discriminator: 2)
!4730 = !DILocation(line: 3698, column: 202, scope: !4724)
!4731 = !DILocation(line: 3699, column: 26, scope: !4721)
!4732 = !DILocation(line: 3700, column: 16, scope: !4721)
!4733 = !DILocation(line: 3701, column: 13, scope: !4709)
!4734 = !DILocation(line: 3702, column: 16, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4705, file: !526, line: 3701, column: 20)
!4736 = distinct !{!4736, !4734}
!4737 = !DILocation(line: 3702, column: 42, scope: !4738)
!4738 = !DILexicalBlockFile(scope: !4739, file: !526, discriminator: 1)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !526, line: 3702, column: 40)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !526, line: 3702, column: 25)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !526, line: 3702, column: 19)
!4742 = !DILocation(line: 3702, column: 121, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !4738, file: !526, discriminator: 2)
!4744 = !DILocation(line: 3702, column: 218, scope: !4738)
!4745 = !DILocation(line: 3703, column: 59, scope: !4735)
!4746 = !DILocation(line: 3703, column: 25, scope: !4735)
!4747 = !DILocation(line: 3703, column: 23, scope: !4735)
!4748 = !DILocation(line: 3706, column: 7, scope: !4669)
!4749 = !DILocation(line: 3707, column: 7, scope: !4529)
!4750 = !DILocation(line: 3707, column: 7, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !4529, file: !526, discriminator: 1)
!4752 = !DILocation(line: 3710, column: 7, scope: !4529)
!4753 = !DILocation(line: 3717, column: 13, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4484, file: !526, line: 3717, column: 8)
!4755 = !DILocation(line: 3717, column: 10, scope: !4754)
!4756 = !DILocation(line: 3717, column: 8, scope: !4484)
!4757 = !DILocation(line: 3718, column: 37, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !526, line: 3717, column: 21)
!4759 = !DILocation(line: 3718, column: 47, scope: !4758)
!4760 = !DILocation(line: 3718, column: 36, scope: !4758)
!4761 = !DILocation(line: 3718, column: 20, scope: !4758)
!4762 = !DILocation(line: 3718, column: 8, scope: !4758)
!4763 = !DILocation(line: 3718, column: 18, scope: !4758)
!4764 = !DILocation(line: 3719, column: 11, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4758, file: !526, line: 3719, column: 11)
!4766 = !DILocation(line: 3719, column: 11, scope: !4758)
!4767 = !DILocation(line: 3720, column: 46, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !526, line: 3719, column: 25)
!4769 = !DILocation(line: 3720, column: 45, scope: !4768)
!4770 = !DILocation(line: 3720, column: 57, scope: !4768)
!4771 = !DILocation(line: 3720, column: 64, scope: !4768)
!4772 = !DILocation(line: 3720, column: 29, scope: !4768)
!4773 = !DILocation(line: 3720, column: 11, scope: !4768)
!4774 = !DILocation(line: 3720, column: 27, scope: !4768)
!4775 = !DILocation(line: 3721, column: 7, scope: !4768)
!4776 = !DILocation(line: 3722, column: 29, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4765, file: !526, line: 3721, column: 14)
!4778 = !DILocation(line: 3722, column: 11, scope: !4777)
!4779 = !DILocation(line: 3722, column: 27, scope: !4777)
!4780 = !DILocation(line: 3724, column: 7, scope: !4758)
!4781 = distinct !{!4781, !4780}
!4782 = !DILocation(line: 3724, column: 33, scope: !4783)
!4783 = !DILexicalBlockFile(scope: !4784, file: !526, discriminator: 1)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !526, line: 3724, column: 31)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !526, line: 3724, column: 16)
!4786 = distinct !DILexicalBlock(scope: !4758, file: !526, line: 3724, column: 10)
!4787 = !DILocation(line: 3724, column: 205, scope: !4783)
!4788 = !DILocation(line: 3724, column: 204, scope: !4783)
!4789 = !DILocation(line: 3724, column: 217, scope: !4783)
!4790 = !DILocation(line: 3724, column: 216, scope: !4783)
!4791 = !DILocation(line: 3724, column: 112, scope: !4792)
!4792 = !DILexicalBlockFile(scope: !4783, file: !526, discriminator: 2)
!4793 = !DILocation(line: 3724, column: 237, scope: !4783)
!4794 = !DILocation(line: 3726, column: 4, scope: !4758)
!4795 = !DILocation(line: 3727, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4754, file: !526, line: 3726, column: 11)
!4797 = !DILocation(line: 3727, column: 18, scope: !4796)
!4798 = !DILocation(line: 3728, column: 8, scope: !4796)
!4799 = !DILocation(line: 3728, column: 24, scope: !4796)
!4800 = !DILocation(line: 3729, column: 7, scope: !4796)
!4801 = distinct !{!4801, !4800}
!4802 = !DILocation(line: 3729, column: 33, scope: !4803)
!4803 = !DILexicalBlockFile(scope: !4804, file: !526, discriminator: 1)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !526, line: 3729, column: 31)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !526, line: 3729, column: 16)
!4806 = distinct !DILexicalBlock(scope: !4796, file: !526, line: 3729, column: 10)
!4807 = !DILocation(line: 3729, column: 197, scope: !4803)
!4808 = !DILocation(line: 3729, column: 112, scope: !4809)
!4809 = !DILexicalBlockFile(scope: !4803, file: !526, discriminator: 2)
!4810 = !DILocation(line: 3729, column: 208, scope: !4803)
!4811 = !DILocation(line: 3732, column: 11, scope: !4484)
!4812 = !DILocation(line: 3732, column: 4, scope: !4484)
!4813 = distinct !DISubprogram(name: "HgfsPlatformScandir", scope: !526, file: !526, line: 3762, type: !4814, isLocal: false, isDefinition: true, scopeLine: 3767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!609, !522, !771, !729, !4816, !1268}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64, align: 64)
!4817 = !DILocalVariable(name: "baseDir", arg: 1, scope: !4813, file: !526, line: 3762, type: !522)
!4818 = !DILocation(line: 3762, column: 33, scope: !4813)
!4819 = !DILocalVariable(name: "baseDirLen", arg: 2, scope: !4813, file: !526, line: 3763, type: !771)
!4820 = !DILocation(line: 3763, column: 28, scope: !4813)
!4821 = !DILocalVariable(name: "followSymlinks", arg: 3, scope: !4813, file: !526, line: 3764, type: !729)
!4822 = !DILocation(line: 3764, column: 26, scope: !4813)
!4823 = !DILocalVariable(name: "dents", arg: 4, scope: !4813, file: !526, line: 3765, type: !4816)
!4824 = !DILocation(line: 3765, column: 46, scope: !4813)
!4825 = !DILocalVariable(name: "numDents", arg: 5, scope: !4813, file: !526, line: 3766, type: !1268)
!4826 = !DILocation(line: 3766, column: 26, scope: !4813)
!4827 = !DILocalVariable(name: "fd", scope: !4813, file: !526, line: 3771, type: !550)
!4828 = !DILocation(line: 3771, column: 8, scope: !4813)
!4829 = !DILocalVariable(name: "openFlags", scope: !4813, file: !526, line: 3772, type: !550)
!4830 = !DILocation(line: 3772, column: 8, scope: !4813)
!4831 = !DILocalVariable(name: "result", scope: !4813, file: !526, line: 3774, type: !550)
!4832 = !DILocation(line: 3774, column: 8, scope: !4813)
!4833 = !DILocalVariable(name: "myDents", scope: !4813, file: !526, line: 3775, type: !4834)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!4835 = !DILocation(line: 3775, column: 21, scope: !4813)
!4836 = !DILocalVariable(name: "myNumDents", scope: !4813, file: !526, line: 3776, type: !550)
!4837 = !DILocation(line: 3776, column: 8, scope: !4813)
!4838 = !DILocalVariable(name: "status", scope: !4813, file: !526, line: 3777, type: !609)
!4839 = !DILocation(line: 3777, column: 23, scope: !4813)
!4840 = !DILocalVariable(name: "buffer", scope: !4813, file: !526, line: 3783, type: !4841)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 65536, align: 8, elements: !4842)
!4842 = !{!4843}
!4843 = !DISubrange(count: 8192)
!4844 = !DILocation(line: 3783, column: 9, scope: !4813)
!4845 = !DILocation(line: 3814, column: 8, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3814, column: 8)
!4847 = !DILocation(line: 3814, column: 8, scope: !4813)
!4848 = !DILocation(line: 3815, column: 17, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4846, file: !526, line: 3814, column: 24)
!4850 = !DILocation(line: 3816, column: 4, scope: !4849)
!4851 = !DILocation(line: 3819, column: 24, scope: !4813)
!4852 = !DILocation(line: 3819, column: 33, scope: !4813)
!4853 = !DILocation(line: 3819, column: 13, scope: !4813)
!4854 = !DILocation(line: 3819, column: 11, scope: !4813)
!4855 = !DILocation(line: 3820, column: 8, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3820, column: 8)
!4857 = !DILocation(line: 3820, column: 15, scope: !4856)
!4858 = !DILocation(line: 3820, column: 8, scope: !4813)
!4859 = !DILocation(line: 3821, column: 17, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4856, file: !526, line: 3820, column: 20)
!4861 = !DILocation(line: 3821, column: 16, scope: !4860)
!4862 = !DILocation(line: 3821, column: 14, scope: !4860)
!4863 = !DILocation(line: 3822, column: 7, scope: !4860)
!4864 = distinct !{!4864, !4863}
!4865 = !DILocation(line: 3822, column: 33, scope: !4866)
!4866 = !DILexicalBlockFile(scope: !4867, file: !526, discriminator: 1)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !526, line: 3822, column: 31)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !526, line: 3822, column: 16)
!4869 = distinct !DILexicalBlock(scope: !4860, file: !526, line: 3822, column: 10)
!4870 = !DILocation(line: 3822, column: 198, scope: !4866)
!4871 = !DILocation(line: 3822, column: 223, scope: !4866)
!4872 = !DILocation(line: 3822, column: 206, scope: !4873)
!4873 = !DILexicalBlockFile(scope: !4866, file: !526, discriminator: 2)
!4874 = !DILocation(line: 3822, column: 112, scope: !4875)
!4875 = !DILexicalBlockFile(scope: !4866, file: !526, discriminator: 3)
!4876 = !DILocation(line: 3822, column: 235, scope: !4866)
!4877 = !DILocation(line: 3824, column: 7, scope: !4860)
!4878 = !DILocation(line: 3826, column: 9, scope: !4813)
!4879 = !DILocation(line: 3826, column: 7, scope: !4813)
!4880 = !DILocation(line: 3833, column: 4, scope: !4813)
!4881 = !DILocation(line: 3833, column: 36, scope: !4882)
!4882 = !DILexicalBlockFile(scope: !4813, file: !526, discriminator: 1)
!4883 = !DILocation(line: 3833, column: 48, scope: !4882)
!4884 = !DILocation(line: 3833, column: 40, scope: !4882)
!4885 = !DILocation(line: 3833, column: 21, scope: !4882)
!4886 = !DILocation(line: 3833, column: 19, scope: !4882)
!4887 = !DILocation(line: 3833, column: 72, scope: !4882)
!4888 = !DILocation(line: 3833, column: 4, scope: !4882)
!4889 = !DILocalVariable(name: "offset", scope: !4890, file: !526, line: 3834, type: !771)
!4890 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3833, column: 77)
!4891 = !DILocation(line: 3834, column: 14, scope: !4890)
!4892 = !DILocation(line: 3835, column: 7, scope: !4890)
!4893 = !DILocation(line: 3835, column: 14, scope: !4894)
!4894 = !DILexicalBlockFile(scope: !4890, file: !526, discriminator: 1)
!4895 = !DILocation(line: 3835, column: 23, scope: !4894)
!4896 = !DILocation(line: 3835, column: 21, scope: !4894)
!4897 = !DILocation(line: 3835, column: 7, scope: !4894)
!4898 = !DILocalVariable(name: "newDent", scope: !4899, file: !526, line: 3836, type: !524)
!4899 = distinct !DILexicalBlock(scope: !4890, file: !526, line: 3835, column: 31)
!4900 = !DILocation(line: 3836, column: 26, scope: !4899)
!4901 = !DILocalVariable(name: "newDents", scope: !4899, file: !526, line: 3836, type: !4834)
!4902 = !DILocation(line: 3836, column: 37, scope: !4899)
!4903 = !DILocation(line: 3838, column: 39, scope: !4899)
!4904 = !DILocation(line: 3838, column: 48, scope: !4899)
!4905 = !DILocation(line: 3838, column: 46, scope: !4899)
!4906 = !DILocation(line: 3838, column: 20, scope: !4899)
!4907 = !DILocation(line: 3838, column: 18, scope: !4899)
!4908 = !DILocation(line: 3844, column: 29, scope: !4899)
!4909 = !DILocation(line: 3844, column: 57, scope: !4899)
!4910 = !DILocation(line: 3844, column: 68, scope: !4899)
!4911 = !DILocation(line: 3844, column: 56, scope: !4899)
!4912 = !DILocation(line: 3844, column: 54, scope: !4899)
!4913 = !DILocation(line: 3844, column: 21, scope: !4899)
!4914 = !DILocation(line: 3844, column: 19, scope: !4899)
!4915 = !DILocation(line: 3845, column: 14, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4899, file: !526, line: 3845, column: 14)
!4917 = !DILocation(line: 3845, column: 23, scope: !4916)
!4918 = !DILocation(line: 3845, column: 14, scope: !4899)
!4919 = !DILocation(line: 3846, column: 20, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4916, file: !526, line: 3845, column: 31)
!4921 = !DILocation(line: 3847, column: 13, scope: !4920)
!4922 = !DILocation(line: 3849, column: 20, scope: !4899)
!4923 = !DILocation(line: 3849, column: 18, scope: !4899)
!4924 = !DILocation(line: 3855, column: 39, scope: !4899)
!4925 = !DILocation(line: 3855, column: 48, scope: !4899)
!4926 = !DILocation(line: 3855, column: 32, scope: !4899)
!4927 = !DILocation(line: 3855, column: 18, scope: !4899)
!4928 = !DILocation(line: 3855, column: 10, scope: !4899)
!4929 = !DILocation(line: 3855, column: 30, scope: !4899)
!4930 = !DILocation(line: 3856, column: 22, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4899, file: !526, line: 3856, column: 14)
!4932 = !DILocation(line: 3856, column: 14, scope: !4931)
!4933 = !DILocation(line: 3856, column: 34, scope: !4931)
!4934 = !DILocation(line: 3856, column: 14, scope: !4899)
!4935 = !DILocation(line: 3857, column: 20, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4931, file: !526, line: 3856, column: 42)
!4937 = !DILocation(line: 3858, column: 13, scope: !4936)
!4938 = !DILocation(line: 3861, column: 37, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4899, file: !526, line: 3861, column: 14)
!4940 = !DILocation(line: 3861, column: 46, scope: !4939)
!4941 = !DILocation(line: 3862, column: 37, scope: !4939)
!4942 = !DILocation(line: 3862, column: 46, scope: !4939)
!4943 = !DILocation(line: 3862, column: 55, scope: !4939)
!4944 = !DILocation(line: 3861, column: 14, scope: !4939)
!4945 = !DILocation(line: 3861, column: 14, scope: !4899)
!4946 = !DILocation(line: 3863, column: 28, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4939, file: !526, line: 3862, column: 91)
!4948 = !DILocation(line: 3863, column: 20, scope: !4947)
!4949 = !DILocation(line: 3863, column: 13, scope: !4947)
!4950 = !DILocation(line: 3863, column: 41, scope: !4947)
!4951 = !DILocation(line: 3863, column: 50, scope: !4947)
!4952 = !DILocation(line: 3863, column: 59, scope: !4947)
!4953 = !DILocation(line: 3868, column: 23, scope: !4947)
!4954 = !DILocation(line: 3869, column: 10, scope: !4947)
!4955 = !DILocation(line: 3878, column: 26, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4939, file: !526, line: 3869, column: 17)
!4957 = !DILocation(line: 3878, column: 18, scope: !4956)
!4958 = !DILocation(line: 3878, column: 13, scope: !4956)
!4959 = !DILocation(line: 3880, column: 20, scope: !4899)
!4960 = !DILocation(line: 3880, column: 29, scope: !4899)
!4961 = !DILocation(line: 3880, column: 17, scope: !4899)
!4962 = !DILocation(line: 3835, column: 7, scope: !4963)
!4963 = !DILexicalBlockFile(scope: !4890, file: !526, discriminator: 2)
!4964 = distinct !{!4964, !4892}
!4965 = !DILocation(line: 3833, column: 4, scope: !4966)
!4966 = !DILexicalBlockFile(scope: !4813, file: !526, discriminator: 2)
!4967 = distinct !{!4967, !4880}
!4968 = !DILocation(line: 3884, column: 8, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3884, column: 8)
!4970 = !DILocation(line: 3884, column: 15, scope: !4969)
!4971 = !DILocation(line: 3884, column: 8, scope: !4813)
!4972 = !DILocation(line: 3885, column: 17, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4969, file: !526, line: 3884, column: 22)
!4974 = !DILocation(line: 3885, column: 16, scope: !4973)
!4975 = !DILocation(line: 3885, column: 14, scope: !4973)
!4976 = !DILocation(line: 3886, column: 7, scope: !4973)
!4977 = distinct !{!4977, !4976}
!4978 = !DILocation(line: 3886, column: 33, scope: !4979)
!4979 = !DILexicalBlockFile(scope: !4980, file: !526, discriminator: 1)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !526, line: 3886, column: 31)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !526, line: 3886, column: 16)
!4982 = distinct !DILexicalBlock(scope: !4973, file: !526, line: 3886, column: 10)
!4983 = !DILocation(line: 3886, column: 202, scope: !4979)
!4984 = !DILocation(line: 3886, column: 227, scope: !4979)
!4985 = !DILocation(line: 3886, column: 210, scope: !4986)
!4986 = !DILexicalBlockFile(scope: !4979, file: !526, discriminator: 2)
!4987 = !DILocation(line: 3886, column: 112, scope: !4988)
!4988 = !DILexicalBlockFile(scope: !4979, file: !526, discriminator: 3)
!4989 = !DILocation(line: 3886, column: 239, scope: !4979)
!4990 = !DILocation(line: 3888, column: 7, scope: !4973)
!4991 = !DILocation(line: 3884, column: 19, scope: !4992)
!4992 = !DILexicalBlockFile(scope: !4969, file: !526, discriminator: 1)
!4993 = !DILocation(line: 3895, column: 8, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3895, column: 8)
!4995 = !DILocation(line: 3895, column: 11, scope: !4994)
!4996 = !DILocation(line: 3895, column: 17, scope: !4994)
!4997 = !DILocation(line: 3895, column: 26, scope: !4998)
!4998 = !DILexicalBlockFile(scope: !4994, file: !526, discriminator: 1)
!4999 = !DILocation(line: 3895, column: 20, scope: !4998)
!5000 = !DILocation(line: 3895, column: 30, scope: !4998)
!5001 = !DILocation(line: 3895, column: 8, scope: !4998)
!5002 = !DILocation(line: 3897, column: 17, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4994, file: !526, line: 3895, column: 35)
!5004 = !DILocation(line: 3897, column: 16, scope: !5003)
!5005 = !DILocation(line: 3897, column: 14, scope: !5003)
!5006 = !DILocation(line: 3898, column: 7, scope: !5003)
!5007 = distinct !{!5007, !5006}
!5008 = !DILocation(line: 3898, column: 33, scope: !5009)
!5009 = !DILexicalBlockFile(scope: !5010, file: !526, discriminator: 1)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !526, line: 3898, column: 31)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !526, line: 3898, column: 16)
!5012 = distinct !DILexicalBlock(scope: !5003, file: !526, line: 3898, column: 10)
!5013 = !DILocation(line: 3898, column: 199, scope: !5009)
!5014 = !DILocation(line: 3898, column: 224, scope: !5009)
!5015 = !DILocation(line: 3898, column: 207, scope: !5016)
!5016 = !DILexicalBlockFile(scope: !5009, file: !526, discriminator: 2)
!5017 = !DILocation(line: 3898, column: 112, scope: !5018)
!5018 = !DILexicalBlockFile(scope: !5009, file: !526, discriminator: 3)
!5019 = !DILocation(line: 3898, column: 236, scope: !5009)
!5020 = !DILocation(line: 3900, column: 4, scope: !5003)
!5021 = !DILocation(line: 3906, column: 8, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4813, file: !526, line: 3906, column: 8)
!5023 = !DILocation(line: 3906, column: 15, scope: !5022)
!5024 = !DILocation(line: 3906, column: 8, scope: !4813)
!5025 = !DILocalVariable(name: "i", scope: !5026, file: !526, line: 3907, type: !771)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !526, line: 3906, column: 21)
!5027 = !DILocation(line: 3907, column: 14, scope: !5026)
!5028 = !DILocation(line: 3908, column: 14, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !526, line: 3908, column: 7)
!5030 = !DILocation(line: 3908, column: 12, scope: !5029)
!5031 = !DILocation(line: 3908, column: 19, scope: !5032)
!5032 = !DILexicalBlockFile(scope: !5033, file: !526, discriminator: 1)
!5033 = distinct !DILexicalBlock(scope: !5029, file: !526, line: 3908, column: 7)
!5034 = !DILocation(line: 3908, column: 23, scope: !5032)
!5035 = !DILocation(line: 3908, column: 21, scope: !5032)
!5036 = !DILocation(line: 3908, column: 7, scope: !5032)
!5037 = !DILocation(line: 3909, column: 23, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5033, file: !526, line: 3908, column: 40)
!5039 = !DILocation(line: 3909, column: 15, scope: !5038)
!5040 = !DILocation(line: 3909, column: 10, scope: !5038)
!5041 = !DILocation(line: 3910, column: 7, scope: !5038)
!5042 = !DILocation(line: 3908, column: 36, scope: !5043)
!5043 = !DILexicalBlockFile(scope: !5033, file: !526, discriminator: 2)
!5044 = !DILocation(line: 3908, column: 7, scope: !5043)
!5045 = distinct !{!5045, !5046}
!5046 = !DILocation(line: 3908, column: 7, scope: !5026)
!5047 = !DILocation(line: 3911, column: 12, scope: !5026)
!5048 = !DILocation(line: 3911, column: 7, scope: !5026)
!5049 = !DILocation(line: 3912, column: 4, scope: !5026)
!5050 = !DILocation(line: 3913, column: 16, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5022, file: !526, line: 3912, column: 11)
!5052 = !DILocation(line: 3913, column: 8, scope: !5051)
!5053 = !DILocation(line: 3913, column: 14, scope: !5051)
!5054 = !DILocation(line: 3914, column: 19, scope: !5051)
!5055 = !DILocation(line: 3914, column: 8, scope: !5051)
!5056 = !DILocation(line: 3914, column: 17, scope: !5051)
!5057 = !DILocation(line: 3916, column: 11, scope: !4813)
!5058 = !DILocation(line: 3916, column: 4, scope: !4813)
!5059 = distinct !DISubprogram(name: "getdents_linux", scope: !526, file: !526, line: 130, type: !5060, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!550, !514, !524, !514}
!5062 = !DILocalVariable(name: "fd", arg: 1, scope: !5059, file: !526, line: 130, type: !514)
!5063 = !DILocation(line: 130, column: 29, scope: !5059)
!5064 = !DILocalVariable(name: "dirp", arg: 2, scope: !5059, file: !526, line: 131, type: !524)
!5065 = !DILocation(line: 131, column: 32, scope: !5059)
!5066 = !DILocalVariable(name: "count", arg: 3, scope: !5059, file: !526, line: 132, type: !514)
!5067 = !DILocation(line: 132, column: 29, scope: !5059)
!5068 = !DILocation(line: 135, column: 34, scope: !5059)
!5069 = !DILocation(line: 135, column: 38, scope: !5059)
!5070 = !DILocation(line: 135, column: 44, scope: !5059)
!5071 = !DILocation(line: 135, column: 11, scope: !5059)
!5072 = !DILocation(line: 135, column: 4, scope: !5059)
!5073 = distinct !DISubprogram(name: "HgfsPlatformScanvdir", scope: !526, file: !526, line: 3942, type: !5074, isLocal: false, isDefinition: true, scopeLine: 3948, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!609, !5076, !5080, !5084, !949, !4816, !778}
!5076 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumGetFunc", file: !777, line: 143, baseType: !5077)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64, align: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!729, !508, !521, !1736, !3574}
!5080 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumInitFunc", file: !777, line: 142, baseType: !5081)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64, align: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!508}
!5084 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumExitFunc", file: !777, line: 147, baseType: !5085)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64, align: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!729, !508}
!5088 = !DILocalVariable(name: "enumNamesGet", arg: 1, scope: !5073, file: !526, line: 3942, type: !5076)
!5089 = !DILocation(line: 3942, column: 47, scope: !5073)
!5090 = !DILocalVariable(name: "enumNamesInit", arg: 2, scope: !5073, file: !526, line: 3943, type: !5080)
!5091 = !DILocation(line: 3943, column: 48, scope: !5073)
!5092 = !DILocalVariable(name: "enumNamesExit", arg: 3, scope: !5073, file: !526, line: 3944, type: !5084)
!5093 = !DILocation(line: 3944, column: 48, scope: !5073)
!5094 = !DILocalVariable(name: "type", arg: 4, scope: !5073, file: !526, line: 3945, type: !949)
!5095 = !DILocation(line: 3945, column: 42, scope: !5073)
!5096 = !DILocalVariable(name: "dents", arg: 5, scope: !5073, file: !526, line: 3946, type: !4816)
!5097 = !DILocation(line: 3946, column: 47, scope: !5073)
!5098 = !DILocalVariable(name: "numDents", arg: 6, scope: !5073, file: !526, line: 3947, type: !778)
!5099 = !DILocation(line: 3947, column: 30, scope: !5073)
!5100 = !DILocalVariable(name: "status", scope: !5073, file: !526, line: 3949, type: !609)
!5101 = !DILocation(line: 3949, column: 23, scope: !5073)
!5102 = !DILocalVariable(name: "totalDents", scope: !5073, file: !526, line: 3950, type: !510)
!5103 = !DILocation(line: 3950, column: 11, scope: !5073)
!5104 = !DILocalVariable(name: "myNumDents", scope: !5073, file: !526, line: 3951, type: !510)
!5105 = !DILocation(line: 3951, column: 11, scope: !5073)
!5106 = !DILocalVariable(name: "myDents", scope: !5073, file: !526, line: 3952, type: !4834)
!5107 = !DILocation(line: 3952, column: 21, scope: !5073)
!5108 = !DILocalVariable(name: "enumNamesHandle", scope: !5073, file: !526, line: 3953, type: !508)
!5109 = !DILocation(line: 3953, column: 10, scope: !5073)
!5110 = !DILocation(line: 3959, column: 22, scope: !5073)
!5111 = !DILocation(line: 3959, column: 20, scope: !5073)
!5112 = !DILocation(line: 3960, column: 15, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5073, file: !526, line: 3960, column: 7)
!5114 = !DILocation(line: 3960, column: 12, scope: !5113)
!5115 = !DILocation(line: 3960, column: 7, scope: !5073)
!5116 = !DILocation(line: 3961, column: 14, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !526, line: 3960, column: 32)
!5118 = !DILocation(line: 3962, column: 7, scope: !5117)
!5119 = distinct !{!5119, !5118}
!5120 = !DILocation(line: 3962, column: 33, scope: !5121)
!5121 = !DILexicalBlockFile(scope: !5122, file: !526, discriminator: 1)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !526, line: 3962, column: 31)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !526, line: 3962, column: 16)
!5124 = distinct !DILexicalBlock(scope: !5117, file: !526, line: 3962, column: 10)
!5125 = !DILocation(line: 3962, column: 200, scope: !5121)
!5126 = !DILocation(line: 3962, column: 112, scope: !5127)
!5127 = !DILexicalBlockFile(scope: !5121, file: !526, discriminator: 2)
!5128 = !DILocation(line: 3962, column: 211, scope: !5121)
!5129 = !DILocation(line: 3963, column: 7, scope: !5117)
!5130 = !DILocation(line: 3966, column: 4, scope: !5073)
!5131 = !DILocalVariable(name: "currentEntry", scope: !5132, file: !526, line: 3967, type: !524)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !526, line: 3966, column: 13)
!5133 = distinct !DILexicalBlock(scope: !5134, file: !526, line: 3966, column: 4)
!5134 = distinct !DILexicalBlock(scope: !5073, file: !526, line: 3966, column: 4)
!5135 = !DILocation(line: 3967, column: 23, scope: !5132)
!5136 = !DILocalVariable(name: "currentEntryName", scope: !5132, file: !526, line: 3968, type: !522)
!5137 = !DILocation(line: 3968, column: 19, scope: !5132)
!5138 = !DILocalVariable(name: "currentEntryNameLen", scope: !5132, file: !526, line: 3969, type: !771)
!5139 = !DILocation(line: 3969, column: 14, scope: !5132)
!5140 = !DILocalVariable(name: "currentEntryLen", scope: !5132, file: !526, line: 3970, type: !771)
!5141 = !DILocation(line: 3970, column: 14, scope: !5132)
!5142 = !DILocalVariable(name: "maxNameLen", scope: !5132, file: !526, line: 3971, type: !771)
!5143 = !DILocation(line: 3971, column: 14, scope: !5132)
!5144 = !DILocalVariable(name: "done", scope: !5132, file: !526, line: 3972, type: !729)
!5145 = !DILocation(line: 3972, column: 12, scope: !5132)
!5146 = !DILocation(line: 3975, column: 11, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 3975, column: 11)
!5148 = !DILocation(line: 3975, column: 22, scope: !5147)
!5149 = !DILocation(line: 3975, column: 11, scope: !5132)
!5150 = !DILocation(line: 3976, column: 27, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !526, line: 3975, column: 28)
!5152 = !DILocation(line: 3977, column: 30, scope: !5151)
!5153 = !DILocation(line: 3978, column: 7, scope: !5151)
!5154 = !DILocation(line: 3978, column: 18, scope: !5155)
!5155 = !DILexicalBlockFile(scope: !5156, file: !526, discriminator: 1)
!5156 = distinct !DILexicalBlock(scope: !5147, file: !526, line: 3978, column: 18)
!5157 = !DILocation(line: 3978, column: 29, scope: !5155)
!5158 = !DILocation(line: 3979, column: 27, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5156, file: !526, line: 3978, column: 35)
!5160 = !DILocation(line: 3980, column: 30, scope: !5159)
!5161 = !DILocation(line: 3981, column: 7, scope: !5159)
!5162 = !DILocation(line: 3982, column: 15, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !526, line: 3982, column: 14)
!5164 = distinct !DILexicalBlock(scope: !5156, file: !526, line: 3981, column: 14)
!5165 = !DILocation(line: 3982, column: 28, scope: !5163)
!5166 = !DILocation(line: 3982, column: 14, scope: !5164)
!5167 = !DILocation(line: 3983, column: 20, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5163, file: !526, line: 3982, column: 94)
!5169 = !DILocation(line: 3984, column: 13, scope: !5168)
!5170 = distinct !{!5170, !5169}
!5171 = !DILocation(line: 3984, column: 39, scope: !5172)
!5172 = !DILexicalBlockFile(scope: !5173, file: !526, discriminator: 1)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !526, line: 3984, column: 37)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !526, line: 3984, column: 22)
!5175 = distinct !DILexicalBlock(scope: !5168, file: !526, line: 3984, column: 16)
!5176 = !DILocation(line: 3984, column: 215, scope: !5172)
!5177 = !DILocation(line: 3984, column: 118, scope: !5178)
!5178 = !DILexicalBlockFile(scope: !5172, file: !526, discriminator: 2)
!5179 = !DILocation(line: 3984, column: 226, scope: !5172)
!5180 = !DILocation(line: 3985, column: 13, scope: !5168)
!5181 = !DILocation(line: 3989, column: 11, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 3989, column: 11)
!5183 = !DILocation(line: 3989, column: 11, scope: !5132)
!5184 = !DILocation(line: 3990, column: 10, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !526, line: 3989, column: 17)
!5186 = distinct !{!5186, !5184}
!5187 = !DILocation(line: 3990, column: 36, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !5189, file: !526, discriminator: 1)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !526, line: 3990, column: 34)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !526, line: 3990, column: 19)
!5191 = distinct !DILexicalBlock(scope: !5185, file: !526, line: 3990, column: 13)
!5192 = !DILocation(line: 3990, column: 115, scope: !5193)
!5193 = !DILexicalBlockFile(scope: !5188, file: !526, discriminator: 2)
!5194 = !DILocation(line: 3990, column: 195, scope: !5188)
!5195 = !DILocation(line: 3991, column: 10, scope: !5185)
!5196 = !DILocation(line: 4003, column: 18, scope: !5132)
!5197 = !DILocation(line: 4005, column: 11, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 4005, column: 11)
!5199 = !DILocation(line: 4005, column: 34, scope: !5198)
!5200 = !DILocation(line: 4005, column: 31, scope: !5198)
!5201 = !DILocation(line: 4005, column: 11, scope: !5132)
!5202 = !DILocation(line: 4006, column: 69, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5198, file: !526, line: 4005, column: 46)
!5204 = !DILocation(line: 4006, column: 10, scope: !5203)
!5205 = !DILocation(line: 4007, column: 10, scope: !5203)
!5206 = distinct !{!5206, !5130}
!5207 = !DILocation(line: 4011, column: 11, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 4011, column: 11)
!5209 = !DILocation(line: 4011, column: 25, scope: !5208)
!5210 = !DILocation(line: 4011, column: 22, scope: !5208)
!5211 = !DILocation(line: 4011, column: 11, scope: !5132)
!5212 = !DILocalVariable(name: "p", scope: !5213, file: !526, line: 4012, type: !508)
!5213 = distinct !DILexicalBlock(scope: !5208, file: !526, line: 4011, column: 37)
!5214 = !DILocation(line: 4012, column: 16, scope: !5213)
!5215 = !DILocation(line: 4014, column: 14, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !526, line: 4014, column: 14)
!5217 = !DILocation(line: 4014, column: 25, scope: !5216)
!5218 = !DILocation(line: 4014, column: 14, scope: !5213)
!5219 = !DILocation(line: 4015, column: 24, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5216, file: !526, line: 4014, column: 31)
!5221 = !DILocation(line: 4016, column: 10, scope: !5220)
!5222 = !DILocation(line: 4017, column: 24, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5216, file: !526, line: 4016, column: 17)
!5224 = !DILocation(line: 4019, column: 22, scope: !5213)
!5225 = !DILocation(line: 4019, column: 31, scope: !5213)
!5226 = !DILocation(line: 4019, column: 42, scope: !5213)
!5227 = !DILocation(line: 4019, column: 14, scope: !5213)
!5228 = !DILocation(line: 4019, column: 12, scope: !5213)
!5229 = !DILocation(line: 4020, column: 21, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5213, file: !526, line: 4020, column: 13)
!5231 = !DILocation(line: 4020, column: 18, scope: !5230)
!5232 = !DILocation(line: 4020, column: 13, scope: !5213)
!5233 = !DILocation(line: 4021, column: 20, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !526, line: 4020, column: 24)
!5235 = !DILocation(line: 4022, column: 13, scope: !5234)
!5236 = distinct !{!5236, !5235}
!5237 = !DILocation(line: 4022, column: 39, scope: !5238)
!5238 = !DILexicalBlockFile(scope: !5239, file: !526, discriminator: 1)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !526, line: 4022, column: 37)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !526, line: 4022, column: 22)
!5241 = distinct !DILexicalBlock(scope: !5234, file: !526, line: 4022, column: 16)
!5242 = !DILocation(line: 4022, column: 225, scope: !5238)
!5243 = !DILocation(line: 4022, column: 118, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !5238, file: !526, discriminator: 2)
!5245 = !DILocation(line: 4022, column: 236, scope: !5238)
!5246 = !DILocation(line: 4023, column: 13, scope: !5234)
!5247 = !DILocation(line: 4025, column: 20, scope: !5213)
!5248 = !DILocation(line: 4025, column: 18, scope: !5213)
!5249 = !DILocation(line: 4026, column: 7, scope: !5213)
!5250 = !DILocation(line: 4029, column: 7, scope: !5132)
!5251 = distinct !{!5251, !5250}
!5252 = !DILocation(line: 4029, column: 33, scope: !5253)
!5253 = !DILexicalBlockFile(scope: !5254, file: !526, discriminator: 1)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !526, line: 4029, column: 31)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !526, line: 4029, column: 16)
!5256 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 4029, column: 10)
!5257 = !DILocation(line: 4029, column: 197, scope: !5253)
!5258 = !DILocation(line: 4029, column: 112, scope: !5259)
!5259 = !DILexicalBlockFile(scope: !5253, file: !526, discriminator: 2)
!5260 = !DILocation(line: 4029, column: 218, scope: !5253)
!5261 = !DILocation(line: 4037, column: 59, scope: !5132)
!5262 = !DILocation(line: 4037, column: 57, scope: !5132)
!5263 = !DILocation(line: 4037, column: 79, scope: !5132)
!5264 = !DILocation(line: 4037, column: 23, scope: !5132)
!5265 = !DILocation(line: 4038, column: 29, scope: !5132)
!5266 = !DILocation(line: 4038, column: 22, scope: !5132)
!5267 = !DILocation(line: 4038, column: 20, scope: !5132)
!5268 = !DILocation(line: 4039, column: 18, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5132, file: !526, line: 4039, column: 10)
!5270 = !DILocation(line: 4039, column: 15, scope: !5269)
!5271 = !DILocation(line: 4039, column: 10, scope: !5132)
!5272 = !DILocation(line: 4040, column: 17, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5269, file: !526, line: 4039, column: 32)
!5274 = !DILocation(line: 4041, column: 10, scope: !5273)
!5275 = distinct !{!5275, !5274}
!5276 = !DILocation(line: 4041, column: 36, scope: !5277)
!5277 = !DILexicalBlockFile(scope: !5278, file: !526, discriminator: 1)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !526, line: 4041, column: 34)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !526, line: 4041, column: 19)
!5280 = distinct !DILexicalBlock(scope: !5273, file: !526, line: 4041, column: 13)
!5281 = !DILocation(line: 4041, column: 216, scope: !5277)
!5282 = !DILocation(line: 4041, column: 115, scope: !5283)
!5283 = !DILexicalBlockFile(scope: !5277, file: !526, discriminator: 2)
!5284 = !DILocation(line: 4041, column: 227, scope: !5277)
!5285 = !DILocation(line: 4042, column: 10, scope: !5273)
!5286 = !DILocation(line: 4044, column: 48, scope: !5132)
!5287 = !DILocation(line: 4044, column: 32, scope: !5132)
!5288 = !DILocation(line: 4044, column: 7, scope: !5132)
!5289 = !DILocation(line: 4044, column: 21, scope: !5132)
!5290 = !DILocation(line: 4044, column: 30, scope: !5132)
!5291 = !DILocation(line: 4045, column: 14, scope: !5132)
!5292 = !DILocation(line: 4045, column: 28, scope: !5132)
!5293 = !DILocation(line: 4045, column: 7, scope: !5132)
!5294 = !DILocation(line: 4045, column: 36, scope: !5132)
!5295 = !DILocation(line: 4045, column: 54, scope: !5132)
!5296 = !DILocation(line: 4046, column: 28, scope: !5132)
!5297 = !DILocation(line: 4046, column: 7, scope: !5132)
!5298 = !DILocation(line: 4046, column: 21, scope: !5132)
!5299 = !DILocation(line: 4046, column: 49, scope: !5132)
!5300 = !DILocation(line: 4048, column: 29, scope: !5132)
!5301 = !DILocation(line: 4048, column: 15, scope: !5132)
!5302 = !DILocation(line: 4048, column: 7, scope: !5132)
!5303 = !DILocation(line: 4048, column: 27, scope: !5132)
!5304 = !DILocation(line: 4049, column: 17, scope: !5132)
!5305 = !DILocation(line: 3966, column: 4, scope: !5306)
!5306 = !DILexicalBlockFile(scope: !5133, file: !526, discriminator: 1)
!5307 = !DILocalVariable(name: "p", scope: !5308, file: !526, line: 4054, type: !508)
!5308 = distinct !DILexicalBlock(scope: !5073, file: !526, line: 4053, column: 4)
!5309 = !DILocation(line: 4054, column: 13, scope: !5308)
!5310 = !DILocation(line: 4056, column: 19, scope: !5308)
!5311 = !DILocation(line: 4056, column: 28, scope: !5308)
!5312 = !DILocation(line: 4056, column: 39, scope: !5308)
!5313 = !DILocation(line: 4056, column: 11, scope: !5308)
!5314 = !DILocation(line: 4056, column: 9, scope: !5308)
!5315 = !DILocation(line: 4057, column: 18, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5308, file: !526, line: 4057, column: 10)
!5317 = !DILocation(line: 4057, column: 15, scope: !5316)
!5318 = !DILocation(line: 4057, column: 10, scope: !5308)
!5319 = !DILocation(line: 4058, column: 20, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5316, file: !526, line: 4057, column: 21)
!5321 = !DILocation(line: 4058, column: 18, scope: !5320)
!5322 = !DILocation(line: 4059, column: 7, scope: !5320)
!5323 = !DILocation(line: 4060, column: 10, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5316, file: !526, line: 4059, column: 14)
!5325 = distinct !{!5325, !5323}
!5326 = !DILocation(line: 4060, column: 36, scope: !5327)
!5327 = !DILexicalBlockFile(scope: !5328, file: !526, discriminator: 1)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !526, line: 4060, column: 34)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !526, line: 4060, column: 19)
!5330 = distinct !DILexicalBlock(scope: !5324, file: !526, line: 4060, column: 13)
!5331 = !DILocation(line: 4060, column: 115, scope: !5332)
!5332 = !DILexicalBlockFile(scope: !5327, file: !526, discriminator: 2)
!5333 = !DILocation(line: 4060, column: 218, scope: !5327)
!5334 = !DILocation(line: 4064, column: 13, scope: !5073)
!5335 = !DILocation(line: 4064, column: 5, scope: !5073)
!5336 = !DILocation(line: 4064, column: 11, scope: !5073)
!5337 = !DILocation(line: 4065, column: 16, scope: !5073)
!5338 = !DILocation(line: 4065, column: 5, scope: !5073)
!5339 = !DILocation(line: 4065, column: 14, scope: !5073)
!5340 = !DILocation(line: 4065, column: 4, scope: !5073)
!5341 = !DILocation(line: 4068, column: 15, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5073, file: !526, line: 4068, column: 7)
!5343 = !DILocation(line: 4068, column: 12, scope: !5342)
!5344 = !DILocation(line: 4068, column: 7, scope: !5073)
!5345 = !DILocation(line: 4070, column: 12, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !526, line: 4070, column: 11)
!5347 = distinct !DILexicalBlock(scope: !5342, file: !526, line: 4068, column: 32)
!5348 = !DILocation(line: 4070, column: 26, scope: !5346)
!5349 = !DILocation(line: 4070, column: 11, scope: !5347)
!5350 = !DILocation(line: 4071, column: 10, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !526, line: 4070, column: 44)
!5352 = distinct !{!5352, !5350}
!5353 = !DILocation(line: 4071, column: 36, scope: !5354)
!5354 = !DILexicalBlockFile(scope: !5355, file: !526, discriminator: 1)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !526, line: 4071, column: 34)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !526, line: 4071, column: 19)
!5357 = distinct !DILexicalBlock(scope: !5351, file: !526, line: 4071, column: 13)
!5358 = !DILocation(line: 4071, column: 115, scope: !5359)
!5359 = !DILexicalBlockFile(scope: !5354, file: !526, discriminator: 2)
!5360 = !DILocation(line: 4071, column: 202, scope: !5354)
!5361 = !DILocation(line: 4072, column: 7, scope: !5351)
!5362 = !DILocation(line: 4073, column: 4, scope: !5347)
!5363 = !DILocation(line: 4075, column: 13, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5073, file: !526, line: 4075, column: 8)
!5365 = !DILocation(line: 4075, column: 10, scope: !5364)
!5366 = !DILocation(line: 4075, column: 8, scope: !5073)
!5367 = !DILocalVariable(name: "i", scope: !5368, file: !526, line: 4076, type: !514)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !526, line: 4075, column: 21)
!5369 = !DILocation(line: 4076, column: 20, scope: !5368)
!5370 = !DILocation(line: 4079, column: 14, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5368, file: !526, line: 4079, column: 7)
!5372 = !DILocation(line: 4079, column: 12, scope: !5371)
!5373 = !DILocation(line: 4079, column: 19, scope: !5374)
!5374 = !DILexicalBlockFile(scope: !5375, file: !526, discriminator: 1)
!5375 = distinct !DILexicalBlock(scope: !5371, file: !526, line: 4079, column: 7)
!5376 = !DILocation(line: 4079, column: 23, scope: !5374)
!5377 = !DILocation(line: 4079, column: 21, scope: !5374)
!5378 = !DILocation(line: 4079, column: 7, scope: !5374)
!5379 = !DILocation(line: 4080, column: 23, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5375, file: !526, line: 4079, column: 40)
!5381 = !DILocation(line: 4080, column: 15, scope: !5380)
!5382 = !DILocation(line: 4080, column: 10, scope: !5380)
!5383 = !DILocation(line: 4081, column: 7, scope: !5380)
!5384 = !DILocation(line: 4079, column: 36, scope: !5385)
!5385 = !DILexicalBlockFile(scope: !5375, file: !526, discriminator: 2)
!5386 = !DILocation(line: 4079, column: 7, scope: !5385)
!5387 = distinct !{!5387, !5388}
!5388 = !DILocation(line: 4079, column: 7, scope: !5368)
!5389 = !DILocation(line: 4083, column: 12, scope: !5368)
!5390 = !DILocation(line: 4083, column: 7, scope: !5368)
!5391 = !DILocation(line: 4084, column: 4, scope: !5368)
!5392 = !DILocation(line: 4086, column: 11, scope: !5073)
!5393 = !DILocation(line: 4086, column: 4, scope: !5073)
!5394 = distinct !DISubprogram(name: "HgfsPlatformReadFile", scope: !526, file: !526, line: 4150, type: !5395, isLocal: false, isDefinition: true, scopeLine: 4156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!609, !827, !863, !530, !510, !508, !778}
!5397 = !DILocalVariable(name: "file", arg: 1, scope: !5394, file: !526, line: 4150, type: !827)
!5398 = !DILocation(line: 4150, column: 31, scope: !5394)
!5399 = !DILocalVariable(name: "session", arg: 2, scope: !5394, file: !526, line: 4151, type: !863)
!5400 = !DILocation(line: 4151, column: 39, scope: !5394)
!5401 = !DILocalVariable(name: "offset", arg: 3, scope: !5394, file: !526, line: 4152, type: !530)
!5402 = !DILocation(line: 4152, column: 29, scope: !5394)
!5403 = !DILocalVariable(name: "requiredSize", arg: 4, scope: !5394, file: !526, line: 4153, type: !510)
!5404 = !DILocation(line: 4153, column: 29, scope: !5394)
!5405 = !DILocalVariable(name: "payload", arg: 5, scope: !5394, file: !526, line: 4154, type: !508)
!5406 = !DILocation(line: 4154, column: 28, scope: !5394)
!5407 = !DILocalVariable(name: "actualSize", arg: 6, scope: !5394, file: !526, line: 4155, type: !778)
!5408 = !DILocation(line: 4155, column: 30, scope: !5394)
!5409 = !DILocalVariable(name: "error", scope: !5394, file: !526, line: 4157, type: !550)
!5410 = !DILocation(line: 4157, column: 8, scope: !5394)
!5411 = !DILocalVariable(name: "status", scope: !5394, file: !526, line: 4158, type: !609)
!5412 = !DILocation(line: 4158, column: 23, scope: !5394)
!5413 = !DILocalVariable(name: "handle", scope: !5394, file: !526, line: 4159, type: !509)
!5414 = !DILocation(line: 4159, column: 15, scope: !5394)
!5415 = !DILocalVariable(name: "sequentialOpen", scope: !5394, file: !526, line: 4160, type: !729)
!5416 = !DILocation(line: 4160, column: 9, scope: !5394)
!5417 = !DILocation(line: 4165, column: 4, scope: !5394)
!5418 = distinct !{!5418, !5417}
!5419 = !DILocation(line: 4165, column: 30, scope: !5420)
!5420 = !DILexicalBlockFile(scope: !5421, file: !526, discriminator: 1)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !526, line: 4165, column: 28)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !526, line: 4165, column: 13)
!5423 = distinct !DILexicalBlock(scope: !5394, file: !526, line: 4165, column: 7)
!5424 = !DILocation(line: 4165, column: 209, scope: !5420)
!5425 = !DILocation(line: 4165, column: 215, scope: !5420)
!5426 = !DILocation(line: 4165, column: 223, scope: !5420)
!5427 = !DILocation(line: 4165, column: 109, scope: !5428)
!5428 = !DILexicalBlockFile(scope: !5420, file: !526, discriminator: 2)
!5429 = !DILocation(line: 4165, column: 240, scope: !5420)
!5430 = !DILocation(line: 4168, column: 29, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5394, file: !526, line: 4168, column: 8)
!5432 = !DILocation(line: 4168, column: 35, scope: !5431)
!5433 = !DILocation(line: 4168, column: 9, scope: !5431)
!5434 = !DILocation(line: 4168, column: 8, scope: !5394)
!5435 = !DILocation(line: 4169, column: 7, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5431, file: !526, line: 4168, column: 54)
!5437 = distinct !{!5437, !5435}
!5438 = !DILocation(line: 4169, column: 33, scope: !5439)
!5439 = !DILexicalBlockFile(scope: !5440, file: !526, discriminator: 1)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !526, line: 4169, column: 31)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !526, line: 4169, column: 16)
!5442 = distinct !DILexicalBlock(scope: !5436, file: !526, line: 4169, column: 10)
!5443 = !DILocation(line: 4169, column: 112, scope: !5444)
!5444 = !DILexicalBlockFile(scope: !5439, file: !526, discriminator: 2)
!5445 = !DILocation(line: 4169, column: 204, scope: !5439)
!5446 = !DILocation(line: 4170, column: 7, scope: !5436)
!5447 = !DILocation(line: 4173, column: 36, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5394, file: !526, line: 4173, column: 8)
!5449 = !DILocation(line: 4173, column: 44, scope: !5448)
!5450 = !DILocation(line: 4173, column: 9, scope: !5448)
!5451 = !DILocation(line: 4173, column: 8, scope: !5394)
!5452 = !DILocation(line: 4174, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5448, file: !526, line: 4173, column: 71)
!5454 = distinct !{!5454, !5452}
!5455 = !DILocation(line: 4174, column: 33, scope: !5456)
!5456 = !DILexicalBlockFile(scope: !5457, file: !526, discriminator: 1)
!5457 = distinct !DILexicalBlock(scope: !5458, file: !526, line: 4174, column: 31)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !526, line: 4174, column: 16)
!5459 = distinct !DILexicalBlock(scope: !5453, file: !526, line: 4174, column: 10)
!5460 = !DILocation(line: 4174, column: 112, scope: !5461)
!5461 = !DILexicalBlockFile(scope: !5456, file: !526, discriminator: 2)
!5462 = !DILocation(line: 4174, column: 214, scope: !5456)
!5463 = !DILocation(line: 4175, column: 7, scope: !5453)
!5464 = !DILocation(line: 4180, column: 8, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5394, file: !526, line: 4180, column: 8)
!5466 = !DILocation(line: 4180, column: 8, scope: !5394)
!5467 = !DILocation(line: 4181, column: 20, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5465, file: !526, line: 4180, column: 24)
!5469 = !DILocation(line: 4181, column: 26, scope: !5468)
!5470 = !DILocation(line: 4181, column: 35, scope: !5468)
!5471 = !DILocation(line: 4181, column: 15, scope: !5468)
!5472 = !DILocation(line: 4181, column: 13, scope: !5468)
!5473 = !DILocation(line: 4182, column: 4, scope: !5468)
!5474 = !DILocation(line: 4183, column: 21, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5465, file: !526, line: 4182, column: 11)
!5476 = !DILocation(line: 4183, column: 27, scope: !5475)
!5477 = !DILocation(line: 4183, column: 36, scope: !5475)
!5478 = !DILocation(line: 4183, column: 50, scope: !5475)
!5479 = !DILocation(line: 4183, column: 15, scope: !5475)
!5480 = !DILocation(line: 4183, column: 13, scope: !5475)
!5481 = !DILocation(line: 4219, column: 8, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5394, file: !526, line: 4219, column: 8)
!5483 = !DILocation(line: 4219, column: 14, scope: !5482)
!5484 = !DILocation(line: 4219, column: 8, scope: !5394)
!5485 = !DILocation(line: 4220, column: 17, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5482, file: !526, line: 4219, column: 19)
!5487 = !DILocation(line: 4220, column: 16, scope: !5486)
!5488 = !DILocation(line: 4220, column: 14, scope: !5486)
!5489 = !DILocation(line: 4221, column: 7, scope: !5486)
!5490 = distinct !{!5490, !5489}
!5491 = !DILocation(line: 4221, column: 33, scope: !5492)
!5492 = !DILexicalBlockFile(scope: !5493, file: !526, discriminator: 1)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !526, line: 4221, column: 31)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !526, line: 4221, column: 16)
!5495 = distinct !DILexicalBlock(scope: !5486, file: !526, line: 4221, column: 10)
!5496 = !DILocation(line: 4221, column: 220, scope: !5492)
!5497 = !DILocation(line: 4221, column: 203, scope: !5498)
!5498 = !DILexicalBlockFile(scope: !5492, file: !526, discriminator: 2)
!5499 = !DILocation(line: 4221, column: 112, scope: !5500)
!5500 = !DILexicalBlockFile(scope: !5492, file: !526, discriminator: 3)
!5501 = !DILocation(line: 4221, column: 232, scope: !5492)
!5502 = !DILocation(line: 4223, column: 4, scope: !5486)
!5503 = !DILocation(line: 4224, column: 7, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5482, file: !526, line: 4223, column: 11)
!5505 = distinct !{!5505, !5503}
!5506 = !DILocation(line: 4224, column: 33, scope: !5507)
!5507 = !DILexicalBlockFile(scope: !5508, file: !526, discriminator: 1)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !526, line: 4224, column: 31)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !526, line: 4224, column: 16)
!5510 = distinct !DILexicalBlock(scope: !5504, file: !526, line: 4224, column: 10)
!5511 = !DILocation(line: 4224, column: 189, scope: !5507)
!5512 = !DILocation(line: 4224, column: 112, scope: !5513)
!5513 = !DILexicalBlockFile(scope: !5507, file: !526, discriminator: 2)
!5514 = !DILocation(line: 4224, column: 199, scope: !5507)
!5515 = !DILocation(line: 4225, column: 21, scope: !5504)
!5516 = !DILocation(line: 4225, column: 8, scope: !5504)
!5517 = !DILocation(line: 4225, column: 19, scope: !5504)
!5518 = !DILocation(line: 4228, column: 11, scope: !5394)
!5519 = !DILocation(line: 4228, column: 4, scope: !5394)
!5520 = !DILocation(line: 4229, column: 1, scope: !5394)
!5521 = distinct !DISubprogram(name: "HgfsPlatformWriteFile", scope: !526, file: !526, line: 4250, type: !5522, isLocal: false, isDefinition: true, scopeLine: 4259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!609, !827, !863, !530, !510, !5524, !729, !729, !5525, !778}
!5524 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsWriteFlags", file: !20, line: 207, baseType: !539)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64, align: 64)
!5526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5527 = !DILocalVariable(name: "writeFd", arg: 1, scope: !5521, file: !526, line: 4250, type: !827)
!5528 = !DILocation(line: 4250, column: 32, scope: !5521)
!5529 = !DILocalVariable(name: "session", arg: 2, scope: !5521, file: !526, line: 4251, type: !863)
!5530 = !DILocation(line: 4251, column: 40, scope: !5521)
!5531 = !DILocalVariable(name: "writeOffset", arg: 3, scope: !5521, file: !526, line: 4252, type: !530)
!5532 = !DILocation(line: 4252, column: 30, scope: !5521)
!5533 = !DILocalVariable(name: "writeDataSize", arg: 4, scope: !5521, file: !526, line: 4253, type: !510)
!5534 = !DILocation(line: 4253, column: 30, scope: !5521)
!5535 = !DILocalVariable(name: "writeFlags", arg: 5, scope: !5521, file: !526, line: 4254, type: !5524)
!5536 = !DILocation(line: 4254, column: 38, scope: !5521)
!5537 = !DILocalVariable(name: "writeSequential", arg: 6, scope: !5521, file: !526, line: 4255, type: !729)
!5538 = !DILocation(line: 4255, column: 28, scope: !5521)
!5539 = !DILocalVariable(name: "writeAppend", arg: 7, scope: !5521, file: !526, line: 4256, type: !729)
!5540 = !DILocation(line: 4256, column: 28, scope: !5521)
!5541 = !DILocalVariable(name: "writeData", arg: 8, scope: !5521, file: !526, line: 4257, type: !5525)
!5542 = !DILocation(line: 4257, column: 35, scope: !5521)
!5543 = !DILocalVariable(name: "writtenSize", arg: 9, scope: !5521, file: !526, line: 4258, type: !778)
!5544 = !DILocation(line: 4258, column: 31, scope: !5521)
!5545 = !DILocalVariable(name: "status", scope: !5521, file: !526, line: 4260, type: !609)
!5546 = !DILocation(line: 4260, column: 23, scope: !5521)
!5547 = !DILocalVariable(name: "error", scope: !5521, file: !526, line: 4261, type: !550)
!5548 = !DILocation(line: 4261, column: 8, scope: !5521)
!5549 = !DILocation(line: 4263, column: 4, scope: !5521)
!5550 = distinct !{!5550, !5549}
!5551 = !DILocation(line: 4263, column: 30, scope: !5552)
!5552 = !DILexicalBlockFile(scope: !5553, file: !526, discriminator: 1)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !526, line: 4263, column: 28)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !526, line: 4263, column: 13)
!5555 = distinct !DILexicalBlock(scope: !5521, file: !526, line: 4263, column: 7)
!5556 = !DILocation(line: 4263, column: 209, scope: !5552)
!5557 = !DILocation(line: 4263, column: 218, scope: !5552)
!5558 = !DILocation(line: 4263, column: 231, scope: !5552)
!5559 = !DILocation(line: 4263, column: 109, scope: !5560)
!5560 = !DILexicalBlockFile(scope: !5552, file: !526, discriminator: 2)
!5561 = !DILocation(line: 4263, column: 249, scope: !5552)
!5562 = !DILocation(line: 4267, column: 9, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5521, file: !526, line: 4267, column: 8)
!5564 = !DILocation(line: 4267, column: 8, scope: !5521)
!5565 = !DILocation(line: 4268, column: 38, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5563, file: !526, line: 4267, column: 26)
!5567 = !DILocation(line: 4268, column: 51, scope: !5566)
!5568 = !DILocation(line: 4268, column: 16, scope: !5566)
!5569 = !DILocation(line: 4268, column: 14, scope: !5566)
!5570 = !DILocation(line: 4269, column: 11, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5566, file: !526, line: 4269, column: 11)
!5572 = !DILocation(line: 4269, column: 18, scope: !5571)
!5573 = !DILocation(line: 4269, column: 11, scope: !5566)
!5574 = !DILocation(line: 4270, column: 17, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5571, file: !526, line: 4269, column: 24)
!5576 = !DILocation(line: 4270, column: 10, scope: !5575)
!5577 = !DILocation(line: 4272, column: 4, scope: !5566)
!5578 = !DILocation(line: 4277, column: 8, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5521, file: !526, line: 4277, column: 8)
!5580 = !DILocation(line: 4277, column: 8, scope: !5521)
!5581 = !DILocation(line: 4278, column: 21, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5579, file: !526, line: 4277, column: 25)
!5583 = !DILocation(line: 4278, column: 30, scope: !5582)
!5584 = !DILocation(line: 4278, column: 41, scope: !5582)
!5585 = !DILocation(line: 4278, column: 15, scope: !5582)
!5586 = !DILocation(line: 4278, column: 13, scope: !5582)
!5587 = !DILocation(line: 4279, column: 4, scope: !5582)
!5588 = !DILocation(line: 4280, column: 22, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5579, file: !526, line: 4279, column: 11)
!5590 = !DILocation(line: 4280, column: 31, scope: !5589)
!5591 = !DILocation(line: 4280, column: 42, scope: !5589)
!5592 = !DILocation(line: 4280, column: 57, scope: !5589)
!5593 = !DILocation(line: 4280, column: 15, scope: !5589)
!5594 = !DILocation(line: 4280, column: 13, scope: !5589)
!5595 = !DILocation(line: 4327, column: 8, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5521, file: !526, line: 4327, column: 8)
!5597 = !DILocation(line: 4327, column: 14, scope: !5596)
!5598 = !DILocation(line: 4327, column: 8, scope: !5521)
!5599 = !DILocation(line: 4328, column: 17, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5596, file: !526, line: 4327, column: 19)
!5601 = !DILocation(line: 4328, column: 16, scope: !5600)
!5602 = !DILocation(line: 4328, column: 14, scope: !5600)
!5603 = !DILocation(line: 4329, column: 7, scope: !5600)
!5604 = distinct !{!5604, !5603}
!5605 = !DILocation(line: 4329, column: 33, scope: !5606)
!5606 = !DILexicalBlockFile(scope: !5607, file: !526, discriminator: 1)
!5607 = distinct !DILexicalBlock(scope: !5608, file: !526, line: 4329, column: 31)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !526, line: 4329, column: 16)
!5609 = distinct !DILexicalBlock(scope: !5600, file: !526, line: 4329, column: 10)
!5610 = !DILocation(line: 4329, column: 218, scope: !5606)
!5611 = !DILocation(line: 4329, column: 201, scope: !5612)
!5612 = !DILexicalBlockFile(scope: !5606, file: !526, discriminator: 2)
!5613 = !DILocation(line: 4329, column: 112, scope: !5614)
!5614 = !DILexicalBlockFile(scope: !5606, file: !526, discriminator: 3)
!5615 = !DILocation(line: 4329, column: 230, scope: !5606)
!5616 = !DILocation(line: 4331, column: 4, scope: !5600)
!5617 = !DILocation(line: 4332, column: 22, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5596, file: !526, line: 4331, column: 11)
!5619 = !DILocation(line: 4332, column: 8, scope: !5618)
!5620 = !DILocation(line: 4332, column: 20, scope: !5618)
!5621 = !DILocation(line: 4333, column: 7, scope: !5618)
!5622 = distinct !{!5622, !5621}
!5623 = !DILocation(line: 4333, column: 33, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !5625, file: !526, discriminator: 1)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !526, line: 4333, column: 31)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !526, line: 4333, column: 16)
!5627 = distinct !DILexicalBlock(scope: !5618, file: !526, line: 4333, column: 10)
!5628 = !DILocation(line: 4333, column: 191, scope: !5624)
!5629 = !DILocation(line: 4333, column: 190, scope: !5624)
!5630 = !DILocation(line: 4333, column: 112, scope: !5631)
!5631 = !DILexicalBlockFile(scope: !5624, file: !526, discriminator: 2)
!5632 = !DILocation(line: 4333, column: 207, scope: !5624)
!5633 = !DILocation(line: 4335, column: 11, scope: !5521)
!5634 = !DILocation(line: 4335, column: 4, scope: !5521)
!5635 = !DILocation(line: 4336, column: 1, scope: !5521)
!5636 = distinct !DISubprogram(name: "HgfsWriteCheckIORange", scope: !526, file: !526, line: 5283, type: !5637, isLocal: true, isDefinition: true, scopeLine: 5285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!609, !5639, !510}
!5639 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !516, line: 88, baseType: !5640)
!5640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !518, line: 132, baseType: !570)
!5641 = !DILocalVariable(name: "offset", arg: 1, scope: !5636, file: !526, line: 5283, type: !5639)
!5642 = !DILocation(line: 5283, column: 29, scope: !5636)
!5643 = !DILocalVariable(name: "bytesToWrite", arg: 2, scope: !5636, file: !526, line: 5284, type: !510)
!5644 = !DILocation(line: 5284, column: 30, scope: !5636)
!5645 = !DILocalVariable(name: "status", scope: !5636, file: !526, line: 5286, type: !609)
!5646 = !DILocation(line: 5286, column: 23, scope: !5636)
!5647 = !DILocalVariable(name: "fileSize", scope: !5636, file: !526, line: 5287, type: !5648)
!5648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !486, line: 139, size: 128, align: 64, elements: !5649)
!5649 = !{!5650, !5653}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5648, file: !486, line: 142, baseType: !5651, size: 64, align: 64)
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !486, line: 133, baseType: !5652)
!5652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim64_t", file: !518, line: 137, baseType: !532)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5648, file: !486, line: 144, baseType: !5651, size: 64, align: 64, offset: 64)
!5654 = !DILocation(line: 5287, column: 18, scope: !5636)
!5655 = !DILocation(line: 5289, column: 8, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5636, file: !526, line: 5289, column: 8)
!5657 = !DILocation(line: 5289, column: 42, scope: !5656)
!5658 = !DILocation(line: 5289, column: 8, scope: !5636)
!5659 = !DILocation(line: 5290, column: 17, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !526, line: 5289, column: 47)
!5661 = !DILocation(line: 5290, column: 16, scope: !5660)
!5662 = !DILocation(line: 5290, column: 14, scope: !5660)
!5663 = !DILocation(line: 5291, column: 7, scope: !5660)
!5664 = distinct !{!5664, !5663}
!5665 = !DILocation(line: 5291, column: 33, scope: !5666)
!5666 = !DILexicalBlockFile(scope: !5667, file: !526, discriminator: 1)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !526, line: 5291, column: 31)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !526, line: 5291, column: 16)
!5669 = distinct !DILexicalBlock(scope: !5660, file: !526, line: 5291, column: 10)
!5670 = !DILocation(line: 5291, column: 112, scope: !5671)
!5671 = !DILexicalBlockFile(scope: !5666, file: !526, discriminator: 2)
!5672 = !DILocation(line: 5291, column: 208, scope: !5666)
!5673 = !DILocation(line: 5292, column: 7, scope: !5660)
!5674 = !DILocation(line: 5295, column: 4, scope: !5636)
!5675 = distinct !{!5675, !5674}
!5676 = !DILocation(line: 5295, column: 30, scope: !5677)
!5677 = !DILexicalBlockFile(scope: !5678, file: !526, discriminator: 1)
!5678 = distinct !DILexicalBlock(scope: !5679, file: !526, line: 5295, column: 28)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !526, line: 5295, column: 13)
!5680 = distinct !DILexicalBlock(scope: !5636, file: !526, line: 5295, column: 7)
!5681 = !DILocation(line: 5295, column: 219, scope: !5677)
!5682 = !DILocation(line: 5295, column: 238, scope: !5677)
!5683 = !DILocation(line: 5295, column: 109, scope: !5684)
!5684 = !DILexicalBlockFile(scope: !5677, file: !526, discriminator: 2)
!5685 = !DILocation(line: 5295, column: 251, scope: !5677)
!5686 = !DILocation(line: 5301, column: 17, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5636, file: !526, line: 5301, column: 8)
!5688 = !DILocation(line: 5301, column: 28, scope: !5687)
!5689 = !DILocation(line: 5301, column: 26, scope: !5687)
!5690 = !DILocation(line: 5301, column: 8, scope: !5636)
!5691 = !DILocation(line: 5302, column: 14, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5687, file: !526, line: 5301, column: 36)
!5693 = !DILocation(line: 5303, column: 7, scope: !5692)
!5694 = distinct !{!5694, !5693}
!5695 = !DILocation(line: 5303, column: 33, scope: !5696)
!5696 = !DILexicalBlockFile(scope: !5697, file: !526, discriminator: 1)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !526, line: 5303, column: 31)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !526, line: 5303, column: 16)
!5699 = distinct !DILexicalBlock(scope: !5692, file: !526, line: 5303, column: 10)
!5700 = !DILocation(line: 5303, column: 228, scope: !5696)
!5701 = !DILocation(line: 5303, column: 112, scope: !5702)
!5702 = !DILexicalBlockFile(scope: !5696, file: !526, discriminator: 2)
!5703 = !DILocation(line: 5303, column: 239, scope: !5696)
!5704 = !DILocation(line: 5305, column: 7, scope: !5692)
!5705 = !DILocation(line: 5311, column: 17, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5636, file: !526, line: 5311, column: 8)
!5707 = !DILocation(line: 5311, column: 28, scope: !5706)
!5708 = !DILocation(line: 5311, column: 26, scope: !5706)
!5709 = !DILocation(line: 5311, column: 37, scope: !5706)
!5710 = !DILocation(line: 5311, column: 35, scope: !5706)
!5711 = !DILocation(line: 5311, column: 8, scope: !5636)
!5712 = !DILocation(line: 5312, column: 14, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5706, file: !526, line: 5311, column: 51)
!5714 = !DILocation(line: 5313, column: 7, scope: !5713)
!5715 = distinct !{!5715, !5714}
!5716 = !DILocation(line: 5313, column: 33, scope: !5717)
!5717 = !DILexicalBlockFile(scope: !5718, file: !526, discriminator: 1)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !526, line: 5313, column: 31)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !526, line: 5313, column: 16)
!5720 = distinct !DILexicalBlock(scope: !5713, file: !526, line: 5313, column: 10)
!5721 = !DILocation(line: 5313, column: 236, scope: !5717)
!5722 = !DILocation(line: 5313, column: 250, scope: !5717)
!5723 = !DILocation(line: 5313, column: 112, scope: !5724)
!5724 = !DILexicalBlockFile(scope: !5717, file: !526, discriminator: 2)
!5725 = !DILocation(line: 5313, column: 261, scope: !5717)
!5726 = !DILocation(line: 5315, column: 7, scope: !5713)
!5727 = !DILocation(line: 5311, column: 37, scope: !5728)
!5728 = !DILexicalBlockFile(scope: !5706, file: !526, discriminator: 1)
!5729 = !DILocation(line: 5319, column: 4, scope: !5636)
!5730 = distinct !{!5730, !5729}
!5731 = !DILocation(line: 5319, column: 30, scope: !5732)
!5732 = !DILexicalBlockFile(scope: !5733, file: !526, discriminator: 1)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !526, line: 5319, column: 28)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !526, line: 5319, column: 13)
!5735 = distinct !DILexicalBlock(scope: !5636, file: !526, line: 5319, column: 7)
!5736 = !DILocation(line: 5319, column: 217, scope: !5732)
!5737 = !DILocation(line: 5319, column: 231, scope: !5732)
!5738 = !DILocation(line: 5319, column: 239, scope: !5732)
!5739 = !DILocation(line: 5319, column: 109, scope: !5740)
!5740 = !DILexicalBlockFile(scope: !5732, file: !526, discriminator: 2)
!5741 = !DILocation(line: 5319, column: 250, scope: !5732)
!5742 = !DILocation(line: 5321, column: 11, scope: !5636)
!5743 = !DILocation(line: 5321, column: 4, scope: !5636)
!5744 = distinct !DISubprogram(name: "HgfsPlatformSearchDir", scope: !526, file: !526, line: 4357, type: !5745, isLocal: false, isDefinition: true, scopeLine: 4366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!609, !611, !522, !771, !510, !5747, !519, !510, !863, !5748}
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!5749 = !DILocalVariable(name: "nameStatus", arg: 1, scope: !5744, file: !526, line: 4357, type: !611)
!5750 = !DILocation(line: 4357, column: 38, scope: !5744)
!5751 = !DILocalVariable(name: "dirName", arg: 2, scope: !5744, file: !526, line: 4358, type: !522)
!5752 = !DILocation(line: 4358, column: 35, scope: !5744)
!5753 = !DILocalVariable(name: "dirNameLength", arg: 3, scope: !5744, file: !526, line: 4359, type: !771)
!5754 = !DILocation(line: 4359, column: 30, scope: !5744)
!5755 = !DILocalVariable(name: "caseFlags", arg: 4, scope: !5744, file: !526, line: 4360, type: !510)
!5756 = !DILocation(line: 4360, column: 30, scope: !5744)
!5757 = !DILocalVariable(name: "shareInfo", arg: 5, scope: !5744, file: !526, line: 4361, type: !5747)
!5758 = !DILocation(line: 4361, column: 38, scope: !5744)
!5759 = !DILocalVariable(name: "baseDir", arg: 6, scope: !5744, file: !526, line: 4362, type: !519)
!5760 = !DILocation(line: 4362, column: 29, scope: !5744)
!5761 = !DILocalVariable(name: "baseDirLen", arg: 7, scope: !5744, file: !526, line: 4363, type: !510)
!5762 = !DILocation(line: 4363, column: 30, scope: !5744)
!5763 = !DILocalVariable(name: "session", arg: 8, scope: !5744, file: !526, line: 4364, type: !863)
!5764 = !DILocation(line: 4364, column: 40, scope: !5744)
!5765 = !DILocalVariable(name: "handle", arg: 9, scope: !5744, file: !526, line: 4365, type: !5748)
!5766 = !DILocation(line: 4365, column: 35, scope: !5744)
!5767 = !DILocalVariable(name: "status", scope: !5744, file: !526, line: 4367, type: !609)
!5768 = !DILocation(line: 4367, column: 23, scope: !5744)
!5769 = !DILocation(line: 4368, column: 12, scope: !5744)
!5770 = !DILocation(line: 4368, column: 4, scope: !5744)
!5771 = !DILocalVariable(name: "inEnd", scope: !5772, file: !526, line: 4371, type: !522)
!5772 = distinct !DILexicalBlock(scope: !5773, file: !526, line: 4370, column: 4)
!5773 = distinct !DILexicalBlock(scope: !5744, file: !526, line: 4368, column: 24)
!5774 = !DILocation(line: 4371, column: 19, scope: !5772)
!5775 = !DILocalVariable(name: "next", scope: !5772, file: !526, line: 4372, type: !522)
!5776 = !DILocation(line: 4372, column: 19, scope: !5772)
!5777 = !DILocalVariable(name: "len", scope: !5772, file: !526, line: 4373, type: !550)
!5778 = !DILocation(line: 4373, column: 11, scope: !5772)
!5779 = !DILocation(line: 4376, column: 7, scope: !5772)
!5780 = distinct !{!5780, !5779}
!5781 = !DILocation(line: 4376, column: 33, scope: !5782)
!5782 = !DILexicalBlockFile(scope: !5783, file: !526, discriminator: 1)
!5783 = distinct !DILexicalBlock(scope: !5784, file: !526, line: 4376, column: 31)
!5784 = distinct !DILexicalBlock(scope: !5785, file: !526, line: 4376, column: 16)
!5785 = distinct !DILexicalBlock(scope: !5772, file: !526, line: 4376, column: 10)
!5786 = !DILocation(line: 4376, column: 200, scope: !5782)
!5787 = !DILocation(line: 4376, column: 209, scope: !5782)
!5788 = !DILocation(line: 4376, column: 112, scope: !5789)
!5789 = !DILexicalBlockFile(scope: !5782, file: !526, discriminator: 2)
!5790 = !DILocation(line: 4376, column: 221, scope: !5782)
!5791 = !DILocation(line: 4379, column: 15, scope: !5772)
!5792 = !DILocation(line: 4379, column: 25, scope: !5772)
!5793 = !DILocation(line: 4379, column: 23, scope: !5772)
!5794 = !DILocation(line: 4379, column: 13, scope: !5772)
!5795 = !DILocation(line: 4382, column: 33, scope: !5772)
!5796 = !DILocation(line: 4382, column: 42, scope: !5772)
!5797 = !DILocation(line: 4382, column: 13, scope: !5772)
!5798 = !DILocation(line: 4382, column: 11, scope: !5772)
!5799 = !DILocation(line: 4383, column: 11, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5772, file: !526, line: 4383, column: 11)
!5801 = !DILocation(line: 4383, column: 15, scope: !5800)
!5802 = !DILocation(line: 4383, column: 11, scope: !5772)
!5803 = !DILocation(line: 4384, column: 15, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !526, line: 4384, column: 14)
!5805 = distinct !DILexicalBlock(scope: !5800, file: !526, line: 4383, column: 21)
!5806 = !DILocation(line: 4384, column: 14, scope: !5804)
!5807 = !DILocation(line: 4384, column: 21, scope: !5804)
!5808 = !DILocation(line: 4384, column: 14, scope: !5805)
!5809 = !DILocation(line: 4385, column: 13, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5804, file: !526, line: 4384, column: 30)
!5811 = distinct !{!5811, !5809}
!5812 = !DILocation(line: 4385, column: 39, scope: !5813)
!5813 = !DILexicalBlockFile(scope: !5814, file: !526, discriminator: 1)
!5814 = distinct !DILexicalBlock(scope: !5815, file: !526, line: 4385, column: 37)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !526, line: 4385, column: 22)
!5816 = distinct !DILexicalBlock(scope: !5810, file: !526, line: 4385, column: 16)
!5817 = !DILocation(line: 4385, column: 118, scope: !5818)
!5818 = !DILexicalBlockFile(scope: !5813, file: !526, discriminator: 2)
!5819 = !DILocation(line: 4385, column: 213, scope: !5813)
!5820 = !DILocation(line: 4392, column: 22, scope: !5810)
!5821 = !DILocation(line: 4392, column: 28, scope: !5810)
!5822 = !DILocation(line: 4393, column: 10, scope: !5810)
!5823 = !DILocation(line: 4395, column: 10, scope: !5805)
!5824 = distinct !{!5824, !5823}
!5825 = !DILocation(line: 4395, column: 36, scope: !5826)
!5826 = !DILexicalBlockFile(scope: !5827, file: !526, discriminator: 1)
!5827 = distinct !DILexicalBlock(scope: !5828, file: !526, line: 4395, column: 34)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !526, line: 4395, column: 19)
!5829 = distinct !DILexicalBlock(scope: !5805, file: !526, line: 4395, column: 13)
!5830 = !DILocation(line: 4395, column: 191, scope: !5826)
!5831 = !DILocation(line: 4395, column: 115, scope: !5832)
!5832 = !DILexicalBlockFile(scope: !5826, file: !526, discriminator: 2)
!5833 = !DILocation(line: 4395, column: 203, scope: !5826)
!5834 = !DILocation(line: 4396, column: 43, scope: !5805)
!5835 = !DILocation(line: 4397, column: 43, scope: !5805)
!5836 = !DILocation(line: 4398, column: 43, scope: !5805)
!5837 = !DILocation(line: 4399, column: 43, scope: !5805)
!5838 = !DILocation(line: 4399, column: 54, scope: !5805)
!5839 = !DILocation(line: 4400, column: 43, scope: !5805)
!5840 = !DILocation(line: 4401, column: 43, scope: !5805)
!5841 = !DILocation(line: 4396, column: 19, scope: !5805)
!5842 = !DILocation(line: 4396, column: 17, scope: !5805)
!5843 = !DILocation(line: 4402, column: 7, scope: !5805)
!5844 = !DILocation(line: 4403, column: 10, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5800, file: !526, line: 4402, column: 14)
!5846 = distinct !{!5846, !5844}
!5847 = !DILocation(line: 4403, column: 36, scope: !5848)
!5848 = !DILexicalBlockFile(scope: !5849, file: !526, discriminator: 1)
!5849 = distinct !DILexicalBlock(scope: !5850, file: !526, line: 4403, column: 34)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !526, line: 4403, column: 19)
!5851 = distinct !DILexicalBlock(scope: !5845, file: !526, line: 4403, column: 13)
!5852 = !DILocation(line: 4403, column: 115, scope: !5853)
!5853 = !DILexicalBlockFile(scope: !5848, file: !526, discriminator: 2)
!5854 = !DILocation(line: 4403, column: 208, scope: !5848)
!5855 = !DILocation(line: 4404, column: 17, scope: !5845)
!5856 = !DILocation(line: 4411, column: 12, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5772, file: !526, line: 4411, column: 11)
!5858 = !DILocation(line: 4411, column: 23, scope: !5857)
!5859 = !DILocation(line: 4411, column: 39, scope: !5857)
!5860 = !DILocation(line: 4411, column: 71, scope: !5861)
!5861 = !DILexicalBlockFile(scope: !5857, file: !526, discriminator: 1)
!5862 = !DILocation(line: 4411, column: 68, scope: !5861)
!5863 = !DILocation(line: 4411, column: 11, scope: !5861)
!5864 = !DILocation(line: 4412, column: 17, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5857, file: !526, line: 4411, column: 79)
!5866 = !DILocation(line: 4413, column: 7, scope: !5865)
!5867 = !DILocation(line: 4414, column: 11, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5772, file: !526, line: 4414, column: 11)
!5869 = !DILocation(line: 4414, column: 18, scope: !5868)
!5870 = !DILocation(line: 4414, column: 11, scope: !5772)
!5871 = !DILocation(line: 4415, column: 10, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5868, file: !526, line: 4414, column: 24)
!5873 = distinct !{!5873, !5871}
!5874 = !DILocation(line: 4415, column: 36, scope: !5875)
!5875 = !DILexicalBlockFile(scope: !5876, file: !526, discriminator: 1)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !526, line: 4415, column: 34)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !526, line: 4415, column: 19)
!5878 = distinct !DILexicalBlock(scope: !5872, file: !526, line: 4415, column: 13)
!5879 = !DILocation(line: 4415, column: 115, scope: !5880)
!5880 = !DILexicalBlockFile(scope: !5875, file: !526, discriminator: 2)
!5881 = !DILocation(line: 4415, column: 198, scope: !5875)
!5882 = !DILocation(line: 4416, column: 7, scope: !5872)
!5883 = !DILocation(line: 4417, column: 7, scope: !5772)
!5884 = !DILocation(line: 4426, column: 7, scope: !5773)
!5885 = distinct !{!5885, !5884}
!5886 = !DILocation(line: 4426, column: 33, scope: !5887)
!5887 = !DILexicalBlockFile(scope: !5888, file: !526, discriminator: 1)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !526, line: 4426, column: 31)
!5889 = distinct !DILexicalBlock(scope: !5890, file: !526, line: 4426, column: 16)
!5890 = distinct !DILexicalBlock(scope: !5773, file: !526, line: 4426, column: 10)
!5891 = !DILocation(line: 4426, column: 112, scope: !5892)
!5892 = !DILexicalBlockFile(scope: !5887, file: !526, discriminator: 2)
!5893 = !DILocation(line: 4426, column: 200, scope: !5887)
!5894 = !DILocation(line: 4431, column: 43, scope: !5773)
!5895 = !DILocation(line: 4432, column: 43, scope: !5773)
!5896 = !DILocation(line: 4427, column: 16, scope: !5773)
!5897 = !DILocation(line: 4427, column: 14, scope: !5773)
!5898 = !DILocation(line: 4433, column: 11, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5773, file: !526, line: 4433, column: 11)
!5900 = !DILocation(line: 4433, column: 18, scope: !5899)
!5901 = !DILocation(line: 4433, column: 11, scope: !5773)
!5902 = !DILocation(line: 4434, column: 10, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5899, file: !526, line: 4433, column: 24)
!5904 = distinct !{!5904, !5902}
!5905 = !DILocation(line: 4434, column: 36, scope: !5906)
!5906 = !DILexicalBlockFile(scope: !5907, file: !526, discriminator: 1)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !526, line: 4434, column: 34)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !526, line: 4434, column: 19)
!5909 = distinct !DILexicalBlock(scope: !5903, file: !526, line: 4434, column: 13)
!5910 = !DILocation(line: 4434, column: 115, scope: !5911)
!5911 = !DILexicalBlockFile(scope: !5906, file: !526, discriminator: 2)
!5912 = !DILocation(line: 4434, column: 207, scope: !5906)
!5913 = !DILocation(line: 4435, column: 7, scope: !5903)
!5914 = !DILocation(line: 4436, column: 7, scope: !5773)
!5915 = !DILocation(line: 4439, column: 7, scope: !5773)
!5916 = distinct !{!5916, !5915}
!5917 = !DILocation(line: 4439, column: 33, scope: !5918)
!5918 = !DILexicalBlockFile(scope: !5919, file: !526, discriminator: 1)
!5919 = distinct !DILexicalBlock(scope: !5920, file: !526, line: 4439, column: 31)
!5920 = distinct !DILexicalBlock(scope: !5921, file: !526, line: 4439, column: 16)
!5921 = distinct !DILexicalBlock(scope: !5773, file: !526, line: 4439, column: 10)
!5922 = !DILocation(line: 4439, column: 112, scope: !5923)
!5923 = !DILexicalBlockFile(scope: !5918, file: !526, discriminator: 2)
!5924 = !DILocation(line: 4439, column: 198, scope: !5918)
!5925 = !DILocation(line: 4440, column: 50, scope: !5773)
!5926 = !DILocation(line: 4440, column: 16, scope: !5773)
!5927 = !DILocation(line: 4440, column: 14, scope: !5773)
!5928 = !DILocation(line: 4441, column: 4, scope: !5773)
!5929 = !DILocation(line: 4443, column: 8, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5744, file: !526, line: 4443, column: 8)
!5931 = !DILocation(line: 4443, column: 15, scope: !5930)
!5932 = !DILocation(line: 4443, column: 8, scope: !5744)
!5933 = !DILocation(line: 4444, column: 7, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5930, file: !526, line: 4443, column: 21)
!5935 = distinct !{!5935, !5933}
!5936 = !DILocation(line: 4444, column: 11, scope: !5937)
!5937 = !DILexicalBlockFile(scope: !5938, file: !526, discriminator: 1)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !526, line: 4444, column: 10)
!5939 = !DILocation(line: 4445, column: 4, scope: !5934)
!5940 = !DILocation(line: 4447, column: 11, scope: !5744)
!5941 = !DILocation(line: 4447, column: 4, scope: !5744)
!5942 = distinct !DISubprogram(name: "HgfsPlatformRestartSearchDir", scope: !526, file: !526, line: 4468, type: !5943, isLocal: false, isDefinition: true, scopeLine: 4471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{!609, !509, !863, !949}
!5945 = !DILocalVariable(name: "handle", arg: 1, scope: !5942, file: !526, line: 4468, type: !509)
!5946 = !DILocation(line: 4468, column: 41, scope: !5942)
!5947 = !DILocalVariable(name: "session", arg: 2, scope: !5942, file: !526, line: 4469, type: !863)
!5948 = !DILocation(line: 4469, column: 47, scope: !5942)
!5949 = !DILocalVariable(name: "searchType", arg: 3, scope: !5942, file: !526, line: 4470, type: !949)
!5950 = !DILocation(line: 4470, column: 50, scope: !5942)
!5951 = !DILocalVariable(name: "status", scope: !5942, file: !526, line: 4472, type: !609)
!5952 = !DILocation(line: 4472, column: 23, scope: !5942)
!5953 = !DILocation(line: 4474, column: 12, scope: !5942)
!5954 = !DILocation(line: 4474, column: 4, scope: !5942)
!5955 = !DILocation(line: 4480, column: 50, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5942, file: !526, line: 4474, column: 24)
!5957 = !DILocation(line: 4481, column: 50, scope: !5956)
!5958 = !DILocation(line: 4477, column: 16, scope: !5956)
!5959 = !DILocation(line: 4477, column: 14, scope: !5956)
!5960 = !DILocation(line: 4482, column: 7, scope: !5956)
!5961 = !DILocation(line: 4482, column: 7, scope: !5962)
!5962 = !DILexicalBlockFile(scope: !5956, file: !526, discriminator: 1)
!5963 = !DILocation(line: 4488, column: 14, scope: !5956)
!5964 = !DILocation(line: 4489, column: 7, scope: !5956)
!5965 = !DILocation(line: 4492, column: 11, scope: !5942)
!5966 = !DILocation(line: 4492, column: 4, scope: !5942)
!5967 = distinct !DISubprogram(name: "HgfsPlatformHandleIncompleteName", scope: !526, file: !526, line: 4513, type: !5968, isLocal: false, isDefinition: true, scopeLine: 4515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!609, !611, !630}
!5970 = !DILocalVariable(name: "nameStatus", arg: 1, scope: !5967, file: !526, line: 4513, type: !611)
!5971 = !DILocation(line: 4513, column: 49, scope: !5967)
!5972 = !DILocalVariable(name: "attr", arg: 2, scope: !5967, file: !526, line: 4514, type: !630)
!5973 = !DILocation(line: 4514, column: 52, scope: !5967)
!5974 = !DILocation(line: 4516, column: 45, scope: !5967)
!5975 = !DILocation(line: 4516, column: 11, scope: !5967)
!5976 = !DILocation(line: 4516, column: 4, scope: !5967)
!5977 = distinct !DISubprogram(name: "HgfsPlatformDeleteFileByName", scope: !526, file: !526, line: 4541, type: !5978, isLocal: false, isDefinition: true, scopeLine: 4542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!609, !522}
!5980 = !DILocalVariable(name: "utf8Name", arg: 1, scope: !5977, file: !526, line: 4541, type: !522)
!5981 = !DILocation(line: 4541, column: 42, scope: !5977)
!5982 = !DILocalVariable(name: "status", scope: !5977, file: !526, line: 4543, type: !609)
!5983 = !DILocation(line: 4543, column: 23, scope: !5977)
!5984 = !DILocation(line: 4545, column: 4, scope: !5977)
!5985 = distinct !{!5985, !5984}
!5986 = !DILocation(line: 4545, column: 30, scope: !5987)
!5987 = !DILexicalBlockFile(scope: !5988, file: !526, discriminator: 1)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !526, line: 4545, column: 28)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !526, line: 4545, column: 13)
!5990 = distinct !DILexicalBlock(scope: !5977, file: !526, line: 4545, column: 7)
!5991 = !DILocation(line: 4545, column: 189, scope: !5987)
!5992 = !DILocation(line: 4545, column: 109, scope: !5993)
!5993 = !DILexicalBlockFile(scope: !5987, file: !526, discriminator: 2)
!5994 = !DILocation(line: 4545, column: 202, scope: !5987)
!5995 = !DILocation(line: 4546, column: 26, scope: !5977)
!5996 = !DILocation(line: 4546, column: 13, scope: !5977)
!5997 = !DILocation(line: 4546, column: 11, scope: !5977)
!5998 = !DILocation(line: 4547, column: 8, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5977, file: !526, line: 4547, column: 8)
!6000 = !DILocation(line: 4547, column: 8, scope: !5977)
!6001 = !DILocation(line: 4548, column: 17, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5999, file: !526, line: 4547, column: 16)
!6003 = !DILocation(line: 4548, column: 16, scope: !6002)
!6004 = !DILocation(line: 4548, column: 14, scope: !6002)
!6005 = !DILocation(line: 4549, column: 7, scope: !6002)
!6006 = distinct !{!6006, !6005}
!6007 = !DILocation(line: 4549, column: 33, scope: !6008)
!6008 = !DILexicalBlockFile(scope: !6009, file: !526, discriminator: 1)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !526, line: 4549, column: 31)
!6010 = distinct !DILexicalBlock(scope: !6011, file: !526, line: 4549, column: 16)
!6011 = distinct !DILexicalBlock(scope: !6002, file: !526, line: 4549, column: 10)
!6012 = !DILocation(line: 4549, column: 202, scope: !6008)
!6013 = !DILocation(line: 4549, column: 185, scope: !6014)
!6014 = !DILexicalBlockFile(scope: !6008, file: !526, discriminator: 2)
!6015 = !DILocation(line: 4549, column: 112, scope: !6016)
!6016 = !DILexicalBlockFile(scope: !6008, file: !526, discriminator: 3)
!6017 = !DILocation(line: 4549, column: 214, scope: !6008)
!6018 = !DILocation(line: 4550, column: 4, scope: !6002)
!6019 = !DILocation(line: 4551, column: 11, scope: !5977)
!6020 = !DILocation(line: 4551, column: 4, scope: !5977)
!6021 = distinct !DISubprogram(name: "HgfsPlatformDeleteFileByHandle", scope: !526, file: !526, line: 4577, type: !6022, isLocal: false, isDefinition: true, scopeLine: 4579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{!609, !509, !863}
!6024 = !DILocalVariable(name: "file", arg: 1, scope: !6021, file: !526, line: 4577, type: !509)
!6025 = !DILocation(line: 4577, column: 43, scope: !6021)
!6026 = !DILocalVariable(name: "session", arg: 2, scope: !6021, file: !526, line: 4578, type: !863)
!6027 = !DILocation(line: 4578, column: 49, scope: !6021)
!6028 = !DILocalVariable(name: "status", scope: !6021, file: !526, line: 4580, type: !609)
!6029 = !DILocation(line: 4580, column: 23, scope: !6021)
!6030 = !DILocalVariable(name: "readPermissions", scope: !6021, file: !526, line: 4581, type: !729)
!6031 = !DILocation(line: 4581, column: 9, scope: !6021)
!6032 = !DILocalVariable(name: "writePermissions", scope: !6021, file: !526, line: 4582, type: !729)
!6033 = !DILocation(line: 4582, column: 9, scope: !6021)
!6034 = !DILocalVariable(name: "localName", scope: !6021, file: !526, line: 4583, type: !519)
!6035 = !DILocation(line: 4583, column: 10, scope: !6021)
!6036 = !DILocalVariable(name: "localNameSize", scope: !6021, file: !526, line: 4584, type: !771)
!6037 = !DILocation(line: 4584, column: 11, scope: !6021)
!6038 = !DILocation(line: 4586, column: 32, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6021, file: !526, line: 4586, column: 8)
!6040 = !DILocation(line: 4586, column: 38, scope: !6039)
!6041 = !DILocation(line: 4586, column: 8, scope: !6039)
!6042 = !DILocation(line: 4586, column: 8, scope: !6021)
!6043 = !DILocation(line: 4588, column: 11, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !526, line: 4588, column: 11)
!6045 = distinct !DILexicalBlock(scope: !6039, file: !526, line: 4587, column: 79)
!6046 = !DILocation(line: 4588, column: 28, scope: !6044)
!6047 = !DILocation(line: 4588, column: 31, scope: !6048)
!6048 = !DILexicalBlockFile(scope: !6044, file: !526, discriminator: 1)
!6049 = !DILocation(line: 4588, column: 11, scope: !6048)
!6050 = !DILocation(line: 4589, column: 48, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6044, file: !526, line: 4588, column: 48)
!6052 = !DILocation(line: 4589, column: 19, scope: !6051)
!6053 = !DILocation(line: 4589, column: 17, scope: !6051)
!6054 = !DILocation(line: 4590, column: 7, scope: !6051)
!6055 = !DILocation(line: 4591, column: 17, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6044, file: !526, line: 4590, column: 14)
!6057 = !DILocation(line: 4593, column: 12, scope: !6045)
!6058 = !DILocation(line: 4593, column: 7, scope: !6045)
!6059 = !DILocation(line: 4594, column: 4, scope: !6045)
!6060 = !DILocation(line: 4595, column: 7, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6039, file: !526, line: 4594, column: 11)
!6062 = distinct !{!6062, !6060}
!6063 = !DILocation(line: 4595, column: 33, scope: !6064)
!6064 = !DILexicalBlockFile(scope: !6065, file: !526, discriminator: 1)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !526, line: 4595, column: 31)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !526, line: 4595, column: 16)
!6067 = distinct !DILexicalBlock(scope: !6061, file: !526, line: 4595, column: 10)
!6068 = !DILocation(line: 4595, column: 211, scope: !6064)
!6069 = !DILocation(line: 4595, column: 112, scope: !6070)
!6070 = !DILexicalBlockFile(scope: !6064, file: !526, discriminator: 2)
!6071 = !DILocation(line: 4595, column: 220, scope: !6064)
!6072 = !DILocation(line: 4596, column: 14, scope: !6061)
!6073 = !DILocation(line: 4598, column: 11, scope: !6021)
!6074 = !DILocation(line: 4598, column: 4, scope: !6021)
!6075 = distinct !DISubprogram(name: "HgfsPlatformDeleteDirByName", scope: !526, file: !526, line: 4623, type: !5978, isLocal: false, isDefinition: true, scopeLine: 4624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6076 = !DILocalVariable(name: "utf8Name", arg: 1, scope: !6075, file: !526, line: 4623, type: !522)
!6077 = !DILocation(line: 4623, column: 41, scope: !6075)
!6078 = !DILocalVariable(name: "status", scope: !6075, file: !526, line: 4625, type: !609)
!6079 = !DILocation(line: 4625, column: 23, scope: !6075)
!6080 = !DILocation(line: 4627, column: 4, scope: !6075)
!6081 = distinct !{!6081, !6080}
!6082 = !DILocation(line: 4627, column: 30, scope: !6083)
!6083 = !DILexicalBlockFile(scope: !6084, file: !526, discriminator: 1)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !526, line: 4627, column: 28)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !526, line: 4627, column: 13)
!6086 = distinct !DILexicalBlock(scope: !6075, file: !526, line: 4627, column: 7)
!6087 = !DILocation(line: 4627, column: 188, scope: !6083)
!6088 = !DILocation(line: 4627, column: 109, scope: !6089)
!6089 = !DILexicalBlockFile(scope: !6083, file: !526, discriminator: 2)
!6090 = !DILocation(line: 4627, column: 201, scope: !6083)
!6091 = !DILocation(line: 4628, column: 25, scope: !6075)
!6092 = !DILocation(line: 4628, column: 13, scope: !6075)
!6093 = !DILocation(line: 4628, column: 11, scope: !6075)
!6094 = !DILocation(line: 4629, column: 8, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6075, file: !526, line: 4629, column: 8)
!6096 = !DILocation(line: 4629, column: 8, scope: !6075)
!6097 = !DILocation(line: 4630, column: 17, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6095, file: !526, line: 4629, column: 16)
!6099 = !DILocation(line: 4630, column: 16, scope: !6098)
!6100 = !DILocation(line: 4630, column: 14, scope: !6098)
!6101 = !DILocation(line: 4631, column: 7, scope: !6098)
!6102 = distinct !{!6102, !6101}
!6103 = !DILocation(line: 4631, column: 33, scope: !6104)
!6104 = !DILexicalBlockFile(scope: !6105, file: !526, discriminator: 1)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !526, line: 4631, column: 31)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !526, line: 4631, column: 16)
!6107 = distinct !DILexicalBlock(scope: !6098, file: !526, line: 4631, column: 10)
!6108 = !DILocation(line: 4631, column: 202, scope: !6104)
!6109 = !DILocation(line: 4631, column: 185, scope: !6110)
!6110 = !DILexicalBlockFile(scope: !6104, file: !526, discriminator: 2)
!6111 = !DILocation(line: 4631, column: 112, scope: !6112)
!6112 = !DILexicalBlockFile(scope: !6104, file: !526, discriminator: 3)
!6113 = !DILocation(line: 4631, column: 214, scope: !6104)
!6114 = !DILocation(line: 4632, column: 4, scope: !6098)
!6115 = !DILocation(line: 4633, column: 11, scope: !6075)
!6116 = !DILocation(line: 4633, column: 4, scope: !6075)
!6117 = distinct !DISubprogram(name: "HgfsPlatformDeleteDirByHandle", scope: !526, file: !526, line: 4659, type: !6022, isLocal: false, isDefinition: true, scopeLine: 4661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6118 = !DILocalVariable(name: "file", arg: 1, scope: !6117, file: !526, line: 4659, type: !509)
!6119 = !DILocation(line: 4659, column: 42, scope: !6117)
!6120 = !DILocalVariable(name: "session", arg: 2, scope: !6117, file: !526, line: 4660, type: !863)
!6121 = !DILocation(line: 4660, column: 48, scope: !6117)
!6122 = !DILocalVariable(name: "status", scope: !6117, file: !526, line: 4662, type: !609)
!6123 = !DILocation(line: 4662, column: 23, scope: !6117)
!6124 = !DILocalVariable(name: "readPermissions", scope: !6117, file: !526, line: 4663, type: !729)
!6125 = !DILocation(line: 4663, column: 9, scope: !6117)
!6126 = !DILocalVariable(name: "writePermissions", scope: !6117, file: !526, line: 4664, type: !729)
!6127 = !DILocation(line: 4664, column: 9, scope: !6117)
!6128 = !DILocalVariable(name: "localName", scope: !6117, file: !526, line: 4665, type: !519)
!6129 = !DILocation(line: 4665, column: 10, scope: !6117)
!6130 = !DILocalVariable(name: "localNameSize", scope: !6117, file: !526, line: 4666, type: !771)
!6131 = !DILocation(line: 4666, column: 11, scope: !6117)
!6132 = !DILocation(line: 4668, column: 32, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6117, file: !526, line: 4668, column: 8)
!6134 = !DILocation(line: 4668, column: 38, scope: !6133)
!6135 = !DILocation(line: 4668, column: 8, scope: !6133)
!6136 = !DILocation(line: 4668, column: 8, scope: !6117)
!6137 = !DILocation(line: 4670, column: 11, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6139, file: !526, line: 4670, column: 11)
!6139 = distinct !DILexicalBlock(scope: !6133, file: !526, line: 4669, column: 79)
!6140 = !DILocation(line: 4670, column: 28, scope: !6138)
!6141 = !DILocation(line: 4670, column: 31, scope: !6142)
!6142 = !DILexicalBlockFile(scope: !6138, file: !526, discriminator: 1)
!6143 = !DILocation(line: 4670, column: 11, scope: !6142)
!6144 = !DILocation(line: 4671, column: 47, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6138, file: !526, line: 4670, column: 48)
!6146 = !DILocation(line: 4671, column: 19, scope: !6145)
!6147 = !DILocation(line: 4671, column: 17, scope: !6145)
!6148 = !DILocation(line: 4672, column: 7, scope: !6145)
!6149 = !DILocation(line: 4673, column: 17, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6138, file: !526, line: 4672, column: 14)
!6151 = !DILocation(line: 4675, column: 12, scope: !6139)
!6152 = !DILocation(line: 4675, column: 7, scope: !6139)
!6153 = !DILocation(line: 4676, column: 4, scope: !6139)
!6154 = !DILocation(line: 4677, column: 7, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6133, file: !526, line: 4676, column: 11)
!6156 = distinct !{!6156, !6154}
!6157 = !DILocation(line: 4677, column: 33, scope: !6158)
!6158 = !DILexicalBlockFile(scope: !6159, file: !526, discriminator: 1)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !526, line: 4677, column: 31)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !526, line: 4677, column: 16)
!6161 = distinct !DILexicalBlock(scope: !6155, file: !526, line: 4677, column: 10)
!6162 = !DILocation(line: 4677, column: 211, scope: !6158)
!6163 = !DILocation(line: 4677, column: 112, scope: !6164)
!6164 = !DILexicalBlockFile(scope: !6158, file: !526, discriminator: 2)
!6165 = !DILocation(line: 4677, column: 220, scope: !6158)
!6166 = !DILocation(line: 4678, column: 14, scope: !6155)
!6167 = !DILocation(line: 4680, column: 11, scope: !6117)
!6168 = !DILocation(line: 4680, column: 4, scope: !6117)
!6169 = distinct !DISubprogram(name: "HgfsPlatformFileExists", scope: !526, file: !526, line: 4702, type: !6170, isLocal: false, isDefinition: true, scopeLine: 4703, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!609, !519}
!6172 = !DILocalVariable(name: "localTargetName", arg: 1, scope: !6169, file: !526, line: 4702, type: !519)
!6173 = !DILocation(line: 4702, column: 30, scope: !6169)
!6174 = !DILocalVariable(name: "err", scope: !6169, file: !526, line: 4704, type: !550)
!6175 = !DILocation(line: 4704, column: 8, scope: !6169)
!6176 = !DILocation(line: 4705, column: 23, scope: !6169)
!6177 = !DILocation(line: 4705, column: 10, scope: !6169)
!6178 = !DILocation(line: 4705, column: 8, scope: !6169)
!6179 = !DILocation(line: 4706, column: 14, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6169, file: !526, line: 4706, column: 8)
!6181 = !DILocation(line: 4706, column: 11, scope: !6180)
!6182 = !DILocation(line: 4706, column: 8, scope: !6169)
!6183 = !DILocation(line: 4707, column: 14, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6180, file: !526, line: 4706, column: 19)
!6185 = !DILocation(line: 4707, column: 13, scope: !6184)
!6186 = !DILocation(line: 4707, column: 11, scope: !6184)
!6187 = !DILocation(line: 4708, column: 4, scope: !6184)
!6188 = !DILocation(line: 4709, column: 11, scope: !6169)
!6189 = !DILocation(line: 4709, column: 4, scope: !6169)
!6190 = distinct !DISubprogram(name: "HgfsPlatformRename", scope: !526, file: !526, line: 4730, type: !6191, isLocal: false, isDefinition: true, scopeLine: 4735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!609, !519, !827, !519, !827, !6193}
!6193 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsRenameHint", file: !20, line: 348, baseType: !530)
!6194 = !DILocalVariable(name: "localSrcName", arg: 1, scope: !6190, file: !526, line: 4730, type: !519)
!6195 = !DILocation(line: 4730, column: 26, scope: !6190)
!6196 = !DILocalVariable(name: "srcFile", arg: 2, scope: !6190, file: !526, line: 4731, type: !827)
!6197 = !DILocation(line: 4731, column: 29, scope: !6190)
!6198 = !DILocalVariable(name: "localTargetName", arg: 3, scope: !6190, file: !526, line: 4732, type: !519)
!6199 = !DILocation(line: 4732, column: 26, scope: !6190)
!6200 = !DILocalVariable(name: "targetFile", arg: 4, scope: !6190, file: !526, line: 4733, type: !827)
!6201 = !DILocation(line: 4733, column: 29, scope: !6190)
!6202 = !DILocalVariable(name: "hints", arg: 5, scope: !6190, file: !526, line: 4734, type: !6193)
!6203 = !DILocation(line: 4734, column: 35, scope: !6190)
!6204 = !DILocalVariable(name: "status", scope: !6190, file: !526, line: 4736, type: !609)
!6205 = !DILocation(line: 4736, column: 23, scope: !6190)
!6206 = !DILocation(line: 4738, column: 8, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6190, file: !526, line: 4738, column: 8)
!6208 = !DILocation(line: 4738, column: 14, scope: !6207)
!6209 = !DILocation(line: 4738, column: 8, scope: !6190)
!6210 = !DILocation(line: 4739, column: 39, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6212, file: !526, line: 4739, column: 11)
!6212 = distinct !DILexicalBlock(scope: !6207, file: !526, line: 4738, column: 26)
!6213 = !DILocation(line: 4739, column: 16, scope: !6211)
!6214 = !DILocation(line: 4739, column: 13, scope: !6211)
!6215 = !DILocation(line: 4739, column: 11, scope: !6212)
!6216 = !DILocation(line: 4740, column: 17, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6211, file: !526, line: 4739, column: 57)
!6218 = !DILocation(line: 4741, column: 10, scope: !6217)
!6219 = !DILocation(line: 4743, column: 4, scope: !6212)
!6220 = !DILocation(line: 4745, column: 4, scope: !6190)
!6221 = distinct !{!6221, !6220}
!6222 = !DILocation(line: 4745, column: 30, scope: !6223)
!6223 = !DILexicalBlockFile(scope: !6224, file: !526, discriminator: 1)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !526, line: 4745, column: 28)
!6225 = distinct !DILexicalBlock(scope: !6226, file: !526, line: 4745, column: 13)
!6226 = distinct !DILexicalBlock(scope: !6190, file: !526, line: 4745, column: 7)
!6227 = !DILocation(line: 4745, column: 198, scope: !6223)
!6228 = !DILocation(line: 4745, column: 212, scope: !6223)
!6229 = !DILocation(line: 4745, column: 109, scope: !6230)
!6230 = !DILexicalBlockFile(scope: !6223, file: !526, discriminator: 2)
!6231 = !DILocation(line: 4745, column: 232, scope: !6223)
!6232 = !DILocation(line: 4747, column: 26, scope: !6190)
!6233 = !DILocation(line: 4747, column: 40, scope: !6190)
!6234 = !DILocation(line: 4747, column: 13, scope: !6190)
!6235 = !DILocation(line: 4747, column: 11, scope: !6190)
!6236 = !DILocation(line: 4748, column: 8, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6190, file: !526, line: 4748, column: 8)
!6238 = !DILocation(line: 4748, column: 8, scope: !6190)
!6239 = !DILocation(line: 4749, column: 17, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !526, line: 4748, column: 16)
!6241 = !DILocation(line: 4749, column: 16, scope: !6240)
!6242 = !DILocation(line: 4749, column: 14, scope: !6240)
!6243 = !DILocation(line: 4750, column: 7, scope: !6240)
!6244 = distinct !{!6244, !6243}
!6245 = !DILocation(line: 4750, column: 33, scope: !6246)
!6246 = !DILexicalBlockFile(scope: !6247, file: !526, discriminator: 1)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !526, line: 4750, column: 31)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !526, line: 4750, column: 16)
!6249 = distinct !DILexicalBlock(scope: !6240, file: !526, line: 4750, column: 10)
!6250 = !DILocation(line: 4750, column: 202, scope: !6246)
!6251 = !DILocation(line: 4750, column: 185, scope: !6252)
!6252 = !DILexicalBlockFile(scope: !6246, file: !526, discriminator: 2)
!6253 = !DILocation(line: 4750, column: 112, scope: !6254)
!6254 = !DILexicalBlockFile(scope: !6246, file: !526, discriminator: 3)
!6255 = !DILocation(line: 4750, column: 214, scope: !6246)
!6256 = !DILocation(line: 4751, column: 4, scope: !6240)
!6257 = !DILocation(line: 4748, column: 8, scope: !6258)
!6258 = !DILexicalBlockFile(scope: !6237, file: !526, discriminator: 1)
!6259 = !DILocation(line: 4754, column: 11, scope: !6190)
!6260 = !DILocation(line: 4754, column: 4, scope: !6190)
!6261 = distinct !DISubprogram(name: "HgfsPlatformCreateDir", scope: !526, file: !526, line: 4780, type: !6262, isLocal: false, isDefinition: true, scopeLine: 4782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6262 = !DISubroutineType(types: !6263)
!6263 = !{!609, !6264, !519}
!6264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6265, size: 64, align: 64)
!6265 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsCreateDirInfo", file: !129, line: 500, baseType: !6266)
!6266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsCreateDirInfo", file: !129, line: 489, size: 384, align: 64, elements: !6267)
!6267 = !{!6268, !6269, !6271, !6272, !6273, !6274, !6275, !6276, !6277, !6278}
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "requestType", scope: !6266, file: !129, line: 490, baseType: !635, size: 32, align: 32)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !6266, file: !129, line: 491, baseType: !6270, size: 64, align: 64, offset: 64)
!6270 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsCreateDirValid", file: !20, line: 488, baseType: !530)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "specialPerms", scope: !6266, file: !129, line: 492, baseType: !646, size: 8, align: 8, offset: 128)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "ownerPerms", scope: !6266, file: !129, line: 493, baseType: !646, size: 8, align: 8, offset: 136)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "groupPerms", scope: !6266, file: !129, line: 494, baseType: !646, size: 8, align: 8, offset: 144)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "otherPerms", scope: !6266, file: !129, line: 495, baseType: !646, size: 8, align: 8, offset: 152)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "cpNameSize", scope: !6266, file: !129, line: 496, baseType: !510, size: 32, align: 32, offset: 160)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "cpName", scope: !6266, file: !129, line: 497, baseType: !522, size: 64, align: 64, offset: 192)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "caseFlags", scope: !6266, file: !129, line: 498, baseType: !510, size: 32, align: 32, offset: 256)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "fileAttr", scope: !6266, file: !129, line: 499, baseType: !651, size: 64, align: 64, offset: 320)
!6279 = !DILocalVariable(name: "info", arg: 1, scope: !6261, file: !526, line: 4780, type: !6264)
!6280 = !DILocation(line: 4780, column: 42, scope: !6261)
!6281 = !DILocalVariable(name: "utf8Name", arg: 2, scope: !6261, file: !526, line: 4781, type: !519)
!6282 = !DILocation(line: 4781, column: 29, scope: !6261)
!6283 = !DILocalVariable(name: "permissions", scope: !6261, file: !526, line: 4783, type: !1314)
!6284 = !DILocation(line: 4783, column: 11, scope: !6261)
!6285 = !DILocalVariable(name: "status", scope: !6261, file: !526, line: 4784, type: !609)
!6286 = !DILocation(line: 4784, column: 23, scope: !6261)
!6287 = !DILocation(line: 4796, column: 16, scope: !6261)
!6288 = !DILocation(line: 4797, column: 19, scope: !6261)
!6289 = !DILocation(line: 4797, column: 25, scope: !6261)
!6290 = !DILocation(line: 4797, column: 30, scope: !6261)
!6291 = !DILocation(line: 4798, column: 19, scope: !6261)
!6292 = !DILocation(line: 4798, column: 25, scope: !6261)
!6293 = !DILocation(line: 4798, column: 38, scope: !6261)
!6294 = !DILocation(line: 4797, column: 19, scope: !6295)
!6295 = !DILexicalBlockFile(scope: !6261, file: !526, discriminator: 1)
!6296 = !DILocation(line: 4797, column: 19, scope: !6297)
!6297 = !DILexicalBlockFile(scope: !6261, file: !526, discriminator: 2)
!6298 = !DILocation(line: 4797, column: 19, scope: !6299)
!6299 = !DILexicalBlockFile(scope: !6261, file: !526, discriminator: 3)
!6300 = !DILocation(line: 4797, column: 16, scope: !6299)
!6301 = !DILocation(line: 4799, column: 19, scope: !6261)
!6302 = !DILocation(line: 4799, column: 25, scope: !6261)
!6303 = !DILocation(line: 4799, column: 30, scope: !6261)
!6304 = !DILocation(line: 4800, column: 19, scope: !6261)
!6305 = !DILocation(line: 4800, column: 25, scope: !6261)
!6306 = !DILocation(line: 4800, column: 36, scope: !6261)
!6307 = !DILocation(line: 4799, column: 19, scope: !6295)
!6308 = !DILocation(line: 4799, column: 19, scope: !6297)
!6309 = !DILocation(line: 4799, column: 19, scope: !6299)
!6310 = !DILocation(line: 4799, column: 16, scope: !6299)
!6311 = !DILocation(line: 4801, column: 19, scope: !6261)
!6312 = !DILocation(line: 4801, column: 25, scope: !6261)
!6313 = !DILocation(line: 4801, column: 30, scope: !6261)
!6314 = !DILocation(line: 4802, column: 19, scope: !6261)
!6315 = !DILocation(line: 4802, column: 25, scope: !6261)
!6316 = !DILocation(line: 4802, column: 36, scope: !6261)
!6317 = !DILocation(line: 4801, column: 19, scope: !6295)
!6318 = !DILocation(line: 4802, column: 44, scope: !6295)
!6319 = !DILocation(line: 4802, column: 56, scope: !6295)
!6320 = !DILocation(line: 4802, column: 66, scope: !6295)
!6321 = !DILocation(line: 4801, column: 19, scope: !6297)
!6322 = !DILocation(line: 4801, column: 19, scope: !6299)
!6323 = !DILocation(line: 4801, column: 16, scope: !6299)
!6324 = !DILocation(line: 4803, column: 19, scope: !6261)
!6325 = !DILocation(line: 4803, column: 25, scope: !6261)
!6326 = !DILocation(line: 4803, column: 30, scope: !6261)
!6327 = !DILocation(line: 4804, column: 19, scope: !6261)
!6328 = !DILocation(line: 4804, column: 25, scope: !6261)
!6329 = !DILocation(line: 4803, column: 19, scope: !6295)
!6330 = !DILocation(line: 4804, column: 39, scope: !6295)
!6331 = !DILocation(line: 4804, column: 51, scope: !6295)
!6332 = !DILocation(line: 4804, column: 61, scope: !6295)
!6333 = !DILocation(line: 4803, column: 19, scope: !6297)
!6334 = !DILocation(line: 4803, column: 19, scope: !6299)
!6335 = !DILocation(line: 4803, column: 16, scope: !6299)
!6336 = !DILocation(line: 4806, column: 4, scope: !6261)
!6337 = distinct !{!6337, !6336}
!6338 = !DILocation(line: 4806, column: 30, scope: !6339)
!6339 = !DILexicalBlockFile(scope: !6340, file: !526, discriminator: 1)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !526, line: 4806, column: 28)
!6341 = distinct !DILexicalBlock(scope: !6342, file: !526, line: 4806, column: 13)
!6342 = distinct !DILexicalBlock(scope: !6261, file: !526, line: 4806, column: 7)
!6343 = !DILocation(line: 4806, column: 203, scope: !6339)
!6344 = !DILocation(line: 4806, column: 213, scope: !6339)
!6345 = !DILocation(line: 4806, column: 109, scope: !6346)
!6346 = !DILexicalBlockFile(scope: !6339, file: !526, discriminator: 2)
!6347 = !DILocation(line: 4806, column: 229, scope: !6339)
!6348 = !DILocation(line: 4809, column: 25, scope: !6261)
!6349 = !DILocation(line: 4809, column: 35, scope: !6261)
!6350 = !DILocation(line: 4809, column: 13, scope: !6261)
!6351 = !DILocation(line: 4809, column: 11, scope: !6261)
!6352 = !DILocation(line: 4810, column: 9, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6261, file: !526, line: 4810, column: 8)
!6354 = !DILocation(line: 4810, column: 15, scope: !6353)
!6355 = !DILocation(line: 4810, column: 20, scope: !6353)
!6356 = !DILocation(line: 4810, column: 32, scope: !6353)
!6357 = !DILocation(line: 4811, column: 9, scope: !6353)
!6358 = !DILocation(line: 4811, column: 15, scope: !6353)
!6359 = !DILocation(line: 4811, column: 24, scope: !6353)
!6360 = !DILocation(line: 4811, column: 36, scope: !6353)
!6361 = !DILocation(line: 4811, column: 44, scope: !6362)
!6362 = !DILexicalBlockFile(scope: !6353, file: !526, discriminator: 1)
!6363 = !DILocation(line: 4811, column: 41, scope: !6362)
!6364 = !DILocation(line: 4810, column: 8, scope: !6295)
!6365 = !DILocation(line: 4816, column: 26, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6353, file: !526, line: 4811, column: 52)
!6367 = !DILocation(line: 4816, column: 39, scope: !6366)
!6368 = !DILocation(line: 4816, column: 7, scope: !6366)
!6369 = !DILocation(line: 4817, column: 4, scope: !6366)
!6370 = !DILocation(line: 4819, column: 8, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6261, file: !526, line: 4819, column: 8)
!6372 = !DILocation(line: 4819, column: 8, scope: !6261)
!6373 = !DILocation(line: 4820, column: 17, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6371, file: !526, line: 4819, column: 16)
!6375 = !DILocation(line: 4820, column: 16, scope: !6374)
!6376 = !DILocation(line: 4820, column: 14, scope: !6374)
!6377 = !DILocation(line: 4821, column: 7, scope: !6374)
!6378 = distinct !{!6378, !6377}
!6379 = !DILocation(line: 4821, column: 33, scope: !6380)
!6380 = !DILexicalBlockFile(scope: !6381, file: !526, discriminator: 1)
!6381 = distinct !DILexicalBlock(scope: !6382, file: !526, line: 4821, column: 31)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !526, line: 4821, column: 16)
!6383 = distinct !DILexicalBlock(scope: !6374, file: !526, line: 4821, column: 10)
!6384 = !DILocation(line: 4821, column: 202, scope: !6380)
!6385 = !DILocation(line: 4821, column: 185, scope: !6386)
!6386 = !DILexicalBlockFile(scope: !6380, file: !526, discriminator: 2)
!6387 = !DILocation(line: 4821, column: 112, scope: !6388)
!6388 = !DILexicalBlockFile(scope: !6380, file: !526, discriminator: 3)
!6389 = !DILocation(line: 4821, column: 214, scope: !6380)
!6390 = !DILocation(line: 4822, column: 4, scope: !6374)
!6391 = !DILocation(line: 4823, column: 11, scope: !6261)
!6392 = !DILocation(line: 4823, column: 4, scope: !6261)
!6393 = distinct !DISubprogram(name: "HgfsPlatformSymlinkCreate", scope: !526, file: !526, line: 4845, type: !6394, isLocal: false, isDefinition: true, scopeLine: 4847, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!609, !519, !519}
!6396 = !DILocalVariable(name: "localSymlinkName", arg: 1, scope: !6393, file: !526, line: 4845, type: !519)
!6397 = !DILocation(line: 4845, column: 33, scope: !6393)
!6398 = !DILocalVariable(name: "localTargetName", arg: 2, scope: !6393, file: !526, line: 4846, type: !519)
!6399 = !DILocation(line: 4846, column: 33, scope: !6393)
!6400 = !DILocalVariable(name: "status", scope: !6393, file: !526, line: 4848, type: !609)
!6401 = !DILocation(line: 4848, column: 23, scope: !6393)
!6402 = !DILocalVariable(name: "error", scope: !6393, file: !526, line: 4849, type: !550)
!6403 = !DILocation(line: 4849, column: 8, scope: !6393)
!6404 = !DILocation(line: 4851, column: 4, scope: !6393)
!6405 = distinct !{!6405, !6404}
!6406 = !DILocation(line: 4851, column: 30, scope: !6407)
!6407 = !DILexicalBlockFile(scope: !6408, file: !526, discriminator: 1)
!6408 = distinct !DILexicalBlock(scope: !6409, file: !526, line: 4851, column: 28)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !526, line: 4851, column: 13)
!6410 = distinct !DILexicalBlock(scope: !6393, file: !526, line: 4851, column: 7)
!6411 = !DILocation(line: 4851, column: 181, scope: !6407)
!6412 = !DILocation(line: 4851, column: 199, scope: !6407)
!6413 = !DILocation(line: 4851, column: 109, scope: !6414)
!6414 = !DILexicalBlockFile(scope: !6407, file: !526, discriminator: 2)
!6415 = !DILocation(line: 4851, column: 219, scope: !6407)
!6416 = !DILocation(line: 4854, column: 26, scope: !6393)
!6417 = !DILocation(line: 4854, column: 43, scope: !6393)
!6418 = !DILocation(line: 4854, column: 12, scope: !6393)
!6419 = !DILocation(line: 4854, column: 10, scope: !6393)
!6420 = !DILocation(line: 4855, column: 8, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6393, file: !526, line: 4855, column: 8)
!6422 = !DILocation(line: 4855, column: 8, scope: !6393)
!6423 = !DILocation(line: 4856, column: 17, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6421, file: !526, line: 4855, column: 15)
!6425 = !DILocation(line: 4856, column: 16, scope: !6424)
!6426 = !DILocation(line: 4856, column: 14, scope: !6424)
!6427 = !DILocation(line: 4857, column: 7, scope: !6424)
!6428 = distinct !{!6428, !6427}
!6429 = !DILocation(line: 4857, column: 33, scope: !6430)
!6430 = !DILexicalBlockFile(scope: !6431, file: !526, discriminator: 1)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !526, line: 4857, column: 31)
!6432 = distinct !DILexicalBlock(scope: !6433, file: !526, line: 4857, column: 16)
!6433 = distinct !DILexicalBlock(scope: !6424, file: !526, line: 4857, column: 10)
!6434 = !DILocation(line: 4857, column: 8, scope: !6435)
!6435 = !DILexicalBlockFile(scope: !6430, file: !526, discriminator: 2)
!6436 = !DILocation(line: 4857, column: 7, scope: !6430)
!6437 = !DILocation(line: 4857, column: 185, scope: !6438)
!6438 = !DILexicalBlockFile(scope: !6430, file: !526, discriminator: 3)
!6439 = !DILocation(line: 4857, column: 112, scope: !6440)
!6440 = !DILexicalBlockFile(scope: !6430, file: !526, discriminator: 4)
!6441 = !DILocation(line: 4857, column: 12, scope: !6430)
!6442 = !DILocation(line: 4858, column: 4, scope: !6424)
!6443 = !DILocation(line: 4859, column: 11, scope: !6393)
!6444 = !DILocation(line: 4859, column: 4, scope: !6393)
!6445 = distinct !DISubprogram(name: "HgfsPlatformPathHasSymlink", scope: !526, file: !526, line: 4908, type: !6446, isLocal: false, isDefinition: true, scopeLine: 4912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{!611, !522, !771, !522, !771}
!6448 = !DILocalVariable(name: "fileName", arg: 1, scope: !6445, file: !526, line: 4908, type: !522)
!6449 = !DILocation(line: 4908, column: 40, scope: !6445)
!6450 = !DILocalVariable(name: "fileNameLength", arg: 2, scope: !6445, file: !526, line: 4909, type: !771)
!6451 = !DILocation(line: 4909, column: 35, scope: !6445)
!6452 = !DILocalVariable(name: "sharePath", arg: 3, scope: !6445, file: !526, line: 4910, type: !522)
!6453 = !DILocation(line: 4910, column: 40, scope: !6445)
!6454 = !DILocalVariable(name: "sharePathLength", arg: 4, scope: !6445, file: !526, line: 4911, type: !771)
!6455 = !DILocation(line: 4911, column: 35, scope: !6445)
!6456 = !DILocalVariable(name: "resolvedFileDirPath", scope: !6445, file: !526, line: 4913, type: !519)
!6457 = !DILocation(line: 4913, column: 10, scope: !6445)
!6458 = !DILocalVariable(name: "fileDirName", scope: !6445, file: !526, line: 4914, type: !519)
!6459 = !DILocation(line: 4914, column: 10, scope: !6445)
!6460 = !DILocalVariable(name: "status", scope: !6445, file: !526, line: 4915, type: !609)
!6461 = !DILocation(line: 4915, column: 23, scope: !6445)
!6462 = !DILocalVariable(name: "nameStatus", scope: !6445, file: !526, line: 4916, type: !611)
!6463 = !DILocation(line: 4916, column: 19, scope: !6445)
!6464 = !DILocation(line: 4922, column: 4, scope: !6445)
!6465 = distinct !{!6465, !6464}
!6466 = !DILocation(line: 4922, column: 30, scope: !6467)
!6467 = !DILexicalBlockFile(scope: !6468, file: !526, discriminator: 1)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !526, line: 4922, column: 28)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !526, line: 4922, column: 13)
!6470 = distinct !DILexicalBlock(scope: !6445, file: !526, line: 4922, column: 7)
!6471 = !DILocation(line: 4922, column: 201, scope: !6467)
!6472 = !DILocation(line: 4922, column: 211, scope: !6467)
!6473 = !DILocation(line: 4922, column: 109, scope: !6474)
!6474 = !DILexicalBlockFile(scope: !6467, file: !526, discriminator: 2)
!6475 = !DILocation(line: 4922, column: 225, scope: !6467)
!6476 = !DILocation(line: 4932, column: 8, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6445, file: !526, line: 4932, column: 8)
!6478 = !DILocation(line: 4932, column: 23, scope: !6477)
!6479 = !DILocation(line: 4932, column: 28, scope: !6477)
!6480 = !DILocation(line: 4933, column: 8, scope: !6477)
!6481 = !DILocation(line: 4933, column: 24, scope: !6477)
!6482 = !DILocation(line: 4933, column: 29, scope: !6477)
!6483 = !DILocation(line: 4934, column: 15, scope: !6477)
!6484 = !DILocation(line: 4934, column: 26, scope: !6477)
!6485 = !DILocation(line: 4934, column: 8, scope: !6477)
!6486 = !DILocation(line: 4934, column: 36, scope: !6477)
!6487 = !DILocation(line: 4932, column: 8, scope: !6488)
!6488 = !DILexicalBlockFile(scope: !6445, file: !526, discriminator: 1)
!6489 = !DILocation(line: 4935, column: 7, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6477, file: !526, line: 4934, column: 42)
!6491 = !DILocation(line: 4939, column: 21, scope: !6445)
!6492 = !DILocation(line: 4939, column: 4, scope: !6445)
!6493 = !DILocation(line: 4946, column: 15, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6445, file: !526, line: 4946, column: 8)
!6495 = !DILocation(line: 4946, column: 8, scope: !6494)
!6496 = !DILocation(line: 4946, column: 28, scope: !6494)
!6497 = !DILocation(line: 4946, column: 8, scope: !6445)
!6498 = !DILocalVariable(name: "p", scope: !6499, file: !526, line: 4947, type: !519)
!6499 = distinct !DILexicalBlock(scope: !6494, file: !526, line: 4946, column: 34)
!6500 = !DILocation(line: 4947, column: 13, scope: !6499)
!6501 = !DILocation(line: 4948, column: 19, scope: !6499)
!6502 = !DILocation(line: 4948, column: 11, scope: !6499)
!6503 = !DILocation(line: 4948, column: 9, scope: !6499)
!6504 = !DILocation(line: 4949, column: 11, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6499, file: !526, line: 4949, column: 11)
!6506 = !DILocation(line: 4949, column: 13, scope: !6505)
!6507 = !DILocation(line: 4949, column: 11, scope: !6499)
!6508 = !DILocation(line: 4950, column: 21, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6505, file: !526, line: 4949, column: 21)
!6510 = !DILocation(line: 4951, column: 10, scope: !6509)
!6511 = distinct !{!6511, !6510}
!6512 = !DILocation(line: 4951, column: 36, scope: !6513)
!6513 = !DILexicalBlockFile(scope: !6514, file: !526, discriminator: 1)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !526, line: 4951, column: 34)
!6515 = distinct !DILexicalBlock(scope: !6516, file: !526, line: 4951, column: 19)
!6516 = distinct !DILexicalBlock(scope: !6509, file: !526, line: 4951, column: 13)
!6517 = !DILocation(line: 4951, column: 115, scope: !6518)
!6518 = !DILexicalBlockFile(scope: !6513, file: !526, discriminator: 2)
!6519 = !DILocation(line: 4951, column: 212, scope: !6513)
!6520 = !DILocation(line: 4952, column: 10, scope: !6509)
!6521 = !DILocation(line: 4954, column: 24, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6505, file: !526, line: 4953, column: 14)
!6523 = !DILocation(line: 4954, column: 22, scope: !6522)
!6524 = !DILocation(line: 4955, column: 21, scope: !6522)
!6525 = !DILocation(line: 4955, column: 10, scope: !6522)
!6526 = !DILocation(line: 4957, column: 4, scope: !6499)
!6527 = !DILocation(line: 4963, column: 41, scope: !6445)
!6528 = !DILocation(line: 4963, column: 26, scope: !6445)
!6529 = !DILocation(line: 4963, column: 24, scope: !6445)
!6530 = !DILocation(line: 4964, column: 8, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6445, file: !526, line: 4964, column: 8)
!6532 = !DILocation(line: 4964, column: 28, scope: !6531)
!6533 = !DILocation(line: 4964, column: 8, scope: !6445)
!6534 = !DILocation(line: 4966, column: 17, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6531, file: !526, line: 4964, column: 36)
!6536 = !DILocation(line: 4966, column: 16, scope: !6535)
!6537 = !DILocation(line: 4966, column: 14, scope: !6535)
!6538 = !DILocation(line: 4967, column: 15, scope: !6535)
!6539 = !DILocation(line: 4967, column: 7, scope: !6535)
!6540 = !DILocation(line: 4969, column: 24, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6535, file: !526, line: 4967, column: 23)
!6542 = !DILocation(line: 4970, column: 13, scope: !6541)
!6543 = !DILocation(line: 4972, column: 24, scope: !6541)
!6544 = !DILocation(line: 4973, column: 13, scope: !6541)
!6545 = !DILocation(line: 4975, column: 24, scope: !6541)
!6546 = !DILocation(line: 4976, column: 13, scope: !6541)
!6547 = !DILocation(line: 4978, column: 7, scope: !6535)
!6548 = distinct !{!6548, !6547}
!6549 = !DILocation(line: 4978, column: 33, scope: !6550)
!6550 = !DILexicalBlockFile(scope: !6551, file: !526, discriminator: 1)
!6551 = distinct !DILexicalBlock(scope: !6552, file: !526, line: 4978, column: 31)
!6552 = distinct !DILexicalBlock(scope: !6553, file: !526, line: 4978, column: 16)
!6553 = distinct !DILexicalBlock(scope: !6535, file: !526, line: 4978, column: 10)
!6554 = !DILocation(line: 4978, column: 212, scope: !6550)
!6555 = !DILocation(line: 4978, column: 8, scope: !6556)
!6556 = !DILexicalBlockFile(scope: !6550, file: !526, discriminator: 2)
!6557 = !DILocation(line: 4978, column: 7, scope: !6550)
!6558 = !DILocation(line: 4978, column: 225, scope: !6559)
!6559 = !DILexicalBlockFile(scope: !6550, file: !526, discriminator: 3)
!6560 = !DILocation(line: 4978, column: 112, scope: !6561)
!6561 = !DILexicalBlockFile(scope: !6550, file: !526, discriminator: 4)
!6562 = !DILocation(line: 4978, column: 12, scope: !6550)
!6563 = !DILocation(line: 4980, column: 7, scope: !6535)
!6564 = !DILocation(line: 4984, column: 16, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6445, file: !526, line: 4984, column: 8)
!6566 = !DILocation(line: 4984, column: 27, scope: !6565)
!6567 = !DILocation(line: 4984, column: 48, scope: !6565)
!6568 = !DILocation(line: 4984, column: 8, scope: !6565)
!6569 = !DILocation(line: 4984, column: 65, scope: !6565)
!6570 = !DILocation(line: 4984, column: 8, scope: !6445)
!6571 = !DILocation(line: 4985, column: 18, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6565, file: !526, line: 4984, column: 71)
!6573 = !DILocation(line: 4986, column: 7, scope: !6572)
!6574 = distinct !{!6574, !6573}
!6575 = !DILocation(line: 4986, column: 33, scope: !6576)
!6576 = !DILexicalBlockFile(scope: !6577, file: !526, discriminator: 1)
!6577 = distinct !DILexicalBlock(scope: !6578, file: !526, line: 4986, column: 31)
!6578 = distinct !DILexicalBlock(scope: !6579, file: !526, line: 4986, column: 16)
!6579 = distinct !DILexicalBlock(scope: !6572, file: !526, line: 4986, column: 10)
!6580 = !DILocation(line: 4986, column: 231, scope: !6576)
!6581 = !DILocation(line: 4986, column: 244, scope: !6576)
!6582 = !DILocation(line: 4986, column: 112, scope: !6583)
!6583 = !DILexicalBlockFile(scope: !6576, file: !526, discriminator: 2)
!6584 = !DILocation(line: 4986, column: 268, scope: !6576)
!6585 = !DILocation(line: 4988, column: 7, scope: !6572)
!6586 = !DILocation(line: 4984, column: 68, scope: !6587)
!6587 = !DILexicalBlockFile(scope: !6565, file: !526, discriminator: 1)
!6588 = !DILocation(line: 4992, column: 9, scope: !6445)
!6589 = !DILocation(line: 4992, column: 4, scope: !6445)
!6590 = !DILocation(line: 4993, column: 9, scope: !6445)
!6591 = !DILocation(line: 4993, column: 4, scope: !6445)
!6592 = !DILocation(line: 4994, column: 11, scope: !6445)
!6593 = !DILocation(line: 4994, column: 4, scope: !6445)
!6594 = distinct !DISubprogram(name: "HgfsServerWriteWin32Stream", scope: !526, file: !526, line: 5015, type: !6595, isLocal: false, isDefinition: true, scopeLine: 5020, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6595 = !DISubroutineType(types: !6596)
!6596 = !{!609, !522, !635, !5525, !771, !863}
!6597 = !DILocalVariable(name: "packetIn", arg: 1, scope: !6594, file: !526, line: 5015, type: !522)
!6598 = !DILocation(line: 5015, column: 40, scope: !6594)
!6599 = !DILocalVariable(name: "op", arg: 2, scope: !6594, file: !526, line: 5016, type: !635)
!6600 = !DILocation(line: 5016, column: 35, scope: !6594)
!6601 = !DILocalVariable(name: "payload", arg: 3, scope: !6594, file: !526, line: 5017, type: !5525)
!6602 = !DILocation(line: 5017, column: 40, scope: !6594)
!6603 = !DILocalVariable(name: "payloadSize", arg: 4, scope: !6594, file: !526, line: 5018, type: !771)
!6604 = !DILocation(line: 5018, column: 35, scope: !6594)
!6605 = !DILocalVariable(name: "session", arg: 5, scope: !6594, file: !526, line: 5019, type: !863)
!6606 = !DILocation(line: 5019, column: 45, scope: !6594)
!6607 = !DILocation(line: 5021, column: 4, scope: !6594)
!6608 = distinct !DISubprogram(name: "HgfsConvertComponentCase", scope: !526, file: !526, line: 1429, type: !6609, isLocal: true, isDefinition: true, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6609 = !DISubroutineType(types: !6610)
!6610 = !{!550, !519, !522, !521, !1736}
!6611 = !DILocalVariable(name: "currentComponent", arg: 1, scope: !6608, file: !526, line: 1429, type: !519)
!6612 = !DILocation(line: 1429, column: 32, scope: !6608)
!6613 = !DILocalVariable(name: "dirPath", arg: 2, scope: !6608, file: !526, line: 1430, type: !522)
!6614 = !DILocation(line: 1430, column: 38, scope: !6608)
!6615 = !DILocalVariable(name: "convertedComponent", arg: 3, scope: !6608, file: !526, line: 1431, type: !521)
!6616 = !DILocation(line: 1431, column: 39, scope: !6608)
!6617 = !DILocalVariable(name: "convertedComponentSize", arg: 4, scope: !6608, file: !526, line: 1432, type: !1736)
!6618 = !DILocation(line: 1432, column: 34, scope: !6608)
!6619 = !DILocalVariable(name: "dirent", scope: !6608, file: !526, line: 1434, type: !6620)
!6620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6621, size: 64, align: 64)
!6621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !6622, line: 22, size: 2240, align: 64, elements: !6623)
!6622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!6623 = !{!6624, !6626, !6627, !6628, !6629}
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !6621, file: !6622, line: 28, baseType: !6625, size: 64, align: 64)
!6625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !518, line: 128, baseType: !532)
!6626 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !6621, file: !6622, line: 29, baseType: !5640, size: 64, align: 64, offset: 64)
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !6621, file: !6622, line: 31, baseType: !537, size: 16, align: 16, offset: 128)
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !6621, file: !6622, line: 32, baseType: !541, size: 8, align: 8, offset: 144)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !6621, file: !6622, line: 33, baseType: !543, size: 2048, align: 8, offset: 152)
!6630 = !DILocation(line: 1434, column: 19, scope: !6608)
!6631 = !DILocalVariable(name: "dir", scope: !6608, file: !526, line: 1435, type: !6632)
!6632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6633, size: 64, align: 64)
!6633 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !6634, line: 127, baseType: !6635)
!6634 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!6635 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !6634, line: 127, flags: DIFlagFwdDecl)
!6636 = !DILocation(line: 1435, column: 9, scope: !6608)
!6637 = !DILocalVariable(name: "dentryName", scope: !6608, file: !526, line: 1436, type: !519)
!6638 = !DILocation(line: 1436, column: 10, scope: !6608)
!6639 = !DILocalVariable(name: "dentryNameLen", scope: !6608, file: !526, line: 1437, type: !771)
!6640 = !DILocation(line: 1437, column: 11, scope: !6608)
!6641 = !DILocalVariable(name: "myConvertedComponent", scope: !6608, file: !526, line: 1438, type: !519)
!6642 = !DILocation(line: 1438, column: 10, scope: !6608)
!6643 = !DILocalVariable(name: "myConvertedComponentSize", scope: !6608, file: !526, line: 1439, type: !771)
!6644 = !DILocation(line: 1439, column: 11, scope: !6608)
!6645 = !DILocalVariable(name: "ret", scope: !6608, file: !526, line: 1440, type: !550)
!6646 = !DILocation(line: 1440, column: 8, scope: !6608)
!6647 = !DILocation(line: 1448, column: 24, scope: !6608)
!6648 = !DILocation(line: 1448, column: 10, scope: !6608)
!6649 = !DILocation(line: 1448, column: 8, scope: !6608)
!6650 = !DILocation(line: 1449, column: 9, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6608, file: !526, line: 1449, column: 8)
!6652 = !DILocation(line: 1449, column: 8, scope: !6608)
!6653 = !DILocation(line: 1450, column: 14, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6651, file: !526, line: 1449, column: 14)
!6655 = !DILocation(line: 1450, column: 13, scope: !6654)
!6656 = !DILocation(line: 1450, column: 11, scope: !6654)
!6657 = !DILocation(line: 1451, column: 7, scope: !6654)
!6658 = !DILocation(line: 1458, column: 31, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6608, file: !526, line: 1458, column: 8)
!6660 = !DILocation(line: 1458, column: 9, scope: !6659)
!6661 = !DILocation(line: 1458, column: 8, scope: !6608)
!6662 = !DILocation(line: 1460, column: 11, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6659, file: !526, line: 1458, column: 76)
!6664 = !DILocation(line: 1461, column: 7, scope: !6663)
!6665 = !DILocation(line: 1468, column: 4, scope: !6608)
!6666 = !DILocation(line: 1468, column: 29, scope: !6667)
!6667 = !DILexicalBlockFile(scope: !6608, file: !526, discriminator: 1)
!6668 = !DILocation(line: 1468, column: 21, scope: !6667)
!6669 = !DILocation(line: 1468, column: 19, scope: !6667)
!6670 = !DILocation(line: 1468, column: 4, scope: !6667)
!6671 = !DILocalVariable(name: "dentryNameU", scope: !6672, file: !526, line: 1469, type: !519)
!6672 = distinct !DILexicalBlock(scope: !6608, file: !526, line: 1468, column: 36)
!6673 = !DILocation(line: 1469, column: 13, scope: !6672)
!6674 = !DILocalVariable(name: "cmpResult", scope: !6672, file: !526, line: 1470, type: !550)
!6675 = !DILocation(line: 1470, column: 11, scope: !6672)
!6676 = !DILocation(line: 1472, column: 20, scope: !6672)
!6677 = !DILocation(line: 1472, column: 28, scope: !6672)
!6678 = !DILocation(line: 1472, column: 18, scope: !6672)
!6679 = !DILocation(line: 1473, column: 30, scope: !6672)
!6680 = !DILocation(line: 1473, column: 23, scope: !6672)
!6681 = !DILocation(line: 1473, column: 21, scope: !6672)
!6682 = !DILocation(line: 1481, column: 34, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6672, file: !526, line: 1481, column: 11)
!6684 = !DILocation(line: 1481, column: 46, scope: !6683)
!6685 = !DILocation(line: 1481, column: 12, scope: !6683)
!6686 = !DILocation(line: 1481, column: 11, scope: !6672)
!6687 = !DILocation(line: 1484, column: 10, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6683, file: !526, line: 1482, column: 60)
!6689 = distinct !{!6689, !6665}
!6690 = !DILocation(line: 1487, column: 35, scope: !6672)
!6691 = !DILocation(line: 1487, column: 21, scope: !6672)
!6692 = !DILocation(line: 1487, column: 19, scope: !6672)
!6693 = !DILocation(line: 1489, column: 45, scope: !6672)
!6694 = !DILocation(line: 1489, column: 63, scope: !6672)
!6695 = !DILocation(line: 1489, column: 19, scope: !6672)
!6696 = !DILocation(line: 1489, column: 17, scope: !6672)
!6697 = !DILocation(line: 1490, column: 12, scope: !6672)
!6698 = !DILocation(line: 1490, column: 7, scope: !6672)
!6699 = !DILocation(line: 1492, column: 11, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6672, file: !526, line: 1492, column: 11)
!6701 = !DILocation(line: 1492, column: 21, scope: !6700)
!6702 = !DILocation(line: 1492, column: 11, scope: !6672)
!6703 = !DILocation(line: 1497, column: 37, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6700, file: !526, line: 1492, column: 27)
!6705 = !DILocation(line: 1497, column: 51, scope: !6704)
!6706 = !DILocation(line: 1497, column: 35, scope: !6704)
!6707 = !DILocation(line: 1498, column: 40, scope: !6704)
!6708 = !DILocation(line: 1498, column: 33, scope: !6704)
!6709 = !DILocation(line: 1498, column: 31, scope: !6704)
!6710 = !DILocation(line: 1499, column: 14, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6704, file: !526, line: 1499, column: 14)
!6712 = !DILocation(line: 1499, column: 35, scope: !6711)
!6713 = !DILocation(line: 1499, column: 14, scope: !6704)
!6714 = !DILocation(line: 1500, column: 20, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6711, file: !526, line: 1499, column: 43)
!6716 = !DILocation(line: 1500, column: 19, scope: !6715)
!6717 = !DILocation(line: 1500, column: 17, scope: !6715)
!6718 = !DILocation(line: 1501, column: 13, scope: !6715)
!6719 = distinct !{!6719, !6718}
!6720 = !DILocation(line: 1501, column: 39, scope: !6721)
!6721 = !DILexicalBlockFile(scope: !6722, file: !526, discriminator: 1)
!6722 = distinct !DILexicalBlock(scope: !6723, file: !526, line: 1501, column: 37)
!6723 = distinct !DILexicalBlock(scope: !6724, file: !526, line: 1501, column: 22)
!6724 = distinct !DILexicalBlock(scope: !6715, file: !526, line: 1501, column: 16)
!6725 = !DILocation(line: 1501, column: 118, scope: !6726)
!6726 = !DILexicalBlockFile(scope: !6721, file: !526, discriminator: 2)
!6727 = !DILocation(line: 1501, column: 223, scope: !6721)
!6728 = !DILocation(line: 1503, column: 13, scope: !6715)
!6729 = !DILocation(line: 1505, column: 21, scope: !6704)
!6730 = !DILocation(line: 1505, column: 43, scope: !6704)
!6731 = !DILocation(line: 1505, column: 55, scope: !6704)
!6732 = !DILocation(line: 1505, column: 10, scope: !6704)
!6733 = !DILocation(line: 1508, column: 14, scope: !6704)
!6734 = !DILocation(line: 1509, column: 36, scope: !6704)
!6735 = !DILocation(line: 1509, column: 11, scope: !6704)
!6736 = !DILocation(line: 1509, column: 34, scope: !6704)
!6737 = !DILocation(line: 1510, column: 32, scope: !6704)
!6738 = !DILocation(line: 1510, column: 11, scope: !6704)
!6739 = !DILocation(line: 1510, column: 30, scope: !6704)
!6740 = !DILocation(line: 1511, column: 10, scope: !6704)
!6741 = !DILocation(line: 1468, column: 4, scope: !6742)
!6742 = !DILexicalBlockFile(scope: !6608, file: !526, discriminator: 2)
!6743 = !DILocation(line: 1516, column: 8, scope: !6608)
!6744 = !DILocation(line: 1516, column: 4, scope: !6608)
!6745 = !DILocation(line: 1519, column: 8, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6608, file: !526, line: 1519, column: 8)
!6747 = !DILocation(line: 1519, column: 8, scope: !6608)
!6748 = !DILocation(line: 1520, column: 16, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6746, file: !526, line: 1519, column: 13)
!6750 = !DILocation(line: 1520, column: 7, scope: !6749)
!6751 = !DILocation(line: 1521, column: 4, scope: !6749)
!6752 = !DILocation(line: 1522, column: 8, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6608, file: !526, line: 1522, column: 8)
!6754 = !DILocation(line: 1522, column: 8, scope: !6608)
!6755 = !DILocation(line: 1523, column: 8, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6753, file: !526, line: 1522, column: 13)
!6757 = !DILocation(line: 1523, column: 27, scope: !6756)
!6758 = !DILocation(line: 1524, column: 8, scope: !6756)
!6759 = !DILocation(line: 1524, column: 31, scope: !6756)
!6760 = !DILocation(line: 1525, column: 4, scope: !6756)
!6761 = !DILocation(line: 1526, column: 11, scope: !6608)
!6762 = !DILocation(line: 1526, column: 4, scope: !6608)
!6763 = distinct !DISubprogram(name: "HgfsConstructConvertedPath", scope: !526, file: !526, line: 1548, type: !6764, isLocal: true, isDefinition: true, scopeLine: 1552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!550, !1735, !1736, !519, !771}
!6766 = !DILocalVariable(name: "path", arg: 1, scope: !6763, file: !526, line: 1548, type: !1735)
!6767 = !DILocation(line: 1548, column: 35, scope: !6763)
!6768 = !DILocalVariable(name: "pathSize", arg: 2, scope: !6763, file: !526, line: 1549, type: !1736)
!6769 = !DILocation(line: 1549, column: 36, scope: !6763)
!6770 = !DILocalVariable(name: "convertedPath", arg: 3, scope: !6763, file: !526, line: 1550, type: !519)
!6771 = !DILocation(line: 1550, column: 34, scope: !6763)
!6772 = !DILocalVariable(name: "convertedPathSize", arg: 4, scope: !6763, file: !526, line: 1551, type: !771)
!6773 = !DILocation(line: 1551, column: 35, scope: !6763)
!6774 = !DILocalVariable(name: "p", scope: !6763, file: !526, line: 1553, type: !519)
!6775 = !DILocation(line: 1553, column: 10, scope: !6763)
!6776 = !DILocalVariable(name: "convertedPathLen", scope: !6763, file: !526, line: 1554, type: !771)
!6777 = !DILocation(line: 1554, column: 11, scope: !6763)
!6778 = !DILocation(line: 1554, column: 30, scope: !6763)
!6779 = !DILocation(line: 1554, column: 48, scope: !6763)
!6780 = !DILocation(line: 1561, column: 17, scope: !6763)
!6781 = !DILocation(line: 1561, column: 16, scope: !6763)
!6782 = !DILocation(line: 1561, column: 24, scope: !6763)
!6783 = !DILocation(line: 1561, column: 23, scope: !6763)
!6784 = !DILocation(line: 1561, column: 35, scope: !6763)
!6785 = !DILocation(line: 1561, column: 33, scope: !6763)
!6786 = !DILocation(line: 1561, column: 52, scope: !6763)
!6787 = !DILocation(line: 1561, column: 8, scope: !6763)
!6788 = !DILocation(line: 1561, column: 6, scope: !6763)
!6789 = !DILocation(line: 1562, column: 9, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6763, file: !526, line: 1562, column: 8)
!6791 = !DILocation(line: 1562, column: 8, scope: !6763)
!6792 = !DILocalVariable(name: "error", scope: !6793, file: !526, line: 1563, type: !550)
!6793 = distinct !DILexicalBlock(scope: !6790, file: !526, line: 1562, column: 12)
!6794 = !DILocation(line: 1563, column: 11, scope: !6793)
!6795 = !DILocation(line: 1563, column: 20, scope: !6793)
!6796 = !DILocation(line: 1563, column: 19, scope: !6793)
!6797 = !DILocation(line: 1564, column: 7, scope: !6793)
!6798 = distinct !{!6798, !6797}
!6799 = !DILocation(line: 1564, column: 33, scope: !6800)
!6800 = !DILexicalBlockFile(scope: !6801, file: !526, discriminator: 1)
!6801 = distinct !DILexicalBlock(scope: !6802, file: !526, line: 1564, column: 31)
!6802 = distinct !DILexicalBlock(scope: !6803, file: !526, line: 1564, column: 16)
!6803 = distinct !DILexicalBlock(scope: !6793, file: !526, line: 1564, column: 10)
!6804 = !DILocation(line: 1564, column: 112, scope: !6805)
!6805 = !DILexicalBlockFile(scope: !6800, file: !526, discriminator: 2)
!6806 = !DILocation(line: 1564, column: 197, scope: !6800)
!6807 = !DILocation(line: 1565, column: 14, scope: !6793)
!6808 = !DILocation(line: 1565, column: 7, scope: !6793)
!6809 = !DILocation(line: 1568, column: 12, scope: !6763)
!6810 = !DILocation(line: 1568, column: 5, scope: !6763)
!6811 = !DILocation(line: 1568, column: 10, scope: !6763)
!6812 = !DILocation(line: 1569, column: 17, scope: !6763)
!6813 = !DILocation(line: 1569, column: 34, scope: !6763)
!6814 = !DILocation(line: 1569, column: 5, scope: !6763)
!6815 = !DILocation(line: 1569, column: 14, scope: !6763)
!6816 = !DILocation(line: 1572, column: 16, scope: !6763)
!6817 = !DILocation(line: 1572, column: 20, scope: !6763)
!6818 = !DILocation(line: 1572, column: 19, scope: !6763)
!6819 = !DILocation(line: 1572, column: 4, scope: !6763)
!6820 = !DILocation(line: 1573, column: 16, scope: !6763)
!6821 = !DILocation(line: 1573, column: 20, scope: !6763)
!6822 = !DILocation(line: 1573, column: 19, scope: !6763)
!6823 = !DILocation(line: 1573, column: 30, scope: !6763)
!6824 = !DILocation(line: 1573, column: 45, scope: !6763)
!6825 = !DILocation(line: 1573, column: 4, scope: !6763)
!6826 = !DILocation(line: 1574, column: 4, scope: !6763)
!6827 = !DILocation(line: 1575, column: 1, scope: !6763)
!6828 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !6829, file: !6829, line: 111, type: !6830, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6829 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!6830 = !DISubroutineType(types: !6831)
!6831 = !{!519, !5525, !6832}
!6832 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !153, line: 445, baseType: !152)
!6833 = !DILocalVariable(name: "buffer", arg: 1, scope: !6828, file: !6829, line: 111, type: !5525)
!6834 = !DILocation(line: 111, column: 27, scope: !6828)
!6835 = !DILocalVariable(name: "encoding", arg: 2, scope: !6828, file: !6829, line: 112, type: !6832)
!6836 = !DILocation(line: 112, column: 30, scope: !6828)
!6837 = !DILocation(line: 114, column: 35, scope: !6828)
!6838 = !DILocation(line: 114, column: 47, scope: !6828)
!6839 = !DILocation(line: 114, column: 11, scope: !6828)
!6840 = !DILocation(line: 114, column: 4, scope: !6828)
!6841 = distinct !DISubprogram(name: "Unicode_CompareIgnoreCase", scope: !6842, file: !6842, line: 260, type: !6843, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6842 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeOperations.h", directory: "/home/lichi/Desktop/open-vm-tools/line381")
!6843 = !DISubroutineType(types: !6844)
!6844 = !{!550, !522, !522}
!6845 = !DILocalVariable(name: "str1", arg: 1, scope: !6841, file: !6842, line: 260, type: !522)
!6846 = !DILocation(line: 260, column: 39, scope: !6841)
!6847 = !DILocalVariable(name: "str2", arg: 2, scope: !6841, file: !6842, line: 261, type: !522)
!6848 = !DILocation(line: 261, column: 39, scope: !6841)
!6849 = !DILocation(line: 263, column: 32, scope: !6841)
!6850 = !DILocation(line: 266, column: 32, scope: !6841)
!6851 = !DILocation(line: 263, column: 11, scope: !6841)
!6852 = !DILocation(line: 263, column: 4, scope: !6841)
!6853 = distinct !DISubprogram(name: "HgfsGetCreationTime", scope: !526, file: !526, line: 1902, type: !6854, isLocal: true, isDefinition: true, scopeLine: 1903, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!530, !6856}
!6856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6857, size: 64, align: 64)
!6857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!6858 = !DILocalVariable(name: "stats", arg: 1, scope: !6853, file: !526, line: 1902, type: !6856)
!6859 = !DILocation(line: 1902, column: 40, scope: !6853)
!6860 = !DILocalVariable(name: "creationTime", scope: !6853, file: !526, line: 1904, type: !530)
!6861 = !DILocation(line: 1904, column: 11, scope: !6853)
!6862 = !DILocation(line: 1937, column: 48, scope: !6853)
!6863 = !DILocation(line: 1937, column: 55, scope: !6853)
!6864 = !DILocation(line: 1937, column: 19, scope: !6853)
!6865 = !DILocation(line: 1937, column: 17, scope: !6853)
!6866 = !DILocation(line: 1947, column: 11, scope: !6853)
!6867 = !DILocation(line: 1947, column: 4, scope: !6853)
!6868 = distinct !DISubprogram(name: "HgfsConvertTimeSpecToNtTime", scope: !610, file: !610, line: 169, type: !6869, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6869 = !DISubroutineType(types: !6870)
!6870 = !{!530, !6871}
!6871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6872, size: 64, align: 64)
!6872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!6873 = !DILocalVariable(name: "unixTime", arg: 1, scope: !6868, file: !610, line: 169, type: !6871)
!6874 = !DILocation(line: 169, column: 52, scope: !6868)
!6875 = !DILocation(line: 171, column: 31, scope: !6868)
!6876 = !DILocation(line: 171, column: 41, scope: !6868)
!6877 = !DILocation(line: 171, column: 49, scope: !6868)
!6878 = !DILocation(line: 171, column: 59, scope: !6868)
!6879 = !DILocation(line: 171, column: 11, scope: !6868)
!6880 = !DILocation(line: 171, column: 4, scope: !6868)
!6881 = distinct !DISubprogram(name: "HgfsGetHiddenXAttr", scope: !526, file: !526, line: 5228, type: !6882, isLocal: true, isDefinition: true, scopeLine: 5230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !573)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!609, !522, !3574}
!6884 = !DILocalVariable(name: "fileName", arg: 1, scope: !6881, file: !526, line: 5228, type: !522)
!6885 = !DILocation(line: 5228, column: 32, scope: !6881)
!6886 = !DILocalVariable(name: "attribute", arg: 2, scope: !6881, file: !526, line: 5229, type: !3574)
!6887 = !DILocation(line: 5229, column: 26, scope: !6881)
!6888 = !DILocation(line: 5231, column: 5, scope: !6881)
!6889 = !DILocation(line: 5231, column: 15, scope: !6881)
!6890 = !DILocation(line: 5232, column: 4, scope: !6881)
