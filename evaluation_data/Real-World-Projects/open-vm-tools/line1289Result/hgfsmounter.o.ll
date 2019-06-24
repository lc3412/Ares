; ModuleID = './hgfsmounter.o.i'
source_filename = "./hgfsmounter.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MountOptions = type { i8*, i32, i8, i8*, i8*, i8 (i8*, %struct.HgfsMountInfo*, i32*)* }
%struct.HgfsMountInfo = type <{ i32, i32, i32, i32, i32, i32, i8, i32, i8, i16, i16, i32, i8*, i8* }>
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@thisProgram = internal global i8* null, align 8
@thisProgramBase = internal global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"hno:vV\00", align 1
@optarg = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error: could not allocate memory for options\0A\00", align 1
@beVerbose = internal global i8 0, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error: unknown mount option %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Original command line: \22%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@optind = external global i32, align 4
@shareName = internal global i8* null, align 8
@mountPoint = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [70 x i8] c"Error: cannot allocate memory for canonicalized path, aborting mount\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Error: cannot canonicalize mount point\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Error: share name is invalid, aborting mount\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Error: could not parse options string\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error: cannot stat mount point\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Error: mount point \22%s\22 is not a directory\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Error: either you're not root, or %s isn't installed SUID\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Error: for user mounts, user must own the mount point\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vmhgfs\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Error: cannot mount filesystem\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Usage: %s <sharename> <dir> [-o <options>]\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"Mount the HGFS share, specified by name, to a local directory.\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Share name must be in host:dir format.\0A\0AOptions:\0A\00", align 1
@mountOptions = internal global [26 x %struct.MountOptions] [%struct.MountOptions { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 1, i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 1, i8 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2, i8 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 2, i8 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), i8* null, i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseUid }, %struct.MountOptions { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0), i8* null, i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseGid }, %struct.MountOptions { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i8* null, i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseFmask }, %struct.MountOptions { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0), i8* null, i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseDmask }, %struct.MountOptions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 4, i8 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 4, i8 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 8, i8 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 8, i8 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 16, i8 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 16, i8 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 64, i8 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.67, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 64, i8 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 1024, i8 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.73, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 1024, i8 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.76, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 1024, i8 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.79, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 1024, i8 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.82, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.84, i32 0, i32 0), i8* null, i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseTtl }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 4096, i8 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 8192, i8 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }, %struct.MountOptions { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 0, i8 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseServerIno }, %struct.MountOptions { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32 0, i8 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.95, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* @ParseNoServerIno }, %struct.MountOptions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 32, i8 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.98, i32 0, i32 0), i8 (i8*, %struct.HgfsMountInfo*, i32*)* null }], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"  %-15s       %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"This command is intended to be run from within /bin/mount by\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"passing the option '-t %s'. For example:\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"  mount -t %s .host:/ /mnt/hgfs/\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"  mount -t %s .host:/foo /mnt/foo\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"  mount -t %s .host:/foo/bar /var/lib/bar\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"mount read-only\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Setting mount read-only\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"mount read-write\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Setting mount read-write\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"nosuid\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"ignore suid/sgid bits\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"Setting mount option for allowing suid/sgid bits off\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"suid\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"allow suid/sgid bits (default)\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"Setting mount option for allowing suid/sgid bits on\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"uid=<arg>\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"mount owner (by uid or username)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"gid=<arg>\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"mount group (by gid or groupname)\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"fmask=<arg>\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"file umask (in octal)\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"dmask=<arg>\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"directory umask (in octal)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"nodev\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"prevent device node access\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"Setting mount option for accessing device nodes off\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"allow device node access (default)\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"Setting mount option for accessing device nodes on\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"prevent program execution\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"Setting mount option for program execution off\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"allow program execution (default)\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"Setting mount option for program execution on\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"file writes are synchronous\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"Setting mount synchronous writes\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"file writes are asynchronous (default)\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"mand\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"allow mandatory locks\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"Setting mount option for allow mandatory locks on\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"nomand\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"prevent mandatory locks (default)\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"Setting mount option for allow mandatory locks off\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"noatime\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"do not update access times\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"Setting mount option for updating access times off\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"update access times (default)\00", align 1
@.str.76 = private unnamed_addr constant [50 x i8] c"Setting mount option for updating access times on\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"nodiratime\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"do not update directory access times\00", align 1
@.str.79 = private unnamed_addr constant [61 x i8] c"Setting mount option for updating directory access times off\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"diratime\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"update access directory times (default)\00", align 1
@.str.82 = private unnamed_addr constant [60 x i8] c"Setting mount option for updating directory access times on\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"ttl=<arg>\00", align 1
@.str.84 = private unnamed_addr constant [135 x i8] c"time before file attributes must be\0Arevalidated (in seconds). Improves\0Aperformance but decreases coherency.\0ADefaults to 1 if not set.\0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"perform bind mount\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"Setting mount type to bind\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"move an existig mount point\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"Setting mount type to move\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"serverino\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"Use server generated inode numbers.\0A\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"Setting mount option for using Server inode numbers on\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"noserverino\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"Use client generated inode numbers.\0A\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"Setting mount option for using Server inode numbers off\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"remount\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"remount already mounted filesystem\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"Setting mount type to remount\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"Error getting the value for uid\0A\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"Bad UID value \22%s\22\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"Bad user name \22%s\22\0A\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"Setting mount owner to %u\0A\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"Error getting the value for gid\0A\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"Bad GID value \22%s\22\0A\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"Bad group name \22%s\22\0A\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"Setting mount group to %u\0A\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"Setting mount fmask to %o\0A\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"Error getting the value for %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"Error, overflow in %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"Setting mount dmask to %o\0A\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"Setting maximum attribute TTL to %u\0A\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"Error getting the value for ttl\0A\00", align 1
@.str.114 = private unnamed_addr constant [39 x i8] c"Setting mount flag server ino in 0x%x\0A\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"Clearing mount flag server ino in 0x%x\0A\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"%s version: %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"10.3.0.5330\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"Share name must be in host:dir format\0A\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Directory in share name must not be empty\0A\00", align 1
@.str.120 = private unnamed_addr constant [50 x i8] c"Directory in share name must be an absolute path\0A\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c".host:\00", align 1
@.str.122 = private unnamed_addr constant [36 x i8] c"Host in share name must be \22.host\22\0A\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c".host\00", align 1
@.str.124 = private unnamed_addr constant [38 x i8] c"Host component of share name is \22%s\22\0A\00", align 1
@.str.125 = private unnamed_addr constant [43 x i8] c"Directory component of share name is \22%s\22\0A\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"Parsing option string: %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [26 x i8] c"Malformed options string\0A\00", align 1
@.str.128 = private unnamed_addr constant [45 x i8] c"Failed to parse option name, out of memory?\0A\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.130 = private unnamed_addr constant [35 x i8] c"Skipping unrecognized option \22%s\22\0A\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.133 = private unnamed_addr constant [57 x i8] c"Could not open mtab for appending, continuing sans mtab\0A\00", align 1
@.str.134 = private unnamed_addr constant [58 x i8] c"Could not get user for mounting uid, skipping user entry\0A\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c",nosuid\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c",nodev\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c",noexec\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c",sync\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c",mand\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c",noatime\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c",nodiratime\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c",user=\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c",ttl=\00", align 1
@.str.145 = private unnamed_addr constant [61 x i8] c"Could not allocate memory for ttl entry in mtab, continuing\0A\00", align 1
@.str.146 = private unnamed_addr constant [41 x i8] c"Could not add entry to mtab, continuing\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !148 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca %struct.HgfsMountInfo, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !153, metadata !154), !dbg !155
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !156, metadata !154), !dbg !157
  call void @llvm.dbg.declare(metadata i8* %6, metadata !158, metadata !154), !dbg !159
  store i8 1, i8* %6, align 1, !dbg !159
  call void @llvm.dbg.declare(metadata i8* %7, metadata !160, metadata !154), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %8, metadata !162, metadata !154), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %9, metadata !164, metadata !154), !dbg !165
  store i32 1, i32* %9, align 4, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %10, metadata !166, metadata !154), !dbg !167
  store i32 0, i32* %10, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %11, metadata !168, metadata !154), !dbg !169
  store i32 -1, i32* %11, align 4, !dbg !169
  call void @llvm.dbg.declare(metadata i8** %12, metadata !170, metadata !154), !dbg !171
  store i8* null, i8** %12, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %13, metadata !172, metadata !154), !dbg !173
  store i8* null, i8** %13, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %14, metadata !174, metadata !154), !dbg !175
  store i8* null, i8** %14, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !176, metadata !154), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo* %16, metadata !215, metadata !154), !dbg !216
  call void @llvm.dbg.declare(metadata i8** %17, metadata !217, metadata !154), !dbg !218
  store i8* null, i8** %17, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i64* %18, metadata !219, metadata !154), !dbg !222
  %21 = load i8**, i8*** %5, align 8, !dbg !223
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !223
  %23 = load i8*, i8** %22, align 8, !dbg !223
  store i8* %23, i8** @thisProgram, align 8, !dbg !224
  %24 = load i8*, i8** @thisProgram, align 8, !dbg !225
  %25 = call i8* @strrchr(i8* %24, i32 47) #8, !dbg !226
  store i8* %25, i8** @thisProgramBase, align 8, !dbg !227
  %26 = load i8*, i8** @thisProgramBase, align 8, !dbg !228
  %27 = icmp ne i8* %26, null, !dbg !230
  br i1 %27, label %28, label %31, !dbg !231

; <label>:28:                                     ; preds = %2
  %29 = load i8*, i8** @thisProgramBase, align 8, !dbg !232
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !232
  store i8* %30, i8** @thisProgramBase, align 8, !dbg !232
  br label %33, !dbg !234

; <label>:31:                                     ; preds = %2
  %32 = load i8*, i8** @thisProgram, align 8, !dbg !235
  store i8* %32, i8** @thisProgramBase, align 8, !dbg !237
  br label %33

; <label>:33:                                     ; preds = %31, %28
  call void @setpwent(), !dbg !238
  %34 = load i32, i32* %4, align 4, !dbg !239
  %35 = icmp slt i32 %34, 3, !dbg !241
  br i1 %35, label %36, label %37, !dbg !242

; <label>:36:                                     ; preds = %33
  call void @PrintUsage(), !dbg !243
  br label %37, !dbg !245

; <label>:37:                                     ; preds = %36, %33
  br label %38, !dbg !246

; <label>:38:                                     ; preds = %93, %37
  %39 = load i32, i32* %4, align 4, !dbg !247
  %40 = load i8**, i8*** %5, align 8, !dbg !249
  %41 = call i32 @getopt(i32 %39, i8** %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #9, !dbg !250
  %42 = trunc i32 %41 to i8, !dbg !250
  store i8 %42, i8* %7, align 1, !dbg !251
  %43 = sext i8 %42 to i32, !dbg !252
  %44 = icmp ne i32 %43, -1, !dbg !253
  br i1 %44, label %45, label %94, !dbg !254

; <label>:45:                                     ; preds = %38
  %46 = load i8, i8* %7, align 1, !dbg !255
  %47 = sext i8 %46 to i32, !dbg !255
  switch i32 %47, label %89 [
    i32 63, label %48
    i32 104, label %48
    i32 110, label %49
    i32 111, label %50
    i32 118, label %87
    i32 86, label %88
  ], !dbg !257

; <label>:48:                                     ; preds = %45, %45
  call void @PrintUsage(), !dbg !258
  br label %49, !dbg !258

; <label>:49:                                     ; preds = %45, %48
  store i8 0, i8* %6, align 1, !dbg !260
  br label %93, !dbg !261

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %12, align 8, !dbg !262
  %52 = icmp eq i8* %51, null, !dbg !264
  br i1 %52, label %53, label %56, !dbg !265

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** @optarg, align 8, !dbg !266
  %55 = call noalias i8* @strdup(i8* %54) #9, !dbg !268
  store i8* %55, i8** %12, align 8, !dbg !269
  br label %81, !dbg !270

; <label>:56:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i64* %19, metadata !271, metadata !154), !dbg !273
  call void @llvm.dbg.declare(metadata i8** %20, metadata !274, metadata !154), !dbg !275
  %57 = load i8*, i8** %12, align 8, !dbg !276
  store i8* %57, i8** %20, align 8, !dbg !275
  %58 = load i8*, i8** %12, align 8, !dbg !277
  %59 = call i64 @strlen(i8* %58) #8, !dbg !278
  %60 = add i64 %59, 1, !dbg !279
  %61 = load i8*, i8** @optarg, align 8, !dbg !280
  %62 = call i64 @strlen(i8* %61) #8, !dbg !281
  %63 = add i64 %60, %62, !dbg !282
  %64 = add i64 %63, 4, !dbg !283
  store i64 %64, i64* %19, align 8, !dbg !284
  %65 = load i8*, i8** %12, align 8, !dbg !285
  %66 = load i64, i64* %19, align 8, !dbg !286
  %67 = call i8* @realloc(i8* %65, i64 %66) #9, !dbg !287
  store i8* %67, i8** %12, align 8, !dbg !288
  %68 = load i8*, i8** %12, align 8, !dbg !289
  %69 = icmp ne i8* %68, null, !dbg !291
  br i1 %69, label %70, label %78, !dbg !292

; <label>:70:                                     ; preds = %56
  %71 = load i8*, i8** %12, align 8, !dbg !293
  %72 = load i64, i64* %19, align 8, !dbg !295
  %73 = call i8* @Str_Strcat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 %72), !dbg !296
  %74 = load i8*, i8** %12, align 8, !dbg !297
  %75 = load i8*, i8** @optarg, align 8, !dbg !298
  %76 = load i64, i64* %19, align 8, !dbg !299
  %77 = call i8* @Str_Strcat(i8* %74, i8* %75, i64 %76), !dbg !300
  br label %80, !dbg !301

; <label>:78:                                     ; preds = %56
  %79 = load i8*, i8** %20, align 8, !dbg !302
  call void @free(i8* %79) #9, !dbg !304
  br label %80

; <label>:80:                                     ; preds = %78, %70
  br label %81

; <label>:81:                                     ; preds = %80, %53
  %82 = load i8*, i8** %12, align 8, !dbg !305
  %83 = icmp eq i8* %82, null, !dbg !307
  br i1 %83, label %84, label %86, !dbg !308

; <label>:84:                                     ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0)), !dbg !309
  br label %243, !dbg !311

; <label>:86:                                     ; preds = %81
  br label %93, !dbg !312

; <label>:87:                                     ; preds = %45
  store i8 1, i8* @beVerbose, align 1, !dbg !313
  br label %93, !dbg !314

; <label>:88:                                     ; preds = %45
  call void @PrintVersion(), !dbg !315
  br label %89, !dbg !315

; <label>:89:                                     ; preds = %45, %88
  %90 = load i8, i8* %7, align 1, !dbg !316
  %91 = sext i8 %90 to i32, !dbg !316
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %91), !dbg !317
  call void @PrintUsage(), !dbg !318
  br label %93, !dbg !319

; <label>:93:                                     ; preds = %89, %87, %86, %49
  br label %38, !dbg !320, !llvm.loop !322

; <label>:94:                                     ; preds = %38
  %95 = load i8, i8* @beVerbose, align 1, !dbg !323
  %96 = sext i8 %95 to i32, !dbg !323
  %97 = icmp ne i32 %96, 0, !dbg !323
  br i1 %97, label %98, label %101, !dbg !323

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** @thisProgram, align 8, !dbg !324
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %99), !dbg !325
  br label %102, !dbg !326

; <label>:101:                                    ; preds = %94
  br label %102, !dbg !327

; <label>:102:                                    ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ], !dbg !328
  store i32 1, i32* %8, align 4, !dbg !330
  br label %104, !dbg !332

; <label>:104:                                    ; preds = %122, %102
  %105 = load i32, i32* %8, align 4, !dbg !333
  %106 = load i32, i32* %4, align 4, !dbg !336
  %107 = icmp slt i32 %105, %106, !dbg !337
  br i1 %107, label %108, label %125, !dbg !338

; <label>:108:                                    ; preds = %104
  %109 = load i8, i8* @beVerbose, align 1, !dbg !339
  %110 = sext i8 %109 to i32, !dbg !339
  %111 = icmp ne i32 %110, 0, !dbg !339
  br i1 %111, label %112, label %119, !dbg !339

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %8, align 4, !dbg !341
  %114 = sext i32 %113 to i64, !dbg !343
  %115 = load i8**, i8*** %5, align 8, !dbg !343
  %116 = getelementptr inbounds i8*, i8** %115, i64 %114, !dbg !343
  %117 = load i8*, i8** %116, align 8, !dbg !343
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %117), !dbg !344
  br label %120, !dbg !345

; <label>:119:                                    ; preds = %108
  br label %120, !dbg !346

; <label>:120:                                    ; preds = %119, %112
  %121 = phi i32 [ %118, %112 ], [ 0, %119 ], !dbg !348
  br label %122, !dbg !350

; <label>:122:                                    ; preds = %120
  %123 = load i32, i32* %8, align 4, !dbg !351
  %124 = add nsw i32 %123, 1, !dbg !351
  store i32 %124, i32* %8, align 4, !dbg !351
  br label %104, !dbg !353, !llvm.loop !354

; <label>:125:                                    ; preds = %104
  %126 = load i8, i8* @beVerbose, align 1, !dbg !356
  %127 = sext i8 %126 to i32, !dbg !356
  %128 = icmp ne i32 %127, 0, !dbg !356
  br i1 %128, label %129, label %131, !dbg !356

; <label>:129:                                    ; preds = %125
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)), !dbg !357
  br label %132, !dbg !358

; <label>:131:                                    ; preds = %125
  br label %132, !dbg !359

; <label>:132:                                    ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ], !dbg !360
  %134 = load i32, i32* @optind, align 4, !dbg !361
  %135 = sext i32 %134 to i64, !dbg !362
  %136 = load i8**, i8*** %5, align 8, !dbg !362
  %137 = getelementptr inbounds i8*, i8** %136, i64 %135, !dbg !362
  %138 = load i8*, i8** %137, align 8, !dbg !362
  store i8* %138, i8** @shareName, align 8, !dbg !363
  %139 = load i32, i32* @optind, align 4, !dbg !364
  %140 = add nsw i32 %139, 1, !dbg !365
  %141 = sext i32 %140 to i64, !dbg !366
  %142 = load i8**, i8*** %5, align 8, !dbg !366
  %143 = getelementptr inbounds i8*, i8** %142, i64 %141, !dbg !366
  %144 = load i8*, i8** %143, align 8, !dbg !366
  store i8* %144, i8** @mountPoint, align 8, !dbg !367
  %145 = load i8*, i8** @mountPoint, align 8, !dbg !368
  %146 = call i64 @GetPathMax(i8* %145), !dbg !369
  store i64 %146, i64* %18, align 8, !dbg !370
  %147 = load i64, i64* %18, align 8, !dbg !371
  %148 = mul i64 %147, 1, !dbg !372
  %149 = call noalias i8* @malloc(i64 %148) #9, !dbg !373
  store i8* %149, i8** %17, align 8, !dbg !374
  %150 = load i8*, i8** %17, align 8, !dbg !375
  %151 = icmp eq i8* %150, null, !dbg !377
  br i1 %151, label %152, label %154, !dbg !378

; <label>:152:                                    ; preds = %132
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i32 0, i32 0)), !dbg !379
  br label %243, !dbg !381

; <label>:154:                                    ; preds = %132
  %155 = load i8*, i8** @mountPoint, align 8, !dbg !382
  %156 = load i8*, i8** %17, align 8, !dbg !384
  %157 = call i8* @realpath(i8* %155, i8* %156) #9, !dbg !385
  %158 = icmp ne i8* %157, null, !dbg !385
  br i1 %158, label %160, label %159, !dbg !386

; <label>:159:                                    ; preds = %154
  call void @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)), !dbg !387
  br label %243, !dbg !389

; <label>:160:                                    ; preds = %154
  br label %161

; <label>:161:                                    ; preds = %160
  %162 = load i8*, i8** %17, align 8, !dbg !390
  store i8* %162, i8** @mountPoint, align 8, !dbg !391
  %163 = load i8*, i8** @shareName, align 8, !dbg !392
  %164 = call signext i8 @ParseShareName(i8* %163, i8** %13, i8** %14), !dbg !394
  %165 = icmp ne i8 %164, 0, !dbg !394
  br i1 %165, label %168, label %166, !dbg !395

; <label>:166:                                    ; preds = %161
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0)), !dbg !396
  br label %243, !dbg !398

; <label>:168:                                    ; preds = %161
  %169 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 0, !dbg !399
  store i32 -1161057092, i32* %169, align 1, !dbg !400
  %170 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 1, !dbg !401
  store i32 54, i32* %170, align 1, !dbg !402
  %171 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 2, !dbg !403
  store i32 2, i32* %171, align 1, !dbg !404
  %172 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 9, !dbg !405
  store i16 0, i16* %172, align 1, !dbg !406
  %173 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 10, !dbg !407
  store i16 0, i16* %173, align 1, !dbg !408
  %174 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 6, !dbg !409
  store i8 0, i8* %174, align 1, !dbg !410
  %175 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 8, !dbg !411
  store i8 0, i8* %175, align 1, !dbg !412
  %176 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 11, !dbg !413
  store i32 1, i32* %176, align 1, !dbg !414
  %177 = load i8*, i8** %13, align 8, !dbg !415
  %178 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 12, !dbg !416
  store i8* %177, i8** %178, align 1, !dbg !417
  %179 = load i8*, i8** %14, align 8, !dbg !418
  %180 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 13, !dbg !419
  store i8* %179, i8** %180, align 1, !dbg !420
  %181 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %16, i32 0, i32 4, !dbg !421
  store i32 1, i32* %181, align 1, !dbg !422
  %182 = load i8*, i8** %12, align 8, !dbg !423
  %183 = icmp ne i8* %182, null, !dbg !423
  br i1 %183, label %184, label %190, !dbg !425

; <label>:184:                                    ; preds = %168
  %185 = load i8*, i8** %12, align 8, !dbg !426
  %186 = call signext i8 @ParseOptions(i8* %185, %struct.HgfsMountInfo* %16, i32* %10), !dbg !428
  %187 = icmp ne i8 %186, 0, !dbg !428
  br i1 %187, label %190, label %188, !dbg !429

; <label>:188:                                    ; preds = %184
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0)), !dbg !430
  br label %243, !dbg !432

; <label>:190:                                    ; preds = %184, %168
  %191 = load i8*, i8** @mountPoint, align 8, !dbg !433
  %192 = call i32 @stat64(i8* %191, %struct.stat* %15) #9, !dbg !435
  %193 = icmp ne i32 %192, 0, !dbg !435
  br i1 %193, label %194, label %195, !dbg !436

