(add-hook 'TeX-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'academize nil 'local)))
