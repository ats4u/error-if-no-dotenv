
rm .env

echo '================================================================================'

node index.test.mjs
RESULT_00=$?

echo '================================================================================'

node index.test.cjs
RESULT_01=$?

touch .env

echo '================================================================================'

node index.test.mjs
RESULT_02=$?

echo '================================================================================'

node index.test.cjs
RESULT_03=$?

echo '================================================================================'

rm .env
echo "RESULT_00 = $RESULT_00"
echo "RESULT_01 = $RESULT_01"
echo "RESULT_02 = $RESULT_02"
echo "RESULT_03 = $RESULT_03"

if [ $RESULT_00 -eq 1 ] && [ $RESULT_01 -eq 1 ] && [ $RESULT_02 -eq 0 ] && [ $RESULT_03 -eq 0 ]  ; then
  echo -ne "\e[1;37;44m*** succeeded ***\e[m\n"
else
  echo -ne "\e[1;37;41m*** failed ***\e[m\n"
fi


