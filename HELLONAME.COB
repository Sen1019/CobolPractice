       IDENTIFICATION DIVISION.
      ************************

       PROGRAM-ID. HELLO.

       ENVIRONMENT DIVISION.
      *********************

       DATA DIVISION.
      **************

       WORKING-STORAGE SECTION.
      ************************

       01 WA-NAME       PIC X(15).

       PROCEDURE DIVISION.
      *******************

       MAIN-PROCEDURE.

            DISPLAY "Please enter your name ->"  LINE 10 COLUMN 10.
            ACCEPT WA-NAME LINE 10 COLUMN 36.
            DISPLAY "Hello" LINE 15 COLUMN 10.
            DISPLAY WA-NAME LINE 15 COLUMN 16.
            DISPLAY "Have a nice day!" LINE 17 COLUMN 10.
            ACCEPT WA-NAME LINE 18 COLUMN 10.
            STOP RUN.
       END PROGRAM HELLO.
