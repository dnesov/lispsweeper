(defun main () 
    ; Constants
    (defconstant BOARD-SIZE-X 5)
    (defconstant BOARD-SIZE-Y 5)
    (defconstant BOMB-CHANCE 2)

    (setq board (create-board BOARD-SIZE-X BOARD-SIZE-Y BOMB-CHANCE))

    (display-board board)
)