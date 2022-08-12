;;; -*- lexical-binding: t -*-
;;; まず最先端技術を使う宣言をします

(defun academize ()
  (defun replace-all (from to)
    (save-excursion
      (while (search-forward from nil 'noerror)
        (replace-match to))))

  (defun replace-all-list (l)
    (dolist (pair l)
      (replace-all (car pair) (cdr pair))))

  (replace-all-list '(("、" . "，")
                      ("。" . "．"))))
