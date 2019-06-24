# 1 "hardware.c"
# 1 "/home/lichi/lichi/errSpecProjects/genwqe-user/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "hardware.c"
# 17 "hardware.c"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 367 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 368 "/usr/include/features.h" 2 3 4
# 391 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 392 "/usr/include/features.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;





typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 173 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 241 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 289 "/usr/include/libio.h" 3 4
  __off64_t _offset;







  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;

  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 333 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);




typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;


typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;

struct _IO_cookie_file;


extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);







extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 429 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 459 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;





typedef _G_fpos64_t fpos64_t;
# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 205 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 262 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);









extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4


extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));






extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 640 "/usr/include/stdio.h" 3 4

# 649 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 726 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4



extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);




extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];


extern int _sys_nerr;
extern const char *const _sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 872 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 942 "/usr/include/stdio.h" 3 4

# 18 "hardware.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 328 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 64 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 65 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 235 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 236 "/usr/include/stdlib.h" 2 3 4



extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4
# 54 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef long int __fd_mask;
# 64 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 106 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 262 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 125 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;




    unsigned char __pad1[7];


    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 220 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;




extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 629 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 651 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 673 "/usr/include/stdlib.h" 3 4
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 683 "/usr/include/stdlib.h" 3 4
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 693 "/usr/include/stdlib.h" 3 4
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 705 "/usr/include/stdlib.h" 3 4
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;









extern int system (const char *__command) ;






extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);





extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 811 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 898 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;





extern void setkey (const char *__key) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int unlockpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));




extern char *ptsname (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 955 "/usr/include/stdlib.h" 2 3 4
# 967 "/usr/include/stdlib.h" 3 4

# 19 "hardware.c" 2
# 1 "/usr/include/malloc.h" 1 3 4
# 23 "/usr/include/malloc.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 426 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 24 "/usr/include/malloc.h" 2 3 4
# 35 "/usr/include/malloc.h" 3 4



extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;


extern void *calloc (size_t __nmemb, size_t __size)
__attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;






extern void *realloc (void *__ptr, size_t __size)
__attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


extern void *memalign (size_t __alignment, size_t __size)
__attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;


extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;



extern void *pvalloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;



extern void *(*__morecore) (ptrdiff_t __size);


extern void *__default_morecore (ptrdiff_t __size)
__attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__));



struct mallinfo
{
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};


extern struct mallinfo mallinfo (void) __attribute__ ((__nothrow__ , __leaf__));
# 121 "/usr/include/malloc.h" 3 4
extern int mallopt (int __param, int __val) __attribute__ ((__nothrow__ , __leaf__));



extern int malloc_trim (size_t __pad) __attribute__ ((__nothrow__ , __leaf__));



extern size_t malloc_usable_size (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


extern void malloc_stats (void) __attribute__ ((__nothrow__ , __leaf__));


extern int malloc_info (int __options, FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));


extern void *malloc_get_state (void) __attribute__ ((__nothrow__ , __leaf__));



extern int malloc_set_state (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void (*volatile __malloc_initialize_hook) (void)
__attribute__ ((__deprecated__));

extern void (*volatile __free_hook) (void *__ptr,
                                                   const void *)
__attribute__ ((__deprecated__));
extern void *(*volatile __malloc_hook)(size_t __size,
                                                     const void *)
__attribute__ ((__deprecated__));
extern void *(*volatile __realloc_hook)(void *__ptr,
                                                      size_t __size,
                                                      const void *)
__attribute__ ((__deprecated__));
extern void *(*volatile __memalign_hook)(size_t __alignment,
                                                       size_t __size,
                                                       const void *)
__attribute__ ((__deprecated__));
extern void (*volatile __after_morecore_hook) (void);


extern void __malloc_check_init (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



# 20 "hardware.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 106 "/usr/include/string.h" 3 4
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 117 "/usr/include/string.h" 3 4
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 162 "/usr/include/string.h" 3 4
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 206 "/usr/include/string.h" 3 4

# 231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 272 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 368 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 433 "/usr/include/string.h" 3 4
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;





extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 484 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 512 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));





extern int strcasecmp_l (const char *__s1, const char *__s2,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));





extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 599 "/usr/include/string.h" 3 4
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 658 "/usr/include/string.h" 3 4

# 21 "hardware.c" 2
# 1 "/usr/local/include/zlib.h" 1 3
# 34 "/usr/local/include/zlib.h" 3
# 1 "/usr/local/include/zconf.h" 1 3
# 247 "/usr/local/include/zconf.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 248 "/usr/local/include/zconf.h" 2 3
     typedef size_t z_size_t;
# 391 "/usr/local/include/zconf.h" 3
typedef unsigned char Byte;

typedef unsigned int uInt;
typedef unsigned long uLong;





   typedef Byte Bytef;

typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;


   typedef void const *voidpc;
   typedef void *voidpf;
   typedef void *voidp;







# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 1 3 4
# 168 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 143 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
# 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 144 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
# 148 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 2 3 4
# 152 "/usr/include/limits.h" 2 3 4
# 169 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 2 3 4
# 419 "/usr/local/include/zconf.h" 2 3
# 429 "/usr/local/include/zconf.h" 3
   typedef unsigned z_crc_t;
# 450 "/usr/local/include/zconf.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 1 3 4
# 451 "/usr/local/include/zconf.h" 2 3
# 475 "/usr/local/include/zconf.h" 3
# 1 "/usr/include/unistd.h" 1 3 4
# 27 "/usr/include/unistd.h" 3 4

# 205 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 206 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 210 "/usr/include/unistd.h" 2 3 4
# 229 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 230 "/usr/include/unistd.h" 2 3 4
# 270 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 290 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int euidaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int eaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 337 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 348 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ , __leaf__));






extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 379 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 407 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;


extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;







extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pipe2 (int __pipedes[2], int __flags) __attribute__ ((__nothrow__ , __leaf__)) ;
# 435 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 447 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 472 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 514 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *get_current_dir_name (void) __attribute__ ((__nothrow__ , __leaf__));







extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));




extern int dup3 (int __fd, int __fd2, int __flags) __attribute__ ((__nothrow__ , __leaf__));



extern char **__environ;

extern char **environ;





extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 613 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 663 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;



extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));






extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__ , __leaf__));



extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__ , __leaf__));



extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__ , __leaf__)) ;



extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__ , __leaf__)) ;






extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 874 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 57 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 71 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 150 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 875 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);





extern int syncfs (int __fd) __attribute__ ((__nothrow__ , __leaf__));






extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 996 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1008 "/usr/include/unistd.h" 3 4
extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1019 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1029 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1040 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1061 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1084 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1094 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
# 1115 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);







extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern void encrypt (char *__glibc_block, int __edflag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 1154 "/usr/include/unistd.h" 3 4

# 476 "/usr/local/include/zconf.h" 2 3
# 35 "/usr/local/include/zlib.h" 2 3
# 81 "/usr/local/include/zlib.h" 3
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);

struct internal_state;

typedef struct z_stream_s {
    Bytef *next_in;
    uInt avail_in;
    uLong total_in;

    Bytef *next_out;
    uInt avail_out;
    uLong total_out;

    char *msg;
    struct internal_state *state;

    alloc_func zalloc;
    free_func zfree;
    voidpf opaque;

    int data_type;

    uLong adler;
    uLong reserved;
} z_stream;

typedef z_stream *z_streamp;





typedef struct gz_header_s {
    int text;
    uLong time;
    int xflags;
    int os;
    Bytef *extra;
    uInt extra_len;
    uInt extra_max;
    Bytef *name;
    uInt name_max;
    Bytef *comment;
    uInt comm_max;
    int hcrc;
    int done;

} gz_header;

typedef gz_header *gz_headerp;
# 220 "/usr/local/include/zlib.h" 3
extern const char * zlibVersion (void);
# 250 "/usr/local/include/zlib.h" 3
extern int deflate (z_streamp strm, int flush);
# 363 "/usr/local/include/zlib.h" 3
extern int deflateEnd (z_streamp strm);
# 400 "/usr/local/include/zlib.h" 3
extern int inflate (z_streamp strm, int flush);
# 520 "/usr/local/include/zlib.h" 3
extern int inflateEnd (z_streamp strm);
# 611 "/usr/local/include/zlib.h" 3
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength)

                                                               ;
# 655 "/usr/local/include/zlib.h" 3
extern int deflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength)

                                                                ;
# 677 "/usr/local/include/zlib.h" 3
extern int deflateCopy (z_streamp dest, z_streamp source)
                                                      ;
# 695 "/usr/local/include/zlib.h" 3
extern int deflateReset (z_streamp strm);
# 706 "/usr/local/include/zlib.h" 3
extern int deflateParams (z_streamp strm, int level, int strategy)

                                                    ;
# 743 "/usr/local/include/zlib.h" 3
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain)



                                                   ;
# 760 "/usr/local/include/zlib.h" 3
extern uLong deflateBound (z_streamp strm, uLong sourceLen)
                                                        ;
# 775 "/usr/local/include/zlib.h" 3
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits)

                                                  ;
# 790 "/usr/local/include/zlib.h" 3
extern int deflatePrime (z_streamp strm, int bits, int value)

                                                ;
# 807 "/usr/local/include/zlib.h" 3
extern int deflateSetHeader (z_streamp strm, gz_headerp head)
                                                          ;
# 884 "/usr/local/include/zlib.h" 3
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength)

                                                               ;
# 907 "/usr/local/include/zlib.h" 3
extern int inflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength)

                                                                ;
# 922 "/usr/local/include/zlib.h" 3
extern int inflateSync (z_streamp strm);
# 941 "/usr/local/include/zlib.h" 3
extern int inflateCopy (z_streamp dest, z_streamp source)
                                                      ;
# 957 "/usr/local/include/zlib.h" 3
extern int inflateReset (z_streamp strm);
# 967 "/usr/local/include/zlib.h" 3
extern int inflateReset2 (z_streamp strm, int windowBits)
                                                      ;
# 981 "/usr/local/include/zlib.h" 3
extern int inflatePrime (z_streamp strm, int bits, int value)

                                                ;
# 1002 "/usr/local/include/zlib.h" 3
extern long inflateMark (z_streamp strm);
# 1030 "/usr/local/include/zlib.h" 3
extern int inflateGetHeader (z_streamp strm, gz_headerp head)
                                                          ;
# 1092 "/usr/local/include/zlib.h" 3
typedef unsigned (*in_func) (void *, unsigned char * *)
                                                                   ;
typedef int (*out_func) (void *, unsigned char *, unsigned);

extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc)

                                                                      ;
# 1166 "/usr/local/include/zlib.h" 3
extern int inflateBackEnd (z_streamp strm);







extern uLong zlibCompileFlags (void);
# 1227 "/usr/local/include/zlib.h" 3
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen)
                                                                       ;
# 1242 "/usr/local/include/zlib.h" 3
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level)

                                             ;
# 1258 "/usr/local/include/zlib.h" 3
extern uLong compressBound (uLong sourceLen);






extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen)
                                                                         ;
# 1283 "/usr/local/include/zlib.h" 3
extern int uncompress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong *sourceLen)
                                                                           ;
# 1300 "/usr/local/include/zlib.h" 3
typedef struct gzFile_s *gzFile;
# 1340 "/usr/local/include/zlib.h" 3
extern gzFile gzdopen (int fd, const char *mode);
# 1363 "/usr/local/include/zlib.h" 3
extern int gzbuffer (gzFile file, unsigned size);
# 1379 "/usr/local/include/zlib.h" 3
extern int gzsetparams (gzFile file, int level, int strategy);
# 1390 "/usr/local/include/zlib.h" 3
extern int gzread (gzFile file, voidp buf, unsigned len);
# 1420 "/usr/local/include/zlib.h" 3
extern z_size_t gzfread (voidp buf, z_size_t size, z_size_t nitems, gzFile file)
                                                  ;
# 1446 "/usr/local/include/zlib.h" 3
extern int gzwrite (gzFile file, voidpc buf, unsigned len)
                                                          ;






extern z_size_t gzfwrite (voidpc buf, z_size_t size, z_size_t nitems, gzFile file)
                                                                    ;
# 1468 "/usr/local/include/zlib.h" 3
extern int gzprintf (gzFile file, const char *format, ...);
# 1483 "/usr/local/include/zlib.h" 3
extern int gzputs (gzFile file, const char *s);







extern char * gzgets (gzFile file, char *buf, int len);
# 1504 "/usr/local/include/zlib.h" 3
extern int gzputc (gzFile file, int c);





extern int gzgetc (gzFile file);
# 1519 "/usr/local/include/zlib.h" 3
extern int gzungetc (int c, gzFile file);
# 1531 "/usr/local/include/zlib.h" 3
extern int gzflush (gzFile file, int flush);
# 1566 "/usr/local/include/zlib.h" 3
extern int gzrewind (gzFile file);
# 1594 "/usr/local/include/zlib.h" 3
extern int gzeof (gzFile file);
# 1609 "/usr/local/include/zlib.h" 3
extern int gzdirect (gzFile file);
# 1630 "/usr/local/include/zlib.h" 3
extern int gzclose (gzFile file);
# 1643 "/usr/local/include/zlib.h" 3
extern int gzclose_r (gzFile file);
extern int gzclose_w (gzFile file);
# 1655 "/usr/local/include/zlib.h" 3
extern const char * gzerror (gzFile file, int *errnum);
# 1671 "/usr/local/include/zlib.h" 3
extern void gzclearerr (gzFile file);
# 1688 "/usr/local/include/zlib.h" 3
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
# 1707 "/usr/local/include/zlib.h" 3
extern uLong adler32_z (uLong adler, const Bytef *buf, z_size_t len)
                                                  ;
