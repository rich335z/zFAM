//CSDZFAMR JOB @job_parms@
//**********************************************************************
//* Define replication TCPIPService for ZFAM
//**********************************************************************
//STEP001   EXEC  PGM=DFHCSDUP
//STEPLIB   DD    DISP=SHR,DSN=@cics_hlq@.SDFHLOAD
//DFHCSD    DD    DISP=SHR,DSN=@cics_csd@
//SYSPRINT  DD    SYSOUT=*,DCB=(BLKSIZE=133)
//SYSIN     DD    DISP=SHR,
//                DSN=@srclib_prfx@.@source_vrsn@.RDO(CSDZFAMR)
//
