cat sample.txt | gsed -E 's/[[:blank:]]//g' | gsed -E 's/:/\t/g'






function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
BEGIN {
# whatever
}
{
# whatever
}
END {
# whatever
}





cat sample.txt | sed -e 's/\s/blah/g'
cat sample.txt | head -n 1 | awk -F '[.:=>]' ' { if ($5 != $7) print $5 $7 } '
cat sample.txt | awk -F '[.:=]' ' { print $0; print $3 } '

cat sample.txt | head -n 1 | awk -F '[.:=>]' '
{
  for(i=1;i<=NF;i++) {
      print $i
  }
  exit 0
}'


cat sample.txt | head -n 1 | awk -F '[.:=>]' ' { function junk(s) { print s } }'



cat sample.txt | awk ' { print $0; print $3 } '