# 1725 "/usr/local/include/zlib.h" 3
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
# 1742 "/usr/local/include/zlib.h" 3
extern uLong crc32_z (uLong adler, const Bytef *buf, z_size_t len)
                                                ;
# 1764 "/usr/local/include/zlib.h" 3
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size)
                                                                           ;
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size)
                                                                           ;
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)


                                                       ;
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size)
                                                                            ;
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size)


                                                          ;
# 1817 "/usr/local/include/zlib.h" 3
struct gzFile_s {
    unsigned have;
    unsigned char *next;
    off64_t pos;
};
extern int gzgetc_ (gzFile file);
# 1839 "/usr/local/include/zlib.h" 3
   extern gzFile gzopen64 (const char *, const char *);
   extern off64_t gzseek64 (gzFile, off64_t, int);
   extern off64_t gztell64 (gzFile);
   extern off64_t gzoffset64 (gzFile);
   extern uLong adler32_combine64 (uLong, uLong, off64_t);
   extern uLong crc32_combine64 (uLong, uLong, off64_t);
# 1872 "/usr/local/include/zlib.h" 3
   extern gzFile gzopen (const char *, const char *);
   extern off_t gzseek (gzFile, off_t, int);
   extern off_t gztell (gzFile);
   extern off_t gzoffset (gzFile);
   extern uLong adler32_combine (uLong, uLong, off_t);
   extern uLong crc32_combine (uLong, uLong, off_t);
# 1888 "/usr/local/include/zlib.h" 3
extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateValidate (z_streamp, int);
extern unsigned long inflateCodesUsed (z_streamp);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);






extern int gzvprintf (gzFile file, const char *format, va_list va)

                                                              ;
# 22 "hardware.c" 2
# 1 "./wrapper.h" 1
# 30 "./wrapper.h"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 48 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 122 "/usr/include/stdint.h" 3 4
typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 2 3 4
# 31 "./wrapper.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h" 1 3 4
# 32 "./wrapper.h" 2

# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4





# 1 "/usr/include/time.h" 1 3 4
# 35 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
# 72 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };





extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) __attribute__ ((__nothrow__ , __leaf__));


extern int unshare (int __flags) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getcpu (void) __attribute__ ((__nothrow__ , __leaf__));


extern int setns (int __fd, int __nstype) __attribute__ ((__nothrow__ , __leaf__));











struct __sched_param
  {
    int __sched_priority;
  };
# 118 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 201 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 44 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 118 "/usr/include/sched.h" 3 4
extern int sched_setaffinity (__pid_t __pid, size_t __cpusetsize,
         const cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getaffinity (__pid_t __pid, size_t __cpusetsize,
         cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));



# 24 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 88 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timex.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/timex.h" 3 4
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;

  int tai;


  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
# 89 "/usr/include/x86_64-linux-gnu/bits/time.h" 2 3 4




extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ , __leaf__));


# 42 "/usr/include/time.h" 2 3 4
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ , __leaf__));







extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));



extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));






extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 403 "/usr/include/time.h" 3 4
extern int getdate_err;
# 412 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
# 426 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);



# 25 "/usr/include/pthread.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL



  , PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP

};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 114 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 155 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 190 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 228 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);




extern int pthread_tryjoin_np (pthread_t __th, void **__thread_return) __attribute__ ((__nothrow__ , __leaf__));







extern int pthread_timedjoin_np (pthread_t __th, void **__thread_return,
     const struct timespec *__abstime);






extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_attr_setaffinity_np (pthread_attr_t *__attr,
     size_t __cpusetsize,
     const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));



extern int pthread_attr_getaffinity_np (const pthread_attr_t *__attr,
     size_t __cpusetsize,
     cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));


extern int pthread_getattr_default_np (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int pthread_getattr_np (pthread_t __th, pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));







extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));




