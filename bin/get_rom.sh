#! /bin/sh


URL=http://www.datamath.org/Chips/ROM/

set -e

mkdir rom

cd rom

mkdir rom-SR50
cd rom-SR50
curl --output TMC0521B-CONST.txt $URL/TMC0521B-CONST.txt
curl --output TMC0521B.txt $URL/TMC0521B.txt
cd -

mkdir rom-SR50r1
cd rom-SR50r1
curl --output TMC0521E-CONST.txt $URL/TMC0521E-CONST.txt
curl --output TMC0521E.txt $URL/TMC0521E.txt
cd -

mkdir rom-SR50A/
cd rom-SR50A/
curl --output TMC0531A-CONST.txt $URL/TMC0531A-CONST.txt
curl --output TMC0531A.txt $URL/TMC0531A.txt
cd -

mkdir rom-print
cd rom-print
curl --output TMC0561.txt $URL/TMC0561.txt
curl --output TMC0569.txt $URL/TMC0569.txt
cd -

mkdir rom-SR51
cd rom-SR51
curl --output TMC0522C7503-CONST.txt $URL/TMC0522C7503-CONST.txt
curl --output TMC0522C7503.txt $URL/TMC0522C7503.txt
curl --output TMC0523A7509-CONST.txt $URL/TMC0523A7509-CONST.txt
curl --output TMC0523A7509.txt $URL/TMC0523A7509.txt
cd -

mkdir rom-SR51A
cd rom-SR51A
curl --output TMC0532A-CONST.txt $URL/TMC0532A-CONST.txt
curl --output TMC0532A.txt $URL/TMC0532A.txt
curl --output TMC0533A-CONST.txt $URL/TMC0533A-CONST.txt
curl --output TMC0533A.txt $URL/TMC0533A.txt
cd -

mkdir rom-SR52
cd rom-SR52
curl --output TMC0524B-CONST.txt $URL/TMC0524B-CONST.txt
curl --output TMC0524B.txt $URL/TMC0524B.txt
curl --output TMC0562C.txt $URL/TMC0562C.txt
curl --output TMC0563B.txt $URL/TMC0563B.txt

#A variant
curl --output TMC0534B-CONST.txt $URL/TMC0534B-CONST.txt
curl --output TMC0534B.txt $URL/TMC0534B.txt
cd -

mkdir rom-SR56
cd rom-SR56
curl --output TMC0537A7645-CONST.txt $URL/TMC0537A7645-CONST.txt
curl --output TMC0537A7645.txt $URL/TMC0537A7645.txt
curl --output TMC0538A7644-CONST-K.txt $URL/TMC0538A7644-CONST-K.txt
curl --output TMC0538A7644.txt $URL/TMC0538A7644.txt
cd -

mkdir rom-ti59
cd rom-ti59
curl --output TMC0571B.txt $URL/TMC0571B.txt
curl --output TMC0582-CONST-K.txt $URL/TMC0582-CONST-K.txt
curl --output TMC0582.txt $URL/TMC0582.txt
curl --output TMC0583-CONST-K.txt $URL/TMC0583-CONST-K.txt
curl --output TMC0583.txt $URL/TMC0583.txt
cd -

mkdir rom-ti58c
cd rom-ti58c
curl --output CD2400-CONST-K.txt $URL/CD2400-CONST-K.txt
curl --output CD2400.txt $URL/CD2400.txt
curl --output CD2401-CONST-K.txt $URL/CD2401-CONST-K.txt
curl --output CD2401.txt $URL/CD2401.txt
curl --output TMC0573.txt $URL/TMC0573.txt
cd -

mkdir rom-SR51-II
cd rom-SR51-II
curl --output TMC0581-CONST.txt $URL/TMC0581-CONST.txt
curl --output TMC0581.txt $URL/TMC0581.txt
cd -

mkdir module-lib
cd module-lib
curl --output TMC0541.txt $URL/TMC0541.txt
cd -