; <label>:194:                                    ; preds = %190
  call void @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)), !dbg !437
  br label %243, !dbg !439

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3, !dbg !440
  %197 = load i32, i32* %196, align 8, !dbg !440
  %198 = and i32 %197, 61440, !dbg !442
  %199 = icmp eq i32 %198, 16384, !dbg !443
  %200 = zext i1 %199 to i32, !dbg !443
  %201 = icmp eq i32 %200, 0, !dbg !444
  br i1 %201, label %202, label %205, !dbg !445

; <label>:202:                                    ; preds = %195
  %203 = load i8*, i8** @mountPoint, align 8, !dbg !446
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* %203), !dbg !448
  br label %243, !dbg !449

; <label>:205:                                    ; preds = %195
  %206 = call i32 @geteuid() #9, !dbg !450
  %207 = icmp ne i32 %206, 0, !dbg !452
  br i1 %207, label %208, label %211, !dbg !453

; <label>:208:                                    ; preds = %205
  %209 = load i8*, i8** @thisProgram, align 8, !dbg !454
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i8* %209), !dbg !456
  br label %243, !dbg !457

; <label>:211:                                    ; preds = %205
  %212 = call i32 @getuid() #9, !dbg !458
  %213 = icmp ne i32 %212, 0, !dbg !460
  br i1 %213, label %214, label %226, !dbg !461

; <label>:214:                                    ; preds = %211
  %215 = call i32 @getuid() #9, !dbg !462
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 4, !dbg !464
  %217 = load i32, i32* %216, align 4, !dbg !464
  %218 = icmp ne i32 %215, %217, !dbg !465
  br i1 %218, label %224, label %219, !dbg !466

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3, !dbg !467
  %221 = load i32, i32* %220, align 8, !dbg !467
  %222 = and i32 %221, 448, !dbg !468
  %223 = icmp ne i32 %222, 448, !dbg !469
  br i1 %223, label %224, label %226, !dbg !470

; <label>:224:                                    ; preds = %219, %214
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0)), !dbg !472
  br label %243, !dbg !474

; <label>:226:                                    ; preds = %219, %211
  br label %227

; <label>:227:                                    ; preds = %226
  %228 = load i8*, i8** @shareName, align 8, !dbg !475
  %229 = load i8*, i8** @mountPoint, align 8, !dbg !476
  %230 = load i32, i32* %10, align 4, !dbg !477
  %231 = sext i32 %230 to i64, !dbg !477
  %232 = bitcast %struct.HgfsMountInfo* %16 to i8*, !dbg !478
  %233 = call i32 @mount(i8* %228, i8* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 %231, i8* %232) #9, !dbg !479
  store i32 %233, i32* %11, align 4, !dbg !480
  %234 = load i32, i32* %11, align 4, !dbg !481
  %235 = icmp ne i32 %234, 0, !dbg !481
  br i1 %235, label %236, label %237, !dbg !483

; <label>:236:                                    ; preds = %227
  call void @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)), !dbg !484
  br label %243, !dbg !486

; <label>:237:                                    ; preds = %227
  store i32 0, i32* %9, align 4, !dbg !487
  %238 = load i8, i8* %6, align 1, !dbg !488
  %239 = icmp ne i8 %238, 0, !dbg !488
  br i1 %239, label %240, label %242, !dbg !490

; <label>:240:                                    ; preds = %237
  %241 = load i32, i32* %10, align 4, !dbg !491
  call void @UpdateMtab(%struct.HgfsMountInfo* %16, i32 %241), !dbg !493
  br label %242, !dbg !494

; <label>:242:                                    ; preds = %240, %237
  br label %243, !dbg !495

; <label>:243:                                    ; preds = %242, %236, %224, %208, %202, %194, %188, %166, %159, %152, %84
  %244 = load i8*, i8** %12, align 8, !dbg !497
  call void @free(i8* %244) #9, !dbg !498
  %245 = load i8*, i8** %17, align 8, !dbg !499
  call void @free(i8* %245) #9, !dbg !500
  %246 = load i32, i32* %9, align 4, !dbg !501
  ret i32 %246, !dbg !502
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare void @setpwent() #3

; Function Attrs: nounwind uwtable
define internal void @PrintUsage() #0 !dbg !503 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !506, metadata !154), !dbg !507
  %5 = load i8*, i8** @thisProgramBase, align 8, !dbg !508
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i8* %5), !dbg !509
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0)), !dbg !510
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0)), !dbg !511
  store i32 0, i32* %1, align 4, !dbg !512
  br label %9, !dbg !514

; <label>:9:                                      ; preds = %39, %0
  %10 = load i32, i32* %1, align 4, !dbg !515
  %11 = sext i32 %10 to i64, !dbg !515
  %12 = icmp ult i64 %11, 26, !dbg !518
  br i1 %12, label %13, label %42, !dbg !519

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %2, metadata !520, metadata !154), !dbg !522
  store i8 1, i8* %2, align 1, !dbg !522
  call void @llvm.dbg.declare(metadata i32* %3, metadata !523, metadata !154), !dbg !524
  store i32 0, i32* %3, align 4, !dbg !524
  call void @llvm.dbg.declare(metadata i8** %4, metadata !525, metadata !154), !dbg !526
  br label %14, !dbg !527

; <label>:14:                                     ; preds = %33, %13
  %15 = load i32, i32* %1, align 4, !dbg !528
  %16 = sext i32 %15 to i64, !dbg !529
  %17 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %16, !dbg !529
  %18 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %17, i32 0, i32 3, !dbg !530
  %19 = load i8*, i8** %18, align 8, !dbg !530
  %20 = call i8* @StrUtil_GetNextToken(i32* %3, i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !531
  store i8* %20, i8** %4, align 8, !dbg !533
  %21 = icmp ne i8* %20, null, !dbg !534
  br i1 %21, label %22, label %38, !dbg !535

; <label>:22:                                     ; preds = %14
  %23 = load i8, i8* %2, align 1, !dbg !536
  %24 = sext i8 %23 to i32, !dbg !536
  %25 = icmp ne i32 %24, 0, !dbg !536
  br i1 %25, label %26, label %32, !dbg !536

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %1, align 4, !dbg !538
  %28 = sext i32 %27 to i64, !dbg !540
  %29 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %28, !dbg !540
  %30 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %29, i32 0, i32 0, !dbg !541
  %31 = load i8*, i8** %30, align 8, !dbg !541
  br label %33, !dbg !542

; <label>:32:                                     ; preds = %22
  br label %33, !dbg !543

; <label>:33:                                     ; preds = %32, %26
  %34 = phi i8* [ %31, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), %32 ], !dbg !545
  %35 = load i8*, i8** %4, align 8, !dbg !547
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* %34, i8* %35), !dbg !548
  %37 = load i8*, i8** %4, align 8, !dbg !549
  call void @free(i8* %37) #9, !dbg !550
  store i8 0, i8* %2, align 1, !dbg !551
  br label %14, !dbg !552, !llvm.loop !554

; <label>:38:                                     ; preds = %14
  br label %39, !dbg !555

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %1, align 4, !dbg !556
  %41 = add nsw i32 %40, 1, !dbg !556
  store i32 %41, i32* %1, align 4, !dbg !556
  br label %9, !dbg !558, !llvm.loop !559

; <label>:42:                                     ; preds = %9
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !561
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i32 0, i32 0)), !dbg !562
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)), !dbg !563
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)), !dbg !564
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)), !dbg !565
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)), !dbg !566
  call void @exit(i32 1) #10, !dbg !567
  unreachable, !dbg !567
                                                  ; No predecessors!
  ret void, !dbg !568
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

declare i8* @Str_Strcat(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @PrintVersion() #0 !dbg !569 {
  %1 = load i8*, i8** @thisProgramBase, align 8, !dbg !570
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0)), !dbg !571
  call void @exit(i32 0) #10, !dbg !572
  unreachable, !dbg !572
                                                  ; No predecessors!
  ret void, !dbg !573
}

; Function Attrs: nounwind uwtable
define internal i64 @GetPathMax(i8*) #0 !dbg !574 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !577, metadata !154), !dbg !578
  call void @llvm.dbg.declare(metadata i64* %3, metadata !579, metadata !154), !dbg !580
  call void @llvm.dbg.declare(metadata i64* %4, metadata !581, metadata !154), !dbg !582
  %5 = load i8*, i8** %2, align 8, !dbg !583
  %6 = call i64 @pathconf(i8* %5, i32 4) #9, !dbg !584
  store i64 %6, i64* %4, align 8, !dbg !585
  %7 = load i64, i64* %4, align 8, !dbg !586
  %8 = icmp sle i64 %7, 0, !dbg !588
  br i1 %8, label %12, label %9, !dbg !589

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %4, align 8, !dbg !590
  %11 = icmp sgt i64 %10, 4096, !dbg !592
  br i1 %11, label %12, label %13, !dbg !593

; <label>:12:                                     ; preds = %9, %1
  store i64 4096, i64* %3, align 8, !dbg !594
  br label %15, !dbg !596

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %4, align 8, !dbg !597
  store i64 %14, i64* %3, align 8, !dbg !599
  br label %15

; <label>:15:                                     ; preds = %13, %12
  %16 = load i64, i64* %3, align 8, !dbg !600
  ret i64 %16, !dbg !601
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #4

declare void @perror(i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseShareName(i8*, i8**, i8**) #0 !dbg !602 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !606, metadata !154), !dbg !607
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !608, metadata !154), !dbg !609
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !610, metadata !154), !dbg !611
  call void @llvm.dbg.declare(metadata i8** %8, metadata !612, metadata !154), !dbg !613
  call void @llvm.dbg.declare(metadata i8** %9, metadata !614, metadata !154), !dbg !615
  %10 = load i8*, i8** %5, align 8, !dbg !616
  %11 = call i8* @strchr(i8* %10, i32 58) #8, !dbg !617
  store i8* %11, i8** %8, align 8, !dbg !618
  %12 = load i8*, i8** %8, align 8, !dbg !619
  %13 = icmp eq i8* %12, null, !dbg !621
  br i1 %13, label %14, label %16, !dbg !622

; <label>:14:                                     ; preds = %3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.118, i32 0, i32 0)), !dbg !623
  store i8 0, i8* %4, align 1, !dbg !625
  br label %62, !dbg !625

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !626
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !627
  store i8* %18, i8** %9, align 8, !dbg !628
  %19 = load i8*, i8** %9, align 8, !dbg !629
  %20 = load i8, i8* %19, align 1, !dbg !631
  %21 = sext i8 %20 to i32, !dbg !631
  %22 = icmp eq i32 %21, 0, !dbg !632
  br i1 %22, label %23, label %25, !dbg !633

; <label>:23:                                     ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.119, i32 0, i32 0)), !dbg !634
  store i8 0, i8* %4, align 1, !dbg !636
  br label %62, !dbg !636

; <label>:25:                                     ; preds = %16
  %26 = load i8*, i8** %9, align 8, !dbg !637
  %27 = load i8, i8* %26, align 1, !dbg !639
  %28 = sext i8 %27 to i32, !dbg !639
  %29 = icmp ne i32 %28, 47, !dbg !640
  br i1 %29, label %30, label %32, !dbg !641

; <label>:30:                                     ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.120, i32 0, i32 0)), !dbg !642
  store i8 0, i8* %4, align 1, !dbg !644
  br label %62, !dbg !644

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** %5, align 8, !dbg !645
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i64 6) #8, !dbg !647
  %35 = icmp ne i32 %34, 0, !dbg !648
  br i1 %35, label %36, label %38, !dbg !649

; <label>:36:                                     ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.122, i32 0, i32 0)), !dbg !650
  store i8 0, i8* %4, align 1, !dbg !652
  br label %62, !dbg !652

; <label>:38:                                     ; preds = %32
  %39 = load i8**, i8*** %6, align 8, !dbg !653
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8** %39, align 8, !dbg !654
  %40 = load i8, i8* @beVerbose, align 1, !dbg !655
  %41 = sext i8 %40 to i32, !dbg !655
  %42 = icmp ne i32 %41, 0, !dbg !655
  br i1 %42, label %43, label %47, !dbg !655

; <label>:43:                                     ; preds = %38
  %44 = load i8**, i8*** %6, align 8, !dbg !656
  %45 = load i8*, i8** %44, align 8, !dbg !658
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.124, i32 0, i32 0), i8* %45), !dbg !659
  br label %48, !dbg !660

; <label>:47:                                     ; preds = %38
  br label %48, !dbg !661

; <label>:48:                                     ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ], !dbg !663
  %50 = load i8*, i8** %9, align 8, !dbg !665
  %51 = load i8**, i8*** %7, align 8, !dbg !666
  store i8* %50, i8** %51, align 8, !dbg !667
  %52 = load i8, i8* @beVerbose, align 1, !dbg !668
  %53 = sext i8 %52 to i32, !dbg !668
  %54 = icmp ne i32 %53, 0, !dbg !668
  br i1 %54, label %55, label %59, !dbg !668

; <label>:55:                                     ; preds = %48
  %56 = load i8**, i8*** %7, align 8, !dbg !669
  %57 = load i8*, i8** %56, align 8, !dbg !670
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.125, i32 0, i32 0), i8* %57), !dbg !671
  br label %60, !dbg !672

; <label>:59:                                     ; preds = %48
  br label %60, !dbg !673

; <label>:60:                                     ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ], !dbg !674
  store i8 1, i8* %4, align 1, !dbg !675
  br label %62, !dbg !675

; <label>:62:                                     ; preds = %60, %36, %30, %23, %14
  %63 = load i8, i8* %4, align 1, !dbg !676
  ret i8 %63, !dbg !676
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseOptions(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !677 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !678, metadata !154), !dbg !679
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !680, metadata !154), !dbg !681
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !682, metadata !154), !dbg !683
  call void @llvm.dbg.declare(metadata i32* %7, metadata !684, metadata !154), !dbg !685
  store i32 0, i32* %7, align 4, !dbg !685
  call void @llvm.dbg.declare(metadata i8* %8, metadata !686, metadata !154), !dbg !687
  store i8 0, i8* %8, align 1, !dbg !687
  call void @llvm.dbg.declare(metadata i8** %9, metadata !688, metadata !154), !dbg !689
  store i8* null, i8** %9, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata i8** %10, metadata !690, metadata !154), !dbg !691
  store i8* null, i8** %10, align 8, !dbg !691
  call void @llvm.dbg.declare(metadata i32* %11, metadata !692, metadata !154), !dbg !693
  %16 = load i8, i8* @beVerbose, align 1, !dbg !694
  %17 = sext i8 %16 to i32, !dbg !694
  %18 = icmp ne i32 %17, 0, !dbg !694
  br i1 %18, label %19, label %22, !dbg !694

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !695
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i32 0, i32 0), i8* %20), !dbg !697
  br label %23, !dbg !698

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !699

; <label>:23:                                     ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ], !dbg !701
  br label %25, !dbg !703

; <label>:25:                                     ; preds = %141, %23
  %26 = load i8*, i8** %4, align 8, !dbg !704
  %27 = call i8* @StrUtil_GetNextToken(i32* %7, i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !705
  store i8* %27, i8** %10, align 8, !dbg !706
  %28 = icmp ne i8* %27, null, !dbg !707
  br i1 %28, label %29, label %144, !dbg !708

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %12, metadata !709, metadata !154), !dbg !711
  store i32 0, i32* %12, align 4, !dbg !711
  %30 = load i8*, i8** %10, align 8, !dbg !712
  %31 = call i8* @StrUtil_GetNextToken(i32* %12, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !713
  store i8* %31, i8** %9, align 8, !dbg !714
  %32 = load i8*, i8** %9, align 8, !dbg !715
  %33 = icmp eq i8* %32, null, !dbg !717
  br i1 %33, label %34, label %36, !dbg !718

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.127, i32 0, i32 0)), !dbg !719
  br label %145, !dbg !721

; <label>:36:                                     ; preds = %29
  store i32 0, i32* %11, align 4, !dbg !722
  br label %37, !dbg !724

; <label>:37:                                     ; preds = %124, %36
  %38 = load i32, i32* %11, align 4, !dbg !725
  %39 = sext i32 %38 to i64, !dbg !725
  %40 = icmp ult i64 %39, 26, !dbg !728
  br i1 %40, label %41, label %127, !dbg !729

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8* %13, metadata !730, metadata !154), !dbg !732
  store i8 0, i8* %13, align 1, !dbg !732
  call void @llvm.dbg.declare(metadata i32* %14, metadata !733, metadata !154), !dbg !734
  store i32 0, i32* %14, align 4, !dbg !734
  call void @llvm.dbg.declare(metadata i8** %15, metadata !735, metadata !154), !dbg !736
  %42 = load i32, i32* %11, align 4, !dbg !737
  %43 = sext i32 %42 to i64, !dbg !738
  %44 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %43, !dbg !738
  %45 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %44, i32 0, i32 0, !dbg !739
  %46 = load i8*, i8** %45, align 8, !dbg !739
  %47 = call i8* @StrUtil_GetNextToken(i32* %14, i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !740
  store i8* %47, i8** %15, align 8, !dbg !736
  %48 = load i8*, i8** %15, align 8, !dbg !741
  %49 = icmp ne i8* %48, null, !dbg !741
  br i1 %49, label %52, label %50, !dbg !743

; <label>:50:                                     ; preds = %41
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.128, i32 0, i32 0)), !dbg !744
  br label %145, !dbg !746

; <label>:52:                                     ; preds = %41
  %53 = load i8*, i8** %9, align 8, !dbg !747
  %54 = load i8*, i8** %15, align 8, !dbg !748
  %55 = call i32 @strcmp(i8* %53, i8* %54) #8, !dbg !749
  %56 = icmp eq i32 %55, 0, !dbg !750
  %57 = zext i1 %56 to i32, !dbg !750
  %58 = trunc i32 %57 to i8, !dbg !749
  store i8 %58, i8* %13, align 1, !dbg !751
  %59 = load i8*, i8** %15, align 8, !dbg !752
  call void @free(i8* %59) #9, !dbg !753
  %60 = load i8, i8* %13, align 1, !dbg !754
  %61 = icmp ne i8 %60, 0, !dbg !754
  br i1 %61, label %62, label %123, !dbg !756

; <label>:62:                                     ; preds = %52
  %63 = load i32, i32* %11, align 4, !dbg !757
  %64 = sext i32 %63 to i64, !dbg !760
  %65 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %64, !dbg !760
  %66 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %65, i32 0, i32 5, !dbg !761
  %67 = load i8 (i8*, %struct.HgfsMountInfo*, i32*)*, i8 (i8*, %struct.HgfsMountInfo*, i32*)** %66, align 8, !dbg !761
  %68 = icmp ne i8 (i8*, %struct.HgfsMountInfo*, i32*)* %67, null, !dbg !760
  br i1 %68, label %69, label %82, !dbg !762

; <label>:69:                                     ; preds = %62
  %70 = load i32, i32* %11, align 4, !dbg !763
  %71 = sext i32 %70 to i64, !dbg !766
  %72 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %71, !dbg !766
  %73 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %72, i32 0, i32 5, !dbg !767
  %74 = load i8 (i8*, %struct.HgfsMountInfo*, i32*)*, i8 (i8*, %struct.HgfsMountInfo*, i32*)** %73, align 8, !dbg !767
  %75 = load i8*, i8** %10, align 8, !dbg !768
  %76 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !769
  %77 = load i32*, i32** %6, align 8, !dbg !770
  %78 = call signext i8 %74(i8* %75, %struct.HgfsMountInfo* %76, i32* %77), !dbg !766
  %79 = icmp ne i8 %78, 0, !dbg !766
  br i1 %79, label %81, label %80, !dbg !771

; <label>:80:                                     ; preds = %69
  br label %145, !dbg !772

; <label>:81:                                     ; preds = %69
  br label %122, !dbg !774

; <label>:82:                                     ; preds = %62
  %83 = load i32, i32* %11, align 4, !dbg !775
  %84 = sext i32 %83 to i64, !dbg !778
  %85 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %84, !dbg !778
  %86 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %85, i32 0, i32 2, !dbg !779
  %87 = load i8, i8* %86, align 4, !dbg !779
  %88 = icmp ne i8 %87, 0, !dbg !778
  br i1 %88, label %89, label %98, !dbg !780

; <label>:89:                                     ; preds = %82
  %90 = load i32, i32* %11, align 4, !dbg !781
  %91 = sext i32 %90 to i64, !dbg !783
  %92 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %91, !dbg !783
  %93 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %92, i32 0, i32 1, !dbg !784
  %94 = load i32, i32* %93, align 8, !dbg !784
  %95 = load i32*, i32** %6, align 8, !dbg !785
  %96 = load i32, i32* %95, align 4, !dbg !786
  %97 = or i32 %96, %94, !dbg !786
  store i32 %97, i32* %95, align 4, !dbg !786
  br label %108, !dbg !787

; <label>:98:                                     ; preds = %82
  %99 = load i32, i32* %11, align 4, !dbg !788
  %100 = sext i32 %99 to i64, !dbg !790
  %101 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %100, !dbg !790
  %102 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %101, i32 0, i32 1, !dbg !791
  %103 = load i32, i32* %102, align 8, !dbg !791
  %104 = xor i32 %103, -1, !dbg !792
  %105 = load i32*, i32** %6, align 8, !dbg !793
  %106 = load i32, i32* %105, align 4, !dbg !794
  %107 = and i32 %106, %104, !dbg !794
  store i32 %107, i32* %105, align 4, !dbg !794
  br label %108

; <label>:108:                                    ; preds = %98, %89
  %109 = load i8, i8* @beVerbose, align 1, !dbg !795
  %110 = sext i8 %109 to i32, !dbg !795
  %111 = icmp ne i32 %110, 0, !dbg !795
  br i1 %111, label %112, label %119, !dbg !795

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %11, align 4, !dbg !796
  %114 = sext i32 %113 to i64, !dbg !798
  %115 = getelementptr inbounds [26 x %struct.MountOptions], [26 x %struct.MountOptions]* @mountOptions, i64 0, i64 %114, !dbg !798
  %116 = getelementptr inbounds %struct.MountOptions, %struct.MountOptions* %115, i32 0, i32 4, !dbg !799
  %117 = load i8*, i8** %116, align 8, !dbg !799
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* %117), !dbg !800
  br label %120, !dbg !801

; <label>:119:                                    ; preds = %108
  br label %120, !dbg !802

; <label>:120:                                    ; preds = %119, %112
  %121 = phi i32 [ %118, %112 ], [ 0, %119 ], !dbg !804
  br label %122

