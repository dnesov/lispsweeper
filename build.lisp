(load "src/board.lisp")
(load "src/main.lisp")

(sb-ext:save-lisp-and-die "lispsweeper" :executable t :toplevel #'main)