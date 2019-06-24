# 1 "genwqe_gzip.c"
# 1 "/home/lichi/lichi/errSpecProjects/genwqe-user/tools//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "genwqe_gzip.c"
# 29 "genwqe_gzip.c"
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

# 30 "genwqe_gzip.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







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
# 31 "genwqe_gzip.c" 2
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
# 160 "/usr/include/string.h" 2 3 4


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

# 32 "genwqe_gzip.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 66 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 33 "genwqe_gzip.c" 2
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

# 239 "/usr/include/stdlib.h" 3 4
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
# 200 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
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

# 34 "genwqe_gzip.c" 2
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
# 35 "genwqe_gzip.c" 2
# 1 "/usr/include/libgen.h" 1 3 4
# 23 "/usr/include/libgen.h" 3 4



extern char *dirname (char *__path) __attribute__ ((__nothrow__ , __leaf__));







extern char *__xpg_basename (char *__path) __attribute__ ((__nothrow__ , __leaf__));



# 36 "genwqe_gzip.c" 2
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
# 37 "genwqe_gzip.c" 2
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
# 38 "genwqe_gzip.c" 2


# 1 "/usr/include/x86_64-linux-gnu/sys/stat.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/x86_64-linux-gnu/sys/stat.h" 2 3 4
# 102 "/usr/include/x86_64-linux-gnu/sys/stat.h" 3 4


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

# 41 "genwqe_gzip.c" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/time.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/sys/time.h" 2 3 4

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

# 42 "genwqe_gzip.c" 2
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
# 882 "/usr/include/unistd.h" 3 4
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

# 43 "genwqe_gzip.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h" 1 3 4
# 44 "genwqe_gzip.c" 2
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

# 45 "genwqe_gzip.c" 2
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



# 46 "genwqe_gzip.c" 2
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
# 47 "genwqe_gzip.c" 2

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



# 49 "genwqe_gzip.c" 2

# 1 "/usr/local/include/zlib.h" 1 3
# 34 "/usr/local/include/zlib.h" 3
# 1 "/usr/local/include/zconf.h" 1 3
# 247 "/usr/local/include/zconf.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 426 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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
# 51 "genwqe_gzip.c" 2
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
# 52 "genwqe_gzip.c" 2
# 72 "genwqe_gzip.c"
static const char *version = "4.0.20-5-g2944";
# 100 "genwqe_gzip.c"
static int verbose = 0;


static unsigned int CHUNK_i = 128 * 1024;
static unsigned int CHUNK_o = 128 * 1024;





static int pin_to_cpu(int run_cpu)
{
 cpu_set_t *cpusetp;
 size_t size;
 int num_cpus;

 num_cpus = 
# 116 "genwqe_gzip.c" 3 4
           1024
# 116 "genwqe_gzip.c"
                      ;
 cpusetp = 
# 117 "genwqe_gzip.c" 3 4
          __sched_cpualloc (
# 117 "genwqe_gzip.c"
          num_cpus
# 117 "genwqe_gzip.c" 3 4
          )
# 117 "genwqe_gzip.c"
                             ;
 if (cpusetp == 
# 118 "genwqe_gzip.c" 3 4
               ((void *)0)
# 118 "genwqe_gzip.c"
                   )
  return sched_getcpu();

 size = 
# 121 "genwqe_gzip.c" 3 4
       ((((
# 121 "genwqe_gzip.c"
       num_cpus
# 121 "genwqe_gzip.c" 3 4
       ) + (8 * sizeof (__cpu_mask)) - 1) / (8 * sizeof (__cpu_mask))) * sizeof (__cpu_mask))
# 121 "genwqe_gzip.c"
                               ;

 
# 123 "genwqe_gzip.c" 3 4
do __builtin_memset (
# 123 "genwqe_gzip.c"
cpusetp
# 123 "genwqe_gzip.c" 3 4
, '\0', 
# 123 "genwqe_gzip.c"
size
# 123 "genwqe_gzip.c" 3 4
); while (0)
# 123 "genwqe_gzip.c"
                         ;
 
# 124 "genwqe_gzip.c" 3 4
(__extension__ ({ size_t __cpu = (
# 124 "genwqe_gzip.c"
run_cpu
# 124 "genwqe_gzip.c" 3 4
); __cpu / 8 < (
# 124 "genwqe_gzip.c"
size
# 124 "genwqe_gzip.c" 3 4
) ? (((__cpu_mask *) ((
# 124 "genwqe_gzip.c"
cpusetp
# 124 "genwqe_gzip.c" 3 4
)->__bits))[((__cpu) / (8 * sizeof (__cpu_mask)))] |= ((__cpu_mask) 1 << ((__cpu) % (8 * sizeof (__cpu_mask))))) : 0; }))
# 124 "genwqe_gzip.c"
                                 ;
 if (sched_setaffinity(0, size, cpusetp) < 0) {
  
# 126 "genwqe_gzip.c" 3 4
 __sched_cpufree (
# 126 "genwqe_gzip.c"
 cpusetp
# 126 "genwqe_gzip.c" 3 4
 )
# 126 "genwqe_gzip.c"
                  ;
  return sched_getcpu();
 }


 
# 131 "genwqe_gzip.c" 3 4
__sched_cpufree (
# 131 "genwqe_gzip.c"
cpusetp
# 131 "genwqe_gzip.c" 3 4
)
# 131 "genwqe_gzip.c"
                 ;
 return run_cpu;
}
# 142 "genwqe_gzip.c"
static int def(FILE *source, FILE *dest, z_stream *strm,
        unsigned char *in, unsigned char *out)
{
 int ret, flush;
 unsigned have;


 do {
  strm->avail_in = fread(in, 1, CHUNK_i, source);
  if (ferror(source)) {
   return 
# 152 "genwqe_gzip.c" 3
         (-1)
# 152 "genwqe_gzip.c"
                ;
  }
  flush = feof(source) ? 
# 154 "genwqe_gzip.c" 3
                        4 
# 154 "genwqe_gzip.c"
                                 : 
# 154 "genwqe_gzip.c" 3
                                   0
# 154 "genwqe_gzip.c"
                                             ;
  strm->next_in = in;



  do {
   if (verbose)
    fprintf(
# 161 "genwqe_gzip.c" 3 4
           stderr
# 161 "genwqe_gzip.c"
                 , "CHUNK_o=%d\n", CHUNK_o);

   strm->avail_out = CHUNK_o;
   strm->next_out = out;
   ret = deflate(strm, flush);
   
# 166 "genwqe_gzip.c" 3 4
  ((
# 166 "genwqe_gzip.c"
  ret != 
# 166 "genwqe_gzip.c" 3
  (-2)) ? (void) (0) : __assert_fail (
# 166 "genwqe_gzip.c"
  "ret != Z_STREAM_ERROR"
# 166 "genwqe_gzip.c" 3 4
  , "genwqe_gzip.c", 166, __PRETTY_FUNCTION__))
# 166 "genwqe_gzip.c"
                               ;
   have = CHUNK_o - strm->avail_out;
   if (fwrite(out, 1, have, dest) != have ||
    ferror(dest)) {
    return 
# 170 "genwqe_gzip.c" 3
          (-1)
# 170 "genwqe_gzip.c"
                 ;
   }
  } while (strm->avail_out == 0);
  
# 173 "genwqe_gzip.c" 3 4
 ((
# 173 "genwqe_gzip.c"
 strm->avail_in == 0
# 173 "genwqe_gzip.c" 3 4
 ) ? (void) (0) : __assert_fail (
# 173 "genwqe_gzip.c"
 "strm->avail_in == 0"
# 173 "genwqe_gzip.c" 3 4
 , "genwqe_gzip.c", 173, __PRETTY_FUNCTION__))
# 173 "genwqe_gzip.c"
                            ;


 } while (flush != 
# 176 "genwqe_gzip.c" 3
                  4
# 176 "genwqe_gzip.c"
                          );
 
# 177 "genwqe_gzip.c" 3 4
((
# 177 "genwqe_gzip.c"
ret == 
# 177 "genwqe_gzip.c" 3
1) ? (void) (0) : __assert_fail (
# 177 "genwqe_gzip.c"
"ret == Z_STREAM_END"
# 177 "genwqe_gzip.c" 3 4
, "genwqe_gzip.c", 177, __PRETTY_FUNCTION__))
# 177 "genwqe_gzip.c"
                           ;

 return 
# 179 "genwqe_gzip.c" 3
       0
# 179 "genwqe_gzip.c"
           ;
}







