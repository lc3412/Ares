# 1 "genwqe_memcopy.c"
# 1 "/home/lichi/lichi/errSpecProjects/genwqe-user/tools//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "genwqe_memcopy.c"
# 17 "genwqe_memcopy.c"
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

# 18 "genwqe_memcopy.c" 2
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

# 19 "genwqe_memcopy.c" 2
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
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 2 3 4
# 20 "genwqe_memcopy.c" 2
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
# 277 "/usr/include/unistd.h" 3 4
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

# 21 "genwqe_memcopy.c" 2
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



# 22 "genwqe_memcopy.c" 2
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



# 23 "genwqe_memcopy.c" 2
# 1 "/usr/include/signal.h" 1 3 4
# 30 "/usr/include/signal.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 102 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;

# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 80 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
     short int si_addr_lsb;
     struct
       {
  void *_lower;
  void *_upper;
       } si_addr_bnd;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 160 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};




enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR,

  BUS_MCEERR_AR,

  BUS_MCEERR_AO

};




enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};




enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 320 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));

extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));







extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 114 "/usr/include/signal.h" 3 4





extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));






extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern void psignal (int __sig, const char *__s);


extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 168 "/usr/include/signal.h" 3 4
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");
# 187 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
# 202 "/usr/include/signal.h" 3 4
typedef __sighandler_t sighandler_t;




typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int sigisemptyset (const sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigandset (sigset_t *__set, const sigset_t *__left,
        const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern int sigorset (sigset_t *__set, const sigset_t *__left,
       const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




# 1 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 244 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
# 301 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];



# 1 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 307 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 317 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__));

# 1 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 324 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];



enum
{
  REG_R8 = 0,

  REG_R9,

  REG_R10,

  REG_R11,

  REG_R12,

  REG_R13,

  REG_R14,

  REG_R15,

  REG_RDI,

  REG_RSI,

  REG_RBP,

  REG_RBX,

  REG_RDX,

  REG_RAX,

  REG_RCX,

  REG_RSP,

  REG_RIP,

  REG_EFL,

  REG_CSGSFS,

  REG_ERR,

  REG_TRAPNO,

  REG_OLDMASK,

  REG_CR2

};


struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 327 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));







extern int sighold (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern int sigrelse (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern int sigignore (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));



extern int pthread_sigqueue (pthread_t __threadid, int __signo,
        const union sigval __value) __attribute__ ((__nothrow__ , __leaf__));
# 363 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));




# 24 "genwqe_memcopy.c" 2
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
# 25 "genwqe_memcopy.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h" 1 3 4
# 26 "genwqe_memcopy.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h" 1 3 4
# 27 "genwqe_memcopy.c" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/time.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/sys/time.h" 2 3 4
# 37 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 55 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 71 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };




typedef enum __itimer_which __itimer_which_t;






extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));






extern int futimesat (int __fd, const char *__file,
        const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 189 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 28 "genwqe_memcopy.c" 2
# 1 "/usr/include/x86_64-linux-gnu/asm/byteorder.h" 1 3 4



# 1 "/usr/include/linux/byteorder/little_endian.h" 1 3 4
# 11 "/usr/include/linux/byteorder/little_endian.h" 3 4
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
# 12 "/usr/include/linux/byteorder/little_endian.h" 2 3 4
# 1 "/usr/include/linux/swab.h" 1 3 4





# 1 "/usr/include/x86_64-linux-gnu/asm/swab.h" 1 3 4






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
# 29 "genwqe_memcopy.c" 2
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4
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

# 30 "genwqe_memcopy.c" 2



# 1 "../include/libddcb.h" 1
# 37 "../include/libddcb.h"
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

# 38 "../include/libddcb.h" 2
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
# 34 "genwqe_memcopy.c" 2
# 1 "genwqe_tools.h" 1
# 24 "genwqe_tools.h"
# 1 "/usr/include/termios.h" 1 3 4
# 35 "/usr/include/termios.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/termios.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/termios.h" 3 4

# 23 "/usr/include/x86_64-linux-gnu/bits/termios.h" 3 4
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;


struct termios
  {
    tcflag_t c_iflag;
    tcflag_t c_oflag;
    tcflag_t c_cflag;
    tcflag_t c_lflag;
    cc_t c_line;
    cc_t c_cc[32];
    speed_t c_ispeed;
    speed_t c_ospeed;


  };
# 40 "/usr/include/termios.h" 2 3 4
# 48 "/usr/include/termios.h" 3 4
extern speed_t cfgetospeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));


extern speed_t cfgetispeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));


extern int cfsetospeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));


extern int cfsetispeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));



extern int cfsetspeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));




extern int tcgetattr (int __fd, struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));



extern int tcsetattr (int __fd, int __optional_actions,
        const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));




extern void cfmakeraw (struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));



extern int tcsendbreak (int __fd, int __duration) __attribute__ ((__nothrow__ , __leaf__));





extern int tcdrain (int __fd);



extern int tcflush (int __fd, int __queue_selector) __attribute__ ((__nothrow__ , __leaf__));



extern int tcflow (int __fd, int __action) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t tcgetsid (int __fd) __attribute__ ((__nothrow__ , __leaf__));




# 1 "/usr/include/x86_64-linux-gnu/sys/ttydefaults.h" 1 3 4
# 105 "/usr/include/termios.h" 2 3 4



# 25 "genwqe_tools.h" 2
# 1 "/usr/include/getopt.h" 1 3 4
# 57 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 71 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 104 "/usr/include/getopt.h" 3 4
struct option
{
  const char *name;


  int has_arg;
  int *flag;
  int val;
};
# 150 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 173 "/usr/include/getopt.h" 3 4
extern int getopt_long (int ___argc, char *const *___argv,
   const char *__shortopts,
          const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__));
extern int getopt_long_only (int ___argc, char *const *___argv,
        const char *__shortopts,
               const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__));
# 26 "genwqe_tools.h" 2
# 1 "/usr/include/errno.h" 1 3 4
# 31 "/usr/include/errno.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/errno.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 2 3 4
# 1 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/errno.h" 2 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 54 "/usr/include/errno.h" 3 4
extern char *program_invocation_name, *program_invocation_short_name;




# 68 "/usr/include/errno.h" 3 4
typedef int error_t;
# 27 "genwqe_tools.h" 2

# 1 "/usr/include/fcntl.h" 1 3 4
# 28 "/usr/include/fcntl.h" 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };


struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };



# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uio.h" 1 3 4
# 43 "/usr/include/x86_64-linux-gnu/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 39 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 2 3 4
# 258 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };


struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
# 333 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;

  unsigned char f_handle[0];
};
# 363 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4





extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ , __leaf__));






extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);






extern ssize_t vmsplice (int __fdout, const struct iovec *__iov,
    size_t __count, unsigned int __flags);





extern ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
         __off64_t *__offout, size_t __len,
         unsigned int __flags);





extern ssize_t tee (int __fdin, int __fdout, size_t __len,
      unsigned int __flags);






extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
# 418 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);




extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ , __leaf__));





extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);




# 61 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 77 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stat.h" 1 3 4
# 46 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];
# 115 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
  };



struct stat64
  {
    __dev_t st_dev;

    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;






    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;





    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;







    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 164 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];



  };
# 78 "/usr/include/fcntl.h" 2 3 4
# 146 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 156 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 166 "/usr/include/fcntl.h" 3 4
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 180 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 191 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 202 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 212 "/usr/include/fcntl.h" 3 4
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 248 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 260 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 270 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 281 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
# 292 "/usr/include/fcntl.h" 3 4

# 29 "genwqe_tools.h" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 28 "/usr/include/ctype.h" 3 4

# 46 "/usr/include/ctype.h" 3 4
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 104 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));








extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));






extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__ , __leaf__));






extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
# 271 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
# 347 "/usr/include/ctype.h" 3 4

# 30 "genwqe_tools.h" 2



# 1 "/usr/include/x86_64-linux-gnu/sys/stat.h" 1 3 4
# 102 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stat.h" 1 3 4
# 105 "/usr/include/x86_64-linux-gnu/sys/stat.h" 2 3 4
# 208 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 227 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));







extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 252 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));







extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 275 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int lstat64 (const char *__restrict __file,
      struct stat64 *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));




extern __mode_t getumask (void) __attribute__ ((__nothrow__ , __leaf__));



extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
# 398 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
# 431 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
extern int __fxstat64 (int __ver, int __fildes, struct stat64 *__stat_buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat64 (int __ver, const char *__filename,
        struct stat64 *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat64 (int __ver, const char *__filename,
         struct stat64 *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat64 (int __ver, int __fildes, const char *__filename,
    struct stat64 *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));

extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 5)));
# 533 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4

# 34 "genwqe_tools.h" 2

