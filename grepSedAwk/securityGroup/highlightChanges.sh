# this will print just lines with changes
cat sample.txt | gawk -F"\"" '$4 != $2 { print $0 }'
terraform plan | gawk -F"\"" '$4 != $2 { print $0 }'




# this os mostly junk that didn't work
cat sample.txt | gsed -E 's/\s//g' | gsed -E 's/:/\t/g'

cat sample.txt | head -n 1 | awk -F '[.:=>]' '
{
  for(i=1;i<=NF;i++) {
      print $i
  }
  exit 0
}'


# have not worked on getting function working in gawk was unsuccessful in awk
: <<'END'
cat sample.txt | head -n 1 | gawk -F '[.:=>]' ' { function junk(s) { print s } }'

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
BEGIN {
# whatever
}
{
# whatever
}
#END {
# whatever
#}
END