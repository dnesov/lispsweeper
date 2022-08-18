(defun has-bomb (bomb-chance)
    (equal 1 (random bomb-chance))
)

; ((X, Y, HAS-BOMB)...)
(defun generate-cell (at-x at-y bomb-chance)
    (list at-x at-y (has-bomb bomb-chance))
)

(defun generate-board (size-x size-y bomb-chance)
    (setq cells (list))

    (dotimes (y size-y)
        (dotimes (x size-x)
            (push (generate-cell x y bomb-chance) cells)
        )
    )
    (list (list size-x size-y) cells)
)

; (SIZE-X SIZE-Y) ((X, Y, HAS-BOMB)...)
(defun create-board (size-x size-y bomb-chance) 
    (generate-board size-x size-y bomb-chance)
)

(defun get-board-size-x (board)
    (nth 0 (nth 0 board))
)

(defun get-board-size-y (board)
    (nth 1 (nth 0 board))
)

(defun get-cell-char (has-bomb)
    (if has-bomb "@" "#")
)

(defun get-cell-at (idx board)
    (nth idx board)
)

(defun display-cell (at-x at-y board)
    (get-cell-char (nth 2 (get-cell-at (+ at-x at-y) board)))
)

(defun display-board (board)
    (dotimes (y (get-board-size-y board))
        (fresh-line)
    (dotimes (x (get-board-size-x board))
        (princ (display-cell x y board))
    )
    )
)