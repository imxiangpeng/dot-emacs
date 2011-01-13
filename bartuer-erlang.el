(setq erlang-skel nil)
(require 'erlang nil t)
(require 'erlang-start nil t)
(require 'distel nil t)
(distel-setup)

(defun bartuer-erlang-load ()
  "for erlang language"
  (setq erlang-root-dir "/usr/local/otp")
  (setq inferior-erlang-machine-options '("-sname" "emacs"))
  (add-hook 'erlang-shell-mode-hook (lambda ()
                                      (define-key erlang-shell-mode-map "\C-\M-i" 'erl-complete)
                                      (define-key erlang-shell-mode-map "\M-." 'erl-find-source_under-point)
                                      (define-key erlang-shell-mode-map "\M-," 'erl-find-source_unwind)
                                      ))
  (define-key erlang-mode-map "\C-c\C-e" 'erl-eval-expression)
  )


(provide 'bartuer-erlang)