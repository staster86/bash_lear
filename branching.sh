#!/bin/bash
echo "Введите число:"
read number

if [ $number -gt 10 ]; then
    echo "Число больше 10."
else
    echo "Число меньше или равно 10."
fi

#!/bin/bash
for i in {1..5}; do
    echo "Число: $i"
done

#!/bin/bash
for i in {1..5}; do
    echo "Число: $i"
done

#!/bin/bash
for i in {1..5}; do
    echo "Число: $i"
done

#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "Число: $count"
    ((count++))
done