static int inf(FILE *source, FILE *dest, z_stream *strm,
        unsigned char *in, unsigned char *out)
{
 int ret = 
# 191 "genwqe_gzip.c" 3
          0
# 191 "genwqe_gzip.c"
              ;
 int rc;
 long start_offs;
 long read_offs = 0;
 long have;

 strm->avail_in = 0;
 strm->next_in = 
# 198 "genwqe_gzip.c" 3
                0
# 198 "genwqe_gzip.c"
                      ;

 start_offs = ftell(source);
 read_offs = 0;


 do {
  strm->avail_in = fread(in, 1, CHUNK_i, source);
  if (ferror(source)) {
   fprintf(
# 207 "genwqe_gzip.c" 3 4
          stderr
# 207 "genwqe_gzip.c"
                , "fread error\n");
   return 
# 208 "genwqe_gzip.c" 3
         (-1)
# 208 "genwqe_gzip.c"
                ;
  }
  if (0 == strm->avail_in)
   break;
  strm->next_in = in;
__more_inf:

  do {
   strm->avail_out = CHUNK_o;
   strm->next_out = out;
   ret = inflate(strm, 
# 218 "genwqe_gzip.c" 3
                      0 
# 218 "genwqe_gzip.c"
                                                   );
   
# 219 "genwqe_gzip.c" 3 4
  ((
# 219 "genwqe_gzip.c"
  ret != 
# 219 "genwqe_gzip.c" 3
  (-2)) ? (void) (0) : __assert_fail (
# 219 "genwqe_gzip.c"
  "ret != Z_STREAM_ERROR"
# 219 "genwqe_gzip.c" 3 4
  , "genwqe_gzip.c", 219, __PRETTY_FUNCTION__))
# 219 "genwqe_gzip.c"
                               ;

   switch (ret) {
   case 
# 222 "genwqe_gzip.c" 3
       0
# 222 "genwqe_gzip.c"
           :

    break;
   case 
# 225 "genwqe_gzip.c" 3
       1
# 225 "genwqe_gzip.c"
                   :
    read_offs += strm->total_in;
    break;
   case 
# 228 "genwqe_gzip.c" 3
       2
# 228 "genwqe_gzip.c"
                  :
    fprintf(
# 229 "genwqe_gzip.c" 3 4
           stderr
# 229 "genwqe_gzip.c"
                 , "NEED Dict........\n");
    return 
# 230 "genwqe_gzip.c" 3
          (-3)
# 230 "genwqe_gzip.c"
                      ;
   case 
# 231 "genwqe_gzip.c" 3
       (-3)
# 231 "genwqe_gzip.c"
                   :
   case 
# 232 "genwqe_gzip.c" 3
       (-4)
# 232 "genwqe_gzip.c"
                  :
    fprintf(
# 233 "genwqe_gzip.c" 3 4
           stderr
# 233 "genwqe_gzip.c"
                 , "Fault..... %d\n", ret);
    return ret;
   }
   have = CHUNK_o - strm->avail_out;
   if (fwrite(out, 1, have, dest) != (size_t)have ||
    ferror(dest)) {
    fprintf(
# 239 "genwqe_gzip.c" 3 4
           stderr
# 239 "genwqe_gzip.c"
                 , "fwrite fault\n");
    return 
# 240 "genwqe_gzip.c" 3
          (-1)
# 240 "genwqe_gzip.c"
                 ;
   }
  } while (strm->avail_out == 0);

 } while (ret != 
# 244 "genwqe_gzip.c" 3
                1
# 244 "genwqe_gzip.c"
                            );


 if (strm->avail_in > (16 * 1024)) {
  inflateReset(strm);
  goto __more_inf;
 }


 start_offs += read_offs;
 rc = fseek(source, start_offs, 
# 254 "genwqe_gzip.c" 3 4
                               0
# 254 "genwqe_gzip.c"
                                       );
 if (rc == -1)
  fprintf(
# 256 "genwqe_gzip.c" 3 4
         stderr
# 256 "genwqe_gzip.c"
               , "err: fseek rc=%d\n", rc);

 inflateReset(strm);
 return ret;
}


static void zerr(int ret)
{
 switch (ret) {
 case 
# 266 "genwqe_gzip.c" 3
     (-1)
# 266 "genwqe_gzip.c"
            :
  if (ferror(
# 267 "genwqe_gzip.c" 3 4
            stdin
# 267 "genwqe_gzip.c"
                 ))
   do { fprintf(
# 268 "genwqe_gzip.c" 3 4
  stderr
# 268 "genwqe_gzip.c"
  , "gzip: " "error reading stdin\n"); } while (0);
  if (ferror(
# 269 "genwqe_gzip.c" 3 4
            stdout
# 269 "genwqe_gzip.c"
                  ))
   do { fprintf(
# 270 "genwqe_gzip.c" 3 4
  stderr
# 270 "genwqe_gzip.c"
  , "gzip: " "error writing stdout\n"); } while (0);
  break;
 case 
# 272 "genwqe_gzip.c" 3
     (-2)
# 272 "genwqe_gzip.c"
                   :
  do { fprintf(
# 273 "genwqe_gzip.c" 3 4
 stderr
# 273 "genwqe_gzip.c"
 , "gzip: " "invalid compression level\n"); } while (0);
  break;
 case 
# 275 "genwqe_gzip.c" 3
     (-3)
# 275 "genwqe_gzip.c"
                 :
  do { fprintf(
# 276 "genwqe_gzip.c" 3 4
 stderr
# 276 "genwqe_gzip.c"
 , "gzip: " "invalid or incomplete deflate data\n"); } while (0);
  break;
 case 
# 278 "genwqe_gzip.c" 3
     (-4)
# 278 "genwqe_gzip.c"
                :
  do { fprintf(
# 279 "genwqe_gzip.c" 3 4
 stderr
# 279 "genwqe_gzip.c"
 , "gzip: " "out of memory\n"); } while (0);
  break;
 case 
# 281 "genwqe_gzip.c" 3
     (-6)
# 281 "genwqe_gzip.c"
                    :
  do { fprintf(
# 282 "genwqe_gzip.c" 3 4
 stderr
# 282 "genwqe_gzip.c"
 , "gzip: " "zlib version mismatch!\n"); } while (0);
  break;
 }
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

 return num;
}