extern int pthread_getname_np (pthread_t __target_thread, char *__buf,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int pthread_setname_np (pthread_t __target_thread, const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int pthread_getconcurrency (void) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setconcurrency (int __level) __attribute__ ((__nothrow__ , __leaf__));







extern int pthread_yield (void) __attribute__ ((__nothrow__ , __leaf__));




extern int pthread_setaffinity_np (pthread_t __th, size_t __cpusetsize,
       const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getaffinity_np (pthread_t __th, size_t __cpusetsize,
       cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
# 494 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 506 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 540 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 680 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 692 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 715 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel_defer (__pthread_unwind_buf_t *__buf)
     ;
# 728 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel_restore (__pthread_unwind_buf_t *__buf)
  ;



extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern int pthread_mutex_consistent_np (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 806 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int pthread_mutexattr_getrobust_np (const pthread_mutexattr_t *__attr,
        int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern int pthread_mutexattr_setrobust_np (pthread_mutexattr_t *__attr,
        int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 888 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 1000 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1044 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1111 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1145 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
# 1159 "/usr/include/pthread.h" 3 4

# 34 "./wrapper.h" 2
# 1 "../include/zaddons.h" 1
# 26 "../include/zaddons.h"

# 26 "../include/zaddons.h"
enum zlib_impl {
 ZLIB_SW_IMPL = 0x00,
 ZLIB_HW_IMPL = 0x01,
 ZLIB_MAX_IMPL = 0x02,
 ZLIB_IMPL_MASK = 0x0f,


 ZLIB_FLAG_USE_FLAT_BUFFERS = 0x10,
 ZLIB_FLAG_CACHE_HANDLES = 0x20,
 ZLIB_FLAG_OMIT_LAST_DICT = 0x40,
 ZLIB_FLAG_USE_POLLING = 0x80,
 ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END = 0x100,
};
# 50 "../include/zaddons.h"
void zlib_set_inflate_impl(enum zlib_impl impl);
# 62 "../include/zaddons.h"
void zlib_set_deflate_impl(enum zlib_impl impl);
# 74 "../include/zaddons.h"
void zlib_set_accelerator(const char *accel, int card_no);
# 35 "./wrapper.h" 2
# 56 "./wrapper.h"
extern FILE *zlib_log;
extern int zlib_trace;
extern int zlib_accelerator;
extern int zlib_card;
extern unsigned int zlib_inflate_impl;
extern unsigned int zlib_deflate_impl;
extern unsigned int zlib_inflate_flags;
extern unsigned int zlib_deflate_flags;
# 111 "./wrapper.h"
struct zlib_stats {
 unsigned long deflateInit;
 unsigned long deflate[ZLIB_MAX_IMPL];
 unsigned long deflate_avail_in[256];
 unsigned long deflate_avail_out[256];
 unsigned long deflateReset;
 unsigned long deflate_total_in[256];
 unsigned long deflate_total_out[256];
 unsigned long deflateSetDictionary;
 unsigned long deflateSetHeader;
 unsigned long deflateParams;
 unsigned long deflateBound;
 unsigned long deflatePrime;
 unsigned long deflateCopy;
 unsigned long deflateEnd;

 unsigned long inflateInit;
 unsigned long inflate[ZLIB_MAX_IMPL];
 unsigned long inflate_avail_in[256];
 unsigned long inflate_avail_out[256];
 unsigned long inflateReset;
 unsigned long inflateReset2;
 unsigned long inflate_total_in[256];
 unsigned long inflate_total_out[256];
 unsigned long inflateSetDictionary;
 unsigned long inflateGetDictionary;
 unsigned long inflateGetHeader;
 unsigned long inflateSync;
 unsigned long inflatePrime;
 unsigned long inflateCopy;
 unsigned long inflateEnd;

 unsigned long adler32;
 unsigned long adler32_combine;
 unsigned long crc32;
 unsigned long crc32_combine;

 unsigned long gzopen64;
 unsigned long gzopen;
 unsigned long gzdopen;
 unsigned long gzbuffer;
 unsigned long gztell64;
 unsigned long gztell;
 unsigned long gzseek64;
 unsigned long gzseek;
 unsigned long gzwrite;
 unsigned long gzread;
 unsigned long gzclose;
 unsigned long gzoffset64;
 unsigned long gzoffset;
 unsigned long gzrewind;
 unsigned long gzputs;
 unsigned long gzgets;
 unsigned long gzputc;
 unsigned long gzgetc;
 unsigned long gzungetc;
 unsigned long gzprintf;
 unsigned long gzerror;
 unsigned long gzeof;
 unsigned long gzflush;

 unsigned long compress;
 unsigned long compress2;
 unsigned long compressBound;
 unsigned long uncompress;

 unsigned long adler32_combine64;
 unsigned long crc32_combine64;
 unsigned long get_crc_table;
};

extern pthread_mutex_t zlib_stats_mutex;
extern struct zlib_stats zlib_stats;

static inline void zlib_stats_inc(unsigned long *count)
{
 if (!(zlib_trace & 0x8))
  return;

 pthread_mutex_lock(&zlib_stats_mutex);
 *count = *count + 1;
 pthread_mutex_unlock(&zlib_stats_mutex);
}


int h_deflateInit2_(z_streamp strm, int level, int method,
      int windowBits, int memLevel,
      int strategy, const char *version,
      int stream_size);
int h_deflateParams(z_streamp strm, int level, int strategy);
uLong h_deflateBound(z_streamp strm, uLong sourceLen);

int h_deflateReset(z_streamp strm);
int h_deflateSetDictionary(z_streamp strm, const Bytef *dictionary,
      uInt dictLength);
int h_deflateSetHeader(z_streamp strm, gz_headerp head);
int h_deflate(z_streamp strm, int flush);
int h_deflateEnd(z_streamp strm);

int h_inflateInit2_(z_streamp strm, int windowBits, const char *version,
      int stream_size);
int h_inflateReset(z_streamp strm);
int h_inflateReset2(z_streamp strm, int windowBits);

int h_inflateSetDictionary(z_streamp strm, const Bytef *dictionary,
      uInt dictLength);



# 219 "./wrapper.h" 3 4
_Bool 
# 219 "./wrapper.h"
    z_hasGetDictionary(void);
int h_inflateGetDictionary(z_streamp strm, Bytef *dictionary,
      uInt *dictLength);

int h_inflateGetHeader(z_streamp strm, gz_headerp head);
int h_deflateCopy(z_streamp dest, z_streamp source);

int h_inflate(z_streamp strm, int flush);
int h_inflateEnd(z_streamp strm);


int z_deflateInit2_(z_streamp strm, int level, int method,
      int windowBits, int memLevel, int strategy,
      const char *version, int stream_size);
int z_deflateParams(z_streamp strm, int level, int strategy);
uLong z_deflateBound(z_streamp strm, uLong sourceLen);

int z_deflateReset(z_streamp strm);
int z_deflateSetDictionary(z_streamp strm, const Bytef *dictionary,
      uInt dictLength);
int z_deflateSetHeader(z_streamp strm, gz_headerp head);
int z_deflatePrime(z_streamp strm, int bits, int value);
int z_deflateCopy(z_streamp dest, z_streamp source);
int z_deflate(z_streamp strm, int flush);
int z_deflateEnd(z_streamp strm);

int z_inflateInit2_(z_streamp strm, int windowBits, const char *version,
      int stream_size);
int z_inflateReset(z_streamp strm);
int z_inflateReset2(z_streamp strm, int windowBits);

int z_inflateSetDictionary(z_streamp strm, const Bytef *dictionary,
      uInt dictLength);
int z_inflateGetDictionary(z_streamp strm, const Bytef *dictionary,
      uInt *dictLength);

int z_inflateGetHeader(z_streamp strm, gz_headerp head);

int z_inflatePrime(z_streamp strm, int bits, int value);
int z_inflateSync(z_streamp strm);

int z_inflate(z_streamp strm, int flush);
int z_inflateEnd(z_streamp strm);

int z_inflateBackInit_(z_streamp strm, int windowBits, unsigned char *window,
   const char *version, int stream_size);
int z_inflateBack(z_streamp strm, in_func in, void *in_desc, out_func out,
    void *out_desc);
int z_inflateBackEnd(z_streamp strm);

uLong z_adler32(uLong adler, const Bytef *buf, uInt len);
uLong z_adler32_combine(uLong adler1, uLong adler2, 
# 270 "./wrapper.h" 3
                                                   off_t 
# 270 "./wrapper.h"
                                                           len2);

uLong z_crc32(uLong crc, const Bytef *buf, uInt len);
uLong z_crc32_combine(uLong crc1, uLong crc2, 
# 273 "./wrapper.h" 3
                                             off_t 
# 273 "./wrapper.h"
                                                     len2);

const char *z_zError(int err);
uLong z_compressBound(uLong sourceLen);


void error_trigger(void);


void zedc_hw_init(void);
void zedc_hw_done(void);

void zedc_sw_init(void);
void zedc_sw_done(void);


const char *z_zlibVersion(void);
uLong z_zlibCompileFlags(void);


uint64_t str_to_num(char *str);
const char *ret_to_str(int ret);
const char *flush_to_str(int flush);
# 23 "hardware.c" 2
# 1 "../include/libzHW.h" 1
# 39 "../include/libzHW.h"
# 1 "../include/libddcb.h" 1
# 39 "../include/libddcb.h"
# 1 "/usr/include/linux/types.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/types.h" 1 3 4



# 1 "/usr/include/asm-generic/types.h" 1 3 4





# 1 "/usr/include/asm-generic/int-ll64.h" 1 3 4
# 11 "/usr/include/asm-generic/int-ll64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 3 4
# 1 "/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 2 3 4
# 12 "/usr/include/asm-generic/int-ll64.h" 2 3 4








# 19 "/usr/include/asm-generic/int-ll64.h" 3 4
typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;


__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
# 7 "/usr/include/asm-generic/types.h" 2 3 4
# 5 "/usr/include/x86_64-linux-gnu/asm/types.h" 2 3 4
# 5 "/usr/include/linux/types.h" 2 3 4



# 1 "/usr/include/linux/posix_types.h" 1 3 4



# 1 "/usr/include/linux/stddef.h" 1 3 4
# 5 "/usr/include/linux/posix_types.h" 2 3 4
# 24 "/usr/include/linux/posix_types.h" 3 4
typedef struct {
 unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;


typedef void (*__kernel_sighandler_t)(int);


typedef int __kernel_key_t;
typedef int __kernel_mqd_t;

# 1 "/usr/include/x86_64-linux-gnu/asm/posix_types.h" 1 3 4





# 1 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 3 4
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;


typedef unsigned long __kernel_old_dev_t;


# 1 "/usr/include/asm-generic/posix_types.h" 1 3 4
# 14 "/usr/include/asm-generic/posix_types.h" 3 4
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;



typedef __kernel_ulong_t __kernel_ino_t;



typedef unsigned int __kernel_mode_t;



typedef int __kernel_pid_t;



typedef int __kernel_ipc_pid_t;



typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;



typedef __kernel_long_t __kernel_suseconds_t;



typedef int __kernel_daddr_t;



typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
# 71 "/usr/include/asm-generic/posix_types.h" 3 4
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;




typedef struct {
 int val[2];
} __kernel_fsid_t;





typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
# 18 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 2 3 4
# 7 "/usr/include/x86_64-linux-gnu/asm/posix_types.h" 2 3 4
# 36 "/usr/include/linux/posix_types.h" 2 3 4
# 9 "/usr/include/linux/types.h" 2 3 4
# 27 "/usr/include/linux/types.h" 3 4
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;

typedef __u16 __sum16;
typedef __u32 __wsum;
# 40 "../include/libddcb.h" 2
# 122 "../include/libddcb.h"

# 122 "../include/libddcb.h"
struct _asv_runtime_dma_error {
 uint64_t raddr_be64;

 uint32_t rfmt_chan_disccnt_be32;
 uint16_t rdmae_be16;
 uint16_t rsge_be16;

 uint64_t res0;
 uint64_t res1;
 uint64_t waddr_be64;

 uint32_t wfmt_chan_disccnt_be32;
 uint16_t wdmae_be16;
 uint16_t wsge_be16;

 uint64_t res2;
 uint64_t res3;
} __attribute__((__packed__)) __attribute__((__may_alias__));
# 154 "../include/libddcb.h"
typedef struct ddcb_cmd {
 __u64 next_addr;
 __u64 flags;

 __u8 acfunc;
 __u8 cmd;
 __u8 asiv_length;
 __u8 asv_length;
 __u16 cmdopts;
 __u16 retc;

 __u16 attn;
 __u16 vcrc;
 __u32 progress;

 __u64 deque_ts;
 __u64 cmplt_ts;
 __u64 disp_ts;

 __u64 ddata_addr;

 __u8 asv[64];

 union {

  struct {
   __u64 ats;
   __u8 asiv[96];
  };

  __u8 __asiv[104];
 };
} ddcb_cmd_t;

static inline void ddcb_cmd_init(struct ddcb_cmd *cmd)
{
 __u64 tstamp;

 tstamp = cmd->disp_ts;
 memset(cmd, 0, sizeof(*cmd));
 cmd->disp_ts = tstamp;
}


typedef struct card_dev_t *accel_t;






const char *ddcb_retc_strerror(int ddcb_retc);
const char *ddcb_strerror(int accel_rc);
const char *accel_strerror(accel_t card, int card_rc);

void ddcb_hexdump(FILE *fp, const void *buff, unsigned int size);
void ddcb_debug(int verbosity);
void ddcb_set_logfile(FILE *fd_out);
# 222 "../include/libddcb.h"
accel_t accel_open(int card_no, unsigned int card_type, unsigned int mode,
     int *rc, uint64_t appl_id, uint64_t appl_id_mask);

int accel_close(accel_t card);
# 237 "../include/libddcb.h"
int accel_ddcb_execute(accel_t card, struct ddcb_cmd *req, int *card_rc,
         int *card_errno);


uint64_t accel_read_reg64(accel_t card, uint32_t offs, int *card_rc);
uint32_t accel_read_reg32(accel_t card, uint32_t offs, int *card_rc);
int accel_write_reg64(accel_t card, uint32_t offs, uint64_t val);
int accel_write_reg32(accel_t card, uint32_t offs, uint32_t val);
uint64_t accel_get_app_id(accel_t card);







uint64_t accel_get_queue_work_time(accel_t card);
uint64_t accel_get_frequency(accel_t card);
void accel_dump_hardware_version(accel_t card, FILE *fp);
# 274 "../include/libddcb.h"
int accel_pin_memory(accel_t card, const void *addr, size_t size, int dir);
# 287 "../include/libddcb.h"
int accel_unpin_memory(accel_t card, const void *addr, size_t size);
# 308 "../include/libddcb.h"
void *accel_malloc(accel_t card, size_t size);
int accel_free(accel_t card, void *ptr, size_t size);
# 325 "../include/libddcb.h"
struct ddcb_accel_funcs {
 int card_type;
 const char *card_name;


 void *(* card_open)(int card_no, unsigned int mode, int *card_rc,
       uint64_t appl_id, uint64_t appl_id_mask);
 int (* card_close)(void *card_data);
 int (* ddcb_execute)(void *card_data, struct ddcb_cmd *req);

 const char * (* card_strerror)(void *card_data, int card_rc);



 uint64_t (* card_read_reg64)(void *card_data, uint32_t offs,
         int *card_rc);
 uint32_t (* card_read_reg32)(void *card_data, uint32_t offs,
         int *card_rc);
 int (* card_write_reg64)(void *card_data, uint32_t offs,
     uint64_t val);
 int (* card_write_reg32)(void *card_data, uint32_t offs,
     uint32_t val);






 uint64_t (* card_get_app_id)(void *card_data);
 uint64_t (* card_get_queue_work_time)(void *card_data);
 uint64_t (* card_get_frequency)(void *card_data);
 void (* card_dump_hardware_version)(void *card_data, FILE *fp);




 int (* card_pin_memory)(void *card_data, const void *addr,
    size_t size, int dir);
 int (* card_unpin_memory)(void *card_data, const void *addr,
      size_t size);
 void * (* card_malloc)(void *card_data, size_t size);
 int (* card_free)(void *card_data, void *ptr, size_t size);


 int (* dump_statistics)(FILE *fp);

 pthread_mutex_t slock;
 unsigned long num_open;
 unsigned long num_execute;
 unsigned long num_close;

 unsigned long time_open;
 unsigned long time_execute;
 unsigned long time_close;


 void *priv_data;
};
# 391 "../include/libddcb.h"
int accel_dump_statistics(struct ddcb_accel_funcs *accel, FILE *fp);
# 400 "../include/libddcb.h"
int ddcb_register_accelerator(struct ddcb_accel_funcs *accel);
# 40 "../include/libzHW.h" 2
# 1 "../include/deflate_ddcb.h" 1
# 29 "../include/deflate_ddcb.h"
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctl.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 2 3 4
# 30 "../include/deflate_ddcb.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 31 "../include/deflate_ddcb.h" 2
# 1 "../include/linux/uapi/linux/genwqe/genwqe_card.h" 1
# 26 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
# 1 "/usr/include/linux/ioctl.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 1 3 4
# 5 "/usr/include/linux/ioctl.h" 2 3 4
# 27 "../include/linux/uapi/linux/genwqe/genwqe_card.h" 2
# 245 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
struct genwqe_reg_io {
 __u64 num;
 __u64 val64;
};
# 323 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
enum genwqe_card_state {
 GENWQE_CARD_UNUSED = 0,
 GENWQE_CARD_USED = 1,
 GENWQE_CARD_FATAL_ERROR = 2,
 GENWQE_CARD_RELOAD_BITSTREAM = 3,
 GENWQE_CARD_STATE_MAX,
};


struct genwqe_bitstream {
 __u64 data_addr;
 __u32 size;
 __u32 crc;
 __u64 target_addr;
 __u32 partition;
 __u32 uid;

 __u64 slu_id;
 __u64 app_id;

 __u16 retc;
 __u16 attn;
 __u32 progress;
};
# 355 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
struct genwqe_debug_data {
 char driver_version[64];
 __u64 slu_unitcfg;
 __u64 app_unitcfg;

 __u8 ddcb_before[256];
 __u8 ddcb_prev[256];
 __u8 ddcb_finished[256];
};
# 414 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
struct genwqe_ddcb_cmd {

 __u64 next_addr;
 __u64 flags;

 __u8 acfunc;
 __u8 cmd;
 __u8 asiv_length;
 __u8 asv_length;
 __u16 cmdopts;
 __u16 retc;

 __u16 attn;
 __u16 vcrc;
 __u32 progress;

 __u64 deque_ts;
 __u64 cmplt_ts;
 __u64 disp_ts;


 __u64 ddata_addr;


 __u8 asv[64];


 union {
  struct {
   __u64 ats;
   __u8 asiv[96];
  };

  __u8 __asiv[104];
 };

};
# 482 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
struct genwqe_mem {
 __u64 addr;
 __u64 size;
 __u64 direction;
 __u64 flags;
};
# 32 "../include/deflate_ddcb.h" 2
# 93 "../include/deflate_ddcb.h"
struct zedc_wsp {
 uint8_t dict[2][(0x8000 + 16)];
 uint8_t tree[(0x0200)];
};
# 110 "../include/deflate_ddcb.h"
struct zedc_asiv_infl {
 uint64_t in_buff;
 uint32_t in_buff_len;
 uint32_t in_crc32;

 uint64_t out_buff;
 uint32_t out_buff_len;
 uint32_t in_adler32;

 uint64_t in_dict;
 uint32_t in_dict_len;
 uint32_t rsvd_0;

 uint64_t inp_scratch;
 uint32_t in_scratch_len;
 uint16_t in_hdr_bits;
 uint8_t hdr_ib;
 uint8_t scratch_ib;

 uint64_t out_dict;
 uint32_t out_dict_len;
 uint32_t rsvd_1;

 uint64_t rsvd_2;
 uint64_t rsvd_3;
} __attribute__((__packed__)) __attribute__((__may_alias__));
# 149 "../include/deflate_ddcb.h"
struct zedc_asv_infl {
 uint16_t out_dict_used;
 uint16_t copyblock_len;
 uint8_t rsvd_84;
 uint8_t infl_stat;
 uint8_t rsvd_86;
 uint8_t proc_bits;

 uint32_t hdr_start;
 uint8_t rsvd_8c;
 uint8_t hdr_start_bits;
 uint16_t out_hdr_bits;

 uint32_t out_crc32;
 uint32_t out_adler32;

 uint32_t inp_processed;
 uint32_t outp_returned;

 uint64_t rsvd_a0[3];

 uint8_t out_dict_offs;
 uint8_t rsvd_b9;
 uint16_t obytes_in_dict;
 uint16_t rsvd_bc;
 uint16_t rsvd_be;
}__attribute__((__packed__)) __attribute__((__may_alias__));



struct zedc_asiv_defl {
 uint64_t in_buff;
 uint32_t in_buff_len;
 uint32_t in_crc32;

 uint64_t out_buff;
 uint32_t out_buff_len;
 uint32_t in_adler32;

 uint64_t in_dict;
 uint32_t in_dict_len;
 uint32_t rsvd_0;

 uint64_t rsvd_1;
 uint64_t rsvd_2;

 uint64_t out_dict;
 uint32_t out_dict_len;
 uint32_t rsvd_3;

 uint64_t rsvd_4;

 uint8_t ibits[7];
 uint8_t inumbits;
} __attribute__((__packed__)) __attribute__((__may_alias__));


struct zedc_asv_defl {
 uint16_t out_dict_used;
 uint8_t resrv_1[5];
 uint8_t onumbits;
 uint64_t resrv_2;

 uint32_t out_crc32;
 uint32_t out_adler32;
 uint32_t inp_processed;
 uint32_t outp_returned;

 uint8_t obits[(24)];
 uint8_t out_dict_offs;
 uint8_t obits_extra[(7)];
} __attribute__((__packed__)) __attribute__((__may_alias__));
# 41 "../include/libzHW.h" 2
# 1 "../include/deflate_fifo.h" 1
# 35 "../include/deflate_fifo.h"
# 1 "/usr/include/assert.h" 1 3 4
# 66 "/usr/include/assert.h" 3 4




# 69 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 36 "../include/deflate_fifo.h" 2
# 45 "../include/deflate_fifo.h"

# 45 "../include/deflate_fifo.h"
struct zedc_fifo {
 unsigned int push;
 unsigned int pop;
 uint8_t fifo[256];
};

static inline void fifo_init(struct zedc_fifo *fifo)
{
 memset(fifo->fifo, 0x00, 256);
 fifo->pop = fifo->push = 0;
}

static inline int fifo_empty(struct zedc_fifo *fifo)
{
 return (fifo->pop == fifo->push);
}

static inline unsigned int fifo_used(struct zedc_fifo *fifo)
{
 return ((fifo->push - fifo->pop) & (256 - 1));
}

static inline unsigned int fifo_free(struct zedc_fifo *fifo)
{
 return 256 - fifo_used(fifo) - 1;
}

static inline int fifo_push(struct zedc_fifo *fifo, uint8_t data)
{
 if (fifo_free(fifo) < 1)
  return 0;

 fifo->fifo[fifo->push] = data;
 fifo->push = (fifo->push + 1) & (256 - 1);
 return 1;
}

static inline int fifo_push32(struct zedc_fifo *fifo, uint32_t data)
{
 unsigned int i;
 union {
  uint32_t u32;
  uint8_t u8[4];
 } d;

 if (fifo_free(fifo) < (sizeof((d.u8)) / sizeof((d.u8)[0])))
  return 0;

 d.u32 = data;
 for (i = 0; i < (sizeof((d.u8)) / sizeof((d.u8)[0])); i++) {
  fifo->fifo[fifo->push] = d.u8[i];
  fifo->push = (fifo->push + 1) & (256 - 1);
 }
 return 1;
}

static inline int fifo_pop(struct zedc_fifo *fifo, uint8_t *data)
{
 if (fifo_empty(fifo))
  return 0;

 *data = fifo->fifo[fifo->pop];
 fifo->pop = (fifo->pop + 1) & (256 - 1);
 return 1;
}

static inline int fifo_pop16(struct zedc_fifo *fifo, uint16_t *data)
{
 unsigned int i;
 union {
  uint16_t u16;
  uint8_t u8[2];
 } d;

 if (fifo_used(fifo) < (sizeof((d.u8)) / sizeof((d.u8)[0])))
  return 0;

 for (i = 0; i < (sizeof((d.u8)) / sizeof((d.u8)[0])); i++)
  fifo_pop(fifo, &d.u8[i]);

 *data = d.u16;
 return 1;
}
# 42 "../include/libzHW.h" 2
# 131 "../include/libzHW.h"
enum zedc_mtype {
 DDCB_DMA_TYPE_MASK = 0x18,
 DDCB_DMA_TYPE_FLAT = 0x08,
 DDCB_DMA_TYPE_SGLIST = 0x10,
 DDCB_DMA_WRITEABLE = 0x04,
 DDCB_DMA_PIN_MEMORY = 0x20,
};







struct zedc_dict_ref_s {
 uint8_t *addr;
 unsigned wr;
 unsigned in_offs;
 unsigned long last_total;
};

typedef enum e_head_state {
 HEADER_START = 0,
 FLAGS_CHECK_EMPTY,
 FLAGS_CHECK_EXTRA, FLAGS_GET_EXTRA_LEN1, FLAGS_GET_EXTRA_LEN2,
 FLAGS_GET_EXTRA,
 FLAGS_CHECK_FNAME, FLAGS_GET_FNAME,
 FLAGS_CHECK_FCOMMENT, FLAGS_GET_FCOMMENT,
 FLAGS_CHECK_FHCRC, FLAGS_GET_FHCRC1, FLAGS_GET_FHCRC2,
 FLAGS_CHECK_FTEXT,
 ZLIB_ADLER,
 HEADER_DONE
} head_state;





typedef struct gzedc_header_s {
 int text;
 unsigned long time;
 int xflags;
 int os;
 uint8_t *extra;
 unsigned int extra_len;
 unsigned int extra_max;
 char *name;
 unsigned int name_max;
 char *comment;
 unsigned int comm_max;
 int hcrc;
 int done;


} gzedc_header;

typedef gzedc_header *gzedc_headerp;
# 218 "../include/libzHW.h"
typedef struct zedc_stream_s {

 int level;
 int method;
 int windowBits;




 int memLevel;
 int strategy;
 int flush;
 int data_type;


 const uint8_t *next_in;
 unsigned int avail_in;
 unsigned long total_in;

 uint8_t *next_out;
 unsigned int avail_out;
 unsigned long total_out;

 uint32_t crc32;
 uint32_t adler32;
# 255 "../include/libzHW.h"
 void *device;
 struct ddcb_cmd cmd;
 uint16_t retc;
 uint16_t attn;
 uint32_t progress;


 int format;
 int flags;


 struct zedc_fifo out_fifo;
 struct zedc_fifo in_fifo;
 head_state header_state;
 uint16_t gzip_hcrc;
 int gzip_header_idx;


 int onumbits;
 uint8_t obyte;


 int eob_seen;
 int eob_added;
 int header_added;
 int trailer_added;
 int havedict;


 struct zedc_wsp *wsp;
 int wsp_page;
 enum zedc_mtype dma_type[3];


 uint32_t file_size;
 uint32_t file_adler32;
 uint32_t file_crc32;
 uint32_t dict_adler32;
 struct gzedc_header_s *gzip_head;



 uint32_t in_hdr_scratch_len;
 uint16_t in_hdr_bits;
 uint8_t hdr_ib;
 uint8_t scratch_ib;


 uint32_t inp_processed;
 uint32_t outp_returned;
 uint8_t proc_bits;







 uint8_t infl_stat;




 uint32_t hdr_start;
 uint16_t out_hdr_bits;
 uint8_t out_hdr_start_bits;
 uint16_t copyblock_len;


 uint32_t tree_bits;
 uint32_t pad_bits;
 uint32_t scratch_bits;
 uint64_t pre_scratch_bits;
 uint32_t inp_data_offs;
 uint32_t in_data_used;


 uint16_t dict_len;
 uint8_t out_dict_offs;
 uint16_t obytes_in_dict;


 int prefx_len;
 int prefx_idx;
 uint8_t prefx[18];
 uint16_t xlen;

 int postfx_len;
 int postfx_idx;
 uint8_t postfx[18];
} zedc_stream;

typedef struct zedc_stream_s *zedc_streamp;






typedef struct zedc_dev_t *zedc_handle_t;

zedc_handle_t zedc_open(int card_no, int card_type, int mode, int *err_code);
int zedc_close(zedc_handle_t zedc);

void zedc_overwrite_slu_id(zedc_handle_t zedc, uint64_t slu_id);
void zedc_overwrite_app_id(zedc_handle_t zedc, uint64_t app_id);
# 377 "../include/libzHW.h"
int zedc_pin_memory(zedc_handle_t zedc, const void *addr, size_t size,
      int dir);
# 389 "../include/libzHW.h"
int zedc_unpin_memory(zedc_handle_t zedc, const void *addr, size_t size);


void *zedc_memalign(zedc_handle_t zedc, size_t size, enum zedc_mtype mtype);
int zedc_free(zedc_handle_t zedc, void *ptr, size_t size,
        enum zedc_mtype mtype);


int zedc_pstatus(struct zedc_stream_s *strm, const char *task);
int zedc_clearerr(zedc_handle_t zedc);
const char *zedc_strerror(int errnum);
# 416 "../include/libzHW.h"
int zedc_carderr(zedc_handle_t zedc);
# 427 "../include/libzHW.h"
int zedc_liberr(zedc_handle_t zedc);

struct ddcb_cmd *zedc_last_cmd(struct zedc_stream_s *strm);





int zedc_deflateInit2(zedc_streamp strm,
         int level,
         int method,
         int windowBits,
         int memLevel,
         int strategy);

int zedc_deflateParams(zedc_streamp strm, int level, int strategy);
int zedc_deflateReset(zedc_streamp strm);
int zedc_deflateSetDictionary(zedc_streamp strm,
         const uint8_t *dictionary,
         unsigned int dictLength);
int zedc_deflatePrime(zedc_streamp strm, int bits, int value);
int zedc_deflateCopy(zedc_streamp dest, zedc_streamp source);
int zedc_deflatePending(zedc_streamp strm, unsigned *pending, int *bits);

int zedc_deflate(zedc_streamp strm, int flush);
int zedc_deflateEnd(zedc_streamp strm);

int zedc_deflateSetHeader(zedc_streamp strm, gzedc_headerp head);





int zedc_inflateInit2(zedc_streamp strm, int windowBits);

int zedc_inflateReset(zedc_streamp strm);
int zedc_inflateReset2(zedc_streamp strm, int windowBits);
int zedc_inflateSetDictionary(zedc_streamp strm,
         const uint8_t *dictionary,
         unsigned int dictLength);
int zedc_inflateGetDictionary(zedc_streamp strm,
         uint8_t *dictionary,
         unsigned int *dictLength);

int zedc_inflatePrime(zedc_streamp strm, int bits, int value);
int zedc_inflateSync(zedc_streamp strm);

int zedc_inflate(zedc_streamp strm, int flush);
int zedc_inflateEnd(zedc_streamp strm);

int zedc_inflateGetHeader(zedc_streamp strm, gzedc_headerp head);


int zedc_inflateSaveBuffers(zedc_streamp strm, const char *prefix);
void zedc_lib_debug(int onoff);
void zedc_set_logfile(FILE *logfile);

int zedc_inflate_pending_output(struct zedc_stream_s *strm);
int zedc_read_pending_output(struct zedc_stream_s *strm,
   uint8_t *buf, unsigned int len);






const char *zedc_Version(void);
# 24 "hardware.c" 2
# 1 "/usr/include/x86_64-linux-gnu/asm/byteorder.h" 1 3 4



# 1 "/usr/include/linux/byteorder/little_endian.h" 1 3 4
# 12 "/usr/include/linux/byteorder/little_endian.h" 3 4
# 1 "/usr/include/linux/swab.h" 1 3 4





# 1 "/usr/include/x86_64-linux-gnu/asm/swab.h" 1 3 4







# 7 "/usr/include/x86_64-linux-gnu/asm/swab.h" 3 4
static __inline__ __u32 __arch_swab32(__u32 val)
{
 __asm__("bswapl %0" : "=r" (val) : "0" (val));
 return val;
}


static __inline__ __u64 __arch_swab64(__u64 val)
{
# 30 "/usr/include/x86_64-linux-gnu/asm/swab.h" 3 4
 __asm__("bswapq %0" : "=r" (val) : "0" (val));
 return val;

}
# 7 "/usr/include/linux/swab.h" 2 3 4
# 46 "/usr/include/linux/swab.h" 3 4
static __inline__ __u16 __fswab16(__u16 val)
{





 return ((__u16)( (((__u16)(val) & (__u16)0x00ffU) << 8) | (((__u16)(val) & (__u16)0xff00U) >> 8)));

}

static __inline__ __u32 __fswab32(__u32 val)
{



 return __arch_swab32(val);



}

static __inline__ __u64 __fswab64(__u64 val)
{



 return __arch_swab64(val);







}

static __inline__ __u32 __fswahw32(__u32 val)
{



 return ((__u32)( (((__u32)(val) & (__u32)0x0000ffffUL) << 16) | (((__u32)(val) & (__u32)0xffff0000UL) >> 16)));

}

static __inline__ __u32 __fswahb32(__u32 val)
{



 return ((__u32)( (((__u32)(val) & (__u32)0x00ff00ffUL) << 8) | (((__u32)(val) & (__u32)0xff00ff00UL) >> 8)));

}
# 154 "/usr/include/linux/swab.h" 3 4
static __inline__ __u16 __swab16p(const __u16 *p)
{



 return (__builtin_constant_p((__u16)(*p)) ? ((__u16)( (((__u16)(*p) & (__u16)0x00ffU) << 8) | (((__u16)(*p) & (__u16)0xff00U) >> 8))) : __fswab16(*p));

}





static __inline__ __u32 __swab32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x000000ffUL) << 24) | (((__u32)(*p) & (__u32)0x0000ff00UL) << 8) | (((__u32)(*p) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(*p) & (__u32)0xff000000UL) >> 24))) : __fswab32(*p));

}





static __inline__ __u64 __swab64p(const __u64 *p)
{



 return (__builtin_constant_p((__u64)(*p)) ? ((__u64)( (((__u64)(*p) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(*p) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(*p) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(*p) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(*p) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(*p) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(*p) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(*p) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(*p));

}







static __inline__ __u32 __swahw32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x0000ffffUL) << 16) | (((__u32)(*p) & (__u32)0xffff0000UL) >> 16))) : __fswahw32(*p));

}







