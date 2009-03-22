(autoload 'bartuer-ruby-assign "bartuer-ruby.el" "for ruby assign" t nil)
(defun bartuer-rhtml-load ()
  "mode hooks for rhtml"
  (yas/minor-mode-auto-on)
  (define-key rhtml-mode-map "\C-\M-k" 'sgml-delet-tag)
  (define-key rhtml-mode-map "\C-\M-f" 'sgml-skip-tag-forward)
  (define-key rhtml-mode-map "\C-\M-b" 'sgml-skip-tag-backward)
  (define-key rhtml-mode-map "\C-c\C-a" 'sgml-attributes)
  (define-key rhtml-mode-map "\C-c\C-t" 'sgml-tag)
  (define-key rhtml-mode-map "\C-c\C-ct" 'sgml-close-tag)
  (define-key rhtml-mode-map "\M-=" 'bartuer-ruby-assign))