; <label>:122:                                    ; preds = %120, %81
  br label %127, !dbg !806

; <label>:123:                                    ; preds = %52
  br label %124, !dbg !807

; <label>:124:                                    ; preds = %123
  %125 = load i32, i32* %11, align 4, !dbg !808
  %126 = add nsw i32 %125, 1, !dbg !808
  store i32 %126, i32* %11, align 4, !dbg !808
  br label %37, !dbg !810, !llvm.loop !811

; <label>:127:                                    ; preds = %122, %37
  %128 = load i32, i32* %11, align 4, !dbg !813
  %129 = sext i32 %128 to i64, !dbg !813
  %130 = icmp eq i64 %129, 26, !dbg !815
  br i1 %130, label %131, label %141, !dbg !816

; <label>:131:                                    ; preds = %127
  %132 = load i8, i8* @beVerbose, align 1, !dbg !817
  %133 = sext i8 %132 to i32, !dbg !817
  %134 = icmp ne i32 %133, 0, !dbg !817
  br i1 %134, label %135, label %138, !dbg !817

; <label>:135:                                    ; preds = %131
  %136 = load i8*, i8** %9, align 8, !dbg !819
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.130, i32 0, i32 0), i8* %136), !dbg !821
  br label %139, !dbg !822

; <label>:138:                                    ; preds = %131
  br label %139, !dbg !823

; <label>:139:                                    ; preds = %138, %135
  %140 = phi i32 [ %137, %135 ], [ 0, %138 ], !dbg !825
  br label %141, !dbg !827

; <label>:141:                                    ; preds = %139, %127
  %142 = load i8*, i8** %9, align 8, !dbg !828
  call void @free(i8* %142) #9, !dbg !829
  %143 = load i8*, i8** %10, align 8, !dbg !830
  call void @free(i8* %143) #9, !dbg !831
  store i8* null, i8** %9, align 8, !dbg !832
  store i8* null, i8** %10, align 8, !dbg !833
  br label %25, !dbg !834, !llvm.loop !835

; <label>:144:                                    ; preds = %25
  store i8 1, i8* %8, align 1, !dbg !836
  br label %145, !dbg !837

; <label>:145:                                    ; preds = %144, %80, %50, %34
  %146 = load i8*, i8** %9, align 8, !dbg !838
  call void @free(i8* %146) #9, !dbg !839
  %147 = load i8*, i8** %10, align 8, !dbg !840
  call void @free(i8* %147) #9, !dbg !841
  %148 = load i8, i8* %8, align 1, !dbg !842
  ret i8 %148, !dbg !843
}

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #4

; Function Attrs: nounwind
declare i32 @geteuid() #4

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @mount(i8*, i8*, i8*, i64, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @UpdateMtab(%struct.HgfsMountInfo*, i32) #0 !dbg !844 {
  %3 = alloca %struct.HgfsMountInfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntent, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.HgfsMountInfo* %0, %struct.HgfsMountInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %3, metadata !847, metadata !154), !dbg !848
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !849, metadata !154), !dbg !850
  call void @llvm.dbg.declare(metadata %struct.mntent* %5, metadata !851, metadata !154), !dbg !861
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !862, metadata !154), !dbg !913
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !914, metadata !154), !dbg !925
  call void @llvm.dbg.declare(metadata i8** %8, metadata !926, metadata !154), !dbg !927
  store i8* null, i8** %8, align 8, !dbg !927
  %10 = call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0)) #9, !dbg !928
  store %struct._IO_FILE* %10, %struct._IO_FILE** %6, align 8, !dbg !929
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !930
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !932
  br i1 %12, label %13, label %15, !dbg !933

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.133, i32 0, i32 0)), !dbg !934
  br label %158, !dbg !936

; <label>:15:                                     ; preds = %2
  %16 = call i32 @getuid() #9, !dbg !937
  %17 = icmp ne i32 %16, 0, !dbg !939
  br i1 %17, label %18, label %30, !dbg !940

; <label>:18:                                     ; preds = %15
  %19 = call i32 @getuid() #9, !dbg !941
  %20 = call %struct.passwd* @getpwuid(i32 %19), !dbg !943
  store %struct.passwd* %20, %struct.passwd** %7, align 8, !dbg !945
  %21 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !946
  %22 = icmp eq %struct.passwd* %21, null, !dbg !948
  br i1 %22, label %23, label %25, !dbg !949

; <label>:23:                                     ; preds = %18
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.134, i32 0, i32 0)), !dbg !950
  br label %29, !dbg !952

; <label>:25:                                     ; preds = %18
  %26 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !953
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0, !dbg !955
  %28 = load i8*, i8** %27, align 8, !dbg !955
  store i8* %28, i8** %8, align 8, !dbg !956
  br label %29

; <label>:29:                                     ; preds = %25, %23
  br label %30, !dbg !957

; <label>:30:                                     ; preds = %29, %15
  %31 = load i8*, i8** @shareName, align 8, !dbg !958
  %32 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 0, !dbg !959
  store i8* %31, i8** %32, align 8, !dbg !960
  %33 = load i8*, i8** @mountPoint, align 8, !dbg !961
  %34 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 1, !dbg !962
  store i8* %33, i8** %34, align 8, !dbg !963
  %35 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 2, !dbg !964
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8** %35, align 8, !dbg !965
  %36 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 4, !dbg !966
  store i32 0, i32* %36, align 8, !dbg !967
  %37 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 5, !dbg !968
  store i32 0, i32* %37, align 4, !dbg !969
  %38 = call noalias i8* @malloc(i64 256) #9, !dbg !970
  %39 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !971
  store i8* %38, i8** %39, align 8, !dbg !972
  %40 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !973
  %41 = load i8*, i8** %40, align 8, !dbg !973
  %42 = icmp ne i8* %41, null, !dbg !975
  br i1 %42, label %43, label %143, !dbg !976

; <label>:43:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i8** %9, metadata !977, metadata !154), !dbg !979
  %44 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !980
  %45 = load i8*, i8** %44, align 8, !dbg !980
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 256, i32 1, i1 false), !dbg !981
  %46 = load i32, i32* %4, align 4, !dbg !982
  %47 = and i32 %46, 1, !dbg !984
  %48 = icmp ne i32 %47, 0, !dbg !984
  br i1 %48, label %49, label %53, !dbg !985

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !986
  %51 = load i8*, i8** %50, align 8, !dbg !986
  %52 = call i8* @Str_Strcat(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i64 256), !dbg !988
  br label %57, !dbg !989

; <label>:53:                                     ; preds = %43
  %54 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !990
  %55 = load i8*, i8** %54, align 8, !dbg !990
  %56 = call i8* @Str_Strcat(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i64 256), !dbg !992
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = load i32, i32* %4, align 4, !dbg !993
  %59 = and i32 %58, 2, !dbg !995
  %60 = icmp ne i32 %59, 0, !dbg !995
  br i1 %60, label %61, label %65, !dbg !996

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !997
  %63 = load i8*, i8** %62, align 8, !dbg !997
  %64 = call i8* @Str_Strcat(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i64 256), !dbg !999
  br label %65, !dbg !1000

; <label>:65:                                     ; preds = %61, %57
  %66 = load i32, i32* %4, align 4, !dbg !1001
  %67 = and i32 %66, 4, !dbg !1003
  %68 = icmp ne i32 %67, 0, !dbg !1003
  br i1 %68, label %69, label %73, !dbg !1004

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1005
  %71 = load i8*, i8** %70, align 8, !dbg !1005
  %72 = call i8* @Str_Strcat(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i64 256), !dbg !1007
  br label %73, !dbg !1008

; <label>:73:                                     ; preds = %69, %65
  %74 = load i32, i32* %4, align 4, !dbg !1009
  %75 = and i32 %74, 8, !dbg !1011
  %76 = icmp ne i32 %75, 0, !dbg !1011
  br i1 %76, label %77, label %81, !dbg !1012

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1013
  %79 = load i8*, i8** %78, align 8, !dbg !1013
  %80 = call i8* @Str_Strcat(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i64 256), !dbg !1015
  br label %81, !dbg !1016

; <label>:81:                                     ; preds = %77, %73
  %82 = load i32, i32* %4, align 4, !dbg !1017
  %83 = and i32 %82, 16, !dbg !1019
  %84 = icmp ne i32 %83, 0, !dbg !1019
  br i1 %84, label %85, label %89, !dbg !1020

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1021
  %87 = load i8*, i8** %86, align 8, !dbg !1021
  %88 = call i8* @Str_Strcat(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i64 256), !dbg !1023
  br label %89, !dbg !1024

; <label>:89:                                     ; preds = %85, %81
  %90 = load i32, i32* %4, align 4, !dbg !1025
  %91 = and i32 %90, 64, !dbg !1027
  %92 = icmp ne i32 %91, 0, !dbg !1027
  br i1 %92, label %93, label %97, !dbg !1028

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1029
  %95 = load i8*, i8** %94, align 8, !dbg !1029
  %96 = call i8* @Str_Strcat(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i64 256), !dbg !1031
  br label %97, !dbg !1032

; <label>:97:                                     ; preds = %93, %89
  %98 = load i32, i32* %4, align 4, !dbg !1033
  %99 = and i32 %98, 1024, !dbg !1035
  %100 = icmp ne i32 %99, 0, !dbg !1035
  br i1 %100, label %101, label %105, !dbg !1036

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1037
  %103 = load i8*, i8** %102, align 8, !dbg !1037
  %104 = call i8* @Str_Strcat(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i32 0, i32 0), i64 256), !dbg !1039
  br label %105, !dbg !1040

; <label>:105:                                    ; preds = %101, %97
  %106 = load i32, i32* %4, align 4, !dbg !1041
  %107 = and i32 %106, 2048, !dbg !1043
  %108 = icmp ne i32 %107, 0, !dbg !1043
  br i1 %108, label %109, label %113, !dbg !1044

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1045
  %111 = load i8*, i8** %110, align 8, !dbg !1045
  %112 = call i8* @Str_Strcat(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i64 256), !dbg !1047
  br label %113, !dbg !1048

; <label>:113:                                    ; preds = %109, %105
  %114 = load i8*, i8** %8, align 8, !dbg !1049
  %115 = icmp ne i8* %114, null, !dbg !1051
  br i1 %115, label %116, label %124, !dbg !1052

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1053
  %118 = load i8*, i8** %117, align 8, !dbg !1053
  %119 = call i8* @Str_Strcat(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i64 256), !dbg !1055
  %120 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1056
  %121 = load i8*, i8** %120, align 8, !dbg !1056
  %122 = load i8*, i8** %8, align 8, !dbg !1057
  %123 = call i8* @Str_Strcat(i8* %121, i8* %122, i64 256), !dbg !1058
  br label %124, !dbg !1059

; <label>:124:                                    ; preds = %116, %113
  %125 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %3, align 8, !dbg !1060
  %126 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %125, i32 0, i32 11, !dbg !1061
  %127 = load i32, i32* %126, align 1, !dbg !1061
  %128 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i32 %127), !dbg !1062
  store i8* %128, i8** %9, align 8, !dbg !1063
  %129 = load i8*, i8** %9, align 8, !dbg !1064
  %130 = icmp ne i8* %129, null, !dbg !1066
  br i1 %130, label %131, label %140, !dbg !1067

; <label>:131:                                    ; preds = %124
  %132 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1068
  %133 = load i8*, i8** %132, align 8, !dbg !1068
  %134 = call i8* @Str_Strcat(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), i64 256), !dbg !1070
  %135 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1071
  %136 = load i8*, i8** %135, align 8, !dbg !1071
  %137 = load i8*, i8** %9, align 8, !dbg !1072
  %138 = call i8* @Str_Strcat(i8* %136, i8* %137, i64 256), !dbg !1073
  %139 = load i8*, i8** %9, align 8, !dbg !1074
  call void @free(i8* %139) #9, !dbg !1075
  br label %142, !dbg !1076

; <label>:140:                                    ; preds = %124
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.145, i32 0, i32 0)), !dbg !1077
  br label %142

; <label>:142:                                    ; preds = %140, %131
  br label %143, !dbg !1079

; <label>:143:                                    ; preds = %142, %30
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1080
  %145 = call i32 @addmntent(%struct._IO_FILE* %144, %struct.mntent* %5) #9, !dbg !1082
  %146 = icmp ne i32 %145, 0, !dbg !1082
  br i1 %146, label %147, label %149, !dbg !1083

; <label>:147:                                    ; preds = %143
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.146, i32 0, i32 0)), !dbg !1084
  br label %149, !dbg !1086

; <label>:149:                                    ; preds = %147, %143
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1087
  %151 = call i32 @endmntent(%struct._IO_FILE* %150) #9, !dbg !1088
  %152 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1089
  %153 = load i8*, i8** %152, align 8, !dbg !1089
  %154 = icmp ne i8* %153, null, !dbg !1091
  br i1 %154, label %155, label %158, !dbg !1092

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds %struct.mntent, %struct.mntent* %5, i32 0, i32 3, !dbg !1093
  %157 = load i8*, i8** %156, align 8, !dbg !1093
  call void @free(i8* %157) #9, !dbg !1095
  br label %158, !dbg !1096

; <label>:158:                                    ; preds = %13, %155, %149
  ret void, !dbg !1097
}

declare i8* @StrUtil_GetNextToken(i32*, i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseUid(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1098 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1099, metadata !154), !dbg !1100
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !1101, metadata !154), !dbg !1102
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1103, metadata !154), !dbg !1104
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1105, metadata !154), !dbg !1106
  store i8 0, i8* %7, align 1, !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1107, metadata !154), !dbg !1108
  store i32 0, i32* %8, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1109, metadata !154), !dbg !1110
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1111, metadata !154), !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1113, metadata !154), !dbg !1114
  store i32 0, i32* %11, align 4, !dbg !1114
  %13 = load i8*, i8** %4, align 8, !dbg !1115
  %14 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1116
  store i8* %14, i8** %9, align 8, !dbg !1117
  %15 = load i8*, i8** %4, align 8, !dbg !1118
  %16 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1119
  store i8* %16, i8** %10, align 8, !dbg !1120
  %17 = load i8*, i8** %10, align 8, !dbg !1121
  %18 = icmp ne i8* %17, null, !dbg !1121
  br i1 %18, label %28, label %19, !dbg !1123

; <label>:19:                                     ; preds = %3
  %20 = load i8, i8* @beVerbose, align 1, !dbg !1124
  %21 = sext i8 %20 to i32, !dbg !1124
  %22 = icmp ne i32 %21, 0, !dbg !1124
  br i1 %22, label %23, label %25, !dbg !1124

; <label>:23:                                     ; preds = %19
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0)), !dbg !1126
  br label %26, !dbg !1128

; <label>:25:                                     ; preds = %19
  br label %26, !dbg !1129

; <label>:26:                                     ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ], !dbg !1131
  br label %85, !dbg !1133

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %10, align 8, !dbg !1134
  %30 = load i8, i8* %29, align 1, !dbg !1136
  %31 = sext i8 %30 to i32, !dbg !1137
  %32 = sext i32 %31 to i64, !dbg !1134
  %33 = call i16** @__ctype_b_loc() #1, !dbg !1138
  %34 = load i16*, i16** %33, align 8, !dbg !1139
  %35 = getelementptr inbounds i16, i16* %34, i64 %32, !dbg !1134
  %36 = load i16, i16* %35, align 2, !dbg !1134
  %37 = zext i16 %36 to i32, !dbg !1134
  %38 = and i32 %37, 2048, !dbg !1140
  %39 = icmp ne i32 %38, 0, !dbg !1140
  br i1 %39, label %40, label %53, !dbg !1141

; <label>:40:                                     ; preds = %28
  %41 = call i32* @__errno_location() #1, !dbg !1142
  store i32 0, i32* %41, align 4, !dbg !1144
  %42 = load i8*, i8** %10, align 8, !dbg !1145
  %43 = call i64 @strtoul(i8* %42, i8** null, i32 10) #9, !dbg !1146
  %44 = trunc i64 %43 to i32, !dbg !1146
  store i32 %44, i32* %11, align 4, !dbg !1147
  %45 = call i32* @__errno_location() #1, !dbg !1148
  %46 = load i32, i32* %45, align 4, !dbg !1150
  %47 = icmp eq i32 %46, 0, !dbg !1151
  br i1 %47, label %48, label %49, !dbg !1152

; <label>:48:                                     ; preds = %40
  store i8 1, i8* %7, align 1, !dbg !1153
  br label %52, !dbg !1155

; <label>:49:                                     ; preds = %40
  %50 = load i8*, i8** %10, align 8, !dbg !1156
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0), i8* %50), !dbg !1158
  br label %52

; <label>:52:                                     ; preds = %49, %48
  br label %65, !dbg !1159

; <label>:53:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.passwd** %12, metadata !1160, metadata !154), !dbg !1162
  %54 = load i8*, i8** %10, align 8, !dbg !1163
  %55 = call %struct.passwd* @getpwnam(i8* %54), !dbg !1165
  store %struct.passwd* %55, %struct.passwd** %12, align 8, !dbg !1166
  %56 = icmp ne %struct.passwd* %55, null, !dbg !1166
  br i1 %56, label %60, label %57, !dbg !1167

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %10, align 8, !dbg !1168
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i8* %58), !dbg !1170
  br label %64, !dbg !1171

; <label>:60:                                     ; preds = %53
  %61 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !1172
  %62 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i32 0, i32 2, !dbg !1174
  %63 = load i32, i32* %62, align 8, !dbg !1174
  store i32 %63, i32* %11, align 4, !dbg !1175
  store i8 1, i8* %7, align 1, !dbg !1176
  br label %64

; <label>:64:                                     ; preds = %60, %57
  call void @endpwent(), !dbg !1177
  br label %65

; <label>:65:                                     ; preds = %64, %52
  %66 = load i8, i8* %7, align 1, !dbg !1178
  %67 = icmp ne i8 %66, 0, !dbg !1178
  br i1 %67, label %68, label %83, !dbg !1180

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %11, align 4, !dbg !1181
  %70 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1183
  %71 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %70, i32 0, i32 5, !dbg !1184
  store i32 %69, i32* %71, align 1, !dbg !1185
  %72 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1186
  %73 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %72, i32 0, i32 6, !dbg !1187
  store i8 1, i8* %73, align 1, !dbg !1188
  %74 = load i8, i8* @beVerbose, align 1, !dbg !1189
  %75 = sext i8 %74 to i32, !dbg !1189
  %76 = icmp ne i32 %75, 0, !dbg !1189
  br i1 %76, label %77, label %80, !dbg !1189

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %11, align 4, !dbg !1190
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.103, i32 0, i32 0), i32 %78), !dbg !1192
  br label %81, !dbg !1193

; <label>:80:                                     ; preds = %68
  br label %81, !dbg !1194

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ], !dbg !1196
  br label %83, !dbg !1198

; <label>:83:                                     ; preds = %81, %65
  %84 = load i8*, i8** %10, align 8, !dbg !1199
  call void @free(i8* %84) #9, !dbg !1200
  br label %85, !dbg !1200

; <label>:85:                                     ; preds = %83, %26
  %86 = load i8*, i8** %9, align 8, !dbg !1201
  call void @free(i8* %86) #9, !dbg !1202
  %87 = load i8, i8* %7, align 1, !dbg !1203
  ret i8 %87, !dbg !1204
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseGid(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1205 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.group*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1206, metadata !154), !dbg !1207
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !1208, metadata !154), !dbg !1209
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1210, metadata !154), !dbg !1211
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1212, metadata !154), !dbg !1213
  store i8 0, i8* %7, align 1, !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1214, metadata !154), !dbg !1215
  store i32 0, i32* %8, align 4, !dbg !1215
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1216, metadata !154), !dbg !1217
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1218, metadata !154), !dbg !1219
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1220, metadata !154), !dbg !1221
  store i32 0, i32* %11, align 4, !dbg !1221
  %13 = load i8*, i8** %4, align 8, !dbg !1222
  %14 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1223
  store i8* %14, i8** %9, align 8, !dbg !1224
  %15 = load i8*, i8** %4, align 8, !dbg !1225
  %16 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1226
  store i8* %16, i8** %10, align 8, !dbg !1227
  %17 = load i8*, i8** %10, align 8, !dbg !1228
  %18 = icmp ne i8* %17, null, !dbg !1228
  br i1 %18, label %28, label %19, !dbg !1230

; <label>:19:                                     ; preds = %3
  %20 = load i8, i8* @beVerbose, align 1, !dbg !1231
  %21 = sext i8 %20 to i32, !dbg !1231
  %22 = icmp ne i32 %21, 0, !dbg !1231
  br i1 %22, label %23, label %25, !dbg !1231

; <label>:23:                                     ; preds = %19
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i32 0, i32 0)), !dbg !1233
  br label %26, !dbg !1235

; <label>:25:                                     ; preds = %19
  br label %26, !dbg !1236

; <label>:26:                                     ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ], !dbg !1238
  br label %85, !dbg !1240

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %10, align 8, !dbg !1241
  %30 = load i8, i8* %29, align 1, !dbg !1243
  %31 = sext i8 %30 to i32, !dbg !1244
  %32 = sext i32 %31 to i64, !dbg !1241
  %33 = call i16** @__ctype_b_loc() #1, !dbg !1245
  %34 = load i16*, i16** %33, align 8, !dbg !1246
  %35 = getelementptr inbounds i16, i16* %34, i64 %32, !dbg !1241
  %36 = load i16, i16* %35, align 2, !dbg !1241
  %37 = zext i16 %36 to i32, !dbg !1241
  %38 = and i32 %37, 2048, !dbg !1247
  %39 = icmp ne i32 %38, 0, !dbg !1247
  br i1 %39, label %40, label %53, !dbg !1248

; <label>:40:                                     ; preds = %28
  %41 = call i32* @__errno_location() #1, !dbg !1249
  store i32 0, i32* %41, align 4, !dbg !1251
  %42 = load i8*, i8** %10, align 8, !dbg !1252
  %43 = call i64 @strtoul(i8* %42, i8** null, i32 10) #9, !dbg !1253
  %44 = trunc i64 %43 to i32, !dbg !1253
  store i32 %44, i32* %11, align 4, !dbg !1254
  %45 = call i32* @__errno_location() #1, !dbg !1255
  %46 = load i32, i32* %45, align 4, !dbg !1257
  %47 = icmp eq i32 %46, 0, !dbg !1258
  br i1 %47, label %48, label %49, !dbg !1259

; <label>:48:                                     ; preds = %40
  store i8 1, i8* %7, align 1, !dbg !1260
  br label %52, !dbg !1262

