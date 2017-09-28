       IDENTIFICATION DIVISION.
       PROGRAM-ID. HelloFile.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HELLO-FILE
               ASSIGN TO "hello_file.txt".
      ********Right now file must be in the home directory

       DATA DIVISION.
       FILE SECTION.
       FD  HELLO-FILE.
       01  HELLO-CONTENTS.
           02 THE-HELLO   PIC X(12).

       WORKING-STORAGE SECTION.
       01  SWITCHES.
           02 SW-END-OF-FILE     PIC X.
               88 END-OF-FILE      VALUE "Y".

       01  DETAIL-LINE.
           02 HELLO-INPUT PIC X(12).

       01  WORK-AREA.
           02 WA-SCREEN-HOLD PIC X.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM A-100-INITIALIZATION.
           PERFORM B-100-PROCESS-FILE.
           PERFORM C-100-WRAP-UP.
           STOP RUN.




       A-100-INITIALIZATION.
           OPEN INPUT HELLO-FILE.

       B-100-PROCESS-FILE.
           MOVE "N" TO SW-END-OF-FILE.
           READ HELLO-FILE
               AT END MOVE "Y" TO SW-END-OF-FILE.
           PERFORM B-200-PROCESS-RECORD
               UNTIL END-OF-FILE.

       B-200-PROCESS-RECORD.
           MOVE HELLO-CONTENTS TO HELLO-INPUT.
           DISPLAY DETAIL-LINE.
           READ HELLO-FILE
               AT END MOVE "Y" TO SW-END-OF-FILE.

       C-100-WRAP-UP.
           CLOSE HELLO-FILE.
           DISPLAY "Press Enter to End".
           ACCEPT WA-SCREEN-HOLD.


       END PROGRAM HelloFile.
