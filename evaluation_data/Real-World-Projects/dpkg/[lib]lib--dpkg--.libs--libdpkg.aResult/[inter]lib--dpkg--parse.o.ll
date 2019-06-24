; ModuleID = './[inter]lib--dpkg--parse.o.i'
source_filename = "./[inter]lib--dpkg--parse.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fieldinfo = type { i8*, i64, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)*, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)*, i64 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type opaque
%struct.parsedb_state = type { i32, i32, %struct.dpkg_error, %struct.pkginfo*, %struct.pkgbin*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct.namevalue = type { i8*, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.field_state = type { i8*, i8*, %struct.varbuf, i32, i32, i32* }
%struct.pkg_parse_object = type { %struct.pkginfo*, %struct.pkgbin* }
%struct.pkgcount = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Package\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Essential\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Section\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Installed-Size\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Origin\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Maintainer\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Bugs\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Architecture\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Multi-Arch\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Config-Version\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Replaces\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Provides\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Depends\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Pre-Depends\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Recommends\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Suggests\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Breaks\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Conflicts\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Enhances\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Conffiles\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"MD5sum\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"MSDOS-Filename\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Triggers-Pending\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Triggers-Awaited\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Revision\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Recommended\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Optional\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Package-Revision\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Package_Revision\00", align 1
@fieldinfos = constant [38 x %struct.fieldinfo] [%struct.fieldinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 7, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_name, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_name, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 9, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_boolean, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_booleandefno, i64 8 }, %struct.fieldinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 6, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_status, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_status, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_priority, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_priority, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 7, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_section, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_section, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 56 }, %struct.fieldinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 6, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 64 }, %struct.fieldinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 10, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 40 }, %struct.fieldinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 72 }, %struct.fieldinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 12, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_architecture, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_architecture, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 10, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_multiarch, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_multiarch, i64 12 }, %struct.fieldinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i64 6, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 48 }, %struct.fieldinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 7, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_version, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_version, i64 80 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_configversion, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_configversion, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 7 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 6 }, %struct.fieldinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 7, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 2 }, %struct.fieldinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i64 11, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 3 }, %struct.fieldinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i64 10, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 1 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i64 6, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 4 }, %struct.fieldinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i64 9, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 5 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_dependency, i64 8 }, %struct.fieldinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i64 9, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_conffiles, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_conffiles, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_archives, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_archives, i64 8 }, %struct.fieldinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i64 4, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_archives, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_archives, i64 24 }, %struct.fieldinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i64 6, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_archives, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_archives, i64 32 }, %struct.fieldinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i64 14, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_archives, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_archives, i64 16 }, %struct.fieldinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i64 11, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_charfield, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_charfield, i64 32 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_trigpend, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_trigpend, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_trigaw, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_trigaw, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_revision, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i64 11, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i64 8, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_dependency, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i64 5, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_priority, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_revision, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i64 16, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)* @f_revision, void (%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*)* @w_null, i64 0 }, %struct.fieldinfo zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"failed to open package info file '%.255s' for reading\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"can't stat package info file '%.255s'\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"reading package info file '%s': %s\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"reading package info file '%.255s'\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"empty field name\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"field name '%.*s' cannot start with hyphen\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"end of file after field name '%.*s'\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"newline in field name '%.*s'\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"MSDOS end of file (^Z) in field name '%.*s'\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"field name '%.*s' must be followed by colon\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"end of file before value of field '%.*s' (missing final newline)\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"MSDOS end of file (^Z) in value of field '%.*s' (missing newline?)\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"blank line in value of field '%.*s'\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"end of file during value of field '%.*s' (missing final newline)\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"failed to close after read: '%.255s'\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"several package info entries found, only one allowed\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"no package information in '%.255s'\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"duplicate value for '%s' field\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"user-defined field name '%.*s' too short\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"duplicate value for user-defined field '%.*s'\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"missing '%s' field\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"empty value for '%s' field\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"package has '%s' field but is missing architecture\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Multi-Arch: same\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"package has '%s' field but is architecture '%s'\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"'%s' field present for package with inappropriate '%s' field\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"package has status %s but triggers are awaited\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"package has status %s but no triggers awaited\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"package has status %s but triggers are pending\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"package has status %s but no triggers pending\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"package has status %s and has conffiles, forgetting them\00", align 1
@.str.71 = private unnamed_addr constant [105 x i8] c"package %s (%s) with field '%s: %s' is not co-installable with %s which has multiple installed instances\00", align 1
@multiarchinfos = external constant [0 x %struct.namevalue], align 8
@.str.72 = private unnamed_addr constant [110 x i8] c"multiple non-coinstallable package instances present; most probably due to an upgrade from an unofficial dpkg\00", align 1
@.str.73 = private unnamed_addr constant [125 x i8] c"mixed non-coinstallable and coinstallable package instances present; most probably due to an upgrade from an unofficial dpkg\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"parse.c\00", align 1
@__func__.parse_find_set_slot = private unnamed_addr constant [20 x i8] c"parse_find_set_slot\00", align 1
@.str.75 = private unnamed_addr constant [58 x i8] c"in-core pkgset '%s' with inconsistent number of instances\00", align 1
@__func__.pkg_parse_copy = private unnamed_addr constant [15 x i8] c"pkg_parse_copy\00", align 1
@.str.76 = private unnamed_addr constant [69 x i8] c"trigger awaited package %s and origin package %s not linked properly\00", align 1

declare void @f_name(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_boolean(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_booleandefno(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_status(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_status(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_priority(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_priority(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_section(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_section(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_charfield(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_charfield(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_architecture(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_architecture(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_multiarch(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_multiarch(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_version(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_version(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_configversion(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_configversion(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_dependency(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_dependency(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_conffiles(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_conffiles(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_archives(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_archives(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_trigpend(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_trigpend(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_trigaw(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_trigaw(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

declare void @f_revision(%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*) #0

declare void @w_null(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32, %struct.fieldinfo*) #0

; Function Attrs: nounwind uwtable
define %struct.parsedb_state* @parsedb_new(i8*, i32, i32) #1 !dbg !337 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.parsedb_state*, align 8
  %8 = alloca %struct.dpkg_error, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !341, metadata !342), !dbg !343
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !344, metadata !342), !dbg !345
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !346, metadata !342), !dbg !347
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %7, metadata !348, metadata !342), !dbg !349
  %9 = call i8* @m_malloc(i64 80), !dbg !350
  %10 = bitcast i8* %9 to %struct.parsedb_state*, !dbg !350
  store %struct.parsedb_state* %10, %struct.parsedb_state** %7, align 8, !dbg !351
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !352
  %12 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %11, i32 0, i32 2, !dbg !353
  %13 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %8, i32 0, i32 0, !dbg !354
  store i32 0, i32* %13, align 8, !dbg !354
  %14 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %8, i32 0, i32 1, !dbg !354
  store i32 0, i32* %14, align 4, !dbg !354
  %15 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %8, i32 0, i32 2, !dbg !354
  store i8* null, i8** %15, align 8, !dbg !354
  %16 = bitcast %struct.dpkg_error* %12 to i8*, !dbg !355
  %17 = bitcast %struct.dpkg_error* %8 to i8*, !dbg !355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !dbg !355
  %18 = load i8*, i8** %4, align 8, !dbg !356
  %19 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !357
  %20 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %19, i32 0, i32 8, !dbg !358
  store i8* %18, i8** %20, align 8, !dbg !359
  %21 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !360
  %22 = load i32, i32* %6, align 4, !dbg !361
  %23 = call i32 @parse_get_type(%struct.parsedb_state* %21, i32 %22), !dbg !362
  %24 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !363
  %25 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %24, i32 0, i32 0, !dbg !364
  store i32 %23, i32* %25, align 8, !dbg !365
  %26 = load i32, i32* %6, align 4, !dbg !366
  %27 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !367
  %28 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %27, i32 0, i32 1, !dbg !368
  store i32 %26, i32* %28, align 4, !dbg !369
  %29 = load i32, i32* %5, align 4, !dbg !370
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !371
  %31 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %30, i32 0, i32 9, !dbg !372
  store i32 %29, i32* %31, align 8, !dbg !373
  %32 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !374
  %33 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %32, i32 0, i32 10, !dbg !375
  store i32 0, i32* %33, align 4, !dbg !376
  %34 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !377
  %35 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %34, i32 0, i32 3, !dbg !378
  store %struct.pkginfo* null, %struct.pkginfo** %35, align 8, !dbg !379
  %36 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !380
  %37 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %36, i32 0, i32 4, !dbg !381
  store %struct.pkgbin* null, %struct.pkgbin** %37, align 8, !dbg !382
  %38 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !383
  ret %struct.parsedb_state* %38, !dbg !384
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @m_malloc(i64) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_get_type(%struct.parsedb_state*, i32) #1 !dbg !385 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca i32, align 4
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !388, metadata !342), !dbg !389
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !390, metadata !342), !dbg !391
  %6 = load i32, i32* %5, align 4, !dbg !392
  %7 = and i32 %6, 2, !dbg !394
  %8 = icmp ne i32 %7, 0, !dbg !394
  br i1 %8, label %9, label %15, !dbg !395

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !396
  %11 = and i32 %10, 1, !dbg !399
  %12 = icmp ne i32 %11, 0, !dbg !399
  br i1 %12, label %13, label %14, !dbg !400

; <label>:13:                                     ; preds = %9
  store i32 2, i32* %3, align 4, !dbg !401
  br label %21, !dbg !401

; <label>:14:                                     ; preds = %9
  store i32 3, i32* %3, align 4, !dbg !402
  br label %21, !dbg !402

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4, !dbg !403
  %17 = and i32 %16, 1, !dbg !406
  %18 = icmp ne i32 %17, 0, !dbg !406
  br i1 %18, label %19, label %20, !dbg !407

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %3, align 4, !dbg !408
  br label %21, !dbg !408

; <label>:20:                                     ; preds = %15
  store i32 1, i32* %3, align 4, !dbg !409
  br label %21, !dbg !409

; <label>:21:                                     ; preds = %20, %19, %14, %13
  %22 = load i32, i32* %3, align 4, !dbg !410
  ret i32 %22, !dbg !410
}

; Function Attrs: nounwind uwtable
define %struct.parsedb_state* @parsedb_open(i8*, i32) #1 !dbg !411 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.parsedb_state*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !414, metadata !342), !dbg !415
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !416, metadata !342), !dbg !417
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %6, metadata !418, metadata !342), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %7, metadata !420, metadata !342), !dbg !421
  %8 = load i32, i32* %5, align 4, !dbg !422
  %9 = and i32 %8, 256, !dbg !424
  %10 = icmp ne i32 %9, 0, !dbg !424
  br i1 %10, label %11, label %19, !dbg !425

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !426
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !428
  %14 = icmp eq i32 %13, 0, !dbg !429
  br i1 %14, label %15, label %19, !dbg !430

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !431
  %17 = load i32, i32* %5, align 4, !dbg !432
  %18 = call %struct.parsedb_state* @parsedb_new(i8* %16, i32 0, i32 %17), !dbg !433
  store %struct.parsedb_state* %18, %struct.parsedb_state** %3, align 8, !dbg !434
  br label %36, !dbg !434

; <label>:19:                                     ; preds = %11, %2
  %20 = load i8*, i8** %4, align 8, !dbg !435
  %21 = call i32 (i8*, i32, ...) @open(i8* %20, i32 0), !dbg !436
  store i32 %21, i32* %7, align 4, !dbg !437
  %22 = load i32, i32* %7, align 4, !dbg !438
  %23 = icmp eq i32 %22, -1, !dbg !440
  br i1 %23, label %24, label %27, !dbg !441

; <label>:24:                                     ; preds = %19
  %25 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0)) #9, !dbg !442
  %26 = load i8*, i8** %4, align 8, !dbg !443
  call void (i8*, ...) @ohshite(i8* %25, i8* %26) #10, !dbg !444
  unreachable, !dbg !446

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %4, align 8, !dbg !447
  %29 = load i32, i32* %7, align 4, !dbg !448
  %30 = load i32, i32* %5, align 4, !dbg !449
  %31 = or i32 %30, 128, !dbg !450
  %32 = call %struct.parsedb_state* @parsedb_new(i8* %28, i32 %29, i32 %31), !dbg !451
  store %struct.parsedb_state* %32, %struct.parsedb_state** %6, align 8, !dbg !452
  %33 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !453
  %34 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %33, i32 0, i32 9, !dbg !454
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closefd, i32 -2, i32 1, i32* %34), !dbg !455
  %35 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !456
  store %struct.parsedb_state* %35, %struct.parsedb_state** %3, align 8, !dbg !457
  br label %36, !dbg !457

; <label>:36:                                     ; preds = %27, %15
  %37 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !458
  ret %struct.parsedb_state* %37, !dbg !458
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @open(i8*, i32, ...) #0

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #0

declare void @cu_closefd(i32, i8**) #0

; Function Attrs: nounwind uwtable
define void @parsedb_load(%struct.parsedb_state*) #1 !dbg !459 {
  %2 = alloca %struct.parsedb_state*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.varbuf, align 8
  %5 = alloca %struct.dpkg_error, align 8
  %6 = alloca i64, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %2, metadata !462, metadata !342), !dbg !463
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !464, metadata !342), !dbg !501
  %7 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !502
  %8 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %7, i32 0, i32 9, !dbg !504
  %9 = load i32, i32* %8, align 8, !dbg !504
  %10 = call i32 @fstat(i32 %9, %struct.stat* %3) #9, !dbg !505
  %11 = icmp eq i32 %10, -1, !dbg !506
  br i1 %11, label %12, label %17, !dbg !507

; <label>:12:                                     ; preds = %1
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0)) #9, !dbg !508
  %14 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !509
  %15 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %14, i32 0, i32 8, !dbg !510
  %16 = load i8*, i8** %15, align 8, !dbg !510
  call void (i8*, ...) @ohshite(i8* %13, i8* %16) #10, !dbg !511
  unreachable, !dbg !513

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3, !dbg !514
  %19 = load i32, i32* %18, align 8, !dbg !514
  %20 = and i32 %19, 61440, !dbg !514
  %21 = icmp eq i32 %20, 4096, !dbg !516
  br i1 %21, label %22, label %49, !dbg !517

; <label>:22:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.varbuf* %4, metadata !518, metadata !342), !dbg !520
  %23 = bitcast %struct.varbuf* %4 to i8*, !dbg !520
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 24, i32 8, i1 false), !dbg !520
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %5, metadata !521, metadata !342), !dbg !522
  call void @llvm.dbg.declare(metadata i64* %6, metadata !523, metadata !342), !dbg !524
  %24 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !525
  %25 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %24, i32 0, i32 9, !dbg !526
  %26 = load i32, i32* %25, align 8, !dbg !526
  %27 = bitcast %struct.varbuf* %4 to i8*, !dbg !527
  %28 = call i64 @buffer_copy_IntPtr(i32 %26, i32 0, i8* null, i32 4, i8* %27, i32 1, i64 -1, %struct.dpkg_error* %5), !dbg !528
  store i64 %28, i64* %6, align 8, !dbg !529
  %29 = load i64, i64* %6, align 8, !dbg !530
  %30 = icmp slt i64 %29, 0, !dbg !532
  br i1 %30, label %31, label %38, !dbg !533

; <label>:31:                                     ; preds = %22
  %32 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0)) #9, !dbg !534
  %33 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !535
  %34 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %33, i32 0, i32 8, !dbg !536
  %35 = load i8*, i8** %34, align 8, !dbg !536
  %36 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %5, i32 0, i32 2, !dbg !537
  %37 = load i8*, i8** %36, align 8, !dbg !537
  call void (i8*, ...) @ohshit(i8* %32, i8* %35, i8* %37) #10, !dbg !538
  unreachable, !dbg !540

; <label>:38:                                     ; preds = %22
  call void @varbuf_end_str(%struct.varbuf* %4), !dbg !541
  %39 = call i8* @varbuf_detach(%struct.varbuf* %4), !dbg !542
  %40 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !543
  %41 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %40, i32 0, i32 6, !dbg !544
  store i8* %39, i8** %41, align 8, !dbg !545
  %42 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !546
  %43 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %42, i32 0, i32 6, !dbg !547
  %44 = load i8*, i8** %43, align 8, !dbg !547
  %45 = load i64, i64* %6, align 8, !dbg !548
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !549
  %47 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !550
  %48 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %47, i32 0, i32 7, !dbg !551
  store i8* %46, i8** %48, align 8, !dbg !552
  br label %89, !dbg !553

; <label>:49:                                     ; preds = %17
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !554
  %51 = load i64, i64* %50, align 8, !dbg !554
  %52 = icmp sgt i64 %51, 0, !dbg !557
  br i1 %52, label %53, label %83, !dbg !558

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !559
  %55 = load i64, i64* %54, align 8, !dbg !559
  %56 = call i8* @m_malloc(i64 %55), !dbg !561
  %57 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !562
  %58 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %57, i32 0, i32 6, !dbg !563
  store i8* %56, i8** %58, align 8, !dbg !564
  %59 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !565
  %60 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %59, i32 0, i32 9, !dbg !567
  %61 = load i32, i32* %60, align 8, !dbg !567
  %62 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !568
  %63 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %62, i32 0, i32 6, !dbg !569
  %64 = load i8*, i8** %63, align 8, !dbg !569
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !570
  %66 = load i64, i64* %65, align 8, !dbg !570
  %67 = call i64 @fd_read(i32 %61, i8* %64, i64 %66), !dbg !571
  %68 = icmp slt i64 %67, 0, !dbg !572
  br i1 %68, label %69, label %74, !dbg !573

; <label>:69:                                     ; preds = %53
  %70 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0)) #9, !dbg !574
  %71 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !575
  %72 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %71, i32 0, i32 8, !dbg !576
  %73 = load i8*, i8** %72, align 8, !dbg !576
  call void (i8*, ...) @ohshite(i8* %70, i8* %73) #10, !dbg !577
  unreachable, !dbg !579

; <label>:74:                                     ; preds = %53
  %75 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !580
  %76 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %75, i32 0, i32 6, !dbg !581
  %77 = load i8*, i8** %76, align 8, !dbg !581
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !582
  %79 = load i64, i64* %78, align 8, !dbg !582
  %80 = getelementptr inbounds i8, i8* %77, i64 %79, !dbg !583
  %81 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !584
  %82 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %81, i32 0, i32 7, !dbg !585
  store i8* %80, i8** %82, align 8, !dbg !586
  br label %88, !dbg !587

; <label>:83:                                     ; preds = %49
  %84 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !588
  %85 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %84, i32 0, i32 7, !dbg !590
  store i8* null, i8** %85, align 8, !dbg !591
  %86 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !592
  %87 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %86, i32 0, i32 6, !dbg !593
  store i8* null, i8** %87, align 8, !dbg !594
  br label %88

; <label>:88:                                     ; preds = %83, %74
  br label %89

; <label>:89:                                     ; preds = %88, %38
  %90 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !595
  %91 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %90, i32 0, i32 6, !dbg !596
  %92 = load i8*, i8** %91, align 8, !dbg !596
  %93 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !597
  %94 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %93, i32 0, i32 5, !dbg !598
  store i8* %92, i8** %94, align 8, !dbg !599
  ret void, !dbg !600
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i64 @buffer_copy_IntPtr(i32, i32, i8*, i32, i8*, i32, i64, %struct.dpkg_error*) #0

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #5

declare void @varbuf_end_str(%struct.varbuf*) #0

declare i8* @varbuf_detach(%struct.varbuf*) #0

declare i64 @fd_read(i32, i8*, i64) #0

; Function Attrs: nounwind uwtable
define zeroext i1 @parse_stanza(%struct.parsedb_state*, %struct.field_state*, void (%struct.parsedb_state*, %struct.field_state*, i8*)*, i8*) #1 !dbg !601 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.parsedb_state*, align 8
  %7 = alloca %struct.field_state*, align 8
  %8 = alloca void (%struct.parsedb_state*, %struct.field_state*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.parsedb_state* %0, %struct.parsedb_state** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %6, metadata !618, metadata !342), !dbg !619
  store %struct.field_state* %1, %struct.field_state** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.field_state** %7, metadata !620, metadata !342), !dbg !621
  store void (%struct.parsedb_state*, %struct.field_state*, i8*)* %2, void (%struct.parsedb_state*, %struct.field_state*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (%struct.parsedb_state*, %struct.field_state*, i8*)** %8, metadata !622, metadata !342), !dbg !623
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !624, metadata !342), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %10, metadata !626, metadata !342), !dbg !627
  br label %12, !dbg !628

; <label>:12:                                     ; preds = %34, %4
  %13 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !629
  %14 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %13, i32 0, i32 6, !dbg !631
  %15 = load i8*, i8** %14, align 8, !dbg !631
  %16 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !632
  %17 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %16, i32 0, i32 7, !dbg !633
  %18 = load i8*, i8** %17, align 8, !dbg !633
  %19 = icmp uge i8* %15, %18, !dbg !634
  %20 = xor i1 %19, true, !dbg !635
  br i1 %20, label %21, label %39, !dbg !636

; <label>:21:                                     ; preds = %12
  %22 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !637
  %23 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %22, i32 0, i32 6, !dbg !639
  %24 = load i8*, i8** %23, align 8, !dbg !640
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !640
  store i8* %25, i8** %23, align 8, !dbg !640
  %26 = load i8, i8* %24, align 1, !dbg !641
  %27 = sext i8 %26 to i32, !dbg !641
  store i32 %27, i32* %10, align 4, !dbg !642
  %28 = load i32, i32* %10, align 4, !dbg !643
  %29 = icmp ne i32 %28, 10, !dbg !645
  br i1 %29, label %30, label %34, !dbg !646

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %10, align 4, !dbg !647
  %32 = icmp ne i32 %31, 26, !dbg !649
  br i1 %32, label %33, label %34, !dbg !650

; <label>:33:                                     ; preds = %30
  br label %39, !dbg !651

; <label>:34:                                     ; preds = %30, %21
  %35 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !652
  %36 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %35, i32 0, i32 10, !dbg !653
  %37 = load i32, i32* %36, align 4, !dbg !654
  %38 = add nsw i32 %37, 1, !dbg !654
  store i32 %38, i32* %36, align 4, !dbg !654
  br label %12, !dbg !655, !llvm.loop !657

; <label>:39:                                     ; preds = %33, %12
  %40 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !658
  %41 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %40, i32 0, i32 6, !dbg !660
  %42 = load i8*, i8** %41, align 8, !dbg !660
  %43 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !661
  %44 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %43, i32 0, i32 7, !dbg !662
  %45 = load i8*, i8** %44, align 8, !dbg !662
  %46 = icmp uge i8* %42, %45, !dbg !663
  br i1 %46, label %47, label %48, !dbg !664

; <label>:47:                                     ; preds = %39
  store i1 false, i1* %5, align 1, !dbg !665
  br label %430, !dbg !665

; <label>:48:                                     ; preds = %39
  br label %49, !dbg !666

; <label>:49:                                     ; preds = %420, %48
  call void @llvm.dbg.declare(metadata i8* %11, metadata !667, metadata !342), !dbg !671
  %50 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !672
  %51 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %50, i32 0, i32 6, !dbg !673
  %52 = load i8*, i8** %51, align 8, !dbg !673
  %53 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !674
  %54 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !675
  %55 = getelementptr inbounds %struct.field_state, %struct.field_state* %54, i32 0, i32 0, !dbg !676
  store i8* %53, i8** %55, align 8, !dbg !677
  br label %56, !dbg !678

; <label>:56:                                     ; preds = %75, %49
  %57 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !679
  %58 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %57, i32 0, i32 6, !dbg !681
  %59 = load i8*, i8** %58, align 8, !dbg !681
  %60 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !682
  %61 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %60, i32 0, i32 7, !dbg !683
  %62 = load i8*, i8** %61, align 8, !dbg !683
  %63 = icmp uge i8* %59, %62, !dbg !684
  br i1 %63, label %73, label %64, !dbg !685

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %10, align 4, !dbg !686
  %66 = call zeroext i1 @c_isspace(i32 %65), !dbg !688
  br i1 %66, label %73, label %67, !dbg !689

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %10, align 4, !dbg !690
  %69 = icmp ne i32 %68, 58, !dbg !692
  br i1 %69, label %70, label %73, !dbg !693

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %10, align 4, !dbg !694
  %72 = icmp ne i32 %71, 26, !dbg !696
  br label %73

; <label>:73:                                     ; preds = %70, %67, %64, %56
  %74 = phi i1 [ false, %67 ], [ false, %64 ], [ false, %56 ], [ %72, %70 ]
  br i1 %74, label %75, label %82, !dbg !697

; <label>:75:                                     ; preds = %73
  %76 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !699
  %77 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %76, i32 0, i32 6, !dbg !700
  %78 = load i8*, i8** %77, align 8, !dbg !701
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !701
  store i8* %79, i8** %77, align 8, !dbg !701
  %80 = load i8, i8* %78, align 1, !dbg !702
  %81 = sext i8 %80 to i32, !dbg !702
  store i32 %81, i32* %10, align 4, !dbg !703
  br label %56, !dbg !704, !llvm.loop !706

; <label>:82:                                     ; preds = %73
  %83 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !707
  %84 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %83, i32 0, i32 6, !dbg !708
  %85 = load i8*, i8** %84, align 8, !dbg !708
  %86 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !709
  %87 = getelementptr inbounds %struct.field_state, %struct.field_state* %86, i32 0, i32 0, !dbg !710
  %88 = load i8*, i8** %87, align 8, !dbg !710
  %89 = ptrtoint i8* %85 to i64, !dbg !711
  %90 = ptrtoint i8* %88 to i64, !dbg !711
  %91 = sub i64 %89, %90, !dbg !711
  %92 = sub nsw i64 %91, 1, !dbg !712
  %93 = trunc i64 %92 to i32, !dbg !707
  %94 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !713
  %95 = getelementptr inbounds %struct.field_state, %struct.field_state* %94, i32 0, i32 3, !dbg !714
  store i32 %93, i32* %95, align 8, !dbg !715
  %96 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !716
  %97 = getelementptr inbounds %struct.field_state, %struct.field_state* %96, i32 0, i32 3, !dbg !718
  %98 = load i32, i32* %97, align 8, !dbg !718
  %99 = icmp eq i32 %98, 0, !dbg !719
  br i1 %99, label %100, label %103, !dbg !720

; <label>:100:                                    ; preds = %82
  %101 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !721
  %102 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #9, !dbg !722
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %101, i8* %102) #10, !dbg !723
  unreachable, !dbg !725

; <label>:103:                                    ; preds = %82
  %104 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !726
  %105 = getelementptr inbounds %struct.field_state, %struct.field_state* %104, i32 0, i32 0, !dbg !728
  %106 = load i8*, i8** %105, align 8, !dbg !728
  %107 = getelementptr inbounds i8, i8* %106, i64 0, !dbg !726
  %108 = load i8, i8* %107, align 1, !dbg !726
  %109 = sext i8 %108 to i32, !dbg !726
  %110 = icmp eq i32 %109, 45, !dbg !729
  br i1 %110, label %111, label %120, !dbg !730

; <label>:111:                                    ; preds = %103
  %112 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !731
  %113 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0)) #9, !dbg !732
  %114 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !733
  %115 = getelementptr inbounds %struct.field_state, %struct.field_state* %114, i32 0, i32 3, !dbg !734
  %116 = load i32, i32* %115, align 8, !dbg !734
  %117 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !735
  %118 = getelementptr inbounds %struct.field_state, %struct.field_state* %117, i32 0, i32 0, !dbg !736
  %119 = load i8*, i8** %118, align 8, !dbg !736
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %112, i8* %113, i32 %116, i8* %119) #10, !dbg !737
  unreachable, !dbg !739

; <label>:120:                                    ; preds = %103
  br label %121, !dbg !740

; <label>:121:                                    ; preds = %137, %120
  %122 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !741
  %123 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %122, i32 0, i32 6, !dbg !742
  %124 = load i8*, i8** %123, align 8, !dbg !742
  %125 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !743
  %126 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %125, i32 0, i32 7, !dbg !744
  %127 = load i8*, i8** %126, align 8, !dbg !744
  %128 = icmp uge i8* %124, %127, !dbg !745
  br i1 %128, label %135, label %129, !dbg !746

; <label>:129:                                    ; preds = %121
  %130 = load i32, i32* %10, align 4, !dbg !747
  %131 = icmp ne i32 %130, 10, !dbg !748
  br i1 %131, label %132, label %135, !dbg !749

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %10, align 4, !dbg !750
  %134 = call zeroext i1 @c_isspace(i32 %133), !dbg !751
  br label %135

; <label>:135:                                    ; preds = %132, %129, %121
  %136 = phi i1 [ false, %129 ], [ false, %121 ], [ %134, %132 ]
  br i1 %136, label %137, label %144, !dbg !752

; <label>:137:                                    ; preds = %135
  %138 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !753
  %139 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %138, i32 0, i32 6, !dbg !754
  %140 = load i8*, i8** %139, align 8, !dbg !755
  %141 = getelementptr inbounds i8, i8* %140, i32 1, !dbg !755
  store i8* %141, i8** %139, align 8, !dbg !755
  %142 = load i8, i8* %140, align 1, !dbg !756
  %143 = sext i8 %142 to i32, !dbg !756
  store i32 %143, i32* %10, align 4, !dbg !757
  br label %121, !dbg !758, !llvm.loop !759

; <label>:144:                                    ; preds = %135
  %145 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !760
  %146 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %145, i32 0, i32 6, !dbg !762
  %147 = load i8*, i8** %146, align 8, !dbg !762
  %148 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !763
  %149 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %148, i32 0, i32 7, !dbg !764
  %150 = load i8*, i8** %149, align 8, !dbg !764
  %151 = icmp uge i8* %147, %150, !dbg !765
  br i1 %151, label %152, label %161, !dbg !766

; <label>:152:                                    ; preds = %144
  %153 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !767
  %154 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0)) #9, !dbg !768
  %155 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !769
  %156 = getelementptr inbounds %struct.field_state, %struct.field_state* %155, i32 0, i32 3, !dbg !770
  %157 = load i32, i32* %156, align 8, !dbg !770
  %158 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !771
  %159 = getelementptr inbounds %struct.field_state, %struct.field_state* %158, i32 0, i32 0, !dbg !772
  %160 = load i8*, i8** %159, align 8, !dbg !772
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %153, i8* %154, i32 %157, i8* %160) #10, !dbg !773
  unreachable, !dbg !775

; <label>:161:                                    ; preds = %144
  %162 = load i32, i32* %10, align 4, !dbg !776
  %163 = icmp eq i32 %162, 10, !dbg !778
  br i1 %163, label %164, label %173, !dbg !779

; <label>:164:                                    ; preds = %161
  %165 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !780
  %166 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i32 0, i32 0)) #9, !dbg !781
  %167 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !782
  %168 = getelementptr inbounds %struct.field_state, %struct.field_state* %167, i32 0, i32 3, !dbg !783
  %169 = load i32, i32* %168, align 8, !dbg !783
  %170 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !784
  %171 = getelementptr inbounds %struct.field_state, %struct.field_state* %170, i32 0, i32 0, !dbg !785
  %172 = load i8*, i8** %171, align 8, !dbg !785
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %165, i8* %166, i32 %169, i8* %172) #10, !dbg !786
  unreachable, !dbg !786

; <label>:173:                                    ; preds = %161
  %174 = load i32, i32* %10, align 4, !dbg !787
  %175 = icmp eq i32 %174, 26, !dbg !789
  br i1 %175, label %176, label %185, !dbg !790

; <label>:176:                                    ; preds = %173
  %177 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !791
  %178 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i32 0, i32 0)) #9, !dbg !792
  %179 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !793
  %180 = getelementptr inbounds %struct.field_state, %struct.field_state* %179, i32 0, i32 3, !dbg !794
  %181 = load i32, i32* %180, align 8, !dbg !794
  %182 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !795
  %183 = getelementptr inbounds %struct.field_state, %struct.field_state* %182, i32 0, i32 0, !dbg !796
  %184 = load i8*, i8** %183, align 8, !dbg !796
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %177, i8* %178, i32 %181, i8* %184) #10, !dbg !797
  unreachable, !dbg !799

; <label>:185:                                    ; preds = %173
  %186 = load i32, i32* %10, align 4, !dbg !800
  %187 = icmp ne i32 %186, 58, !dbg !802
  br i1 %187, label %188, label %197, !dbg !803

; <label>:188:                                    ; preds = %185
  %189 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !804
  %190 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0)) #9, !dbg !805
  %191 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !806
  %192 = getelementptr inbounds %struct.field_state, %struct.field_state* %191, i32 0, i32 3, !dbg !807
  %193 = load i32, i32* %192, align 8, !dbg !807
  %194 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !808
  %195 = getelementptr inbounds %struct.field_state, %struct.field_state* %194, i32 0, i32 0, !dbg !809
  %196 = load i8*, i8** %195, align 8, !dbg !809
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %189, i8* %190, i32 %193, i8* %196) #10, !dbg !810
  unreachable, !dbg !810

; <label>:197:                                    ; preds = %185
  br label %198, !dbg !811

; <label>:198:                                    ; preds = %220, %197
  %199 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !812
  %200 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %199, i32 0, i32 6, !dbg !813
  %201 = load i8*, i8** %200, align 8, !dbg !813
  %202 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !814
  %203 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %202, i32 0, i32 7, !dbg !815
  %204 = load i8*, i8** %203, align 8, !dbg !815
  %205 = icmp uge i8* %201, %204, !dbg !816
  %206 = xor i1 %205, true, !dbg !817
  br i1 %206, label %207, label %221, !dbg !818

; <label>:207:                                    ; preds = %198
  %208 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !819
  %209 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %208, i32 0, i32 6, !dbg !821
  %210 = load i8*, i8** %209, align 8, !dbg !822
  %211 = getelementptr inbounds i8, i8* %210, i32 1, !dbg !822
  store i8* %211, i8** %209, align 8, !dbg !822
  %212 = load i8, i8* %210, align 1, !dbg !823
  %213 = sext i8 %212 to i32, !dbg !823
  store i32 %213, i32* %10, align 4, !dbg !824
  %214 = load i32, i32* %10, align 4, !dbg !825
  %215 = icmp eq i32 %214, 10, !dbg !827
  br i1 %215, label %219, label %216, !dbg !828

; <label>:216:                                    ; preds = %207
  %217 = load i32, i32* %10, align 4, !dbg !829
  %218 = call zeroext i1 @c_isspace(i32 %217), !dbg !831
  br i1 %218, label %220, label %219, !dbg !832

; <label>:219:                                    ; preds = %216, %207
  br label %221, !dbg !833

; <label>:220:                                    ; preds = %216
  br label %198, !dbg !834, !llvm.loop !835

; <label>:221:                                    ; preds = %219, %198
  %222 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !836
  %223 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %222, i32 0, i32 6, !dbg !838
  %224 = load i8*, i8** %223, align 8, !dbg !838
  %225 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !839
  %226 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %225, i32 0, i32 7, !dbg !840
  %227 = load i8*, i8** %226, align 8, !dbg !840
  %228 = icmp uge i8* %224, %227, !dbg !841
  br i1 %228, label %229, label %238, !dbg !842

; <label>:229:                                    ; preds = %221
  %230 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !843
  %231 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i32 0, i32 0)) #9, !dbg !844
  %232 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !845
  %233 = getelementptr inbounds %struct.field_state, %struct.field_state* %232, i32 0, i32 3, !dbg !846
  %234 = load i32, i32* %233, align 8, !dbg !846
  %235 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !847
  %236 = getelementptr inbounds %struct.field_state, %struct.field_state* %235, i32 0, i32 0, !dbg !848
  %237 = load i8*, i8** %236, align 8, !dbg !848
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %230, i8* %231, i32 %234, i8* %237) #10, !dbg !849
  unreachable, !dbg !851

; <label>:238:                                    ; preds = %221
  %239 = load i32, i32* %10, align 4, !dbg !852
  %240 = icmp eq i32 %239, 26, !dbg !854
  br i1 %240, label %241, label %250, !dbg !855

; <label>:241:                                    ; preds = %238
  %242 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !856
  %243 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.50, i32 0, i32 0)) #9, !dbg !857
  %244 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !858
  %245 = getelementptr inbounds %struct.field_state, %struct.field_state* %244, i32 0, i32 3, !dbg !859
  %246 = load i32, i32* %245, align 8, !dbg !859
  %247 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !860
  %248 = getelementptr inbounds %struct.field_state, %struct.field_state* %247, i32 0, i32 0, !dbg !861
  %249 = load i8*, i8** %248, align 8, !dbg !861
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %242, i8* %243, i32 %246, i8* %249) #10, !dbg !862
  unreachable, !dbg !864

; <label>:250:                                    ; preds = %238
  store i8 0, i8* %11, align 1, !dbg !865
  %251 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !866
  %252 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %251, i32 0, i32 6, !dbg !867
  %253 = load i8*, i8** %252, align 8, !dbg !867
  %254 = getelementptr inbounds i8, i8* %253, i64 -1, !dbg !868
  %255 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !869
  %256 = getelementptr inbounds %struct.field_state, %struct.field_state* %255, i32 0, i32 1, !dbg !870
  store i8* %254, i8** %256, align 8, !dbg !871
  br label %257, !dbg !872

; <label>:257:                                    ; preds = %355, %250
  %258 = load i32, i32* %10, align 4, !dbg !873
  %259 = icmp eq i32 %258, 10, !dbg !878
  br i1 %259, label %263, label %260, !dbg !879