; <label>:49:                                     ; preds = %40
  %50 = load i8*, i8** %10, align 8, !dbg !1263
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i32 0, i32 0), i8* %50), !dbg !1265
  br label %52

; <label>:52:                                     ; preds = %49, %48
  br label %65, !dbg !1266

; <label>:53:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.group** %12, metadata !1267, metadata !154), !dbg !1276
  %54 = load i8*, i8** %10, align 8, !dbg !1277
  %55 = call %struct.group* @getgrnam(i8* %54), !dbg !1279
  store %struct.group* %55, %struct.group** %12, align 8, !dbg !1280
  %56 = icmp ne %struct.group* %55, null, !dbg !1280
  br i1 %56, label %60, label %57, !dbg !1281

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %10, align 8, !dbg !1282
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.106, i32 0, i32 0), i8* %58), !dbg !1284
  br label %64, !dbg !1285

; <label>:60:                                     ; preds = %53
  %61 = load %struct.group*, %struct.group** %12, align 8, !dbg !1286
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 2, !dbg !1288
  %63 = load i32, i32* %62, align 8, !dbg !1288
  store i32 %63, i32* %11, align 4, !dbg !1289
  store i8 1, i8* %7, align 1, !dbg !1290
  br label %64

; <label>:64:                                     ; preds = %60, %57
  call void @endpwent(), !dbg !1291
  br label %65

; <label>:65:                                     ; preds = %64, %52
  %66 = load i8, i8* %7, align 1, !dbg !1292
  %67 = icmp ne i8 %66, 0, !dbg !1292
  br i1 %67, label %68, label %83, !dbg !1294

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %11, align 4, !dbg !1295
  %70 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1297
  %71 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %70, i32 0, i32 7, !dbg !1298
  store i32 %69, i32* %71, align 1, !dbg !1299
  %72 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1300
  %73 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %72, i32 0, i32 8, !dbg !1301
  store i8 1, i8* %73, align 1, !dbg !1302
  %74 = load i8, i8* @beVerbose, align 1, !dbg !1303
  %75 = sext i8 %74 to i32, !dbg !1303
  %76 = icmp ne i32 %75, 0, !dbg !1303
  br i1 %76, label %77, label %80, !dbg !1303

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %11, align 4, !dbg !1304
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0), i32 %78), !dbg !1306
  br label %81, !dbg !1307

; <label>:80:                                     ; preds = %68
  br label %81, !dbg !1308

; <label>:81:                                     ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ], !dbg !1310
  br label %83, !dbg !1312

; <label>:83:                                     ; preds = %81, %65
  %84 = load i8*, i8** %10, align 8, !dbg !1313
  call void @free(i8* %84) #9, !dbg !1314
  br label %85, !dbg !1314

; <label>:85:                                     ; preds = %83, %26
  %86 = load i8*, i8** %9, align 8, !dbg !1315
  call void @free(i8* %86) #9, !dbg !1316
  %87 = load i8, i8* %7, align 1, !dbg !1317
  ret i8 %87, !dbg !1318
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseFmask(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1319 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.HgfsMountInfo*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1320, metadata !154), !dbg !1321
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %6, metadata !1322, metadata !154), !dbg !1323
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1324, metadata !154), !dbg !1325
  %8 = load i8*, i8** %5, align 8, !dbg !1326
  %9 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %6, align 8, !dbg !1328
  %10 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %9, i32 0, i32 9, !dbg !1329
  %11 = call signext i8 @ParseMask(i8* %8, i16* %10), !dbg !1330
  %12 = icmp ne i8 %11, 0, !dbg !1330
  br i1 %12, label %13, label %26, !dbg !1331

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* @beVerbose, align 1, !dbg !1332
  %15 = sext i8 %14 to i32, !dbg !1332
  %16 = icmp ne i32 %15, 0, !dbg !1332
  br i1 %16, label %17, label %23, !dbg !1332

; <label>:17:                                     ; preds = %13
  %18 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %6, align 8, !dbg !1334
  %19 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %18, i32 0, i32 9, !dbg !1336
  %20 = load i16, i16* %19, align 1, !dbg !1336
  %21 = zext i16 %20 to i32, !dbg !1334
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i32 0, i32 0), i32 %21), !dbg !1337
  br label %24, !dbg !1338

; <label>:23:                                     ; preds = %13
  br label %24, !dbg !1339

; <label>:24:                                     ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ], !dbg !1341
  store i8 1, i8* %4, align 1, !dbg !1343
  br label %27, !dbg !1343

; <label>:26:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1344
  br label %27, !dbg !1344

; <label>:27:                                     ; preds = %26, %24
  %28 = load i8, i8* %4, align 1, !dbg !1345
  ret i8 %28, !dbg !1345
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseDmask(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1346 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.HgfsMountInfo*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1347, metadata !154), !dbg !1348
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %6, metadata !1349, metadata !154), !dbg !1350
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1351, metadata !154), !dbg !1352
  %8 = load i8*, i8** %5, align 8, !dbg !1353
  %9 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %6, align 8, !dbg !1355
  %10 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %9, i32 0, i32 10, !dbg !1356
  %11 = call signext i8 @ParseMask(i8* %8, i16* %10), !dbg !1357
  %12 = icmp ne i8 %11, 0, !dbg !1357
  br i1 %12, label %13, label %26, !dbg !1358

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* @beVerbose, align 1, !dbg !1359
  %15 = sext i8 %14 to i32, !dbg !1359
  %16 = icmp ne i32 %15, 0, !dbg !1359
  br i1 %16, label %17, label %23, !dbg !1359

; <label>:17:                                     ; preds = %13
  %18 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %6, align 8, !dbg !1361
  %19 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %18, i32 0, i32 10, !dbg !1363
  %20 = load i16, i16* %19, align 1, !dbg !1363
  %21 = zext i16 %20 to i32, !dbg !1361
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0), i32 %21), !dbg !1364
  br label %24, !dbg !1365

; <label>:23:                                     ; preds = %13
  br label %24, !dbg !1366

; <label>:24:                                     ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ], !dbg !1368
  store i8 1, i8* %4, align 1, !dbg !1370
  br label %27, !dbg !1370

; <label>:26:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1371
  br label %27, !dbg !1371

; <label>:27:                                     ; preds = %26, %24
  %28 = load i8, i8* %4, align 1, !dbg !1372
  ret i8 %28, !dbg !1372
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseTtl(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1373 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1374, metadata !154), !dbg !1375
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !1376, metadata !154), !dbg !1377
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1378, metadata !154), !dbg !1379
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1380, metadata !154), !dbg !1381
  store i8 0, i8* %7, align 1, !dbg !1381
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1382, metadata !154), !dbg !1383
  store i32 0, i32* %8, align 4, !dbg !1383
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1384, metadata !154), !dbg !1385
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1386, metadata !154), !dbg !1390
  %11 = load i8*, i8** %4, align 8, !dbg !1391
  %12 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1392
  store i8* %12, i8** %9, align 8, !dbg !1393
  %13 = load i8*, i8** %4, align 8, !dbg !1394
  %14 = call signext i8 @StrUtil_GetNextIntToken(i32* %10, i32* %8, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1396
  %15 = sext i8 %14 to i32, !dbg !1396
  %16 = icmp ne i32 %15, 0, !dbg !1396
  br i1 %16, label %17, label %33, !dbg !1397

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %10, align 4, !dbg !1398
  %19 = icmp sge i32 %18, 0, !dbg !1400
  br i1 %19, label %20, label %33, !dbg !1401

; <label>:20:                                     ; preds = %17
  %21 = load i8, i8* @beVerbose, align 1, !dbg !1402
  %22 = sext i8 %21 to i32, !dbg !1402
  %23 = icmp ne i32 %22, 0, !dbg !1402
  br i1 %23, label %24, label %27, !dbg !1402

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %10, align 4, !dbg !1404
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.112, i32 0, i32 0), i32 %25), !dbg !1406
  br label %28, !dbg !1407

; <label>:27:                                     ; preds = %20
  br label %28, !dbg !1408

; <label>:28:                                     ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ], !dbg !1410
  %30 = load i32, i32* %10, align 4, !dbg !1412
  %31 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1413
  %32 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %31, i32 0, i32 11, !dbg !1414
  store i32 %30, i32* %32, align 1, !dbg !1415
  store i8 1, i8* %7, align 1, !dbg !1416
  br label %42, !dbg !1417

; <label>:33:                                     ; preds = %17, %3
  %34 = load i8, i8* @beVerbose, align 1, !dbg !1418
  %35 = sext i8 %34 to i32, !dbg !1418
  %36 = icmp ne i32 %35, 0, !dbg !1418
  br i1 %36, label %37, label %39, !dbg !1418

; <label>:37:                                     ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.113, i32 0, i32 0)), !dbg !1420
  br label %40, !dbg !1422

; <label>:39:                                     ; preds = %33
  br label %40, !dbg !1423

; <label>:40:                                     ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ], !dbg !1425
  br label %42

; <label>:42:                                     ; preds = %40, %28
  %43 = load i8*, i8** %9, align 8, !dbg !1427
  call void @free(i8* %43) #9, !dbg !1428
  %44 = load i8, i8* %7, align 1, !dbg !1429
  ret i8 %44, !dbg !1430
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseServerIno(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1431 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1432, metadata !154), !dbg !1433
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !1434, metadata !154), !dbg !1435
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1436, metadata !154), !dbg !1437
  %7 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1438
  %8 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %7, i32 0, i32 4, !dbg !1439
  %9 = load i32, i32* %8, align 1, !dbg !1440
  %10 = or i32 %9, 1, !dbg !1440
  store i32 %10, i32* %8, align 1, !dbg !1440
  %11 = load i8, i8* @beVerbose, align 1, !dbg !1441
  %12 = sext i8 %11 to i32, !dbg !1441
  %13 = icmp ne i32 %12, 0, !dbg !1441
  br i1 %13, label %14, label %19, !dbg !1441

; <label>:14:                                     ; preds = %3
  %15 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1442
  %16 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %15, i32 0, i32 4, !dbg !1444
  %17 = load i32, i32* %16, align 1, !dbg !1444
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.114, i32 0, i32 0), i32 %17), !dbg !1445
  br label %20, !dbg !1446

; <label>:19:                                     ; preds = %3
  br label %20, !dbg !1447

; <label>:20:                                     ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 0, %19 ], !dbg !1449
  ret i8 1, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseNoServerIno(i8*, %struct.HgfsMountInfo*, i32*) #0 !dbg !1452 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsMountInfo*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1453, metadata !154), !dbg !1454
  store %struct.HgfsMountInfo* %1, %struct.HgfsMountInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsMountInfo** %5, metadata !1455, metadata !154), !dbg !1456
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1457, metadata !154), !dbg !1458
  %7 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1459
  %8 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %7, i32 0, i32 4, !dbg !1460
  %9 = load i32, i32* %8, align 1, !dbg !1461
  %10 = and i32 %9, -2, !dbg !1461
  store i32 %10, i32* %8, align 1, !dbg !1461
  %11 = load i8, i8* @beVerbose, align 1, !dbg !1462
  %12 = sext i8 %11 to i32, !dbg !1462
  %13 = icmp ne i32 %12, 0, !dbg !1462
  br i1 %13, label %14, label %19, !dbg !1462

; <label>:14:                                     ; preds = %3
  %15 = load %struct.HgfsMountInfo*, %struct.HgfsMountInfo** %5, align 8, !dbg !1463
  %16 = getelementptr inbounds %struct.HgfsMountInfo, %struct.HgfsMountInfo* %15, i32 0, i32 4, !dbg !1465
  %17 = load i32, i32* %16, align 1, !dbg !1465
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i32 0, i32 0), i32 %17), !dbg !1466
  br label %20, !dbg !1467

; <label>:19:                                     ; preds = %3
  br label %20, !dbg !1468

; <label>:20:                                     ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 0, %19 ], !dbg !1470
  ret i8 1, !dbg !1472
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

declare %struct.passwd* @getpwnam(i8*) #3

declare void @endpwent() #3

declare %struct.group* @getgrnam(i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @ParseMask(i8*, i16*) #0 !dbg !1473 {
  %3 = alloca i8*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1477, metadata !154), !dbg !1478
  store i16* %1, i16** %4, align 8
  call void @llvm.dbg.declare(metadata i16** %4, metadata !1479, metadata !154), !dbg !1480
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1481, metadata !154), !dbg !1482
  store i8 0, i8* %5, align 1, !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1483, metadata !154), !dbg !1484
  store i32 0, i32* %6, align 4, !dbg !1484
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1485, metadata !154), !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1487, metadata !154), !dbg !1488
  call void @llvm.dbg.declare(metadata i16* %9, metadata !1489, metadata !154), !dbg !1490
  %10 = load i8*, i8** %3, align 8, !dbg !1491
  %11 = call i8* @StrUtil_GetNextToken(i32* %6, i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1492
  store i8* %11, i8** %7, align 8, !dbg !1493
  %12 = load i8*, i8** %3, align 8, !dbg !1494
  %13 = call i8* @StrUtil_GetNextToken(i32* %6, i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0)), !dbg !1495
  store i8* %13, i8** %8, align 8, !dbg !1496
  %14 = load i8*, i8** %8, align 8, !dbg !1497
  %15 = icmp ne i8* %14, null, !dbg !1497
  br i1 %15, label %26, label %16, !dbg !1499

; <label>:16:                                     ; preds = %2
  %17 = load i8, i8* @beVerbose, align 1, !dbg !1500
  %18 = sext i8 %17 to i32, !dbg !1500
  %19 = icmp ne i32 %18, 0, !dbg !1500
  br i1 %19, label %20, label %23, !dbg !1500

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %7, align 8, !dbg !1502
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.109, i32 0, i32 0), i8* %21), !dbg !1504
  br label %24, !dbg !1505

; <label>:23:                                     ; preds = %16
  br label %24, !dbg !1506

; <label>:24:                                     ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ], !dbg !1508
  br label %49, !dbg !1510

; <label>:26:                                     ; preds = %2
  %27 = call i32* @__errno_location() #1, !dbg !1511
  store i32 0, i32* %27, align 4, !dbg !1512
  %28 = load i8*, i8** %8, align 8, !dbg !1513
  %29 = call i64 @strtol(i8* %28, i8** null, i32 8) #9, !dbg !1514
  %30 = trunc i64 %29 to i16, !dbg !1514
  store i16 %30, i16* %9, align 2, !dbg !1515
  %31 = call i32* @__errno_location() #1, !dbg !1516
  %32 = load i32, i32* %31, align 4, !dbg !1518
  %33 = icmp eq i32 %32, 0, !dbg !1519
  br i1 %33, label %34, label %37, !dbg !1520

; <label>:34:                                     ; preds = %26
  %35 = load i16, i16* %9, align 2, !dbg !1521
  %36 = load i16*, i16** %4, align 8, !dbg !1523
  store i16 %35, i16* %36, align 2, !dbg !1524
  store i8 1, i8* %5, align 1, !dbg !1525
  br label %47, !dbg !1526

; <label>:37:                                     ; preds = %26
  %38 = load i8, i8* @beVerbose, align 1, !dbg !1527
  %39 = sext i8 %38 to i32, !dbg !1527
  %40 = icmp ne i32 %39, 0, !dbg !1527
  br i1 %40, label %41, label %44, !dbg !1527

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %7, align 8, !dbg !1529
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.110, i32 0, i32 0), i8* %42), !dbg !1531
  br label %45, !dbg !1532

; <label>:44:                                     ; preds = %37
  br label %45, !dbg !1533

; <label>:45:                                     ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ], !dbg !1535
  br label %47

; <label>:47:                                     ; preds = %45, %34
  %48 = load i8*, i8** %8, align 8, !dbg !1537
  call void @free(i8* %48) #9, !dbg !1538
  br label %49, !dbg !1538

; <label>:49:                                     ; preds = %47, %24
  %50 = load i8*, i8** %7, align 8, !dbg !1539
  call void @free(i8* %50) #9, !dbg !1540
  %51 = load i8, i8* %5, align 1, !dbg !1541
  ret i8 %51, !dbg !1542
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

