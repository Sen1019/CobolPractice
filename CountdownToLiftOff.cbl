      ******************************************************************
      * Author:Sam Niehaus
      * Date:10-3-2017
      * Purpose:Fun decumulator practice
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNTDOWN-TO-LIFTOFF.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NAME                       PIC X(15).

       01  ACCUMULATORS.
           02 AC-COUNTDOWN            PIC 999.

       01  SW-LIFTOFF                 PIC X.
           88 LIFTOFF                      VALUE "Y".

       01  HOLDS.
           02  COUNTDOWN_HOLD             PIC X.
           02  END-OF-PROGRAM-HOLD        PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Please enter your name:".
           ACCEPT NAME.
           DISPLAY "Please enter the number from which to count down:".
           ACCEPT AC-COUNTDOWN.
           DISPLAY "Press enter to countdown."
           PERFORM A-100-COUNTDOWN
               UNTIL LIFTOFF.
           DISPLAY "Congratutations Captain".
           DISPLAY NAME.
           DISPLAY "We have liftoff!".
           ACCEPT END-OF-PROGRAM-HOLD.
           STOP RUN.

       A-100-COUNTDOWN.
           DISPLAY AC-COUNTDOWN.
           SUBTRACT 1 FROM AC-COUNTDOWN.
           IF AC-COUNTDOWN = 0
               MOVE "Y" TO SW-LIFTOFF.
           ACCEPT COUNTDOWN_HOLD.



       END PROGRAM COUNTDOWN-TO-LIFTOFF.
