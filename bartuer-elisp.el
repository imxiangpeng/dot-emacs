(defun bartuer-elisp-load ()
  "added when edit elisp file"
  (define-key emacs-lisp-mode-map "\C-c\C-i" (lambda ()
                                               (interactive)
                                               (insert "(interactive)")))
  (define-key emacs-lisp-mode-map "\C-c\C-c" (lambda ()
                                               (interactive)
                                               (insert "(debug)")))
  (define-key emacs-lisp-mode-map "\M-i" 'PC-lisp-complete-symbol))