BEGIN {printf "{"}
/Image:/ {
    printf "name:\"%s\",", $2
}
/Geometry:/ {
    /* format of $2 is <width>x<height>+<?>+<?> */
    sub(/\+.+/, "", $2) 
    printf "size:\"%s\",", $2
}
/[^:]Orientation:/ {
    printf "orientation:\"%s\",", $2
}
/DateTime:/ {
    printf "time:\"%s:%s\",", $2, $3
}

END {print "end:1}"}