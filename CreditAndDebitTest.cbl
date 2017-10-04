      ******************************************************************
      * Author:Sam Niehaus
      * Date:10-4-2017
      * Purpose:Testing the credit and debit symbols
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREDIT-DEBIT-TEST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-FORMATS.
           02  ONE             PIC -----.99.
           02  TWO             PIC ZZZZ.99-.
           02  THREE           PIC ZZZZ.99CR.
           02  FOUR            PIC ZZZZ.99DB.

       01  WS-HOLD             PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "First with negatives."
            MOVE -123.45 TO ONE.
            DISPLAY ONE.
            MOVE -123.45 TO TWO.
            DISPLAY TWO.
            MOVE ONE TO THREE.
            DISPLAY THREE.
            MOVE TWO TO THREE.
            DISPLAY THREE.
            MOVE ONE TO FOUR.
            DISPLAY FOUR.
            MOVE TWO TO FOUR.
            DISPLAY FOUR.

            ACCEPT WS-HOLD.

            DISPLAY "Next with positives."
            MOVE 123.45 TO ONE.
            DISPLAY ONE.
            MOVE 123.45 TO TWO.
            DISPLAY TWO.
            MOVE ONE TO THREE.
            DISPLAY THREE.
            MOVE TWO TO THREE.
            DISPLAY THREE.
            MOVE ONE TO FOUR.
            DISPLAY FOUR.
            MOVE TWO TO FOUR.
            DISPLAY FOUR.

            ACCEPT WS-HOLD.
            STOP RUN.
       END PROGRAM CREDIT-DEBIT-TEST.
