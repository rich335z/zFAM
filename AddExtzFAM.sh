#/bin/sh
cd /apps/DEV/INFDS/zFAM
cd /apps/DEV/INFDS/zFAM/txt
for f in *; do mv "$f" "$f.txt"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/asm
for f in *; do mv "$f" "$f.asm"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/cbl
for f in *; do mv "$f" "$f.cbl"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/cpy
for f in *; do mv "$f" "$f.cpy"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/exec
for f in *; do mv "$f" "$f.exec"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/idcams
for f in *; do mv "$f" "$f.idcams"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/jcl
for f in *; do mv "$f" "$f.jcl"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/mac
for f in *; do mv "$f" "$f.mac"; done 2> /dev/null
cd /apps/DEV/INFDS/zFAM/rdo
for f in *; do mv "$f" "$f.rdo"; done 2> /dev/null
cd ..
