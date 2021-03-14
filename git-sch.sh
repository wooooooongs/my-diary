# git-sch.sh
 
Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)
 
Ym=$Y-$M
Ymd=$Y-$M-$D
GitRep="my-diary"
 
HomeDir="/home/ubuntu"
GitDir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md
 
mkdir -p $FileDir
 
echo "### $Ymd 코드일기" >> $FileDir/$FileNm
 
cd $GitDir
git add
git commit -m "commit $FileNm"
git push origin master

# 권한

$ chmod +x git-sch.sh

