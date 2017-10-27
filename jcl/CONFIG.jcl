//CONFIG   JOB MSGCLASS=R,NOTIFY=&SYSUID
//**********************************************************************
//* This job will modify the members in the .SOURCE and .CNTL libraries
//*
//* Steps for this job to complete successfully
//* --------------------------------------------------------------------
//* 1) Modify JOB card to meet your system installation standards
//*
//* 2) Modify the CONFIG member in the .TXT dataset before submitting
//*
//* 3) Change all occurrences of the following:
//*    @srclib_prfx@ to the prefix for the source libraries
//*    @source_vrsn@ to the selected version identifier
//*
//* 4) Submit the job
//**********************************************************************
//* Modify ASMZFAM JCL
//**********************************************************************
//STEP001  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(ASMZFAM)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ASMZFAM JCL
//**********************************************************************
//STEP002   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(ASMZFAM)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAM JCL
//**********************************************************************
//STEP003  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAM)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAM JCL
//**********************************************************************
//STEP004   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAM)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMN JCL
//**********************************************************************
//STEP005  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMN)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMN JCL
//**********************************************************************
//STEP006   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMN)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMR JCL
//**********************************************************************
//STEP007  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMR)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMR JCL
//**********************************************************************
//STEP008   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMR)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMS JCL
//**********************************************************************
//STEP009  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMS)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMS JCL
//**********************************************************************
//STEP010   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(CSDZFAMS)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify DEFCI JCL
//**********************************************************************
//STEP011  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFCI)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace DEFCI JCL
//**********************************************************************
//STEP012   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFCI)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify DEFEXPR JCL
//**********************************************************************
//STEP013  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFEXPR)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace DEFEXPR JCL
//**********************************************************************
//STEP014   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFEXPR)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify DEFFA## JCL
//**********************************************************************
//STEP015  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFFA##)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace DEFFA## JCL
//**********************************************************************
//STEP016   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(DEFFA##)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify FA##DC JCL
//**********************************************************************
//STEP017  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##DC)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace FA##DC  JCL
//**********************************************************************
//STEP018   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##DC)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify FA##FD JCL
//**********************************************************************
//STEP019  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##FD)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace FA##FD  JCL
//**********************************************************************
//STEP020   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##FD)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify FA##SD JCL
//**********************************************************************
//STEP021  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##SD)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace FA##SD  JCL
//**********************************************************************
//STEP022   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.JCL(FA##SD)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDFA## CSD definition source
//**********************************************************************
//STEP023  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDFA##)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDFA## CSD definition source
//**********************************************************************
//STEP024   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDFA##)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAM CSD definition source
//**********************************************************************
//STEP025  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAM)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAM CSD definition source
//**********************************************************************
//STEP026   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAM)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMC CSD definition source
//**********************************************************************
//STEP027  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMC)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMC CSD definition source
//**********************************************************************
//STEP028   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMC)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMN CSD definition source
//**********************************************************************
//STEP029  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMN)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMN CSD definition source
//**********************************************************************
//STEP030   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMN)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMR CSD definition source
//**********************************************************************
//STEP031  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMR)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMR CSD definition source
//**********************************************************************
//STEP032   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMR)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMS CSD definition source
//**********************************************************************
//STEP033  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMS)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMS CSD definition source
//**********************************************************************
//STEP034   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMS)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify CSDZFAMX CSD definition source
//**********************************************************************
//STEP035  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMX)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace CSDZFAMX CSD definition source
//**********************************************************************
//STEP036   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMX)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify FA##DC CSD definition source
//**********************************************************************
//STEP037  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(FA##DC)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace FA##DC CSD definition source
//**********************************************************************
//STEP038   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.TXT(FA##DC)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify FAEXPIRE IDCAMS VSAM file definition
//**********************************************************************
//STEP039  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(FAEXPIRE)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace FAEXPIRE IDCAMS VSAM file definition
//**********************************************************************
//STEP040   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(FAEXPIRE)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAMCI IDCAMS VSAM file definition
//**********************************************************************
//STEP041  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMCI)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAMCI IDCAMS VSAM file definition
//**********************************************************************
//STEP042   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMCI)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAMFILE IDCAMS VSAM file definition
//**********************************************************************
//STEP043  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMFILE)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAMFILE IDCAMS VSAM file definition
//**********************************************************************
//STEP044   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMFILE)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAMKEY IDCAMS VSAM file definition
//**********************************************************************
//STEP045  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMKEY)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAMKEY IDCAMS VSAM file definition
//**********************************************************************
//STEP046   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.IDCAMS(ZFAMKEY)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM000 program source
//**********************************************************************
//STEP047  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM000)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM000 program source
//**********************************************************************
//STEP048   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM000)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM001 program source
//**********************************************************************
//STEP049  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM001)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM001 program source
//**********************************************************************
//STEP050   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM001)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM002 program source
//**********************************************************************
//STEP051  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM002)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM002 program source
//**********************************************************************
//STEP052   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM002)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM003 program source
//**********************************************************************
//STEP053  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM003)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM003 program source
//**********************************************************************
//STEP054   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM003)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM004 program source
//**********************************************************************
//STEP055  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM004)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM004 program source
//**********************************************************************
//STEP056   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM004)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM005 program source
//**********************************************************************
//STEP057  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM005)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM005 program source
//**********************************************************************
//STEP058   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM005)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM006 program source
//**********************************************************************
//STEP059  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM006)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM006 program source
//**********************************************************************
//STEP060   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM006)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM007 program source
//**********************************************************************
//STEP061  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM007)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM007 program source
//**********************************************************************
//STEP062   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM007)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM008 program source
//**********************************************************************
//STEP063  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM008)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM008 program source
//**********************************************************************
//STEP064   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM008)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM009 program source
//**********************************************************************
//STEP065  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM009)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM009 program source
//**********************************************************************
//STEP066   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM009)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM010 program source
//**********************************************************************
//STEP067  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM010)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM010 program source
//**********************************************************************
//STEP068   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM010)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM011 program source
//**********************************************************************
//STEP069  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM011)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM011 program source
//**********************************************************************
//STEP070   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM011)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM020 program source
//**********************************************************************
//STEP071  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM020)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM020 program source
//**********************************************************************
//STEP072   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM020)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM022 program source
//**********************************************************************
//STEP073  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM022)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM022 program source
//**********************************************************************
//STEP074   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM022)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM030 program source
//**********************************************************************
//STEP075  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM030)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM030 program source
//**********************************************************************
//STEP076   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM030)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM031 program source
//**********************************************************************
//STEP077  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM031)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM031 program source
//**********************************************************************
//STEP078   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM031)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM040 program source
//**********************************************************************
//STEP079  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM040)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM040 program source
//**********************************************************************
//STEP080   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAM040)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM041 program source
//**********************************************************************
//STEP081  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM041)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM041 program source
//**********************************************************************
//STEP082   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM041)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM090 program source
//**********************************************************************
//STEP083  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM090)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM090 program source
//**********************************************************************
//STEP084   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM090)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM101 program source
//**********************************************************************
//STEP085  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM101)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM101 program source
//**********************************************************************
//STEP086   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM101)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAM102 program source
//**********************************************************************
//STEP087  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM102)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAM102 program source
//**********************************************************************
//STEP088   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAM102)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAMNC program source
//**********************************************************************
//STEP089  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAMNC)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAMNC program source
//**********************************************************************
//STEP090   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.ASM(ZFAMNC)
//SYSIN     DD DUMMY
//**********************************************************************
//* Modify ZFAMPLT program source
//**********************************************************************
//STEP091  EXEC PGM=IKJEFT1B,REGION=1024K
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//INPUT    DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAMPLT)
//OUTPUT   DD DISP=(NEW,PASS),DSN=&&OUTPUT,
//            UNIT=VIO,SPACE=(80,(1000,1000)),
//            DCB=(LRECL=80,RECFM=FB)
//STRINGS  DD DISP=SHR,
//            DSN=@srclib_prfx@.@source_vrsn@.TXT(CONFIG)
//SYSTSIN  DD *
 EXEC '@srclib_prfx@.@source_vrsn@.EXEC(REXXREPL)'
/*
//**********************************************************************
//* Replace ZFAMPLT program source
//**********************************************************************
//STEP092   EXEC PGM=IEBGENER,REGION=1024K
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=(OLD,DELETE),DSN=&&OUTPUT
//SYSUT2    DD DISP=SHR,
//             DSN=@srclib_prfx@.@source_vrsn@.CBL(ZFAMPLT)
//SYSIN     DD DUMMY
//*
//