; <label>:260:                                    ; preds = %257
  %261 = load i32, i32* %10, align 4, !dbg !880
  %262 = icmp eq i32 %261, 26, !dbg !882
  br i1 %262, label %263, label %330, !dbg !883

; <label>:263:                                    ; preds = %260, %257
  %264 = load i8, i8* %11, align 1, !dbg !884
  %265 = trunc i8 %264 to i1, !dbg !884
  br i1 %265, label %266, label %291, !dbg !887

; <label>:266:                                    ; preds = %263
  %267 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !888
  %268 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %267, i32 0, i32 1, !dbg !891
  %269 = load i32, i32* %268, align 4, !dbg !891
  %270 = and i32 %269, 512, !dbg !892
  %271 = icmp ne i32 %270, 0, !dbg !892
  br i1 %271, label %272, label %281, !dbg !893

; <label>:272:                                    ; preds = %266
  %273 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !894
  %274 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !895
  %275 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !896
  %276 = getelementptr inbounds %struct.field_state, %struct.field_state* %275, i32 0, i32 3, !dbg !897
  %277 = load i32, i32* %276, align 8, !dbg !897
  %278 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !898
  %279 = getelementptr inbounds %struct.field_state, %struct.field_state* %278, i32 0, i32 0, !dbg !899
  %280 = load i8*, i8** %279, align 8, !dbg !899
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %273, i8* %274, i32 %277, i8* %280), !dbg !900
  br label %290, !dbg !902

; <label>:281:                                    ; preds = %266
  %282 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !903
  %283 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0)) #9, !dbg !904
  %284 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !905
  %285 = getelementptr inbounds %struct.field_state, %struct.field_state* %284, i32 0, i32 3, !dbg !906
  %286 = load i32, i32* %285, align 8, !dbg !906
  %287 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !907
  %288 = getelementptr inbounds %struct.field_state, %struct.field_state* %287, i32 0, i32 0, !dbg !908
  %289 = load i8*, i8** %288, align 8, !dbg !908
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %282, i8* %283, i32 %286, i8* %289) #10, !dbg !909
  unreachable, !dbg !910

; <label>:290:                                    ; preds = %272
  br label %291, !dbg !911

; <label>:291:                                    ; preds = %290, %263
  %292 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !912
  %293 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %292, i32 0, i32 10, !dbg !913
  %294 = load i32, i32* %293, align 4, !dbg !914
  %295 = add nsw i32 %294, 1, !dbg !914
  store i32 %295, i32* %293, align 4, !dbg !914
  %296 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !915
  %297 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %296, i32 0, i32 6, !dbg !917
  %298 = load i8*, i8** %297, align 8, !dbg !917
  %299 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !918
  %300 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %299, i32 0, i32 7, !dbg !919
  %301 = load i8*, i8** %300, align 8, !dbg !919
  %302 = icmp uge i8* %298, %301, !dbg !920
  br i1 %302, label %303, label %304, !dbg !921

; <label>:303:                                    ; preds = %291
  br label %362, !dbg !922

; <label>:304:                                    ; preds = %291
  %305 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !923
  %306 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %305, i32 0, i32 6, !dbg !924
  %307 = load i8*, i8** %306, align 8, !dbg !925
  %308 = getelementptr inbounds i8, i8* %307, i32 1, !dbg !925
  store i8* %308, i8** %306, align 8, !dbg !925
  %309 = load i8, i8* %307, align 1, !dbg !926
  %310 = sext i8 %309 to i32, !dbg !926
  store i32 %310, i32* %10, align 4, !dbg !927
  %311 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !928
  %312 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %311, i32 0, i32 6, !dbg !930
  %313 = load i8*, i8** %312, align 8, !dbg !930
  %314 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !931
  %315 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %314, i32 0, i32 7, !dbg !932
  %316 = load i8*, i8** %315, align 8, !dbg !932
  %317 = icmp uge i8* %313, %316, !dbg !933
  br i1 %317, label %324, label %318, !dbg !934

; <label>:318:                                    ; preds = %304
  %319 = load i32, i32* %10, align 4, !dbg !935
  %320 = icmp eq i32 %319, 10, !dbg !937
  br i1 %320, label %324, label %321, !dbg !938

; <label>:321:                                    ; preds = %318
  %322 = load i32, i32* %10, align 4, !dbg !939
  %323 = call zeroext i1 @c_isspace(i32 %322), !dbg !941
  br i1 %323, label %325, label %324, !dbg !942

; <label>:324:                                    ; preds = %321, %318, %304
  br label %362, !dbg !943

; <label>:325:                                    ; preds = %321
  %326 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !944
  %327 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %326, i32 0, i32 6, !dbg !945
  %328 = load i8*, i8** %327, align 8, !dbg !946
  %329 = getelementptr inbounds i8, i8* %328, i32 -1, !dbg !946
  store i8* %329, i8** %327, align 8, !dbg !946
  store i8 1, i8* %11, align 1, !dbg !947
  br label %338, !dbg !948

; <label>:330:                                    ; preds = %260
  %331 = load i8, i8* %11, align 1, !dbg !949
  %332 = trunc i8 %331 to i1, !dbg !949
  br i1 %332, label %333, label %337, !dbg !952

; <label>:333:                                    ; preds = %330
  %334 = load i32, i32* %10, align 4, !dbg !953
  %335 = call zeroext i1 @c_isspace(i32 %334), !dbg !955
  br i1 %335, label %337, label %336, !dbg !956

; <label>:336:                                    ; preds = %333
  store i8 0, i8* %11, align 1, !dbg !957
  br label %337, !dbg !959

; <label>:337:                                    ; preds = %336, %333, %330
  br label %338

; <label>:338:                                    ; preds = %337, %325
  %339 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !960
  %340 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %339, i32 0, i32 6, !dbg !962
  %341 = load i8*, i8** %340, align 8, !dbg !962
  %342 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !963
  %343 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %342, i32 0, i32 7, !dbg !964
  %344 = load i8*, i8** %343, align 8, !dbg !964
  %345 = icmp uge i8* %341, %344, !dbg !965
  br i1 %345, label %346, label %355, !dbg !966

; <label>:346:                                    ; preds = %338
  %347 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !967
  %348 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.52, i32 0, i32 0)) #9, !dbg !968
  %349 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !969
  %350 = getelementptr inbounds %struct.field_state, %struct.field_state* %349, i32 0, i32 3, !dbg !970
  %351 = load i32, i32* %350, align 8, !dbg !970
  %352 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !971
  %353 = getelementptr inbounds %struct.field_state, %struct.field_state* %352, i32 0, i32 0, !dbg !972
  %354 = load i8*, i8** %353, align 8, !dbg !972
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %347, i8* %348, i32 %351, i8* %354) #10, !dbg !973
  unreachable, !dbg !975

; <label>:355:                                    ; preds = %338
  %356 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !976
  %357 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %356, i32 0, i32 6, !dbg !977
  %358 = load i8*, i8** %357, align 8, !dbg !978
  %359 = getelementptr inbounds i8, i8* %358, i32 1, !dbg !978
  store i8* %359, i8** %357, align 8, !dbg !978
  %360 = load i8, i8* %358, align 1, !dbg !979
  %361 = sext i8 %360 to i32, !dbg !979
  store i32 %361, i32* %10, align 4, !dbg !980
  br label %257, !dbg !981, !llvm.loop !983

; <label>:362:                                    ; preds = %324, %303
  %363 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !984
  %364 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %363, i32 0, i32 6, !dbg !985
  %365 = load i8*, i8** %364, align 8, !dbg !985
  %366 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !986
  %367 = getelementptr inbounds %struct.field_state, %struct.field_state* %366, i32 0, i32 1, !dbg !987
  %368 = load i8*, i8** %367, align 8, !dbg !987
  %369 = ptrtoint i8* %365 to i64, !dbg !988
  %370 = ptrtoint i8* %368 to i64, !dbg !988
  %371 = sub i64 %369, %370, !dbg !988
  %372 = sub nsw i64 %371, 1, !dbg !989
  %373 = trunc i64 %372 to i32, !dbg !984
  %374 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !990
  %375 = getelementptr inbounds %struct.field_state, %struct.field_state* %374, i32 0, i32 4, !dbg !991
  store i32 %373, i32* %375, align 4, !dbg !992
  br label %376, !dbg !993

; <label>:376:                                    ; preds = %396, %362
  %377 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !994
  %378 = getelementptr inbounds %struct.field_state, %struct.field_state* %377, i32 0, i32 4, !dbg !995
  %379 = load i32, i32* %378, align 4, !dbg !995
  %380 = icmp ne i32 %379, 0, !dbg !994
  br i1 %380, label %381, label %394, !dbg !996

; <label>:381:                                    ; preds = %376
  %382 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !997
  %383 = getelementptr inbounds %struct.field_state, %struct.field_state* %382, i32 0, i32 1, !dbg !998
  %384 = load i8*, i8** %383, align 8, !dbg !998
  %385 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !999
  %386 = getelementptr inbounds %struct.field_state, %struct.field_state* %385, i32 0, i32 4, !dbg !1000
  %387 = load i32, i32* %386, align 4, !dbg !1000
  %388 = sext i32 %387 to i64, !dbg !1001
  %389 = getelementptr inbounds i8, i8* %384, i64 %388, !dbg !1001
  %390 = getelementptr inbounds i8, i8* %389, i64 -1, !dbg !1002
  %391 = load i8, i8* %390, align 1, !dbg !1003
  %392 = sext i8 %391 to i32, !dbg !1003
  %393 = call zeroext i1 @c_isspace(i32 %392), !dbg !1004
  br label %394

; <label>:394:                                    ; preds = %381, %376
  %395 = phi i1 [ false, %376 ], [ %393, %381 ]
  br i1 %395, label %396, label %401, !dbg !1005

; <label>:396:                                    ; preds = %394
  %397 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !1006
  %398 = getelementptr inbounds %struct.field_state, %struct.field_state* %397, i32 0, i32 4, !dbg !1007
  %399 = load i32, i32* %398, align 4, !dbg !1008
  %400 = add nsw i32 %399, -1, !dbg !1008
  store i32 %400, i32* %398, align 4, !dbg !1008
  br label %376, !dbg !1009, !llvm.loop !1010

; <label>:401:                                    ; preds = %394
  %402 = load void (%struct.parsedb_state*, %struct.field_state*, i8*)*, void (%struct.parsedb_state*, %struct.field_state*, i8*)** %8, align 8, !dbg !1011
  %403 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1012
  %404 = load %struct.field_state*, %struct.field_state** %7, align 8, !dbg !1013
  %405 = load i8*, i8** %9, align 8, !dbg !1014
  call void %402(%struct.parsedb_state* %403, %struct.field_state* %404, i8* %405), !dbg !1011
  %406 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1015
  %407 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %406, i32 0, i32 6, !dbg !1017
  %408 = load i8*, i8** %407, align 8, !dbg !1017
  %409 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1018
  %410 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %409, i32 0, i32 7, !dbg !1019
  %411 = load i8*, i8** %410, align 8, !dbg !1019
  %412 = icmp uge i8* %408, %411, !dbg !1020
  br i1 %412, label %419, label %413, !dbg !1021

; <label>:413:                                    ; preds = %401
  %414 = load i32, i32* %10, align 4, !dbg !1022
  %415 = icmp eq i32 %414, 10, !dbg !1024
  br i1 %415, label %419, label %416, !dbg !1025

; <label>:416:                                    ; preds = %413
  %417 = load i32, i32* %10, align 4, !dbg !1026
  %418 = icmp eq i32 %417, 26, !dbg !1028
  br i1 %418, label %419, label %420, !dbg !1029

; <label>:419:                                    ; preds = %416, %413, %401
  br label %421, !dbg !1030

; <label>:420:                                    ; preds = %416
  br label %49, !dbg !1031, !llvm.loop !1033

; <label>:421:                                    ; preds = %419
  %422 = load i32, i32* %10, align 4, !dbg !1034
  %423 = icmp eq i32 %422, 10, !dbg !1036
  br i1 %423, label %424, label %429, !dbg !1037

; <label>:424:                                    ; preds = %421
  %425 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1038
  %426 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %425, i32 0, i32 10, !dbg !1039
  %427 = load i32, i32* %426, align 4, !dbg !1040
  %428 = add nsw i32 %427, 1, !dbg !1040
  store i32 %428, i32* %426, align 4, !dbg !1040
  br label %429, !dbg !1038

; <label>:429:                                    ; preds = %424, %421
  store i1 true, i1* %5, align 1, !dbg !1041
  br label %430, !dbg !1041

; <label>:430:                                    ; preds = %429, %47
  %431 = load i1, i1* %5, align 1, !dbg !1042
  ret i1 %431, !dbg !1042
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #7 !dbg !1043 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1046, metadata !342), !dbg !1047
  %3 = load i32, i32* %2, align 4, !dbg !1048
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !1049
  ret i1 %4, !dbg !1050
}

; Function Attrs: noreturn
declare void @parse_error(%struct.parsedb_state*, i8*, ...) #5

declare void @parse_warn(%struct.parsedb_state*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define void @parsedb_close(%struct.parsedb_state*) #1 !dbg !1051 {
  %2 = alloca %struct.parsedb_state*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %2, metadata !1052, metadata !342), !dbg !1053
  %3 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1054
  %4 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %3, i32 0, i32 1, !dbg !1056
  %5 = load i32, i32* %4, align 4, !dbg !1056
  %6 = and i32 %5, 128, !dbg !1057
  %7 = icmp ne i32 %6, 0, !dbg !1057
  br i1 %7, label %8, label %20, !dbg !1058

; <label>:8:                                      ; preds = %1
  call void @pop_cleanup(i32 1), !dbg !1059
  %9 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1061
  %10 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %9, i32 0, i32 9, !dbg !1063
  %11 = load i32, i32* %10, align 8, !dbg !1063
  %12 = call i32 @close(i32 %11), !dbg !1064
  %13 = icmp ne i32 %12, 0, !dbg !1064
  br i1 %13, label %14, label %19, !dbg !1065

; <label>:14:                                     ; preds = %8
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0)) #9, !dbg !1066
  %16 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1067
  %17 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %16, i32 0, i32 8, !dbg !1068
  %18 = load i8*, i8** %17, align 8, !dbg !1068
  call void (i8*, ...) @ohshite(i8* %15, i8* %18) #10, !dbg !1069
  unreachable, !dbg !1071

; <label>:19:                                     ; preds = %8
  br label %20, !dbg !1072

; <label>:20:                                     ; preds = %19, %1
  %21 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1073
  %22 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %21, i32 0, i32 5, !dbg !1075
  %23 = load i8*, i8** %22, align 8, !dbg !1075
  %24 = icmp ne i8* %23, null, !dbg !1076
  br i1 %24, label %25, label %29, !dbg !1077

; <label>:25:                                     ; preds = %20
  %26 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1078
  %27 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %26, i32 0, i32 5, !dbg !1080
  %28 = load i8*, i8** %27, align 8, !dbg !1080
  call void @free(i8* %28) #9, !dbg !1081
  br label %29, !dbg !1082

; <label>:29:                                     ; preds = %25, %20
  %30 = load %struct.parsedb_state*, %struct.parsedb_state** %2, align 8, !dbg !1083
  %31 = bitcast %struct.parsedb_state* %30 to i8*, !dbg !1083
  call void @free(i8* %31) #9, !dbg !1084
  ret void, !dbg !1085
}

declare void @pop_cleanup(i32) #0

declare i32 @close(i32) #0

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @parsedb_parse(%struct.parsedb_state*, %struct.pkginfo**) #1 !dbg !1086 {
  %3 = alloca %struct.parsedb_state*, align 8
  %4 = alloca %struct.pkginfo**, align 8
  %5 = alloca %struct.pkgset, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca %struct.pkgbin*, align 8
  %10 = alloca %struct.pkg_parse_object, align 8
  %11 = alloca [38 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.field_state, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %3, metadata !1090, metadata !342), !dbg !1091
  store %struct.pkginfo** %1, %struct.pkginfo*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %4, metadata !1092, metadata !342), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.pkgset* %5, metadata !1094, metadata !342), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1096, metadata !342), !dbg !1097
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1098, metadata !342), !dbg !1099
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1100, metadata !342), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %9, metadata !1102, metadata !342), !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.pkg_parse_object* %10, metadata !1104, metadata !342), !dbg !1109
  call void @llvm.dbg.declare(metadata [38 x i32]* %11, metadata !1110, metadata !342), !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1113, metadata !342), !dbg !1114
  call void @llvm.dbg.declare(metadata %struct.field_state* %13, metadata !1115, metadata !342), !dbg !1116
  %14 = bitcast %struct.field_state* %13 to i8*, !dbg !1117
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 56, i32 8, i1 false), !dbg !1117
  %15 = getelementptr inbounds [38 x i32], [38 x i32]* %11, i32 0, i32 0, !dbg !1118
  %16 = getelementptr inbounds %struct.field_state, %struct.field_state* %13, i32 0, i32 5, !dbg !1119
  store i32* %15, i32** %16, align 8, !dbg !1120
  %17 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %5, i32 0, i32 2, !dbg !1121
  store %struct.pkginfo* %17, %struct.pkginfo** %6, align 8, !dbg !1122
  %18 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1123
  %19 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %18, i32 0, i32 1, !dbg !1125
  %20 = load i32, i32* %19, align 4, !dbg !1125
  %21 = and i32 %20, 2, !dbg !1126
  %22 = icmp ne i32 %21, 0, !dbg !1126
  br i1 %22, label %23, label %26, !dbg !1127

; <label>:23:                                     ; preds = %2
  %24 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1128
  %25 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %24, i32 0, i32 10, !dbg !1129
  store %struct.pkgbin* %25, %struct.pkgbin** %8, align 8, !dbg !1130
  br label %29, !dbg !1131

; <label>:26:                                     ; preds = %2
  %27 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1132
  %28 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %27, i32 0, i32 9, !dbg !1133
  store %struct.pkgbin* %28, %struct.pkgbin** %8, align 8, !dbg !1134
  br label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1135
  %31 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1136
  %32 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %31, i32 0, i32 3, !dbg !1137
  store %struct.pkginfo* %30, %struct.pkginfo** %32, align 8, !dbg !1138
  %33 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1139
  %34 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1140
  %35 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %34, i32 0, i32 4, !dbg !1141
  store %struct.pkgbin* %33, %struct.pkgbin** %35, align 8, !dbg !1142
  %36 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1143
  %37 = getelementptr inbounds %struct.pkg_parse_object, %struct.pkg_parse_object* %10, i32 0, i32 0, !dbg !1144
  store %struct.pkginfo* %36, %struct.pkginfo** %37, align 8, !dbg !1145
  %38 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1146
  %39 = getelementptr inbounds %struct.pkg_parse_object, %struct.pkg_parse_object* %10, i32 0, i32 1, !dbg !1147
  store %struct.pkgbin* %38, %struct.pkgbin** %39, align 8, !dbg !1148
  store i32 0, i32* %12, align 4, !dbg !1149
  br label %40, !dbg !1150

; <label>:40:                                     ; preds = %120, %97, %29
  %41 = getelementptr inbounds [38 x i32], [38 x i32]* %11, i32 0, i32 0, !dbg !1151
  %42 = bitcast i32* %41 to i8*, !dbg !1151
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 152, i32 16, i1 false), !dbg !1151
  call void @pkgset_blank(%struct.pkgset* %5), !dbg !1155
  %43 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1156
  %44 = bitcast %struct.pkg_parse_object* %10 to i8*, !dbg !1158
  %45 = call zeroext i1 @parse_stanza(%struct.parsedb_state* %43, %struct.field_state* %13, void (%struct.parsedb_state*, %struct.field_state*, i8*)* @pkg_parse_field, i8* %44), !dbg !1159
  br i1 %45, label %47, label %46, !dbg !1160

; <label>:46:                                     ; preds = %40
  br label %121, !dbg !1161

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %12, align 4, !dbg !1162
  %49 = icmp ne i32 %48, 0, !dbg !1162
  br i1 %49, label %50, label %56, !dbg !1164

; <label>:50:                                     ; preds = %47
  %51 = load %struct.pkginfo**, %struct.pkginfo*** %4, align 8, !dbg !1165
  %52 = icmp ne %struct.pkginfo** %51, null, !dbg !1165
  br i1 %52, label %53, label %56, !dbg !1167

; <label>:53:                                     ; preds = %50
  %54 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1168
  %55 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.54, i32 0, i32 0)) #9, !dbg !1169
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %54, i8* %55) #10, !dbg !1170
  unreachable, !dbg !1170

; <label>:56:                                     ; preds = %50, %47
  %57 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1171
  %58 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1172
  %59 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1173
  call void @pkg_parse_verify(%struct.parsedb_state* %57, %struct.pkginfo* %58, %struct.pkgbin* %59), !dbg !1174
  %60 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1175
  %61 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1176
  %62 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1177
  %63 = call %struct.pkginfo* @parse_find_pkg_slot(%struct.parsedb_state* %60, %struct.pkginfo* %61, %struct.pkgbin* %62), !dbg !1178
  store %struct.pkginfo* %63, %struct.pkginfo** %7, align 8, !dbg !1179
  %64 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1180
  %65 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %64, i32 0, i32 1, !dbg !1182
  %66 = load i32, i32* %65, align 4, !dbg !1182
  %67 = and i32 %66, 2, !dbg !1183
  %68 = icmp ne i32 %67, 0, !dbg !1183
  br i1 %68, label %69, label %72, !dbg !1184

; <label>:69:                                     ; preds = %56
  %70 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1185
  %71 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %70, i32 0, i32 10, !dbg !1186
  store %struct.pkgbin* %71, %struct.pkgbin** %9, align 8, !dbg !1187
  br label %75, !dbg !1188

; <label>:72:                                     ; preds = %56
  %73 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1189
  %74 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %73, i32 0, i32 9, !dbg !1190
  store %struct.pkgbin* %74, %struct.pkgbin** %9, align 8, !dbg !1191
  br label %75

; <label>:75:                                     ; preds = %72, %69
  %76 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1192
  %77 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %76, i32 0, i32 1, !dbg !1194
  %78 = load i32, i32* %77, align 4, !dbg !1194
  %79 = and i32 %78, 32, !dbg !1195
  %80 = icmp ne i32 %79, 0, !dbg !1195
  br i1 %80, label %86, label %81, !dbg !1196

; <label>:81:                                     ; preds = %75
  %82 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1197
  %83 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %82, i32 0, i32 0, !dbg !1199
  %84 = load i32, i32* %83, align 8, !dbg !1199
  %85 = icmp eq i32 %84, 3, !dbg !1200
  br i1 %85, label %86, label %98, !dbg !1201

; <label>:86:                                     ; preds = %81, %75
  %87 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1202
  %88 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %87, i32 0, i32 11, !dbg !1203
  %89 = call zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version* %88), !dbg !1204
  br i1 %89, label %90, label %98, !dbg !1205

; <label>:90:                                     ; preds = %86
  %91 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1206
  %92 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %91, i32 0, i32 11, !dbg !1207
  %93 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1208
  %94 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %93, i32 0, i32 11, !dbg !1209
  %95 = call i32 @dpkg_version_compare(%struct.dpkg_version* %92, %struct.dpkg_version* %94), !dbg !1210
  %96 = icmp slt i32 %95, 0, !dbg !1211
  br i1 %96, label %97, label %98, !dbg !1212

; <label>:97:                                     ; preds = %90
  br label %40, !dbg !1214, !llvm.loop !1215

; <label>:98:                                     ; preds = %90, %86, %81
  %99 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1216
  %100 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1217
  %101 = load %struct.pkgbin*, %struct.pkgbin** %9, align 8, !dbg !1218
  %102 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1219
  %103 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !1220
  call void @pkg_parse_copy(%struct.parsedb_state* %99, %struct.pkginfo* %100, %struct.pkgbin* %101, %struct.pkginfo* %102, %struct.pkgbin* %103), !dbg !1221
  %104 = load %struct.pkginfo**, %struct.pkginfo*** %4, align 8, !dbg !1222
  %105 = icmp ne %struct.pkginfo** %104, null, !dbg !1222
  br i1 %105, label %106, label %109, !dbg !1224

; <label>:106:                                    ; preds = %98
  %107 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1225
  %108 = load %struct.pkginfo**, %struct.pkginfo*** %4, align 8, !dbg !1226
  store %struct.pkginfo* %107, %struct.pkginfo** %108, align 8, !dbg !1227
  br label %109, !dbg !1228

; <label>:109:                                    ; preds = %106, %98
  %110 = load i32, i32* %12, align 4, !dbg !1229
  %111 = add nsw i32 %110, 1, !dbg !1229
  store i32 %111, i32* %12, align 4, !dbg !1229
  %112 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1230
  %113 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %112, i32 0, i32 6, !dbg !1232
  %114 = load i8*, i8** %113, align 8, !dbg !1232
  %115 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1233
  %116 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %115, i32 0, i32 7, !dbg !1234
  %117 = load i8*, i8** %116, align 8, !dbg !1234
  %118 = icmp uge i8* %114, %117, !dbg !1235
  br i1 %118, label %119, label %120, !dbg !1236

; <label>:119:                                    ; preds = %109
  br label %121, !dbg !1237

; <label>:120:                                    ; preds = %109
  br label %40, !dbg !1238, !llvm.loop !1215

; <label>:121:                                    ; preds = %119, %46
  %122 = getelementptr inbounds %struct.field_state, %struct.field_state* %13, i32 0, i32 2, !dbg !1240
  call void @varbuf_destroy(%struct.varbuf* %122), !dbg !1241
  %123 = load %struct.pkginfo**, %struct.pkginfo*** %4, align 8, !dbg !1242
  %124 = icmp ne %struct.pkginfo** %123, null, !dbg !1242
  br i1 %124, label %125, label %133, !dbg !1244

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %12, align 4, !dbg !1245
  %127 = icmp ne i32 %126, 0, !dbg !1245
  br i1 %127, label %133, label %128, !dbg !1247

; <label>:128:                                    ; preds = %125
  %129 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0)) #9, !dbg !1248
  %130 = load %struct.parsedb_state*, %struct.parsedb_state** %3, align 8, !dbg !1249
  %131 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %130, i32 0, i32 8, !dbg !1250
  %132 = load i8*, i8** %131, align 8, !dbg !1250
  call void (i8*, ...) @ohshit(i8* %129, i8* %132) #10, !dbg !1251
  unreachable, !dbg !1252

; <label>:133:                                    ; preds = %125, %121
  %134 = load i32, i32* %12, align 4, !dbg !1253
  ret i32 %134, !dbg !1254
}

declare void @pkgset_blank(%struct.pkgset*) #0

; Function Attrs: nounwind uwtable
define internal void @pkg_parse_field(%struct.parsedb_state*, %struct.field_state*, i8*) #1 !dbg !1255 {
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca %struct.field_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pkg_parse_object*, align 8
  %8 = alloca %struct.fieldinfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.arbitraryfield*, align 8
  %11 = alloca %struct.arbitraryfield**, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !1256, metadata !342), !dbg !1257
  store %struct.field_state* %1, %struct.field_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.field_state** %5, metadata !1258, metadata !342), !dbg !1259
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1260, metadata !342), !dbg !1261
  call void @llvm.dbg.declare(metadata %struct.pkg_parse_object** %7, metadata !1262, metadata !342), !dbg !1264
  %12 = load i8*, i8** %6, align 8, !dbg !1265
  %13 = bitcast i8* %12 to %struct.pkg_parse_object*, !dbg !1265
  store %struct.pkg_parse_object* %13, %struct.pkg_parse_object** %7, align 8, !dbg !1264
  call void @llvm.dbg.declare(metadata %struct.fieldinfo** %8, metadata !1266, metadata !342), !dbg !1267
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1268, metadata !342), !dbg !1269
  store %struct.fieldinfo* getelementptr inbounds ([38 x %struct.fieldinfo], [38 x %struct.fieldinfo]* @fieldinfos, i32 0, i32 0), %struct.fieldinfo** %8, align 8, !dbg !1270
  %14 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1272
  %15 = getelementptr inbounds %struct.field_state, %struct.field_state* %14, i32 0, i32 5, !dbg !1273
  %16 = load i32*, i32** %15, align 8, !dbg !1273
  store i32* %16, i32** %9, align 8, !dbg !1274
  br label %17, !dbg !1275

; <label>:17:                                     ; preds = %46, %3
  %18 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1276
  %19 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %18, i32 0, i32 0, !dbg !1279
  %20 = load i8*, i8** %19, align 8, !dbg !1279
  %21 = icmp ne i8* %20, null, !dbg !1280
  br i1 %21, label %22, label %51, !dbg !1280

; <label>:22:                                     ; preds = %17
  %23 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1281
  %24 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %23, i32 0, i32 1, !dbg !1283
  %25 = load i64, i64* %24, align 8, !dbg !1283
  %26 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1284
  %27 = getelementptr inbounds %struct.field_state, %struct.field_state* %26, i32 0, i32 3, !dbg !1285
  %28 = load i32, i32* %27, align 8, !dbg !1285
  %29 = sext i32 %28 to i64, !dbg !1286
  %30 = icmp eq i64 %25, %29, !dbg !1287
  br i1 %30, label %31, label %45, !dbg !1288

; <label>:31:                                     ; preds = %22
  %32 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1289
  %33 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %32, i32 0, i32 0, !dbg !1290
  %34 = load i8*, i8** %33, align 8, !dbg !1290
  %35 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1291
  %36 = getelementptr inbounds %struct.field_state, %struct.field_state* %35, i32 0, i32 0, !dbg !1292
  %37 = load i8*, i8** %36, align 8, !dbg !1292
  %38 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1293
  %39 = getelementptr inbounds %struct.field_state, %struct.field_state* %38, i32 0, i32 3, !dbg !1294
  %40 = load i32, i32* %39, align 8, !dbg !1294
  %41 = sext i32 %40 to i64, !dbg !1293
  %42 = call i32 @strncasecmp(i8* %34, i8* %37, i64 %41) #8, !dbg !1295
  %43 = icmp eq i32 %42, 0, !dbg !1296
  br i1 %43, label %44, label %45, !dbg !1297

; <label>:44:                                     ; preds = %31
  br label %51, !dbg !1298

; <label>:45:                                     ; preds = %31, %22
  br label %46, !dbg !1299

; <label>:46:                                     ; preds = %45
  %47 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1301
  %48 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %47, i32 1, !dbg !1301
  store %struct.fieldinfo* %48, %struct.fieldinfo** %8, align 8, !dbg !1301
  %49 = load i32*, i32** %9, align 8, !dbg !1303
  %50 = getelementptr inbounds i32, i32* %49, i32 1, !dbg !1303
  store i32* %50, i32** %9, align 8, !dbg !1303
  br label %17, !dbg !1304, !llvm.loop !1305

; <label>:51:                                     ; preds = %44, %17
  %52 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1307
  %53 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %52, i32 0, i32 0, !dbg !1309
  %54 = load i8*, i8** %53, align 8, !dbg !1309
  %55 = icmp ne i8* %54, null, !dbg !1307
  br i1 %55, label %56, label %96, !dbg !1310

; <label>:56:                                     ; preds = %51
  %57 = load i32*, i32** %9, align 8, !dbg !1311
  %58 = load i32, i32* %57, align 4, !dbg !1314
  %59 = add nsw i32 %58, 1, !dbg !1314
  store i32 %59, i32* %57, align 4, !dbg !1314
  %60 = icmp ne i32 %58, 0, !dbg !1314
  br i1 %60, label %61, label %67, !dbg !1315

; <label>:61:                                     ; preds = %56
  %62 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1316
  %63 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)) #9, !dbg !1317
  %64 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1318
  %65 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %64, i32 0, i32 0, !dbg !1319
  %66 = load i8*, i8** %65, align 8, !dbg !1319
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %62, i8* %63, i8* %66) #10, !dbg !1320
  unreachable, !dbg !1320

; <label>:67:                                     ; preds = %56
  %68 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1321
  %69 = getelementptr inbounds %struct.field_state, %struct.field_state* %68, i32 0, i32 2, !dbg !1322
  call void @varbuf_reset(%struct.varbuf* %69), !dbg !1323
  %70 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1324
  %71 = getelementptr inbounds %struct.field_state, %struct.field_state* %70, i32 0, i32 2, !dbg !1325
  %72 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1326
  %73 = getelementptr inbounds %struct.field_state, %struct.field_state* %72, i32 0, i32 1, !dbg !1327
  %74 = load i8*, i8** %73, align 8, !dbg !1327
  %75 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1328
  %76 = getelementptr inbounds %struct.field_state, %struct.field_state* %75, i32 0, i32 4, !dbg !1329
  %77 = load i32, i32* %76, align 4, !dbg !1329
  %78 = sext i32 %77 to i64, !dbg !1328
  call void @varbuf_add_buf(%struct.varbuf* %71, i8* %74, i64 %78), !dbg !1330
  %79 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1331
  %80 = getelementptr inbounds %struct.field_state, %struct.field_state* %79, i32 0, i32 2, !dbg !1332
  call void @varbuf_end_str(%struct.varbuf* %80), !dbg !1333
  %81 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1334
  %82 = getelementptr inbounds %struct.fieldinfo, %struct.fieldinfo* %81, i32 0, i32 2, !dbg !1335
  %83 = load void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)*, void (%struct.pkginfo*, %struct.pkgbin*, %struct.parsedb_state*, i8*, %struct.fieldinfo*)** %82, align 8, !dbg !1335
  %84 = load %struct.pkg_parse_object*, %struct.pkg_parse_object** %7, align 8, !dbg !1336
  %85 = getelementptr inbounds %struct.pkg_parse_object, %struct.pkg_parse_object* %84, i32 0, i32 0, !dbg !1337
  %86 = load %struct.pkginfo*, %struct.pkginfo** %85, align 8, !dbg !1337
  %87 = load %struct.pkg_parse_object*, %struct.pkg_parse_object** %7, align 8, !dbg !1338
  %88 = getelementptr inbounds %struct.pkg_parse_object, %struct.pkg_parse_object* %87, i32 0, i32 1, !dbg !1339
  %89 = load %struct.pkgbin*, %struct.pkgbin** %88, align 8, !dbg !1339
  %90 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1340
  %91 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1341
  %92 = getelementptr inbounds %struct.field_state, %struct.field_state* %91, i32 0, i32 2, !dbg !1342
  %93 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %92, i32 0, i32 2, !dbg !1343
  %94 = load i8*, i8** %93, align 8, !dbg !1343
  %95 = load %struct.fieldinfo*, %struct.fieldinfo** %8, align 8, !dbg !1344
  call void %83(%struct.pkginfo* %86, %struct.pkgbin* %89, %struct.parsedb_state* %90, i8* %94, %struct.fieldinfo* %95), !dbg !1334
  br label %181, !dbg !1345

; <label>:96:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield** %10, metadata !1346, metadata !342), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.arbitraryfield*** %11, metadata !1349, metadata !342), !dbg !1351
  %97 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1352
  %98 = getelementptr inbounds %struct.field_state, %struct.field_state* %97, i32 0, i32 3, !dbg !1354
  %99 = load i32, i32* %98, align 8, !dbg !1354
  %100 = icmp slt i32 %99, 2, !dbg !1355
  br i1 %100, label %101, label %110, !dbg !1356

; <label>:101:                                    ; preds = %96
  %102 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1357
  %103 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0)) #9, !dbg !1358
  %104 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1359
  %105 = getelementptr inbounds %struct.field_state, %struct.field_state* %104, i32 0, i32 3, !dbg !1360
  %106 = load i32, i32* %105, align 8, !dbg !1360
  %107 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1361
  %108 = getelementptr inbounds %struct.field_state, %struct.field_state* %107, i32 0, i32 0, !dbg !1362
  %109 = load i8*, i8** %108, align 8, !dbg !1362
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %102, i8* %103, i32 %106, i8* %109) #10, !dbg !1363
  unreachable, !dbg !1363

; <label>:110:                                    ; preds = %96
  %111 = load %struct.pkg_parse_object*, %struct.pkg_parse_object** %7, align 8, !dbg !1364
  %112 = getelementptr inbounds %struct.pkg_parse_object, %struct.pkg_parse_object* %111, i32 0, i32 1, !dbg !1365
  %113 = load %struct.pkgbin*, %struct.pkgbin** %112, align 8, !dbg !1365
  %114 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %113, i32 0, i32 13, !dbg !1366
  store %struct.arbitraryfield** %114, %struct.arbitraryfield*** %11, align 8, !dbg !1367
  br label %115, !dbg !1368

; <label>:115:                                    ; preds = %151, %110
  %116 = load %struct.arbitraryfield**, %struct.arbitraryfield*** %11, align 8, !dbg !1369
  %117 = load %struct.arbitraryfield*, %struct.arbitraryfield** %116, align 8, !dbg !1371
  store %struct.arbitraryfield* %117, %struct.arbitraryfield** %10, align 8, !dbg !1372
  %118 = icmp ne %struct.arbitraryfield* %117, null, !dbg !1373
  br i1 %118, label %119, label %154, !dbg !1374

; <label>:119:                                    ; preds = %115
  %120 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1375
  %121 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %120, i32 0, i32 1, !dbg !1378
  %122 = load i8*, i8** %121, align 8, !dbg !1378
  %123 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1379
  %124 = getelementptr inbounds %struct.field_state, %struct.field_state* %123, i32 0, i32 0, !dbg !1380
  %125 = load i8*, i8** %124, align 8, !dbg !1380
  %126 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1381
  %127 = getelementptr inbounds %struct.field_state, %struct.field_state* %126, i32 0, i32 3, !dbg !1382
  %128 = load i32, i32* %127, align 8, !dbg !1382
  %129 = sext i32 %128 to i64, !dbg !1381
  %130 = call i32 @strncasecmp(i8* %122, i8* %125, i64 %129) #8, !dbg !1383
  %131 = icmp eq i32 %130, 0, !dbg !1384
  br i1 %131, label %132, label %151, !dbg !1385

