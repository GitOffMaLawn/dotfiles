# find \$1 2>/dev/null
find / -name \$1 -print 2>~/find.tmp
#| grep -v 'Permission denied'