static void userinfo(FILE *fp, char *prog, const char *version)
{
 fprintf(fp, "%s %s\n(c) Copyright IBM Corp. 2015, 2017\n",
  
# 314 "genwqe_gzip.c" 3 4
 __xpg_basename
# 314 "genwqe_gzip.c"
         (prog), version);
}

static void print_args(FILE *fp, int argc, char **argv)
{
 int i;

 fprintf(fp, "Called with:\n");
 for (i = 0; i < argc; i++)
  fprintf(fp, "  ARGV[%d]: \"%s\"\n", i, argv[i]);
 fprintf(fp, "\n");
}

static void print_version(FILE *fp)
{
 fprintf(fp, "Code: zlibVersion()=%s Header: ZLIB_VERSION=%s %s\n\n",
  zlibVersion(), 
# 330 "genwqe_gzip.c" 3
                "1.2.11"
# 330 "genwqe_gzip.c"
                            ,
  strcmp(zlibVersion(), 
# 331 "genwqe_gzip.c" 3
                       "1.2.11"
# 331 "genwqe_gzip.c"
                                   ) == 0 ?
  "consistent" : "inconsistent");
}

static void usage(FILE *fp, char *prog, int argc, char *argv[])
{
 fprintf(fp, "Usage: %s [OPTION]... [FILE]...\n"
  "Compress or uncompress FILEs (by default, compress FILES in-place).\n"
  "\n"
  "Mandatory arguments to long options are mandatory for short options too.\n"
  "\n"
  "  -c, --stdout      write on standard output, keep original files unchanged\n"
  "  -d, --decompress  decompress\n"
  "  -f, --force       force overwrite of output file and compress links\n"
  "  -h, --help        give this help\n"
  "  -l, --list        list compressed file contents\n"
  "  -L, --license     display software license\n"
  "  -N, --name        save or restore the original name and time stamp\n"
  "  -q, --quiet       suppress all warnings\n"
  "  -S, --suffix=SUF  use suffix SUF on compressed files\n"
  "  -v, --verbose     verbose mode\n"
  "  -V, --version     display version number\n"
  "  -1, --fast        compress faster\n"
  "  -9, --best        compress better\n"
  "\n"
  "Special options for testing and debugging:\n"
  "  -A, --accelerator-type=GENWQE|CAPI CAPI is only available for System p\n"
  "  -B, --card=<card_no> -1 is for automatic card selection\n"
  "  -X, --cpu <cpu>   force to run on CPU <cpu>\n"
  "  -s, --software    force to use software compression/decompression\n"
  "  -i, --i_bufsize   input buffer size (%d KiB)\n"
  "  -o, --o_bufsize   output buffer size (%d KiB)\n"
  "  -N, --name=NAME   write NAME into gzip header\n"
  "  -C, --comment=CM  write CM into gzip header\n"
  "  -E, --extra=EXTRA write EXTRA (file) into gzip header\n"
  "\n"
  "With no FILE, or when FILE is -, read standard input.\n"
  "\n"
  "NOTE: Not all options are supported in this limited version!\n"
  "Suggestions or patches are welcome!\n"
  "\n"
  "Report bugs via https://github.com/ibm-genwqe/genwqe-user.\n"
  "\n", prog, CHUNK_i/1024, CHUNK_o/1024);

 print_version(fp);
 print_args(fp, argc, argv);
}

static inline void hexdump(FILE *fp, const void *buff, unsigned int size)
{
 unsigned int i, j = 0;
 const uint8_t *b = (uint8_t *)buff;
 char ascii[17];

 if (size == 0)
  return;

 for (i = 0; i < size; i++) {
  if ((i & 0x0f) == 0x00) {
   fprintf(fp, " %08x:", i);
   memset(ascii, '\0', sizeof(ascii));
   j = 0;
  }
  fprintf(fp, " %02x", b[i]);
  ascii[j++] = 
# 395 "genwqe_gzip.c" 3 4
              ((*__ctype_b_loc ())[(int) ((
# 395 "genwqe_gzip.c"
              b[i]
# 395 "genwqe_gzip.c" 3 4
              ))] & (unsigned short int) _ISalnum) 
# 395 "genwqe_gzip.c"
                            ? b[i] : '.';

  if ((i & 0x0f) == 0x0f)
   fprintf(fp, " | %s\n", ascii);
 }


 for (; i < ((size + 0xf) & ~0xf); i++) {
  fprintf(fp, "   ");
  ascii[j++] = ' ';

  if ((i & 0x0f) == 0x0f)
   fprintf(fp, " | %s\n", ascii);
 }

 fprintf(fp, "\n");
}

static void do_print_gzip_hdr(gz_headerp head, FILE *fp)
{
 fprintf(fp, "GZIP Header\n"
  " Text:        %01X\n", head->text);
 fprintf(fp, " Time:        %s", ctime((time_t*) &head->time));
 fprintf(fp, " xflags:      %08X\n", head->xflags);
 fprintf(fp, " OS:          %01X (0x03 Linux per RFC1952)\n", head->os);
 fprintf(fp, " Extra Len:   %d\n", head->extra_len);
 fprintf(fp, " Extra Max:   %d\n", head->extra_max);
 hexdump(fp, head->extra, head->extra_len);
 fprintf(fp, " Name:        %s\n",
  head->name ? (char *)head->name : "");
 fprintf(fp, " Name Max:    %d\n", head->name_max);
 fprintf(fp, " Comment:     %s\n",
  head->comment ? (char *)head->comment : "");
 fprintf(fp, " Comment Max: %d\n", head->comm_max);
 fprintf(fp, " Header CRC : %X\n", head->hcrc);
 fprintf(fp, " Done:        %01X\n", head->done);
}

static inline
ssize_t file_size(const char *fname)
{
 int rc;
 struct stat s;

 rc = lstat(fname, &s);
 if (rc != 0) {
  fprintf(
# 441 "genwqe_gzip.c" 3 4
         stderr
# 441 "genwqe_gzip.c"
               , "err: Cannot find %s!\n", fname);
  return rc;
 }

 return s.st_size;
}

static inline ssize_t
file_read(const char *fname, uint8_t *buff, size_t len)
{
 int rc;
 FILE *fp;

 if ((fname == 
# 454 "genwqe_gzip.c" 3 4
              ((void *)0)
# 454 "genwqe_gzip.c"
                  ) || (buff == 
# 454 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 454 "genwqe_gzip.c"
                                    ) || (len == 0))
  return -
# 455 "genwqe_gzip.c" 3 4
         22
# 455 "genwqe_gzip.c"
               ;

 fp = fopen(fname, "r");
 if (!fp) {
  fprintf(
# 459 "genwqe_gzip.c" 3 4
         stderr
# 459 "genwqe_gzip.c"
               , "err: Cannot open file %s: %s\n",
   fname, strerror(
# 460 "genwqe_gzip.c" 3 4
                  (*__errno_location ())
# 460 "genwqe_gzip.c"
                       ));
  return -
# 461 "genwqe_gzip.c" 3 4
         19
# 461 "genwqe_gzip.c"
               ;
 }
 rc = fread(buff, len, 1, fp);
 if (rc == -1) {
  fprintf(
# 465 "genwqe_gzip.c" 3 4
         stderr
# 465 "genwqe_gzip.c"
               , "err: Cannot read from %s: %s\n",
   fname, strerror(
# 466 "genwqe_gzip.c" 3 4
                  (*__errno_location ())
# 466 "genwqe_gzip.c"
                       ));
  fclose(fp);
  return -
# 468 "genwqe_gzip.c" 3 4
         5
# 468 "genwqe_gzip.c"
            ;
 }

 fclose(fp);
 return rc;
}

