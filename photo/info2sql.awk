/Image:/ {
    file=$2
}
/Geometry:/ {
    /* format of $2 is <width>x<height>+<?>+<?> */
    sub(/\+.+/, "", $2)
    size=$2
}
/[^:]Orientation:/ {
    orient=$2
}
/DateTime:/ {
    time=$2 ":" $3
}

END {
    printf "('%s','%s','%s','%s')\n", file, time, size, orient
}
