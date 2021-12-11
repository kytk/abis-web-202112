#!/bin/bash
# ABiS チュートリアル用スクリプト
# 2021年12月, 2022年1月用のLin4Neuroを入手します

#####
# 準備のために使ったコマンド
# openssl md5 L4N-2004-abis-20211110.ova > L4N-2004-abis-20211110.ova.md5
# split -n 16 -d L4N-2004-abis-20211110.ova L4N-2004-abis-split-
# for f in L4N-2004-abis-split-*; do openssl md5 $f > ${f}.md5; done
# sftp user@ftpsite
# cd psy-neuroimaging
# mkdir L4N-2004-abis-20211110-split
# put L4N-2004-abis-split-*
# cd ../L4N #(psy-neuroimaging/L4N)
# put L4N-2004-abis-20211110*
#####

#set -x

cd ~/Downloads
mkdir L4N-2004-abis-20211110
cd L4N-2004-abis-20211110

# variable ################
baseurl="https://www.md.tsukuba.ac.jp/clinical-med/psy-neuroimaging/L4N-2004-abis-20211110-split"
base="L4N-2004-abis-split"
L4N="L4N-2004-abis-20211110.ova"
L4Nmd5="https://www.md.tsukuba.ac.jp/clinical-med/psy-neuroimaging/L4N/L4N-2004-abis-20211110.ova.md5"
###########################

echo "チュートリアル用のLin4Neuroをダウンロードします"
echo ""

echo "${L4N}があるか確認します"
if [ ! -e ${L4N} ]; then
  echo "L4N分割データを確認し、なければダウンロードします"
  for n in $(seq -w 00 15);
  do
    if [ ! -e ${base}-${n} ]; then
      curl -O ${baseurl}/${base}-${n}.md5
      curl -O ${baseurl}/${base}-${n}
    fi 
    echo "${base}-${n}のファイルサイズを確認します"
    openssl md5 ${base}-${n} | cmp ${base}-${n}.md5 -
    while [ $? -ne 0 ]; do
      echo "ファイルサイズが一致しません"
      echo "再度ダウンロードします"
      curl -O ${baseurl}/${base}-${n}
      openssl md5 ${base}-${n} | cmp ${base}-${n}.md5 -
    done
  echo "ファイルサイズが一致しました"
  done
    
  echo "${L4N} を生成します"
  cat ${base}-?? > ${L4N}
fi

echo "${L4N} を検証します"
curl -O ${L4Nmd5}

openssl md5 ${L4N} | cmp ${L4N}.md5 -
while [ $? -ne 0 ]; do
  echo "ファイルサイズが一致しません"
  echo "再度結合します"
  cat ${base}-?? > ${L4N}
  openssl md5 ${L4N} | cmp ${L4N}.md5 -
done
echo "正しく${L4N}が生成されました"

#Delete temporary files
[ -e L4N-2004-abis-split-00 ] && rm ${base}-*

echo ""
echo "L4Nの準備が完了しました。"
echo "ダウンロードの${L4N%.ova}フォルダの中にある${L4N}をVirtualBoxにインポートしてください"
sleep 10

exit

