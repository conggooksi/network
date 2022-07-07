read -p "숫자를 입력하세요" NUM

for ((i=1; i<=9; i++)); do
  echo "$NUM" x "$i" = `expr $NUM \* $i`
done

#---------------------------------------------
for ((i=2; i<=9; i++)); do
  echo "'$i' 단"
  for ((j=1; j<=9; j++)); do
    echo "$i" x "$j" = `expr $i \* $j`
  done
done

#---------

function gugu() {
  for i in {1..9}; do
    echo "$1 * $i = `expr $1 \* $i`"
  done
}

read number
gugu $number

#-----------------------------------------
IFS=$'\n' arr=(`cat /etc/passwd |grep nologin |awk -F: '{print $1}'`)
echo ${arr[0]}

for i in "${arr[@]}"; do
  echo $i;
done

value=(`cat /etc/passwd |grep nologin |awk -F ':' '{ print $1 }'`)

echo ${value[@]}