static __inline__ __u32 __swahb32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x00ff00ffUL) << 8) | (((__u32)(*p) & (__u32)0xff00ff00UL) >> 8))) : __fswahb32(*p));

}





static __inline__ void __swab16s(__u16 *p)
{



 *p = __swab16p(p);

}




static __inline__ void __swab32s(__u32 *p)
{



 *p = __swab32p(p);

}





static __inline__ void __swab64s(__u64 *p)
{



 *p = __swab64p(p);

}







static __inline__ void __swahw32s(__u32 *p)
{



 *p = __swahw32p(p);

}







static __inline__ void __swahb32s(__u32 *p)
{



 *p = __swahb32p(p);

}
# 13 "/usr/include/linux/byteorder/little_endian.h" 2 3 4
# 43 "/usr/include/linux/byteorder/little_endian.h" 3 4
static __inline__ __le64 __cpu_to_le64p(const __u64 *p)
{
 return (__le64)*p;
}
static __inline__ __u64 __le64_to_cpup(const __le64 *p)
{
 return (__u64)*p;
}
static __inline__ __le32 __cpu_to_le32p(const __u32 *p)
{
 return (__le32)*p;
}
static __inline__ __u32 __le32_to_cpup(const __le32 *p)
{
 return (__u32)*p;
}
static __inline__ __le16 __cpu_to_le16p(const __u16 *p)
{
 return (__le16)*p;
}
static __inline__ __u16 __le16_to_cpup(const __le16 *p)
{
 return (__u16)*p;
}
static __inline__ __be64 __cpu_to_be64p(const __u64 *p)
{
 return (__be64)__swab64p(p);
}
static __inline__ __u64 __be64_to_cpup(const __be64 *p)
{
 return __swab64p((__u64 *)p);
}
static __inline__ __be32 __cpu_to_be32p(const __u32 *p)
{
 return (__be32)__swab32p(p);
}
static __inline__ __u32 __be32_to_cpup(const __be32 *p)
{
 return __swab32p((__u32 *)p);
}
static __inline__ __be16 __cpu_to_be16p(const __u16 *p)
{
 return (__be16)__swab16p(p);
}
static __inline__ __u16 __be16_to_cpup(const __be16 *p)
{
 return __swab16p((__u16 *)p);
}
# 5 "/usr/include/x86_64-linux-gnu/asm/byteorder.h" 2 3 4
# 25 "hardware.c" 2
# 52 "hardware.c"

