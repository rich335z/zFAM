#!/bin/sh
# This script is used to sync MVS libs back to USS for Git compatibility
# Update working directory for project
# Update PDS names to local source lib names
cd /apps/DEV/INFDS/zFAM
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.MD.V010000'" . 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.TXT.V010000'" ./txt 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.ASM.V010000'" ./asm 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.CBL.V010000'" ./cbl 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.CPY.V010000'" ./cpy 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.EXEC.V010000'" ./exec 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.IDCAMS.V010000'" ./idcams 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.JCL.V010000'" ./jcl 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.MAC.V010000'" ./mac 2> /dev/null
cp -T -U "//'SYS3.CICS.ZCLOUD.IP.zFAM.RDO.V010000'" ./rdo 2> /dev/null
