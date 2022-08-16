report ztest_31.

write: 'Start of program'.

 SELECT fcr_partner , fcr_segment FROM ukmcaseattr00
      INTO @DATA(lt_data)
      UP TO 1 ROWS
     WHERE fcr_partner EQ '0017100011' AND fcr_segment EQ '1000'.
      ENDSELECT.
      IF sy-subrc EQ 0.
             WRITE : lt_data.
        ENDIF.