# 52 "hardware.c"
struct hw_state {
 int card_no;
 int card_type;
 unsigned int mode;

 zedc_stream h;
 int rc;
 unsigned int page_size;


 size_t ibuf_total;
 size_t ibuf_avail;
 uint8_t *ibuf_base;
 uint8_t *ibuf;

 size_t obuf_total;
 size_t obuf_avail;
 uint8_t *obuf_base;
 uint8_t *obuf;
 uint8_t *obuf_next;

 unsigned int inflate_req;
 unsigned int deflate_req;
};




static int output_buffer_empty(struct hw_state *s)
{
 return (s->obuf_avail == s->obuf_total);
}




static int output_buffer_bytes(struct hw_state *s)
{
 return s->obuf - s->obuf_next;
}





static int zedc_verbose = 0x00000000;
static int zlib_xcheck = 1;
static unsigned int zlib_ibuf_total = (768 * 1024);
static unsigned int zlib_obuf_total = (128 * 1024);




static zedc_handle_t zedc_cards[128 + 1];

static zedc_handle_t __zedc_open(int card_no, int card_type, int mode,
     int *err_code)
{
 int flags = (zlib_inflate_flags | zlib_deflate_flags);

 if ((flags & ZLIB_FLAG_CACHE_HANDLES) == 0x0)
  return zedc_open(card_no, card_type, mode,
     err_code);

 if (card_no == -1) {
  if (zedc_cards[128])
   return zedc_cards[128];

  zedc_cards[128] = zedc_open(card_no, card_type, mode,
         err_code);
  return zedc_cards[128];
 }

 if (card_no < 0 || card_no >= 128)
  return 
# 126 "hardware.c" 3 4
        ((void *)0)
# 126 "hardware.c"
            ;

 if (zedc_cards[card_no] != 
# 128 "hardware.c" 3 4
                           ((void *)0)
# 128 "hardware.c"
                               ) {
  return zedc_cards[card_no];
 }

 zedc_cards[card_no] = zedc_open(card_no, card_type, mode,
     err_code);
 return zedc_cards[card_no];
}

static int __zedc_close(zedc_handle_t zedc __attribute__((unused)))
{
 int flags = (zlib_inflate_flags | zlib_deflate_flags);

 if ((flags & ZLIB_FLAG_CACHE_HANDLES) == 0x0)
  return zedc_close(zedc);


 return 0;
}

static void stream_zedc_to_zlib(z_streamp s, zedc_streamp h)
{
 s->next_in = (uint8_t *)h->next_in;
 s->avail_in = h->avail_in;
 s->total_in = h->total_in;

 s->next_out = h->next_out;
 s->avail_out = h->avail_out;
 s->total_out = h->total_out;
}

static void stream_zlib_to_zedc(zedc_streamp h, z_streamp s)
{
 h->next_in = s->next_in;
 h->avail_in = s->avail_in;
 h->total_in = s->total_in;

 h->next_out = s->next_out;
 h->avail_out = s->avail_out;
 h->total_out = s->total_out;
}





static void __fixup_crc_or_adler(z_streamp s, zedc_streamp h)
{
 s->adler = (h->format == 2) ? h->crc32 : h->adler32;
}
# 187 "hardware.c"
static void __prep_crc_or_adler(z_streamp s, zedc_streamp h)
{
 if (s->total_in == 0) {
  if (h->format == 1)
   s->adler = 1;
  else
   s->adler = 0;
 }
}

static void __free(void *ptr)
{
 if (ptr == 
# 199 "hardware.c" 3 4
           ((void *)0)
# 199 "hardware.c"
               )
  return;
 free(ptr);
}
# 217 "hardware.c"
uLong h_deflateBound(z_streamp strm __attribute__((unused)), uLong sourceLen)
{
 unsigned int page_size = sysconf(
# 219 "hardware.c" 3 4
                                 _SC_PAGESIZE
# 219 "hardware.c"
                                             );

 return sourceLen * 15/8 + page_size;
}

int h_deflateInit2_(z_streamp strm,
      int level,
      int method,
      int windowBits,
      int memLevel,
      int strategy,
      const char *version __attribute__((unused)),
      int stream_size __attribute__((unused)))
{
 int rc, err_code = 0;
 struct hw_state *s;
 zedc_handle_t zedc;
 unsigned int page_size = sysconf(
# 236 "hardware.c" 3 4
                                 _SC_PAGESIZE
# 236 "hardware.c"
                                             );

 strm->total_in = 0;
 strm->total_out = 0;

 s = calloc(1, sizeof(*s));
 if (s == 
# 242 "hardware.c" 3 4
         ((void *)0)
# 242 "hardware.c"
             )
  return 
# 243 "hardware.c" 3
        (-4)
# 243 "hardware.c"
                   ;

 s->card_type = zlib_accelerator;
 s->card_no = zlib_card;
 s->mode = 0x0008 | 0x0004;

 if (zlib_deflate_flags & ZLIB_FLAG_USE_POLLING)
  s->mode |= 0x0020;

 zedc = __zedc_open(s->card_no, s->card_type, s->mode, &err_code);
 if (!zedc) {
  rc = 
# 254 "hardware.c" 3
      (-2)
# 254 "hardware.c"
                    ;
  goto free_hw_state;
 }

 s->h.device = zedc;
 s->deflate_req = 0;
 s->page_size = page_size;


 s->h.dma_type[0] = DDCB_DMA_TYPE_SGLIST;
 s->h.dma_type[1] = DDCB_DMA_TYPE_SGLIST;
 s->h.dma_type[2] = DDCB_DMA_TYPE_SGLIST;

 if (zlib_deflate_flags & ZLIB_FLAG_USE_FLAT_BUFFERS) {
  if (zlib_ibuf_total != 0) {
   s->h.dma_type[0] = DDCB_DMA_TYPE_FLAT;
   s->h.dma_type[1] = DDCB_DMA_TYPE_FLAT;
  }
  s->h.dma_type[2] = DDCB_DMA_TYPE_FLAT;
 }






 if (zlib_xcheck)
  s->h.flags |= (1 << 0);

 if (zedc_verbose & 0x00010000)
  s->h.flags |= (1 << 1);

 if (zlib_deflate_flags & ZLIB_FLAG_OMIT_LAST_DICT)
  s->h.flags |= (1 << 2);

 if (zlib_ibuf_total) {
  s->ibuf_total = s->ibuf_avail = zlib_ibuf_total;
  s->ibuf_base = s->ibuf = zedc_memalign(zedc, s->ibuf_total,
      s->h.dma_type[0]);
  if (s->ibuf_base == 
# 293 "hardware.c" 3 4
                     ((void *)0)
# 293 "hardware.c"
                         ) {
   rc = 
# 294 "hardware.c" 3
       (-4)
# 294 "hardware.c"
                  ;
   goto close_card;
  }

  s->obuf_total = s->obuf_avail =
   h_deflateBound(strm, zlib_ibuf_total);

  s->obuf_base = s->obuf = s->obuf_next =
   zedc_memalign(zedc, s->obuf_total,
          s->h.dma_type[1]);
  if (s->obuf_base == 
# 304 "hardware.c" 3 4
                     ((void *)0)
# 304 "hardware.c"
                         ) {
   rc = 
# 305 "hardware.c" 3
       (-4)
# 305 "hardware.c"
                  ;
   goto free_ibuf;
  }
 }

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflateInit2_: card_type=%d card_no=%d " "zlib_ibuf_total=%d\n", strm, s->card_type, s->card_no, zlib_ibuf_total); } while (0)

                   ;

 rc = zedc_deflateInit2(&s->h, level, method, windowBits, memLevel,
          strategy);
 __fixup_crc_or_adler(strm, &s->h);

 if (rc != 0) {
  rc = ((rc));
  goto free_obuf;
 }

 strm->state = (void *)s;
 return ((rc));

 free_obuf:
 zedc_free(zedc, s->obuf_base, s->obuf_total, s->h.dma_type[1]);
 free_ibuf:
 zedc_free(zedc, s->ibuf_base, s->ibuf_total, s->h.dma_type[0]);
 close_card:
 __zedc_close(zedc);
 free_hw_state:
 __free(s);
 return rc;
}
# 345 "hardware.c"
int h_deflateCopy(z_streamp dest, z_streamp source)
{
 struct hw_state *s_source;
 struct hw_state *s_dest;
 zedc_handle_t zedc;
 int rc = 
# 350 "hardware.c" 3
         0
# 350 "hardware.c"
             , err_code;

 s_source = (struct hw_state *)source->state;
 s_dest = calloc(1, sizeof(*s_dest));
 if (s_dest == 
# 354 "hardware.c" 3 4
              ((void *)0)
# 354 "hardware.c"
                  ) {
  do { fprintf(zlib_log, "%s:%u: Error: " "Cannot get destination buffer\n", "hardware.c", 355); } while (0);
  return 
# 356 "hardware.c" 3
        (-4)
# 356 "hardware.c"
                   ;
 }
 memcpy(s_dest, s_source, sizeof(*s_dest));

 rc = ((zedc_deflateCopy(&s_dest->h, &s_source->h)));
 if (rc != 
# 361 "hardware.c" 3
          0
# 361 "hardware.c"
              ) {
  do { fprintf(zlib_log, "%s:%u: Error: " "zEDC deflateCopy returned %d\n", "hardware.c", 362, rc); } while (0);
  goto err_free_s_dest;
 }

 zedc = __zedc_open(s_dest->card_no, s_dest->card_type,
      s_dest->mode, &err_code);
 if (!zedc) {
  do { fprintf(zlib_log, "%s:%u: Error: " "Cannot open accelerator handle\n", "hardware.c", 369); } while (0);
  rc = 
# 370 "hardware.c" 3
      (-2)
# 370 "hardware.c"
                    ;
  goto err_zedc_close;
 }
 s_dest->h.device = zedc;
 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "  Allocated zedc device %p\n", zedc); } while (0);
# 384 "hardware.c"
 if (s_source->ibuf_total) {
  s_dest->ibuf_total = s_source->ibuf_total;
  s_dest->ibuf_avail = s_source->ibuf_avail;
  s_dest->ibuf_base = zedc_memalign(zedc, s_dest->ibuf_total,
     s_dest->h.dma_type[0]);
  if (s_dest->ibuf_base == 
# 389 "hardware.c" 3 4
                          ((void *)0)
# 389 "hardware.c"
                              ) {
   rc = 
# 390 "hardware.c" 3
       (-4)
# 390 "hardware.c"
                  ;
   goto err_zedc_close;
  }
  s_dest->ibuf = s_dest->ibuf_base +
   (s_source->ibuf - s_source->ibuf_base);
  memcpy(s_dest->ibuf_base, s_source->ibuf_base,
         s_source->ibuf - s_source->ibuf_base);
 }
 if (s_source->obuf_total) {
  s_dest->obuf_total = s_source->obuf_total;
  s_dest->obuf_avail = s_source->obuf_avail;
  s_dest->obuf_base = zedc_memalign(zedc, s_dest->obuf_total,
     s_dest->h.dma_type[1]);
  if (s_dest->obuf_base == 
# 403 "hardware.c" 3 4
                          ((void *)0)
# 403 "hardware.c"
                              ) {
   rc = 
# 404 "hardware.c" 3
       (-4)
# 404 "hardware.c"
                  ;
   goto err_free_ibuf_base;
  }
  s_dest->obuf = s_dest->obuf_base +
   (s_source->obuf - s_source->obuf_base);
  s_dest->obuf_next = s_dest->obuf_base +
   (s_source->obuf_next - s_source->obuf_base);
  memcpy(s_dest->obuf_next, s_source->obuf_next,
         s_dest->obuf_total - s_dest->obuf_avail);
 }

 dest->state = (void *)s_dest;
 return 
# 416 "hardware.c" 3
       0
# 416 "hardware.c"
           ;

 err_free_ibuf_base:
 free(s_dest->ibuf_base);
 s_dest->ibuf_base = 
# 420 "hardware.c" 3 4
                    ((void *)0)
# 420 "hardware.c"
                        ;
 err_zedc_close:
 __zedc_close(zedc);
 err_free_s_dest:
 free(s_dest);
 return rc;
}

int h_deflateReset(z_streamp strm)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflateReset\n", strm); } while (0);
 if (strm == 
# 435 "hardware.c" 3 4
            ((void *)0)
# 435 "hardware.c"
                )
  return 
# 436 "hardware.c" 3
        (-2)
# 436 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 439 "hardware.c" 3 4
         ((void *)0)
# 439 "hardware.c"
             )
  return 
# 440 "hardware.c" 3
        (-2)
# 440 "hardware.c"
                      ;
 h = &s->h;


 strm->total_in = 0;
 strm->total_out = 0;

 s->deflate_req = 0;
 s->ibuf_avail = s->ibuf_total;
 s->ibuf = s->ibuf_base;
 s->obuf_avail = s->obuf_total;
 s->obuf = s->obuf_base;
 s->obuf_next = s->obuf_base;
 s->rc = 