# 1 "/usr/include/sysexits.h" 1 3 4
# 36 "genwqe_tools.h" 2
# 127 "genwqe_tools.h"

# 127 "genwqe_tools.h"
extern int _dbg_flag;







extern int verbose_flag;
# 147 "genwqe_tools.h"
const char *genwqe_regname(uint32_t addr);
# 35 "genwqe_memcopy.c" 2
# 1 "force_cpu.h" 1
# 22 "force_cpu.h"
void print_cpu_mask(void);
int pin_to_cpu(int run_cpu);
int switch_cpu(int cpu, int verbose);
# 36 "genwqe_memcopy.c" 2
# 1 "../include/memcopy_ddcb.h" 1
# 21 "../include/memcopy_ddcb.h"
# 1 "../include/linux/uapi/linux/genwqe/genwqe_card.h" 1
# 26 "../include/linux/uapi/linux/genwqe/genwqe_card.h"
# 1 "/usr/include/linux/ioctl.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctl.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 2 3 4
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
# 22 "../include/memcopy_ddcb.h" 2
# 42 "../include/memcopy_ddcb.h"
struct asiv_memcpy {
 uint64_t inp_buff;
 uint32_t inp_buff_len;
 uint32_t in_crc32;

 uint64_t outp_buff;
 uint32_t outp_buff_len;
 uint32_t in_adler32;

 uint64_t res0[4];
 uint16_t res1;
 uint16_t input_lists;
 uint32_t res2;

 uint64_t res3[3];
} __attribute__((__packed__)) __attribute__((__may_alias__));





struct asv_memcpy {
 uint64_t res0[2];
 uint32_t out_crc32;
 uint32_t out_adler32;
 uint32_t inp_processed;
 uint32_t outp_returned;
 uint64_t res1[4];
} __attribute__((__packed__)) __attribute__((__may_alias__));
# 37 "genwqe_memcopy.c" 2
# 45 "genwqe_memcopy.c"
static const char *version = "4.0.20-5-g2944";

int verbose_flag = 0;
# 72 "genwqe_memcopy.c"
struct memcpy_in_parms {
 int card_no;
 int card_type;
 int mode;
 
# 76 "genwqe_memcopy.c" 3 4
_Bool 
# 76 "genwqe_memcopy.c"
     quiet;
 int cpu;
 int count;
 
# 79 "genwqe_memcopy.c" 3 4
_Bool 
# 79 "genwqe_memcopy.c"
     force_cmp;
 int use_sglist;
 int preload;
 int threads;
 FILE *o_fp;
 FILE *fpattern;
 uint64_t in_ats_type;
 unsigned int page_size;
 int data_buf_size;
 unsigned int pgoffs_i;
 unsigned int pgoffs_o;
 uint32_t mcpy_crc32;
 uint32_t mcpy_adler32;
 int have_threads;
 struct timespec stime;
 struct timespec etime;
 unsigned int err_inj;
};

struct memcpy_thread_data {
 int thread;
 pthread_t tid;
 accel_t accel;
 uint8_t *ibuf4k;
 uint8_t *ibuf;
 struct memcpy_in_parms *ip;
 uint64_t out_ats_type;

 int err;
 int errors;
 int memcopies;
 long long bytes_copied;
 uint64_t total_usec;
 struct timespec stime;
 struct timespec etime;
};

static void *__memcpy_thread(void *data);






static void usage(const char *prog)
{
 printf("Usage: %s\n"
        "  -h, --help               print usage information\n"
        "  -v, --verbose            verbose mode\n"
        "  -C, --card <cardno>      use this card for operation\n"
        "  -A, --accelerator-type=GENWQE|CAPI CAPI is only available "
        "for System p\n"
        "  -V, --version\n"
        "  -q, --quiet              quiece output\n"
        "  -c, --count <number>     do multiple memcopies\n"
        "  -l, --preload <number>   preload multiple ddcb's. "
        "(default 1, only for CAPI Card)\n"
        "  -X, --cpu <cpu>          only run on this CPU\n"
        "  -D, --debug              create debug data on failure\n"
        "  -G, --use-sglist         use the scatter gather list\n"
        "  -n, --nonblocking        use nonblcoking behavior\n"
        "  -p, --patternfile <filename>]\n"
        "  -s, --bufsize <bufsize>  default is 4KiB\n"
        "  -i, --pgoffs_i <offs>    byte offset for input buffer\n"
        "  -o, --pgoffs_o <offs>    byte offset for output buffer\n"
        "  -F, --force-compare <output_data.bin>\n"
        "  -t, --threads <num>      run <num> threads, default is 1\n"
        "  -Y, --inject-error <err> IN:0x1, OUT:0x2, SIZE:0x4, DDCB:0x8\n"
        "\n"
        "This utility sends memcopy DDCBs to the application\n"
        "chip unit. It can be used to check the cards health and/or\n"
        "to produce stress on the card to verify its correct\n"
        "function.\n"
        "\n"
        "Example:\n"
        "    dd if=/dev/urandom bs=4096 count=1024 of=input_data.bin\n"
        "    %s -C0 -F -D --patternfile input_data.bin output_data.bin\n"
        "    echo $?\n"
        "    diff input_data.bin output_data.bin\n"
        "    echo $?\n"
        "\n", prog, prog);
}







