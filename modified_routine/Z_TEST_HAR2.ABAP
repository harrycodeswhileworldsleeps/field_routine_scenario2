report z_test_har2.
types: begin of ty_final,
         original_date(18),
         current_date(18),
       end of ty_final.
parameters: d_a type c length 20,
             c_a type c length 20.
data: l_date(15),
      l_date1(8),
      l_time(18),
      l_time1(6),
      len type n length 2,
      d_a_var like d_a,
      wa_final type ty_final.
wa_final-original_date = d_a.
wa_final-current_date = c_a.
find ' ' in wa_final-original_date.
if sy-subrc = 0.
  CONDENSE wa_final-original_date.
endif.
len = strlen( wa_final-original_date ).
IF len < 18.
  wa_final-original_date = wa_final-current_date.
ENDIF.
d_a_var = wa_final-original_date.

l_date = d_a_var.
replace all occurrences of '.' in l_date with ' '.
condense l_date.
l_date1 = l_date+0(8).
write: 'date to be stored in zorplndat:', l_date1 color 7.
l_time = d_a_var.
replace all occurrences of '.' in l_time with ' '.
condense l_time.
l_time1 = l_time+8(6).
write:/ 'time to be stored in zorplntim:', l_time1 color 6.
