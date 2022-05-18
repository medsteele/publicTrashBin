
# simple calculator
# only performs calculations on 2 numbers

clear
SUM=0
RUN="y"

while [ $RUN = "y" ]; do
echo "enter your first number:"
read NUM1
echo "enter your second number:"
read NUM2

  echo "1) addition"
  echo "2) subtraction"
  echo "3) multiplication"
  echo "4) division"
  echo "enter your choice"
  read OP

  if [ $OP = 1  ]; then
    SUM=$(( $NUM1 + $NUM2 ))
    echo $NUM1 '+' $NUM2 = $SUM
  elif [ $OP = 2 ]; then
    SUM=$(( $NUM1 - $NUM2 ))
    echo $NUM1 '-' $NUM2 = $SUM
  elif [ $OP = 3 ]; then
    SUM=$(( $NUM1 * $NUM2 ))
    echo $NUM1 '*' $NUM2 = $SUM
  elif [ $OP = 4 ]; then
    SUM=$(( $NUM1 / $NUM2 ))
    echo $NUM1 '/' $NUM2 =  $SUM
  else
    echo "Invalid Operator"
  fi

SUM=0
echo "Do you want to run another? (y/n)"
read RUN

done