static inline ssize_t
file_write(const char *fname, const uint8_t *buff, size_t len)
{
 int rc;
 FILE *fp;

 if ((fname == 
# 481 "genwqe_gzip.c" 3 4
              ((void *)0)
# 481 "genwqe_gzip.c"
                  ) || (buff == 
# 481 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 481 "genwqe_gzip.c"
                                    ) || (len == 0))
  return -
# 482 "genwqe_gzip.c" 3 4
         22
# 482 "genwqe_gzip.c"
               ;

 fp = fopen(fname, "w+");
 if (!fp) {
  fprintf(
# 486 "genwqe_gzip.c" 3 4
         stderr
# 486 "genwqe_gzip.c"
               , "err: Cannot open file %s: %s\n",
   fname, strerror(
# 487 "genwqe_gzip.c" 3 4
                  (*__errno_location ())
# 487 "genwqe_gzip.c"
                       ));
  return -
# 488 "genwqe_gzip.c" 3 4
         19
# 488 "genwqe_gzip.c"
               ;
 }
 rc = fwrite(buff, len, 1, fp);
 if (rc == -1) {
  fprintf(
# 492 "genwqe_gzip.c" 3 4
         stderr
# 492 "genwqe_gzip.c"
               , "err: Cannot write to %s: %s\n",
   fname, strerror(
# 493 "genwqe_gzip.c" 3 4
                  (*__errno_location ())
# 493 "genwqe_gzip.c"
                       ));
  fclose(fp);
  return -
# 495 "genwqe_gzip.c" 3 4
         5
# 495 "genwqe_gzip.c"
            ;
 }

 fclose(fp);
 return rc;
}