; <label>:132:                                    ; preds = %119
  %133 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1386
  %134 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %133, i32 0, i32 1, !dbg !1387
  %135 = load i8*, i8** %134, align 8, !dbg !1387
  %136 = call i64 @strlen(i8* %135) #8, !dbg !1388
  %137 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1389
  %138 = getelementptr inbounds %struct.field_state, %struct.field_state* %137, i32 0, i32 3, !dbg !1390
  %139 = load i32, i32* %138, align 8, !dbg !1390
  %140 = sext i32 %139 to i64, !dbg !1391
  %141 = icmp eq i64 %136, %140, !dbg !1392
  br i1 %141, label %142, label %151, !dbg !1393

; <label>:142:                                    ; preds = %132
  %143 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1395
  %144 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i32 0, i32 0)) #9, !dbg !1396
  %145 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1397
  %146 = getelementptr inbounds %struct.field_state, %struct.field_state* %145, i32 0, i32 3, !dbg !1398
  %147 = load i32, i32* %146, align 8, !dbg !1398
  %148 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1399
  %149 = getelementptr inbounds %struct.field_state, %struct.field_state* %148, i32 0, i32 0, !dbg !1400
  %150 = load i8*, i8** %149, align 8, !dbg !1400
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %143, i8* %144, i32 %147, i8* %150) #10, !dbg !1401
  unreachable, !dbg !1401

; <label>:151:                                    ; preds = %132, %119
  %152 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1402
  %153 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %152, i32 0, i32 0, !dbg !1403
  store %struct.arbitraryfield** %153, %struct.arbitraryfield*** %11, align 8, !dbg !1404
  br label %115, !dbg !1405, !llvm.loop !1407

; <label>:154:                                    ; preds = %115
  %155 = call i8* @nfmalloc(i64 24), !dbg !1408
  %156 = bitcast i8* %155 to %struct.arbitraryfield*, !dbg !1408
  store %struct.arbitraryfield* %156, %struct.arbitraryfield** %10, align 8, !dbg !1409
  %157 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1410
  %158 = getelementptr inbounds %struct.field_state, %struct.field_state* %157, i32 0, i32 0, !dbg !1411
  %159 = load i8*, i8** %158, align 8, !dbg !1411
  %160 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1412
  %161 = getelementptr inbounds %struct.field_state, %struct.field_state* %160, i32 0, i32 3, !dbg !1413
  %162 = load i32, i32* %161, align 8, !dbg !1413
  %163 = sext i32 %162 to i64, !dbg !1412
  %164 = call i8* @nfstrnsave(i8* %159, i64 %163), !dbg !1414
  %165 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1415
  %166 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %165, i32 0, i32 1, !dbg !1416
  store i8* %164, i8** %166, align 8, !dbg !1417
  %167 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1418
  %168 = getelementptr inbounds %struct.field_state, %struct.field_state* %167, i32 0, i32 1, !dbg !1419
  %169 = load i8*, i8** %168, align 8, !dbg !1419
  %170 = load %struct.field_state*, %struct.field_state** %5, align 8, !dbg !1420
  %171 = getelementptr inbounds %struct.field_state, %struct.field_state* %170, i32 0, i32 4, !dbg !1421
  %172 = load i32, i32* %171, align 4, !dbg !1421
  %173 = sext i32 %172 to i64, !dbg !1420
  %174 = call i8* @nfstrnsave(i8* %169, i64 %173), !dbg !1422
  %175 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1423
  %176 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %175, i32 0, i32 2, !dbg !1424
  store i8* %174, i8** %176, align 8, !dbg !1425
  %177 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1426
  %178 = getelementptr inbounds %struct.arbitraryfield, %struct.arbitraryfield* %177, i32 0, i32 0, !dbg !1427
  store %struct.arbitraryfield* null, %struct.arbitraryfield** %178, align 8, !dbg !1428
  %179 = load %struct.arbitraryfield*, %struct.arbitraryfield** %10, align 8, !dbg !1429
  %180 = load %struct.arbitraryfield**, %struct.arbitraryfield*** %11, align 8, !dbg !1430
  store %struct.arbitraryfield* %179, %struct.arbitraryfield** %180, align 8, !dbg !1431
  br label %181

; <label>:181:                                    ; preds = %154, %67
  ret void, !dbg !1432
}

; Function Attrs: nounwind uwtable
define internal void @pkg_parse_verify(%struct.parsedb_state*, %struct.pkginfo*, %struct.pkgbin*) #1 !dbg !1433 {
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.dependency*, align 8
  %8 = alloca %struct.deppossi*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !1436, metadata !342), !dbg !1437
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !1438, metadata !342), !dbg !1439
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !1440, metadata !342), !dbg !1441
  call void @llvm.dbg.declare(metadata %struct.dependency** %7, metadata !1442, metadata !342), !dbg !1443
  call void @llvm.dbg.declare(metadata %struct.deppossi** %8, metadata !1444, metadata !342), !dbg !1445
  %9 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1446
  %10 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1447
  %11 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %10, i32 0, i32 0, !dbg !1448
  %12 = load %struct.pkgset*, %struct.pkgset** %11, align 8, !dbg !1448
  %13 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %12, i32 0, i32 1, !dbg !1449
  %14 = load i8*, i8** %13, align 8, !dbg !1449
  call void @parse_must_have_field(%struct.parsedb_state* %9, i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)), !dbg !1450
  %15 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1451
  %16 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %15, i32 0, i32 1, !dbg !1453
  %17 = load i32, i32* %16, align 4, !dbg !1453
  %18 = and i32 %17, 2, !dbg !1454
  %19 = icmp ne i32 %18, 0, !dbg !1454
  br i1 %19, label %30, label %20, !dbg !1455

; <label>:20:                                     ; preds = %3
  %21 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1456
  %22 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %21, i32 0, i32 4, !dbg !1457
  %23 = load i32, i32* %22, align 8, !dbg !1457
  %24 = icmp ne i32 %23, 0, !dbg !1458
  br i1 %24, label %25, label %42, !dbg !1459

; <label>:25:                                     ; preds = %20
  %26 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1460
  %27 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %26, i32 0, i32 4, !dbg !1461
  %28 = load i32, i32* %27, align 8, !dbg !1461
  %29 = icmp ne i32 %28, 2, !dbg !1462
  br i1 %29, label %30, label %42, !dbg !1463

; <label>:30:                                     ; preds = %25, %3
  %31 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1465
  %32 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1467
  %33 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %32, i32 0, i32 5, !dbg !1468
  call void @parse_ensure_have_field(%struct.parsedb_state* %31, i8** %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)), !dbg !1469
  %34 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1470
  %35 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1471
  %36 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %35, i32 0, i32 6, !dbg !1472
  call void @parse_ensure_have_field(%struct.parsedb_state* %34, i8** %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1473
  %37 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1474
  %38 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1475
  %39 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %38, i32 0, i32 11, !dbg !1476
  %40 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %39, i32 0, i32 1, !dbg !1477
  %41 = load i8*, i8** %40, align 8, !dbg !1477
  call void @parse_must_have_field(%struct.parsedb_state* %37, i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1478
  br label %42, !dbg !1479

; <label>:42:                                     ; preds = %30, %25, %20
  %43 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1480
  %44 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %43, i32 0, i32 1, !dbg !1482
  %45 = load i32, i32* %44, align 4, !dbg !1482
  %46 = and i32 %45, 2, !dbg !1483
  %47 = icmp ne i32 %46, 0, !dbg !1483
  br i1 %47, label %53, label %48, !dbg !1484

; <label>:48:                                     ; preds = %42
  %49 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1485
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 4, !dbg !1486
  %51 = load i32, i32* %50, align 8, !dbg !1486
  %52 = icmp ugt i32 %51, 2, !dbg !1487
  br i1 %52, label %53, label %75, !dbg !1488

; <label>:53:                                     ; preds = %48, %42
  %54 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1489
  %55 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %54, i32 0, i32 3, !dbg !1492
  %56 = load %struct.dpkg_arch*, %struct.dpkg_arch** %55, align 8, !dbg !1492
  %57 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %56, i32 0, i32 2, !dbg !1493
  %58 = load i32, i32* %57, align 8, !dbg !1493
  %59 = icmp eq i32 %58, 0, !dbg !1494
  br i1 %59, label %60, label %63, !dbg !1495

; <label>:60:                                     ; preds = %53
  %61 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1496
  %62 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0)) #9, !dbg !1497
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %61, i8* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1498
  br label %74, !dbg !1500

; <label>:63:                                     ; preds = %53
  %64 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1501
  %65 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %64, i32 0, i32 3, !dbg !1503
  %66 = load %struct.dpkg_arch*, %struct.dpkg_arch** %65, align 8, !dbg !1503
  %67 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %66, i32 0, i32 2, !dbg !1504
  %68 = load i32, i32* %67, align 8, !dbg !1504
  %69 = icmp eq i32 %68, 1, !dbg !1505
  br i1 %69, label %70, label %73, !dbg !1506

; <label>:70:                                     ; preds = %63
  %71 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1507
  %72 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0)) #9, !dbg !1508
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %71, i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1509
  br label %73, !dbg !1511

; <label>:73:                                     ; preds = %70, %63
  br label %74

; <label>:74:                                     ; preds = %73, %60
  br label %75, !dbg !1512

; <label>:75:                                     ; preds = %74, %48
  %76 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1513
  %77 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %76, i32 0, i32 3, !dbg !1515
  %78 = load %struct.dpkg_arch*, %struct.dpkg_arch** %77, align 8, !dbg !1515
  %79 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %78, i32 0, i32 2, !dbg !1516
  %80 = load i32, i32* %79, align 8, !dbg !1516
  %81 = icmp eq i32 %80, 0, !dbg !1517
  br i1 %81, label %82, label %86, !dbg !1518

; <label>:82:                                     ; preds = %75
  %83 = call %struct.dpkg_arch* @dpkg_arch_get(i32 1), !dbg !1519
  %84 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1520
  %85 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %84, i32 0, i32 3, !dbg !1521
  store %struct.dpkg_arch* %83, %struct.dpkg_arch** %85, align 8, !dbg !1522
  br label %86, !dbg !1520

; <label>:86:                                     ; preds = %82, %75
  %87 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1523
  %88 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %87, i32 0, i32 3, !dbg !1525
  %89 = load %struct.dpkg_arch*, %struct.dpkg_arch** %88, align 8, !dbg !1525
  %90 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %89, i32 0, i32 2, !dbg !1526
  %91 = load i32, i32* %90, align 8, !dbg !1526
  %92 = icmp eq i32 %91, 1, !dbg !1527
  br i1 %92, label %93, label %101, !dbg !1528

; <label>:93:                                     ; preds = %86
  %94 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1529
  %95 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %94, i32 0, i32 2, !dbg !1530
  %96 = load i32, i32* %95, align 4, !dbg !1530
  %97 = icmp eq i32 %96, 1, !dbg !1531
  br i1 %97, label %98, label %101, !dbg !1532

; <label>:98:                                     ; preds = %93
  %99 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1533
  %100 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i32 0, i32 0)) #9, !dbg !1534
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %99, i8* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0)) #10, !dbg !1535
  unreachable, !dbg !1537

; <label>:101:                                    ; preds = %93, %86
  %102 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1538
  %103 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %102, i32 0, i32 3, !dbg !1540
  %104 = load %struct.dpkg_arch*, %struct.dpkg_arch** %103, align 8, !dbg !1540
  %105 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %104, i32 0, i32 2, !dbg !1541
  %106 = load i32, i32* %105, align 8, !dbg !1541
  %107 = icmp eq i32 %106, 4, !dbg !1542
  br i1 %107, label %108, label %116, !dbg !1543

; <label>:108:                                    ; preds = %101
  %109 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1544
  %110 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %109, i32 0, i32 2, !dbg !1545
  %111 = load i32, i32* %110, align 4, !dbg !1545
  %112 = icmp eq i32 %111, 1, !dbg !1546
  br i1 %112, label %113, label %116, !dbg !1547

; <label>:113:                                    ; preds = %108
  %114 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1548
  %115 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i32 0, i32 0)) #9, !dbg !1549
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %114, i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0)) #10, !dbg !1550
  unreachable, !dbg !1552

; <label>:116:                                    ; preds = %108, %101
  %117 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1553
  %118 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1554
  %119 = call i8* @pkgbin_name_archqual(%struct.pkginfo* %117, %struct.pkgbin* %118), !dbg !1555
  %120 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1556
  %121 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %120, i32 0, i32 4, !dbg !1557
  store i8* %119, i8** %121, align 8, !dbg !1558
  %122 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1559
  %123 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %122, i32 0, i32 0, !dbg !1561
  %124 = load %struct.dependency*, %struct.dependency** %123, align 8, !dbg !1561
  store %struct.dependency* %124, %struct.dependency** %7, align 8, !dbg !1562
  br label %125, !dbg !1563

; <label>:125:                                    ; preds = %152, %116
  %126 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1564
  %127 = icmp ne %struct.dependency* %126, null, !dbg !1567
  br i1 %127, label %128, label %156, !dbg !1567

; <label>:128:                                    ; preds = %125
  %129 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1568
  %130 = getelementptr inbounds %struct.dependency, %struct.dependency* %129, i32 0, i32 2, !dbg !1570
  %131 = load %struct.deppossi*, %struct.deppossi** %130, align 8, !dbg !1570
  store %struct.deppossi* %131, %struct.deppossi** %8, align 8, !dbg !1571
  br label %132, !dbg !1572

; <label>:132:                                    ; preds = %147, %128
  %133 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !1573
  %134 = icmp ne %struct.deppossi* %133, null, !dbg !1576
  br i1 %134, label %135, label %151, !dbg !1576

; <label>:135:                                    ; preds = %132
  %136 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !1577
  %137 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %136, i32 0, i32 5, !dbg !1579
  %138 = load %struct.dpkg_arch*, %struct.dpkg_arch** %137, align 8, !dbg !1579
  %139 = icmp ne %struct.dpkg_arch* %138, null, !dbg !1577
  br i1 %139, label %146, label %140, !dbg !1580

; <label>:140:                                    ; preds = %135
  %141 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1581
  %142 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %141, i32 0, i32 3, !dbg !1582
  %143 = load %struct.dpkg_arch*, %struct.dpkg_arch** %142, align 8, !dbg !1582
  %144 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !1583
  %145 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %144, i32 0, i32 5, !dbg !1584
  store %struct.dpkg_arch* %143, %struct.dpkg_arch** %145, align 8, !dbg !1585
  br label %146, !dbg !1583

; <label>:146:                                    ; preds = %140, %135
  br label %147, !dbg !1586

; <label>:147:                                    ; preds = %146
  %148 = load %struct.deppossi*, %struct.deppossi** %8, align 8, !dbg !1588
  %149 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %148, i32 0, i32 2, !dbg !1590
  %150 = load %struct.deppossi*, %struct.deppossi** %149, align 8, !dbg !1590
  store %struct.deppossi* %150, %struct.deppossi** %8, align 8, !dbg !1591
  br label %132, !dbg !1592, !llvm.loop !1593

; <label>:151:                                    ; preds = %132
  br label %152, !dbg !1595

; <label>:152:                                    ; preds = %151
  %153 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !1597
  %154 = getelementptr inbounds %struct.dependency, %struct.dependency* %153, i32 0, i32 1, !dbg !1599
  %155 = load %struct.dependency*, %struct.dependency** %154, align 8, !dbg !1599
  store %struct.dependency* %155, %struct.dependency** %7, align 8, !dbg !1600
  br label %125, !dbg !1601, !llvm.loop !1602

; <label>:156:                                    ; preds = %125
  %157 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1604
  %158 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %157, i32 0, i32 1, !dbg !1606
  %159 = load i32, i32* %158, align 4, !dbg !1606
  %160 = and i32 %159, 2, !dbg !1607
  %161 = icmp ne i32 %160, 0, !dbg !1607
  br i1 %161, label %206, label %162, !dbg !1608

; <label>:162:                                    ; preds = %156
  %163 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1609
  %164 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %163, i32 0, i32 8, !dbg !1612
  %165 = getelementptr inbounds %struct.dpkg_version, %struct.dpkg_version* %164, i32 0, i32 1, !dbg !1613
  %166 = load i8*, i8** %165, align 8, !dbg !1613
  %167 = icmp ne i8* %166, null, !dbg !1609
  br i1 %167, label %168, label %187, !dbg !1614

; <label>:168:                                    ; preds = %162
  %169 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1615
  %170 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %169, i32 0, i32 4, !dbg !1618
  %171 = load i32, i32* %170, align 8, !dbg !1618
  %172 = icmp eq i32 %171, 7, !dbg !1619
  br i1 %172, label %183, label %173, !dbg !1620

; <label>:173:                                    ; preds = %168
  %174 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1621
  %175 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %174, i32 0, i32 4, !dbg !1622
  %176 = load i32, i32* %175, align 8, !dbg !1622
  %177 = icmp eq i32 %176, 0, !dbg !1623
  br i1 %177, label %183, label %178, !dbg !1624

; <label>:178:                                    ; preds = %173
  %179 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1625
  %180 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %179, i32 0, i32 4, !dbg !1626
  %181 = load i32, i32* %180, align 8, !dbg !1626
  %182 = icmp eq i32 %181, 6, !dbg !1627
  br i1 %182, label %183, label %186, !dbg !1628

; <label>:183:                                    ; preds = %178, %173, %168
  %184 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1630
  %185 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i32 0, i32 0)) #9, !dbg !1631
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %184, i8* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !1632
  unreachable, !dbg !1632

; <label>:186:                                    ; preds = %178
  br label %205, !dbg !1633

; <label>:187:                                    ; preds = %162
  %188 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1634
  %189 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %188, i32 0, i32 4, !dbg !1637
  %190 = load i32, i32* %189, align 8, !dbg !1637
  %191 = icmp eq i32 %190, 7, !dbg !1638
  br i1 %191, label %197, label %192, !dbg !1639

; <label>:192:                                    ; preds = %187
  %193 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1640
  %194 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %193, i32 0, i32 4, !dbg !1641
  %195 = load i32, i32* %194, align 8, !dbg !1641
  %196 = icmp eq i32 %195, 6, !dbg !1642
  br i1 %196, label %197, label %204, !dbg !1643

; <label>:197:                                    ; preds = %192, %187
  %198 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1645
  %199 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %198, i32 0, i32 8, !dbg !1646
  %200 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1647
  %201 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %200, i32 0, i32 11, !dbg !1648
  %202 = bitcast %struct.dpkg_version* %199 to i8*, !dbg !1648
  %203 = bitcast %struct.dpkg_version* %201 to i8*, !dbg !1648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 24, i32 8, i1 false), !dbg !1648
  br label %204, !dbg !1645

; <label>:204:                                    ; preds = %197, %192
  br label %205

; <label>:205:                                    ; preds = %204, %186
  br label %206, !dbg !1649

; <label>:206:                                    ; preds = %205, %156
  %207 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1650
  %208 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %207, i32 0, i32 13, !dbg !1652
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %208, i32 0, i32 0, !dbg !1653
  %210 = load %struct.trigaw*, %struct.trigaw** %209, align 8, !dbg !1653
  %211 = icmp ne %struct.trigaw* %210, null, !dbg !1650
  br i1 %211, label %212, label %227, !dbg !1654

; <label>:212:                                    ; preds = %206
  %213 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1655
  %214 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %213, i32 0, i32 4, !dbg !1656
  %215 = load i32, i32* %214, align 8, !dbg !1656
  %216 = icmp ule i32 %215, 1, !dbg !1657
  br i1 %216, label %222, label %217, !dbg !1658

; <label>:217:                                    ; preds = %212
  %218 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1659
  %219 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %218, i32 0, i32 4, !dbg !1660
  %220 = load i32, i32* %219, align 8, !dbg !1660
  %221 = icmp uge i32 %220, 6, !dbg !1661
  br i1 %221, label %222, label %227, !dbg !1662

; <label>:222:                                    ; preds = %217, %212
  %223 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1663
  %224 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i32 0, i32 0)) #9, !dbg !1664
  %225 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1665
  %226 = call i8* @pkg_status_name(%struct.pkginfo* %225), !dbg !1666
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %223, i8* %224, i8* %226) #10, !dbg !1667
  unreachable, !dbg !1667

; <label>:227:                                    ; preds = %217, %206
  %228 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1668
  %229 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %228, i32 0, i32 4, !dbg !1670
  %230 = load i32, i32* %229, align 8, !dbg !1670
  %231 = icmp eq i32 %230, 5, !dbg !1671
  br i1 %231, label %232, label %243, !dbg !1672

; <label>:232:                                    ; preds = %227
  %233 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1673
  %234 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %233, i32 0, i32 13, !dbg !1675
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %234, i32 0, i32 0, !dbg !1676
  %236 = load %struct.trigaw*, %struct.trigaw** %235, align 8, !dbg !1676
  %237 = icmp ne %struct.trigaw* %236, null, !dbg !1673
  br i1 %237, label %243, label %238, !dbg !1677

; <label>:238:                                    ; preds = %232
  %239 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1678
  %240 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.67, i32 0, i32 0)) #9, !dbg !1679
  %241 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1680
  %242 = call i8* @pkg_status_name(%struct.pkginfo* %241), !dbg !1681
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %239, i8* %240, i8* %242) #10, !dbg !1682
  unreachable, !dbg !1682

; <label>:243:                                    ; preds = %232, %227
  br label %244

; <label>:244:                                    ; preds = %243
  %245 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1683
  %246 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %245, i32 0, i32 15, !dbg !1685
  %247 = load %struct.trigpend*, %struct.trigpend** %246, align 8, !dbg !1685
  %248 = icmp ne %struct.trigpend* %247, null, !dbg !1683
  br i1 %248, label %249, label %264, !dbg !1686

; <label>:249:                                    ; preds = %244
  %250 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1687
  %251 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %250, i32 0, i32 4, !dbg !1688
  %252 = load i32, i32* %251, align 8, !dbg !1688
  %253 = icmp eq i32 %252, 6, !dbg !1689
  br i1 %253, label %264, label %254, !dbg !1690

; <label>:254:                                    ; preds = %249
  %255 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1691
  %256 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %255, i32 0, i32 4, !dbg !1692
  %257 = load i32, i32* %256, align 8, !dbg !1692
  %258 = icmp eq i32 %257, 5, !dbg !1693
  br i1 %258, label %264, label %259, !dbg !1694

; <label>:259:                                    ; preds = %254
  %260 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1695
  %261 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0)) #9, !dbg !1696
  %262 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1697
  %263 = call i8* @pkg_status_name(%struct.pkginfo* %262), !dbg !1698
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %260, i8* %261, i8* %263) #10, !dbg !1699
  unreachable, !dbg !1699

; <label>:264:                                    ; preds = %254, %249, %244
  %265 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1700
  %266 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %265, i32 0, i32 4, !dbg !1702
  %267 = load i32, i32* %266, align 8, !dbg !1702
  %268 = icmp eq i32 %267, 6, !dbg !1703
  br i1 %268, label %269, label %279, !dbg !1704

; <label>:269:                                    ; preds = %264
  %270 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1705
  %271 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %270, i32 0, i32 15, !dbg !1707
  %272 = load %struct.trigpend*, %struct.trigpend** %271, align 8, !dbg !1707
  %273 = icmp ne %struct.trigpend* %272, null, !dbg !1705
  br i1 %273, label %279, label %274, !dbg !1708

; <label>:274:                                    ; preds = %269
  %275 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1709
  %276 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i32 0, i32 0)) #9, !dbg !1710
  %277 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1711
  %278 = call i8* @pkg_status_name(%struct.pkginfo* %277), !dbg !1712
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %275, i8* %276, i8* %278) #10, !dbg !1713
  unreachable, !dbg !1713

; <label>:279:                                    ; preds = %269, %264
  br label %280

; <label>:280:                                    ; preds = %279
  %281 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1714
  %282 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %281, i32 0, i32 1, !dbg !1716
  %283 = load i32, i32* %282, align 4, !dbg !1716
  %284 = and i32 %283, 2, !dbg !1717
  %285 = icmp ne i32 %284, 0, !dbg !1717
  br i1 %285, label %303, label %286, !dbg !1718

; <label>:286:                                    ; preds = %280
  %287 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1719
  %288 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %287, i32 0, i32 4, !dbg !1720
  %289 = load i32, i32* %288, align 8, !dbg !1720
  %290 = icmp eq i32 %289, 0, !dbg !1721
  br i1 %290, label %291, label %303, !dbg !1722

; <label>:291:                                    ; preds = %286
  %292 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1723
  %293 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %292, i32 0, i32 12, !dbg !1724
  %294 = load %struct.conffile*, %struct.conffile** %293, align 8, !dbg !1724
  %295 = icmp ne %struct.conffile* %294, null, !dbg !1723
  br i1 %295, label %296, label %303, !dbg !1725

; <label>:296:                                    ; preds = %291
  %297 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1726
  %298 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.70, i32 0, i32 0)) #9, !dbg !1728
  %299 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1729
  %300 = call i8* @pkg_status_name(%struct.pkginfo* %299), !dbg !1730
  call void (%struct.parsedb_state*, i8*, ...) @parse_warn(%struct.parsedb_state* %297, i8* %298, i8* %300), !dbg !1731
  %301 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1732
  %302 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %301, i32 0, i32 12, !dbg !1733
  store %struct.conffile* null, %struct.conffile** %302, align 8, !dbg !1734
  br label %303, !dbg !1735

; <label>:303:                                    ; preds = %296, %291, %286, %280
  %304 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1736
  %305 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %304, i32 0, i32 1, !dbg !1738
  %306 = load i32, i32* %305, align 4, !dbg !1738
  %307 = and i32 %306, 2, !dbg !1739
  %308 = icmp ne i32 %307, 0, !dbg !1739
  br i1 %308, label %336, label %309, !dbg !1740

; <label>:309:                                    ; preds = %303
  %310 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1741
  %311 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %310, i32 0, i32 4, !dbg !1742
  %312 = load i32, i32* %311, align 8, !dbg !1742
  %313 = icmp eq i32 %312, 0, !dbg !1743
  br i1 %313, label %314, label %336, !dbg !1744

; <label>:314:                                    ; preds = %309
  %315 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1745
  %316 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %315, i32 0, i32 3, !dbg !1746
  %317 = load i32, i32* %316, align 4, !dbg !1746
  %318 = icmp eq i32 %317, 0, !dbg !1747
  br i1 %318, label %319, label %336, !dbg !1748

; <label>:319:                                    ; preds = %314
  %320 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1749
  %321 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %320, i32 0, i32 2, !dbg !1750
  %322 = load i32, i32* %321, align 8, !dbg !1750
  %323 = icmp eq i32 %322, 4, !dbg !1751
  br i1 %323, label %334, label %324, !dbg !1752

; <label>:324:                                    ; preds = %319
  %325 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1753
  %326 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %325, i32 0, i32 2, !dbg !1754
  %327 = load i32, i32* %326, align 8, !dbg !1754
  %328 = icmp eq i32 %327, 3, !dbg !1755
  br i1 %328, label %334, label %329, !dbg !1756

; <label>:329:                                    ; preds = %324
  %330 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1757
  %331 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %330, i32 0, i32 2, !dbg !1758
  %332 = load i32, i32* %331, align 8, !dbg !1758
  %333 = icmp eq i32 %332, 2, !dbg !1759
  br i1 %333, label %334, label %336, !dbg !1760

; <label>:334:                                    ; preds = %329, %324, %319
  %335 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1761
  call void @pkg_set_want(%struct.pkginfo* %335, i32 0), !dbg !1763
  br label %336, !dbg !1764

; <label>:336:                                    ; preds = %334, %329, %314, %309, %303
  %337 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1765
  %338 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %337, i32 0, i32 0, !dbg !1767
  %339 = load i32, i32* %338, align 8, !dbg !1767
  %340 = icmp eq i32 %339, 1, !dbg !1768
  br i1 %340, label %341, label %365, !dbg !1769

; <label>:341:                                    ; preds = %336
  %342 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1770
  %343 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %342, i32 0, i32 4, !dbg !1771
  %344 = load i32, i32* %343, align 8, !dbg !1771
  %345 = icmp eq i32 %344, 0, !dbg !1772
  br i1 %345, label %346, label %365, !dbg !1773

; <label>:346:                                    ; preds = %341
  %347 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1774
  %348 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %347, i32 0, i32 3, !dbg !1775
  %349 = load i32, i32* %348, align 4, !dbg !1775
  %350 = icmp eq i32 %349, 0, !dbg !1776
  br i1 %350, label %351, label %365, !dbg !1777

; <label>:351:                                    ; preds = %346
  %352 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1778
  %353 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %352, i32 0, i32 2, !dbg !1779
  %354 = load i32, i32* %353, align 8, !dbg !1779
  %355 = icmp eq i32 %354, 1, !dbg !1780
  br i1 %355, label %356, label %365, !dbg !1781

; <label>:356:                                    ; preds = %351
  %357 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1782
  %358 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %357, i32 0, i32 3, !dbg !1783
  %359 = load %struct.dpkg_arch*, %struct.dpkg_arch** %358, align 8, !dbg !1783
  %360 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %359, i32 0, i32 2, !dbg !1784
  %361 = load i32, i32* %360, align 8, !dbg !1784
  %362 = icmp eq i32 %361, 1, !dbg !1785
  br i1 %362, label %363, label %365, !dbg !1786

; <label>:363:                                    ; preds = %356
  %364 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1787
  call void @pkg_set_want(%struct.pkginfo* %364, i32 0), !dbg !1788
  br label %365, !dbg !1788

; <label>:365:                                    ; preds = %363, %356, %351, %346, %341, %336
  %366 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !1789
  %367 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %366, i32 0, i32 1, !dbg !1791
  %368 = load i32, i32* %367, align 4, !dbg !1791
  %369 = and i32 %368, 2, !dbg !1792
  %370 = icmp ne i32 %369, 0, !dbg !1792
  br i1 %370, label %388, label %371, !dbg !1793

; <label>:371:                                    ; preds = %365
  %372 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1794
  %373 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %372, i32 0, i32 4, !dbg !1795
  %374 = load i32, i32* %373, align 8, !dbg !1795
  %375 = icmp eq i32 %374, 0, !dbg !1796
  br i1 %375, label %376, label %388, !dbg !1797

; <label>:376:                                    ; preds = %371
  %377 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1798
  %378 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %377, i32 0, i32 3, !dbg !1799
  %379 = load i32, i32* %378, align 4, !dbg !1799
  %380 = icmp eq i32 %379, 0, !dbg !1800
  br i1 %380, label %381, label %388, !dbg !1801

; <label>:381:                                    ; preds = %376
  %382 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !1802
  %383 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %382, i32 0, i32 2, !dbg !1803
  %384 = load i32, i32* %383, align 8, !dbg !1803
  %385 = icmp eq i32 %384, 0, !dbg !1804
  br i1 %385, label %386, label %388, !dbg !1805

; <label>:386:                                    ; preds = %381
  %387 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !1806
  call void @pkgbin_blank(%struct.pkgbin* %387), !dbg !1808
  br label %388, !dbg !1809

; <label>:388:                                    ; preds = %386, %381, %376, %371, %365
  ret void, !dbg !1810
}

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @parse_find_pkg_slot(%struct.parsedb_state*, %struct.pkginfo*, %struct.pkgbin*) #1 !dbg !1811 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.parsedb_state*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.pkgbin*, align 8
  %8 = alloca %struct.pkgset*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca i8, align 1
  store %struct.parsedb_state* %0, %struct.parsedb_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %5, metadata !1814, metadata !342), !dbg !1815
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !1816, metadata !342), !dbg !1817
  store %struct.pkgbin* %2, %struct.pkgbin** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %7, metadata !1818, metadata !342), !dbg !1819
  call void @llvm.dbg.declare(metadata %struct.pkgset** %8, metadata !1820, metadata !342), !dbg !1821
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1822, metadata !342), !dbg !1823
  %11 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1824
  %12 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1825
  %13 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1826
  %14 = call %struct.pkgset* @parse_find_set_slot(%struct.parsedb_state* %11, %struct.pkginfo* %12, %struct.pkgbin* %13), !dbg !1827
  store %struct.pkgset* %14, %struct.pkgset** %8, align 8, !dbg !1828
  %15 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1829
  %16 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %15, i32 0, i32 0, !dbg !1831
  %17 = load i32, i32* %16, align 8, !dbg !1831
  %18 = icmp eq i32 %17, 3, !dbg !1832
  br i1 %18, label %19, label %37, !dbg !1833

; <label>:19:                                     ; preds = %3
  %20 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1834
  %21 = call i32 @pkgset_installed_instances(%struct.pkgset* %20), !dbg !1837
  %22 = icmp eq i32 %21, 1, !dbg !1838
  br i1 %22, label %23, label %31, !dbg !1839

; <label>:23:                                     ; preds = %19
  %24 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1840
  %25 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %24, i32 0, i32 2, !dbg !1841
  %26 = load i32, i32* %25, align 4, !dbg !1841
  %27 = icmp ne i32 %26, 1, !dbg !1842
  br i1 %27, label %28, label %31, !dbg !1843

; <label>:28:                                     ; preds = %23
  %29 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1845
  %30 = call %struct.pkginfo* @pkg_hash_get_singleton(%struct.pkgset* %29), !dbg !1846
  store %struct.pkginfo* %30, %struct.pkginfo** %4, align 8, !dbg !1847
  br label %120, !dbg !1847

; <label>:31:                                     ; preds = %23, %19
  %32 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1848
  %33 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1849
  %34 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %33, i32 0, i32 3, !dbg !1850
  %35 = load %struct.dpkg_arch*, %struct.dpkg_arch** %34, align 8, !dbg !1850
  %36 = call %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset* %32, %struct.dpkg_arch* %35), !dbg !1851
  store %struct.pkginfo* %36, %struct.pkginfo** %4, align 8, !dbg !1852
  br label %120, !dbg !1852

; <label>:37:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1853, metadata !342), !dbg !1855
  store i8 0, i8* %10, align 1, !dbg !1855
  %38 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1856
  %39 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %38, i32 0, i32 0, !dbg !1858
  %40 = load i32, i32* %39, align 8, !dbg !1858
  %41 = icmp eq i32 %40, 1, !dbg !1859
  br i1 %41, label %42, label %48, !dbg !1860

; <label>:42:                                     ; preds = %37
  %43 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1861
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 4, !dbg !1863
  %45 = load i32, i32* %44, align 8, !dbg !1863
  %46 = icmp eq i32 %45, 0, !dbg !1864
  br i1 %46, label %47, label %48, !dbg !1865

; <label>:47:                                     ; preds = %42
  store i8 1, i8* %10, align 1, !dbg !1866
  br label %48, !dbg !1867

; <label>:48:                                     ; preds = %47, %42, %37
  %49 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1868
  %50 = call i32 @pkgset_installed_instances(%struct.pkgset* %49), !dbg !1870
  %51 = icmp sgt i32 %50, 1, !dbg !1871
  br i1 %51, label %52, label %78, !dbg !1872

; <label>:52:                                     ; preds = %48
  %53 = load i8, i8* %10, align 1, !dbg !1873
  %54 = trunc i8 %53 to i1, !dbg !1873
  br i1 %54, label %78, label %55, !dbg !1874

; <label>:55:                                     ; preds = %52
  %56 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1875
  %57 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %56, i32 0, i32 2, !dbg !1877
  %58 = load i32, i32* %57, align 4, !dbg !1877
  %59 = icmp ne i32 %58, 1, !dbg !1878
  br i1 %59, label %60, label %78, !dbg !1879

; <label>:60:                                     ; preds = %55
  %61 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.71, i32 0, i32 0)) #9, !dbg !1881
  %62 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !1882
  %63 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1883
  %64 = call i8* @pkgbin_name(%struct.pkginfo* %62, %struct.pkgbin* %63, i32 3), !dbg !1884
  %65 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1885
  %66 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %65, i32 0, i32 11, !dbg !1886
  %67 = call i8* @versiondescribe(%struct.dpkg_version* %66, i32 1), !dbg !1887
  %68 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1888
  %69 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %68, i32 0, i32 2, !dbg !1889
  %70 = load i32, i32* %69, align 4, !dbg !1889
  %71 = zext i32 %70 to i64, !dbg !1890
  %72 = getelementptr inbounds [0 x %struct.namevalue], [0 x %struct.namevalue]* @multiarchinfos, i64 0, i64 %71, !dbg !1890
  %73 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %72, i32 0, i32 0, !dbg !1891
  %74 = load i8*, i8** %73, align 8, !dbg !1891
  %75 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1892
  %76 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %75, i32 0, i32 1, !dbg !1893
  %77 = load i8*, i8** %76, align 8, !dbg !1893
  call void (i8*, ...) @ohshit(i8* %61, i8* %64, i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %74, i8* %77) #10, !dbg !1894
  unreachable, !dbg !1895

; <label>:78:                                     ; preds = %55, %52, %48
  %79 = load %struct.parsedb_state*, %struct.parsedb_state** %5, align 8, !dbg !1896
  %80 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %79, i32 0, i32 0, !dbg !1898
  %81 = load i32, i32* %80, align 8, !dbg !1898
  %82 = icmp eq i32 %81, 1, !dbg !1899
  br i1 %82, label %83, label %89, !dbg !1900

