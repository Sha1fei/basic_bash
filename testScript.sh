#!/bin/bash

echo "Test script running.."
value="Valentin"
echo "Value set ${value}"

array=(1 2 3)
echo "${array[0]}"

echo "${array[@]}"

echo "${#array[@]}"

array[0]=5
echo "${array[0]}"

array+=(6 7)
echo "${array[@]}"

echo "Please input value..."
read input
echo "input is ${input}"

echo {a..d}
echo {1,2,3,4}

value2=~/foo
echo "Value2 set ${value2}"

echo ${value}

echo ${value3:="Test"}

echo "$(ls | head -n1)"

echo "$(( 5 * 3 / 2))"

ls Dockerfil*

value4=-5
if ((value4 > 0)); then
  echo "Value is positive"
else
  echo "Value is negative"
fi

echo "Enter value5:"
read value5

case "${value5}" in
test)
  echo "value5 is test"
  ;;
test2)
  echo "value5 is test2"
  ;;
*)
  echo "value5 is undefined"
  exit 2
  ;;
esac

counter=10
while (( counter > 0 )); do
  echo "Counter value: ${counter}"
  ((counter--))
done

counter2=10
until (( counter2 <= 0 )); do
  echo "Counter value: ${counter2}"
  ((counter2--))
done

array=(4 6 7 8 9 10)
for (( i=0; i< "${#array[@]}"; i++)); do
    echo "Index value: ${i}. Array value: ${array[i]}"
done

for i in {6..10} ; do
    echo "Value value: ${i}."
done

function foo() {
    echo "going to clean function"
    echo "$1"
    echo "$@"
    echo "$*"
    index=0
    for arg in "$@"; do
        echo "Index: ${index}. Argument ${arg}"
        (( index++ ))
    done
    return 5
}
foo 1 2
echo $?