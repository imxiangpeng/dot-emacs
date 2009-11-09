(defun bartuer-c-indent ()
  (interactive)
  (if (not (window-minibuffer-p))
      (cond ((indent-for-tab-command))
            (t (indent-relative-maybe))
            (t (indent-for-comment)))))

(defun bartuer-c-common ()
  "for c and C++ language
"
  (require 'make-mode)
  (c-subword-mode 1)
  ;; is it possible to guess the code style ?
  ;; now I using the c-file-style in file varible
  (define-key c-mode-base-map "\C-i" 'bartuer-c-indent)
  (define-key c-mode-base-map "\M-j" 'dabbrev-expand)
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
  (define-key makefile-mode-map "\C-j" 'recompile)
  (define-key c-mode-base-map "\C-c\C-c" 'anything-etags-select)
  (define-key c-mode-base-map "\M-j" 'dabbrev-expand)
  (define-key c-mode-base-map "\C-j" 'recompile))

