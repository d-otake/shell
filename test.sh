
#!/bin/bash
read str1
read str2

today=$(date +'%M' | cut -c 1)
echo ${today}
#echo ${today} | cut -c 1

if [ ${today}%2 = 0 ]; then
  echo $((${str1} + ${str2}))
else
  echo $((${str1} * ${str2}))
fi
