;;; -*- lexical-binding: t -*-
;;; まず最先端技術を使う宣言をします

(defun academize ()
  (defun replace-all (from to)
    (save-excursion
      (beginning-of-buffer)
      (while (search-forward from nil 'noerror)
        (replace-match to))))

  (replace-all "、" "，")
  (replace-all "。" "．"))
