(defun bartuer-elisp-load ()
  "added when edit elisp file"
  (interactive)
  (turn-on-eldoc-mode)
  (flyspell-prog-mode)
  (paredit-mode t)
  (define-key emacs-lisp-mode-map "\C-c\C-i" (lambda ()
                                               (interactive)
                                               (insert "(interactive)")))
  (define-key emacs-lisp-mode-map "\C-c\C-c" (lambda ()
                                               (interactive)
                                               (insert "(debug)")))
  )