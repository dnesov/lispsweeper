(defun has-bomb (bomb-chance)
    (= 1 (random bomb-chance))
)

(defun generate-cell (at-x at-y bomb-chance)
    (list at-x at-y (has-bomb bomb-chance))
)

(defun generate-board (size-x size-y bomb-chance)
    (setq cells (list))

    (dotimes (x size-x)
        (dotimes (y size-y)
            (push (generate-cell x y bomb-chance) cells)
        )
    )
    cells
)

(defun represent-board (size-x size-y bomb-chance) 
    (generate-board size-x size-y bomb-chance)
)

(defun display-cell (at-x at-y has-bomb)
    (if has-bomb "@" "#")
)

(defun display-board (size-x size-y board)
    (setq my-string "")
    (concatenate 'string my-string "world")
    ; (format t "~a" (display-cell size-x size-y NIL))
    (format t "~a" my-string)
)