static inline uint64_t str_to_num(char *str)
{
 char *s = str;
 uint64_t num = strtoull(s, &s, 0);

 if (*s == '\0')
  return num;

 if (strcmp(s, "KiB") == 0)
  num *= 1024;
 else if (strcmp(s, "MiB") == 0)
  num *= 1024 * 1024;
 else if (strcmp(s, "GiB") == 0)
  num *= 1024 * 1024 * 1024;
 else {
  do { fprintf(
# 183 "genwqe_memcopy.c" 3 4
 stderr
# 183 "genwqe_memcopy.c"
 , "%s:%u: Error: " "--size or -s out of range, use KiB/MiB or GiB only\n", "genwqe_memcopy.c", 183); } while (0);
  num = 
# 184 "genwqe_memcopy.c" 3 4
       (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 184 "genwqe_memcopy.c"
                 ;
  
# 185 "genwqe_memcopy.c" 3 4
 (*__errno_location ()) 
# 185 "genwqe_memcopy.c"
       = 
# 185 "genwqe_memcopy.c" 3 4
         34
# 185 "genwqe_memcopy.c"
               ;
  exit(
# 186 "genwqe_memcopy.c" 3 4
      1
# 186 "genwqe_memcopy.c"
                  );
 }

 return num;
}

static void INT_handler(int sig);
static 
# 193 "genwqe_memcopy.c" 3 4
      _Bool 
# 193 "genwqe_memcopy.c"
           stop_memcopying = 
# 193 "genwqe_memcopy.c" 3 4
                             0
# 193 "genwqe_memcopy.c"
                                  ;

static void INT_handler(int sig)
{
 signal(sig, 
# 197 "genwqe_memcopy.c" 3 4
            ((__sighandler_t) 1)
# 197 "genwqe_memcopy.c"
                   );
 stop_memcopying = 
# 198 "genwqe_memcopy.c" 3 4
                  1
# 198 "genwqe_memcopy.c"
                      ;

}

static void __hexdump(uint8_t *buff, unsigned int size, unsigned int offs)
{
 unsigned int i;
 const uint8_t *b = (uint8_t *)buff;

 for (i = 0; i < size; i++) {
  if ((i & 0x0f) == 0x00)
   do { fprintf(
# 209 "genwqe_memcopy.c" 3 4
  stderr
# 209 "genwqe_memcopy.c"
  , " %08x: ", offs + i); } while (0);
  do { fprintf(
# 210 "genwqe_memcopy.c" 3 4
 stderr
# 210 "genwqe_memcopy.c"
 , " %02x", b[i]); } while (0);
  if ((i & 0x0f) == 0x0f)
   do { fprintf(
# 212 "genwqe_memcopy.c" 3 4
  stderr
# 212 "genwqe_memcopy.c"
  , "\n"); } while (0);
 }
 do { fprintf(
# 214 "genwqe_memcopy.c" 3 4
stderr
# 214 "genwqe_memcopy.c"
, "\n"); } while (0);
}

static uint64_t tdiff_us(struct timespec *et, struct timespec *st)
{
 uint64_t td;

 if (st->tv_nsec > et->tv_nsec) {
  td = (uint64_t) (1000000000 + et->tv_nsec);
  et->tv_sec--;
 } else td = (uint64_t)et->tv_nsec;
 td -= (uint64_t)st->tv_nsec;
 td = td / 1000;
 td += (uint64_t)(et->tv_sec - st->tv_sec) * 1000000;
 return td;
}


static void time_low(struct timespec *tl, struct timespec *t)
{
 if ((uint32_t)t->tv_sec < (uint32_t)tl->tv_sec) {
  tl->tv_sec = t->tv_sec;
  tl->tv_nsec = t->tv_nsec;
  return;
 }
 if ((uint32_t)t->tv_nsec < (uint32_t)tl->tv_nsec)
  tl->tv_nsec = t->tv_nsec;
 return;
}


static void time_high(struct timespec *th, struct timespec *t)
{
 if ((uint32_t)t->tv_sec > (uint32_t)th->tv_sec) {
  th->tv_sec = t->tv_sec;
  th->tv_nsec = t->tv_nsec;
  return;
 }
 if ((uint32_t)t->tv_nsec > (uint32_t)th->tv_nsec)
  th->tv_nsec = t->tv_nsec;
 return;
}






static inline int accel_is_zedc(accel_t card)
{
 return (accel_get_app_id(card) & 0x00000000ffffffffull) ==
  0x00000000475a4950;
}

static int accel_memcpy(accel_t card, struct ddcb_cmd *cmd_list, int preload,
   void *dest, size_t dest_n, uint64_t out_ats_type,
   void *src, size_t src_n,
   uint64_t in_ats_type,
   uint32_t *crc32,
   uint32_t *adler32,
   uint32_t *inp_processed,
   uint32_t *outp_returned,
   unsigned int err_inj)
{
 int rc, i;
 struct ddcb_cmd *cmd = cmd_list;
 struct asiv_memcpy *asiv;
 struct asv_memcpy *asv;

 for (i = 0; i < preload; i++) {
  ddcb_cmd_init(cmd);

  asiv = (struct asiv_memcpy *)&cmd->asiv;
  cmd->ddata_addr = 0ull;
  cmd->acfunc = 0x01;
  cmd->cmd = 0x03;
  cmd->cmdopts = 0x0000;
  cmd->asiv_length= 0x40 - 0x20;
  cmd->asv_length = 0xC0 - 0x80;
  cmd->ats = 0x0;

  asiv->inp_buff = 
# 295 "genwqe_memcopy.c" 3 4
                       ((__be64)(__builtin_constant_p((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u64)( (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64((
# 295 "genwqe_memcopy.c"
                       (unsigned long)src
# 295 "genwqe_memcopy.c" 3 4
                       ))))
# 295 "genwqe_memcopy.c"
                                                        ;
  asiv->inp_buff_len = 
# 296 "genwqe_memcopy.c" 3 4
                       ((__be32)(__builtin_constant_p((__u32)((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u32)( (((__u32)((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x000000ffUL) << 24) | (((__u32)((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0xff000000UL) >> 24))) : __fswab32((
# 296 "genwqe_memcopy.c"
                       (unsigned long)src_n
# 296 "genwqe_memcopy.c" 3 4
                       ))))
# 296 "genwqe_memcopy.c"
                                                          ;
  cmd->ats |= (((in_ats_type) & 0xf) << (44 - (4 * (
# 297 "genwqe_memcopy.c" 3 4
             __builtin_offsetof (
# 297 "genwqe_memcopy.c"
             struct asiv_memcpy
# 297 "genwqe_memcopy.c" 3 4
             , 
# 297 "genwqe_memcopy.c"
             inp_buff
# 297 "genwqe_memcopy.c" 3 4
             ) 
# 297 "genwqe_memcopy.c"
             / 8))))
                   ;

  asiv->outp_buff = 
# 300 "genwqe_memcopy.c" 3 4
                       ((__be64)(__builtin_constant_p((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u64)( (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       )) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64((
# 300 "genwqe_memcopy.c"
                       (unsigned long)dest
# 300 "genwqe_memcopy.c" 3 4
                       ))))
# 300 "genwqe_memcopy.c"
                                                         ;
  asiv->outp_buff_len = 
# 301 "genwqe_memcopy.c" 3 4
                       ((__be32)(__builtin_constant_p((__u32)((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u32)( (((__u32)((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x000000ffUL) << 24) | (((__u32)((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0xff000000UL) >> 24))) : __fswab32((
# 301 "genwqe_memcopy.c"
                       (uint32_t)dest_n
# 301 "genwqe_memcopy.c" 3 4
                       ))))
# 301 "genwqe_memcopy.c"
                                                      ;
  cmd->ats |= (((out_ats_type) & 0xf) << (44 - (4 * (
# 302 "genwqe_memcopy.c" 3 4
             __builtin_offsetof (
# 302 "genwqe_memcopy.c"
             struct asiv_memcpy
# 302 "genwqe_memcopy.c" 3 4
             , 
# 302 "genwqe_memcopy.c"
             outp_buff
# 302 "genwqe_memcopy.c" 3 4
             ) 
# 302 "genwqe_memcopy.c"
             / 8))))
                    ;


  asiv->in_adler32 = 
# 306 "genwqe_memcopy.c" 3 4
                       ((__be32)(__builtin_constant_p((__u32)((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u32)( (((__u32)((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x000000ffUL) << 24) | (((__u32)((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0xff000000UL) >> 24))) : __fswab32((
# 306 "genwqe_memcopy.c"
                       1
# 306 "genwqe_memcopy.c" 3 4
                       ))))
# 306 "genwqe_memcopy.c"
                                       ;
  asiv->in_crc32 = 
# 307 "genwqe_memcopy.c" 3 4
                       ((__be32)(__builtin_constant_p((__u32)((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       ))) ? ((__u32)( (((__u32)((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x000000ffUL) << 24) | (((__u32)((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       )) & (__u32)0xff000000UL) >> 24))) : __fswab32((
# 307 "genwqe_memcopy.c"
                       0
# 307 "genwqe_memcopy.c" 3 4
                       ))))
# 307 "genwqe_memcopy.c"
                                       ;


  if (err_inj & 0x1) {
   asiv->inp_buff ^= 0xffffffffffffffffull;
   fprintf(
# 312 "genwqe_memcopy.c" 3 4
          stderr
# 312 "genwqe_memcopy.c"
                , "ERR_INJ_INPUT:  %016llx\n",
    (long long)asiv->inp_buff);
  }
  if (err_inj & 0x2) {
   asiv->outp_buff ^= 0xffffffffffffffffull;
   fprintf(
# 317 "genwqe_memcopy.c" 3 4
          stderr
# 317 "genwqe_memcopy.c"
                , "ERR_INJ_OUTPUT: %016llx\n",
    (long long)asiv->outp_buff);
  }
  if (err_inj & 0x4) {
   asiv->inp_buff_len ^= 0xfffffffffull;
   asiv->outp_buff_len ^= 0xffffffffull;
   fprintf(
# 323 "genwqe_memcopy.c" 3 4
          stderr
# 323 "genwqe_memcopy.c"
                , "ERR_INJ_SIZE:   %08lx/%08lx\n",
    (long)asiv->inp_buff_len,
    (long)asiv->outp_buff_len);
  }

  if (i < (preload -1))
   cmd->next_addr = (unsigned long)(cmd + 1);
  else
   cmd->next_addr = 0x0;

  cmd++;
 }

 rc = accel_ddcb_execute(card, cmd_list, 
# 336 "genwqe_memcopy.c" 3 4
                                        ((void *)0)
# 336 "genwqe_memcopy.c"
                                            , 
# 336 "genwqe_memcopy.c" 3 4
                                              ((void *)0)
# 336 "genwqe_memcopy.c"
                                                  );

 cmd = &cmd_list[0];
 asv = (struct asv_memcpy *)&cmd->asv;
 *crc32 = 
# 340 "genwqe_memcopy.c" 3 4
                (__builtin_constant_p((__u32)((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 340 "genwqe_memcopy.c"
                asv->out_crc32
# 340 "genwqe_memcopy.c" 3 4
                )))
# 340 "genwqe_memcopy.c"
                                             ;
 *adler32 = 
# 341 "genwqe_memcopy.c" 3 4
                 (__builtin_constant_p((__u32)((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 341 "genwqe_memcopy.c"
                 asv->out_adler32
# 341 "genwqe_memcopy.c" 3 4
                 )))
# 341 "genwqe_memcopy.c"
                                                ;
 *inp_processed = 
# 342 "genwqe_memcopy.c" 3 4
                 (__builtin_constant_p((__u32)((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 342 "genwqe_memcopy.c"
                 asv->inp_processed
# 342 "genwqe_memcopy.c" 3 4
                 )))
# 342 "genwqe_memcopy.c"
                                                  ;
 *outp_returned = 
# 343 "genwqe_memcopy.c" 3 4
                 (__builtin_constant_p((__u32)((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 343 "genwqe_memcopy.c"
                 asv->outp_returned
# 343 "genwqe_memcopy.c" 3 4
                 )))
# 343 "genwqe_memcopy.c"
                                                  ;
 return rc;
}

static void ddcb_print_dma_err(struct _asv_runtime_dma_error *d)
{
 fprintf(
# 349 "genwqe_memcopy.c" 3 4
        stderr
# 349 "genwqe_memcopy.c"
              , " raddr: %016llx rfmt/chan/disc: %08x "
  "rdmae: %04x rsge: %04x\n"
  " waddr: %016llx wfmt/chan/disc: %08x "
  "wdmae: %04x wsge: %04x\n",
  (long long)
# 353 "genwqe_memcopy.c" 3 4
            (__builtin_constant_p((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            ))) ? ((__u64)( (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64((__u64)(__be64)(
# 353 "genwqe_memcopy.c"
            d->raddr_be64
# 353 "genwqe_memcopy.c" 3 4
            )))
# 353 "genwqe_memcopy.c"
                                        ,
  
# 354 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u32)((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 354 "genwqe_memcopy.c"
 d->rfmt_chan_disccnt_be32
# 354 "genwqe_memcopy.c" 3 4
 )))
# 354 "genwqe_memcopy.c"
                                         ,
  
# 355 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u16)((__u16)(__be16)(
# 355 "genwqe_memcopy.c"
 d->rdmae_be16
# 355 "genwqe_memcopy.c" 3 4
 ))) ? ((__u16)( (((__u16)((__u16)(__be16)(
# 355 "genwqe_memcopy.c"
 d->rdmae_be16
# 355 "genwqe_memcopy.c" 3 4
 )) & (__u16)0x00ffU) << 8) | (((__u16)((__u16)(__be16)(
# 355 "genwqe_memcopy.c"
 d->rdmae_be16
# 355 "genwqe_memcopy.c" 3 4
 )) & (__u16)0xff00U) >> 8))) : __fswab16((__u16)(__be16)(
# 355 "genwqe_memcopy.c"
 d->rdmae_be16
# 355 "genwqe_memcopy.c" 3 4
 )))
# 355 "genwqe_memcopy.c"
                             ,
  
# 356 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u16)((__u16)(__be16)(
# 356 "genwqe_memcopy.c"
 d->rsge_be16
# 356 "genwqe_memcopy.c" 3 4
 ))) ? ((__u16)( (((__u16)((__u16)(__be16)(
# 356 "genwqe_memcopy.c"
 d->rsge_be16
# 356 "genwqe_memcopy.c" 3 4
 )) & (__u16)0x00ffU) << 8) | (((__u16)((__u16)(__be16)(
# 356 "genwqe_memcopy.c"
 d->rsge_be16
# 356 "genwqe_memcopy.c" 3 4
 )) & (__u16)0xff00U) >> 8))) : __fswab16((__u16)(__be16)(
# 356 "genwqe_memcopy.c"
 d->rsge_be16
# 356 "genwqe_memcopy.c" 3 4
 )))
# 356 "genwqe_memcopy.c"
                            ,
  (long long)
# 357 "genwqe_memcopy.c" 3 4
            (__builtin_constant_p((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            ))) ? ((__u64)( (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64((__u64)(__be64)(
# 357 "genwqe_memcopy.c"
            d->waddr_be64
# 357 "genwqe_memcopy.c" 3 4
            )))
# 357 "genwqe_memcopy.c"
                                        ,
  
# 358 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u32)((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 ))) ? ((__u32)( (((__u32)((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x000000ffUL) << 24) | (((__u32)((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 )) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 )) & (__u32)0xff000000UL) >> 24))) : __fswab32((__u32)(__be32)(
# 358 "genwqe_memcopy.c"
 d->wfmt_chan_disccnt_be32
# 358 "genwqe_memcopy.c" 3 4
 )))
# 358 "genwqe_memcopy.c"
                                         ,
  
# 359 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u16)((__u16)(__be16)(
# 359 "genwqe_memcopy.c"
 d->wdmae_be16
# 359 "genwqe_memcopy.c" 3 4
 ))) ? ((__u16)( (((__u16)((__u16)(__be16)(
# 359 "genwqe_memcopy.c"
 d->wdmae_be16
# 359 "genwqe_memcopy.c" 3 4
 )) & (__u16)0x00ffU) << 8) | (((__u16)((__u16)(__be16)(
# 359 "genwqe_memcopy.c"
 d->wdmae_be16
# 359 "genwqe_memcopy.c" 3 4
 )) & (__u16)0xff00U) >> 8))) : __fswab16((__u16)(__be16)(
# 359 "genwqe_memcopy.c"
 d->wdmae_be16
# 359 "genwqe_memcopy.c" 3 4
 )))
# 359 "genwqe_memcopy.c"
                             ,
  
# 360 "genwqe_memcopy.c" 3 4
 (__builtin_constant_p((__u16)((__u16)(__be16)(
# 360 "genwqe_memcopy.c"
 d->wsge_be16
# 360 "genwqe_memcopy.c" 3 4
 ))) ? ((__u16)( (((__u16)((__u16)(__be16)(
# 360 "genwqe_memcopy.c"
 d->wsge_be16
# 360 "genwqe_memcopy.c" 3 4
 )) & (__u16)0x00ffU) << 8) | (((__u16)((__u16)(__be16)(
# 360 "genwqe_memcopy.c"
 d->wsge_be16
# 360 "genwqe_memcopy.c" 3 4
 )) & (__u16)0xff00U) >> 8))) : __fswab16((__u16)(__be16)(
# 360 "genwqe_memcopy.c"
 d->wsge_be16
# 360 "genwqe_memcopy.c" 3 4
 )))
# 360 "genwqe_memcopy.c"
                            );
}

static void *__memcpy_thread(void *data)
{
 struct memcpy_thread_data *pt = (struct memcpy_thread_data *)data;
 struct memcpy_in_parms *ip = pt->ip;
 int err = 0;
 int errors = 0;
 int rc, i;
 uint8_t *obuf, *obuf4k;
 struct ddcb_cmd *ddcb_list;
 struct ddcb_cmd *ddcb0 = 
# 372 "genwqe_memcopy.c" 3 4
                         ((void *)0)
# 372 "genwqe_memcopy.c"
                             ;
 struct timespec stime = { .tv_sec = 0, .tv_nsec = 0 };
 struct timespec etime = { .tv_sec = 0, .tv_nsec = 0 };
 uint32_t mcpy_inp_processed, mcpy_outp_returned;
 uint32_t mcpy_crc32, mcpy_adler32;
 uint64_t total_usec = 0;
 int memcopies = 0;
 int count = ip->count;
 long long bytes_copied = 0;


 if (ip->use_sglist) {
  pt->out_ats_type = 0x7ull;
  obuf4k = memalign(ip->page_size,
      ip->data_buf_size + ip->pgoffs_o);
  if (ip->use_sglist > 1)
   accel_pin_memory(pt->accel, obuf4k,
      ip->data_buf_size + ip->pgoffs_o, 1);
 } else {
  pt->out_ats_type = 0x5ull;
  obuf4k = accel_malloc(pt->accel,
          ip->data_buf_size + ip->pgoffs_o);
 }
 if ((ip->data_buf_size != 0) && (obuf4k == 
# 395 "genwqe_memcopy.c" 3 4
                                           ((void *)0)
# 395 "genwqe_memcopy.c"
                                               )) {
  do { fprintf(
# 396 "genwqe_memcopy.c" 3 4
 stderr
# 396 "genwqe_memcopy.c"
 , "%s:%u: Error: " "Can not allocate Output Buffer\n", "genwqe_memcopy.c", 396); } while (0);
  err = 80;
  goto __memcpy_exit_1;
 }
 memset(obuf4k, 0xff, ip->data_buf_size + ip->pgoffs_o);
 obuf = obuf4k + ip->pgoffs_o;


 ddcb_list = (struct ddcb_cmd *)
  malloc(ip->preload * sizeof(struct ddcb_cmd));
 if (
# 406 "genwqe_memcopy.c" 3 4
    ((void *)0) 
# 406 "genwqe_memcopy.c"
         == ddcb_list) {
  do { fprintf(
# 407 "genwqe_memcopy.c" 3 4
 stderr
# 407 "genwqe_memcopy.c"
 , "%s:%u: Error: " "Can not allocate %d DDCB List\n", "genwqe_memcopy.c", 407, ip->preload); } while (0);
  err = 80;
  goto __memcpy_exit_2;
 }
 do { if (verbose_flag > 0) fprintf(
# 411 "genwqe_memcopy.c" 3 4
stderr
# 411 "genwqe_memcopy.c"
, "Thread: %d memcopy: %p (in) to %p (out), pageoffs %d (in) " "%d (out), %d bytes Preload: %d\n", pt->thread, pt->ibuf, obuf, ip->pgoffs_i, ip->pgoffs_o, ip->data_buf_size, ip->preload); } while (0)


                                                             ;
 clock_gettime(
# 415 "genwqe_memcopy.c" 3 4
              4
# 415 "genwqe_memcopy.c"
                                 , &stime);
 pt->stime.tv_sec = stime.tv_sec;
 pt->stime.tv_nsec = stime.tv_nsec;

 for (count = 0; count < ip->count; count++) {
  if (stop_memcopying) break;
  int xerrno;


  if (ip->force_cmp)
   memset(obuf, 0x55, ip->data_buf_size);

  clock_gettime(
# 427 "genwqe_memcopy.c" 3 4
               4
# 427 "genwqe_memcopy.c"
                                  , &stime);

  rc = accel_memcpy(pt->accel, ddcb_list, ip->preload,
      obuf, ip->data_buf_size, pt->out_ats_type,
      pt->ibuf, ip->data_buf_size,
      ip->in_ats_type,
      &mcpy_crc32, &mcpy_adler32,
      &mcpy_inp_processed,
      &mcpy_outp_returned,
      ip->err_inj);
  xerrno = 
# 437 "genwqe_memcopy.c" 3 4
          (*__errno_location ())
# 437 "genwqe_memcopy.c"
               ;

  clock_gettime(
# 439 "genwqe_memcopy.c" 3 4
               4
# 439 "genwqe_memcopy.c"
                                  , &etime);
  pt->etime.tv_sec = etime.tv_sec;
  pt->etime.tv_nsec = etime.tv_nsec;
  total_usec += tdiff_us(&etime, &stime);
  ddcb0 = ddcb_list;

  if (rc != 0) {
   struct _asv_runtime_dma_error *d;
   fprintf(
# 447 "genwqe_memcopy.c" 3 4
          stderr
# 447 "genwqe_memcopy.c"
                ,
    "\nERR: Thread: %d MEMCOPY DDCB[%d] failed, "
    "%s (%d)\n"
    "     errno=%d %s\n",
    pt->thread, pt->memcopies,
    ddcb_strerror(rc), rc, xerrno,
    strerror(xerrno));
   fprintf(
# 454 "genwqe_memcopy.c" 3 4
          stderr
# 454 "genwqe_memcopy.c"
                , "  RETC: %03x %s ATTN: %x PROGR: %x\n"
    "  from card CRC32: %08x ADLER: %08x\n"
    "  original  CRC32: %08x ADLER: %08x\n",
    ddcb0->retc, ddcb_retc_strerror(ddcb0->retc),
    ddcb0->attn, ddcb0->progress,
    mcpy_crc32, mcpy_adler32, ip->mcpy_crc32,
    ip->mcpy_adler32);

   fprintf(
# 462 "genwqe_memcopy.c" 3 4
          stderr
# 462 "genwqe_memcopy.c"
                , "  DEQUEUE=%016llx CMPLT=%016llx "
    "DISP=%016llx\n",
    (long long)ddcb0->deque_ts,
    (long long)ddcb0->cmplt_ts,
    (long long)ddcb0->disp_ts);
   if ((ddcb0->retc == 0x0110) &&
       (ddcb0->attn == 0xe007)) {
    d = (struct _asv_runtime_dma_error *)
     ddcb0->asv;
    ddcb_print_dma_err(d);
   }
   ddcb_hexdump(
# 473 "genwqe_memcopy.c" 3 4
               stderr
# 473 "genwqe_memcopy.c"
                     , ddcb0->asv, sizeof(ddcb0->asv));
   err = 84;
   goto __memcpy_exit_3;
  }

  if ((mcpy_crc32 != ip->mcpy_crc32) ||
      (mcpy_adler32 != ip->mcpy_adler32)) {
   fprintf(
# 480 "genwqe_memcopy.c" 3 4
          stderr
# 480 "genwqe_memcopy.c"
                , "ERR: Thread: %d CRC/ADLER does not "
    "match!\n"
    "  from card CRC32: %08x ADLER: %08x\n"
    "  original  CRC32: %08x ADLER: %08x "
    "at %d of %d loops\n",
    pt->thread, mcpy_crc32, mcpy_adler32,
    ip->mcpy_crc32, ip->mcpy_adler32, count,
    ip->count);
   errors++;
  }

  if ((ip->data_buf_size != (int)mcpy_inp_processed) ||
      (ip->data_buf_size != (int)mcpy_outp_returned)) {
   fprintf(
# 493 "genwqe_memcopy.c" 3 4
          stderr
# 493 "genwqe_memcopy.c"
                , "ERR: Thread: %d IN/OUT sizes do "
    "not match!\n"
    "  from card IN: %08x OUT: %08x\n"
    "  original  IN: %08x OUT: %08x at %d of %d "
    "loops\n", pt->thread,
    mcpy_inp_processed, mcpy_outp_returned,
    ip->data_buf_size, ip->data_buf_size,
    count, ip->count);
   errors++;
  }
  if (ip->force_cmp || errors) {

   for (i = 0; i < ip->data_buf_size; i++) {
    if (obuf[i] != pt->ibuf[i]) {
     do { fprintf(
# 507 "genwqe_memcopy.c" 3 4
    stderr
# 507 "genwqe_memcopy.c"
    , "\nERR: Thread: %d @ " "offs %08x\n" "  RETC: %03x %s ATTN: %x " "PROGR: %x\n" "  INP_PROCESSED: %08x " "OUTP_RETURNED: %08x\n", pt->thread, i, ddcb0->retc, ddcb_retc_strerror(ddcb0->retc), ddcb0->attn, ddcb0->progress, mcpy_inp_processed, mcpy_outp_returned); } while (0)
# 517 "genwqe_memcopy.c"
                          ;
     errors++;
     break;
    }
   }
   if (i < ip->data_buf_size) {
    int offs;
    unsigned int len;

    offs = i - 32;
    if (offs < 0) offs = 0;
    len = ({ __typeof__ (64) _a = (64); __typeof__ (ip->data_buf_size - offs) _b = (ip->data_buf_size - offs); _a < _b ? _a : _b; });
    do { fprintf(
# 529 "genwqe_memcopy.c" 3 4
   stderr
# 529 "genwqe_memcopy.c"
   , "memcopy src buffer (%p):\n", pt->ibuf); } while (0)
               ;
    __hexdump(&pt->ibuf[offs], len, offs);
    do { fprintf(
# 532 "genwqe_memcopy.c" 3 4
   stderr
# 532 "genwqe_memcopy.c"
   , "memcopy dst buffer (%p):\n", obuf); } while (0)
           ;
    __hexdump(&obuf[offs], len, offs);
    errors++;
   }
  }
  if (errors) break;
  memcopies += ip->preload;
  bytes_copied += (long long)ip->preload * ip->data_buf_size;
 }


 if (0 == pt->thread) {
  if (
# 545 "genwqe_memcopy.c" 3 4
     ((void *)0) 
# 545 "genwqe_memcopy.c"
          != ip->o_fp) {
   rc = fwrite(obuf, 1, ip->data_buf_size, ip->o_fp);
   if (rc != ip->data_buf_size) {
    do { fprintf(
# 548 "genwqe_memcopy.c" 3 4
   stderr
# 548 "genwqe_memcopy.c"
   , "%s:%u: Error: " "can not write output file !\n", "genwqe_memcopy.c", 548); } while (0);
    err = 79;
   }
   fclose(ip->o_fp);
   ip->o_fp = 
# 552 "genwqe_memcopy.c" 3 4
             ((void *)0)
# 552 "genwqe_memcopy.c"
                 ;
  }
 }


 pt->errors = errors;
 pt->memcopies = memcopies;
 pt->bytes_copied = bytes_copied;
 pt->total_usec = total_usec;

__memcpy_exit_3:

 free(ddcb_list);
__memcpy_exit_2:

 if (ip->use_sglist) {
  if (ip->use_sglist > 1)
   accel_unpin_memory(pt->accel, obuf4k,
        ip->data_buf_size + ip->pgoffs_o);
  free(obuf4k);
 } else accel_free(pt->accel, obuf4k,
     ip->data_buf_size + ip->pgoffs_o);
 obuf4k = 
# 574 "genwqe_memcopy.c" 3 4
         ((void *)0)
# 574 "genwqe_memcopy.c"
             ;
__memcpy_exit_1:
 pt->err = err;
 return 
# 577 "genwqe_memcopy.c" 3 4
       ((void *)0)
# 577 "genwqe_memcopy.c"
           ;
}


static int __memcpy_free_ibuf(struct memcpy_in_parms *ip,
         struct memcpy_thread_data *pt)
{

 if (ip->use_sglist) {
  if (ip->use_sglist > 1)
   accel_unpin_memory(pt->accel, pt->ibuf4k,
        ip->data_buf_size + ip->pgoffs_i);
  free(pt->ibuf4k);
 } else accel_free(pt->accel, pt->ibuf4k,
     ip->data_buf_size + ip->pgoffs_i);
 pt->ibuf4k = 
# 592 "genwqe_memcopy.c" 3 4
             ((void *)0)
# 592 "genwqe_memcopy.c"
                 ;
 return 0;
}


static int __memcpy_alloc_ibuf(struct memcpy_in_parms *ip,
          struct memcpy_thread_data *pt)
{
 int i;
 size_t fread_size = 0;

 if (ip->use_sglist) {
  ip->in_ats_type = 0x7ull;
  pt->ibuf4k = memalign(ip->page_size,
          ip->data_buf_size + ip->pgoffs_i);
  if (ip->use_sglist > 1)
   accel_pin_memory(pt->accel, pt->ibuf4k,
      ip->data_buf_size + ip->pgoffs_i, 0);
 } else {
  ip->in_ats_type = 0x4ull;
  pt->ibuf4k = accel_malloc(pt->accel,
       ip->data_buf_size + ip->pgoffs_i);
 }

 if ((ip->data_buf_size != 0) && (pt->ibuf4k == 
# 616 "genwqe_memcopy.c" 3 4
                                               ((void *)0)
# 616 "genwqe_memcopy.c"
                                                   )) {
  do { fprintf(
# 617 "genwqe_memcopy.c" 3 4
 stderr
# 617 "genwqe_memcopy.c"
 , "%s:%u: Error: " "Can not allocate Input memory\n", "genwqe_memcopy.c", 617); } while (0);
  return 80;
 }

 memset(pt->ibuf4k, 0xee, ip->data_buf_size + ip->pgoffs_i);
 pt->ibuf = pt->ibuf4k + ip->pgoffs_i;


 if (ip->fpattern) {
  fread_size = fread(pt->ibuf, 1, ip->data_buf_size,
       ip->fpattern);
  if ((int)fread_size != ip->data_buf_size) {
   do { fprintf(
# 629 "genwqe_memcopy.c" 3 4
  stderr
# 629 "genwqe_memcopy.c"
  , "%s:%u: Error: " "Can not read pattern file!\n", "genwqe_memcopy.c", 629); } while (0);
   return 79;
  }
  fclose(ip->fpattern);
 } else {
  for (i = 0; i < ip->data_buf_size; i++)
   pt->ibuf[i] = (uint8_t)i;
 }
 if (0 == pt->thread) {


  ip->mcpy_adler32 = adler32(0L, 
# 640 "genwqe_memcopy.c" 3
                                0
# 640 "genwqe_memcopy.c"
                                      , 0);
  ip->mcpy_adler32 = adler32(ip->mcpy_adler32, pt->ibuf,
        ip->data_buf_size);
  ip->mcpy_crc32 = crc32(0L, 
# 643 "genwqe_memcopy.c" 3
                            0
# 643 "genwqe_memcopy.c"
                                  , 0);
  ip->mcpy_crc32 = crc32(ip->mcpy_crc32 , pt->ibuf,
           ip->data_buf_size);
 }
 return 0;
}

int main(int argc, char *argv[])
{
 int cmd;
 char *endptr = 
# 653 "genwqe_memcopy.c" 3 4
               ((void *)0)
# 653 "genwqe_memcopy.c"
                   ;
 pthread_t tid;
 int thread;
 char *out_f;
 int err_code;
 unsigned long long frequency, wtime_usec = 0, wtime_e = 0;


 long long bytes_copied = 0;
 uint64_t total_usec = 0;
 uint64_t total_msec = 0;
 int memcopies = 0;
 int errors = 0;
 int mib, kib;
 unsigned long kibs, mibs;
 struct memcpy_thread_data *tdata;
 struct memcpy_thread_data *pt;
 struct memcpy_in_parms ip;

 ip.card_no = 0;
 ip.card_type = 0x0000;
 ip.mode = 0x0004 | 0x0008;
 ip.quiet = 
# 675 "genwqe_memcopy.c" 3 4
           0
# 675 "genwqe_memcopy.c"
                ;
 ip.cpu = -1;
 ip.count = 1;
 ip.force_cmp = 
# 678 "genwqe_memcopy.c" 3 4
               0
# 678 "genwqe_memcopy.c"
                    ;
 ip.use_sglist = 0;
 ip.preload = 1;
 ip.threads = 1;
 ip.o_fp = 
# 682 "genwqe_memcopy.c" 3 4
          ((void *)0)
# 682 "genwqe_memcopy.c"
              ;
 ip.fpattern = 
# 683 "genwqe_memcopy.c" 3 4
              ((void *)0)
# 683 "genwqe_memcopy.c"
                  ;
 ip.in_ats_type = 0x4ull;
 ip.page_size = sysconf(
# 685 "genwqe_memcopy.c" 3 4
                       _SC_PAGESIZE
# 685 "genwqe_memcopy.c"
                                   );
 ip.data_buf_size = 4096;
 ip.pgoffs_i = 0;
 ip.pgoffs_o = 0;
 ip.mcpy_crc32 = 0;
 ip.mcpy_adler32 = 0;
 ip.have_threads = 0;
 ip.err_inj = 0x0;

 while (1) {
  int option_index = 0;
  static struct option long_options[] = {



   { "card", 
# 700 "genwqe_memcopy.c" 3 4
             1
# 700 "genwqe_memcopy.c"
                              , 
# 700 "genwqe_memcopy.c" 3 4
                                ((void *)0)
# 700 "genwqe_memcopy.c"
                                    , 'C' },
   { "accelerator-type", 
# 701 "genwqe_memcopy.c" 3 4
                        1
# 701 "genwqe_memcopy.c"
                                         , 
# 701 "genwqe_memcopy.c" 3 4
                                           ((void *)0)
# 701 "genwqe_memcopy.c"
                                               , 'A' },
   { "cpu", 
# 702 "genwqe_memcopy.c" 3 4
            1
# 702 "genwqe_memcopy.c"
                             , 
# 702 "genwqe_memcopy.c" 3 4
                               ((void *)0)
# 702 "genwqe_memcopy.c"
                                   , 'X' },
   { "use-sglist", 
# 703 "genwqe_memcopy.c" 3 4
                   0
# 703 "genwqe_memcopy.c"
                              , 
# 703 "genwqe_memcopy.c" 3 4
                                      ((void *)0)
# 703 "genwqe_memcopy.c"
                                          , 'G' },
   { "nonblocking", 
# 704 "genwqe_memcopy.c" 3 4
                   0
# 704 "genwqe_memcopy.c"
                              , 
# 704 "genwqe_memcopy.c" 3 4
                                      ((void *)0)
# 704 "genwqe_memcopy.c"
                                          , 'n' },

   { "bufsize", 
# 706 "genwqe_memcopy.c" 3 4
                1
# 706 "genwqe_memcopy.c"
                                 , 
# 706 "genwqe_memcopy.c" 3 4
                                   ((void *)0)
# 706 "genwqe_memcopy.c"
                                       , 's' },
   { "patternfile", 
# 707 "genwqe_memcopy.c" 3 4
                   1
# 707 "genwqe_memcopy.c"
                                    , 
# 707 "genwqe_memcopy.c" 3 4
                                      ((void *)0)
# 707 "genwqe_memcopy.c"
                                          , 'p' },
   { "count", 
# 708 "genwqe_memcopy.c" 3 4
              1
# 708 "genwqe_memcopy.c"
                               , 
# 708 "genwqe_memcopy.c" 3 4
                                 ((void *)0)
# 708 "genwqe_memcopy.c"
                                     , 'c' },
   { "preload", 
# 709 "genwqe_memcopy.c" 3 4
                1
# 709 "genwqe_memcopy.c"
                                 , 
# 709 "genwqe_memcopy.c" 3 4
                                   ((void *)0)
# 709 "genwqe_memcopy.c"
                                       , 'l' },
   { "pgoffs_i", 
# 710 "genwqe_memcopy.c" 3 4
                 1
# 710 "genwqe_memcopy.c"
                                  , 
# 710 "genwqe_memcopy.c" 3 4
                                    ((void *)0)
# 710 "genwqe_memcopy.c"
                                        , 'i' },
   { "pgoffs_o", 
# 711 "genwqe_memcopy.c" 3 4
                 1
# 711 "genwqe_memcopy.c"
                                  , 
# 711 "genwqe_memcopy.c" 3 4
                                    ((void *)0)
# 711 "genwqe_memcopy.c"
                                        , 'o' },
   { "force-compare", 
# 712 "genwqe_memcopy.c" 3 4
                     1
# 712 "genwqe_memcopy.c"
                                      , 
# 712 "genwqe_memcopy.c" 3 4
                                        ((void *)0)
# 712 "genwqe_memcopy.c"
                                            , 'F' },
   { "threads", 
# 713 "genwqe_memcopy.c" 3 4
                1
# 713 "genwqe_memcopy.c"
                                 , 
# 713 "genwqe_memcopy.c" 3 4
                                   ((void *)0)
# 713 "genwqe_memcopy.c"
                                       , 't' },
   { "err-inject", 
# 714 "genwqe_memcopy.c" 3 4
                   1
# 714 "genwqe_memcopy.c"
                                    , 
# 714 "genwqe_memcopy.c" 3 4
                                      ((void *)0)
# 714 "genwqe_memcopy.c"
                                          , 'Y' },



   { "version", 
# 718 "genwqe_memcopy.c" 3 4
                     0
# 718 "genwqe_memcopy.c"
                                , 
# 718 "genwqe_memcopy.c" 3 4
                                        ((void *)0)
# 718 "genwqe_memcopy.c"
                                            , 'V' },
   { "debug", 
# 719 "genwqe_memcopy.c" 3 4
                0
# 719 "genwqe_memcopy.c"
                           , 
# 719 "genwqe_memcopy.c" 3 4
                                   ((void *)0)
# 719 "genwqe_memcopy.c"
                                       , 'D' },
   { "quiet", 
# 720 "genwqe_memcopy.c" 3 4
                0
# 720 "genwqe_memcopy.c"
                           , 
# 720 "genwqe_memcopy.c" 3 4
                                   ((void *)0)
# 720 "genwqe_memcopy.c"
                                       , 'q' },
   { "verbose", 
# 721 "genwqe_memcopy.c" 3 4
                  0
# 721 "genwqe_memcopy.c"
                             , 
# 721 "genwqe_memcopy.c" 3 4
                                     ((void *)0)
# 721 "genwqe_memcopy.c"
                                         , 'v' },
   { "help", 
# 722 "genwqe_memcopy.c" 3 4
               0
# 722 "genwqe_memcopy.c"
                          , 
# 722 "genwqe_memcopy.c" 3 4
                                  ((void *)0)
# 722 "genwqe_memcopy.c"
                                      , 'h' },
   { 0, 
# 723 "genwqe_memcopy.c" 3 4
           0
# 723 "genwqe_memcopy.c"
                      , 
# 723 "genwqe_memcopy.c" 3 4
                              ((void *)0)
# 723 "genwqe_memcopy.c"
                                  , 0 },
  };

  cmd = getopt_long(argc, argv, "nqGDFi:o:p:s:c:C:A:X:vVhl:t:Y:",
    long_options, &option_index);
  if (cmd == -1)
   break;

  switch (cmd) {
  case 'C':
   if (strcmp(optarg, "RED") == 0) {
    ip.card_no = -1;
    break;
   }
   ip.card_no = strtol(optarg, (char **)
# 737 "genwqe_memcopy.c" 3 4
                                       ((void *)0)
# 737 "genwqe_memcopy.c"
                                           , 0);
   break;
  case 'A':
   if (strcmp(optarg, "GENWQE") == 0) {
    ip.card_type = 0x0000;
    break;
   }
   if (strcmp(optarg, "CAPI") == 0) {
    ip.card_type = 0x0002;
    break;
   }
   ip.card_type = strtol(optarg, (char **)
# 748 "genwqe_memcopy.c" 3 4
                                         ((void *)0)
# 748 "genwqe_memcopy.c"
                                             , 0);
   if ((0x0000 != ip.card_type) &&
    (0x0002 != ip.card_type)) {
    usage(argv[0]);
    exit(
# 752 "genwqe_memcopy.c" 3 4
        1
# 752 "genwqe_memcopy.c"
                    );
   }
   break;
  case 'X':
   ip.cpu = strtoul(optarg, (char **)
# 756 "genwqe_memcopy.c" 3 4
                                    ((void *)0)
# 756 "genwqe_memcopy.c"
                                        , 0);
   break;
  case 'G':
   ip.use_sglist++;
   break;
  case 'c':
   ip.count = strtol(optarg, (char **)
# 762 "genwqe_memcopy.c" 3 4
                                     ((void *)0)
# 762 "genwqe_memcopy.c"
                                         , 0);
   break;
  case 'i':
   ip.pgoffs_i = strtoul(optarg, &endptr, 0);
   if ((optarg && (((char *)optarg)[0] == '-'))
       || (*endptr != '\0')) {
    do { fprintf(
# 768 "genwqe_memcopy.c" 3 4
   stderr
# 768 "genwqe_memcopy.c"
   , "%s:%u: Error: " "illegal input offset!\n", "genwqe_memcopy.c", 768); } while (0);
    usage(argv[0]);
    exit(
# 770 "genwqe_memcopy.c" 3 4
        1
# 770 "genwqe_memcopy.c"
                    );
   }
   break;
  case 'o':
   ip.pgoffs_o = strtoul(optarg, &endptr, 0);
   if ((optarg && (((char *)optarg)[0] == '-'))
       || (*endptr != '\0')) {
    do { fprintf(
# 777 "genwqe_memcopy.c" 3 4
   stderr
# 777 "genwqe_memcopy.c"
   , "%s:%u: Error: " "illegal output offset!\n", "genwqe_memcopy.c", 777); } while (0);
    usage(argv[0]);
    exit(
# 779 "genwqe_memcopy.c" 3 4
        1
# 779 "genwqe_memcopy.c"
                    );
   }
   break;
  case 's':
   ip.data_buf_size = str_to_num(optarg);
   break;
  case 'p':
   ip.fpattern = fopen(optarg, "rb");
   if (ip.fpattern == 
# 787 "genwqe_memcopy.c" 3 4
                     ((void *)0)
# 787 "genwqe_memcopy.c"
                         ) {
    do { fprintf(
# 788 "genwqe_memcopy.c" 3 4
   stderr
# 788 "genwqe_memcopy.c"
   , "%s:%u: Error: " "Pattern file %s not found!\n", "genwqe_memcopy.c", 788, optarg); } while (0);
   } else {
    fseek(ip.fpattern, 0L, 
# 790 "genwqe_memcopy.c" 3 4
                          2
# 790 "genwqe_memcopy.c"
                                  );
    ip.data_buf_size = ftell(ip.fpattern);
    fseek(ip.fpattern, 0L, 
# 792 "genwqe_memcopy.c" 3 4
                          0
# 792 "genwqe_memcopy.c"
                                  );
   }
   break;

  case 'l':
   ip.preload = strtol(optarg, (char **)
# 797 "genwqe_memcopy.c" 3 4
                                       ((void *)0)
# 797 "genwqe_memcopy.c"
                                           , 0);
   break;

  case 't':
   ip.threads = strtol(optarg, (char **)
# 801 "genwqe_memcopy.c" 3 4
                                       ((void *)0)
# 801 "genwqe_memcopy.c"
                                           , 0);
   break;

  case 'F':
   ip.force_cmp = 
# 805 "genwqe_memcopy.c" 3 4
                 1
# 805 "genwqe_memcopy.c"
                     ;
   break;
  case 'n':
   ip.mode |= 0x0010;
   break;

  case 'h':
   usage(argv[0]);
   exit(
# 813 "genwqe_memcopy.c" 3 4
       0
# 813 "genwqe_memcopy.c"
                   );
   break;
  case 'V':
   printf("%s\n", version);
   exit(
# 817 "genwqe_memcopy.c" 3 4
       0
# 817 "genwqe_memcopy.c"
                   );
  case 'D':

   break;
  case 'q':
   ip.quiet = 
# 822 "genwqe_memcopy.c" 3 4
             1
# 822 "genwqe_memcopy.c"
                 ;
   break;
  case 'Y':
   ip.err_inj = strtol(optarg, (char **)
# 825 "genwqe_memcopy.c" 3 4
                                       ((void *)0)
# 825 "genwqe_memcopy.c"
                                           , 0);
   break;
  case 'v':
   verbose_flag++;
   break;
  default:
   usage(argv[0]);
   exit(
# 832 "genwqe_memcopy.c" 3 4
       1
# 832 "genwqe_memcopy.c"
                   );
  }
 }

 if (-1 == ip.card_no) {
  if (1 != ip.use_sglist) {
   do { if (verbose_flag) fprintf(
# 838 "genwqe_memcopy.c" 3 4
  stdout
# 838 "genwqe_memcopy.c"
  , "Option -G set when in redundant card " "mode!\n"); } while (0)
              ;
   ip.use_sglist = 1;
  }
 }

 if (optind < argc) {
  out_f = argv[optind++];
  ip.o_fp = fopen(out_f, "w+");
  if (
# 847 "genwqe_memcopy.c" 3 4
     ((void *)0) 
# 847 "genwqe_memcopy.c"
          == ip.o_fp) {
   do { fprintf(
# 848 "genwqe_memcopy.c" 3 4
  stderr
# 848 "genwqe_memcopy.c"
  , "%s:%u: Error: " "can not open output file '%s': %s\n",
                                "genwqe_memcopy.c"
# 848 "genwqe_memcopy.c"
   ,
                                849
# 848 "genwqe_memcopy.c"
   , out_f, strerror(
# 848 "genwqe_memcopy.c" 3 4
  (*__errno_location ())
# 848 "genwqe_memcopy.c"
  )); } while (0)
                                 ;
   exit(79);
  }
 }

 if (optind != argc) {
  usage(argv[0]);
  exit(
# 856 "genwqe_memcopy.c" 3 4
      1
# 856 "genwqe_memcopy.c"
                  );
 }
 if ((ip.card_type != 0x0002) && (1 != ip.preload)) {
  printf("Note: Use Preload option only on CAPI Card !\n");
  exit(
# 860 "genwqe_memcopy.c" 3 4
      1
# 860 "genwqe_memcopy.c"
                  );
 }

 switch_cpu(ip.cpu, verbose_flag);
 if (verbose_flag > 1)
 ddcb_debug(verbose_flag - 1);


 tdata = (struct memcpy_thread_data*)
  malloc(ip.threads * sizeof(struct memcpy_thread_data));
 if (
# 870 "genwqe_memcopy.c" 3 4
    ((void *)0) 
# 870 "genwqe_memcopy.c"
         == tdata) {
  do { fprintf(
# 871 "genwqe_memcopy.c" 3 4
 stderr
# 871 "genwqe_memcopy.c"
 , "%s:%u: Error: " "Can not allocate memory Thread Data\n", "genwqe_memcopy.c", 871); } while (0);
  exit(80);
 }

 ip.stime.tv_sec = -1;;
 ip.stime.tv_nsec = -1;;
 ip.etime.tv_sec = 0;
 ip.etime.tv_nsec = 0;

 signal(
# 880 "genwqe_memcopy.c" 3 4
       2
# 880 "genwqe_memcopy.c"
             , INT_handler);

 pt = &tdata[0];
 for (thread = 0; thread < ip.threads; thread++, pt++) {
  pt->thread = thread;
  pt->ip = &ip;
  pt->err = 0;
  pt->errors = 0;
  pt->bytes_copied = 0;
  pt->memcopies = 0;
  pt->total_usec = 0;
  pt->tid = 0;

  pt->accel = accel_open(ip.card_no, ip.card_type, ip.mode,
   &err_code, 0, 0x0000000000000000ull);
  if (
# 895 "genwqe_memcopy.c" 3 4
     ((void *)0) 
# 895 "genwqe_memcopy.c"
          == pt->accel) {
   do { fprintf(
# 896 "genwqe_memcopy.c" 3 4
  stderr
# 896 "genwqe_memcopy.c"
  , "%s:%u: Error: " "Failed to open card %u type %u (%d/%s)\n",

                                       "genwqe_memcopy.c"
# 896 "genwqe_memcopy.c"
   ,

                                       898
# 896 "genwqe_memcopy.c"
   , ip.card_no, ip.card_type, err_code, accel_strerror(pt->accel, err_code)); } while (0)

                                        ;
   pt->err = 84;
   continue;
  }

  pt->err = __memcpy_alloc_ibuf(&ip, pt);
 }
 pt = &tdata[0];
 for (thread = 0; thread < ip.threads; thread++, pt++) {
  if (0 == pt->err) {
   if (0 == pthread_create(&tid, 
# 908 "genwqe_memcopy.c" 3 4
                                ((void *)0)
# 908 "genwqe_memcopy.c"
                                    ,
      &__memcpy_thread, pt)) {
    pt->tid = tid;
    ip.have_threads++;
   }
  }
 }

 pt = &tdata[0];
 for (thread = 0; thread < ip.threads; thread++) {
  if (0 == pt->tid) {
   errors++;
   do { fprintf(
# 920 "genwqe_memcopy.c" 3 4
  stderr
# 920 "genwqe_memcopy.c"
  , "Thread: %d, tid: 0 err: %d\n", thread, pt->err); } while (0)
                     ;
   continue;
  }
  pthread_join(pt->tid, 
# 924 "genwqe_memcopy.c" 3 4
                       ((void *)0)
# 924 "genwqe_memcopy.c"
                           );
  ip.have_threads--;
  if (pt->err) {
   errors++;
   do { fprintf(
# 928 "genwqe_memcopy.c" 3 4
  stderr
# 928 "genwqe_memcopy.c"
  , "Thread: %d, err: %d\n", thread, pt->err); } while (0);
  } else {
   if (
# 930 "genwqe_memcopy.c" 3 4
      0 
# 930 "genwqe_memcopy.c"
            == ip.quiet) {
    kib = (int)(pt->bytes_copied / 1024);
    mib = kib / 1024;
    do { if (verbose_flag > 0) fprintf(
# 933 "genwqe_memcopy.c" 3 4
   stderr
# 933 "genwqe_memcopy.c"
   , "Thread: %d, memcopies: %d, done, " "%lld bytes, %lld usec, ", thread, pt->memcopies, (long long)pt->bytes_copied, (long long)pt->total_usec); } while (0)



                                ;


    if (pt->total_usec < 100000) {
     kibs = ((pt->bytes_copied * 1000000) /
      1024) / pt->total_usec;
     do { if (verbose_flag > 0) fprintf(
# 943 "genwqe_memcopy.c" 3 4
    stderr
# 943 "genwqe_memcopy.c"
    , "%d KiB, in %lld usec, " "%ld KiB/sec", kib, (long long)pt->total_usec, kibs); } while (0)


            ;
    } else {
     total_msec = pt->total_usec / 1000;

     mibs = (pt->bytes_copied * 1000) /
      (1024 * 1024) / total_msec;
     do { if (verbose_flag > 0) fprintf(
# 952 "genwqe_memcopy.c" 3 4
    stderr
# 952 "genwqe_memcopy.c"
    , "%d MiB, in %lld msec, " "%ld MiB/sec", mib, (long long)total_msec, mibs); } while (0)

                                   ;
    }
    do { if (verbose_flag > 0) fprintf(
# 956 "genwqe_memcopy.c" 3 4
   stderr
# 956 "genwqe_memcopy.c"
   , " %d errors.\n", pt->errors); } while (0);
   }
  }
  bytes_copied += pt->bytes_copied;
  memcopies += pt->memcopies;
  errors += pt->errors;
  __memcpy_free_ibuf(&ip, pt);

  if (thread == ip.threads - 1) {
   wtime_e = accel_get_queue_work_time(pt->accel);
   frequency = accel_get_frequency(pt->accel);
   wtime_usec = frequency ? wtime_e /
    (frequency/1000000) : 0;
  }

  accel_close(pt->accel);

  do { if (verbose_flag > 0) fprintf(
# 973 "genwqe_memcopy.c" 3 4
 stderr
# 973 "genwqe_memcopy.c"
 , "Thread %02d Start: %08lld - %08lld " "End: %08lld - %08lld\n", thread, (long long)pt->stime.tv_sec, (long long)pt->stime.tv_nsec, (long long)pt->etime.tv_sec, (long long)pt->etime.tv_nsec); } while (0)




                                 ;

  time_low(&ip.stime, &pt->stime);

  time_high(&ip.etime, &pt->etime);

  pt->accel = 
# 984 "genwqe_memcopy.c" 3 4
             ((void *)0)
# 984 "genwqe_memcopy.c"
                 ;
  pt++;
 }

 if (
# 988 "genwqe_memcopy.c" 3 4
    0 
# 988 "genwqe_memcopy.c"
          == ip.quiet) {
  kib = (int)(bytes_copied / 1024);
  mib = kib / 1024;
  do { fprintf(
# 991 "genwqe_memcopy.c" 3 4
 stderr
# 991 "genwqe_memcopy.c"
 , "--- MEMCOPY statistics ---\n" "%d memcopies done, %lld bytes, ", memcopies, bytes_copied); } while (0)

                            ;

  total_usec = tdiff_us(&ip.etime, &ip.stime);

  if (total_usec) {
   if (total_usec < 100000) {
    kibs = ((bytes_copied * 1000000) / 1024) /
     total_usec;
    do { fprintf(
# 1001 "genwqe_memcopy.c" 3 4
   stderr
# 1001 "genwqe_memcopy.c"
   , "%d KiB, in %lld/%lld usec, " "%ld KiB/sec,", kib, (long long)total_usec, wtime_usec, kibs); } while (0)


                       ;
   } else {
    total_msec = total_usec / 1000;
    mibs = (bytes_copied * 1000) /
     (1024 * 1024) / total_msec;
    do { fprintf(
# 1009 "genwqe_memcopy.c" 3 4
   stderr
# 1009 "genwqe_memcopy.c"
   , "%d MiB, in %lld/%lld msec, " "%ld MiB/sec,", mib, (long long)total_msec, wtime_usec/1000, mibs); } while (0)


                            ;
   }
  }
  do { fprintf(
# 1015 "genwqe_memcopy.c" 3 4
 stderr
# 1015 "genwqe_memcopy.c"
 , " %d errors.\n", errors); } while (0);
 }

 free(tdata);
 if (errors != 0)
  exit(81);

 exit(
# 1022 "genwqe_memcopy.c" 3 4
     0
# 1022 "genwqe_memcopy.c"
                 );
}