declare signext i8 @StrUtil_GetNextIntToken(i32*, i32*, i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #4

declare %struct.passwd* @getpwuid(i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @addmntent(%struct._IO_FILE*, %struct.mntent*) #4

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146}
!llvm.ident = !{!147}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !77, globals: !81)
!1 = !DIFile(filename: "hgfsmounter.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!2 = !{!3, !9, !24, !48}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 54, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsDevLinux.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "HGFS_MOUNTINFO_VERSION_NONE", value: 0)
!7 = !DIEnumerator(name: "HGFS_MOUNTINFO_VERSION_1", value: 1)
!8 = !DIEnumerator(name: "HGFS_MOUNTINFO_VERSION_2", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 46, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "_ISupper", value: 256)
!13 = !DIEnumerator(name: "_ISlower", value: 512)
!14 = !DIEnumerator(name: "_ISalpha", value: 1024)
!15 = !DIEnumerator(name: "_ISdigit", value: 2048)
!16 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!17 = !DIEnumerator(name: "_ISspace", value: 8192)
!18 = !DIEnumerator(name: "_ISprint", value: 16384)
!19 = !DIEnumerator(name: "_ISgraph", value: 32768)
!20 = !DIEnumerator(name: "_ISblank", value: 1)
!21 = !DIEnumerator(name: "_IScntrl", value: 2)
!22 = !DIEnumerator(name: "_ISpunct", value: 4)
!23 = !DIEnumerator(name: "_ISalnum", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 24, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!27 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!28 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!29 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!30 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!31 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!32 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!33 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!34 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!35 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!36 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!37 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!38 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!39 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!40 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!41 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!42 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!43 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!44 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!45 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!46 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!47 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 33, size: 32, align: 32, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mount.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!51 = !DIEnumerator(name: "MS_RDONLY", value: 1)
!52 = !DIEnumerator(name: "MS_NOSUID", value: 2)
!53 = !DIEnumerator(name: "MS_NODEV", value: 4)
!54 = !DIEnumerator(name: "MS_NOEXEC", value: 8)
!55 = !DIEnumerator(name: "MS_SYNCHRONOUS", value: 16)
!56 = !DIEnumerator(name: "MS_REMOUNT", value: 32)
!57 = !DIEnumerator(name: "MS_MANDLOCK", value: 64)
!58 = !DIEnumerator(name: "MS_DIRSYNC", value: 128)
!59 = !DIEnumerator(name: "MS_NOATIME", value: 1024)
!60 = !DIEnumerator(name: "MS_NODIRATIME", value: 2048)
!61 = !DIEnumerator(name: "MS_BIND", value: 4096)
!62 = !DIEnumerator(name: "MS_MOVE", value: 8192)
!63 = !DIEnumerator(name: "MS_REC", value: 16384)
!64 = !DIEnumerator(name: "MS_SILENT", value: 32768)
!65 = !DIEnumerator(name: "MS_POSIXACL", value: 65536)
!66 = !DIEnumerator(name: "MS_UNBINDABLE", value: 131072)
!67 = !DIEnumerator(name: "MS_PRIVATE", value: 262144)
!68 = !DIEnumerator(name: "MS_SLAVE", value: 524288)
!69 = !DIEnumerator(name: "MS_SHARED", value: 1048576)
!70 = !DIEnumerator(name: "MS_RELATIME", value: 2097152)
!71 = !DIEnumerator(name: "MS_KERNMOUNT", value: 4194304)
!72 = !DIEnumerator(name: "MS_I_VERSION", value: 8388608)
!73 = !DIEnumerator(name: "MS_STRICTATIME", value: 16777216)
!74 = !DIEnumerator(name: "MS_LAZYTIME", value: 33554432)
!75 = !DIEnumerator(name: "MS_ACTIVE", value: 1073741824)
!76 = !DIEnumerator(name: "MS_NOUSER", value: -2147483648)
!77 = !{!78, !79, !80}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!79 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !{!82, !89, !91, !92, !93, !94, !144}
!82 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !83, line: 109, type: !84, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!83 = !DIFile(filename: "hgfsmounter.c", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, align: 8, elements: !87)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = distinct !DIGlobalVariable(name: "thisProgram", scope: !0, file: !83, line: 142, type: !90, isLocal: true, isDefinition: true, variable: i8** @thisProgram)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!91 = distinct !DIGlobalVariable(name: "thisProgramBase", scope: !0, file: !83, line: 143, type: !90, isLocal: true, isDefinition: true, variable: i8** @thisProgramBase)
!92 = distinct !DIGlobalVariable(name: "shareName", scope: !0, file: !83, line: 144, type: !90, isLocal: true, isDefinition: true, variable: i8** @shareName)
!93 = distinct !DIGlobalVariable(name: "mountPoint", scope: !0, file: !83, line: 145, type: !90, isLocal: true, isDefinition: true, variable: i8** @mountPoint)
!94 = distinct !DIGlobalVariable(name: "mountOptions", scope: !0, file: !83, line: 672, type: !95, isLocal: true, isDefinition: true, variable: [26 x %struct.MountOptions]* @mountOptions)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 8320, align: 64, elements: !142)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "MountOptions", file: !83, line: 140, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MountOptions", file: !83, line: 131, size: 320, align: 64, elements: !98)
!98 = !{!99, !100, !101, !104, !105, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !97, file: !83, line: 132, baseType: !90, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !97, file: !83, line: 133, baseType: !79, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !97, file: !83, line: 134, baseType: !102, size: 8, align: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !103, line: 230, baseType: !86)
!103 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "helpMsg", scope: !97, file: !83, line: 135, baseType: !90, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "logMsg", scope: !97, file: !83, line: 136, baseType: !90, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !97, file: !83, line: 138, baseType: !107, size: 64, align: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!102, !110, !111, !141}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsMountInfo", file: !4, line: 103, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsMountInfo", file: !4, line: 75, size: 432, align: 8, elements: !114)
!114 = !{!115, !120, !121, !123, !124, !125, !130, !131, !135, !136, !137, !138, !139, !140}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "magicNumber", scope: !113, file: !4, line: 76, baseType: !116, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !103, line: 173, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 51, baseType: !119)
!118 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!119 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "infoSize", scope: !113, file: !4, line: 77, baseType: !116, size: 32, align: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !113, file: !4, line: 78, baseType: !122, size: 32, align: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsMountInfoVersion", file: !4, line: 58, baseType: !3)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !113, file: !4, line: 79, baseType: !116, size: 32, align: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !4, line: 80, baseType: !116, size: 32, align: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !113, file: !4, line: 82, baseType: !126, size: 32, align: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 43, baseType: !128)
!127 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !129, line: 125, baseType: !119)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uidSet", scope: !113, file: !4, line: 83, baseType: !102, size: 8, align: 8, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !113, file: !4, line: 84, baseType: !132, size: 32, align: 32, offset: 200)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !133, line: 37, baseType: !134)
!133 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !129, line: 126, baseType: !119)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "gidSet", scope: !113, file: !4, line: 85, baseType: !102, size: 8, align: 8, offset: 232)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "fmask", scope: !113, file: !4, line: 86, baseType: !80, size: 16, align: 16, offset: 240)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dmask", scope: !113, file: !4, line: 87, baseType: !80, size: 16, align: 16, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !113, file: !4, line: 88, baseType: !116, size: 32, align: 32, offset: 272)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "shareNameHost", scope: !113, file: !4, line: 93, baseType: !110, size: 64, align: 64, offset: 304)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "shareNameDir", scope: !113, file: !4, line: 94, baseType: !110, size: 64, align: 64, offset: 368)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!142 = !{!143}
!143 = !DISubrange(count: 26)
!144 = distinct !DIGlobalVariable(name: "beVerbose", scope: !0, file: !83, line: 146, type: !102, isLocal: true, isDefinition: true, variable: i8* @beVerbose)
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!148 = distinct !DISubprogram(name: "main", scope: !83, file: !83, line: 1025, type: !149, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!149 = !DISubroutineType(types: !150)
!150 = !{!79, !79, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!152 = !{}
!153 = !DILocalVariable(name: "argc", arg: 1, scope: !148, file: !83, line: 1025, type: !79)
!154 = !DIExpression()
!155 = !DILocation(line: 1025, column: 10, scope: !148)
!156 = !DILocalVariable(name: "argv", arg: 2, scope: !148, file: !83, line: 1026, type: !151)
!157 = !DILocation(line: 1026, column: 12, scope: !148)
!158 = !DILocalVariable(name: "doMtab", scope: !148, file: !83, line: 1029, type: !102)
!159 = !DILocation(line: 1029, column: 9, scope: !148)
!160 = !DILocalVariable(name: "c", scope: !148, file: !83, line: 1031, type: !86)
!161 = !DILocation(line: 1031, column: 9, scope: !148)
!162 = !DILocalVariable(name: "i", scope: !148, file: !83, line: 1032, type: !79)
!163 = !DILocation(line: 1032, column: 8, scope: !148)
!164 = !DILocalVariable(name: "result", scope: !148, file: !83, line: 1033, type: !79)
!165 = !DILocation(line: 1033, column: 8, scope: !148)
!166 = !DILocalVariable(name: "flags", scope: !148, file: !83, line: 1034, type: !79)
!167 = !DILocation(line: 1034, column: 8, scope: !148)
!168 = !DILocalVariable(name: "mntRes", scope: !148, file: !83, line: 1035, type: !79)
!169 = !DILocation(line: 1035, column: 8, scope: !148)
!170 = !DILocalVariable(name: "optionString", scope: !148, file: !83, line: 1036, type: !90)
!171 = !DILocation(line: 1036, column: 10, scope: !148)
!172 = !DILocalVariable(name: "shareNameHost", scope: !148, file: !83, line: 1037, type: !110)
!173 = !DILocation(line: 1037, column: 16, scope: !148)
!174 = !DILocalVariable(name: "shareNameDir", scope: !148, file: !83, line: 1038, type: !110)
!175 = !DILocation(line: 1038, column: 16, scope: !148)
!176 = !DILocalVariable(name: "statBuf", scope: !148, file: !83, line: 1039, type: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !178, line: 46, size: 1152, align: 64, elements: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!179 = !{!180, !183, !185, !187, !189, !190, !191, !192, !193, !196, !198, !200, !208, !209, !210}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !177, file: !178, line: 48, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !129, line: 124, baseType: !182)
!182 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !177, file: !178, line: 53, baseType: !184, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !129, line: 127, baseType: !182)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !177, file: !178, line: 61, baseType: !186, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !129, line: 130, baseType: !182)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !177, file: !178, line: 62, baseType: !188, size: 32, align: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !129, line: 129, baseType: !119)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !177, file: !178, line: 64, baseType: !128, size: 32, align: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !177, file: !178, line: 65, baseType: !134, size: 32, align: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !177, file: !178, line: 67, baseType: !79, size: 32, align: 32, offset: 288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !177, file: !178, line: 69, baseType: !181, size: 64, align: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !177, file: !178, line: 74, baseType: !194, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !129, line: 131, baseType: !195)
!195 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !177, file: !178, line: 78, baseType: !197, size: 64, align: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !129, line: 153, baseType: !195)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !177, file: !178, line: 80, baseType: !199, size: 64, align: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !129, line: 158, baseType: !195)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !177, file: !178, line: 91, baseType: !201, size: 128, align: 64, offset: 576)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !202, line: 120, size: 128, align: 64, elements: !203)
!202 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !201, file: !202, line: 122, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !129, line: 139, baseType: !195)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !201, file: !202, line: 123, baseType: !207, size: 64, align: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !129, line: 175, baseType: !195)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !177, file: !178, line: 92, baseType: !201, size: 128, align: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !177, file: !178, line: 93, baseType: !201, size: 128, align: 64, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !177, file: !178, line: 106, baseType: !211, size: 192, align: 64, offset: 960)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 192, align: 64, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 3)
!214 = !DILocation(line: 1039, column: 16, scope: !148)
!215 = !DILocalVariable(name: "mountInfo", scope: !148, file: !83, line: 1040, type: !112)
!216 = !DILocation(line: 1040, column: 18, scope: !148)
!217 = !DILocalVariable(name: "canonicalizedPath", scope: !148, file: !83, line: 1041, type: !90)
!218 = !DILocation(line: 1041, column: 10, scope: !148)
!219 = !DILocalVariable(name: "pathMax", scope: !148, file: !83, line: 1042, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 216, baseType: !182)
!221 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!222 = !DILocation(line: 1042, column: 11, scope: !148)
!223 = !DILocation(line: 1044, column: 18, scope: !148)
!224 = !DILocation(line: 1044, column: 16, scope: !148)
!225 = !DILocation(line: 1047, column: 30, scope: !148)
!226 = !DILocation(line: 1047, column: 22, scope: !148)
!227 = !DILocation(line: 1047, column: 20, scope: !148)
!228 = !DILocation(line: 1048, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1048, column: 8)
!230 = !DILocation(line: 1048, column: 24, scope: !229)
!231 = !DILocation(line: 1048, column: 8, scope: !148)
!232 = !DILocation(line: 1049, column: 22, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !83, line: 1048, column: 32)
!234 = !DILocation(line: 1050, column: 4, scope: !233)
!235 = !DILocation(line: 1051, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !83, line: 1050, column: 11)
!237 = !DILocation(line: 1051, column: 23, scope: !236)
!238 = !DILocation(line: 1053, column: 4, scope: !148)
!239 = !DILocation(line: 1055, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1055, column: 8)
!241 = !DILocation(line: 1055, column: 13, scope: !240)
!242 = !DILocation(line: 1055, column: 8, scope: !148)
!243 = !DILocation(line: 1056, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !83, line: 1055, column: 18)
!245 = !DILocation(line: 1057, column: 4, scope: !244)
!246 = !DILocation(line: 1059, column: 4, scope: !148)
!247 = !DILocation(line: 1059, column: 23, scope: !248)
!248 = !DILexicalBlockFile(scope: !148, file: !83, discriminator: 1)
!249 = !DILocation(line: 1059, column: 29, scope: !248)
!250 = !DILocation(line: 1059, column: 16, scope: !248)
!251 = !DILocation(line: 1059, column: 14, scope: !248)
!252 = !DILocation(line: 1059, column: 11, scope: !248)
!253 = !DILocation(line: 1059, column: 46, scope: !248)
!254 = !DILocation(line: 1059, column: 4, scope: !248)
!255 = !DILocation(line: 1060, column: 15, scope: !256)
!256 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1059, column: 53)
!257 = !DILocation(line: 1060, column: 7, scope: !256)
!258 = !DILocation(line: 1063, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !83, line: 1060, column: 18)
!260 = !DILocation(line: 1066, column: 17, scope: !259)
!261 = !DILocation(line: 1067, column: 10, scope: !259)
!262 = !DILocation(line: 1070, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !83, line: 1070, column: 14)
!264 = !DILocation(line: 1070, column: 27, scope: !263)
!265 = !DILocation(line: 1070, column: 14, scope: !259)
!266 = !DILocation(line: 1071, column: 35, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !83, line: 1070, column: 35)
!268 = !DILocation(line: 1071, column: 28, scope: !267)
!269 = !DILocation(line: 1071, column: 26, scope: !267)
!270 = !DILocation(line: 1072, column: 10, scope: !267)
!271 = !DILocalVariable(name: "newLength", scope: !272, file: !83, line: 1073, type: !220)
!272 = distinct !DILexicalBlock(scope: !263, file: !83, line: 1072, column: 17)
!273 = !DILocation(line: 1073, column: 20, scope: !272)
!274 = !DILocalVariable(name: "savedString", scope: !272, file: !83, line: 1074, type: !90)
!275 = !DILocation(line: 1074, column: 19, scope: !272)
!276 = !DILocation(line: 1074, column: 33, scope: !272)
!277 = !DILocation(line: 1075, column: 32, scope: !272)
!278 = !DILocation(line: 1075, column: 25, scope: !272)
!279 = !DILocation(line: 1075, column: 46, scope: !272)
!280 = !DILocation(line: 1076, column: 32, scope: !272)
!281 = !DILocation(line: 1076, column: 25, scope: !272)
!282 = !DILocation(line: 1075, column: 60, scope: !272)
!283 = !DILocation(line: 1076, column: 40, scope: !272)
!284 = !DILocation(line: 1075, column: 23, scope: !272)
!285 = !DILocation(line: 1077, column: 36, scope: !272)
!286 = !DILocation(line: 1077, column: 50, scope: !272)
!287 = !DILocation(line: 1077, column: 28, scope: !272)
!288 = !DILocation(line: 1077, column: 26, scope: !272)
!289 = !DILocation(line: 1078, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !272, file: !83, line: 1078, column: 17)
!291 = !DILocation(line: 1078, column: 30, scope: !290)
!292 = !DILocation(line: 1078, column: 17, scope: !272)
!293 = !DILocation(line: 1079, column: 27, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !83, line: 1078, column: 38)
!295 = !DILocation(line: 1079, column: 46, scope: !294)
!296 = !DILocation(line: 1079, column: 16, scope: !294)
!297 = !DILocation(line: 1080, column: 27, scope: !294)
!298 = !DILocation(line: 1080, column: 41, scope: !294)
!299 = !DILocation(line: 1080, column: 49, scope: !294)
!300 = !DILocation(line: 1080, column: 16, scope: !294)
!301 = !DILocation(line: 1081, column: 13, scope: !294)
!302 = !DILocation(line: 1082, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !290, file: !83, line: 1081, column: 20)
!304 = !DILocation(line: 1082, column: 16, scope: !303)
!305 = !DILocation(line: 1085, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !259, file: !83, line: 1085, column: 14)
!307 = !DILocation(line: 1085, column: 27, scope: !306)
!308 = !DILocation(line: 1085, column: 14, scope: !259)
!309 = !DILocation(line: 1086, column: 13, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !83, line: 1085, column: 35)
!311 = !DILocation(line: 1087, column: 13, scope: !310)
!312 = !DILocation(line: 1089, column: 10, scope: !259)
!313 = !DILocation(line: 1091, column: 20, scope: !259)
!314 = !DILocation(line: 1092, column: 10, scope: !259)
!315 = !DILocation(line: 1094, column: 10, scope: !259)
!316 = !DILocation(line: 1096, column: 53, scope: !259)
!317 = !DILocation(line: 1096, column: 10, scope: !259)
!318 = !DILocation(line: 1097, column: 10, scope: !259)
!319 = !DILocation(line: 1098, column: 7, scope: !259)
!320 = !DILocation(line: 1059, column: 4, scope: !321)
!321 = !DILexicalBlockFile(scope: !148, file: !83, discriminator: 2)
!322 = distinct !{!322, !246}
!323 = !DILocation(line: 1101, column: 5, scope: !148)
!324 = !DILocation(line: 1101, column: 55, scope: !248)
!325 = !DILocation(line: 1101, column: 17, scope: !248)
!326 = !DILocation(line: 1101, column: 5, scope: !248)
!327 = !DILocation(line: 1101, column: 5, scope: !321)
!328 = !DILocation(line: 1101, column: 5, scope: !329)
!329 = !DILexicalBlockFile(scope: !148, file: !83, discriminator: 3)
!330 = !DILocation(line: 1102, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1102, column: 4)
!332 = !DILocation(line: 1102, column: 9, scope: !331)
!333 = !DILocation(line: 1102, column: 16, scope: !334)
!334 = !DILexicalBlockFile(scope: !335, file: !83, discriminator: 1)
!335 = distinct !DILexicalBlock(scope: !331, file: !83, line: 1102, column: 4)
!336 = !DILocation(line: 1102, column: 20, scope: !334)
!337 = !DILocation(line: 1102, column: 18, scope: !334)
!338 = !DILocation(line: 1102, column: 4, scope: !334)
!339 = !DILocation(line: 1103, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !83, line: 1102, column: 31)
!341 = !DILocation(line: 1103, column: 39, scope: !342)
!342 = !DILexicalBlockFile(scope: !340, file: !83, discriminator: 1)
!343 = !DILocation(line: 1103, column: 34, scope: !342)
!344 = !DILocation(line: 1103, column: 20, scope: !342)
!345 = !DILocation(line: 1103, column: 8, scope: !342)
!346 = !DILocation(line: 1103, column: 8, scope: !347)
!347 = !DILexicalBlockFile(scope: !340, file: !83, discriminator: 2)
!348 = !DILocation(line: 1103, column: 8, scope: !349)
!349 = !DILexicalBlockFile(scope: !340, file: !83, discriminator: 3)
!350 = !DILocation(line: 1104, column: 4, scope: !340)
!351 = !DILocation(line: 1102, column: 27, scope: !352)
!352 = !DILexicalBlockFile(scope: !335, file: !83, discriminator: 2)
!353 = !DILocation(line: 1102, column: 4, scope: !352)
!354 = distinct !{!354, !355}
!355 = !DILocation(line: 1102, column: 4, scope: !148)
!356 = !DILocation(line: 1105, column: 5, scope: !148)
!357 = !DILocation(line: 1105, column: 17, scope: !248)
!358 = !DILocation(line: 1105, column: 5, scope: !248)
!359 = !DILocation(line: 1105, column: 5, scope: !321)
!360 = !DILocation(line: 1105, column: 5, scope: !329)
!361 = !DILocation(line: 1108, column: 21, scope: !148)
!362 = !DILocation(line: 1108, column: 16, scope: !148)
!363 = !DILocation(line: 1108, column: 14, scope: !148)
!364 = !DILocation(line: 1109, column: 22, scope: !148)
!365 = !DILocation(line: 1109, column: 29, scope: !148)
!366 = !DILocation(line: 1109, column: 17, scope: !148)
!367 = !DILocation(line: 1109, column: 15, scope: !148)
!368 = !DILocation(line: 1116, column: 25, scope: !148)
!369 = !DILocation(line: 1116, column: 14, scope: !148)
!370 = !DILocation(line: 1116, column: 12, scope: !148)
!371 = !DILocation(line: 1117, column: 31, scope: !148)
!372 = !DILocation(line: 1117, column: 39, scope: !148)
!373 = !DILocation(line: 1117, column: 24, scope: !148)
!374 = !DILocation(line: 1117, column: 22, scope: !148)
!375 = !DILocation(line: 1118, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1118, column: 8)
!377 = !DILocation(line: 1118, column: 26, scope: !376)
!378 = !DILocation(line: 1118, column: 8, scope: !148)
!379 = !DILocation(line: 1119, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !83, line: 1118, column: 34)
!381 = !DILocation(line: 1121, column: 7, scope: !380)
!382 = !DILocation(line: 1122, column: 25, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !83, line: 1122, column: 15)
!384 = !DILocation(line: 1122, column: 37, scope: !383)
!385 = !DILocation(line: 1122, column: 16, scope: !383)
!386 = !DILocation(line: 1122, column: 15, scope: !376)
!387 = !DILocation(line: 1123, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !83, line: 1122, column: 57)
!389 = !DILocation(line: 1124, column: 7, scope: !388)
!390 = !DILocation(line: 1126, column: 17, scope: !148)
!391 = !DILocation(line: 1126, column: 15, scope: !148)
!392 = !DILocation(line: 1128, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1128, column: 8)
!394 = !DILocation(line: 1128, column: 9, scope: !393)
!395 = !DILocation(line: 1128, column: 8, scope: !148)
!396 = !DILocation(line: 1129, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !83, line: 1128, column: 67)
!398 = !DILocation(line: 1130, column: 7, scope: !397)
!399 = !DILocation(line: 1133, column: 14, scope: !148)
!400 = !DILocation(line: 1133, column: 26, scope: !148)
!401 = !DILocation(line: 1134, column: 14, scope: !148)
!402 = !DILocation(line: 1134, column: 23, scope: !148)
!403 = !DILocation(line: 1135, column: 14, scope: !148)
!404 = !DILocation(line: 1135, column: 22, scope: !148)
!405 = !DILocation(line: 1138, column: 14, scope: !148)
!406 = !DILocation(line: 1138, column: 20, scope: !148)
!407 = !DILocation(line: 1139, column: 14, scope: !148)
!408 = !DILocation(line: 1139, column: 20, scope: !148)
!409 = !DILocation(line: 1140, column: 14, scope: !148)
!410 = !DILocation(line: 1140, column: 21, scope: !148)
!411 = !DILocation(line: 1141, column: 14, scope: !148)
!412 = !DILocation(line: 1141, column: 21, scope: !148)
!413 = !DILocation(line: 1142, column: 14, scope: !148)
!414 = !DILocation(line: 1142, column: 18, scope: !148)
!415 = !DILocation(line: 1147, column: 30, scope: !148)
!416 = !DILocation(line: 1147, column: 14, scope: !148)
!417 = !DILocation(line: 1147, column: 28, scope: !148)
!418 = !DILocation(line: 1148, column: 29, scope: !148)
!419 = !DILocation(line: 1148, column: 14, scope: !148)
!420 = !DILocation(line: 1148, column: 27, scope: !148)
!421 = !DILocation(line: 1154, column: 14, scope: !148)
!422 = !DILocation(line: 1154, column: 20, scope: !148)
!423 = !DILocation(line: 1160, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1160, column: 8)
!425 = !DILocation(line: 1160, column: 21, scope: !424)
!426 = !DILocation(line: 1160, column: 38, scope: !427)
!427 = !DILexicalBlockFile(scope: !424, file: !83, discriminator: 1)
!428 = !DILocation(line: 1160, column: 25, scope: !427)
!429 = !DILocation(line: 1160, column: 8, scope: !427)
!430 = !DILocation(line: 1161, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !83, line: 1160, column: 73)
!432 = !DILocation(line: 1162, column: 7, scope: !431)
!433 = !DILocation(line: 1166, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1166, column: 8)
!435 = !DILocation(line: 1166, column: 8, scope: !434)
!436 = !DILocation(line: 1166, column: 8, scope: !148)
!437 = !DILocation(line: 1167, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !83, line: 1166, column: 36)
!439 = !DILocation(line: 1168, column: 7, scope: !438)
!440 = !DILocation(line: 1170, column: 15, scope: !441)
!441 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1170, column: 7)
!442 = !DILocation(line: 1170, column: 10, scope: !441)
!443 = !DILocation(line: 1170, column: 21, scope: !441)
!444 = !DILocation(line: 1170, column: 32, scope: !441)
!445 = !DILocation(line: 1170, column: 7, scope: !148)
!446 = !DILocation(line: 1171, column: 64, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !83, line: 1170, column: 38)
!448 = !DILocation(line: 1171, column: 7, scope: !447)
!449 = !DILocation(line: 1172, column: 7, scope: !447)
!450 = !DILocation(line: 1179, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1179, column: 8)
!452 = !DILocation(line: 1179, column: 18, scope: !451)
!453 = !DILocation(line: 1179, column: 8, scope: !148)
!454 = !DILocation(line: 1181, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !83, line: 1179, column: 24)
!456 = !DILocation(line: 1180, column: 7, scope: !455)
!457 = !DILocation(line: 1182, column: 7, scope: !455)
!458 = !DILocation(line: 1183, column: 15, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !83, line: 1183, column: 15)
!460 = !DILocation(line: 1183, column: 24, scope: !459)
!461 = !DILocation(line: 1183, column: 29, scope: !459)
!462 = !DILocation(line: 1183, column: 33, scope: !463)
!463 = !DILexicalBlockFile(scope: !459, file: !83, discriminator: 1)
!464 = !DILocation(line: 1183, column: 53, scope: !463)
!465 = !DILocation(line: 1183, column: 42, scope: !463)
!466 = !DILocation(line: 1183, column: 60, scope: !463)
!467 = !DILocation(line: 1184, column: 42, scope: !459)
!468 = !DILocation(line: 1184, column: 50, scope: !459)
!469 = !DILocation(line: 1184, column: 60, scope: !459)
!470 = !DILocation(line: 1183, column: 15, scope: !471)
!471 = !DILexicalBlockFile(scope: !451, file: !83, discriminator: 2)
!472 = !DILocation(line: 1185, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !459, file: !83, line: 1184, column: 73)
!474 = !DILocation(line: 1186, column: 7, scope: !473)
!475 = !DILocation(line: 1191, column: 19, scope: !148)
!476 = !DILocation(line: 1191, column: 30, scope: !148)
!477 = !DILocation(line: 1191, column: 52, scope: !148)
!478 = !DILocation(line: 1191, column: 59, scope: !148)
!479 = !DILocation(line: 1191, column: 13, scope: !148)
!480 = !DILocation(line: 1191, column: 11, scope: !148)
!481 = !DILocation(line: 1217, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1217, column: 8)
!483 = !DILocation(line: 1217, column: 8, scope: !148)
!484 = !DILocation(line: 1218, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !83, line: 1217, column: 16)
!486 = !DILocation(line: 1219, column: 7, scope: !485)
!487 = !DILocation(line: 1221, column: 11, scope: !148)
!488 = !DILocation(line: 1224, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !148, file: !83, line: 1224, column: 8)
!490 = !DILocation(line: 1224, column: 8, scope: !148)
!491 = !DILocation(line: 1225, column: 30, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !83, line: 1224, column: 16)
!493 = !DILocation(line: 1225, column: 7, scope: !492)
!494 = !DILocation(line: 1226, column: 4, scope: !492)
!495 = !DILocation(line: 1224, column: 8, scope: !496)
!496 = !DILexicalBlockFile(scope: !489, file: !83, discriminator: 1)
!497 = !DILocation(line: 1230, column: 9, scope: !148)
!498 = !DILocation(line: 1230, column: 4, scope: !148)
!499 = !DILocation(line: 1231, column: 9, scope: !148)
!500 = !DILocation(line: 1231, column: 4, scope: !148)
!501 = !DILocation(line: 1232, column: 11, scope: !148)
!502 = !DILocation(line: 1232, column: 4, scope: !148)
!503 = distinct !DISubprogram(name: "PrintUsage", scope: !83, file: !83, line: 853, type: !504, isLocal: true, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!504 = !DISubroutineType(types: !505)
!505 = !{null}
!506 = !DILocalVariable(name: "i", scope: !503, file: !83, line: 855, type: !79)
!507 = !DILocation(line: 855, column: 8, scope: !503)
!508 = !DILocation(line: 857, column: 59, scope: !503)
!509 = !DILocation(line: 857, column: 4, scope: !503)
!510 = !DILocation(line: 858, column: 4, scope: !503)
!511 = !DILocation(line: 859, column: 4, scope: !503)
!512 = !DILocation(line: 861, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !503, file: !83, line: 861, column: 4)
!514 = !DILocation(line: 861, column: 9, scope: !513)
!515 = !DILocation(line: 861, column: 16, scope: !516)
!516 = !DILexicalBlockFile(scope: !517, file: !83, discriminator: 1)
!517 = distinct !DILexicalBlock(scope: !513, file: !83, line: 861, column: 4)
!518 = !DILocation(line: 861, column: 18, scope: !516)
!519 = !DILocation(line: 861, column: 4, scope: !516)
!520 = !DILocalVariable(name: "printOptName", scope: !521, file: !83, line: 862, type: !102)
!521 = distinct !DILexicalBlock(scope: !517, file: !83, line: 861, column: 75)
!522 = !DILocation(line: 862, column: 12, scope: !521)
!523 = !DILocalVariable(name: "tokidx", scope: !521, file: !83, line: 863, type: !119)
!524 = !DILocation(line: 863, column: 20, scope: !521)
!525 = !DILocalVariable(name: "msg", scope: !521, file: !83, line: 864, type: !90)
!526 = !DILocation(line: 864, column: 13, scope: !521)
!527 = !DILocation(line: 866, column: 7, scope: !521)
!528 = !DILocation(line: 867, column: 55, scope: !521)
!529 = !DILocation(line: 867, column: 42, scope: !521)
!530 = !DILocation(line: 867, column: 58, scope: !521)
!531 = !DILocation(line: 866, column: 21, scope: !532)
!532 = !DILexicalBlockFile(scope: !521, file: !83, discriminator: 1)
!533 = !DILocation(line: 866, column: 19, scope: !532)
!534 = !DILocation(line: 868, column: 49, scope: !521)
!535 = !DILocation(line: 866, column: 7, scope: !532)
!536 = !DILocation(line: 870, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !521, file: !83, line: 868, column: 57)
!538 = !DILocation(line: 870, column: 45, scope: !539)
!539 = !DILexicalBlockFile(scope: !537, file: !83, discriminator: 1)
!540 = !DILocation(line: 870, column: 32, scope: !539)
!541 = !DILocation(line: 870, column: 48, scope: !539)
!542 = !DILocation(line: 870, column: 17, scope: !539)
!543 = !DILocation(line: 870, column: 17, scope: !544)
!544 = !DILexicalBlockFile(scope: !537, file: !83, discriminator: 2)
!545 = !DILocation(line: 870, column: 17, scope: !546)
!546 = !DILexicalBlockFile(scope: !537, file: !83, discriminator: 3)
!547 = !DILocation(line: 870, column: 58, scope: !546)
!548 = !DILocation(line: 869, column: 10, scope: !537)
!549 = !DILocation(line: 871, column: 15, scope: !537)
!550 = !DILocation(line: 871, column: 10, scope: !537)
!551 = !DILocation(line: 872, column: 23, scope: !537)
!552 = !DILocation(line: 866, column: 7, scope: !553)
!553 = !DILexicalBlockFile(scope: !521, file: !83, discriminator: 2)
!554 = distinct !{!554, !527}
!555 = !DILocation(line: 874, column: 4, scope: !521)
!556 = !DILocation(line: 861, column: 71, scope: !557)
!557 = !DILexicalBlockFile(scope: !517, file: !83, discriminator: 2)
!558 = !DILocation(line: 861, column: 4, scope: !557)
!559 = distinct !{!559, !560}
!560 = !DILocation(line: 861, column: 4, scope: !503)
!561 = !DILocation(line: 876, column: 4, scope: !503)
!562 = !DILocation(line: 877, column: 4, scope: !503)
!563 = !DILocation(line: 878, column: 4, scope: !503)
!564 = !DILocation(line: 879, column: 4, scope: !503)
!565 = !DILocation(line: 880, column: 4, scope: !503)
!566 = !DILocation(line: 881, column: 4, scope: !503)
!567 = !DILocation(line: 882, column: 4, scope: !503)
!568 = !DILocation(line: 883, column: 1, scope: !503)
!569 = distinct !DISubprogram(name: "PrintVersion", scope: !83, file: !83, line: 165, type: !504, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!570 = !DILocation(line: 167, column: 31, scope: !569)
!571 = !DILocation(line: 167, column: 4, scope: !569)
!572 = !DILocation(line: 168, column: 4, scope: !569)
!573 = !DILocation(line: 169, column: 1, scope: !569)
!574 = distinct !DISubprogram(name: "GetPathMax", scope: !83, file: !83, line: 195, type: !575, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!575 = !DISubroutineType(types: !576)
!576 = !{!220, !110}
!577 = !DILocalVariable(name: "path", arg: 1, scope: !574, file: !83, line: 195, type: !110)
!578 = !DILocation(line: 195, column: 24, scope: !574)
!579 = !DILocalVariable(name: "pathMax", scope: !574, file: !83, line: 197, type: !220)
!580 = !DILocation(line: 197, column: 11, scope: !574)
!581 = !DILocalVariable(name: "sysPathMax", scope: !574, file: !83, line: 200, type: !195)
!582 = !DILocation(line: 200, column: 9, scope: !574)
!583 = !DILocation(line: 210, column: 26, scope: !574)
!584 = !DILocation(line: 210, column: 17, scope: !574)
!585 = !DILocation(line: 210, column: 15, scope: !574)
!586 = !DILocation(line: 211, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !574, file: !83, line: 211, column: 8)
!588 = !DILocation(line: 211, column: 19, scope: !587)
!589 = !DILocation(line: 211, column: 24, scope: !587)
!590 = !DILocation(line: 211, column: 27, scope: !591)
!591 = !DILexicalBlockFile(scope: !587, file: !83, discriminator: 1)
!592 = !DILocation(line: 211, column: 38, scope: !591)
!593 = !DILocation(line: 211, column: 8, scope: !591)
!594 = !DILocation(line: 212, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !83, line: 211, column: 46)
!596 = !DILocation(line: 213, column: 4, scope: !595)
!597 = !DILocation(line: 214, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !587, file: !83, line: 213, column: 11)
!599 = !DILocation(line: 214, column: 15, scope: !598)
!600 = !DILocation(line: 220, column: 11, scope: !574)
!601 = !DILocation(line: 220, column: 4, scope: !574)
!602 = distinct !DISubprogram(name: "ParseShareName", scope: !83, file: !83, line: 243, type: !603, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!603 = !DISubroutineType(types: !604)
!604 = !{!102, !110, !605, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!606 = !DILocalVariable(name: "shareName", arg: 1, scope: !602, file: !83, line: 243, type: !110)
!607 = !DILocation(line: 243, column: 28, scope: !602)
!608 = !DILocalVariable(name: "shareNameHost", arg: 2, scope: !602, file: !83, line: 244, type: !605)
!609 = !DILocation(line: 244, column: 29, scope: !602)
!610 = !DILocalVariable(name: "shareNameDir", arg: 3, scope: !602, file: !83, line: 245, type: !605)
!611 = !DILocation(line: 245, column: 29, scope: !602)
!612 = !DILocalVariable(name: "colon", scope: !602, file: !83, line: 247, type: !110)
!613 = !DILocation(line: 247, column: 16, scope: !602)
!614 = !DILocalVariable(name: "dir", scope: !602, file: !83, line: 248, type: !110)
!615 = !DILocation(line: 248, column: 16, scope: !602)
!616 = !DILocation(line: 251, column: 19, scope: !602)
!617 = !DILocation(line: 251, column: 12, scope: !602)
!618 = !DILocation(line: 251, column: 10, scope: !602)
!619 = !DILocation(line: 252, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !602, file: !83, line: 252, column: 8)
!621 = !DILocation(line: 252, column: 14, scope: !620)
!622 = !DILocation(line: 252, column: 8, scope: !602)
!623 = !DILocation(line: 253, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !83, line: 252, column: 22)
!625 = !DILocation(line: 254, column: 7, scope: !624)
!626 = !DILocation(line: 258, column: 10, scope: !602)
!627 = !DILocation(line: 258, column: 16, scope: !602)
!628 = !DILocation(line: 258, column: 8, scope: !602)
!629 = !DILocation(line: 259, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !602, file: !83, line: 259, column: 8)
!631 = !DILocation(line: 259, column: 8, scope: !630)
!632 = !DILocation(line: 259, column: 13, scope: !630)
!633 = !DILocation(line: 259, column: 8, scope: !602)
!634 = !DILocation(line: 260, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !83, line: 259, column: 22)
!636 = !DILocation(line: 261, column: 7, scope: !635)
!637 = !DILocation(line: 265, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !602, file: !83, line: 265, column: 8)
!639 = !DILocation(line: 265, column: 8, scope: !638)
!640 = !DILocation(line: 265, column: 13, scope: !638)
!641 = !DILocation(line: 265, column: 8, scope: !602)
!642 = !DILocation(line: 266, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !83, line: 265, column: 21)
!644 = !DILocation(line: 267, column: 7, scope: !643)
!645 = !DILocation(line: 271, column: 16, scope: !646)
!646 = distinct !DILexicalBlock(scope: !602, file: !83, line: 271, column: 8)
!647 = !DILocation(line: 271, column: 8, scope: !646)
!648 = !DILocation(line: 271, column: 40, scope: !646)
!649 = !DILocation(line: 271, column: 8, scope: !602)
!650 = !DILocation(line: 272, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !83, line: 271, column: 46)
!652 = !DILocation(line: 273, column: 7, scope: !651)
!653 = !DILocation(line: 276, column: 5, scope: !602)
!654 = !DILocation(line: 276, column: 19, scope: !602)
!655 = !DILocation(line: 277, column: 5, scope: !602)
!656 = !DILocation(line: 277, column: 69, scope: !657)
!657 = !DILexicalBlockFile(scope: !602, file: !83, discriminator: 1)
!658 = !DILocation(line: 277, column: 68, scope: !657)
!659 = !DILocation(line: 277, column: 17, scope: !657)
!660 = !DILocation(line: 277, column: 5, scope: !657)
!661 = !DILocation(line: 277, column: 5, scope: !662)
!662 = !DILexicalBlockFile(scope: !602, file: !83, discriminator: 2)
!663 = !DILocation(line: 277, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !602, file: !83, discriminator: 3)
!665 = !DILocation(line: 278, column: 20, scope: !602)
!666 = !DILocation(line: 278, column: 5, scope: !602)
!667 = !DILocation(line: 278, column: 18, scope: !602)
!668 = !DILocation(line: 279, column: 5, scope: !602)
!669 = !DILocation(line: 279, column: 74, scope: !657)
!670 = !DILocation(line: 279, column: 73, scope: !657)
!671 = !DILocation(line: 279, column: 17, scope: !657)
!672 = !DILocation(line: 279, column: 5, scope: !657)
!673 = !DILocation(line: 279, column: 5, scope: !662)
!674 = !DILocation(line: 279, column: 5, scope: !664)
!675 = !DILocation(line: 280, column: 4, scope: !602)
!676 = !DILocation(line: 281, column: 1, scope: !602)
!677 = distinct !DISubprogram(name: "ParseOptions", scope: !83, file: !83, line: 760, type: !108, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!678 = !DILocalVariable(name: "optionString", arg: 1, scope: !677, file: !83, line: 760, type: !110)
!679 = !DILocation(line: 760, column: 26, scope: !677)
!680 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !677, file: !83, line: 761, type: !111)
!681 = !DILocation(line: 761, column: 29, scope: !677)
!682 = !DILocalVariable(name: "flags", arg: 3, scope: !677, file: !83, line: 762, type: !141)
!683 = !DILocation(line: 762, column: 19, scope: !677)
!684 = !DILocalVariable(name: "commaIndex", scope: !677, file: !83, line: 764, type: !119)
!685 = !DILocation(line: 764, column: 17, scope: !677)
!686 = !DILocalVariable(name: "success", scope: !677, file: !83, line: 765, type: !102)
!687 = !DILocation(line: 765, column: 9, scope: !677)
!688 = !DILocalVariable(name: "key", scope: !677, file: !83, line: 766, type: !90)
!689 = !DILocation(line: 766, column: 10, scope: !677)
!690 = !DILocalVariable(name: "keyVal", scope: !677, file: !83, line: 767, type: !90)
!691 = !DILocation(line: 767, column: 10, scope: !677)
!692 = !DILocalVariable(name: "i", scope: !677, file: !83, line: 768, type: !79)
!693 = !DILocation(line: 768, column: 8, scope: !677)
!694 = !DILocation(line: 775, column: 5, scope: !677)
!695 = !DILocation(line: 775, column: 55, scope: !696)
!696 = !DILexicalBlockFile(scope: !677, file: !83, discriminator: 1)
!697 = !DILocation(line: 775, column: 17, scope: !696)
!698 = !DILocation(line: 775, column: 5, scope: !696)
!699 = !DILocation(line: 775, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !677, file: !83, discriminator: 2)
!701 = !DILocation(line: 775, column: 5, scope: !702)
!702 = !DILexicalBlockFile(scope: !677, file: !83, discriminator: 3)
!703 = !DILocation(line: 778, column: 4, scope: !677)
!704 = !DILocation(line: 779, column: 42, scope: !677)
!705 = !DILocation(line: 778, column: 21, scope: !696)
!706 = !DILocation(line: 778, column: 19, scope: !696)
!707 = !DILocation(line: 779, column: 62, scope: !677)
!708 = !DILocation(line: 778, column: 4, scope: !696)
!709 = !DILocalVariable(name: "equalsIndex", scope: !710, file: !83, line: 781, type: !119)
!710 = distinct !DILexicalBlock(scope: !677, file: !83, line: 779, column: 70)
!711 = !DILocation(line: 781, column: 20, scope: !710)
!712 = !DILocation(line: 782, column: 48, scope: !710)
!713 = !DILocation(line: 782, column: 13, scope: !710)
!714 = !DILocation(line: 782, column: 11, scope: !710)
!715 = !DILocation(line: 783, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !710, file: !83, line: 783, column: 11)
!717 = !DILocation(line: 783, column: 15, scope: !716)
!718 = !DILocation(line: 783, column: 11, scope: !710)
!719 = !DILocation(line: 784, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !83, line: 783, column: 23)
!721 = !DILocation(line: 785, column: 10, scope: !720)
!722 = !DILocation(line: 788, column: 14, scope: !723)
!723 = distinct !DILexicalBlock(scope: !710, file: !83, line: 788, column: 7)
!724 = !DILocation(line: 788, column: 12, scope: !723)
!725 = !DILocation(line: 788, column: 19, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !83, discriminator: 1)
!727 = distinct !DILexicalBlock(scope: !723, file: !83, line: 788, column: 7)
!728 = !DILocation(line: 788, column: 21, scope: !726)
!729 = !DILocation(line: 788, column: 7, scope: !726)
!730 = !DILocalVariable(name: "match", scope: !731, file: !83, line: 789, type: !102)
!731 = distinct !DILexicalBlock(scope: !727, file: !83, line: 788, column: 78)
!732 = !DILocation(line: 789, column: 15, scope: !731)
!733 = !DILocalVariable(name: "idx", scope: !731, file: !83, line: 790, type: !119)
!734 = !DILocation(line: 790, column: 23, scope: !731)
!735 = !DILocalVariable(name: "optName", scope: !731, file: !83, line: 791, type: !90)
!736 = !DILocation(line: 791, column: 16, scope: !731)
!737 = !DILocation(line: 791, column: 66, scope: !731)
!738 = !DILocation(line: 791, column: 53, scope: !731)
!739 = !DILocation(line: 791, column: 69, scope: !731)
!740 = !DILocation(line: 791, column: 26, scope: !731)
!741 = !DILocation(line: 793, column: 15, scope: !742)
!742 = distinct !DILexicalBlock(scope: !731, file: !83, line: 793, column: 14)
!743 = !DILocation(line: 793, column: 14, scope: !731)
!744 = !DILocation(line: 794, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !83, line: 793, column: 24)
!746 = !DILocation(line: 795, column: 13, scope: !745)
!747 = !DILocation(line: 798, column: 25, scope: !731)
!748 = !DILocation(line: 798, column: 30, scope: !731)
!749 = !DILocation(line: 798, column: 18, scope: !731)
!750 = !DILocation(line: 798, column: 39, scope: !731)
!751 = !DILocation(line: 798, column: 16, scope: !731)
!752 = !DILocation(line: 799, column: 15, scope: !731)
!753 = !DILocation(line: 799, column: 10, scope: !731)
!754 = !DILocation(line: 801, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !731, file: !83, line: 801, column: 14)
!756 = !DILocation(line: 801, column: 14, scope: !731)
!757 = !DILocation(line: 802, column: 30, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !83, line: 802, column: 17)
!759 = distinct !DILexicalBlock(scope: !755, file: !83, line: 801, column: 21)
!760 = !DILocation(line: 802, column: 17, scope: !758)
!761 = !DILocation(line: 802, column: 33, scope: !758)
!762 = !DILocation(line: 802, column: 17, scope: !759)
!763 = !DILocation(line: 803, column: 34, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !83, line: 803, column: 20)
!765 = distinct !DILexicalBlock(scope: !758, file: !83, line: 802, column: 42)
!766 = !DILocation(line: 803, column: 21, scope: !764)
!767 = !DILocation(line: 803, column: 37, scope: !764)
!768 = !DILocation(line: 803, column: 45, scope: !764)
!769 = !DILocation(line: 803, column: 53, scope: !764)
!770 = !DILocation(line: 803, column: 64, scope: !764)
!771 = !DILocation(line: 803, column: 20, scope: !765)
!772 = !DILocation(line: 804, column: 19, scope: !773)
!773 = distinct !DILexicalBlock(scope: !764, file: !83, line: 803, column: 72)
!774 = !DILocation(line: 806, column: 13, scope: !765)
!775 = !DILocation(line: 807, column: 33, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !83, line: 807, column: 20)
!777 = distinct !DILexicalBlock(scope: !758, file: !83, line: 806, column: 20)
!778 = !DILocation(line: 807, column: 20, scope: !776)
!779 = !DILocation(line: 807, column: 36, scope: !776)
!780 = !DILocation(line: 807, column: 20, scope: !777)
!781 = !DILocation(line: 808, column: 42, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !83, line: 807, column: 41)
!783 = !DILocation(line: 808, column: 29, scope: !782)
!784 = !DILocation(line: 808, column: 45, scope: !782)
!785 = !DILocation(line: 808, column: 20, scope: !782)
!786 = !DILocation(line: 808, column: 26, scope: !782)
!787 = !DILocation(line: 809, column: 16, scope: !782)
!788 = !DILocation(line: 810, column: 43, scope: !789)
!789 = distinct !DILexicalBlock(scope: !776, file: !83, line: 809, column: 23)
!790 = !DILocation(line: 810, column: 30, scope: !789)
!791 = !DILocation(line: 810, column: 46, scope: !789)
!792 = !DILocation(line: 810, column: 29, scope: !789)
!793 = !DILocation(line: 810, column: 20, scope: !789)
!794 = !DILocation(line: 810, column: 26, scope: !789)
!795 = !DILocation(line: 812, column: 17, scope: !777)
!796 = !DILocation(line: 812, column: 57, scope: !797)
!797 = !DILexicalBlockFile(scope: !777, file: !83, discriminator: 1)
!798 = !DILocation(line: 812, column: 44, scope: !797)
!799 = !DILocation(line: 812, column: 60, scope: !797)
!800 = !DILocation(line: 812, column: 29, scope: !797)
!801 = !DILocation(line: 812, column: 17, scope: !797)
!802 = !DILocation(line: 812, column: 17, scope: !803)
!803 = !DILexicalBlockFile(scope: !777, file: !83, discriminator: 2)
!804 = !DILocation(line: 812, column: 17, scope: !805)
!805 = !DILexicalBlockFile(scope: !777, file: !83, discriminator: 3)
!806 = !DILocation(line: 814, column: 13, scope: !759)
!807 = !DILocation(line: 816, column: 7, scope: !731)
!808 = !DILocation(line: 788, column: 74, scope: !809)
!809 = !DILexicalBlockFile(scope: !727, file: !83, discriminator: 2)
!810 = !DILocation(line: 788, column: 7, scope: !809)
!811 = distinct !{!811, !812}
!812 = !DILocation(line: 788, column: 7, scope: !710)
!813 = !DILocation(line: 818, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !710, file: !83, line: 818, column: 11)
!815 = !DILocation(line: 818, column: 13, scope: !814)
!816 = !DILocation(line: 818, column: 11, scope: !710)
!817 = !DILocation(line: 819, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !83, line: 818, column: 66)
!819 = !DILocation(line: 819, column: 71, scope: !820)
!820 = !DILexicalBlockFile(scope: !818, file: !83, discriminator: 1)
!821 = !DILocation(line: 819, column: 23, scope: !820)
!822 = !DILocation(line: 819, column: 11, scope: !820)
!823 = !DILocation(line: 819, column: 11, scope: !824)
!824 = !DILexicalBlockFile(scope: !818, file: !83, discriminator: 2)
!825 = !DILocation(line: 819, column: 11, scope: !826)
!826 = !DILexicalBlockFile(scope: !818, file: !83, discriminator: 3)
!827 = !DILocation(line: 820, column: 7, scope: !818)
!828 = !DILocation(line: 822, column: 12, scope: !710)
!829 = !DILocation(line: 822, column: 7, scope: !710)
!830 = !DILocation(line: 823, column: 12, scope: !710)
!831 = !DILocation(line: 823, column: 7, scope: !710)
!832 = !DILocation(line: 824, column: 11, scope: !710)
!833 = !DILocation(line: 825, column: 14, scope: !710)
!834 = !DILocation(line: 778, column: 4, scope: !700)
!835 = distinct !{!835, !703}
!836 = !DILocation(line: 828, column: 12, scope: !677)
!837 = !DILocation(line: 828, column: 4, scope: !677)
!838 = !DILocation(line: 831, column: 9, scope: !677)
!839 = !DILocation(line: 831, column: 4, scope: !677)
!840 = !DILocation(line: 832, column: 9, scope: !677)
!841 = !DILocation(line: 832, column: 4, scope: !677)
!842 = !DILocation(line: 833, column: 11, scope: !677)
!843 = !DILocation(line: 833, column: 4, scope: !677)
!844 = distinct !DISubprogram(name: "UpdateMtab", scope: !83, file: !83, line: 904, type: !845, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !111, !79}
!847 = !DILocalVariable(name: "mountInfo", arg: 1, scope: !844, file: !83, line: 904, type: !111)
!848 = !DILocation(line: 904, column: 27, scope: !844)
!849 = !DILocalVariable(name: "flags", arg: 2, scope: !844, file: !83, line: 905, type: !79)
!850 = !DILocation(line: 905, column: 16, scope: !844)
!851 = !DILocalVariable(name: "mountEnt", scope: !844, file: !83, line: 907, type: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !853, line: 53, size: 320, align: 64, elements: !854)
!853 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!854 = !{!855, !856, !857, !858, !859, !860}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !852, file: !853, line: 55, baseType: !90, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !852, file: !853, line: 56, baseType: !90, size: 64, align: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !852, file: !853, line: 57, baseType: !90, size: 64, align: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !852, file: !853, line: 58, baseType: !90, size: 64, align: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !852, file: !853, line: 59, baseType: !79, size: 32, align: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !852, file: !853, line: 60, baseType: !79, size: 32, align: 32, offset: 288)
!861 = !DILocation(line: 907, column: 18, scope: !844)
!862 = !DILocalVariable(name: "mountFile", scope: !844, file: !83, line: 908, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !865, line: 48, baseType: !866)
!865 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !867, line: 241, size: 1728, align: 64, elements: !868)
!867 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!868 = !{!869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !889, !890, !891, !892, !893, !894, !896, !900, !903, !905, !906, !907, !908, !909, !910, !911}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !866, file: !867, line: 242, baseType: !79, size: 32, align: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !866, file: !867, line: 247, baseType: !90, size: 64, align: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !866, file: !867, line: 248, baseType: !90, size: 64, align: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !866, file: !867, line: 249, baseType: !90, size: 64, align: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !866, file: !867, line: 250, baseType: !90, size: 64, align: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !866, file: !867, line: 251, baseType: !90, size: 64, align: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !866, file: !867, line: 252, baseType: !90, size: 64, align: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !866, file: !867, line: 253, baseType: !90, size: 64, align: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !866, file: !867, line: 254, baseType: !90, size: 64, align: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !866, file: !867, line: 256, baseType: !90, size: 64, align: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !866, file: !867, line: 257, baseType: !90, size: 64, align: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !866, file: !867, line: 258, baseType: !90, size: 64, align: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !866, file: !867, line: 260, baseType: !882, size: 64, align: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !867, line: 156, size: 192, align: 64, elements: !884)
!884 = !{!885, !886, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !883, file: !867, line: 157, baseType: !882, size: 64, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !883, file: !867, line: 158, baseType: !887, size: 64, align: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !883, file: !867, line: 162, baseType: !79, size: 32, align: 32, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !866, file: !867, line: 262, baseType: !887, size: 64, align: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !866, file: !867, line: 264, baseType: !79, size: 32, align: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !866, file: !867, line: 268, baseType: !79, size: 32, align: 32, offset: 928)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !866, file: !867, line: 270, baseType: !194, size: 64, align: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !866, file: !867, line: 274, baseType: !80, size: 16, align: 16, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !866, file: !867, line: 275, baseType: !895, size: 8, align: 8, offset: 1040)
!895 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !866, file: !867, line: 276, baseType: !897, size: 8, align: 8, offset: 1048)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 8, align: 8, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 1)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !866, file: !867, line: 280, baseType: !901, size: 64, align: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !867, line: 150, baseType: null)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !866, file: !867, line: 289, baseType: !904, size: 64, align: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !129, line: 132, baseType: !195)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !866, file: !867, line: 297, baseType: !78, size: 64, align: 64, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !866, file: !867, line: 298, baseType: !78, size: 64, align: 64, offset: 1280)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !866, file: !867, line: 299, baseType: !78, size: 64, align: 64, offset: 1344)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !866, file: !867, line: 300, baseType: !78, size: 64, align: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !866, file: !867, line: 302, baseType: !220, size: 64, align: 64, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !866, file: !867, line: 303, baseType: !79, size: 32, align: 32, offset: 1536)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !866, file: !867, line: 305, baseType: !912, size: 160, align: 8, offset: 1568)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 160, align: 8, elements: !87)
!913 = !DILocation(line: 908, column: 10, scope: !844)
!914 = !DILocalVariable(name: "password", scope: !844, file: !83, line: 909, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64, align: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !127, line: 49, size: 384, align: 64, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !916, file: !127, line: 51, baseType: !90, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !916, file: !127, line: 52, baseType: !90, size: 64, align: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !916, file: !127, line: 53, baseType: !128, size: 32, align: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !916, file: !127, line: 54, baseType: !134, size: 32, align: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !916, file: !127, line: 55, baseType: !90, size: 64, align: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !916, file: !127, line: 56, baseType: !90, size: 64, align: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !916, file: !127, line: 57, baseType: !90, size: 64, align: 64, offset: 320)
!925 = !DILocation(line: 909, column: 19, scope: !844)
!926 = !DILocalVariable(name: "userName", scope: !844, file: !83, line: 910, type: !90)
!927 = !DILocation(line: 910, column: 10, scope: !844)
!928 = !DILocation(line: 914, column: 16, scope: !844)
!929 = !DILocation(line: 914, column: 14, scope: !844)
!930 = !DILocation(line: 915, column: 8, scope: !931)
!931 = distinct !DILexicalBlock(scope: !844, file: !83, line: 915, column: 8)
!932 = !DILocation(line: 915, column: 18, scope: !931)
!933 = !DILocation(line: 915, column: 8, scope: !844)
!934 = !DILocation(line: 916, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !83, line: 915, column: 26)
!936 = !DILocation(line: 917, column: 7, scope: !935)
!937 = !DILocation(line: 921, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !844, file: !83, line: 921, column: 8)
!939 = !DILocation(line: 921, column: 17, scope: !938)
!940 = !DILocation(line: 921, column: 8, scope: !844)
!941 = !DILocation(line: 922, column: 27, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !83, line: 921, column: 23)
!943 = !DILocation(line: 922, column: 18, scope: !944)
!944 = !DILexicalBlockFile(scope: !942, file: !83, discriminator: 1)
!945 = !DILocation(line: 922, column: 16, scope: !942)
!946 = !DILocation(line: 923, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !83, line: 923, column: 11)
!948 = !DILocation(line: 923, column: 20, scope: !947)
!949 = !DILocation(line: 923, column: 11, scope: !942)
!950 = !DILocation(line: 924, column: 10, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !83, line: 923, column: 28)
!952 = !DILocation(line: 925, column: 7, scope: !951)
!953 = !DILocation(line: 926, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !83, line: 925, column: 14)
!955 = !DILocation(line: 926, column: 31, scope: !954)
!956 = !DILocation(line: 926, column: 19, scope: !954)
!957 = !DILocation(line: 928, column: 4, scope: !942)
!958 = !DILocation(line: 934, column: 26, scope: !844)
!959 = !DILocation(line: 934, column: 13, scope: !844)
!960 = !DILocation(line: 934, column: 24, scope: !844)
!961 = !DILocation(line: 935, column: 23, scope: !844)
!962 = !DILocation(line: 935, column: 13, scope: !844)
!963 = !DILocation(line: 935, column: 21, scope: !844)
!964 = !DILocation(line: 936, column: 13, scope: !844)
!965 = !DILocation(line: 936, column: 22, scope: !844)
!966 = !DILocation(line: 937, column: 13, scope: !844)
!967 = !DILocation(line: 937, column: 22, scope: !844)
!968 = !DILocation(line: 938, column: 13, scope: !844)
!969 = !DILocation(line: 938, column: 24, scope: !844)
!970 = !DILocation(line: 939, column: 24, scope: !844)
!971 = !DILocation(line: 939, column: 13, scope: !844)
!972 = !DILocation(line: 939, column: 22, scope: !844)
!973 = !DILocation(line: 940, column: 17, scope: !974)
!974 = distinct !DILexicalBlock(scope: !844, file: !83, line: 940, column: 8)
!975 = !DILocation(line: 940, column: 8, scope: !974)
!976 = !DILocation(line: 940, column: 8, scope: !844)
!977 = !DILocalVariable(name: "ttlString", scope: !978, file: !83, line: 941, type: !90)
!978 = distinct !DILexicalBlock(scope: !974, file: !83, line: 940, column: 27)
!979 = !DILocation(line: 941, column: 13, scope: !978)
!980 = !DILocation(line: 943, column: 23, scope: !978)
!981 = !DILocation(line: 943, column: 7, scope: !978)
!982 = !DILocation(line: 950, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !83, line: 950, column: 11)
!984 = !DILocation(line: 950, column: 17, scope: !983)
!985 = !DILocation(line: 950, column: 11, scope: !978)
!986 = !DILocation(line: 951, column: 30, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !83, line: 950, column: 29)
!988 = !DILocation(line: 951, column: 10, scope: !987)
!989 = !DILocation(line: 952, column: 7, scope: !987)
!990 = !DILocation(line: 953, column: 30, scope: !991)
!991 = distinct !DILexicalBlock(scope: !983, file: !83, line: 952, column: 14)
!992 = !DILocation(line: 953, column: 10, scope: !991)
!993 = !DILocation(line: 955, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !978, file: !83, line: 955, column: 11)
!995 = !DILocation(line: 955, column: 17, scope: !994)
!996 = !DILocation(line: 955, column: 11, scope: !978)
!997 = !DILocation(line: 956, column: 30, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !83, line: 955, column: 29)
!999 = !DILocation(line: 956, column: 10, scope: !998)
!1000 = !DILocation(line: 957, column: 7, scope: !998)
!1001 = !DILocation(line: 959, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !978, file: !83, line: 959, column: 11)
!1003 = !DILocation(line: 959, column: 17, scope: !1002)
!1004 = !DILocation(line: 959, column: 11, scope: !978)
!1005 = !DILocation(line: 960, column: 30, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !83, line: 959, column: 28)
!1007 = !DILocation(line: 960, column: 10, scope: !1006)
!1008 = !DILocation(line: 961, column: 7, scope: !1006)
!1009 = !DILocation(line: 963, column: 11, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !978, file: !83, line: 963, column: 11)
!1011 = !DILocation(line: 963, column: 17, scope: !1010)
!1012 = !DILocation(line: 963, column: 11, scope: !978)
!1013 = !DILocation(line: 964, column: 30, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !83, line: 963, column: 29)
!1015 = !DILocation(line: 964, column: 10, scope: !1014)
!1016 = !DILocation(line: 965, column: 7, scope: !1014)
!1017 = !DILocation(line: 966, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !978, file: !83, line: 966, column: 11)
!1019 = !DILocation(line: 966, column: 17, scope: !1018)
!1020 = !DILocation(line: 966, column: 11, scope: !978)
!1021 = !DILocation(line: 967, column: 30, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !83, line: 966, column: 34)
!1023 = !DILocation(line: 967, column: 10, scope: !1022)
!1024 = !DILocation(line: 968, column: 7, scope: !1022)
!1025 = !DILocation(line: 969, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !978, file: !83, line: 969, column: 11)
!1027 = !DILocation(line: 969, column: 17, scope: !1026)
!1028 = !DILocation(line: 969, column: 11, scope: !978)
!1029 = !DILocation(line: 970, column: 30, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !83, line: 969, column: 31)
!1031 = !DILocation(line: 970, column: 10, scope: !1030)
!1032 = !DILocation(line: 971, column: 7, scope: !1030)
!1033 = !DILocation(line: 972, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !978, file: !83, line: 972, column: 11)
!1035 = !DILocation(line: 972, column: 17, scope: !1034)
!1036 = !DILocation(line: 972, column: 11, scope: !978)
!1037 = !DILocation(line: 973, column: 30, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !83, line: 972, column: 30)
!1039 = !DILocation(line: 973, column: 10, scope: !1038)
!1040 = !DILocation(line: 974, column: 7, scope: !1038)
!1041 = !DILocation(line: 975, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !978, file: !83, line: 975, column: 11)
!1043 = !DILocation(line: 975, column: 17, scope: !1042)
!1044 = !DILocation(line: 975, column: 11, scope: !978)
!1045 = !DILocation(line: 976, column: 30, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !83, line: 975, column: 33)
!1047 = !DILocation(line: 976, column: 10, scope: !1046)
!1048 = !DILocation(line: 977, column: 7, scope: !1046)
!1049 = !DILocation(line: 979, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !978, file: !83, line: 979, column: 11)
!1051 = !DILocation(line: 979, column: 20, scope: !1050)
!1052 = !DILocation(line: 979, column: 11, scope: !978)
!1053 = !DILocation(line: 980, column: 30, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !83, line: 979, column: 28)
!1055 = !DILocation(line: 980, column: 10, scope: !1054)
!1056 = !DILocation(line: 981, column: 30, scope: !1054)
!1057 = !DILocation(line: 981, column: 40, scope: !1054)
!1058 = !DILocation(line: 981, column: 10, scope: !1054)
!1059 = !DILocation(line: 982, column: 7, scope: !1054)
!1060 = !DILocation(line: 984, column: 43, scope: !978)
!1061 = !DILocation(line: 984, column: 54, scope: !978)
!1062 = !DILocation(line: 984, column: 19, scope: !978)
!1063 = !DILocation(line: 984, column: 17, scope: !978)
!1064 = !DILocation(line: 985, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !978, file: !83, line: 985, column: 11)
!1066 = !DILocation(line: 985, column: 21, scope: !1065)
!1067 = !DILocation(line: 985, column: 11, scope: !978)
!1068 = !DILocation(line: 986, column: 30, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !83, line: 985, column: 29)
!1070 = !DILocation(line: 986, column: 10, scope: !1069)
!1071 = !DILocation(line: 987, column: 30, scope: !1069)
!1072 = !DILocation(line: 987, column: 40, scope: !1069)
!1073 = !DILocation(line: 987, column: 10, scope: !1069)
!1074 = !DILocation(line: 988, column: 15, scope: !1069)
!1075 = !DILocation(line: 988, column: 10, scope: !1069)
!1076 = !DILocation(line: 989, column: 7, scope: !1069)
!1077 = !DILocation(line: 990, column: 10, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1065, file: !83, line: 989, column: 14)
!1079 = !DILocation(line: 993, column: 4, scope: !978)
!1080 = !DILocation(line: 996, column: 18, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !844, file: !83, line: 996, column: 8)
!1082 = !DILocation(line: 996, column: 8, scope: !1081)
!1083 = !DILocation(line: 996, column: 8, scope: !844)
!1084 = !DILocation(line: 997, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !83, line: 996, column: 41)
!1086 = !DILocation(line: 998, column: 4, scope: !1085)
!1087 = !DILocation(line: 999, column: 14, scope: !844)
!1088 = !DILocation(line: 999, column: 4, scope: !844)
!1089 = !DILocation(line: 1000, column: 17, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !844, file: !83, line: 1000, column: 8)
!1091 = !DILocation(line: 1000, column: 8, scope: !1090)
!1092 = !DILocation(line: 1000, column: 8, scope: !844)
!1093 = !DILocation(line: 1001, column: 21, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !83, line: 1000, column: 27)
!1095 = !DILocation(line: 1001, column: 7, scope: !1094)
!1096 = !DILocation(line: 1002, column: 4, scope: !1094)
!1097 = !DILocation(line: 1003, column: 1, scope: !844)
!1098 = distinct !DISubprogram(name: "ParseUid", scope: !83, file: !83, line: 302, type: !108, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1099 = !DILocalVariable(name: "option", arg: 1, scope: !1098, file: !83, line: 302, type: !110)
!1100 = !DILocation(line: 302, column: 22, scope: !1098)
!1101 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1098, file: !83, line: 303, type: !111)
!1102 = !DILocation(line: 303, column: 25, scope: !1098)
!1103 = !DILocalVariable(name: "flags", arg: 3, scope: !1098, file: !83, line: 304, type: !141)
!1104 = !DILocation(line: 304, column: 15, scope: !1098)
!1105 = !DILocalVariable(name: "success", scope: !1098, file: !83, line: 306, type: !102)
!1106 = !DILocation(line: 306, column: 9, scope: !1098)
!1107 = !DILocalVariable(name: "idx", scope: !1098, file: !83, line: 307, type: !119)
!1108 = !DILocation(line: 307, column: 17, scope: !1098)
!1109 = !DILocalVariable(name: "optString", scope: !1098, file: !83, line: 308, type: !90)
!1110 = !DILocation(line: 308, column: 10, scope: !1098)
!1111 = !DILocalVariable(name: "uidString", scope: !1098, file: !83, line: 309, type: !90)
!1112 = !DILocation(line: 309, column: 10, scope: !1098)
!1113 = !DILocalVariable(name: "myUid", scope: !1098, file: !83, line: 310, type: !126)
!1114 = !DILocation(line: 310, column: 10, scope: !1098)
!1115 = !DILocation(line: 317, column: 43, scope: !1098)
!1116 = !DILocation(line: 317, column: 16, scope: !1098)
!1117 = !DILocation(line: 317, column: 14, scope: !1098)
!1118 = !DILocation(line: 319, column: 43, scope: !1098)
!1119 = !DILocation(line: 319, column: 16, scope: !1098)
!1120 = !DILocation(line: 319, column: 14, scope: !1098)
!1121 = !DILocation(line: 320, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1098, file: !83, line: 320, column: 8)
!1123 = !DILocation(line: 320, column: 8, scope: !1098)
!1124 = !DILocation(line: 321, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !83, line: 320, column: 20)
!1126 = !DILocation(line: 321, column: 20, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1125, file: !83, discriminator: 1)
!1128 = !DILocation(line: 321, column: 8, scope: !1127)
!1129 = !DILocation(line: 321, column: 8, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1125, file: !83, discriminator: 2)
!1131 = !DILocation(line: 321, column: 8, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1125, file: !83, discriminator: 3)
!1133 = !DILocation(line: 322, column: 7, scope: !1125)
!1134 = !DILocation(line: 329, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1098, file: !83, line: 329, column: 7)
!1136 = !DILocation(line: 329, column: 7, scope: !1135)
!1137 = !DILocation(line: 329, column: 28, scope: !1135)
!1138 = !DILocation(line: 329, column: 10, scope: !1135)
!1139 = !DILocation(line: 329, column: 9, scope: !1135)
!1140 = !DILocation(line: 329, column: 11, scope: !1135)
!1141 = !DILocation(line: 329, column: 7, scope: !1098)
!1142 = !DILocation(line: 330, column: 8, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !83, line: 329, column: 28)
!1144 = !DILocation(line: 330, column: 12, scope: !1143)
!1145 = !DILocation(line: 331, column: 23, scope: !1143)
!1146 = !DILocation(line: 331, column: 15, scope: !1143)
!1147 = !DILocation(line: 331, column: 13, scope: !1143)
!1148 = !DILocation(line: 332, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !83, line: 332, column: 10)
!1150 = !DILocation(line: 332, column: 11, scope: !1149)
!1151 = !DILocation(line: 332, column: 16, scope: !1149)
!1152 = !DILocation(line: 332, column: 10, scope: !1143)
!1153 = !DILocation(line: 333, column: 18, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !83, line: 332, column: 22)
!1155 = !DILocation(line: 334, column: 7, scope: !1154)
!1156 = !DILocation(line: 335, column: 43, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1149, file: !83, line: 334, column: 14)
!1158 = !DILocation(line: 335, column: 10, scope: !1157)
!1159 = !DILocation(line: 337, column: 4, scope: !1143)
!1160 = !DILocalVariable(name: "pw", scope: !1161, file: !83, line: 338, type: !915)
!1161 = distinct !DILexicalBlock(scope: !1135, file: !83, line: 337, column: 11)
!1162 = !DILocation(line: 338, column: 22, scope: !1161)
!1163 = !DILocation(line: 340, column: 27, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !83, line: 340, column: 11)
!1165 = !DILocation(line: 340, column: 18, scope: !1164)
!1166 = !DILocation(line: 340, column: 16, scope: !1164)
!1167 = !DILocation(line: 340, column: 11, scope: !1161)
!1168 = !DILocation(line: 341, column: 43, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !83, line: 340, column: 40)
!1170 = !DILocation(line: 341, column: 10, scope: !1169)
!1171 = !DILocation(line: 342, column: 7, scope: !1169)
!1172 = !DILocation(line: 343, column: 18, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1164, file: !83, line: 342, column: 14)
!1174 = !DILocation(line: 343, column: 22, scope: !1173)
!1175 = !DILocation(line: 343, column: 16, scope: !1173)
!1176 = !DILocation(line: 344, column: 18, scope: !1173)
!1177 = !DILocation(line: 346, column: 7, scope: !1161)
!1178 = !DILocation(line: 349, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1098, file: !83, line: 349, column: 8)
!1180 = !DILocation(line: 349, column: 8, scope: !1098)
!1181 = !DILocation(line: 350, column: 24, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !83, line: 349, column: 17)
!1183 = !DILocation(line: 350, column: 7, scope: !1182)
!1184 = !DILocation(line: 350, column: 18, scope: !1182)
!1185 = !DILocation(line: 350, column: 22, scope: !1182)
!1186 = !DILocation(line: 351, column: 7, scope: !1182)
!1187 = !DILocation(line: 351, column: 18, scope: !1182)
!1188 = !DILocation(line: 351, column: 25, scope: !1182)
!1189 = !DILocation(line: 352, column: 8, scope: !1182)
!1190 = !DILocation(line: 352, column: 62, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1182, file: !83, discriminator: 1)
!1192 = !DILocation(line: 352, column: 20, scope: !1191)
!1193 = !DILocation(line: 352, column: 8, scope: !1191)
!1194 = !DILocation(line: 352, column: 8, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1182, file: !83, discriminator: 2)
!1196 = !DILocation(line: 352, column: 8, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1182, file: !83, discriminator: 3)
!1198 = !DILocation(line: 353, column: 4, scope: !1182)
!1199 = !DILocation(line: 355, column: 9, scope: !1098)
!1200 = !DILocation(line: 355, column: 4, scope: !1098)
!1201 = !DILocation(line: 357, column: 9, scope: !1098)
!1202 = !DILocation(line: 357, column: 4, scope: !1098)
!1203 = !DILocation(line: 358, column: 11, scope: !1098)
!1204 = !DILocation(line: 358, column: 4, scope: !1098)
!1205 = distinct !DISubprogram(name: "ParseGid", scope: !83, file: !83, line: 380, type: !108, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1206 = !DILocalVariable(name: "option", arg: 1, scope: !1205, file: !83, line: 380, type: !110)
!1207 = !DILocation(line: 380, column: 22, scope: !1205)
!1208 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1205, file: !83, line: 381, type: !111)
!1209 = !DILocation(line: 381, column: 25, scope: !1205)
!1210 = !DILocalVariable(name: "flags", arg: 3, scope: !1205, file: !83, line: 382, type: !141)
!1211 = !DILocation(line: 382, column: 15, scope: !1205)
!1212 = !DILocalVariable(name: "success", scope: !1205, file: !83, line: 384, type: !102)
!1213 = !DILocation(line: 384, column: 9, scope: !1205)
!1214 = !DILocalVariable(name: "idx", scope: !1205, file: !83, line: 385, type: !119)
!1215 = !DILocation(line: 385, column: 17, scope: !1205)
!1216 = !DILocalVariable(name: "optString", scope: !1205, file: !83, line: 386, type: !90)
!1217 = !DILocation(line: 386, column: 10, scope: !1205)
!1218 = !DILocalVariable(name: "gidString", scope: !1205, file: !83, line: 387, type: !90)
!1219 = !DILocation(line: 387, column: 10, scope: !1205)
!1220 = !DILocalVariable(name: "myGid", scope: !1205, file: !83, line: 388, type: !132)
!1221 = !DILocation(line: 388, column: 10, scope: !1205)
!1222 = !DILocation(line: 395, column: 43, scope: !1205)
!1223 = !DILocation(line: 395, column: 16, scope: !1205)
!1224 = !DILocation(line: 395, column: 14, scope: !1205)
!1225 = !DILocation(line: 397, column: 43, scope: !1205)
!1226 = !DILocation(line: 397, column: 16, scope: !1205)
!1227 = !DILocation(line: 397, column: 14, scope: !1205)
!1228 = !DILocation(line: 398, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1205, file: !83, line: 398, column: 8)
!1230 = !DILocation(line: 398, column: 8, scope: !1205)
!1231 = !DILocation(line: 399, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !83, line: 398, column: 20)
!1233 = !DILocation(line: 399, column: 20, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1232, file: !83, discriminator: 1)
!1235 = !DILocation(line: 399, column: 8, scope: !1234)
!1236 = !DILocation(line: 399, column: 8, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1232, file: !83, discriminator: 2)
!1238 = !DILocation(line: 399, column: 8, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1232, file: !83, discriminator: 3)
!1240 = !DILocation(line: 400, column: 7, scope: !1232)
!1241 = !DILocation(line: 407, column: 8, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1205, file: !83, line: 407, column: 7)
!1243 = !DILocation(line: 407, column: 7, scope: !1242)
!1244 = !DILocation(line: 407, column: 28, scope: !1242)
!1245 = !DILocation(line: 407, column: 10, scope: !1242)
!1246 = !DILocation(line: 407, column: 9, scope: !1242)
!1247 = !DILocation(line: 407, column: 11, scope: !1242)
!1248 = !DILocation(line: 407, column: 7, scope: !1205)
!1249 = !DILocation(line: 408, column: 8, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !83, line: 407, column: 28)
!1251 = !DILocation(line: 408, column: 12, scope: !1250)
!1252 = !DILocation(line: 409, column: 23, scope: !1250)
!1253 = !DILocation(line: 409, column: 15, scope: !1250)
!1254 = !DILocation(line: 409, column: 13, scope: !1250)
!1255 = !DILocation(line: 410, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !83, line: 410, column: 10)
!1257 = !DILocation(line: 410, column: 11, scope: !1256)
!1258 = !DILocation(line: 410, column: 16, scope: !1256)
!1259 = !DILocation(line: 410, column: 10, scope: !1250)
!1260 = !DILocation(line: 411, column: 18, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !83, line: 410, column: 22)
!1262 = !DILocation(line: 412, column: 7, scope: !1261)
!1263 = !DILocation(line: 413, column: 43, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !83, line: 412, column: 14)
!1265 = !DILocation(line: 413, column: 10, scope: !1264)
!1266 = !DILocation(line: 415, column: 4, scope: !1250)
!1267 = !DILocalVariable(name: "gr", scope: !1268, file: !83, line: 416, type: !1269)
!1268 = distinct !DILexicalBlock(scope: !1242, file: !83, line: 415, column: 11)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64, align: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !133, line: 42, size: 256, align: 64, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1270, file: !133, line: 44, baseType: !90, size: 64, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1270, file: !133, line: 45, baseType: !90, size: 64, align: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1270, file: !133, line: 46, baseType: !134, size: 32, align: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1270, file: !133, line: 47, baseType: !151, size: 64, align: 64, offset: 192)
!1276 = !DILocation(line: 416, column: 21, scope: !1268)
!1277 = !DILocation(line: 418, column: 27, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !83, line: 418, column: 11)
!1279 = !DILocation(line: 418, column: 18, scope: !1278)
!1280 = !DILocation(line: 418, column: 16, scope: !1278)
!1281 = !DILocation(line: 418, column: 11, scope: !1268)
!1282 = !DILocation(line: 419, column: 44, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !83, line: 418, column: 40)
!1284 = !DILocation(line: 419, column: 10, scope: !1283)
!1285 = !DILocation(line: 420, column: 7, scope: !1283)
!1286 = !DILocation(line: 421, column: 18, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1278, file: !83, line: 420, column: 14)
!1288 = !DILocation(line: 421, column: 22, scope: !1287)
!1289 = !DILocation(line: 421, column: 16, scope: !1287)
!1290 = !DILocation(line: 422, column: 18, scope: !1287)
!1291 = !DILocation(line: 424, column: 7, scope: !1268)
!1292 = !DILocation(line: 427, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1205, file: !83, line: 427, column: 8)
!1294 = !DILocation(line: 427, column: 8, scope: !1205)
!1295 = !DILocation(line: 428, column: 24, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !83, line: 427, column: 17)
!1297 = !DILocation(line: 428, column: 7, scope: !1296)
!1298 = !DILocation(line: 428, column: 18, scope: !1296)
!1299 = !DILocation(line: 428, column: 22, scope: !1296)
!1300 = !DILocation(line: 429, column: 7, scope: !1296)
!1301 = !DILocation(line: 429, column: 18, scope: !1296)
!1302 = !DILocation(line: 429, column: 25, scope: !1296)
!1303 = !DILocation(line: 430, column: 8, scope: !1296)
!1304 = !DILocation(line: 430, column: 62, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1296, file: !83, discriminator: 1)
!1306 = !DILocation(line: 430, column: 20, scope: !1305)
!1307 = !DILocation(line: 430, column: 8, scope: !1305)
!1308 = !DILocation(line: 430, column: 8, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1296, file: !83, discriminator: 2)
!1310 = !DILocation(line: 430, column: 8, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1296, file: !83, discriminator: 3)
!1312 = !DILocation(line: 431, column: 4, scope: !1296)
!1313 = !DILocation(line: 433, column: 9, scope: !1205)
!1314 = !DILocation(line: 433, column: 4, scope: !1205)
!1315 = !DILocation(line: 435, column: 9, scope: !1205)
!1316 = !DILocation(line: 435, column: 4, scope: !1205)
!1317 = !DILocation(line: 436, column: 11, scope: !1205)
!1318 = !DILocation(line: 436, column: 4, scope: !1205)
!1319 = distinct !DISubprogram(name: "ParseFmask", scope: !83, file: !83, line: 513, type: !108, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1320 = !DILocalVariable(name: "option", arg: 1, scope: !1319, file: !83, line: 513, type: !110)
!1321 = !DILocation(line: 513, column: 24, scope: !1319)
!1322 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1319, file: !83, line: 514, type: !111)
!1323 = !DILocation(line: 514, column: 27, scope: !1319)
!1324 = !DILocalVariable(name: "flags", arg: 3, scope: !1319, file: !83, line: 515, type: !141)
!1325 = !DILocation(line: 515, column: 17, scope: !1319)
!1326 = !DILocation(line: 520, column: 18, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1319, file: !83, line: 520, column: 8)
!1328 = !DILocation(line: 520, column: 27, scope: !1327)
!1329 = !DILocation(line: 520, column: 38, scope: !1327)
!1330 = !DILocation(line: 520, column: 8, scope: !1327)
!1331 = !DILocation(line: 520, column: 8, scope: !1319)
!1332 = !DILocation(line: 521, column: 8, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !83, line: 520, column: 46)
!1334 = !DILocation(line: 521, column: 58, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1333, file: !83, discriminator: 1)
!1336 = !DILocation(line: 521, column: 69, scope: !1335)
!1337 = !DILocation(line: 521, column: 20, scope: !1335)
!1338 = !DILocation(line: 521, column: 8, scope: !1335)
!1339 = !DILocation(line: 521, column: 8, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1333, file: !83, discriminator: 2)
!1341 = !DILocation(line: 521, column: 8, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1333, file: !83, discriminator: 3)
!1343 = !DILocation(line: 522, column: 7, scope: !1333)
!1344 = !DILocation(line: 525, column: 4, scope: !1319)
!1345 = !DILocation(line: 526, column: 1, scope: !1319)
!1346 = distinct !DISubprogram(name: "ParseDmask", scope: !83, file: !83, line: 547, type: !108, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1347 = !DILocalVariable(name: "option", arg: 1, scope: !1346, file: !83, line: 547, type: !110)
!1348 = !DILocation(line: 547, column: 24, scope: !1346)
!1349 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1346, file: !83, line: 548, type: !111)
!1350 = !DILocation(line: 548, column: 27, scope: !1346)
!1351 = !DILocalVariable(name: "flags", arg: 3, scope: !1346, file: !83, line: 549, type: !141)
!1352 = !DILocation(line: 549, column: 17, scope: !1346)
!1353 = !DILocation(line: 554, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !83, line: 554, column: 8)
!1355 = !DILocation(line: 554, column: 27, scope: !1354)
!1356 = !DILocation(line: 554, column: 38, scope: !1354)
!1357 = !DILocation(line: 554, column: 8, scope: !1354)
!1358 = !DILocation(line: 554, column: 8, scope: !1346)
!1359 = !DILocation(line: 555, column: 8, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !83, line: 554, column: 46)
!1361 = !DILocation(line: 555, column: 58, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1360, file: !83, discriminator: 1)
!1363 = !DILocation(line: 555, column: 69, scope: !1362)
!1364 = !DILocation(line: 555, column: 20, scope: !1362)
!1365 = !DILocation(line: 555, column: 8, scope: !1362)
!1366 = !DILocation(line: 555, column: 8, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1360, file: !83, discriminator: 2)
!1368 = !DILocation(line: 555, column: 8, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1360, file: !83, discriminator: 3)
!1370 = !DILocation(line: 556, column: 7, scope: !1360)
!1371 = !DILocation(line: 559, column: 4, scope: !1346)
!1372 = !DILocation(line: 560, column: 1, scope: !1346)
!1373 = distinct !DISubprogram(name: "ParseTtl", scope: !83, file: !83, line: 581, type: !108, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1374 = !DILocalVariable(name: "option", arg: 1, scope: !1373, file: !83, line: 581, type: !110)
!1375 = !DILocation(line: 581, column: 22, scope: !1373)
!1376 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1373, file: !83, line: 582, type: !111)
!1377 = !DILocation(line: 582, column: 25, scope: !1373)
!1378 = !DILocalVariable(name: "flags", arg: 3, scope: !1373, file: !83, line: 583, type: !141)
!1379 = !DILocation(line: 583, column: 15, scope: !1373)
!1380 = !DILocalVariable(name: "success", scope: !1373, file: !83, line: 585, type: !102)
!1381 = !DILocation(line: 585, column: 9, scope: !1373)
!1382 = !DILocalVariable(name: "idx", scope: !1373, file: !83, line: 586, type: !119)
!1383 = !DILocation(line: 586, column: 17, scope: !1373)
!1384 = !DILocalVariable(name: "optString", scope: !1373, file: !83, line: 587, type: !90)
!1385 = !DILocation(line: 587, column: 10, scope: !1373)
!1386 = !DILocalVariable(name: "ttl", scope: !1373, file: !83, line: 588, type: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !103, line: 174, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1389, line: 196, baseType: !79)
!1389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1289")
!1390 = !DILocation(line: 588, column: 10, scope: !1373)
!1391 = !DILocation(line: 595, column: 43, scope: !1373)
!1392 = !DILocation(line: 595, column: 16, scope: !1373)
!1393 = !DILocation(line: 595, column: 14, scope: !1373)
!1394 = !DILocation(line: 598, column: 44, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1373, file: !83, line: 598, column: 8)
!1396 = !DILocation(line: 598, column: 8, scope: !1395)
!1397 = !DILocation(line: 598, column: 57, scope: !1395)
!1398 = !DILocation(line: 598, column: 60, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1395, file: !83, discriminator: 1)
!1400 = !DILocation(line: 598, column: 64, scope: !1399)
!1401 = !DILocation(line: 598, column: 8, scope: !1399)
!1402 = !DILocation(line: 599, column: 8, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !83, line: 598, column: 70)
!1404 = !DILocation(line: 599, column: 68, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1403, file: !83, discriminator: 1)
!1406 = !DILocation(line: 599, column: 20, scope: !1405)
!1407 = !DILocation(line: 599, column: 8, scope: !1405)
!1408 = !DILocation(line: 599, column: 8, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1403, file: !83, discriminator: 2)
!1410 = !DILocation(line: 599, column: 8, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1403, file: !83, discriminator: 3)
!1412 = !DILocation(line: 600, column: 24, scope: !1403)
!1413 = !DILocation(line: 600, column: 7, scope: !1403)
!1414 = !DILocation(line: 600, column: 18, scope: !1403)
!1415 = !DILocation(line: 600, column: 22, scope: !1403)
!1416 = !DILocation(line: 601, column: 15, scope: !1403)
!1417 = !DILocation(line: 602, column: 4, scope: !1403)
!1418 = !DILocation(line: 603, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1395, file: !83, line: 602, column: 11)
!1420 = !DILocation(line: 603, column: 20, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1419, file: !83, discriminator: 1)
!1422 = !DILocation(line: 603, column: 8, scope: !1421)
!1423 = !DILocation(line: 603, column: 8, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1419, file: !83, discriminator: 2)
!1425 = !DILocation(line: 603, column: 8, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1419, file: !83, discriminator: 3)
!1427 = !DILocation(line: 606, column: 9, scope: !1373)
!1428 = !DILocation(line: 606, column: 4, scope: !1373)
!1429 = !DILocation(line: 607, column: 11, scope: !1373)
!1430 = !DILocation(line: 607, column: 4, scope: !1373)
!1431 = distinct !DISubprogram(name: "ParseServerIno", scope: !83, file: !83, line: 629, type: !108, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1432 = !DILocalVariable(name: "option", arg: 1, scope: !1431, file: !83, line: 629, type: !110)
!1433 = !DILocation(line: 629, column: 28, scope: !1431)
!1434 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1431, file: !83, line: 630, type: !111)
!1435 = !DILocation(line: 630, column: 31, scope: !1431)
!1436 = !DILocalVariable(name: "flags", arg: 3, scope: !1431, file: !83, line: 631, type: !141)
!1437 = !DILocation(line: 631, column: 21, scope: !1431)
!1438 = !DILocation(line: 636, column: 4, scope: !1431)
!1439 = !DILocation(line: 636, column: 15, scope: !1431)
!1440 = !DILocation(line: 636, column: 21, scope: !1431)
!1441 = !DILocation(line: 637, column: 5, scope: !1431)
!1442 = !DILocation(line: 637, column: 67, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1431, file: !83, discriminator: 1)
!1444 = !DILocation(line: 637, column: 78, scope: !1443)
!1445 = !DILocation(line: 637, column: 17, scope: !1443)
!1446 = !DILocation(line: 637, column: 5, scope: !1443)
!1447 = !DILocation(line: 637, column: 5, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1431, file: !83, discriminator: 2)
!1449 = !DILocation(line: 637, column: 5, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1431, file: !83, discriminator: 3)
!1451 = !DILocation(line: 638, column: 4, scope: !1431)
!1452 = distinct !DISubprogram(name: "ParseNoServerIno", scope: !83, file: !83, line: 659, type: !108, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1453 = !DILocalVariable(name: "option", arg: 1, scope: !1452, file: !83, line: 659, type: !110)
!1454 = !DILocation(line: 659, column: 30, scope: !1452)
!1455 = !DILocalVariable(name: "mountInfo", arg: 2, scope: !1452, file: !83, line: 660, type: !111)
!1456 = !DILocation(line: 660, column: 33, scope: !1452)
!1457 = !DILocalVariable(name: "flags", arg: 3, scope: !1452, file: !83, line: 661, type: !141)
!1458 = !DILocation(line: 661, column: 23, scope: !1452)
!1459 = !DILocation(line: 666, column: 4, scope: !1452)
!1460 = !DILocation(line: 666, column: 15, scope: !1452)
!1461 = !DILocation(line: 666, column: 21, scope: !1452)
!1462 = !DILocation(line: 667, column: 5, scope: !1452)
!1463 = !DILocation(line: 667, column: 68, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1452, file: !83, discriminator: 1)
!1465 = !DILocation(line: 667, column: 79, scope: !1464)
!1466 = !DILocation(line: 667, column: 17, scope: !1464)
!1467 = !DILocation(line: 667, column: 5, scope: !1464)
!1468 = !DILocation(line: 667, column: 5, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1452, file: !83, discriminator: 2)
!1470 = !DILocation(line: 667, column: 5, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1452, file: !83, discriminator: 3)
!1472 = !DILocation(line: 668, column: 4, scope: !1452)
!1473 = distinct !DISubprogram(name: "ParseMask", scope: !83, file: !83, line: 458, type: !1474, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!102, !110, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!1477 = !DILocalVariable(name: "option", arg: 1, scope: !1473, file: !83, line: 458, type: !110)
!1478 = !DILocation(line: 458, column: 23, scope: !1473)
!1479 = !DILocalVariable(name: "pmask", arg: 2, scope: !1473, file: !83, line: 459, type: !1476)
!1480 = !DILocation(line: 459, column: 27, scope: !1473)
!1481 = !DILocalVariable(name: "success", scope: !1473, file: !83, line: 461, type: !102)
!1482 = !DILocation(line: 461, column: 9, scope: !1473)
!1483 = !DILocalVariable(name: "idx", scope: !1473, file: !83, line: 462, type: !119)
!1484 = !DILocation(line: 462, column: 17, scope: !1473)
!1485 = !DILocalVariable(name: "optString", scope: !1473, file: !83, line: 463, type: !90)
!1486 = !DILocation(line: 463, column: 10, scope: !1473)
!1487 = !DILocalVariable(name: "maskString", scope: !1473, file: !83, line: 464, type: !90)
!1488 = !DILocation(line: 464, column: 10, scope: !1473)
!1489 = !DILocalVariable(name: "mask", scope: !1473, file: !83, line: 465, type: !80)
!1490 = !DILocation(line: 465, column: 19, scope: !1473)
!1491 = !DILocation(line: 467, column: 43, scope: !1473)
!1492 = !DILocation(line: 467, column: 16, scope: !1473)
!1493 = !DILocation(line: 467, column: 14, scope: !1473)
!1494 = !DILocation(line: 469, column: 44, scope: !1473)
!1495 = !DILocation(line: 469, column: 17, scope: !1473)
!1496 = !DILocation(line: 469, column: 15, scope: !1473)
!1497 = !DILocation(line: 470, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1473, file: !83, line: 470, column: 8)
!1499 = !DILocation(line: 470, column: 8, scope: !1473)
!1500 = !DILocation(line: 471, column: 8, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !83, line: 470, column: 21)
!1502 = !DILocation(line: 471, column: 63, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1501, file: !83, discriminator: 1)
!1504 = !DILocation(line: 471, column: 20, scope: !1503)
!1505 = !DILocation(line: 471, column: 8, scope: !1503)
!1506 = !DILocation(line: 471, column: 8, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1501, file: !83, discriminator: 2)
!1508 = !DILocation(line: 471, column: 8, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1501, file: !83, discriminator: 3)
!1510 = !DILocation(line: 472, column: 7, scope: !1501)
!1511 = !DILocation(line: 479, column: 5, scope: !1473)
!1512 = !DILocation(line: 479, column: 9, scope: !1473)
!1513 = !DILocation(line: 480, column: 18, scope: !1473)
!1514 = !DILocation(line: 480, column: 11, scope: !1473)
!1515 = !DILocation(line: 480, column: 9, scope: !1473)
!1516 = !DILocation(line: 481, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1473, file: !83, line: 481, column: 7)
!1518 = !DILocation(line: 481, column: 8, scope: !1517)
!1519 = !DILocation(line: 481, column: 13, scope: !1517)
!1520 = !DILocation(line: 481, column: 7, scope: !1473)
!1521 = !DILocation(line: 482, column: 16, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !83, line: 481, column: 19)
!1523 = !DILocation(line: 482, column: 8, scope: !1522)
!1524 = !DILocation(line: 482, column: 14, scope: !1522)
!1525 = !DILocation(line: 483, column: 15, scope: !1522)
!1526 = !DILocation(line: 484, column: 4, scope: !1522)
!1527 = !DILocation(line: 485, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !83, line: 484, column: 11)
!1529 = !DILocation(line: 485, column: 54, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1528, file: !83, discriminator: 1)
!1531 = !DILocation(line: 485, column: 20, scope: !1530)
!1532 = !DILocation(line: 485, column: 8, scope: !1530)
!1533 = !DILocation(line: 485, column: 8, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1528, file: !83, discriminator: 2)
!1535 = !DILocation(line: 485, column: 8, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1528, file: !83, discriminator: 3)
!1537 = !DILocation(line: 488, column: 9, scope: !1473)
!1538 = !DILocation(line: 488, column: 4, scope: !1473)
!1539 = !DILocation(line: 490, column: 9, scope: !1473)
!1540 = !DILocation(line: 490, column: 4, scope: !1473)
!1541 = !DILocation(line: 491, column: 11, scope: !1473)
!1542 = !DILocation(line: 491, column: 4, scope: !1473)
