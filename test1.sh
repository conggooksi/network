#!/bin/sh

# comment
# 실행되지 않음

if [ "$1" -gt "$2" ]
then
    echo "1번째 인수가 2번째 인수보다 크다"
elif [ "$1" -lt "$2" ]
then
    echo "2번째 인수가 1번째 인수보다 크다"
else
    echo "인수들이 서로 같다"
fi



read NAME
case "$NAME" in
    "kim") echo "김씨 입니다"
    ;;
    "lee") echo "이씨입니다"
    ;;
esac


num=1
while [ $num -le 5 ]
do
  echo $num
  num=`expr $num + 1`
done

for ((i=1; i<=4; i++)); do
  echo $i
done

for i in 1 2 3 4 5
do
  echo $i
done

number="1 2 3 4 5"
for i in $number
do
  echo $i
done

array=(1 2 3 4 5)
for i in "${array[@]}"
do
  echo $i
done

#sequence ex) seq num1 num2: num1에서 num2까지의 숫자를 출력
for i in `seq 1 5`
do
  echo $i
done

#range ex) {num1..num2}
for i in {1..5}
do
  echo $i
done


#---------------------------------

#1/usr/bin/bash

#배열의 크기 지정 x 선언
declare -a array

arr1=("str1" "str2" "str3") #값이 있는 배열 선언

echo ${arr1[0]} # str1 출력

#배열에 값 추가하는 3가지 방법
arr1[3]="str4"
arr1+=("str5")
arr1[${#arr1[@}]="str6" # 배열 길이를 index화


echo ${arr1[@]} #배열 전체 출력
echo ${arr1[*]} #배열 전체 출력
echo ${#arr1[@]} #배열 길이 출력

echo ${arr1[@:2:3]} # 2에서 3개 요소 추출

#---------------------------------------------------
arr=(1 2 3)
Val=(3)

arr=( "${arr[@]/$Val}" ) # arr배열에서 Val배열 추출 (1 2)

unset arr[1] #index 값 넣어 삭제 (1)
unset arr

#---------------------------------------------------


#생성
declare -A map=([hello]='world' [num]='1 2 3 4 5' [kim lee shin]='name')

#출력
declare -p map

#원소추가
map+=([key1]=value)
map+=([key2]=value2 [key3]=value3)

#원소삭제 (key 이용)
unset 'map[key1]'

for i in "${map[@]}"; do
  echo "{i}"
done

#---------------------------------------------------
# date 문자열 출력
echo date

# 백틱으로 감싸 명령어 실행가능
echo `date`



