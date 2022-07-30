#1.#  *
#     * *
#     * * *
#     * * * *
#     * * * * *
rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done


#2.#1
#   1 2
#   1 2 3
#   1 2 3 4
#   1 2 3 4 5
number=1
rows=5
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  number=1
  echo
done

#3.#* * * * *
#     * * * *
#     * * *
#     * *
#     *
rows=5
for((i=rows; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

#4.#1 2 3 4 5
#   1 2 3 4
#   1 2 3
#   1 2
#   1
number=1
rows=5
for((i=rows; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  number=1
  echo
done

#5.#        *
#         * * *
#       * * * * *
#     * * * * * * *
#   * * * * * * * * *
rows=5
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  for((j=1; j<=2*i - 1; j++))
  do
    echo -n "* "
  done
  echo
done

#6.#     1
#      2 3 2
#    3 4 5 4 3
#  4 5 6 7 6 5 4
#5 6 7 8 9 8 7 6 5
rows=5
number=1
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  number=$i
  k=1
  for((j=1; j<=2*i - 1; j++))
  do
    if [ $j -lt $i ];
    then
      echo -n "$number "
      number=$((number + 1))
    elif [ $j -eq $i ];
    then
      echo -n "$number "
      number=$((number - 1))
    else
      echo -n "$number "
      number=$((number - 1))
    fi
  done
  echo
done

#Bash Shell Script to print Floyd's Triangle
#7.#1
#   2 3
#   4 5 6
#   7 8 9 10

number=1
rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  echo
done

#8. Pascle pyramid
#!/bin/bash
echo -n "wnter the no of terms "
read n
for((i=0;i<n;i++))
do
     for((space0;space<n-i;space++))
     do
          echo -n **
     done
     for((j=0;j<i;j++))
     do
          if [$j -eq 0 -o $i -eq 0]
          then
              count=1
          else
              c=`expr $c\*$count/$j
          fi
          echo -n"$count"
     done
     echo
done