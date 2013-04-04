BEGIN {
    print "insert into photo_info (name, time, size, orient) values"
}

END {
    print ";" 
}
{
    if(NR>1) print ","
    printf "('%s', '%s', '%s', '%s')", $1, $2, $3, $4
}