; <label>:83:                                     ; preds = %78
  %84 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1901
  %85 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1902
  %86 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %85, i32 0, i32 3, !dbg !1903
  %87 = load %struct.dpkg_arch*, %struct.dpkg_arch** %86, align 8, !dbg !1903
  %88 = call %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset* %84, %struct.dpkg_arch* %87), !dbg !1904
  store %struct.pkginfo* %88, %struct.pkginfo** %4, align 8, !dbg !1905
  br label %120, !dbg !1905

; <label>:89:                                     ; preds = %78
  %90 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1906
  %91 = call i32 @pkgset_installed_instances(%struct.pkgset* %90), !dbg !1908
  %92 = icmp eq i32 %91, 1, !dbg !1909
  br i1 %92, label %93, label %114, !dbg !1910

; <label>:93:                                     ; preds = %89
  %94 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1911
  %95 = call %struct.pkginfo* @pkg_hash_get_singleton(%struct.pkgset* %94), !dbg !1913
  store %struct.pkginfo* %95, %struct.pkginfo** %9, align 8, !dbg !1914
  %96 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1915
  %97 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %96, i32 0, i32 9, !dbg !1917
  %98 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %97, i32 0, i32 2, !dbg !1918
  %99 = load i32, i32* %98, align 4, !dbg !1918
  %100 = icmp eq i32 %99, 1, !dbg !1919
  br i1 %100, label %101, label %112, !dbg !1920

; <label>:101:                                    ; preds = %93
  %102 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1921
  %103 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %102, i32 0, i32 2, !dbg !1922
  %104 = load i32, i32* %103, align 4, !dbg !1922
  %105 = icmp eq i32 %104, 1, !dbg !1923
  br i1 %105, label %106, label %112, !dbg !1924

; <label>:106:                                    ; preds = %101
  %107 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1926
  %108 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1927
  %109 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %108, i32 0, i32 3, !dbg !1928
  %110 = load %struct.dpkg_arch*, %struct.dpkg_arch** %109, align 8, !dbg !1928
  %111 = call %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset* %107, %struct.dpkg_arch* %110), !dbg !1929
  store %struct.pkginfo* %111, %struct.pkginfo** %4, align 8, !dbg !1930
  br label %120, !dbg !1930

; <label>:112:                                    ; preds = %101, %93
  %113 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1931
  store %struct.pkginfo* %113, %struct.pkginfo** %4, align 8, !dbg !1932
  br label %120, !dbg !1932

; <label>:114:                                    ; preds = %89
  %115 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !1933
  %116 = load %struct.pkgbin*, %struct.pkgbin** %7, align 8, !dbg !1935
  %117 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %116, i32 0, i32 3, !dbg !1936
  %118 = load %struct.dpkg_arch*, %struct.dpkg_arch** %117, align 8, !dbg !1936
  %119 = call %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset* %115, %struct.dpkg_arch* %118), !dbg !1937
  store %struct.pkginfo* %119, %struct.pkginfo** %4, align 8, !dbg !1938
  br label %120, !dbg !1938

; <label>:120:                                    ; preds = %114, %112, %106, %83, %31, %28
  %121 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !1939
  ret %struct.pkginfo* %121, !dbg !1939
}

declare zeroext i1 @dpkg_version_is_informative(%struct.dpkg_version*) #0

declare i32 @dpkg_version_compare(%struct.dpkg_version*, %struct.dpkg_version*) #0

; Function Attrs: nounwind uwtable
define internal void @pkg_parse_copy(%struct.parsedb_state*, %struct.pkginfo*, %struct.pkgbin*, %struct.pkginfo*, %struct.pkgbin*) #1 !dbg !1940 {
  %6 = alloca %struct.parsedb_state*, align 8
  %7 = alloca %struct.pkginfo*, align 8
  %8 = alloca %struct.pkgbin*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkgbin*, align 8
  %11 = alloca %struct.trigaw*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %6, metadata !1943, metadata !342), !dbg !1944
  store %struct.pkginfo* %1, %struct.pkginfo** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %7, metadata !1945, metadata !342), !dbg !1946
  store %struct.pkgbin* %2, %struct.pkgbin** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %8, metadata !1947, metadata !342), !dbg !1948
  store %struct.pkginfo* %3, %struct.pkginfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !1949, metadata !342), !dbg !1950
  store %struct.pkgbin* %4, %struct.pkgbin** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %10, metadata !1951, metadata !342), !dbg !1952
  %12 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1953
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 7, !dbg !1955
  %14 = load i8*, i8** %13, align 8, !dbg !1955
  %15 = call zeroext i1 @str_is_set(i8* %14), !dbg !1956
  br i1 %15, label %16, label %33, !dbg !1957

; <label>:16:                                     ; preds = %5
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1958
  %18 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %17, i32 0, i32 1, !dbg !1959
  %19 = load i32, i32* %18, align 4, !dbg !1959
  %20 = and i32 %19, 8, !dbg !1960
  %21 = icmp ne i32 %20, 0, !dbg !1960
  br i1 %21, label %22, label %27, !dbg !1961

; <label>:22:                                     ; preds = %16
  %23 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1962
  %24 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %23, i32 0, i32 7, !dbg !1963
  %25 = load i8*, i8** %24, align 8, !dbg !1963
  %26 = call zeroext i1 @str_is_set(i8* %25), !dbg !1964
  br i1 %26, label %33, label %27, !dbg !1965

; <label>:27:                                     ; preds = %22, %16
  %28 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1967
  %29 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %28, i32 0, i32 7, !dbg !1968
  %30 = load i8*, i8** %29, align 8, !dbg !1968
  %31 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1969
  %32 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %31, i32 0, i32 7, !dbg !1970
  store i8* %30, i8** %32, align 8, !dbg !1971
  br label %33, !dbg !1969

; <label>:33:                                     ; preds = %27, %22, %5
  %34 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1972
  %35 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %34, i32 0, i32 5, !dbg !1974
  %36 = load i32, i32* %35, align 4, !dbg !1974
  %37 = icmp ne i32 %36, 6, !dbg !1975
  br i1 %37, label %38, label %66, !dbg !1976

; <label>:38:                                     ; preds = %33
  %39 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !1977
  %40 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %39, i32 0, i32 1, !dbg !1978
  %41 = load i32, i32* %40, align 4, !dbg !1978
  %42 = and i32 %41, 8, !dbg !1979
  %43 = icmp ne i32 %42, 0, !dbg !1979
  br i1 %43, label %44, label %49, !dbg !1980

; <label>:44:                                     ; preds = %38
  %45 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1981
  %46 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %45, i32 0, i32 5, !dbg !1982
  %47 = load i32, i32* %46, align 4, !dbg !1982
  %48 = icmp ne i32 %47, 6, !dbg !1983
  br i1 %48, label %66, label %49, !dbg !1984

; <label>:49:                                     ; preds = %44, %38
  %50 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1985
  %51 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %50, i32 0, i32 5, !dbg !1987
  %52 = load i32, i32* %51, align 4, !dbg !1987
  %53 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1988
  %54 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %53, i32 0, i32 5, !dbg !1989
  store i32 %52, i32* %54, align 4, !dbg !1990
  %55 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1991
  %56 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %55, i32 0, i32 5, !dbg !1993
  %57 = load i32, i32* %56, align 4, !dbg !1993
  %58 = icmp eq i32 %57, 5, !dbg !1994
  br i1 %58, label %59, label %65, !dbg !1995

; <label>:59:                                     ; preds = %49
  %60 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !1996
  %61 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %60, i32 0, i32 6, !dbg !1997
  %62 = load i8*, i8** %61, align 8, !dbg !1997
  %63 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !1998
  %64 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %63, i32 0, i32 6, !dbg !1999
  store i8* %62, i8** %64, align 8, !dbg !2000
  br label %65, !dbg !1998

; <label>:65:                                     ; preds = %59, %49
  br label %66, !dbg !2001

; <label>:66:                                     ; preds = %65, %44, %33
  %67 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2002
  %68 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !2003
  %69 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %68, i32 0, i32 0, !dbg !2004
  %70 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !2005
  %71 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %70, i32 0, i32 0, !dbg !2006
  %72 = load %struct.dependency*, %struct.dependency** %71, align 8, !dbg !2006
  %73 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !2007
  %74 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %73, i32 0, i32 1, !dbg !2008
  %75 = load i32, i32* %74, align 4, !dbg !2008
  %76 = and i32 %75, 2, !dbg !2009
  %77 = icmp ne i32 %76, 0, !dbg !2010
  %78 = select i1 %77, i32 1, i32 0, !dbg !2010
  %79 = icmp ne i32 %78, 0, !dbg !2010
  call void @copy_dependency_links(%struct.pkginfo* %67, %struct.dependency** %69, %struct.dependency* %72, i1 zeroext %79), !dbg !2011
  %80 = load %struct.pkgbin*, %struct.pkgbin** %8, align 8, !dbg !2012
  %81 = bitcast %struct.pkgbin* %80 to i8*, !dbg !2013
  %82 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !2014
  %83 = bitcast %struct.pkgbin* %82 to i8*, !dbg !2013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %83, i64 120, i32 8, i1 false), !dbg !2013
  %84 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !2015
  %85 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %84, i32 0, i32 1, !dbg !2017
  %86 = load i32, i32* %85, align 4, !dbg !2017
  %87 = and i32 %86, 2, !dbg !2018
  %88 = icmp ne i32 %87, 0, !dbg !2018
  br i1 %88, label %150, label %89, !dbg !2019

; <label>:89:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata %struct.trigaw** %11, metadata !2020, metadata !342), !dbg !2022
  %90 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2023
  %91 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2024
  %92 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %91, i32 0, i32 2, !dbg !2025
  %93 = load i32, i32* %92, align 8, !dbg !2025
  call void @pkg_set_want(%struct.pkginfo* %90, i32 %93), !dbg !2026
  %94 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2027
  %95 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2028
  call void @pkg_copy_eflags(%struct.pkginfo* %94, %struct.pkginfo* %95), !dbg !2029
  %96 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2030
  %97 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2031
  %98 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %97, i32 0, i32 4, !dbg !2032
  %99 = load i32, i32* %98, align 8, !dbg !2032
  call void @pkg_set_status(%struct.pkginfo* %96, i32 %99), !dbg !2033
  %100 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2034
  %101 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %100, i32 0, i32 8, !dbg !2035
  %102 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2036
  %103 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %102, i32 0, i32 8, !dbg !2037
  %104 = bitcast %struct.dpkg_version* %101 to i8*, !dbg !2037
  %105 = bitcast %struct.dpkg_version* %103 to i8*, !dbg !2037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 24, i32 8, i1 false), !dbg !2037
  %106 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2038
  %107 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %106, i32 0, i32 12, !dbg !2039
  store %struct.archivedetails* null, %struct.archivedetails** %107, align 8, !dbg !2040
  %108 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2041
  %109 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %108, i32 0, i32 15, !dbg !2042
  %110 = load %struct.trigpend*, %struct.trigpend** %109, align 8, !dbg !2042
  %111 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2043
  %112 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %111, i32 0, i32 15, !dbg !2044
  store %struct.trigpend* %110, %struct.trigpend** %112, align 8, !dbg !2045
  %113 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2046
  %114 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %113, i32 0, i32 13, !dbg !2047
  %115 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2048
  %116 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %115, i32 0, i32 13, !dbg !2049
  %117 = bitcast %struct.anon* %114 to i8*, !dbg !2049
  %118 = bitcast %struct.anon* %116 to i8*, !dbg !2049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 16, i32 8, i1 false), !dbg !2049
  %119 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2050
  %120 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %119, i32 0, i32 13, !dbg !2052
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 0, !dbg !2053
  %122 = load %struct.trigaw*, %struct.trigaw** %121, align 8, !dbg !2053
  store %struct.trigaw* %122, %struct.trigaw** %11, align 8, !dbg !2054
  br label %123, !dbg !2055

; <label>:123:                                    ; preds = %144, %89
  %124 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !2056
  %125 = icmp ne %struct.trigaw* %124, null, !dbg !2059
  br i1 %125, label %126, label %149, !dbg !2059

; <label>:126:                                    ; preds = %123
  %127 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !2060
  %128 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %127, i32 0, i32 0, !dbg !2063
  %129 = load %struct.pkginfo*, %struct.pkginfo** %128, align 8, !dbg !2063
  %130 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2064
  %131 = icmp ne %struct.pkginfo* %129, %130, !dbg !2065
  br i1 %131, label %132, label %140, !dbg !2066

; <label>:132:                                    ; preds = %126
  %133 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !2067
  %134 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %133, i32 0, i32 0, !dbg !2068
  %135 = load %struct.pkginfo*, %struct.pkginfo** %134, align 8, !dbg !2068
  %136 = call i8* @pkg_name(%struct.pkginfo* %135, i32 3), !dbg !2069
  %137 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2070
  %138 = load %struct.pkgbin*, %struct.pkgbin** %10, align 8, !dbg !2071
  %139 = call i8* @pkgbin_name(%struct.pkginfo* %137, %struct.pkgbin* %138, i32 3), !dbg !2072
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 490, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkg_parse_copy, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.76, i32 0, i32 0), i8* %136, i8* %139) #10, !dbg !2074
  unreachable, !dbg !2076

; <label>:140:                                    ; preds = %126
  %141 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2077
  %142 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !2078
  %143 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %142, i32 0, i32 0, !dbg !2079
  store %struct.pkginfo* %141, %struct.pkginfo** %143, align 8, !dbg !2080
  br label %144, !dbg !2081

; <label>:144:                                    ; preds = %140
  %145 = load %struct.trigaw*, %struct.trigaw** %11, align 8, !dbg !2082
  %146 = getelementptr inbounds %struct.trigaw, %struct.trigaw* %145, i32 0, i32 3, !dbg !2084
  %147 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %146, i32 0, i32 0, !dbg !2085
  %148 = load %struct.trigaw*, %struct.trigaw** %147, align 8, !dbg !2085
  store %struct.trigaw* %148, %struct.trigaw** %11, align 8, !dbg !2086
  br label %123, !dbg !2087, !llvm.loop !2088

; <label>:149:                                    ; preds = %123
  br label %163, !dbg !2090

; <label>:150:                                    ; preds = %66
  %151 = load %struct.parsedb_state*, %struct.parsedb_state** %6, align 8, !dbg !2091
  %152 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %151, i32 0, i32 1, !dbg !2094
  %153 = load i32, i32* %152, align 4, !dbg !2094
  %154 = and i32 %153, 16, !dbg !2095
  %155 = icmp ne i32 %154, 0, !dbg !2095
  br i1 %155, label %162, label %156, !dbg !2096

; <label>:156:                                    ; preds = %150
  %157 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2097
  %158 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %157, i32 0, i32 12, !dbg !2099
  %159 = load %struct.archivedetails*, %struct.archivedetails** %158, align 8, !dbg !2099
  %160 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !2100
  %161 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %160, i32 0, i32 12, !dbg !2101
  store %struct.archivedetails* %159, %struct.archivedetails** %161, align 8, !dbg !2102
  br label %162, !dbg !2103

; <label>:162:                                    ; preds = %156, %150
  br label %163

; <label>:163:                                    ; preds = %162, %149
  ret void, !dbg !2104
}

declare void @varbuf_destroy(%struct.varbuf*) #0

; Function Attrs: nounwind uwtable
define i32 @parsedb(i8*, i32, %struct.pkginfo**) #1 !dbg !2105 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkginfo**, align 8
  %7 = alloca %struct.parsedb_state*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2108, metadata !342), !dbg !2109
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2110, metadata !342), !dbg !2111
  store %struct.pkginfo** %2, %struct.pkginfo*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo*** %6, metadata !2112, metadata !342), !dbg !2113
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %7, metadata !2114, metadata !342), !dbg !2115
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2116, metadata !342), !dbg !2117
  %9 = load i8*, i8** %4, align 8, !dbg !2118
  %10 = load i32, i32* %5, align 4, !dbg !2119
  %11 = call %struct.parsedb_state* @parsedb_open(i8* %9, i32 %10), !dbg !2120
  store %struct.parsedb_state* %11, %struct.parsedb_state** %7, align 8, !dbg !2121
  %12 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !2122
  call void @parsedb_load(%struct.parsedb_state* %12), !dbg !2123
  %13 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !2124
  %14 = load %struct.pkginfo**, %struct.pkginfo*** %6, align 8, !dbg !2125
  %15 = call i32 @parsedb_parse(%struct.parsedb_state* %13, %struct.pkginfo** %14), !dbg !2126
  store i32 %15, i32* %8, align 4, !dbg !2127
  %16 = load %struct.parsedb_state*, %struct.parsedb_state** %7, align 8, !dbg !2128
  call void @parsedb_close(%struct.parsedb_state* %16), !dbg !2129
  %17 = load i32, i32* %8, align 4, !dbg !2130
  ret i32 %17, !dbg !2131
}

; Function Attrs: nounwind uwtable
define void @copy_dependency_links(%struct.pkginfo*, %struct.dependency**, %struct.dependency*, i1 zeroext) #1 !dbg !2132 {
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.dependency**, align 8
  %7 = alloca %struct.dependency*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.dependency*, align 8
  %10 = alloca %struct.deppossi*, align 8
  %11 = alloca %struct.deppossi**, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !2136, metadata !342), !dbg !2137
  store %struct.dependency** %1, %struct.dependency*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency*** %6, metadata !2138, metadata !342), !dbg !2139
  store %struct.dependency* %2, %struct.dependency** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dependency** %7, metadata !2140, metadata !342), !dbg !2141
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2142, metadata !342), !dbg !2143
  call void @llvm.dbg.declare(metadata %struct.dependency** %9, metadata !2144, metadata !342), !dbg !2145
  call void @llvm.dbg.declare(metadata %struct.deppossi** %10, metadata !2146, metadata !342), !dbg !2147
  call void @llvm.dbg.declare(metadata %struct.deppossi*** %11, metadata !2148, metadata !342), !dbg !2150
  %13 = load %struct.dependency**, %struct.dependency*** %6, align 8, !dbg !2151
  %14 = load %struct.dependency*, %struct.dependency** %13, align 8, !dbg !2153
  store %struct.dependency* %14, %struct.dependency** %9, align 8, !dbg !2154
  br label %15, !dbg !2155

; <label>:15:                                     ; preds = %79, %4
  %16 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2156
  %17 = icmp ne %struct.dependency* %16, null, !dbg !2159
  br i1 %17, label %18, label %83, !dbg !2159

; <label>:18:                                     ; preds = %15
  %19 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2160
  %20 = getelementptr inbounds %struct.dependency, %struct.dependency* %19, i32 0, i32 2, !dbg !2163
  %21 = load %struct.deppossi*, %struct.deppossi** %20, align 8, !dbg !2163
  store %struct.deppossi* %21, %struct.deppossi** %10, align 8, !dbg !2164
  br label %22, !dbg !2165

; <label>:22:                                     ; preds = %74, %18
  %23 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2166
  %24 = icmp ne %struct.deppossi* %23, null, !dbg !2169
  br i1 %24, label %25, label %78, !dbg !2169

; <label>:25:                                     ; preds = %22
  %26 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2170
  %27 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %26, i32 0, i32 4, !dbg !2173
  %28 = load %struct.deppossi*, %struct.deppossi** %27, align 8, !dbg !2173
  %29 = icmp ne %struct.deppossi* %28, null, !dbg !2170
  br i1 %29, label %30, label %38, !dbg !2174

; <label>:30:                                     ; preds = %25
  %31 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2175
  %32 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %31, i32 0, i32 3, !dbg !2176
  %33 = load %struct.deppossi*, %struct.deppossi** %32, align 8, !dbg !2176
  %34 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2177
  %35 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %34, i32 0, i32 4, !dbg !2178
  %36 = load %struct.deppossi*, %struct.deppossi** %35, align 8, !dbg !2178
  %37 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %36, i32 0, i32 3, !dbg !2179
  store %struct.deppossi* %33, %struct.deppossi** %37, align 8, !dbg !2180
  br label %60, !dbg !2177

; <label>:38:                                     ; preds = %25
  %39 = load i8, i8* %8, align 1, !dbg !2181
  %40 = trunc i8 %39 to i1, !dbg !2181
  br i1 %40, label %41, label %50, !dbg !2183

; <label>:41:                                     ; preds = %38
  %42 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2184
  %43 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %42, i32 0, i32 3, !dbg !2185
  %44 = load %struct.deppossi*, %struct.deppossi** %43, align 8, !dbg !2185
  %45 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2186
  %46 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %45, i32 0, i32 1, !dbg !2187
  %47 = load %struct.pkgset*, %struct.pkgset** %46, align 8, !dbg !2187
  %48 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %47, i32 0, i32 3, !dbg !2188
  %49 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %48, i32 0, i32 0, !dbg !2189
  store %struct.deppossi* %44, %struct.deppossi** %49, align 8, !dbg !2190
  br label %59, !dbg !2186

; <label>:50:                                     ; preds = %38
  %51 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2191
  %52 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %51, i32 0, i32 3, !dbg !2192
  %53 = load %struct.deppossi*, %struct.deppossi** %52, align 8, !dbg !2192
  %54 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2193
  %55 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %54, i32 0, i32 1, !dbg !2194
  %56 = load %struct.pkgset*, %struct.pkgset** %55, align 8, !dbg !2194
  %57 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %56, i32 0, i32 3, !dbg !2195
  %58 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %57, i32 0, i32 1, !dbg !2196
  store %struct.deppossi* %53, %struct.deppossi** %58, align 8, !dbg !2197
  br label %59

; <label>:59:                                     ; preds = %50, %41
  br label %60

; <label>:60:                                     ; preds = %59, %30
  %61 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2198
  %62 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %61, i32 0, i32 3, !dbg !2200
  %63 = load %struct.deppossi*, %struct.deppossi** %62, align 8, !dbg !2200
  %64 = icmp ne %struct.deppossi* %63, null, !dbg !2198
  br i1 %64, label %65, label %73, !dbg !2201

; <label>:65:                                     ; preds = %60
  %66 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2202
  %67 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %66, i32 0, i32 4, !dbg !2203
  %68 = load %struct.deppossi*, %struct.deppossi** %67, align 8, !dbg !2203
  %69 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2204
  %70 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %69, i32 0, i32 3, !dbg !2205
  %71 = load %struct.deppossi*, %struct.deppossi** %70, align 8, !dbg !2205
  %72 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %71, i32 0, i32 4, !dbg !2206
  store %struct.deppossi* %68, %struct.deppossi** %72, align 8, !dbg !2207
  br label %73, !dbg !2204

; <label>:73:                                     ; preds = %65, %60
  br label %74, !dbg !2208

; <label>:74:                                     ; preds = %73
  %75 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2209
  %76 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %75, i32 0, i32 2, !dbg !2211
  %77 = load %struct.deppossi*, %struct.deppossi** %76, align 8, !dbg !2211
  store %struct.deppossi* %77, %struct.deppossi** %10, align 8, !dbg !2212
  br label %22, !dbg !2213, !llvm.loop !2214

; <label>:78:                                     ; preds = %22
  br label %79, !dbg !2216

; <label>:79:                                     ; preds = %78
  %80 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2217
  %81 = getelementptr inbounds %struct.dependency, %struct.dependency* %80, i32 0, i32 1, !dbg !2219
  %82 = load %struct.dependency*, %struct.dependency** %81, align 8, !dbg !2219
  store %struct.dependency* %82, %struct.dependency** %9, align 8, !dbg !2220
  br label %15, !dbg !2221, !llvm.loop !2222

; <label>:83:                                     ; preds = %15
  %84 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !2224
  store %struct.dependency* %84, %struct.dependency** %9, align 8, !dbg !2226
  br label %85, !dbg !2227

; <label>:85:                                     ; preds = %137, %83
  %86 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2228
  %87 = icmp ne %struct.dependency* %86, null, !dbg !2231
  br i1 %87, label %88, label %141, !dbg !2231

; <label>:88:                                     ; preds = %85
  %89 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2232
  %90 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2234
  %91 = getelementptr inbounds %struct.dependency, %struct.dependency* %90, i32 0, i32 0, !dbg !2235
  store %struct.pkginfo* %89, %struct.pkginfo** %91, align 8, !dbg !2236
  %92 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2237
  %93 = getelementptr inbounds %struct.dependency, %struct.dependency* %92, i32 0, i32 2, !dbg !2239
  %94 = load %struct.deppossi*, %struct.deppossi** %93, align 8, !dbg !2239
  store %struct.deppossi* %94, %struct.deppossi** %10, align 8, !dbg !2240
  br label %95, !dbg !2241

; <label>:95:                                     ; preds = %132, %88
  %96 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2242
  %97 = icmp ne %struct.deppossi* %96, null, !dbg !2245
  br i1 %97, label %98, label %136, !dbg !2245

; <label>:98:                                     ; preds = %95
  %99 = load i8, i8* %8, align 1, !dbg !2246
  %100 = trunc i8 %99 to i1, !dbg !2246
  br i1 %100, label %101, label %107, !dbg !2246

; <label>:101:                                    ; preds = %98
  %102 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2248
  %103 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %102, i32 0, i32 1, !dbg !2250
  %104 = load %struct.pkgset*, %struct.pkgset** %103, align 8, !dbg !2250
  %105 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %104, i32 0, i32 3, !dbg !2251
  %106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %105, i32 0, i32 0, !dbg !2252
  br label %113, !dbg !2253

; <label>:107:                                    ; preds = %98
  %108 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2254
  %109 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %108, i32 0, i32 1, !dbg !2255
  %110 = load %struct.pkgset*, %struct.pkgset** %109, align 8, !dbg !2255
  %111 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %110, i32 0, i32 3, !dbg !2256
  %112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %111, i32 0, i32 1, !dbg !2257
  br label %113, !dbg !2258

; <label>:113:                                    ; preds = %107, %101
  %114 = phi %struct.deppossi** [ %106, %101 ], [ %112, %107 ], !dbg !2260
  store %struct.deppossi** %114, %struct.deppossi*** %11, align 8, !dbg !2262
  %115 = load %struct.deppossi**, %struct.deppossi*** %11, align 8, !dbg !2263
  %116 = load %struct.deppossi*, %struct.deppossi** %115, align 8, !dbg !2264
  %117 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2265
  %118 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %117, i32 0, i32 3, !dbg !2266
  store %struct.deppossi* %116, %struct.deppossi** %118, align 8, !dbg !2267
  %119 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2268
  %120 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %119, i32 0, i32 4, !dbg !2269
  store %struct.deppossi* null, %struct.deppossi** %120, align 8, !dbg !2270
  %121 = load %struct.deppossi**, %struct.deppossi*** %11, align 8, !dbg !2271
  %122 = load %struct.deppossi*, %struct.deppossi** %121, align 8, !dbg !2273
  %123 = icmp ne %struct.deppossi* %122, null, !dbg !2273
  br i1 %123, label %124, label %129, !dbg !2274

; <label>:124:                                    ; preds = %113
  %125 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2275
  %126 = load %struct.deppossi**, %struct.deppossi*** %11, align 8, !dbg !2276
  %127 = load %struct.deppossi*, %struct.deppossi** %126, align 8, !dbg !2277
  %128 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %127, i32 0, i32 4, !dbg !2278
  store %struct.deppossi* %125, %struct.deppossi** %128, align 8, !dbg !2279
  br label %129, !dbg !2280

; <label>:129:                                    ; preds = %124, %113
  %130 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2281
  %131 = load %struct.deppossi**, %struct.deppossi*** %11, align 8, !dbg !2282
  store %struct.deppossi* %130, %struct.deppossi** %131, align 8, !dbg !2283
  br label %132, !dbg !2284

; <label>:132:                                    ; preds = %129
  %133 = load %struct.deppossi*, %struct.deppossi** %10, align 8, !dbg !2285
  %134 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %133, i32 0, i32 2, !dbg !2287
  %135 = load %struct.deppossi*, %struct.deppossi** %134, align 8, !dbg !2287
  store %struct.deppossi* %135, %struct.deppossi** %10, align 8, !dbg !2288
  br label %95, !dbg !2289, !llvm.loop !2290

; <label>:136:                                    ; preds = %95
  br label %137, !dbg !2292

; <label>:137:                                    ; preds = %136
  %138 = load %struct.dependency*, %struct.dependency** %9, align 8, !dbg !2293
  %139 = getelementptr inbounds %struct.dependency, %struct.dependency* %138, i32 0, i32 1, !dbg !2295
  %140 = load %struct.dependency*, %struct.dependency** %139, align 8, !dbg !2295
  store %struct.dependency* %140, %struct.dependency** %9, align 8, !dbg !2296
  br label %85, !dbg !2297, !llvm.loop !2298

; <label>:141:                                    ; preds = %85
  %142 = load %struct.dependency*, %struct.dependency** %7, align 8, !dbg !2300
  %143 = load %struct.dependency**, %struct.dependency*** %6, align 8, !dbg !2301
  store %struct.dependency* %142, %struct.dependency** %143, align 8, !dbg !2302
  ret void, !dbg !2303
}

declare zeroext i1 @c_isbits(i32, i32) #0

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

declare void @varbuf_reset(%struct.varbuf*) #0

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @nfmalloc(i64) #0

declare i8* @nfstrnsave(i8*, i64) #0

declare void @parse_must_have_field(%struct.parsedb_state*, i8*, i8*) #0

declare void @parse_ensure_have_field(%struct.parsedb_state*, i8**, i8*) #0

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #0

declare i8* @pkgbin_name_archqual(%struct.pkginfo*, %struct.pkgbin*) #0

declare i8* @pkg_status_name(%struct.pkginfo*) #0

declare void @pkg_set_want(%struct.pkginfo*, i32) #0

declare void @pkgbin_blank(%struct.pkgbin*) #0

; Function Attrs: nounwind uwtable
define internal %struct.pkgset* @parse_find_set_slot(%struct.parsedb_state*, %struct.pkginfo*, %struct.pkgbin*) #1 !dbg !2304 {
  %4 = alloca %struct.parsedb_state*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  %7 = alloca %struct.pkgcount, align 4
  %8 = alloca %struct.pkgset*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  store %struct.parsedb_state* %0, %struct.parsedb_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.parsedb_state** %4, metadata !2307, metadata !342), !dbg !2308
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !2309, metadata !342), !dbg !2310
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !2311, metadata !342), !dbg !2312
  call void @llvm.dbg.declare(metadata %struct.pkgcount* %7, metadata !2313, metadata !342), !dbg !2319
  %10 = bitcast %struct.pkgcount* %7 to i8*, !dbg !2319
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 12, i32 4, i1 false), !dbg !2319
  call void @llvm.dbg.declare(metadata %struct.pkgset** %8, metadata !2320, metadata !342), !dbg !2321
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !2322, metadata !342), !dbg !2323
  %11 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2324
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 0, !dbg !2325
  %13 = load %struct.pkgset*, %struct.pkgset** %12, align 8, !dbg !2325
  %14 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %13, i32 0, i32 1, !dbg !2326
  %15 = load i8*, i8** %14, align 8, !dbg !2326
  %16 = call %struct.pkgset* @pkg_hash_find_set(i8* %15), !dbg !2327
  store %struct.pkgset* %16, %struct.pkgset** %8, align 8, !dbg !2328
  %17 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !2329
  %18 = getelementptr inbounds %struct.parsedb_state, %struct.parsedb_state* %17, i32 0, i32 0, !dbg !2331
  %19 = load i32, i32* %18, align 8, !dbg !2331
  %20 = icmp eq i32 %19, 1, !dbg !2332
  br i1 %20, label %21, label %24, !dbg !2333

; <label>:21:                                     ; preds = %3
  %22 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2334
  %23 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !2335
  call void @parse_count_pkg_instance(%struct.pkgcount* %7, %struct.pkginfo* %22, %struct.pkgbin* %23), !dbg !2336
  br label %24, !dbg !2336

; <label>:24:                                     ; preds = %21, %3
  %25 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %7, i32 0, i32 2, !dbg !2337
  store i32 0, i32* %25, align 4, !dbg !2338
  %26 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !2339
  %27 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %26, i32 0, i32 2, !dbg !2341
  store %struct.pkginfo* %27, %struct.pkginfo** %9, align 8, !dbg !2342
  br label %28, !dbg !2343

; <label>:28:                                     ; preds = %35, %24
  %29 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2344
  %30 = icmp ne %struct.pkginfo* %29, null, !dbg !2347
  br i1 %30, label %31, label %39, !dbg !2347

; <label>:31:                                     ; preds = %28
  %32 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2348
  %33 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2349
  %34 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %33, i32 0, i32 9, !dbg !2350
  call void @parse_count_pkg_instance(%struct.pkgcount* %7, %struct.pkginfo* %32, %struct.pkgbin* %34), !dbg !2351
  br label %35, !dbg !2351

; <label>:35:                                     ; preds = %31
  %36 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !2352
  %37 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %36, i32 0, i32 1, !dbg !2354
  %38 = load %struct.pkginfo*, %struct.pkginfo** %37, align 8, !dbg !2354
  store %struct.pkginfo* %38, %struct.pkginfo** %9, align 8, !dbg !2355
  br label %28, !dbg !2356, !llvm.loop !2357

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %7, i32 0, i32 0, !dbg !2359
  %41 = load i32, i32* %40, align 4, !dbg !2359
  %42 = icmp sgt i32 %41, 1, !dbg !2361
  br i1 %42, label %43, label %46, !dbg !2362

; <label>:43:                                     ; preds = %39
  %44 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !2363
  %45 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.72, i32 0, i32 0)) #9, !dbg !2364
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %44, i8* %45) #10, !dbg !2365
  unreachable, !dbg !2367

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %7, i32 0, i32 0, !dbg !2368
  %48 = load i32, i32* %47, align 4, !dbg !2368
  %49 = icmp sgt i32 %48, 0, !dbg !2370
  br i1 %49, label %50, label %57, !dbg !2371

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %7, i32 0, i32 1, !dbg !2372
  %52 = load i32, i32* %51, align 4, !dbg !2372
  %53 = icmp sgt i32 %52, 0, !dbg !2374
  br i1 %53, label %54, label %57, !dbg !2375

; <label>:54:                                     ; preds = %50
  %55 = load %struct.parsedb_state*, %struct.parsedb_state** %4, align 8, !dbg !2376
  %56 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.73, i32 0, i32 0)) #9, !dbg !2377
  call void (%struct.parsedb_state*, i8*, ...) @parse_error(%struct.parsedb_state* %55, i8* %56) #10, !dbg !2378
  unreachable, !dbg !2379

; <label>:57:                                     ; preds = %50, %46
  %58 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !2380
  %59 = call i32 @pkgset_installed_instances(%struct.pkgset* %58), !dbg !2382
  %60 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %7, i32 0, i32 2, !dbg !2383
  %61 = load i32, i32* %60, align 4, !dbg !2383
  %62 = icmp ne i32 %59, %61, !dbg !2384
  br i1 %62, label %63, label %67, !dbg !2385

; <label>:63:                                     ; preds = %57
  %64 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !2386
  %65 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %64, i32 0, i32 1, !dbg !2387
  %66 = load i8*, i8** %65, align 8, !dbg !2387
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.parse_find_set_slot, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.75, i32 0, i32 0), i8* %66) #10, !dbg !2388
  unreachable, !dbg !2388

; <label>:67:                                     ; preds = %57
  %68 = load %struct.pkgset*, %struct.pkgset** %8, align 8, !dbg !2389
  ret %struct.pkgset* %68, !dbg !2390
}

declare i32 @pkgset_installed_instances(%struct.pkgset*) #0

declare %struct.pkginfo* @pkg_hash_get_singleton(%struct.pkgset*) #0

declare %struct.pkginfo* @pkg_hash_get_pkg(%struct.pkgset*, %struct.dpkg_arch*) #0

declare i8* @pkgbin_name(%struct.pkginfo*, %struct.pkgbin*, i32) #0

declare i8* @versiondescribe(%struct.dpkg_version*, i32) #0

declare %struct.pkgset* @pkg_hash_find_set(i8*) #0

; Function Attrs: nounwind uwtable
define internal void @parse_count_pkg_instance(%struct.pkgcount*, %struct.pkginfo*, %struct.pkgbin*) #1 !dbg !2391 {
  %4 = alloca %struct.pkgcount*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  store %struct.pkgcount* %0, %struct.pkgcount** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgcount** %4, metadata !2395, metadata !342), !dbg !2396
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !2397, metadata !342), !dbg !2398
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !2399, metadata !342), !dbg !2400
  %7 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !2401
  %8 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %7, i32 0, i32 4, !dbg !2403
  %9 = load i32, i32* %8, align 8, !dbg !2403
  %10 = icmp eq i32 %9, 0, !dbg !2404
  br i1 %10, label %11, label %12, !dbg !2405

; <label>:11:                                     ; preds = %3
  br label %32, !dbg !2406

; <label>:12:                                     ; preds = %3
  %13 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !2407
  %14 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %13, i32 0, i32 2, !dbg !2409
  %15 = load i32, i32* %14, align 4, !dbg !2409
  %16 = icmp eq i32 %15, 1, !dbg !2410
  br i1 %16, label %17, label %22, !dbg !2411

; <label>:17:                                     ; preds = %12
  %18 = load %struct.pkgcount*, %struct.pkgcount** %4, align 8, !dbg !2412
  %19 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %18, i32 0, i32 1, !dbg !2413
  %20 = load i32, i32* %19, align 4, !dbg !2414
  %21 = add nsw i32 %20, 1, !dbg !2414
  store i32 %21, i32* %19, align 4, !dbg !2414
  br label %27, !dbg !2412