static int do_list_contents(FILE *fp, char *out_f, int list_contents)
{
 int rc;
 struct stat st;
 uint32_t d, crc32, size, compressed_size;
 float ratio = 0.0;
 z_stream strm;
 uint8_t in[4096];
 uint8_t out[4096];
 gz_header head;
 uint8_t extra[64 * 1024];
 uint8_t comment[1024];
 uint8_t name[1024];
 int window_bits = 31;
 const char *mon[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun",
         "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

 rc = fstat(fileno(fp), &st);
 if (rc != 0)
  return rc;

 memset(&strm, 0, sizeof(strm));
 strm.avail_in = 0;
 strm.next_in = 
# 528 "genwqe_gzip.c" 3
               0
# 528 "genwqe_gzip.c"
                     ;
 rc = 
# 529 "genwqe_gzip.c" 3
     inflateInit2_((
# 529 "genwqe_gzip.c"
     &strm
# 529 "genwqe_gzip.c" 3
     ), (
# 529 "genwqe_gzip.c"
     window_bits
# 529 "genwqe_gzip.c" 3
     ), "1.2.11", (int)sizeof(z_stream))
# 529 "genwqe_gzip.c"
                                     ;
 if (
# 530 "genwqe_gzip.c" 3
    0 
# 530 "genwqe_gzip.c"
         != rc)
  return rc;

 strm.next_out = out;
 strm.avail_out = sizeof(out);
 strm.next_in = in;
 strm.avail_in = fread(in, 1, sizeof(in), fp);
 if (ferror(fp))
  return 
# 538 "genwqe_gzip.c" 3
        (-1)
# 538 "genwqe_gzip.c"
               ;

 head.extra = extra;
 head.extra_len = 0;
 head.extra_max = sizeof(extra);

 head.comment = comment;
 head.comm_max = sizeof(comment);

 head.name = name;
 head.name_max = sizeof(name);

 rc = inflateGetHeader(&strm, &head);
 if (
# 551 "genwqe_gzip.c" 3
    0 
# 551 "genwqe_gzip.c"
         != rc) {
  fprintf(
# 552 "genwqe_gzip.c" 3 4
         stderr
# 552 "genwqe_gzip.c"
               , "err: Cannot read gz header! rc=%d\n", rc);
  return rc;
 }

 rc = inflate(&strm, 
# 556 "genwqe_gzip.c" 3
                    5
# 556 "genwqe_gzip.c"
                           );
 if (
# 557 "genwqe_gzip.c" 3
    0 
# 557 "genwqe_gzip.c"
         != rc) {
  fprintf(
# 558 "genwqe_gzip.c" 3 4
         stderr
# 558 "genwqe_gzip.c"
               , "err: inflate(Z_BLOCK) failed rc=%d\n", rc);
  return rc;
 }

 if (head.done == 0) {
  fprintf(
# 563 "genwqe_gzip.c" 3 4
         stderr
# 563 "genwqe_gzip.c"
               , "err: gzip header not entirely decoded! "
   "total_in=%ld total_out=%ld head.done=%d\n",
   strm.total_in, strm.total_out, head.done);
  return 
# 566 "genwqe_gzip.c" 3
        (-3)
# 566 "genwqe_gzip.c"
                    ;
 }

 rc = fseek(fp, st.st_size - 2 * sizeof(uint32_t), 
# 569 "genwqe_gzip.c" 3 4
                                                  0
# 569 "genwqe_gzip.c"
                                                          );
 if (rc != 0)
  return rc;

 rc = fread(&d, sizeof(d), 1, fp);
 if (rc != 1)
  return -1;
 crc32 = 
# 576 "genwqe_gzip.c" 3 4
        ((__u32)(__le32)(
# 576 "genwqe_gzip.c"
        d
# 576 "genwqe_gzip.c" 3 4
        ))
# 576 "genwqe_gzip.c"
                        ;

 rc = fread(&d, sizeof(d), 1, fp);
 if (rc != 1)
  return -1;
 size = 
# 581 "genwqe_gzip.c" 3 4
       ((__u32)(__le32)(
# 581 "genwqe_gzip.c"
       d
# 581 "genwqe_gzip.c" 3 4
       ))
# 581 "genwqe_gzip.c"
                       ;



 compressed_size = st.st_size - strm.total_in - 8;
 if (size)
  ratio = 100 - (float)compressed_size * 100 / size;

 if (!verbose) {
  fprintf(
# 590 "genwqe_gzip.c" 3 4
         stderr
# 590 "genwqe_gzip.c"
               ,
   "         compressed        uncompressed  ratio "
   "uncompressed_name\n"
   "%19lld %19lld  %2.2f%% %s\n",
   (long long)st.st_size, (long long)size, ratio,
   out_f);
 } else {
  time_t t = time(
# 597 "genwqe_gzip.c" 3 4
                 ((void *)0)
# 597 "genwqe_gzip.c"
                     );
  struct tm *tm = localtime(&t);


  fprintf(
# 601 "genwqe_gzip.c" 3 4
         stderr
# 601 "genwqe_gzip.c"
               , "method  crc     date  time           "
   "compressed        uncompressed  ratio "
   "uncompressed_name\n"
   "%s %x %s %2d %d:%d %19lld %19lld  %2.2f%% %s\n",
   "defla", crc32,
   mon[tm->tm_mon], tm->tm_mday, tm->tm_hour, tm->tm_min,
   (long long)st.st_size, (long long)size, ratio,
   out_f);
 }

 if (list_contents > 1)
  do_print_gzip_hdr(&head, 
# 612 "genwqe_gzip.c" 3 4
                          stderr
# 612 "genwqe_gzip.c"
                                );

 return 0;
}

static int strip_ending(char *oname, const char *iname, size_t n,
   const char *suffix)
{
 char *ending;

 snprintf(oname, n, "%s", iname);

 ending = strstr(oname, suffix);
 if (ending == 
# 625 "genwqe_gzip.c" 3 4
              ((void *)0)
# 625 "genwqe_gzip.c"
                  )
  return -1;

 ending--;
 *ending = 0;
 return 0;
}



int main(int argc, char **argv)
{
 int rc = 
# 637 "genwqe_gzip.c" 3
         0
# 637 "genwqe_gzip.c"
             ;
 
# 638 "genwqe_gzip.c" 3 4
_Bool 
# 638 "genwqe_gzip.c"
     compress = 
# 638 "genwqe_gzip.c" 3 4
                1
# 638 "genwqe_gzip.c"
                    ;
 int list_contents = 0;
 
# 640 "genwqe_gzip.c" 3 4
_Bool 
# 640 "genwqe_gzip.c"
     force = 
# 640 "genwqe_gzip.c" 3 4
             0
# 640 "genwqe_gzip.c"
                  ;
 
# 641 "genwqe_gzip.c" 3 4
_Bool 
# 641 "genwqe_gzip.c"
     quiet __attribute__((unused)) = 
# 641 "genwqe_gzip.c" 3 4
                                     0
# 641 "genwqe_gzip.c"
                                          ;
 int window_bits = 31;
 int level = 
# 643 "genwqe_gzip.c" 3
            (-1)
# 643 "genwqe_gzip.c"
                                 ;
 char *prog = 
# 644 "genwqe_gzip.c" 3 4
             __xpg_basename
# 644 "genwqe_gzip.c"
                     (argv[0]);
 const char *in_f = 
# 645 "genwqe_gzip.c" 3 4
                   ((void *)0)
# 645 "genwqe_gzip.c"
                       ;
 char out_f[
# 646 "genwqe_gzip.c" 3 4
           4096
# 646 "genwqe_gzip.c"
                   ];
 FILE *i_fp = 
# 647 "genwqe_gzip.c" 3 4
             stdin
# 647 "genwqe_gzip.c"
                  ;
 FILE *o_fp = 
# 648 "genwqe_gzip.c" 3 4
             ((void *)0)
# 648 "genwqe_gzip.c"
                 ;
 const char *suffix = "gz";
 int force_software = 0;
 int cpu = -1;
 unsigned char *in = 
# 652 "genwqe_gzip.c" 3 4
                    ((void *)0)
# 652 "genwqe_gzip.c"
                        ;
 unsigned char *out = 
# 653 "genwqe_gzip.c" 3 4
                     ((void *)0)
# 653 "genwqe_gzip.c"
                         ;
 z_stream strm;
 const char *name = 
# 655 "genwqe_gzip.c" 3 4
                   ((void *)0)
# 655 "genwqe_gzip.c"
                       ;
 char *comment = 
# 656 "genwqe_gzip.c" 3 4
                ((void *)0)
# 656 "genwqe_gzip.c"
                    ;
 const char *extra_fname = 
# 657 "genwqe_gzip.c" 3 4
                          ((void *)0)
# 657 "genwqe_gzip.c"
                              ;
 uint8_t *extra = 
# 658 "genwqe_gzip.c" 3 4
                 ((void *)0)
# 658 "genwqe_gzip.c"
                     ;
 int extra_len = 0;
 struct stat s;
 const char *accel = "GENWQE";
 const char *accel_env = getenv("ZLIB_ACCELERATOR");
 int card_no = 0;
 const char *card_no_env = getenv("ZLIB_CARD");



 if (accel_env != 
# 668 "genwqe_gzip.c" 3 4
                 ((void *)0)
# 668 "genwqe_gzip.c"
                     )
  accel = accel_env;

 if (card_no_env != 
# 671 "genwqe_gzip.c" 3 4
                   ((void *)0)
# 671 "genwqe_gzip.c"
                       )
  card_no = atoi(card_no_env);


 ;
 ;

 if (strstr(prog, "gunzip") != 0) {
  compress = 
# 679 "genwqe_gzip.c" 3 4
            0
# 679 "genwqe_gzip.c"
                 ;
  CHUNK_o *= 4;
 }

 while (1) {
  int ch;
  int option_index = 0;
  static struct option long_options[] = {
   { "stdout", 
# 687 "genwqe_gzip.c" 3 4
               0
# 687 "genwqe_gzip.c"
                          , 
# 687 "genwqe_gzip.c" 3 4
                                  ((void *)0)
# 687 "genwqe_gzip.c"
                                      , 'c' },
   { "decompress", 
# 688 "genwqe_gzip.c" 3 4
                   0
# 688 "genwqe_gzip.c"
                              , 
# 688 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 688 "genwqe_gzip.c"
                                          , 'd' },
   { "force", 
# 689 "genwqe_gzip.c" 3 4
                   0
# 689 "genwqe_gzip.c"
                              , 
# 689 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 689 "genwqe_gzip.c"
                                          , 'f' },
   { "help", 
# 690 "genwqe_gzip.c" 3 4
             0
# 690 "genwqe_gzip.c"
                        , 
# 690 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 690 "genwqe_gzip.c"
                                    , 'h' },


   { "list", 
# 693 "genwqe_gzip.c" 3 4
             0
# 693 "genwqe_gzip.c"
                        , 
# 693 "genwqe_gzip.c" 3 4
                              ((void *)0)
# 693 "genwqe_gzip.c"
                                  , 'l' },
   { "license", 
# 694 "genwqe_gzip.c" 3 4
                   0
# 694 "genwqe_gzip.c"
                              , 
# 694 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 694 "genwqe_gzip.c"
                                          , 'L' },
   { "suffix", 
# 695 "genwqe_gzip.c" 3 4
                   1
# 695 "genwqe_gzip.c"
                                    , 
# 695 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 695 "genwqe_gzip.c"
                                          , 'S' },
   { "verbose", 
# 696 "genwqe_gzip.c" 3 4
                0
# 696 "genwqe_gzip.c"
                           , 
# 696 "genwqe_gzip.c" 3 4
                                   ((void *)0)
# 696 "genwqe_gzip.c"
                                       , 'v' },
   { "version", 
# 697 "genwqe_gzip.c" 3 4
                0
# 697 "genwqe_gzip.c"
                           , 
# 697 "genwqe_gzip.c" 3 4
                                   ((void *)0)
# 697 "genwqe_gzip.c"
                                       , 'V' },
   { "fast", 
# 698 "genwqe_gzip.c" 3 4
             0
# 698 "genwqe_gzip.c"
                        , 
# 698 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 698 "genwqe_gzip.c"
                                    , '1' },
   { "best", 
# 699 "genwqe_gzip.c" 3 4
             0
# 699 "genwqe_gzip.c"
                        , 
# 699 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 699 "genwqe_gzip.c"
                                    , '9' },


   { "cpu", 
# 702 "genwqe_gzip.c" 3 4
            1
# 702 "genwqe_gzip.c"
                             , 
# 702 "genwqe_gzip.c" 3 4
                               ((void *)0)
# 702 "genwqe_gzip.c"
                                   , 'X' },
   { "accelerator-type", 
# 703 "genwqe_gzip.c" 3 4
                        1
# 703 "genwqe_gzip.c"
                                         , 
# 703 "genwqe_gzip.c" 3 4
                                           ((void *)0)
# 703 "genwqe_gzip.c"
                                               , 'A' },
   { "card_no", 
# 704 "genwqe_gzip.c" 3 4
                1
# 704 "genwqe_gzip.c"
                                 , 
# 704 "genwqe_gzip.c" 3 4
                                   ((void *)0)
# 704 "genwqe_gzip.c"
                                       , 'B' },
   { "software", 
# 705 "genwqe_gzip.c" 3 4
                 0
# 705 "genwqe_gzip.c"
                            , 
# 705 "genwqe_gzip.c" 3 4
                                  ((void *)0)
# 705 "genwqe_gzip.c"
                                      , 's' },
   { "extra", 
# 706 "genwqe_gzip.c" 3 4
              1
# 706 "genwqe_gzip.c"
                               , 
# 706 "genwqe_gzip.c" 3 4
                                 ((void *)0)
# 706 "genwqe_gzip.c"
                                     , 'E' },
   { "name", 
# 707 "genwqe_gzip.c" 3 4
             1
# 707 "genwqe_gzip.c"
                              , 
# 707 "genwqe_gzip.c" 3 4
                                ((void *)0)
# 707 "genwqe_gzip.c"
                                    , 'N' },
   { "comment", 
# 708 "genwqe_gzip.c" 3 4
                1
# 708 "genwqe_gzip.c"
                                 , 
# 708 "genwqe_gzip.c" 3 4
                                   ((void *)0)
# 708 "genwqe_gzip.c"
                                       , 'C' },
   { "i_bufsize", 
# 709 "genwqe_gzip.c" 3 4
                   1
# 709 "genwqe_gzip.c"
                                    , 
# 709 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 709 "genwqe_gzip.c"
                                          , 'i' },
   { "o_bufsize", 
# 710 "genwqe_gzip.c" 3 4
                   1
# 710 "genwqe_gzip.c"
                                    , 
# 710 "genwqe_gzip.c" 3 4
                                      ((void *)0)
# 710 "genwqe_gzip.c"
                                          , 'o' },
   { 0, 
# 711 "genwqe_gzip.c" 3 4
         0
# 711 "genwqe_gzip.c"
                    , 
# 711 "genwqe_gzip.c" 3 4
                            ((void *)0)
# 711 "genwqe_gzip.c"
                                , 0 },
  };

  ch = getopt_long(argc, argv,
     "E:N:C:cdfqhlLsS:vV123456789?i:o:X:A:B:",
     long_options, &option_index);
  if (ch == -1)
   break;

  switch (ch) {

  case 'X':
   cpu = strtoul(optarg, 
# 723 "genwqe_gzip.c" 3 4
                        ((void *)0)
# 723 "genwqe_gzip.c"
                            , 0);
   break;
  case 'A':
   accel = optarg;
   break;
  case 'B':
   card_no = strtol(optarg, (char **)
# 729 "genwqe_gzip.c" 3 4
                                    ((void *)0)
# 729 "genwqe_gzip.c"
                                        , 0);
   break;

  case 'E':
   extra_fname = optarg;
   break;
  case 'N':
   name = optarg;
   break;
  case 'C':
   comment = optarg;
   break;
  case 'd':
   compress = 
# 742 "genwqe_gzip.c" 3 4
             0
# 742 "genwqe_gzip.c"
                  ;
   break;
  case 'f':
   force = 
# 745 "genwqe_gzip.c" 3 4
          1
# 745 "genwqe_gzip.c"
              ;
   break;
  case 'q':

   quiet = 
# 749 "genwqe_gzip.c" 3 4
          1
# 749 "genwqe_gzip.c"
              ;
   break;
  case 'c':
   o_fp = 
# 752 "genwqe_gzip.c" 3 4
         stdout
# 752 "genwqe_gzip.c"
               ;
   break;
  case 'S':
   suffix = optarg;
   break;
  case 's':
   force_software = 
# 758 "genwqe_gzip.c" 3 4
                   1
# 758 "genwqe_gzip.c"
                       ;
   break;
  case 'l':
   list_contents++;
   break;
  case '1':
   level = 
# 764 "genwqe_gzip.c" 3
          1
# 764 "genwqe_gzip.c"
                      ;
   break;
  case '2':
   level = 2;
   break;
  case '3':
   level = 3;
   break;
  case '4':
   level = 4;
   break;
  case '5':
   level = 5;
   break;
  case '6':
   level = 6;
   break;
  case '7':
   level = 7;
   break;
  case '8':
   level = 8;
   break;
  case '9':
   level = 
# 788 "genwqe_gzip.c" 3
          9
# 788 "genwqe_gzip.c"
                            ;
   break;
  case 'v':
   verbose++;
   break;
  case 'V':
   fprintf(
# 794 "genwqe_gzip.c" 3 4
          stdout
# 794 "genwqe_gzip.c"
                , "%s\n", version);
   exit(
# 795 "genwqe_gzip.c" 3 4
       0
# 795 "genwqe_gzip.c"
                   );
   break;
  case 'i':
   CHUNK_i = str_to_num(optarg);
   break;
  case 'o':
   CHUNK_o = str_to_num(optarg);
   break;
  case 'L':
   userinfo(
# 804 "genwqe_gzip.c" 3 4
           stdout
# 804 "genwqe_gzip.c"
                 , prog, version);
   exit(
# 805 "genwqe_gzip.c" 3 4
       0
# 805 "genwqe_gzip.c"
                   );
   break;
  case 'h':
  case '?':
   usage(
# 809 "genwqe_gzip.c" 3 4
        stdout
# 809 "genwqe_gzip.c"
              , prog, argc, argv);
   exit(
# 810 "genwqe_gzip.c" 3 4
       0
# 810 "genwqe_gzip.c"
                   );
   break;
  }
 }

 if (cpu != -1)
  pin_to_cpu(cpu);

 if (force_software) {
  zlib_set_inflate_impl(ZLIB_SW_IMPL);
  zlib_set_deflate_impl(ZLIB_SW_IMPL);
 } else {
  zlib_set_accelerator(accel, card_no);
  zlib_set_inflate_impl(ZLIB_HW_IMPL);
  zlib_set_deflate_impl(ZLIB_HW_IMPL);
 }


 if (optind < argc) {
  in_f = argv[optind++];

  i_fp = fopen(in_f, "r");
  if (!i_fp) {
   do { fprintf(
# 833 "genwqe_gzip.c" 3 4
  stderr
# 833 "genwqe_gzip.c"
  , "gzip: " "%s\n", strerror(
# 833 "genwqe_gzip.c" 3 4
  (*__errno_location ())
# 833 "genwqe_gzip.c"
  )); } while (0);
   print_args(
# 834 "genwqe_gzip.c" 3 4
             stderr
# 834 "genwqe_gzip.c"
                   , argc, argv);
   exit(79);
  }

  rc = lstat(in_f, &s);
  if ((rc == 0) && 
# 839 "genwqe_gzip.c" 3 4
                  ((((
# 839 "genwqe_gzip.c"
                  s.st_mode
# 839 "genwqe_gzip.c" 3 4
                  )) & 0170000) == (0120000))
# 839 "genwqe_gzip.c"
                                    ) {
   do { fprintf(
# 840 "genwqe_gzip.c" 3 4
  stderr
# 840 "genwqe_gzip.c"
  , "gzip: " "%s: Too many levels of symbolic links\n", in_f); } while (0)
               ;
   exit(
# 842 "genwqe_gzip.c" 3 4
       1
# 842 "genwqe_gzip.c"
                   );
  }

  if (list_contents) {
   rc = strip_ending(out_f, in_f, 
# 846 "genwqe_gzip.c" 3 4
                                 4096
# 846 "genwqe_gzip.c"
                                         , suffix);
   if (rc < 0) {
    do { fprintf(
# 848 "genwqe_gzip.c" 3 4
   stderr
# 848 "genwqe_gzip.c"
   , "gzip: " "No .%s file!\n", suffix); } while (0);
    print_args(
# 849 "genwqe_gzip.c" 3 4
              stderr
# 849 "genwqe_gzip.c"
                    , argc, argv);
    exit(
# 850 "genwqe_gzip.c" 3 4
        1
# 850 "genwqe_gzip.c"
                    );
   }

   rc = do_list_contents(i_fp, out_f, list_contents);
   if (rc != 0) {
    do { fprintf(
# 855 "genwqe_gzip.c" 3 4
   stderr
# 855 "genwqe_gzip.c"
   , "gzip: " "Unable to list contents.\n"); } while (0);
    print_args(
# 856 "genwqe_gzip.c" 3 4
              stderr
# 856 "genwqe_gzip.c"
                    , argc, argv);
    exit(
# 857 "genwqe_gzip.c" 3 4
        1
# 857 "genwqe_gzip.c"
                    );
   }
   fclose(i_fp);
   exit(
# 860 "genwqe_gzip.c" 3 4
       0
# 860 "genwqe_gzip.c"
                   );
  }
 }

 if (in_f == 
# 864 "genwqe_gzip.c" 3 4
            ((void *)0)
# 864 "genwqe_gzip.c"
                )
  o_fp = 
# 865 "genwqe_gzip.c" 3 4
        stdout
# 865 "genwqe_gzip.c"
              ;

 if (o_fp == 
# 867 "genwqe_gzip.c" 3 4
            ((void *)0)
# 867 "genwqe_gzip.c"
                ) {
  if (compress)
   snprintf(out_f, 
# 869 "genwqe_gzip.c" 3 4
                  4096
# 869 "genwqe_gzip.c"
                          , "%s.%s", in_f, suffix);
  else {
   rc = strip_ending(out_f, in_f, 
# 871 "genwqe_gzip.c" 3 4
                                 4096
# 871 "genwqe_gzip.c"
                                         , suffix);
   if (rc < 0) {
    do { fprintf(
# 873 "genwqe_gzip.c" 3 4
   stderr
# 873 "genwqe_gzip.c"
   , "gzip: " "No .%s file!\n", suffix); } while (0);
    print_args(
# 874 "genwqe_gzip.c" 3 4
              stderr
# 874 "genwqe_gzip.c"
                    , argc, argv);
    exit(
# 875 "genwqe_gzip.c" 3 4
        1
# 875 "genwqe_gzip.c"
                    );
   }
  }

  rc = stat(out_f, &s);
  if (!force && (rc == 0)) {
   do { fprintf(
# 881 "genwqe_gzip.c" 3 4
  stderr
# 881 "genwqe_gzip.c"
  , "gzip: " "File %s already exists!\n", out_f); } while (0);
   print_args(
# 882 "genwqe_gzip.c" 3 4
             stderr
# 882 "genwqe_gzip.c"
                   , argc, argv);
   exit(79);
  }

  o_fp = fopen(out_f, "w+");
  if (!o_fp) {
   do { fprintf(
# 888 "genwqe_gzip.c" 3 4
  stderr
# 888 "genwqe_gzip.c"
  , "gzip: " "Cannot open output file %s: %s\n", out_f, strerror(
# 888 "genwqe_gzip.c" 3 4
  (*__errno_location ())
# 888 "genwqe_gzip.c"
  )); } while (0)
                          ;
   print_args(
# 890 "genwqe_gzip.c" 3 4
             stderr
# 890 "genwqe_gzip.c"
                   , argc, argv);
   exit(79);
  }


  rc = fstat(fileno(i_fp), &s);
  if (rc == 0) {
   rc = fchmod(fileno(o_fp), s.st_mode);
   if (rc != 0) {
    do { fprintf(
# 899 "genwqe_gzip.c" 3 4
   stderr
# 899 "genwqe_gzip.c"
   , "gzip: " "Cannot set mode %s: %s\n", out_f, strerror(
# 899 "genwqe_gzip.c" 3 4
   (*__errno_location ())
# 899 "genwqe_gzip.c"
   )); } while (0)
                           ;
    exit(79);
   }
  } else
   do { fprintf(
# 904 "genwqe_gzip.c" 3 4
  stderr
# 904 "genwqe_gzip.c"
  , "gzip: " "Cannot set mode %s: %s\n", out_f, strerror(
# 904 "genwqe_gzip.c" 3 4
  (*__errno_location ())
# 904 "genwqe_gzip.c"
  )); } while (0)
                          ;




  if (name == 
# 910 "genwqe_gzip.c" 3 4
             ((void *)0)
# 910 "genwqe_gzip.c"
                 )
   name = in_f;
 }

 if (isatty(fileno(o_fp))) {
  do { fprintf(
# 915 "genwqe_gzip.c" 3 4
 stderr
# 915 "genwqe_gzip.c"
 , "gzip: " "Output must not be a terminal!\n"); } while (0);
  print_args(
# 916 "genwqe_gzip.c" 3 4
            stderr
# 916 "genwqe_gzip.c"
                  , argc, argv);
  exit(
# 917 "genwqe_gzip.c" 3 4
      1
# 917 "genwqe_gzip.c"
                  );
 }

 if (optind != argc) {
  usage(
# 921 "genwqe_gzip.c" 3 4
       stderr
# 921 "genwqe_gzip.c"
             , prog, argc, argv);
  exit(
# 922 "genwqe_gzip.c" 3 4
      1
# 922 "genwqe_gzip.c"
                  );
 }

 in = malloc(CHUNK_i);
 if (
# 926 "genwqe_gzip.c" 3 4
    ((void *)0) 
# 926 "genwqe_gzip.c"
         == in) {
  do { fprintf(
# 927 "genwqe_gzip.c" 3 4
 stderr
# 927 "genwqe_gzip.c"
 , "gzip: " "%s\n", strerror(
# 927 "genwqe_gzip.c" 3 4
 (*__errno_location ())
# 927 "genwqe_gzip.c"
 )); } while (0);
  print_args(
# 928 "genwqe_gzip.c" 3 4
            stderr
# 928 "genwqe_gzip.c"
                  , argc, argv);
  exit(
# 929 "genwqe_gzip.c" 3 4
      1
# 929 "genwqe_gzip.c"
                  );
 }

 out = malloc(CHUNK_o);
 if (
# 933 "genwqe_gzip.c" 3 4
    ((void *)0) 
# 933 "genwqe_gzip.c"
         == out) {
  do { fprintf(
# 934 "genwqe_gzip.c" 3 4
 stderr
# 934 "genwqe_gzip.c"
 , "gzip: " "%s\n", strerror(
# 934 "genwqe_gzip.c" 3 4
 (*__errno_location ())
# 934 "genwqe_gzip.c"
 )); } while (0);
  print_args(
# 935 "genwqe_gzip.c" 3 4
            stderr
# 935 "genwqe_gzip.c"
                  , argc, argv);
  exit(
# 936 "genwqe_gzip.c" 3 4
      1
# 936 "genwqe_gzip.c"
                  );
 }


 memset(&strm, 0, sizeof(strm));
 strm.zalloc = 
# 941 "genwqe_gzip.c" 3
              0
# 941 "genwqe_gzip.c"
                    ;
 strm.zfree = 
# 942 "genwqe_gzip.c" 3
             0
# 942 "genwqe_gzip.c"
                   ;
 strm.opaque = 
# 943 "genwqe_gzip.c" 3
              0
# 943 "genwqe_gzip.c"
                    ;

 if (compress) {
  gz_header head;
  struct timeval tv;

  if (extra_fname) {
   extra_len = file_size(extra_fname);
   if (extra_len <= 0) {
    rc = extra_len;
    goto err_out;
   }

   extra = malloc(extra_len);
   if (extra == 
# 957 "genwqe_gzip.c" 3 4
               ((void *)0)
# 957 "genwqe_gzip.c"
                   ) {
    rc = -
# 958 "genwqe_gzip.c" 3 4
         12
# 958 "genwqe_gzip.c"
               ;
    goto err_out;
   }

   rc = file_read(extra_fname, extra, extra_len);
   if (rc != 1) {
    fprintf(
# 964 "genwqe_gzip.c" 3 4
           stderr
# 964 "genwqe_gzip.c"
                 , "err: Unable to read extra "
     "data rc=%d\n", rc);
    free(extra);
    goto err_out;
   }

   hexdump(
# 970 "genwqe_gzip.c" 3 4
          stderr
# 970 "genwqe_gzip.c"
                , extra, extra_len);
  }


  rc = 
# 974 "genwqe_gzip.c" 3
      deflateInit2_((
# 974 "genwqe_gzip.c"
      &strm
# 974 "genwqe_gzip.c" 3
      ),(
# 974 "genwqe_gzip.c"
      level
# 974 "genwqe_gzip.c" 3
      ),(8),(
# 974 "genwqe_gzip.c"
      window_bits
# 974 "genwqe_gzip.c" 3
      ),(
# 974 "genwqe_gzip.c"
      8
# 974 "genwqe_gzip.c" 3
      ), (0), "1.2.11", (int)sizeof(z_stream))
                         
# 975 "genwqe_gzip.c"
                        ;
  if (
# 976 "genwqe_gzip.c" 3
     0 
# 976 "genwqe_gzip.c"
          != rc)
   goto err_out;

  memset(&head, 0, sizeof(head));

  gettimeofday(&tv, 
# 981 "genwqe_gzip.c" 3 4
                   ((void *)0)
# 981 "genwqe_gzip.c"
                       );
  head.time = tv.tv_sec;
  head.os = 0x03;

  if (extra != 
# 985 "genwqe_gzip.c" 3 4
              ((void *)0)
# 985 "genwqe_gzip.c"
                  ) {
   head.extra = extra;
   head.extra_len = extra_len;
   head.extra_max = extra_len;
  }
  if (comment != 
# 990 "genwqe_gzip.c" 3 4
                ((void *)0)
# 990 "genwqe_gzip.c"
                    ) {
   head.comment = (Bytef *)comment;
   head.comm_max = strlen(comment) + 1;
  }
  if (name != 
# 994 "genwqe_gzip.c" 3 4
             ((void *)0)
# 994 "genwqe_gzip.c"
                 ) {
   head.name = (Bytef *)name;
   head.name_max = strlen(name) + 1;
  }

  rc = deflateSetHeader(&strm, &head);
  if (
# 1000 "genwqe_gzip.c" 3
     0 
# 1000 "genwqe_gzip.c"
          != rc) {
   fprintf(
# 1001 "genwqe_gzip.c" 3 4
          stderr
# 1001 "genwqe_gzip.c"
                , "err: Cannot set gz header! rc=%d\n",
    rc);
   deflateEnd(&strm);
   goto err_out;
  }
  if (verbose) {
   fprintf(
# 1007 "genwqe_gzip.c" 3 4
          stderr
# 1007 "genwqe_gzip.c"
                ,
    "deflateBound() %lld bytes for %lld bytes input\n",
    (long long)deflateBound(&strm, CHUNK_i),
    (long long)CHUNK_i);
   fprintf(
# 1011 "genwqe_gzip.c" 3 4
          stderr
# 1011 "genwqe_gzip.c"
                ,
    "compressBound() %lld bytes for %lld bytes input\n",
    (long long)compressBound(CHUNK_i),
    (long long)CHUNK_i);
  }


  rc = def(i_fp, o_fp, &strm, in, out);
  if (
# 1019 "genwqe_gzip.c" 3
     0 
# 1019 "genwqe_gzip.c"
          != rc)
   zerr(rc);

  if (extra != 
# 1022 "genwqe_gzip.c" 3 4
              ((void *)0)
# 1022 "genwqe_gzip.c"
                  )
   free(extra);

  deflateEnd(&strm);
 } else {

  strm.avail_in = 0;
  strm.next_in = 
# 1029 "genwqe_gzip.c" 3
                0
# 1029 "genwqe_gzip.c"
                      ;
  rc = 
# 1030 "genwqe_gzip.c" 3
      inflateInit2_((
# 1030 "genwqe_gzip.c"
      &strm
# 1030 "genwqe_gzip.c" 3
      ), (
# 1030 "genwqe_gzip.c"
      window_bits
# 1030 "genwqe_gzip.c" 3
      ), "1.2.11", (int)sizeof(z_stream))
# 1030 "genwqe_gzip.c"
                                      ;
  if (
# 1031 "genwqe_gzip.c" 3
     0 
# 1031 "genwqe_gzip.c"
          != rc)
   goto err_out;

  do {
   rc = inf(i_fp, o_fp, &strm, in, out);
   if (
# 1036 "genwqe_gzip.c" 3
      1 
# 1036 "genwqe_gzip.c"
                   != rc) {
    zerr(rc);
    break;
   }
  } while (!feof(i_fp) && !ferror(i_fp));

  inflateEnd(&strm);
 }

 err_out:


 if ((rc == 
# 1048 "genwqe_gzip.c" 3 4
           0
# 1048 "genwqe_gzip.c"
                       ) && (i_fp != 
# 1048 "genwqe_gzip.c" 3 4
                                     stdin
# 1048 "genwqe_gzip.c"
                                          ) && (o_fp != 
# 1048 "genwqe_gzip.c" 3 4
                                                        stdout
# 1048 "genwqe_gzip.c"
                                                              )) {
  rc = unlink(in_f);
  if (rc != 0) {
   do { fprintf(
# 1051 "genwqe_gzip.c" 3 4
  stderr
# 1051 "genwqe_gzip.c"
  , "gzip: " "%s\n", strerror(
# 1051 "genwqe_gzip.c" 3 4
  (*__errno_location ())
# 1051 "genwqe_gzip.c"
  )); } while (0);
   print_args(
# 1052 "genwqe_gzip.c" 3 4
             stderr
# 1052 "genwqe_gzip.c"
                   , argc, argv);
   exit(
# 1053 "genwqe_gzip.c" 3 4
       1
# 1053 "genwqe_gzip.c"
                   );
  }
 }

 fclose(i_fp);
 fclose(o_fp);
 free(in);
 free(out);

 exit(rc);
}
