
#!/bin/bash

# 外部ファイル読み込み
str1=$(<input1.txt)
str2=$(<input2.txt)

# 分の10の位を取得する
today=$(date +'%M' | cut -c 1)
echo ${today}
echo ${str1}
echo ${str2}

# 偶数の場合足し算、奇数の場合掛け算をおこなう
if [ ${today}%2 = 0 ]; then
  echo $(date +'%Y/%m/%d %H:%M:%S') $((${str1} + ${str2})) >> result.log
else
  echo $(date +'%Y/%m/%d %H:%M:%S') $((${str1} * ${str2})) >> result.log
fi