; <label>:22:                                     ; preds = %12
  %23 = load %struct.pkgcount*, %struct.pkgcount** %4, align 8, !dbg !2415
  %24 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %23, i32 0, i32 0, !dbg !2416
  %25 = load i32, i32* %24, align 4, !dbg !2417
  %26 = add nsw i32 %25, 1, !dbg !2417
  store i32 %26, i32* %24, align 4, !dbg !2417
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = load %struct.pkgcount*, %struct.pkgcount** %4, align 8, !dbg !2418
  %29 = getelementptr inbounds %struct.pkgcount, %struct.pkgcount* %28, i32 0, i32 2, !dbg !2419
  %30 = load i32, i32* %29, align 4, !dbg !2420
  %31 = add nsw i32 %30, 1, !dbg !2420
  store i32 %31, i32* %29, align 4, !dbg !2420
  br label %32, !dbg !2421

; <label>:32:                                     ; preds = %27, %11
  ret void, !dbg !2422
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_set(i8*) #7 !dbg !2424 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2428, metadata !342), !dbg !2429
  %3 = load i8*, i8** %2, align 8, !dbg !2430
  %4 = icmp ne i8* %3, null, !dbg !2431
  br i1 %4, label %5, label %11, !dbg !2432

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !2433
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !2433
  %8 = load i8, i8* %7, align 1, !dbg !2433
  %9 = sext i8 %8 to i32, !dbg !2433
  %10 = icmp ne i32 %9, 0, !dbg !2435
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !2436
}

declare void @pkg_copy_eflags(%struct.pkginfo*, %struct.pkginfo*) #0

declare void @pkg_set_status(%struct.pkginfo*, i32) #0