# 453 "hardware.c" 3
              0
# 453 "hardware.c"
                  ;

 rc = zedc_deflateReset(h);
 __fixup_crc_or_adler(strm, h);

 return ((rc));
}

int h_deflateSetDictionary(z_streamp strm, const uint8_t *dictionary,
      unsigned int dictLength)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflateSetDictionary dictionary=%p dictLength=%d\n", strm, dictionary, dictLength); } while (0)
                                ;
 if (strm == 
# 470 "hardware.c" 3 4
            ((void *)0)
# 470 "hardware.c"
                )
  return 
# 471 "hardware.c" 3
        (-2)
# 471 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 474 "hardware.c" 3 4
         ((void *)0)
# 474 "hardware.c"
             )
  return 
# 475 "hardware.c" 3
        (-2)
# 475 "hardware.c"
                      ;
 h = &s->h;

 rc = zedc_deflateSetDictionary(h, dictionary, dictLength);
 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]    adler32=%08x  dict_adler32=%08x\n", strm, h->adler32, h->dict_adler32); } while (0)
                               ;

 strm->adler = h->dict_adler32;
 return ((rc));
}

int h_deflateSetHeader(z_streamp strm, gz_headerp head)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflateSetHeader headerp=%p\n", strm, head); } while (0);

 if (strm == 
# 494 "hardware.c" 3 4
            ((void *)0)
# 494 "hardware.c"
                )
  return 
# 495 "hardware.c" 3
        (-2)
# 495 "hardware.c"
                      ;

 if (sizeof(*head) != sizeof(gzedc_header))
  return 
# 498 "hardware.c" 3
        (-2)
# 498 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 501 "hardware.c" 3 4
         ((void *)0)
# 501 "hardware.c"
             )
  return 
# 502 "hardware.c" 3
        (-2)
# 502 "hardware.c"
                      ;
 h = &s->h;

 rc = zedc_deflateSetHeader(h, (gzedc_header *)head);
 return ((rc));
}

static inline int __deflate(z_streamp strm, struct hw_state *s, int flush)
{
 int rc;
 zedc_stream *h = &s->h;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflate (%d): flush=%s next_in=%p avail_in=%d " "next_out=%p avail_out=%d\n", strm, s->deflate_req, flush_to_str(flush), h->next_in, h->avail_in, h->next_out, h->avail_out); } while (0)


                ;

 rc = zedc_deflate(h, flush);
 __fixup_crc_or_adler(strm, h);
 s->deflate_req++;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]            flush=%s next_in=%p avail_in=%d " "next_out=%p avail_out=%d rc=%d\n", strm, flush_to_str(flush), h->next_in, h->avail_in, h->next_out, h->avail_out, rc); } while (0)

                                                          ;

 return rc;
}




static int h_read_ibuf(z_streamp strm)
{
 int tocopy;
 struct hw_state *s = (struct hw_state *)strm->state;

 if ((s->ibuf_avail == 0) ||
     (strm->avail_in == 0))
  return 0;

 tocopy = ({ __typeof__ (strm->avail_in) _a = (strm->avail_in); __typeof__ (s->ibuf_avail) _b = (s->ibuf_avail); _a < _b ? _a : _b; });

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]   *** collecting %d bytes ...\n", strm, tocopy); } while (0);
 memcpy(s->ibuf, strm->next_in, tocopy);
 s->ibuf_avail -= tocopy;
 s->ibuf += tocopy;


 strm->avail_in -= tocopy;
 strm->next_in += tocopy;
 strm->total_in += tocopy;

 return tocopy;
}







static unsigned int h_flush_obuf(z_streamp strm)
{
 int tocopy;
 unsigned int obuf_bytes;
 struct hw_state *s = (struct hw_state *)strm->state;

 obuf_bytes = output_buffer_bytes(s);
 if (strm->avail_out == 0)
  return obuf_bytes;

 if (obuf_bytes == 0)
  return obuf_bytes;

 tocopy = ({ __typeof__ (strm->avail_out) _a = (strm->avail_out); __typeof__ (obuf_bytes) _b = (obuf_bytes); _a < _b ? _a : _b; });

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]   *** giving out %d bytes, " "remaining %d bytes in temporary, " "%d in internal buffer\n", strm, tocopy, obuf_bytes - tocopy, zedc_inflate_pending_output(&s->h)); } while (0)



                                      ;

 memcpy(strm->next_out, s->obuf_next, tocopy);
 s->obuf_next += tocopy;
 s->obuf_avail += tocopy;

 obuf_bytes = output_buffer_bytes(s);


 strm->avail_out -= tocopy;
 strm->next_out += tocopy;
 strm->total_out += tocopy;

 return obuf_bytes;
}
# 612 "hardware.c"
int h_deflate(z_streamp strm, int flush)
{
 int rc = 
# 614 "hardware.c" 3
         0
# 614 "hardware.c"
             , loops = 0;
 struct hw_state *s;
 zedc_stream *h;
 unsigned int obuf_bytes, ibuf_bytes;

 if (strm == 
# 619 "hardware.c" 3 4
            ((void *)0)
# 619 "hardware.c"
                )
  return 
# 620 "hardware.c" 3
        (-2)
# 620 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 623 "hardware.c" 3 4
         ((void *)0)
# 623 "hardware.c"
             )
  return 
# 624 "hardware.c" 3
        (-2)
# 624 "hardware.c"
                      ;
 h = &s->h;

 if (s->ibuf_total == 0) {
  stream_zlib_to_zedc(h, strm);
  s->rc = ((__deflate(strm, s, flush)));
  stream_zedc_to_zlib(strm, h);
  return s->rc;
 }

 __prep_crc_or_adler(strm, h);
 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_deflate: flush=%s avail_in=%d avail_out=%d " "ibuf_avail=%d obuf_avail=%d adler32/cr32=%08x/%08x\n", strm, flush_to_str(flush), strm->avail_in, strm->avail_out, (int)s->ibuf_avail, (int)s->obuf_avail, h->adler32, h->crc32); } while (0)


                                                                ;

 do {
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]   *** loop=%d flush=%s\n", strm, loops, flush_to_str(flush)); } while (0)
                        ;


  h_read_ibuf(strm);


  h_flush_obuf(strm);
  if (strm->avail_out == 0)
   return 
# 650 "hardware.c" 3
         0
# 650 "hardware.c"
             ;





  if ((flush != 
# 656 "hardware.c" 3
               0
# 656 "hardware.c"
                         ) || (s->ibuf_avail == 0)) {
   ibuf_bytes = s->ibuf - s->ibuf_base;

   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p]   *** sending %d bytes to hardware ...\n", strm, ibuf_bytes); } while (0)
                      ;

   s->obuf_next = h->next_out = s->obuf_base;
   s->obuf_avail = s->obuf_total;
   h->next_in = s->ibuf_base;
   h->avail_in = ibuf_bytes;
   h->avail_out = s->obuf_total;
# 675 "hardware.c"
   s->rc = ((__deflate(strm, s, (strm->avail_in != 0) ? 
# 675 "hardware.c" 3
          0 
# 675 "hardware.c"
          : flush)))
                                                  ;

   s->obuf = h->next_out;
   s->obuf_avail = h->avail_out;

   if (h->avail_in == 0) {
    s->ibuf = s->ibuf_base;
    s->ibuf_avail = s->ibuf_total;
   } else {
    do { fprintf(zlib_log, "%s:%u: Error: " "not all input absorbed! " "avail_in is still %d bytes\n",

                      "hardware.c"
# 685 "hardware.c"
    ,

                      687
# 685 "hardware.c"
    , h->avail_in); } while (0)

                       ;
    return 
# 688 "hardware.c" 3
          (-2)
# 688 "hardware.c"
                        ;
   }


   if ((h->avail_in != 0) && (h->avail_out == 0)) {
    do { fprintf(zlib_log, "%s:%u: Error: " "obuf was not large enough!\n", "hardware.c", 693); } while (0);
    return 
# 694 "hardware.c" 3
          (-2)
# 694 "hardware.c"
                        ;
   }
  }

  if (strm->avail_in != 0)
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] Not yet finished (avail_in=%d)\n", strm, strm->avail_in); } while (0)
                          ;


  h_flush_obuf(strm);
  if (strm->avail_out == 0)
   return 
# 705 "hardware.c" 3
         0
# 705 "hardware.c"
             ;

  ibuf_bytes = s->ibuf - s->ibuf_base;
  obuf_bytes = s->obuf - s->obuf_next;

  if ((flush == 
# 710 "hardware.c" 3
               4
# 710 "hardware.c"
                       ) &&
      (s->rc == 
# 711 "hardware.c" 3
               1
# 711 "hardware.c"
                           ) &&
      (strm->avail_in == 0) &&
      (ibuf_bytes == 0) &&
      (obuf_bytes == 0))
   return 
# 715 "hardware.c" 3
         1
# 715 "hardware.c"
                     ;

  loops++;
 } while (strm->avail_in != 0);

 return rc;
}

int h_deflateEnd(z_streamp strm)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;
 zedc_handle_t zedc;

 if (strm == 
# 730 "hardware.c" 3 4
            ((void *)0)
# 730 "hardware.c"
                )
  return 
# 731 "hardware.c" 3
        (-2)
# 731 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 734 "hardware.c" 3 4
         ((void *)0)
# 734 "hardware.c"
             )
  return 
# 735 "hardware.c" 3
        (-2)
# 735 "hardware.c"
                      ;
 h = &s->h;
 zedc = (zedc_handle_t)h->device;

 rc = zedc_deflateEnd(h);

 zedc_free(zedc, s->obuf_base, s->obuf_total, s->h.dma_type[1]);
 zedc_free(zedc, s->ibuf_base, s->ibuf_total, s->h.dma_type[0]);
 __zedc_close(zedc);
 __free(s);
 return ((rc));
}

int h_inflateInit2_(z_streamp strm, int windowBits,
      const char *version __attribute__((unused)), int stream_size __attribute__((unused)))
{
 int rc, err_code = 0;
 struct hw_state *s;
 zedc_handle_t zedc;

 strm->total_in = 0;
 strm->total_out = 0;

 s = calloc(1, sizeof(*s));
 if (s == 
# 759 "hardware.c" 3 4
         ((void *)0)
# 759 "hardware.c"
             )
  return 
# 760 "hardware.c" 3
        (-4)
# 760 "hardware.c"
                   ;

 s->card_type = zlib_accelerator;
 s->card_no = zlib_card;
 s->mode = 0x0008 | 0x0004;

 if (zlib_inflate_flags & ZLIB_FLAG_USE_POLLING)
  s->mode |= 0x0020;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateInit2_: card_type=%d card_no=%d " "zlib_obuf_total=%d\n", strm, s->card_type, s->card_no, zlib_obuf_total); } while (0)

                   ;

 zedc = __zedc_open(s->card_no, s->card_type, s->mode, &err_code);
 if (!zedc) {
  rc = 
# 775 "hardware.c" 3
      (-2)
# 775 "hardware.c"
                    ;
  goto free_hw_state;
 }

 s->inflate_req = 0;
 s->h.avail_in = 0;
 s->h.next_in = 
# 781 "hardware.c" 3 4
               ((void *)0)
# 781 "hardware.c"
                        ;
 s->h.device = zedc;


 s->h.dma_type[0] = DDCB_DMA_TYPE_SGLIST;
 s->h.dma_type[1] = DDCB_DMA_TYPE_SGLIST;
 s->h.dma_type[2] = DDCB_DMA_TYPE_SGLIST;

 if (zlib_inflate_flags & ZLIB_FLAG_USE_FLAT_BUFFERS) {
  s->h.dma_type[0] = DDCB_DMA_TYPE_SGLIST;
  if (zlib_obuf_total != 0)
   s->h.dma_type[1] = DDCB_DMA_TYPE_FLAT;


  do { fprintf(zlib_log, "%s:%u: Error: " " NOTE: Potential hardware bug. We might get DDCBs\n" "       with timeouts: RETC=0x110, ATTN=0xe004\n",
                                                          "hardware.c"
# 795 "hardware.c"
  ,
                                                          796
# 795 "hardware.c"
  ); } while (0)
                                                           ;

  s->h.dma_type[2] = DDCB_DMA_TYPE_FLAT;
 }





 if (zlib_xcheck)
  s->h.flags |= (1 << 0);

 if (zedc_verbose & 0x00010000)
  s->h.flags |= (1 << 1);

 if (zlib_inflate_flags & ZLIB_FLAG_OMIT_LAST_DICT)
  s->h.flags |= (1 << 2);


 if (zlib_obuf_total) {
  s->obuf_total = s->obuf_avail = zlib_obuf_total;
  s->obuf_base = s->obuf = s->obuf_next =
   zedc_memalign(zedc, s->obuf_total,
          s->h.dma_type[1]);

  if (s->obuf_base == 
# 821 "hardware.c" 3 4
                     ((void *)0)
# 821 "hardware.c"
                         ) {
   rc = 
# 822 "hardware.c" 3
       (-4)
# 822 "hardware.c"
                  ;
   goto close_card;
  }
 }

 rc = zedc_inflateInit2(&s->h, windowBits);
 __fixup_crc_or_adler(strm, &s->h);

 if (rc != 0) {
  rc = ((rc));
  goto free_obuf;
 }

 strm->state = (void *)s;
 return ((rc));

 free_obuf:
 zedc_free(zedc, s->obuf_base, s->obuf_total, s->h.dma_type[1]);
 close_card:
 __zedc_close(zedc);
 free_hw_state:
 __free(s);
 return rc;
}

