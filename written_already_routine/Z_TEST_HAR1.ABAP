report z_test_har1.

parameters : d_a type p length 15 DECIMALS 0.
data : l_date(15),
       l_date1(8),
       l_time(15),
       l_time1(6).
.
l_date = d_a.
replace all occurrences of '.' in l_date with ' '.
condense l_date.
l_date1 = l_date+0(8).
write l_date1 color 7.
l_time = d_a.
replace all occurences of '.' in l_time with ' '.
condense l_time.
l_time1 = l_time+8(6).
write:/ l_time1 color 6.