declare i8* @pkg_name(%struct.pkginfo*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!334, !335}
!llvm.ident = !{!336}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !134, globals: !139)
!1 = !DIFile(filename: "[inter]lib--dpkg--parse.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73, !80, !97, !103, !106, !112, !123, !129}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "dep_suggests", value: 0)
!7 = !DIEnumerator(name: "dep_recommends", value: 1)
!8 = !DIEnumerator(name: "dep_depends", value: 2)
!9 = !DIEnumerator(name: "dep_predepends", value: 3)
!10 = !DIEnumerator(name: "dep_breaks", value: 4)
!11 = !DIEnumerator(name: "dep_conflicts", value: 5)
!12 = !DIEnumerator(name: "dep_provides", value: 6)
!13 = !DIEnumerator(name: "dep_replaces", value: 7)
!14 = !DIEnumerator(name: "dep_enhances", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !16, line: 37, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!19 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!20 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!21 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!22 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!23 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!24 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!25 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !27, line: 61, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!30 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!31 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!32 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!33 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!34 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!38 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!39 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!40 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!41 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!42 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!46 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!50 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!51 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!52 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!53 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!54 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!55 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!56 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!60 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!61 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!62 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!63 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!64 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!65 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!66 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbtype", file: !74, line: 41, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/parsedump.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "pdb_file_update", value: 0)
!77 = !DIEnumerator(name: "pdb_file_status", value: 1)
!78 = !DIEnumerator(name: "pdb_file_control", value: 2)
!79 = !DIEnumerator(name: "pdb_file_available", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parsedbflags", file: !4, line: 328, size: 32, align: 32, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!82 = !DIEnumerator(name: "pdb_single_stanza", value: 1)
!83 = !DIEnumerator(name: "pdb_recordavailable", value: 2)
!84 = !DIEnumerator(name: "pdb_rejectstatus", value: 4)
!85 = !DIEnumerator(name: "pdb_weakclassification", value: 8)
!86 = !DIEnumerator(name: "pdb_ignore_archives", value: 16)
!87 = !DIEnumerator(name: "pdb_ignoreolder", value: 32)
!88 = !DIEnumerator(name: "pdb_lax_version_parser", value: 64)
!89 = !DIEnumerator(name: "pdb_lax_stanza_parser", value: 512)
!90 = !DIEnumerator(name: "pdb_lax_parser", value: 576)
!91 = !DIEnumerator(name: "pdb_close_fd", value: 128)
!92 = !DIEnumerator(name: "pdb_dash_is_stdin", value: 256)
!93 = !DIEnumerator(name: "pdb_parse_status", value: 584)
!94 = !DIEnumerator(name: "pdb_parse_update", value: 585)
!95 = !DIEnumerator(name: "pdb_parse_available", value: 582)
!96 = !DIEnumerator(name: "pdb_parse_binary", value: 7)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !98, line: 36, size: 32, align: 32, elements: !99)
!98 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!101 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!102 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fwriteflags", file: !74, line: 112, size: 32, align: 32, elements: !104)
!104 = !{!105}
!105 = !DIEnumerator(name: "fw_printheader", value: 1)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 41, size: 32, align: 32, elements: !108)
!107 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!110 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!111 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !113, line: 32, size: 32, align: 32, elements: !114)
!113 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122}
!115 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!116 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!117 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!118 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!119 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!120 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!121 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!122 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !4, line: 396, size: 32, align: 32, elements: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "pnaw_never", value: 0)
!126 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!127 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!128 = !DIEnumerator(name: "pnaw_always", value: 3)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "versiondisplayepochwhen", file: !4, line: 388, size: 32, align: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "vdew_never", value: 0)
!132 = !DIEnumerator(name: "vdew_nonambig", value: 1)
!133 = !DIEnumerator(name: "vdew_always", value: 2)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 216, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!138 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!139 = !{!140}
!140 = distinct !DIGlobalVariable(name: "fieldinfos", scope: !0, file: !141, line: 52, type: !142, isLocal: false, isDefinition: true, variable: [38 x %struct.fieldinfo]* @fieldinfos)
!141 = !DIFile(filename: "parse.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 12160, align: 64, elements: !332)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fieldinfo", file: !74, line: 133, size: 320, align: 64, elements: !145)
!145 = !{!146, !150, !151, !315, !331}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !74, line: 134, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !144, file: !74, line: 135, baseType: !136, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rcall", scope: !144, file: !74, line: 136, baseType: !152, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "freadfunction", file: !74, line: 97, baseType: !154)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156, !293, !294, !147, !314}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !158)
!158 = !{!159, !208, !209, !210, !211, !212, !213, !214, !215, !216, !246, !247, !250, !259, !275, !276, !282, !285, !291, !292}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !157, file: !4, line: 196, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !162)
!162 = !{!163, !164, !165, !166, !206}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !4, line: 243, baseType: !160, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !4, line: 244, baseType: !147, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !161, file: !4, line: 245, baseType: !157, size: 3072, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !161, file: !4, line: 249, baseType: !167, size: 128, align: 64, offset: 3200)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !4, line: 246, size: 128, align: 64, elements: !168)
!168 = !{!169, !205}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !167, file: !4, line: 247, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !172)
!172 = !{!173, !181, !182, !183, !184, !185, !194, !201, !202, !204}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !171, file: !4, line: 64, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !175, file: !4, line: 57, baseType: !156, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !4, line: 58, baseType: !174, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !4, line: 59, baseType: !170, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !171, file: !4, line: 65, baseType: !160, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !4, line: 66, baseType: !170, size: 64, align: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !171, file: !4, line: 66, baseType: !170, size: 64, align: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !171, file: !4, line: 66, baseType: !170, size: 64, align: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !171, file: !4, line: 67, baseType: !186, size: 64, align: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !189)
!189 = !{!190, !192, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !16, line: 49, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !16, line: 50, baseType: !147, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !171, file: !4, line: 68, baseType: !195, size: 192, align: 64, offset: 384)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !196)
!196 = !{!197, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !195, file: !27, line: 44, baseType: !198, size: 32, align: 32)
!198 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !195, file: !27, line: 46, baseType: !147, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !195, file: !27, line: 48, baseType: !147, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !171, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !171, file: !4, line: 70, baseType: !203, size: 8, align: 8, offset: 608)
!203 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !171, file: !4, line: 71, baseType: !203, size: 8, align: 8, offset: 616)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !167, file: !4, line: 248, baseType: !170, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !161, file: !4, line: 250, baseType: !207, size: 32, align: 32, offset: 3328)
!207 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !157, file: !4, line: 197, baseType: !156, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !157, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !157, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !157, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !157, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !157, file: !4, line: 204, baseType: !147, size: 64, align: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !157, file: !4, line: 205, baseType: !147, size: 64, align: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !157, file: !4, line: 206, baseType: !195, size: 192, align: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !157, file: !4, line: 207, baseType: !217, size: 960, align: 64, offset: 576)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !239}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !217, file: !4, line: 108, baseType: !174, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !217, file: !4, line: 110, baseType: !203, size: 8, align: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !217, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !217, file: !4, line: 112, baseType: !186, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !217, file: !4, line: 115, baseType: !147, size: 64, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !217, file: !4, line: 116, baseType: !147, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !217, file: !4, line: 117, baseType: !147, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !217, file: !4, line: 118, baseType: !147, size: 64, align: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !217, file: !4, line: 119, baseType: !147, size: 64, align: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !217, file: !4, line: 120, baseType: !147, size: 64, align: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !217, file: !4, line: 121, baseType: !147, size: 64, align: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !217, file: !4, line: 122, baseType: !195, size: 192, align: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !217, file: !4, line: 123, baseType: !232, size: 64, align: 64, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !4, line: 81, baseType: !232, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !4, line: 82, baseType: !147, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !233, file: !4, line: 83, baseType: !147, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !233, file: !4, line: 84, baseType: !203, size: 8, align: 8, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !217, file: !4, line: 124, baseType: !240, size: 64, align: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !4, line: 75, baseType: !240, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !4, line: 76, baseType: !147, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !4, line: 77, baseType: !147, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !157, file: !4, line: 208, baseType: !217, size: 960, align: 64, offset: 1536)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !157, file: !4, line: 209, baseType: !248, size: 64, align: 64, offset: 2496)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !157, file: !4, line: 211, baseType: !251, size: 64, align: 64, offset: 2560)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !4, line: 88, baseType: !251, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !4, line: 89, baseType: !147, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !252, file: !4, line: 90, baseType: !147, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !252, file: !4, line: 91, baseType: !147, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !252, file: !4, line: 92, baseType: !147, size: 64, align: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !157, file: !4, line: 216, baseType: !260, size: 128, align: 64, offset: 2624)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !4, line: 213, size: 128, align: 64, elements: !261)
!261 = !{!262, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !260, file: !4, line: 215, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !264, file: !4, line: 143, baseType: !156, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !264, file: !4, line: 143, baseType: !156, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !264, file: !4, line: 144, baseType: !263, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !264, file: !4, line: 147, baseType: !270, size: 128, align: 64, offset: 192)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !4, line: 145, size: 128, align: 64, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !4, line: 146, baseType: !263, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !270, file: !4, line: 146, baseType: !263, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !4, line: 215, baseType: !263, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !157, file: !4, line: 219, baseType: !263, size: 64, align: 64, offset: 2752)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !157, file: !4, line: 220, baseType: !277, size: 64, align: 64, offset: 2816)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !4, line: 135, baseType: !277, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !4, line: 136, baseType: !147, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !157, file: !4, line: 231, baseType: !283, size: 64, align: 64, offset: 2880)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !157, file: !4, line: 232, baseType: !286, size: 64, align: 64, offset: 2944)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !287, line: 86, baseType: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !289, line: 131, baseType: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!290 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !157, file: !4, line: 233, baseType: !203, size: 8, align: 8, offset: 3008)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !157, file: !4, line: 236, baseType: !203, size: 8, align: 8, offset: 3016)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsedb_state", file: !74, line: 48, size: 640, align: 64, elements: !296)
!296 = !{!297, !298, !299, !306, !307, !308, !309, !310, !311, !312, !313}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !74, line: 49, baseType: !73, size: 32, align: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !74, line: 50, baseType: !80, size: 32, align: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !295, file: !74, line: 51, baseType: !300, size: 128, align: 64, offset: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !98, line: 42, size: 128, align: 64, elements: !301)
!301 = !{!302, !303, !304}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !98, line: 43, baseType: !97, size: 32, align: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !300, file: !98, line: 45, baseType: !207, size: 32, align: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !300, file: !98, line: 46, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !295, file: !74, line: 52, baseType: !156, size: 64, align: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !295, file: !74, line: 53, baseType: !293, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !295, file: !74, line: 54, baseType: !305, size: 64, align: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dataptr", scope: !295, file: !74, line: 55, baseType: !305, size: 64, align: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "endptr", scope: !295, file: !74, line: 56, baseType: !305, size: 64, align: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !295, file: !74, line: 57, baseType: !147, size: 64, align: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !295, file: !74, line: 58, baseType: !207, size: 32, align: 32, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "lno", scope: !295, file: !74, line: 59, baseType: !207, size: 32, align: 32, offset: 608)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wcall", scope: !144, file: !74, line: 137, baseType: !316, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "fwritefunction", file: !74, line: 117, baseType: !318)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320, !327, !329, !103, !314}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !322, line: 55, size: 192, align: 64, elements: !323)
!322 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!323 = !{!324, !325, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !321, file: !322, line: 56, baseType: !136, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !321, file: !322, line: 56, baseType: !136, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !321, file: !322, line: 57, baseType: !305, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !144, file: !74, line: 138, baseType: !136, size: 64, align: 64, offset: 256)
!332 = !{!333}
!333 = !DISubrange(count: 38)
!334 = !{i32 2, !"Dwarf Version", i32 4}
!335 = !{i32 2, !"Debug Info Version", i32 3}
!336 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!337 = distinct !DISubprogram(name: "parsedb_new", scope: !141, file: !141, line: 523, type: !338, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!294, !147, !207, !80}
!340 = !{}
!341 = !DILocalVariable(name: "filename", arg: 1, scope: !337, file: !141, line: 523, type: !147)
!342 = !DIExpression()
!343 = !DILocation(line: 523, column: 25, scope: !337)
!344 = !DILocalVariable(name: "fd", arg: 2, scope: !337, file: !141, line: 523, type: !207)
!345 = !DILocation(line: 523, column: 39, scope: !337)
!346 = !DILocalVariable(name: "flags", arg: 3, scope: !337, file: !141, line: 523, type: !80)
!347 = !DILocation(line: 523, column: 61, scope: !337)
!348 = !DILocalVariable(name: "ps", scope: !337, file: !141, line: 525, type: !294)
!349 = !DILocation(line: 525, column: 25, scope: !337)
!350 = !DILocation(line: 527, column: 8, scope: !337)
!351 = !DILocation(line: 527, column: 6, scope: !337)
!352 = !DILocation(line: 528, column: 3, scope: !337)
!353 = !DILocation(line: 528, column: 7, scope: !337)
!354 = !DILocation(line: 528, column: 32, scope: !337)
!355 = !DILocation(line: 528, column: 13, scope: !337)
!356 = !DILocation(line: 529, column: 18, scope: !337)
!357 = !DILocation(line: 529, column: 3, scope: !337)
!358 = !DILocation(line: 529, column: 7, scope: !337)
!359 = !DILocation(line: 529, column: 16, scope: !337)
!360 = !DILocation(line: 530, column: 29, scope: !337)
!361 = !DILocation(line: 530, column: 33, scope: !337)
!362 = !DILocation(line: 530, column: 14, scope: !337)
!363 = !DILocation(line: 530, column: 3, scope: !337)
!364 = !DILocation(line: 530, column: 7, scope: !337)
!365 = !DILocation(line: 530, column: 12, scope: !337)
!366 = !DILocation(line: 531, column: 15, scope: !337)
!367 = !DILocation(line: 531, column: 3, scope: !337)
!368 = !DILocation(line: 531, column: 7, scope: !337)
!369 = !DILocation(line: 531, column: 13, scope: !337)
!370 = !DILocation(line: 532, column: 12, scope: !337)
!371 = !DILocation(line: 532, column: 3, scope: !337)
!372 = !DILocation(line: 532, column: 7, scope: !337)
!373 = !DILocation(line: 532, column: 10, scope: !337)
!374 = !DILocation(line: 533, column: 3, scope: !337)
!375 = !DILocation(line: 533, column: 7, scope: !337)
!376 = !DILocation(line: 533, column: 11, scope: !337)
!377 = !DILocation(line: 534, column: 3, scope: !337)
!378 = !DILocation(line: 534, column: 7, scope: !337)
!379 = !DILocation(line: 534, column: 11, scope: !337)
!380 = !DILocation(line: 535, column: 3, scope: !337)
!381 = !DILocation(line: 535, column: 7, scope: !337)
!382 = !DILocation(line: 535, column: 14, scope: !337)
!383 = !DILocation(line: 537, column: 10, scope: !337)
!384 = !DILocation(line: 537, column: 3, scope: !337)
!385 = distinct !DISubprogram(name: "parse_get_type", scope: !141, file: !141, line: 504, type: !386, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!386 = !DISubroutineType(types: !387)
!387 = !{!73, !294, !80}
!388 = !DILocalVariable(name: "ps", arg: 1, scope: !385, file: !141, line: 504, type: !294)
!389 = !DILocation(line: 504, column: 38, scope: !385)
!390 = !DILocalVariable(name: "flags", arg: 2, scope: !385, file: !141, line: 504, type: !80)
!391 = !DILocation(line: 504, column: 60, scope: !385)
!392 = !DILocation(line: 506, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !141, line: 506, column: 7)
!394 = !DILocation(line: 506, column: 13, scope: !393)
!395 = !DILocation(line: 506, column: 7, scope: !385)
!396 = !DILocation(line: 507, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !141, line: 507, column: 9)
!398 = distinct !DILexicalBlock(scope: !393, file: !141, line: 506, column: 36)
!399 = !DILocation(line: 507, column: 15, scope: !397)
!400 = !DILocation(line: 507, column: 9, scope: !398)
!401 = !DILocation(line: 508, column: 7, scope: !397)
!402 = !DILocation(line: 510, column: 7, scope: !397)
!403 = !DILocation(line: 512, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !141, line: 512, column: 9)
!405 = distinct !DILexicalBlock(scope: !393, file: !141, line: 511, column: 10)
!406 = !DILocation(line: 512, column: 15, scope: !404)
!407 = !DILocation(line: 512, column: 9, scope: !405)
!408 = !DILocation(line: 513, column: 7, scope: !404)
!409 = !DILocation(line: 515, column: 7, scope: !404)
!410 = !DILocation(line: 517, column: 1, scope: !385)
!411 = distinct !DISubprogram(name: "parsedb_open", scope: !141, file: !141, line: 544, type: !412, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!412 = !DISubroutineType(types: !413)
!413 = !{!294, !147, !80}
!414 = !DILocalVariable(name: "filename", arg: 1, scope: !411, file: !141, line: 544, type: !147)
!415 = !DILocation(line: 544, column: 26, scope: !411)
!416 = !DILocalVariable(name: "flags", arg: 2, scope: !411, file: !141, line: 544, type: !80)
!417 = !DILocation(line: 544, column: 54, scope: !411)
!418 = !DILocalVariable(name: "ps", scope: !411, file: !141, line: 546, type: !294)
!419 = !DILocation(line: 546, column: 25, scope: !411)
!420 = !DILocalVariable(name: "fd", scope: !411, file: !141, line: 547, type: !207)
!421 = !DILocation(line: 547, column: 7, scope: !411)
!422 = !DILocation(line: 550, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !411, file: !141, line: 550, column: 7)
!424 = !DILocation(line: 550, column: 13, scope: !423)
!425 = !DILocation(line: 550, column: 33, scope: !423)
!426 = !DILocation(line: 550, column: 43, scope: !427)
!427 = !DILexicalBlockFile(scope: !423, file: !141, discriminator: 1)
!428 = !DILocation(line: 550, column: 36, scope: !427)
!429 = !DILocation(line: 550, column: 58, scope: !427)
!430 = !DILocation(line: 550, column: 7, scope: !427)
!431 = !DILocation(line: 551, column: 24, scope: !423)
!432 = !DILocation(line: 551, column: 47, scope: !423)
!433 = !DILocation(line: 551, column: 12, scope: !423)
!434 = !DILocation(line: 551, column: 5, scope: !423)
!435 = !DILocation(line: 553, column: 13, scope: !411)
!436 = !DILocation(line: 553, column: 8, scope: !411)
!437 = !DILocation(line: 553, column: 6, scope: !411)
!438 = !DILocation(line: 554, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !411, file: !141, line: 554, column: 7)
!440 = !DILocation(line: 554, column: 10, scope: !439)
!441 = !DILocation(line: 554, column: 7, scope: !411)
!442 = !DILocation(line: 555, column: 12, scope: !439)
!443 = !DILocation(line: 556, column: 13, scope: !439)
!444 = !DILocation(line: 555, column: 5, scope: !445)
!445 = !DILexicalBlockFile(scope: !439, file: !141, discriminator: 1)
!446 = !DILocation(line: 555, column: 5, scope: !439)
!447 = !DILocation(line: 558, column: 20, scope: !411)
!448 = !DILocation(line: 558, column: 30, scope: !411)
!449 = !DILocation(line: 558, column: 34, scope: !411)
!450 = !DILocation(line: 558, column: 40, scope: !411)
!451 = !DILocation(line: 558, column: 8, scope: !411)
!452 = !DILocation(line: 558, column: 6, scope: !411)
!453 = !DILocation(line: 560, column: 52, scope: !411)
!454 = !DILocation(line: 560, column: 56, scope: !411)
!455 = !DILocation(line: 560, column: 3, scope: !411)
!456 = !DILocation(line: 562, column: 10, scope: !411)
!457 = !DILocation(line: 562, column: 3, scope: !411)
!458 = !DILocation(line: 563, column: 1, scope: !411)
!459 = distinct !DISubprogram(name: "parsedb_load", scope: !141, file: !141, line: 569, type: !460, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !294}
!462 = !DILocalVariable(name: "ps", arg: 1, scope: !459, file: !141, line: 569, type: !294)
!463 = !DILocation(line: 569, column: 36, scope: !459)
!464 = !DILocalVariable(name: "st", scope: !459, file: !141, line: 571, type: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !466, line: 46, size: 1152, align: 64, elements: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!467 = !{!468, !470, !472, !474, !476, !478, !480, !481, !482, !483, !485, !487, !495, !496, !497}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !465, file: !466, line: 48, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !289, line: 124, baseType: !138)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !465, file: !466, line: 53, baseType: !471, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !289, line: 127, baseType: !138)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !465, file: !466, line: 61, baseType: !473, size: 64, align: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !289, line: 130, baseType: !138)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !465, file: !466, line: 62, baseType: !475, size: 32, align: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !289, line: 129, baseType: !198)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !465, file: !466, line: 64, baseType: !477, size: 32, align: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !289, line: 125, baseType: !198)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !465, file: !466, line: 65, baseType: !479, size: 32, align: 32, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !289, line: 126, baseType: !198)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !465, file: !466, line: 67, baseType: !207, size: 32, align: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !465, file: !466, line: 69, baseType: !469, size: 64, align: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !465, file: !466, line: 74, baseType: !288, size: 64, align: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !465, file: !466, line: 78, baseType: !484, size: 64, align: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !289, line: 153, baseType: !290)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !465, file: !466, line: 80, baseType: !486, size: 64, align: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !289, line: 158, baseType: !290)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !465, file: !466, line: 91, baseType: !488, size: 128, align: 64, offset: 576)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !489, line: 120, size: 128, align: 64, elements: !490)
!489 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!490 = !{!491, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !488, file: !489, line: 122, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !289, line: 139, baseType: !290)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !488, file: !489, line: 123, baseType: !494, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !289, line: 175, baseType: !290)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !465, file: !466, line: 92, baseType: !488, size: 128, align: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !465, file: !466, line: 93, baseType: !488, size: 128, align: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !465, file: !466, line: 106, baseType: !498, size: 192, align: 64, offset: 960)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, align: 64, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 3)
!501 = !DILocation(line: 571, column: 15, scope: !459)
!502 = !DILocation(line: 573, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !459, file: !141, line: 573, column: 7)
!504 = !DILocation(line: 573, column: 17, scope: !503)
!505 = !DILocation(line: 573, column: 7, scope: !503)
!506 = !DILocation(line: 573, column: 26, scope: !503)
!507 = !DILocation(line: 573, column: 7, scope: !459)
!508 = !DILocation(line: 574, column: 12, scope: !503)
!509 = !DILocation(line: 574, column: 56, scope: !503)
!510 = !DILocation(line: 574, column: 60, scope: !503)
!511 = !DILocation(line: 574, column: 5, scope: !512)
!512 = !DILexicalBlockFile(scope: !503, file: !141, discriminator: 1)
!513 = !DILocation(line: 574, column: 5, scope: !503)
!514 = !DILocation(line: 576, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !459, file: !141, line: 576, column: 6)
!516 = !DILocation(line: 576, column: 20, scope: !515)
!517 = !DILocation(line: 576, column: 6, scope: !459)
!518 = !DILocalVariable(name: "buf", scope: !519, file: !141, line: 577, type: !321)
!519 = distinct !DILexicalBlock(scope: !515, file: !141, line: 576, column: 28)
!520 = !DILocation(line: 577, column: 19, scope: !519)
!521 = !DILocalVariable(name: "err", scope: !519, file: !141, line: 578, type: !300)
!522 = !DILocation(line: 578, column: 23, scope: !519)
!523 = !DILocalVariable(name: "size", scope: !519, file: !141, line: 579, type: !286)
!524 = !DILocation(line: 579, column: 11, scope: !519)
!525 = !DILocation(line: 581, column: 31, scope: !519)
!526 = !DILocation(line: 581, column: 35, scope: !519)
!527 = !DILocation(line: 581, column: 16, scope: !519)
!528 = !DILocation(line: 581, column: 12, scope: !519)
!529 = !DILocation(line: 581, column: 10, scope: !519)
!530 = !DILocation(line: 582, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !519, file: !141, line: 582, column: 9)
!532 = !DILocation(line: 582, column: 14, scope: !531)
!533 = !DILocation(line: 582, column: 9, scope: !519)
!534 = !DILocation(line: 583, column: 13, scope: !531)
!535 = !DILocation(line: 583, column: 54, scope: !531)
!536 = !DILocation(line: 583, column: 58, scope: !531)
!537 = !DILocation(line: 583, column: 72, scope: !531)
!538 = !DILocation(line: 583, column: 7, scope: !539)
!539 = !DILexicalBlockFile(scope: !531, file: !141, discriminator: 1)
!540 = !DILocation(line: 583, column: 7, scope: !531)
!541 = !DILocation(line: 585, column: 5, scope: !519)
!542 = !DILocation(line: 587, column: 19, scope: !519)
!543 = !DILocation(line: 587, column: 5, scope: !519)
!544 = !DILocation(line: 587, column: 9, scope: !519)
!545 = !DILocation(line: 587, column: 17, scope: !519)
!546 = !DILocation(line: 588, column: 18, scope: !519)
!547 = !DILocation(line: 588, column: 22, scope: !519)
!548 = !DILocation(line: 588, column: 32, scope: !519)
!549 = !DILocation(line: 588, column: 30, scope: !519)
!550 = !DILocation(line: 588, column: 5, scope: !519)
!551 = !DILocation(line: 588, column: 9, scope: !519)
!552 = !DILocation(line: 588, column: 16, scope: !519)
!553 = !DILocation(line: 589, column: 3, scope: !519)
!554 = !DILocation(line: 589, column: 17, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !141, discriminator: 1)
!556 = distinct !DILexicalBlock(scope: !515, file: !141, line: 589, column: 14)
!557 = !DILocation(line: 589, column: 25, scope: !555)
!558 = !DILocation(line: 589, column: 14, scope: !555)
!559 = !DILocation(line: 595, column: 31, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !141, line: 589, column: 30)
!561 = !DILocation(line: 595, column: 19, scope: !560)
!562 = !DILocation(line: 595, column: 5, scope: !560)
!563 = !DILocation(line: 595, column: 9, scope: !560)
!564 = !DILocation(line: 595, column: 17, scope: !560)
!565 = !DILocation(line: 597, column: 17, scope: !566)
!566 = distinct !DILexicalBlock(scope: !560, file: !141, line: 597, column: 9)
!567 = !DILocation(line: 597, column: 21, scope: !566)
!568 = !DILocation(line: 597, column: 25, scope: !566)
!569 = !DILocation(line: 597, column: 29, scope: !566)
!570 = !DILocation(line: 597, column: 41, scope: !566)
!571 = !DILocation(line: 597, column: 9, scope: !566)
!572 = !DILocation(line: 597, column: 50, scope: !566)
!573 = !DILocation(line: 597, column: 9, scope: !560)
!574 = !DILocation(line: 598, column: 14, scope: !566)
!575 = !DILocation(line: 598, column: 55, scope: !566)
!576 = !DILocation(line: 598, column: 59, scope: !566)
!577 = !DILocation(line: 598, column: 7, scope: !578)
!578 = !DILexicalBlockFile(scope: !566, file: !141, discriminator: 1)
!579 = !DILocation(line: 598, column: 7, scope: !566)
!580 = !DILocation(line: 600, column: 18, scope: !560)
!581 = !DILocation(line: 600, column: 22, scope: !560)
!582 = !DILocation(line: 600, column: 35, scope: !560)
!583 = !DILocation(line: 600, column: 30, scope: !560)
!584 = !DILocation(line: 600, column: 5, scope: !560)
!585 = !DILocation(line: 600, column: 9, scope: !560)
!586 = !DILocation(line: 600, column: 16, scope: !560)
!587 = !DILocation(line: 601, column: 3, scope: !560)
!588 = !DILocation(line: 602, column: 19, scope: !589)
!589 = distinct !DILexicalBlock(scope: !556, file: !141, line: 601, column: 10)
!590 = !DILocation(line: 602, column: 23, scope: !589)
!591 = !DILocation(line: 602, column: 30, scope: !589)
!592 = !DILocation(line: 602, column: 5, scope: !589)
!593 = !DILocation(line: 602, column: 9, scope: !589)
!594 = !DILocation(line: 602, column: 17, scope: !589)
!595 = !DILocation(line: 604, column: 14, scope: !459)
!596 = !DILocation(line: 604, column: 18, scope: !459)
!597 = !DILocation(line: 604, column: 3, scope: !459)
!598 = !DILocation(line: 604, column: 7, scope: !459)
!599 = !DILocation(line: 604, column: 12, scope: !459)
!600 = !DILocation(line: 605, column: 1, scope: !459)
!601 = distinct !DISubprogram(name: "parse_stanza", scope: !141, file: !141, line: 611, type: !602, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!602 = !DISubroutineType(types: !603)
!603 = !{!203, !294, !604, !614, !135}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_state", file: !74, line: 66, size: 448, align: 64, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fieldstart", scope: !605, file: !74, line: 67, baseType: !147, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "valuestart", scope: !605, file: !74, line: 68, baseType: !147, size: 64, align: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !74, line: 69, baseType: !321, size: 192, align: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fieldlen", scope: !605, file: !74, line: 70, baseType: !207, size: 32, align: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "valuelen", scope: !605, file: !74, line: 71, baseType: !207, size: 32, align: 32, offset: 352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fieldencountered", scope: !605, file: !74, line: 72, baseType: !613, size: 64, align: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "parse_field_func", file: !74, line: 86, baseType: !616)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !294, !604, !135}
!618 = !DILocalVariable(name: "ps", arg: 1, scope: !601, file: !141, line: 611, type: !294)
!619 = !DILocation(line: 611, column: 36, scope: !601)
!620 = !DILocalVariable(name: "fs", arg: 2, scope: !601, file: !141, line: 611, type: !604)
!621 = !DILocation(line: 611, column: 60, scope: !601)
!622 = !DILocalVariable(name: "parse_field", arg: 3, scope: !601, file: !141, line: 612, type: !614)
!623 = !DILocation(line: 612, column: 32, scope: !601)
!624 = !DILocalVariable(name: "parse_obj", arg: 4, scope: !601, file: !141, line: 612, type: !135)
!625 = !DILocation(line: 612, column: 51, scope: !601)
!626 = !DILocalVariable(name: "c", scope: !601, file: !141, line: 614, type: !207)
!627 = !DILocation(line: 614, column: 7, scope: !601)
!628 = !DILocation(line: 617, column: 3, scope: !601)
!629 = !DILocation(line: 617, column: 13, scope: !630)
!630 = !DILexicalBlockFile(scope: !601, file: !141, discriminator: 1)
!631 = !DILocation(line: 617, column: 18, scope: !630)
!632 = !DILocation(line: 617, column: 30, scope: !630)
!633 = !DILocation(line: 617, column: 35, scope: !630)
!634 = !DILocation(line: 617, column: 26, scope: !630)
!635 = !DILocation(line: 617, column: 10, scope: !630)
!636 = !DILocation(line: 617, column: 3, scope: !630)
!637 = !DILocation(line: 618, column: 11, scope: !638)
!638 = distinct !DILexicalBlock(scope: !601, file: !141, line: 617, column: 44)
!639 = !DILocation(line: 618, column: 16, scope: !638)
!640 = !DILocation(line: 618, column: 23, scope: !638)
!641 = !DILocation(line: 618, column: 9, scope: !638)
!642 = !DILocation(line: 618, column: 7, scope: !638)
!643 = !DILocation(line: 619, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !638, file: !141, line: 619, column: 9)
!645 = !DILocation(line: 619, column: 11, scope: !644)
!646 = !DILocation(line: 619, column: 19, scope: !644)
!647 = !DILocation(line: 619, column: 22, scope: !648)
!648 = !DILexicalBlockFile(scope: !644, file: !141, discriminator: 1)
!649 = !DILocation(line: 619, column: 24, scope: !648)
!650 = !DILocation(line: 619, column: 9, scope: !648)
!651 = !DILocation(line: 620, column: 7, scope: !644)
!652 = !DILocation(line: 621, column: 5, scope: !638)
!653 = !DILocation(line: 621, column: 9, scope: !638)
!654 = !DILocation(line: 621, column: 12, scope: !638)
!655 = !DILocation(line: 617, column: 3, scope: !656)
!656 = !DILexicalBlockFile(scope: !601, file: !141, discriminator: 2)
!657 = distinct !{!657, !628}
!658 = !DILocation(line: 625, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !601, file: !141, line: 625, column: 7)
!660 = !DILocation(line: 625, column: 14, scope: !659)
!661 = !DILocation(line: 625, column: 26, scope: !659)
!662 = !DILocation(line: 625, column: 31, scope: !659)
!663 = !DILocation(line: 625, column: 22, scope: !659)
!664 = !DILocation(line: 625, column: 7, scope: !601)
!665 = !DILocation(line: 626, column: 5, scope: !659)
!666 = !DILocation(line: 629, column: 3, scope: !601)
!667 = !DILocalVariable(name: "blank_line", scope: !668, file: !141, line: 630, type: !203)
!668 = distinct !DILexicalBlock(scope: !669, file: !141, line: 629, column: 12)
!669 = distinct !DILexicalBlock(scope: !670, file: !141, line: 629, column: 3)
!670 = distinct !DILexicalBlock(scope: !601, file: !141, line: 629, column: 3)
!671 = !DILocation(line: 630, column: 9, scope: !668)
!672 = !DILocation(line: 633, column: 22, scope: !668)
!673 = !DILocation(line: 633, column: 26, scope: !668)
!674 = !DILocation(line: 633, column: 34, scope: !668)
!675 = !DILocation(line: 633, column: 5, scope: !668)
!676 = !DILocation(line: 633, column: 9, scope: !668)
!677 = !DILocation(line: 633, column: 20, scope: !668)
!678 = !DILocation(line: 634, column: 5, scope: !668)
!679 = !DILocation(line: 634, column: 15, scope: !680)
!680 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 1)
!681 = !DILocation(line: 634, column: 20, scope: !680)
!682 = !DILocation(line: 634, column: 32, scope: !680)
!683 = !DILocation(line: 634, column: 37, scope: !680)
!684 = !DILocation(line: 634, column: 28, scope: !680)
!685 = !DILocation(line: 634, column: 45, scope: !680)
!686 = !DILocation(line: 634, column: 59, scope: !687)
!687 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 2)
!688 = !DILocation(line: 634, column: 49, scope: !687)
!689 = !DILocation(line: 634, column: 62, scope: !687)
!690 = !DILocation(line: 634, column: 65, scope: !691)
!691 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 3)
!692 = !DILocation(line: 634, column: 67, scope: !691)
!693 = !DILocation(line: 634, column: 74, scope: !691)
!694 = !DILocation(line: 634, column: 77, scope: !695)
!695 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 4)
!696 = !DILocation(line: 634, column: 79, scope: !695)
!697 = !DILocation(line: 634, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 5)
!699 = !DILocation(line: 635, column: 13, scope: !668)
!700 = !DILocation(line: 635, column: 18, scope: !668)
!701 = !DILocation(line: 635, column: 25, scope: !668)
!702 = !DILocation(line: 635, column: 11, scope: !668)
!703 = !DILocation(line: 635, column: 9, scope: !668)
!704 = !DILocation(line: 634, column: 5, scope: !705)
!705 = !DILexicalBlockFile(scope: !668, file: !141, discriminator: 6)
!706 = distinct !{!706, !678}
!707 = !DILocation(line: 636, column: 20, scope: !668)
!708 = !DILocation(line: 636, column: 24, scope: !668)
!709 = !DILocation(line: 636, column: 34, scope: !668)
!710 = !DILocation(line: 636, column: 38, scope: !668)
!711 = !DILocation(line: 636, column: 32, scope: !668)
!712 = !DILocation(line: 636, column: 49, scope: !668)
!713 = !DILocation(line: 636, column: 5, scope: !668)
!714 = !DILocation(line: 636, column: 9, scope: !668)
!715 = !DILocation(line: 636, column: 18, scope: !668)
!716 = !DILocation(line: 637, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !668, file: !141, line: 637, column: 9)
!718 = !DILocation(line: 637, column: 13, scope: !717)
!719 = !DILocation(line: 637, column: 22, scope: !717)
!720 = !DILocation(line: 637, column: 9, scope: !668)
!721 = !DILocation(line: 638, column: 19, scope: !717)
!722 = !DILocation(line: 638, column: 23, scope: !717)
!723 = !DILocation(line: 638, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !717, file: !141, discriminator: 1)
!725 = !DILocation(line: 638, column: 7, scope: !717)
!726 = !DILocation(line: 639, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !668, file: !141, line: 639, column: 9)
!728 = !DILocation(line: 639, column: 13, scope: !727)
!729 = !DILocation(line: 639, column: 27, scope: !727)
!730 = !DILocation(line: 639, column: 9, scope: !668)
!731 = !DILocation(line: 640, column: 19, scope: !727)
!732 = !DILocation(line: 640, column: 23, scope: !727)
!733 = !DILocation(line: 641, column: 19, scope: !727)
!734 = !DILocation(line: 641, column: 23, scope: !727)
!735 = !DILocation(line: 641, column: 33, scope: !727)
!736 = !DILocation(line: 641, column: 37, scope: !727)
!737 = !DILocation(line: 640, column: 7, scope: !738)
!738 = !DILexicalBlockFile(scope: !727, file: !141, discriminator: 1)
!739 = !DILocation(line: 640, column: 7, scope: !727)
!740 = !DILocation(line: 644, column: 5, scope: !668)
!741 = !DILocation(line: 644, column: 15, scope: !680)
!742 = !DILocation(line: 644, column: 20, scope: !680)
!743 = !DILocation(line: 644, column: 32, scope: !680)
!744 = !DILocation(line: 644, column: 37, scope: !680)
!745 = !DILocation(line: 644, column: 28, scope: !680)
!746 = !DILocation(line: 644, column: 45, scope: !680)
!747 = !DILocation(line: 644, column: 48, scope: !687)
!748 = !DILocation(line: 644, column: 50, scope: !687)
!749 = !DILocation(line: 644, column: 58, scope: !687)
!750 = !DILocation(line: 644, column: 71, scope: !691)
!751 = !DILocation(line: 644, column: 61, scope: !691)
!752 = !DILocation(line: 644, column: 5, scope: !695)
!753 = !DILocation(line: 645, column: 13, scope: !668)
!754 = !DILocation(line: 645, column: 18, scope: !668)
!755 = !DILocation(line: 645, column: 25, scope: !668)
!756 = !DILocation(line: 645, column: 11, scope: !668)
!757 = !DILocation(line: 645, column: 9, scope: !668)
!758 = !DILocation(line: 644, column: 5, scope: !698)
!759 = distinct !{!759, !740}
!760 = !DILocation(line: 648, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !668, file: !141, line: 648, column: 9)
!762 = !DILocation(line: 648, column: 16, scope: !761)
!763 = !DILocation(line: 648, column: 28, scope: !761)
!764 = !DILocation(line: 648, column: 33, scope: !761)
!765 = !DILocation(line: 648, column: 24, scope: !761)
!766 = !DILocation(line: 648, column: 9, scope: !668)
!767 = !DILocation(line: 649, column: 19, scope: !761)
!768 = !DILocation(line: 649, column: 22, scope: !761)
!769 = !DILocation(line: 650, column: 19, scope: !761)
!770 = !DILocation(line: 650, column: 23, scope: !761)
!771 = !DILocation(line: 650, column: 33, scope: !761)
!772 = !DILocation(line: 650, column: 37, scope: !761)
!773 = !DILocation(line: 649, column: 7, scope: !774)
!774 = !DILexicalBlockFile(scope: !761, file: !141, discriminator: 1)
!775 = !DILocation(line: 649, column: 7, scope: !761)
!776 = !DILocation(line: 651, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !668, file: !141, line: 651, column: 9)
!778 = !DILocation(line: 651, column: 11, scope: !777)
!779 = !DILocation(line: 651, column: 9, scope: !668)
!780 = !DILocation(line: 652, column: 19, scope: !777)
!781 = !DILocation(line: 653, column: 18, scope: !777)
!782 = !DILocation(line: 653, column: 53, scope: !777)
!783 = !DILocation(line: 653, column: 57, scope: !777)
!784 = !DILocation(line: 653, column: 67, scope: !777)
!785 = !DILocation(line: 653, column: 71, scope: !777)
!786 = !DILocation(line: 652, column: 7, scope: !777)
!787 = !DILocation(line: 654, column: 9, scope: !788)
!788 = distinct !DILexicalBlock(scope: !668, file: !141, line: 654, column: 9)
!789 = !DILocation(line: 654, column: 11, scope: !788)
!790 = !DILocation(line: 654, column: 9, scope: !668)
!791 = !DILocation(line: 655, column: 19, scope: !788)
!792 = !DILocation(line: 655, column: 22, scope: !788)
!793 = !DILocation(line: 656, column: 19, scope: !788)
!794 = !DILocation(line: 656, column: 23, scope: !788)
!795 = !DILocation(line: 656, column: 33, scope: !788)
!796 = !DILocation(line: 656, column: 37, scope: !788)
!797 = !DILocation(line: 655, column: 7, scope: !798)
!798 = !DILexicalBlockFile(scope: !788, file: !141, discriminator: 1)
!799 = !DILocation(line: 655, column: 7, scope: !788)
!800 = !DILocation(line: 657, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !668, file: !141, line: 657, column: 9)
!802 = !DILocation(line: 657, column: 11, scope: !801)
!803 = !DILocation(line: 657, column: 9, scope: !668)
!804 = !DILocation(line: 658, column: 19, scope: !801)
!805 = !DILocation(line: 659, column: 18, scope: !801)
!806 = !DILocation(line: 660, column: 19, scope: !801)
!807 = !DILocation(line: 660, column: 23, scope: !801)
!808 = !DILocation(line: 660, column: 33, scope: !801)
!809 = !DILocation(line: 660, column: 37, scope: !801)
!810 = !DILocation(line: 658, column: 7, scope: !801)
!811 = !DILocation(line: 663, column: 5, scope: !668)
!812 = !DILocation(line: 663, column: 15, scope: !680)
!813 = !DILocation(line: 663, column: 20, scope: !680)
!814 = !DILocation(line: 663, column: 32, scope: !680)
!815 = !DILocation(line: 663, column: 37, scope: !680)
!816 = !DILocation(line: 663, column: 28, scope: !680)
!817 = !DILocation(line: 663, column: 12, scope: !680)
!818 = !DILocation(line: 663, column: 5, scope: !680)
!819 = !DILocation(line: 664, column: 13, scope: !820)
!820 = distinct !DILexicalBlock(scope: !668, file: !141, line: 663, column: 46)
!821 = !DILocation(line: 664, column: 18, scope: !820)
!822 = !DILocation(line: 664, column: 25, scope: !820)
!823 = !DILocation(line: 664, column: 11, scope: !820)
!824 = !DILocation(line: 664, column: 9, scope: !820)
!825 = !DILocation(line: 665, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !820, file: !141, line: 665, column: 11)
!827 = !DILocation(line: 665, column: 13, scope: !826)
!828 = !DILocation(line: 665, column: 21, scope: !826)
!829 = !DILocation(line: 665, column: 35, scope: !830)
!830 = !DILexicalBlockFile(scope: !826, file: !141, discriminator: 1)
!831 = !DILocation(line: 665, column: 25, scope: !830)
!832 = !DILocation(line: 665, column: 11, scope: !830)
!833 = !DILocation(line: 666, column: 9, scope: !826)
!834 = !DILocation(line: 663, column: 5, scope: !687)
!835 = distinct !{!835, !811}
!836 = !DILocation(line: 668, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !668, file: !141, line: 668, column: 9)
!838 = !DILocation(line: 668, column: 16, scope: !837)
!839 = !DILocation(line: 668, column: 28, scope: !837)
!840 = !DILocation(line: 668, column: 33, scope: !837)
!841 = !DILocation(line: 668, column: 24, scope: !837)
!842 = !DILocation(line: 668, column: 9, scope: !668)
!843 = !DILocation(line: 669, column: 19, scope: !837)
!844 = !DILocation(line: 669, column: 22, scope: !837)
!845 = !DILocation(line: 670, column: 19, scope: !837)
!846 = !DILocation(line: 670, column: 23, scope: !837)
!847 = !DILocation(line: 670, column: 33, scope: !837)
!848 = !DILocation(line: 670, column: 37, scope: !837)
!849 = !DILocation(line: 669, column: 7, scope: !850)
!850 = !DILexicalBlockFile(scope: !837, file: !141, discriminator: 1)
!851 = !DILocation(line: 669, column: 7, scope: !837)
!852 = !DILocation(line: 671, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !668, file: !141, line: 671, column: 9)
!854 = !DILocation(line: 671, column: 11, scope: !853)
!855 = !DILocation(line: 671, column: 9, scope: !668)
!856 = !DILocation(line: 672, column: 19, scope: !853)
!857 = !DILocation(line: 672, column: 22, scope: !853)
!858 = !DILocation(line: 673, column: 19, scope: !853)
!859 = !DILocation(line: 673, column: 23, scope: !853)
!860 = !DILocation(line: 673, column: 33, scope: !853)
!861 = !DILocation(line: 673, column: 37, scope: !853)
!862 = !DILocation(line: 672, column: 7, scope: !863)
!863 = !DILexicalBlockFile(scope: !853, file: !141, discriminator: 1)
!864 = !DILocation(line: 672, column: 7, scope: !853)
!865 = !DILocation(line: 675, column: 16, scope: !668)
!866 = !DILocation(line: 678, column: 22, scope: !668)
!867 = !DILocation(line: 678, column: 26, scope: !668)
!868 = !DILocation(line: 678, column: 34, scope: !668)
!869 = !DILocation(line: 678, column: 5, scope: !668)
!870 = !DILocation(line: 678, column: 9, scope: !668)
!871 = !DILocation(line: 678, column: 20, scope: !668)
!872 = !DILocation(line: 679, column: 5, scope: !668)
!873 = !DILocation(line: 680, column: 11, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !141, line: 680, column: 11)
!875 = distinct !DILexicalBlock(scope: !876, file: !141, line: 679, column: 14)
!876 = distinct !DILexicalBlock(scope: !877, file: !141, line: 679, column: 5)
!877 = distinct !DILexicalBlock(scope: !668, file: !141, line: 679, column: 5)
!878 = !DILocation(line: 680, column: 13, scope: !874)
!879 = !DILocation(line: 680, column: 21, scope: !874)
!880 = !DILocation(line: 680, column: 24, scope: !881)
!881 = !DILexicalBlockFile(scope: !874, file: !141, discriminator: 1)
!882 = !DILocation(line: 680, column: 26, scope: !881)
!883 = !DILocation(line: 680, column: 11, scope: !881)
!884 = !DILocation(line: 681, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !141, line: 681, column: 13)
!886 = distinct !DILexicalBlock(scope: !874, file: !141, line: 680, column: 37)
!887 = !DILocation(line: 681, column: 13, scope: !886)
!888 = !DILocation(line: 682, column: 15, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !141, line: 682, column: 15)
!890 = distinct !DILexicalBlock(scope: !885, file: !141, line: 681, column: 25)
!891 = !DILocation(line: 682, column: 19, scope: !889)
!892 = !DILocation(line: 682, column: 25, scope: !889)
!893 = !DILocation(line: 682, column: 15, scope: !890)
!894 = !DILocation(line: 683, column: 24, scope: !889)
!895 = !DILocation(line: 683, column: 27, scope: !889)
!896 = !DILocation(line: 684, column: 24, scope: !889)
!897 = !DILocation(line: 684, column: 28, scope: !889)
!898 = !DILocation(line: 684, column: 38, scope: !889)
!899 = !DILocation(line: 684, column: 42, scope: !889)
!900 = !DILocation(line: 683, column: 13, scope: !901)
!901 = !DILexicalBlockFile(scope: !889, file: !141, discriminator: 1)
!902 = !DILocation(line: 683, column: 13, scope: !889)
!903 = !DILocation(line: 686, column: 25, scope: !889)
!904 = !DILocation(line: 686, column: 28, scope: !889)
!905 = !DILocation(line: 687, column: 25, scope: !889)
!906 = !DILocation(line: 687, column: 29, scope: !889)
!907 = !DILocation(line: 687, column: 39, scope: !889)
!908 = !DILocation(line: 687, column: 43, scope: !889)
!909 = !DILocation(line: 686, column: 13, scope: !901)
!910 = !DILocation(line: 686, column: 13, scope: !889)
!911 = !DILocation(line: 688, column: 9, scope: !890)
!912 = !DILocation(line: 689, column: 9, scope: !886)
!913 = !DILocation(line: 689, column: 13, scope: !886)
!914 = !DILocation(line: 689, column: 16, scope: !886)
!915 = !DILocation(line: 691, column: 15, scope: !916)
!916 = distinct !DILexicalBlock(scope: !886, file: !141, line: 691, column: 13)
!917 = !DILocation(line: 691, column: 20, scope: !916)
!918 = !DILocation(line: 691, column: 32, scope: !916)
!919 = !DILocation(line: 691, column: 37, scope: !916)
!920 = !DILocation(line: 691, column: 28, scope: !916)
!921 = !DILocation(line: 691, column: 13, scope: !886)
!922 = !DILocation(line: 692, column: 11, scope: !916)
!923 = !DILocation(line: 693, column: 15, scope: !886)
!924 = !DILocation(line: 693, column: 20, scope: !886)
!925 = !DILocation(line: 693, column: 27, scope: !886)
!926 = !DILocation(line: 693, column: 13, scope: !886)
!927 = !DILocation(line: 693, column: 11, scope: !886)
!928 = !DILocation(line: 696, column: 15, scope: !929)
!929 = distinct !DILexicalBlock(scope: !886, file: !141, line: 696, column: 13)
!930 = !DILocation(line: 696, column: 20, scope: !929)
!931 = !DILocation(line: 696, column: 32, scope: !929)
!932 = !DILocation(line: 696, column: 37, scope: !929)
!933 = !DILocation(line: 696, column: 28, scope: !929)
!934 = !DILocation(line: 696, column: 45, scope: !929)
!935 = !DILocation(line: 696, column: 48, scope: !936)
!936 = !DILexicalBlockFile(scope: !929, file: !141, discriminator: 1)
!937 = !DILocation(line: 696, column: 50, scope: !936)
!938 = !DILocation(line: 696, column: 58, scope: !936)
!939 = !DILocation(line: 696, column: 72, scope: !940)
!940 = !DILexicalBlockFile(scope: !929, file: !141, discriminator: 2)
!941 = !DILocation(line: 696, column: 62, scope: !940)
!942 = !DILocation(line: 696, column: 13, scope: !940)
!943 = !DILocation(line: 697, column: 11, scope: !929)
!944 = !DILocation(line: 699, column: 10, scope: !886)
!945 = !DILocation(line: 699, column: 15, scope: !886)
!946 = !DILocation(line: 699, column: 22, scope: !886)
!947 = !DILocation(line: 700, column: 20, scope: !886)
!948 = !DILocation(line: 701, column: 7, scope: !886)
!949 = !DILocation(line: 701, column: 18, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !141, discriminator: 1)
!951 = distinct !DILexicalBlock(scope: !874, file: !141, line: 701, column: 18)
!952 = !DILocation(line: 701, column: 29, scope: !950)
!953 = !DILocation(line: 701, column: 43, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !141, discriminator: 2)
!955 = !DILocation(line: 701, column: 33, scope: !954)
!956 = !DILocation(line: 701, column: 18, scope: !954)
!957 = !DILocation(line: 702, column: 20, scope: !958)
!958 = distinct !DILexicalBlock(scope: !951, file: !141, line: 701, column: 47)
!959 = !DILocation(line: 703, column: 7, scope: !958)
!960 = !DILocation(line: 705, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !875, file: !141, line: 705, column: 11)
!962 = !DILocation(line: 705, column: 18, scope: !961)
!963 = !DILocation(line: 705, column: 30, scope: !961)
!964 = !DILocation(line: 705, column: 35, scope: !961)
!965 = !DILocation(line: 705, column: 26, scope: !961)
!966 = !DILocation(line: 705, column: 11, scope: !875)
!967 = !DILocation(line: 706, column: 21, scope: !961)
!968 = !DILocation(line: 706, column: 24, scope: !961)
!969 = !DILocation(line: 707, column: 21, scope: !961)
!970 = !DILocation(line: 707, column: 25, scope: !961)
!971 = !DILocation(line: 707, column: 35, scope: !961)
!972 = !DILocation(line: 707, column: 39, scope: !961)
!973 = !DILocation(line: 706, column: 9, scope: !974)
!974 = !DILexicalBlockFile(scope: !961, file: !141, discriminator: 1)
!975 = !DILocation(line: 706, column: 9, scope: !961)
!976 = !DILocation(line: 709, column: 13, scope: !875)
!977 = !DILocation(line: 709, column: 18, scope: !875)
!978 = !DILocation(line: 709, column: 25, scope: !875)
!979 = !DILocation(line: 709, column: 11, scope: !875)
!980 = !DILocation(line: 709, column: 9, scope: !875)
!981 = !DILocation(line: 679, column: 5, scope: !982)
!982 = !DILexicalBlockFile(scope: !876, file: !141, discriminator: 1)
!983 = distinct !{!983, !872}
!984 = !DILocation(line: 711, column: 20, scope: !668)
!985 = !DILocation(line: 711, column: 24, scope: !668)
!986 = !DILocation(line: 711, column: 34, scope: !668)
!987 = !DILocation(line: 711, column: 38, scope: !668)
!988 = !DILocation(line: 711, column: 32, scope: !668)
!989 = !DILocation(line: 711, column: 49, scope: !668)
!990 = !DILocation(line: 711, column: 5, scope: !668)
!991 = !DILocation(line: 711, column: 9, scope: !668)
!992 = !DILocation(line: 711, column: 18, scope: !668)
!993 = !DILocation(line: 714, column: 5, scope: !668)
!994 = !DILocation(line: 714, column: 12, scope: !680)
!995 = !DILocation(line: 714, column: 16, scope: !680)
!996 = !DILocation(line: 714, column: 25, scope: !680)
!997 = !DILocation(line: 714, column: 40, scope: !687)
!998 = !DILocation(line: 714, column: 44, scope: !687)
!999 = !DILocation(line: 714, column: 57, scope: !687)
!1000 = !DILocation(line: 714, column: 61, scope: !687)
!1001 = !DILocation(line: 714, column: 55, scope: !687)
!1002 = !DILocation(line: 714, column: 70, scope: !687)
!1003 = !DILocation(line: 714, column: 38, scope: !687)
!1004 = !DILocation(line: 714, column: 28, scope: !687)
!1005 = !DILocation(line: 714, column: 5, scope: !691)
!1006 = !DILocation(line: 715, column: 7, scope: !668)
!1007 = !DILocation(line: 715, column: 11, scope: !668)
!1008 = !DILocation(line: 715, column: 19, scope: !668)
!1009 = !DILocation(line: 714, column: 5, scope: !695)
!1010 = distinct !{!1010, !993}
!1011 = !DILocation(line: 717, column: 5, scope: !668)
!1012 = !DILocation(line: 717, column: 17, scope: !668)
!1013 = !DILocation(line: 717, column: 21, scope: !668)
!1014 = !DILocation(line: 717, column: 25, scope: !668)
!1015 = !DILocation(line: 719, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !668, file: !141, line: 719, column: 9)
!1017 = !DILocation(line: 719, column: 16, scope: !1016)
!1018 = !DILocation(line: 719, column: 28, scope: !1016)
!1019 = !DILocation(line: 719, column: 33, scope: !1016)
!1020 = !DILocation(line: 719, column: 24, scope: !1016)
!1021 = !DILocation(line: 719, column: 41, scope: !1016)
!1022 = !DILocation(line: 719, column: 44, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1016, file: !141, discriminator: 1)
!1024 = !DILocation(line: 719, column: 46, scope: !1023)
!1025 = !DILocation(line: 719, column: 54, scope: !1023)
!1026 = !DILocation(line: 719, column: 57, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1016, file: !141, discriminator: 2)
!1028 = !DILocation(line: 719, column: 59, scope: !1027)
!1029 = !DILocation(line: 719, column: 9, scope: !1027)
!1030 = !DILocation(line: 720, column: 7, scope: !1016)
!1031 = !DILocation(line: 629, column: 3, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !669, file: !141, discriminator: 1)
!1033 = distinct !{!1033, !666}
!1034 = !DILocation(line: 723, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !601, file: !141, line: 723, column: 7)
!1036 = !DILocation(line: 723, column: 9, scope: !1035)
!1037 = !DILocation(line: 723, column: 7, scope: !601)
!1038 = !DILocation(line: 724, column: 5, scope: !1035)
!1039 = !DILocation(line: 724, column: 9, scope: !1035)
!1040 = !DILocation(line: 724, column: 12, scope: !1035)
!1041 = !DILocation(line: 726, column: 3, scope: !601)
!1042 = !DILocation(line: 727, column: 1, scope: !601)
!1043 = distinct !DISubprogram(name: "c_isspace", scope: !113, file: !113, line: 69, type: !1044, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!203, !207}
!1046 = !DILocalVariable(name: "c", arg: 1, scope: !1043, file: !113, line: 69, type: !207)
!1047 = !DILocation(line: 69, column: 15, scope: !1043)
!1048 = !DILocation(line: 71, column: 18, scope: !1043)
!1049 = !DILocation(line: 71, column: 9, scope: !1043)
!1050 = !DILocation(line: 71, column: 2, scope: !1043)
!1051 = distinct !DISubprogram(name: "parsedb_close", scope: !141, file: !141, line: 733, type: !460, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1052 = !DILocalVariable(name: "ps", arg: 1, scope: !1051, file: !141, line: 733, type: !294)
!1053 = !DILocation(line: 733, column: 37, scope: !1051)
!1054 = !DILocation(line: 735, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !141, line: 735, column: 7)
!1056 = !DILocation(line: 735, column: 11, scope: !1055)
!1057 = !DILocation(line: 735, column: 17, scope: !1055)
!1058 = !DILocation(line: 735, column: 7, scope: !1051)
!1059 = !DILocation(line: 736, column: 5, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !141, line: 735, column: 33)
!1061 = !DILocation(line: 738, column: 15, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1060, file: !141, line: 738, column: 9)
!1063 = !DILocation(line: 738, column: 19, scope: !1062)
!1064 = !DILocation(line: 738, column: 9, scope: !1062)
!1065 = !DILocation(line: 738, column: 9, scope: !1060)
!1066 = !DILocation(line: 739, column: 14, scope: !1062)
!1067 = !DILocation(line: 739, column: 57, scope: !1062)
!1068 = !DILocation(line: 739, column: 61, scope: !1062)
!1069 = !DILocation(line: 739, column: 7, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1062, file: !141, discriminator: 1)
!1071 = !DILocation(line: 739, column: 7, scope: !1062)
!1072 = !DILocation(line: 740, column: 3, scope: !1060)
!1073 = !DILocation(line: 742, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1051, file: !141, line: 742, column: 7)
!1075 = !DILocation(line: 742, column: 11, scope: !1074)
!1076 = !DILocation(line: 742, column: 16, scope: !1074)
!1077 = !DILocation(line: 742, column: 7, scope: !1051)
!1078 = !DILocation(line: 746, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !141, line: 742, column: 24)
!1080 = !DILocation(line: 746, column: 14, scope: !1079)
!1081 = !DILocation(line: 746, column: 5, scope: !1079)
!1082 = !DILocation(line: 748, column: 3, scope: !1079)
!1083 = !DILocation(line: 749, column: 8, scope: !1051)
!1084 = !DILocation(line: 749, column: 3, scope: !1051)
!1085 = !DILocation(line: 750, column: 1, scope: !1051)
!1086 = distinct !DISubprogram(name: "parsedb_parse", scope: !141, file: !141, line: 759, type: !1087, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!207, !294, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!1090 = !DILocalVariable(name: "ps", arg: 1, scope: !1086, file: !141, line: 759, type: !294)
!1091 = !DILocation(line: 759, column: 37, scope: !1086)
!1092 = !DILocalVariable(name: "donep", arg: 2, scope: !1086, file: !141, line: 759, type: !1089)
!1093 = !DILocation(line: 759, column: 58, scope: !1086)
!1094 = !DILocalVariable(name: "tmp_set", scope: !1086, file: !141, line: 761, type: !161)
!1095 = !DILocation(line: 761, column: 17, scope: !1086)
!1096 = !DILocalVariable(name: "new_pkg", scope: !1086, file: !141, line: 762, type: !156)
!1097 = !DILocation(line: 762, column: 19, scope: !1086)
!1098 = !DILocalVariable(name: "db_pkg", scope: !1086, file: !141, line: 762, type: !156)
!1099 = !DILocation(line: 762, column: 29, scope: !1086)
!1100 = !DILocalVariable(name: "new_pkgbin", scope: !1086, file: !141, line: 763, type: !293)
!1101 = !DILocation(line: 763, column: 18, scope: !1086)
!1102 = !DILocalVariable(name: "db_pkgbin", scope: !1086, file: !141, line: 763, type: !293)
!1103 = !DILocation(line: 763, column: 31, scope: !1086)
!1104 = !DILocalVariable(name: "pkg_obj", scope: !1086, file: !141, line: 764, type: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_parse_object", file: !141, line: 101, size: 128, align: 64, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1105, file: !141, line: 102, baseType: !156, size: 64, align: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pkgbin", scope: !1105, file: !141, line: 103, baseType: !293, size: 64, align: 64, offset: 64)
!1109 = !DILocation(line: 764, column: 27, scope: !1086)
!1110 = !DILocalVariable(name: "fieldencountered", scope: !1086, file: !141, line: 765, type: !1111)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1216, align: 32, elements: !332)
!1112 = !DILocation(line: 765, column: 7, scope: !1086)
!1113 = !DILocalVariable(name: "pdone", scope: !1086, file: !141, line: 766, type: !207)
!1114 = !DILocation(line: 766, column: 7, scope: !1086)
!1115 = !DILocalVariable(name: "fs", scope: !1086, file: !141, line: 767, type: !605)
!1116 = !DILocation(line: 767, column: 22, scope: !1086)
!1117 = !DILocation(line: 769, column: 3, scope: !1086)
!1118 = !DILocation(line: 770, column: 25, scope: !1086)
!1119 = !DILocation(line: 770, column: 6, scope: !1086)
!1120 = !DILocation(line: 770, column: 23, scope: !1086)
!1121 = !DILocation(line: 772, column: 22, scope: !1086)
!1122 = !DILocation(line: 772, column: 11, scope: !1086)
!1123 = !DILocation(line: 773, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1086, file: !141, line: 773, column: 7)
!1125 = !DILocation(line: 773, column: 11, scope: !1124)
!1126 = !DILocation(line: 773, column: 17, scope: !1124)
!1127 = !DILocation(line: 773, column: 7, scope: !1086)
!1128 = !DILocation(line: 774, column: 19, scope: !1124)
!1129 = !DILocation(line: 774, column: 28, scope: !1124)
!1130 = !DILocation(line: 774, column: 16, scope: !1124)
!1131 = !DILocation(line: 774, column: 5, scope: !1124)
!1132 = !DILocation(line: 776, column: 19, scope: !1124)
!1133 = !DILocation(line: 776, column: 28, scope: !1124)
!1134 = !DILocation(line: 776, column: 16, scope: !1124)
!1135 = !DILocation(line: 778, column: 13, scope: !1086)
!1136 = !DILocation(line: 778, column: 3, scope: !1086)
!1137 = !DILocation(line: 778, column: 7, scope: !1086)
!1138 = !DILocation(line: 778, column: 11, scope: !1086)
!1139 = !DILocation(line: 779, column: 16, scope: !1086)
!1140 = !DILocation(line: 779, column: 3, scope: !1086)
!1141 = !DILocation(line: 779, column: 7, scope: !1086)
!1142 = !DILocation(line: 779, column: 14, scope: !1086)
!1143 = !DILocation(line: 781, column: 17, scope: !1086)
!1144 = !DILocation(line: 781, column: 11, scope: !1086)
!1145 = !DILocation(line: 781, column: 15, scope: !1086)
!1146 = !DILocation(line: 782, column: 20, scope: !1086)
!1147 = !DILocation(line: 782, column: 11, scope: !1086)
!1148 = !DILocation(line: 782, column: 18, scope: !1086)
!1149 = !DILocation(line: 784, column: 8, scope: !1086)
!1150 = !DILocation(line: 787, column: 3, scope: !1086)
!1151 = !DILocation(line: 788, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !141, line: 787, column: 12)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !141, line: 787, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1086, file: !141, line: 787, column: 3)
!1155 = !DILocation(line: 789, column: 5, scope: !1152)
!1156 = !DILocation(line: 791, column: 23, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 791, column: 9)
!1158 = !DILocation(line: 791, column: 49, scope: !1157)
!1159 = !DILocation(line: 791, column: 10, scope: !1157)
!1160 = !DILocation(line: 791, column: 9, scope: !1152)
!1161 = !DILocation(line: 792, column: 7, scope: !1157)
!1162 = !DILocation(line: 794, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 794, column: 9)
!1164 = !DILocation(line: 794, column: 15, scope: !1163)
!1165 = !DILocation(line: 794, column: 18, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1163, file: !141, discriminator: 1)
!1167 = !DILocation(line: 794, column: 9, scope: !1166)
!1168 = !DILocation(line: 795, column: 19, scope: !1163)
!1169 = !DILocation(line: 796, column: 18, scope: !1163)
!1170 = !DILocation(line: 795, column: 7, scope: !1163)
!1171 = !DILocation(line: 798, column: 22, scope: !1152)
!1172 = !DILocation(line: 798, column: 26, scope: !1152)
!1173 = !DILocation(line: 798, column: 35, scope: !1152)
!1174 = !DILocation(line: 798, column: 5, scope: !1152)
!1175 = !DILocation(line: 800, column: 34, scope: !1152)
!1176 = !DILocation(line: 800, column: 38, scope: !1152)
!1177 = !DILocation(line: 800, column: 47, scope: !1152)
!1178 = !DILocation(line: 800, column: 14, scope: !1152)
!1179 = !DILocation(line: 800, column: 12, scope: !1152)
!1180 = !DILocation(line: 801, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 801, column: 9)
!1182 = !DILocation(line: 801, column: 13, scope: !1181)
!1183 = !DILocation(line: 801, column: 19, scope: !1181)
!1184 = !DILocation(line: 801, column: 9, scope: !1152)
!1185 = !DILocation(line: 802, column: 20, scope: !1181)
!1186 = !DILocation(line: 802, column: 28, scope: !1181)
!1187 = !DILocation(line: 802, column: 17, scope: !1181)
!1188 = !DILocation(line: 802, column: 7, scope: !1181)
!1189 = !DILocation(line: 804, column: 20, scope: !1181)
!1190 = !DILocation(line: 804, column: 28, scope: !1181)
!1191 = !DILocation(line: 804, column: 17, scope: !1181)
!1192 = !DILocation(line: 806, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 806, column: 9)
!1194 = !DILocation(line: 806, column: 15, scope: !1193)
!1195 = !DILocation(line: 806, column: 21, scope: !1193)
!1196 = !DILocation(line: 806, column: 40, scope: !1193)
!1197 = !DILocation(line: 806, column: 43, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1193, file: !141, discriminator: 1)
!1199 = !DILocation(line: 806, column: 47, scope: !1198)
!1200 = !DILocation(line: 806, column: 52, scope: !1198)
!1201 = !DILocation(line: 806, column: 75, scope: !1198)
!1202 = !DILocation(line: 807, column: 38, scope: !1193)
!1203 = !DILocation(line: 807, column: 49, scope: !1193)
!1204 = !DILocation(line: 807, column: 9, scope: !1193)
!1205 = !DILocation(line: 807, column: 58, scope: !1193)
!1206 = !DILocation(line: 808, column: 31, scope: !1193)
!1207 = !DILocation(line: 808, column: 43, scope: !1193)
!1208 = !DILocation(line: 808, column: 53, scope: !1193)
!1209 = !DILocation(line: 808, column: 64, scope: !1193)
!1210 = !DILocation(line: 808, column: 9, scope: !1193)
!1211 = !DILocation(line: 808, column: 73, scope: !1193)
!1212 = !DILocation(line: 806, column: 9, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1152, file: !141, discriminator: 2)
!1214 = !DILocation(line: 809, column: 7, scope: !1193)
!1215 = distinct !{!1215, !1150}
!1216 = !DILocation(line: 811, column: 20, scope: !1152)
!1217 = !DILocation(line: 811, column: 24, scope: !1152)
!1218 = !DILocation(line: 811, column: 32, scope: !1152)
!1219 = !DILocation(line: 811, column: 43, scope: !1152)
!1220 = !DILocation(line: 811, column: 52, scope: !1152)
!1221 = !DILocation(line: 811, column: 5, scope: !1152)
!1222 = !DILocation(line: 813, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 813, column: 9)
!1224 = !DILocation(line: 813, column: 9, scope: !1152)
!1225 = !DILocation(line: 814, column: 16, scope: !1223)
!1226 = !DILocation(line: 814, column: 8, scope: !1223)
!1227 = !DILocation(line: 814, column: 14, scope: !1223)
!1228 = !DILocation(line: 814, column: 7, scope: !1223)
!1229 = !DILocation(line: 815, column: 10, scope: !1152)
!1230 = !DILocation(line: 816, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1152, file: !141, line: 816, column: 9)
!1232 = !DILocation(line: 816, column: 16, scope: !1231)
!1233 = !DILocation(line: 816, column: 28, scope: !1231)
!1234 = !DILocation(line: 816, column: 33, scope: !1231)
!1235 = !DILocation(line: 816, column: 24, scope: !1231)
!1236 = !DILocation(line: 816, column: 9, scope: !1152)
!1237 = !DILocation(line: 817, column: 7, scope: !1231)
!1238 = !DILocation(line: 787, column: 3, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1153, file: !141, discriminator: 1)
!1240 = !DILocation(line: 820, column: 22, scope: !1086)
!1241 = !DILocation(line: 820, column: 3, scope: !1086)
!1242 = !DILocation(line: 821, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1086, file: !141, line: 821, column: 7)
!1244 = !DILocation(line: 821, column: 13, scope: !1243)
!1245 = !DILocation(line: 821, column: 17, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1243, file: !141, discriminator: 1)
!1247 = !DILocation(line: 821, column: 7, scope: !1246)
!1248 = !DILocation(line: 822, column: 11, scope: !1243)
!1249 = !DILocation(line: 822, column: 52, scope: !1243)
!1250 = !DILocation(line: 822, column: 56, scope: !1243)
!1251 = !DILocation(line: 822, column: 5, scope: !1246)
!1252 = !DILocation(line: 822, column: 5, scope: !1243)
!1253 = !DILocation(line: 824, column: 10, scope: !1086)
!1254 = !DILocation(line: 824, column: 3, scope: !1086)
!1255 = distinct !DISubprogram(name: "pkg_parse_field", scope: !141, file: !141, line: 110, type: !616, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1256 = !DILocalVariable(name: "ps", arg: 1, scope: !1255, file: !141, line: 110, type: !294)
!1257 = !DILocation(line: 110, column: 39, scope: !1255)
!1258 = !DILocalVariable(name: "fs", arg: 2, scope: !1255, file: !141, line: 110, type: !604)
!1259 = !DILocation(line: 110, column: 63, scope: !1255)
!1260 = !DILocalVariable(name: "parse_obj", arg: 3, scope: !1255, file: !141, line: 111, type: !135)
!1261 = !DILocation(line: 111, column: 23, scope: !1255)
!1262 = !DILocalVariable(name: "pkg_obj", scope: !1255, file: !141, line: 113, type: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64, align: 64)
!1264 = !DILocation(line: 113, column: 28, scope: !1255)
!1265 = !DILocation(line: 113, column: 38, scope: !1255)
!1266 = !DILocalVariable(name: "fip", scope: !1255, file: !141, line: 114, type: !314)
!1267 = !DILocation(line: 114, column: 27, scope: !1255)
!1268 = !DILocalVariable(name: "ip", scope: !1255, file: !141, line: 115, type: !613)
!1269 = !DILocation(line: 115, column: 8, scope: !1255)
!1270 = !DILocation(line: 117, column: 12, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1255, file: !141, line: 117, column: 3)
!1272 = !DILocation(line: 117, column: 31, scope: !1271)
!1273 = !DILocation(line: 117, column: 35, scope: !1271)
!1274 = !DILocation(line: 117, column: 29, scope: !1271)
!1275 = !DILocation(line: 117, column: 8, scope: !1271)
!1276 = !DILocation(line: 117, column: 53, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !141, discriminator: 1)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !141, line: 117, column: 3)
!1279 = !DILocation(line: 117, column: 58, scope: !1277)
!1280 = !DILocation(line: 117, column: 3, scope: !1277)
!1281 = !DILocation(line: 118, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !141, line: 118, column: 9)
!1283 = !DILocation(line: 118, column: 14, scope: !1282)
!1284 = !DILocation(line: 118, column: 33, scope: !1282)
!1285 = !DILocation(line: 118, column: 37, scope: !1282)
!1286 = !DILocation(line: 118, column: 25, scope: !1282)
!1287 = !DILocation(line: 118, column: 22, scope: !1282)
!1288 = !DILocation(line: 118, column: 46, scope: !1282)
!1289 = !DILocation(line: 119, column: 21, scope: !1282)
!1290 = !DILocation(line: 119, column: 26, scope: !1282)
!1291 = !DILocation(line: 119, column: 32, scope: !1282)
!1292 = !DILocation(line: 119, column: 36, scope: !1282)
!1293 = !DILocation(line: 119, column: 48, scope: !1282)
!1294 = !DILocation(line: 119, column: 52, scope: !1282)
!1295 = !DILocation(line: 119, column: 9, scope: !1282)
!1296 = !DILocation(line: 119, column: 62, scope: !1282)
!1297 = !DILocation(line: 118, column: 9, scope: !1277)
!1298 = !DILocation(line: 120, column: 7, scope: !1282)
!1299 = !DILocation(line: 119, column: 65, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1282, file: !141, discriminator: 1)
!1301 = !DILocation(line: 117, column: 67, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1278, file: !141, discriminator: 2)
!1303 = !DILocation(line: 117, column: 73, scope: !1302)
!1304 = !DILocation(line: 117, column: 3, scope: !1302)
!1305 = distinct !{!1305, !1306}
!1306 = !DILocation(line: 117, column: 3, scope: !1255)
!1307 = !DILocation(line: 121, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1255, file: !141, line: 121, column: 7)
!1309 = !DILocation(line: 121, column: 12, scope: !1308)
!1310 = !DILocation(line: 121, column: 7, scope: !1255)
!1311 = !DILocation(line: 122, column: 11, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !141, line: 122, column: 9)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !141, line: 121, column: 18)
!1314 = !DILocation(line: 122, column: 14, scope: !1312)
!1315 = !DILocation(line: 122, column: 9, scope: !1313)
!1316 = !DILocation(line: 123, column: 19, scope: !1312)
!1317 = !DILocation(line: 124, column: 18, scope: !1312)
!1318 = !DILocation(line: 124, column: 55, scope: !1312)
!1319 = !DILocation(line: 124, column: 60, scope: !1312)
!1320 = !DILocation(line: 123, column: 7, scope: !1312)
!1321 = !DILocation(line: 126, column: 19, scope: !1313)
!1322 = !DILocation(line: 126, column: 23, scope: !1313)
!1323 = !DILocation(line: 126, column: 5, scope: !1313)
!1324 = !DILocation(line: 127, column: 21, scope: !1313)
!1325 = !DILocation(line: 127, column: 25, scope: !1313)
!1326 = !DILocation(line: 127, column: 32, scope: !1313)
!1327 = !DILocation(line: 127, column: 36, scope: !1313)
!1328 = !DILocation(line: 127, column: 48, scope: !1313)
!1329 = !DILocation(line: 127, column: 52, scope: !1313)
!1330 = !DILocation(line: 127, column: 5, scope: !1313)
!1331 = !DILocation(line: 128, column: 21, scope: !1313)
!1332 = !DILocation(line: 128, column: 25, scope: !1313)
!1333 = !DILocation(line: 128, column: 5, scope: !1313)
!1334 = !DILocation(line: 130, column: 5, scope: !1313)
!1335 = !DILocation(line: 130, column: 10, scope: !1313)
!1336 = !DILocation(line: 130, column: 16, scope: !1313)
!1337 = !DILocation(line: 130, column: 25, scope: !1313)
!1338 = !DILocation(line: 130, column: 30, scope: !1313)
!1339 = !DILocation(line: 130, column: 39, scope: !1313)
!1340 = !DILocation(line: 130, column: 47, scope: !1313)
!1341 = !DILocation(line: 130, column: 51, scope: !1313)
!1342 = !DILocation(line: 130, column: 55, scope: !1313)
!1343 = !DILocation(line: 130, column: 61, scope: !1313)
!1344 = !DILocation(line: 130, column: 66, scope: !1313)
!1345 = !DILocation(line: 131, column: 3, scope: !1313)
!1346 = !DILocalVariable(name: "arp", scope: !1347, file: !141, line: 132, type: !240)
!1347 = distinct !DILexicalBlock(scope: !1308, file: !141, line: 131, column: 10)
!1348 = !DILocation(line: 132, column: 28, scope: !1347)
!1349 = !DILocalVariable(name: "larpp", scope: !1347, file: !141, line: 132, type: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!1351 = !DILocation(line: 132, column: 35, scope: !1347)
!1352 = !DILocation(line: 134, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1347, file: !141, line: 134, column: 9)
!1354 = !DILocation(line: 134, column: 13, scope: !1353)
!1355 = !DILocation(line: 134, column: 22, scope: !1353)
!1356 = !DILocation(line: 134, column: 9, scope: !1347)
!1357 = !DILocation(line: 135, column: 19, scope: !1353)
!1358 = !DILocation(line: 136, column: 18, scope: !1353)
!1359 = !DILocation(line: 137, column: 19, scope: !1353)
!1360 = !DILocation(line: 137, column: 23, scope: !1353)
!1361 = !DILocation(line: 137, column: 33, scope: !1353)
!1362 = !DILocation(line: 137, column: 37, scope: !1353)
!1363 = !DILocation(line: 135, column: 7, scope: !1353)
!1364 = !DILocation(line: 138, column: 14, scope: !1347)
!1365 = !DILocation(line: 138, column: 23, scope: !1347)
!1366 = !DILocation(line: 138, column: 31, scope: !1347)
!1367 = !DILocation(line: 138, column: 11, scope: !1347)
!1368 = !DILocation(line: 139, column: 5, scope: !1347)
!1369 = !DILocation(line: 139, column: 20, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 1)
!1371 = !DILocation(line: 139, column: 19, scope: !1370)
!1372 = !DILocation(line: 139, column: 17, scope: !1370)
!1373 = !DILocation(line: 139, column: 27, scope: !1370)
!1374 = !DILocation(line: 139, column: 5, scope: !1370)
!1375 = !DILocation(line: 140, column: 23, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !141, line: 140, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1347, file: !141, line: 139, column: 35)
!1378 = !DILocation(line: 140, column: 28, scope: !1376)
!1379 = !DILocation(line: 140, column: 34, scope: !1376)
!1380 = !DILocation(line: 140, column: 38, scope: !1376)
!1381 = !DILocation(line: 140, column: 50, scope: !1376)
!1382 = !DILocation(line: 140, column: 54, scope: !1376)
!1383 = !DILocation(line: 140, column: 11, scope: !1376)
!1384 = !DILocation(line: 140, column: 64, scope: !1376)
!1385 = !DILocation(line: 140, column: 69, scope: !1376)
!1386 = !DILocation(line: 141, column: 18, scope: !1376)
!1387 = !DILocation(line: 141, column: 23, scope: !1376)
!1388 = !DILocation(line: 141, column: 11, scope: !1376)
!1389 = !DILocation(line: 141, column: 40, scope: !1376)
!1390 = !DILocation(line: 141, column: 44, scope: !1376)
!1391 = !DILocation(line: 141, column: 32, scope: !1376)
!1392 = !DILocation(line: 141, column: 29, scope: !1376)
!1393 = !DILocation(line: 140, column: 11, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1377, file: !141, discriminator: 1)
!1395 = !DILocation(line: 142, column: 21, scope: !1376)
!1396 = !DILocation(line: 143, column: 19, scope: !1376)
!1397 = !DILocation(line: 144, column: 20, scope: !1376)
!1398 = !DILocation(line: 144, column: 24, scope: !1376)
!1399 = !DILocation(line: 144, column: 34, scope: !1376)
!1400 = !DILocation(line: 144, column: 38, scope: !1376)
!1401 = !DILocation(line: 142, column: 9, scope: !1376)
!1402 = !DILocation(line: 145, column: 16, scope: !1377)
!1403 = !DILocation(line: 145, column: 21, scope: !1377)
!1404 = !DILocation(line: 145, column: 13, scope: !1377)
!1405 = !DILocation(line: 139, column: 5, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 2)
!1407 = distinct !{!1407, !1368}
!1408 = !DILocation(line: 147, column: 11, scope: !1347)
!1409 = !DILocation(line: 147, column: 9, scope: !1347)
!1410 = !DILocation(line: 148, column: 28, scope: !1347)
!1411 = !DILocation(line: 148, column: 32, scope: !1347)
!1412 = !DILocation(line: 148, column: 44, scope: !1347)
!1413 = !DILocation(line: 148, column: 48, scope: !1347)
!1414 = !DILocation(line: 148, column: 17, scope: !1347)
!1415 = !DILocation(line: 148, column: 5, scope: !1347)
!1416 = !DILocation(line: 148, column: 10, scope: !1347)
!1417 = !DILocation(line: 148, column: 15, scope: !1347)
!1418 = !DILocation(line: 149, column: 29, scope: !1347)
!1419 = !DILocation(line: 149, column: 33, scope: !1347)
!1420 = !DILocation(line: 149, column: 45, scope: !1347)
!1421 = !DILocation(line: 149, column: 49, scope: !1347)
!1422 = !DILocation(line: 149, column: 18, scope: !1347)
!1423 = !DILocation(line: 149, column: 5, scope: !1347)
!1424 = !DILocation(line: 149, column: 10, scope: !1347)
!1425 = !DILocation(line: 149, column: 16, scope: !1347)
!1426 = !DILocation(line: 150, column: 5, scope: !1347)
!1427 = !DILocation(line: 150, column: 10, scope: !1347)
!1428 = !DILocation(line: 150, column: 15, scope: !1347)
!1429 = !DILocation(line: 151, column: 14, scope: !1347)
!1430 = !DILocation(line: 151, column: 6, scope: !1347)
!1431 = !DILocation(line: 151, column: 12, scope: !1347)
!1432 = !DILocation(line: 153, column: 1, scope: !1255)
!1433 = distinct !DISubprogram(name: "pkg_parse_verify", scope: !141, file: !141, line: 159, type: !1434, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !294, !156, !293}
!1436 = !DILocalVariable(name: "ps", arg: 1, scope: !1433, file: !141, line: 159, type: !294)
!1437 = !DILocation(line: 159, column: 40, scope: !1433)
!1438 = !DILocalVariable(name: "pkg", arg: 2, scope: !1433, file: !141, line: 160, type: !156)
!1439 = !DILocation(line: 160, column: 34, scope: !1433)
!1440 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !1433, file: !141, line: 160, type: !293)
!1441 = !DILocation(line: 160, column: 54, scope: !1433)
!1442 = !DILocalVariable(name: "dep", scope: !1433, file: !141, line: 162, type: !174)
!1443 = !DILocation(line: 162, column: 22, scope: !1433)
!1444 = !DILocalVariable(name: "dop", scope: !1433, file: !141, line: 163, type: !170)
!1445 = !DILocation(line: 163, column: 20, scope: !1433)
!1446 = !DILocation(line: 165, column: 25, scope: !1433)
!1447 = !DILocation(line: 165, column: 29, scope: !1433)
!1448 = !DILocation(line: 165, column: 34, scope: !1433)
!1449 = !DILocation(line: 165, column: 39, scope: !1433)
!1450 = !DILocation(line: 165, column: 3, scope: !1433)
!1451 = !DILocation(line: 171, column: 8, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 171, column: 7)
!1453 = !DILocation(line: 171, column: 12, scope: !1452)
!1454 = !DILocation(line: 171, column: 18, scope: !1452)
!1455 = !DILocation(line: 171, column: 41, scope: !1452)
!1456 = !DILocation(line: 172, column: 8, scope: !1452)
!1457 = !DILocation(line: 172, column: 13, scope: !1452)
!1458 = !DILocation(line: 172, column: 20, scope: !1452)
!1459 = !DILocation(line: 172, column: 45, scope: !1452)
!1460 = !DILocation(line: 173, column: 8, scope: !1452)
!1461 = !DILocation(line: 173, column: 13, scope: !1452)
!1462 = !DILocation(line: 173, column: 20, scope: !1452)
!1463 = !DILocation(line: 171, column: 7, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1433, file: !141, discriminator: 1)
!1465 = !DILocation(line: 174, column: 29, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !141, line: 173, column: 48)
!1467 = !DILocation(line: 174, column: 34, scope: !1466)
!1468 = !DILocation(line: 174, column: 42, scope: !1466)
!1469 = !DILocation(line: 174, column: 5, scope: !1466)
!1470 = !DILocation(line: 175, column: 29, scope: !1466)
!1471 = !DILocation(line: 175, column: 34, scope: !1466)
!1472 = !DILocation(line: 175, column: 42, scope: !1466)
!1473 = !DILocation(line: 175, column: 5, scope: !1466)
!1474 = !DILocation(line: 176, column: 27, scope: !1466)
!1475 = !DILocation(line: 176, column: 31, scope: !1466)
!1476 = !DILocation(line: 176, column: 39, scope: !1466)
!1477 = !DILocation(line: 176, column: 47, scope: !1466)
!1478 = !DILocation(line: 176, column: 5, scope: !1466)
!1479 = !DILocation(line: 177, column: 3, scope: !1466)
!1480 = !DILocation(line: 182, column: 8, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 182, column: 7)
!1482 = !DILocation(line: 182, column: 12, scope: !1481)
!1483 = !DILocation(line: 182, column: 18, scope: !1481)
!1484 = !DILocation(line: 182, column: 41, scope: !1481)
!1485 = !DILocation(line: 183, column: 7, scope: !1481)
!1486 = !DILocation(line: 183, column: 12, scope: !1481)
!1487 = !DILocation(line: 183, column: 19, scope: !1481)
!1488 = !DILocation(line: 182, column: 7, scope: !1464)
!1489 = !DILocation(line: 187, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !141, line: 187, column: 9)
!1491 = distinct !DILexicalBlock(scope: !1481, file: !141, line: 183, column: 45)
!1492 = !DILocation(line: 187, column: 17, scope: !1490)
!1493 = !DILocation(line: 187, column: 23, scope: !1490)
!1494 = !DILocation(line: 187, column: 28, scope: !1490)
!1495 = !DILocation(line: 187, column: 9, scope: !1491)
!1496 = !DILocation(line: 188, column: 18, scope: !1490)
!1497 = !DILocation(line: 188, column: 21, scope: !1490)
!1498 = !DILocation(line: 188, column: 7, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1490, file: !141, discriminator: 1)
!1500 = !DILocation(line: 188, column: 7, scope: !1490)
!1501 = !DILocation(line: 189, column: 14, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !141, line: 189, column: 14)
!1503 = !DILocation(line: 189, column: 22, scope: !1502)
!1504 = !DILocation(line: 189, column: 28, scope: !1502)
!1505 = !DILocation(line: 189, column: 33, scope: !1502)
!1506 = !DILocation(line: 189, column: 14, scope: !1490)
!1507 = !DILocation(line: 190, column: 18, scope: !1502)
!1508 = !DILocation(line: 190, column: 21, scope: !1502)
!1509 = !DILocation(line: 190, column: 7, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1502, file: !141, discriminator: 1)
!1511 = !DILocation(line: 190, column: 7, scope: !1502)
!1512 = !DILocation(line: 191, column: 3, scope: !1491)
!1513 = !DILocation(line: 194, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 194, column: 7)
!1515 = !DILocation(line: 194, column: 15, scope: !1514)
!1516 = !DILocation(line: 194, column: 21, scope: !1514)
!1517 = !DILocation(line: 194, column: 26, scope: !1514)
!1518 = !DILocation(line: 194, column: 7, scope: !1433)
!1519 = !DILocation(line: 195, column: 20, scope: !1514)
!1520 = !DILocation(line: 195, column: 5, scope: !1514)
!1521 = !DILocation(line: 195, column: 13, scope: !1514)
!1522 = !DILocation(line: 195, column: 18, scope: !1514)
!1523 = !DILocation(line: 197, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 197, column: 7)
!1525 = !DILocation(line: 197, column: 15, scope: !1524)
!1526 = !DILocation(line: 197, column: 21, scope: !1524)
!1527 = !DILocation(line: 197, column: 26, scope: !1524)
!1528 = !DILocation(line: 197, column: 45, scope: !1524)
!1529 = !DILocation(line: 198, column: 7, scope: !1524)
!1530 = !DILocation(line: 198, column: 15, scope: !1524)
!1531 = !DILocation(line: 198, column: 25, scope: !1524)
!1532 = !DILocation(line: 197, column: 7, scope: !1464)
!1533 = !DILocation(line: 199, column: 17, scope: !1524)
!1534 = !DILocation(line: 199, column: 20, scope: !1524)
!1535 = !DILocation(line: 199, column: 5, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1524, file: !141, discriminator: 1)
!1537 = !DILocation(line: 199, column: 5, scope: !1524)
!1538 = !DILocation(line: 201, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 201, column: 7)
!1540 = !DILocation(line: 201, column: 15, scope: !1539)
!1541 = !DILocation(line: 201, column: 21, scope: !1539)
!1542 = !DILocation(line: 201, column: 26, scope: !1539)
!1543 = !DILocation(line: 201, column: 43, scope: !1539)
!1544 = !DILocation(line: 202, column: 7, scope: !1539)
!1545 = !DILocation(line: 202, column: 15, scope: !1539)
!1546 = !DILocation(line: 202, column: 25, scope: !1539)
!1547 = !DILocation(line: 201, column: 7, scope: !1464)
!1548 = !DILocation(line: 203, column: 17, scope: !1539)
!1549 = !DILocation(line: 203, column: 20, scope: !1539)
!1550 = !DILocation(line: 203, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1539, file: !141, discriminator: 1)
!1552 = !DILocation(line: 203, column: 5, scope: !1539)
!1553 = !DILocation(line: 207, column: 51, scope: !1433)
!1554 = !DILocation(line: 207, column: 56, scope: !1433)
!1555 = !DILocation(line: 207, column: 30, scope: !1433)
!1556 = !DILocation(line: 207, column: 3, scope: !1433)
!1557 = !DILocation(line: 207, column: 11, scope: !1433)
!1558 = !DILocation(line: 207, column: 28, scope: !1433)
!1559 = !DILocation(line: 210, column: 14, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 210, column: 3)
!1561 = !DILocation(line: 210, column: 22, scope: !1560)
!1562 = !DILocation(line: 210, column: 12, scope: !1560)
!1563 = !DILocation(line: 210, column: 8, scope: !1560)
!1564 = !DILocation(line: 210, column: 31, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !141, discriminator: 1)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !141, line: 210, column: 3)
!1567 = !DILocation(line: 210, column: 3, scope: !1565)
!1568 = !DILocation(line: 211, column: 16, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !141, line: 211, column: 5)
!1570 = !DILocation(line: 211, column: 21, scope: !1569)
!1571 = !DILocation(line: 211, column: 14, scope: !1569)
!1572 = !DILocation(line: 211, column: 10, scope: !1569)
!1573 = !DILocation(line: 211, column: 27, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !141, discriminator: 1)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !141, line: 211, column: 5)
!1576 = !DILocation(line: 211, column: 5, scope: !1574)
!1577 = !DILocation(line: 212, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !141, line: 212, column: 11)
!1579 = !DILocation(line: 212, column: 17, scope: !1578)
!1580 = !DILocation(line: 212, column: 11, scope: !1575)
!1581 = !DILocation(line: 213, column: 21, scope: !1578)
!1582 = !DILocation(line: 213, column: 29, scope: !1578)
!1583 = !DILocation(line: 213, column: 9, scope: !1578)
!1584 = !DILocation(line: 213, column: 14, scope: !1578)
!1585 = !DILocation(line: 213, column: 19, scope: !1578)
!1586 = !DILocation(line: 212, column: 17, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1578, file: !141, discriminator: 1)
!1588 = !DILocation(line: 211, column: 38, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1575, file: !141, discriminator: 2)
!1590 = !DILocation(line: 211, column: 43, scope: !1589)
!1591 = !DILocation(line: 211, column: 36, scope: !1589)
!1592 = !DILocation(line: 211, column: 5, scope: !1589)
!1593 = distinct !{!1593, !1594}
!1594 = !DILocation(line: 211, column: 5, scope: !1566)
!1595 = !DILocation(line: 213, column: 29, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1569, file: !141, discriminator: 1)
!1597 = !DILocation(line: 210, column: 42, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1566, file: !141, discriminator: 2)
!1599 = !DILocation(line: 210, column: 47, scope: !1598)
!1600 = !DILocation(line: 210, column: 40, scope: !1598)
!1601 = !DILocation(line: 210, column: 3, scope: !1598)
!1602 = distinct !{!1602, !1603}
!1603 = !DILocation(line: 210, column: 3, scope: !1433)
!1604 = !DILocation(line: 223, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 223, column: 7)
!1606 = !DILocation(line: 223, column: 13, scope: !1605)
!1607 = !DILocation(line: 223, column: 19, scope: !1605)
!1608 = !DILocation(line: 223, column: 7, scope: !1433)
!1609 = !DILocation(line: 224, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !141, line: 224, column: 9)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !141, line: 223, column: 43)
!1612 = !DILocation(line: 224, column: 14, scope: !1610)
!1613 = !DILocation(line: 224, column: 28, scope: !1610)
!1614 = !DILocation(line: 224, column: 9, scope: !1611)
!1615 = !DILocation(line: 225, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !141, line: 225, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !141, line: 224, column: 37)
!1618 = !DILocation(line: 225, column: 16, scope: !1616)
!1619 = !DILocation(line: 225, column: 23, scope: !1616)
!1620 = !DILocation(line: 225, column: 45, scope: !1616)
!1621 = !DILocation(line: 226, column: 11, scope: !1616)
!1622 = !DILocation(line: 226, column: 16, scope: !1616)
!1623 = !DILocation(line: 226, column: 23, scope: !1616)
!1624 = !DILocation(line: 226, column: 48, scope: !1616)
!1625 = !DILocation(line: 227, column: 11, scope: !1616)
!1626 = !DILocation(line: 227, column: 16, scope: !1616)
!1627 = !DILocation(line: 227, column: 23, scope: !1616)
!1628 = !DILocation(line: 225, column: 11, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1617, file: !141, discriminator: 1)
!1630 = !DILocation(line: 228, column: 21, scope: !1616)
!1631 = !DILocation(line: 229, column: 20, scope: !1616)
!1632 = !DILocation(line: 228, column: 9, scope: !1616)
!1633 = !DILocation(line: 231, column: 5, scope: !1617)
!1634 = !DILocation(line: 232, column: 11, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !141, line: 232, column: 11)
!1636 = distinct !DILexicalBlock(scope: !1610, file: !141, line: 231, column: 12)
!1637 = !DILocation(line: 232, column: 16, scope: !1635)
!1638 = !DILocation(line: 232, column: 23, scope: !1635)
!1639 = !DILocation(line: 232, column: 45, scope: !1635)
!1640 = !DILocation(line: 233, column: 11, scope: !1635)
!1641 = !DILocation(line: 233, column: 16, scope: !1635)
!1642 = !DILocation(line: 233, column: 23, scope: !1635)
!1643 = !DILocation(line: 232, column: 11, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1636, file: !141, discriminator: 1)
!1645 = !DILocation(line: 234, column: 9, scope: !1635)
!1646 = !DILocation(line: 234, column: 14, scope: !1635)
!1647 = !DILocation(line: 234, column: 30, scope: !1635)
!1648 = !DILocation(line: 234, column: 38, scope: !1635)
!1649 = !DILocation(line: 236, column: 3, scope: !1611)
!1650 = !DILocation(line: 238, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 238, column: 7)
!1652 = !DILocation(line: 238, column: 12, scope: !1651)
!1653 = !DILocation(line: 238, column: 19, scope: !1651)
!1654 = !DILocation(line: 238, column: 24, scope: !1651)
!1655 = !DILocation(line: 239, column: 8, scope: !1651)
!1656 = !DILocation(line: 239, column: 13, scope: !1651)
!1657 = !DILocation(line: 239, column: 20, scope: !1651)
!1658 = !DILocation(line: 239, column: 44, scope: !1651)
!1659 = !DILocation(line: 240, column: 8, scope: !1651)
!1660 = !DILocation(line: 240, column: 13, scope: !1651)
!1661 = !DILocation(line: 240, column: 20, scope: !1651)
!1662 = !DILocation(line: 238, column: 7, scope: !1464)
!1663 = !DILocation(line: 241, column: 17, scope: !1651)
!1664 = !DILocation(line: 242, column: 16, scope: !1651)
!1665 = !DILocation(line: 243, column: 33, scope: !1651)
!1666 = !DILocation(line: 243, column: 17, scope: !1651)
!1667 = !DILocation(line: 241, column: 5, scope: !1651)
!1668 = !DILocation(line: 244, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1651, file: !141, line: 244, column: 12)
!1670 = !DILocation(line: 244, column: 17, scope: !1669)
!1671 = !DILocation(line: 244, column: 24, scope: !1669)
!1672 = !DILocation(line: 244, column: 52, scope: !1669)
!1673 = !DILocation(line: 244, column: 56, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1669, file: !141, discriminator: 1)
!1675 = !DILocation(line: 244, column: 61, scope: !1674)
!1676 = !DILocation(line: 244, column: 68, scope: !1674)
!1677 = !DILocation(line: 244, column: 12, scope: !1674)
!1678 = !DILocation(line: 245, column: 17, scope: !1669)
!1679 = !DILocation(line: 246, column: 16, scope: !1669)
!1680 = !DILocation(line: 247, column: 33, scope: !1669)
!1681 = !DILocation(line: 247, column: 17, scope: !1669)
!1682 = !DILocation(line: 245, column: 5, scope: !1669)
!1683 = !DILocation(line: 249, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 249, column: 7)
!1685 = !DILocation(line: 249, column: 12, scope: !1684)
!1686 = !DILocation(line: 249, column: 26, scope: !1684)
!1687 = !DILocation(line: 250, column: 9, scope: !1684)
!1688 = !DILocation(line: 250, column: 14, scope: !1684)
!1689 = !DILocation(line: 250, column: 21, scope: !1684)
!1690 = !DILocation(line: 250, column: 49, scope: !1684)
!1691 = !DILocation(line: 251, column: 9, scope: !1684)
!1692 = !DILocation(line: 251, column: 14, scope: !1684)
!1693 = !DILocation(line: 251, column: 21, scope: !1684)
!1694 = !DILocation(line: 249, column: 7, scope: !1464)
!1695 = !DILocation(line: 252, column: 17, scope: !1684)
!1696 = !DILocation(line: 253, column: 16, scope: !1684)
!1697 = !DILocation(line: 254, column: 33, scope: !1684)
!1698 = !DILocation(line: 254, column: 17, scope: !1684)
!1699 = !DILocation(line: 252, column: 5, scope: !1684)
!1700 = !DILocation(line: 255, column: 12, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1684, file: !141, line: 255, column: 12)
!1702 = !DILocation(line: 255, column: 17, scope: !1701)
!1703 = !DILocation(line: 255, column: 24, scope: !1701)
!1704 = !DILocation(line: 255, column: 52, scope: !1701)
!1705 = !DILocation(line: 255, column: 56, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1701, file: !141, discriminator: 1)
!1707 = !DILocation(line: 255, column: 61, scope: !1706)
!1708 = !DILocation(line: 255, column: 12, scope: !1706)
!1709 = !DILocation(line: 256, column: 17, scope: !1701)
!1710 = !DILocation(line: 257, column: 16, scope: !1701)
!1711 = !DILocation(line: 258, column: 33, scope: !1701)
!1712 = !DILocation(line: 258, column: 17, scope: !1701)
!1713 = !DILocation(line: 256, column: 5, scope: !1701)
!1714 = !DILocation(line: 263, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 263, column: 7)
!1716 = !DILocation(line: 263, column: 13, scope: !1715)
!1717 = !DILocation(line: 263, column: 19, scope: !1715)
!1718 = !DILocation(line: 263, column: 42, scope: !1715)
!1719 = !DILocation(line: 264, column: 7, scope: !1715)
!1720 = !DILocation(line: 264, column: 12, scope: !1715)
!1721 = !DILocation(line: 264, column: 19, scope: !1715)
!1722 = !DILocation(line: 264, column: 44, scope: !1715)
!1723 = !DILocation(line: 265, column: 7, scope: !1715)
!1724 = !DILocation(line: 265, column: 15, scope: !1715)
!1725 = !DILocation(line: 263, column: 7, scope: !1464)
!1726 = !DILocation(line: 266, column: 16, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1715, file: !141, line: 265, column: 26)
!1728 = !DILocation(line: 267, column: 15, scope: !1727)
!1729 = !DILocation(line: 268, column: 32, scope: !1727)
!1730 = !DILocation(line: 268, column: 16, scope: !1727)
!1731 = !DILocation(line: 266, column: 5, scope: !1727)
!1732 = !DILocation(line: 269, column: 5, scope: !1727)
!1733 = !DILocation(line: 269, column: 13, scope: !1727)
!1734 = !DILocation(line: 269, column: 23, scope: !1727)
!1735 = !DILocation(line: 270, column: 3, scope: !1727)
!1736 = !DILocation(line: 276, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 276, column: 7)
!1738 = !DILocation(line: 276, column: 13, scope: !1737)
!1739 = !DILocation(line: 276, column: 19, scope: !1737)
!1740 = !DILocation(line: 276, column: 42, scope: !1737)
!1741 = !DILocation(line: 277, column: 7, scope: !1737)
!1742 = !DILocation(line: 277, column: 12, scope: !1737)
!1743 = !DILocation(line: 277, column: 19, scope: !1737)
!1744 = !DILocation(line: 277, column: 44, scope: !1737)
!1745 = !DILocation(line: 278, column: 7, scope: !1737)
!1746 = !DILocation(line: 278, column: 12, scope: !1737)
!1747 = !DILocation(line: 278, column: 18, scope: !1737)
!1748 = !DILocation(line: 278, column: 34, scope: !1737)
!1749 = !DILocation(line: 279, column: 8, scope: !1737)
!1750 = !DILocation(line: 279, column: 13, scope: !1737)
!1751 = !DILocation(line: 279, column: 18, scope: !1737)
!1752 = !DILocation(line: 279, column: 36, scope: !1737)
!1753 = !DILocation(line: 280, column: 8, scope: !1737)
!1754 = !DILocation(line: 280, column: 13, scope: !1737)
!1755 = !DILocation(line: 280, column: 18, scope: !1737)
!1756 = !DILocation(line: 280, column: 40, scope: !1737)
!1757 = !DILocation(line: 281, column: 8, scope: !1737)
!1758 = !DILocation(line: 281, column: 13, scope: !1737)
!1759 = !DILocation(line: 281, column: 18, scope: !1737)
!1760 = !DILocation(line: 276, column: 7, scope: !1464)
!1761 = !DILocation(line: 282, column: 18, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1737, file: !141, line: 281, column: 37)
!1763 = !DILocation(line: 282, column: 5, scope: !1762)
!1764 = !DILocation(line: 283, column: 3, scope: !1762)
!1765 = !DILocation(line: 289, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 289, column: 7)
!1767 = !DILocation(line: 289, column: 11, scope: !1766)
!1768 = !DILocation(line: 289, column: 16, scope: !1766)
!1769 = !DILocation(line: 289, column: 35, scope: !1766)
!1770 = !DILocation(line: 290, column: 7, scope: !1766)
!1771 = !DILocation(line: 290, column: 12, scope: !1766)
!1772 = !DILocation(line: 290, column: 19, scope: !1766)
!1773 = !DILocation(line: 290, column: 44, scope: !1766)
!1774 = !DILocation(line: 291, column: 7, scope: !1766)
!1775 = !DILocation(line: 291, column: 12, scope: !1766)
!1776 = !DILocation(line: 291, column: 18, scope: !1766)
!1777 = !DILocation(line: 291, column: 34, scope: !1766)
!1778 = !DILocation(line: 292, column: 7, scope: !1766)
!1779 = !DILocation(line: 292, column: 12, scope: !1766)
!1780 = !DILocation(line: 292, column: 17, scope: !1766)
!1781 = !DILocation(line: 292, column: 37, scope: !1766)
!1782 = !DILocation(line: 293, column: 7, scope: !1766)
!1783 = !DILocation(line: 293, column: 15, scope: !1766)
!1784 = !DILocation(line: 293, column: 21, scope: !1766)
!1785 = !DILocation(line: 293, column: 26, scope: !1766)
!1786 = !DILocation(line: 289, column: 7, scope: !1464)
!1787 = !DILocation(line: 294, column: 18, scope: !1766)
!1788 = !DILocation(line: 294, column: 5, scope: !1766)
!1789 = !DILocation(line: 300, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1433, file: !141, line: 300, column: 7)
!1791 = !DILocation(line: 300, column: 13, scope: !1790)
!1792 = !DILocation(line: 300, column: 19, scope: !1790)
!1793 = !DILocation(line: 300, column: 42, scope: !1790)
!1794 = !DILocation(line: 301, column: 7, scope: !1790)
!1795 = !DILocation(line: 301, column: 12, scope: !1790)
!1796 = !DILocation(line: 301, column: 19, scope: !1790)
!1797 = !DILocation(line: 301, column: 44, scope: !1790)
!1798 = !DILocation(line: 302, column: 7, scope: !1790)
!1799 = !DILocation(line: 302, column: 12, scope: !1790)
!1800 = !DILocation(line: 302, column: 18, scope: !1790)
!1801 = !DILocation(line: 302, column: 34, scope: !1790)
!1802 = !DILocation(line: 303, column: 7, scope: !1790)
!1803 = !DILocation(line: 303, column: 12, scope: !1790)
!1804 = !DILocation(line: 303, column: 17, scope: !1790)
!1805 = !DILocation(line: 300, column: 7, scope: !1464)
!1806 = !DILocation(line: 304, column: 18, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1790, file: !141, line: 303, column: 38)
!1808 = !DILocation(line: 304, column: 5, scope: !1807)
!1809 = !DILocation(line: 305, column: 3, scope: !1807)
!1810 = !DILocation(line: 306, column: 1, scope: !1433)
!1811 = distinct !DISubprogram(name: "parse_find_pkg_slot", scope: !141, file: !141, line: 392, type: !1812, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!156, !294, !156, !293}
!1814 = !DILocalVariable(name: "ps", arg: 1, scope: !1811, file: !141, line: 392, type: !294)
!1815 = !DILocation(line: 392, column: 43, scope: !1811)
!1816 = !DILocalVariable(name: "new_pkg", arg: 2, scope: !1811, file: !141, line: 393, type: !156)
!1817 = !DILocation(line: 393, column: 37, scope: !1811)
!1818 = !DILocalVariable(name: "new_pkgbin", arg: 3, scope: !1811, file: !141, line: 393, type: !293)
!1819 = !DILocation(line: 393, column: 61, scope: !1811)
!1820 = !DILocalVariable(name: "db_set", scope: !1811, file: !141, line: 395, type: !160)
!1821 = !DILocation(line: 395, column: 18, scope: !1811)
!1822 = !DILocalVariable(name: "db_pkg", scope: !1811, file: !141, line: 396, type: !156)
!1823 = !DILocation(line: 396, column: 19, scope: !1811)
!1824 = !DILocation(line: 398, column: 32, scope: !1811)
!1825 = !DILocation(line: 398, column: 36, scope: !1811)
!1826 = !DILocation(line: 398, column: 45, scope: !1811)
!1827 = !DILocation(line: 398, column: 12, scope: !1811)
!1828 = !DILocation(line: 398, column: 10, scope: !1811)
!1829 = !DILocation(line: 400, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1811, file: !141, line: 400, column: 7)
!1831 = !DILocation(line: 400, column: 11, scope: !1830)
!1832 = !DILocation(line: 400, column: 16, scope: !1830)
!1833 = !DILocation(line: 400, column: 7, scope: !1811)
!1834 = !DILocation(line: 404, column: 36, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !141, line: 404, column: 9)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !141, line: 400, column: 39)
!1837 = !DILocation(line: 404, column: 9, scope: !1835)
!1838 = !DILocation(line: 404, column: 44, scope: !1835)
!1839 = !DILocation(line: 404, column: 49, scope: !1835)
!1840 = !DILocation(line: 405, column: 9, scope: !1835)
!1841 = !DILocation(line: 405, column: 21, scope: !1835)
!1842 = !DILocation(line: 405, column: 31, scope: !1835)
!1843 = !DILocation(line: 404, column: 9, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1836, file: !141, discriminator: 1)
!1845 = !DILocation(line: 406, column: 37, scope: !1835)
!1846 = !DILocation(line: 406, column: 14, scope: !1835)
!1847 = !DILocation(line: 406, column: 7, scope: !1835)
!1848 = !DILocation(line: 408, column: 31, scope: !1835)
!1849 = !DILocation(line: 408, column: 39, scope: !1835)
!1850 = !DILocation(line: 408, column: 51, scope: !1835)
!1851 = !DILocation(line: 408, column: 14, scope: !1835)
!1852 = !DILocation(line: 408, column: 7, scope: !1835)
!1853 = !DILocalVariable(name: "selection", scope: !1854, file: !141, line: 410, type: !203)
!1854 = distinct !DILexicalBlock(scope: !1830, file: !141, line: 409, column: 10)
!1855 = !DILocation(line: 410, column: 9, scope: !1854)
!1856 = !DILocation(line: 414, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !141, line: 414, column: 9)
!1858 = !DILocation(line: 414, column: 13, scope: !1857)
!1859 = !DILocation(line: 414, column: 18, scope: !1857)
!1860 = !DILocation(line: 414, column: 37, scope: !1857)
!1861 = !DILocation(line: 414, column: 40, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1857, file: !141, discriminator: 1)
!1863 = !DILocation(line: 414, column: 49, scope: !1862)
!1864 = !DILocation(line: 414, column: 56, scope: !1862)
!1865 = !DILocation(line: 414, column: 9, scope: !1862)
!1866 = !DILocation(line: 415, column: 17, scope: !1857)
!1867 = !DILocation(line: 415, column: 7, scope: !1857)
!1868 = !DILocation(line: 418, column: 36, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1854, file: !141, line: 418, column: 9)
!1870 = !DILocation(line: 418, column: 9, scope: !1869)
!1871 = !DILocation(line: 418, column: 44, scope: !1869)
!1872 = !DILocation(line: 418, column: 48, scope: !1869)
!1873 = !DILocation(line: 419, column: 10, scope: !1869)
!1874 = !DILocation(line: 419, column: 20, scope: !1869)
!1875 = !DILocation(line: 419, column: 23, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1869, file: !141, discriminator: 1)
!1877 = !DILocation(line: 419, column: 35, scope: !1876)
!1878 = !DILocation(line: 419, column: 45, scope: !1876)
!1879 = !DILocation(line: 418, column: 9, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1854, file: !141, discriminator: 1)
!1881 = !DILocation(line: 420, column: 13, scope: !1869)
!1882 = !DILocation(line: 422, column: 26, scope: !1869)
!1883 = !DILocation(line: 422, column: 35, scope: !1869)
!1884 = !DILocation(line: 422, column: 14, scope: !1869)
!1885 = !DILocation(line: 423, column: 31, scope: !1869)
!1886 = !DILocation(line: 423, column: 43, scope: !1869)
!1887 = !DILocation(line: 423, column: 14, scope: !1869)
!1888 = !DILocation(line: 424, column: 43, scope: !1869)
!1889 = !DILocation(line: 424, column: 55, scope: !1869)
!1890 = !DILocation(line: 424, column: 28, scope: !1869)
!1891 = !DILocation(line: 424, column: 66, scope: !1869)
!1892 = !DILocation(line: 425, column: 14, scope: !1869)
!1893 = !DILocation(line: 425, column: 22, scope: !1869)
!1894 = !DILocation(line: 420, column: 7, scope: !1876)
!1895 = !DILocation(line: 420, column: 7, scope: !1869)
!1896 = !DILocation(line: 428, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1854, file: !141, line: 428, column: 9)
!1898 = !DILocation(line: 428, column: 13, scope: !1897)
!1899 = !DILocation(line: 428, column: 18, scope: !1897)
!1900 = !DILocation(line: 428, column: 9, scope: !1854)
!1901 = !DILocation(line: 429, column: 31, scope: !1897)
!1902 = !DILocation(line: 429, column: 39, scope: !1897)
!1903 = !DILocation(line: 429, column: 51, scope: !1897)
!1904 = !DILocation(line: 429, column: 14, scope: !1897)
!1905 = !DILocation(line: 429, column: 7, scope: !1897)
!1906 = !DILocation(line: 433, column: 36, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1854, file: !141, line: 433, column: 9)
!1908 = !DILocation(line: 433, column: 9, scope: !1907)
!1909 = !DILocation(line: 433, column: 44, scope: !1907)
!1910 = !DILocation(line: 433, column: 9, scope: !1854)
!1911 = !DILocation(line: 434, column: 39, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !141, line: 433, column: 50)
!1913 = !DILocation(line: 434, column: 16, scope: !1912)
!1914 = !DILocation(line: 434, column: 14, scope: !1912)
!1915 = !DILocation(line: 436, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !141, line: 436, column: 11)
!1917 = !DILocation(line: 436, column: 19, scope: !1916)
!1918 = !DILocation(line: 436, column: 29, scope: !1916)
!1919 = !DILocation(line: 436, column: 39, scope: !1916)
!1920 = !DILocation(line: 436, column: 61, scope: !1916)
!1921 = !DILocation(line: 437, column: 11, scope: !1916)
!1922 = !DILocation(line: 437, column: 23, scope: !1916)
!1923 = !DILocation(line: 437, column: 33, scope: !1916)
!1924 = !DILocation(line: 436, column: 11, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1912, file: !141, discriminator: 1)
!1926 = !DILocation(line: 438, column: 33, scope: !1916)
!1927 = !DILocation(line: 438, column: 41, scope: !1916)
!1928 = !DILocation(line: 438, column: 53, scope: !1916)
!1929 = !DILocation(line: 438, column: 16, scope: !1916)
!1930 = !DILocation(line: 438, column: 9, scope: !1916)
!1931 = !DILocation(line: 440, column: 16, scope: !1916)
!1932 = !DILocation(line: 440, column: 9, scope: !1916)
!1933 = !DILocation(line: 442, column: 31, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1907, file: !141, line: 441, column: 12)
!1935 = !DILocation(line: 442, column: 39, scope: !1934)
!1936 = !DILocation(line: 442, column: 51, scope: !1934)
!1937 = !DILocation(line: 442, column: 14, scope: !1934)
!1938 = !DILocation(line: 442, column: 7, scope: !1934)
!1939 = !DILocation(line: 445, column: 1, scope: !1811)
!1940 = distinct !DISubprogram(name: "pkg_parse_copy", scope: !141, file: !141, line: 451, type: !1941, isLocal: true, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !294, !156, !293, !156, !293}
!1943 = !DILocalVariable(name: "ps", arg: 1, scope: !1940, file: !141, line: 451, type: !294)
!1944 = !DILocation(line: 451, column: 38, scope: !1940)
!1945 = !DILocalVariable(name: "dst_pkg", arg: 2, scope: !1940, file: !141, line: 452, type: !156)
!1946 = !DILocation(line: 452, column: 32, scope: !1940)
!1947 = !DILocalVariable(name: "dst_pkgbin", arg: 3, scope: !1940, file: !141, line: 452, type: !293)
!1948 = !DILocation(line: 452, column: 56, scope: !1940)
!1949 = !DILocalVariable(name: "src_pkg", arg: 4, scope: !1940, file: !141, line: 453, type: !156)
!1950 = !DILocation(line: 453, column: 32, scope: !1940)
!1951 = !DILocalVariable(name: "src_pkgbin", arg: 5, scope: !1940, file: !141, line: 453, type: !293)
!1952 = !DILocation(line: 453, column: 56, scope: !1940)
!1953 = !DILocation(line: 457, column: 18, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1940, file: !141, line: 457, column: 7)
!1955 = !DILocation(line: 457, column: 27, scope: !1954)
!1956 = !DILocation(line: 457, column: 7, scope: !1954)
!1957 = !DILocation(line: 457, column: 36, scope: !1954)
!1958 = !DILocation(line: 458, column: 10, scope: !1954)
!1959 = !DILocation(line: 458, column: 14, scope: !1954)
!1960 = !DILocation(line: 458, column: 20, scope: !1954)
!1961 = !DILocation(line: 458, column: 46, scope: !1954)
!1962 = !DILocation(line: 459, column: 20, scope: !1954)
!1963 = !DILocation(line: 459, column: 29, scope: !1954)
!1964 = !DILocation(line: 459, column: 9, scope: !1954)
!1965 = !DILocation(line: 457, column: 7, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1940, file: !141, discriminator: 1)
!1967 = !DILocation(line: 460, column: 24, scope: !1954)
!1968 = !DILocation(line: 460, column: 33, scope: !1954)
!1969 = !DILocation(line: 460, column: 5, scope: !1954)
!1970 = !DILocation(line: 460, column: 14, scope: !1954)
!1971 = !DILocation(line: 460, column: 22, scope: !1954)
!1972 = !DILocation(line: 461, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1940, file: !141, line: 461, column: 7)
!1974 = !DILocation(line: 461, column: 16, scope: !1973)
!1975 = !DILocation(line: 461, column: 25, scope: !1973)
!1976 = !DILocation(line: 461, column: 45, scope: !1973)
!1977 = !DILocation(line: 462, column: 10, scope: !1973)
!1978 = !DILocation(line: 462, column: 14, scope: !1973)
!1979 = !DILocation(line: 462, column: 20, scope: !1973)
!1980 = !DILocation(line: 462, column: 46, scope: !1973)
!1981 = !DILocation(line: 463, column: 9, scope: !1973)
!1982 = !DILocation(line: 463, column: 18, scope: !1973)
!1983 = !DILocation(line: 463, column: 27, scope: !1973)
!1984 = !DILocation(line: 461, column: 7, scope: !1966)
!1985 = !DILocation(line: 464, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1973, file: !141, line: 463, column: 49)
!1987 = !DILocation(line: 464, column: 34, scope: !1986)
!1988 = !DILocation(line: 464, column: 5, scope: !1986)
!1989 = !DILocation(line: 464, column: 14, scope: !1986)
!1990 = !DILocation(line: 464, column: 23, scope: !1986)
!1991 = !DILocation(line: 465, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !141, line: 465, column: 9)
!1993 = !DILocation(line: 465, column: 18, scope: !1992)
!1994 = !DILocation(line: 465, column: 27, scope: !1992)
!1995 = !DILocation(line: 465, column: 9, scope: !1986)
!1996 = !DILocation(line: 466, column: 32, scope: !1992)
!1997 = !DILocation(line: 466, column: 41, scope: !1992)
!1998 = !DILocation(line: 466, column: 7, scope: !1992)
!1999 = !DILocation(line: 466, column: 16, scope: !1992)
!2000 = !DILocation(line: 466, column: 30, scope: !1992)
!2001 = !DILocation(line: 467, column: 3, scope: !1986)
!2002 = !DILocation(line: 470, column: 25, scope: !1940)
!2003 = !DILocation(line: 470, column: 35, scope: !1940)
!2004 = !DILocation(line: 470, column: 47, scope: !1940)
!2005 = !DILocation(line: 470, column: 56, scope: !1940)
!2006 = !DILocation(line: 470, column: 68, scope: !1940)
!2007 = !DILocation(line: 471, column: 26, scope: !1940)
!2008 = !DILocation(line: 471, column: 30, scope: !1940)
!2009 = !DILocation(line: 471, column: 36, scope: !1940)
!2010 = !DILocation(line: 471, column: 25, scope: !1940)
!2011 = !DILocation(line: 470, column: 3, scope: !1940)
!2012 = !DILocation(line: 474, column: 10, scope: !1940)
!2013 = !DILocation(line: 474, column: 3, scope: !1940)
!2014 = !DILocation(line: 474, column: 22, scope: !1940)
!2015 = !DILocation(line: 475, column: 9, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1940, file: !141, line: 475, column: 7)
!2017 = !DILocation(line: 475, column: 13, scope: !2016)
!2018 = !DILocation(line: 475, column: 19, scope: !2016)
!2019 = !DILocation(line: 475, column: 7, scope: !1940)
!2020 = !DILocalVariable(name: "ta", scope: !2021, file: !141, line: 476, type: !263)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !141, line: 475, column: 43)
!2022 = !DILocation(line: 476, column: 20, scope: !2021)
!2023 = !DILocation(line: 478, column: 18, scope: !2021)
!2024 = !DILocation(line: 478, column: 27, scope: !2021)
!2025 = !DILocation(line: 478, column: 36, scope: !2021)
!2026 = !DILocation(line: 478, column: 5, scope: !2021)
!2027 = !DILocation(line: 479, column: 21, scope: !2021)
!2028 = !DILocation(line: 479, column: 30, scope: !2021)
!2029 = !DILocation(line: 479, column: 5, scope: !2021)
!2030 = !DILocation(line: 480, column: 20, scope: !2021)
!2031 = !DILocation(line: 480, column: 29, scope: !2021)
!2032 = !DILocation(line: 480, column: 38, scope: !2021)
!2033 = !DILocation(line: 480, column: 5, scope: !2021)
!2034 = !DILocation(line: 481, column: 5, scope: !2021)
!2035 = !DILocation(line: 481, column: 14, scope: !2021)
!2036 = !DILocation(line: 481, column: 30, scope: !2021)
!2037 = !DILocation(line: 481, column: 39, scope: !2021)
!2038 = !DILocation(line: 482, column: 5, scope: !2021)
!2039 = !DILocation(line: 482, column: 14, scope: !2021)
!2040 = !DILocation(line: 482, column: 23, scope: !2021)
!2041 = !DILocation(line: 484, column: 30, scope: !2021)
!2042 = !DILocation(line: 484, column: 39, scope: !2021)
!2043 = !DILocation(line: 484, column: 5, scope: !2021)
!2044 = !DILocation(line: 484, column: 14, scope: !2021)
!2045 = !DILocation(line: 484, column: 28, scope: !2021)
!2046 = !DILocation(line: 485, column: 5, scope: !2021)
!2047 = !DILocation(line: 485, column: 14, scope: !2021)
!2048 = !DILocation(line: 485, column: 23, scope: !2021)
!2049 = !DILocation(line: 485, column: 32, scope: !2021)
!2050 = !DILocation(line: 486, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2021, file: !141, line: 486, column: 5)
!2052 = !DILocation(line: 486, column: 24, scope: !2051)
!2053 = !DILocation(line: 486, column: 31, scope: !2051)
!2054 = !DILocation(line: 486, column: 13, scope: !2051)
!2055 = !DILocation(line: 486, column: 10, scope: !2051)
!2056 = !DILocation(line: 486, column: 37, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2058, file: !141, discriminator: 1)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !141, line: 486, column: 5)
!2059 = !DILocation(line: 486, column: 5, scope: !2057)
!2060 = !DILocation(line: 487, column: 11, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !141, line: 487, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !141, line: 486, column: 63)
!2063 = !DILocation(line: 487, column: 15, scope: !2061)
!2064 = !DILocation(line: 487, column: 21, scope: !2061)
!2065 = !DILocation(line: 487, column: 18, scope: !2061)
!2066 = !DILocation(line: 487, column: 11, scope: !2062)
!2067 = !DILocation(line: 488, column: 102, scope: !2061)
!2068 = !DILocation(line: 488, column: 106, scope: !2061)
!2069 = !DILocation(line: 488, column: 93, scope: !2061)
!2070 = !DILocation(line: 488, column: 136, scope: !2061)
!2071 = !DILocation(line: 488, column: 145, scope: !2061)
!2072 = !DILocation(line: 488, column: 124, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2061, file: !141, discriminator: 1)
!2074 = !DILocation(line: 488, column: 9, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2061, file: !141, discriminator: 2)
!2076 = !DILocation(line: 488, column: 9, scope: !2061)
!2077 = !DILocation(line: 491, column: 16, scope: !2062)
!2078 = !DILocation(line: 491, column: 7, scope: !2062)
!2079 = !DILocation(line: 491, column: 11, scope: !2062)
!2080 = !DILocation(line: 491, column: 14, scope: !2062)
!2081 = !DILocation(line: 494, column: 5, scope: !2062)
!2082 = !DILocation(line: 486, column: 46, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2058, file: !141, discriminator: 2)
!2084 = !DILocation(line: 486, column: 50, scope: !2083)
!2085 = !DILocation(line: 486, column: 57, scope: !2083)
!2086 = !DILocation(line: 486, column: 44, scope: !2083)
!2087 = !DILocation(line: 486, column: 5, scope: !2083)
!2088 = distinct !{!2088, !2089}
!2089 = !DILocation(line: 486, column: 5, scope: !2021)
!2090 = !DILocation(line: 495, column: 3, scope: !2021)
!2091 = !DILocation(line: 495, column: 16, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2093, file: !141, discriminator: 1)
!2093 = distinct !DILexicalBlock(scope: !2016, file: !141, line: 495, column: 14)
!2094 = !DILocation(line: 495, column: 20, scope: !2092)
!2095 = !DILocation(line: 495, column: 26, scope: !2092)
!2096 = !DILocation(line: 495, column: 14, scope: !2092)
!2097 = !DILocation(line: 496, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2093, file: !141, line: 495, column: 50)
!2099 = !DILocation(line: 496, column: 34, scope: !2098)
!2100 = !DILocation(line: 496, column: 5, scope: !2098)
!2101 = !DILocation(line: 496, column: 14, scope: !2098)
!2102 = !DILocation(line: 496, column: 23, scope: !2098)
!2103 = !DILocation(line: 497, column: 3, scope: !2098)
!2104 = !DILocation(line: 498, column: 1, scope: !1940)
!2105 = distinct !DISubprogram(name: "parsedb", scope: !141, file: !141, line: 834, type: !2106, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!207, !147, !80, !1089}
!2108 = !DILocalVariable(name: "filename", arg: 1, scope: !2105, file: !141, line: 834, type: !147)
!2109 = !DILocation(line: 834, column: 21, scope: !2105)
!2110 = !DILocalVariable(name: "flags", arg: 2, scope: !2105, file: !141, line: 834, type: !80)
!2111 = !DILocation(line: 834, column: 49, scope: !2105)
!2112 = !DILocalVariable(name: "pkgp", arg: 3, scope: !2105, file: !141, line: 834, type: !1089)
!2113 = !DILocation(line: 834, column: 73, scope: !2105)
!2114 = !DILocalVariable(name: "ps", scope: !2105, file: !141, line: 836, type: !294)
!2115 = !DILocation(line: 836, column: 25, scope: !2105)
!2116 = !DILocalVariable(name: "count", scope: !2105, file: !141, line: 837, type: !207)
!2117 = !DILocation(line: 837, column: 7, scope: !2105)
!2118 = !DILocation(line: 839, column: 21, scope: !2105)
!2119 = !DILocation(line: 839, column: 31, scope: !2105)
!2120 = !DILocation(line: 839, column: 8, scope: !2105)
!2121 = !DILocation(line: 839, column: 6, scope: !2105)
!2122 = !DILocation(line: 840, column: 16, scope: !2105)
!2123 = !DILocation(line: 840, column: 3, scope: !2105)
!2124 = !DILocation(line: 841, column: 25, scope: !2105)
!2125 = !DILocation(line: 841, column: 29, scope: !2105)
!2126 = !DILocation(line: 841, column: 11, scope: !2105)
!2127 = !DILocation(line: 841, column: 9, scope: !2105)
!2128 = !DILocation(line: 842, column: 17, scope: !2105)
!2129 = !DILocation(line: 842, column: 3, scope: !2105)
!2130 = !DILocation(line: 844, column: 10, scope: !2105)
!2131 = !DILocation(line: 844, column: 3, scope: !2105)
!2132 = distinct !DISubprogram(name: "copy_dependency_links", scope: !141, file: !141, line: 870, type: !2133, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !156, !2135, !174, !203}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!2136 = !DILocalVariable(name: "pkg", arg: 1, scope: !2132, file: !141, line: 870, type: !156)
!2137 = !DILocation(line: 870, column: 44, scope: !2132)
!2138 = !DILocalVariable(name: "updateme", arg: 2, scope: !2132, file: !141, line: 871, type: !2135)
!2139 = !DILocation(line: 871, column: 48, scope: !2132)
!2140 = !DILocalVariable(name: "newdepends", arg: 3, scope: !2132, file: !141, line: 872, type: !174)
!2141 = !DILocation(line: 872, column: 47, scope: !2132)
!2142 = !DILocalVariable(name: "available", arg: 4, scope: !2132, file: !141, line: 873, type: !203)
!2143 = !DILocation(line: 873, column: 32, scope: !2132)
!2144 = !DILocalVariable(name: "dyp", scope: !2132, file: !141, line: 875, type: !174)
!2145 = !DILocation(line: 875, column: 22, scope: !2132)
!2146 = !DILocalVariable(name: "dop", scope: !2132, file: !141, line: 876, type: !170)
!2147 = !DILocation(line: 876, column: 20, scope: !2132)
!2148 = !DILocalVariable(name: "revdeps", scope: !2132, file: !141, line: 876, type: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!2150 = !DILocation(line: 876, column: 27, scope: !2132)
!2151 = !DILocation(line: 883, column: 14, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2132, file: !141, line: 883, column: 3)
!2153 = !DILocation(line: 883, column: 13, scope: !2152)
!2154 = !DILocation(line: 883, column: 11, scope: !2152)
!2155 = !DILocation(line: 883, column: 8, scope: !2152)
!2156 = !DILocation(line: 883, column: 24, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !141, discriminator: 1)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !141, line: 883, column: 3)
!2159 = !DILocation(line: 883, column: 3, scope: !2157)
!2160 = !DILocation(line: 884, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !141, line: 884, column: 5)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !141, line: 883, column: 45)
!2163 = !DILocation(line: 884, column: 20, scope: !2161)
!2164 = !DILocation(line: 884, column: 13, scope: !2161)
!2165 = !DILocation(line: 884, column: 10, scope: !2161)
!2166 = !DILocation(line: 884, column: 26, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !141, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !141, line: 884, column: 5)
!2169 = !DILocation(line: 884, column: 5, scope: !2167)
!2170 = !DILocation(line: 885, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !141, line: 885, column: 11)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !141, line: 884, column: 47)
!2173 = !DILocation(line: 885, column: 16, scope: !2171)
!2174 = !DILocation(line: 885, column: 11, scope: !2172)
!2175 = !DILocation(line: 886, column: 35, scope: !2171)
!2176 = !DILocation(line: 886, column: 40, scope: !2171)
!2177 = !DILocation(line: 886, column: 9, scope: !2171)
!2178 = !DILocation(line: 886, column: 14, scope: !2171)
!2179 = !DILocation(line: 886, column: 24, scope: !2171)
!2180 = !DILocation(line: 886, column: 33, scope: !2171)
!2181 = !DILocation(line: 888, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2171, file: !141, line: 888, column: 13)
!2183 = !DILocation(line: 888, column: 13, scope: !2171)
!2184 = !DILocation(line: 889, column: 41, scope: !2182)
!2185 = !DILocation(line: 889, column: 46, scope: !2182)
!2186 = !DILocation(line: 889, column: 11, scope: !2182)
!2187 = !DILocation(line: 889, column: 16, scope: !2182)
!2188 = !DILocation(line: 889, column: 20, scope: !2182)
!2189 = !DILocation(line: 889, column: 29, scope: !2182)
!2190 = !DILocation(line: 889, column: 39, scope: !2182)
!2191 = !DILocation(line: 891, column: 41, scope: !2182)
!2192 = !DILocation(line: 891, column: 46, scope: !2182)
!2193 = !DILocation(line: 891, column: 11, scope: !2182)
!2194 = !DILocation(line: 891, column: 16, scope: !2182)
!2195 = !DILocation(line: 891, column: 20, scope: !2182)
!2196 = !DILocation(line: 891, column: 29, scope: !2182)
!2197 = !DILocation(line: 891, column: 39, scope: !2182)
!2198 = !DILocation(line: 892, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2172, file: !141, line: 892, column: 11)
!2200 = !DILocation(line: 892, column: 16, scope: !2199)
!2201 = !DILocation(line: 892, column: 11, scope: !2172)
!2202 = !DILocation(line: 893, column: 35, scope: !2199)
!2203 = !DILocation(line: 893, column: 40, scope: !2199)
!2204 = !DILocation(line: 893, column: 9, scope: !2199)
!2205 = !DILocation(line: 893, column: 14, scope: !2199)
!2206 = !DILocation(line: 893, column: 24, scope: !2199)
!2207 = !DILocation(line: 893, column: 33, scope: !2199)
!2208 = !DILocation(line: 894, column: 5, scope: !2172)
!2209 = !DILocation(line: 884, column: 36, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2168, file: !141, discriminator: 2)
!2211 = !DILocation(line: 884, column: 41, scope: !2210)
!2212 = !DILocation(line: 884, column: 34, scope: !2210)
!2213 = !DILocation(line: 884, column: 5, scope: !2210)
!2214 = distinct !{!2214, !2215}
!2215 = !DILocation(line: 884, column: 5, scope: !2162)
!2216 = !DILocation(line: 895, column: 3, scope: !2162)
!2217 = !DILocation(line: 883, column: 34, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2158, file: !141, discriminator: 2)
!2219 = !DILocation(line: 883, column: 39, scope: !2218)
!2220 = !DILocation(line: 883, column: 32, scope: !2218)
!2221 = !DILocation(line: 883, column: 3, scope: !2218)
!2222 = distinct !{!2222, !2223}
!2223 = !DILocation(line: 883, column: 3, scope: !2132)
!2224 = !DILocation(line: 899, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2132, file: !141, line: 899, column: 3)
!2226 = !DILocation(line: 899, column: 11, scope: !2225)
!2227 = !DILocation(line: 899, column: 8, scope: !2225)
!2228 = !DILocation(line: 899, column: 25, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !141, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !141, line: 899, column: 3)
!2231 = !DILocation(line: 899, column: 3, scope: !2229)
!2232 = !DILocation(line: 900, column: 14, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !141, line: 899, column: 46)
!2234 = !DILocation(line: 900, column: 5, scope: !2233)
!2235 = !DILocation(line: 900, column: 10, scope: !2233)
!2236 = !DILocation(line: 900, column: 12, scope: !2233)
!2237 = !DILocation(line: 901, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !141, line: 901, column: 5)
!2239 = !DILocation(line: 901, column: 20, scope: !2238)
!2240 = !DILocation(line: 901, column: 13, scope: !2238)
!2241 = !DILocation(line: 901, column: 10, scope: !2238)
!2242 = !DILocation(line: 901, column: 26, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !141, discriminator: 1)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !141, line: 901, column: 5)
!2245 = !DILocation(line: 901, column: 5, scope: !2243)
!2246 = !DILocation(line: 902, column: 17, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !141, line: 901, column: 47)
!2248 = !DILocation(line: 902, column: 30, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2247, file: !141, discriminator: 1)
!2250 = !DILocation(line: 902, column: 35, scope: !2249)
!2251 = !DILocation(line: 902, column: 39, scope: !2249)
!2252 = !DILocation(line: 902, column: 48, scope: !2249)
!2253 = !DILocation(line: 902, column: 17, scope: !2249)
!2254 = !DILocation(line: 903, column: 30, scope: !2247)
!2255 = !DILocation(line: 903, column: 35, scope: !2247)
!2256 = !DILocation(line: 903, column: 39, scope: !2247)
!2257 = !DILocation(line: 903, column: 48, scope: !2247)
!2258 = !DILocation(line: 902, column: 17, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2247, file: !141, discriminator: 2)
!2260 = !DILocation(line: 902, column: 17, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2247, file: !141, discriminator: 3)
!2262 = !DILocation(line: 902, column: 15, scope: !2261)
!2263 = !DILocation(line: 904, column: 24, scope: !2247)
!2264 = !DILocation(line: 904, column: 23, scope: !2247)
!2265 = !DILocation(line: 904, column: 7, scope: !2247)
!2266 = !DILocation(line: 904, column: 12, scope: !2247)
!2267 = !DILocation(line: 904, column: 21, scope: !2247)
!2268 = !DILocation(line: 905, column: 7, scope: !2247)
!2269 = !DILocation(line: 905, column: 12, scope: !2247)
!2270 = !DILocation(line: 905, column: 21, scope: !2247)
!2271 = !DILocation(line: 906, column: 12, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2247, file: !141, line: 906, column: 11)
!2273 = !DILocation(line: 906, column: 11, scope: !2272)
!2274 = !DILocation(line: 906, column: 11, scope: !2247)
!2275 = !DILocation(line: 907, column: 32, scope: !2272)
!2276 = !DILocation(line: 907, column: 11, scope: !2272)
!2277 = !DILocation(line: 907, column: 10, scope: !2272)
!2278 = !DILocation(line: 907, column: 21, scope: !2272)
!2279 = !DILocation(line: 907, column: 30, scope: !2272)
!2280 = !DILocation(line: 907, column: 9, scope: !2272)
!2281 = !DILocation(line: 908, column: 18, scope: !2247)
!2282 = !DILocation(line: 908, column: 8, scope: !2247)
!2283 = !DILocation(line: 908, column: 16, scope: !2247)
!2284 = !DILocation(line: 909, column: 5, scope: !2247)
!2285 = !DILocation(line: 901, column: 36, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2244, file: !141, discriminator: 2)
!2287 = !DILocation(line: 901, column: 41, scope: !2286)
!2288 = !DILocation(line: 901, column: 34, scope: !2286)
!2289 = !DILocation(line: 901, column: 5, scope: !2286)
!2290 = distinct !{!2290, !2291}
!2291 = !DILocation(line: 901, column: 5, scope: !2233)
!2292 = !DILocation(line: 910, column: 3, scope: !2233)
!2293 = !DILocation(line: 899, column: 35, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2230, file: !141, discriminator: 2)
!2295 = !DILocation(line: 899, column: 40, scope: !2294)
!2296 = !DILocation(line: 899, column: 33, scope: !2294)
!2297 = !DILocation(line: 899, column: 3, scope: !2294)
!2298 = distinct !{!2298, !2299}
!2299 = !DILocation(line: 899, column: 3, scope: !2132)
!2300 = !DILocation(line: 913, column: 14, scope: !2132)
!2301 = !DILocation(line: 913, column: 4, scope: !2132)
!2302 = !DILocation(line: 913, column: 12, scope: !2132)
!2303 = !DILocation(line: 914, column: 1, scope: !2132)
!2304 = distinct !DISubprogram(name: "parse_find_set_slot", scope: !141, file: !141, line: 336, type: !2305, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!160, !294, !156, !293}
!2307 = !DILocalVariable(name: "ps", arg: 1, scope: !2304, file: !141, line: 336, type: !294)
!2308 = !DILocation(line: 336, column: 43, scope: !2304)
!2309 = !DILocalVariable(name: "new_pkg", arg: 2, scope: !2304, file: !141, line: 337, type: !156)
!2310 = !DILocation(line: 337, column: 37, scope: !2304)
!2311 = !DILocalVariable(name: "new_pkgbin", arg: 3, scope: !2304, file: !141, line: 337, type: !293)
!2312 = !DILocation(line: 337, column: 61, scope: !2304)
!2313 = !DILocalVariable(name: "count", scope: !2304, file: !141, line: 339, type: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgcount", file: !141, line: 308, size: 96, align: 32, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !2314, file: !141, line: 309, baseType: !207, size: 32, align: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !2314, file: !141, line: 310, baseType: !207, size: 32, align: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2314, file: !141, line: 311, baseType: !207, size: 32, align: 32, offset: 64)
!2319 = !DILocation(line: 339, column: 19, scope: !2304)
!2320 = !DILocalVariable(name: "set", scope: !2304, file: !141, line: 340, type: !160)
!2321 = !DILocation(line: 340, column: 18, scope: !2304)
!2322 = !DILocalVariable(name: "pkg", scope: !2304, file: !141, line: 341, type: !156)
!2323 = !DILocation(line: 341, column: 19, scope: !2304)
!2324 = !DILocation(line: 343, column: 27, scope: !2304)
!2325 = !DILocation(line: 343, column: 36, scope: !2304)
!2326 = !DILocation(line: 343, column: 41, scope: !2304)
!2327 = !DILocation(line: 343, column: 9, scope: !2304)
!2328 = !DILocation(line: 343, column: 7, scope: !2304)
!2329 = !DILocation(line: 347, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 347, column: 7)
!2331 = !DILocation(line: 347, column: 11, scope: !2330)
!2332 = !DILocation(line: 347, column: 16, scope: !2330)
!2333 = !DILocation(line: 347, column: 7, scope: !2304)
!2334 = !DILocation(line: 348, column: 38, scope: !2330)
!2335 = !DILocation(line: 348, column: 47, scope: !2330)
!2336 = !DILocation(line: 348, column: 5, scope: !2330)
!2337 = !DILocation(line: 350, column: 9, scope: !2304)
!2338 = !DILocation(line: 350, column: 15, scope: !2304)
!2339 = !DILocation(line: 352, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 352, column: 3)
!2341 = !DILocation(line: 352, column: 20, scope: !2340)
!2342 = !DILocation(line: 352, column: 12, scope: !2340)
!2343 = !DILocation(line: 352, column: 8, scope: !2340)
!2344 = !DILocation(line: 352, column: 25, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2346, file: !141, discriminator: 1)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !141, line: 352, column: 3)
!2347 = !DILocation(line: 352, column: 3, scope: !2345)
!2348 = !DILocation(line: 353, column: 38, scope: !2346)
!2349 = !DILocation(line: 353, column: 44, scope: !2346)
!2350 = !DILocation(line: 353, column: 49, scope: !2346)
!2351 = !DILocation(line: 353, column: 5, scope: !2346)
!2352 = !DILocation(line: 352, column: 36, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2346, file: !141, discriminator: 2)
!2354 = !DILocation(line: 352, column: 41, scope: !2353)
!2355 = !DILocation(line: 352, column: 34, scope: !2353)
!2356 = !DILocation(line: 352, column: 3, scope: !2353)
!2357 = distinct !{!2357, !2358}
!2358 = !DILocation(line: 352, column: 3, scope: !2304)
!2359 = !DILocation(line: 355, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 355, column: 7)
!2361 = !DILocation(line: 355, column: 20, scope: !2360)
!2362 = !DILocation(line: 355, column: 7, scope: !2304)
!2363 = !DILocation(line: 356, column: 17, scope: !2360)
!2364 = !DILocation(line: 356, column: 20, scope: !2360)
!2365 = !DILocation(line: 356, column: 5, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2360, file: !141, discriminator: 1)
!2367 = !DILocation(line: 356, column: 5, scope: !2360)
!2368 = !DILocation(line: 359, column: 13, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 359, column: 7)
!2370 = !DILocation(line: 359, column: 20, scope: !2369)
!2371 = !DILocation(line: 359, column: 24, scope: !2369)
!2372 = !DILocation(line: 359, column: 33, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2369, file: !141, discriminator: 1)
!2374 = !DILocation(line: 359, column: 39, scope: !2373)
!2375 = !DILocation(line: 359, column: 7, scope: !2373)
!2376 = !DILocation(line: 360, column: 17, scope: !2369)
!2377 = !DILocation(line: 360, column: 20, scope: !2369)
!2378 = !DILocation(line: 360, column: 5, scope: !2373)
!2379 = !DILocation(line: 360, column: 5, scope: !2369)
!2380 = !DILocation(line: 364, column: 34, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 364, column: 7)
!2382 = !DILocation(line: 364, column: 7, scope: !2381)
!2383 = !DILocation(line: 364, column: 48, scope: !2381)
!2384 = !DILocation(line: 364, column: 39, scope: !2381)
!2385 = !DILocation(line: 364, column: 7, scope: !2304)
!2386 = !DILocation(line: 365, column: 78, scope: !2381)
!2387 = !DILocation(line: 365, column: 83, scope: !2381)
!2388 = !DILocation(line: 365, column: 5, scope: !2381)
!2389 = !DILocation(line: 368, column: 10, scope: !2304)
!2390 = !DILocation(line: 368, column: 3, scope: !2304)
!2391 = distinct !DISubprogram(name: "parse_count_pkg_instance", scope: !141, file: !141, line: 315, type: !2392, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2394, !156, !293}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64, align: 64)
!2395 = !DILocalVariable(name: "count", arg: 1, scope: !2391, file: !141, line: 315, type: !2394)
!2396 = !DILocation(line: 315, column: 43, scope: !2391)
!2397 = !DILocalVariable(name: "pkg", arg: 2, scope: !2391, file: !141, line: 316, type: !156)
!2398 = !DILocation(line: 316, column: 42, scope: !2391)
!2399 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !2391, file: !141, line: 316, type: !293)
!2400 = !DILocation(line: 316, column: 62, scope: !2391)
!2401 = !DILocation(line: 318, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2391, file: !141, line: 318, column: 7)
!2403 = !DILocation(line: 318, column: 12, scope: !2402)
!2404 = !DILocation(line: 318, column: 19, scope: !2402)
!2405 = !DILocation(line: 318, column: 7, scope: !2391)
!2406 = !DILocation(line: 319, column: 6, scope: !2402)
!2407 = !DILocation(line: 321, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2391, file: !141, line: 321, column: 7)
!2409 = !DILocation(line: 321, column: 15, scope: !2408)
!2410 = !DILocation(line: 321, column: 25, scope: !2408)
!2411 = !DILocation(line: 321, column: 7, scope: !2391)
!2412 = !DILocation(line: 322, column: 5, scope: !2408)
!2413 = !DILocation(line: 322, column: 12, scope: !2408)
!2414 = !DILocation(line: 322, column: 17, scope: !2408)
!2415 = !DILocation(line: 324, column: 5, scope: !2408)
!2416 = !DILocation(line: 324, column: 12, scope: !2408)
!2417 = !DILocation(line: 324, column: 18, scope: !2408)
!2418 = !DILocation(line: 326, column: 3, scope: !2391)
!2419 = !DILocation(line: 326, column: 10, scope: !2391)
!2420 = !DILocation(line: 326, column: 15, scope: !2391)
!2421 = !DILocation(line: 327, column: 1, scope: !2391)
!2422 = !DILocation(line: 327, column: 1, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2391, file: !141, discriminator: 1)
!2424 = distinct !DISubprogram(name: "str_is_set", scope: !2425, file: !2425, line: 50, type: !2426, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !340)
!2425 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!203, !147}
!2428 = !DILocalVariable(name: "str", arg: 1, scope: !2424, file: !2425, line: 50, type: !147)
!2429 = !DILocation(line: 50, column: 24, scope: !2424)
!2430 = !DILocation(line: 52, column: 9, scope: !2424)
!2431 = !DILocation(line: 52, column: 13, scope: !2424)
!2432 = !DILocation(line: 52, column: 20, scope: !2424)
!2433 = !DILocation(line: 52, column: 23, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2424, file: !2425, discriminator: 1)
!2435 = !DILocation(line: 52, column: 30, scope: !2434)
!2436 = !DILocation(line: 52, column: 2, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2424, file: !2425, discriminator: 2)