int h_inflateReset(z_streamp strm)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateReset\n", strm); } while (0);
 if (strm == 
# 854 "hardware.c" 3 4
            ((void *)0)
# 854 "hardware.c"
                )
  return 
# 855 "hardware.c" 3
        (-2)
# 855 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 858 "hardware.c" 3 4
         ((void *)0)
# 858 "hardware.c"
             )
  return 
# 859 "hardware.c" 3
        (-2)
# 859 "hardware.c"
                      ;
 h = &s->h;


 strm->total_in = 0;
 strm->total_out = 0;

 s->inflate_req = 0;
 s->obuf_avail = s->obuf_total;
 s->obuf = s->obuf_base;
 s->obuf_next = s->obuf_base;
 s->rc = 
# 870 "hardware.c" 3
              0
# 870 "hardware.c"
                  ;

 if (h->tree_bits + h->pad_bits + h->scratch_ib + h->scratch_bits)
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] warn: (0x%x 0x%x 0x%x 0x%x)\n", strm, (unsigned int)h->tree_bits, (unsigned int)h->pad_bits, (unsigned int)h->scratch_ib, (unsigned int)h->scratch_bits); } while (0)



                                  ;
 rc = zedc_inflateReset(h);
 __fixup_crc_or_adler(strm, h);

 return ((rc));
}

int h_inflateReset2(z_streamp strm, int windowBits)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateReset2(windowBits=%d)\n", strm, windowBits); } while (0);
 if (strm == 
# 891 "hardware.c" 3 4
            ((void *)0)
# 891 "hardware.c"
                )
  return 
# 892 "hardware.c" 3
        (-2)
# 892 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 895 "hardware.c" 3 4
         ((void *)0)
# 895 "hardware.c"
             )
  return 
# 896 "hardware.c" 3
        (-2)
# 896 "hardware.c"
                      ;
 h = &s->h;


 strm->total_in = 0;
 strm->total_out = 0;

 s->inflate_req = 0;
 s->obuf_avail = s->obuf_total;
 s->obuf = s->obuf_base;
 s->obuf_next = s->obuf_base;
 s->rc = 
# 907 "hardware.c" 3
              0
# 907 "hardware.c"
                  ;

 if (h->tree_bits + h->pad_bits + h->scratch_ib + h->scratch_bits)
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] warn: (0x%x 0x%x 0x%x 0x%x)\n", strm, (unsigned int)h->tree_bits, (unsigned int)h->pad_bits, (unsigned int)h->scratch_ib, (unsigned int)h->scratch_bits); } while (0)



                                  ;
 rc = zedc_inflateReset2(h, windowBits);
 __fixup_crc_or_adler(strm, h);

 return ((rc));
}

int h_inflateSetDictionary(z_streamp strm, const uint8_t *dictionary,
      unsigned int dictLength)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateSetDictionary dictionary=%p dictLength=%d\n", strm, dictionary, dictLength); } while (0)
                                ;

 if (strm == 
# 931 "hardware.c" 3 4
            ((void *)0)
# 931 "hardware.c"
                )
  return 
# 932 "hardware.c" 3
        (-2)
# 932 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 935 "hardware.c" 3 4
         ((void *)0)
# 935 "hardware.c"
             )
  return 
# 936 "hardware.c" 3
        (-2)
# 936 "hardware.c"
                      ;

 h = &s->h;

 rc = zedc_inflateSetDictionary(h, dictionary, dictLength);

 return ((rc));
}

int h_inflateGetDictionary(z_streamp strm, uint8_t *dictionary,
      unsigned int *dictLength)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateGetDictionary dictionary=%p &dictLength=%p\n", strm, dictionary, dictLength); } while (0)
                                ;

 if (strm == 
# 955 "hardware.c" 3 4
            ((void *)0)
# 955 "hardware.c"
                )
  return 
# 956 "hardware.c" 3
        (-2)
# 956 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 959 "hardware.c" 3 4
         ((void *)0)
# 959 "hardware.c"
             ) {
  return 
# 960 "hardware.c" 3
        (-2)
# 960 "hardware.c"
                      ;
 }
 h = &s->h;

 rc = zedc_inflateGetDictionary(h, dictionary, dictLength);

 return ((rc));
}

int h_inflateGetHeader(z_streamp strm, gz_headerp head)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflateGetHeader headerp=%p\n", strm, head); } while (0);

 if (strm == 
# 977 "hardware.c" 3 4
            ((void *)0)
# 977 "hardware.c"
                )
  return 
# 978 "hardware.c" 3
        (-2)
# 978 "hardware.c"
                      ;

 if (sizeof(*head) != sizeof(gzedc_header))
  return 
# 981 "hardware.c" 3
        (-2)
# 981 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 984 "hardware.c" 3 4
         ((void *)0)
# 984 "hardware.c"
             )
  return 
# 985 "hardware.c" 3
        (-2)
# 985 "hardware.c"
                      ;
 h = &s->h;

 rc = zedc_inflateGetHeader(h, (gzedc_header *)head);
 return ((rc));
}

static inline int __inflate(z_streamp strm, struct hw_state *s, int flush)
{
 int rc;
 zedc_stream *h = &s->h;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] __inflate (%d): flush=%s next_in=%p avail_in=%d " "next_out=%p avail_out=%d total_in=%ld total_out=%ld " "crc/adler=%08x/%08x\n", strm, s->inflate_req, flush_to_str(flush), h->next_in, h->avail_in, h->next_out, h->avail_out, h->total_in, h->total_out, h->crc32, h->adler32); } while (0)




                                      ;

 rc = zedc_inflate(h, flush);
 __fixup_crc_or_adler(strm, h);

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] ________h (%d) flush=%s next_in=%p avail_in=%d " "next_out=%p avail_out=%d total_in=%ld total_out=%ld " "crc/adler=%08x/%08x rc=%s\n", strm, s->inflate_req, flush_to_str(flush), h->next_in, h->avail_in, h->next_out, h->avail_out, h->total_in, h->total_out, h->crc32, h->adler32, ret_to_str(rc)); } while (0)




                              ;

 s->inflate_req++;
 return rc;
}
# 1042 "hardware.c"
enum stream_state {
 READ_HDR,
 COPY_BLOCK,
 FIXED_HUFFMAN,
 DYN_HUFFMAN,
};

static const char *state_str[] = {
 "READ_HDR", "COPY_BLOCK", "FIXED_HUFFMAN", "DYN_HUFFMAN"
};

struct stream_ending {
 uint8_t d[16];
 unsigned int proc_bits;
 unsigned int remaining_bytes;
 unsigned int avail_in;
 unsigned int idx;
 unsigned int in_hdr_scratch_len;
 enum stream_state state;
};




static inline int get_bits(struct stream_ending *e, unsigned int bits,
      uint64_t *d)
{
 int rc = 0;
 unsigned int b, proc_bits, idx;
 uint64_t data = 0ull;

 for (proc_bits = e->proc_bits, idx = e->idx, b = 0; b < bits; idx++) {
  for (; proc_bits < 8 && b < bits; proc_bits++, b++) {
   data <<= 1ull;

   if (idx >= e->avail_in) {
    rc = 1;
    continue;
   }
   if (e->d[idx] & (1 << proc_bits))
    data |= 1ull;
  }
  proc_bits = 0;
 }
 *d = data;
 return rc;
}




static inline int drop_bits(struct stream_ending *e, unsigned int bits)
{
 unsigned int idx;


 idx = e->idx + (e->proc_bits + bits) / 8;
 if (idx >= e->avail_in) {

  return 1;
 }

 e->idx = idx;
 e->proc_bits = (e->proc_bits + bits) % 8;

 return 0;
}






static inline int sync_to_byte(struct stream_ending *e)
{
 if (e->proc_bits == 0)
  return 0;

 e->proc_bits = 0;
 e->idx++;
 return 0;
}





static inline unsigned int __in_hdr_scratch_len(zedc_streamp strm)
{
 unsigned int len;

 len = strm->hdr_ib + strm->tree_bits + strm->pad_bits +
  strm->scratch_ib + strm->scratch_bits;

 return (uint32_t)(len / 8ULL);
}
# 1155 "hardware.c"
static inline int __in_hdr_bits(zedc_streamp strm)
{
 unsigned int headerarea_size =
  ((strm->tree_bits + strm->hdr_ib + 63)/64) * 8;
 uint8_t btype = (strm->infl_stat & (0x20 | 0x40)) >> 5;
 const char *btype_str[] = { "NO_COMPRESSION", "FIXED_HUFFMAN",
        "DYNAMIC_HUFFMAN", "RESERVED" };

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "SCRATCH BITS: headerarea_size=%d hdr_ib=%d tree_bits=%d " "pad_bits=%d scratch_ib=%d scratch_bits=%d " "infl_stat.hdr_type=%s\n", headerarea_size, strm->hdr_ib, strm->tree_bits, strm->pad_bits, strm->scratch_ib, strm->scratch_bits, btype_str[btype]); } while (0)




                    ;

 return strm->tree_bits;
}

static inline void __reset_hdr_scratch_len(zedc_streamp strm)
{
 strm->hdr_ib = 0;
 strm->tree_bits = 0;
 strm->pad_bits = 0;
 strm->scratch_ib = 0;
 strm->scratch_bits = 0;
}
# 1195 "hardware.c"
static inline int __check_stream_end(z_streamp strm)
{
 int rc, ret = 
# 1197 "hardware.c" 3
              0
# 1197 "hardware.c"
                  ;
 uint64_t d;
 struct stream_ending e;
 struct hw_state *s = (struct hw_state *)strm->state;;
 zedc_stream *h = &s->h;
 unsigned int len;
 uint8_t offs;

 if (zlib_inflate_flags & ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END) {
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] ZLIB_FLAG_DISABLE_CV_FOR_Z_STREAM_END\n", strm); } while (0);
  return 
# 1207 "hardware.c" 3
        0
# 1207 "hardware.c"
            ;
 }







 if (h->format != 0)
  return 
# 1217 "hardware.c" 3
        0
# 1217 "hardware.c"
            ;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] CONFIG_CIRCUMVENTION_FOR_Z_STREAM_END\n", strm); } while (0);
# 1230 "hardware.c"
 rc = __in_hdr_bits(h);
 if (rc != 0) {
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    __in_hdr_bits %d: cannot parse " "dynamic huffman block, returning\n", rc); } while (0)
                                             ;
  return 
# 1234 "hardware.c" 3
        0
# 1234 "hardware.c"
            ;
 }


 memset(&e, 0, sizeof(e));
 e.state = READ_HDR;
 e.proc_bits = h->proc_bits;
 e.remaining_bytes = sizeof(e.d);
 e.avail_in = 0;
 e.idx = 0;
 e.in_hdr_scratch_len = __in_hdr_scratch_len(h);

 len = ({ __typeof__ (e.in_hdr_scratch_len) _a = (e.in_hdr_scratch_len); __typeof__ (e.remaining_bytes) _b = (e.remaining_bytes); _a < _b ? _a : _b; });
 memcpy(&e.d[e.avail_in], h->wsp->tree, len);
 e.remaining_bytes -= len;
 e.avail_in += len;

 len = ({ __typeof__ (strm->avail_in) _a = (strm->avail_in); __typeof__ (e.remaining_bytes) _b = (e.remaining_bytes); _a < _b ? _a : _b; });
 memcpy(&e.d[e.avail_in], strm->next_in, len);
 e.remaining_bytes -= len;
 e.avail_in += len;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "Accumulated input data (__in_hdr_scratch_len=%d " "strm->avail_in=%d):\n", e.in_hdr_scratch_len, strm->avail_in); } while (0)

                                        ;

 if ((zlib_trace & 0x2))
  ddcb_hexdump(zlib_log, e.d, e.avail_in);


 while (1) {

  switch (e.state) {
  case READ_HDR:
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "READ_HDR\n"); } while (0);

   rc = get_bits(&e, 3, &d);
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    d=%08llx rc=%d\n", (long long)d, rc); } while (0);
   if (rc)
    goto go_home;
   drop_bits(&e, 3);

   switch (d & 0x3) {
   case 0x0:
    e.state = COPY_BLOCK;
    break;
   case 0x1:
    e.state = DYN_HUFFMAN;


    goto go_home;
   case 0x2:
    e.state = FIXED_HUFFMAN;
    break;
   case 0x3:
   default:
    goto go_home;
   }
   if (d & 0x4) {
    do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "  Z_STREAM_END/BFINAL potentially " "detected!\n"); } while (0)
                    ;
    ret = 
# 1295 "hardware.c" 3
         1
# 1295 "hardware.c"
                     ;
   }
   break;

  case FIXED_HUFFMAN:
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "FIXED_HUFFMAN\n"); } while (0);

   rc = get_bits(&e, 7, &d);
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    d=%08llx, 00000000 indicates empty " "FIXED_HUFFMAN\n", (long long)d); } while (0)

                  ;
   if (rc)
    goto go_home;

   drop_bits(&e, 7);
   if (d != 0x0)
    goto go_home;

   e.state = READ_HDR;


   if (ret == 
# 1316 "hardware.c" 3
             1
# 1316 "hardware.c"
                         )
    goto sync_avail_in;
   break;

  case COPY_BLOCK:
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "COPY_BLOCK\n"); } while (0);

   sync_to_byte(&e);
   rc = get_bits(&e, 32, &d);
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    d=%08llx, 0000ffff indicates empty " "COPY_BLOCK\n", (long long)d); } while (0)
                                  ;
   if (rc)
    goto go_home;
   drop_bits(&e, 32);

   if (d != 0x0000ffff)
    goto go_home;

   e.state = READ_HDR;


   if (ret == 
# 1337 "hardware.c" 3
             1
# 1337 "hardware.c"
                         )
    goto sync_avail_in;

   break;

  default:
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "Brrr STATE: %s\n", state_str[e.state]); } while (0);
   goto go_home;
  }
 }
 sync_avail_in:
# 1363 "hardware.c"
 if (e.idx <= e.in_hdr_scratch_len)
  offs = 0;
 else {

  offs = e.idx - e.in_hdr_scratch_len + 1;
  __reset_hdr_scratch_len(h);
 }

 strm->avail_in -= offs;
 strm->next_in += offs;
 strm->total_in += offs;

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    e.idx=%d e.in_hdr_scratch_len=%d offs=%d " "next_in=%02x\n", e.idx, e.in_hdr_scratch_len, offs, *strm->next_in); } while (0)

                  ;
 return ret;

 go_home:
 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    Aborting search for Z_STREAM_END for now!\n"); } while (0);
 return 
# 1382 "hardware.c" 3
       0
# 1382 "hardware.c"
           ;
}






int h_inflate(z_streamp strm, int flush)
{
 int rc = 
# 1392 "hardware.c" 3
         0
# 1392 "hardware.c"
             , use_internal_buffer = 1;
 zedc_stream *h;
 struct hw_state *s;
 unsigned int loops = 0;
 unsigned int obuf_bytes;

 if (strm == 
# 1398 "hardware.c" 3 4
            ((void *)0)
# 1398 "hardware.c"
                )
  return 
# 1399 "hardware.c" 3
        (-2)
# 1399 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 1402 "hardware.c" 3 4
         ((void *)0)
# 1402 "hardware.c"
             )
  return 
# 1403 "hardware.c" 3
        (-2)
# 1403 "hardware.c"
                      ;
 h = &s->h;

 if (s->obuf_total == 0) {
  stream_zlib_to_zedc(h, strm);
  s->rc = ((__inflate(strm, s, flush)));
  stream_zedc_to_zlib(strm, h);
  return s->rc;
 }


 if ((s->h.dma_type[1] & DDCB_DMA_TYPE_MASK) ==
     DDCB_DMA_TYPE_SGLIST)
  use_internal_buffer = (s->obuf_total > strm->avail_out);

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] h_inflate: flush=%s avail_in=%d avail_out=%d " "ibuf_avail=%d obuf_avail=%d use_int_buf=%d\n", strm, flush_to_str(flush), strm->avail_in, strm->avail_out, (int)s->ibuf_avail, (int)s->obuf_avail, use_internal_buffer); } while (0)



                       ;



 obuf_bytes = s->obuf - s->obuf_next;
 if ((obuf_bytes == 0) && (zedc_inflate_pending_output(h) == 0)) {
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] OBYTES_IN_DICT %d bytes (1) This must be 0!\n", strm, h->obytes_in_dict); } while (0)
                           ;

  if (s->rc == 
# 1431 "hardware.c" 3
              1
# 1431 "hardware.c"
                          )
   return 
# 1432 "hardware.c" 3
         1
# 1432 "hardware.c"
                     ;
# 1447 "hardware.c"
 }

 do {
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] loops=%d flush=%s\n", strm, loops, flush_to_str(flush)); } while (0)
                        ;


  obuf_bytes = h_flush_obuf(strm);

  if ((s->rc == 
# 1456 "hardware.c" 3
               1
# 1456 "hardware.c"
                           ) &&
      (obuf_bytes == 0)) {
   unsigned int rem_bytes;


   rc = zedc_read_pending_output(h, strm->next_out,
      strm->avail_out);
   if (rc < 0) {
    do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%s] err: Read temp buffer rc=%d!\n", __func__, rc); } while (0)
                  ;
    return rc;
   }

   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%s] collected %d bytes from dict buffer\n", __func__, rc); } while (0)
                 ;
   strm->avail_out -= rc;
   strm->total_out += rc;

   rem_bytes = zedc_inflate_pending_output(h);
   if (rem_bytes != 0)
    return 
# 1476 "hardware.c" 3
          0
# 1476 "hardware.c"
              ;

   return 
# 1478 "hardware.c" 3
         1
# 1478 "hardware.c"
                     ;
  }
  if (((obuf_bytes != 0) || zedc_inflate_pending_output(h)) &&
      (strm->avail_out == 0))
   return 
# 1482 "hardware.c" 3
         0
# 1482 "hardware.c"
             ;
# 1493 "hardware.c"
  if ((0 == strm->avail_in) &&
      ((
# 1494 "hardware.c" 3
       0 
# 1494 "hardware.c"
                       == flush) ||
       (
# 1495 "hardware.c" 3
       1 
# 1495 "hardware.c"
                       == flush) ||
       (
# 1496 "hardware.c" 3
       3 
# 1496 "hardware.c"
                       == flush)))
   return 
# 1497 "hardware.c" 3
         0
# 1497 "hardware.c"
             ;

  if (!output_buffer_empty(s)) {
   do { fprintf(zlib_log, "%s:%u: Error: " "[%p] obuf should be empty here!\n", "hardware.c", 1500, strm); } while (0);
   return 
# 1501 "hardware.c" 3
         (-3)
# 1501 "hardware.c"
                     ;
  }







  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] Sending avail_in=%d bytes to hardware " "(obuf_total=%d)\n", strm, strm->avail_in, (int)s->obuf_total); } while (0)

                       ;

  h->next_in = strm->next_in;
  h->avail_in = strm->avail_in;
  h->total_in = strm->total_in;

  if (use_internal_buffer) {
   h->next_out = s->obuf_next = s->obuf_base;
   h->avail_out = s->obuf_total;
  } else {
   h->next_out = strm->next_out;
   h->avail_out = strm->avail_out;
  }
  h->total_out = strm->total_out;


  s->rc = ((__inflate(strm, s, flush)));

  strm->next_in = (uint8_t *)h->next_in;
  strm->avail_in = h->avail_in;
  strm->total_in = h->total_in;
  strm->data_type = h->data_type;

  if (use_internal_buffer) {
   s->obuf = h->next_out;
   s->obuf_avail = h->avail_out;
  } else {
   strm->next_out = h->next_out;
   strm->avail_out = h->avail_out;
   strm->total_out = h->total_out;
  }


  h_flush_obuf(strm);

  if (s->rc == 
# 1547 "hardware.c" 3
              2
# 1547 "hardware.c"
                         )
   return s->rc;

  if ((s->rc == 
# 1550 "hardware.c" 3
               (-2)
# 1550 "hardware.c"
                             ) ||
      (s->rc == 
# 1551 "hardware.c" 3
               (-3)
# 1551 "hardware.c"
                           ) ||
      (s->rc == 
# 1552 "hardware.c" 3
               (-5)
# 1552 "hardware.c"
                          ))
   return s->rc;



  if ((s->rc != 
# 1557 "hardware.c" 3
               1
# 1557 "hardware.c"
                           ) && (strm->avail_out == 0)) {
   int _rc;

   _rc = __check_stream_end(strm);
   if (_rc == 
# 1561 "hardware.c" 3
             1
# 1561 "hardware.c"
                         ) {
    do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "    Suppress Z_STREAM_END %zd %zd (2)\n", s->obuf_avail, s->obuf_total); } while (0)
                                   ;
    s->rc = 
# 1564 "hardware.c" 3
           1
# 1564 "hardware.c"
                       ;
   }
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] .......... flush=%s avail_in=%d " "avail_out=%d __check_stream=%s (2)\n", strm, flush_to_str(flush), strm->avail_in, strm->avail_out, ret_to_str(rc)); } while (0)


                                     ;
  }


  if ((s->rc == 
# 1573 "hardware.c" 3
               1
# 1573 "hardware.c"
                           ) && output_buffer_empty(s) &&
      (zedc_inflate_pending_output(h) == 0)) {
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] OBYTES_IN_DICT %d bytes (2) Must be 0!\n", strm, h->obytes_in_dict); } while (0)
                            ;
   return 
# 1577 "hardware.c" 3
         1
# 1577 "hardware.c"
                     ;
  }

  if (strm->avail_out == 0)
   return 
# 1581 "hardware.c" 3
         0
# 1581 "hardware.c"
             ;

  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] data_type 0x%x\n", strm, strm->data_type); } while (0);
  if (strm->data_type & 0x80) {
   do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] Z_DO_BLOCK_EXIT\n", strm); } while (0);
   return s->rc;
  }

  loops++;
 } while (strm->avail_in != 0);

 do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] __________ flush=%s avail_in=%d avail_out=%d\n", strm, flush_to_str(flush), strm->avail_in, strm->avail_out); } while (0)

                   ;

 return ((rc));
}

int h_inflateEnd(z_streamp strm)
{
 int rc;
 zedc_stream *h;
 struct hw_state *s;
 zedc_handle_t zedc;
 int ibuf_bytes, obuf_bytes;

 if (strm == 
# 1607 "hardware.c" 3 4
            ((void *)0)
# 1607 "hardware.c"
                )
  return 
# 1608 "hardware.c" 3
        (-2)
# 1608 "hardware.c"
                      ;

 s = (struct hw_state *)strm->state;
 if (s == 
# 1611 "hardware.c" 3 4
         ((void *)0)
# 1611 "hardware.c"
             )
  return 
# 1612 "hardware.c" 3
        (-2)
# 1612 "hardware.c"
                      ;
 h = &s->h;
 zedc = (zedc_handle_t)h->device;

 ibuf_bytes = s->ibuf - s->ibuf_base;
 obuf_bytes = s->obuf - s->obuf_next;
 if (ibuf_bytes || obuf_bytes)
  do { if ((zlib_trace & 0x2)) fprintf(zlib_log, "hhh " "[%p] In/Out buffer not empty! ibuf_bytes=%d " "obuf_bytes=%d\n", strm, ibuf_bytes, obuf_bytes); } while (0)
                                                         ;

 rc = zedc_inflateEnd(h);

 zedc_free(zedc, s->obuf_base, s->obuf_total, s->h.dma_type[1]);
 __zedc_close((zedc_handle_t)h->device);
 __free(s);
 return ((rc));
}
# 1638 "hardware.c"
void zedc_hw_init(void)
{
 char *verb = getenv("ZLIB_VERBOSE");
 char *accel = getenv("ZLIB_ACCELERATOR");
 char *ibuf_s = getenv("ZLIB_IBUF_TOTAL");
 char *obuf_s = getenv("ZLIB_OBUF_TOTAL");
 char *card = getenv("ZLIB_CARD");
 char *xcheck_str = getenv("ZLIB_CROSS_CHECK");

 ddcb_set_logfile(zlib_log);
 zedc_set_logfile(zlib_log);

 if (verb != 
# 1650 "hardware.c" 3 4
            ((void *)0)
# 1650 "hardware.c"
                ) {
  int z, c;

  zedc_verbose = str_to_num(verb);
  c = (zedc_verbose & 0x0000ff00) >> 8;
  z = (zedc_verbose & 0x000000ff) >> 0;

  ddcb_debug(c);
  zedc_lib_debug(z);
 }

 if (accel != 
# 1661 "hardware.c" 3 4
             ((void *)0)
# 1661 "hardware.c"
                 ) {
  if (strncmp(accel, "CAPI", 4) == 0)
   zlib_accelerator = 0x0002;
  else
   zlib_accelerator = 0x0000;
 }

 if (card != 
# 1668 "hardware.c" 3 4
            ((void *)0)
# 1668 "hardware.c"
                ) {
  if (strncmp(card, "RED", 3) == 0)
   zlib_card = -1;
  else
   zlib_card = atoi(card);
 }

 if (xcheck_str != 
# 1675 "hardware.c" 3 4
                  ((void *)0)
# 1675 "hardware.c"
                      )
  zlib_xcheck = str_to_num(xcheck_str);

 if (ibuf_s != 
# 1678 "hardware.c" 3 4
              ((void *)0)
# 1678 "hardware.c"
                  )
  zlib_ibuf_total = str_to_num(ibuf_s);

 if (obuf_s != 
# 1681 "hardware.c" 3 4
              ((void *)0)
# 1681 "hardware.c"
                  )
  zlib_obuf_total = str_to_num(obuf_s);




 if (zlib_accelerator != 0x0000) {
  zlib_deflate_flags &= ~(ZLIB_FLAG_USE_FLAT_BUFFERS |
     ZLIB_FLAG_CACHE_HANDLES);
  zlib_inflate_flags &= ~(ZLIB_FLAG_USE_FLAT_BUFFERS |
     ZLIB_FLAG_CACHE_HANDLES);
 }
}

void zedc_hw_done(void)
{
 unsigned int card_no;
 int flags = (zlib_inflate_flags | zlib_deflate_flags);

 if (zlib_log != 
# 1700 "hardware.c" 3 4
                stderr
# 1700 "hardware.c"
                      ) {
  zedc_set_logfile(
# 1701 "hardware.c" 3 4
                  ((void *)0)
# 1701 "hardware.c"
                      );
  ddcb_set_logfile(
# 1702 "hardware.c" 3 4
                  ((void *)0)
# 1702 "hardware.c"
                      );
 }

 if ((flags & ZLIB_FLAG_CACHE_HANDLES) == 0x0)
  return;

 for (card_no = 0; card_no <= 128; card_no++) {
  if (zedc_cards[card_no] == 
# 1709 "hardware.c" 3 4
                            ((void *)0)
# 1709 "hardware.c"
                                )
   continue;
  zedc_close(zedc_cards[card_no]);
 }
}
